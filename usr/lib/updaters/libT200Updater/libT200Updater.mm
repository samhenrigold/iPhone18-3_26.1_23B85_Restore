const char *T200RestoreInfoLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  result = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = *MEMORY[0x29EDCA608];
  if (logSinkFunc)
  {
    vsnprintf(__str, 0x1000uLL, result, va);
    return logSinkFunc(logContext, __str);
  }

  return result;
}

__CFDictionary *T200UpdaterGetTagsWithLogging(const __CFDictionary *a1, uint64_t (*a2)(void, void), uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logSinkFunc = a2;
  logContext = a3;
  T200RestoreInfoLog("%s:%d Start\n", a2, a3, a4, a5, a6, a7, a8, "_T200UpdaterGetTagsWithLogging", 649);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    TagsWithLogging_cold_7 = T200UpdaterGetTagsWithLogging_cold_7(&cf);
LABEL_19:
    a1 = 0;
    v19 = 0;
LABEL_21:
    v21 = 0;
    goto LABEL_26;
  }

  if (_updateBMUTags(a1, v10, v11, v12, v13, v14, v15, v16))
  {
    TagsWithLogging_cold_7 = T200UpdaterGetTagsWithLogging_cold_1(&cf);
    goto LABEL_19;
  }

  v18 = *MEMORY[0x29EDB8ED8];
  v19 = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (!v19)
  {
    TagsWithLogging_cold_7 = T200UpdaterGetTagsWithLogging_cold_6(&cf);
    a1 = 0;
    goto LABEL_21;
  }

  v20 = CFArrayCreateMutable(v18, 0, MEMORY[0x29EDB9000]);
  v21 = v20;
  if (!v20)
  {
    TagsWithLogging_cold_7 = T200UpdaterGetTagsWithLogging_cold_5(&cf);
    goto LABEL_23;
  }

  CFArrayAppendValue(v20, T200TagResponseFirmwareTicket);
  if (!a1)
  {
    TagsWithLogging_cold_7 = T200UpdaterGetTagsWithLogging_cold_4(&cf);
    goto LABEL_26;
  }

  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  if (!Value || (v23 = Value, v24 = CFGetTypeID(Value), v24 != CFDictionaryGetTypeID()))
  {
    TagsWithLogging_cold_7 = T200UpdaterGetTagsWithLogging_cold_3(&cf);
LABEL_23:
    a1 = 0;
    goto LABEL_26;
  }

  a1 = CFRetain(v23);
  if (T200TagMeasurementFirmwarePlist)
  {
    CFArrayAppendValue(v19, T200TagMeasurementFirmwarePlist);
    CFDictionaryAddValue(Mutable, @"BuildIdentityTags", v19);
    CFDictionaryAddValue(Mutable, @"ResponseTags", v21);
    T200RestoreInfoLog("%s:%d End\n", v25, v26, v27, v28, v29, v30, v31, "_T200UpdaterGetTagsWithLogging", 680);
LABEL_10:
    CFRelease(v21);
    goto LABEL_11;
  }

  TagsWithLogging_cold_7 = T200UpdaterGetTagsWithLogging_cold_2(&cf);
LABEL_26:
  v41 = cf;
  if (a4 && cf)
  {
    *a4 = CFRetain(cf);
    T200RestoreInfoLog("%s:%d outputDict =\n", v42, v43, v44, v45, v46, v47, v48, "_T200UpdaterGetTagsWithLogging", 685);
    T200CFShow(Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  else if (!cf)
  {
    goto LABEL_32;
  }

  CFRelease(v41);
LABEL_32:
  if (v21)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v19)
  {
    CFRelease(v19);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  _releaseBMUTags(TagsWithLogging_cold_7, v33, v34, v35, v36, v37, v38, v39);
  return Mutable;
}

const void *T200UpdaterCopyFirmwareWithLogging(const __CFDictionary *a1, uint64_t (*a2)(void, void), uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v113 = *MEMORY[0x29EDCA608];
  logSinkFunc = a2;
  logContext = a3;
  T200RestoreInfoLog("%s:%d Start\n", a2, a3, a4, a5, a6, a7, a8, "_T200UpdaterCopyFirmwareWithLogging", 713);
  if (!a1)
  {
    v75 = T200UpdaterCopyFirmwareWithLogging_cold_16(v112);
    goto LABEL_71;
  }

  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  if (!Value || (v11 = CFGetTypeID(Value), v11 != CFDictionaryGetTypeID()))
  {
    v75 = T200UpdaterCopyFirmwareWithLogging_cold_15(v112);
LABEL_71:
    v83 = 0;
    v74 = *v112;
    goto LABEL_44;
  }

  if (_updateBMUTags(a1, v12, v13, v14, v15, v16, v17, v18))
  {
    v75 = T200UpdaterCopyFirmwareWithLogging_cold_1(v112);
    goto LABEL_71;
  }

  v26 = T200TagMeasurementFirmwarePlist;
  if (!T200TagMeasurementFirmwarePlist)
  {
    v75 = T200UpdaterCopyFirmwareWithLogging_cold_14(v112);
    goto LABEL_71;
  }

  v108 = 0;
  T200RestoreInfoLog("%s:%d Start\n", v19, v20, v21, v22, v23, v24, v25, "copyFirmwareData", 523);
  CStringPtr = CFStringGetCStringPtr(v26, 0x8000100u);
  if (CStringPtr)
  {
    T200RestoreInfoLog("%s:%d Start file_name=%s \n", v28, v29, v30, v31, v32, v33, v34, "copyFirmwareData", 526, CStringPtr);
  }

  v35 = CFDictionaryGetValue(a1, @"BuildIdentity");
  v107 = v8;
  if (!v35 || (v36 = CFRetain(v35)) == 0)
  {
    T200UpdaterCopyFirmwareWithLogging_cold_12(v112);
    cf = 0;
    v43 = 0;
    v40 = 0;
    v71 = 0;
    v46 = 0;
    v50 = 0;
    v54 = 0;
    CFError = *v112;
    v104 = 1;
    goto LABEL_59;
  }

  v37 = v36;
  v38 = CFDictionaryGetValue(v36, v26);
  cf = v37;
  if (!v38 || (v39 = CFRetain(v38)) == 0)
  {
    T200UpdaterCopyFirmwareWithLogging_cold_11(v26, v112);
    v104 = 0;
    v43 = 0;
    v40 = 0;
LABEL_55:
    v71 = 0;
    v46 = 0;
LABEL_56:
    v50 = 0;
LABEL_57:
    v54 = 0;
    goto LABEL_58;
  }

  v40 = v39;
  v41 = CFDictionaryGetValue(v39, @"Info");
  if (!v41 || (v42 = CFRetain(v41)) == 0)
  {
    T200UpdaterCopyFirmwareWithLogging_cold_10(v112);
    v104 = 0;
    v43 = 0;
    goto LABEL_55;
  }

  v43 = v42;
  v44 = CFDictionaryGetValue(v42, @"Path");
  if (!v44 || (v45 = CFRetain(v44)) == 0)
  {
    T200UpdaterCopyFirmwareWithLogging_cold_9(v112);
    v104 = 0;
    goto LABEL_55;
  }

  v46 = v45;
  v47 = CFDictionaryGetValue(a1, @"DeviceInfo");
  if (!v47 || (v48 = v47, v49 = CFGetTypeID(v47), v49 != CFDictionaryGetTypeID()))
  {
    T200UpdaterCopyFirmwareWithLogging_cold_8(v112);
    v104 = 0;
    v71 = 0;
    goto LABEL_56;
  }

  v50 = CFRetain(v48);
  ChemistryId = getChemistryId(v50);
  if (!ChemistryId)
  {
    T200UpdaterCopyFirmwareWithLogging_cold_7(v112);
    v104 = 0;
    v71 = 0;
    goto LABEL_57;
  }

  v52 = ChemistryId;
  v53 = CopyHWVersion(v50);
  v54 = v53;
  if (!v53)
  {
    T200UpdaterCopyFirmwareWithLogging_cold_6(v112);
    v104 = 0;
    v71 = 0;
    goto LABEL_58;
  }

  *buffer = 0u;
  v111 = 0u;
  CFStringGetCString(v53, buffer, 32, 0x600u);
  T200RestoreInfoLog("%s:%d chemistry=%u silicon_ver=%s\n", v55, v56, v57, v58, v59, v60, v61, "copyFirmwareData", 552, v52, buffer);
  v62 = CFDictionaryGetValue(a1, @"BundlePath");
  if (v62)
  {
    v70 = CFRetain(v62);
    if (v70)
    {
      v71 = v70;
      v72 = AMSupportPlatformCopyURLWithAppendedComponent();
      if (v72)
      {
        v96 = v72;
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "kAMSupportErrorNone == status", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200RestoreInfo/T200RestoreInfo.c", 562, 0);
        CFError = createCFError("Fail to run AMSupportPlatformCopyURLWithAppendedComponent", v96, "AMSupportPlatformCopyURLWithAppendedComponent", v96);
        v104 = 0;
LABEL_59:
        if (CFError)
        {
          v105 = v46;
          v74 = CFRetain(CFError);
          v86 = CFError;
          v87 = CFErrorCopyDescription(CFError);
          v88 = CFStringGetCStringPtr(v87, 0x8000100u);
          if (v88)
          {
            T200RestoreInfoLog("%s:%d Error : %s\n", v89, v90, v91, v92, v93, v94, v95, "copyFirmwareData", 611, v88);
          }

          if (v87)
          {
            CFRelease(v87);
          }

          CFRelease(v86);
          v46 = v105;
        }

        else
        {
          v74 = 0;
        }

        goto LABEL_28;
      }

      T200UpdaterCopyFirmwareWithLogging_cold_4(v112);
      v104 = 0;
LABEL_58:
      CFError = *v112;
      goto LABEL_59;
    }
  }

  T200RestoreInfoLog("%s:%d Override is set \n", v63, v64, v65, v66, v67, v68, v69, "copyFirmwareData", 556);
  v73 = CFDictionaryGetValue(a1, @"FirmwareData");
  if (v73)
  {
    v73 = CFRetain(v73);
  }

  v71 = 0;
  v108 = v73;
  if (!v73)
  {
    T200UpdaterCopyFirmwareWithLogging_cold_5(&v109);
    v104 = 0;
    CFError = v109;
    goto LABEL_59;
  }

  v74 = 0;
  v104 = 0;
LABEL_28:
  if (v71)
  {
    CFRelease(v71);
  }

  v8 = v107;
  if (v46)
  {
    CFRelease(v46);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if ((v104 & 1) == 0)
  {
    CFRelease(cf);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  v75 = T200RestoreInfoLog("%s:%d End\n", v97, v98, v99, v100, v101, v102, v103, "copyFirmwareData", 626);
  v83 = v108;
  if (!v108)
  {
    v75 = T200UpdaterCopyFirmwareWithLogging_cold_13();
  }

LABEL_44:
  if (v8 && v74)
  {
    *v8 = CFRetain(v74);
LABEL_48:
    CFRelease(v74);
    goto LABEL_49;
  }

  if (v74)
  {
    goto LABEL_48;
  }

LABEL_49:
  _releaseBMUTags(v75, v76, v77, v78, v79, v80, v81, v82);
  return v83;
}

CFTypeRef T200UpdaterCreateRequestWithLogging(const __CFDictionary *a1, uint64_t (*a2)(void, void), uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v243 = *MEMORY[0x29EDCA608];
  logSinkFunc = a2;
  logContext = a3;
  T200RestoreInfoLog("%s:%d Start\n", a2, a3, a4, a5, a6, a7, a8, "__T200UpdaterCreateRequestWithLogging", 755);
  if (!a1)
  {
    RequestWithLogging_cold_23 = T200UpdaterCreateRequestWithLogging_cold_23(bytes);
    goto LABEL_102;
  }

  if (!CFDictionaryContainsKey(a1, @"BuildIdentity") || (v10 = CFDictionaryGetValue(a1, @"BuildIdentity")) == 0 || (v11 = CFRetain(v10)) == 0)
  {
    RequestWithLogging_cold_23 = T200UpdaterCreateRequestWithLogging_cold_22(bytes);
LABEL_102:
    v80 = 0;
    v22 = 0;
    v31 = 0;
    v40 = 0;
    v12 = 0;
    goto LABEL_137;
  }

  v12 = v11;
  if (!CFDictionaryContainsKey(a1, @"DeviceInfo") || (v13 = CFDictionaryGetValue(a1, @"DeviceInfo")) == 0 || (v14 = CFRetain(v13)) == 0)
  {
    RequestWithLogging_cold_23 = T200UpdaterCreateRequestWithLogging_cold_21(bytes);
    v80 = 0;
    v22 = 0;
LABEL_131:
    v31 = 0;
    v40 = 0;
    goto LABEL_137;
  }

  v22 = v14;
  if (_updateBMUTags(a1, v15, v16, v17, v18, v19, v20, v21))
  {
    RequestWithLogging_cold_23 = T200UpdaterCreateRequestWithLogging_cold_1(bytes);
    v80 = 0;
    goto LABEL_131;
  }

  if (CFDictionaryContainsKey(v22, @"UpdaterOptions"))
  {
    v30 = CFDictionaryGetValue(v22, @"UpdaterOptions");
    if (v30)
    {
      v31 = CFRetain(v30);
      goto LABEL_14;
    }
  }

  else
  {
    T200RestoreInfoLog("%s:%d Updater options is empty\n", v23, v24, v25, v26, v27, v28, v29, "__T200UpdaterCreateRequestWithLogging", 778);
  }

  v31 = 0;
LABEL_14:
  if (!CFDictionaryContainsKey(a1, @"Options"))
  {
    T200RestoreInfoLog("%s:%d Restore options is empty\n", v32, v33, v34, v35, v36, v37, v38, "__T200UpdaterCreateRequestWithLogging", 785);
    goto LABEL_18;
  }

  v39 = CFDictionaryGetValue(a1, @"Options");
  if (!v39)
  {
LABEL_18:
    v40 = 0;
    goto LABEL_19;
  }

  v40 = CFRetain(v39);
LABEL_19:
  v41 = CFDictionaryGetValue(v22, @"LocalSigningID");
  if (v41)
  {
    v42 = CFGetTypeID(v41);
    if (v42 == CFBooleanGetTypeID())
    {
      if (!CFDictionaryContainsKey(a1, @"FirmwareData"))
      {
        T200RestoreInfoLog("%s:%d Start\n", v43, v44, v45, v46, v47, v48, v49, "_createRequestDictForTATSU", 287);
        v240 = 0;
        goto LABEL_34;
      }

      v50 = CFDictionaryGetValue(a1, @"FirmwareData");
      if (v50)
      {
        v240 = CFRetain(v50);
        if (v240)
        {
          v237 = v40;
          T200RestoreInfoLog("%s:%d Start\n", v51, v52, v53, v54, v55, v56, v57, "_createMeasurementDict", 409);
          v58 = *MEMORY[0x29EDB8ED8];
          v59 = MEMORY[0x29EDB9010];
          v60 = MEMORY[0x29EDB9020];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          theDict = CFDictionaryCreateMutable(v58, 0, v59, v60);
          *bytes = 0u;
          v242 = 0u;
          v62 = CFDictionaryCreateMutable(0, 0, v59, v60);
          v238 = CFDictionaryCreateMutable(0, 0, v59, v60);
          v236 = v31;
          v233 = v8;
          v234 = Mutable;
          if (!v62)
          {
            T200UpdaterCreateRequestWithLogging_cold_8();
            value = 0;
            v228 = 0;
            v70 = 0;
            v72 = 0;
            v231 = 0;
            v232 = 0;
            cf = 0;
            v230 = 0;
            v66 = 0;
            v217 = 3;
            goto LABEL_141;
          }

          if (getChemistryId(v22))
          {
            v63 = CopyHWVersion(v22);
            if (v63)
            {
              v64 = v63;
              v65 = CFStringCreateWithFormat(v58, 0, @"%@", @"board_id");
              v66 = CFPropertyListCreateWithData(v58, v240, 0, 0, 0);
              v231 = v65;
              v232 = v64;
              if (!v66)
              {
                T200UpdaterCreateRequestWithLogging_cold_5();
                value = 0;
                v228 = 0;
                v70 = 0;
                v72 = 0;
                cf = 0;
                v230 = 0;
LABEL_181:
                v217 = 13;
                goto LABEL_141;
              }

              v67 = CFRetain(v240);
              if (v67)
              {
                v230 = v67;
                cf = CFStringCreateWithFormat(v58, 0, @"%@.%@", @"digest_der", @"Digest");
                ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
                if (ValueForKeyPathInDict)
                {
                  v69 = CFRetain(ValueForKeyPathInDict);
                  if (v69)
                  {
                    v70 = v69;
                    CFDictionarySetValue(theDict, @"Digest", v69);
                    CFDictionarySetValue(v238, @"BMU,DigestMap", theDict);
                    v71 = AMSupportGetValueForKeyPathInDict();
                    if (v71)
                    {
                      v72 = CFRetain(v71);
                    }

                    else
                    {
                      v72 = 0;
                    }

                    if (v238)
                    {
                      v228 = CFRetain(v238);
                    }

                    else
                    {
                      v228 = 0;
                    }

                    v92 = v12;
                    if (v72)
                    {
                      value = CFRetain(v72);
                    }

                    else
                    {
                      value = 0;
                    }

                    Length = CFDataGetLength(v240);
                    v94 = calloc(Length, 1uLL);
                    if (v94)
                    {
                      v95 = v94;
                      v244.location = 0;
                      v244.length = Length;
                      CFDataGetBytes(v240, v244, v94);
                      computeFirmwareDigest(v95, Length, bytes, v96, v97, v98, v99, v100);
                      v101 = CFDataCreate(v58, bytes, 32);
                      CFDictionarySetValue(v234, @"Digest", v101);
                      CFDictionarySetValue(v62, T200MeasurementDictFirmware, v234);
                      v239 = CFRetain(v62);
                      T200RestoreInfoLog("%s:%d End\n", v102, v103, v104, v105, v106, v107, v108, "_createMeasurementDict", 478);
                      free(v95);
                      v116 = 0;
                      v12 = v92;
LABEL_48:
                      if (theDict)
                      {
                        CFRelease(theDict);
                      }

                      v91 = v240;
                      if (v70)
                      {
                        CFRelease(v70);
                      }

                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      v8 = v233;
                      if (v101)
                      {
                        CFRelease(v101);
                      }

                      if (v234)
                      {
                        CFRelease(v234);
                      }

                      v40 = v237;
                      if (v62)
                      {
                        CFRelease(v62);
                      }

                      if (v238)
                      {
                        CFRelease(v238);
                      }

                      v80 = v239;
                      if (v230)
                      {
                        CFRelease(v230);
                      }

                      if (v72)
                      {
                        CFRelease(v72);
                      }

                      if (v66)
                      {
                        CFRelease(v66);
                      }

                      if (v232)
                      {
                        CFRelease(v232);
                      }

                      v31 = v236;
                      if (v231)
                      {
                        CFRelease(v231);
                      }

                      if (!v116)
                      {
                        T200RestoreInfoLog("%s:%d Start\n", v109, v110, v111, v112, v113, v114, v115, "_createRequestDictForTATSU", 287);
                        if (v239)
                        {
                          T200RestoreInfoLog("%s:%d Restore Options\n", v117, v118, v119, v120, v121, v122, v123, "_createRequestDictForTATSU", 293);
                          T200CFShow(v237);
                          v124 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                          if (v124)
                          {
                            v125 = v124;
                            v126 = *MEMORY[0x29EDB8F00];
                            CFDictionaryAddValue(v124, T200TagRequestFirmwareTicket, *MEMORY[0x29EDB8F00]);
                            v127 = CFDictionaryGetValue(v22, @"LocalSigningID");
                            if (v127 && (v128 = CFGetTypeID(v127), v128 == CFBooleanGetTypeID()))
                            {
                              v129 = CFDictionaryGetValue(v22, @"ChipID");
                              if (v129 && (v130 = v129, v131 = CFGetTypeID(v129), v131 == CFNumberGetTypeID()))
                              {
                                CFDictionarySetValue(v125, T200TagChipID, v130);
                                v132 = CFDictionaryGetValue(v22, @"ProductionMode");
                                if (v132 && (v133 = v132, v134 = CFGetTypeID(v132), v134 == CFBooleanGetTypeID()))
                                {
                                  if (CFBooleanGetValue(v133))
                                  {
                                    v135 = v126;
                                  }

                                  else
                                  {
                                    v135 = *MEMORY[0x29EDB8EF8];
                                  }

                                  CFDictionaryAddValue(v125, T200TagProductionMode, v135);
                                  v136 = CFDictionaryGetValue(v22, @"UniqueID");
                                  if (v136 && (v137 = v136, v138 = CFGetTypeID(v136), v138 == CFNumberGetTypeID()))
                                  {
                                    CFDictionaryAddValue(v125, T200TagUniqueID, v137);
                                    v139 = CFDictionaryGetValue(v22, @"Nonce");
                                    if (v139 && (v140 = v139, v141 = CFGetTypeID(v139), v141 == CFDataGetTypeID()))
                                    {
                                      CFDictionaryAddValue(v125, T200TagNonce, v140);
                                      v142 = CFDictionaryGetValue(v239, T200MeasurementDictFirmware);
                                      if (v142 && (v143 = v142, v144 = CFGetTypeID(v142), v144 == CFDictionaryGetTypeID()))
                                      {
                                        CFDictionaryAddValue(v125, T200TagMeasurementFirmwarePlist, v143);
                                        if (!v228)
                                        {
                                          goto LABEL_94;
                                        }

                                        v145 = CFDictionaryGetValue(v228, @"BMU,DigestMap");
                                        if (v145)
                                        {
                                          v146 = v145;
                                          v147 = CFGetTypeID(v145);
                                          if (v147 == CFDictionaryGetTypeID())
                                          {
                                            CFDictionaryAddValue(v125, T200TagDerFirmwarePlist, v146);
LABEL_94:
                                            if (value)
                                            {
                                              CFDictionaryAddValue(v125, T200TagBoardId, value);
                                            }

                                            if (CFDictionaryContainsKey(v22, @"UpdaterOptions"))
                                            {
                                              v148 = CFDictionaryGetValue(v22, @"UpdaterOptions");
                                              if (v148)
                                              {
                                                v149 = CFRetain(v148);
                                              }

                                              else
                                              {
                                                v149 = 0;
                                              }

                                              v153 = CheckKey(v149, @"RestoreInternal");
                                              v152 = v153 == 1;
                                              v154 = CFDictionaryGetValue(v22, @"ForceFirmwareUpgrade");
                                              if (!v154)
                                              {
                                                if (v153 != 1)
                                                {
                                                  v163 = CFDictionaryGetValue(v22, @"RollbackFWVer");
                                                  if (!v163)
                                                  {
                                                    goto LABEL_116;
                                                  }

                                                  goto LABEL_110;
                                                }

                                                if (CheckKey(v237, @"SkipSameVersion"))
                                                {
                                                  v163 = CFDictionaryGetValue(v22, @"RollbackFWVer");
                                                  if (v163)
                                                  {
                                                    goto LABEL_110;
                                                  }

                                                  goto LABEL_114;
                                                }

                                                v152 = 1;
                                                goto LABEL_108;
                                              }

                                              v151 = v154;
                                            }

                                            else
                                            {
                                              v150 = CFDictionaryGetValue(v22, @"ForceFirmwareUpgrade");
                                              if (!v150)
                                              {
                                                v163 = CFDictionaryGetValue(v22, @"RollbackFWVer");
                                                v149 = 0;
                                                if (!v163)
                                                {
                                                  goto LABEL_116;
                                                }

                                                goto LABEL_110;
                                              }

                                              v151 = v150;
                                              v152 = 0;
                                              v149 = 0;
                                            }

                                            v155 = CFGetTypeID(v151);
                                            if (v155 != CFBooleanGetTypeID())
                                            {
                                              T200UpdaterCreateRequestWithLogging_cold_10();
LABEL_184:
                                              v40 = v237;
                                              goto LABEL_154;
                                            }

                                            if (CFBooleanGetValue(v151) != 1)
                                            {
LABEL_109:
                                              v163 = CFDictionaryGetValue(v22, @"RollbackFWVer");
                                              if (v163)
                                              {
LABEL_110:
                                                v164 = v163;
                                                v165 = CFGetTypeID(v163);
                                                if (v165 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v164) != 1)
                                                  {
                                                    goto LABEL_116;
                                                  }

                                                  goto LABEL_115;
                                                }

                                                T200UpdaterCreateRequestWithLogging_cold_11();
                                                goto LABEL_184;
                                              }

                                              if (!v152)
                                              {
LABEL_116:
                                                v40 = v237;
                                                if (CheckKey(v237, @"EnableDeveloperCommands"))
                                                {
                                                  T200RestoreInfoLog("%s:%d Add Entitlements T200TagFAEnableOption\n", v173, v174, v175, v176, v177, v178, v179, "_createRequestDictForTATSU", 377);
                                                  CFDictionaryAddValue(v125, T200TagFAEnable, v126);
                                                }

                                                if (CheckKey(v237, @"EnableValidationCommands"))
                                                {
                                                  T200RestoreInfoLog("%s:%d Add Entitlements T200TagVNVEnableOption\n", v180, v181, v182, v183, v184, v185, v186, "_createRequestDictForTATSU", 384);
                                                  CFDictionaryAddValue(v125, T200TagVNVEnable, v126);
                                                }

                                                v187 = CFRetain(v125);
                                                T200RestoreInfoLog("%s:%d End\n", v188, v189, v190, v191, v192, v193, v194, "_createRequestDictForTATSU", 389);
                                                v81 = 0;
                                                v195 = 1;
                                                goto LABEL_121;
                                              }

LABEL_114:
                                              if (CheckKey(v237, @"RollbackFWVer"))
                                              {
LABEL_115:
                                                T200RestoreInfoLog("%s:%d Add Entitlements T200TagEFFV\n", v166, v167, v168, v169, v170, v171, v172, "_createRequestDictForTATSU", 370);
                                                CFDictionaryAddValue(v125, T200TagEFFV, v126);
                                                goto LABEL_116;
                                              }

                                              goto LABEL_116;
                                            }

LABEL_108:
                                            T200RestoreInfoLog("%s:%d Add Entitlements T200TagFWOverWrite\n", v156, v157, v158, v159, v160, v161, v162, "_createRequestDictForTATSU", 356);
                                            CFDictionaryAddValue(v125, T200TagFWOverWrite, v126);
                                            goto LABEL_109;
                                          }
                                        }

                                        T200UpdaterCreateRequestWithLogging_cold_9();
                                      }

                                      else
                                      {
                                        T200UpdaterCreateRequestWithLogging_cold_12();
                                      }
                                    }

                                    else
                                    {
                                      T200UpdaterCreateRequestWithLogging_cold_13();
                                    }
                                  }

                                  else
                                  {
                                    T200UpdaterCreateRequestWithLogging_cold_14();
                                  }
                                }

                                else
                                {
                                  T200UpdaterCreateRequestWithLogging_cold_15();
                                }
                              }

                              else
                              {
                                T200UpdaterCreateRequestWithLogging_cold_16();
                              }
                            }

                            else
                            {
                              T200UpdaterCreateRequestWithLogging_cold_17();
                            }

                            v149 = 0;
LABEL_154:
                            v81 = 2;
                            T200RestoreInfoLog("%s:%d End,Failed with ret=%d\n", v219, v220, v221, v222, v223, v224, v225, "_createRequestDictForTATSU", 393, 2);
                            v187 = 0;
                            v195 = 0;
LABEL_121:
                            CFRelease(v125);
                            if (v149)
                            {
                              CFRelease(v149);
                            }

                            v80 = v239;
                            if (v195)
                            {
                              if (v187)
                              {
                                T200RestoreInfoLog("%s:%d End\n", v196, v197, v198, v199, v200, v201, v202, "__T200UpdaterCreateRequestWithLogging", 804);
                                v31 = v236;
                                v91 = v240;
LABEL_160:
                                CFRelease(v80);
                                v218 = v187;
LABEL_161:
                                if (!v12)
                                {
                                  goto LABEL_163;
                                }

                                goto LABEL_162;
                              }

                              fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "requestDict", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200RestoreInfo/T200RestoreInfo.c", 803, 0);
                              RequestWithLogging_cold_23 = createCFError("TATSU request dict is NULL", 0xCu, "_createRequestDictForTATSU", v81);
                              v90 = RequestWithLogging_cold_23;
                              v31 = v236;
LABEL_37:
                              v91 = v240;
                              if (!v8)
                              {
                                goto LABEL_157;
                              }

                              goto LABEL_138;
                            }

                            v31 = v236;
LABEL_36:
                            fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "ret == kT200Success", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200RestoreInfo/T200RestoreInfo.c", 802, 0);
                            RequestWithLogging_cold_23 = createCFError("_createRequestDictForTATSU fails.", v81, "_createRequestDictForTATSU", v81);
                            v90 = RequestWithLogging_cold_23;
                            goto LABEL_37;
                          }

                          T200UpdaterCreateRequestWithLogging_cold_18();
                          v81 = 3;
                          v80 = v239;
LABEL_35:
                          T200RestoreInfoLog("%s:%d End,Failed with ret=%d\n", v73, v74, v75, v76, v77, v78, v79, "_createRequestDictForTATSU", 393, v81);
                          goto LABEL_36;
                        }

LABEL_34:
                        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "measurementDict", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200RestoreInfo/T200RestoreInfo.c", 290, 0);
                        v80 = 0;
                        v81 = 2;
                        goto LABEL_35;
                      }

                      fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "ret == kT200Success", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200RestoreInfo/T200RestoreInfo.c", 797, 0);
                      RequestWithLogging_cold_23 = createCFError("_createMeasurementDict fails.", v116, "_createMeasurementDict", v116);
                      v90 = RequestWithLogging_cold_23;
                      if (!v233)
                      {
                        goto LABEL_157;
                      }

LABEL_138:
                      if (v90)
                      {
                        *v8 = CFRetain(v90);
                        T200RestoreInfoLog("%s:%d requestDict =\n", v203, v204, v205, v206, v207, v208, v209, "__T200UpdaterCreateRequestWithLogging", 810);
LABEL_158:
                        CFRelease(v90);
LABEL_159:
                        v187 = 0;
                        v218 = 0;
                        if (!v80)
                        {
                          goto LABEL_161;
                        }

                        goto LABEL_160;
                      }

LABEL_157:
                      if (!v90)
                      {
                        goto LABEL_159;
                      }

                      goto LABEL_158;
                    }

                    T200UpdaterCreateRequestWithLogging_cold_2();
                    v12 = v92;
                    goto LABEL_181;
                  }
                }

                T200UpdaterCreateRequestWithLogging_cold_3();
                value = 0;
                v228 = 0;
                v70 = 0;
                v72 = 0;
                v217 = 66;
LABEL_141:
                v116 = v217;
                T200RestoreInfoLog("%s:%d Failed with %d\n", v210, v211, v212, v213, v214, v215, v216, "_createMeasurementDict", 481, v217);
                v239 = 0;
                v101 = 0;
                goto LABEL_48;
              }

              T200UpdaterCreateRequestWithLogging_cold_4();
              value = 0;
              v228 = 0;
              v70 = 0;
              v72 = 0;
              cf = 0;
              v230 = 0;
LABEL_179:
              v217 = 11;
              goto LABEL_141;
            }

            T200UpdaterCreateRequestWithLogging_cold_6();
          }

          else
          {
            T200UpdaterCreateRequestWithLogging_cold_7();
          }

          value = 0;
          v228 = 0;
          v70 = 0;
          v72 = 0;
          v231 = 0;
          v232 = 0;
          cf = 0;
          v230 = 0;
          v66 = 0;
          goto LABEL_179;
        }
      }

      RequestWithLogging_cold_23 = T200UpdaterCreateRequestWithLogging_cold_19(bytes);
      v80 = 0;
LABEL_137:
      v91 = 0;
      v90 = *bytes;
      if (!v8)
      {
        goto LABEL_157;
      }

      goto LABEL_138;
    }
  }

  T200UpdaterCreateRequestWithLogging_cold_20();
  v218 = 0;
  v91 = 0;
LABEL_162:
  CFRelease(v12);
LABEL_163:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  _releaseBMUTags(RequestWithLogging_cold_23, v83, v84, v85, v86, v87, v88, v89);
  return v218;
}

uint64_t _updateBMUTags(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = 0;
  T200RestoreInfoLog("%s:%d Start\n", a2, a3, a4, a5, a6, a7, a8, "_updateBMUTags", 843);
  if (!a1)
  {
    _updateBMUTags_cold_23();
    return 1;
  }

  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  if (!Value || (v10 = Value, v11 = CFGetTypeID(Value), v11 != CFDictionaryGetTypeID()))
  {
    _updateBMUTags_cold_22();
    return 1;
  }

  v12 = CFDictionaryGetValue(v10, @"BMUID");
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr))
      {
        _updateBMUTags_cold_1();
        return 1;
      }

      T200RestoreInfoLog("%s:%d BMUID %d \n", v15, v16, v17, v18, v19, v20, v21, "_updateBMUTags", 852, valuePtr);
    }
  }

  v22 = *MEMORY[0x29EDB8ED8];
  T200TagRequestFirmwareTicket = CFStringCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, @"@BMU,Ticket");
  if (!T200TagRequestFirmwareTicket)
  {
    _updateBMUTags_cold_21();
    return 1;
  }

  T200TagResponseFirmwareTicket = CFStringCreateMutableCopy(v22, 0, @"BMU,Ticket");
  if (!T200TagResponseFirmwareTicket)
  {
    _updateBMUTags_cold_20();
    return 1;
  }

  T200TagChipID = CFStringCreateMutableCopy(v22, 0, @"BMU,ChipID");
  if (!T200TagChipID)
  {
    _updateBMUTags_cold_19();
    return 1;
  }

  T200TagBoardID = CFStringCreateMutableCopy(v22, 0, @"BMU,BoardID");
  if (!T200TagBoardID)
  {
    _updateBMUTags_cold_18();
    return 1;
  }

  T200TagNonce = CFStringCreateMutableCopy(v22, 0, @"BMU,Nonce");
  if (!T200TagNonce)
  {
    _updateBMUTags_cold_17();
    return 1;
  }

  T200TagUniqueID = CFStringCreateMutableCopy(v22, 0, @"BMU,UniqueID");
  if (!T200TagUniqueID)
  {
    _updateBMUTags_cold_16();
    return 1;
  }

  T200TagRevision = CFStringCreateMutableCopy(v22, 0, @"BMU,Revision");
  if (!T200TagRevision)
  {
    _updateBMUTags_cold_15();
    return 1;
  }

  T200TagProductionMode = CFStringCreateMutableCopy(v22, 0, @"BMU,ProductionMode");
  if (!T200TagProductionMode)
  {
    _updateBMUTags_cold_14();
    return 1;
  }

  T200TagCertificateEpoch = CFStringCreateMutableCopy(v22, 0, @"BMU,CertificateEpoch");
  if (!T200TagCertificateEpoch)
  {
    _updateBMUTags_cold_13();
    return 1;
  }

  T200TagFAEnable = CFStringCreateMutableCopy(v22, 0, @"BMU,EnableDeveloperCommands");
  if (!T200TagFAEnable)
  {
    _updateBMUTags_cold_12();
    return 1;
  }

  T200TagVNVEnable = CFStringCreateMutableCopy(v22, 0, @"BMU,EnableValidationCommands");
  if (!T200TagVNVEnable)
  {
    _updateBMUTags_cold_11();
    return 1;
  }

  T200TagFWOverWrite = CFStringCreateMutableCopy(v22, 0, @"BMU,ForceFirmwareUpgrade");
  if (!T200TagFWOverWrite)
  {
    _updateBMUTags_cold_10();
    return 1;
  }

  T200TagEFFV = CFStringCreateMutableCopy(v22, 0, @"BMU,EnableFutureFWVersion");
  if (!T200TagEFFV)
  {
    _updateBMUTags_cold_9();
    return 1;
  }

  T200TagMeasurementFirmware = CFStringCreateMutableCopy(v22, 0, @"BMU,Firmware");
  if (!T200TagMeasurementFirmware)
  {
    _updateBMUTags_cold_8();
    return 1;
  }

  T200TagDerFirmwarePlist = CFStringCreateMutableCopy(v22, 0, @"BMU,DigestMap");
  if (!T200TagDerFirmwarePlist)
  {
    _updateBMUTags_cold_7();
    return 1;
  }

  T200TagBoardId = CFStringCreateMutableCopy(v22, 0, @"BMU,BoardID");
  if (!T200TagBoardId)
  {
    _updateBMUTags_cold_6();
    return 1;
  }

  T200MeasurementDictFirmware = CFStringCreateMutableCopy(v22, 0, @"BMU,FirmwareMap");
  if (!T200MeasurementDictFirmware)
  {
    _updateBMUTags_cold_5();
    return 1;
  }

  T200OptionTicket = CFStringCreateMutableCopy(v22, 0, @"BMU,Ticket");
  if (!T200OptionTicket)
  {
    _updateBMUTags_cold_4();
    return 1;
  }

  T200OptionRequest = CFStringCreateMutableCopy(v22, 0, @"BMU,Request");
  if (!T200OptionRequest)
  {
    _updateBMUTags_cold_3();
    return 1;
  }

  T200TagMeasurementFirmwarePlist = CFStringCreateMutableCopy(v22, 0, @"BMU,FirmwareMap");
  if (!T200TagMeasurementFirmwarePlist)
  {
    _updateBMUTags_cold_2();
    return 1;
  }

  if (valuePtr == 2)
  {
    v32.location = 0;
    v32.length = 5;
    CFStringFindAndReplace(T200TagRequestFirmwareTicket, @"BMU,", @"BMU2,", v32, 0);
    v33.location = 0;
    v33.length = 5;
    CFStringFindAndReplace(T200TagResponseFirmwareTicket, @"BMU,", @"BMU2,", v33, 0);
    v34.location = 0;
    v34.length = 5;
    CFStringFindAndReplace(T200TagChipID, @"BMU,", @"BMU2,", v34, 0);
    v35.location = 0;
    v35.length = 5;
    CFStringFindAndReplace(T200TagBoardID, @"BMU,", @"BMU2,", v35, 0);
    v36.location = 0;
    v36.length = 5;
    CFStringFindAndReplace(T200TagNonce, @"BMU,", @"BMU2,", v36, 0);
    v37.location = 0;
    v37.length = 5;
    CFStringFindAndReplace(T200TagUniqueID, @"BMU,", @"BMU2,", v37, 0);
    v38.location = 0;
    v38.length = 5;
    CFStringFindAndReplace(T200TagRevision, @"BMU,", @"BMU2,", v38, 0);
    v39.location = 0;
    v39.length = 5;
    CFStringFindAndReplace(T200TagProductionMode, @"BMU,", @"BMU2,", v39, 0);
    v40.location = 0;
    v40.length = 5;
    CFStringFindAndReplace(T200TagFAEnable, @"BMU,", @"BMU2,", v40, 0);
    v41.location = 0;
    v41.length = 5;
    CFStringFindAndReplace(T200TagVNVEnable, @"BMU,", @"BMU2,", v41, 0);
    v42.location = 0;
    v42.length = 5;
    CFStringFindAndReplace(T200TagFWOverWrite, @"BMU,", @"BMU2,", v42, 0);
    v43.location = 0;
    v43.length = 5;
    CFStringFindAndReplace(T200TagEFFV, @"BMU,", @"BMU2,", v43, 0);
    v44.location = 0;
    v44.length = 5;
    CFStringFindAndReplace(T200TagMeasurementFirmware, @"BMU,", @"BMU2,", v44, 0);
    v45.location = 0;
    v45.length = 5;
    CFStringFindAndReplace(T200TagDerFirmwarePlist, @"BMU,", @"BMU2,", v45, 0);
    v46.location = 0;
    v46.length = 5;
    CFStringFindAndReplace(T200TagBoardId, @"BMU,", @"BMU2,", v46, 0);
    v47.location = 0;
    v47.length = 5;
    CFStringFindAndReplace(T200MeasurementDictFirmware, @"BMU,", @"BMU2,", v47, 0);
    v48.location = 0;
    v48.length = 5;
    CFStringFindAndReplace(T200OptionTicket, @"BMU,", @"BMU2,", v48, 0);
    v49.location = 0;
    v49.length = 5;
    CFStringFindAndReplace(T200OptionRequest, @"BMU,", @"BMU2,", v49, 0);
    v50.location = 0;
    v50.length = 5;
    CFStringFindAndReplace(T200TagMeasurementFirmwarePlist, @"BMU,", @"BMU2,", v50, 0);
  }

  T200RestoreInfoLog("%s:%d End\n", v23, v24, v25, v26, v27, v28, v29, "_updateBMUTags", 938);
  return 0;
}

