uint64_t _AMAuthInstallBundleCopyOverrideBuildIdentity(uint64_t a1, const __CFArray *a2, const __CFURL *a3, const __CFURL *a4, const __CFDictionary *a5, const __CFURL *a6)
{
  v144 = 0;
  v145 = 0;
  v143 = 0;
  v11 = 1;
  if (!a1 || (v12 = a2) == 0 || !a3)
  {
    OUTLINED_FUNCTION_13_1();
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_13_1();
  if (v20)
  {
    v21 = v16;
    v22 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v22, 0, **(a1 + 128));
    if (!MutableCopy)
    {
      ValueForKeyPathInDict = 0;
      v7 = 0;
      goto LABEL_142;
    }

    theDict = CFDictionaryGetValue(a5, @"Manifest");
    if (!theDict)
    {
      OUTLINED_FUNCTION_1_9();
      v7 = 0;
      Value = 0;
      goto LABEL_144;
    }

    if (v21)
    {
      Value = CFDictionaryGetValue(v21, @"Manifest");
      if (!Value)
      {
        OUTLINED_FUNCTION_1_9();
        v7 = 0;
LABEL_144:
        OUTLINED_FUNCTION_10_2();
        v11 = 8;
        goto LABEL_120;
      }
    }

    else
    {
      Value = 0;
    }

    v23 = CFGetAllocator(a1);
    v7 = CFDictionaryCreateMutableCopy(v23, 0, theDict);
    if (!v7)
    {
LABEL_14:
      OUTLINED_FUNCTION_1_9();
LABEL_142:
      Value = 0;
      OUTLINED_FUNCTION_10_2();
      v11 = 2;
      goto LABEL_120;
    }

    v126 = a5;
    if (v21)
    {
      CFGetAllocator(a1);
      OUTLINED_FUNCTION_30();
      v27 = CFDictionaryCreateMutableCopy(v24, v25, v26);
      if (!v27)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v27 = 0;
    }

    v124 = a3;
    v125 = v21;
    v129 = v27;
    v135 = v7;
    v130 = MutableCopy;
    v140 = v12;
    if (CFArrayGetCount(v12) < 1)
    {
LABEL_90:
      v7 = v135;
      if (CFDictionaryGetCount(MutableCopy) < 1)
      {
        goto LABEL_117;
      }

      v147[0] = 0;
      Count = CFDictionaryGetCount(MutableCopy);
      ValueForKeyPathInDict = (8 * Count);
      keysa = malloc(8 * Count);
      if (keysa)
      {
        PathComponent = malloc(ValueForKeyPathInDict);
        if (PathComponent)
        {
          CFDictionaryGetKeysAndValues(MutableCopy, keysa, &PathComponent->isa);
          v134 = PathComponent;
          if (Count < 1)
          {
            MutableCopy = 0;
            OUTLINED_FUNCTION_35();
            v11 = 0;
            goto LABEL_116;
          }

          v101 = a1;
          v102 = 0;
          v103 = *MEMORY[0x29EDB8EF8];
          theDicta = *MEMORY[0x29EDB8F00];
          v104 = MEMORY[0x29EDB9020];
          while (1)
          {
            ValueForKeyPathInDict = keysa[v102];
            v105 = *(&PathComponent->isa + v102);
            v146 = 0;
            v148.length = CFArrayGetCount(v140);
            v148.location = 0;
            if (CFArrayContainsValue(v140, v148, ValueForKeyPathInDict))
            {
              OUTLINED_FUNCTION_29();
              v147[0] = CFDictionaryCreateMutable(v106, v107, v108, v104);
              if (!v147[0])
              {
                MutableCopy = 0;
LABEL_130:
                PathComponent = 0;
LABEL_131:
                v142 = 0;
                v11 = 2;
                goto LABEL_133;
              }

              if (CFStringCompare(ValueForKeyPathInDict, @"BasebandFirmware", 0))
              {
                CFDictionaryAddValue(v147[0], @"Trusted", v103);
              }

              v109 = v101[2];
              if (*(v109 + 20))
              {
                v110 = theDicta;
              }

              else
              {
                v110 = v103;
              }

              if (*(v109 + 88))
              {
                v111 = theDicta;
              }

              else
              {
                v111 = v103;
              }

              CFDictionaryAddValue(v147[0], @"EPRO", v110);
              CFDictionaryAddValue(v147[0], @"ESEC", v111);
              OUTLINED_FUNCTION_29();
              MutableCopy = CFDictionaryCreateMutable(v112, v113, v114, v104);
              if (!MutableCopy)
              {
                goto LABEL_130;
              }

              PathComponent = CFURLCopyLastPathComponent(v105);
              if (!PathComponent)
              {
                v142 = 0;
                v11 = 3;
LABEL_133:
                v7 = v135;
                ValueForKeyPathInDict = v142;
LABEL_116:
                SafeRelease(v147[0]);
                SafeRelease(MutableCopy);
                SafeRelease(PathComponent);
                SafeFree(keysa);
                SafeFree(v134);
                SafeRelease(ValueForKeyPathInDict);
                if (!v11)
                {
LABEL_117:
                  CFDictionarySetValue(v126, @"Manifest", v7);
                  Value = v129;
                  if (v125)
                  {
                    CFDictionarySetValue(v125, @"Manifest", v129);
                  }

                  OUTLINED_FUNCTION_8_3();
                  OUTLINED_FUNCTION_3_5();
                  v11 = 0;
                  v15 = v130;
                  goto LABEL_120;
                }

                OUTLINED_FUNCTION_8_3();
                OUTLINED_FUNCTION_3_5();
LABEL_136:
                Value = v129;
                goto LABEL_120;
              }

              v115 = v101;
              v116 = CFGetAllocator(v101);
              v117 = CFURLCreateCopyAppendingPathComponent(v116, a4, PathComponent, 0);
              if (!v117)
              {
                goto LABEL_131;
              }

              v118 = ValueForKeyPathInDict;
              ValueForKeyPathInDict = v105;
              v142 = v117;
              SoftLink = AMAuthInstallSupportFileURLExists(v117, &v146);
              if (SoftLink || !v146 && (SoftLink = AMAuthInstallPlatformCreateSoftLink(v142, v105), SoftLink) || (CFDictionaryAddValue(MutableCopy, @"Path", PathComponent), CFDictionaryAddValue(v147[0], @"Info", MutableCopy), SoftLink = _AMAuthInstallBundleApplyMeasurements(v115, v118, v105, 0, v147), SoftLink))
              {
                v11 = SoftLink;
                goto LABEL_133;
              }

              CFDictionarySetValue(v135, v118, v147[0]);
              SafeRelease(PathComponent);
              SafeRelease(MutableCopy);
              SafeRelease(v147[0]);
              SafeRelease(v142);
              v147[0] = 0;
              PathComponent = v134;
              v101 = v115;
              v104 = MEMORY[0x29EDB9020];
            }

            if (Count == ++v102)
            {
              MutableCopy = 0;
              OUTLINED_FUNCTION_35();
              v11 = 0;
              v7 = v135;
              goto LABEL_116;
            }
          }
        }

        MutableCopy = 0;
      }

      else
      {
        MutableCopy = 0;
        PathComponent = 0;
      }

      v134 = 0;
      ValueForKeyPathInDict = 0;
      v11 = 2;
      goto LABEL_116;
    }

    v28 = 0;
    keys = *MEMORY[0x29EDB8EF8];
    v136 = *MEMORY[0x29EDB8F00];
    v133 = Value;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v28);
      if (!ValueAtIndex)
      {
        OUTLINED_FUNCTION_1_9();
        OUTLINED_FUNCTION_10_2();
        v11 = 1;
        goto LABEL_135;
      }

      v30 = ValueAtIndex;
      if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
      {
        v31 = keys;
      }

      else
      {
        v31 = v136;
      }

      v32 = CFBooleanGetValue(v31);
      v33 = CFGetAllocator(a1);
      if (Value && v32)
      {
        v34 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v33, v30);
        v35 = CFGetAllocator(a1);
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v35, Value, v34);
        if (ValueForKeyPathInDict)
        {
          goto LABEL_27;
        }
      }

      else
      {
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v33, theDict, v30);
        v34 = 0;
        if (ValueForKeyPathInDict)
        {
LABEL_27:
          v36 = CFStringCompare(v30, @"BasebandFirmware", 0);
          CFGetAllocator(a1);
          OUTLINED_FUNCTION_44();
          v40 = CFDictionaryCreateMutableCopy(v37, v38, v39);
          v144 = v40;
          if (!v40)
          {
            OUTLINED_FUNCTION_1_9();
            OUTLINED_FUNCTION_10_2();
            v11 = 2;
            goto LABEL_135;
          }

          v41 = _AMAuthInstallBundleSetObjectPropertyOverrides(a1, v30, v40);
          if (v41)
          {
            v11 = v41;
            AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to set %@ property overrides", v30);
            OUTLINED_FUNCTION_1_9();
            goto LABEL_125;
          }

          v141 = v34;
          v42 = CFGetAllocator(a1);
          ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v42, ValueForKeyPathInDict, @"%@.%@", v43, v44, v45, v46, v47, @"Info", @"Path");
          v49 = CFDictionaryGetValue(MutableCopy, v30);
          if (v49)
          {
            ValueForKeyPathInDict = CFDictionaryGetValue(v144, @"Info");
            if (!ValueForKeyPathInDict)
            {
              MutableCopy = 0;
              OUTLINED_FUNCTION_3_5();
              v11 = 7;
              goto LABEL_134;
            }

            CFGetAllocator(a1);
            OUTLINED_FUNCTION_44();
            MutableCopy = CFDictionaryCreateMutableCopy(v50, v51, v52);
            if (!MutableCopy)
            {
              ValueForKeyPathInDict = 0;
              OUTLINED_FUNCTION_3_5();
              v11 = 2;
              goto LABEL_134;
            }

            v53 = CFURLCopyLastPathComponent(v49);
            ValueForKeyPathInDict = v53;
            if (!v53)
            {
              OUTLINED_FUNCTION_3_5();
              v11 = 3;
              goto LABEL_134;
            }

            if (ValueForKeyWithFormat)
            {
              v54 = CFGetAllocator(a1);
              v55 = AMAuthInstallSupportCopyStringReplacingLastComponent(v54, ValueForKeyWithFormat, @"/", ValueForKeyPathInDict, &v145);
              if (v55)
              {
                v11 = v55;
                OUTLINED_FUNCTION_3_5();
LABEL_134:
                v15 = v130;
                goto LABEL_135;
              }
            }

            else
            {
              v145 = CFRetain(v53);
            }

            SafeRelease(ValueForKeyPathInDict);
            CFDictionarySetValue(MutableCopy, @"Path", v145);
            SafeRelease(v145);
            CFDictionarySetValue(v144, @"Info", MutableCopy);
            SafeRelease(MutableCopy);
            if (v36)
            {
              v56 = CFGetAllocator(a1);
              Mutable = CFDataCreateMutable(v56, 0);
              CFDictionarySetValue(v144, @"Digest", Mutable);
              CFRelease(Mutable);
            }

            v145 = 0;
            MutableCopy = v130;
            CFDictionaryRemoveValue(v130, v30);
          }

          v58 = *(a1 + 128);
          if (v58 && *(v58 + 8))
          {
            if (CFBooleanGetValue(v31))
            {
              ValueForKeyPathInDict = CFDictionaryGetValue(*(*(a1 + 128) + 8), @"RecoveryOSOS");
              if (ValueForKeyPathInDict)
              {
                v59 = CFGetAllocator(a1);
                v65 = AMAuthInstallSupportGetValueForKeyWithFormat(v59, ValueForKeyPathInDict, @"%@.%@.%@", v60, v61, v62, v63, v64, @"Manifest", v141, @"Digest");
                goto LABEL_47;
              }
            }

            else
            {
              v66 = CFGetAllocator(a1);
              v65 = AMAuthInstallSupportGetValueForKeyWithFormat(v66, *(*(a1 + 128) + 8), @"%@.%@.%@", v67, v68, v69, v70, v71, @"Manifest", v30, @"Digest");
LABEL_47:
              ValueForKeyPathInDict = v65;
            }
          }

          else
          {
            ValueForKeyPathInDict = 0;
          }

          if (CFBooleanGetValue(v31))
          {
            v72 = @"RecoveryOSOS";
          }

          else
          {
            v72 = @"OS";
          }

          v73 = CFStringCompare(v72, v30, 0);
          if (ValueForKeyPathInDict)
          {
            v74 = 0;
            if (v49)
            {
              goto LABEL_62;
            }

LABEL_61:
            if (v74)
            {
              goto LABEL_62;
            }

LABEL_82:
            AMAuthInstallLog(6, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "Inserting %@ to Manifest to personalize later", v30);
            if (CFBooleanGetValue(v31))
            {
              ValueForKeyPathInDict = v141;
              CFDictionarySetValue(v129, v141, v144);
              v12 = v140;
              Value = v133;
            }

            else
            {
              CFDictionarySetValue(v135, v30, v144);
              v12 = v140;
              Value = v133;
              ValueForKeyPathInDict = v141;
            }

            SafeRelease(v144);
            v144 = 0;
            SafeRelease(ValueForKeyPathInDict);
            goto LABEL_86;
          }

          if (*(a1 + 434))
          {
            v75 = 1;
          }

          else
          {
            v75 = (v49 | v73) == 0;
          }

          v74 = !v75;
          if (!v49)
          {
            goto LABEL_61;
          }

LABEL_62:
          if (v49)
          {
            IsImg4 = AMAuthInstallApIsImg4(a1);
            if (v36 == kCFCompareEqualTo || IsImg4)
            {
              goto LABEL_75;
            }

            LOBYTE(v147[0]) = 0;
            if (_AMAuthInstallBundleImageHasBuildString(v30))
            {
              v77 = CFGetAllocator(a1);
              v78 = AMAuthInstallApImg3CopyBuildString(v77, v49, &v143);
              if (v78)
              {
                v11 = v78;
                AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to copy image build string %@", v30);
                goto LABEL_140;
              }

              CFDictionarySetValue(v144, @"BuildString", v143);
              SafeRelease(v143);
              v143 = 0;
            }

            v79 = CFGetAllocator(a1);
            IsFinalized = AMAuthInstallApImg3IsFinalized(v79, v49, v147);
            if (IsFinalized)
            {
              v11 = IsFinalized;
              AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to check %@ alignment", v30);
LABEL_140:
              v83 = 0;
              v81 = 0;
              goto LABEL_149;
            }

            if (LOBYTE(v147[0]))
            {
              goto LABEL_75;
            }

            v81 = CFURLCopyLastPathComponent(v49);
            if (!v81)
            {
              v83 = 0;
LABEL_146:
              v11 = 2;
LABEL_149:
              OUTLINED_FUNCTION_8_3();
              Value = v129;
              v15 = v130;
              v7 = v135;
              v18 = v83;
              v19 = v81;
              break;
            }

            v82 = CFGetAllocator(a1);
            v83 = CFURLCreateCopyAppendingPathComponent(v82, a4, v81, 0);
            if (!v83)
            {
              goto LABEL_146;
            }

            v84 = CFGetAllocator(a1);
            v85 = AMAuthInstallApImg3Finalize(v84, v49, v83);
            if (v85)
            {
              v11 = v85;
              AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to finalize image3 override");
              goto LABEL_149;
            }

            ValueForKeyPathInDict = CFRetain(v83);
            v86 = CFDictionaryGetValue(v144, @"Info");
            if (!v86)
            {
              v11 = 8;
              goto LABEL_149;
            }

            CFDictionarySetValue(v86, @"Path", v81);
            OUTLINED_FUNCTION_27();
            CFDictionarySetValue(v87, v88, v89);
            SafeRelease(v81);
            SafeRelease(v83);
            if (!ValueForKeyPathInDict)
            {
LABEL_75:
              v90 = CFRetain(v49);
              goto LABEL_81;
            }
          }

          else
          {
            if (!ValueForKeyWithFormat)
            {
              goto LABEL_82;
            }

            v91 = CFBooleanGetValue(v31);
            v92 = CFGetAllocator(a1);
            if (v91)
            {
              v93 = a6;
            }

            else
            {
              v93 = v124;
            }

            v90 = CFURLCreateCopyAppendingPathComponent(v92, v93, ValueForKeyWithFormat, 0);
LABEL_81:
            ValueForKeyPathInDict = v90;
            if (!v90)
            {
              goto LABEL_82;
            }
          }

          OUTLINED_FUNCTION_27();
          v99 = _AMAuthInstallBundleApplyMeasurements(v94, v95, v96, v97, v98);
          if (v99)
          {
            v11 = v99;
            ValueForKeyPathInDict = 0;
            MutableCopy = 0;
LABEL_125:
            OUTLINED_FUNCTION_10_2();
LABEL_135:
            v7 = v135;
            goto LABEL_136;
          }

          CFRelease(ValueForKeyPathInDict);
          goto LABEL_82;
        }
      }

LABEL_86:
      if (++v28 >= CFArrayGetCount(v12))
      {
        goto LABEL_90;
      }
    }
  }

LABEL_120:
  v120 = v17;
  v121 = v18;
  v122 = v19;
  SafeRelease(v15);
  SafeRelease(ValueForKeyPathInDict);
  SafeRelease(v145);
  SafeRelease(v144);
  SafeRelease(MutableCopy);
  SafeRelease(v120);
  SafeRelease(v7);
  SafeRelease(v121);
  SafeRelease(v122);
  SafeRelease(v143);
  SafeRelease(Value);
  return v11;
}

CFIndex _AMAuthInstallBundleCreateServerRequestDictionary(uint64_t a1, const __CFArray *a2, CFDictionaryRef theDict, const __CFDictionary *a4, const void *a5, const __CFDictionary *a6, void *a7, void *a8)
{
  Mutable = 0;
  v117[0] = 0;
  v115 = 0;
  v116 = 0;
  Code = 1;
  if (!a4 || !a1 || !theDict)
  {
    v13 = 0;
    MutableCopy = 0;
    goto LABEL_137;
  }

  v13 = 0;
  MutableCopy = 0;
  if (a7)
  {
    Value = CFDictionaryGetValue(theDict, @"Manifest");
    if (!Value)
    {
LABEL_8:
      Mutable = 0;
      v13 = 0;
      MutableCopy = 0;
      Code = 7;
      goto LABEL_137;
    }

    v19 = Value;
    if (a6)
    {
      v112 = CFDictionaryGetValue(a6, @"Manifest");
      if (!v112)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v112 = 0;
    }

    MutableCopy = CFDictionaryGetValue(a4, @"Personalized");
    if (!MutableCopy)
    {
      Mutable = 0;
      v13 = 0;
LABEL_143:
      Code = 8;
      goto LABEL_137;
    }

    v13 = CFDictionaryGetValue(a4, @"Manifest");
    if (v13)
    {
      v20 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v20, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v100 = v13;
        if (!a6)
        {
          v96 = a7;
          v97 = a8;
          v95 = 0;
          theDicta = 0;
          v13 = 0;
LABEL_22:
          if (AMAuthInstallApIsImg4(a1))
          {
            v22 = @"amai/apimg4ticket.der";
          }

          else
          {
            v22 = @"amai/apticket.der";
          }

          CFArrayGetCount(MutableCopy);
          v23 = OUTLINED_FUNCTION_23();
          theArray = MutableCopy;
          v108 = v13;
          v102 = theDict;
          if (CFArrayContainsValue(v23, v118, v22))
          {
            v24 = 0;
            v25 = "False";
          }

          else if (*(*(a1 + 16) + 24) || *(a1 + 433))
          {
            v25 = "True";
            v24 = 1;
          }

          else
          {
            v24 = 0;
            v25 = "False";
          }

          v119.length = CFArrayGetCount(theArray);
          v119.location = 0;
          v26 = CFArrayContainsValue(theArray, v119, v22);
          v27 = "True";
          if (v26)
          {
            v28 = "True";
          }

          else
          {
            v28 = "False";
          }

          if (*(*(a1 + 16) + 24))
          {
            v29 = "True";
          }

          else
          {
            v29 = "False";
          }

          if (!*(a1 + 433))
          {
            v27 = "False";
          }

          AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "ticketPath %@ , withApTicket is %s,  (!%s &&(%s || %s))", v22, v25, v28, v29, v27);
          v105 = v24;
          *(a1 + 32) = v24 ^ 1;
          v30 = a2;
          v99 = a6;
          if (a2)
          {
            Count = CFArrayGetCount(a2);
            if (Count >= 1)
            {
              v94 = v24 ^ 1;
              v101 = 0;
              MutableCopy = 0;
              v31 = 0;
              v32 = *MEMORY[0x29EDB8EF8];
              v103 = v19;
              v104 = *MEMORY[0x29EDB8F00];
              v109 = *MEMORY[0x29EDB8EF8];
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v30, v31);
                v111 = CFStringCompare(ValueAtIndex, @"BasebandFirmware", 0);
                v34 = v32;
                if (ValueAtIndex)
                {
                  if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
                  {
                    v34 = v32;
                  }

                  else
                  {
                    v34 = v104;
                  }
                }

                if (CFBooleanGetValue(v34))
                {
                  v35 = CFGetAllocator(a1);
                  v36 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v35, ValueAtIndex);
                  v37 = CFDictionaryGetValue(v112, v36);
                  if (v37)
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  v37 = CFDictionaryGetValue(v19, ValueAtIndex);
                  v36 = 0;
                  if (v37)
                  {
LABEL_47:
                    v38 = CFDictionaryGetValue(v37, @"Info");
                    if (!v38)
                    {
                      v30 = a2;
                      goto LABEL_103;
                    }

                    v39 = v38;
                    v114 = 0;
                    SafeRelease(MutableCopy);
                    v40 = CFGetAllocator(a1);
                    MutableCopy = CFDictionaryCreateMutableCopy(v40, 0, v37);
                    if (!MutableCopy)
                    {
                      Code = 2;
                      goto LABEL_133;
                    }

                    v41 = AMAuthInstallBundleProcessRulesWithEntryDict(a1, MutableCopy);
                    if (v41)
                    {
                      Code = v41;
                      AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to process image rules");
                      goto LABEL_133;
                    }

                    v42 = CFDictionaryGetValue(v39, @"Personalize");
                    v19 = v103;
                    if (v42 && !CFBooleanGetValue(v42))
                    {
                      if (!CFBooleanGetValue(v34))
                      {
                        v57 = CFDictionaryGetValue(v100, ValueAtIndex);
                        v58 = v105 ^ 1;
                        if (v57)
                        {
                          v58 = 1;
                        }

                        if (v58)
                        {
                          v72 = OUTLINED_FUNCTION_25();
                          AMAuthInstallLog(v72, "_AMAuthInstallBundleCreateServerRequestDictionary", "skipping %@ entry");
                        }

                        else
                        {
                          CFGetAllocator(a1);
                          OUTLINED_FUNCTION_45();
                          v62 = CFDataCreate(v59, v60, v61);
                          CFDictionaryAddValue(MutableCopy, @"Digest", v62);
                          CFDictionarySetValue(Mutable, ValueAtIndex, MutableCopy);
                          CFRelease(v62);
                          v63 = OUTLINED_FUNCTION_25();
                          AMAuthInstallLog(v63, "_AMAuthInstallBundleCreateServerRequestDictionary", "personalizing %@");
                        }

                        v30 = a2;
                        goto LABEL_104;
                      }

                      v43 = CFDictionaryGetValue(theDicta, v36);
                      v44 = v105 ^ 1;
                      if (v43)
                      {
                        v44 = 1;
                      }

                      v45 = "skipping %@ entry";
                      if ((v44 & 1) == 0)
                      {
                        CFGetAllocator(a1);
                        OUTLINED_FUNCTION_45();
                        v49 = CFDataCreate(v46, v47, v48);
                        CFDictionaryAddValue(MutableCopy, @"Digest", v49);
                        v50 = OUTLINED_FUNCTION_36();
                        CFDictionarySetValue(v50, v51, MutableCopy);
                        CFRelease(v49);
                        v45 = "personalizing %@";
                      }

                      AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionary", v45, v36);
                    }

                    if (v111)
                    {
                      if (CFDictionaryContainsKey(MutableCopy, @"PartialDigest"))
                      {
                        v52 = CFDictionaryGetValue(v39, @"Path");
                        v114 = v52;
                        SafeRetain(v52);
                        if (!v52)
                        {
                          goto LABEL_69;
                        }

                        goto LABEL_61;
                      }

                      if (v105)
                      {
                        v52 = 0;
LABEL_69:
                        v30 = a2;
LABEL_92:
                        SafeRelease(v52);
                        v67 = CFDictionaryGetValue(MutableCopy, @"Digest");
                        if (v67)
                        {
                          AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "personalizing %@ Digest = %@", ValueAtIndex, v67);
                        }

                        v19 = v103;
                        if (v111 == kCFCompareEqualTo)
                        {
                          v68 = CFBooleanGetValue(v34);
                          Code = 1;
                          if (!a5 || v68 == 1)
                          {
                            goto LABEL_133;
                          }

                          v69 = AMAuthInstallBundleCopyFullPathForBuildIdentityKey(a1, a5, @"BasebandFirmware", v37, &v116);
                          if (v69)
                          {
                            Code = v69;
                            AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to find baseband firmware path");
                            goto LABEL_133;
                          }

                          v19 = v103;
                          v101 = v116;
                          if (!v116)
                          {
                            Code = 14;
                            AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to create bbfwURL");
                            goto LABEL_133;
                          }
                        }

                        if (CFBooleanGetValue(v34))
                        {
                          v70 = OUTLINED_FUNCTION_36();
                        }

                        else
                        {
                          v70 = Mutable;
                          v71 = ValueAtIndex;
                        }

                        CFDictionarySetValue(v70, v71, MutableCopy);
LABEL_103:
                        SafeRelease(v36);
                        goto LABEL_104;
                      }

                      AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "not personalizing %@", ValueAtIndex);
                      v30 = a2;
LABEL_91:
                      v19 = v103;
                      goto LABEL_104;
                    }

                    v64 = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v114);
                    if (v64)
                    {
                      Code = v64;
LABEL_133:
                      v13 = v108;
                      goto LABEL_137;
                    }

                    v52 = v114;
                    if (!v114)
                    {
                      goto LABEL_69;
                    }

LABEL_61:
                    v30 = a2;
                    if (CFBooleanGetValue(v34))
                    {
                      if (!CFDictionaryContainsKey(theDicta, v36))
                      {
                        v53.length = CFArrayGetCount(v95);
                        v54 = v95;
LABEL_85:
                        v53.location = 0;
                        v65 = CFArrayContainsValue(v54, v53, v52);
                        if (v111)
                        {
                          v66 = v94;
                        }

                        else
                        {
                          v66 = 1;
                        }

                        if (!v65 || (v66 & 1) == 0)
                        {
                          goto LABEL_92;
                        }

LABEL_90:
                        AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "entry %@ has been previously personalized; skipping it", ValueAtIndex);
                        SafeRelease(v52);
                        goto LABEL_91;
                      }
                    }

                    else if (!CFDictionaryContainsKey(v100, ValueAtIndex))
                    {
                      v53.length = CFArrayGetCount(theArray);
                      v54 = theArray;
                      goto LABEL_85;
                    }

                    if (v111)
                    {
                      v56 = v94;
                    }

                    else
                    {
                      v56 = 1;
                    }

                    if (v56 != 1)
                    {
                      goto LABEL_92;
                    }

                    goto LABEL_90;
                  }
                }

                v55 = OUTLINED_FUNCTION_25();
                AMAuthInstallLog(v55, "_AMAuthInstallBundleCreateServerRequestDictionary", "entry %@ not part of manifest, skipping");
LABEL_104:
                v32 = v109;
                if (Count == ++v31)
                {
                  goto LABEL_109;
                }
              }
            }
          }

          v101 = 0;
          MutableCopy = 0;
LABEL_109:
          v13 = v108;
          if (v108 && CFDictionaryGetCount(v108))
          {
            _AMAuthInstallBundlePopulateManifestProperties(a1, v99, v108);
            v73 = AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS(a1, v108, v105, 1);
            if (v73)
            {
              goto LABEL_144;
            }

            v74 = OUTLINED_FUNCTION_16_0();
            if (!v75(v74))
            {
              goto LABEL_136;
            }

            v76 = CFGetAllocator(a1);
            Code = 2;
            DeepCopy = CFPropertyListCreateDeepCopy(v76, v108, 2uLL);
            *v97 = DeepCopy;
            if (!DeepCopy)
            {
              goto LABEL_137;
            }
          }

          v78 = CFDictionaryGetCount(Mutable);
          _AMAuthInstallBundlePopulateManifestProperties(a1, v102, Mutable);
          v79 = OUTLINED_FUNCTION_16_0();
          v73 = AMAuthInstallApServerRequestAddRequiredTags(v79, v80, v105);
          if (!v73)
          {
            v73 = AMAuthInstallBasebandSupportsServerSigning(a1, v117);
            if (!v73)
            {
              if (v117[0])
              {
                if (AMAuthInstallBasebandPersonalizationEnabled(a1))
                {
                  if (v101)
                  {
                    v81 = OUTLINED_FUNCTION_16_0();
                    v83 = AMAuthInstallBasebandServerRequestAddRequiredTags(v81, v82, v101);
                    if (v83)
                    {
                      Code = v83;
                      AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "%s: missing required baseband parameters", "_AMAuthInstallBundleCreateServerRequestDictionary");
                      goto LABEL_137;
                    }
                  }
                }
              }

              if ((v84 = *(a1 + 48)) == 0 || !*(v84 + 160) || (LOBYTE(v114) = 1, AMAuthInstallVinylIsLegacyChipId(a1, &v114)) || v114 || !CFDictionaryGetValue(Mutable, @"eUICC,Gold") && !CFDictionaryGetValue(Mutable, @"eUICC,Main") || (v85 = OUTLINED_FUNCTION_16_0(), v73 = AMAuthInstallVinylServerRequestAddRequiredTags(v85, v86, 0), !v73))
              {
                v87 = CFDictionaryGetCount(Mutable);
                v88 = OUTLINED_FUNCTION_16_0();
                if (v89(v88))
                {
                  v90 = CFDictionaryGetCount(Mutable);
                  if (v78 || v90 != v87)
                  {
                    v91 = CFGetAllocator(a1);
                    v92 = CFPropertyListCreateDeepCopy(v91, Mutable, 2uLL);
                    *v96 = v92;
                    Code = 2 * (v92 == 0);
                  }

                  else
                  {
                    AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionary", "nothing to be done");
                    Code = 0;
                  }

                  goto LABEL_137;
                }

LABEL_136:
                AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to add updater tags %@", v115);
                Code = CFErrorGetCode(v115);
                goto LABEL_137;
              }
            }
          }

LABEL_144:
          Code = v73;
          goto LABEL_137;
        }

        v21 = CFGetAllocator(a1);
        v13 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v13)
        {
          if (CFDictionaryGetValue(a4, @"RecoveryOS"))
          {
            v95 = CFDictionaryGetValue(a4, @"Personalized");
            if (v95)
            {
              theDicta = CFDictionaryGetValue(a4, @"Manifest");
              if (theDicta)
              {
                v96 = a7;
                v97 = a8;
                goto LABEL_22;
              }
            }
          }

          goto LABEL_142;
        }
      }

      else
      {
        v13 = 0;
      }

      MutableCopy = 0;
      Code = 2;
      goto LABEL_137;
    }

    Mutable = 0;
LABEL_142:
    MutableCopy = 0;
    goto LABEL_143;
  }

LABEL_137:
  SafeRelease(v116);
  SafeRelease(Mutable);
  SafeRelease(v13);
  SafeRelease(MutableCopy);
  SafeRelease(v115);
  return Code;
}

uint64_t AMAuthInstallBundlePersonalizePartialRecoveryOS(uint64_t a1, const void **a2, uint64_t a3, const __CFString *a4)
{
  v208 = 0;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  if (!*(a1 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "bundle personalization requires AP parameters (even with AP personalization disabled)");
    MutableCopy = 0;
    OUTLINED_FUNCTION_6_5();
    v9 = 0;
    v12 = 0;
    Code = 1;
    goto LABEL_211;
  }

  MutableCopy = 0;
  Code = 1;
  if (!a2)
  {
    v12 = OUTLINED_FUNCTION_15_1();
    goto LABEL_211;
  }

  v12 = OUTLINED_FUNCTION_15_1();
  if (v13)
  {
    v16 = v15;
    v185 = v14;
    DeepCopy = a1;
    v17 = v13;
    _AMAuthInstallBundlePersonalizeApplyPreferencesOverrides(a1);
    v5 = a2;
    _AMAuthInstallBundleCreateDebugDirectory(a1, a2);
    v18 = CFGetAllocator(a1);
    v9 = CFURLCreateCopyAppendingPathComponent(v18, a2, @"RecoveryOS", 1u);
    url = v17;
    v19 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, v17, a4, &v209);
    if (v19)
    {
      Code = v19;
      MutableCopy = 0;
      OUTLINED_FUNCTION_6_5();
      v12 = 0;
      goto LABEL_211;
    }

    if (!v209)
    {
      MutableCopy = 0;
      OUTLINED_FUNCTION_6_5();
      v12 = 0;
      Code = 14;
      goto LABEL_211;
    }

    v5 = a1;
    v20 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v20, 0, v209);
    SafeRelease(v209);
    v209 = 0;
    if (MutableCopy)
    {
      _AMAuthInstallBundleCreateDebugDirectory(a1, v9);
      v21 = CFGetAllocator(a1);
      Mutable = CFArrayCreateMutable(v21, 0, MEMORY[0x29EDB9000]);
      if (Mutable)
      {
        v23 = Mutable;
        v24 = CFGetAllocator(a1);
        if (v16)
        {
          OUTLINED_FUNCTION_29();
          v28 = CFArrayCreateMutableCopy(v25, v26, v27);
        }

        else
        {
          v28 = CFArrayCreateMutable(v24, 0, MEMORY[0x29EDB9000]);
        }

        DeepCopy = v28;
        if (v28)
        {
          CFArrayAppendValue(v23, @"RecoveryOSOS");
          CFArrayAppendValue(v23, @"RecoveryOSKernelCache");
          CFArrayAppendValue(v23, @"RecoveryOSDeviceTree");
          CFArrayAppendValue(v23, @"RecoveryOSiBEC");
          CFArrayAppendValue(v23, @"RecoveryOSAppleLogo");
          CFArrayAppendValue(v23, @"RecoveryOSStaticTrustCache");
          v188 = DeepCopy;
          v29 = _AMRAuthInstallBundleModifyFirmwareEntries(a1, MutableCopy, v23, DeepCopy);
          if (v29)
          {
            Code = v29;
          }

          else
          {
            IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a2, &v207);
            if (IfNecessary)
            {
              Code = IfNecessary;
              LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, IfNecessary);
              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to generate a receipt: %@", LocalizedStatusString);
            }

            else
            {
              v31 = AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, v9, &v206);
              if (!v31)
              {
                CFDictionarySetValue(v207, @"RecoveryOS", v206);
                v212 = 0;
                v213[0] = 0;
                v211 = 0;
                v32 = CFGetAllocator(a1);
                v190 = MutableCopy;
                v196 = v23;
                v202 = CFDictionaryCreateMutableCopy(v32, 0, **(a1 + 128));
                v186 = v9;
                if (!v202)
                {
                  goto LABEL_223;
                }

                v33 = a1;
                v34 = CFDictionaryGetValue(MutableCopy, @"Manifest");
                if (!v34)
                {
                  OUTLINED_FUNCTION_8_3();
                  v8 = 0;
                  v110 = 0;
                  v7 = 0;
                  Code = 8;
                  goto LABEL_90;
                }

                CFGetAllocator(a1);
                OUTLINED_FUNCTION_29();
                v38 = CFDictionaryCreateMutableCopy(v35, v36, v37);
                if (!v38)
                {
LABEL_223:
                  OUTLINED_FUNCTION_8_3();
                  v8 = 0;
                  v110 = 0;
                  v7 = 0;
                  v34 = 0;
                  Code = 2;
                  goto LABEL_90;
                }

                theDict = v38;
                if (CFArrayGetCount(v23) < 1)
                {
LABEL_89:
                  MutableCopy = v190;
                  v110 = theDict;
                  CFDictionarySetValue(v190, @"Manifest", theDict);
                  OUTLINED_FUNCTION_8_3();
                  OUTLINED_FUNCTION_4_5();
                  Code = 0;
                  v9 = v186;
                  goto LABEL_90;
                }

                v39 = 0;
                ValueForKeyPathInDict = 0;
                v200 = *MEMORY[0x29EDB8EF8];
                v198 = *MEMORY[0x29EDB8F00];
                v194 = v34;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v23, v39);
                  if (!ValueAtIndex)
                  {
                    OUTLINED_FUNCTION_8_3();
                    OUTLINED_FUNCTION_4_5();
                    Code = 1;
                    goto LABEL_254;
                  }

                  v42 = ValueAtIndex;
                  v43 = CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1 ? v200 : v198;
                  if (!CFBooleanGetValue(v43))
                  {
                    break;
                  }

                  v44 = CFGetAllocator(v33);
                  v7 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v44, v42);
                  v45 = CFGetAllocator(v33);
                  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v45, v34, v7);
                  if (ValueForKeyPathInDict)
                  {
                    goto LABEL_28;
                  }

LABEL_85:
                  if (++v39 >= CFArrayGetCount(v23))
                  {
                    goto LABEL_89;
                  }
                }

                v7 = 0;
                if (!ValueForKeyPathInDict)
                {
                  goto LABEL_85;
                }

LABEL_28:
                v8 = CFStringCompare(v42, @"BasebandFirmware", 0);
                v46 = CFGetAllocator(v33);
                v212 = CFDictionaryCreateMutableCopy(v46, 0, ValueForKeyPathInDict);
                if (!v212)
                {
                  OUTLINED_FUNCTION_8_3();
                  goto LABEL_218;
                }

                v47 = OUTLINED_FUNCTION_18_0();
                v50 = _AMAuthInstallBundleSetObjectPropertyOverrides(v47, v48, v49);
                if (v50)
                {
                  Code = v50;
                  AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "failed to set %@ property overrides", v42);
                  OUTLINED_FUNCTION_8_3();
                  goto LABEL_220;
                }

                v51 = CFGetAllocator(v33);
                v204 = ValueForKeyPathInDict;
                ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v51, ValueForKeyPathInDict, @"%@.%@", v52, v53, v54, v55, v56, @"Info", @"Path");
                v58 = OUTLINED_FUNCTION_36();
                v34 = CFDictionaryGetValue(v58, v59);
                if (!v34)
                {
                  goto LABEL_41;
                }

                DeepCopy = CFDictionaryGetValue(v212, @"Info");
                if (!DeepCopy)
                {
                  v23 = 0;
                  OUTLINED_FUNCTION_4_5();
                  Code = 7;
                  goto LABEL_254;
                }

                CFGetAllocator(v33);
                OUTLINED_FUNCTION_44();
                v23 = CFDictionaryCreateMutableCopy(v60, v61, v62);
                if (v23)
                {
                  PathComponent = CFURLCopyLastPathComponent(v34);
                  DeepCopy = PathComponent;
                  if (!PathComponent)
                  {
                    OUTLINED_FUNCTION_4_5();
                    Code = 3;
                    goto LABEL_254;
                  }

                  if (ValueForKeyWithFormat)
                  {
                    v64 = CFGetAllocator(v33);
                    Component = AMAuthInstallSupportCopyStringReplacingLastComponent(v64, ValueForKeyWithFormat, @"/", DeepCopy, v213);
                    if (Component)
                    {
                      Code = Component;
LABEL_220:
                      v8 = 0;
                      goto LABEL_221;
                    }
                  }

                  else
                  {
                    v213[0] = CFRetain(PathComponent);
                  }

                  SafeRelease(DeepCopy);
                  CFDictionarySetValue(v23, @"Path", v213[0]);
                  SafeRelease(v213[0]);
                  CFDictionarySetValue(v212, @"Info", v23);
                  SafeRelease(v23);
                  v33 = a1;
                  if (v8)
                  {
                    v66 = CFGetAllocator(a1);
                    v67 = CFDataCreateMutable(v66, 0);
                    CFDictionarySetValue(v212, @"Digest", v67);
                    CFRelease(v67);
                  }

                  v213[0] = 0;
                  v68 = OUTLINED_FUNCTION_36();
                  CFDictionaryRemoveValue(v68, v69);
                  v23 = v196;
LABEL_41:
                  v70 = *(v33 + 128);
                  if (v70 && *(v70 + 8))
                  {
                    if (CFBooleanGetValue(v43))
                    {
                      DeepCopy = CFDictionaryGetValue(*(*(v33 + 128) + 8), @"RecoveryOSOS");
                      if (DeepCopy)
                      {
                        v71 = CFGetAllocator(v33);
                        v77 = AMAuthInstallSupportGetValueForKeyWithFormat(v71, DeepCopy, @"%@.%@.%@", v72, v73, v74, v75, v76, @"Manifest", v7, @"Digest");
                        goto LABEL_48;
                      }
                    }

                    else
                    {
                      v78 = CFGetAllocator(v33);
                      v77 = AMAuthInstallSupportGetValueForKeyWithFormat(v78, *(*(v33 + 128) + 8), @"%@.%@.%@", v79, v80, v81, v82, v83, @"Manifest", v42, @"Digest");
LABEL_48:
                      DeepCopy = v77;
                    }
                  }

                  else
                  {
                    DeepCopy = 0;
                  }

                  if (CFBooleanGetValue(v43))
                  {
                    v84 = @"RecoveryOSOS";
                  }

                  else
                  {
                    v84 = @"OS";
                  }

                  v85 = CFStringCompare(v84, v42, 0);
                  if (DeepCopy)
                  {
                    v86 = 0;
                    if (v34)
                    {
                      goto LABEL_63;
                    }

LABEL_62:
                    if (v86)
                    {
                      goto LABEL_63;
                    }

LABEL_82:
                    AMAuthInstallLog(6, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "Inserting %@ to Manifest to personalize later", v42);
                    if (CFBooleanGetValue(v43))
                    {
                      CFDictionarySetValue(theDict, v7, v212);
                    }

                    SafeRelease(v212);
                    v212 = 0;
                    SafeRelease(v7);
                    v34 = v194;
                    ValueForKeyPathInDict = v204;
                    goto LABEL_85;
                  }

                  if (*(v33 + 434))
                  {
                    v87 = 1;
                  }

                  else
                  {
                    v87 = (v34 | v85) == 0;
                  }

                  v86 = !v87;
                  if (!v34)
                  {
                    goto LABEL_62;
                  }

LABEL_63:
                  if (v34)
                  {
                    IsImg4 = AMAuthInstallApIsImg4(v33);
                    if (v8 && !IsImg4)
                    {
                      v210 = 0;
                      if (!_AMAuthInstallBundleImageHasBuildString(v42))
                      {
                        goto LABEL_69;
                      }

                      v89 = CFGetAllocator(v33);
                      v90 = AMAuthInstallApImg3CopyBuildString(v89, v34, &v211);
                      if (v90)
                      {
                        Code = v90;
                        AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "failed to copy image build string %@", v42);
                      }

                      else
                      {
                        CFDictionarySetValue(v212, @"BuildString", v211);
                        SafeRelease(v211);
                        v211 = 0;
                        v33 = a1;
LABEL_69:
                        v91 = CFGetAllocator(v33);
                        IsFinalized = AMAuthInstallApImg3IsFinalized(v91, v34, &v210);
                        if (!IsFinalized)
                        {
                          if (v210)
                          {
                            v33 = a1;
                            goto LABEL_80;
                          }

                          v95 = CFURLCopyLastPathComponent(v34);
                          DeepCopy = a1;
                          if (v95)
                          {
                            v96 = v95;
                            v97 = CFGetAllocator(a1);
                            value = v96;
                            v98 = CFURLCreateCopyAppendingPathComponent(v97, a2, v96, 0);
                            if (v98)
                            {
                              v99 = v98;
                              CFGetAllocator(a1);
                              OUTLINED_FUNCTION_42();
                              v103 = AMAuthInstallApImg3Finalize(v100, v101, v102);
                              if (v103)
                              {
                                Code = v103;
                                v7 = v99;
                                AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "failed to finalize image3 override");
                                v8 = 0;
                              }

                              else
                              {
                                v8 = CFRetain(v99);
                                v104 = CFDictionaryGetValue(v212, @"Info");
                                if (v104)
                                {
                                  DeepCopy = v96;
                                  CFDictionarySetValue(v104, @"Path", v96);
                                  v33 = a1;
                                  CFDictionarySetValue(**(a1 + 128), v42, v8);
                                  SafeRelease(value);
                                  SafeRelease(v99);
                                  if (!v8)
                                  {
                                    goto LABEL_80;
                                  }

LABEL_87:
                                  v105 = OUTLINED_FUNCTION_18_0();
                                  v109 = _AMAuthInstallBundleApplyMeasurements(v105, v106, v8, v107, v108);
                                  if (v109)
                                  {
                                    Code = v109;
                                    OUTLINED_FUNCTION_8_3();
LABEL_221:
                                    v7 = 0;
                                    v34 = 0;
                                    goto LABEL_254;
                                  }

                                  CFRelease(v8);
                                  v33 = a1;
                                  goto LABEL_82;
                                }

                                v7 = v99;
                                Code = 8;
                              }
                            }

                            else
                            {
                              v8 = 0;
                              v7 = 0;
                              Code = 2;
                            }

                            v34 = value;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_4_5();
                            Code = 2;
                          }

LABEL_253:
                          OUTLINED_FUNCTION_8_3();
                          goto LABEL_254;
                        }

                        Code = IsFinalized;
                        AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "failed to check %@ alignment", v42);
                      }

                      OUTLINED_FUNCTION_4_5();
                      goto LABEL_253;
                    }

LABEL_80:
                    v94 = CFRetain(v34);
                  }

                  else
                  {
                    if (!ValueForKeyWithFormat || !CFBooleanGetValue(v43))
                    {
                      goto LABEL_82;
                    }

                    v93 = CFGetAllocator(v33);
                    v94 = CFURLCreateCopyAppendingPathComponent(v93, url, ValueForKeyWithFormat, 0);
                  }

                  v8 = v94;
                  if (!v94)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_87;
                }

                DeepCopy = 0;
LABEL_218:
                OUTLINED_FUNCTION_4_5();
                Code = 2;
LABEL_254:
                v9 = v186;
                MutableCopy = v190;
                v110 = theDict;
LABEL_90:
                SafeRelease(v202);
                SafeRelease(DeepCopy);
                SafeRelease(v213[0]);
                SafeRelease(v212);
                SafeRelease(v23);
                SafeRelease(v8);
                SafeRelease(v7);
                SafeRelease(v34);
                SafeRelease(v211);
                SafeRelease(v110);
                if (Code)
                {
                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to create build identity with overrides");
                  v6 = MutableCopy;
                  OUTLINED_FUNCTION_9_3();
                  v5 = 0;
                  goto LABEL_209;
                }

                DeepCopy = v207;
                v213[0] = 0;
                if (!v207)
                {
                  MutableCopy = 0;
                  v118 = 0;
                  v119 = 0;
                  Code = 1;
                  v111 = v196;
                  goto LABEL_194;
                }

                v111 = v196;
                v203 = CFDictionaryGetValue(MutableCopy, @"Manifest");
                if (!v203)
                {
                  OUTLINED_FUNCTION_9_3();
                  v118 = 0;
                  v119 = 0;
                  Code = 7;
                  goto LABEL_194;
                }

                v112 = CFDictionaryGetValue(DeepCopy, @"Personalized");
                if (v112 && (v113 = v112, (v114 = CFDictionaryGetValue(DeepCopy, @"Manifest")) != 0))
                {
                  v115 = v114;
                  v116 = a1;
                  v117 = CFGetAllocator(a1);
                  v118 = CFDictionaryCreateMutable(v117, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  if (!v118)
                  {
                    OUTLINED_FUNCTION_9_3();
                    v119 = 0;
                    Code = 2;
                    goto LABEL_194;
                  }

                  if (CFDictionaryGetValue(DeepCopy, @"RecoveryOS"))
                  {
                    v119 = CFDictionaryGetValue(DeepCopy, @"Personalized");
                    if (!v119)
                    {
                      OUTLINED_FUNCTION_9_3();
                      goto LABEL_228;
                    }

                    key = CFDictionaryGetValue(DeepCopy, @"Manifest");
                    if (key)
                    {
                      v184 = DeepCopy;
                      if (AMAuthInstallApIsImg4(a1))
                      {
                        v120 = @"amai/apimg4ticket.der";
                      }

                      else
                      {
                        v120 = @"amai/apticket.der";
                      }

                      CFArrayGetCount(v113);
                      v121 = OUTLINED_FUNCTION_23();
                      MutableCopy = "False";
                      v199 = v118;
                      if (CFArrayContainsValue(v121, v214, v120))
                      {
                        v122 = 0;
                        v123 = "False";
                      }

                      else if (*(*(a1 + 16) + 24) || *(a1 + 433))
                      {
                        v123 = "True";
                        v122 = 1;
                      }

                      else
                      {
                        v122 = 0;
                        v123 = "False";
                      }

                      CFArrayGetCount(v113);
                      v124 = OUTLINED_FUNCTION_23();
                      v125 = CFArrayContainsValue(v124, v215, v120);
                      v126 = "True";
                      if (v125)
                      {
                        v127 = "True";
                      }

                      else
                      {
                        v127 = "False";
                      }

                      if (*(*(a1 + 16) + 24))
                      {
                        v128 = "True";
                      }

                      else
                      {
                        v128 = "False";
                      }

                      if (!*(a1 + 433))
                      {
                        v126 = "False";
                      }

                      AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "ticketPath %@ , withApTicket is %s,  (!%s &&(%s || %s))", v120, v123, v127, v128, v126);
                      v195 = v122;
                      DeepCopy = (v122 ^ 1u);
                      *(a1 + 32) = v122 ^ 1;
                      Count = CFArrayGetCount(v196);
                      if (Count >= 1)
                      {
                        v182 = v122 ^ 1;
                        v180 = v115;
                        theArray = v119;
                        v179 = v113;
                        v119 = 0;
                        v129 = 0;
                        MutableCopy = 0;
                        v130 = *MEMORY[0x29EDB8EF8];
                        v201 = *MEMORY[0x29EDB8F00];
                        while (1)
                        {
                          DeepCopy = CFArrayGetValueAtIndex(v111, MutableCopy);
                          v131 = CFStringCompare(DeepCopy, @"BasebandFirmware", 0);
                          v132 = v130;
                          if (DeepCopy)
                          {
                            if (CFStringFind(DeepCopy, @"RecoveryOS", 0).location == -1)
                            {
                              v132 = v130;
                            }

                            else
                            {
                              v132 = v201;
                            }
                          }

                          if (CFBooleanGetValue(v132))
                          {
                            v133 = CFGetAllocator(v116);
                            v134 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v133, DeepCopy);
                            v129 = CFDictionaryGetValue(v203, v134);
                            if (v129)
                            {
                              goto LABEL_124;
                            }
                          }

                          else
                          {
                            v134 = 0;
                            if (v129)
                            {
LABEL_124:
                              v135 = CFDictionaryGetValue(v129, @"Info");
                              if (!v135)
                              {
                                v111 = v196;
                                goto LABEL_170;
                              }

                              v136 = v135;
                              v212 = 0;
                              SafeRelease(v119);
                              v137 = CFGetAllocator(v116);
                              v119 = CFDictionaryCreateMutableCopy(v137, 0, v129);
                              if (!v119)
                              {
                                Code = 2;
LABEL_174:
                                v111 = v196;
                                goto LABEL_175;
                              }

                              v138 = AMAuthInstallBundleProcessRulesWithEntryDict(v116, v119);
                              if (v138)
                              {
                                Code = v138;
                                AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "failed to process image rules");
                                goto LABEL_174;
                              }

                              v139 = CFDictionaryGetValue(v136, @"Personalize");
                              v116 = a1;
                              if (v139 && !CFBooleanGetValue(v139))
                              {
                                if (CFBooleanGetValue(v132))
                                {
                                  v140 = CFDictionaryGetValue(key, v134);
                                  v141 = v195 ^ 1;
                                  if (v140)
                                  {
                                    v141 = 1;
                                  }

                                  v142 = "skipping %@ entry";
                                  if ((v141 & 1) == 0)
                                  {
                                    CFGetAllocator(a1);
                                    OUTLINED_FUNCTION_45();
                                    v146 = CFDataCreate(v143, v144, v145);
                                    CFDictionaryAddValue(v119, @"Digest", v146);
                                    OUTLINED_FUNCTION_42();
                                    CFDictionarySetValue(v147, v148, v149);
                                    v150 = v146;
                                    v116 = a1;
                                    CFRelease(v150);
                                    v142 = "personalizing %@";
                                  }

                                  AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", v142, v134);
                                  goto LABEL_135;
                                }

                                AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "skipping %@ entry", DeepCopy);
LABEL_164:
                                v111 = v196;
                                goto LABEL_171;
                              }

LABEL_135:
                              if (v131)
                              {
                                if (!CFDictionaryContainsKey(v119, @"PartialDigest"))
                                {
                                  if (v195)
                                  {
                                    v151 = 0;
LABEL_165:
                                    SafeRelease(v151);
                                    v158 = CFDictionaryGetValue(v119, @"Digest");
                                    if (v158)
                                    {
                                      AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "personalizing %@ Digest = %@", DeepCopy, v158);
                                    }

                                    v111 = v196;
                                    if (v131 == kCFCompareEqualTo)
                                    {
                                      Code = 1;
LABEL_175:
                                      OUTLINED_FUNCTION_9_3();
                                      v9 = v186;
                                      v118 = v199;
LABEL_194:
                                      SafeRelease(v118);
                                      SafeRelease(v119);
                                      SafeRelease(v213[0]);
                                      if (Code)
                                      {
                                        goto LABEL_257;
                                      }

                                      if (MutableCopy)
                                      {
                                        if (!DeepCopy || (PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse(a1, DeepCopy, &v208), !PersonalizedResponse))
                                        {
                                          v168 = CFDictionaryGetValue(v207, @"Updaters");
                                          if (!v168)
                                          {
                                            v5 = 0;
                                            goto LABEL_206;
                                          }

                                          v169 = v168;
                                          v170 = CFDictionaryGetCount(v168);
                                          v5 = malloc(8 * v170);
                                          if (v5)
                                          {
                                            CFDictionaryGetKeysAndValues(v169, v5, 0);
                                            if (v170 >= 1)
                                            {
                                              v171 = v5;
                                              do
                                              {
                                                v172 = *v171++;
                                                v173 = CFDictionaryGetValue(v169, v172);
                                                CFDictionaryRemoveValue(v173, @"RequestTags");
                                                --v170;
                                              }

                                              while (v170);
                                            }

                                            v174 = AMAuthInstallBundleWriteReceipt(a1, a2, v207, *MEMORY[0x29EDB8EF8]);
                                            if (v174)
                                            {
                                              Code = v174;
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "AMAuthInstallBundleWriteReceipt returned %d", v174);
                                            }

                                            else
                                            {
                                              v111 = v196;
LABEL_206:
                                              Code = _AMAuthInstallBundlePopulatePersonalizedBundle(a1, url, v9, a4, v190, v208, v207, v111, v185, v188, *MEMORY[0x29EDB8F00]);
                                              if (Code)
                                              {
                                                v178 = AMAuthInstallGetLocalizedStatusString(a1, Code);
                                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to personalize recovery OS bundle", v178);
                                              }
                                            }
                                          }

                                          else
                                          {
                                            Code = 2;
                                          }

                                          v6 = v190;
LABEL_209:
                                          v12 = v196;
LABEL_210:
                                          v7 = v188;
                                          goto LABEL_211;
                                        }

                                        Code = PersonalizedResponse;
                                        AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to create ap ticket for recovery OS");
LABEL_257:
                                        v5 = 0;
                                      }

                                      else
                                      {
                                        v5 = 0;
                                        Code = 0;
                                      }

                                      v12 = v111;
                                      v6 = v190;
                                      goto LABEL_210;
                                    }

                                    if (CFBooleanGetValue(v132))
                                    {
                                      OUTLINED_FUNCTION_42();
                                      CFDictionarySetValue(v159, v160, v161);
                                    }

LABEL_170:
                                    SafeRelease(v134);
                                    goto LABEL_171;
                                  }

                                  AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "not personalizing %@", DeepCopy);
                                  goto LABEL_164;
                                }

                                v151 = CFDictionaryGetValue(v136, @"Path");
                                v212 = v151;
                                SafeRetain(v151);
                                if (!v151)
                                {
                                  goto LABEL_165;
                                }
                              }

                              else
                              {
                                BasebandComponentName = AMAuthInstallBundleCopyNextBasebandComponentName(v116, &v212);
                                if (BasebandComponentName)
                                {
                                  Code = BasebandComponentName;
                                  goto LABEL_174;
                                }

                                v151 = v212;
                                v116 = a1;
                                if (!v212)
                                {
                                  goto LABEL_165;
                                }
                              }

                              if (CFBooleanGetValue(v132))
                              {
                                if (!CFDictionaryContainsKey(key, v134))
                                {
                                  v152.length = CFArrayGetCount(theArray);
                                  v153 = theArray;
LABEL_158:
                                  v152.location = 0;
                                  v156 = CFArrayContainsValue(v153, v152, v151);
                                  if (v131)
                                  {
                                    v157 = v182;
                                  }

                                  else
                                  {
                                    v157 = 1;
                                  }

                                  if (!v156 || (v157 & 1) == 0)
                                  {
                                    goto LABEL_165;
                                  }

LABEL_163:
                                  AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "entry %@ has been previously personalized; skipping it", DeepCopy);
                                  SafeRelease(v151);
                                  goto LABEL_164;
                                }
                              }

                              else if (!CFDictionaryContainsKey(v180, DeepCopy))
                              {
                                v152.length = CFArrayGetCount(v179);
                                v153 = v179;
                                goto LABEL_158;
                              }

                              if (v131)
                              {
                                v154 = v182;
                              }

                              else
                              {
                                v154 = 1;
                              }

                              if (v154 != 1)
                              {
                                goto LABEL_165;
                              }

                              goto LABEL_163;
                            }
                          }

                          AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "entry %@ not part of manifest, skipping", DeepCopy);
LABEL_171:
                          MutableCopy = (MutableCopy + 1);
                          if (Count == MutableCopy)
                          {
                            goto LABEL_177;
                          }
                        }
                      }

                      v119 = 0;
LABEL_177:
                      v118 = v199;
                      if (CFDictionaryGetCount(v199))
                      {
                        _AMAuthInstallBundlePopulateManifestProperties(v116, v190, v199);
                        v162 = AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS(v116, v199, v195, 1);
                        v9 = v186;
                        if (v162)
                        {
                          Code = v162;
                        }

                        else
                        {
                          DeepCopy = v116;
                          if ((v116[55])(v116, v199, v184, v213))
                          {
                            v163 = CFGetAllocator(v116);
                            Code = 2;
                            DeepCopy = CFPropertyListCreateDeepCopy(v163, v199, 2uLL);
                            if (!DeepCopy)
                            {
                              MutableCopy = 0;
                              goto LABEL_194;
                            }

                            goto LABEL_183;
                          }

                          AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "failed to add updater tags %@", v213[0]);
                          Code = CFErrorGetCode(v213[0]);
                        }

                        OUTLINED_FUNCTION_9_3();
                        goto LABEL_194;
                      }

                      DeepCopy = 0;
                      v9 = v186;
LABEL_183:
                      if (CFDictionaryGetCount(v199))
                      {
                        v164 = AMAuthInstallApServerRequestAddRequiredTags(a1, v199, v195);
                        if (v164)
                        {
                          Code = v164;
                          MutableCopy = 0;
                        }

                        else
                        {
                          v165 = CFGetAllocator(a1);
                          v166 = CFPropertyListCreateDeepCopy(v165, v199, 2uLL);
                          if (v166)
                          {
                            MutableCopy = v166;
                          }

                          else
                          {
                            MutableCopy = 0;
                          }

                          if (v166)
                          {
                            Code = 0;
                          }

                          else
                          {
                            Code = 2;
                          }
                        }
                      }

                      else
                      {
                        AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "nothing to be done");
                        MutableCopy = 0;
                        Code = 0;
                      }

                      goto LABEL_194;
                    }
                  }

                  OUTLINED_FUNCTION_9_3();
                }

                else
                {
                  OUTLINED_FUNCTION_9_3();
                  v118 = 0;
                }

                v119 = 0;
LABEL_228:
                Code = 8;
                goto LABEL_194;
              }

              Code = v31;
              v177 = AMAuthInstallGetLocalizedStatusString(a1, v31);
              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to generate a recovery OS receipt: %@", v177);
            }
          }

          v6 = MutableCopy;
          OUTLINED_FUNCTION_9_3();
          v5 = 0;
          goto LABEL_210;
        }

        v12 = v23;
        v6 = MutableCopy;
        MutableCopy = 0;
      }

      else
      {
        v6 = MutableCopy;
        OUTLINED_FUNCTION_9_3();
      }

      v7 = 0;
      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v12 = 0;
    }

    Code = 2;
  }

LABEL_211:
  SafeRelease(v12);
  SafeRelease(v7);
  SafeRelease(MutableCopy);
  SafeRelease(0);
  SafeRelease(v207);
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(0);
  SafeFree(v5);
  SafeRelease(v9);
  SafeRelease(v6);
  SafeRelease(DeepCopy);
  SafeRelease(v206);
  SafeRelease(v208);
  return Code;
}

CFTypeRef AMAuthInstallBundleCreatePreManifest(void *a1, const void *a2, const __CFURL *a3, CFStringRef theString1)
{
  theDict = 0;
  v25 = 0;
  v22 = 0;
  theArray = 0;
  if (!a1 || !a1[2])
  {
    OUTLINED_FUNCTION_38();
LABEL_25:
    AMSupportCreateErrorInternal();
    MutableCopy = 0;
    goto LABEL_29;
  }

  Mutable = a3;
  if (AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, theString1, &theDict))
  {
    OUTLINED_FUNCTION_37();
    goto LABEL_25;
  }

  if (!theDict)
  {
    OUTLINED_FUNCTION_38();
    goto LABEL_25;
  }

  v9 = CFGetAllocator(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, theDict);
  if (!MutableCopy)
  {
LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v5 = AMAuthInstallApPersonalizationEnabled(a1);
  if (_AMAuthInstallGeneratePersonalizationEntries(a1, a2, theString1, 0, 0, &theArray, 1))
  {
    OUTLINED_FUNCTION_37();
LABEL_28:
    AMSupportCreateErrorInternal();
    goto LABEL_29;
  }

  if (!theArray)
  {
    OUTLINED_FUNCTION_38();
    goto LABEL_28;
  }

  v11 = CFGetAllocator(a1);
  v12 = CFArrayCreateMutableCopy(v11, 0, theArray);
  if (!v12)
  {
LABEL_30:
    OUTLINED_FUNCTION_12_2();
    goto LABEL_21;
  }

  if (v5 && _AMRAuthInstallBundleModifyFirmwareEntries(a1, MutableCopy, v12, 0))
  {
    goto LABEL_31;
  }

  v13 = a1[16];
  if (v13)
  {
    if (*v13)
    {
      Count = CFDictionaryGetCount(*v13);
      if (!Mutable && Count >= 1)
      {
        OUTLINED_FUNCTION_38();
        goto LABEL_33;
      }
    }
  }

  if (Mutable && _AMAuthInstallBundleCopyOverrideBuildIdentity(a1, v12, a2, Mutable, MutableCopy, 0))
  {
LABEL_31:
    OUTLINED_FUNCTION_37();
LABEL_33:
    AMSupportCreateErrorInternal();
    goto LABEL_30;
  }

  v15 = CFGetAllocator(a1);
  v16 = MEMORY[0x29EDB9010];
  v17 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_45();
  v5 = CFDictionaryCreate(v18, v19, v20, 0, v16, v17);
  CFDictionarySetValue(Mutable, @"Personalized", v5);
  CFDictionarySetValue(Mutable, @"Manifest", v5);
  if (!_AMAuthInstallBundleCreateServerRequestDictionary(a1, v12, MutableCopy, Mutable, a2, 0, &v22, 0) && v22 && AMAuthInstallApImg4LocalCreatePreManifest(a1, v22, &v25))
  {
    OUTLINED_FUNCTION_37();
    AMSupportCreateErrorInternal();
  }

LABEL_21:
  SafeRelease(theDict);
  SafeRelease(MutableCopy);
  SafeRelease(theArray);
  SafeRelease(v12);
  SafeRelease(v22);
  SafeRelease(0);
  SafeRelease(Mutable);
  SafeRelease(v5);
  return v25;
}

CFIndex _AMAuthInstallGeneratePersonalizationEntries(void *cf, const void *a2, const __CFString *a3, const void *a4, const __CFString *a5, __CFArray **a6, int a7)
{
  cfa = 0;
  result = 1;
  if (cf && a2 && a6)
  {
    v15 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v15, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      return 2;
    }

    v17 = Mutable;
    ShouldPersonalizeOS = _AMAuthInstallBundleShouldPersonalizeOS(cf, a2, a3, &cfa);
    if (cfa)
    {
      if (!a7)
      {
        AMAuthInstallLog(3, "_AMAuthInstallGeneratePersonalizationEntries", "failed to inspect the OS image entry %@", cfa);
        goto LABEL_34;
      }

      AMAuthInstallLog(3, "_AMAuthInstallGeneratePersonalizationEntries", "OK to skip OS - continuing.");
      CFRelease(cfa);
      cfa = 0;
    }

    if (!a4)
    {
      v19 = 0;
LABEL_13:
      if (cf[6])
      {
        v20 = AMAuthInstallBasebandPersonalizationEnabled(cf);
        v21 = v20 != 0;
        if (!AMAuthInstallApPersonalizationEnabled(cf))
        {
          if (v20)
          {
            AMAuthInstallLog(5, "_AMAuthInstallGeneratePersonalizationEntries", "personalizing baseband only");
            v22 = @"BasebandFirmware";
LABEL_30:
            CFArrayAppendValue(v17, v22);
LABEL_35:
            result = 0;
            *a6 = v17;
            return result;
          }

LABEL_32:
          AMAuthInstallLog(5, "_AMAuthInstallGeneratePersonalizationEntries", "nothing to personalize");
          goto LABEL_35;
        }
      }

      else
      {
        if (!AMAuthInstallApPersonalizationEnabled(cf))
        {
          goto LABEL_32;
        }

        v21 = 0;
      }

      CFArrayAppendValue(v17, @"RestoreLogo");
      CFArrayAppendValue(v17, @"RestoreDeviceTree");
      CFArrayAppendValue(v17, @"RestoreKernelCache");
      CFArrayAppendValue(v17, @"RestoreRamDisk");
      CFArrayAppendValue(v17, @"OSRamdisk");
      CFArrayAppendValue(v17, @"iBEC");
      CFArrayAppendValue(v17, @"iBSS");
      CFArrayAppendValue(v17, @"KernelCache");
      CFArrayAppendValue(v17, @"ftap");
      CFArrayAppendValue(v17, @"rfta");
      CFArrayAppendValue(v17, @"ftsp");
      CFArrayAppendValue(v17, @"rfts");
      CFArrayAppendValue(v17, @"Ap,SystemVolumeCanonicalMetadata");
      CFArrayAppendValue(v17, @"x86,SystemVolumeCanonicalMetadata");
      CFArrayAppendValue(v17, @"BaseSystemVolume");
      CFArrayAppendValue(v17, @"x86,BaseSystemVolume");
      CFArrayAppendValue(v17, @"SystemVolume");
      CFArrayAppendValue(v17, @"x86,SystemVolume");
      CFArrayAppendValue(v17, @"Ap,BaseSystemTrustCache");
      if (AMAuthInstallApIsImg4(cf))
      {
        CFArrayAppendValue(v17, @"Diags");
        CFArrayAppendValue(v17, @"CFELoader");
        CFArrayAppendValue(v17, @"RBM");
        CFArrayAppendValue(v17, @"PHLEET");
        CFArrayAppendValue(v17, @"PERTOS");
        CFArrayAppendValue(v17, @"PEHammer");
        CFArrayAppendValue(v17, @"Alamo");
      }

      if (v21)
      {
        CFArrayAppendValue(v17, @"BasebandFirmware");
        if (*(cf[6] + 160))
        {
          v23 = 1;
          if (!AMAuthInstallVinylIsLegacyChipId(cf, &v23) && !v23)
          {
            CFArrayAppendValue(v17, @"eUICC,Main");
            CFArrayAppendValue(v17, @"eUICC,Gold");
          }
        }
      }

      if (ShouldPersonalizeOS)
      {
        CFArrayAppendValue(v17, @"OS");
      }

      if (!v19)
      {
        goto LABEL_35;
      }

      CFArrayAppendValue(v17, @"RecoveryOSOS");
      CFArrayAppendValue(v17, @"RecoveryOSAppleLogo");
      CFArrayAppendValue(v17, @"RecoveryOSDeviceTree");
      CFArrayAppendValue(v17, @"RecoveryOSKernelCache");
      CFArrayAppendValue(v17, @"RecoveryOSRamDisk");
      CFArrayAppendValue(v17, @"RecoveryOSiBEC");
      CFArrayAppendValue(v17, @"RecoveryOSiBSS");
      CFArrayAppendValue(v17, @"RecoveryOSStaticTrustCache");
      CFArrayAppendValue(v17, @"RecoveryOSiBootData");
      CFArrayAppendValue(v17, @"RecoveryOSDiags");
      CFArrayAppendValue(v17, @"RecoveryOSAp,SystemVolumeCanonicalMetadata");
      CFArrayAppendValue(v17, @"RecoveryOSSystemVolume");
      CFArrayAppendValue(v17, @"RecoveryOSBaseSystemVolume");
      v22 = @"RecoveryOSAp,BaseSystemTrustCache";
      goto LABEL_30;
    }

    v19 = _AMAuthInstallBundleShouldPersonalizeOS(cf, a4, a5, &cfa);
    if (!cfa)
    {
      goto LABEL_13;
    }

    if (a7)
    {
      AMAuthInstallLog(3, "_AMAuthInstallGeneratePersonalizationEntries", "OK to skip recovery OS - continuing.");
      CFRelease(cfa);
      cfa = 0;
      goto LABEL_13;
    }

    AMAuthInstallLog(3, "_AMAuthInstallGeneratePersonalizationEntries", "failed to inspect the recovery OS image entry %@", cfa);
LABEL_34:
    result = CFErrorGetCode(cfa);
    if (result)
    {
      return result;
    }

    goto LABEL_35;
  }

  return result;
}

uint64_t AMAuthInstallBundlePersonalizeWithRecoveryOS(void *a1, const void *a2, int a3, const __CFString *a4, const void *a5, const __CFString *a6)
{
  v37 = 0;
  if (a1)
  {
    v13 = _AMAuthInstallGeneratePersonalizationEntries(a1, a2, a4, a5, a6, &v37, 0);
    if (v13)
    {
      v32 = v13;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeWithRecoveryOS", "failed to generate personalization entries");
      OUTLINED_FUNCTION_11_1();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_43();
      ShouldPersonalizeOS = _AMAuthInstallBundleShouldPersonalizeOS(v14, v15, a4, v16);
      if (a5)
      {
        OUTLINED_FUNCTION_27();
        _AMAuthInstallBundleShouldPersonalizeOS(v18, v19, v20, v21);
      }

      v22 = CFGetAllocator(a1);
      v23 = MEMORY[0x29EDB9000];
      Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x29EDB9000]);
      v24 = CFGetAllocator(a1);
      v7 = CFArrayCreateMutable(v24, 0, v23);
      if (a1[6])
      {
        AMAuthInstallBasebandPersonalizationEnabled(a1);
      }

      if (AMAuthInstallApPersonalizationEnabled(a1))
      {
        CFArrayAppendValue(Mutable, @"OS");
        if (!AMAuthInstallApIsImg4(a1))
        {
          CFArrayAppendValue(Mutable, @"Diags");
        }

        v25 = 1;
        v26 = @"Restore.plist";
        v27 = @"BuildManifest.plist";
      }

      else
      {
        CFArrayAppendValue(Mutable, @"RestoreRamDisk");
        CFArrayAppendValue(Mutable, @"OSRamdisk");
        CFArrayAppendValue(Mutable, @"KernelCache");
        if (!ShouldPersonalizeOS)
        {
          CFArrayAppendValue(Mutable, @"OS");
        }

        CFArrayAppendValue(v7, @"BuildManifest.plist");
        CFArrayAppendValue(v7, @"Restore.plist");
        v25 = 0;
        v26 = @"Firmware/all_flash";
        v27 = @"Firmware/dfu";
      }

      CFArrayAppendValue(v7, v27);
      CFArrayAppendValue(v7, v26);
      CFArrayAppendValue(v7, @"Firmware/device_map.txt");
      CFArrayAppendValue(v7, @"Firmware/device_map.plist");
      CFArrayAppendValue(v7, @"Firmware/SE");
      if (a5)
      {
        OUTLINED_FUNCTION_27();
        if (!AMAuthInstallBundleShouldPersonalizeOSImage(v28, v29, v30, v31))
        {
          CFArrayAppendValue(Mutable, @"RecoveryOSOS");
        }
      }

      v32 = 2;
      if (Mutable && v7)
      {
        v33 = OUTLINED_FUNCTION_43();
        v32 = AMAuthInstallBundlePersonalizePartialWithRecoveryOS(v33, v34, a3, a4, a5, a6, v35, Mutable, v7, v25);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    v32 = 1;
  }

  SafeRelease(v37);
  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeRelease(0);
  return v32;
}