const char *_releaseBMUTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  T200RestoreInfoLog("%s:%d Start\n", a2, a3, a4, a5, a6, a7, a8, "_releaseBMUTags", 945);
  if (T200TagRequestFirmwareTicket)
  {
    CFRelease(T200TagRequestFirmwareTicket);
    T200TagRequestFirmwareTicket = 0;
  }

  if (T200TagResponseFirmwareTicket)
  {
    CFRelease(T200TagResponseFirmwareTicket);
    T200TagResponseFirmwareTicket = 0;
  }

  if (T200TagChipID)
  {
    CFRelease(T200TagChipID);
    T200TagChipID = 0;
  }

  if (T200TagBoardID)
  {
    CFRelease(T200TagBoardID);
    T200TagBoardID = 0;
  }

  if (T200TagNonce)
  {
    CFRelease(T200TagNonce);
    T200TagNonce = 0;
  }

  if (T200TagUniqueID)
  {
    CFRelease(T200TagUniqueID);
    T200TagUniqueID = 0;
  }

  if (T200TagRevision)
  {
    CFRelease(T200TagRevision);
    T200TagRevision = 0;
  }

  if (T200TagProductionMode)
  {
    CFRelease(T200TagProductionMode);
    T200TagProductionMode = 0;
  }

  if (T200TagCertificateEpoch)
  {
    CFRelease(T200TagCertificateEpoch);
    T200TagCertificateEpoch = 0;
  }

  if (T200TagFAEnable)
  {
    CFRelease(T200TagFAEnable);
    T200TagFAEnable = 0;
  }

  if (T200TagVNVEnable)
  {
    CFRelease(T200TagVNVEnable);
    T200TagVNVEnable = 0;
  }

  if (T200TagFWOverWrite)
  {
    CFRelease(T200TagFWOverWrite);
    T200TagFWOverWrite = 0;
  }

  if (T200TagEFFV)
  {
    CFRelease(T200TagEFFV);
    T200TagEFFV = 0;
  }

  if (T200TagMeasurementFirmware)
  {
    CFRelease(T200TagMeasurementFirmware);
    T200TagMeasurementFirmware = 0;
  }

  if (T200TagDerFirmwarePlist)
  {
    CFRelease(T200TagDerFirmwarePlist);
    T200TagDerFirmwarePlist = 0;
  }

  if (T200TagBoardId)
  {
    CFRelease(T200TagBoardId);
    T200TagBoardId = 0;
  }

  if (T200MeasurementDictFirmware)
  {
    CFRelease(T200MeasurementDictFirmware);
    T200MeasurementDictFirmware = 0;
  }

  if (T200OptionTicket)
  {
    CFRelease(T200OptionTicket);
    T200OptionTicket = 0;
  }

  if (T200OptionRequest)
  {
    CFRelease(T200OptionRequest);
    T200OptionRequest = 0;
  }

  if (T200TagMeasurementFirmwarePlist)
  {
    CFRelease(T200TagMeasurementFirmwarePlist);
    T200TagMeasurementFirmwarePlist = 0;
  }

  return T200RestoreInfoLog("%s:%d End\n", v8, v9, v10, v11, v12, v13, v14, "_releaseBMUTags", 966);
}

void T200CFShow(const void *a1)
{
  if (a1)
  {
    v1 = CFCopyDescription(a1);
    CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
    if (CStringPtr)
    {
      T200RestoreInfoLog("[DICT] %s\n", v3, v4, v5, v6, v7, v8, v9, CStringPtr);
    }

    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t getChemistryId(const __CFDictionary *a1)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"ChemistryID");
  if (!Value || (v2 = Value, v3 = CFGetTypeID(Value), v3 != CFNumberGetTypeID()))
  {
    getChemistryId_cold_2();
    return 0;
  }

  if (!CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr))
  {
    getChemistryId_cold_1();
    return 0;
  }

  return valuePtr;
}

CFTypeRef CopyHWVersion(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"HWVersion");
  if (Value && (v2 = Value, v3 = CFGetTypeID(Value), v3 == CFStringGetTypeID()))
  {
    result = CFRetain(v2);
    if (result)
    {
      return result;
    }
  }

  else
  {
    CopyHWVersion_cold_1();
  }

  T200RestoreInfoLog("%s:%d Failed getting hw_version\n", v5, v6, v7, v8, v9, v10, v11, "CopyHWVersion", 243);
  return 0;
}

uint64_t CheckKey(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  return CFBooleanGetValue(Value);
}

CFErrorRef OUTLINED_FUNCTION_1(char *a1)
{

  return createCFError(a1, 2u, 0, 0);
}

CFErrorRef OUTLINED_FUNCTION_2(char *a1, unsigned int a2)
{

  return createCFError(a1, a2, 0, 0);
}

CFErrorRef OUTLINED_FUNCTION_3(char *a1, uint64_t a2, const char *a3)
{

  return createCFError(a1, 3u, a3, 0);
}

unsigned __int8 *dumpBuffer__(unsigned __int8 *result, int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *v3++;
      result = printf("0x%02x ", v4);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t dumpBuffer(unsigned __int8 *a1, int a2)
{
  printf("[ ");
  if (a2)
  {
    if (a2 == 2)
    {
      printf("0x%02x ");
    }

    else if (a2 == 4)
    {
      printf("0x%04x ");
    }

    else
    {
      v4 = a2;
      do
      {
        v5 = *a1++;
        printf("0x%02x ", v5);
        --v4;
      }

      while (v4);
    }
  }

  return printf("] %d\n", a2);
}

_DWORD *keyToString(_DWORD *result, _BYTE *a2)
{
  v2 = 32;
  v3 = a2;
  do
  {
    v2 -= 8;
    *v3++ = *result >> v2;
  }

  while (v2);
  a2[4] = 0;
  return result;
}

uint64_t stringToKey(uint64_t result, int *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    *a2 = v3 << 8;
    v4 = *(result + v2) | (v3 << 8);
    *a2 = v4;
    ++v2;
    v3 = v4;
  }

  while (v2 != 4);
  return result;
}

uint64_t readSMCKey(mach_port_t a1, int a2, void *a3, size_t a4, int a5)
{
  v37 = *MEMORY[0x29EDCA608];
  v9 = 80;
  outputStructCnt = 80;
  if (a5)
  {
    v9 = 168;
    outputStructCnt = 168;
  }

  v36 = 0;
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
  outputStruct = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  __memset_chk();
  __memset_chk();
  v19[0] = HIBYTE(a2);
  v19[1] = BYTE2(a2);
  v19[2] = BYTE1(a2);
  v19[3] = a2;
  v19[4] = 0;
  inputStruct = a2;
  BYTE6(v28) = 9;
  v10 = IOConnectCallStructMethod(a1, 2u, &inputStruct, v9, &outputStruct, &outputStructCnt);
  v11 = BYTE8(v22);
  if (v10 | BYTE8(v22))
  {
    if (v10)
    {
      printf("No info found for key '%s' (0x%X, 0x%X)\n\n", v19, v10, BYTE8(v22));
      v11 = BYTE8(v22);
    }

    v12 = 3758097136;
    if (v11)
    {
      printf("No info found for key '%s' (0x%X, 0x%X)\n\n");
    }
  }

  else
  {
    v13 = HIDWORD(v21);
    __memset_chk();
    __memset_chk();
    inputStruct = a2;
    DWORD2(v27) = v13;
    BYTE6(v28) = 5;
    v14 = IOConnectCallStructMethod(a1, 2u, &inputStruct, v9, &outputStruct, &outputStructCnt);
    v15 = v14;
    if (gVerboseComms >= 2)
    {
      printf("%s:%d %c%c%c%c rc= %x", "readSMCKey", 207, (a2 >> 24), (a2 << 8 >> 24), (a2 >> 8), a2, v14);
      dumpBuffer(v23, a4);
    }

    v16 = BYTE8(v22);
    if (v15 | BYTE8(v22))
    {
      if (v15)
      {
        printf("Read failed for key '%s' (0x%X, 0x%X)\n\n", v19, v15, BYTE8(v22));
        v16 = BYTE8(v22);
      }

      v12 = 3758097098;
      if (v16)
      {
        printf("Read failed for key '%s' (0x%X, 0x%X)\n\n");
      }
    }

    else
    {
      if (gVerboseComms >= 2)
      {
        printf("%s:%d data captured =%d\n", "readSMCKey", 213, v13);
      }

      memcpy(a3, v23, a4);
      return 0;
    }
  }

  return v12;
}

uint64_t writeSMCKey(mach_port_t a1, int a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  v5 = a4;
  v37 = *MEMORY[0x29EDCA608];
  v9 = 80;
  outputStructCnt = 80;
  if (a5)
  {
    v9 = 168;
    outputStructCnt = 168;
  }

  v36 = 0;
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
  memset(outputStruct, 0, sizeof(outputStruct));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  __memset_chk();
  __memset_chk();
  v14[0] = HIBYTE(a2);
  v14[1] = BYTE2(a2);
  v14[2] = BYTE1(a2);
  v14[3] = a2;
  v14[4] = 0;
  BYTE6(v28) = 6;
  inputStruct = a2;
  DWORD2(v27) = v5;
  __memcpy_chk();
  v10 = IOConnectCallStructMethod(a1, 2u, &inputStruct, v9, outputStruct, &outputStructCnt);
  v11 = v10;
  if (gVerboseComms >= 2)
  {
    printf("%s:%d %c%c%c%c rc= %x", "writeSMCKey", 249, (a2 >> 24), (a2 << 8 >> 24), (a2 >> 8), a2, v10);
    dumpBuffer(a3, v5);
  }

  if (v11 || BYTE8(v16))
  {
    printf("Write failed for key '%s' (0x%X, 0x%X)\n\n", v14, v11, BYTE8(v16));
  }

  return v11;
}

double veridian_cmd_init(uint64_t a1, char a2, char a3)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *a1 = a2;
  *&result = 16780032;
  *(a1 + 1) = 16780032;
  *(a1 + 5) = a3;
  return result;
}