CFIndex AMAuthInstallBundlePersonalizeRecoveryOS(void *a1, const void *a2, const void **a3, const __CFString *a4)
{
  Mutable = 0;
  err = 0;
  Code = 1;
  if (a1)
  {
    v7 = 0;
    if (a2)
    {
      _AMAuthInstallBundleShouldPersonalizeOS(a1, a2, a4, &err);
      if (err)
      {
        AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeRecoveryOS", "failed to inspect the recovery OS image entry %@", err);
        Code = CFErrorGetCode(err);
        Mutable = 0;
        v7 = 0;
      }

      else
      {
        CFGetAllocator(a1);
        OUTLINED_FUNCTION_46();
        Mutable = CFArrayCreateMutable(v11, v12, v13);
        CFGetAllocator(a1);
        OUTLINED_FUNCTION_46();
        v7 = CFArrayCreateMutable(v14, v15, v16);
        if (AMAuthInstallApPersonalizationEnabled(a1))
        {
          CFArrayAppendValue(Mutable, @"OS");
          if (!AMAuthInstallApIsImg4(a1))
          {
            CFArrayAppendValue(Mutable, @"Diags");
          }

          v17 = @"Restore.plist";
          v18 = @"BuildManifest.plist";
        }

        else
        {
          CFArrayAppendValue(Mutable, @"RestoreRamDisk");
          CFArrayAppendValue(Mutable, @"OSRamdisk");
          CFArrayAppendValue(Mutable, @"KernelCache");
          CFArrayAppendValue(Mutable, @"OS");
          CFArrayAppendValue(v7, @"BuildManifest.plist");
          CFArrayAppendValue(v7, @"Restore.plist");
          v17 = @"Firmware/all_flash";
          v18 = @"Firmware/dfu";
        }

        CFArrayAppendValue(v7, v18);
        CFArrayAppendValue(v7, v17);
        CFArrayAppendValue(v7, @"Firmware/device_map.txt");
        CFArrayAppendValue(v7, @"Firmware/device_map.plist");
        CFArrayAppendValue(v7, @"Firmware/SE");
        if (!AMAuthInstallBundleShouldPersonalizeOSImage(a1, a2, a4, &err))
        {
          CFArrayAppendValue(Mutable, @"RecoveryOSOS");
        }

        if (err)
        {
          AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeRecoveryOS", "failed to inspect the OS image entry %@", err);
          Code = CFErrorGetCode(err);
        }

        else
        {
          Code = 2;
          if (Mutable && v7)
          {
            Code = AMAuthInstallBundlePersonalizePartialRecoveryOS(a1, a3, a2, a4);
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeRelease(err);
  return Code;
}

void AMAuthInstallBundleCopyURLForKey(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, int a17, __int16 a18, char a19, char a20, CFStringRef pathComponent, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_49();
  a32 = v38;
  a33 = v41;
  v42 = 0;
  pathComponent = 0;
  a20 = 0;
  if (!v43 || (v44 = v39) == 0 || (v45 = v40) == 0)
  {
    OUTLINED_FUNCTION_26();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_26();
  if (v48)
  {
    v49 = v46;
    v81 = v48;
    v50 = v47;
    IsRecoveryVariant = _AMAuthInstallIsRecoveryVariant(v46, v47);
    v51 = OUTLINED_FUNCTION_43();
    if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(v51, v52, v53))
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyURLForKey", "failed to create receipt dict");
      v42 = 0;
      v34 = 0;
      v35 = 0;
      v37 = 0;
      OUTLINED_FUNCTION_35();
      goto LABEL_18;
    }

    IsRecoveryVariant = CFBooleanGetValue(IsRecoveryVariant);
    v54 = CFGetAllocator(v49);
    if (IsRecoveryVariant)
    {
      Copy = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v54, v44);
    }

    else
    {
      Copy = CFStringCreateCopy(v54, v44);
    }

    v36 = Copy;
    v56 = CFGetAllocator(v49);
    v42 = CFStringCreateWithFormat(v56, 0, @"%@.%@.%@.");
    if (v42)
    {
      CFGetAllocator(v49);
      OUTLINED_FUNCTION_30();
      MutableCopy = CFStringCreateMutableCopy(v57, v58, v59);
      v34 = MutableCopy;
      if (MutableCopy)
      {
        CFStringAppend(MutableCopy, @"PersonalizedPath");
        v61 = CFGetAllocator(v49);
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v61, 0, v34);
        if (ValueForKeyPathInDict)
        {
          v63 = ValueForKeyPathInDict;
          IsRecoveryVariant = v36;
          v35 = 0;
          v36 = 0;
LABEL_13:
          v64 = CFGetAllocator(v49);
          v65 = CFURLCreateCopyAppendingPathComponent(v64, v45, v63, 0);
          v37 = v65;
          if (!v65)
          {
            goto LABEL_18;
          }

          v66 = CFRetain(v65);
          goto LABEL_17;
        }

        Value = CFDictionaryGetValue(*v49[16], v44);
        if (Value)
        {
          CFRetain(Value);
          v35 = 0;
          OUTLINED_FUNCTION_21_0();
LABEL_17:
          *v81 = v66;
          goto LABEL_18;
        }

        v68 = OUTLINED_FUNCTION_43();
        if (AMAuthInstallBundleCopyBuildIdentityForVariant(v68, v69, v50, v70))
        {
          AMAuthInstallLog(3, "AMAuthInstallBundleCopyURLForKey", "failed to copy variant");
          v35 = 0;
          v37 = 0;
          IsRecoveryVariant = v36;
          goto LABEL_37;
        }

        CFGetAllocator(v49);
        OUTLINED_FUNCTION_30();
        v74 = CFStringCreateMutableCopy(v71, v72, v73);
        v35 = v74;
        if (v74)
        {
          CFStringAppend(v74, @"Path");
          v75 = CFGetAllocator(v49);
          v76 = AMAuthInstallSupportGetValueForKeyPathInDict(v75, 0, v35);
          if (!v76)
          {
            OUTLINED_FUNCTION_21_0();
            goto LABEL_18;
          }

          v77 = v76;
          v78 = CFGetAllocator(v49);
          IsRecoveryVariant = v36;
          if (!AMAuthInstallSupportCreatePrependedFilePath(v78, v36, v77, &pathComponent))
          {
            v79 = CFGetAllocator(v49);
            v80 = CFURLCreateCopyAppendingPathComponent(v79, v45, pathComponent, 0);
            v36 = v80;
            if (!v80)
            {
              v37 = 0;
              goto LABEL_18;
            }

            if (AMAuthInstallSupportFileURLExists(v80, &a20))
            {
              v37 = 0;
              goto LABEL_18;
            }

            if (a20)
            {
              v63 = pathComponent;
            }

            else
            {
              v63 = v77;
            }

            goto LABEL_13;
          }

          AMAuthInstallLog(3, "AMAuthInstallBundleCopyURLForKey", "failed to prepend entry name to path");
          v37 = 0;
LABEL_37:
          v36 = 0;
          goto LABEL_18;
        }

LABEL_32:
        OUTLINED_FUNCTION_21_0();
        goto LABEL_18;
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = 0;
    goto LABEL_32;
  }

LABEL_18:
  SafeRelease(pathComponent);
  SafeRelease(0);
  SafeRelease(IsRecoveryVariant);
  SafeRelease(v42);
  SafeRelease(v34);
  SafeRelease(v35);
  SafeRelease(0);
  SafeRelease(v37);
  SafeRelease(v36);
  OUTLINED_FUNCTION_48();
}

uint64_t AMAuthInstallBundlePersonalizeRestoreLocalPolicy(const void *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v8 = CFGetAllocator(a1);
  cf = 0;
  v17 = 0;
  theDict = 0;
  v15 = 0;
  v13 = 0;
  ServerRequest = AMAuthInstallPlatformCopyURLWithAppendedComponent(v8, a2, @"amai/LocalPolicy.restore.img4", 0, &v15);
  if (ServerRequest || (ServerRequest = _AMAuthInstallBundleLocalPolicyCopyGivenOrDefaultNSIH(a1, a2, a3, &v17), ServerRequest) || (ServerRequest = AMAuthInstallRestoreLocalPolicyCreateServerRequest(a1, v17, &theDict), ServerRequest) || (ServerRequest = AMAuthInstallApCreatePersonalizedResponse(a1, theDict, &v13), ServerRequest) || (ServerRequest = AMAuthInstallLocalPolicyStitchTicketData(a1, v13, &cf), ServerRequest))
  {
    v11 = ServerRequest;
  }

  else
  {
    v10 = AMAuthInstallSupportWriteDataToFileURL(v8, cf, v15, 1);
    if (v10)
    {
      v11 = v10;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeRestoreLocalPolicy", "failed to write local policy to %@", v15);
    }

    else
    {
      v11 = 0;
      if (a4)
      {
        *a4 = CFRetain(cf);
      }
    }
  }

  SafeRelease(v13);
  SafeRelease(theDict);
  SafeRelease(v15);
  SafeRelease(cf);
  SafeRelease(v17);
  SafeRelease(0);
  return v11;
}

uint64_t AMAuthInstallBundlePersonalizeRecoveryOSLocalPolicy(void *a1, const void *a2, const void *a3, const void *a4, const __CFUUID *a5, CFTypeRef *a6)
{
  v12 = CFGetAllocator(a1);
  cf = 0;
  v21 = 0;
  theDict = 0;
  v19 = 0;
  v17 = 0;
  ServerRequest = AMAuthInstallPlatformCopyURLWithAppendedComponent(v12, a2, @"amai/LocalPolicy.recoveryOS.img4", 0, &v19);
  if (ServerRequest || (ServerRequest = _AMAuthInstallBundleLocalPolicyCopyGivenOrDefaultNSIH(a1, a2, a3, &v21), ServerRequest) || (ServerRequest = AMAuthInstallRecoveryOSLocalPolicyCreateServerRequest(a1, v21, a4, a5, &theDict), ServerRequest) || (ServerRequest = AMAuthInstallApCreatePersonalizedResponse(a1, theDict, &v17), ServerRequest) || (ServerRequest = AMAuthInstallLocalPolicyStitchTicketData(a1, v17, &cf), ServerRequest))
  {
    v15 = ServerRequest;
  }

  else
  {
    v14 = AMAuthInstallSupportWriteDataToFileURL(v12, cf, v19, 0);
    if (v14)
    {
      v15 = v14;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeRecoveryOSLocalPolicy", "failed to write local policy to %@", v19);
    }

    else
    {
      v15 = 0;
      if (a6)
      {
        *a6 = CFRetain(cf);
      }
    }
  }

  SafeRelease(v17);
  SafeRelease(theDict);
  SafeRelease(v19);
  SafeRelease(cf);
  SafeRelease(v21);
  return v15;
}

uint64_t AMAuthInstallBundlePersonalizeBasebandFirmware(void *a1, const void *a2, int a3, const __CFString *a4)
{
  v8 = CFGetAllocator(a1);
  v16 = _CFArrayCreateWithObjects(v8, v9, v10, v11, v12, v13, v14, v15, @"BasebandFirmware");
  if (!v16)
  {
    v26 = 0;
    goto LABEL_6;
  }

  v17 = CFGetAllocator(a1);
  v25 = _CFArrayCreateWithObjects(v17, v18, v19, v20, v21, v22, v23, v24, @"Restore.plist");
  v26 = v25;
  if (!v25)
  {
LABEL_6:
    v27 = 2;
    goto LABEL_4;
  }

  v27 = AMAuthInstallBundlePersonalizePartialWithRecoveryOS(a1, a2, a3, a4, 0, 0, v16, 0, v25, 0);
LABEL_4:
  SafeRelease(v16);
  SafeRelease(0);
  SafeRelease(v26);
  return v27;
}

CFTypeRef _CreateRelativePathForManifestEntry(void *a1, uint64_t a2, const __CFURL *a3, const __CFDictionary *a4, uint64_t a5)
{
  v5 = 0;
  v23 = 0;
  if (a1 && a3 && a5)
  {
    if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a3, &v23))
    {
      AMAuthInstallLog(3, "_CreateRelativePathForManifestEntry", "failed to create receipt dict");
    }

    else
    {
      v9 = CFGetAllocator(a1);
      ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v9, v23, @"%@.%@.%@.%@", v10, v11, v12, v13, v14, @"Manifest", a5, @"Info", @"PersonalizedPath");
      if (ValueForKeyWithFormat || (v16 = CFGetAllocator(a1), (ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v16, a4, @"%@.%@.%@", v17, v18, v19, v20, v21, a5, @"Info", @"Path")) != 0))
      {
        v5 = CFRetain(ValueForKeyWithFormat);
        goto LABEL_8;
      }
    }

    v5 = 0;
  }

LABEL_8:
  SafeRelease(v23);
  return v5;
}

uint64_t AMAuthInstallBundleSetEntryEnabled(uint64_t a1, const void *a2, int a3)
{
  result = 1;
  if (a1 && a2)
  {
    Mutable = *(a1 + 528);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), (*(a1 + 528) = Mutable) != 0))
    {
      _CFDictionarySetBoolean(Mutable, a2, a3);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleOverrideEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a2)
  {
    if (a3)
    {
      AMAuthInstallLog(6, "AMAuthInstallBundleOverrideEntry", "overriding entry: %@", a2);
      AMAuthInstallLog(8, "AMAuthInstallBundleOverrideEntry", "override path: %@", a3);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_27();
      CFDictionarySetValue(v6, v7, v8);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleOverrideBuildManifest(const void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    CFGetAllocator(a1);
    AMAuthInstallSupportCreateDictionaryFromFileURL();
  }

  return 1;
}

uint64_t AMAuthInstallBundleOverrideRecoveryOSBuildManifest(const void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    CFGetAllocator(a1);
    AMAuthInstallSupportCreateDictionaryFromFileURL();
  }

  return 1;
}

uint64_t AMAuthInstallBundleOverrideBuildManifestEntries(void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1[16] + 16));
  if (!a2)
  {
    AMAuthInstallLog(6, "AMAuthInstallBundleOverrideBuildManifestEntries", "clearing build identity overrides");
    v6 = 0;
    goto LABEL_6;
  }

  v4 = CFGetAllocator(a1);
  Copy = CFDictionaryCreateCopy(v4, a2);
  if (Copy)
  {
    v6 = Copy;
    AMAuthInstallLog(8, "AMAuthInstallBundleOverrideBuildManifestEntries", "overriding build identity entries: %@", a2);
LABEL_6:
    result = 0;
    *(a1[16] + 16) = v6;
    return result;
  }

  return 2;
}

uint64_t AMAuthInstallBundleOverrideEntries(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    return 1;
  }

  if (a2)
  {
    CFGetAllocator(cf);
    OUTLINED_FUNCTION_46();
    MutableCopy = CFDictionaryCreateMutableCopy(v4, v5, v6);
    if (MutableCopy)
    {
      v8 = MutableCopy;
      AMAuthInstallLog(8, "AMAuthInstallBundleOverrideEntries", "overriding entries: %@", a2);
      v9 = OUTLINED_FUNCTION_33();
      SafeRelease(v9);
      result = 0;
      **(cf + 16) = v8;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    AMAuthInstallLog(6, "AMAuthInstallBundleOverrideEntries", "clearing overrides");
    v11 = OUTLINED_FUNCTION_33();
    CFDictionaryRemoveAllValues(v11);
    return 0;
  }

  return result;
}

CFIndex _AMAuthInstallBundleApplyMeasurements(void *a1, CFStringRef theString1, void *a3, const __CFDictionary *a4, CFMutableDictionaryRef *a5)
{
  theDict = 0;
  v52 = theString1;
  err = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_12_2();
    Code = 1;
    goto LABEL_40;
  }

  ValueForKeyWithFormat = 0;
  Code = 1;
  if (!theString1 || (v9 = a3) == 0)
  {
    v6 = 0;
    goto LABEL_40;
  }

  v6 = 0;
  if (!a5)
  {
    goto LABEL_40;
  }

  if (CFStringCompare(theString1, @"BasebandFirmware", 0) == kCFCompareEqualTo)
  {
    v24 = OUTLINED_FUNCTION_24();
    Value = CFDictionaryGetValue(v24, @"VinylFirmware");
    v26 = Value;
    if (Value)
    {
      AMAuthInstallLog(8, "_AMAuthInstallBundleApplyMeasurements", "using vinyl firmware override: %@ = %@", @"VinylFirmware", Value);
    }

    Measurements = AMAuthInstallBasebandCreateMeasurements(a1, v9, v26, &theDict);
    if (Measurements)
    {
      Code = Measurements;
      goto LABEL_39;
    }

    v28 = a1[6];
    if (v28 && *(v28 + 4) == 104)
    {
      IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v28 + 8));
      v30 = kAMAuthInstallTagBbPsiPartialDigest;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v30 = kAMAuthInstallTagBbPsi2PartialDigest;
      }

      v31 = *v30;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v32 = kAMAuthInstallTagBbRestorePsi2PartialDigest;
      }

      else
      {
        v32 = kAMAuthInstallTagBbRestorePsiPartialDigest;
      }

      CFDictionaryRemoveValue(theDict, v31);
      v33 = *v32;
      CFDictionaryRemoveValue(theDict, v33);
      CFDictionaryRemoveValue(*a5, v31);
      CFDictionaryRemoveValue(*a5, v33);
    }

    a4 = 0;
    goto LABEL_26;
  }

  if (CFStringCompare(theString1, @"eUICC,Main", 0) == kCFCompareEqualTo || CFStringCompare(theString1, @"eUICC,Gold", 0) == kCFCompareEqualTo)
  {
    v20 = OUTLINED_FUNCTION_24();
    v21 = CFDictionaryGetValue(v20, @"VinylFirmware");
    if (v21)
    {
      v22 = v21;
      AMAuthInstallLog(8, "_AMAuthInstallBundleApplyMeasurements", "using vinyl firmware override: %@ = %@", @"VinylFirmware", v21);
      v9 = v22;
    }

    Code = AMAuthInstallVinylCreateMeasurements(a1, v9, &theDict, &v52);
    a4 = 0;
    OUTLINED_FUNCTION_12_2();
    if (v23)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  v13 = CFGetAllocator(a1);
  v6 = @"Info";
  ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v13, a4, @"%@.%@", v14, v15, v16, v17, v18, @"Info", @"Img4PayloadType");
  valid = AMAuthInstallApImg4ValidImage(v9, &err);
  if (err)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to check file %@ with error: %@", theString1, err);
    Code = CFErrorGetCode(err);
LABEL_39:
    OUTLINED_FUNCTION_12_2();
    goto LABEL_40;
  }

  if (valid)
  {
    v39 = *(a1[2] + 128);
    goto LABEL_50;
  }

  v40 = CFGetAllocator(a1);
  v46 = AMAuthInstallSupportGetValueForKeyWithFormat(v40, a4, @"%@.%@", v41, v42, v43, v44, v45, @"Info", @"HashMethod");
  if (!v46 || (v6 = v46, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v6)))
  {
    v39 = 256;
    goto LABEL_50;
  }

  v48 = *(a1[2] + 112);
  if (CFStringCompare(v6, @"sha1", 0))
  {
    if (CFStringCompare(v6, @"sha2-256", 0))
    {
      if (CFStringCompare(v6, @"sha2-384", 0))
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "digest type in the build manifest is not supported");
        OUTLINED_FUNCTION_12_2();
        Code = 7;
        goto LABEL_40;
      }

      v39 = 384;
    }

    else
    {
      v39 = 256;
    }
  }

  else
  {
    v39 = 1;
  }

  if (v48)
  {
LABEL_50:
    MeasurementsWithTag = AMAuthInstallApCreateMeasurementsWithTag(a1, v9, ValueForKeyWithFormat, v39, 0, 0, &theDict);
    if (MeasurementsWithTag)
    {
      Code = MeasurementsWithTag;
      AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to measure %@", theString1);
      goto LABEL_39;
    }

LABEL_26:
    v34 = theDict;
    if (!theDict)
    {
      AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed find measurementsDict for entry %@", v52);
      OUTLINED_FUNCTION_12_2();
      Code = 8;
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  v34 = AMAuthInstallApMeasureBinary(v9, 0x100000, v39, &err);
  theDict = v34;
  if (!v34)
  {
    Code = CFErrorGetCode(err);
    AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to measure %@ with error: %@", theString1, err);
    OUTLINED_FUNCTION_12_2();
    goto LABEL_40;
  }

LABEL_27:
  Count = CFDictionaryGetCount(v34);
  if (Count < 1)
  {
    Code = 0;
    goto LABEL_39;
  }

  v36 = Count;
  ValueForKeyWithFormat = calloc(8uLL, Count);
  v6 = calloc(8uLL, v36);
  CFDictionaryGetKeysAndValues(theDict, &ValueForKeyWithFormat->isa, &v6->isa);
  for (i = 0; i != v36; ++i)
  {
    if (!a4 || CFDictionaryContainsKey(a4, *(&ValueForKeyWithFormat->isa + i)) || CFStringCompare(*(&ValueForKeyWithFormat->isa + i), @"MemoryMap", 0) == kCFCompareEqualTo || CFStringCompare(*(&ValueForKeyWithFormat->isa + i), @"RawDataDigest", 0) == kCFCompareEqualTo)
    {
      CFDictionarySetValue(*a5, *(&ValueForKeyWithFormat->isa + i), *(&v6->isa + i));
    }
  }

  Code = 0;
LABEL_40:
  SafeRelease(theDict);
  SafeFree(ValueForKeyWithFormat);
  SafeFree(v6);
  SafeRelease(err);
  return Code;
}

uint64_t _AMAuthInstallBundleSetObjectPropertyOverrides(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v11 = a3;
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = *(a1 + 424);
        if (result)
        {
          result = CFDictionaryGetValue(result, @"ObjectRequestEntries");
          if (result)
          {
            result = CFDictionaryGetValue(result, a2);
            if (result)
            {
              v7 = OUTLINED_FUNCTION_39();
              v8 = CFGetAllocator(v7);
              result = AMAuthInstallSupportApplyDictionaryOverrides(v8, v3, &v11, 0);
              if (result)
              {
                v10 = a2;
                v9 = result;
                AMAuthInstallLog(3, "_AMAuthInstallBundleSetObjectPropertyOverrides", "failed to set override object properties for %@", v10, v11);
                return v9;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleAllowLinks(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 432) = a2 == 0;
  return result;
}

uint64_t AMAuthInstallBundlePreferBuildManifest(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 434) = a2;
  return result;
}

uint64_t AMAuthInstallBundleSkipInstallation(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 435) = a2;
  return result;
}

uint64_t AMAuthInstallBundleInstallFile(_BYTE *a1, const __CFURL *a2, CFURLRef url)
{
  SoftLink = 1;
  if (a2 && a1 && url)
  {
    if (a1[432])
    {
      v12 = 0;
      v7 = AMAuthInstallSupportFileURLExists(url, &v12);
      if (v7)
      {
        SoftLink = v7;
        v11 = "AMAuthInstallSupportFileURLExists failed.";
      }

      else
      {
        if (!v12)
        {
          return 0;
        }

        v8 = CFGetAllocator(a1);
        v9 = AMAuthInstallSupportCopyFile(v8, url, a2);
        if (!v9)
        {
          return 0;
        }

        SoftLink = v9;
        v11 = "AMAuthInstallSupportCopyFile failed.";
      }

      AMAuthInstallLog(3, "AMAuthInstallBundleInstallFile", v11);
      return SoftLink;
    }

    SoftLink = AMAuthInstallPlatformCreateSoftLink(a2, url);
    if (SoftLink)
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleInstallFile", "AMAuthInstallPlatformCreateSoftLink failed.");
    }
  }

  return SoftLink;
}

uint64_t AMAuthInstallBundleRequestTicketWithoutNonce(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 433) = a2;
  return result;
}

uint64_t _AMAuthInstallBundleGetValueForReservedKey(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a3 && a2 && *(a1 + 16))
  {
    v6 = OUTLINED_FUNCTION_31(1, @"ApRawProductionMode");
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_31(v6, @"ApRawSecurityMode");
      if (v7)
      {
        v8 = OUTLINED_FUNCTION_31(v7, @"ApInRomDFU");
        if (v8)
        {
          v9 = OUTLINED_FUNCTION_31(v8, @"ApCurrentSecurityMode");
          if (v9)
          {
            v10 = OUTLINED_FUNCTION_31(v9, @"ApCurrentProductionMode");
            if (v10)
            {
              v11 = OUTLINED_FUNCTION_31(v10, @"ApRequiresImage4");
              if (v11)
              {
                if (OUTLINED_FUNCTION_31(v11, @"ApDemotionPolicyOverride"))
                {
                  return 8;
                }

                v15 = *(*(a1 + 16) + 104);
                goto LABEL_22;
              }

              IsImg4 = AMAuthInstallApIsImg4(a1);
              v14 = MEMORY[0x29EDB8F00];
              if (!IsImg4)
              {
                v14 = MEMORY[0x29EDB8EF8];
              }

LABEL_21:
              v15 = *v14;
LABEL_22:
              result = 0;
              *a3 = v15;
              return result;
            }

            v12 = MEMORY[0x29EDB8F00];
            v13 = *(*(a1 + 16) + 97);
          }

          else
          {
            v12 = MEMORY[0x29EDB8F00];
            v13 = *(*(a1 + 16) + 98);
          }
        }

        else
        {
          v12 = MEMORY[0x29EDB8F00];
          v13 = *(*(a1 + 16) + 96);
        }
      }

      else
      {
        v12 = MEMORY[0x29EDB8F00];
        v13 = *(*(a1 + 16) + 88);
      }
    }

    else
    {
      v12 = MEMORY[0x29EDB8F00];
      v13 = *(*(a1 + 16) + 20);
    }

    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x29EDB8EF8];
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetValueForCondition(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t *a4)
{
  cf = 0;
  result = 1;
  if (a1 && a2 && a4)
  {
    if (_AMAuthInstallBundleGetValueForReservedKey(a1, a2, &cf))
    {
      DefaultResult = _AMAuthInstallBundleGetDefaultResult(a3);
LABEL_16:
      result = 0;
      *a4 = DefaultResult;
      return result;
    }

    v9 = CFGetTypeID(cf);
    if (v9 == CFBooleanGetTypeID())
    {
      v10 = MEMORY[0x29EDB8F00];
      if (cf != a3)
      {
        v10 = MEMORY[0x29EDB8EF8];
      }
    }

    else
    {
      v11 = CFGetTypeID(cf);
      if (v11 != CFStringGetTypeID())
      {
        DefaultResult = 0;
        goto LABEL_16;
      }

      if (CFStringCompare(cf, a3, 0))
      {
        v10 = MEMORY[0x29EDB8EF8];
      }

      else
      {
        v10 = MEMORY[0x29EDB8F00];
      }
    }

    DefaultResult = *v10;
    goto LABEL_16;
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetValueForAction(uint64_t a1, uint64_t a2, CFTypeRef cf, uint64_t *a4)
{
  v9 = 0;
  result = 1;
  if (a1 && a2 && a4)
  {
    v7 = cf;
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID() && !_AMAuthInstallBundleGetValueForReservedKey(a1, v7, &v9))
    {
      v7 = v9;
    }

    result = 0;
    *a4 = v7;
  }

  return result;
}

uint64_t _AMAuthInstallBundleCheckCondition(uint64_t a1, CFDictionaryRef theDict, char *a3)
{
  v3 = 0;
  v4 = 1;
  if (!a1 || !theDict)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v7 = 0;
  if (a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v3 = malloc(8 * Count);
    if (v3)
    {
      v7 = malloc(8 * Count);
      if (v7)
      {
        CFDictionaryGetKeysAndValues(theDict, v3, v7);
        if (Count < 1)
        {
          v11 = 1;
LABEL_12:
          v4 = 0;
          if (Count)
          {
            v14 = v11;
          }

          else
          {
            v14 = 1;
          }

          *a3 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
          while (1)
          {
            v12 = v3[v10];
            v13 = v7[v10];
            BOOLean = 0;
            if (_AMAuthInstallBundleGetValueForCondition(a1, v12, v13, &BOOLean))
            {
              break;
            }

            v11 &= CFBooleanGetValue(BOOLean);
            if (Count == ++v10)
            {
              goto LABEL_12;
            }
          }

          v4 = 1;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    v4 = 2;
  }

LABEL_16:
  SafeFree(v3);
  SafeFree(v7);
  return v4;
}

uint64_t _AMAuthInstallBundleApplyActions(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  v3 = 0;
  v4 = 1;
  if (!a1 || !theDict)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
  if (a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v3 = malloc(8 * Count);
    if (v3)
    {
      v6 = malloc(8 * Count);
      if (v6)
      {
        v9 = OUTLINED_FUNCTION_14_1();
        CFDictionaryGetKeysAndValues(v9, v10, v6);
        if (Count < 1)
        {
LABEL_10:
          v4 = 0;
        }

        else
        {
          v11 = 0;
          while (1)
          {
            v12 = v3[v11];
            v13 = v6[v11];
            value = 0;
            if (_AMAuthInstallBundleGetValueForAction(a1, v12, v13, &value))
            {
              break;
            }

            CFDictionarySetValue(a3, v12, value);
            if (Count == ++v11)
            {
              goto LABEL_10;
            }
          }

          v4 = 1;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v4 = 2;
  }

LABEL_11:
  SafeFree(v3);
  SafeFree(v6);
  return v4;
}

uint64_t AMAuthInstallBundleProcessRulesWithEntryDict(uint64_t a1, CFDictionaryRef theDict)
{
  result = 1;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Info");
    if (Value)
    {
      result = CFDictionaryGetValue(Value, @"RestoreRequestRules");
      if (result)
      {

        return AMAuthInstallBundleProcessRules(a1, result, theDict);
      }
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleProcessRules(uint64_t a1, const __CFArray *a2, __CFDictionary *a3)
{
  v4 = 1;
  if (a1 && a2 && a3)
  {
    v7 = OUTLINED_FUNCTION_39();
    Count = CFArrayGetCount(v7);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v9 = Count;
      v10 = 0;
      while (1)
      {
        v18 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
        if (!ValueAtIndex)
        {
          break;
        }

        v12 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"Conditions");
        if (Value)
        {
          v15 = _AMAuthInstallBundleCheckCondition(v3, Value, &v18);
          if (v15)
          {
            v4 = v15;
            AMAuthInstallLog(3, "AMAuthInstallBundleProcessRules", "failed to check conditions");
            return v4;
          }
        }

        if (v18)
        {
          v14 = CFDictionaryGetValue(v12, @"Actions");
          if (v14)
          {
            v16 = _AMAuthInstallBundleApplyActions(v3, v14, a3);
            if (v16)
            {
              v4 = v16;
              AMAuthInstallLog(3, "AMAuthInstallBundleProcessRules", "failed to apply actions");
              return v4;
            }
          }
        }

        if (v9 == ++v10)
        {
          return 0;
        }
      }

      return 7;
    }
  }

  return v4;
}

uint64_t AMAuthInstallBundleFDRSupported(void *a1, const void *a2, const __CFString *a3, char *a4)
{
  v16 = 0;
  if (a1)
  {
    v5 = 1;
    if (a4)
    {
      if (a3)
      {
        if (a2)
        {
          v7 = a1[16];
          if (v7)
          {
            v8 = *(v7 + 32);
            if (!v8)
            {
              v15 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &v16);
              if (v15)
              {
                v5 = v15;
                goto LABEL_15;
              }

              v8 = *(a1[16] + 32);
            }

            Value = CFDictionaryGetValue(v8, @"Info");
            if (Value && (v10 = CFDictionaryGetValue(Value, @"FDRSupport")) != 0)
            {
              v11 = v10;
              v12 = CFGetTypeID(v10);
              if (v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11))
              {
                AMAuthInstallLog(6, "AMAuthInstallBundleFDRSupported", "FDR is supported for this device");
                v13 = 1;
              }

              else
              {
                v13 = 0;
              }

              v5 = 0;
              *a4 = v13;
            }

            else
            {
              v5 = 8;
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 1;
  }

LABEL_15:
  SafeRelease(v16);
  return v5;
}

uint64_t AMAuthInstallBundleFDRBasebandSupported(void *a1, const void *a2, const __CFString *a3, char *a4)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  if (!a1)
  {
    v5 = 1;
    goto LABEL_14;
  }

  v5 = 1;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        v7 = a1[16];
        if (v7)
        {
          v8 = *(v7 + 32);
          if (!v8)
          {
            v10 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &v14);
            if (v10)
            {
              goto LABEL_19;
            }

            v8 = *(a1[16] + 32);
            if (!v8)
            {
              v5 = 14;
              goto LABEL_14;
            }
          }

          Value = CFDictionaryGetValue(v8, @"BbChipID");
          if (!Value)
          {
            v11 = 0;
            goto LABEL_12;
          }

          if (!_CFStringToUInt32(Value, &v13))
          {
            v5 = 3;
            goto LABEL_14;
          }

          v10 = AMAuthInstallBasebandSupportsFDR(v13, &v15);
          if (!v10)
          {
            v11 = v15;
LABEL_12:
            v5 = 0;
            *a4 = v11;
            goto LABEL_14;
          }

LABEL_19:
          v5 = v10;
        }
      }
    }
  }

LABEL_14:
  SafeRelease(v14);
  return v5;
}

uint64_t AMAuthInstallGetFirstVariantInBundle(void *cf, const void *a2)
{
  v2 = @"ApBoardID";
  v25 = @"ApChipID";
  key = @"ApSecurityDomain";
  if (!cf)
  {
    v4 = 1;
    goto LABEL_10;
  }

  v4 = 1;
  if (a2)
  {
    v6 = cf[2];
    if (v6)
    {
      v7 = *(v6 + 160);
      if (!v7)
      {
        goto LABEL_8;
      }

      v22 = v7;
      v8 = OUTLINED_FUNCTION_47();
      v25 = CFStringCreateWithFormat(v8, v9, v10, v22, @"ChipID");
      if (v25)
      {
        OUTLINED_FUNCTION_41();
        v23 = v11;
        v12 = OUTLINED_FUNCTION_47();
        v2 = CFStringCreateWithFormat(v12, v13, v14, v23, @"BoardID");
        if (v2)
        {
          OUTLINED_FUNCTION_41();
          v24 = v15;
          v16 = OUTLINED_FUNCTION_47();
          key = CFStringCreateWithFormat(v16, v17, v18, v24, @"SecurityDomain");
          if (key)
          {
LABEL_8:
            v19 = CFGetAllocator(cf);
            v20 = AMAuthInstallBundleCopyPublishedVariantsArray(v19, a2);
            if (v20)
            {
              v4 = v20;
              AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "AMAuthInstallBundleCopyPublishedVariantsArray failed");
            }

            else
            {
              AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "AMAuthInstallBundleCopyPublishedVariantsArray returned NULL");
              v4 = 7;
            }

            goto LABEL_10;
          }

          AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "failed secdomKey allocation");
          key = 0;
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "failed boardKey allocation");
        }
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "failed chipKey allocation");
        v25 = 0;
      }

      v4 = 99;
    }
  }

LABEL_10:
  SafeRelease(0);
  SafeRelease(v2);
  SafeRelease(v25);
  SafeRelease(key);
  return v4;
}

CFIndex AMAuthInstallBundleGetBuildIdentityVersionData(void *a1, const void *a2, const __CFString *a3, CFDataRef *a4)
{
  v4 = 0;
  v29 = *MEMORY[0x29EDCA608];
  error = 0;
  cf = 0;
  *values = xmmword_29EE9AC50;
  v28 = @"BuildTrain";
  Code = 1;
  if (a1 && a2 && a3)
  {
    v9 = 0;
    Mutable = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    v4 = CFArrayCreate(*MEMORY[0x29EDB8ED8], values, 3, MEMORY[0x29EDB9000]);
    if (v4)
    {
      v12 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &cf);
      if (!v12)
      {
        v13 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (Mutable)
        {
          if (CFArrayGetCount(v4) >= 1)
          {
            v14 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, v14);
              if (!ValueAtIndex)
              {
                AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "failed getting the field key %d.", v14);
                v9 = 0;
                goto LABEL_29;
              }

              v16 = ValueAtIndex;
              v17 = CFGetAllocator(a1);
              v9 = CFStringCreateWithFormat(v17, 0, @"Info.%@", v16);
              if (!v9)
              {
                AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "failed creating the field key %@ Path.", v16);
                goto LABEL_29;
              }

              v18 = CFGetAllocator(a1);
              ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v18, cf, v9);
              if (!ValueForKeyPathInDict)
              {
                break;
              }

              CFDictionaryAddValue(Mutable, v16, ValueForKeyPathInDict);
              CFRelease(v9);
              if (++v14 >= CFArrayGetCount(v4))
              {
                goto LABEL_14;
              }
            }

            AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "Failed to get field key path %@ from the buildIdentity", v16);
            goto LABEL_31;
          }

LABEL_14:
          v20 = CFGetAllocator(a1);
          v21 = AMAuthInstallSupportGetValueForKeyPathInDict(v20, cf, @"ProductMarketingVersion");
          if (!v21)
          {
            AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "Failed to get kAMAuthInstallBuildIdentityProductMarketingVersion path from the buildIdentity");
            v9 = 0;
LABEL_31:
            Code = 4;
            goto LABEL_18;
          }

          CFDictionaryAddValue(Mutable, @"ProductVersion", v21);
          v22 = CFGetAllocator(a1);
          v23 = CFPropertyListCreateData(v22, Mutable, kCFPropertyListXMLFormat_v1_0, 0, &error);
          *a4 = v23;
          if (!v23)
          {
            Code = CFErrorGetCode(error);
            AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "Failed transformatting the property List to CFData obj %@", error);
            goto LABEL_17;
          }
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "Failed creating dictionary for the version data.");
        }

        Code = 0;
LABEL_17:
        v9 = 0;
        goto LABEL_18;
      }

      Code = v12;
      AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "AMAuthInstallBundleCopyBuildIdentityForVariant failed.");
      v9 = 0;
      Mutable = 0;
    }

    else
    {
      v9 = 0;
      Mutable = 0;
LABEL_29:
      Code = 2;
    }
  }

  else
  {
    v9 = 0;
    Mutable = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Code;
}

void _AMAuthInstallBundleCopyEntryURLs(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, CFStringRef filePath, const __CFString *a14, CFURLRef anURL, void *value, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_49();
  a27 = v28;
  a28 = v37;
  v38 = 0;
  anURL = 0;
  value = 0;
  a14 = 0;
  if (!v29 || (v39 = v30) == 0 || (v40 = v32) == 0 || (v41 = v33) == 0)
  {
    v43 = 0;
    goto LABEL_25;
  }

  v42 = v36;
  v43 = 0;
  if (!v36)
  {
    goto LABEL_25;
  }

  v44 = v29;
  v45 = v29[16];
  if (!v45 || !*v45)
  {
LABEL_32:
    v38 = 0;
    goto LABEL_33;
  }

  v46 = v35;
  v47 = v34;
  v48 = CFDictionaryGetValue(v31, @"Info");
  if (!v48)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "build manifest lacks info for %@");
LABEL_30:
    v38 = 0;
    v43 = 0;
    goto LABEL_25;
  }

  v71 = v42;
  v49 = CFDictionaryGetValue(v48, @"Path");
  if (!v49)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "build manifest lacks relative path for %@");
    goto LABEL_30;
  }

  v50 = v49;
  if (v46)
  {
    v51 = CFGetAllocator(v44);
    v52 = CFStringCreateWithFormat(v51, 0, @"RecoveryOS%@");
    v53 = OUTLINED_FUNCTION_24();
    v54 = CFDictionaryGetValue(v53, v52);
    SafeRelease(v52);
  }

  else
  {
    v55 = OUTLINED_FUNCTION_24();
    v54 = CFDictionaryGetValue(v55, v39);
  }

  value = v54;
  if (v54)
  {
    CFRetain(v54);
    AMAuthInstallLog(8, "_AMAuthInstallBundleCopyEntryURLs", "using override: %@ = %@");
  }

  else
  {
    v56 = CFGetAllocator(v44);
    v57 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v56, v40, v50, 0, &value);
    if (v57)
    {
LABEL_27:
      AMAuthInstallGetLocalizedStatusString(0, v57);
      AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "failed to construct working URL: %@");
      goto LABEL_32;
    }
  }

  v58 = CFGetAllocator(v44);
  if (AMAuthInstallSupportCreatePrependedFilePath(v58, v39, v50, &a14))
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "could not prepend entryName to destination path : %@");
    goto LABEL_32;
  }

  v59 = CFGetAllocator(v44);
  v57 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v59, v41, a14, 0, &anURL);
  if (v57)
  {
    goto LABEL_27;
  }

  if (v47)
  {
    v38 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    if (!v38)
    {
      AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "could not copy path from %@");
      v43 = 0;
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_46();
    PersonalizedPathWithKey = AMAuthInstallBundleCreatePersonalizedPathWithKey(v60, v61, v62, v63);
    if (!PersonalizedPathWithKey)
    {
      v43 = 0;
      goto LABEL_25;
    }

    AMAuthInstallGetLocalizedStatusString(0, PersonalizedPathWithKey);
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyEntryURLs", "failed to construct working URL: %@");
LABEL_33:
    v43 = 0;
    goto LABEL_25;
  }

  v38 = 0;
  OUTLINED_FUNCTION_29();
  if (AMAuthInstallBundleCreatePersonalizedPathWithKey(v65, v66, v67, v68))
  {
    goto LABEL_33;
  }

  v69 = CFGetAllocator(v44);
  Mutable = CFDictionaryCreateMutable(v69, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v43 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"SourceURL", value);
    CFDictionarySetValue(v43, @"DestURL", anURL);
    CFDictionarySetValue(v43, @"RelativeSrcPath", v50);
    CFDictionarySetValue(v43, @"RelativeDestPath", 0);
    *v71 = CFRetain(v43);
  }

LABEL_25:
  SafeRelease(value);
  SafeRelease(anURL);
  SafeRelease(v38);
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(v43);
  SafeRelease(a14);
  OUTLINED_FUNCTION_48();
}

uint64_t AMAuthInstallCryptoCreateDigestForData(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  memset(&v12, 0, sizeof(v12));
  Mutable = CFDataCreateMutable(a1, 20);
  v6 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v12);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v12, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    CC_SHA1_Final(MutableBytePtr, &v12);
    v10 = 0;
    *a3 = CFRetain(v6);
  }

  else
  {
    v10 = 2;
  }

  SafeRelease(v6);
  return v10;
}

uint64_t AMAuthInstallCryptoCreateDigestForData_SHA256(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (a2 && a3)
  {
    Mutable = CFDataCreateMutable(a1, 32);
    v3 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, 32);
      BytePtr = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      MutableBytePtr = CFDataGetMutableBytePtr(v3);
      CC_SHA256(BytePtr, Length, MutableBytePtr);
      v4 = 0;
      *a3 = CFRetain(v3);
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallCryptoCreateDigestForData_SHA384(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (a2 && a3)
  {
    Mutable = CFDataCreateMutable(a1, 48);
    v3 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, 48);
      BytePtr = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      MutableBytePtr = CFDataGetMutableBytePtr(v3);
      CC_SHA384(BytePtr, Length, MutableBytePtr);
      v4 = 0;
      *a3 = CFRetain(v3);
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t _AMAuthInstallFusingProgramCreateRequest(const __CFAllocator *a1, const __CFURL *a2, CFDataRef XMLData, const __CFDictionary *cf, CFTypeRef *a5)
{
  if (cf)
  {
    v9 = cf;
    CFRetain(cf);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_10();
    v9 = CFDictionaryCreate(v10, v11, 0, v12, v13, v14);
    if (!v9)
    {
      v20 = 0;
LABEL_13:
      XMLData = 0;
      goto LABEL_14;
    }
  }

  if (!XMLData)
  {
    v20 = 0;
    Request = 0;
    v25 = 0;
    v26 = 1;
    goto LABEL_9;
  }

  v15 = OUTLINED_FUNCTION_1_10();
  Mutable = CFDictionaryCreateMutable(v15, v16, v17, v18);
  v20 = Mutable;
  if (!Mutable)
  {
    goto LABEL_13;
  }

  CFDictionarySetValue(Mutable, @"Action", XMLData);
  CFDictionarySetValue(v20, @"Parameters", v9);
  XMLData = CFPropertyListCreateXMLData(a1, v20);
  if (!XMLData)
  {
LABEL_14:
    Request = 0;
    v25 = 0;
    v26 = 2;
    goto LABEL_9;
  }

  Request = CFHTTPMessageCreateRequest(a1, @"POST", a2, *MEMORY[0x29EDB8528]);
  if (Request)
  {
    Length = CFDataGetLength(XMLData);
    v22 = OUTLINED_FUNCTION_1_10();
    v25 = CFStringCreateWithFormat(v22, v23, v24, Length);
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v25);
    CFHTTPMessageSetBody(Request, XMLData);
    v26 = 0;
    *a5 = CFRetain(Request);
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

LABEL_9:
  SafeRelease(v20);
  SafeRelease(XMLData);
  SafeRelease(Request);
  SafeRelease(v9);
  SafeRelease(v25);
  SafeRelease(0);
  return v26;
}

uint64_t _AMAuthInstallFusingProgramCopyResponseParameters(const __CFAllocator *a1, const __CFData *a2, void *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  errorString = 0;
  v10 = CFPropertyListCreateFromXMLData(a1, a2, 0, &errorString);
  v11 = v10;
  if (errorString)
  {
    v12 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallFusingProgramCopyResponseParameters", "CFPropertyListCreateFromXMLData() error: %@", errorString);
    cf = 0;
    URLForTempDirectoryRoot = AMAuthInstallSupportGetURLForTempDirectoryRoot();
    AMAuthInstallSupportCopyURLWithAppendedComponent(a1, URLForTempDirectoryRoot, @"badresponse.bin", 0, &cf);
    AMAuthInstallSupportWriteDataToFileURL(a1, a2, cf, 1);
    SafeRelease(cf);
    CFRelease(errorString);
    errorString = 0;
  }

  else if (v10)
  {
    Value = CFDictionaryGetValue(v10, @"Status");
    if (Value)
    {
      v15 = Value;
      v16 = CFDictionaryGetValue(v11, @"Message");
      v17 = CFDictionaryGetValue(v11, @"Data");
      if (CFNumberGetValue(v15, kCFNumberIntType, a3))
      {
        *a4 = SafeRetain(v16);
        v12 = 0;
        *a5 = SafeRetain(v17);
      }

      else
      {
        v12 = 3;
      }
    }

    else
    {
      v12 = 17;
    }
  }

  else
  {
    Length = CFDataGetLength(a2);
    v12 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallFusingProgramCopyResponseParameters", "can't parse response (%u bytes of apparent garbage)", Length);
  }

  SafeRelease(v11);
  SafeRelease(errorString);
  return v12;
}

uint64_t AMAuthInstallFusingProgramRequestInternal(const __CFAllocator *a1, const __CFURL *a2, const void *a3, CFTypeRef *a4, const __CFDictionary *a5)
{
  v5 = 0;
  v35 = 0;
  valuePtr = 0;
  v33 = 0;
  v34 = 0;
  v6 = 1;
  errorString = 0;
  if (!a2 || !a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_32;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v10 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"ProfileSpecifier", a3);
      v16 = _AMAuthInstallFusingProgramCreateRequest(a1, a2, @"GetFusingProgram", v10, &v35);
      if (v16)
      {
        v6 = v16;
        v5 = 0;
        v11 = 0;
        v9 = v35;
        goto LABEL_32;
      }

      AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "requesting fusing program from %@", a2);
      Value = CFDictionaryGetValue(a3, @"ChipID");
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "Chiup ID: %u", valuePtr);
      v18 = OUTLINED_FUNCTION_1_10();
      v11 = CFDataCreateMutable(v18, v19);
      v9 = v35;
      if (v11)
      {
        v20 = AMAuthInstallHttpMessageSendSync(v35, v11, a5);
        if (valuePtr == 938209 || valuePtr == 1327329 || valuePtr == 1515745 || valuePtr == 1700065 || valuePtr == 2044129 || valuePtr == 2814177 || valuePtr == 2089185)
        {
          v27 = CFPropertyListCreateFromXMLData(a1, v11, 0, &errorString);
          v33 = v27;
          if (errorString)
          {
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "Failed to get fusing response data from CFPropertyListCreateFromXMLData() error: %@", errorString);
            v5 = 0;
            goto LABEL_44;
          }

          v28 = v27;
          v5 = 0;
        }

        else
        {
          v31 = _AMAuthInstallFusingProgramCopyResponseParameters(a1, v11, &valuePtr + 4, &v34, &v33);
          if (v31)
          {
            v6 = v31;
            v5 = v34;
            goto LABEL_32;
          }

          if (HIDWORD(valuePtr))
          {
            v5 = v34;
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "server error: %@ (%d)", v34, HIDWORD(valuePtr));
            v6 = 99;
            goto LABEL_32;
          }

          v28 = v33;
          v5 = v34;
        }

        AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "httpStatus=%u, status=%d, message=%@", v20, 0, v5);
        if (v28)
        {
          v29 = CFGetTypeID(v28);
          if (v29 == CFDictionaryGetTypeID())
          {
            AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "data=%@", v28);
            v6 = 0;
            *a4 = CFRetain(v28);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "fusing program type mismatch");
            v6 = 17;
          }

          goto LABEL_32;
        }

        AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "server failed to provide a fusing program");
LABEL_44:
        v6 = 14;
        goto LABEL_32;
      }

      v5 = 0;
    }

    else
    {
      v5 = 0;
      v9 = 0;
      v11 = 0;
    }

    v6 = 2;
  }

LABEL_32:
  SafeRelease(v10);
  SafeRelease(v9);
  SafeRelease(v11);
  SafeRelease(v5);
  SafeRelease(v33);
  return v6;
}

uint64_t AMAuthInstallFusingProgramAck(const __CFAllocator *a1, const __CFURL *a2, const void *a3, int a4)
{
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (!Mutable)
  {
    v16 = 0;
    v17 = 0;
    v13 = 0;
    v12 = 0;
LABEL_12:
    v15 = 2;
    goto LABEL_8;
  }

  CFDictionarySetValue(Mutable, @"FusingProgram", a3);
  v10 = MEMORY[0x29EDB8F00];
  if (!a4)
  {
    v10 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(v9, @"Consumed", *v10);
  v11 = _AMAuthInstallFusingProgramCreateRequest(a1, a2, @"AckFusingProgram", v9, &v21);
  if (v11)
  {
    v15 = v11;
    v16 = 0;
    v17 = 0;
    v12 = 0;
    v13 = v21;
    goto LABEL_8;
  }

  AMAuthInstallLog(6, "AMAuthInstallFusingProgramAck", "acknowledging fusing program from %@", a2);
  v12 = CFDataCreateMutable(a1, 0);
  v13 = v21;
  if (!v12)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  v14 = AMAuthInstallHttpMessageSendSync(v21, v12, 0);
  v15 = _AMAuthInstallFusingProgramCopyResponseParameters(a1, v12, &v22, &v20, &v19);
  v16 = v19;
  v17 = v20;
  if (!v15)
  {
    AMAuthInstallLog(6, "AMAuthInstallFusingProgramAck", "httpStatus=%u, status=%d, message=%@, data=%@", v14, v22, v20, v19);
  }

LABEL_8:
  SafeRelease(v9);
  SafeRelease(v13);
  SafeRelease(v12);
  SafeRelease(v17);
  SafeRelease(v16);
  return v15;
}

CFTypeRef AMAuthInstallFusingCreateProfileName(__CFString *cf)
{
  v1 = cf;
  v29 = *MEMORY[0x29EDCA608];
  v27.location = 0;
  v27.length = 0;
  *values = xmmword_29EE9AC68;
  if (!cf)
  {
    v17 = 0;
LABEL_58:
    v20 = 0;
    goto LABEL_59;
  }

  if (!cf[5].info)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingCreateProfileName", "no fusing profile specified", v27.location, v27.length, values[0], values[1]);
LABEL_56:
    v17 = 0;
LABEL_57:
    v1 = 0;
    goto LABEL_58;
  }

  data = cf->data;
  if (!data)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingCreateProfileName", "ap parameters are not set", v27.location, v27.length, values[0], values[1]);
    goto LABEL_56;
  }

  v3 = *(cf[1].data + 1);
  if (v3 != 241889 && v3 != 520417 && v3 != 938209 && v3 != 1327329 && v3 != 1515745 && v3 != 1700065 && v3 != 2044129 && v3 != 2089185 && v3 != 2814177 && v3 != 8343777 && v3 != 9781473 && v3 != 9572577)
  {
    goto LABEL_48;
  }

  if (!*(data + 15))
  {
    AMAuthInstallLog(4, "AMAuthInstallFusingCreateProfileName", "hardware model is not set, fusing profile name will not be updated.");
LABEL_48:
    v17 = 0;
    v20 = 0;
    goto LABEL_49;
  }

  v15 = CFGetAllocator(cf);
  MutableCopy = CFStringCreateMutableCopy(v15, 0, *(v1->data + 15));
  v17 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_57;
  }

  CFStringLowercase(MutableCopy, 0);
  v18 = CFGetAllocator(v1);
  v19 = CFArrayCreate(v18, values, 2, MEMORY[0x29EDB9000]);
  v20 = v19;
  if (!v19)
  {
    v1 = 0;
    goto LABEL_59;
  }

  if (CFArrayGetCount(v19) >= 1)
  {
    v21 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
      v30.length = CFStringGetLength(v17);
      v30.location = 0;
      if (CFStringFindWithOptions(v17, ValueAtIndex, v30, 4uLL, &v27))
      {
        break;
      }

      if (++v21 >= CFArrayGetCount(v20))
      {
        goto LABEL_49;
      }
    }

    CFStringDelete(v17, v27);
    v25 = CFGetAllocator(v1);
    v26 = CFStringCreateMutableCopy(v25, 0, v1[5].info);
    v1 = v26;
    if (v26)
    {
      CFStringAppend(v26, @"-");
      CFStringAppend(v1, v17);
      v23 = CFRetain(v1);
      goto LABEL_50;
    }

LABEL_59:
    v23 = 0;
    goto LABEL_50;
  }

LABEL_49:
  v23 = CFRetain(v1[5].info);
  v1 = 0;
LABEL_50:
  SafeRelease(v17);
  SafeRelease(v1);
  SafeRelease(v20);
  return v23;
}

uint64_t AMAuthInstallFusingProgramRequest(_DWORD *cf)
{
  valuePtr = 0;
  v24 = 0;
  if (!cf)
  {
    goto LABEL_39;
  }

  if (!*(cf + 20))
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "no fusing server specified");
LABEL_39:
    OUTLINED_FUNCTION_0_4();
    ProfileName = 0;
    v9 = 1;
    goto LABEL_36;
  }

  if (!*(cf + 21))
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "no fusing profile specified");
    goto LABEL_39;
  }

  v6 = *(cf + 6);
  v7 = *v6;
  LODWORD(valuePtr) = v6[1];
  HIDWORD(valuePtr) = v7;
  v24 = v6[24];
  ProfileName = AMAuthInstallFusingCreateProfileName(cf);
  if (!ProfileName)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "failed to create fusing profile name");
    OUTLINED_FUNCTION_0_4();
LABEL_47:
    v9 = 99;
    goto LABEL_36;
  }

  if (*(cf + 22))
  {
    AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequest", "fusing program already exists");
    v9 = 0;
    OUTLINED_FUNCTION_0_4();
    ProfileName = 0;
    goto LABEL_36;
  }

  v10 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v2 = 0;
    goto LABEL_42;
  }

  v11 = CFGetAllocator(cf);
  v2 = CFNumberCreate(v11, kCFNumberSInt32Type, &valuePtr + 4);
  if (!v2)
  {
LABEL_42:
    v3 = 0;
    goto LABEL_43;
  }

  v12 = CFGetAllocator(cf);
  v3 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
  if (!v3)
  {
LABEL_43:
    v4 = 0;
    goto LABEL_44;
  }

  v13 = CFGetAllocator(cf);
  v4 = CFNumberCreate(v13, kCFNumberSInt32Type, &v24);
  if (!v4)
  {
LABEL_44:
    ProfileName = 0;
    v9 = 2;
    goto LABEL_36;
  }

  CFDictionarySetValue(Mutable, @"VendorID", v2);
  CFDictionarySetValue(Mutable, @"ChipID", v3);
  CFDictionarySetValue(Mutable, @"ProfileName", ProfileName);
  CFDictionarySetValue(Mutable, @"FusingStatus", v4);
  if (valuePtr != 938209 && valuePtr != 1327329 && valuePtr != 1515745 && valuePtr != 1700065 && valuePtr != 2044129 && valuePtr != 2814177 && valuePtr != 2089185)
  {
    ProfileName = 0;
    goto LABEL_34;
  }

  if (!*(cf + 24))
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "Failed to get fusing server root CA!");
    ProfileName = 0;
    goto LABEL_47;
  }

  v20 = CFGetAllocator(cf);
  v21 = CFDictionaryCreateMutable(v20, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  ProfileName = v21;
  if (!v21)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "Failed to create option Dictionary for SSL connection!");
    goto LABEL_47;
  }

  CFDictionarySetValue(v21, *MEMORY[0x29EDC91E8], *(cf + 24));
LABEL_34:
  v22 = CFGetAllocator(cf);
  v9 = AMAuthInstallFusingProgramRequestInternal(v22, *(cf + 20), Mutable, cf + 22, ProfileName);
  if (!v9)
  {
    AMAuthInstallDebugWriteObject(cf, *(cf + 22), @"fusingprogram", 2);
  }

LABEL_36:
  SafeRelease(Mutable);
  SafeRelease(v2);
  SafeRelease(v3);
  SafeRelease(v4);
  SafeRelease(ProfileName);
  return v9;
}

uint64_t AMAuthInstallHttpCreatePostBody(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v7 = 0;
  v8 = 1;
  if (!a2)
  {
    OUTLINED_FUNCTION_1_11();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1_11();
  if (v12)
  {
    v13 = v11;
    v14 = v10;
    Mutable = CFStringCreateMutable(v10, 0);
    if (Mutable)
    {
      Count = CFDictionaryGetCount(v13);
      v4 = malloc(8 * Count);
      v16 = malloc(8 * Count);
      v5 = v16;
      if (v4)
      {
        if (v16)
        {
          CFDictionaryGetKeysAndValues(v13, v4, v16);
          if (Count >= 1)
          {
            v17 = 0;
            while (1)
            {
              v18 = v4[v17];
              if (!v18)
              {
                AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "invalid requestDictKeysBuffer array");
                goto LABEL_20;
              }

              if (!v5[v17])
              {
                break;
              }

              CFStringAppend(Mutable, v18);
              CFStringAppend(Mutable, @"=");
              CFStringAppend(Mutable, v5[v17]);
              if (v17 < Count - 1)
              {
                CFStringAppend(Mutable, @"&");
              }

              if (Count == ++v17)
              {
                goto LABEL_13;
              }
            }

            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "invalid requestDictValuesBuffer array");
LABEL_20:
            v7 = 0;
            v6 = 0;
            v8 = 14;
            goto LABEL_17;
          }

LABEL_13:
          AMAuthInstallLog(8, "AMAuthInstallHttpCreatePostBody", "postString=%@", Mutable);
          Length = CFStringGetLength(Mutable);
          v6 = malloc(Length + 1);
          if (v6)
          {
            if (!CFStringGetCString(Mutable, v6, Length + 1, 0x8000100u))
            {
              v8 = 3;
              AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "conversion of postString to c-string failed");
              v7 = 0;
              goto LABEL_17;
            }

            v20 = CFDataCreate(v14, v6, Length);
            v7 = v20;
            if (v20)
            {
              v8 = 0;
              *a3 = CFRetain(v20);
              goto LABEL_17;
            }

            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "postData allocation failed");
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "tmpStringBuffer allocation failure");
            v7 = 0;
          }

LABEL_30:
          v8 = 2;
          goto LABEL_17;
        }

        AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "requestDictValuesBuffer allocation failed");
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "requestDictKeysBuffer allocation failed");
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
      v4 = 0;
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_30;
  }

LABEL_17:
  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeFree(v4);
  SafeFree(v5);
  SafeFree(v6);
  return v8;
}

uint64_t AMAuthInstallHttpSetUriEscapedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFStringRef theString)
{
  value = 0;
  v4 = 1;
  if (a2 && a3 && theString)
  {
    v7 = AMAuthInstallHttpUriEscapeString(a1, theString, &value);
    if (v7)
    {
      v4 = v7;
      AMAuthInstallLog(3, "AMAuthInstallHttpSetUriEscapedValue", "AMAuthInstallHttpUriEscapeString failed");
    }

    else if (value)
    {
      CFDictionarySetValue(a2, a3, value);
      v4 = 0;
    }

    else
    {
      v4 = 3;
      AMAuthInstallLog(3, "AMAuthInstallHttpSetUriEscapedValue", "escapedValue is NULL");
    }
  }

  SafeRelease(value);
  return v4;
}

uint64_t AMAuthInstallHttpCreatePostRequest(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, CFTypeRef *a4)
{
  Request = 0;
  theData = 0;
  v5 = 1;
  if (a2 && a3)
  {
    v7 = 0;
    if (a4)
    {
      PostBody = AMAuthInstallHttpCreatePostBody(a1, a3, &theData);
      if (PostBody)
      {
        v5 = PostBody;
        AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostRequest", "AMAuthInstallHttpCreatePostBody failed");
        Request = 0;
        v7 = 0;
      }

      else if (theData)
      {
        Request = CFHTTPMessageCreateRequest(a1, @"POST", a2, *MEMORY[0x29EDB8528]);
        if (Request)
        {
          Length = CFDataGetLength(theData);
          v7 = CFStringCreateWithFormat(a1, 0, @"%ld", Length);
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v7);
          CFHTTPMessageSetBody(Request, theData);
          v5 = 0;
          *a4 = CFRetain(Request);
        }

        else
        {
          v7 = 0;
          v5 = 0;
        }
      }

      else
      {
        Request = 0;
        v7 = 0;
        v5 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  SafeRelease(theData);
  SafeRelease(Request);
  SafeRelease(v7);
  SafeRelease(0);
  return v5;
}

uint64_t AMAuthInstallHttpSetBase64EncodedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFDataRef theData)
{
  theString = 0;
  v4 = 1;
  if (a2 && a3 && theData)
  {
    v8 = AMAuthInstallSupportBase64Encode(a1, theData, &theString);
    if (v8)
    {
      v4 = v8;
      AMAuthInstallLog(3, "AMAuthInstallHttpSetBase64EncodedValue", "Base64Encode failed");
    }

    else if (theString)
    {
      v4 = AMAuthInstallHttpSetUriEscapedValue(a1, a2, a3, theString);
    }

    else
    {
      v4 = 3;
      AMAuthInstallLog(3, "AMAuthInstallHttpSetBase64EncodedValue", "encodedValue is NULL");
    }
  }

  SafeRelease(theString);
  return v4;
}

uint64_t AMAuthInstallRestoreLocalPolicyCreateServerRequest(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  theDict = 0;
  if (_AMAuthInstallLocalPolicyCreateServerRequestBase(a1, a2, &theDict) || (v5 = *(*(a1 + 16) + 24)) == 0)
  {
    v6 = 1;
  }

  else
  {
    CFDictionarySetValue(theDict, @"ApNonce", v5);
    CFDictionarySetValue(theDict, @"Ap,LocalBoot", *MEMORY[0x29EDB8EF8]);
    v6 = 0;
    if (a3)
    {
      *a3 = CFRetain(theDict);
    }
  }

  SafeRelease(theDict);
  return v6;
}

uint64_t _AMAuthInstallLocalPolicyCreateServerRequestBase(uint64_t **a1, const void *a2, CFTypeRef *a3)
{
  if (a1 && (v6 = CFGetAllocator(a1), a1[2]))
  {
    v7 = v6;
    IsImg4 = AMAuthInstallApIsImg4(a1);
    v9 = 0;
    v10 = 1;
    v11 = 0;
    v12 = 0;
    if (a2 && IsImg4)
    {
      if (CFDataGetLength(a2) == 48)
      {
        v9 = OUTLINED_FUNCTION_0_5();
        v11 = CFDataCreate(v7, kLocalPolicyDigestSHA384, 48);
        CFDictionarySetValue(v9, @"Digest", v11);
        v13 = *MEMORY[0x29EDB8F00];
        CFDictionarySetValue(v9, @"Trusted", *MEMORY[0x29EDB8F00]);
        v12 = OUTLINED_FUNCTION_0_5();
        CFDictionarySetValue(v12, @"@ApImg4Ticket", v13);
        _CFDictionarySetInteger32(v12, @"ApChipID", *(a1[2] + 2));
        _CFDictionarySetInteger32(v12, @"ApBoardID", *(a1[2] + 3));
        _CFDictionarySetInteger64(v12, @"ApECID", *a1[2]);
        _CFDictionarySetBoolean(v12, @"ApProductionMode", *(a1[2] + 20));
        _CFDictionarySetInteger32(v12, @"ApSecurityDomain", *(a1[2] + 4));
        _CFDictionarySetBoolean(v12, @"ApSecurityMode", *(a1[2] + 88));
        CFDictionarySetValue(v12, @"Ap,LocalPolicy", v9);
        CFDictionarySetValue(v12, @"Ap,NextStageIM4MHash", a2);
        v10 = 0;
        if (a3)
        {
          *a3 = CFRetain(v12);
        }
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v12 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 1;
  }

  SafeRelease(v12);
  SafeRelease(v11);
  SafeRelease(v9);
  return v10;
}

uint64_t AMAuthInstallRecoveryOSLocalPolicyCreateServerRequest(void *cf, const void *a2, const void *a3, const __CFUUID *a4, CFTypeRef *a5)
{
  if (cf)
  {
    v10 = CFGetAllocator(cf);
  }

  else
  {
    v10 = 0;
  }

  *&bytes.byte8 = 0;
  theDict = 0;
  *&bytes.byte0 = 0;
  ServerRequestBase = _AMAuthInstallLocalPolicyCreateServerRequestBase(cf, a2, &theDict);
  v12 = 0;
  v13 = 1;
  if (!ServerRequestBase)
  {
    if (a3)
    {
      if (a4)
      {
        bytes = CFUUIDGetUUIDBytes(a4);
        v12 = CFDataCreate(v10, &bytes.byte0, 16);
        CFDictionarySetValue(theDict, @"Ap,RecoveryOSPolicyNonceHash", a3);
        CFDictionarySetValue(theDict, @"Ap,VolumeUUID", v12);
        CFDictionarySetValue(theDict, @"Ap,LocalBoot", *MEMORY[0x29EDB8F00]);
        v13 = 0;
        if (a5)
        {
          *a5 = CFRetain(theDict);
        }
      }
    }
  }

  SafeRelease(v12);
  SafeRelease(theDict);
  return v13;
}

uint64_t AMAuthInstallLocalPolicyStitchTicketData(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v5 = CFGetAllocator(a1);
  if (!a2)
  {
LABEL_9:
    v10 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(a2, @"ApImg4Ticket");
  if (!Value)
  {
LABEL_8:
    a2 = 0;
    goto LABEL_9;
  }

  v8 = Value;
  a2 = CFDataCreate(v6, kLocalPolicyIM4P, 22);
  if (a2)
  {
    StitchTicket = AMAuthInstallApImg4CreateStitchTicket(v6, a2, v8);
    v10 = StitchTicket;
    if (StitchTicket)
    {
      v11 = 0;
      if (a3)
      {
        *a3 = CFRetain(StitchTicket);
      }
    }

    else
    {
      v11 = 3;
      AMAuthInstallLog(3, "AMAuthInstallLocalPolicyStitchTicketData", "failed to stitch local policy object");
    }
  }

  else
  {
    v10 = 0;
    v11 = 2;
  }

LABEL_10:
  SafeRelease(v10);
  SafeRelease(a2);
  return v11;
}

void _DefaultLogHandler_cold_2()
{
  v2 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(&dword_29849C000, v0, OS_LOG_TYPE_DEBUG, "%s", v1, 0xCu);
}

void _DefaultLogHandler_cold_3()
{
  v2 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(&dword_29849C000, v0, OS_LOG_TYPE_DEBUG, "%{public}s", v1, 0xCu);
}

void _DefaultLogHandler_cold_4()
{
  v2 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(&dword_29849C000, v0, OS_LOG_TYPE_ERROR, "%{public}s", v1, 0xCu);
}

void _DefaultLogHandler_cold_5()
{
  v2 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(&dword_29849C000, v0, OS_LOG_TYPE_FAULT, "%{public}s", v1, 0xCu);
}

uint64_t AMAuthInstallMonetSetVersionAndPartialDigest(CFNumberRef a1, __CFDictionary *a2, const __CFData *a3, CFDataRef theData, const void *a5, unsigned int a6, int a7, const void *a8, const void *a9)
{
  v13 = a3;
  v35 = *MEMORY[0x29EDCA608];
  memset(v34, 0, sizeof(v34));
  v16 = a3 + a6;
  v17 = *(v16 + 2);
  valuePtr = *(v16 + 1);
  Length = CFDataGetLength(theData);
  OUTLINED_FUNCTION_4_6(Length, v19, "fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x");
  OUTLINED_FUNCTION_4_6(v20, v21, "version=0x%x, personalizationOffset=0x%x");
  *bytes = a7 - v17;
  v33 = v17 + 80;
  *&v34[20] = v17 + a6;
  OUTLINED_FUNCTION_4_6(v22, v23, "reservationLength=0x%x, codeBytesHashed=0x%x (%s), downloadBytesHashed=0x%x (%s)");
  v24 = CFDataGetLength(theData);
  OUTLINED_FUNCTION_4_6(v24, v25, "personalization area=0x%x");
  if ((((v17 + 80) | (v17 + a6)) & 0x3F) == 0)
  {
    image3SHA1Partial(a5, v17 + 80, v34);
    image3SHA1Partial(v13, *&v34[20], &v34[24]);
    v27 = CFGetAllocator(a1);
    v13 = CFDataCreate(v27, bytes, 52);
    if (v13)
    {
      v28 = CFGetAllocator(a1);
      a1 = CFNumberCreate(v28, kCFNumberSInt32Type, &valuePtr);
      if (a1)
      {
        CFDictionarySetValue(a2, a8, a1);
        CFDictionarySetValue(a2, a9, v13);
        v26 = 0;
        goto LABEL_6;
      }
    }

    else
    {
      a1 = 0;
    }

    v26 = 2;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_9_4();
  v26 = 10;
LABEL_6:
  SafeRelease(a1);
  SafeRelease(v13);
  return v26;
}

uint64_t AMAuthInstallMonetMeasureEBootLoader(const void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5)
{
  v32 = *MEMORY[0x29EDCA608];
  *bytes = 0;
  v30 = 0uLL;
  v31 = 0;
  valuePtr = 0;
  if (CFDataGetLength(theData) >= 0x28)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v11 = BytePtr;
    if (!BytePtr)
    {
      v22 = 0;
      goto LABEL_6;
    }

    if (*(BytePtr + 4) <= CFDataGetLength(theData))
    {
      theDict = a3;
      Length = CFDataGetLength(theData);
      v13 = *(v11 + 5);
      v14 = (Length - *(v11 + 4));
      valuePtr = *(v11 + v14 + 4);
      v15 = *(v11 + v14 + 8);
      v16 = CFDataGetLength(theData);
      OUTLINED_FUNCTION_4_6(v16, v17, "%@: fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x");
      OUTLINED_FUNCTION_4_6(v18, v19, "%@: version=0x%x, personalizationOffset=0x%x");
      *bytes = v13 - v15;
      *&bytes[4] = v15 + v14;
      OUTLINED_FUNCTION_4_6(v20, v21, "%@: reservationLength=0x%x, codeBytesHashed=0x%x (%s)");
      if (((v15 + v14) & 0x3F) == 0)
      {
        image3SHA1Partial(v11, v15 + v14, &v30);
        v24 = CFGetAllocator(a1);
        v11 = CFDataCreate(v24, bytes, 28);
        if (v11)
        {
          v25 = CFGetAllocator(a1);
          v22 = CFNumberCreate(v25, kCFNumberSInt32Type, &valuePtr);
          if (v22)
          {
            CFDictionarySetValue(theDict, a4, v22);
            CFDictionarySetValue(theDict, a5, v11);
            v23 = 0;
            goto LABEL_10;
          }
        }

        else
        {
          v22 = 0;
        }

        v23 = 2;
        goto LABEL_10;
      }
    }
  }

  v22 = 0;
  v11 = 0;
LABEL_6:
  v23 = 10;
LABEL_10:
  SafeRelease(v22);
  SafeRelease(v11);
  return v23;
}

uint64_t AMAuthInstallMonetMeasureBootImage(uint64_t a1, const __CFData *a2, __CFDictionary *a3, const void *a4)
{
  value = 0;
  if (!a1)
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_43;
  }

  v6 = 0;
  v7 = 1;
  if (a4 && a3 && a2 && *(a1 + 48))
  {
    OUTLINED_FUNCTION_6_6();
    if (v12)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_2_8();
    v12 = v12 || v11 == 938209;
    if (v12 || v11 == 1327329 || v11 == 1515745 || v11 == 1700065 || v11 == 2044129 || v11 == 2089185 || v11 == 2814177)
    {
      v19 = CFGetAllocator(v10);
      DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData_SHA384(v19, a2, &value);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_11_0();
    v23 = v21 || v22 == 9781473;
    if (v23 || v22 == 9572577)
    {
LABEL_39:
      v25 = CFGetAllocator(v9);
      DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData_SHA256(v25, a2, &value);
    }

    else
    {
      v27 = CFGetAllocator(v9);
      DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData(v27, a2, &value);
    }

LABEL_40:
    v6 = value;
    if (DigestForData_SHA384)
    {
      v7 = DigestForData_SHA384;
    }

    else if (value)
    {
      CFDictionarySetValue(a3, a4, value);
      v7 = 0;
      v6 = value;
    }

    else
    {
      v7 = 2;
    }
  }

LABEL_43:
  SafeRelease(v6);
  return v7;
}

uint64_t AMAuthInstallMonetMeasureElf(const void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5)
{
  if (CFDataGetLength(theData) > 0x33 && (BytePtr = CFDataGetBytePtr(theData), *BytePtr == 1179403647))
  {
    v11 = *(BytePtr + 22);
    if (*(BytePtr + 22))
    {
      v12 = 0;
      v13 = 0;
      v14 = &BytePtr[*(BytePtr + 7)];
      do
      {
        if (*(v14 + 3) > v13 && (*(v14 + 6) & 0x7000000) != 0x5000000)
        {
          v13 = *(v14 + 3);
          v12 = v14;
        }

        v14 += 32;
        --v11;
      }

      while (v11);
      if (v12)
      {
        v15 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v15, 0);
        if (Mutable)
        {
          v17 = CFGetAllocator(a1);
          v18 = CFDataCreateMutable(v17, 0);
          if (v18)
          {
            OUTLINED_FUNCTION_6_6();
            if (!v20)
            {
              OUTLINED_FUNCTION_2_8();
              v20 = v20 || v19 == 938209;
              if (v20 || v19 == 1327329 || v19 == 1515745 || v19 == 1700065 || v19 == 2044129 || v19 == 2089185 || v19 == 2814177)
              {
                CFDataSetLength(Mutable, 48);
                CFDataGetBytePtr(theData);
                OUTLINED_FUNCTION_3_6();
                v27 = OUTLINED_FUNCTION_8_4();
                CC_SHA384(v27, v28, v29);
                CFDataSetLength(v18, 48);
                CFDataGetBytePtr(theData);
                CFDataGetLength(theData);
                CFDataGetMutableBytePtr(v18);
                v30 = OUTLINED_FUNCTION_7_5();
                CC_SHA384(v30, v31, v32);
LABEL_48:
                CFDictionarySetValue(a3, a5, v18);
                CFDictionarySetValue(a3, a4, Mutable);
                v33 = 0;
                goto LABEL_49;
              }

              OUTLINED_FUNCTION_11_0();
              if (v34)
              {
                v36 = 1;
              }

              else
              {
                v36 = v35 == 9781473;
              }

              if (!v36 && v35 != 9572577)
              {
                CFDataSetLength(Mutable, 20);
                CFDataGetBytePtr(theData);
                OUTLINED_FUNCTION_3_6();
                v45 = OUTLINED_FUNCTION_8_4();
                CC_SHA1(v45, v46, v47);
                CFDataSetLength(v18, 20);
                CFDataGetBytePtr(theData);
                CFDataGetLength(theData);
                CFDataGetMutableBytePtr(v18);
                v48 = OUTLINED_FUNCTION_7_5();
                CC_SHA1(v48, v49, v50);
                goto LABEL_48;
              }
            }

            CFDataSetLength(Mutable, 32);
            CFDataGetBytePtr(theData);
            OUTLINED_FUNCTION_3_6();
            v38 = OUTLINED_FUNCTION_8_4();
            CC_SHA256(v38, v39, v40);
            CFDataSetLength(v18, 32);
            CFDataGetBytePtr(theData);
            CFDataGetLength(theData);
            CFDataGetMutableBytePtr(v18);
            v41 = OUTLINED_FUNCTION_7_5();
            CC_SHA256(v41, v42, v43);
            goto LABEL_48;
          }
        }

        else
        {
          v18 = 0;
        }

        v33 = 2;
        goto LABEL_49;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallMonetMeasureElf", "file lacks a hash section");
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetMeasureElf", "invalid file format");
  }

  Mutable = 0;
  v18 = 0;
  v33 = 10;
LABEL_49:
  SafeRelease(v18);
  SafeRelease(Mutable);
  return v33;
}

uint64_t AMAuthInstallMonetMeasureBootSbl(const void *a1, CFDataRef theData, __CFDictionary *a3, uint64_t a4, const void *a5)
{
  BytePtr = CFDataGetBytePtr(theData);
  v11 = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length <= 3)
  {
    AMAuthInstallLog(7, "_FindSbl1HeaderInFileData", "foundMagic=%d", 0);
LABEL_3:
    AMAuthInstallLog(3, "_FindSbl1HeaderInFileData", "this file lacks sufficient magic", v22);
    return 10;
  }

  LODWORD(v15) = 0;
  v16 = 0;
  v17 = Length >> 2;
  v18 = v11 - 4;
  do
  {
    if (*(v18 + 1) == 1943474228)
    {
      v15 = (v15 + 1);
      v16 = v18;
      if (*(v18 + 2) != 2097890138)
      {
        OUTLINED_FUNCTION_4_6(Length, v13, "found SBL header");
        v22 = v15;
        OUTLINED_FUNCTION_4_6(v19, v20, "foundMagic=%d");
        v16 = v18;
        goto LABEL_12;
      }
    }

    v18 += 4;
    --v17;
  }

  while (v17);
  AMAuthInstallLog(7, "_FindSbl1HeaderInFileData", "foundMagic=%d", v15);
  if (!v16)
  {
    goto LABEL_3;
  }

LABEL_12:
  if (CFDataGetLength(theData) < 0x50 || *(v16 + 7) > CFDataGetLength(theData))
  {
    return 10;
  }

  v21 = *(v16 + 5);
  if (v16 + 80 != &BytePtr[v21])
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetMeasureBootSbl", "junk following sbl1 header", v22);
    return 10;
  }

  return AMAuthInstallMonetSetVersionAndPartialDigestForSBL(a1, a3, BytePtr, theData, v16, v21, *(v16 + 8), a4, a5);
}

uint64_t AMAuthInstallMonetSetVersionAndPartialDigestForSBL(const void *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, const void *a5, unsigned int a6, int a7, uint64_t a8, const void *a9)
{
  v61 = *MEMORY[0x29EDCA608];
  v58 = 0;
  v60 = 0;
  v59 = 0uLL;
  v57 = 0;
  *bytes = 0u;
  v56 = 0u;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  OUTLINED_FUNCTION_2_8();
  v18 = v18 || v17 == 938209;
  if (v18 || v17 == 1327329 || v17 == 1515745 || v17 == 1700065 || v17 == 2044129 || v17 == 2089185 || v17 == 2814177)
  {
    v50 = 128;
  }

  else
  {
    v50 = 64;
  }

  v25 = 0;
  valuePtr = 0;
  v26 = 1;
  if (!a2 || !v14 || !v15 || !a5 || !v16)
  {
    v27 = 0;
    goto LABEL_73;
  }

  v27 = 0;
  if (a9)
  {
    key = v16;
    v28 = v14 + a6;
    v29 = *(v28 + 8);
    valuePtr = *(v28 + 4);
    Length = CFDataGetLength(v15);
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x", Length, a6, a7);
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "version=0x%x, personalizationOffset=0x%x", valuePtr, v29);
    LODWORD(v58) = a7 - v29;
    HIDWORD(v58) = v29 + 80;
    v31 = (v29 + 80) & (v50 - 1);
    if (v31)
    {
      v32 = "NOT REQUIRED BYTE MULTIPLE";
    }

    else
    {
      v32 = "ok";
    }

    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "reservationLength=0x%x, codeBytesHashed=0x%x (%s) byte_multiple=%d", a7 - v29, v29 + 80, v32, v50);
    if (v31)
    {
      v25 = 0;
      v27 = 0;
      v26 = 10;
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_6_6();
    if (v18)
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_2_8();
    if (v18 || v33 == 938209 || v33 == 1327329 || v33 == 1515745 || v33 == 1700065 || v33 == 2044129 || v33 == 2089185 || v33 == 2814177)
    {
      *bytes = a7 - v29;
      *&bytes[4] = v29 + 80;
      _SHA384Partial(a5, 0, v53 + 8);
      v41 = CFGetAllocator(a1);
      v42 = v53;
      v43 = 72;
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_11_0();
    v46 = v44 || v45 == 9781473;
    if (v46 || v45 == 9572577)
    {
LABEL_69:
      *bytes = a7 - v29;
      *&bytes[4] = v29 + 80;
      _SHA256Partial(a5, v29 + 80, &bytes[8]);
      v41 = CFGetAllocator(a1);
      v42 = bytes;
      v43 = 40;
    }

    else
    {
      image3SHA1Partial(a5, v29 + 80, &v59);
      v41 = CFGetAllocator(a1);
      v42 = &v58;
      v43 = 28;
    }

LABEL_70:
    v27 = CFDataCreate(v41, v42, v43);
    if (v27)
    {
      v48 = CFGetAllocator(a1);
      v25 = CFNumberCreate(v48, kCFNumberSInt32Type, &valuePtr);
      if (v25)
      {
        CFDictionarySetValue(a2, key, v25);
        CFDictionarySetValue(a2, a9, v27);
        v26 = 0;
        goto LABEL_73;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = 2;
  }

LABEL_73:
  SafeRelease(v25);
  SafeRelease(v27);
  return v26;
}

uint64_t AMAuthInstallMonetStitchCopyIfPersonalized(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v3 = CFRetain(cf);
  return OUTLINED_FUNCTION_1_12(v3);
}

uint64_t AMAuthInstallMonetMeasurePartitionTable(const void *a1, const __CFData *a2, __CFDictionary *a3)
{
  memset(&v13, 0, sizeof(v13));
  v5 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v5, 20);
  v7 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v13);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v13, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    CC_SHA1_Final(MutableBytePtr, &v13);
    CFDictionarySetValue(a3, @"PartitionTable-Digest", v7);
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  SafeRelease(v7);
  return v11;
}

uint64_t AMAuthInstallMonetStitchPartitionTable(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v3 = CFRetain(cf);
  return OUTLINED_FUNCTION_1_12(v3);
}

uint64_t AMAuthInstallBasebandSetDevelopmentFusingProgram(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      SafeRelease(*(a1 + 176));
      AMAuthInstallLog(5, "AMAuthInstallBasebandSetDevelopmentFusingProgram", "Setting custom fusing program. Server will not be contacted to request fusing program.");
      v5 = CFRetain(a2);
      result = 0;
      *(a1 + 176) = v5;
      *(a1 + 184) = 256;
    }
  }

  return result;
}

uint64_t AMAuthInstallMonetFuseIfNecessary(const __CFDictionary **a1, const void **a2, __CFDictionary *a3)
{
  v4 = a1;
  v49 = 0;
  error = 0;
  theDict = 0;
  if (!a1)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if (!a1[6])
  {
LABEL_25:
    OUTLINED_FUNCTION_9_4();
LABEL_26:
    v22 = 0;
    v32 = 1;
    goto LABEL_36;
  }

  v3 = a2;
  IsFused = AMAuthInstallBasebandIsFused(a1, &v49);
  if (IsFused)
  {
LABEL_37:
    v32 = IsFused;
    goto LABEL_35;
  }

  if (v49 && *(v4[6] + 24) != 2)
  {
    if (v4[22])
    {
      v14 = CFGetAllocator(v4);
      v22 = OUTLINED_FUNCTION_10_3(v14, v15, v16, v17, v18, v19, v20, v21, v43, v45, v46, 0);
      if (v22)
      {
        CFDictionarySetValue(a3, @"fusingprogram.plist", v22);
LABEL_22:
        v32 = 0;
LABEL_23:
        OUTLINED_FUNCTION_9_4();
        goto LABEL_36;
      }

      v42 = "failed to convert fusing program to xml";
LABEL_41:
      v32 = 3;
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", v42, v44);
      goto LABEL_23;
    }

    v32 = 0;
LABEL_35:
    OUTLINED_FUNCTION_9_4();
    v22 = 0;
    goto LABEL_36;
  }

  if (v4[53])
  {
    v7 = CFGetAllocator(v4);
    v43 = @"BbRequestEntries";
    v45 = @"BbFactoryDebugEnable";
    ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v7, v4[53], @"%@.%@", v8, v9, v10, v11, v12);
    if (!ValueForKeyWithFormat)
    {
      goto LABEL_24;
    }
  }

  else
  {
    ValueForKeyWithFormat = *MEMORY[0x29EDB8EF8];
    if (!*MEMORY[0x29EDB8EF8])
    {
LABEL_24:
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", "baseband fusing is being attempted but the Factory Debug entitlement was not requested. Please enable Factory Debug to fuse.");
      goto LABEL_25;
    }
  }

  if (!CFBooleanGetValue(ValueForKeyWithFormat))
  {
    goto LABEL_24;
  }

  if (!*(v4 + 185))
  {
    if (*(v4 + 184))
    {
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", "fusing program request prohibited");
      goto LABEL_46;
    }

    IsFused = AMAuthInstallFusingProgramRequest(v4);
    if (IsFused)
    {
      goto LABEL_37;
    }
  }

  if (!v4[22])
  {
LABEL_46:
    OUTLINED_FUNCTION_9_4();
    v22 = 0;
    v32 = 14;
    goto LABEL_36;
  }

  v23 = CFGetAllocator(v4);
  v22 = OUTLINED_FUNCTION_10_3(v23, v24, v25, v26, v27, v28, v29, v30, v43, v45, v46, 0);
  if (!v22)
  {
    v44 = error;
    v42 = "failed to convert fusing program to xml %@";
    goto LABEL_41;
  }

  CFDictionarySetValue(a3, @"fusingprogram.plist", v22);
  SafeRelease(error);
  v31 = v4[6];
  if (*(v31 + 3) && *(v31 + 2))
  {
    AMAuthInstallLog(5, "AMAuthInstallMonetFuseIfNecessary", "baseband appears to be unfused and booted; will provide fusing program and fully personalized stack");
    goto LABEL_22;
  }

  v33 = CFGetAllocator(v4);
  DictionaryFromURL = BbfwCreateDictionaryFromURL(v33, v3, &theDict);
  if (DictionaryFromURL)
  {
    v32 = DictionaryFromURL;
    goto LABEL_23;
  }

  Count = CFDictionaryGetCount(theDict);
  v3 = malloc(8 * Count);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_44;
  }

  v4 = malloc(8 * Count);
  if (!v4)
  {
LABEL_44:
    v32 = 2;
    goto LABEL_36;
  }

  CFDictionaryGetKeysAndValues(theDict, v3, v4);
  if (Count >= 1)
  {
    v36 = v3;
    v37 = v4;
    do
    {
      v39 = *v36++;
      v38 = v39;
      v40 = *v37++;
      CFDictionarySetValue(a3, v38, v40);
      --Count;
    }

    while (Count);
  }

  AMAuthInstallLog(5, "AMAuthInstallMonetFuseIfNecessary", "baseband appears to be unfused and unbootable; will provide fusing program and unpersonalized stack");
  v32 = 0;