uint64_t smcSMBWrite(unsigned __int8 a1, uint64_t a2, unsigned int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(&v26[70], 0, 50);
  if (a3 <= 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  memset(&v26[6], 0, 64);
  if (a3 <= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  v26[0] = v6;
  *&v26[1] = 5634;
  v26[3] = a1;
  v26[4] = 1;
  v26[5] = a3;
  if (writeSMCKey(gSMCConnect, 1397572163, v26, 6, 1))
  {
    return 0xFFFFFFFFLL;
  }

  memset(v26, 0, sizeof(v26));
  if (!a3)
  {
    goto LABEL_20;
  }

  v7 = 0;
  do
  {
    v8 = v7++;
    v26[v8] = *(a2 + v8);
  }

  while (a3 > v7);
  if (!v7)
  {
LABEL_20:
    LOBYTE(v7) = 0;
    v26[0] = 98;
    v14 = 1;
LABEL_21:
    bzero(&v26[v14], (30 - v7) + 1);
    goto LABEL_22;
  }

  v9 = v26;
  v10 = 98;
  v11 = v7;
  do
  {
    v10 ^= *v9;
    v12 = 8;
    do
    {
      v13 = v10;
      v10 *= 2;
      if (v13 < 0)
      {
        v10 ^= 7u;
      }

      --v12;
    }

    while (v12);
    ++v9;
    --v11;
  }

  while (v11);
  v26[v7] = v10;
  v14 = v8 + 2;
  if (v14 <= 0x1Fu)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (writeSMCKey(gSMCConnect, 1397572183, v26, 32, 1) || smcI2CGO())
  {
    return 0xFFFFFFFFLL;
  }

  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v16 = (v5 + a3);
  v18 = 1;
  if (v16 > 0x1E)
  {
    v17 = 1397572164;
  }

  else
  {
    v17 = 1397572178;
  }

  if (readSMCKey(gSMCConnect, v17, &v18, v16, 1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t smcI2CGO()
{
  v0 = 3758097098;
  if (!writeSMCKey(gSMCConnect, 1397572167, byte_299F89DB8, 1, 1))
  {
    v4 = 1;
    v2 = -11;
    while (1)
    {
      if (__CFADD__(v2++, 1))
      {
        return 3758097110;
      }

      if (readSMCKey(gSMCConnect, 1397572179, &v4, 2uLL, 1))
      {
        return v0;
      }

      if (!v4)
      {
        break;
      }

      usleep(0x186A0u);
      if (v4 != 1)
      {
        return v0;
      }
    }

    return 0;
  }

  return v0;
}

uint64_t smcSMBRead(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a1;
  v16 = *MEMORY[0x29EDCA608];
  if (a3 <= 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = v6 + a3;
  if (a3 <= 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v14[0] = v8;
  *&v14[1] = 5634;
  v14[3] = a1;
  v14[4] = 0;
  v14[5] = v7;
  if (writeSMCKey(gSMCConnect, 1397572163, v14, 6, 1))
  {
    return 0xFFFFFFFFLL;
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (writeSMCKey(gSMCConnect, 1397572181, v14, 120, 1) || smcI2CGO())
  {
    return 0xFFFFFFFFLL;
  }

  memset(v13, 0, sizeof(v13));
  v12 = 1;
  v9 = v7 > 0x1Eu ? 1397572164 : 1397572178;
  if (readSMCKey(gSMCConnect, v9, &v12, v7, 1))
  {
    return 0xFFFFFFFFLL;
  }

  if (verifyPEC(v5, v7, &v12))
  {
    return 4294967293;
  }

  if (a3 <= 2)
  {
    v11 = &v12;
  }

  else
  {
    v11 = v13;
  }

  memcpy(a2, v11, a3);
  return 0;
}

uint64_t verifyPEC(int a1, int a2, unsigned __int8 *a3)
{
  v3 = a1 ^ 0x62;
  v4 = 8;
  do
  {
    v5 = v3;
    v3 *= 2;
    if (v5 < 0)
    {
      v3 ^= 7u;
    }

    --v4;
  }

  while (v4);
  v6 = v3 ^ 0x17;
  v7 = 8;
  do
  {
    v8 = v6;
    v6 *= 2;
    if (v8 < 0)
    {
      v6 ^= 7u;
    }

    --v7;
  }

  while (v7);
  if (a2)
  {
    do
    {
      v6 ^= *a3;
      v9 = 8;
      do
      {
        v10 = v6;
        v6 *= 2;
        if (v10 < 0)
        {
          v6 ^= 7u;
        }

        --v9;
      }

      while (v9);
      ++a3;
      --a2;
    }

    while (a2);
  }

  return v6;
}

uint64_t BC__connect()
{
  if (gSMCConnect)
  {
    return 0;
  }

  v1 = *MEMORY[0x29EDBB110];
  v2 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (!MatchingService || (v4 = MatchingService, v5 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, &gSMCConnect), IOObjectRelease(v4), v5) || !gSMCConnect || IOConnectCallScalarMethod(gSMCConnect, 0, 0, 0, 0, 0))
  {
    gSMCConnect = 0;
  }

  else if (gSMCConnect)
  {
    return 0;
  }

  printf("cannot open gas gauge device");
  return 0xFFFFFFFFLL;
}

uint64_t BC__disconnect()
{
  if (gSMCConnect)
  {
    if (!IOConnectCallScalarMethod(gSMCConnect, 1u, 0, 0, 0, 0))
    {
      IOServiceClose(gSMCConnect);
    }

    gSMCConnect = 0;
  }

  return 0;
}

uint64_t BC__transmit(int a1, unsigned int a2, unsigned __int8 *a3)
{
  if (BC__connect())
  {
    printf("Failed to BC__connect");
    return 0xFFFFFFFFLL;
  }

  if (gVerboseComms)
  {
    printf("%s cmd=0x%x amount=%d\n", "BC__transmit", a1, a2);
  }

  if (a2 > 0x20)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = smcSMBWrite(a1, a3, a2);
  v8 = v7;
  if (gVerboseComms)
  {
    printf("%s:%d status=%d", "BC__transmit", 552, v7);
    dumpBuffer(a3, a2);
    putchar(10);
  }

  return (v8 >> 31) & 0xFFFFFFFE;
}

uint64_t BC__receive(int a1, unsigned int a2, void *a3)
{
  v11 = a1;
  *v10 = a1;
  if (BC__connect())
  {
    printf("Failed to BC__connect");
  }

  else
  {
    if (gVerboseComms)
    {
      printf("%s cmd=0x%x amount=%d\n", "BC__receive", a1, a2);
    }

    if (a2 < 3)
    {
      if (writeSMCKey(gSMCConnect, 1196572996, &v11, 1, 1))
      {
        return 0xFFFFFFFFLL;
      }

      v7 = gSMCConnect;
      v8 = a2;
      v9 = 1196577348;
    }

    else
    {
      if (writeSMCKey(gSMCConnect, 1195524941, v10, 2, 1))
      {
        return 0xFFFFFFFFLL;
      }

      v7 = gSMCConnect;
      v8 = a2;
      v9 = 1195528791;
    }

    if (!readSMCKey(v7, v9, a3, v8, 1))
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t Stop_smc_communication()
{
  v1 = 0;
  if (writeSMCKey(gSMCConnect, 1111576659, &v1, 1, 1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t Enable_smc_communication()
{
  v1 = 1;
  if (writeSMCKey(gSMCConnect, 1111576659, &v1, 1, 1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t BC__readSMCKey(int a1, void *a2, size_t a3)
{
  if (BC__connect())
  {
    printf("Failed to BC__connect");
    return 0xFFFFFFFFLL;
  }

  else if (readSMCKey(gSMCConnect, a1, a2, a3, 1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t BC__writeSMCKey(int a1, unsigned __int8 *a2, uint64_t a3)
{
  if (BC__connect())
  {
    printf("Failed to BC__connect");
    return 0xFFFFFFFFLL;
  }

  else if (writeSMCKey(gSMCConnect, a1, a2, a3, 1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t BC__getInfo(_DWORD *a1, size_t a2)
{
  v9 = a2;
  v8 = 0;
  if (BC__GasGauge_connect(&v8))
  {
    printf("Failed to BC__GasGauge_connect");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
    v5 = 5;
    do
    {
      if (v4)
      {
        printf("Error getting info: 0x%X. Retrying... \n", v5);
        usleep(0x186A0u);
      }

      v6 = IOConnectCallMethod(v8, 0, 0, 0, 0, 0, 0, 0, a1, &v9);
      v5 = v6;
      if (v4 > 8)
      {
        break;
      }

      ++v4;
    }

    while (v6);
    if (v6)
    {
      printf("Error getting info: 0x%X \n", v6);
      v3 = v5 | (retrieveGasGaugeRegistryVal() << 8);
    }

    else
    {
      printf("fw:%u cfg:%u dnvd1:%u dnvd2:%u crypto:%u chipId:%u chemistry:%u hwId:%u isTwoStageSupported:%u \n", *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[7], a1[8], *(a1 + 62) & 1);
      v3 = 0;
    }

    if (v8)
    {
      IOServiceClose(v8);
    }
  }

  return v3;
}

uint64_t BC__GasGauge_connect(io_connect_t *a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceMatching("AppleGasGaugeUpdate");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, a1);
    IOObjectRelease(v6);
    if (!v7)
    {
      if (*a1)
      {
        return 0;
      }
    }
  }

  *a1 = 0;
  printf("cannot open gas gauge device");
  return 0xFFFFFFFFLL;
}

uint64_t retrieveGasGaugeRegistryVal()
{
  valuePtr = 0;
  v0 = IOServiceMatching("AppleGasGaugeUpdate");
  if (v0)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v0);
    if (MatchingService + 1 < 2)
    {
      retrieveGasGaugeRegistryVal_cold_2();
    }

    else
    {
      v2 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"CommunicationError", *MEMORY[0x29EDB8ED8], 0);
      if (CFProperty)
      {
        v4 = CFProperty;
        v5 = CFGetTypeID(CFProperty);
        if (v5 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v4, kCFNumberSInt8Type, &valuePtr);
          printf("GasGauge Registry Value %d\n", valuePtr);
        }

        else
        {
          retrieveGasGaugeRegistryVal_cold_1();
        }

        CFRelease(v4);
      }

      IOObjectRelease(v2);
    }
  }

  else
  {
    retrieveGasGaugeRegistryVal_cold_3();
  }

  return valuePtr;
}

uint64_t BC__startUpdate(void *a1, size_t a2)
{
  v9 = a2;
  connection = 0;
  printf("BC__startUpdate");
  if (BC__GasGauge_connect(&connection))
  {
    printf("Failed to BC__GasGauge_connect");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
    v5 = 5;
    do
    {
      if (v4)
      {
        printf("Error starting update: 0x%X. Retrying... \n", v5);
        usleep(0x186A0u);
      }

      v6 = IOConnectCallMethod(connection, 1u, 0, 0, 0, 0, 0, 0, a1, &v9);
      v5 = v6;
      if (v4 > 8)
      {
        break;
      }

      ++v4;
    }

    while (v6);
    if (v6)
    {
      printf("Error starting update: 0x%X \n", v6);
      v3 = v5 | (retrieveGasGaugeRegistryVal() << 8);
    }

    else
    {
      v3 = 0;
    }

    if (connection)
    {
      IOServiceClose(connection);
    }
  }

  return v3;
}

uint64_t BC__sendImage(void *a1)
{
  v5 = 0;
  printf("BC__sendImage");
  if (BC__GasGauge_connect(&v5))
  {
    printf("Failed to BC__GasGauge_connect");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v3 = IOConnectCallMethod(v5, 2u, 0, 0, a1, a1[8] + 80, 0, 0, 0, 0);
    v2 = v3;
    if (v3)
    {
      printf("Error writing image. 0x%X \n", v3);
      v2 = v2 | (retrieveGasGaugeRegistryVal() << 8);
    }

    if (v5)
    {
      IOServiceClose(v5);
    }
  }

  return v2;
}

uint64_t BC__commitImage()
{
  v3 = 0;
  printf("BC__commitImage");
  if (BC__GasGauge_connect(&v3))
  {
    printf("Failed to BC__GasGauge_connect");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v1 = IOConnectCallMethod(v3, 3u, 0, 0, 0, 0, 0, 0, 0, 0);
    v0 = v1;
    if (v1)
    {
      printf("Error committing image. 0x%X \n", v1);
      v0 = v0 | (retrieveGasGaugeRegistryVal() << 8);
    }

    if (v3)
    {
      IOServiceClose(v3);
    }
  }

  return v0;
}

uint64_t T200UpdaterInfoLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = *MEMORY[0x29EDCA608];
  vsnprintf(__str, 0x1000uLL, v8, va);
  if (logSinkFuncUpdate)
  {
    return logSinkFuncUpdate(logContextUpdtaer, __str);
  }

  else
  {
    return printf("%s", __str);
  }
}

uint64_t T200UpdaterCreate(const __CFDictionary *a1, uint64_t (*a2)(void, void), uint64_t a3, CFErrorRef *a4)
{
  pthread_once(&_T200ClassInitializeOnce, _T200UpdaterClassInitialize);
  logSinkFuncUpdate = a2;
  logContextUpdtaer = a3;
  T200UpdaterInfoLog("%s:%d Start \n", v8, v9, v10, v11, v12, v13, v14, "_T200UpdaterCreate", 285);
  T200CFShow_0(a1);
  v15 = *MEMORY[0x29EDB8ED8];
  Instance = _CFRuntimeCreateInstance();
  v17 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), 0x2148uLL);
    *(v17 + 16) = CFDictionaryCreateMutableCopy(v15, 0, a1);
    *(v17 + 8500) = 0;
    *(v17 + 8492) = 0;
    *(v17 + 8481) = 0;
    *(v17 + 8483) = 0;
    *(v17 + 8448) = 0u;
    *(v17 + 8503) = 0;
    *(v17 + 8506) = 0;
    *(v17 + 8512) = 0;
    *(v17 + 8528) = 0;
    *(v17 + 8520) = 0;
    v18 = *(v17 + 40);
    if (v18)
    {
      free(v18);
      *(v17 + 40) = 0;
    }

    v19 = *(v17 + 72);
    if (v19)
    {
      free(v19);
      *(v17 + 72) = 0;
    }

    v20 = *(v17 + 80);
    if (v20)
    {
      free(v20);
      *(v17 + 80) = 0;
    }

    v21 = *(v17 + 64);
    if (v21)
    {
      free(v21);
      *(v17 + 64) = 0;
    }

    v22 = *(v17 + 48);
    if (v22)
    {
      free(v22);
      *(v17 + 48) = 0;
    }

    v23 = *(v17 + 56);
    if (v23)
    {
      free(v23);
      *(v17 + 56) = 0;
    }

    v24 = *(v17 + 32);
    if (v24)
    {
      CFRelease(v24);
      *(v17 + 32) = 0;
    }

    v25 = *(v17 + 24);
    if (v25)
    {
      CFRelease(v25);
      *(v17 + 24) = 0;
    }

    if (CFDictionaryContainsKey(*(v17 + 16), @"Options"))
    {
      Value = CFDictionaryGetValue(*(v17 + 16), @"Options");
      if (Value)
      {
        v34 = CFRetain(Value);
        if (v34)
        {
          v35 = v34;
          if (CFDictionaryGetCount(v34))
          {
            *(v17 + 8506) = CheckKeyTrue(v35, @"DeferredCommit");
            v43 = CFDictionaryGetValue(v35, @"PreflightContext");
            if (v43)
            {
              v44 = CFRetain(v43);
              v45 = v44;
              if (v44)
              {
                *(v17 + 8507) = CFStringCompare(v44, @"BootedOS", 0) == kCFCompareEqualTo;
              }
            }

            else
            {
              v45 = 0;
            }

            v48 = CheckKeyTrue(v35, @"RestoreInternal");
            *(v17 + 8504) = v48;
            if (v48)
            {
              v56 = CheckKeyTrue(v35, @"SkipSameVersion") == 0;
              v57 = *(v17 + 8504);
              *(v17 + 8508) = v56;
              if (v57)
              {
                v58 = CheckKeyTrue(v35, @"RollbackFWVer") != 0;
              }

              else
              {
                v58 = 0;
              }
            }

            else
            {
              v58 = 0;
              *(v17 + 8508) = 0;
            }

            *(v17 + 8503) = v58;
            T200UpdaterInfoLog("%s:%d isOTA: %d \n", v49, v50, v51, v52, v53, v54, v55, "_t200InitUpdater", 375, *(v17 + 8506));
            T200UpdaterInfoLog("%s:%d isBootedOS: %d \n", v59, v60, v61, v62, v63, v64, v65, "_t200InitUpdater", 376, *(v17 + 8507));
            T200UpdaterInfoLog("%s:%d Internal Restore: %d \n", v66, v67, v68, v69, v70, v71, v72, "_t200InitUpdater", 377, *(v17 + 8504));
            T200UpdaterInfoLog("%s:%d Force Firmware Upgrade: %d \n", v73, v74, v75, v76, v77, v78, v79, "_t200InitUpdater", 378, *(v17 + 8508));
            T200UpdaterInfoLog("%s:%d Rollback FW Version: %d \n", v80, v81, v82, v83, v84, v85, v86, "_t200InitUpdater", 379, *(v17 + 8503));
            if (v45)
            {
              CFRelease(v45);
            }
          }

          else
          {
            *(v17 + 8509) = 1;
            T200UpdaterInfoLog("%s:%d T200 Options Empty \n", v36, v37, v38, v39, v40, v41, v42, "_t200InitUpdater", 361);
          }

          CFRelease(v35);
          goto LABEL_43;
        }
      }

      *(v17 + 8509) = 1;
      v47 = 383;
    }

    else
    {
      *(v17 + 8509) = 1;
      v47 = 387;
    }

    T200UpdaterInfoLog("%s:%d T200 Options Empty \n", v26, v27, v28, v29, v30, v31, v32, "_t200InitUpdater", v47);
LABEL_43:
    CFAutorelease(*(v17 + 16));
    T200UpdaterInfoLog("%s:%d End \n", v87, v88, v89, v90, v91, v92, v93, "_T200UpdaterCreate", 300);
    goto LABEL_44;
  }

  CFError = createCFError("Cannot allocate memory for updater", 3u, 0, 0);
  if (a4 && CFError)
  {
    *a4 = CFError;
LABEL_32:
    CFRelease(CFError);
    goto LABEL_44;
  }

  if (CFError)
  {
    goto LABEL_32;
  }

LABEL_44:
  g_T200Ref = v17;
  return v17;
}

uint64_t _T200UpdaterExecCommand(uint64_t a1, const __CFString *a2, const __CFDictionary *a3, void *a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v698 = *MEMORY[0x29EDCA608];
  T200UpdaterInfoLog("%s:%d Start \n", a2, a3, a4, a5, a6, a7, a8, "_T200UpdaterExecCommand", 405);
  if (!v8)
  {
    _T200UpdaterExecCommand_cold_115();
    goto LABEL_204;
  }

  *v8 = 0;
  if (!a1)
  {
    _T200UpdaterExecCommand_cold_114(v8);
    goto LABEL_204;
  }

  if (a3)
  {
    *(a1 + 24) = a3;
  }

  T200CFShow_0(*(a1 + 16));
  T200CFShow_0(*(a1 + 24));
  if (CFStringCompare(a2, @"queryInfo", 0) == kCFCompareEqualTo)
  {
    T200UpdaterInfoLog("%s:%d Entering execCommand: command = queryInfo \n", v12, v13, v14, v15, v16, v17, v18, "_T200UpdaterExecCommand", 420);
    T200UpdaterInfoLog("%s:%d OTA = %d, BootedOS = %d \n", v19, v20, v21, v22, v23, v24, v25, "_T200UpdaterExecCommand", 421, *(a1 + 8506), *(a1 + 8507));
    v26 = *(a1 + 32);
    if (v26)
    {
      CFRelease(v26);
      *(a1 + 32) = 0;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    *(a1 + 32) = Mutable;
    if (!Mutable)
    {
      _T200UpdaterExecCommand_cold_113();
      goto LABEL_204;
    }

    READ_DATA__getVersionInformation(0);
    if (_getInfoSMCIF(a1, v28, v29, v30, v31, v32, v33, v34))
    {
      _T200UpdaterExecCommand_cold_1();
      goto LABEL_204;
    }
  }

  if (CFStringCompare(a2, @"performNextStage", 0))
  {
LABEL_11:
    v42 = 0;
    goto LABEL_12;
  }

  T200UpdaterInfoLog("%s:%d Entering execCommand: command = performNextStage \n", v35, v36, v37, v38, v39, v40, v41, "_T200UpdaterExecCommand", 435);
  T200UpdaterInfoLog("%s:%d OTA = %d, BootedOS = %d \n", v48, v49, v50, v51, v52, v53, v54, "_T200UpdaterExecCommand", 436, *(a1 + 8506), *(a1 + 8507));
  v55 = *(a1 + 32);
  if (v55)
  {
    CFRelease(v55);
    *(a1 + 32) = 0;
  }

  v56 = *MEMORY[0x29EDB8ED8];
  v57 = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *(a1 + 32) = v57;
  if (!v57)
  {
    _T200UpdaterExecCommand_cold_112();
    goto LABEL_204;
  }

  READ_DATA__getVersionInformation(0);
  if (_getInfoSMCIF(a1, v58, v59, v60, v61, v62, v63, v64))
  {
    _T200UpdaterExecCommand_cold_2();
    goto LABEL_204;
  }

  T200UpdaterInfoLog("%s:%d Start  \n", v65, v66, v67, v68, v69, v70, v71, "_entitlementExist", 2064);
  v72 = *(a1 + 16);
  if (!v72)
  {
    _T200UpdaterExecCommand_cold_4();
    goto LABEL_55;
  }

  if (!CFDictionaryContainsKey(v72, @"Options") || (Value = CFDictionaryGetValue(*(a1 + 16), @"Options")) == 0 || (v74 = CFRetain(Value)) == 0)
  {
    _T200UpdaterExecCommand_cold_3();
LABEL_55:
    T200UpdaterInfoLog("%s:%d End \n", v163, v164, v165, v166, v167, v168, v169, "_entitlementExist", 2083);
    v646 = 0;
    goto LABEL_34;
  }

  v82 = v74;
  T200UpdaterInfoLog("%s:%d Restore Options:  \n", v75, v76, v77, v78, v79, v80, v81, "_entitlementExist", 2073);
  T200CFShow_0(v82);
  if (CheckKeyTrue(v82, @"EnableDeveloperCommands") || CheckKeyTrue(v82, @"EnableValidationCommands"))
  {
    T200UpdaterInfoLog("%s:%d FA/VNV Entitlement Exist. \n", v83, v84, v85, v86, v87, v88, v89, "_entitlementExist", 2078);
    v646 = 1;
  }

  else
  {
    v646 = 0;
  }

  T200UpdaterInfoLog("%s:%d End \n", v83, v84, v85, v86, v87, v88, v89, "_entitlementExist", 2083);
  CFRelease(v82);
LABEL_34:
  T200UpdaterInfoLog("%s:%d Start  \n", v90, v91, v92, v93, v94, v95, v96, "_getFirmware", 2099);
  v97 = *(a1 + 32);
  if (!v97 || (v98 = CFRetain(v97)) == 0)
  {
    _T200UpdaterExecCommand_cold_111();
    v208 = 85;
    goto LABEL_176;
  }

  v106 = v98;
  alloc = v56;
  v652 = a1 + 0x2000;
  T200UpdaterInfoLog("%s:%d show deviceInfoRef \n", v99, v100, v101, v102, v103, v104, v105, "_getFirmware", 2104);
  T200CFShow_0(v106);
  v107 = *(a1 + 24);
  v651 = a1;
  v645 = v8;
  if (!v107 || (v108 = CFRetain(v107)) == 0)
  {
    _T200UpdaterExecCommand_cold_18();
    v116 = 0;
    v208 = 83;
    goto LABEL_178;
  }

  v116 = v108;
  T200UpdaterInfoLog("%s:%d  show fOptions \n", v109, v110, v111, v112, v113, v114, v115, "_getFirmware", 2109);
  T200CFShow_0(v116);
  if (v646)
  {
LABEL_63:
    T200UpdaterInfoLog("%s:%d start  \n", v117, v118, v119, v120, v121, v122, v123, "_extract_digest_map", 1724);
    v174 = CFDictionaryGetValue(v116, @"FirmwareData");
    if (v174 && (v175 = v174, v176 = CFGetTypeID(v174), v176 == CFDataGetTypeID()))
    {
      v177 = CFPropertyListCreateWithData(alloc, v175, 0, 0, 0);
      if (v177)
      {
        v178 = v177;
        v179 = CFGetTypeID(v177);
        if (v179 == CFDictionaryGetTypeID())
        {
          v180 = CFStringCreateWithFormat(alloc, 0, @"%@.%@", @"digest_der", @"payload");
          ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
          if (ValueForKeyPathInDict && (v182 = CFRetain(ValueForKeyPathInDict)) != 0)
          {
            v183 = v182;
            v184 = CFDataGetLength(v182) + 31;
            *(a1 + 8460) = CFDataGetLength(v183);
            v185 = 1;
            v186 = calloc(v184 & 0xFFFFFFE0, 1uLL);
            *(a1 + 64) = v186;
            bzero(v186, v184 & 0xFFFFFFE0);
            v699.length = *(a1 + 8460);
            v699.location = 0;
            CFDataGetBytes(v183, v699, *(a1 + 64));
            T200UpdaterInfoLog("%s:%d lenDigestData=%d \n", v187, v188, v189, v190, v191, v192, v193, "_extract_digest_map", 1749, *(a1 + 8460));
            T200UpdaterInfoLog("%s:%d end \n", v194, v195, v196, v197, v198, v199, v200, "_extract_digest_map", 1750);
            CFRelease(v183);
          }

          else
          {
            _T200UpdaterExecCommand_cold_11();
            v185 = 0;
          }

          v8 = v645;
          if (v180)
          {
            CFRelease(v180);
          }

          CFRelease(v178);
          if (v185)
          {
            T200UpdaterInfoLog("%s:%d End \n", v201, v202, v203, v204, v205, v206, v207, "_getFirmware", 2135);
            v208 = 0;
LABEL_74:
            CFRelease(v106);
LABEL_75:
            CFRelease(v116);
            goto LABEL_76;
          }

          goto LABEL_199;
        }

        _T200UpdaterExecCommand_cold_10(v178);
      }

      else
      {
        _T200UpdaterExecCommand_cold_12();
      }
    }

    else
    {
      _T200UpdaterExecCommand_cold_13();
    }

    v8 = v645;
LABEL_199:
    _T200UpdaterExecCommand_cold_14();
    v208 = 66;
    goto LABEL_178;
  }

  v124 = CFDictionaryGetValue(v106, @"ChemistryID");
  v125 = CFDictionaryGetValue(v106, @"HWVersion");
  T200UpdaterInfoLog("%s:%d start \n", v126, v127, v128, v129, v130, v131, v132, "_extract_cell_ID_Supported", 1771);
  v133 = CFStringCreateWithFormat(alloc, 0, @"%@.%@.%@.%@.%@", @"hw_version", v125, @"chemistry", v124, @"cell_id_skip");
  if (!v133)
  {
    _T200UpdaterExecCommand_cold_16();
    goto LABEL_186;
  }

  v134 = v133;
  v135 = CFDictionaryGetValue(v116, @"FirmwareData");
  if (!v135 || (v136 = CFRetain(v135)) == 0)
  {
    _T200UpdaterExecCommand_cold_15(v134);
    goto LABEL_186;
  }

  v137 = v136;
  v656 = v124;
  v138 = CFGetTypeID(v136);
  if (v138 != CFDataGetTypeID())
  {
    _T200UpdaterExecCommand_cold_5();
    a1 = v651;
    v124 = v656;
    goto LABEL_186;
  }

  v139 = CFPropertyListCreateWithData(alloc, v137, 0, 0, 0);
  v140 = v139;
  if (v139 && (v141 = CFGetTypeID(v139), v141 == CFDictionaryGetTypeID()))
  {
    v142 = AMSupportGetValueForKeyPathInDict();
    if (v142)
    {
      v150 = CFRetain(v142);
      if (v150)
      {
        v151 = v150;
        v152 = CFGetTypeID(v150);
        if (v152 == CFBooleanGetTypeID() && CFBooleanGetValue(v151) == 1)
        {
          T200UpdaterInfoLog("%s:%d Cell_iD is Skip \n", v153, v154, v155, v156, v157, v158, v159, "_extract_cell_ID_Supported", 1792);
          v160 = 68;
        }

        else
        {
          v160 = 0;
        }

        CFRelease(v137);
        CFRelease(v151);
        CFRelease(v134);
        v124 = v656;
        goto LABEL_58;
      }
    }

    T200UpdaterInfoLog("%s:%d Cell_iD is not skip: \n", v143, v144, v145, v146, v147, v148, v149, "_extract_cell_ID_Supported", 1787);
    v160 = 0;
  }

  else
  {
    _T200UpdaterExecCommand_cold_6();
    v160 = 31;
  }

  CFRelease(v137);
  CFRelease(v134);
  v124 = v656;
  if (v140)
  {
LABEL_58:
    CFRelease(v140);
  }

  a1 = v651;
  if (v160)
  {
LABEL_186:
    _T200UpdaterExecCommand_cold_17(v124);
    v208 = 68;
    v8 = v645;
    goto LABEL_74;
  }

  if (_extract_data_map(0, v116, v124, v125, (v651 + 40), (v651 + 8448), v161, v162))
  {
    _T200UpdaterExecCommand_cold_7();
    v208 = 31;
  }

  else if (_extract_data_map(1, v116, v124, v125, (v651 + 80), (v651 + 8456), v170, v171))
  {
    _T200UpdaterExecCommand_cold_8();
    v208 = 65;
  }

  else
  {
    if (!_extract_data_map(2, v116, v124, v125, (v651 + 72), (v651 + 8452), v172, v173))
    {
      goto LABEL_63;
    }

    _T200UpdaterExecCommand_cold_9();
    v208 = 64;
  }

  v8 = v645;
LABEL_178:
  T200UpdaterInfoLog("%s:%d End with error %d \n", v300, v301, v302, v303, v304, v305, v306, "_getFirmware", 2142, v208);
  CFRelease(v106);
  if (v116)
  {
    goto LABEL_75;
  }

LABEL_76:
  if (v208 == 68)
  {
    v216 = v652;
    *(v652 + 289) = 0;
    *(v652 + 291) = 0;
    T200UpdaterInfoLog("%s:%d Skip updating as this is not supported cell-id \n", v209, v210, v211, v212, v213, v214, v215, "_T200UpdaterExecCommand", 454);
    goto LABEL_82;
  }

  v216 = v652;
  if (v208)
  {
LABEL_176:
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "result == kT200Success", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 456, 0);
    *(a1 + 8492) = v208;
    v45 = 0;
    *v8 = createCFError("T200: Get Firmware Image(s) Failed", v208, "_getFirmware", v208);
    goto LABEL_19;
  }

  v224 = *(v652 + 316) == 0;
  if (_check_update_needed(a1, (a1 + 8481), 0, 0, v224, v213, v214, v215))
  {
    _T200UpdaterExecCommand_cold_19();
    goto LABEL_204;
  }

  if (_check_update_needed(a1, (a1 + 8483), 1, 0, v224, v225, v226, v227))
  {
    _T200UpdaterExecCommand_cold_20();
    goto LABEL_204;
  }

  if (_check_update_needed(a1, (a1 + 8482), 2, 0, v224, v228, v229, v230))
  {
    _T200UpdaterExecCommand_cold_21();
    goto LABEL_204;
  }

LABEL_82:
  T200UpdaterInfoLog("%s:%d Update status:dnvd:%d conf:%d firmware:%d \n", v217, v218, v219, v220, v221, v222, v223, "_T200UpdaterExecCommand", 468, *(v216 + 290), *(v216 + 291), *(v216 + 289));
  is_recovery = os_variant_is_recovery();
  if (*(v216 + 315) != 1)
  {
    if (!*(v216 + 313) || (*(v216 + 314) == 0) | is_recovery & 1)
    {
      goto LABEL_87;
    }

    if (*(v216 + 289) || *(v216 + 291))
    {
      if (v646)
      {
LABEL_98:
        T200UpdaterInfoLog("%s:%d Skipping Second stage in update \n", v232, v233, v234, v235, v236, v237, v238, "_T200UpdaterExecCommand", 514);
        goto LABEL_99;
      }
    }

    else if (v646 || !*(v216 + 290))
    {
      goto LABEL_98;
    }

    if (!_commitImageSMCIF(a1, v232, v233, v234, v235, v236, v237, v238))
    {
      goto LABEL_11;
    }

    _T200UpdaterExecCommand_cold_22();
LABEL_204:
    v45 = 0;
    goto LABEL_19;
  }

  if (!*(v216 + 313))
  {
    T200UpdaterInfoLog("%s:%d In BootedOS, performNextStage is Skipped if isTwoStageSupported is False \n", v232, v233, v234, v235, v236, v237, v238, "_T200UpdaterExecCommand", 474);
LABEL_99:
    v42 = 0;
LABEL_100:
    *(v216 + 308) = 1;
    goto LABEL_12;
  }

LABEL_87:
  if (v646)
  {
    v42 = 0;
    goto LABEL_232;
  }

  v666[0] = 0;
  v664 = 0;
  v239 = *(a1 + 16);
  if (!v239)
  {
    _T200UpdaterExecCommand_cold_34(buf);
LABEL_216:
    v283 = 0;
    v643 = 0;
    v644 = 0;
    goto LABEL_218;
  }

  v240 = CFDictionaryGetValue(v239, @"Options");
  if (!v240)
  {
    _T200UpdaterExecCommand_cold_33(buf);
    goto LABEL_216;
  }

  v241 = v240;
  if (CheckKeyTrue(v240, @"SkipFirmwareMapStore"))
  {
    _T200UpdaterExecCommand_cold_23();
    v42 = 0;
    v283 = 0;
    CFError = 0;
    LODWORD(v292) = 0;
    v643 = 0;
    v644 = 0;
    v293 = 0;
    goto LABEL_222;
  }

  if (!a3)
  {
    _T200UpdaterExecCommand_cold_32(buf);
    goto LABEL_216;
  }

  CFDictionaryGetValue(v241, @"RestoreSystemPartition");
  v242 = CFDictionaryGetValue(a3, @"FirmwareData");
  if (v242)
  {
    v243 = CFRetain(v242);
  }

  else
  {
    v243 = 0;
  }

  URLFromString = AMSupportCreateURLFromString();
  v644 = v243;
  if (!URLFromString)
  {
    _T200UpdaterExecCommand_cold_31(buf);
    v283 = 0;
    v643 = 0;
LABEL_218:
    v295 = 0;
    CFError = *buf;
    if (*buf)
    {
      goto LABEL_170;
    }

    goto LABEL_219;
  }

  v245 = URLFromString;
  AMSupportCopyURLWithAppendedComponent();
  v642 = v245;
  AMSupportCopyURLWithAppendedComponent();
  MEMORY[0x29C2B71B0](v666[0]);
  v246 = *(a1 + 32);
  if (!v246 || (v247 = CFRetain(v246)) == 0)
  {
    _T200UpdaterExecCommand_cold_30(buf);
    v283 = 0;
    v643 = 0;
    CFError = *buf;
    goto LABEL_169;
  }

  v643 = v247;
  v649 = CFDictionaryGetValue(v247, @"HWVersion");
  v248 = CFPropertyListCreateWithData(alloc, v243, 0, 0, 0);
  cf = v248;
  if (!v248 || (v249 = v248, v250 = CFGetTypeID(v248), v250 != CFDictionaryGetTypeID()))
  {
    _T200UpdaterExecCommand_cold_29();
    DictionaryRemovingKeyPath = 0;
    v640 = 0;
    v641 = 0;
    v282 = 0;
    v272 = 0;
    v273 = 0;
    v258 = 0;
    v283 = 0;
    goto LABEL_148;
  }

  v251 = CFStringCreateWithFormat(alloc, 0, @"%@.%@", @"hw_version", @"a0p2");
  if (!v251)
  {
    _T200UpdaterExecCommand_cold_28();
    v284 = v249;
    v283 = 0;
    v258 = 0;
    v273 = 0;
    v272 = 0;
    v282 = 0;
    v640 = 0;
    v641 = 0;
    DictionaryRemovingKeyPath = 0;
    goto LABEL_149;
  }

  v641 = v251;
  DictionaryRemovingKeyPath = T200CreateDictionaryRemovingKeyPath(alloc, v249, v251);
  if (!DictionaryRemovingKeyPath)
  {
    _T200UpdaterExecCommand_cold_27();
LABEL_480:
    v284 = v249;
    v283 = 0;
    v258 = 0;
    v273 = 0;
    v272 = 0;
    v282 = 0;
    v640 = 0;
    goto LABEL_149;
  }

  v253 = CFStringCreateWithFormat(alloc, 0, @"%@.%@.%@", @"hw_version", v649, @"chemistry");
  if (!v253)
  {
    _T200UpdaterExecCommand_cold_26();
    goto LABEL_480;
  }

  v254 = v253;
  v255 = AMSupportGetValueForKeyPathInDict();
  if (v255)
  {
    v256 = CFRetain(v255);
  }

  else
  {
    v256 = 0;
  }

  v640 = v254;
  Count = CFDictionaryGetCount(v256);
  v258 = malloc(8 * Count);
  v638 = v256;
  CFDictionaryGetKeysAndValues(v256, v258, 0);
  v648 = Count;
  if (Count >= 1)
  {
    v259 = 0;
    v260 = 1;
    v647 = v258;
    while (!DictionaryRemovingKeyPath)
    {
      _T200UpdaterExecCommand_cold_25();
      v270 = 0;
LABEL_134:
      v259 = v260;
      v271 = v648 > v260++;
      DictionaryRemovingKeyPath = v270;
      if (!v271)
      {
        goto LABEL_140;
      }
    }

    v261 = v258[v259];
    v653 = CFStringCreateWithFormat(alloc, 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", v649, @"chemistry", v261, @"configuration", @"Digest");
    v262 = CFStringCreateWithFormat(alloc, 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", v649, @"chemistry", v261, @"configuration", @"payload");
    v263 = CFStringCreateWithFormat(alloc, 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", v649, @"chemistry", v261, @"dnvd", @"Digest");
    v264 = CFStringCreateWithFormat(alloc, 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", v649, @"chemistry", v261, @"dnvd", @"payload");
    v265 = v264;
    if (v653 && v262 && v263 && v264)
    {
      v266 = T200CreateDictionaryRemovingKeyPath(alloc, DictionaryRemovingKeyPath, v653);
      v267 = T200CreateDictionaryRemovingKeyPath(alloc, v266, v262);
      v268 = T200CreateDictionaryRemovingKeyPath(alloc, v267, v263);
      v269 = T200CreateDictionaryRemovingKeyPath(alloc, v268, v265);
      if (v266)
      {
        CFRelease(v266);
      }

      if (v267)
      {
        CFRelease(v267);
      }

      if (v268)
      {
        CFRelease(v268);
      }
    }

    else
    {
      v269 = 0;
      v270 = 0;
      if (_T200UpdaterExecCommand_cold_24(v653 == 0))
      {
        goto LABEL_127;
      }
    }

    CFRelease(v653);
    v270 = v269;
LABEL_127:
    if (v262)
    {
      CFRelease(v262);
    }

    v216 = v652;
    if (v263)
    {
      CFRelease(v263);
    }

    a1 = v651;
    if (v265)
    {
      CFRelease(v265);
    }

    CFRelease(DictionaryRemovingKeyPath);
    v258 = v647;
    goto LABEL_134;
  }

  v270 = DictionaryRemovingKeyPath;
LABEL_140:
  v272 = CFStringCreateWithFormat(alloc, 0, @"%@.%@.%@.%@", @"hw_version", v649, @"firmware", @"Digest");
  v273 = CFStringCreateWithFormat(alloc, 0, @"%@.%@.%@.%@", @"hw_version", v649, @"firmware", @"payload");
  v274 = T200CreateDictionaryRemovingKeyPath(alloc, v270, v272);
  if (v270)
  {
    CFRelease(v270);
  }

  DictionaryRemovingKeyPath = T200CreateDictionaryRemovingKeyPath(alloc, v274, v273);
  if (v274)
  {
    CFRelease(v274);
  }

  v282 = v638;
  if (DictionaryRemovingKeyPath)
  {
    v283 = CFRetain(DictionaryRemovingKeyPath);
  }

  else
  {
    v283 = 0;
  }

  T200UpdaterInfoLog("%s:%d Successfully stripped firmware PLIST. \n", v275, v276, v277, v278, v279, v280, v281, "copyStrippedFirmwarePlist", 927);
LABEL_148:
  v284 = cf;
  if (cf)
  {
LABEL_149:
    CFRelease(v284);
  }

  if (v641)
  {
    CFRelease(v641);
  }

  if (DictionaryRemovingKeyPath)
  {
    CFRelease(DictionaryRemovingKeyPath);
  }

  if (v640)
  {
    CFRelease(v640);
  }

  v8 = v645;
  if (v282)
  {
    CFRelease(v282);
  }

  if (v258)
  {
    free(v258);
  }

  if (v272)
  {
    CFRelease(v272);
  }

  if (v273)
  {
    CFRelease(v273);
  }

  if (v283)
  {
    v292 = AMSupportWriteDictionarytoFileURL();
    if (!v292)
    {
      T200UpdaterInfoLog("%s:%d Successfully stored firmware PLIST. \n", v285, v286, v287, v288, v289, v290, v291, "storeFirmwarePlist", 718);
      v42 = 0;
      v293 = 0;
      CFError = 0;
      v295 = v642;
      goto LABEL_220;
    }
  }

  else
  {
    v296 = AMSupportWriteDataToFileURL();
    if (!v296)
    {
      fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "fwStrippedPlist", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 717, 0);
      CFError = createCFError("Error: Plist strip failed.", 0xCu, "storeFirmwarePlist", 717);
      v283 = 0;
      goto LABEL_169;
    }

    v292 = v296;
  }

  fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "amerror == kAMSupportErrorNone", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 716, 0);
  CFError = createCFError("Error: Write PLIST is failed.", 0xCu, "AMSupportWriteDictionarytoFileURL", v292);
  a1 = v651;
  v216 = v652;
  v8 = v645;
LABEL_169:
  v295 = v642;
  if (CFError)
  {
LABEL_170:
    v297 = v295;
    v42 = CFRetain(CFError);
    v298 = CFErrorCopyDescription(CFError);
    CStringPtr = CFStringGetCStringPtr(v298, 0x8000100u);
    if (CStringPtr)
    {
      T200UpdaterInfoLog("%s:%d %s \n", v232, v233, v234, v235, v236, v237, v238, "storeFirmwarePlist", 731, CStringPtr);
    }

    if (v298)
    {
      CFRelease(v298);
    }

    LODWORD(v292) = 12;
    v293 = 1;
    v295 = v297;
    goto LABEL_220;
  }

LABEL_219:
  v42 = 0;
  v293 = 0;
  LODWORD(v292) = 12;
LABEL_220:
  if (v295)
  {
    CFRelease(v295);
  }

LABEL_222:
  if (v644)
  {
    CFRelease(v644);
  }

  if (v283)
  {
    CFRelease(v283);
  }

  if (v293)
  {
    CFRelease(CFError);
  }

  if (v643)
  {
    CFRelease(v643);
  }

  if (v292 && *(v216 + 312))
  {
    _T200UpdaterExecCommand_cold_35(a1, v42, v8);
    goto LABEL_414;
  }

LABEL_232:
  if (!*(v216 + 289) && !*(v216 + 291) && !(*(v216 + 290) | v646))
  {
    T200UpdaterInfoLog("%s:%d Skipping update \n", v232, v233, v234, v235, v236, v237, v238, "_T200UpdaterExecCommand", 504);
    goto LABEL_100;
  }

  v697 = 0;
  v695 = 0u;
  v696 = 0u;
  v693 = 0u;
  v694 = 0u;
  v691 = 0u;
  v692 = 0u;
  v689 = 0u;
  v690 = 0u;
  v687 = 0u;
  v688 = 0u;
  v685 = 0u;
  __n = 0u;
  v683 = 0u;
  v684 = 0u;
  v681 = 0u;
  v682 = 0u;
  v679 = 0u;
  v680 = 0u;
  v677 = 0u;
  v678 = 0u;
  v675 = 0u;
  v676 = 0u;
  v673 = 0u;
  v674 = 0u;
  v671 = 0u;
  v672 = 0u;
  *buf = 0u;
  v670 = 0u;
  v663 = 0;
  v661 = 0;
  v662 = 0;
  v660 = 0;
  v659 = 0;
  T200UpdaterInfoLog("%s:%d Start \n", v232, v233, v234, v235, v236, v237, v238, "_parseTatsuResponse", 2171);
  if (!*(a1 + 24))
  {
    _T200UpdaterExecCommand_cold_89();
    v655 = 0;
    v657 = 0;
    v315 = 0;
    v402 = 0;
    v308 = 0;
    v392 = 83;
    goto LABEL_402;
  }

  MutableCopy = CFStringCreateMutableCopy(alloc, 0, @"BMU,Ticket");
  if (!MutableCopy)
  {
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "T200OptionTicketRef", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 2177, 0);
    goto LABEL_331;
  }

  v308 = MutableCopy;
  if (*(a1 + 8532) == 2)
  {
    v704.location = 0;
    v704.length = 4;
    CFStringFindAndReplace(MutableCopy, @"BMU,", @"BMU2,", v704, 0);
  }

  v309 = CFDictionaryGetValue(*(a1 + 24), v308);
  if (!v309 || (v310 = CFRetain(v309)) == 0)
  {
    _T200UpdaterExecCommand_cold_88();
    v655 = 0;
    v657 = 0;
    v315 = 0;
    v402 = 0;
    v392 = 29;
    goto LABEL_402;
  }

  v311 = v310;
  Length = CFDataGetLength(v310);
  v313 = malloc(Length);
  v655 = v313;
  v657 = v311;
  if (!Length || !v313)
  {
    _T200UpdaterExecCommand_cold_87();
    v315 = 0;
    v402 = 0;
    v392 = 8;
    goto LABEL_402;
  }

  v700.location = 0;
  v700.length = Length;
  CFDataGetBytes(v311, v700, v313);
  if (Img4DecodeInitManifest())
  {
    _T200UpdaterExecCommand_cold_36();
    v315 = 0;
    v402 = 0;
    v392 = 16;
    goto LABEL_402;
  }

  v314 = malloc(0x120uLL);
  v315 = v314;
  if (!v314)
  {
    _T200UpdaterExecCommand_cold_86();
    v402 = 0;
    v392 = 71;
    goto LABEL_402;
  }

  v316 = *(&v687 + 1);
  if (!*(&v687 + 1))
  {
    _T200UpdaterExecCommand_cold_85();
LABEL_441:
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "err == kAMSupportErrorNone", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 2202, 0);
    v402 = 0;
    v392 = 30;
    goto LABEL_402;
  }

  v317 = v688;
  if (!v688)
  {
    _T200UpdaterExecCommand_cold_84();
    goto LABEL_441;
  }

  *(v314 + 16) = 0u;
  *(v314 + 17) = 0u;
  *(v314 + 14) = 0u;
  *(v314 + 15) = 0u;
  *(v314 + 12) = 0u;
  *(v314 + 13) = 0u;
  *(v314 + 10) = 0u;
  *(v314 + 11) = 0u;
  *(v314 + 8) = 0u;
  *(v314 + 9) = 0u;
  *(v314 + 6) = 0u;
  *(v314 + 7) = 0u;
  *(v314 + 4) = 0u;
  *(v314 + 5) = 0u;
  *(v314 + 2) = 0u;
  *(v314 + 3) = 0u;
  *v314 = 0u;
  *(v314 + 1) = 0u;
  *(v314 + 32) = v316;
  *(v314 + 33) = v317;
  v318 = DERParseSequence((v314 + 64), DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v314, 0x30uLL);
  if (v318)
  {
    _T200UpdaterExecCommand_cold_37(v318);
    goto LABEL_441;
  }

  v319 = DERParseSequence(v315, 0xAu, &T200X509DERTBSCertItemSpecs, (v315 + 12), 0xA0uLL);
  if (v319)
  {
    _T200UpdaterExecCommand_cold_38(v319);
    goto LABEL_441;
  }

  *v666 = 0u;
  v667 = 0u;
  LOBYTE(error) = 0;
  v664 = 0;
  v665[0] = 0;
  v665[1] = 0;
  v320 = DERParseSequence((v315 + 36), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, v666, 0x20uLL);
  if (v320)
  {
    v630 = v320;
    _T200UpdaterExecCommand_cold_39(v320);
    goto LABEL_440;
  }

  v321 = DERParseSequenceContent(v666, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, (v315 + 56), 0x20uLL);
  if (v321)
  {
    v630 = v321;
    _T200UpdaterExecCommand_cold_40(v321);
    goto LABEL_440;
  }

  if (!DEROidCompare((v315 + 56), &oidEcPubKey))
  {
    _T200UpdaterExecCommand_cold_41();
LABEL_439:
    v630 = 2;
    goto LABEL_440;
  }

  v322 = DERParseBitString(&v667, v315 + 26, &error);
  if (v322)
  {
    v630 = v322;
    _T200UpdaterExecCommand_cold_42(v322);
    goto LABEL_440;
  }

  v323 = *(v315 + 26);
  if (*v323 == 4)
  {
    v324 = *(v315 + 27) - 1;
    *(v315 + 26) = v323 + 1;
    *(v315 + 27) = v324;
    if (error)
    {
      _T200UpdaterExecCommand_cold_44();
      v630 = 3;
    }

    else
    {
      v325 = DERDecodeItemPartialBufferGetLength((v315 + 60), &v664, 0);
      if (!v325)
      {
        if (DEROidCompare(v665, &oidEcPrime256v1))
        {
          goto LABEL_257;
        }

        _T200UpdaterExecCommand_cold_46();
        goto LABEL_439;
      }

      v630 = v325;
      _T200UpdaterExecCommand_cold_45();
    }

LABEL_440:
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "derstat == 0 ", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 2629, v630);
    goto LABEL_441;
  }

  _T200UpdaterExecCommand_cold_43();
LABEL_257:
  v326 = *v315;
  v327 = *(v315 + 1);
  *(v216 + 292) = v327;
  memcpy((a1 + 88), v326, v327);
  if (_retrieveSignature(*(v315 + 4), v315[10], (a1 + 8280), v328, v329, v330, v331, v332))
  {
    _T200UpdaterExecCommand_cold_47();
    v402 = 0;
    v392 = 58;
    goto LABEL_402;
  }

  v333 = __n;
  v334 = *(&v685 + 1);
  *(v216 + 294) = __n;
  memcpy((a1 + 4184), v334, v333);
  if (_retrieveSignature(*(&__n + 1), v687, (a1 + 8344), v335, v336, v337, v338, v339))
  {
    _T200UpdaterExecCommand_cold_48();
    v402 = 0;
    v392 = 59;
    goto LABEL_402;
  }

  if (_T200VerifySignature(&raw_root_public_ec_p256_key, a1 + 88, *(v216 + 292), a1 + 8280))
  {
    _T200UpdaterExecCommand_cold_49();
    v402 = 0;
    v392 = 94;
    goto LABEL_402;
  }

  if (_T200VerifySignature(*(v315 + 26), a1 + 4184, *(v216 + 294), a1 + 8344))
  {
    _T200UpdaterExecCommand_cold_50();
    v402 = 0;
    v392 = 95;
    goto LABEL_402;
  }

  if (Img4DecodeGetIntegerFromSection())
  {
    _T200UpdaterExecCommand_cold_51();
    v402 = 0;
    v392 = 108;
    goto LABEL_402;
  }

  if (*(a1 + 8472) != v663)
  {
    _T200UpdaterExecCommand_cold_52();
    v402 = 0;
    v392 = 97;
    goto LABEL_402;
  }

  if (Img4DecodeGetIntegerFromSection())
  {
    _T200UpdaterExecCommand_cold_53();
    v402 = 0;
    v392 = 109;
    goto LABEL_402;
  }

  if (*(a1 + 8464) != v663)
  {
    _T200UpdaterExecCommand_cold_54();
    v402 = 0;
    v392 = 98;
    goto LABEL_402;
  }

  if (Img4DecodeGetObjectPropertyData())
  {
    _T200UpdaterExecCommand_cold_55();
LABEL_451:
    v402 = 0;
    v392 = 110;
    goto LABEL_402;
  }

  if (v661 != 32)
  {
    _T200UpdaterExecCommand_cold_56();
    goto LABEL_451;
  }

  if (_T200VerifyDigest(*(a1 + 64), *(a1 + 8460), v662))
  {
    _T200UpdaterExecCommand_cold_57();
    v402 = 0;
    v392 = 103;
    goto LABEL_402;
  }

  if (Img4DecodeGetIntegerFromSection())
  {
    _T200UpdaterExecCommand_cold_58();
    v402 = 0;
    v392 = 120;
    goto LABEL_402;
  }

  BoardIdFromDT = T200GetBoardIdFromDT(&v659);
  if (BoardIdFromDT)
  {
    v392 = BoardIdFromDT;
    _T200UpdaterExecCommand_cold_59();
    v402 = 0;
    goto LABEL_402;
  }

  if (v659 != v663)
  {
    _T200UpdaterExecCommand_cold_60();
    v402 = 0;
    v392 = 119;
    goto LABEL_402;
  }

  if (Img4DecodeGetBooleanFromSection())
  {
    _T200UpdaterExecCommand_cold_61();
    v402 = 0;
    v392 = 123;
    goto LABEL_402;
  }

  if (*(v216 + 310) != v660)
  {
    _T200UpdaterExecCommand_cold_62();
    v402 = 0;
    v392 = 124;
    goto LABEL_402;
  }

  v654 = v308;
  v666[0] = 0;
  v664 = 0;
  error = 0;
  T200UpdaterInfoLog("%s:%d Start \n", v341, v342, v343, v344, v345, v346, v347, "_parseFWMapDigest", 2754);
  if (!*(a1 + 24))
  {
    _T200UpdaterExecCommand_cold_73();
    v354 = 0;
    v381 = 0;
    v358 = 0;
LABEL_467:
    v392 = 107;
    goto LABEL_399;
  }

  if (Img4DecodeGetObjectPropertyData())
  {
    _T200UpdaterExecCommand_cold_63();
LABEL_462:
    v354 = 0;
    v381 = 0;
    v358 = 0;
    v392 = 111;
    goto LABEL_399;
  }

  if (v664 != 32)
  {
    _T200UpdaterExecCommand_cold_64();
    goto LABEL_462;
  }

  v348 = CFDictionaryGetValue(*(a1 + 24), @"FirmwareData");
  if (!v348 || (v349 = CFRetain(v348)) == 0)
  {
    _T200UpdaterExecCommand_cold_72();
    v354 = 0;
    v381 = 0;
    v358 = 0;
    v392 = 106;
    goto LABEL_399;
  }

  v350 = v349;
  v351 = CFDataGetLength(v349);
  v352 = malloc(v351);
  v353 = v352;
  v354 = 0;
  v355 = 107;
  v356 = 2769;
  if (!v351 || !v352)
  {
    v381 = 0;
    v358 = 0;
    goto LABEL_469;
  }

  v701.location = 0;
  v701.length = v351;
  CFDataGetBytes(v350, v701, v352);
  if (!_T200VerifyDigest(v353, v351, v666[0]))
  {
    v354 = 0;
    v381 = 0;
    v358 = 0;
    goto LABEL_294;
  }

  v357 = CFPropertyListCreateWithData(alloc, v350, 2uLL, 0, &error);
  v358 = v357;
  if (!v357)
  {
    _T200UpdaterExecCommand_cold_70();
    v354 = 0;
    v381 = 0;
    v355 = 106;
    goto LABEL_406;
  }

  if (CFDictionaryContainsKey(v357, @"fw_map_digest") != 1 && CFDictionaryContainsKey(v358, @"restore_options") != 1)
  {
    _T200UpdaterExecCommand_cold_71();
    v354 = 0;
    v381 = 0;
LABEL_405:
    v355 = 105;
LABEL_406:
    T200UpdaterInfoLog("%s:%d Failed %d \n", v607, v608, v609, v610, v611, v612, v613, "_parseFWMapDigest", 2829, v355);
    goto LABEL_295;
  }

  v359 = CFStringGetCStringPtr(@"fw_map_digest", 0x8000100u);
  v360 = CFStringGetCStringPtr(@"restore_options", 0x8000100u);
  T200UpdaterInfoLog("%s:%d Removing %s and %s key-value pairs before digest computation \n", v361, v362, v363, v364, v365, v366, v367, "_parseFWMapDigest", 2781, v359, v360);
  CFDictionaryRemoveValue(v358, @"fw_map_digest");
  CFDictionaryRemoveValue(v358, @"restore_options");
  CFRelease(v350);
  free(v353);
  Data = CFPropertyListCreateData(alloc, v358, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    _T200UpdaterExecCommand_cold_69();
    v354 = 0;
    v381 = 0;
    goto LABEL_467;
  }

  v350 = Data;
  v369 = CFDataGetLength(Data);
  v370 = malloc(v369);
  v353 = v370;
  v354 = 0;
  v355 = 107;
  v356 = 2793;
  if (!v369 || !v370)
  {
    v381 = 0;
    goto LABEL_469;
  }

  v702.location = 0;
  v702.length = v369;
  CFDataGetBytes(v350, v702, v370);
  if (!_T200VerifyDigest(v353, v369, v666[0]))
  {
    v354 = 0;
    v381 = 0;
    goto LABEL_294;
  }

  T200UpdaterInfoLog("%s:%d Replacing LF with CRLF before digest computation \n", v371, v372, v373, v374, v375, v376, v377, "_parseFWMapDigest", 2799);
  v378 = CFStringCreateFromExternalRepresentation(alloc, v350, 0x8000100u);
  v354 = v378;
  if (!v378)
  {
    _T200UpdaterExecCommand_cold_68();
    v381 = 0;
LABEL_474:
    v355 = 121;
    goto LABEL_406;
  }

  v379 = CFStringGetLength(v378);
  v380 = CFStringCreateMutableCopy(alloc, v379, v354);
  v381 = v380;
  if (!v380)
  {
    _T200UpdaterExecCommand_cold_67();
    goto LABEL_474;
  }

  v705.length = CFStringGetLength(v380);
  v705.location = 0;
  CFStringFindAndReplace(v381, @"\n", @"\r\n", v705, 0);
  CFRelease(v350);
  free(v353);
  ExternalRepresentation = CFStringCreateExternalRepresentation(alloc, v381, 0x8000100u, 0);
  if (!ExternalRepresentation)
  {
    _T200UpdaterExecCommand_cold_66();
    v392 = 121;
LABEL_399:
    T200UpdaterInfoLog("%s:%d Failed %d \n", v600, v601, v602, v603, v604, v605, v606, "_parseFWMapDigest", 2829, v392);
    if (!v358)
    {
      goto LABEL_298;
    }

    goto LABEL_297;
  }

  v350 = ExternalRepresentation;
  v383 = CFDataGetLength(ExternalRepresentation);
  v384 = malloc(v383);
  v353 = v384;
  v355 = 121;
  v356 = 2816;
  if (v383 && v384)
  {
    v703.location = 0;
    v703.length = v383;
    CFDataGetBytes(v350, v703, v384);
    if (!_T200VerifyDigest(v353, v383, v666[0]))
    {
LABEL_294:
      v355 = 0;
LABEL_295:
      free(v353);
      goto LABEL_296;
    }

    _T200UpdaterExecCommand_cold_65();
    goto LABEL_405;
  }

LABEL_469:
  fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "firmwareMapLen && firmwareMapBuffer", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", v356, 0);
  T200UpdaterInfoLog("%s:%d Failed %d \n", v631, v632, v633, v634, v635, v636, v637, "_parseFWMapDigest", 2829, v355);
  if (v353)
  {
    goto LABEL_295;
  }

LABEL_296:
  CFRelease(v350);
  v392 = v355;
  if (v358)
  {
LABEL_297:
    CFRelease(v358);
  }

LABEL_298:
  if (v354)
  {
    CFRelease(v354);
  }

  v308 = v654;
  if (v381)
  {
    CFRelease(v381);
  }

  T200UpdaterInfoLog("%s:%d End \n", v385, v386, v387, v388, v389, v390, v391, "_parseFWMapDigest", 2836);
  a1 = v651;
  if (v392)
  {
    _T200UpdaterExecCommand_cold_74();
    v402 = 0;
    v216 = v652;
    goto LABEL_402;
  }

  v216 = v652;
  if (!CFDictionaryContainsKey(*(v651 + 16), @"Options"))
  {
    v402 = 0;
    goto LABEL_320;
  }

  v400 = CFDictionaryGetValue(*(v651 + 16), @"Options");
  if (!v400 || (v401 = CFRetain(v400)) == 0)
  {
    _T200UpdaterExecCommand_cold_83();
    v402 = 0;
    v392 = 104;
    goto LABEL_402;
  }

  v402 = v401;
  if (CheckKeyTrue(v401, @"EnableDeveloperCommands"))
  {
    if (Img4DecodeGetBooleanFromSection())
    {
      _T200UpdaterExecCommand_cold_75();
      v392 = 112;
      goto LABEL_402;
    }

    if ((v660 & 1) == 0)
    {
      _T200UpdaterExecCommand_cold_76();
      v392 = 100;
      goto LABEL_402;
    }
  }

  if (CheckKeyTrue(v402, @"EnableValidationCommands"))
  {
    if (Img4DecodeGetBooleanFromSection())
    {
      _T200UpdaterExecCommand_cold_77();
      v392 = 113;
      goto LABEL_402;
    }

    if ((v660 & 1) == 0)
    {
      _T200UpdaterExecCommand_cold_78();
      v392 = 101;
      goto LABEL_402;
    }
  }

  if (*(v652 + 311) != 1)
  {
    goto LABEL_315;
  }

  if (Img4DecodeGetBooleanFromSection())
  {
    _T200UpdaterExecCommand_cold_79();
    v392 = 125;
    goto LABEL_402;
  }

  if ((v660 & 1) == 0)
  {
    _T200UpdaterExecCommand_cold_80();
    v392 = 126;
  }

  else
  {
LABEL_315:
    if (*(v652 + 316) != 1)
    {
      goto LABEL_320;
    }

    if (!Img4DecodeGetBooleanFromSection())
    {
      if ((v660 & 1) == 0)
      {
        _T200UpdaterExecCommand_cold_82();
        v392 = 102;
        goto LABEL_402;
      }

LABEL_320:
      T200UpdaterInfoLog("%s:%d End \n", v393, v394, v395, v396, v397, v398, v399, "_parseTatsuResponse", 2291);
      LODWORD(v392) = 0;
      if (!v402)
      {
        goto LABEL_322;
      }

      goto LABEL_321;
    }

    _T200UpdaterExecCommand_cold_81();
    v392 = 114;
  }

LABEL_402:
  T200UpdaterInfoLog("%s:%d End Failed with %d  \n", v403, v404, v405, v406, v407, v408, v409, "_parseTatsuResponse", 2295, v392);
  if (v402)
  {
LABEL_321:
    CFRelease(v402);
  }

LABEL_322:
  if (v315)
  {
    free(v315);
  }

  if (v655)
  {
    free(v655);
  }

  if (v657)
  {
    CFRelease(v657);
  }

  if (v308)
  {
    CFRelease(v308);
  }

  if (v392)
  {
    _T200UpdaterExecCommand_cold_90();
    goto LABEL_414;
  }

LABEL_331:
  v671 = 0u;
  v672 = 0u;
  *buf = 0u;
  v670 = 0u;
  T200UpdaterInfoLog("%s:%d Start \n", v410, v411, v412, v413, v414, v415, v416, "_programImageSMCIF", 1544);
  T200UpdaterInfoLog("%s:%d start Send Certificate smc API  \n", v417, v418, v419, v420, v421, v422, v423, "_send_certificate", 1345);
  v424 = calloc(1uLL, *(v216 + 292) + 80);
  if (v424)
  {
    v425 = v424;
    v426 = *(v216 + 292);
    v424[8] = v426;
    v427 = *(a1 + 8280);
    v428 = *(a1 + 8296);
    v429 = *(a1 + 8328);
    *(v424 + 2) = *(a1 + 8312);
    *(v424 + 3) = v429;
    *v424 = v427;
    *(v424 + 1) = v428;
    memcpy(v424 + 10, (a1 + 88), v426);
    v425[9] = 0;
    T200UpdaterInfoLog("%s:%d cert len:%u \n", v430, v431, v432, v433, v434, v435, v436, "_send_certificate", 1353, v426);
    v437 = BC__sendImage(v425);
    if (v437)
    {
      v445 = v437;
      T200UpdaterInfoLog("%s:%d Certificate BC__sendImage failed commStatus=0x%X \n", v438, v439, v440, v441, v442, v443, v444, "_send_certificate", 1357, v437);
      free(v425);
      T200UpdaterInfoLog("%s:%d End Send Certificate smc API \n", v446, v447, v448, v449, v450, v451, v452, "_send_certificate", 1360);
      fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "commStatus == 0", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1361, 0);
      *(a1 + 8492) = (v445 << 8) | 0x32;
      v453 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
      if (v453)
      {
        _T200UpdaterExecCommand_cold_91(v453, v454, v455, v456, v457, v458, v459, v460);
      }
    }

    else
    {
      free(v425);
      T200UpdaterInfoLog("%s:%d End Send Certificate smc API \n", v461, v462, v463, v464, v465, v466, v467, "_send_certificate", 1360);
    }
  }

  else
  {
    _T200UpdaterExecCommand_cold_92(a1);
  }

  if (*(a1 + 8492))
  {
    _T200UpdaterExecCommand_cold_93();
LABEL_496:
    v574 = v666[0];
    goto LABEL_382;
  }

  T200UpdaterInfoLog("%s:%d Start Send Manifest smc API \n", v454, v455, v456, v457, v458, v459, v460, "_send_manifest", 1243);
  v468 = calloc(1uLL, *(v216 + 294) + 80);
  if (v468)
  {
    v469 = v468;
    v470 = *(v216 + 294);
    v468[8] = v470;
    v471 = *(a1 + 8344);
    v472 = *(a1 + 8360);
    v473 = *(a1 + 8392);
    *(v468 + 2) = *(a1 + 8376);
    *(v468 + 3) = v473;
    *v468 = v471;
    *(v468 + 1) = v472;
    memcpy(v468 + 10, (a1 + 4184), v470);
    v469[9] = 1;
    T200UpdaterInfoLog("%s:%d manifest len:%u \n", v474, v475, v476, v477, v478, v479, v480, "_send_manifest", 1251, v470);
    v481 = BC__sendImage(v469);
    if (v481)
    {
      v584 = v481;
      T200UpdaterInfoLog("%s:%d Manifest BC__sendImage failed commStatus=0x%X \n", v482, v483, v484, v485, v486, v487, v488, "_send_manifest", 1255, v481);
      free(v469);
      T200UpdaterInfoLog("%s:%d End Send Manifest smc API \n", v585, v586, v587, v588, v589, v590, v591, "_send_manifest", 1258);
      fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "commStatus == 0", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1259, 0);
      *(a1 + 8492) = (v584 << 8) | 0x34;
      v592 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
      if (!v592)
      {
        goto LABEL_418;
      }

      _T200UpdaterExecCommand_cold_94(v592, v593, v594, v595, v596, v597, v598, v599);
    }

    else
    {
      free(v469);
      T200UpdaterInfoLog("%s:%d End Send Manifest smc API \n", v489, v490, v491, v492, v493, v494, v495, "_send_manifest", 1258);
    }
  }

  else if (_T200UpdaterExecCommand_cold_95((a1 + 8492)))
  {
    goto LABEL_418;
  }

  if (*(a1 + 8492))
  {
LABEL_418:
    _T200UpdaterExecCommand_cold_96();
    goto LABEL_496;
  }

  if (v646)
  {
    if (*(v216 + 312) == 1)
    {
      T200UpdaterInfoLog("%s:%d Send dummy Digest Dictionary for Access Mode Enable \n", v496, v497, v498, v499, v500, v501, v502, "_send_diget_map", 1306);
      v503 = calloc(1uLL, 0x54uLL);
      if (v503)
      {
        v504 = v503;
        *(v503 + 4) = xmmword_299F89DE0;
        *v503 = 4;
        BC__sendImage(v503);
        free(v504);
        v505 = 0;
        LOWORD(v666[0]) = 0;
        do
        {
          sleep(1u);
          LOWORD(v666[0]) = 255;
          v512 = BC__receive(80, 2u, v666);
          v513 = LOWORD(v666[0]);
          if (v505 > 0x95)
          {
            break;
          }

          ++v505;
        }

        while (LOWORD(v666[0]) == 2);
        if ((v666[0] & 0xFFEF) != 1)
        {
          T200UpdaterInfoLog("%s:%d Failed to wait return status = %d \n", LOWORD(v666[0]), v506, v507, v508, v509, v510, v511, "_waitTillTargetUpdaterReady", 1057, LOWORD(v666[0]));
          v513 = LOWORD(v666[0]);
        }

        v216 = v652;
        if (v512)
        {
          if (_T200UpdaterExecCommand_cold_97((a1 + 8492)))
          {
            goto LABEL_495;
          }
        }

        else if (v513 == 17)
        {
          T200UpdaterInfoLog("%s:%d End Crypto \n", v513, v506, v507, v508, v509, v510, v511, "_send_diget_map", 1333);
          T200UpdaterInfoLog("%s:%d Entitlment update successful  \n", v514, v515, v516, v517, v518, v519, v520, "_send_diget_map", 1334);
        }

        else if (_T200UpdaterExecCommand_cold_98((a1 + 8492)))
        {
          goto LABEL_495;
        }
      }

      else
      {
        v216 = v652;
        if (_T200UpdaterExecCommand_cold_99((a1 + 8492)))
        {
          goto LABEL_495;
        }
      }
    }
  }

  else
  {
    T200UpdaterInfoLog("%s:%d Start Send DigestMap+Crypto smc API \n", v496, v497, v498, v499, v500, v501, v502, "_send_diget_map", 1273);
    v521 = *(a1 + 8460);
    v522 = calloc(1uLL, v521 + 80);
    if (v522)
    {
      v523 = v522;
      v522[8] = v521;
      memcpy(v522 + 10, *(a1 + 64), v521);
      v523[9] = 2;
      *v523 = 0;
      v531 = *(v216 + 289) == 1;
      *v523 = v531;
      if (*(v216 + 291) == 1)
      {
        v531 |= 2u;
        *v523 = v531;
      }

      if (*(v216 + 290) == 1)
      {
        *v523 = v531 | 4;
      }

      T200UpdaterInfoLog("%s:%d digestmap len:%u \n", v524, v525, v526, v527, v528, v529, v530, "_send_diget_map", 1295, v521);
      v532 = BC__sendImage(v523);
      if (v532)
      {
        v614 = v532;
        T200UpdaterInfoLog("%s:%d DigestMap BC__sendImage failed commStatus=0x%X \n", v533, v534, v535, v536, v537, v538, v539, "_send_diget_map", 1299, v532);
        free(v523);
        T200UpdaterInfoLog("%s:%d End Send DigestMap+Crypto smc API \n", v615, v616, v617, v618, v619, v620, v621, "_send_diget_map", 1302);
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "commStatus == 0", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1303, 0);
        *(a1 + 8492) = (v614 << 8) | 0x20;
        v622 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
        if (!v622)
        {
          goto LABEL_495;
        }

        _T200UpdaterExecCommand_cold_100(v622, v623, v624, v625, v626, v627, v628, v629);
      }

      else
      {
        free(v523);
        T200UpdaterInfoLog("%s:%d End Send DigestMap+Crypto smc API \n", v540, v541, v542, v543, v544, v545, v546, "_send_diget_map", 1302);
      }
    }

    else if (_T200UpdaterExecCommand_cold_101((a1 + 8492)))
    {
      goto LABEL_495;
    }
  }

  if (*(a1 + 8492))
  {
LABEL_495:
    _T200UpdaterExecCommand_cold_102();
    goto LABEL_496;
  }

  if (v646)
  {
    v574 = 0;
    *(a1 + 8492) = 0;
    goto LABEL_382;
  }

  if (*(v216 + 313))
  {
    v547 = 0;
  }

  else
  {
    v547 = 3;
  }

  if (_send_bin_retry(a1, 2, v547, v498, v499, v500, v501, v502))
  {
    _T200UpdaterExecCommand_cold_103();
    goto LABEL_496;
  }

  if (_send_bin_retry(a1, 1, v547, v548, v549, v550, v551, v552))
  {
    _T200UpdaterExecCommand_cold_104();
    goto LABEL_496;
  }

  if (_send_bin_retry(a1, 0, v547, v553, v554, v555, v556, v557))
  {
    _T200UpdaterExecCommand_cold_105();
    goto LABEL_496;
  }

  if (*(v216 + 313))
  {
LABEL_381:
    v574 = 0;
    goto LABEL_382;
  }

  LOBYTE(v666[0]) = 0;
  LOBYTE(v664) = 0;
  LOBYTE(error) = 0;
  v558 = _check_update_needed(a1, v666, 0, 1, 0, v500, v501, v502);
  if (v558)
  {
    v574 = v558;
    _T200UpdaterExecCommand_cold_106(v558, (a1 + 8492));
  }

  else
  {
    v562 = _check_update_needed(a1, &v664, 1, 1, 0, v559, v560, v561);
    if (v562)
    {
      v574 = v562;
      _T200UpdaterExecCommand_cold_107(v562, (a1 + 8492));
    }

    else
    {
      v566 = _check_update_needed(a1, &error, 2, 1, 0, v563, v564, v565);
      if (!v566)
      {
        if (*(v216 + 289) == 1 && LOBYTE(v666[0]) == 1)
        {
          T200UpdaterInfoLog("%s:%d ERROR:Failed Updating the Firmware \n", v567, v568, v569, v570, v571, v572, v573, "_programImageSMCIF", 1595);
          *(a1 + 8492) = 89;
        }

        if (*(v216 + 291) == 1 && v664 == 1)
        {
          T200UpdaterInfoLog("%s:%d ERROR:Failed Updating the Configuration \n", v567, v568, v569, v570, v571, v572, v573, "_programImageSMCIF", 1599);
          *(a1 + 8492) = 88;
        }

        if (*(v216 + 290) == 1 && error == 1)
        {
          T200UpdaterInfoLog("%s:%d ERROR:Failed Updating the DNVD \n", v567, v568, v569, v570, v571, v572, v573, "_programImageSMCIF", 1603);
          *(a1 + 8492) = 87;
        }

        READ_DATA__getVersionInformation(0);
        goto LABEL_381;
      }

      v574 = v566;
      _T200UpdaterExecCommand_cold_108(v566, (a1 + 8492));
    }
  }

LABEL_382:
  *(v216 + 308) = 1;
  v575 = *(a1 + 40);
  if (v575)
  {
    free(v575);
    *(a1 + 40) = 0;
  }

  T200UpdaterInfoLog("%s:%d End \n", v496, v497, v498, v499, v500, v501, v502, "_programImageSMCIF", 1616);
  if (*(a1 + 8492))
  {
    WORD2(v671) = 24;
    BC__getInfo(buf, 0x40uLL);
    v576 = *(a1 + 8492) & 0xFFFFFF | (BYTE4(v671) << 24);
    *(a1 + 8492) = v576;
    T200UpdaterInfoLog("%s:%d End  Failed  Error:%d  \n", v577, v578, v579, v580, v581, v582, v583, "_programImageSMCIF", 1622, v576);
    if (*(v216 + 312) == 1)
    {
      displayVeridianInfoOnFailure();
    }

    v574 = *(a1 + 8492);
  }

  if (v574)
  {
    _T200UpdaterExecCommand_cold_109();
  }

  else
  {
    v43 = a4;
    if (*(v216 + 313) != 1 || *(v216 + 314) || *(v216 + 315))
    {
LABEL_13:
      *(a1 + 8492) = 0;
      if (v43)
      {
        v44 = *(a1 + 32);
        if (v44)
        {
          *v43 = v44;
          T200CFShow_0(*(a1 + 32));
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_299F71000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Send out the results in fOutput of the commad processed\n", buf, 2u);
          }
        }
      }

      T200UpdaterInfoLog("%s:%d End \n", v35, v36, v37, v38, v39, v40, v41, "_T200UpdaterExecCommand", 531);
      v45 = 1;
      if (v42)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (!_commitImageSMCIF(a1, v35, v36, v37, v38, v39, v40, v41))
    {
LABEL_12:
      v43 = a4;
      goto LABEL_13;
    }

    _T200UpdaterExecCommand_cold_110();
  }

LABEL_414:
  v45 = 0;
  if (v42)
  {
LABEL_18:
    CFRelease(v42);
  }

LABEL_19:
  v46 = *(a1 + 40);
  if (v46)
  {
    free(v46);
    *(a1 + 40) = 0;
  }

  *(a1 + 32) = 0;
  return v45;
}

uint64_t T200UpdaterIsDone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  T200UpdaterInfoLog("%s:%d Start \n", a2, a3, a4, a5, a6, a7, a8, "T200UpdaterIsDone", 562);
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 8500))
  {
    v21 = *(a1 + 16);
    if (v21)
    {
      if (CFDictionaryContainsKey(v21, @"Options"))
      {
        Value = CFDictionaryGetValue(*(a1 + 16), @"Options");
        if (Value)
        {
          v23 = CFRetain(Value);
          if (v23)
          {
            v24 = v23;
            v20 = 0;
            os_parse_boot_arg_int();
            CFRelease(v24);
            return v20;
          }
        }
      }

      T200UpdaterIsDone_cold_1();
    }

    else
    {
      T200UpdaterIsDone_cold_2();
    }

    return 0;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    CFDictionaryRemoveAllValues(v16);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    free(v17);
    *(a1 + 48) = 0;
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    free(v18);
    *(a1 + 40) = 0;
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    free(v19);
    *(a1 + 56) = 0;
  }

  T200UpdaterInfoLog("%s:%d This is Tatsu signing ,we are done  \n", v9, v10, v11, v12, v13, v14, v15, "T200UpdaterIsDone", 576);
  return 1;
}

uint64_t isVeridianUpdateRequired(uint64_t a1, CFErrorRef *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    isVeridianUpdateRequired_cold_10();
    return 1;
  }

  *a2 = 0;
  if (!a1)
  {
    isVeridianUpdateRequired_cold_9(a2);
    return 1;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = 0;
  cf[0] = 0;
  URLFromString = AMSupportCreateURLFromString();
  if (URLFromString)
  {
    v4 = URLFromString;
    AMSupportCopyURLWithAppendedComponent();
    AMSupportPlatformFileURLExists();
    isVeridianUpdateRequired_cold_2(a2);
    CFRelease(v4);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    isVeridianUpdateRequired_cold_3(a2);
  }

  v5 = v29;
  if (!v29)
  {
    isVeridianUpdateRequired_cold_8();
    return 1;
  }

  Info = BC__getInfo(&v34, 0x40uLL);
  if (Info)
  {
    isVeridianUpdateRequired_cold_4();
  }

  else
  {
    *cf = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v7 = performVersionCheck(Info, cf, v5, a2);
    if (*a2)
    {
      isVeridianUpdateRequired_cold_5();
    }

    else
    {
      v8 = v7;
      *cf = v34;
      v31 = v35;
      v32 = v36;
      v33 = v37;
      v9 = performVersionCheck(1, cf, v5, a2);
      if (*a2)
      {
        isVeridianUpdateRequired_cold_6();
      }

      else
      {
        v10 = v9;
        *cf = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v11 = performVersionCheck(2, cf, v5, a2);
        if (!*a2)
        {
          v19 = v11;
          T200UpdaterInfoLog("%s:%d update required? DNVD: %d, Config: %d, Firmware: %d. \n", v12, v13, v14, v15, v16, v17, v18, "isVeridianUpdateRequired", 631, v11, v10, v8);
          v27 = 1;
          if (!v19 && !v10 && !v8)
          {
            T200UpdaterInfoLog("%s:%d Update NOT required. \n", v20, v21, v22, v23, v24, v25, v26, "isVeridianUpdateRequired", 635);
            v27 = 0;
          }

          goto LABEL_15;
        }

        isVeridianUpdateRequired_cold_7();
      }
    }
  }

  v27 = 1;
LABEL_15:
  CFRelease(v5);
  return v27;
}

uint64_t performVersionCheck(uint64_t a1, unsigned int *a2, uint64_t a3, CFErrorRef *a4)
{
  cf = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  valuePtr = a2[7];
  v7 = *MEMORY[0x29EDB8ED8];
  v8 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  if (!v8)
  {
    performVersionCheck_cold_2(a4);
LABEL_43:
    v19 = 1;
    goto LABEL_34;
  }

  v9 = v8;
  v10 = CFStringCreateWithFormat(v7, 0, @"%u", (*a2 / 0x2710 - 100 * ((42949673 * (*a2 / 0x2710)) >> 32)));
  if (!v10)
  {
    performVersionCheck_cold_1();
    goto LABEL_43;
  }

  v11 = v10;
  _create_key_payload_Verison(a1, &cf, &v48, &v47, v9, v10);
  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (ValueForKeyPathInDict)
  {
    v13 = CFRetain(ValueForKeyPathInDict);
    v14 = v13;
    if (v13)
    {
      v15 = CFGetTypeID(v13);
      if (v15 == CFNumberGetTypeID() || (v16 = CFGetTypeID(v14), v16 == CFStringGetTypeID()))
      {
        v17 = CFGetTypeID(v14);
        if (v17 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v14, kCFNumberSInt32Type, &v50 + 4);
        }

        else
        {
          v20 = CFGetTypeID(v14);
          if (v20 == CFStringGetTypeID())
          {
            _AMSupportCFStringToUInt32(v14, &v50 + 1);
          }
        }

        v21 = AMSupportGetValueForKeyPathInDict();
        if (v21)
        {
          v29 = CFRetain(v21);
          v18 = v29;
          if (v29)
          {
            v30 = CFGetTypeID(v29);
            if (v30 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v18, kCFNumberSInt32Type, &v50);
            }

            else
            {
              v31 = CFGetTypeID(v18);
              if (v31 == CFStringGetTypeID())
              {
                _AMSupportCFStringToUInt32(v18, &v50);
              }
            }
          }
        }

        else
        {
          v18 = 0;
        }

        if (a1 == 1)
        {
          v35 = 1;
          v36 = 50;
        }

        else
        {
          if (!a1)
          {
            v32 = 0;
            v33 = *a2;
            v34 = v50;
            goto LABEL_26;
          }

          v35 = 3;
          v36 = 58;
        }

        v32 = *(a2 + v36);
        v33 = a2[v35];
        v34 = v50;
        v37 = v32;
        if (v32 > v50)
        {
LABEL_28:
          v19 = 0;
          v32 = v37;
LABEL_29:
          T200UpdaterInfoLog("%s:%d Device Img Version= %d  SetID= %d. \n", v22, v23, v24, v25, v26, v27, v28, "performVersionCheck", 1027, v33, v32);
          T200UpdaterInfoLog("%s:%d PLIST  Img Version= %d  SetID= %d. \n", v38, v39, v40, v41, v42, v43, v44, "performVersionCheck", 1028, HIDWORD(v50), v50);
          goto LABEL_30;
        }

LABEL_26:
        v19 = 1;
        if (v32 != v34)
        {
          goto LABEL_29;
        }

        v37 = v34;
        if (v33 < HIDWORD(v50))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "imgVerRef && (CFGetTypeID(imgVerRef) == CFNumberGetTypeID() || CFGetTypeID(imgVerRef) ==CFStringGetTypeID())", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 996, 0);
  v18 = 0;
  *a4 = createCFError("Error: Failed to parse Image Version.", 0x5Du, "performVersionCheck", 996);
  v19 = 1;
LABEL_30:
  CFRelease(v9);
  CFRelease(v11);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  return v19;
}

void *T200UpdaterIsTwoStageSupported(void *a1)
{
  v1 = a1;
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    *a1 = 0;
    if (BC__getInfo(v10, 0x40uLL))
    {
      T200UpdaterIsTwoStageSupported_cold_1();
      return 0;
    }

    else
    {
      v1 = (BYTE14(v11) & 1);
      T200UpdaterInfoLog("%s:%d Is Two Stage Supported: %d. \n", v2, v3, v4, v5, v6, v7, v8, "T200UpdaterIsTwoStageSupported", 657, v1);
    }
  }

  else
  {
    T200UpdaterIsTwoStageSupported_cold_2();
  }

  return v1;
}

uint64_t READ_DATA__getVIQTReadings()
{
  v88 = *MEMORY[0x29EDCA608];
  v0 = BC__receive(168, 0x18u, v87);
  T200UpdaterInfoLog("<VIQTReadings> \n", v1, v2, v3, v4, v5, v6, v7);
  T200UpdaterInfoLog("\t<ServiceType>Read Data</ServiceType> \n", v8, v9, v10, v11, v12, v13, v14);
  if (v0)
  {
    T200UpdaterInfoLog("\t<CommunicationStatus>%d</CommunicationStatus> \n", v15, v16, v17, v18, v19, v20, v21, v0);
  }

  else
  {
    T200UpdaterInfoLog("\t<CommunicationStatus>%d</CommunicationStatus> \n", v15, v16, v17, v18, v19, v20, v21, 0);
    T200UpdaterInfoLog("\t<ADCReadings> \n", v29, v30, v31, v32, v33, v34, v35);
    T200UpdaterInfoLog("\t\t<Voltage>%f</Voltage> \n", v36, v37, v38, v39, v40, v41, v42, (v87[0] * 0.0000076294));
    T200UpdaterInfoLog("\t\t<Current>%f</Current> \n", v43, v44, v45, v46, v47, v48, v49, (v87[1] * 0.0000076294));
    T200UpdaterInfoLog("\t\t<OneSecondPassedCharge>%f</OneSecondPassedCharge> \n", v50, v51, v52, v53, v54, v55, v56, (v87[2] * 0.0000076294));
    T200UpdaterInfoLog("\t\t<NTCTemperature>%f</NTCTemperature> \n", v57, v58, v59, v60, v61, v62, v63, (v87[3] * 0.0000076294));
    T200UpdaterInfoLog("\t\t<InternalTemperature>%f</InternalTemperature> \n", v64, v65, v66, v67, v68, v69, v70, (v87[4] * 0.0000076294));
    T200UpdaterInfoLog("\t\t<PackVoltage>%f</PackVoltage> \n", v71, v72, v73, v74, v75, v76, v77, (v87[5] * 0.0000076294));
    T200UpdaterInfoLog("\t</ADCReadings> \n", v78, v79, v80, v81, v82, v83, v84, v86);
  }

  T200UpdaterInfoLog("</VIQTReadings> \n", v22, v23, v24, v25, v26, v27, v28);
  return v0;
}

uint64_t READ_DATA__getVersionInformation(int a1)
{
  v168 = *MEMORY[0x29EDCA608];
  v157 = 0;
  v158 = 0;
  v155 = 0;
  v156 = 0;
  v154 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v153 = -1;
  if (a1)
  {
    v2 = BC__receive(167, 4u, &v158 + 4);
    if (v2 || (v2 = BC__receive(175, 4u, &v158), v2) || (v2 = BC__receive(170, 4u, &v157 + 4), v2) || (v2 = BC__receive(171, 4u, &v157), v2) || (v2 = BC__receive(172, 4u, &v156 + 4), v2) || (v2 = BC__receive(82, 4u, &v156), v2) || (v2 = BC__receive(61, 4u, &v154), v2) || (v2 = BC__receive(173, 4u, &v155 + 4), v2) || (v2 = BC__receive(80, 2u, &v153), v2) || (v2 = BC__receive(124, 0xCu, &v166), v2) || (v2 = BC__receive(62, 0xCu, &v162), v2) || (v2 = BC__receive(63, 0xCu, &v164), v2))
    {
      v10 = v2;
LABEL_15:
      T200UpdaterInfoLog("<VersionInformation \n", v3, v4, v5, v6, v7, v8, v9);
      T200UpdaterInfoLog("\t<ServiceType>Read Data</ServiceType> \n", v11, v12, v13, v14, v15, v16, v17);
      T200UpdaterInfoLog("\t<CommunicationStatus>%d</CommunicationStatus> \n", v18, v19, v20, v21, v22, v23, v24, v10);
      T200UpdaterInfoLog("</VersionInformation> \n", v25, v26, v27, v28, v29, v30, v31);
      return v10;
    }

    v10 = BC__receive(119, 4u, &v155);
    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    memset(v161, 0, sizeof(v161));
    v159 = 0u;
    v160 = 0u;
    Info = BC__getInfo(&v159, 0x40uLL);
    if (Info)
    {
      v10 = Info;
      T200UpdaterInfoLog("%s:%d Failed getting info %d  \n", v3, v4, v5, v6, v7, v8, v9, "READ_DATA__getVersionInformation", 2361, Info);
      return v10;
    }

    v158 = __PAIR64__(v160, v159);
    v157 = __PAIR64__(DWORD1(v159), DWORD2(v159));
    v156 = __PAIR64__(HIDWORD(v159), DWORD1(v160));
    v154 = v161[0];
    v155 = __PAIR64__(DWORD2(v160), HIDWORD(v160));
    v153 = WORD2(v161[0]);
    v164 = *(&v161[1] + 2);
    v165 = *(&v161[1] + 10);
    v162 = *(v161 + 6);
    v163 = *(v161 + 14);
    v10 = BYTE14(v161[1]) & 1;
  }

  T200UpdaterInfoLog("<AMSResponse> \n", v3, v4, v5, v6, v7, v8, v9);
  T200UpdaterInfoLog("\t<ServiceType>Read Data</ServiceType> \n", v33, v34, v35, v36, v37, v38, v39);
  T200UpdaterInfoLog("\t<CommunicationStatus>%d</CommunicationStatus> \n", v40, v41, v42, v43, v44, v45, v46, 0);
  T200UpdaterInfoLog("\t<VersionInformation> \n", v47, v48, v49, v50, v51, v52, v53);
  T200UpdaterInfoLog("\t\t<SerialNumber>%u</SerialNumber> \n", v54, v55, v56, v57, v58, v59, v60, v156);
  T200UpdaterInfoLog("\t\t<ChemID>%lu</ChemID> \n", v61, v62, v63, v64, v65, v66, v67, v155);
  T200UpdaterInfoLog("\t\t<Crypto>%u</Crypto> \n", v68, v69, v70, v71, v72, v73, v74, HIDWORD(v158));
  T200UpdaterInfoLog("\t\t<Firmware>%u</Firmware> \n", v75, v76, v77, v78, v79, v80, v81, v158);
  T200UpdaterInfoLog("\t\t<Firmware> maj=%d med=%d min=%d rev=%d</Firmware> \n", v82, v83, v84, v85, v86, v87, v88, (v158 / 0x5F5E100 - 10 * ((26 * (v158 / 0x5F5E100)) >> 8)), (v158 / 0xF4240 - 100 * (((5243 * (v158 / 0xF4240)) >> 16) >> 3)), (v158 / 0x2710 - 100 * ((42949673 * (v158 / 0x2710)) >> 32)), v158 % 0x2710);
  T200UpdaterInfoLog("\t\t<Configuration>%u</Configuration> \n", v89, v90, v91, v92, v93, v94, v95, HIDWORD(v157));
  T200UpdaterInfoLog("\t\t<DNVDSector1>%u</DNVDSector1> \n", v96, v97, v98, v99, v100, v101, v102, v157);
  T200UpdaterInfoLog("\t\t<DNVDSector2>%u</DNVDSector2> \n", v103, v104, v105, v106, v107, v108, v109, HIDWORD(v156));
  T200UpdaterInfoLog("\t\t<DeviceId>%d</DeviceId> \n", v110, v111, v112, v113, v114, v115, v116, v154);
  T200UpdaterInfoLog("\t\t<DeviceType>%d</DeviceType> \n", v117, v118, v119, v120, v121, v122, v123, HIDWORD(v155));
  if (v166)
  {
    T200UpdaterInfoLog("\t\t<CellIDs> DNVD1:%u  DNVD2:%u Config:%u </CellIDs> \n", v124, v125, v126, v127, v128, v129, v130, v166, v167, HIDWORD(v166));
  }

  if (v162)
  {
    T200UpdaterInfoLog("\t\t<Firmware supported SetIds> DNVD1:0x%x  DNVD2:0x%x Config:0x%x </Firmware supported SetIds> \n", v124, v125, v126, v127, v128, v129, v130, HIDWORD(v162), v163, v162);
  }

  if (v164)
  {
    T200UpdaterInfoLog("\t\t<SetIds> DNVD1:0x%x  DNVD2:0x%x Config:0x%x </SetIds> \n", v124, v125, v126, v127, v128, v129, v130, HIDWORD(v164), v165, v164);
  }

  T200UpdaterInfoLog("\t\t<UpdaterStatus>%d</UpdaterStatus> \n", v124, v125, v126, v127, v128, v129, v130, v153);
  if (!a1)
  {
    T200UpdaterInfoLog("\t\t<TwoStageSupported>%u</TwoStageSupported> \n", v131, v132, v133, v134, v135, v136, v137, v10);
  }

  T200UpdaterInfoLog("\t</VersionInformation> \n", v131, v132, v133, v134, v135, v136, v137);
  T200UpdaterInfoLog("</AMSResponse> \n", v138, v139, v140, v141, v142, v143, v144);
  if (v166 == v167)
  {
    return 0;
  }

  v10 = 0;
  if (v166 && v166 != HIDWORD(v166))
  {
    T200UpdaterInfoLog("\x1B[31mCell ID's doesn't match ,must be fixed\x1B[0m", v145, v146, v147, v148, v149, v150, v151);
    return 0;
  }

  return v10;
}

uint64_t _AMSupportCFStringToUInt32(const __CFString *a1, _DWORD *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  result = CFStringGetCString(a1, buffer, 32, 0x600u);
  if (result)
  {
    *__error() = 0;
    *a2 = strtol(buffer, 0, 0);
    return *__error() == 0;
  }

  return result;
}

uint64_t T200GetBoardIdFromDT(_DWORD *a1)
{
  v14 = 0;
  if (!a1)
  {
    T200GetBoardIdFromDT_cold_8();
    return 118;
  }

  v2 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/product");
  if (!v2)
  {
    T200GetBoardIdFromDT_cold_7();
    return 117;
  }

  v3 = v2;
  if (_T200GetBMUID(&v14))
  {
    T200GetBoardIdFromDT_cold_1();
LABEL_20:
    IOObjectRelease(v3);
    return 118;
  }

  v4 = *MEMORY[0x29EDB8ED8];
  if (v14 >= 2)
  {
    v5 = @"bmu2-board-id";
  }

  else
  {
    v5 = @"bmu-board-id";
  }

  CFProperty = IORegistryEntryCreateCFProperty(v3, v5, *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty)
  {
    T200GetBoardIdFromDT_cold_6();
    goto LABEL_20;
  }

  v7 = CFProperty;
  v8 = CFGetTypeID(CFProperty);
  if (v8 != CFDataGetTypeID())
  {
    T200GetBoardIdFromDT_cold_2();
LABEL_24:
    IOObjectRelease(v3);
    v12 = 118;
    goto LABEL_14;
  }

  BytePtr = CFDataGetBytePtr(v7);
  v10 = CFNumberCreate(v4, kCFNumberIntType, BytePtr);
  if (!v10)
  {
    T200GetBoardIdFromDT_cold_5();
    goto LABEL_24;
  }

  v11 = v10;
  if (!CFNumberGetValue(v10, kCFNumberIntType, a1))
  {
    T200GetBoardIdFromDT_cold_4();
LABEL_27:
    v12 = 118;
    goto LABEL_13;
  }

  if (!*a1)
  {
    T200GetBoardIdFromDT_cold_3();
    goto LABEL_27;
  }

  v12 = 0;
LABEL_13:
  IOObjectRelease(v3);
  CFRelease(v11);
LABEL_14:
  CFRelease(v7);
  return v12;
}

uint64_t _T200GetBMUID(_DWORD *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    _T200GetBMUID_cold_9();
LABEL_35:
    v57 = 131;
    goto LABEL_28;
  }

  *a1 = 0;
  HIDWORD(valuePtr) = 0;
  v2 = *MEMORY[0x29EDBB110];
  v3 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/product");
  if (!v3)
  {
    _T200GetBMUID_cold_8();
LABEL_31:
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "result == kT200Success", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 2970, 0);
    v57 = 130;
    goto LABEL_28;
  }

  v4 = v3;
  v5 = *MEMORY[0x29EDB8ED8];
  CFProperty = IORegistryEntryCreateCFProperty(v3, @"bmu-num-supported", *MEMORY[0x29EDB8ED8], 0);
  v14 = CFProperty;
  if (!CFProperty)
  {
    v18 = 0;
    goto LABEL_7;
  }

  v15 = CFGetTypeID(CFProperty);
  if (v15 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v14);
    v17 = CFNumberCreate(v5, kCFNumberIntType, BytePtr);
    v18 = v17;
    if (v17)
    {
      if (CFNumberGetValue(v17, kCFNumberIntType, &valuePtr + 4))
      {
LABEL_7:
        v19 = 1;
        goto LABEL_8;
      }

      _T200GetBMUID_cold_2();
    }

    else
    {
      _T200GetBMUID_cold_3();
    }

    v19 = 0;
  }

  else
  {
    _T200GetBMUID_cold_1();
    v19 = 0;
    v18 = 0;
  }

LABEL_8:
  T200UpdaterInfoLog("%s:%d NumSupported from IODT %08x \n", v7, v8, v9, v10, v11, v12, v13, "_T200GetNumSupportedBMUFromDT", 2883, HIDWORD(valuePtr));
  IOObjectRelease(v4);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_31;
  }

  T200UpdaterInfoLog("%s:%d NumSupportedBMU %08x \n", v20, v21, v22, v23, v24, v25, v26, "_T200GetBMUID", 2971, HIDWORD(valuePtr));
  LODWORD(valuePtr) = 0;
  v27 = IORegistryEntryFromPath(v2, "IODeviceTree:/product");
  if (!v27)
  {
    _T200GetBMUID_cold_7();
LABEL_34:
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "result == kT200Success", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 2974, 0);
    goto LABEL_35;
  }

  v28 = v27;
  v29 = IORegistryEntryCreateCFProperty(v27, @"bmu-num-enabled", v5, 0);
  v37 = v29;
  if (!v29)
  {
    v41 = 0;
    goto LABEL_18;
  }

  v38 = CFGetTypeID(v29);
  if (v38 == CFDataGetTypeID())
  {
    v39 = CFDataGetBytePtr(v37);
    v40 = CFNumberCreate(v5, kCFNumberIntType, v39);
    v41 = v40;
    if (v40)
    {
      if (CFNumberGetValue(v40, kCFNumberIntType, &valuePtr))
      {
LABEL_18:
        v42 = 1;
        goto LABEL_19;
      }

      _T200GetBMUID_cold_5();
    }

    else
    {
      _T200GetBMUID_cold_6();
    }

    v42 = 0;
  }

  else
  {
    _T200GetBMUID_cold_4();
    v42 = 0;
    v41 = 0;
  }

LABEL_19:
  T200UpdaterInfoLog("%s:%d NumEnabled from IODT %08x \n", v30, v31, v32, v33, v34, v35, v36, "_T200GetNumEnabledBMUFromDT", 2920, valuePtr);
  IOObjectRelease(v28);
  if (v41)
  {
    CFRelease(v41);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_34;
  }

  T200UpdaterInfoLog("%s:%d NumEnabledBMU %08x \n", v43, v44, v45, v46, v47, v48, v49, "_T200GetBMUID", 2975, valuePtr);
  v57 = 0;
  if (valuePtr == 0x200000001)
  {
    v58 = IORegistryEntryFromPath(v2, "IODeviceTree:/defaults");
    if (v58)
    {
      v66 = v58;
      T200UpdaterInfoLog("%s:%d Defaults Node present \n", v59, v60, v61, v62, v63, v64, v65, "_T200GetPSimFromDT", 2942);
      v67 = IORegistryEntryCreateCFProperty(v66, @"psim-present", v5, 0);
      if (v67)
      {
        v75 = v67;
        T200UpdaterInfoLog("%s:%d psim-present property available \n", v68, v69, v70, v71, v72, v73, v74, "_T200GetPSimFromDT", 2947);
        T200UpdaterInfoLog("%s:%d PSimPresent from IODT %08x \n", v76, v77, v78, v79, v80, v81, v82, "_T200GetPSimFromDT", 2950, 1);
        IOObjectRelease(v66);
        CFRelease(v75);
        v57 = 0;
        goto LABEL_28;
      }

      T200UpdaterInfoLog("%s:%d PSimPresent from IODT %08x \n", v68, v69, v70, v71, v72, v73, v74, "_T200GetPSimFromDT", 2950, 0);
      IOObjectRelease(v66);
    }

    else
    {
      T200UpdaterInfoLog("%s:%d PSimPresent from IODT %08x \n", v59, v60, v61, v62, v63, v64, v65, "_T200GetPSimFromDT", 2950, 0);
    }

    v57 = 0;
    *a1 = 2;
  }