LABEL_36:
  SafeRelease(v22);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeFree(v3);
  SafeFree(v4);
  SafeRelease(error);
  return v32;
}

uint64_t AMAuthInstallMonetCopyNextComponentName(uint64_t a1)
{
  v6 = 0;
  if (!a1 || !*(a1 + 48))
  {
    return 1;
  }

  result = AMAuthInstallBasebandIsFused(a1, &v6);
  if (!result)
  {
    if (v6)
    {
      v3 = @"boot.bbfw";
    }

    else
    {
      v3 = @"preflash.bbfw";
    }

    if (*(*(a1 + 48) + 24))
    {
      v4 = @"stack.bbfw";
    }

    else
    {
      v4 = v3;
    }

    v5 = CFRetain(v4);
    return OUTLINED_FUNCTION_1_12(v5);
  }

  return result;
}

uint64_t AMAuthInstallMonetCreateReversedMEID(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  Length = CFDataGetLength(theData);
  v7 = 0;
  v8 = 1;
  if (theData && Length == 7)
  {
    v9 = 0;
    v10 = 6;
    do
    {
      bytes[v10--] = CFDataGetBytePtr(theData)[v9++];
    }

    while (v9 != 7);
    v11 = CFDataCreate(a1, bytes, 7);
    v7 = v11;
    if (v11)
    {
      v8 = 0;
      *a3 = CFRetain(v11);
    }

    else
    {
      v8 = 2;
    }
  }

  SafeRelease(v7);
  return v8;
}

uint64_t AMAuthInstallBasebandMAV25MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v7 = BbfwReaderOpen(cf);
    v3 = v7;
    if (v7)
    {
      v9 = OUTLINED_FUNCTION_1_6(v7, v8, @"acdb.mbn");
      if (!v9)
      {
        AMAuthInstallLog(4, "AMAuthInstallBasebandMAV25MeasureFirmware", "missing acdb or failed to measure image");
      }

      v11 = OUTLINED_FUNCTION_1_6(v9, v10, @"restorexbl_sc.elf");
      if (v11 && (v13 = OUTLINED_FUNCTION_1_6(v11, v12, @"Info.plist"), v13) && (v15 = OUTLINED_FUNCTION_1_6(v13, v14, @"xbl_sc.elf"), v15) && (v17 = OUTLINED_FUNCTION_1_6(v15, v16, @"multi_image.mbn"), v17) && (v19 = OUTLINED_FUNCTION_1_6(v17, v18, @"signed_firmware_soc_view.elf"), v19) && (v21 = OUTLINED_FUNCTION_1_6(v19, v20, @"Info.plist"), v21))
      {
        OUTLINED_FUNCTION_1_6(v21, v22, @"bbcfg.mbn");
        AMAuthInstallBasebandMeasureFirmwareFromBbfw(0, a1, @"pt.mbn", AMAuthInstallMonetMeasurePT, v3, a3);
        v4 = 0;
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV25MeasureFirmware", "failed to open bbfw archive for reading");
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV25StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v7 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = OUTLINED_FUNCTION_1_7(v7, @"aop_devcfg.mbn");
      v9 = OUTLINED_FUNCTION_1_7(v8, @"aop.mbn");
      v10 = OUTLINED_FUNCTION_1_7(v9, @"apdp.mbn");
      v11 = OUTLINED_FUNCTION_1_7(v10, @"apps.mbn");
      v12 = OUTLINED_FUNCTION_1_7(v11, @"bbcfg.mbn");
      v13 = OUTLINED_FUNCTION_1_7(v12, @"cpucp.elf");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"devcfg.mbn");
      OUTLINED_FUNCTION_1_7(v14, @"hyp.mbn");
      v15 = OUTLINED_FUNCTION_2(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      OUTLINED_FUNCTION_1_7(v15, @"mdmddr.mbn");
      v16 = OUTLINED_FUNCTION_2(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v17 = OUTLINED_FUNCTION_1_7(v16, @"multi_image_qti.mbn");
      v18 = OUTLINED_FUNCTION_1_7(v17, @"qdsp6sw.mbn");
      v19 = OUTLINED_FUNCTION_1_7(v18, @"qdsp6sw_dtbs.elf");
      OUTLINED_FUNCTION_1_7(v19, @"qupv3fw.elf");
      v20 = OUTLINED_FUNCTION_2(a1, @"restorexbl_sc.elf", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_1_7(v20, @"sec.elf");
      v21 = OUTLINED_FUNCTION_2(a1, @"sequencer_ram.elf", AMAuthInstallBasebandStitchCopyFile);
      OUTLINED_FUNCTION_1_7(v21, @"shrm.elf");
      v22 = OUTLINED_FUNCTION_2(a1, @"signed_firmware_soc_view.elf", AMAuthInstallMonetStitchTme);
      v23 = OUTLINED_FUNCTION_1_7(v22, @"tz.mbn");
      v24 = OUTLINED_FUNCTION_1_7(v23, @"uefi.elf");
      OUTLINED_FUNCTION_1_7(v24, @"xbl_cfg.elf");
      v25 = OUTLINED_FUNCTION_2(a1, @"xbl_sc.elf", AMAuthInstallMonetStitchSbl1);
      v26 = OUTLINED_FUNCTION_1_7(v25, @"xbl_support.elf");
      OUTLINED_FUNCTION_1_7(v26, @"pt.mbn");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV25StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallProvisioningCopyResponse(CFNumberFormatterRef a1, CFDataRef theData, const __CFNumber *NumberFromString, CFTypeRef *a4)
{
  v57 = *MEMORY[0x29EDCA608];
  theDataa = 0;
  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  *buffer = 0u;
  v54 = 0u;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = CFStringCreateWithBytes(a1, BytePtr, Length, 0x8000100u, 0);
  v11 = v10;
  if (!v10)
  {
    v14 = 0;
    OUTLINED_FUNCTION_6_7();
    Mutable = 0;
    v44 = 3;
    goto LABEL_52;
  }

  AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "Response:%@", v10);
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v14 = 0;
    goto LABEL_65;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v11, @"&");
  v14 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings)
  {
    v46 = "responseParts is NULL";
    goto LABEL_62;
  }

  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (!Count)
  {
    v46 = "arrayCount is 0";
    goto LABEL_62;
  }

  v16 = Count;
  theDict = Mutable;
  alloc = a1;
  v47 = a4;
  valuePtr = NumberFromString;
  v49 = v11;
  if (Count >= 1)
  {
    a1 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, a1);
      location = CFStringFind(ValueAtIndex, @"=", 0).location;
      if (location == -1)
      {
        AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "could not split parameter: %@", ValueAtIndex);
      }

      else
      {
        v19 = location;
        v20 = CFStringGetLength(ValueAtIndex);
        NumberFromString = alloc;
        v59.location = 0;
        v59.length = v19;
        v21 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v59);
        v60.location = v19 + 1;
        v60.length = v20 + ~v19;
        v22 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v60);
        v23 = v22;
        if (v21 && v22)
        {
          CFDictionarySetValue(theDict, v21, v22);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "failed to create key(%@) or value (%@)", v21, v22);
        }

        SafeRelease(v21);
        SafeRelease(v23);
      }

      a1 = (a1 + 1);
    }

    while (v16 != a1);
  }

  Mutable = theDict;
  Value = CFDictionaryGetValue(theDict, @"MEID");
  if (Value)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "MEID:%@", Value);
  }

  v25 = CFDictionaryGetValue(theDict, @"IMEI");
  if (v25)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "IMEI:%@", v25);
  }

  v26 = CFDictionaryGetValue(theDict, @"IMEI2");
  if (v26)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "IMEI2:%@", v26);
  }

  v27 = CFDictionaryGetValue(theDict, @"EID");
  v11 = v49;
  if (v27)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "EID:%@", v27);
  }

  v28 = CFDictionaryGetValue(theDict, @"WIFI_MAC");
  if (v28)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "WIFI_MAC:%@", v28);
  }

  v29 = CFDictionaryGetValue(theDict, @"BT_MAC");
  if (v29)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "BT_MAC:%@", v29);
  }

  v30 = CFDictionaryGetValue(theDict, @"USB_ETHER_MAC");
  if (v30)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "USB_ETHER_MAC:%@", v30);
  }

  v31 = CFDictionaryGetValue(theDict, @"WIFI_MAC2");
  if (v31)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "WIFI_MAC2:%@", v31);
  }

  v32 = CFDictionaryGetValue(theDict, @"BT_MAC2");
  if (v32)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "BT_MAC2:%@", v32);
  }

  v33 = CFDictionaryGetValue(theDict, @"ETH_MAC");
  if (v33)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETH_MAC:%@", v33);
  }

  v34 = CFDictionaryGetValue(theDict, @"ETHER_MAC2");
  if (v34)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETHER_MAC2:%@", v34);
  }

  v35 = CFDictionaryGetValue(theDict, @"T_MAC");
  if (v35)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "T_MAC:%@", v35);
  }

  v36 = CFDictionaryGetValue(theDict, @"ETHER_MAC3");
  if (v36)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETHER_MAC3:%@", v36);
  }

  v37 = CFDictionaryGetValue(theDict, @"B64_SECDATA");
  if (v37)
  {
    v38 = AMAuthInstallSupportBase64Decode(*MEMORY[0x29EDB8ED8], v37, &theDataa);
    if (v38)
    {
      v44 = v38;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "AMAuthInstallSupportBase64Decode failed");
LABEL_63:
      OUTLINED_FUNCTION_6_7();
      goto LABEL_52;
    }

    if (theDataa)
    {
      if (CFDataGetLength(theDataa) > 0x4B)
      {
        v58.location = 0;
        v58.length = 76;
        CFDataGetBytes(theDataa, v58, buffer);
        if (!v56[6])
        {
          goto LABEL_49;
        }

        v39 = CFDataGetBytePtr(theDataa);
        v40 = CFDataCreate(alloc, v39 + 76, v56[6]);
        if (v40)
        {
          v41 = v40;
          CFDictionarySetValue(theDict, @"MANIFESTDATA", v40);
          AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "Found secure manifest in response: '%@'", v41);
          CFRelease(v41);
          goto LABEL_49;
        }

        AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "tempData is NULL");
LABEL_65:
        OUTLINED_FUNCTION_6_7();
        v44 = 2;
        goto LABEL_52;
      }

      v46 = "decodedData is too small";
    }

    else
    {
      v46 = "decodedData is NULL";
    }

LABEL_62:
    v44 = 3;
    AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", v46);
    goto LABEL_63;
  }

  AMAuthInstallLog(6, "AMAuthInstallProvisioningCopyResponse", "B64_SECDATA not found in response");
LABEL_49:
  v42 = CFDictionaryGetValue(theDict, @"STATUS");
  if (v42)
  {
    v43 = v42;
    a1 = CFNumberFormatterCreate(alloc, 0, kCFNumberFormatterNoStyle);
    NumberFromString = CFNumberFormatterCreateNumberFromString(alloc, a1, v43, 0, 1uLL);
    if (CFNumberGetValue(NumberFromString, kCFNumberSInt32Type, valuePtr))
    {
      v44 = 0;
      *v47 = CFRetain(theDict);
    }

    else
    {
      v44 = 3;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "failed to convert statusNumber");
    }
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "statusString is NULL");
    OUTLINED_FUNCTION_6_7();
    v44 = 17;
  }

LABEL_52:
  SafeRelease(v11);
  SafeRelease(Mutable);
  SafeRelease(theDataa);
  SafeRelease(0);
  SafeRelease(v14);
  SafeRelease(NumberFromString);
  SafeRelease(a1);
  return v44;
}

uint64_t AMAuthInstallProvisioningPopulateRequestDict(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v7 = 0;
  theData = 0;
  ReversedMEIDFromString = 1;
  if (!a2 || !a1)
  {
    OUTLINED_FUNCTION_5_5();
    goto LABEL_125;
  }

  OUTLINED_FUNCTION_5_5();
  if (v12)
  {
    if (*(a1 + 320))
    {
      v13 = v11;
      v14 = CFGetAllocator(a1);
      v15 = AMAuthInstallHttpSetUriEscapedValue(v14, v13, @"COMMAND_CODE", a3);
      if (v15)
      {
        goto LABEL_131;
      }

      if (CFStringCompare(a3, @"100", 0) == kCFCompareEqualTo)
      {
        CFDictionaryRemoveValue(*(a1 + 320), @"PINECRESTID");
      }

      v16 = CFGetAllocator(a1);
      v15 = AMAuthInstallHttpSetUriEscapedValue(v16, v13, @"TICKET_VERSION", @"2");
      if (v15)
      {
LABEL_131:
        ReversedMEIDFromString = v15;
        AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting COMMAND_CODE failed");
      }

      else
      {
        v17 = *(a1 + 48);
        v18 = MEMORY[0x29EDB8ED8];
        if (!v17)
        {
          v7 = 0;
LABEL_45:
          if (!*(a1 + 96) || (v51 = CFGetAllocator(a1), v52 = AMAuthInstallHttpSetUriEscapedValue(v51, v13, @"CLIENT_ID", *(a1 + 96)), !v52))
          {
            Count = CFDictionaryGetCount(*(a1 + 320));
            v3 = malloc(8 * Count);
            v54 = malloc(8 * Count);
            v4 = v54;
            v5 = 0;
            ReversedMEIDFromString = 2;
            if (!v3 || !v54)
            {
              Mutable = 0;
              goto LABEL_125;
            }

            CFDictionaryGetKeysAndValues(*(a1 + 320), v3, v54);
            if (Count >= 1)
            {
              v55 = 0;
              while (v3[v55])
              {
                v56 = v4[v55];
                if (!v56)
                {
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "invalid provisioningInfoValuesBuffer array");
                  goto LABEL_128;
                }

                v57 = CFGetTypeID(v56);
                CFDataGetTypeID();
                v58 = OUTLINED_FUNCTION_4_7();
                v59 = v3[v55];
                v60 = v4[v55];
                if (v57 == ReversedMEIDFromString)
                {
                  v61 = AMAuthInstallHttpSetBase64EncodedValue(v58, v13, v59, v60);
                }

                else
                {
                  v61 = AMAuthInstallHttpSetUriEscapedValue(v58, v13, v59, v60);
                }

                ReversedMEIDFromString = v61;
                if (v61)
                {
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting %@ failed", v3[v55]);
                  v5 = 0;
                  Mutable = 0;
                  goto LABEL_125;
                }

                if (Count == ++v55)
                {
                  goto LABEL_58;
                }
              }

              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "invalid provisioningInfoKeysBuffer array");
LABEL_128:
              v5 = 0;
              Mutable = 0;
              ReversedMEIDFromString = 99;
              goto LABEL_125;
            }

LABEL_58:
            v62 = *v18;
            Mutable = CFArrayCreateMutable(v62, 0, MEMORY[0x29EDB9000]);
            CFArrayAppendValue(Mutable, @"1.2.0");
            LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
            if (CFStringGetLength(LibraryVersionString))
            {
              v64 = LibraryVersionString;
            }

            else
            {
              v64 = @"libauthinstall-???";
            }

            CFArrayAppendValue(Mutable, v64);
            v5 = CFStringCreateByCombiningStrings(v62, Mutable, @"-");
            v65 = CFGetAllocator(a1);
            v66 = AMAuthInstallHttpSetUriEscapedValue(v65, v13, @"VERSION", v5);
            if (v66)
            {
              ReversedMEIDFromString = v66;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting VERSION (%@) failed", v5);
              goto LABEL_125;
            }

            v67 = *(a1 + 312);
            if (!v67)
            {
              goto LABEL_120;
            }

            Value = CFDictionaryGetValue(v67, @"MEID");
            if (Value)
            {
              if (OUTLINED_FUNCTION_1_13(Value, v69, v70, v71, v72, v73, v74, v75, v140, v141, cf) || !cf)
              {
                AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse meid, adding original string to response");
                SafeRelease(cf);
                v79 = CFGetAllocator(a1);
                OUTLINED_FUNCTION_3_7(v79, v80, @"MEID");
              }

              else
              {
                v76 = CFGetAllocator(a1);
                AMAuthInstallHttpSetBase64EncodedValue(v76, v13, @"B64_MEID", cf);
                CFRelease(cf);
                v77 = *(a1 + 48);
                if (v77)
                {
                  v78 = *(v77 + 32) != 0;
LABEL_73:
                  v81 = CFDictionaryGetValue(*(a1 + 312), @"IMEI");
                  if (v81)
                  {
                    if (OUTLINED_FUNCTION_1_13(v81, v82, v83, v84, v85, v86, v87, v88, v140, v141, cf) || !cf)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei, adding original string to response");
                      SafeRelease(cf);
                      v91 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v91, v92, @"IMEI");
                    }

                    else
                    {
                      v89 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v89, v13, @"B64_IMEI", cf);
                      CFRelease(cf);
                      v90 = *(a1 + 48);
                      if (v90)
                      {
                        if (*(v90 + 40))
                        {
                          v78 = v78 | 0x100;
                        }

                        else
                        {
                          v78 = v78;
                        }
                      }
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(v13, @"B64_IMEI");
                    CFDictionaryRemoveValue(v13, @"IMEI");
                  }

                  v93 = CFDictionaryGetValue(*(a1 + 312), @"IMEI2");
                  if (v93)
                  {
                    if (OUTLINED_FUNCTION_1_13(v93, v94, v95, v96, v97, v98, v99, v100, v140, v141, cf) || !cfa)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei2, adding original string to response");
                      SafeRelease(cfa);
                      v103 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v103, v104, @"IMEI2");
                    }

                    else
                    {
                      v101 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v101, v13, @"B64_IMEI2", cfa);
                      CFRelease(cfa);
                      v102 = *(a1 + 48);
                      if (v102)
                      {
                        if (*(v102 + 48))
                        {
                          v78 = v78 | 0x200;
                        }

                        else
                        {
                          v78 = v78;
                        }
                      }
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(v13, @"B64_IMEI2");
                    CFDictionaryRemoveValue(v13, @"IMEI2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"WIFI_MAC"))
                  {
                    v105 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v105, v106, @"WIFI_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"BT_MAC"))
                  {
                    v107 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v107, v108, @"BT_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"USB_ETHER_MAC"))
                  {
                    v109 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v109, v110, @"USB_ETHER_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"WIFI_MAC2"))
                  {
                    v111 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v111, v112, @"WIFI_MAC2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"BT_MAC2"))
                  {
                    v113 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v113, v114, @"BT_MAC2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETH_MAC"))
                  {
                    v115 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v115, v116, @"ETH_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETHER_MAC2"))
                  {
                    v117 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v117, v118, @"ETHER_MAC2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"T_MAC"))
                  {
                    v119 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v119, v120, @"T_MAC");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETHER_MAC3"))
                  {
                    v121 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v121, v122, @"ETHER_MAC3");
                  }

                  v123 = CFDictionaryGetValue(*(a1 + 312), @"PAICHUSUO");
                  if (v123)
                  {
                    AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO:%@", v123);
                    v124 = CFDictionaryGetValue(*(a1 + 312), @"SN");
                    if (v124)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO SN:%@", v124);
                      v125 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v125, v126, @"SN");
                    }

                    v127 = CFDictionaryGetValue(*(a1 + 312), @"RGN");
                    if (v127)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO RGN:%@", v127);
                      v128 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v128, v129, @"RGN");
                    }

                    v130 = CFDictionaryGetValue(*(a1 + 312), @"MPN");
                    if (v130)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO MPN:%@", v130);
                      v131 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v131, v132, @"MPN");
                    }

                    v133 = CFDictionaryGetValue(*(a1 + 312), @"MLB");
                    if (v133)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO MLB:%@", v133);
                      v134 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v134, v135, @"MLB");
                    }
                  }

                  v136 = CFGetAllocator(a1);
                  v137 = CFStringCreateWithFormat(v136, 0, @"0x%X", v78);
                  if (!v137)
                  {
                    ReversedMEIDFromString = 2;
                    goto LABEL_125;
                  }

                  v138 = v137;
                  CFDictionarySetValue(v13, @"STATUS1", v137);
                  CFRelease(v138);
LABEL_120:
                  ReversedMEIDFromString = 0;
                  goto LABEL_125;
                }
              }
            }

            else
            {
              CFDictionaryRemoveValue(v13, @"B64_MEID");
              CFDictionaryRemoveValue(v13, @"MEID");
            }

            v78 = 0;
            goto LABEL_73;
          }

          ReversedMEIDFromString = v52;
          AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting CLIENT_ID failed");
LABEL_124:
          v5 = 0;
          Mutable = 0;
          v3 = 0;
          v4 = 0;
          goto LABEL_125;
        }

        if (*(v17 + 16) && (v19 = CFGetAllocator(a1), v20 = AMAuthInstallHttpSetBase64EncodedValue(v19, v13, @"B64_BB_SNUM", *(*(a1 + 48) + 16)), v20))
        {
          ReversedMEIDFromString = v20;
          AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_BB_SNUM failed");
        }

        else
        {
          if (*(a1 + 312))
          {
            goto LABEL_18;
          }

          if (*(*(a1 + 48) + 72) && (v21 = CFGetAllocator(a1), v22 = AMAuthInstallHttpSetBase64EncodedValue(v21, v13, @"B64_SESS_KEY", *(*(a1 + 48) + 72)), v22))
          {
            ReversedMEIDFromString = v22;
            AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_SESS_KEY failed, '%@'", *(*(a1 + 48) + 72));
          }

          else
          {
            KeyHash = AMAuthInstallBasebandGetKeyHash(a1, @"BbProvisioningManifestKeyHash", &theData);
            if (KeyHash)
            {
              ReversedMEIDFromString = KeyHash;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "AMAuthInstallBasebandGetKeyHash failed");
            }

            else
            {
              if (!theData || (v24 = CFGetAllocator(a1), v25 = AMAuthInstallHttpSetBase64EncodedValue(v24, v13, @"B64_SKEY_HASH", theData), !v25))
              {
LABEL_18:
                v26 = CFGetAllocator(a1);
                v7 = CFDataCreate(v26, (*(a1 + 48) + 4), 4);
                if (!v7)
                {
                  ReversedMEIDFromString = 3;
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "chipID failed to convert to data");
                  goto LABEL_124;
                }

                v27 = CFGetAllocator(a1);
                v28 = AMAuthInstallHttpSetBase64EncodedValue(v27, v13, @"B64_BB_CHIPID", v7);
                if (v28)
                {
                  ReversedMEIDFromString = v28;
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_BB_CHIPID failed");
                  goto LABEL_124;
                }

                v29 = *(a1 + 48);
                if (v29[8])
                {
                  v30 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetUriEscapedValue(v30, v13, @"ICCID", *(*(a1 + 48) + 64));
                  v29 = *(a1 + 48);
                }

                if (v29[13])
                {
                  v31 = CFGetAllocator(a1);
                  v32 = AMAuthInstallHttpSetUriEscapedValue(v31, v13, @"BB_CARRIERID", *(*(a1 + 48) + 104));
                  if (v32)
                  {
                    ReversedMEIDFromString = v32;
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting BB_CARRIERID failed");
                    goto LABEL_124;
                  }

                  v29 = *(a1 + 48);
                }

                if (v29[14])
                {
                  v33 = CFGetAllocator(a1);
                  v34 = AMAuthInstallHttpSetBase64EncodedValue(v33, v13, @"MANIFESTDATA", *(*(a1 + 48) + 112));
                  if (v34)
                  {
                    ReversedMEIDFromString = v34;
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting MANIFESTDATA failed");
                    goto LABEL_124;
                  }

                  v29 = *(a1 + 48);
                }

                if (v29[4])
                {
                  v35 = OUTLINED_FUNCTION_2_9();
                  ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v35, v36, v37);
                  if (ReversedMEIDFromString || !cf)
                  {
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse meid");
                    goto LABEL_123;
                  }

                  v38 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetBase64EncodedValue(v38, v13, @"B64_MEID", cf);
                  CFRelease(cf);
                  v29 = *(a1 + 48);
                }

                if (v29[5])
                {
                  v39 = OUTLINED_FUNCTION_2_9();
                  ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v39, v40, v41);
                  if (ReversedMEIDFromString || !cf)
                  {
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei");
                    goto LABEL_123;
                  }

                  v42 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetBase64EncodedValue(v42, v13, @"B64_IMEI", cf);
                  CFRelease(cf);
                  v29 = *(a1 + 48);
                }

                if (v29[6])
                {
                  v43 = OUTLINED_FUNCTION_2_9();
                  ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v43, v44, v45);
                  if (ReversedMEIDFromString || !cf)
                  {
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei2");
                    goto LABEL_123;
                  }

                  v46 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetBase64EncodedValue(v46, v13, @"B64_IMEI2", cf);
                  CFRelease(cf);
                  v29 = *(a1 + 48);
                }

                if (!v29[7])
                {
                  goto LABEL_45;
                }

                v47 = OUTLINED_FUNCTION_2_9();
                ReversedMEIDFromString = AMAuthInstallSupportCopyDataFromHexString(v47, v48, v49);
                if (!ReversedMEIDFromString && cf)
                {
                  v50 = CFGetAllocator(a1);
                  AMAuthInstallHttpSetBase64EncodedValue(v50, v13, @"B64_EID", cf);
                  CFRelease(cf);
                  goto LABEL_45;
                }

                AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to create euiccEID data");
LABEL_123:
                SafeRelease(cf);
                goto LABEL_124;
              }

              ReversedMEIDFromString = v25;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_SKEY_HASH failed");
            }
          }
        }
      }
    }

    v7 = 0;
    goto LABEL_124;
  }

LABEL_125:
  SafeFree(v3);
  SafeFree(v4);
  SafeRelease(v7);
  SafeRelease(v5);
  SafeRelease(Mutable);
  return ReversedMEIDFromString;
}

uint64_t AMAuthInstallProvisioningServerSendSyncRequest(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, void *a4)
{
  theData = 0;
  *v14 = 0;
  v11 = 0;
  v12 = 0;
  v4 = 1;
  if (a3 && a4)
  {
    if (!a2)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "provisioning server url is NULL");
      goto LABEL_11;
    }

    PostRequest = AMAuthInstallHttpCreatePostRequest(a1, a2, a3, v14);
    if (!PostRequest)
    {
      PostRequest = AMAuthInstallHttpMessageSendSyncNew(a1, *v14, &theData, &v11 + 1, 0, 15.0);
      if (!PostRequest)
      {
        if (!theData)
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "no response data (httpStatus=%u)");
          goto LABEL_17;
        }

        PostRequest = AMAuthInstallProvisioningCopyResponse(a1, theData, &v11, &v12);
        if (!PostRequest)
        {
          AMAuthInstallLog(5, "AMAuthInstallProvisioningServerSendSyncRequest", "httpStatus=%u, status=%d", HIDWORD(v11), v11);
          if (v11)
          {
            AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "server error: %d", v11);
            v4 = 24;
            goto LABEL_11;
          }

          v8 = v12;
          if (v12)
          {
            AMAuthInstallLog(6, "AMAuthInstallProvisioningServerSendSyncRequest", "data=%@", v12);
            v9 = CFRetain(v8);
            v4 = 0;
            *a4 = v9;
            goto LABEL_11;
          }

          AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "server failed to provide response data");
LABEL_17:
          v4 = 17;
          goto LABEL_11;
        }
      }
    }

    v4 = PostRequest;
  }

LABEL_11:
  SafeRelease(0);
  SafeRelease(*v14);
  SafeRelease(theData);
  SafeRelease(v12);
  return v4;
}

uint64_t AMAuthInstallProvisioningSendAck(uint64_t cf, uint64_t a2)
{
  theDict = 0;
  if (!cf)
  {
    Mutable = 0;
    v6 = 1;
    goto LABEL_13;
  }

  if (*(cf + 312))
  {
    v4 = @"200";
  }

  else
  {
    if (*(cf + 304) == 8)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "Provisioning failed, ack already sent.");
      Mutable = 0;
      v6 = 19;
      goto LABEL_13;
    }

    AMAuthInstallLog(5, "AMAuthInstallProvisioningSendAck", "No provisioning info to ack, sending ping.");
    v4 = @"1";
  }

  v7 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v8 = AMAuthInstallProvisioningPopulateRequestDict(cf, Mutable, v4);
    if (v8)
    {
      v6 = v8;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "AMAuthInstallProvisioningPopulateRequestDict failed status=%d", v8);
    }

    else
    {
      v9 = CFGetAllocator(cf);
      v10 = CFStringCreateWithFormat(v9, 0, @"0x%X", a2);
      CFDictionarySetValue(Mutable, @"STATUS", v10);
      CFRelease(v10);
      v11 = CFGetAllocator(cf);
      v12 = AMAuthInstallProvisioningServerSendSyncRequest(v11, *(cf + 296), Mutable, &theDict);
      if (v12)
      {
        v6 = v12;
        AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "AMAuthInstallProvisioningServerSendSyncRequest failed status=%d", v12);
      }

      else
      {
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"STATUS");
          AMAuthInstallLog(6, "AMAuthInstallProvisioningSendAck", "Server returned STATUS=%@", Value);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "responseDict is NULL", v15);
        }

        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 2;
  }

LABEL_13:
  SafeRelease(Mutable);
  SafeRelease(theDict);
  return v6;
}

uint64_t AMAuthInstallProvisioningSendRequest(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  Mutable = 0;
  v4 = 1;
  if (a1 && a2 && a3)
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v9 = AMAuthInstallProvisioningPopulateRequestDict(a1, Mutable, a2);
      if (v9)
      {
        v4 = v9;
        AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", "AMAuthInstallProvisioningPopulateRequestDict failed");
      }

      else
      {
        v10 = CFGetAllocator(a1);
        v11 = AMAuthInstallProvisioningServerSendSyncRequest(v10, *(a1 + 296), Mutable, a3);
        if (v11)
        {
          v4 = v11;
          AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", "AMAuthInstallProvisioningServerSendSyncRequest failed");
        }

        else if (*a3)
        {
          SafeRelease(*(a1 + 312));
          v4 = 0;
          *(a1 + 312) = CFRetain(*a3);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", "*outResponseDict is NULL");
          v4 = 0;
        }
      }
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallProvisioningRequestInfoPlist(void *a1, CFDataRef *a2)
{
  theDict = 0;
  if (!a1)
  {
    v3 = 0;
    v4 = 1;
    goto LABEL_20;
  }

  v3 = 0;
  v4 = 1;
  if (!a2 || !a1[6])
  {
    goto LABEL_20;
  }

  v6 = a1[39];
  if (!v6)
  {
    v4 = AMAuthInstallProvisioningSendRequest(a1, @"100", &theDict);
    if (v4)
    {
      v3 = 0;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "AMAuthInstallProvisioningSendRequest failed");
      goto LABEL_20;
    }

    v7 = theDict;
    if (theDict)
    {
      goto LABEL_6;
    }

LABEL_23:
    v3 = 0;
    AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "responseDict is NULL");
    goto LABEL_20;
  }

  v7 = CFRetain(v6);
  theDict = v7;
  v4 = 99;
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_6:
  Value = CFDictionaryGetValue(v7, @"MEID");
  v9 = CFDictionaryGetValue(theDict, @"IMEI");
  if (!(Value | v9))
  {
    v3 = 0;
    v4 = 17;
    AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "both imei and meid are NULL, provisioning failed.");
    goto LABEL_20;
  }

  v10 = v9;
  if (*(a1[6] + 48))
  {
    v11 = CFDictionaryGetValue(theDict, @"IMEI2");
    if (!v11)
    {
      v3 = 0;
      v4 = 17;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "imei2 is NULL. provisioning failed.");
      goto LABEL_20;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v3 = Mutable;
  if (Mutable)
  {
    if (Value)
    {
      CFDictionarySetValue(Mutable, @"MEID", Value);
    }

    if (v10)
    {
      CFDictionarySetValue(v3, @"IMEI", v10);
    }

    if (v11)
    {
      CFDictionarySetValue(v3, @"IMEI2", v11);
    }

    v14 = CFGetAllocator(a1);
    XMLData = CFPropertyListCreateXMLData(v14, v3);
    *a2 = XMLData;
    if (XMLData)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", "CFPropertyListCreateXMLData failed.");
    }
  }

  else
  {
    v4 = 2;
  }

LABEL_20:
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallProvisioningRequestManifest(uint64_t a1, void *a2)
{
  v7 = 0;
  v2 = 1;
  if (a1 && a2)
  {
    if (*(a1 + 312))
    {
      v4 = CFRetain(*(a1 + 312));
      v7 = v4;
      v2 = 99;
      if (v4)
      {
LABEL_5:
        Value = CFDictionaryGetValue(v4, @"MANIFESTDATA");
        *a2 = Value;
        if (Value)
        {
          CFRetain(Value);
          v2 = 0;
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestManifest", "*manifestData is NULL");
        }

        goto LABEL_7;
      }
    }

    else
    {
      v2 = AMAuthInstallProvisioningSendRequest(a1, @"100", &v7);
      if (v2)
      {
        AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestManifest", "AMAuthInstallProvisioningSendRequest failed");
        goto LABEL_7;
      }

      v4 = v7;
      if (v7)
      {
        goto LABEL_5;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestManifest", "responseDict is NULL");
  }

LABEL_7:
  SafeRelease(v7);
  return v2;
}

uint64_t AMAuthInstallProvisioningProvisionIfNecessary(uint64_t a1, __CFDictionary *a2)
{
  value = 0;
  v42 = 0;
  v40 = 0;
  if (!a1)
  {
    v29 = 1;
    goto LABEL_75;
  }

  v4 = 1;
  if (a2)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(a1 + 304);
      if (v6 > 0xB)
      {
        AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "Unexpected provisioning state = %d", *(a1 + 304));
        v4 = 99;
        goto LABEL_72;
      }

      v7 = 1 << v6;
      if ((v7 & 0xF81) != 0)
      {
        goto LABEL_71;
      }

      if ((v7 & 0x26) != 0)
      {
        v8 = *(v5 + 88);
        if (v8 && CFBooleanGetValue(v8) == 1)
        {
          if (*(a1 + 328) || *(a1 + 329))
          {
            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Existing provisioning manifest found. Force provisioning is enabled; provisioning anyway.");
          }

          else
          {
            v36 = AMAuthInstallProvisioningSendAck(a1, 0);
            if (v36 != 24)
            {
              v4 = v36;
              if (!v36)
              {
                *(a1 + 304) = 7;
                AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Existing provisioning manifest found. Not attempting to provision.");
                goto LABEL_72;
              }

              v37 = "Provisioning server failed to respond, cannot provision.";
              goto LABEL_105;
            }

            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "provisioning ack failed, enabling force provisioning.");
            *(a1 + 328) = 1;
          }
        }

        v9 = *(*(a1 + 48) + 80);
        if (v9)
        {
          if (CFBooleanGetValue(v9) == 1)
          {
            v39 = 0;
            v10 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
            if (v10)
            {
              v4 = v10;
              goto LABEL_72;
            }

            if (!*(a1 + 328))
            {
              v31 = *(a1 + 48);
              if (v31[4] || v31[5] || v31[6])
              {
                AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Local re-locking enabled. Forcing use of P1 provisioning key.");
                v4 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
LABEL_83:
                v11 = value;
LABEL_84:
                if (v11)
                {
                  CFDictionarySetValue(a2, @"provisioning/puk.pem", v11);
                  AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Mature baseband found, doing two stage provisioning");
                  v4 = 0;
                  *(a1 + 304) = 2;
                  goto LABEL_72;
                }

                goto LABEL_110;
              }
            }

            if (_AMAuthInstallSupportsECProvision(a1))
            {
              AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "ECDH Server based provisioning enabled. Creating empty puk.pem file for BBUpdater");
              *bytes = -272716322;
              v11 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 4);
              v4 = 0;
              value = v11;
              goto LABEL_84;
            }

            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "LEGACY Server based provisioning enabled. Reading provisioning key from settings.");
            KeyHash = AMAuthInstallBasebandGetKeyHash(a1, @"BbProvisioningManifestKeyHash", &v39);
            if (KeyHash)
            {
              v4 = KeyHash;
            }

            else if (v39)
            {
              v4 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
              if (!v4)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v4 = 0;
            }

LABEL_110:
            OUTLINED_FUNCTION_7_6();
LABEL_105:
            AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", v37);
            goto LABEL_72;
          }

          v28 = *(a1 + 48);
          if (v28[4] || v28[5] || v28[6])
          {
            if (!*(a1 + 328))
            {
              *(a1 + 304) = 7;
              v27 = "Device already has MEID and/or IMEI and/or IMEI2. Bringup provisioning complete. Not attempting to provision.";
LABEL_70:
              AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", v27);
LABEL_71:
              v4 = 0;
              goto LABEL_72;
            }

            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Device already has MEID and/or IMEI and/or IMEI2. Force provisioning is enabled requesting new values.");
          }

          v35 = AMAuthInstallProvisioningRequestInfoPlist(a1, &v42);
          *(a1 + 304) = 5;
          if (v35)
          {
            v4 = v35;
            v37 = "AMAuthInstallProvisioningRequestInfoPlist failed";
            goto LABEL_105;
          }

          if (!v42)
          {
            AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "info.plist is NULL");
            goto LABEL_71;
          }

          CFDictionarySetValue(a2, @"provisioning/info.plist", v42);
          v27 = "Bringup baseband found, doing single stage provisioning";
          goto LABEL_70;
        }

        Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
        if (!Mutable)
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "emptyData is NULL");
          v4 = 2;
          goto LABEL_72;
        }

        v26 = Mutable;
        CFDictionarySetValue(a2, @"provisioning/", Mutable);
        CFRelease(v26);
        v27 = "Baseband not reporting manifest status, not attempting to provision yet.";
        goto LABEL_70;
      }

      if (*(v5 + 72))
      {
        v12 = *(v5 + 4);
        if (v12 != 94)
        {
          v13 = v12 == 104 || v12 == 241889;
          v14 = v13 || v12 == 520417;
          v15 = v14 || v12 == 938209;
          v16 = v15 || v12 == 1327329;
          v17 = v16 || v12 == 1515745;
          v18 = v17 || v12 == 1700065;
          v19 = v18 || v12 == 2044129;
          v20 = v19 || v12 == 2089185;
          v21 = v20 || v12 == 2814177;
          v22 = v21 || v12 == 8343777;
          v23 = v22 || v12 == 9572577;
          v24 = v23 || v12 == 9781473;
          if (!v24 && !*(a1 + 328) && (*(v5 + 32) || *(v5 + 40) || *(v5 + 48)))
          {
            AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Performing local re-lock");
            v33 = AMAuthInstallBasebandLocalProvisionDevice(a1, &v40);
            if (v33)
            {
              v4 = v33;
              OUTLINED_FUNCTION_7_6();
              v37 = "AMAuthInstallMonetLocalProvisionDevice failed";
              goto LABEL_105;
            }

            if (v40)
            {
              *(a1 + 304) = 6;
LABEL_95:
              CFDictionaryRemoveAllValues(a2);
              CFDictionarySetValue(a2, @"provisioning/manifest.bin", v40);
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_7_6();
LABEL_119:
            AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "manifestData is NULL");
            v4 = 14;
            goto LABEL_72;
          }
        }

        if (*(v5 + 96) == 3)
        {
          AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Requesting manifest from server (%@)", *(a1 + 296));
          v34 = AMAuthInstallProvisioningRequestManifest(a1, &v40);
          *(a1 + 304) = 4;
          if (v34)
          {
            v4 = v34;
            v37 = "AMAuthInstallProvisioningRequestManifest failed";
            goto LABEL_105;
          }

          if (v40)
          {
            goto LABEL_95;
          }

          goto LABEL_119;
        }

        AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "Cannot provision unfused boards");
      }

      else
      {
        OUTLINED_FUNCTION_7_6();
        AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "encryptedSessionKey is NULL");
      }

      v4 = 19;
    }
  }