LABEL_28:
  T200UpdaterInfoLog("%s:%d BMUID %08x \n", v50, v51, v52, v53, v54, v55, v56, "_T200GetBMUID", 2985, *a1);
  return v57;
}

uint64_t _T200UpdaterClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _T200TypeID = result;
  return result;
}

void T200CFShow_0(const void *a1)
{
  if (a1)
  {
    v1 = CFCopyDescription(a1);
    CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
    if (CStringPtr)
    {
      T200UpdaterInfoLog("[DICT] %s \n", v3, v4, v5, v6, v7, v8, v9, CStringPtr);
    }

    if (v1)
    {

      CFRelease(v1);
    }
  }
}

void _AMAuthInstallFinalize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    _AMAuthInstallFinalize_cold_1();
  }

  v3 = (a1 + 16);

  bzero(v3, 0x2148uLL);
}

uint64_t CheckKeyTrue(const __CFDictionary *a1, const void *a2)
{
  if (!CFDictionaryContainsKey(a1, a2))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return CFBooleanGetValue(v5);
}

uint64_t _getInfoSMCIF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v102 = *MEMORY[0x29EDCA608];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  valuePtr = 0;
  T200UpdaterInfoLog("%s:%d Start \n", a2, a3, a4, a5, a6, a7, a8, "_getInfoSMCIF", 1112);
  if (!a1)
  {
    _getInfoSMCIF_cold_15();
    v56 = 0;
    v88 = 0;
    v53 = 0;
    v54 = 0;
    v89 = 0;
    v44 = 0;
    v55 = 0;
    v28 = 26;
    goto LABEL_58;
  }

  *(a1 + 8480) = 0;
  if (BC__getInfo(&v98, 0x40uLL))
  {
    _getInfoSMCIF_cold_1();
LABEL_98:
    v56 = 0;
    v88 = 0;
    v53 = 0;
    v54 = 0;
    v89 = 0;
    v44 = 0;
    goto LABEL_99;
  }

  *(a1 + 8505) = BYTE14(v101) & 1;
  v9 = v98;
  *(a1 + 8468) = HIDWORD(v99);
  v94 = 0;
  v10 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/product");
  if (!v10)
  {
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "product_node", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 2699, 0);
    v28 = 117;
    goto LABEL_78;
  }

  v11 = v10;
  if (_T200GetBMUID(&v94))
  {
    _getInfoSMCIF_cold_2();
    v15 = 0;
    v28 = 118;
  }

  else
  {
    v12 = *MEMORY[0x29EDB8ED8];
    if (v94 >= 2)
    {
      v13 = @"bmu2-chip-id";
    }

    else
    {
      v13 = @"bmu-chip-id";
    }

    CFProperty = IORegistryEntryCreateCFProperty(v11, v13, v12, 0);
    v15 = CFProperty;
    if (CFProperty)
    {
      v16 = CFGetTypeID(CFProperty);
      if (v16 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v15);
        v18 = CFNumberCreate(v12, kCFNumberIntType, BytePtr);
        if (v18)
        {
          v19 = v18;
          if (CFNumberGetValue(v18, kCFNumberIntType, (a1 + 8472)))
          {
            T200UpdaterInfoLog("%s:%d ChipId from IODT %08x \n", v20, v21, v22, v23, v24, v25, v26, "_T200GetChipIdFromDT", 2718, *(a1 + 8472));
            v27 = 0;
            while (*(a1 + 8472) != kT200ValidChipIds[v27])
            {
              if (++v27 == 9)
              {
                fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "found", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 2726, 0);
                goto LABEL_16;
              }
            }

            v28 = 0;
          }

          else
          {
            _getInfoSMCIF_cold_4();
LABEL_16:
            v28 = 127;
          }

          IOObjectRelease(v11);
          CFRelease(v19);
          if (v15)
          {
            goto LABEL_19;
          }

          goto LABEL_20;
        }

        _getInfoSMCIF_cold_5();
      }

      else
      {
        _getInfoSMCIF_cold_3();
      }
    }

    else
    {
      _getInfoSMCIF_cold_6();
    }

    v28 = 127;
  }

  IOObjectRelease(v11);
  if (v15)
  {
LABEL_19:
    CFRelease(v15);
  }