LABEL_72:
  if (*(a1 + 304) == 8)
  {
    v29 = 19;
  }

  else
  {
    v29 = v4;
  }

LABEL_75:
  SafeRelease(0);
  SafeRelease(v42);
  SafeRelease(value);
  SafeRelease(v40);
  return v29;
}

uint64_t AMAuthInstallProvisioningEnable(uint64_t a1, int a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 304) = a2 != 0;
  return result;
}

uint64_t AMAuthInstallProvisioningAPOnlyEnable(uint64_t a1, int a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  if (a2)
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 304) = v4;
  return result;
}

uint64_t AMAuthInstallProvisioningSetServerURL(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      SafeRelease(*(a1 + 296));
      *(a1 + 296) = CFRetain(a2);
      AMAuthInstallLog(5, "AMAuthInstallProvisioningSetServerURL", "provisioning server: %@", a2);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallProvisioningGetProvisionedInfo(uint64_t a1, CFTypeRef *a2)
{
  v2 = 1;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = *(a1 + 312);
  if (v5)
  {
    v2 = 0;
    *a2 = v5;
    return v2;
  }

  if ((*(a1 + 304) | 8) != 9)
  {
    v2 = 0;
LABEL_7:
    *a2 = 0;
    return v2;
  }

  Value = CFDictionaryGetValue(*(a1 + 320), @"WIFI_MAC");
  v8 = CFDictionaryGetValue(*(a1 + 320), @"BT_MAC");
  v9 = CFDictionaryGetValue(*(a1 + 320), @"USB_ETHER_MAC");
  if (Value)
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = *(a1 + 330) == 0;
    goto LABEL_14;
  }

  v10 = *(a1 + 332) == 0;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_11:
  v11 = 0;
LABEL_14:
  v12 = v11 || v10;
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 331) == 0;
  }

  v14 = v12 | v13;
  if (*(a1 + 328) || v14)
  {
    AMAuthInstallLog(6, "AMAuthInstallProvisioningGetProvisionedInfo", "Forcing reprovisioning.  macAddressMissing=%s");
  }

  else
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningGetProvisionedInfo", "AP: already fully provisioned, sending ACK");
    v15 = AMAuthInstallProvisioningSendAck(a1, 0);
    v2 = v15;
    if (!v15)
    {
      AMAuthInstallLog(5, "AMAuthInstallProvisioningGetProvisionedInfo", "AP: ACK successful. Not attempting to provision.");
      goto LABEL_7;
    }

    if (v15 != 24)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningGetProvisionedInfo", "AP: provisioning server failed to respond, cannot provision.");
      goto LABEL_7;
    }

    AMAuthInstallLog(5, "AMAuthInstallProvisioningGetProvisionedInfo", "AP: provisioning ack failed, sending provisioning request.");
  }

  v16 = AMAuthInstallProvisioningSendRequest(a1, @"100", a2);
  if (v16)
  {
    v2 = v16;
    AMAuthInstallLog(3, "AMAuthInstallProvisioningGetProvisionedInfo", "AMAuthInstallProvisioningSendRequest failed");
  }

  else if (*a2)
  {
    return 0;
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallProvisioningGetProvisionedInfo", "*outInfo is NULL");
    return 14;
  }

  return v2;
}

uint64_t AMAuthInstallProvisioningSetInfo(CFTypeRef *a1, const __CFDictionary *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      SafeRelease(a1[40]);
      v5 = CFGetAllocator(a1);
      a1[40] = CFDictionaryCreateMutableCopy(v5, 0, a2);
      AMAuthInstallLog(5, "AMAuthInstallProvisioningSetInfo", "provisioning info: %@", a2);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallProvisioningSetItem(uint64_t a1, void *key, const void *a3)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a3 && key)
  {
    v6 = *(a1 + 320);
    if (v6)
    {
      CFDictionarySetValue(v6, key, a3);
      AMAuthInstallLog(5, "AMAuthInstallProvisioningSetItem", "adding %@ to provisioning info", key);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallProvisioningForceServer(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 328) = a2;
  return result;
}

uint64_t AMAuthInstallProvisioningForceLocal(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 329) = a2;
  return result;
}

uint64_t AMAuthInstallProvisioningAllowMissingBMac(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 330) = a2;
  return result;
}

uint64_t AMAuthInstallProvisioningAllowMissingEMac(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 331) = a2;
  return result;
}

uint64_t AMAuthInstallProvisioningAllowMissingWMac(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 332) = a2;
  return result;
}

uint64_t AMAuthInstallRembrandtMeasureBootImage(uint64_t a1, const __CFData *a2, __CFDictionary *a3, const void *a4)
{
  value = 0;
  if (!a1)
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 1;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        v9 = *(a1 + 48);
        if (v9)
        {
          if ((*(v9 + 4) - 94) <= 0xA)
          {
            OUTLINED_FUNCTION_0_7();
            if (!v12)
            {
              v13 = CFGetAllocator(v10);
              DigestForData_SHA256 = AMAuthInstallCryptoCreateDigestForData_SHA256(v13, a2, &value);
              goto LABEL_11;
            }

            if ((v11 & 0x401) != 0)
            {
              v15 = CFGetAllocator(v10);
              DigestForData_SHA256 = AMAuthInstallCryptoCreateDigestForData_SHA384(v15, a2, &value);
LABEL_11:
              v7 = DigestForData_SHA256;
              v6 = value;
              if (!DigestForData_SHA256)
              {
                if (value)
                {
                  CFDictionarySetValue(a3, a4, value);
                  v7 = 0;
                  v6 = value;
                }

                else
                {
                  v7 = 2;
                }
              }

              goto LABEL_14;
            }
          }

          AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootImage", "Unknown chipid");
          v6 = 0;
          v7 = 99;
        }
      }
    }
  }

LABEL_14:
  SafeRelease(v6);
  return v7;
}

uint64_t AMAuthInstallRembrandtMeasureElf(void *a1, const __CFData *a2, __CFDictionary *a3, const void *a4, void *a5)
{
  memset(&c, 0, sizeof(c));
  bzero(&v32, 0xD0uLL);
  if (CFDataGetLength(a2) <= 0x33 || (BytePtr = CFDataGetBytePtr(a2), *BytePtr != 1179403647))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", "invalid file format");
LABEL_16:
    Mutable = 0;
    v18 = 0;
    v29 = 10;
    goto LABEL_13;
  }

  v11 = BytePtr;
  v12 = &BytePtr[*(BytePtr + 7)];
  if ((*(v12 + 6) & 0x7000000) == 0x4000000)
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", "file lacks a hash section");
    goto LABEL_16;
  }

  v13 = CFDataGetBytePtr(a2);
  v14 = *(v12 + 1);
  AMAuthInstallLogDumpMemory(7, "AMAuthInstallRembrandtMeasureElf", "hash section", &v13[v14], *(v12 + 4));
  v15 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v15, 0);
  if (!Mutable)
  {
    v18 = 0;
    goto LABEL_18;
  }

  key = a5;
  v17 = CFGetAllocator(a1);
  v18 = CFDataCreateMutable(v17, 0);
  if (!v18)
  {
LABEL_18:
    v29 = 2;
    goto LABEL_13;
  }

  if ((*(a1[6] + 4) - 94) > 0xA)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_7();
  if (v20)
  {
    if ((v19 & 0x401) != 0)
    {
      CFDataSetLength(Mutable, 48);
      CC_SHA384_Init(&v32);
      CC_SHA384_Update(&v32, v11, v11[20]);
      CC_SHA384_Update(&v32, v12, v11[21] * v11[22]);
      CC_SHA384_Update(&v32, &v13[v14], *(v12 + 4));
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      CC_SHA384_Final(MutableBytePtr, &v32);
      CFDataSetLength(v18, 48);
      v26 = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      v28 = CFDataGetMutableBytePtr(v18);
      CC_SHA384(v26, Length, v28);
      goto LABEL_12;
    }

LABEL_11:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", "Unknown chipid");
    goto LABEL_12;
  }

  CFDataSetLength(Mutable, 32);
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v11, v11[20]);
  CC_SHA256_Update(&c, v12, v11[21] * v11[22]);
  CC_SHA256_Update(&c, &v13[v14], *(v12 + 4));
  v21 = CFDataGetMutableBytePtr(Mutable);
  CC_SHA256_Final(v21, &c);
  CFDataSetLength(v18, 32);
  v22 = CFDataGetBytePtr(a2);
  v23 = CFDataGetLength(a2);
  v24 = CFDataGetMutableBytePtr(v18);
  CC_SHA256(v22, v23, v24);
LABEL_12:
  CFDictionarySetValue(a3, key, v18);
  CFDictionarySetValue(a3, a4, Mutable);
  v29 = 0;
LABEL_13:
  SafeRelease(v18);
  SafeRelease(Mutable);
  return v29;
}

uint64_t AMAuthInstallRembrandtMeasureBootPSI(void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const __CFString *a5)
{
  v5 = 0;
  v41 = *MEMORY[0x29EDCA608];
  valuePtr = 0;
  v40 = 0;
  bytes = 0u;
  v39 = 0u;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v6 = 1;
  if (!a1 || !theData)
  {
    v9 = 0;
    goto LABEL_36;
  }

  v9 = 0;
  if (a3)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v14 = BytePtr[4];
    v15 = BytePtr[5];
    v17 = BytePtr[9];
    v16 = BytePtr[10];
    Length = CFDataGetLength(theData);
    v19 = *(a1[6] + 4);
    if (v19 == 96)
    {
      if (Length <= v15)
      {
        AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "gpuk_offset %d >= sizeToMeasure %lld");
LABEL_44:
        v6 = 0;
        v5 = 0;
        v9 = 0;
        goto LABEL_36;
      }
    }

    else if (Length <= v17)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "gpuk2_offset %d >= sizeToMeasure %lld");
      goto LABEL_44;
    }

    if (Length <= v16)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "signature_offset %d >= sizeToMeasure %lld");
      goto LABEL_44;
    }

    if (Length != v14)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "size %d != sizeToMeasure %lld");
      goto LABEL_44;
    }

    v20 = v19 == 104 || v19 == 94;
    if (v20)
    {
      v21 = 36;
    }

    else
    {
      v21 = 52;
    }

    if (v20)
    {
      v22 = 127;
    }

    else
    {
      v22 = 63;
    }

    if (v20)
    {
      v23 = -92;
    }

    else
    {
      v23 = -76;
    }

    if ((v19 - 94) <= 0xA)
    {
      v24 = v16 + v23 - ((v16 + v21) & v22);
      OUTLINED_FUNCTION_0_7();
      if (!v20)
      {
        goto LABEL_32;
      }

      if ((v25 & 0x401) != 0)
      {
        if (CFStringCompare(@"PSI2-PartialDigest", a5, 0) && CFStringCompare(@"RestorePSI2-PartialDigest", a5, 0))
        {
          AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "Using SHA384 to hash %@", a4);
          v26 = CFDataGetBytePtr(theData);
          bzero(&c, 0xD0uLL);
          CC_SHA384_Init(&c);
          CC_SHA384_Update(&c, v26, v24);
          for (i = 0; i != 64; i += 16)
          {
            *&v36[i / 4 + 2] = vrev64q_s8(*&c.hash[i / 8]);
          }

          v36[0] = v16 - v24;
          v36[1] = v24;
          v28 = CFGetAllocator(a1);
          p_bytes = v36;
          v30 = 72;
LABEL_33:
          v9 = CFDataCreate(v28, p_bytes, v30);
          if (v9)
          {
            CFDictionarySetValue(a3, a5, v9);
            valuePtr = *(CFDataGetBytePtr(theData) + 1024);
            AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "%@: version=0x%x", a4, valuePtr);
            v32 = CFGetAllocator(a1);
            v5 = CFNumberCreate(v32, kCFNumberSInt32Type, &valuePtr);
            if (v5)
            {
              CFDictionarySetValue(a3, a4, v5);
              v6 = 0;
              goto LABEL_36;
            }

LABEL_39:
            v6 = 2;
            goto LABEL_36;
          }

LABEL_38:
          AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "%s CFDataCreate failed", "AMAuthInstallRembrandtMeasureBootPSI");
          v5 = 0;
          v9 = 0;
          goto LABEL_39;
        }

        AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "Using SHA256 to hash %@", a4);
LABEL_32:
        v31 = CFDataGetBytePtr(theData);
        _SHA256Partial(v31, v24, (&bytes + 8));
        LODWORD(bytes) = v16 - v24;
        DWORD1(bytes) = v24;
        v28 = CFGetAllocator(a1);
        p_bytes = &bytes;
        v30 = 40;
        goto LABEL_33;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "Unknown chipid");
    goto LABEL_38;
  }

LABEL_36:
  SafeRelease(v9);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallRembrandtLocalCreateSigningResponse(_DWORD *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  valuePtr = 0;
  v66 = 0;
  value = 0;
  v64 = 0;
  v65 = 0;
  v9 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "Failed to allocate responseDict");
    OUTLINED_FUNCTION_2_10();
LABEL_61:
    v17 = 2;
    goto LABEL_48;
  }

  v11 = AMAuthInstallRembrandtLocalRegisterKeys(a1);
  if (v11)
  {
    v17 = v11;
    OUTLINED_FUNCTION_2_10();
    goto LABEL_48;
  }

  v12 = CFDictionaryGetValue(a2, @"BbSNUM");
  if (!v12 || (v3 = v12, TypeID = CFDataGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "bad or missing SNUM");
    goto LABEL_36;
  }

  v13 = CFDictionaryGetValue(a2, @"BbChipID");
  if (!v13 || (v3 = v13, TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "bad or missing chipid");
    goto LABEL_36;
  }

  if (!CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "failed to read chipid");
LABEL_36:
    OUTLINED_FUNCTION_2_10();
LABEL_37:
    v17 = 1;
    goto LABEL_48;
  }

  v14 = CFDictionaryGetValue(a2, @"BbGoldCertId");
  if (!v14 || (v3 = v14, TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "bad or missing certid");
    goto LABEL_36;
  }

  v15 = CFDictionaryGetValue(a2, @"BasebandFirmware");
  if (!v15 || (v5 = v15, v3 = CFDictionaryGetTypeID(), v3 != CFGetTypeID(v5)))
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "bad or missing baseband firmware dict");
    goto LABEL_36;
  }

  v16 = CFGetAllocator(a1);
  v17 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v16, a2, 2uLL);
  v3 = DeepCopy;
  if (!DeepCopy)
  {
    v5 = 0;
    TypeID = 0;
    goto LABEL_48;
  }

  v19 = CFDictionaryGetValue(DeepCopy, @"BasebandFirmware");
  v20 = CFGetAllocator(a1);
  TypeID = CFDictionaryCreateMutable(v20, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!TypeID)
  {
    v5 = 0;
    goto LABEL_61;
  }

  theDict = v19;
  CFDictionarySetValue(Mutable, @"BasebandFirmware", TypeID);
  v21 = CFDictionaryGetValue(v5, @"PSI-PartialDigest");
  if (v21)
  {
    v22 = CFDataGetTypeID();
    if (v22 != CFGetTypeID(v21))
    {
      goto LABEL_53;
    }

    PSIStitchData = _AMAuthInstallRembrandtLocalCreatePSIStitchData(a1, v21, &value);
    if (PSIStitchData)
    {
LABEL_56:
      v17 = PSIStitchData;
      v5 = 0;
      goto LABEL_48;
    }

    CFDictionarySetValue(TypeID, @"PSI-Blob", value);
  }

  v24 = CFDictionaryGetValue(v5, @"RestorePSI-PartialDigest");
  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = v24;
  v26 = CFDataGetTypeID();
  if (v26 != CFGetTypeID(v25))
  {
LABEL_53:
    v5 = 0;
    goto LABEL_37;
  }

  PSIStitchData = _AMAuthInstallRembrandtLocalCreatePSIStitchData(a1, v25, &v66);
  if (PSIStitchData)
  {
    goto LABEL_56;
  }

  CFDictionarySetValue(TypeID, @"RestorePSI-Blob", v66);
LABEL_22:
  v27 = CFDictionaryGetValue(v5, @"PSI2-PartialDigest");
  if (v21)
  {
    v28 = CFDataGetTypeID();
    if (v28 != CFGetTypeID(v21))
    {
      goto LABEL_53;
    }
  }

  if (v27)
  {
    PSIStitchData = _AMAuthInstallRembrandtLocalCreatePSIStitchData(a1, v27, &v65);
    if (PSIStitchData)
    {
      goto LABEL_56;
    }

    CFDictionarySetValue(TypeID, @"PSI2-Blob", v65);
  }

  v29 = CFDictionaryGetValue(v5, @"RestorePSI2-PartialDigest");
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = CFDataGetTypeID();
  if (v31 != CFGetTypeID(v30))
  {
    goto LABEL_53;
  }

  PSIStitchData = _AMAuthInstallRembrandtLocalCreatePSIStitchData(a1, v30, &v64);
  if (PSIStitchData)
  {
    goto LABEL_56;
  }

  CFDictionarySetValue(TypeID, @"RestorePSI2-Blob", v64);
LABEL_29:
  v5 = 0;
  OUTLINED_FUNCTION_1_14();
  if (!(!v33 & v32))
  {
    OUTLINED_FUNCTION_0_7();
    if (!v33)
    {
      v35 = value;
      memset(&c, 0, 104);
      v36 = CFGetAllocator(a1);
      v37 = CFDataCreateMutable(v36, 32);
      v38 = v37;
      if (v37)
      {
        v61 = TypeID;
        v39 = Mutable;
        v40 = v3;
        v41 = a3;
        CFDataSetLength(v37, 32);
        BytePtr = CFDataGetBytePtr(v21);
        v43 = *(BytePtr + 1);
        CC_SHA256_Init(&c);
        for (i = 8; i != 40; i += 4)
        {
          *(c.count + i) = bswap32(*&BytePtr[i]);
        }

        c.count[0] = v43;
        v45 = CFDataGetBytePtr(v35);
        Length = CFDataGetLength(v35);
        CC_SHA256_Update(&c, v45, Length);
        MutableBytePtr = CFDataGetMutableBytePtr(v38);
        CC_SHA256_Final(MutableBytePtr, &c);
        v5 = CFRetain(v38);
        v17 = 0;
        a3 = v41;
        v3 = v40;
        Mutable = v39;
        TypeID = v61;
        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if ((v34 & 0x401) != 0)
    {
      v48 = value;
      bzero(&c, 0xD0uLL);
      v49 = CFGetAllocator(a1);
      v50 = CFDataCreateMutable(v49, 48);
      v38 = v50;
      if (v50)
      {
        v62 = a3;
        CFDataSetLength(v50, 48);
        v51 = CFDataGetBytePtr(v21);
        v52 = (v51 + 8);
        v53 = *(v51 + 1);
        CC_SHA384_Init(&c);
        for (j = 2; j != 10; ++j)
        {
          v55 = *v52++;
          c.count[j] = bswap64(v55);
        }

        c.count[0] = v53;
        c.count[1] = 0;
        v56 = CFDataGetBytePtr(v48);
        v57 = CFDataGetLength(v48);
        CC_SHA384_Update(&c, v56, v57);
        v58 = CFDataGetMutableBytePtr(v38);
        CC_SHA384_Final(v58, &c);
        v5 = CFRetain(v38);
        v17 = 0;
        a3 = v62;
LABEL_43:
        SafeRelease(v38);
        CFDictionarySetValue(theDict, @"PSI-DownloadDigest", v5);
        if (!v38)
        {
          goto LABEL_48;
        }

        goto LABEL_44;
      }

LABEL_62:
      v5 = 0;
      v17 = 2;
      goto LABEL_43;
    }
  }

LABEL_44:
  if (CFDictionaryContainsKey(a2, @"@BBTicket"))
  {
    v59 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    if (v59)
    {
      v17 = v59;
      goto LABEL_48;
    }

    CFDictionarySetValue(Mutable, @"BBTicket", 0);
  }

  *a3 = CFRetain(Mutable);
  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request-bb-local", 2);
  AMAuthInstallDebugWriteObject(a1, Mutable, @"tss-response-bb-local", 2);
  v17 = 0;
LABEL_48:
  SafeRelease(TypeID);
  SafeRelease(value);
  SafeRelease(v66);
  SafeRelease(v65);
  SafeRelease(v64);
  SafeRelease(0);
  SafeRelease(v3);
  SafeRelease(Mutable);
  SafeRelease(v5);
  SafeRelease(0);
  return v17;
}

uint64_t _AMAuthInstallRembrandtLocalCreatePSIStitchData(void *a1, const __CFData *a2, CFTypeRef *a3)
{
  v77 = *MEMORY[0x29EDCA608];
  memset(&c, 0, sizeof(c));
  bzero(&v73, 0xD0uLL);
  v72 = 0;
  v71 = 0;
  OUTLINED_FUNCTION_1_14();
  if (!(!v7 & v6))
  {
    OUTLINED_FUNCTION_0_7();
    if (!v7)
    {
      v9 = 256;
      goto LABEL_6;
    }

    if ((v8 & 0x401) != 0)
    {
      v9 = 104;
LABEL_6:
      v71 = v9;
      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid");
  if (!a1[6])
  {
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "amai->bbParameters is NULL");
    goto LABEL_52;
  }

  v9 = 0;
  if (!a3)
  {
LABEL_14:
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "outPsiStitchDataData is NULL");
LABEL_52:
    v13 = 0;
    MutableCopy = 0;
    Mutable = 0;
    goto LABEL_53;
  }

LABEL_7:
  v10 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v10, 0);
  if (!Mutable)
  {
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "stitchData is NULL");
    v13 = 0;
    goto LABEL_55;
  }

  theData = 0;
  v12 = *(a1[6] + 4) - 94;
  if (v12 < 0xB && ((0x685u >> v12) & 1) != 0)
  {
    DigestForKey = AMAuthInstallRembrandtLocalCreateDigestForKey(a1, off_29EE9AED0[v12], &theData);
    if (DigestForKey)
    {
      v15 = DigestForKey;
      v13 = 0;
      MutableCopy = 0;
      goto LABEL_11;
    }

    BytePtr = CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    v19 = OUTLINED_FUNCTION_3_8();
    CFDataAppendBytes(v19, BytePtr, v20);
    bytes[0] = xmmword_298560157;
    bytes[1] = algn_298560167;
    CFDataAppendBytes(Mutable, bytes, 32);
    OUTLINED_FUNCTION_1_14();
    if (!(!v7 & v6))
    {
      OUTLINED_FUNCTION_0_7();
      if (!v7)
      {
        v22 = CFDataGetBytePtr(a2);
        v23 = v22;
        v24 = 0;
LABEL_21:
        v25 = *v22;
LABEL_22:
        v26 = v25;
        Length = CFDataGetLength(Mutable);
        if (CFDataGetLength(Mutable) + 12 > v25)
        {
          v68 = CFDataGetLength(Mutable);
          AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "masteredReservationLength %d < CFDataGetLength(stitchData) %lld + snumLength %d", v25, v68, 12);
          v13 = 0;
          goto LABEL_59;
        }

        v28 = v25 - Length - 12;
        if (v26 - Length == 12)
        {
          v13 = 0;
          goto LABEL_27;
        }

        v29 = malloc(v26 - Length - 12);
        v13 = v29;
        if (v29)
        {
          memset(v29, 255, v28);
          CFDataAppendBytes(Mutable, v13, v28);
LABEL_27:
          v30 = CFDataGetBytePtr(*(a1[6] + 16));
          CFDataGetLength(*(a1[6] + 16));
          v31 = OUTLINED_FUNCTION_3_8();
          CFDataAppendBytes(v31, v30, v32);
          v33 = CFDataGetLength(*(a1[6] + 16));
          v34 = a1[6];
          if (v33 != 12)
          {
            CFDataGetLength(*(v34 + 16));
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "CFDataGetLength(amai->bbParameters->snum) %lld != snumLength %d");
            goto LABEL_59;
          }

          if ((*(v34 + 4) - 94) > 0xA)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_0_7();
          if (!v7)
          {
            v36 = *(v23 + 1);
            CC_SHA256_Init(&c);
            for (i = 2; i != 10; ++i)
            {
              c.count[i] = bswap32(*&v23[i * 4]);
            }

            c.count[0] = v36;
            c.count[1] = 0;
            v38 = CFDataGetBytePtr(Mutable);
            v39 = CFDataGetLength(Mutable);
            CC_SHA256_Update(&c, v38, v39);
            CC_SHA256_Final(md, &c);
            AMAuthInstallBasebandRembrandtLocalProvisionDevice();
            if (CFDataGetLength(v72) != v9)
            {
              CFDataGetLength(v72);
              AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "CFDataGetLength(signatureData) %lld != signatureLength %d");
LABEL_59:
              MutableCopy = 0;
              goto LABEL_53;
            }

            goto LABEL_40;
          }

          if ((v35 & 0x401) != 0)
          {
            v40 = (v24 + 8);
            v41 = *(v24 + 1);
            CC_SHA384_Init(&v73);
            for (j = 2; j != 10; ++j)
            {
              v43 = *v40++;
              v73.count[j] = bswap64(v43);
            }

            v73.count[0] = v41;
            v73.count[1] = 0;
            v44 = CFDataGetBytePtr(Mutable);
            v45 = CFDataGetLength(Mutable);
            CC_SHA384_Update(&v73, v44, v45);
            LODWORD(v44) = *CFDataGetBytePtr(Mutable);
            v46 = CFDataGetLength(Mutable);
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "STITCH ptr 0x%x STITCH data 0x%x", v44, v46);
            CC_SHA384_Final(md, &v73);
            AMAuthInstallBasebandRembrandtLocalProvisionDevice();
          }

          else
          {
LABEL_39:
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid");
          }

LABEL_40:
          if (!v72)
          {
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "amai is NULL");
            goto LABEL_59;
          }

          v47 = 0;
          MutableCopy = 0;
          switch(*(a1[6] + 4))
          {
            case '^':
            case 'h':
              v48 = CFDataGetBytePtr(v72);
              CFDataGetLength(v72);
              v49 = OUTLINED_FUNCTION_3_8();
              CFDataAppendBytes(v49, v48, v50);
              CFDataAppendBytes(Mutable, kGoldLeafCertificate_ice18_EC, 463);
              CFDataAppendBytes(Mutable, kRootGoldCertificate_ice18_EC, 450);
              LODWORD(v48) = CFDataGetLength(Mutable);
              CFDataIncreaseLength(Mutable, 5231);
              MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
              memset(&MutableBytePtr[v48], 255, 0x146FuLL);
              v52 = CFDataGetLength(v72);
              MutableCopy = 0;
              v53 = 6144;
              goto LABEL_44;
              v58 = CFGetAllocator(a1);
              MutableCopy = CFDataCreateMutableCopy(v58, 0, v72);
              v59 = CFDataGetMutableBytePtr(MutableCopy);
              v60 = CFDataGetLength(MutableCopy);
              if ((v60 & 0xFFFFFFFE) != 0)
              {
                v61 = v60 >> 1;
                v62 = v60 - 1;
                v63 = v59;
                do
                {
                  v64 = v59[v62];
                  v59[v62] = *v63;
                  *v63++ = v64;
                  --v62;
                  --v61;
                }

                while (v61);
              }

              v65 = CFDataGetBytePtr(MutableCopy);
              CFDataGetLength(MutableCopy);
              v66 = OUTLINED_FUNCTION_3_8();
              CFDataAppendBytes(v66, v65, v67);
              CFDataAppendBytes(Mutable, kRootGoldCertificate, 540);
              CFDataAppendBytes(Mutable, kGoldLeafCertificate, 796);
              v47 = v26 + CFDataGetLength(MutableCopy) + 1336;
              break;
            case 'e':
            case 'g':
              v54 = CFDataGetBytePtr(v72);
              CFDataGetLength(v72);
              v55 = OUTLINED_FUNCTION_3_8();
              CFDataAppendBytes(v55, v54, v56);
              CFDataAppendBytes(Mutable, kGoldLeafCertificate_x509, 818);
              CFDataAppendBytes(Mutable, kRootGoldCertificate_x509, 828);
              LODWORD(v54) = CFDataGetLength(Mutable);
              CFDataIncreaseLength(Mutable, 4490);
              v57 = CFDataGetMutableBytePtr(Mutable);
              memset(&v57[v54], 255, 0x118AuLL);
              v52 = CFDataGetLength(v72);
              MutableCopy = 0;
              v53 = 6136;
LABEL_44:
              v47 = v26 + v53 + v52;
              break;
            default:
              break;
          }

          if (v47 == CFDataGetLength(Mutable))
          {
            v15 = 0;
            *a3 = CFRetain(Mutable);
            goto LABEL_11;
          }

          v69 = CFDataGetLength(Mutable);
          AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "stitchData is %lld, expected size is %d", v69, v47);
LABEL_53:
          v15 = 1;
          goto LABEL_11;
        }

        AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "paddingBytes is NULL");
LABEL_55:
        MutableCopy = 0;
        v15 = 2;
        goto LABEL_11;
      }

      if ((v21 & 0x401) != 0)
      {
        v22 = CFDataGetBytePtr(a2);
        v24 = v22;
        v23 = 0;
        goto LABEL_21;
      }
    }

    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid");
    v25 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_22;
  }

  AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid");
  v13 = 0;
  MutableCopy = 0;
  v15 = 99;
LABEL_11:
  SafeRelease(Mutable);
  SafeRelease(v72);
  SafeRelease(MutableCopy);
  SafeFree(v13);
  return v15;
}

uint64_t AMAuthInstallRembrandtLocalCreateDigestForKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 1;
  if (a1 && a2 && a3)
  {
    if ((*(*(a1 + 48) + 4) - 94) <= 0xA)
    {
      OUTLINED_FUNCTION_0_7();
      v4 = v6;
      if (!v8)
      {

        return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
      }

      if ((v7 & 0x401) != 0)
      {

        return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateDigestForKey", "Unknown chipid", v3, v4);
    return 99;
  }

  return v5;
}

uint64_t AMAuthInstallRequestSendSyncWithHeader(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v59 = 0;
  cf = 0;
  v58 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v8, a2, 2uLL);
  theDict = DeepCopy;
  if (!DeepCopy)
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    CFDictionarySetValue(DeepCopy, @"@Locality", v11);
  }

  v12 = (a1 + 120);
  v13 = *(a1 + 120);
  v14 = MEMORY[0x29EDB8ED8];
  v15 = v13;
  if (!v13)
  {
    if (!*(a1 + 104))
    {
      AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO function returned NULL and no SSO token was provided, SSO disabled.");
      goto LABEL_15;
    }

    AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "using SSO.");
    v15 = *v12;
    if (!*v12)
    {
      v16 = *(a1 + 104);
      v17 = CFGetAllocator(a1);
      v18 = v16(a1, v17, a1 + 120, &v58);
      if (v18)
      {
        v9 = v18;
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed to create sso data %@", v58);
        Data = 0;
        goto LABEL_13;
      }

      v15 = *v12;
      if (!*v12)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO failed to authenticate.");
        Data = 0;
        v20 = 0;
        v9 = 22;
        goto LABEL_29;
      }
    }
  }

  AMAuthInstallCryptoCreateDigestForData(*v14, v15, &cf);
  if (cf)
  {
    AMAuthInstallLog(7, "AMAuthInstallRequestSendSyncWithHeader", "AuthUserId Hash: %@", cf);
    CFRelease(cf);
  }

  CFDictionarySetValue(theDict, @"AuthUserId", *v12);
  if (!v13)
  {
    SafeRelease(*v12);
    *v12 = 0;
  }

LABEL_15:
  v21 = *(a1 + 16);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (*(v21 + 160))
  {
    context = a1;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    if (MutableCopy)
    {
      CFDictionaryApplyFunction(theDict, _ApplyTagPrefix, &context);
      SafeRelease(theDict);
      theDict = MutableCopy;
      v21 = *(a1 + 16);
      if (!v21)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "fullrequest copy allocation failure");
    Data = 0;
    v9 = 0;
LABEL_13:
    v20 = 0;
    goto LABEL_29;
  }

LABEL_19:
  v22 = *(v21 + 152);
  if (v22)
  {
    CFDictionaryApplyFunction(v22, _ApplyOverrideTags, theDict);
  }

LABEL_21:
  v23 = theDict;
  SimplePlatformInfoString = AMAuthInstallPlatformGetSimplePlatformInfoString();
  CFDictionarySetValue(v23, @"@HostPlatformInfo", SimplePlatformInfoString);
  v25 = theDict;
  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  CFDictionarySetValue(v25, @"@VersionInfo", LibraryVersionString);
  v27 = *(a1 + 16);
  if (!v27 || !*(v27 + 132))
  {
    CFDictionarySetValue(theDict, @"@BBTicket", *MEMORY[0x29EDB8F00]);
  }

  v28 = *(a1 + 96);
  if (v28)
  {
    CFDictionarySetValue(theDict, @"@UUID", v28);
  }

  v29 = AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(a1, &theDict);
  if (v29)
  {
    v9 = v29;
    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "AMAuthInstallVinylRemoveFirmwareLoaderVersionTag %d", v29);
LABEL_28:
    Data = 0;
    v20 = 0;
    goto LABEL_29;
  }

  v9 = 2;
  AMAuthInstallDebugWriteObject(a1, theDict, @"tss-request", 2);
  session = tss_create_session(&stru_2A1EE9D10, *(a1 + 72));
  v20 = session;
  if (!session)
  {
    Data = 0;
    goto LABEL_29;
  }

  CFRelease(session[3]);
  *(v20 + 24) = CFRetain(theDict);
  *(v20 + 16) = *(a1 + 80);
  *(v20 + 80) = *(a1 + 488);
  *(v20 + 88) = *(a1 + 512);
  if (*(v20 + 32))
  {
    Mutable = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8EE0], 0, a3);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*v14, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  }

  *(v20 + 32) = Mutable;
  v35 = *(a1 + 16);
  if (v35 && !*(v35 + 160))
  {
    _CFDictionarySetInteger64Str(Mutable, @"x-intnt-apchipid", *(v35 + 8));
    v36 = *(v20 + 32);
    v37 = *(*(a1 + 16) + 64);
    context = 0;
    if (v36 && v37 && CFNumberGetValue(v37, kCFNumberSInt64Type, &context))
    {
      _CFDictionarySetInteger64Str(v36, @"x-intnt-certcepo", context);
    }

    _CFDictionarySetInteger64Str(*(v20 + 32), @"x-intnt-apsecuritydomain", *(*(a1 + 16) + 16));
    v38 = *(v20 + 32);
    if (v38)
    {
      v39 = *(*(a1 + 16) + 88) ? @"yes" : @"no";
      CFDictionarySetValue(v38, @"x-intnt-apsecuritymode", v39);
      v38 = *(v20 + 32);
      if (v38)
      {
        if (*(*(a1 + 16) + 20))
        {
          v40 = @"yes";
        }

        else
        {
          v40 = @"no";
        }

        CFDictionarySetValue(v38, @"x-intnt-approductionmode", v40);
        v38 = *(v20 + 32);
      }
    }

    _CFDictionarySetInteger64Str(v38, @"x-intnt-apboardid", *(*(a1 + 16) + 12));
    _CFDictionarySetInteger64Str(*(v20 + 32), @"x-intnt-apecid", **(a1 + 16));
    if (*(a1 + 104))
    {
      v41 = *(v20 + 32);
      if (v41)
      {
        CFDictionarySetValue(v41, @"x-intnt-authuserid", @"yes");
      }
    }

    v42 = *(*(a1 + 16) + 72);
    if (v42)
    {
      CFDictionarySetValue(*(v20 + 32), @"x-intnt-usbserialstr", v42);
    }

    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
    if (ValueForKeyPathInDict)
    {
      CFDictionarySetValue(*(v20 + 32), @"x-intnt-buildvariant", ValueForKeyPathInDict);
    }
  }

  v44 = tss_submit(v20, v33, v34);
  v45 = v44;
  if (!v44)
  {
    v9 = 0;
    goto LABEL_77;
  }

  if (v44 <= 0x2710)
  {
    v46 = *(v20 + 72);
    if (v46)
    {
      v9 = v44 + 3100;
      LODWORD(context) = v44 + 3100;
      if (v44 < 0x384)
      {
        v47 = CFGetAllocator(a1);
        v48 = CFNumberCreate(v47, kCFNumberIntType, &context);
        if (v48)
        {
          CFDictionarySetValue(*(a1 + 352), v48, v46);
          AMAuthInstallLog(7, "kAMAuthInstallRequestCacheLocalizedTssError", "cached server error text: (%d) %@", context, v46);
        }

        else
        {
          AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "failed to cache server error text: (%d) %@", context, v46);
        }

        SafeRelease(v48);
        goto LABEL_76;
      }

      AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "tss error code out of bounds (%d)", v44 + 3100);
    }
  }

  SafeRelease(0);
  if (v45 > 9999)
  {
    if ((v45 - 10000) > 0xC)
    {
      v9 = 14;
    }

    else
    {
      v9 = dword_2985610B0[v45 - 10000];
    }
  }

  else
  {
    v9 = (v45 + 3100);
  }

LABEL_76:
  LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v9);
  AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss submission: %@", LocalizedStatusString);
LABEL_77:
  v50 = CFGetAllocator(a1);
  Data = CFPropertyListCreateData(v50, theDict, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v51 = CFGetAllocator(a1);
    v52 = AMAuthInstallSupportBase64Encode(v51, Data, &v59);
    if (v45)
    {
      if (!v52)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:<<<<<<<<<<\n%@", v59);
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:>>>>>>>>>>");
      }
    }

    else
    {
      if (!v52)
      {
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:<<<<<<<<<<\n%@", v59);
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:>>>>>>>>>>");
      }

      Value = CFDictionaryGetValue(*(v20 + 40), @"@ServerVersion");
      v54 = @"unavailable";
      if (Value)
      {
        v54 = Value;
      }

      AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "received tss response (server version: %@)", v54);
      AMAuthInstallDebugWriteObject(a1, *(v20 + 40), @"tss-response", 2);
      v9 = 0;
      if (a4)
      {
        *a4 = CFRetain(*(v20 + 40));
      }
    }
  }

LABEL_29:
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeRelease(Data);
  SafeRelease(v59);
  SafeRelease(0);
  if (v20)
  {
    tss_close_session(v20);
  }

  return v9;
}

uint64_t AMAuthInstallRequestAbbreviatedSendSync(uint64_t **cf, const void *a2, CFTypeRef *a3)
{
  if (cf)
  {
    v4 = 0;
    v5 = 1;
    if (a3 && a2 && cf[2])
    {
      v8 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v4 = Mutable;
      if (Mutable)
      {
        _CFDictionarySetInteger64(Mutable, @"ApECID", *cf[2]);
        _CFDictionarySetInteger32(v4, @"ApChipID", *(cf[2] + 2));
        _CFDictionarySetInteger32(v4, @"ApBoardID", *(cf[2] + 3));
        _CFDictionarySetBoolean(v4, @"ApProductionMode", *(cf[2] + 20));
        _CFDictionarySetInteger32(v4, @"ApSecurityDomain", *(cf[2] + 4));
        CFDictionarySetValue(v4, @"UniqueBuildID", a2);
        v5 = AMAuthInstallRequestSendSyncWithHeader(cf, v4, 0, a3);
      }

      else
      {
        v5 = 2;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  SafeRelease(v4);
  return v5;
}

uint64_t AMAuthInstallSsoEnable(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (_acmobileshim_lib)
  {
    result = 0;
    *(a1 + 104) = _AMAuthInstallSsoCreateServiceTicket;
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSsoEnable", "ACMobile dylib not loaded", v1, v2);
    return 99;
  }

  return result;
}

uint64_t AMAuthInstallSsoDisable(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t AMAuthInstallSsoSetStealthMode(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 112) = a2;
  return result;
}

uint64_t AMAuthInstallSsoSetCredentials(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 104))
    {
      if (_AMAuthInstallSsoCopyTicketWithCredentials)
      {
        v7 = 0;
        v5 = _AMAuthInstallSsoCopyTicketWithCredentials(a2, a3, a1 + 120, &v7);
        if (v5)
        {
          v3 = v5;
          AMAuthInstallLog(3, "AMAuthInstallSsoSetCredentials", "failed to create sso data");
        }

        else if (*(a1 + 120))
        {
          return 0;
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallSsoSetCredentials", "SSO invalid username and password.");
          return 22;
        }

        return v3;
      }

      AMAuthInstallLog(3, "AMAuthInstallSsoSetCredentials", "_AMAuthInstallSsoCopyTicketWithCredentials is NULL.");
    }

    else
    {
      AMAuthInstallLog(5, "AMAuthInstallSsoSetCredentials", "SSO disabled.");
    }

    return 20;
  }

  return v3;
}

uint64_t _AMAuthInstallSsoCopyCredentialsFromKeychain(void *a1, CFStringRef *a2)
{
  result = 0;
  if (!a1)
  {
    v6 = 0;
    v9 = 0;
LABEL_25:
    v20 = 1;
    goto LABEL_20;
  }

  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (!Mutable)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v7 = *MEMORY[0x29EDBBC30];
  v8 = *MEMORY[0x29EDBBC40];
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDBBC30], *MEMORY[0x29EDBBC40]);
  v9 = CFDataCreateWithBytesNoCopy(v4, "APPLECONNECT.APPLE.COM", 22, *MEMORY[0x29EDB8EE8]);
  if (!v9)
  {
LABEL_23:
    v20 = 2;
    goto LABEL_20;
  }

  CFDictionarySetValue(v6, *MEMORY[0x29EDBBBD0], v9);
  CFDictionarySetValue(v6, *MEMORY[0x29EDBBC10], @"com.apple.MobileSoftwareUpdate");
  CFDictionarySetValue(v6, *MEMORY[0x29EDBBC88], *MEMORY[0x29EDBBC98]);
  v10 = *MEMORY[0x29EDB8F00];
  CFDictionarySetValue(v6, *MEMORY[0x29EDBBCA8], *MEMORY[0x29EDB8F00]);
  v11 = SecItemCopyMatching(v6, &result);
  if (v11 == -25300)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Credentials not found");
    v20 = 8;
    goto LABEL_20;
  }

  if (v11)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "unexpected error: %d", v11);
    v20 = 14;
    goto LABEL_20;
  }

  if (!result)
  {
    SafeRelease(0);
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Username not found");
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(result, *MEMORY[0x29EDBBBA0]);
  *a1 = Value;
  CFRetain(Value);
  SafeRelease(0);
  if (a2 && ((v24 = 0, !result) ? (v21 = 0, v14 = 0, v20 = 1) : (MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, result), (v14 = MutableCopy) == 0) ? (v21 = 0, v20 = 2) : (v15 = *MEMORY[0x29EDBBCB0], CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDBBCB0], v10), CFDictionarySetValue(v14, v7, v8), v16 = SecItemCopyMatching(v14, &v24), v16 == -25300) ? (AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "password not found in keychain response"), v21 = 0, v20 = 8) : v16 ? (AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "unexpected error: %d", v16), v21 = 0, v20 = 14) : (CFDictionaryRemoveValue(v14, v15), BytePtr = CFDataGetBytePtr(v24), Length = CFDataGetLength(v24), v19 = CFStringCreateWithBytes(v4, BytePtr, Length, 0x8000100u, 0), (*a2 = v19) == 0) ? (v20 = 3, AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "Failed to convert password"), v21 = 0) : (v20 = 0, v21 = 1), SafeRelease(v24), SafeRelease(v14), (v21 & 1) == 0))
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Password not found");
  }

  else
  {
    AMAuthInstallLog(6, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Found Credentials for username=%@ ", *a1);
    v20 = 0;
  }

LABEL_20:
  SafeRelease(v6);
  SafeRelease(result);
  SafeRelease(v9);
  return v20;
}

uint64_t _AMAuthInstallSsoSaveCredentialsInKeychain(const void *a1)
{
  result = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = Mutable;
  if (!Mutable)
  {
    MutableCopy = 0;
    v7 = 0;
LABEL_11:
    v10 = 0;
    v14 = 2;
    goto LABEL_8;
  }

  v5 = *MEMORY[0x29EDBBC30];
  v6 = *MEMORY[0x29EDBBC40];
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDBBC30], *MEMORY[0x29EDBBC40]);
  v7 = CFDataCreateWithBytesNoCopy(v2, "APPLECONNECT.APPLE.COM", 22, *MEMORY[0x29EDB8EE8]);
  if (!v7)
  {
    MutableCopy = 0;
    goto LABEL_11;
  }

  v8 = *MEMORY[0x29EDBBBD0];
  CFDictionarySetValue(v4, *MEMORY[0x29EDBBBD0], v7);
  v9 = *MEMORY[0x29EDBBC10];
  CFDictionarySetValue(v4, *MEMORY[0x29EDBBC10], @"com.apple.MobileSoftwareUpdate");
  CFDictionarySetValue(v4, *MEMORY[0x29EDBBC88], *MEMORY[0x29EDBBC98]);
  CFDictionarySetValue(v4, *MEMORY[0x29EDBBCA8], *MEMORY[0x29EDB8F00]);
  v10 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(v10, *MEMORY[0x29EDBBBA0], a1);
  CFDictionarySetValue(v10, v9, @"com.apple.MobileSoftwareUpdate");
  if (!SecItemCopyMatching(v4, &result))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, result);
    CFDictionarySetValue(MutableCopy, v5, v6);
    v13 = SecItemUpdate(MutableCopy, v10);
    if (!v13)
    {
      goto LABEL_7;
    }

    AMAuthInstallLog(3, "_AMAuthInstallSsoSaveCredentialsInKeychain", "SecItemUpdate ret=%d", v13);
LABEL_14:
    v14 = 14;
    goto LABEL_8;
  }

  CFDictionarySetValue(v10, v5, v6);
  CFDictionarySetValue(v10, v8, v7);
  v11 = SecItemAdd(v10, 0);
  if (v11)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoSaveCredentialsInKeychain", "SecItemAdd ret=%d", v11);
    MutableCopy = 0;
    goto LABEL_14;
  }

  MutableCopy = 0;
LABEL_7:
  v14 = 0;
LABEL_8:
  SafeRelease(result);
  SafeRelease(MutableCopy);
  SafeRelease(0);
  SafeRelease(v4);
  SafeRelease(0);
  SafeRelease(v7);
  SafeRelease(v10);
  return v14;
}

uint64_t AMAuthInstallSsoInitialize_cold_1()
{
  AMAuthInstallLog(3, "_AMAuthInstallSsoSUSSOInit", "copyPersonalizationSSOToken symbol not found");
  result = dlclose(_susso_lib);
  _susso_lib = 0;
  return result;
}

uint64_t AMAuthInstallSsoInitialize_cold_2()
{
  AMAuthInstallLog(3, "_AMAuthInstallSsoACMobileInit", "ACMobileShimGetTicket symbol not found");
  result = dlclose(_acmobileshim_lib);
  _acmobileshim_lib = 0;
  return result;
}

uint64_t _CFDictionaryGetBoolean(const void *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", "dict is NULL");
    return a3;
  }

  if (!a2)
  {
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", "key is NULL");
    return a3;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", "dict is not CFDictionary");
    return a3;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return a3;
  }

  v8 = Value;
  v9 = CFBooleanGetTypeID();
  if (v9 != CFGetTypeID(v8))
  {
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", "dict value is not CFBoolean");
    return a3;
  }

  return CFBooleanGetValue(v8);
}

char *_CopyHexStringFromData(const __CFAllocator *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  result = calloc(1uLL, (2 * (Length & 0x7FFFFFFF)) | 1);
  if (result)
  {
    v7 = result;
    if (Length)
    {
      v8 = 0;
      do
      {
        v9 = *BytePtr++;
        result[v8] = _CopyHexStringFromData_kAsciiHexChars[v9 >> 4];
        result[(v8 + 1)] = _CopyHexStringFromData_kAsciiHexChars[v9 & 0xF];
        v8 += 2;
      }

      while (2 * Length != v8);
    }

    v10 = CFStringCreateWithCString(a1, result, 0x8000100u);
    free(v7);
    return v10;
  }

  return result;
}

uint64_t AMAuthInstallSupportGetUInt32(const __CFNumber *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 1;
  }

  valuePtr = 0;
  v10 = 0;
  Type = CFNumberGetType(a1);
  if (Type == kCFNumberSInt64Type)
  {
    if (CFNumberGetValue(a1, kCFNumberSInt64Type, &v10))
    {
      v5 = v10;
      goto LABEL_8;
    }

    v9 = "AMAuthInstallSupportGetUInt32";
    v7 = "%s: failed to convert 64-bit value";
LABEL_10:
    v6 = 3;
    AMAuthInstallLog(3, "AMAuthInstallSupportGetUInt32", v7, v9);
    return v6;
  }

  if (Type != kCFNumberSInt32Type)
  {
    v9 = Type;
    v7 = "Incoming CFNumberRef is of unexpected type %d";
    goto LABEL_10;
  }

  if (!CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr))
  {
    v9 = "AMAuthInstallSupportGetUInt32";
    v7 = "%s: failed to convert 32-bit value";
    goto LABEL_10;
  }

  v5 = valuePtr;
LABEL_8:
  v6 = 0;
  *a2 = v5;
  return v6;
}