LABEL_20:
  if (v28)
  {
LABEL_78:
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "rc == 0", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1127, 0);
    v56 = 0;
    v88 = 0;
    v53 = 0;
    v54 = 0;
    v89 = 0;
    v44 = 0;
    v55 = 0;
    goto LABEL_58;
  }

  *(a1 + 8502) = (DWORD2(v99) & 0x30000) != 0x20000;
  if (_T200GetBMUID((a1 + 8532)))
  {
    _getInfoSMCIF_cold_7();
    v56 = 0;
    v88 = 0;
    v53 = 0;
    v54 = 0;
    v89 = 0;
    v44 = 0;
    v55 = 0;
    v28 = 136;
    goto LABEL_58;
  }

  *(a1 + 8492) = 0;
  if (*(a1 + 8505) && (*(a1 + 8509) || *(a1 + 8506) && *(a1 + 8507) != 1))
  {
    T200UpdaterInfoLog("%s:%d Skip Start Update command \n", v29, v30, v31, v32, v33, v34, v35, "_getInfoSMCIF", 1156);
    goto LABEL_29;
  }

  T200UpdaterInfoLog("%s:%d Signal Start Update \n", v29, v30, v31, v32, v33, v34, v35, "_getInfoSMCIF", 1147);
  if (BC__startUpdate(&v95, 0x24uLL))
  {
    _getInfoSMCIF_cold_8();
    goto LABEL_98;
  }

  *(a1 + 8464) = v97;
  v36 = v96;
  *(a1 + 8408) = v95;
  *(a1 + 8424) = v36;
LABEL_29:
  v37 = v9 / 0xF4240 - 100 * ((5243 * (v9 / 0xF4240)) >> 19);
  v38 = v9 / 0x5F5E100 - 10 * ((26 * (v9 / 0x5F5E100)) >> 8);
  v39 = v9 % 0x2710;
  v40 = (v9 / 0x2710 - 100 * ((42949673 * (v9 / 0x2710)) >> 32));
  v41 = v37;
  v42 = v38;
  v43 = *MEMORY[0x29EDB8ED8];
  v44 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%u", v40);
  CStringPtr = CFStringGetCStringPtr(v44, 0x8000100u);
  if (CStringPtr)
  {
    T200UpdaterInfoLog("%s:%d hwVersionstr = %s  \n", v46, v47, v48, v49, v50, v51, v52, "_getInfoSMCIF", 1164, CStringPtr);
  }

  T200UpdaterInfoLog("%s:%d Veridian Fw  detected maj=%d med=%d min=%d rev=%d \n", v46, v47, v48, v49, v50, v51, v52, "_getInfoSMCIF", 1168, v42, v41, v40, v39);
  if (!v44)
  {
    _getInfoSMCIF_cold_14((a1 + 8492));
    v56 = 0;
    v88 = 0;
    v53 = 0;
LABEL_85:
    v54 = 0;
LABEL_91:
    v89 = 0;
LABEL_99:
    v55 = 0;
    goto LABEL_100;
  }

  v53 = CFNumberCreate(v43, kCFNumberSInt32Type, (a1 + 8464));
  if (!v53)
  {
    _getInfoSMCIF_cold_13((a1 + 8492));
    v56 = 0;
    v88 = 0;
    goto LABEL_85;
  }

  v54 = CFNumberCreate(v43, kCFNumberSInt32Type, (a1 + 8472));
  if (!v54)
  {
    _getInfoSMCIF_cold_12((a1 + 8492));
    v56 = 0;
    v88 = 0;
    goto LABEL_91;
  }

  v55 = CFNumberCreate(v43, kCFNumberSInt32Type, (a1 + 8532));
  v56 = CFDataCreate(v43, (a1 + 8408), 32);
  if (!v56)
  {
    _getInfoSMCIF_cold_11((a1 + 8492));
LABEL_95:
    v88 = 0;
    v89 = 0;
LABEL_100:
    v28 = 1;
    goto LABEL_58;
  }

  valuePtr = *(a1 + 8468);
  v57 = CFNumberCreate(v43, kCFNumberSInt64Type, &valuePtr);
  if (!v57)
  {
    _getInfoSMCIF_cold_10((a1 + 8492));
    goto LABEL_95;
  }

  v91 = v57;
  value = v44;
  v58 = v56;
  v59 = v54;
  v60 = v53;
  v61 = v55;
  v62 = CFDataCreate(v43, (a1 + 8476), 4);
  if (CFDictionaryContainsKey(*(a1 + 16), @"Options"))
  {
    v63 = CFDictionaryGetValue(*(a1 + 16), @"Options");
  }

  else
  {
    v63 = 0;
  }

  v64 = *(a1 + 32);
  v94 = 0;
  v65 = CFNumberCreate(v43, kCFNumberSInt32Type, &v94);
  if (!v65)
  {
    _getInfoSMCIF_cold_9();
  }

  v66 = v65;
  CFDictionarySetValue(v64, @"UpdateType", v65);
  CFRelease(v66);
  CFDictionaryAddValue(*(a1 + 32), @"Nonce", v58);
  CFDictionaryAddValue(*(a1 + 32), @"ChipID", v59);
  CFDictionaryAddValue(*(a1 + 32), @"BMUID", v61);
  CFDictionaryAddValue(*(a1 + 32), @"UniqueID", v60);
  CFDictionaryAddValue(*(a1 + 32), @"HWVersion", value);
  v67 = *MEMORY[0x29EDB8F00];
  v68 = *MEMORY[0x29EDB8EF8];
  if (*(a1 + 8502))
  {
    v69 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v69 = *MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(*(a1 + 32), @"ProductionMode", v69);
  CFDictionaryAddValue(*(a1 + 32), @"Revision", v62);
  CFDictionaryAddValue(*(a1 + 32), @"ChemistryID", v91);
  if (*(a1 + 8480))
  {
    v70 = v67;
  }

  else
  {
    v70 = v68;
  }

  CFDictionarySetValue(*(a1 + 32), @"LocalSigningID", v70);
  if (*(a1 + 8508))
  {
    v71 = v67;
  }

  else
  {
    v71 = v68;
  }

  CFDictionarySetValue(*(a1 + 32), @"ForceFirmwareUpgrade", v71);
  if (*(a1 + 8503))
  {
    v72 = v67;
  }

  else
  {
    v72 = v68;
  }

  CFDictionarySetValue(*(a1 + 32), @"RollbackFWVer", v72);
  if (*(a1 + 8505))
  {
    v73 = v67;
  }

  else
  {
    v73 = v68;
  }

  CFDictionarySetValue(*(a1 + 32), @"IsTwoStageSupported", v73);
  if (v63)
  {
    CFDictionaryAddValue(*(a1 + 32), @"UpdaterOptions", v63);
  }

  T200UpdaterInfoLog("%s:%d End \n", v74, v75, v76, v77, v78, v79, v80, "_getInfoSMCIF", 1214);
  v28 = 0;
  v55 = v61;
  v53 = v60;
  v54 = v59;
  v56 = v58;
  v88 = v62;
  v89 = v91;
  v44 = value;
LABEL_58:
  if (*(a1 + 8492))
  {
    T200UpdaterInfoLog("%s:%d Failed with Error:%d  \n", v81, v82, v83, v84, v85, v86, v87, "_getInfoSMCIF", 1220, *(a1 + 8492));
    WORD2(v100) = 24;
    BC__getInfo(&v98, 0x40uLL);
    v28 = *(a1 + 8492);
    *(a1 + 8495) = BYTE4(v100);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  return v28;
}

uint64_t _check_update_needed(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v113 = *MEMORY[0x29EDCA608];
  v109 = 0;
  v110 = 0;
  valuePtr = 0;
  cf = 0;
  T200UpdaterInfoLog("%s:%d start \n", a2, a3, a4, a5, a6, a7, a8, "_check_update_needed", 1893);
  if (!a1)
  {
    _check_update_needed_cold_11();
LABEL_106:
    v85 = 122;
LABEL_108:
    T200UpdaterInfoLog("%s:%d failed with result =%d \n", v94, v95, v96, v97, v98, v99, v100, "_check_update_needed", 2023, v85);
    v82 = 0;
    v84 = 0;
    goto LABEL_90;
  }

  v12 = *(a1 + 32);
  if (!v12)
  {
    _check_update_needed_cold_10();
    goto LABEL_106;
  }

  if (!*(a1 + 24))
  {
    _check_update_needed_cold_9();
    goto LABEL_106;
  }

  v13 = CFRetain(v12);
  if (!v13)
  {
    _check_update_needed_cold_8();
    v85 = 85;
    goto LABEL_108;
  }

  v14 = v13;
  Value = CFDictionaryGetValue(v13, @"ChemistryID");
  v16 = CFDictionaryGetValue(v14, @"HWVersion");
  _create_key_payload_Verison(a3, &v110, &v109, &cf, Value, v16);
  v17 = v109;
  v106 = v110;
  if (!v110 || !v109)
  {
    _check_update_needed_cold_7();
    v81 = 31;
LABEL_98:
    T200UpdaterInfoLog("%s:%d failed with result =%d \n", v87, v88, v89, v90, v91, v92, v93, "_check_update_needed", 2023, v81);
    CFRelease(v14);
    v25 = 0;
    v29 = 0;
    v34 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = v81;
    v44 = v106;
    if (!v106)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v18 = *(a1 + 24);
  if (!v18 || (v19 = CFRetain(v18)) == 0)
  {
    _check_update_needed_cold_6();
    v81 = 83;
    goto LABEL_98;
  }

  v20 = v19;
  v21 = CFDictionaryGetValue(v19, @"FirmwareData");
  if (!v21 || (v22 = v21, v23 = CFGetTypeID(v21), v23 != CFDataGetTypeID()))
  {
    _check_update_needed_cold_5();
    v25 = 0;
LABEL_102:
    v29 = 0;
    goto LABEL_24;
  }

  v24 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v22, 0, 0, 0);
  v25 = v24;
  if (!v24 || (v26 = CFGetTypeID(v24), v26 != CFDictionaryGetTypeID()))
  {
    _check_update_needed_cold_4();
    goto LABEL_102;
  }

  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (!ValueForKeyPathInDict)
  {
    v29 = 0;
LABEL_23:
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "firmwareVersionRef && (CFGetTypeID(firmwareVersionRef) == CFNumberGetTypeID() || CFGetTypeID(firmwareVersionRef) ==CFStringGetTypeID())", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1920, 0);
LABEL_24:
    v34 = 0;
    goto LABEL_25;
  }

  v104 = v9;
  v28 = CFRetain(ValueForKeyPathInDict);
  v29 = v28;
  if (!v28)
  {
    goto LABEL_23;
  }

  v30 = CFGetTypeID(v28);
  if (v30 != CFNumberGetTypeID())
  {
    v31 = CFGetTypeID(v29);
    if (v31 != CFStringGetTypeID())
    {
      goto LABEL_23;
    }
  }

  v32 = AMSupportGetValueForKeyPathInDict();
  v102 = v8;
  if (!v32)
  {
    v34 = 0;
    goto LABEL_28;
  }

  v33 = CFRetain(v32);
  v34 = v33;
  if (!v33)
  {
LABEL_28:
    v45 = 1;
    goto LABEL_32;
  }

  v35 = CFGetTypeID(v33);
  if (v35 != CFNumberGetTypeID())
  {
    v46 = CFGetTypeID(v34);
    if (v46 == CFStringGetTypeID())
    {
      _AMSupportCFStringToUInt32(v34, &valuePtr + 1);
    }

    goto LABEL_31;
  }

  if (CFNumberGetValue(v34, kCFNumberSInt32Type, &valuePtr + 4))
  {
LABEL_31:
    v45 = 0;
LABEL_32:
    v47 = CFGetTypeID(v29);
    if (v47 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v29, kCFNumberSInt32Type, &valuePtr);
    }

    v48 = CFGetTypeID(v29);
    if (v48 == CFStringGetTypeID())
    {
      _AMSupportCFStringToUInt32(v29, &valuePtr);
    }

    v112 = 0u;
    memset(v111, 0, sizeof(v111));
    Info = BC__getInfo(v111, 0x40uLL);
    if (Info)
    {
      v101 = Info;
      fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "rc==KERN_SUCCESS", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1945, 0);
      v43 = (v101 << 8) | 0x56u;
      goto LABEL_26;
    }

    if (a3 == 1)
    {
      if (v45)
      {
        _check_update_needed_cold_3();
        v43 = 115;
        goto LABEL_26;
      }

      v103 = 0;
      v57 = DWORD1(v111[0]);
      v58 = *(&v112 + 2);
    }

    else if (a3 == 2)
    {
      if (v45)
      {
        _check_update_needed_cold_2();
        v43 = 116;
        goto LABEL_26;
      }

      v103 = 1;
      v57 = HIDWORD(v111[0]);
      v58 = *(&v112 + 10);
    }

    else
    {
      v103 = 0;
      v58 = 0;
      v57 = LODWORD(v111[0]);
    }

    T200UpdaterInfoLog("%s:%d set_id_0=%d set_id_1=%d set_id_2=%d \n", v50, v51, v52, v53, v54, v55, v56, "_check_update_needed", 1961, *(&v112 + 2), *(&v112 + 6), *(&v112 + 10));
    *a2 = 0;
    v66 = valuePtr;
    if (v104)
    {
      *a2 = valuePtr != v57;
      T200UpdaterInfoLog("%s:%d Does Image updated (0-No 1-Yes)= %d, Veridian Image Loaded: %d set-id:%d    Veridian Image Requested:%d new_set-id:%d \n", v59, v60, v61, v62, v63, v64, v65, "_check_update_needed", 2015, v66 == v57, v57, v58, v66, HIDWORD(valuePtr));
      v44 = v106;
LABEL_83:
      T200UpdaterInfoLog("%s:%d end \n", v67, v68, v69, v70, v71, v72, v73, "_check_update_needed", 2020);
      v43 = 0;
      goto LABEL_84;
    }

    if (a3)
    {
      v74 = HIDWORD(valuePtr);
      if (a3 == 1)
      {
        v77 = (valuePtr >= v57 && v102 == 0 || valuePtr > v57) && v58 == HIDWORD(valuePtr);
        v44 = v106;
        if (v77 || v58 < HIDWORD(valuePtr) || *(a1 + 8503))
        {
          *a2 = 1;
        }

        *(a1 + 8520) = v66;
        *(a1 + 8524) = v74;
        goto LABEL_73;
      }
    }

    else
    {
      v78 = v102 == 0;
      if (valuePtr < v57)
      {
        v78 = 0;
      }

      if (valuePtr > v57 || v78 || *(a1 + 8504) == 1 && (v79 = valuePtr / 0xF4240 - 100 * ((42949673 * (valuePtr / 0xF4240)) >> 32), v79 != v57 / 0xF4240 - 100 * ((42949673 * (v57 / 0xF4240)) >> 32)) && v79 != 8 || *(a1 + 8503))
      {
        *a2 = 1;
      }

      *(a1 + 8528) = v66;
      v74 = HIDWORD(valuePtr);
    }

    v44 = v106;