uint64_t AMAuthInstallSupportRemoveFile(const __CFURL *a1)
{
  v3 = 0;
  result = AMAuthInstallPlatformFileURLExists(a1, &v3);
  if (!result)
  {
    if (!v3)
    {
      return 0;
    }

    result = AMAuthInstallPlatformRemoveFile(a1);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallSupportCopyURLWithAppendedComponent(const __CFAllocator *a1, const void *a2, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (a2 && a3 && a5)
  {
    return AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

uint64_t _AMAuthInstallSupportCreateDataFromCopiedOrMappedFileURL(const __CFAllocator *a1, uint64_t a2, CFTypeRef cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (a2 && cf)
  {
    v6 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 0);
    if (v6)
    {
      v4 = v6;
      AMAuthInstallLog(3, "_AMAuthInstallSupportCreateDataFromCopiedOrMappedFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.");
    }

    else
    {
      if (a4)
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromMappedFileURL();
      }

      else
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromFileURL();
      }

      v4 = DataFromMappedFileURL;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyDataFromHexString(uint64_t a1, CFStringRef theString, uint64_t *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = 1;
  if (theString)
  {
    if (a3)
    {
      v3 = 3;
      if (CFStringGetCString(theString, buffer, 512, 0x8000100u))
      {
        v5 = AMSupportCopyDataFromAsciiEncodedHex();
        *a3 = v5;
        if (v5)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return v3;
}

uint64_t AMAuthInstallSupportWriteDataToFileURL(const __CFAllocator *a1, uint64_t a2, const __CFURL *cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (!a2 || !cf)
  {
    return v4;
  }

  if (a4)
  {
    v6 = AMAuthInstallSupportRemoveFile(cf);
    if (v6)
    {
LABEL_8:
      v4 = v6;
      goto LABEL_9;
    }

LABEL_7:
    v6 = AMSupportPlatformWriteDataToFileURL();
    goto LABEL_8;
  }

  v5 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 1);
  if (!v5)
  {
    goto LABEL_7;
  }

  v4 = v5;
  AMAuthInstallLog(3, "AMAuthInstallSupportWriteDataToFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.");
LABEL_9:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyPreserveFileURL(const __CFAllocator *a1, CFTypeRef cf, CFTypeRef *a3, int a4)
{
  v4 = 1;
  v20 = 1;
  if (cf && a3)
  {
    v7 = CFRetain(cf);
    v8 = CFRetain(cf);
    v9 = 0;
    Mutable = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = AMAuthInstallPlatformFileURLExists(v7, &v20);
      if (v13)
      {
        v4 = v13;
        goto LABEL_25;
      }

      if (!v20)
      {
        goto LABEL_21;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v11 = CFStringCreateWithFormat(a1, 0, @"~%d", v12);
      if (!v11)
      {
        goto LABEL_38;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      Mutable = CFStringCreateMutable(a1, 0);
      if (!Mutable)
      {
        break;
      }

      v9 = CFURLCopyFileSystemPath(cf, kCFURLPOSIXPathStyle);
      if (!v9)
      {
        goto LABEL_38;
      }

      CFStringAppend(Mutable, v9);
      CFStringAppend(Mutable, v11);
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = CFRetain(v7);
      CFRelease(v7);
      v14 = CFURLCreateWithFileSystemPath(a1, Mutable, kCFURLPOSIXPathStyle, 0);
      if (!v14)
      {
        v4 = 2;
LABEL_28:
        CFRelease(v11);
        goto LABEL_29;
      }

      v7 = v14;
      if (v20)
      {
        v15 = v12 > 0x1E;
        v12 = (v12 + 1);
        if (!v15)
        {
          continue;
        }
      }

LABEL_21:
      if (a4)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v4 = 0;
      *a3 = CFRetain(v16);
      goto LABEL_25;
    }

    v9 = 0;
LABEL_38:
    v4 = 2;
LABEL_25:
    if (v7)
    {
      CFRelease(v7);
    }

    if (v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v4;
}

CFIndex AMAuthInstallSupportApplyDictionaryOverrides(int a1, CFDictionaryRef theDict, CFMutableDictionaryRef *a3, const __CFString *a4)
{
  Count = 1;
  if (theDict && a3 && *a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v8 = malloc(8 * Count);
    v9 = malloc(8 * Count);
    v10 = v9;
    if (v8 && v9)
    {
      CFDictionaryGetKeysAndValues(theDict, v8, v9);
      if (Count < 1)
      {
        Count = 0;
        goto LABEL_17;
      }

      v11 = "invalid overridesKey";
      v12 = v8;
      v13 = v10;
      while (1)
      {
        v14 = *v12;
        if (!*v12)
        {
LABEL_22:
          AMAuthInstallLog(3, "AMAuthInstallSupportApplyDictionaryOverrides", v11);
          Count = 99;
          goto LABEL_17;
        }

        v15 = *v13;
        if (!*v13)
        {
          v11 = "invalid overridesValue";
          goto LABEL_22;
        }

        if (!a4)
        {
          goto LABEL_13;
        }

        if (CFStringFind(*v12, a4, 0).location != -1)
        {
          break;
        }

LABEL_14:
        ++v13;
        ++v12;
        if (!--Count)
        {
          goto LABEL_17;
        }
      }

      v14 = *v12;
      v15 = *v13;
LABEL_13:
      CFDictionarySetValue(*a3, v14, v15);
      goto LABEL_14;
    }

    Count = 2;
    if (v8)
    {
LABEL_17:
      free(v8);
    }

    if (v10)
    {
      free(v10);
    }
  }

  return Count;
}

CFTypeRef AMAuthInstallSupportCopySetValueForKeyPathInDict(const __CFAllocator *a1, const __CFDictionary *a2, const __CFString *a3, const void *a4)
{
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", "dict is NULL", a4);
    return 0;
  }

  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", "keyPath is NULL", a4);
    return 0;
  }

  v5 = a4;
  if (!a4)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", "value is NULL");
    return v5;
  }

  location = CFStringFind(a3, @".", 0).location;
  if (location == -1)
  {
    Count = CFDictionaryGetCount(a2);
    MutableCopy = CFDictionaryCreateMutableCopy(a1, Count, a2);
    if (MutableCopy)
    {
      v23 = MutableCopy;
      CFDictionarySetValue(MutableCopy, a3, v5);
      v5 = CFRetain(v23);
      v24 = v23;
LABEL_20:
      CFRelease(v24);
      return v5;
    }

    return 0;
  }

  v9 = location;
  v10 = location + 1;
  v35.length = CFStringGetLength(a3) - (location + 1);
  v35.location = v10;
  v11 = CFStringCreateWithSubstring(a1, a3, v35);
  if (!v11)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", "failed to create key substring", v12);
    return 0;
  }

  v13 = v11;
  v36.location = 0;
  v36.length = v9;
  v14 = CFStringCreateWithSubstring(a1, a3, v36);
  if (!v14)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", "failed to create current substring");
    CFRelease(v13);
    return 0;
  }

  v15 = v14;
  Value = CFDictionaryGetValue(a2, v14);
  if (Value)
  {
    v17 = Value;
    v18 = CFGetTypeID(Value);
    if (v18 != CFDictionaryGetTypeID())
    {
      AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", "item %@ not a dictionary", v15);
      v5 = 0;
      Mutable = 0;
LABEL_10:
      v20 = 0;
      goto LABEL_16;
    }

    v33 = OUTLINED_FUNCTION_1_15();
    Mutable = CFDictionaryCreateMutableCopy(v33, v34, v17);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_1_15();
    Mutable = CFDictionaryCreateMutable(v25, v26, v27, v28);
    if (!Mutable)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  v20 = AMAuthInstallSupportCopySetValueForKeyPathInDict(a1, Mutable, v13, v5);
  v29 = OUTLINED_FUNCTION_1_15();
  v31 = CFDictionaryCreateMutableCopy(v29, v30, a2);
  v5 = v31;
  if (v31)
  {
    CFDictionarySetValue(v31, v15, v20);
  }

LABEL_16:
  CFRelease(v13);
  CFRelease(v15);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v20)
  {
    v24 = v20;
    goto LABEL_20;
  }

  return v5;
}

uint64_t AMAuthInstallSupportCopyFile(uint64_t a1, const void *a2, const __CFURL *a3)
{
  cf = 0;
  v3 = 1;
  if (a2 && a3)
  {
    DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(a3);
    if (DirectoryForURL)
    {
      v3 = DirectoryForURL;
      AMAuthInstallLog(3, "AMAuthInstallSupportCopyFile", "AMAuthInstallSupportMakeDirectory failed.");
    }

    else
    {
      v7 = *MEMORY[0x29EDB8ED8];
      DataFromCopiedOrMappedFileURL = _AMAuthInstallSupportCreateDataFromCopiedOrMappedFileURL(*MEMORY[0x29EDB8ED8], &cf, a2, 1);
      if (DataFromCopiedOrMappedFileURL)
      {
        v3 = DataFromCopiedOrMappedFileURL;
        AMAuthInstallLog(3, "AMAuthInstallSupportCopyFile", "AMAuthInstallSupportCreateDataFromFileURL failed.");
      }

      else
      {
        v3 = AMAuthInstallSupportWriteDataToFileURL(v7, cf, a3, 1);
        if (v3)
        {
          AMAuthInstallLog(3, "AMAuthInstallSupportCopyFile", "AMAuthInstallSupportWriteDataToFileURL failed.");
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v3;
}

uint64_t AMAuthInstallSupportCopyStringReplacingLastComponent(const __CFAllocator *a1, const __CFString *a2, const __CFString *a3, const void *a4, CFTypeRef *a5)
{
  v5 = 1;
  if (a2 && a4 && a5)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, a2, a3);
    if (!ArrayBySeparatingStrings)
    {
      return 3;
    }

    v11 = ArrayBySeparatingStrings;
    MutableCopy = CFArrayCreateMutableCopy(a1, 0, ArrayBySeparatingStrings);
    if (!MutableCopy)
    {
      v5 = 3;
      v16 = v11;
LABEL_9:
      CFRelease(v16);
      return v5;
    }

    v13 = MutableCopy;
    Count = CFArrayGetCount(MutableCopy);
    CFArraySetValueAtIndex(v13, Count - 1, a4);
    v15 = CFStringCreateByCombiningStrings(a1, v13, a3);
    v16 = v15;
    if (v15)
    {
      v5 = 0;
      *a5 = CFRetain(v15);
    }

    else
    {
      v5 = 3;
    }

    CFRelease(v11);
    CFRelease(v13);
    if (v16)
    {
      goto LABEL_9;
    }
  }

  return v5;
}

uint64_t AMAuthInstallSupportCreateMergedDictionary(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v4 = 1;
  if (!a2 || !a3 || !a4)
  {
    return v4;
  }

  Count = CFDictionaryGetCount(a3);
  v10 = malloc(8 * Count);
  if (!v10)
  {
    return 2;
  }

  v11 = v10;
  v12 = malloc(8 * Count);
  if (!v12)
  {
    free(v11);
    return 2;
  }

  v13 = v12;
  CFDictionaryGetKeysAndValues(a3, v11, v12);
  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, a2);
  if (!MutableCopy)
  {
    v4 = 2;
    goto LABEL_22;
  }

  v26 = a1;
  v27 = a4;
  v28 = v11;
  if (Count < 1)
  {
LABEL_20:
    v4 = 0;
    *v27 = CFRetain(MutableCopy);
    goto LABEL_21;
  }

  v15 = v11;
  v16 = v13;
  while (1)
  {
    v17 = *v15;
    v18 = *v16;
    v19 = CFDictionaryGetValue(a2, *v15);
    if (v18)
    {
      v20 = v19;
      v21 = CFGetTypeID(v18);
      if (v21 == CFDictionaryGetTypeID() && v20 != 0)
      {
        v23 = CFGetTypeID(v20);
        if (v23 == CFDictionaryGetTypeID())
        {
          break;
        }
      }
    }

    CFDictionarySetValue(MutableCopy, v17, v18);
LABEL_16:
    ++v16;
    ++v15;
    if (!--Count)
    {
      goto LABEL_20;
    }
  }

  value = 0;
  MergedDictionary = AMAuthInstallSupportCreateMergedDictionary(v26, v20, v18, &value);
  if (!MergedDictionary)
  {
    CFDictionarySetValue(MutableCopy, v17, value);
    CFRelease(value);
    goto LABEL_16;
  }

  v4 = MergedDictionary;
LABEL_21:
  v11 = v28;
LABEL_22:
  free(v11);
  free(v13);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCreatePrependedFilePath(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, void *a4)
{
  v4 = 1;
  if (!a1 || !a2 || !theString || !a4)
  {
    return v4;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
  if (ValueAtIndex)
  {
    v18 = ValueAtIndex;
    v11 = OUTLINED_FUNCTION_1_15();
    v14 = CFStringCreateWithFormat(v11, v12, v13, a2, v18);
    v15 = v14;
    if (v14)
    {
      if (Count > 1)
      {
        CFArraySetValueAtIndex(ArrayBySeparatingStrings, Count - 1, v14);
        v16 = CFStringCreateByCombiningStrings(a1, ArrayBySeparatingStrings, @"/");
      }

      else
      {
        v16 = CFRetain(v14);
      }

      v4 = 0;
      *a4 = v16;
      if (!ArrayBySeparatingStrings)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  v4 = 2;
  if (ArrayBySeparatingStrings)
  {
LABEL_11:
    CFRelease(ArrayBySeparatingStrings);
  }

LABEL_12:
  if (v15)
  {
    CFRelease(v15);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCreateStringRemovingPrepend(CFAllocatorRef alloc, const __CFString *a2, const __CFString *a3, void *a4)
{
  result = 1;
  if (a2 && a4)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, a2, a3);
    if (ArrayBySeparatingStrings)
    {
      v10 = ArrayBySeparatingStrings;
      if (CFArrayGetCount(ArrayBySeparatingStrings) > 1)
      {
        CFArrayRemoveValueAtIndex(v10, 0);
        v11 = CFStringCreateByCombiningStrings(alloc, v10, a3);
      }

      else
      {
        v11 = CFRetain(a2);
      }

      *a4 = v11;
      CFRelease(v10);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallSupportCopyTagAndFileURL(const __CFAllocator *a1, CFURLRef anURL, CFTypeRef *a3, CFTypeRef *a4)
{
  if (!anURL)
  {
    return 2;
  }

  v8 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (!v8)
  {
    return 2;
  }

  v9 = v8;
  if (CFStringFind(v8, @"=", 0).location != -1)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v9, @"=");
    if (!ArrayBySeparatingStrings)
    {
      v18 = 2;
      goto LABEL_15;
    }

    v11 = ArrayBySeparatingStrings;
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    if (ValueAtIndex && (v13 = ValueAtIndex, (v14 = CFArrayGetValueAtIndex(v11, 1)) != 0))
    {
      v15 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], v14, kCFURLPOSIXPathStyle, 0);
      if (v15)
      {
        v16 = v15;
        if (!a3)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v17 = 2;
    }

    else
    {
      v17 = 8;
    }

    CFRelease(v9);
    v16 = 0;
LABEL_13:
    CFRelease(v11);
    v18 = v17;
    goto LABEL_14;
  }

  v16 = CFRetain(anURL);
  v13 = 0;
  v11 = 0;
  if (a3)
  {
LABEL_9:
    *a3 = CFRetain(v13);
  }

LABEL_10:
  if (a4)
  {
    *a4 = CFRetain(v16);
  }

  CFRelease(v9);
  v17 = 0;
  v18 = 0;
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  v9 = v16;
  if (v16)
  {
LABEL_15:
    CFRelease(v9);
  }

  return v18;
}

__CFDictionary *AMAuthInstallUpdaterCreateResponse(CFURLRef *a1, CFDictionaryRef theDict, const __CFDictionary *a3, uint64_t a4)
{
  LocalResponse = 0;
  if (!a1)
  {
LABEL_27:
    AMSupportCreateErrorInternal();
    return LocalResponse;
  }

  if (!theDict)
  {
    Value = 0;
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(theDict, @"UpdaterName");
  v9 = CFDictionaryGetValue(theDict, @"LocalSign");
  if (v9)
  {
    v10 = CFBooleanGetValue(v9);
    if (!Value)
    {
LABEL_18:
      if (!a3 || !CFDictionaryGetCount(a3))
      {
        goto LABEL_27;
      }

      AMAuthInstallSetDebugFlags(a1, 2);
      v14 = CFDictionaryGetValue(theDict, @"PersonalizedBundle");
      if (v14)
      {
        _AMAuthInstallBundleCreateDebugDirectory(a1, v14);
      }

      if (AMAuthInstallRequestSendSyncWithHeader(a1, a3, Value[3], &LocalResponse))
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v10 = 0;
    if (!Value)
    {
      goto LABEL_18;
    }
  }

  v11 = AMAuthInstallUpdater(a1, Value, 0, a4);
  if (!v11)
  {
    return LocalResponse;
  }

  Value = v11;
  v12 = v11[2];
  if (v12 && !CFDictionaryGetCount(v12))
  {
    v10 = 1;
  }

  if (*(Value + 64))
  {
    v13 = @"true";
  }

  else
  {
    v13 = @"false";
  }

  AMAuthInstallLog(5, "AMAuthInstallUpdaterCreateResponse", "Updater local signing support: %@", v13);
  if (!(*(Value + 64) | v10))
  {
    goto LABEL_18;
  }

  LocalResponse = AMAuthInstallUpdaterCreateLocalResponse(a1, Value, a3, a4);
  if (!LocalResponse)
  {
    return LocalResponse;
  }

LABEL_25:
  v15 = Value[2];
  if (v15)
  {
    CFRelease(v15);
    Value[2] = 0;
  }

  return LocalResponse;
}

uint64_t AMAuthInstallUpdaterWriteManifest(uint64_t a1, uint64_t a2, const __CFURL *a3, const __CFDictionary *a4, uint64_t a5)
{
  if (!a1 || (v6 = *(a1 + 40)) == 0 || !a2 || !a3 || !a4)
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    return 1;
  }

  v11 = Count;
  v12 = 0;
  v20 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v12);
    Value = CFDictionaryGetValue(a4, ValueAtIndex);
    if (Value)
    {
      break;
    }

    AMSupportLogInternal(4, "AMAuthInstallUpdaterWriteManifest", "did not find %@ for %@ updater in the response", ValueAtIndex, a2);
LABEL_17:
    if (v11 == ++v12)
    {
      return 1;
    }
  }

  v15 = Value;
  result = _AMAuthInstallUpdaterCopyResponseURL(a3, a2, ValueAtIndex, *(a1 + 48), a5);
  if (!result)
  {
    return result;
  }

  v17 = result;
  v18 = CFGetTypeID(v15);
  if (v18 == CFDataGetTypeID())
  {
    CFGetAllocator(a1);
    if (AMSupportWriteDataToFileURL())
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  cf = 0;
  MEMORY[0x29C28AE50](v20, v17, @"plist", &cf);
  if (!cf)
  {
    goto LABEL_20;
  }

  AMSupportLogInternal(6, "AMAuthInstallUpdaterWriteManifest", "%@ updater has nested tickets.  Serializing to %@", a2, cf);
  CFGetAllocator(a1);
  v19 = AMSupportWriteDictionarytoFileURL();
  CFRelease(cf);
  if (!v19)
  {
LABEL_16:
    CFRelease(v17);
    goto LABEL_17;
  }

LABEL_19:
  AMSupportCreateErrorInternal();
LABEL_20:
  CFRelease(v17);
  return 0;
}

BOOL AMAuthInstallVinylCheckVinylFwLdrVerLegacy(const __CFData *a1)
{
  if (!a1)
  {
    return 1;
  }

  v3.location = 0;
  v3.length = 2;
  CFDataGetBytes(a1, v3, buffer);
  return (buffer[1] | ((buffer[0] & 0x7F) << 8)) < 0x301u;
}

uint64_t AMAuthInstallVinylIsLegacyChipId(CFTypeRef cf, BOOL *a2)
{
  if (cf && (v3 = *(cf + 6)) != 0 && *(v3 + 160))
  {
    v5 = CFGetAllocator(cf);
    v6 = CFNumberCreate(v5, kCFNumberSInt8Type, &kAMAuthInstallVinylLegacyChipIdCutoff);
    if (v6)
    {
      v7 = CFNumberCompare(*(*(cf + 6) + 160), v6, 0);
      v8 = 0;
      *a2 = v7 == kCFCompareLessThan;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  SafeRelease(v6);
  return v8;
}

uint64_t AMAuthInstallVinylCreateMeasurements(CFTypeRef cf, const void *a2, CFDictionaryRef *a3, const void **a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v28 = 0;
  if (!cf)
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_26;
  }

  v5 = 0;
  v6 = 1;
  if (a3 && a2 && *(cf + 6))
  {
    IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(cf, &v28);
    if (IsLegacyChipId)
    {
      v6 = IsLegacyChipId;
      v5 = 0;
      goto LABEL_26;
    }

    v11 = *a3;
    v12 = CFGetAllocator(cf);
    if (v11)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, *a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    }

    v5 = MutableCopy;
    if (!MutableCopy)
    {
      v6 = 2;
      goto LABEL_26;
    }

    if (v28)
    {
      Measurements = AMAuthInstallBasebandVinylCreateMeasurements(cf, a2, MutableCopy);
      if (!Measurements)
      {
        goto LABEL_22;
      }

      v6 = Measurements;
      goto LABEL_26;
    }

    theData = 0;
    v15 = __dst;
    memcpy(__dst, off_29EE9B7B0, sizeof(__dst));
    v16 = 1;
    while (1)
    {
      v17 = v16;
      if (!_AMAuthInstallVinylCreateIm4p(cf, a2, (v15 + 16), &theData) && theData)
      {
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        AMAuthInstallLogDumpMemory(7, "_AMAuthInstallVinylCreateMeasurementsInternal", "eUICC IM4P", BytePtr, Length);
        CFDataGetBytePtr(theData);
        CFDataGetLength(theData);
        if (AMSupportDigestSha256())
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylCreateMeasurementsInternal", "failed to compute digest");
LABEL_21:
          SafeRelease(theData);
LABEL_22:
          Value = v5;
          if (a4 && (Value = CFDictionaryGetValue(v5, *a4)) == 0)
          {
            v6 = 0;
          }

          else
          {
            v6 = 0;
            *a3 = CFRetain(Value);
          }

          break;
        }

        SafeRelease(theData);
        theData = 0;
        v20 = CFGetAllocator(cf);
        v21 = CFDataCreate(v20, bytes, 32);
        if (!v21)
        {
          goto LABEL_21;
        }

        v22 = v21;
        v23 = CFGetAllocator(cf);
        Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (!Mutable)
        {
          goto LABEL_21;
        }

        v25 = Mutable;
        CFDictionarySetValue(Mutable, *(v15 + 1), v22);
        CFDictionarySetValue(v5, *v15, v25);
        SafeRelease(v22);
        SafeRelease(v25);
      }

      v16 = 0;
      v15 = &__dst[80];
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_26:
  SafeRelease(0);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallVinylServerRequestAddRequiredTags(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 48);
  if (!v4 || !v4[15] || !v4[20] || !v4[16] || !v4[17] || !v4[18])
  {
    return 1;
  }

  result = 1;
  if (theDict && v4[19])
  {
    Value = CFDictionaryGetValue(theDict, @"eUICC,Gold");
    v9 = CFDictionaryGetValue(theDict, @"eUICC,Main");
    if (Value | v9)
    {
      v10 = v9;
      CFDictionarySetValue(theDict, @"eUICC,EID", *(*(a1 + 48) + 120));
      CFDictionarySetValue(theDict, @"eUICC,ChipID", *(*(a1 + 48) + 160));
      if (Value)
      {
        CFDictionarySetValue(Value, @"Nonce", *(*(a1 + 48) + 136));
      }

      if (v10)
      {
        CFDictionarySetValue(v10, @"Nonce", *(*(a1 + 48) + 128));
      }

      CFDictionarySetValue(theDict, @"@eUICC,Ticket", *MEMORY[0x29EDB8F00]);
      CFDictionarySetValue(theDict, @"eUICC,RootKeyIdentifier", *(*(a1 + 48) + 152));
      if (a3)
      {
        v11 = CFDictionaryGetValue(a3, @"UniqueBuildID");
        if (v11)
        {
          CFDictionarySetValue(theDict, @"UniqueBuildID", v11);
        }
      }

      v12 = *(a1 + 16);
      if (v12)
      {
        _CFDictionarySetBoolean(theDict, @"eUICC,ApProductionMode", *(v12 + 20));
      }

      return 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallVinylServerRequestAddRequiredTags", "Neither main nor gold vinyl fw found!");
      return 8;
    }
  }

  return result;
}

uint64_t AMAuthInstallVinylPersonalizeFirmware(void *cf, const void *a2, const void *a3, CFDictionaryRef *a4, const __CFDictionary *a5)
{
  v89 = *MEMORY[0x29EDCA608];
  v71 = 0;
  v70 = 0;
  if (!cf || (v6 = cf[6]) == 0)
  {
    v13 = 1;
    goto LABEL_67;
  }

  if (!*(v6 + 160))
  {
    AMAuthInstallLog(3, "AMAuthInstallVinylPersonalizeFirmware", "No eUICC ChipID specified. Not personalizing VinylFirmware at this time.", a4, a5);
    v13 = 0;
    goto LABEL_67;
  }

  IsLegacyChipId = AMAuthInstallVinylCreateMeasurements(cf, a2, &v71, 0);
  if (IsLegacyChipId || (IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(cf, &v70), IsLegacyChipId))
  {
    v13 = IsLegacyChipId;
    goto LABEL_67;
  }

  v12 = v71;
  if (v70)
  {
    v13 = 1;
    if (!a4 || !v71)
    {
      goto LABEL_21;
    }

    if (!*a4)
    {
      v13 = 14;
      goto LABEL_21;
    }

    if (!a3)
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeLegacyFirmwareInternal", "No dstURL provided. Running in restore environment?");
      v13 = 0;
      goto LABEL_21;
    }

    v14 = BbfwWriterCreate(a3);
    if (v14)
    {
      v15 = v14;
      v16 = BbfwReaderOpen(a2);
      if (v16)
      {
        v17 = v16;
        Value = CFDictionaryGetValue(*a4, @"EuiccMainTicket");
        if (Value)
        {
          v19 = Value;
          TypeID = CFDataGetTypeID();
          if (TypeID != CFGetTypeID(v19))
          {
            goto LABEL_79;
          }

          if (BbfwWriterAddFile(v15, @"vinyl/update/main/ticket.der", v19))
          {
            goto LABEL_80;
          }
        }

        v21 = CFDictionaryGetValue(*a4, @"EuiccGoldTicket");
        if (!v21)
        {
LABEL_19:
          v13 = 0;
LABEL_20:
          BbfwWriterFinalize(v15);
          BbfwReaderClose(v17);
LABEL_21:
          SafeRelease(0);
          SafeRelease(0);
          v24 = 0;
          goto LABEL_66;
        }

        v22 = v21;
        v23 = CFDataGetTypeID();
        if (v23 == CFGetTypeID(v22))
        {
          if (!BbfwWriterAddFile(v15, @"vinyl/update/gold/ticket.der", v22))
          {
            goto LABEL_19;
          }

LABEL_80:
          v13 = 4;
          goto LABEL_20;
        }

LABEL_79:
        v13 = 17;
        goto LABEL_20;
      }

      BbfwWriterFinalize(v15);
    }

    else
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeLegacyFirmwareInternal", "failed to create output file");
    }

    v13 = 4;
    goto LABEL_21;
  }

  cfa = a3;
  StitchTicket = 0;
  v72[0] = 0;
  v73[0] = @"euig";
  v73[1] = @"update/gold/profile.bin";
  v73[2] = @"update/gold/info.plist";
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v77 = @"vinyl/update/gold/ticket.der";
  v79 = 0;
  v80 = 0;
  v78 = @"EuiccGoldTicket";
  v81[0] = @"euim";
  v81[1] = @"update/main/profile.bin";
  v81[2] = @"update/main/info.plist";
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  v85 = @"vinyl/update/main/ticket.der";
  v87 = 0;
  v88 = 0;
  v13 = 1;
  v86 = @"EuiccMainTicket";
  if (!a4 || !a2)
  {
    v26 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  if (!v71)
  {
LABEL_92:
    SafeRelease(StitchTicket);
    Mutable = v26;
    goto LABEL_65;
  }

  if (*a4 && CFDictionaryGetValue(*a4, @"eUICC,Ticket"))
  {
    v27 = *a4;
  }

  else
  {
    AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Vinyl server signing is enabled...");
    v62 = AMAuthInstallVinylServerRequestAddRequiredTags(cf, v12, a5);
    if (v62)
    {
      v13 = v62;
      if (v62 == 8)
      {
        AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Nothing to sign, skipping..");
        v13 = 0;
      }

      goto LABEL_78;
    }

    v63 = AMAuthInstallRequestSendSync(cf, v12, v72);
    if (v63)
    {
      v13 = v63;
      goto LABEL_78;
    }

    v27 = v72[0];
    if (!v72[0])
    {
      v13 = 14;
LABEL_78:
      SafeRelease(0);
      Mutable = 0;
      goto LABEL_65;
    }
  }

  v28 = CFDictionaryGetValue(v27, @"eUICC,Ticket");
  v29 = v28;
  if (!v28)
  {
    v13 = 17;
    goto LABEL_78;
  }

  v30 = CFGetTypeID(v28);
  if (v30 != CFDataGetTypeID())
  {
    StitchTicket = 0;
    v26 = 0;
    v13 = 17;
    goto LABEL_92;
  }

  v64 = a4;
  BytePtr = CFDataGetBytePtr(v29);
  v65 = v29;
  Length = CFDataGetLength(v29);
  AMAuthInstallLogDumpMemory(8, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "EUICC,Ticket:", BytePtr, Length);
  v69 = 0;
  Mutable = 0;
  v34 = 0;
  StitchTicket = 0;
  v35 = v73;
  v36 = 1;
  do
  {
    v37 = v36;
    v38 = cf[6];
    v35[4] = *(v38 + 152);
    v35[5] = *(v38 + 168);
    OUTLINED_FUNCTION_1_16();
    v40 = BbfwReaderStart(a2, v39, v35);
    if (v40 || (OUTLINED_FUNCTION_0_9(), v40 = BbfwReaderStart(a2, v41, v35), v40))
    {
      v13 = v40;
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "failed to read zip file", v64);
      goto LABEL_63;
    }

    v35[4] = 0;
    v35[5] = 0;
    if (!v35[3])
    {
      goto LABEL_34;
    }

    Im4p = _AMAuthInstallVinylCreateIm4p(cf, a2, v35, v35 + 10);
    if (Im4p)
    {
      v13 = Im4p;
      goto LABEL_63;
    }

    SafeRelease(StitchTicket);
    v43 = CFGetAllocator(cf);
    StitchTicket = AMAuthInstallApImg4CreateStitchTicket(v43, v35[10], v65);
    if (!StitchTicket)
    {
      v13 = 3;
      goto LABEL_63;
    }

    v67 = v34;
    v68 = Mutable;
    v44 = v35[3];
    memset(&v72[1] + 4, 0, 12);
    v45 = CFGetAllocator(cf);
    v46 = CFDataGetLength(StitchTicket);
    v47 = CFDataGetLength(v44);
    MutableCopy = CFDataCreateMutableCopy(v45, v47 + v46, StitchTicket);
    if (!MutableCopy)
    {
      v53 = 0;
      goto LABEL_54;
    }

    v49 = CFDataGetBytePtr(v44);
    v50 = CFDataGetLength(v44);
    CFDataAppendBytes(MutableCopy, v49, v50);
    if (!DEREncoderCreate())
    {
      goto LABEL_52;
    }

    CFDataGetBytePtr(MutableCopy);
    CFDataGetLength(MutableCopy);
    DEREncoderAddData();
    if (DEREncoderCreateEncodedBuffer())
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylStitchImg4Vad", "failed to encode img4/vad sequence");
      goto LABEL_42;
    }

    v51 = CFGetAllocator(cf);
    v52 = CFDataCreate(v51, v72[2], HIDWORD(v72[1]));
    v35[11] = v52;
    if (!v52)
    {
LABEL_52:
      v53 = 0;
LABEL_54:
      v13 = 2;
      goto LABEL_43;
    }

LABEL_42:
    v13 = 0;
    v53 = 1;
LABEL_43:
    DEREncoderDestroy();
    SafeFree(v72[2]);
    SafeRelease(MutableCopy);
    if (!v53)
    {
      v34 = v67;
      Mutable = v68;
      goto LABEL_63;
    }

    v34 = v67;
    Mutable = v68;
    v54 = v69;
    if (v69)
    {
      v55 = cfa;
    }

    else
    {
      v55 = cfa;
      if (cfa)
      {
        v34 = BbfwWriterCreate(cfa);
        if (!v34)
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "failed to create output file");
          v13 = 4;
          v26 = v68;
          goto LABEL_92;
        }
      }

      v56 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v56, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v54 = 0;
    }

    v69 = v54 + 1;
    CFDictionaryAddValue(Mutable, v35[9], v35[11]);
    if (v55 && BbfwWriterAddFile(v34, v35[8], v35[11]))
    {
      v13 = 4;
      goto LABEL_63;
    }

LABEL_34:
    v36 = 0;
    v35 = v81;
  }

  while ((v37 & 1) != 0);
  if (!v69)
  {
    v57 = CFDataGetBytePtr(*(cf[6] + 152));
    v58 = CFDataGetLength(*(cf[6] + 152));
    AMAuthInstallLogDumpMemory(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Error finding profile matching certId", v57, v58);
  }

  if (Mutable)
  {
    SafeRelease(*v64);
    v59 = CFGetAllocator(cf);
    Copy = CFDictionaryCreateCopy(v59, Mutable);
    *v64 = Copy;
    if (Copy)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_63:
  SafeRelease(StitchTicket);
  if (v34)
  {
    BbfwWriterFinalize(v34);
  }

LABEL_65:
  SafeRelease(v74);
  SafeRelease(v79);
  SafeRelease(v80);
  SafeRelease(v82);
  SafeRelease(v87);
  SafeRelease(v88);
  SafeRelease(v72[0]);
  v24 = Mutable;
LABEL_66:
  SafeRelease(v24);
LABEL_67:
  SafeRelease(v71);
  return v13;
}

uint64_t AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(const void *a1, CFDictionaryRef *a2)
{
  v2 = 0;
  v3 = 1;
  if (a1 && a2)
  {
    if (*a2)
    {
      v5 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, *a2);
      v2 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"EUICCFirmwareLoaderVersion");
        SafeRelease(*a2);
        v3 = 0;
        *a2 = CFRetain(v2);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  SafeRelease(v2);
  return v3;
}

uint64_t _AMAuthInstallVinylCreateIm4p(const void *a1, const void *a2, uint64_t a3, CFDataRef *a4)
{
  values[2] = *MEMORY[0x29EDCA608];
  memset(&buffer[5], 0, 12);
  bytesDeallocator = AMAuthInstallSupportCopyAllocator();
  Payload = 1;
  if (!a1 || !a2 || !a3)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5_6();
  if (a4)
  {
    v11 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      OUTLINED_FUNCTION_3_9();
      v31 = 0;
      OUTLINED_FUNCTION_12_2();
      goto LABEL_44;
    }

    v13 = CFGetAllocator(a1);
    v14 = CFArrayCreateMutable(v13, 0, MEMORY[0x29EDB9000]);
    v15 = v14;
    v31 = Mutable;
    if (!v14)
    {
      v30 = 0;
      OUTLINED_FUNCTION_12_2();
      goto LABEL_44;
    }

    values[0] = Mutable;
    values[1] = v14;
    v16 = CFGetAllocator(a1);
    Payload = 2;
    v17 = CFArrayCreate(v16, values, 2, MEMORY[0x29EDB9000]);
    *(a3 + 48) = v17;
    v30 = v15;
    if (v17)
    {
      OUTLINED_FUNCTION_1_16();
      v19 = BbfwReaderStart(a2, v18, a3);
      if (!v19)
      {
        if (!*(a3 + 56))
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "Failed to build vinyl info.plist dictionary");
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_0_9();
        v19 = BbfwReaderStart(a2, v20, a3);
        if (!v19)
        {
          Count = CFArrayGetCount(Mutable);
          if (Count <= 0)
          {
            v29 = *a3;
            v28 = "No sources found for %@";
          }

          else
          {
            v4 = Count;
            if (Count == CFArrayGetCount(v15))
            {
              v6 = malloc(8 * v4);
              v5 = malloc(8 * v4);
              v37.location = 0;
              v37.length = v4;
              CFArrayGetValues(Mutable, v37, v6);
              v38.location = 0;
              v38.length = v4;
              CFArrayGetValues(v15, v38, v5);
              DEREncoderCreate();
              DEREncoderCreate();
              v22 = 0;
              while (1)
              {
                DEREncoderCreate();
                CFDataGetBytePtr(v6[v22]);
                Length = CFDataGetLength(v6[v22]);
                if (OUTLINED_FUNCTION_4_8(Length))
                {
                  break;
                }

                CFDataGetBytePtr(v5[v22]);
                v24 = CFDataGetLength(v5[v22]);
                if (OUTLINED_FUNCTION_4_8(v24))
                {
                  v27 = "failed to add VAD";
                  goto LABEL_30;
                }

                if (DEREncoderAddSequenceFromEncoder())
                {
                  v27 = "failed to add certId-VAD sequence";
                  goto LABEL_30;
                }

                DEREncoderDestroy();
                if (v4 == ++v22)
                {
                  if (DEREncoderAddSequenceFromEncoder())
                  {
                    Payload = 3;
                    AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to add top-level sequence");
                    goto LABEL_26;
                  }

                  DEREncoderDestroy();
                  if (DEREncoderCreateEncodedBuffer())
                  {
                    Payload = 3;
                    AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to encode DER buffer");
                    OUTLINED_FUNCTION_3_9();
                    goto LABEL_26;
                  }

                  v25 = CFGetAllocator(a1);
                  v4 = CFDataCreateWithBytesNoCopy(v25, *&buffer[9], *&buffer[5], bytesDeallocator);
                  if (v4)
                  {
                    if (CFStringGetCString(*a3, buffer, 5, 0x8000100u) && CFStringGetCString(@"1.0", v34, 5, 0x8000100u))
                    {
                      Payload = AMAuthInstallApImg4CreatePayload(buffer, v34, v4, 0, 0, a4);
                      if (Payload)
                      {
                        AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to create im4p");
                      }

                      OUTLINED_FUNCTION_3_9();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_3_9();
                      Payload = 3;
                    }

                    goto LABEL_26;
                  }

                  OUTLINED_FUNCTION_3_9();
LABEL_44:
                  Payload = 2;
                  goto LABEL_26;
                }
              }

              v27 = "failed to add certId";
LABEL_30:
              Payload = 3;
              AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", v27);
              goto LABEL_26;
            }

            v28 = "Count of certID != hashVad";
          }

          AMAuthInstallLog(4, "_AMAuthInstallVinylCreateIm4p", v28, v29);
LABEL_40:
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_12_2();
          Payload = 0;
          goto LABEL_26;
        }
      }

      Payload = v19;
      AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to read zip file");
    }

    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_12_2();
  }

LABEL_26:
  SafeFree(v6);
  SafeFree(v5);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeRelease(v31);
  SafeRelease(v30);
  SafeRelease(*(a3 + 48));
  SafeRelease(*(a3 + 56));
  SafeRelease(v4);
  SafeRelease(bytesDeallocator);
  return Payload;
}

uint64_t __AMAuthInstallVinylFwReaderCallback(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  v3 = 0;
  PathComponent = 0;
  v39 = *MEMORY[0x29EDCA608];
  cf1 = 0;
  theData = 0;
  if (!a1 || !theString)
  {
    MutableCopy = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  MutableCopy = 0;
  v8 = 0;
  v9 = 0;
  if (!a3)
  {
    goto LABEL_10;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  v8 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings || (ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0), AMAuthInstallSupportCopyDataFromHexString(0, ValueAtIndex, &cf1)))
  {
    PathComponent = 0;
LABEL_44:
    MutableCopy = 0;
    goto LABEL_45;
  }

  v13 = *(a1 + 8);
  if (!v13 || !CFStringHasSuffix(theString, v13))
  {
    PathComponent = 0;
    OUTLINED_FUNCTION_12_2();
LABEL_9:
    v3 = 1;
    goto LABEL_10;
  }

  PathComponent = _AMAuthInstallVinylGetPathComponent(theString);
  if (!PathComponent)
  {
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(*(a1 + 56), PathComponent);
  if (!Value)
  {
    goto LABEL_44;
  }

  v16 = CFDictionaryGetValue(Value, @"com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderVersionsSupported");
  MutableCopy = v16;
  if (!v16)
  {
    goto LABEL_45;
  }

  if (CFArrayGetCount(v16) >= 1 && (v17 = CFArrayGetValueAtIndex(MutableCopy, 0)) != 0)
  {
    v9 = CFStringCreateArrayBySeparatingStrings(0, v17, @".");
    if (CFArrayGetCount(v9) == 2)
    {
      v18 = CFArrayGetValueAtIndex(v9, 0);
      IntValue = CFStringGetIntValue(v18);
      v20 = CFArrayGetValueAtIndex(v9, 1);
      v21 = ((CFStringGetIntValue(v20) | (IntValue << 8)) & 0x7FFFu) > 0x300;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v9 = 0;
  }

  SafeRelease(v9);
  v22 = *(a1 + 32);
  if (!v22)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_35;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    goto LABEL_28;
  }

  if (v21 || CFArrayGetCount(MutableCopy) < 1 || (v23 = CFArrayGetValueAtIndex(MutableCopy, 0)) == 0 || (MutableCopy = CFStringCreateArrayBySeparatingStrings(0, v23, @"."), CFArrayGetCount(MutableCopy) != 2) || (v24 = CFDataGetBytePtr(v9)) == 0 || (v25 = v24, v26 = *v24, v27 = CFArrayGetValueAtIndex(MutableCopy, 0), CFStringGetIntValue(v27) != v26) || (v9 = v25[1], v28 = CFArrayGetValueAtIndex(MutableCopy, 1), CFStringGetIntValue(v28) != v9))
  {
    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, *(a1 + 32));
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(*(a1 + 40));
      Length = CFDataGetLength(*(a1 + 40));
      CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
      CFDataGetBytePtr(MutableCopy);
      CFDataGetLength(MutableCopy);
      if (!AMSupportDigestSha256())
      {
        SafeRelease(0);
        v9 = CFDataCreate(0, bytes, 32);
        v29 = CFEqual(cf1, v9);
        goto LABEL_33;
      }

      AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", "failed to compute digest");
    }

LABEL_45:
    v9 = 0;
    goto LABEL_46;
  }

  v22 = *(a1 + 32);
LABEL_28:
  CFEqual(cf1, v22);
  OUTLINED_FUNCTION_12_2();
LABEL_33:
  if (v29 && BbfwReaderFindAndCopyFileData(a3, theString, (a1 + 24)))
  {
    goto LABEL_49;
  }

LABEL_35:
  v32 = *(a1 + 48);
  if (!v32)
  {
    goto LABEL_9;
  }

  v33 = CFArrayGetValueAtIndex(v32, 0);
  v34 = CFArrayGetValueAtIndex(*(a1 + 48), 1);
  v3 = 0;
  if (v33)
  {
    v35 = v34;
    if (v34)
    {
      if (!cf1)
      {
        goto LABEL_46;
      }

      CFArrayAppendValue(v33, cf1);
      if (!BbfwReaderFindAndCopyFileData(a3, theString, &theData))
      {
        CFDataGetBytePtr(theData);
        CFDataGetLength(theData);
        if (AMSupportDigestSha256())
        {
          AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", "failed to compute digest");
        }

        else
        {
          SafeRelease(v9);
          v9 = CFDataCreate(0, bytes, 32);
          if (v9)
          {
            CFArrayAppendValue(v35, v9);
            goto LABEL_9;
          }
        }

LABEL_46:
        v3 = 0;
        goto LABEL_10;
      }

LABEL_49:
      AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", "failed to find and/or copy data");
      goto LABEL_46;
    }
  }

LABEL_10:
  SafeRelease(theData);
  SafeRelease(cf1);
  SafeRelease(v9);
  SafeRelease(v8);
  SafeRelease(MutableCopy);
  SafeRelease(PathComponent);
  return v3;
}

CFStringRef _AMAuthInstallVinylGetPathComponent(CFStringRef filePath)
{
  if (!filePath)
  {
    Copy = 0;
    v2 = 0;
LABEL_8:
    v4 = 0;
    goto LABEL_5;
  }

  v1 = *MEMORY[0x29EDB8ED8];
  v2 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v2)
  {
    Copy = 0;
    goto LABEL_8;
  }

  PathComponent = CFURLCreateCopyDeletingLastPathComponent(v1, v2);
  v4 = PathComponent;
  if (PathComponent)
  {
    v5 = CFURLGetString(PathComponent);
    Copy = CFStringCreateCopy(v1, v5);
  }

  else
  {
    Copy = 0;
  }

LABEL_5:
  SafeRelease(v2);
  SafeRelease(v4);
  return Copy;
}

uint64_t AMAuthInstallBasebandMAV22StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v7 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v8 = OUTLINED_FUNCTION_1_7(v7, @"aop.mbn");
      v9 = OUTLINED_FUNCTION_1_7(v8, @"apdp.mbn");
      v10 = OUTLINED_FUNCTION_1_7(v9, @"apps.mbn");
      v11 = OUTLINED_FUNCTION_1_7(v10, @"bbcfg.mbn");
      v12 = OUTLINED_FUNCTION_1_7(v11, @"devcfg.mbn");
      v13 = OUTLINED_FUNCTION_1_7(v12, @"hyp.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"qdsp6sw.mbn");
      OUTLINED_FUNCTION_1_7(v14, @"sec.elf");
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v15 = OUTLINED_FUNCTION_2(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v16 = OUTLINED_FUNCTION_1_7(v15, @"multi_image_qti.mbn");
      OUTLINED_FUNCTION_1_7(v16, @"tz.mbn");
      v17 = OUTLINED_FUNCTION_2(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      v18 = OUTLINED_FUNCTION_1_7(v17, @"xbl_cfg.elf");
      v19 = OUTLINED_FUNCTION_1_7(v18, @"uefi.elf");
      OUTLINED_FUNCTION_1_7(v19, @"xbl_support.elf");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV22StitchFirmware", "failed to open bbfw archive for reading");
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

void *BbfwReaderOpen(CFTypeRef cf)
{
  v14 = *MEMORY[0x29EDCA608];
  url = 0;
  if (AMAuthInstallSupportCopyPreserveFileURL(*MEMORY[0x29EDB8ED8], cf, &url, 0))
  {
    AMAuthInstallLog(3, "BbfwReaderOpen", "%s: failed to get new URL");
    goto LABEL_5;
  }

  if (!OUTLINED_FUNCTION_1_17(0, v1, v2, v3, v4, v5, v6, v7, v10, v11, url))
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = amai_unzOpen(v13);
  if (!v8)
  {
    AMAuthInstallLog(3, "BbfwReaderOpen", "failed to open bbfw archive for reading");
    AMAuthInstallLog(7, "BbfwReaderOpen", "Bbfw url: %@", url);
    goto LABEL_5;
  }

LABEL_6:
  SafeRelease(url);
  return v8;
}

uint64_t BbfwReaderClose(uint64_t a1)
{
  if (a1)
  {
    amai_unzClose(a1);
  }

  return 0;
}

uint64_t BbfwReaderFindFile(uint64_t a1, CFStringRef theString)
{
  v5 = *MEMORY[0x29EDCA608];
  if (CFStringGetCString(theString, buffer, 1024, 0x8000100u))
  {
    return 4 * (amai_unzLocateFile(a1, buffer, 0) != 0);
  }

  else
  {
    return 99;
  }
}

uint64_t BbfwReaderFindAndCopyFileData(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  File = BbfwReaderFindFile(a1, a2);
  if (File)
  {
    v7 = File;
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(0, File);
    AMAuthInstallLog(7, "BbfwReaderFindAndCopyFileData", "failed to find bbfw item %@: %@", a2, LocalizedStatusString);
    v9 = 0;
  }

  else
  {
    v11 = BbfwReaderCopyFileData(a1, &cf);
    if (v11)
    {
      v7 = v11;
      v12 = AMAuthInstallGetLocalizedStatusString(0, v11);
      AMAuthInstallLog(3, "BbfwReaderFindAndCopyFileData", "failed to extract bbfw item %@: %@", a2, v12);
      v9 = cf;
    }

    else
    {
      v9 = cf;
      if (cf)
      {
        v7 = 0;
        *a3 = CFRetain(cf);
      }

      else
      {
        AMAuthInstallLog(3, "BbfwReaderFindAndCopyFileData", "failed to extract bbfw item %@: fileData is NULL", a2);
        v7 = 0;
      }
    }
  }

  SafeRelease(v9);
  return v7;
}

uint64_t BbfwReaderCopyFileData(uint64_t a1, CFTypeRef *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  bzero(v11, 0x88uLL);
  v4 = AMAuthInstallSupportCopyAllocator();
  if (OUTLINED_FUNCTION_0_10(a1, v11, v13))
  {
    v5 = 0;
    goto LABEL_10;
  }

  v5 = malloc(__size);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (amai_unzOpenCurrentFile(a1))
  {
    goto LABEL_10;
  }

  CurrentFile = amai_unzReadCurrentFile(a1, v5, __size);
  if (__size != CurrentFile)
  {
    v8 = 0;
    v9 = 4;
    goto LABEL_8;
  }

  if (amai_unzCloseCurrentFile(a1))
  {
LABEL_10:
    v8 = 0;
    v9 = 15;
    goto LABEL_8;
  }

  v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], v5, __size, v4);
  v8 = v7;
  if (!v7)
  {
LABEL_12:
    v9 = 2;
    goto LABEL_8;
  }

  v5 = 0;
  v9 = 0;
  *a2 = CFRetain(v7);
LABEL_8:
  SafeRelease(v8);
  SafeRelease(v4);
  SafeFree(v5);
  return v9;
}

uint64_t BbfwReaderStart(const void *a1, uint64_t (*a2)(uint64_t, CFStringRef, void *), uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = BbfwReaderOpen(a1);
  if (!v5)
  {
    AMAuthInstallLog(3, "BbfwReaderStart", "failed to open bbfw archive for reading");
    return 4;
  }

  v6 = v5;
  bzero(v13, 0x88uLL);
  v7 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    if (OUTLINED_FUNCTION_0_10(v6, v13, cStr))
    {
      v11 = 15;
      goto LABEL_9;
    }

    if (cStr[0])
    {
      break;
    }

LABEL_7:
    if (amai_unzGoToNextFile(v6))
    {
LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }
  }

  v8 = CFStringCreateWithCString(v7, cStr, 0x8000100u);
  if (v8)
  {
    v9 = v8;
    v10 = a2(a3, v8, v6);
    CFRelease(v9);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = 3;
LABEL_9:
  amai_unzClose(v6);
  return v11;
}

uint64_t BbfwCreateDictionaryFromURL(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v6 = BbfwReaderStart(a2, _CreateDictCallback, Mutable);
    if (!v6)
    {
      *a3 = CFRetain(Mutable);
    }
  }

  else
  {
    v6 = 2;
  }

  SafeRelease(Mutable);
  return v6;
}

BOOL _CreateDictCallback(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  v5 = BbfwReaderCopyFileData(a3, &value);
  v6 = value;
  if (!v5)
  {
    CFDictionarySetValue(a1, a2, value);
  }

  SafeRelease(v6);
  return v5 == 0;
}

void *BbfwWriterCreate(CFTypeRef cf)
{
  v14 = *MEMORY[0x29EDCA608];
  url = 0;
  if (AMAuthInstallSupportCopyPreserveFileURL(*MEMORY[0x29EDB8ED8], cf, &url, 1))
  {
    AMAuthInstallLog(3, "BbfwWriterCreate", "%s: failed to get new URL");
    goto LABEL_5;
  }

  if (!OUTLINED_FUNCTION_1_17(0, v1, v2, v3, v4, v5, v6, v7, v10, v11, url))
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = amai_zipOpen(v13, 0);
  if (!v8)
  {
    AMAuthInstallLog(3, "BbfwWriterCreate", "failed to open bbfw archive for writing");
    AMAuthInstallLog(7, "BbfwWriterCreate", "Bbfw url: %@", url);
    goto LABEL_5;
  }

LABEL_6:
  SafeRelease(url);
  return v8;
}

uint64_t AMAuthInstallSsoSetAppleConnectInfo(void *a1, const __CFString *cf, const void *a3)
{
  Mutable = 0;
  v4 = 1;
  if (a1)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      TypeID = CFStringGetTypeID();
      Mutable = 0;
      if (a3)
      {
        if (v8 == TypeID)
        {
          v10 = CFGetTypeID(a3);
          if (v10 == CFDataGetTypeID())
          {
            v11 = CFGetAllocator(a1);
            Mutable = CFDataCreateMutable(v11, 0);
            if (Mutable)
            {
              Length = CFStringGetLength(cf);
              CFDataSetLength(Mutable, Length + 1);
              MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
              v14 = CFDataGetLength(Mutable);
              if (CFStringGetCString(cf, MutableBytePtr, v14, 0x8000100u))
              {
                BytePtr = CFDataGetBytePtr(a3);
                v16 = CFDataGetLength(a3);
                CFDataAppendBytes(Mutable, BytePtr, v16);
                v4 = AMAuthInstallSsoSetToken(a1, Mutable);
              }

              else
              {
                v4 = 3;
              }
            }

            else
            {
              v4 = 2;
            }
          }

          else
          {
            Mutable = 0;
          }
        }
      }
    }
  }

  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallSsoSetToken(void *a1, CFTypeRef cf)
{
  result = 1;
  if (a1 && cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID())
    {
      v6 = a1[15];
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = CFGetAllocator(a1);
      Copy = CFDataCreateCopy(v7, cf);
      result = 0;
      a1[15] = Copy;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const void *ACFURestoreHost::copyDataFromFileDictionary(ACFULogging *key, CFDictionaryRef theDict, int a3)
{
  if (!key)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: key value not provided\n");
    return 0;
  }

  if (!theDict)
  {
    v8 = ACFULogging::getLogInstance(key);
    ACFULogging::handleMessage(v8, 2, "%s::%s: firmware file dictionary not provided\n");
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, key);
  v5 = Value;
  if (a3)
  {
    if (Value)
    {
      AMSupportSafeRetain();
    }
  }

  else
  {
    AMSupportCreateDataFromFileURL();
    return 0;
  }

  return v5;
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_13();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, void *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!a2[10] || (OUTLINED_FUNCTION_1_19(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = a2[12];
          v5 = a2 + 12;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_19();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_13();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, _OWORD *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 10);
          v5 = a2 + 5;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_19();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      a2[1] = v7;
      v8 = v11[3];
      a2[2] = v11[2];
      a2[3] = v8;
      v9 = v11[5];
      a2[4] = v11[4];
      a2[5] = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_13();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

void Img4DecodeGetPayloadVersionPropertyString(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0uLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (DERDecodeItem(a1, &v14) || DERImg4DecodeProperty(v15, v14, v13) || (DERImg4DecodeContentFindItemWithTag(&v13[1] + 1, a2, &v12), v7) || DERImg4DecodeProperty(&v12, a2, &v9))
    {
      v8 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = v11;
      *a3 = *(&v10 + 1);
    }

    *a4 = v8;
  }
}

uint64_t eUICCFwReaderClose(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "eUICCFwReader", "eUICCFwReaderClose", "eUICCFwReaderClose");
  if (a1)
  {
    amai_unzClose(a1);
  }

  return 0;
}

uint64_t eUICCFwReaderCopyFileData(uint64_t a1, CFTypeRef *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_0_10(a1, &v10, v12))
  {
    return 15;
  }

  v4 = malloc(__size);
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  if (amai_unzOpenCurrentFile(a1))
  {
    return 15;
  }

  CurrentFile = amai_unzReadCurrentFile(a1, v5, __size);
  if (__size != CurrentFile)
  {
    return 4;
  }

  if (amai_unzCloseCurrentFile(a1))
  {
    return 15;
  }

  v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], v5, __size, *MEMORY[0x29EDB8EE0]);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  *a2 = CFRetain(v7);
  CFRelease(v8);
  return 0;
}

uint64_t eUICCFwReaderStart(ACFULogging *a1, uint64_t (*a2)(uint64_t, CFStringRef, ACFULogging *), uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "eUICCFwReader", "eUICCFwReaderStart", "eUICCFwReaderStart");
  v7 = eUICCFwReaderOpen(a1);
  if (!v7)
  {
    v16 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v16, 2, "%s::%s: failed to open bbfw archive for reading\n", "eUICCFwReader", "eUICCFwReaderStart");
    v12 = 4;
    goto LABEL_9;
  }

  v8 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    if (OUTLINED_FUNCTION_0_10(v7, v17, cStr))
    {
      v12 = 15;
      goto LABEL_9;
    }

    if (cStr[0])
    {
      break;
    }

LABEL_7:
    if (amai_unzGoToNextFile(v7))
    {
LABEL_8:
      v12 = 0;
      goto LABEL_9;
    }
  }

  v9 = CFStringCreateWithCString(v8, cStr, 0x8000100u);
  if (v9)
  {
    v10 = v9;
    v11 = a2(a3, v9, v7);
    CFRelease(v10);
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 3;
LABEL_9:
  v13 = eUICCFwReaderClose(v7);
  v14 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v14, 4, "%s::%s: leaving: %s\n", "eUICCFwReader", "eUICCFwReaderStart", "eUICCFwReaderStart");
  return v12;
}

uint64_t VinylFirmware::setAuthPayload(VinylFirmware *this, const __CFData *a2)
{
  v3 = *(this + 23);
  if (!v3)
  {
    v6 = 99;
    v7 = "%s::%s: failed to open libauthinstall dylib\n";
    goto LABEL_11;
  }

  v5 = dlsym(v3, "AMAuthInstallApImg4CreateStitchTicket");
  v3 = dlerror();
  v6 = 99;
  v7 = "%s::%s: failed to initialize LAI lib create function\n";
  if (v3 || !v5)
  {
    goto LABEL_11;
  }

  v8 = (v5)(0, *(this + 17), a2);
  if (!v8)
  {
    return 3;
  }

  v3 = VinylFirmware::stitchImg4Vad(v8, v8, *(this + 19), this + 20);
  v6 = v3;
  if (v3 || !*(this + 20))
  {
    v7 = "%s::%s: failed stiching img4 and vad\n";
LABEL_11:
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2, v7, "VinylFirmware", "setAuthPayload");
    return v6;
  }

  return 0;
}

uint64_t VinylFirmware::stitchImg4Vad(VinylFirmware *this, CFDataRef theData, const __CFData *a3, const __CFData **a4)
{
  v4 = 1;
  if (theData && a3)
  {
    MutableCopy = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    Length = CFDataGetLength(theData);
    v10 = CFDataGetLength(a3);
    MutableCopy = CFDataCreateMutableCopy(0, v10 + Length, theData);
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(a3);
      v12 = CFDataGetLength(a3);
      CFDataAppendBytes(MutableCopy, BytePtr, v12);
      if (DEREncoderCreate())
      {
        CFDataGetBytePtr(MutableCopy);
        CFDataGetLength(MutableCopy);
        EncodedBuffer = DEREncoderAddData();
        if (EncodedBuffer || (EncodedBuffer = DEREncoderCreateEncodedBuffer(), EncodedBuffer))
        {
          LogInstance = ACFULogging::getLogInstance(EncodedBuffer);
          ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to encode img4/vad sequence\n", "VinylFirmware", "stitchImg4Vad");
          goto LABEL_9;
        }

        v14 = CFDataCreate(0, 0, 0);
        *a4 = v14;
        if (v14)
        {
LABEL_9:
          v4 = 0;
          goto LABEL_10;
        }
      }
    }

    v4 = 2;
  }

  else
  {
    MutableCopy = 0;
  }

LABEL_10:
  DEREncoderDestroy();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v4;
}

uint64_t VinylFirmware::fwReaderInfoPlistCallback(VinylFirmware *this, void *a2, CFStringRef theString, ACFULogging *a4)
{
  v4 = 0;
  data = 0;
  if (!a2 || !theString || !a4)
  {
    return v4;
  }

  v8 = a2[2];
  if (!v8)
  {
    return 1;
  }

  HasSuffix = CFStringHasSuffix(theString, v8);
  if (!HasSuffix)
  {
    return 1;
  }

  error = 0;
  PathComponent = VinylFirmware::getPathComponent(HasSuffix, theString);
  if (PathComponent)
  {
    v11 = eUICCFwReaderFindAndCopyFileData(a4, theString, &data);
    if (!v11)
    {
      v12 = *MEMORY[0x29EDB8ED8];
      v13 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], data, 0, 0, &error);
      if (v13 && ((Mutable = a2[7]) != 0 || (Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), (a2[7] = Mutable) != 0)))
      {
        CFDictionaryAddValue(Mutable, PathComponent, v13);
        v4 = 1;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_12;
    }

    LogInstance = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find and/or copy data\n", "VinylFirmware", "fwReaderInfoPlistCallback");
  }

  v4 = 0;
  v13 = 0;
LABEL_12:
  if (data)
  {
    CFRelease(data);
    data = 0;
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v4;
}

uint64_t VinylFirmware::fwReaderCallback(VinylFirmware *this, void *a2, CFStringRef theString, ACFULogging *a4)
{
  v4 = 0;
  MutableCopy = 0;
  v44 = *MEMORY[0x29EDCA608];
  cf1 = 0;
  theData = 0;
  if (!a2 || !theString)
  {
    PathComponent = 0;
    ArrayBySeparatingStrings = 0;
    goto LABEL_60;
  }

  PathComponent = 0;
  ArrayBySeparatingStrings = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_39;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  if (!ArrayBySeparatingStrings)
  {
LABEL_54:
    MutableCopy = 0;
    PathComponent = 0;
    goto LABEL_57;
  }

  v13 = *(this + 23);
  if (!v13)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open libauthinstall dylib\n");
    goto LABEL_54;
  }

  v14 = dlsym(v13, "AMAuthInstallSupportCopyDataFromHexString");
  v15 = dlerror();
  if (v15 || !v14)
  {
    v37 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v37, 2, "%s::%s: failed to initialize LAI lib create function\n");
    goto LABEL_54;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
  v17 = v14(0, ValueAtIndex, &cf1);
  v4 = 0;
  MutableCopy = 0;
  if (!cf1 || v17)
  {
    PathComponent = 0;
LABEL_60:
    v10 = 0;
    goto LABEL_39;
  }

  v18 = *(a2 + 1);
  if (!v18 || (HasSuffix = CFStringHasSuffix(theString, v18), !HasSuffix))
  {
    MutableCopy = 0;
    PathComponent = 0;
    v10 = 0;
LABEL_38:
    v4 = 1;
    goto LABEL_39;
  }

  PathComponent = VinylFirmware::getPathComponent(HasSuffix, theString);
  if (!PathComponent || (Value = CFDictionaryGetValue(*(a2 + 7), PathComponent)) == 0)
  {
    MutableCopy = 0;
    goto LABEL_57;
  }

  v21 = CFDictionaryGetValue(Value, @"com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderVersionsSupported");
  MutableCopy = v21;
  if (!v21)
  {
    goto LABEL_57;
  }

  v22 = VinylFirmware::checkVinylFwLdrVerLegacy(v21, v21);
  v23 = *(a2 + 4);
  if (!v23)
  {
    MutableCopy = 0;
    v10 = 0;
    goto LABEL_28;
  }

  v24 = *(a2 + 5);
  if (!v24 || v22 && (v25 = VinylFirmware::fwLdrVerEqual(v22, MutableCopy, v24), v23 = *(a2 + 4), v25))
  {
    MutableCopy = 0;
    v10 = 0;
    if (!CFEqual(cf1, v23))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v23);
  if (!MutableCopy)
  {
LABEL_57:
    v10 = 0;
    goto LABEL_58;
  }

  BytePtr = CFDataGetBytePtr(*(a2 + 5));
  Length = CFDataGetLength(*(a2 + 5));
  CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
  CFDataGetBytePtr(MutableCopy);
  CFDataGetLength(MutableCopy);
  v28 = AMSupportDigestSha256();
  if (v28)
  {
    v40 = ACFULogging::getLogInstance(v28);
    ACFULogging::handleMessage(v40, 2, "%s::%s: failed to compute digest\n", "VinylFirmware", "fwReaderCallback");
    goto LABEL_57;
  }

  v10 = CFDataCreate(0, bytes, 32);
  if (!v10)
  {
    goto LABEL_58;
  }

  if (CFEqual(cf1, v10))
  {
LABEL_27:
    v29 = eUICCFwReaderFindAndCopyFileData(a4, theString, a2 + 3);
    if (v29)
    {
LABEL_61:
      v38 = ACFULogging::getLogInstance(v29);
      ACFULogging::handleMessage(v38, 2, "%s::%s: failed to find and/or copy data\n", "VinylFirmware", "fwReaderCallback");
      goto LABEL_58;
    }
  }

LABEL_28:
  v30 = *(a2 + 6);
  if (!v30)
  {
    goto LABEL_38;
  }

  v31 = CFArrayGetValueAtIndex(v30, 0);
  v32 = CFArrayGetValueAtIndex(*(a2 + 6), 1);
  v4 = 0;
  if (v31)
  {
    v33 = v32;
    if (v32)
    {
      if (cf1)
      {
        CFArrayAppendValue(v31, cf1);
        v29 = eUICCFwReaderFindAndCopyFileData(a4, theString, &theData);
        if (!v29)
        {
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          v34 = AMSupportDigestSha256();
          if (v34)
          {
            v39 = ACFULogging::getLogInstance(v34);
            ACFULogging::handleMessage(v39, 2, "%s::%s: failed to compute digest\n", "VinylFirmware", "fwReaderCallback");
            goto LABEL_38;
          }

          if (v10)
          {
            CFRelease(v10);
          }

          v10 = CFDataCreate(0, bytes, 32);
          if (v10)
          {
            CFArrayAppendValue(v33, v10);
            goto LABEL_38;
          }

          goto LABEL_58;
        }

        goto LABEL_61;
      }

LABEL_58:
      v4 = 0;
    }
  }

LABEL_39:
  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  if (cf1)
  {
    CFRelease(cf1);
    cf1 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  return v4;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x2A1C594D8](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
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

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}