LABEL_73:
    if (v103)
    {
      v80 = v58 == v74 && v66 > v57;
      if (v80 || v58 < v74 || *(a1 + 8503))
      {
        *a2 = 1;
      }

      *(a1 + 8512) = v66;
      *(a1 + 8516) = v74;
    }

    T200UpdaterInfoLog("%s:%d Do we need to update(0-No 1-Yes)= %d, current veridian fw: %d set-id:%d    new_firmware:%d new_set-id:%d \n", v59, v60, v61, v62, v63, v64, v65, "_check_update_needed", 2005, *a2, v57, v58, v66, v74);
    goto LABEL_83;
  }

  _check_update_needed_cold_1();
LABEL_25:
  v43 = 31;
LABEL_26:
  v44 = v106;
  T200UpdaterInfoLog("%s:%d failed with result =%d \n", v36, v37, v38, v39, v40, v41, v42, "_check_update_needed", 2023, v43);
LABEL_84:
  CFRelease(v20);
  CFRelease(v14);
  v81 = v43;
LABEL_85:
  CFRelease(v44);
  v110 = 0;
  v82 = v25;
  v83 = v29;
  v84 = v34;
  v85 = v81;
LABEL_86:
  if (v17)
  {
    CFRelease(v17);
    v109 = 0;
  }

  if (v83)
  {
    CFRelease(v83);
  }

LABEL_90:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  return v85;
}

uint64_t _commitImageSMCIF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = *MEMORY[0x29EDCA608];
  v9 = (a1 + 0x2000);
  v63 = 0u;
  v64 = 0u;
  memset(v62, 0, sizeof(v62));
  T200UpdaterInfoLog("%s:%d Start", a2, a3, a4, a5, a6, a7, a8, "_commitImageSMCIF", 1637);
  v10 = BC__commitImage();
  if (v10)
  {
    v42 = v10;
    T200UpdaterInfoLog("%s:%d BC__commitImage failed commStatus=0x%X", v11, v12, v13, v14, v15, v16, v17, "_commitImageSMCIF", 1640, v10);
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "commStatus == 0", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1642, 0);
    *(a1 + 8492) = (v42 << 8) | 0x81;
    v43 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    if (v43)
    {
      _commitImageSMCIF_cold_1(v43, v44, v45, v46, v47, v48, v49, v50);
    }

    v41 = 1;
  }

  else
  {
    v61 = 0;
    v60 = 0;
    v18 = _check_update_needed(a1, &v61 + 1, 0, 1, 0, v15, v16, v17);
    if (v18)
    {
      v41 = v18;
      _commitImageSMCIF_cold_2(a1, v18);
    }

    else
    {
      v22 = _check_update_needed(a1, &v61, 1, 1, 0, v19, v20, v21);
      if (v22)
      {
        v41 = v22;
        _commitImageSMCIF_cold_3(a1, v22);
      }

      else
      {
        v26 = _check_update_needed(a1, &v60, 2, 1, 0, v23, v24, v25);
        if (v26)
        {
          v41 = v26;
          _commitImageSMCIF_cold_4(a1, v26);
        }

        else
        {
          if (v9[289] == 1 && HIBYTE(v61) == 1)
          {
            T200UpdaterInfoLog("%s:%d ERROR:Failed Updating the Firmware ", v27, v28, v29, v30, v31, v32, v33, "_commitImageSMCIF", 1658);
            *(a1 + 8492) = 89;
          }

          if (v9[291] == 1 && v61 == 1)
          {
            T200UpdaterInfoLog("%s:%d ERROR:Failed Updating the Configuration ", v27, v28, v29, v30, v31, v32, v33, "_commitImageSMCIF", 1662);
            *(a1 + 8492) = 88;
          }

          if (v9[290] == 1 && v60)
          {
            T200UpdaterInfoLog("%s:%d ERROR:Failed Updating the DNVD ", v27, v28, v29, v30, v31, v32, v33, "_commitImageSMCIF", 1666);
            *(a1 + 8492) = 87;
          }

          READ_DATA__getVersionInformation(0);
          *(a1 + 8492) = 0;
          T200UpdaterInfoLog("%s:%d End", v34, v35, v36, v37, v38, v39, v40, "_commitImageSMCIF", 1674);
          v41 = 0;
        }
      }
    }
  }

  v9[308] = 1;
  if (*(a1 + 8492))
  {
    WORD2(v63) = 24;
    BC__getInfo(v62, 0x40uLL);
    v51 = *(a1 + 8492) & 0xFFFFFF | (BYTE4(v63) << 24);
    *(a1 + 8492) = v51;
    T200UpdaterInfoLog("%s:%d End  Failed  Error:%d ", v52, v53, v54, v55, v56, v57, v58, "_commitImageSMCIF", 1683, v51);
    if (v9[312] == 1)
    {
      displayVeridianInfoOnFailure();
    }

    return *(a1 + 8492);
  }

  return v41;
}

uint64_t _extract_data_map(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v45 = 0;
  v46 = 0;
  cf = 0;
  T200UpdaterInfoLog("%s:%d start \n", a2, a3, a4, a5, a6, a7, a8, "_extract_data_map", 1823);
  _create_key_payload_Verison(a1, &v46, &v45, &cf, a3, a4);
  v14 = v45;
  v15 = v46;
  if (v46)
  {
    v16 = v45 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    Value = CFDictionaryGetValue(a2, @"FirmwareData");
    if (Value && (v18 = Value, v19 = CFGetTypeID(Value), v19 == CFDataGetTypeID()))
    {
      v20 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v18, 0, 0, 0);
      v21 = v20;
      if (v20 && (v22 = CFGetTypeID(v20), v22 == CFDictionaryGetTypeID()))
      {
        ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
        if (ValueForKeyPathInDict)
        {
          v31 = CFRetain(ValueForKeyPathInDict);
          if (v31)
          {
            v32 = v31;
            if (*a5)
            {
              CFRelease(*a5);
              *a5 = 0;
            }

            Length = CFDataGetLength(v32);
            *a6 = Length;
            if (Length > 0x40000)
            {
              _extract_data_map_cold_2();
              v42 = 128;
            }

            else
            {
              v34 = calloc(*&Length & 0x7FFFFLL, 1uLL);
              *a5 = v34;
              if (v34)
              {
                bzero(v34, *&Length & 0x7FFFFLL);
                v47.length = *a6;
                v47.location = 0;
                CFDataGetBytes(v32, v47, *a5);
                T200UpdaterInfoLog("%s:%d end \n", v35, v36, v37, v38, v39, v40, v41, "_extract_data_map", 1856);
                v42 = 0;
              }

              else
              {
                _extract_data_map_cold_1();
                v42 = 72;
              }
            }

            CFRelease(v32);
            goto LABEL_19;
          }
        }

        T200UpdaterInfoLog("%s:%d This hardware configuration doesn't exist in FirmwareMap. \n", v24, v25, v26, v27, v28, v29, v30, "_extract_data_map", 1839);
        T200CFShow_0(v15);
        T200CFShow_0(v21);
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "firmwareDataRef", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1843, 0);
      }

      else
      {
        _extract_data_map_cold_3();
      }
    }

    else
    {
      _extract_data_map_cold_4();
      v21 = 0;
    }

    v42 = 31;
LABEL_19:
    CFRelease(v15);
    goto LABEL_20;
  }

  fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "keyFwPayload!=NULL && keyFwVersion!=NULL", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1826, 0);
  v21 = 0;
  v42 = 31;
  if (v15)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v42;
}

uint64_t _create_key_payload_Verison(uint64_t result, CFStringRef *a2, CFStringRef *a3, CFStringRef *a4, uint64_t a5, uint64_t a6)
{
  switch(result)
  {
    case 2:
      v26 = *MEMORY[0x29EDB8ED8];
      *a2 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", a6, @"chemistry", a5, @"dnvd", @"payload");
      *a3 = CFStringCreateWithFormat(v26, 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", a6, @"chemistry", a5, @"dnvd", @"version");
      *a4 = CFStringCreateWithFormat(v26, 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", a6, @"chemistry", a5, @"dnvd", @"set_id");
      return T200UpdaterInfoLog("%s:%d Update type kT200UpdateTypeDNVD \n", v27, v28, v29, v30, v31, v32, v33, "_create_key_payload_Verison", 1710);
    case 1:
      v18 = *MEMORY[0x29EDB8ED8];
      *a2 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", a6, @"chemistry", a5, @"configuration", @"payload");
      *a3 = CFStringCreateWithFormat(v18, 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", a6, @"chemistry", a5, @"configuration", @"version");
      *a4 = CFStringCreateWithFormat(v18, 0, @"%@.%@.%@.%@.%@.%@", @"hw_version", a6, @"chemistry", a5, @"configuration", @"set_id");
      return T200UpdaterInfoLog("%s:%d Update type kT200UpdateTypeConfiguration \n", v19, v20, v21, v22, v23, v24, v25, "_create_key_payload_Verison", 1704);
    case 0:
      v10 = *MEMORY[0x29EDB8ED8];
      *a2 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@.%@.%@.%@", @"hw_version", a6, @"firmware", @"payload");
      *a3 = CFStringCreateWithFormat(v10, 0, @"%@.%@.%@.%@", @"hw_version", a6, @"firmware", @"version");
      *a4 = 0;
      return T200UpdaterInfoLog("%s:%d Update type kT200UpdateTypeFirmware \n", v11, v12, v13, v14, v15, v16, v17, "_create_key_payload_Verison", 1697);
  }

  return result;
}

const __CFDictionary *T200CreateDictionaryRemovingKeyPath(const __CFAllocator *a1, const __CFDictionary *a2, const __CFString *a3)
{
  v3 = a2;
  if (a2)
  {
    if (a3)
    {
      location = CFStringFind(a3, @".", 0).location;
      if (location == -1)
      {
        Count = CFDictionaryGetCount(v3);
        MutableCopy = CFDictionaryCreateMutableCopy(a1, Count, v3);
        if (MutableCopy)
        {
          v21 = MutableCopy;
          CFDictionaryRemoveValue(MutableCopy, a3);
          v22 = CFRetain(v21);
          CFRelease(v21);
          return v22;
        }

        T200CreateDictionaryRemovingKeyPath_cold_6();
      }

      else
      {
        v7 = location;
        v8 = location + 1;
        v27.length = CFStringGetLength(a3) - (location + 1);
        v27.location = v8;
        v9 = CFStringCreateWithSubstring(a1, a3, v27);
        if (v9)
        {
          v10 = v9;
          v28.location = 0;
          v28.length = v7;
          v11 = CFStringCreateWithSubstring(a1, a3, v28);
          if (v11)
          {
            v12 = v11;
            Value = CFDictionaryGetValue(v3, v11);
            if (Value)
            {
              v14 = Value;
              v15 = CFGetTypeID(Value);
              if (v15 == CFDictionaryGetTypeID())
              {
                v16 = CFDictionaryCreateMutableCopy(a1, 0, v14);
                DictionaryRemovingKeyPath = T200CreateDictionaryRemovingKeyPath(a1, v16, v10);
                v18 = CFDictionaryCreateMutableCopy(a1, 0, v3);
                v3 = v18;
                if (v18)
                {
                  CFDictionarySetValue(v18, v12, DictionaryRemovingKeyPath);
                }

                else
                {
                  T200CreateDictionaryRemovingKeyPath_cold_2();
                }

                goto LABEL_15;
              }

              T200CreateDictionaryRemovingKeyPath_cold_1(v12);
            }

            else
            {
              v24 = CFDictionaryGetCount(v3);
              v25 = CFDictionaryCreateMutableCopy(a1, v24, v3);
              if (v25)
              {
                v26 = v25;
                v3 = CFRetain(v25);
                CFRelease(v26);
LABEL_14:
                v16 = 0;
                DictionaryRemovingKeyPath = 0;
LABEL_15:
                CFRelease(v10);
                CFRelease(v12);
                if (v16)
                {
                  CFRelease(v16);
                }

                if (DictionaryRemovingKeyPath)
                {
                  CFRelease(DictionaryRemovingKeyPath);
                }

                return v3;
              }

              T200CreateDictionaryRemovingKeyPath_cold_3();
            }

            v3 = 0;
            goto LABEL_14;
          }

          T200CreateDictionaryRemovingKeyPath_cold_4(v10);
        }

        else
        {
          T200CreateDictionaryRemovingKeyPath_cold_5();
        }
      }
    }

    else
    {
      T200CreateDictionaryRemovingKeyPath_cold_7();
    }

    return 0;
  }

  else
  {
    T200CreateDictionaryRemovingKeyPath_cold_8();
  }

  return v3;
}

uint64_t _T200VerifySignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v20 = *MEMORY[0x29EDCA608];
  v8 = MEMORY[0x29C2B76C0]();
  MEMORY[0x2A1C7C4A8](v8, v9, v10, v11, v12, v13, v14, v15);
  if (!a2)
  {
    _T200VerifySignature_cold_7();
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    _T200VerifySignature_cold_6();
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    _T200VerifySignature_cold_5();
    return 0xFFFFFFFFLL;
  }

  if (_T200CopyDigest(a2, v5, v19))
  {
    _T200VerifySignature_cold_1();
    return 0xFFFFFFFFLL;
  }

  v16 = ccec_raw_import_pub();
  if (v16)
  {
    v17 = v16;
    _T200VerifySignature_cold_2();
  }

  else
  {
    v17 = ccec_verify_composite();
    _T200VerifySignature_cold_3();
  }

  return v17;
}

uint64_t _T200VerifyDigest(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v8[4] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    _T200VerifyDigest_cold_4();
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    _T200VerifyDigest_cold_3();
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    _T200VerifyDigest_cold_2();
    return 0xFFFFFFFFLL;
  }

  if (_T200CopyDigest(a1, a2, v8))
  {
    _T200VerifyDigest_cold_1();
    return 0xFFFFFFFFLL;
  }

  v4 = bswap64(*a3);
  v5 = bswap64(v8[0]);
  if (v4 == v5)
  {
    v4 = bswap64(a3[1]);
    v5 = bswap64(v8[1]);
    if (v4 == v5)
    {
      v4 = bswap64(a3[2]);
      v5 = bswap64(v8[2]);
      if (v4 == v5)
      {
        v4 = bswap64(a3[3]);
        v5 = bswap64(v8[3]);
        if (v4 == v5)
        {
          return 0;
        }
      }
    }
  }

  if (v4 < v5)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  _T200PrintDigest("Actual   :", v8);
  _T200PrintDigest("Expected :", a3);
  fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "ret == 0", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 2499, 0);
  return v6;
}

uint64_t _T200CopyDigest(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    _T200CopyDigest_cold_3();
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    _T200CopyDigest_cold_2();
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    _T200CopyDigest_cold_1();
    return 0xFFFFFFFFLL;
  }

  ccdigest();
  return 0;
}

uint64_t _T200PrintDigest(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (result && a2)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      v5 += snprintf(&v13[v5], 256 - v5, "%02X", *(a2 + v4++));
    }

    while (v4 != 32);
    return T200UpdaterInfoLog(" Digest: %s %s \n", v6, v7, v8, v9, v10, v11, v12, v3, v13);
  }

  return result;
}

unsigned __int8 *_send_bin_retry(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a3;
  v9 = a1;
  v10 = 0;
  v72 = *MEMORY[0x29EDCA608];
  v11 = a1 + 0x2000;
  v12 = a1 + 8482;
  v67 = 0u;
  v68 = 0u;
  v58 = a1 + 8483;
  v65 = 0u;
  v66 = 0u;
  v13 = a1 + 8481;
  v60 = a1 + 8482;
  LOWORD(a1) = 5;
  do
  {
    if (v10)
    {
      T200UpdaterInfoLog("%s:%d _send_bin failed, commStatus=0x%X, Retry...%d \n", a2, a3, a4, a5, a6, a7, a8, "_send_bin_retry", 1375, a1, v10);
      sleep(3u);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      WORD2(v67) = 24;
      if (!BC__getInfo(&v65, 0x40uLL))
      {
        T200UpdaterInfoLog("%s:%d Updater Status (%d) before retry. \n", a2, a3, a4, a5, a6, a7, a8, "_send_bin_retry", 1381, WORD2(v67));
        if (a2)
        {
          if (a2 == 1)
          {
            if (__PAIR64__(*(&v68 + 2), DWORD1(v65)) != *(v9 + 8520))
            {
LABEL_6:
              T200UpdaterInfoLog("%s:%d start Send Binary Image to Update Configuration SMC API, update %d \n", a2, a3, a4, a5, a6, a7, a8, "_send_bin", 1426, *v58);
              v14 = calloc(1uLL, *(v9 + 8456) + 80);
              if (!v14)
              {
                _send_bin_retry_cold_2();
                v21 = *&v69[0];
                goto LABEL_38;
              }

              v21 = v14;
              v22 = *(v9 + 8456);
              v14[8] = v22;
              v23 = *(v9 + 80);
              v14[9] = 4;
              v24 = v58;
              goto LABEL_19;
            }

            T200UpdaterInfoLog("%s:%d Success. Valid Configuration Version (%u) found on HW. Skip Retry. \n", a2, a3, a4, a5, a6, a7, a8, "_send_bin_retry", 1388, DWORD1(v65));
          }

          else
          {
            if (__PAIR64__(*(&v68 + 10), HIDWORD(v65)) != *(v9 + 8512))
            {
              goto LABEL_17;
            }

            T200UpdaterInfoLog("%s:%d Success. Valid DNVD2 Version (%u) found on HW. Skip Retry. \n", a2, a3, a4, a5, a6, a7, a8, "_send_bin_retry", 1383, HIDWORD(v65));
          }
        }

        else
        {
          if (v65 != *(v9 + 8528))
          {
LABEL_13:
            T200UpdaterInfoLog("%s:%d start Send Binary Image to Update Firmware SMC API, update %d \n", a2, a3, a4, a5, a6, a7, a8, "_send_bin", 1417, *v13);
            v25 = calloc(1uLL, *(v9 + 8448) + 80);
            if (!v25)
            {
              _send_bin_retry_cold_5();
              goto LABEL_50;
            }

            v21 = v25;
            v25[9] = 5;
            v22 = *(v9 + 8448);
            v25[8] = v22;
            v23 = *(v9 + 40);
            v24 = v13;
            goto LABEL_19;
          }

          T200UpdaterInfoLog("%s:%d Success. Valid Firmware Version (%u) found on HW. Skip Retry. \n", a2, a3, a4, a5, a6, a7, a8, "_send_bin_retry", 1393, v65);
        }

        a1 = 0;
        *(v9 + 8492) = 0;
        return a1;
      }
    }

    if (a2 != 2)
    {
      if (a2 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_17:
    T200UpdaterInfoLog("%s:%d start Send Binary Image to Update DNVD SMC API, update %d \n", a2, a3, a4, a5, a6, a7, a8, "_send_bin", 1435, *v12);
    v26 = calloc(1uLL, *(v9 + 8452) + 80);
    if (!v26)
    {
      _send_bin_retry_cold_1();
      goto LABEL_50;
    }

    v24 = v12;
    v21 = v26;
    v22 = *(v9 + 8452);
    v26[8] = v22;
    v23 = *(v9 + 72);
    v26[9] = 3;
LABEL_19:
    if (!v23)
    {
      _send_bin_retry_cold_4((v9 + 8492), &v63, v64, v21, v69);
LABEL_50:
      v21 = *&v69[0];
      goto LABEL_38;
    }

    if (!*v24)
    {
      T200UpdaterInfoLog("%s:%d Skipping update \n", v23, v15, v16, v17, v18, v19, v20, "_send_bin", 1455);
      goto LABEL_38;
    }

    memcpy(v21 + 10, v23, v22);
    T200UpdaterInfoLog("%s:%d image len:%u \n", v27, v28, v29, v30, v31, v32, v33, "_send_bin", 1459, v22);
    v34 = BC__sendImage(v21);
    v42 = v34;
    if (v34)
    {
      T200UpdaterInfoLog("%s:%d BC__sendImage failed commStatus=0x%X \n", v35, v36, v37, v38, v39, v40, v41, "_send_bin", 1464, v34);
      fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "commStatus == 0", &unk_299F859BB, "/Library/Caches/com.apple.xbs/Sources/VeridianDylibs/T200Updater/T200Updater.c", 1466, 0);
      *(v9 + 8492) = (v42 << 8) | 0x37;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        _send_bin_retry_cold_3(buf, &buf[1]);
      }

      goto LABEL_38;
    }

    v70 = 0u;
    v71 = 0u;
    memset(v69, 0, sizeof(v69));
    WORD2(v70) = 24;
    while (1)
    {
      sleep(5u);
      if (!BC__getInfo(v69, 0x40uLL))
      {
        break;
      }

      T200UpdaterInfoLog("%s:%d Failed getting info try %d \n", v43, v44, v45, v46, v47, v48, v49, "_waitTillTargetUpdaterNotBusy_SMCAPI", 1076, v42);
LABEL_26:
      v42 = (v42 + 1);
      if (v42 == 20)
      {
        goto LABEL_32;
      }
    }

    if (WORD2(v70) == 2)
    {
      goto LABEL_26;
    }

    T200UpdaterInfoLog("%s:%d Busy loop end with status %d \n", v43, v44, v45, v46, v47, v48, v49, "_waitTillTargetUpdaterNotBusy_SMCAPI", 1081, WORD2(v70));
LABEL_32:
    v57 = WORD2(v70);
    T200UpdaterInfoLog("%s:%d sendbin status  %d \n", v43, v44, v45, v46, v47, v48, v49, "_send_bin", 1470, WORD2(v70));
    if (v11[313])
    {
      if (v57 != 1)
      {
        *(v9 + 8492) = 55;
        T200UpdaterInfoLog("%s:%d Failed to send bin with status %d \n", v50, v51, v52, v53, v54, v55, v56, "_send_bin", 1480, v57);
      }
    }

    else if (v57 && v57 != 17)
    {
      *(v9 + 8492) = 55;
      T200UpdaterInfoLog("%s:%d Failed to send bin with status %d \n", v50, v51, v52, v53, v54, v55, v56, "_send_bin", 1475, v57);
    }

LABEL_38:
    T200UpdaterInfoLog("%s:%d End Send Binary Image %d  \n", v50, v51, v52, v53, v54, v55, v56, "_send_bin", 1485, a2);
    if (*(v9 + 8492))
    {
      T200UpdaterInfoLog("%s:%d End Send Binary Image %d  Faild targetUpdaterError=%d \n", a2, a3, a4, a5, a6, a7, a8, "_send_bin", 1487, a2, *(v9 + 8492));
    }

    if (v21)
    {
      free(v21);
    }

    a1 = *(v9 + 8492);
    if (v10 >= v61)
    {
      break;
    }

    if (!*(v9 + 8492))
    {
      break;
    }

    v10 = (v10 + 1);
    v12 = v60;
  }

  while (!v11[312]);
  return a1;
}

uint64_t displayVeridianInfoOnFailure()
{
  v122 = *MEMORY[0x29EDCA608];
  v119 = 99;
  v118 = 99;
  v121 = 0;
  v120 = 0;
  v117 = 0;
  VersionInformation = READ_DATA__getVersionInformation(1);
  if (VersionInformation || (VersionInformation = BC__receive(64, 4u, &v117), VersionInformation) || (VersionInformation = READ_DATA__getVIQTReadings(), VersionInformation) || (VersionInformation = BC__receive(80, 2u, &v119), VersionInformation) || (VersionInformation = BC__receive(94, 2u, &v118), VersionInformation) || (VersionInformation = BC__receive(158, 0xBu, &v120), VersionInformation))
  {
    v8 = VersionInformation;
    T200UpdaterInfoLog("<VeridianInternalInfo \n", v1, v2, v3, v4, v5, v6, v7);
    T200UpdaterInfoLog("\t<ServiceType>Read Data</ServiceType> \n", v9, v10, v11, v12, v13, v14, v15);
    v116 = v8;
    v23 = "\t<CommunicationStatus>%d</CommunicationStatus> \n";
  }

  else
  {
    T200UpdaterInfoLog("<VeridianInternalInfo> \n", v1, v2, v3, v4, v5, v6, v7);
    T200UpdaterInfoLog("\t<ServiceType>Read Data</ServiceType> \n", v32, v33, v34, v35, v36, v37, v38);
    T200UpdaterInfoLog("\t<CommunicationStatus>%d</CommunicationStatus> \n", v39, v40, v41, v42, v43, v44, v45, 0);
    T200UpdaterInfoLog("\t<TimeStamp>0x%x</TimeStamp> \n", v46, v47, v48, v49, v50, v51, v52, v117);
    T200UpdaterInfoLog("\t<UpdaterStatus>%u</UpdaterStatus> \n", v53, v54, v55, v56, v57, v58, v59, v119);
    T200UpdaterInfoLog("\t<UpdaterState>%u</UpdaterState> \n", v60, v61, v62, v63, v64, v65, v66, v118);
    T200UpdaterInfoLog("\t<ResetCount> \n", v67, v68, v69, v70, v71, v72, v73);
    T200UpdaterInfoLog("\t\t<HWReset>%u</HWReset> \n", v74, v75, v76, v77, v78, v79, v80, v120);
    T200UpdaterInfoLog("\t\t<WDTReset>%u</WDTReset> \n", v81, v82, v83, v84, v85, v86, v87, WORD1(v120));
    T200UpdaterInfoLog("\t\t<COMMReset>%u</COMMReset> \n", v88, v89, v90, v91, v92, v93, v94, WORD2(v120));
    T200UpdaterInfoLog("\t\t<SWReset>%u</SWReset> \n", v95, v96, v97, v98, v99, v100, v101, HIWORD(v120));
    T200UpdaterInfoLog("\t\t<UPDReset>%u</UPDReset> \n", v102, v103, v104, v105, v106, v107, v108, v121);
    T200UpdaterInfoLog("\t\t<ResetReason>%u</ResetReason> \n", v109, v110, v111, v112, v113, v114, v115, HIWORD(v121));
    v23 = "\t</ResetCount> \n";
  }

  T200UpdaterInfoLog(v23, v16, v17, v18, v19, v20, v21, v22, v116);
  return T200UpdaterInfoLog("</VeridianInternalInfo> \n", v24, v25, v26, v27, v28, v29, v30);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, v4, 2u);
}

CFErrorRef OUTLINED_FUNCTION_10(char *a1, uint64_t a2, const char *a3)
{

  return createCFError(a1, v3, a3, v3);
}

uint64_t computeFirmwareDigest(const void *a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  T200RestoreInfoLog("%s:%d Start\n", a2, a3, a4, a5, a6, a7, a8, "computeFirmwareDigest", 36);
  if (a2 >> 20 > 4)
  {
    return 2;
  }

  memset(&c, 0, sizeof(c));
  v12 = CC_SHA256_Init(&c);
  T200RestoreInfoLog("%s:%d CC_SHA256_Init %d\n", v13, v14, v15, v16, v17, v18, v19, "computeFirmwareDigest", 45, v12);
  v20 = CC_SHA256_Update(&c, a1, a2);
  T200RestoreInfoLog("%s:%d CC_SHA256_Update %d\n", v21, v22, v23, v24, v25, v26, v27, "computeFirmwareDigest", 47, v20);
  v11 = CC_SHA256_Final(a3, &c);
  T200RestoreInfoLog("%s:%d CC_SHA256_Final %d\n", v28, v29, v30, v31, v32, v33, v34, "computeFirmwareDigest", 49, v11);
  return v11;
}

CFErrorRef createCFError(char *cStr, unsigned int a2, const char *a3, uint64_t a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  v8 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u);
  if (!v8)
  {
    createCFError_cold_3();
    return 0;
  }

  v9 = v8;
  if (a3 || a4)
  {
    if (!a3)
    {
      v12 = CFStringCreateWithFormat(v7, 0, @"%@; %u", v8, a4);
      goto LABEL_9;
    }

    v11 = CFStringCreateWithCString(v7, a3, 0x8000100u);
    if (v11)
    {
      a3 = v11;
      v12 = CFStringCreateWithFormat(v7, 0, @"%@; %@: %u", v9, v11, a4);
LABEL_9:
      v10 = v12;
      goto LABEL_10;
    }

    createCFError_cold_1(v9);
    return 0;
  }

  v10 = CFStringCreateWithFormat(v7, 0, @"%@", v8);
  a3 = 0;
LABEL_10:
  if (v10)
  {
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB8F28], MEMORY[0x29EDB9020]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F58], v10);
    v14 = CFErrorCreate(v7, @"T200ErrorDomain", a2, Mutable);
    CFRelease(v10);
  }

  else
  {
    createCFError_cold_2();
    Mutable = 0;
    v14 = 0;
  }

  CFRelease(v9);
  if (a3)
  {
    CFRelease(a3);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t CreateDataFromFile(const char *a1, void *a2, _DWORD *a3)
{
  v6 = fopen(a1, "rb");
  if (v6)
  {
    v7 = v6;
    fseek(v6, 0, 2);
    v8 = MEMORY[0x29C2B7750](v7);
    v9 = malloc(v8);
    if (v9)
    {
      v10 = v9;
      rewind(v7);
      if (fread(v10, v8, 1uLL, v7) == 1)
      {
        fclose(v7);
        result = 0;
        *a2 = v10;
        *a3 = v8;
        return result;
      }
    }
  }

  else
  {
    AMSupportLogInternal(3, "CreateDataFromFile", "could not open %s", a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t _retrieveSignature(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _retrieveSignature_cold_2();
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    _retrieveSignature_cold_1();
    return 0xFFFFFFFFLL;
  }

  v10 = 2;
  do
  {
    v11 = v10 - 2;
    v12 = *(a1 + v10++ - 2);
  }

  while (v11 < a2 && v12 != 48);
  if (v11 >= a2)
  {
    T200RestoreInfoLog("%s:%d Could not find the signature =%d\n", a2, a3, a4, a5, a6, a7, a8, "_retrieveSignature", 143, v10 - 3);
    return 5;
  }

  if (v12 != 48)
  {
    return 4;
  }

  if (*(a1 + (v10 - 1)) != 2)
  {
    return 2;
  }

  v14 = *(a1 + v10);
  v15 = *(a1 + (v14 + v10 + 2));
  if (v14 + v15 + 4 != *(a1 + (v10 - 2)))
  {
    return 0xFFFFFFFFLL;
  }

  if (v14 == 33)
  {
    v16 = 5;
  }

  else
  {
    v16 = 4;
  }

  v17 = v16 + v10;
  if (v14 == 33)
  {
    v18 = 32;
  }

  else
  {
    v18 = *(a1 + v10);
  }

  v19 = v17 - 3;
  if (v18 > 0x1F)
  {
    v20 = 0;
  }

  else
  {
    v20 = 32 - v18;
    bzero(a3, 32 - v18);
    if (!v18)
    {
      v21 = 32;
      goto LABEL_29;
    }
  }

  v22 = &a3[v20];
  v23 = v18;
  do
  {
    v24 = *(a1 + v19++);
    *v22++ = v24;
    --v23;
  }

  while (v23);
  if (v18 <= 0x20)
  {
    v25 = 32;
  }

  else
  {
    v25 = v18;
  }

  v21 = v25;
LABEL_29:
  if (*(a1 + v19) != 2)
  {
    return 8;
  }

  if (v15 != *(a1 + v19 + 1))
  {
    return 9;
  }

  if (v15 == 33)
  {
    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

  if (v15 == 33)
  {
    v27 = 32;
  }

  else
  {
    v27 = v15;
  }

  if (v27 > 0x1F)
  {
    goto LABEL_42;
  }

  v28 = v27 - 32;
  do
  {
    a3[v21++] = 0;
  }

  while (!__CFADD__(v28++, 1));
  if (!v27)
  {
    return 0;
  }

LABEL_42:
  v30 = v19 + v26;
  result = 0;
  do
  {
    v31 = *(a1 + v30++);
    a3[v21++] = v31;
    --v27;
  }

  while (v27);
  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v4);
  if (!result)
  {
    if (v4[0] == SLODWORD(v4[0]))
    {
      result = 0;
      *a2 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x29EDCA608];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x29EDCA608];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v12[3] = *MEMORY[0x29EDCA608];
  memset(v12, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x29EDCA608];
  memset(v4, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

CFErrorRef T200UpdaterGetTagsWithLogging_cold_1(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 654, 0);
  result = OUTLINED_FUNCTION_1("Cannot allocate BMUTags");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterGetTagsWithLogging_cold_2(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 671, 0);
  result = OUTLINED_FUNCTION_1("Unable to get kT200TagMeasurementPatch");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterGetTagsWithLogging_cold_3(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 666, 0);
  result = createCFError("DeviceInfo is NULL", 2u, "CFDictionaryGetValue", 0);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterGetTagsWithLogging_cold_4(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 664, 0);
  result = OUTLINED_FUNCTION_1("options is NULL");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterGetTagsWithLogging_cold_5(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v5, v6, v7, 660, 0);
  result = OUTLINED_FUNCTION_3("Cannot allocate memory for tagsInTssResponse", v3, "CFArrayCreateMutable");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterGetTagsWithLogging_cold_6(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v5, v6, v7, 657, 0);
  result = OUTLINED_FUNCTION_3("Cannot allocate memory for tagsInBI", v3, "CFArrayCreateMutable");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterGetTagsWithLogging_cold_7(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v5, v6, v7, 651, 0);
  result = OUTLINED_FUNCTION_3("Cannot allocate memory for outputDict", v3, "CFDictionaryCreateMutable");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_1(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 720, 0);
  result = OUTLINED_FUNCTION_1("Cannot allocate BMUTags");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_2(unsigned __int8 *a1, CFErrorRef *a2)
{
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 587, 0);
  result = createCFError("CreateFileData: AMSupportPlatformFileURLExists returned FALSE", 0x21u, "AMSupportPlatformFileURLExists", *a1);
  *a2 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_3(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 567, 0);
  result = OUTLINED_FUNCTION_2("Fail get the file path ", 3u);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_4(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v5, v6, v7, 563, 0);
  result = OUTLINED_FUNCTION_3("Fail to do AMSupportPlatformCopyURLWithAppendedComponent", v3, "AMSupportPlatformCopyURLWithAppendedComponent");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_5(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 600, 0);
  result = OUTLINED_FUNCTION_2("firmwareData is NULL", 3u);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_6(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 549, 0);
  result = createCFError("Missing HWVersion", 0x14u, "CopyHWVersion", 0);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_7(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 545, 0);
  result = createCFError("Missing ChemistryID", 0x14u, "getChemistryId", 0);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_8(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 541, 0);
  result = OUTLINED_FUNCTION_1("DeviceInfo is NULL");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_9(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 538, 0);
  result = OUTLINED_FUNCTION_2("Missing kT200BuildIdentityPathKey", 0x14u);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_10(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 535, 0);
  result = OUTLINED_FUNCTION_2("Missing kT200BuildIdentityInfoKey", 0x14u);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_11(const __CFString *a1, CFErrorRef *a2)
{
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v7, v8, v9, 532, 0);
  CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  result = OUTLINED_FUNCTION_2(CStringPtr, 0xEu);
  *a2 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_12(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 529, 0);
  result = OUTLINED_FUNCTION_2("Missing kT200OptionBuildIdentity", 0xEu);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_14(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 723, 0);
  result = OUTLINED_FUNCTION_1("Unable to get kT200TagMeasurementPatch");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_15(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 717, 0);
  result = createCFError("Missing device info", 2u, "CFDictionaryGetValue", 0);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCopyFirmwareWithLogging_cold_16(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 714, 0);
  result = OUTLINED_FUNCTION_1("options is NULL");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCreateRequestWithLogging_cold_1(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 772, 0);
  result = OUTLINED_FUNCTION_1("Cannot allocate BMUTags");
  *a1 = result;
  return result;
}

const char *T200UpdaterCreateRequestWithLogging_cold_2()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 467, 0);
  return T200RestoreInfoLog("%s:%d firmwareBytes is NULL\n", v1, v2, v3, v4, v5, v6, v7, "_createMeasurementDict", 467);
}

const char *T200UpdaterCreateRequestWithLogging_cold_3()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 455, 0);
  return T200RestoreInfoLog("%s:%d derDigestData is missing in Firmwaremap.plist\n", v1, v2, v3, v4, v5, v6, v7, "_createMeasurementDict", 455);
}

const char *T200UpdaterCreateRequestWithLogging_cold_4()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 450, 0);
  return T200RestoreInfoLog("%s:%d fwData is NULL\n", v1, v2, v3, v4, v5, v6, v7, "_createMeasurementDict", 450);
}

CFErrorRef T200UpdaterCreateRequestWithLogging_cold_19(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 795, 0);
  result = OUTLINED_FUNCTION_1("FirmwareData is NULL in input options");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCreateRequestWithLogging_cold_21(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 769, 0);
  result = OUTLINED_FUNCTION_1("Cannot get DeviceInfo");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCreateRequestWithLogging_cold_22(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 763, 0);
  result = OUTLINED_FUNCTION_1("BuildIdentity is NULL in input options");
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterCreateRequestWithLogging_cold_23(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 757, 0);
  result = OUTLINED_FUNCTION_1("options is NULL");
  *a1 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  fprintf(v3, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v5, v6, v7, 430, 0);
  result = createCFError("T200: Get T200 Info Failed", *(v2 + 8492), "_getInfoSMCIF", v1);
  *v0 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  fprintf(v3, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v5, v6, v7, 446, 0);
  result = createCFError("T200: Get T200 Info Failed", *(v2 + 8492), "_getInfoSMCIF", v1);
  *v0 = result;
  return result;
}

uint64_t _T200UpdaterExecCommand_cold_3()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 2072, 0);
  return T200UpdaterInfoLog("%s:%d Failed getting the kT200OptionOptions \n", v1, v2, v3, v4, v5, v6, v7, "_entitlementExist", 2072);
}

uint64_t _T200UpdaterExecCommand_cold_4()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 2066, 0);
  return T200UpdaterInfoLog("%s:%d fOptions is NULL \n", v1, v2, v3, v4, v5, v6, v7, "_entitlementExist", 2066);
}

void _T200UpdaterExecCommand_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 1778, 0);
  CFRelease(v1);

  CFRelease(v0);
}

void _T200UpdaterExecCommand_cold_10(const void *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 1731, 0);

  CFRelease(a1);
}

void _T200UpdaterExecCommand_cold_15(const void *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 1778, 0);

  CFRelease(a1);
}

uint64_t _T200UpdaterExecCommand_cold_17(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v11, v12, v13, 2121, 0);
  return T200UpdaterInfoLog("%s:%d cell_ID %d not supported. Error: %d \n", v3, v4, v5, v6, v7, v8, v9, "_getFirmware", 2140, a1, 68);
}

CFErrorRef _T200UpdaterExecCommand_cold_19()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  fprintf(v3, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 460, 0);
  *(v2 + 8492) = v1;
  result = OUTLINED_FUNCTION_10("T200: Check Update Needed Failed for Firmware Image", v4, "_check_update_needed");
  *v0 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_20()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  fprintf(v3, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 463, 0);
  *(v2 + 8492) = v1;
  result = OUTLINED_FUNCTION_10("T200: Check Update Needed Failed for Configuration Image", v4, "_check_update_needed");
  *v0 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_21()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  fprintf(v3, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 466, 0);
  *(v2 + 8492) = v1;
  result = OUTLINED_FUNCTION_10("T200: Check Update Needed Failed for DNVD Image", v4, "_check_update_needed");
  *v0 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_22()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  fprintf(v3, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v5, v6, v7, 512, 0);
  result = createCFError("T200: Commit Image Failed", *(v2 + 8492), "_commitImageSMCIF", v1);
  *v0 = result;
  return result;
}

uint64_t _T200UpdaterExecCommand_cold_24(char a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v11, v12, v13, 852, 0);
  T200UpdaterInfoLog("%s:%d Error: CFStringCreateWithFormat failed. \n", v3, v4, v5, v6, v7, v8, v9, "createStrippedConfigDNVD", 852);
  return a1 & 1;
}

uint64_t _T200UpdaterExecCommand_cold_25()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 845, 0);
  return T200UpdaterInfoLog("%s:%d Error: fwPlist is NULL. \n", v1, v2, v3, v4, v5, v6, v7, "createStrippedConfigDNVD", 845);
}

uint64_t _T200UpdaterExecCommand_cold_26()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 898, 0);
  return T200UpdaterInfoLog("%s:%d Error: CFStringCreateWithFormat failed.\n", v1, v2, v3, v4, v5, v6, v7, "copyStrippedFirmwarePlist", 898);
}

uint64_t _T200UpdaterExecCommand_cold_27()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 894, 0);
  return T200UpdaterInfoLog("%s:%d Error: T200CreateDictionaryRemovingKeyPath failed. \n", v1, v2, v3, v4, v5, v6, v7, "copyStrippedFirmwarePlist", 894);
}

uint64_t _T200UpdaterExecCommand_cold_28()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 891, 0);
  return T200UpdaterInfoLog("%s:%d Error: CFStringCreateWithFormat failed. \n", v1, v2, v3, v4, v5, v6, v7, "copyStrippedFirmwarePlist", 891);
}

uint64_t _T200UpdaterExecCommand_cold_29()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 887, 0);
  return T200UpdaterInfoLog("%s:%d Error: CFPropertyListCreateWithData failed. \n", v1, v2, v3, v4, v5, v6, v7, "copyStrippedFirmwarePlist", 887);
}

CFErrorRef _T200UpdaterExecCommand_cold_30(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 705, 0);
  result = createCFError("Error: fOutput is NULL.", 0xCu, "storeFirmwarePlist", 705);
  *a1 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_31(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 698, 0);
  result = createCFError("Error: mountURL is NULL.", 0xCu, "storeFirmwarePlist", 698);
  *a1 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_32(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 692, 0);
  result = createCFError("Error: input is NULL.", 0xCu, "storeFirmwarePlist", 692);
  *a1 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_33(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 687, 0);
  result = createCFError("Error: kT200OptionOptions is NULL.", 0xCu, "storeFirmwarePlist", 687);
  *a1 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_34(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 684, 0);
  result = createCFError("Error: fOptions is NULL.", 0xCu, "storeFirmwarePlist", 684);
  *a1 = result;
  return result;
}

CFTypeRef _T200UpdaterExecCommand_cold_35(uint64_t a1, const void *a2, void *a3)
{
  OUTLINED_FUNCTION_0();
  fprintf(v6, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v8, v9, v10, 484, 0);
  *(a1 + 8492) = 91;
  if (a2)
  {
    result = CFRetain(a2);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t _T200UpdaterExecCommand_cold_37(int a1)
{
  v6 = a1;
  OUTLINED_FUNCTION_8();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 2620, v6);
}

uint64_t _T200UpdaterExecCommand_cold_38(int a1)
{
  v6 = a1;
  OUTLINED_FUNCTION_8();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 2626, v6);
}

uint64_t _T200UpdaterExecCommand_cold_39(int a1)
{
  v6 = a1;
  OUTLINED_FUNCTION_8();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 2561, v6);
}

uint64_t _T200UpdaterExecCommand_cold_40(int a1)
{
  v6 = a1;
  OUTLINED_FUNCTION_8();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 2565, v6);
}

uint64_t _T200UpdaterExecCommand_cold_42(int a1)
{
  v6 = a1;
  OUTLINED_FUNCTION_8();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 2577, v6);
}

CFErrorRef _T200UpdaterExecCommand_cold_90()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  fprintf(v3, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 491, 0);
  *(v2 + 8492) = v1;
  result = OUTLINED_FUNCTION_10("T200: Parse Tatsu response Failed", v4, "_parseTatsuResponse");
  *v0 = result;
  return result;
}

void _T200UpdaterExecCommand_cold_92(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v8, v9, v10, 1347, 0);
  *(a1 + 8492) = 73;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void _T200UpdaterExecCommand_cold_93()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 1549, 0);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }

  OUTLINED_FUNCTION_2_0();
}

uint64_t _T200UpdaterExecCommand_cold_95(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 1245, 0);
  *a1 = 75;
  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  return 0;
}

void _T200UpdaterExecCommand_cold_96()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 1556, 0);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }

  OUTLINED_FUNCTION_2_0();
}

uint64_t _T200UpdaterExecCommand_cold_97(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 1331, 0);
  *a1 = 57;
  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
  return 0;
}

uint64_t _T200UpdaterExecCommand_cold_98(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 1332, 0);
  *a1 = 67;
  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
  return 0;
}

uint64_t _T200UpdaterExecCommand_cold_99(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 1313, 0);
  *a1 = 74;
  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  return 0;
}

uint64_t _T200UpdaterExecCommand_cold_101(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 1277, 0);
  *a1 = 74;
  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  return 0;
}

void _T200UpdaterExecCommand_cold_102()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 1561, 0);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }

  OUTLINED_FUNCTION_2_0();
}

void _T200UpdaterExecCommand_cold_103()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 1570, 0);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }

  OUTLINED_FUNCTION_2_0();
}

void _T200UpdaterExecCommand_cold_104()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 1573, 0);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }

  OUTLINED_FUNCTION_2_0();
}

void _T200UpdaterExecCommand_cold_105()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 1576, 0);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }

  OUTLINED_FUNCTION_2_0();
}

uint64_t _T200UpdaterExecCommand_cold_106(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v13, v14, v15, 1586, 0);
  *a2 = a1;
  return T200UpdaterInfoLog("T200: Check Update Needed Failed for Firmware Image %d \n", v5, v6, v7, v8, v9, v10, v11, a1);
}

uint64_t _T200UpdaterExecCommand_cold_107(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v13, v14, v15, 1589, 0);
  *a2 = a1;
  return T200UpdaterInfoLog("T200: Check Update Needed Failed for Configuration Image %d \n", v5, v6, v7, v8, v9, v10, v11, a1);
}

uint64_t _T200UpdaterExecCommand_cold_108(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v13, v14, v15, 1592, 0);
  *a2 = a1;
  return T200UpdaterInfoLog("T200: Check Update Needed Failed for DNVD Image %d \n", v5, v6, v7, v8, v9, v10, v11, a1);
}

CFErrorRef _T200UpdaterExecCommand_cold_109()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  fprintf(v3, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v5, v6, v7, 495, 0);
  result = createCFError("T200: Program Image(s) Failed", *v2, "_programImageSMCIF", v1);
  *v0 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_110()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  fprintf(v3, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v5, v6, v7, 501, 0);
  result = createCFError("T200: Commit Image Failed", *v2, "_commitImageSMCIF", v1);
  *v0 = result;
  return result;
}

uint64_t _T200UpdaterExecCommand_cold_111()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 2103, 0);
  return T200UpdaterInfoLog("%s:%d End with error %d \n", v1, v2, v3, v4, v5, v6, v7, "_getFirmware", 2142, 85);
}

CFErrorRef _T200UpdaterExecCommand_cold_112()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 440, 0);
  *(v1 + 8492) = 70;
  result = createCFError("T200: Invalid Updater Data", 0x46u, "CFDictionaryCreateMutable", 0);
  *v0 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_113()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 425, 0);
  *(v1 + 8492) = 70;
  result = createCFError("T200: Invalid Updater Data", 0x46u, "CFDictionaryCreateMutable", 0);
  *v0 = result;
  return result;
}

CFErrorRef _T200UpdaterExecCommand_cold_114(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 408, 0);
  result = createCFError("T200: Invalid Updater Data ", 0x45u, 0, 0);
  *a1 = result;
  return result;
}

uint64_t _T200UpdaterExecCommand_cold_115()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 406, 0);
  return T200UpdaterInfoLog("%s:%d CFErrorRef is null", v1, v2, v3, v4, v5, v6, v7, "_T200UpdaterExecCommand", 406);
}

uint64_t T200UpdaterIsDone_cold_1()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 587, 0);
  return T200UpdaterInfoLog("%s:%d Failed getting the kT200OptionOptions \n", v1, v2, v3, v4, v5, v6, v7, "T200UpdaterIsDone", 587);
}

uint64_t T200UpdaterIsDone_cold_2()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 581, 0);
  return T200UpdaterInfoLog("%s:%d fOptions getting the kT200OptionOptions \n", v1, v2, v3, v4, v5, v6, v7, "T200UpdaterIsDone", 581);
}

CFErrorRef isVeridianUpdateRequired_cold_1(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 959, 0);
  result = createCFError("Error: Failed to get Firmware data.", 0x5Cu, "copyRetrievedFirmwarePlist", 959);
  *a1 = result;
  return result;
}

CFErrorRef isVeridianUpdateRequired_cold_2(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 956, 0);
  result = createCFError("Error: firmwareURL doesn't exist.", 0x5Cu, "copyRetrievedFirmwarePlist", 956);
  *a1 = result;
  return result;
}

CFErrorRef isVeridianUpdateRequired_cold_3(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 951, 0);
  result = createCFError("Error: mountURL is NULL.", 0x5Cu, "copyRetrievedFirmwarePlist", 951);
  *a1 = result;
  return result;
}

CFErrorRef isVeridianUpdateRequired_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 622, 0);
  result = createCFError("Error: Failed to get Veridian Info.", v1, "isVeridianUpdateRequired", 622);
  *v0 = result;
  return result;
}

uint64_t isVeridianUpdateRequired_cold_5()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 625, 0);
  return T200UpdaterInfoLog("%s:%d Error: Failed to performVersionCheck for FW. \n", v1, v2, v3, v4, v5, v6, v7, "isVeridianUpdateRequired", 625);
}

uint64_t isVeridianUpdateRequired_cold_6()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 627, 0);
  return T200UpdaterInfoLog("%s:%d Error: Failed to performVersionCheck for Config. \n", v1, v2, v3, v4, v5, v6, v7, "isVeridianUpdateRequired", 627);
}

uint64_t isVeridianUpdateRequired_cold_7()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 629, 0);
  return T200UpdaterInfoLog("%s:%d Error: Failed to performVersionCheck for DNVD. \n", v1, v2, v3, v4, v5, v6, v7, "isVeridianUpdateRequired", 629);
}

uint64_t isVeridianUpdateRequired_cold_8()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 619, 0);
  return T200UpdaterInfoLog("%s:%d Error: Failed to retrieve Firmware PLIST. \n", v1, v2, v3, v4, v5, v6, v7, "isVeridianUpdateRequired", 619);
}

CFErrorRef isVeridianUpdateRequired_cold_9(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 616, 0);
  result = createCFError("Error: restoreSystemPartition is NULL.", 0xCu, "isVeridianUpdateRequired", 616);
  *a1 = result;
  return result;
}

uint64_t isVeridianUpdateRequired_cold_10()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 614, 0);
  return T200UpdaterInfoLog("%s:%d Error: CFErrorRef is NULL. \n", v1, v2, v3, v4, v5, v6, v7, "isVeridianUpdateRequired", 614);
}

void performVersionCheck_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 991, 0);
  *v1 = createCFError("Error: Failed to get HW Version.", 0x5Du, "performVersionCheck", 991);
  CFRelease(v0);
}

CFErrorRef performVersionCheck_cold_2(CFErrorRef *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 987, 0);
  result = createCFError("Error: Failed to get chem ID.", 0x5Du, "performVersionCheck", 987);
  *a1 = result;
  return result;
}

CFErrorRef T200UpdaterIsTwoStageSupported_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 654, 0);
  result = createCFError("Error: Failed to get Veridian Info.", v1, "T200UpdaterIsTwoStageSupported", 654);
  *v0 = result;
  return result;
}

uint64_t T200UpdaterIsTwoStageSupported_cold_2()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 650, 0);
  return T200UpdaterInfoLog("%s:%d Error: CFErrorRef is NULL. \n", v1, v2, v3, v4, v5, v6, v7, "T200UpdaterIsTwoStageSupported", 650);
}

uint64_t _T200GetBMUID_cold_7()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 2906, 0);
  return T200UpdaterInfoLog("%s:%d NumEnabled from IODT %08x \n", v1, v2, v3, v4, v5, v6, v7, "_T200GetNumEnabledBMUFromDT", 2920, 0);
}

uint64_t _T200GetBMUID_cold_8()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 2869, 0);
  return T200UpdaterInfoLog("%s:%d NumSupported from IODT %08x \n", v1, v2, v3, v4, v5, v6, v7, "_T200GetNumSupportedBMUFromDT", 2883, 0);
}

uint64_t _getInfoSMCIF_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  result = fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 1119, 0);
  *(v0 + 8492) = (v1 << 8) | 0x23;
  return result;
}

uint64_t _getInfoSMCIF_cold_8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  result = fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 1151, 0);
  *v0 = (v1 << 8) | 0x5A;
  return result;
}

uint64_t _getInfoSMCIF_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 1185, 0);
  *a1 = 76;
  return result;
}

uint64_t _getInfoSMCIF_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 1181, 0);
  *a1 = 80;
  return result;
}

uint64_t _getInfoSMCIF_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 1175, 0);
  *a1 = 79;
  return result;
}

uint64_t _getInfoSMCIF_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 1172, 0);
  *a1 = 78;
  return result;
}

uint64_t _getInfoSMCIF_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v4, v5, v6, 1169, 0);
  *a1 = 77;
  return result;
}

uint64_t _commitImageSMCIF_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v13, v14, v15, 1649, 0);
  *(a1 + 8492) = a2;
  return T200UpdaterInfoLog("T200: Check Update Needed Failed for Firmware Image %d", v5, v6, v7, v8, v9, v10, v11, a2);
}

uint64_t _commitImageSMCIF_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v13, v14, v15, 1652, 0);
  *(a1 + 8492) = a2;
  return T200UpdaterInfoLog("T200: Check Update Needed Failed for Configuration Image %d", v5, v6, v7, v8, v9, v10, v11, a2);
}

uint64_t _commitImageSMCIF_cold_4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v13, v14, v15, 1655, 0);
  *(a1 + 8492) = a2;
  return T200UpdaterInfoLog("T200: Check Update Needed Failed for DNVD Image %d", v5, v6, v7, v8, v9, v10, v11, a2);
}

uint64_t T200CreateDictionaryRemovingKeyPath_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v11, v12, v13, 798, 0);
  return T200UpdaterInfoLog("%s:%d item %@ not a dictionary \n", v3, v4, v5, v6, v7, v8, v9, "T200CreateDictionaryRemovingKeyPath", 798, a1);
}

void T200CreateDictionaryRemovingKeyPath_cold_4(const void *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v10, v11, v12, 793, 0);
  T200UpdaterInfoLog("%s:%d failed to create current substring \n", v3, v4, v5, v6, v7, v8, v9, "T200CreateDictionaryRemovingKeyPath", 793);

  CFRelease(a1);
}

uint64_t T200CreateDictionaryRemovingKeyPath_cold_5()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 786, 0);
  return T200UpdaterInfoLog("%s:%d failed to create key substring \n", v1, v2, v3, v4, v5, v6, v7, "T200CreateDictionaryRemovingKeyPath", 786);
}

uint64_t T200CreateDictionaryRemovingKeyPath_cold_7()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 765, 0);
  return T200UpdaterInfoLog("%s:%d keyPath is NULL \n", v1, v2, v3, v4, v5, v6, v7, "T200CreateDictionaryRemovingKeyPath", 765);
}

uint64_t T200CreateDictionaryRemovingKeyPath_cold_8()
{
  OUTLINED_FUNCTION_0();
  fprintf(v0, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v9, v10, v11, 764, 0);
  return T200UpdaterInfoLog("%s:%d dict is NULL \n", v1, v2, v3, v4, v5, v6, v7, "T200CreateDictionaryRemovingKeyPath", 764);
}

void _send_bin_retry_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 1437, 0);
  *v3 = 81;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    *v2 = 0;
    OUTLINED_FUNCTION_9(&dword_299F71000, MEMORY[0x29EDCA988], v5, "failed to allocate memory");
  }

  *v0 = 0;
}

void _send_bin_retry_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 1428, 0);
  *v3 = 81;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    *v2 = 0;
    OUTLINED_FUNCTION_9(&dword_299F71000, MEMORY[0x29EDCA988], v5, "failed to allocate memory");
  }

  *v0 = 0;
}

void _send_bin_retry_cold_3(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_299F71000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed on BC__sendImage.", buf, 2u);
}

void _send_bin_retry_cold_4(_DWORD *a1, uint8_t *a2, _BYTE *a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_0();
  fprintf(v10, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v11, v12, v13, 1453, 0);
  *a1 = 82;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *a2 = 0;
    *a3 = 0;
    _os_log_error_impl(&dword_299F71000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Data src is NULL", a2, 2u);
  }

  *a5 = a4;
}

void _send_bin_retry_cold_5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  fprintf(v4, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v6, v7, v8, 1419, 0);
  *v3 = 81;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    *v2 = 0;
    OUTLINED_FUNCTION_9(&dword_299F71000, MEMORY[0x29EDCA988], v5, "failed to allocate memory");
  }

  *v0 = 0;
}

void createCFError_cold_1(const void *a1)
{
  OUTLINED_FUNCTION_0();
  fprintf(v2, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 69, 0);

  CFRelease(a1);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x2A1C594D8](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}