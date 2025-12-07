void sub_214000974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id blastdoor_AVTAvatarRecordSerializerGetClass()
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTAvatarRecordSerializerClass_softClass;
  v7 = getAVTAvatarRecordSerializerClass_softClass;
  if (!getAVTAvatarRecordSerializerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVTAvatarRecordSerializerClass_block_invoke;
    v3[3] = &unk_2781764E8;
    v3[4] = &v4;
    __getAVTAvatarRecordSerializerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_214000A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTAvatarRecordClass_block_invoke(uint64_t a1)
{
  AvatarPersistenceLibrary();
  result = objc_getClass("AVTAvatarRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVTAvatarRecordClass_block_invoke_cold_1();
  }

  getAVTAvatarRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AvatarPersistenceLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!AvatarPersistenceLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __AvatarPersistenceLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278177080;
    v3 = 0;
    AvatarPersistenceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AvatarPersistenceLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarPersistenceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AvatarPersistenceLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAVTAvatarPuppetRecordClass_block_invoke(uint64_t a1)
{
  AvatarPersistenceLibrary();
  result = objc_getClass("AVTAvatarPuppetRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVTAvatarPuppetRecordClass_block_invoke_cold_1();
  }

  getAVTAvatarPuppetRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVTAvatarRecordSerializerClass_block_invoke(uint64_t a1)
{
  AvatarPersistenceLibrary();
  result = objc_getClass("AVTAvatarRecordSerializer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVTAvatarRecordSerializerClass_block_invoke_cold_1();
  }

  getAVTAvatarRecordSerializerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _BlastDoorASCodableSecureCloudShareItemReadFrom(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR____BlastDoorASCodableSecureCloudShareItem__invitationToken;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR____BlastDoorASCodableSecureCloudShareItem__shareURL;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = &OBJC_IVAR____BlastDoorASCodableSecureCloudShareItem__zoneName;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _BlastDoorASCodableSampleReadFrom(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v26[0] = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26[0];
        v23 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadData();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_34;
        }

        *(a1 + 32) |= 2u;
        v26[0] = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26[0];
        v23 = 16;
      }

      *(a1 + v23) = v22;
LABEL_34:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _BlastDoorASCodableShareLocationsReadFrom(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = &OBJC_IVAR____BlastDoorASCodableShareLocations__relationshipShareURL;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR____BlastDoorASCodableShareLocations__activityShareURL;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _BlastDoorASCodableActivitySnapshotReadFrom(uint64_t a1, void *a2)
{
  v80[2] = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v80[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v80[0] & 0x7F) << v5;
        if ((v80[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 39)
      {
        if (v13 <= 59)
        {
          if (v13 > 49)
          {
            if (v13 == 50)
            {
              *(a1 + 144) |= 0x2000u;
              v80[0] = 0;
              v45 = [a2 position] + 8;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 112;
              goto LABEL_155;
            }

            if (v13 == 51)
            {
              *(a1 + 144) |= 0x800u;
              v80[0] = 0;
              v27 = [a2 position] + 8;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
              {
                v70 = [a2 data];
                [v70 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 96;
              goto LABEL_155;
            }
          }

          else
          {
            if (v13 == 40)
            {
              *(a1 + 144) |= 1u;
              v80[0] = 0;
              v43 = [a2 position] + 8;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 8;
              goto LABEL_155;
            }

            if (v13 == 41)
            {
              *(a1 + 144) |= 2u;
              v80[0] = 0;
              v23 = [a2 position] + 8;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 16;
              goto LABEL_155;
            }
          }
        }

        else if (v13 <= 69)
        {
          if (v13 == 60)
          {
            *(a1 + 144) |= 0x200u;
            v80[0] = 0;
            v62 = [a2 position] + 8;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 8, v63 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v66 = v80[0];
            v67 = 80;
            goto LABEL_155;
          }

          if (v13 == 61)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 144) |= 0x4000u;
            while (1)
            {
              LOBYTE(v80[0]) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v80[0] & 0x7F) << v37;
              if ((v80[0] & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_131;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v39;
            }

LABEL_131:
            v64 = 120;
            goto LABEL_132;
          }
        }

        else
        {
          switch(v13)
          {
            case 'F':
              *(a1 + 144) |= 0x100u;
              v80[0] = 0;
              v60 = [a2 position] + 8;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 8, v61 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 72;
              goto LABEL_155;
            case 'G':
              *(a1 + 144) |= 0x80u;
              v80[0] = 0;
              v47 = [a2 position] + 8;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
              {
                v71 = [a2 data];
                [v71 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 64;
LABEL_155:
              *(a1 + v67) = v66;
              goto LABEL_156;
            case 'H':
              v14 = 0;
              v15 = 0;
              v16 = 0;
              *(a1 + 144) |= 4u;
              while (1)
              {
                LOBYTE(v80[0]) = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v80[0] & 0x7F) << v14;
                if ((v80[0] & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_123;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v16;
              }

LABEL_123:
              v64 = 24;
LABEL_132:
              *(a1 + v64) = v20;
              goto LABEL_156;
          }
        }

        goto LABEL_114;
      }

      if (v13 > 19)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 144) |= 0x400u;
          while (1)
          {
            LOBYTE(v80[0]) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v80[0] & 0x7F) << v52;
            if ((v80[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_119;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v54;
          }

LABEL_119:
          v64 = 88;
          goto LABEL_132;
        }

        if (v13 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 144) |= 0x1000u;
          while (1)
          {
            LOBYTE(v80[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v80[0] & 0x7F) << v29;
            if ((v80[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_127;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v31;
          }

LABEL_127:
          v64 = 104;
          goto LABEL_132;
        }

        goto LABEL_114;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v21 = PBReaderReadData();
          v22 = *(a1 + 136);
          *(a1 + 136) = v21;

          goto LABEL_156;
        }

        goto LABEL_114;
      }

      v49 = objc_alloc_init(_BlastDoorASCodableSample);
      objc_storeStrong((a1 + 128), v49);
      v80[0] = 0;
      v80[1] = 0;
      if (!PBReaderPlaceMark() || !_BlastDoorASCodableSampleReadFrom(v49, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_156:
      v78 = [a2 position];
      if (v78 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 29)
    {
      if (v13 == 30)
      {
        *(a1 + 144) |= 8u;
        v80[0] = 0;
        v58 = [a2 position] + 8;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 8, v59 <= objc_msgSend(a2, "length")))
        {
          v73 = [a2 data];
          [v73 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v80[0];
        v67 = 32;
        goto LABEL_155;
      }

      if (v13 == 31)
      {
        *(a1 + 144) |= 0x10u;
        v80[0] = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v77 = [a2 data];
          [v77 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v80[0];
        v67 = 40;
        goto LABEL_155;
      }
    }

    else
    {
      if (v13 == 20)
      {
        *(a1 + 144) |= 0x20u;
        v80[0] = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v72 = [a2 data];
          [v72 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v80[0];
        v67 = 48;
        goto LABEL_155;
      }

      if (v13 == 21)
      {
        *(a1 + 144) |= 0x40u;
        v80[0] = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v76 = [a2 data];
          [v76 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v80[0];
        v67 = 56;
        goto LABEL_155;
      }
    }

LABEL_114:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_156;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _BlastDoorASCodableActivityDataPreviewReadFrom(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_BlastDoorASCodableAchievement);
          [a1 addAchievements:v14];
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !_BlastDoorASCodableAchievementReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          *(a1 + 40) |= 1u;
          v20 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v20;
          goto LABEL_38;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_BlastDoorASCodableActivitySnapshot);
          objc_storeStrong((a1 + 24), v14);
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !_BlastDoorASCodableActivitySnapshotReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_BlastDoorASCodableWorkout);
          [a1 addWorkouts:v14];
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !_BlastDoorASCodableWorkoutReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _BlastDoorASCodableAchievementReadFrom(uint64_t a1, void *a2)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v42[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42[0] & 0x7F) << v5;
        if ((v42[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 3)
        {
          *(a1 + 64) |= 1u;
          v42[0] = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v42 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v42[0];
          v38 = 8;
          goto LABEL_71;
        }

        if (v13 == 4)
        {
          *(a1 + 64) |= 2u;
          v42[0] = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v42 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v42[0];
          v38 = 16;
LABEL_71:
          *(a1 + v38) = v37;
          goto LABEL_72;
        }

LABEL_42:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_72;
      }

      v25 = objc_alloc_init(_BlastDoorASCodableSample);
      objc_storeStrong((a1 + 48), v25);
      v42[0] = 0;
      v42[1] = 0;
      if (!PBReaderPlaceMark() || !_BlastDoorASCodableSampleReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_72:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 7)
    {
      if (v13 == 8)
      {
        v23 = PBReaderReadString();
        v24 = 40;
        goto LABEL_54;
      }

      if (v13 == 9)
      {
        v23 = PBReaderReadString();
        v24 = 56;
LABEL_54:
        v32 = *(a1 + v24);
        *(a1 + v24) = v23;

        goto LABEL_72;
      }
    }

    else
    {
      if (v13 == 5)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 64) |= 4u;
        while (1)
        {
          LOBYTE(v42[0]) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v42[0] & 0x7F) << v26;
          if ((v42[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v28;
        }

LABEL_61:
        v35 = 24;
        goto LABEL_66;
      }

      if (v13 == 7)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 64) |= 8u;
        while (1)
        {
          LOBYTE(v42[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v42[0] & 0x7F) << v14;
          if ((v42[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_65:
        v35 = 32;
LABEL_66:
        *(a1 + v35) = v20;
        goto LABEL_72;
      }
    }

    goto LABEL_42;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _BlastDoorASCodableWorkoutReadFrom(uint64_t a1, void *a2)
{
  v70[2] = *MEMORY[0x277D85DE8];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v70[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v70[0] & 0x7F) << v5;
        if ((v70[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = objc_alloc_init(_BlastDoorASCodableSample);
          objc_storeStrong((a1 + 96), v13);
          v70[0] = 0;
          v70[1] = 0;
          if (PBReaderPlaceMark() && _BlastDoorASCodableSampleReadFrom(v13, a2))
          {
            PBReaderRecallMark();

            goto LABEL_118;
          }

          return 0;
        case 2u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 124) |= 0x80u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v70[0] & 0x7F) << v34;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v36;
          }

LABEL_98:
          v59 = 64;
          goto LABEL_103;
        case 5u:
          *(a1 + 124) |= 2u;
          v70[0] = 0;
          v30 = [a2 position] + 8;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 16;
          goto LABEL_117;
        case 6u:
          *(a1 + 124) |= 0x40u;
          v70[0] = 0;
          v48 = [a2 position] + 8;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 56;
          goto LABEL_117;
        case 7u:
          *(a1 + 124) |= 0x10u;
          v70[0] = 0;
          v50 = [a2 position] + 8;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 40;
          goto LABEL_117;
        case 8u:
          *(a1 + 124) |= 0x20u;
          v70[0] = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 48;
          goto LABEL_117;
        case 9u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 124) |= 8u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v70[0] & 0x7F) << v40;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v42;
          }

LABEL_102:
          v59 = 32;
          goto LABEL_103;
        case 0xAu:
          *(a1 + 124) |= 4u;
          v70[0] = 0;
          v46 = [a2 position] + 8;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 24;
LABEL_117:
          *(a1 + v63) = v62;
          goto LABEL_118;
        case 0xBu:
          v28 = PBReaderReadString();
          v29 = 72;
          goto LABEL_86;
        case 0xCu:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 124) |= 0x200u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v70[0] & 0x7F) << v52;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_105;
            }
          }

          v27 = (v54 != 0) & ~[a2 hasError];
LABEL_105:
          v60 = 121;
          goto LABEL_106;
        case 0xDu:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 124) |= 0x100u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v70[0] & 0x7F) << v21;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_94;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_94:
          v60 = 120;
LABEL_106:
          *(a1 + v60) = v27;
          goto LABEL_118;
        case 0xEu:
          v28 = PBReaderReadString();
          v29 = 80;
          goto LABEL_86;
        case 0xFu:
          v28 = PBReaderReadString();
          v29 = 88;
          goto LABEL_86;
        case 0x10u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 124) |= 1u;
          break;
        case 0x11u:
          v28 = PBReaderReadString();
          v29 = 104;
          goto LABEL_86;
        case 0x12u:
          v28 = PBReaderReadString();
          v29 = 112;
LABEL_86:
          v58 = *(a1 + v29);
          *(a1 + v29) = v28;

          goto LABEL_118;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_118;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v70[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v70[0] & 0x7F) << v14;
        if ((v70[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_92;
        }
      }

      v20 = [a2 hasError] ? 0 : v16;
LABEL_92:
      v59 = 8;
LABEL_103:
      *(a1 + v59) = v20;
LABEL_118:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_21400AA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_214028D8C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214028D38();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402DAA0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402DB90();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400ABA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402DA4C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400ABFC@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + *(type metadata accessor for CSDMConversationMessageProto(0) + 20));
  v7 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  sub_213FB2E54(v6 + v7, v5, &qword_27C903CD8, &qword_2146E9808);
  v8 = type metadata accessor for CSDMConversationLinkProto(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_214028E34(v5, a1, type metadata accessor for CSDMConversationLinkProto);
  }

  *a1 = MEMORY[0x277D84F90];
  sub_2146D8DE8();
  v10 = &a1[v8[6]];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&a1[v8[7]] = xmmword_2146E68C0;
  *&a1[v8[8]] = xmmword_2146E68C0;
  v11 = &a1[v8[9]];
  *v11 = 0;
  v11[8] = 1;
  v12 = &a1[v8[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = v8[11];
  v14 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = &a1[v8[12]];
  *v15 = 0;
  v15[8] = 1;
  a1[v8[13]] = 2;
  v16 = &a1[v8[14]];
  *v16 = 0;
  *(v16 + 1) = 0;
  a1[v8[15]] = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_213FB2DF4(v5, &qword_27C903CD8, &qword_2146E9808);
  }

  return result;
}

uint64_t sub_21400AE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_214028DE0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AEB4@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_214028EFC(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21400AF00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214028EFC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21400AF44(uint64_t a1, uint64_t a2)
{
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_21400AFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402EE20();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_21400B064(uint64_t a1, uint64_t a2)
{
  v4 = sub_21402EE74();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21400B0C0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA196B0);
  __swift_project_value_buffer(v0, qword_27CA196B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "None";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Audio";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Video";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400B2F0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA196C8);
  __swift_project_value_buffer(v0, qword_27CA196C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Default";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AVLessSharePlay";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ContinuitySession";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400B524()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA196E0);
  __swift_project_value_buffer(v0, qword_27CA196E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E68E0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "protoProtocolVersion";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "protoWantsVideo";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "inviteData";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "protoSenderMuteUplink";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "protoShouldSuppressInCallUI";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "protoMomentsV2Available";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "protoUpgradeSessionUUID";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21400B868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 8)
        {
          goto LABEL_4;
        }

        if (result == 9)
        {
          type metadata accessor for CSDMCallMessageProto(0);
          sub_2146D8F38();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          type metadata accessor for CSDMCallMessageProto(0);
          sub_2146D8E98();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_21400BA4C(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_21400CF88(a1, v5, a2, a3, type metadata accessor for CSDMCallMessageProto, sub_21402DAA0, &type metadata for CSDMCallMessageProto.CallMessageType);
      }

      else if (result == 2)
      {
        type metadata accessor for CSDMCallMessageProto(0);
        sub_2146D8F58();
      }

LABEL_5:
      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21400BA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CSDMCallMessageProto(0);
  type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  sub_214027000(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto, byte_2146E94D8);
  return sub_2146D8F98();
}

uint64_t sub_21400BB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21400BC00(v3, a1, a2, a3);
  if (!v4)
  {
    sub_21400BC8C(v3, a1, a2, a3);
    sub_21400BD04(v3, a1, a2, a3);
    sub_21400BD7C(v3, a1, a2, a3);
    sub_21400BF8C(v3, a1, a2, a3);
    sub_21400C004(v3, a1, a2, a3);
    sub_21400C07C(v3, a1, a2, a3);
    sub_21400C0F4(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21400BC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 20)) != 3)
  {
    sub_21402DAA0();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21400BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_21400BD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21400BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CSDMCallMessageProto(0);
  sub_213FB2E54(a1 + *(v12 + 32), v7, &unk_27C9037B8, &unk_2147598F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &unk_27C9037B8, &unk_2147598F0);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMAVConferenceInviteDataProto);
  sub_214027000(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto, byte_2146E94D8);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMAVConferenceInviteDataProto);
}

uint64_t sub_21400BF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21400C004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21400C07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21400C0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMCallMessageProto(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21400C170@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  *(a2 + a1[5]) = 3;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  v7 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v9) = 2;
  v10 = a1[12];
  *(a2 + a1[11]) = 2;
  v11 = (a2 + v10);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_21400C294(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903D08, type metadata accessor for CSDMCallMessageProto, byte_2146E9450);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21400C334(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903C58, type metadata accessor for CSDMCallMessageProto, aAe);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21400C3A0(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903C58, type metadata accessor for CSDMCallMessageProto, aAe);

  return sub_2146D9008();
}

uint64_t sub_21400C420()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA196F8);
  __swift_project_value_buffer(v0, qword_27CA196F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Invite";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SenderMuteUplink";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400C654()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19710);
  __swift_project_value_buffer(v0, qword_27CA19710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "SKEBlob";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mediaBlob";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "callInfoBlob";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400C868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for CSDMAVConferenceInviteDataProto(0);
      sub_2146D8EC8();
    }
  }

  return result;
}

uint64_t sub_21400C92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140173D0(v3, a1, a2, a3, type metadata accessor for CSDMAVConferenceInviteDataProto);
  if (!v4)
  {
    sub_214017474(v3, a1, a2, a3, type metadata accessor for CSDMAVConferenceInviteDataProto);
    sub_214023878(v3, a1, a2, a3, type metadata accessor for CSDMAVConferenceInviteDataProto, 3);
    return sub_2146D8DD8();
  }

  return result;
}

double sub_21400C9F8@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_2146E68C0;
  *(a2 + v5) = xmmword_2146E68C0;
  *(a2 + a1[7]) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21400CA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903D18, type metadata accessor for CSDMAVConferenceInviteDataProto, aE_90);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21400CB28(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto, byte_2146E94D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21400CB94(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto, byte_2146E94D8);

  return sub_2146D9008();
}

uint64_t sub_21400CC14()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19728);
  __swift_project_value_buffer(v0, qword_27CA19728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "isoCountryCode";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "siriDisplayName";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400CE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
LABEL_4:
          type metadata accessor for CSDMHandleProto(0);
          sub_2146D8F38();
        }
      }

      else if (result == 1)
      {
        sub_21400CF88(a1, v5, a2, a3, type metadata accessor for CSDMHandleProto, sub_21402DB90, &type metadata for CSDMHandleProto.HandleType);
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21400CF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  a5(0);
  a6();
  return sub_2146D8EB8();
}

uint64_t sub_21400D010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21400D0F8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_21401BA04(v3, a1, a2, a3, type metadata accessor for CSDMHandleProto, 2);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMHandleProto, 4);
    sub_21401BA88(v3, a1, a2, a3, type metadata accessor for CSDMHandleProto, 5);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21400D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMHandleProto(0);
  if (*(a1 + *(result + 20)) != 4)
  {
    sub_21402DB90();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21400D184@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  *(a2 + a1[5]) = 4;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_21400D228(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903D40, type metadata accessor for CSDMHandleProto, byte_2146E91D0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21400D2C8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21400D334(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);

  return sub_2146D9008();
}

uint64_t sub_21400D3B4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19740);
  __swift_project_value_buffer(v0, qword_27CA19740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "None";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Generic";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PhoneNumber";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EmailAddress";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21400D61C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19758);
  __swift_project_value_buffer(v0, qword_27CA19758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_2146E6900;
  v4 = v72 + v3;
  v5 = v72 + v3 + v1[14];
  *(v72 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v72 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "members";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v72 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "message";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v72 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "messagesGroupUUIDString";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = (v72 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "messagesGroupName";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v72 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isMomentsAvailable";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v72 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "activitySession";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v72 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "video";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v72 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isScreenSharingAvailable";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "providerIdentifier";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v8();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "otherInvitedHandles";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isPersonaAvailable";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "lightweightMembers";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "isLightweight";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isGondolaCallingAvailable";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v8();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "videoEnabled";
  *(v36 + 1) = 12;
  v36[16] = 2;
  v8();
  v37 = v72 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "sharePlayProtocolVersion";
  *(v37 + 8) = 24;
  *(v37 + 16) = 2;
  v8();
  v38 = (v72 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "isGFTDowngradeToOneToOneAvailable";
  *(v39 + 1) = 33;
  v39[16] = 2;
  v8();
  v40 = (v72 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "isUPlusNDowngradeAvailable";
  *(v41 + 1) = 26;
  v41[16] = 2;
  v8();
  v42 = (v72 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "collaborationIdentifier";
  *(v43 + 1) = 23;
  v43[16] = 2;
  v8();
  v44 = (v72 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "supportsLeaveContext";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v72 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "isUPlusOneScreenSharingAvailable";
  *(v47 + 1) = 32;
  v47[16] = 2;
  v8();
  v48 = (v72 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "isSpatialPersonaEnabled";
  *(v49 + 1) = 23;
  v49[16] = 2;
  v8();
  v50 = (v72 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 25;
  *v51 = "isUPlusOneAVLessAvailable";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  v52 = (v72 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "visionFeatureVersion";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v72 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "visionCallEstablishmentVersion";
  *(v55 + 1) = 30;
  v55[16] = 2;
  v8();
  v56 = (v72 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 29;
  *v57 = "isUPlusOneVisionToVisionAvailable";
  *(v57 + 1) = 33;
  v57[16] = 2;
  v8();
  v58 = (v72 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 30;
  *v59 = "supportsRequestToScreenShare";
  *(v59 + 1) = 28;
  v59[16] = 2;
  v8();
  v60 = (v72 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 31;
  *v61 = "isPhotosSharePlayAvailable";
  *(v61 + 1) = 26;
  v61[16] = 2;
  v8();
  v62 = (v72 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 32;
  *v63 = "stableDeviceIdentifier";
  *(v63 + 1) = 22;
  v63[16] = 2;
  v8();
  v64 = (v72 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 34;
  *v65 = "isTranslationAvailable";
  *(v65 + 1) = 22;
  v65[16] = 2;
  v8();
  v66 = (v72 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 35;
  *v67 = "isNearbySharePlay";
  *(v67 + 1) = 17;
  v67[16] = 2;
  v8();
  v68 = v72 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 36;
  *v68 = "isUpgradeToVideo";
  *(v68 + 8) = 16;
  *(v68 + 16) = 2;
  v8();
  v69 = (v72 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 37;
  *v70 = "nearbyFeatureVersion";
  *(v70 + 1) = 20;
  v70[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21400DFC0()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  v3 = type metadata accessor for CSDMConversationMessageProto(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable) = 2;
  v6 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  v7 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable) = 2;
  v8 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled) = 2;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable) = 2;
  v10 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable) = 2;
  v11 = v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable) = 2;
  v13 = (v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo) = 2;
  v14 = v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  *v14 = 0;
  *(v14 + 4) = 1;
  return v0;
}

uint64_t sub_21400E238()
{

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message, &qword_27C903CF0, &unk_2146E9810);

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession, &qword_27C903CB8, &qword_2146E97F0);

  return v0;
}

void sub_21400E35C(uint64_t a1)
{
  sub_21400E518(319, &qword_27C903418, type metadata accessor for CSDMConversationMessageProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21400E518(319, &unk_27C903420, type metadata accessor for CSDMConversationActivitySessionProto, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21400E518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21400E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2140193A4(a2, a1, a3, a4);
        continue;
      case 2:
        sub_214012D24(a2, a1, a3, a4, type metadata accessor for CSDMConversationMemberProto, &qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
        continue;
      case 3:
        sub_21400E8C4(a2, a1, a3, a4);
        continue;
      case 4:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring;
        goto LABEL_35;
      case 5:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName;
        goto LABEL_35;
      case 6:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
        goto LABEL_3;
      case 7:
        sub_21400E9A0(a2, a1, a3, a4);
        continue;
      case 8:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
        goto LABEL_3;
      case 9:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
        goto LABEL_3;
      case 10:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier;
        goto LABEL_35;
      case 11:
        sub_21400EA7C(a2, a1, a3, a4);
        continue;
      case 12:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
        goto LABEL_3;
      case 13:
        sub_21400EB58(a2, a1, a3, a4);
        continue;
      case 14:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
        goto LABEL_3;
      case 15:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
        goto LABEL_3;
      case 16:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
        goto LABEL_3;
      case 17:
        v12 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
        goto LABEL_38;
      case 18:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
        goto LABEL_3;
      case 20:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
        goto LABEL_3;
      case 21:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier;
        goto LABEL_35;
      case 22:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
        goto LABEL_3;
      case 23:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
        goto LABEL_3;
      case 24:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
        goto LABEL_3;
      case 25:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
        goto LABEL_3;
      case 26:
        v12 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
        goto LABEL_38;
      case 27:
        v12 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
        goto LABEL_38;
      case 29:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
        goto LABEL_3;
      case 30:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
        goto LABEL_3;
      case 31:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
        goto LABEL_3;
      case 32:
        v13 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier;
LABEL_35:
        sub_2140202C4(a2, a1, a3, a4, v13, MEMORY[0x277D217D0]);
        continue;
      case 34:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
        goto LABEL_3;
      case 35:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
        goto LABEL_3;
      case 36:
        v9 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
LABEL_3:
        sub_214020438(a2, a1, a3, a4, v9);
        break;
      case 37:
        v12 = &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
LABEL_38:
        sub_214019630(a2, a1, a3, a4, v12, MEMORY[0x277D217E0]);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21400E8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMessageProto(0);
  sub_214027000(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto, aAc_1);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21400E9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivitySessionProto(0);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21400EA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_21400EB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMemberProto(0);
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_21400EC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214019BD0(a1, a2, a3, a4);
  if (!v4)
  {
    swift_beginAccess();
    if (*(*(a1 + 24) + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);

      sub_2146D90D8();
    }

    sub_21400F308(a1, a2, a3, a4);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring, 4);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName, 5);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable, 6);
    sub_21400F524(a1, a2, a3, a4);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video, 8);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable, 9);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier, 10);
    v10 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for CSDMHandleProto(0);
      sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);

      sub_2146D90D8();
    }

    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable, 12);
    v11 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);

      sub_2146D90D8();
    }

    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight, 14);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable, 15);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled, 16);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion, 17, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable, 18);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable, 20);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier, 21);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext, 22);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable, 23);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled, 24);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable, 25);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion, 26, MEMORY[0x277D21860]);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion, 27, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable, 29);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare, 30);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable, 31);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier, 32);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable, 34);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay, 35);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo, 36);
    return sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion, 37, MEMORY[0x277D21860]);
  }

  return result;
}

uint64_t sub_21400F308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMConversationMessageProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &qword_27C903CF0, &unk_2146E9810);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C903CF0, &unk_2146E9810);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMConversationMessageProto);
  sub_214027000(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto, aAc_1);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMConversationMessageProto);
}

uint64_t sub_21400F524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &qword_27C903CB8, &qword_2146E97F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C903CB8, &qword_2146E97F0);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMConversationActivitySessionProto);
}

uint64_t sub_21400F740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v227 = *(v4 - 8);
  v228 = v4;
  MEMORY[0x28223BE20](v4);
  v225 = &v221 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D50, &qword_2146E9830);
  MEMORY[0x28223BE20](v226);
  v7 = &v221 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v230 = &v221 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v231 = &v221 - v11;
  v12 = type metadata accessor for CSDMConversationMessageProto(0);
  v233 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v229 = &v221 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D58, &qword_2146E9838);
  MEMORY[0x28223BE20](v14);
  v16 = &v221 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v232 = &v221 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v221 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v23 = *(a1 + 20);
  swift_beginAccess();
  v24 = *(a2 + 20);
  if (v23)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 16))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v223 = v7;
  swift_beginAccess();
  v25 = *(a1 + 24);
  swift_beginAccess();
  v26 = *(a2 + 24);

  v27 = a1;
  v28 = sub_2143D8748(v25, v26);

  if ((v28 & 1) == 0)
  {
    goto LABEL_16;
  }

  v224 = a2;
  v29 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  swift_beginAccess();
  v222 = v27;
  sub_213FB2E54(v27 + v29, v21, &qword_27C903CF0, &unk_2146E9810);
  v30 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  swift_beginAccess();
  v31 = *(v14 + 48);
  sub_213FB2E54(v21, v16, &qword_27C903CF0, &unk_2146E9810);
  v32 = v224 + v30;
  v33 = v224;
  sub_213FB2E54(v32, &v16[v31], &qword_27C903CF0, &unk_2146E9810);
  v34 = *(v233 + 48);
  if (v34(v16, 1, v12) == 1)
  {
    sub_213FB2DF4(v21, &qword_27C903CF0, &unk_2146E9810);
    v35 = v34(&v16[v31], 1, v12);
    v36 = v222;
    if (v35 == 1)
    {
      sub_213FB2DF4(v16, &qword_27C903CF0, &unk_2146E9810);
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v37 = v232;
  sub_213FB2E54(v16, v232, &qword_27C903CF0, &unk_2146E9810);
  v38 = v34(&v16[v31], 1, v12);
  v36 = v222;
  if (v38 == 1)
  {
    sub_213FB2DF4(v21, &qword_27C903CF0, &unk_2146E9810);
    sub_214028E9C(v37, type metadata accessor for CSDMConversationMessageProto);
LABEL_14:
    v39 = &qword_27C903D58;
    v40 = &qword_2146E9838;
    v41 = v16;
LABEL_15:
    sub_213FB2DF4(v41, v39, v40);
    goto LABEL_16;
  }

  v43 = v229;
  sub_214028E34(&v16[v31], v229, type metadata accessor for CSDMConversationMessageProto);
  v44 = *(v12 + 20);
  v45 = *(v37 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {

    v47 = sub_214014B64(v45, v46);

    if ((v47 & 1) == 0)
    {
      sub_214028E9C(v43, type metadata accessor for CSDMConversationMessageProto);
      sub_213FB2DF4(v21, &qword_27C903CF0, &unk_2146E9810);
      sub_214028E9C(v37, type metadata accessor for CSDMConversationMessageProto);
      v41 = v16;
      v39 = &qword_27C903CF0;
      v40 = &unk_2146E9810;
      goto LABEL_15;
    }
  }

  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = sub_2146D9578();
  sub_214028E9C(v43, type metadata accessor for CSDMConversationMessageProto);
  sub_213FB2DF4(v21, &qword_27C903CF0, &unk_2146E9810);
  sub_214028E9C(v37, type metadata accessor for CSDMConversationMessageProto);
  sub_213FB2DF4(v16, &qword_27C903CF0, &unk_2146E9810);
  if ((v48 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v49 = (v36 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  v52 = (v33 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  swift_beginAccess();
  v53 = v52[1];
  if (v51)
  {
    v54 = v230;
    v55 = v231;
    if (!v53 || (v50 != *v52 || v51 != v53) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v54 = v230;
    v55 = v231;
    if (v53)
    {
      goto LABEL_16;
    }
  }

  v56 = (v36 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  v59 = (v33 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  swift_beginAccess();
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (v57 != *v59 || v58 != v60) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v60)
  {
    goto LABEL_16;
  }

  v61 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v62 = *(v36 + v61);
  v63 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v64 = *(v33 + v63);
  if (v62 == 2)
  {
    if (v64 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v64 == 2 || ((v62 ^ v64) & 1) != 0)
  {
    goto LABEL_16;
  }

  v65 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  swift_beginAccess();
  sub_213FB2E54(v36 + v65, v55, &qword_27C903CB8, &qword_2146E97F0);
  v66 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  swift_beginAccess();
  v67 = *(v226 + 48);
  v68 = v223;
  sub_213FB2E54(v55, v223, &qword_27C903CB8, &qword_2146E97F0);
  sub_213FB2E54(v33 + v66, v68 + v67, &qword_27C903CB8, &qword_2146E97F0);
  v69 = v228;
  v70 = *(v227 + 48);
  if (v70(v68, 1, v228) == 1)
  {
    sub_213FB2DF4(v55, &qword_27C903CB8, &qword_2146E97F0);
    if (v70(v68 + v67, 1, v69) == 1)
    {
      sub_213FB2DF4(v68, &qword_27C903CB8, &qword_2146E97F0);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  sub_213FB2E54(v68, v54, &qword_27C903CB8, &qword_2146E97F0);
  if (v70(v68 + v67, 1, v69) == 1)
  {
    sub_213FB2DF4(v231, &qword_27C903CB8, &qword_2146E97F0);
    sub_214028E9C(v54, type metadata accessor for CSDMConversationActivitySessionProto);
LABEL_46:
    v39 = &qword_27C903D50;
    v40 = &qword_2146E9830;
    v41 = v68;
    goto LABEL_15;
  }

  v71 = v68 + v67;
  v72 = v225;
  sub_214028E34(v71, v225, type metadata accessor for CSDMConversationActivitySessionProto);
  v73 = sub_214029B00(v54, v72);
  sub_214028E9C(v72, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_213FB2DF4(v231, &qword_27C903CB8, &qword_2146E97F0);
  sub_214028E9C(v54, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_213FB2DF4(v68, &qword_27C903CB8, &qword_2146E97F0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_48:
  v74 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
  swift_beginAccess();
  v75 = *(v36 + v74);
  v76 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
  swift_beginAccess();
  v77 = *(v33 + v76);
  if (v75 == 2)
  {
    if (v77 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v77 == 2 || ((v75 ^ v77) & 1) != 0)
  {
    goto LABEL_16;
  }

  v78 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v79 = *(v36 + v78);
  v80 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v81 = *(v33 + v80);
  if (v79 == 2)
  {
    if (v81 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v81 == 2 || ((v79 ^ v81) & 1) != 0)
  {
    goto LABEL_16;
  }

  v82 = (v36 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  v85 = (v33 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  swift_beginAccess();
  v86 = v85[1];
  if (!v84)
  {
    if (!v86)
    {
      goto LABEL_65;
    }

LABEL_16:

    return 0;
  }

  if (!v86 || (v83 != *v85 || v84 != v86) && (sub_2146DA6A8() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_65:
  v87 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  swift_beginAccess();
  v88 = *(v36 + v87);
  v89 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  swift_beginAccess();
  v90 = *(v33 + v89);

  v91 = sub_2143D6458(v88, v90);

  if ((v91 & 1) == 0)
  {
    goto LABEL_16;
  }

  v92 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v93 = *(v36 + v92);
  v94 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v95 = *(v33 + v94);
  if (v93 == 2)
  {
    if (v95 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v95 == 2 || ((v93 ^ v95) & 1) != 0)
  {
    goto LABEL_16;
  }

  v96 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  v97 = v222;
  swift_beginAccess();
  v98 = *(v97 + v96);
  v99 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  v100 = v224;
  swift_beginAccess();
  v101 = *(v100 + v99);

  LOBYTE(v100) = sub_2143D8748(v98, v101);

  if ((v100 & 1) == 0)
  {
    goto LABEL_16;
  }

  v102 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  v103 = v222;
  swift_beginAccess();
  v104 = *(v103 + v102);
  v105 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  v106 = v224;
  swift_beginAccess();
  v107 = *(v106 + v105);
  if (v104 == 2)
  {
    if (v107 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v107 == 2 || ((v104 ^ v107) & 1) != 0)
  {
    goto LABEL_16;
  }

  v108 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  v109 = v222;
  swift_beginAccess();
  v110 = *(v109 + v108);
  v111 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  v112 = v224;
  swift_beginAccess();
  v113 = *(v112 + v111);
  if (v110 == 2)
  {
    if (v113 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v113 == 2 || ((v110 ^ v113) & 1) != 0)
  {
    goto LABEL_16;
  }

  v114 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  v115 = v222;
  swift_beginAccess();
  v116 = *(v115 + v114);
  v117 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  v118 = v224;
  swift_beginAccess();
  v119 = *(v118 + v117);
  if (v116 == 2)
  {
    if (v119 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v119 == 2 || ((v116 ^ v119) & 1) != 0)
  {
    goto LABEL_16;
  }

  v120 = v222 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  v121 = *v120;
  v122 = *(v120 + 4);
  v123 = v224 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  if (v122)
  {
    if ((*(v123 + 4) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v123 + 4) & 1) != 0 || v121 != *v123)
  {
    goto LABEL_16;
  }

  v124 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  v125 = v222;
  swift_beginAccess();
  v126 = *(v125 + v124);
  v127 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  v128 = v224;
  swift_beginAccess();
  v129 = *(v128 + v127);
  if (v126 == 2)
  {
    if (v129 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v129 == 2 || ((v126 ^ v129) & 1) != 0)
  {
    goto LABEL_16;
  }

  v130 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  v131 = v222;
  swift_beginAccess();
  v132 = *(v131 + v130);
  v133 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  v134 = v224;
  swift_beginAccess();
  v135 = *(v134 + v133);
  if (v132 == 2)
  {
    if (v135 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v135 == 2 || ((v132 ^ v135) & 1) != 0)
  {
    goto LABEL_16;
  }

  v136 = (v222 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  swift_beginAccess();
  v137 = *v136;
  v138 = v136[1];
  v139 = (v224 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  swift_beginAccess();
  v140 = v139[1];
  if (v138)
  {
    if (!v140 || (v137 != *v139 || v138 != v140) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v140)
  {
    goto LABEL_16;
  }

  v141 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  v142 = v222;
  swift_beginAccess();
  v143 = *(v142 + v141);
  v144 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  v145 = v224;
  swift_beginAccess();
  v146 = *(v145 + v144);
  if (v143 == 2)
  {
    if (v146 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v146 == 2 || ((v143 ^ v146) & 1) != 0)
  {
    goto LABEL_16;
  }

  v147 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  v148 = v222;
  swift_beginAccess();
  v149 = *(v148 + v147);
  v150 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  v151 = v224;
  swift_beginAccess();
  v152 = *(v151 + v150);
  if (v149 == 2)
  {
    if (v152 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v152 == 2 || ((v149 ^ v152) & 1) != 0)
  {
    goto LABEL_16;
  }

  v153 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  v154 = v222;
  swift_beginAccess();
  v155 = *(v154 + v153);
  v156 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  v157 = v224;
  swift_beginAccess();
  v158 = *(v157 + v156);
  if (v155 == 2)
  {
    if (v158 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v158 == 2 || ((v155 ^ v158) & 1) != 0)
  {
    goto LABEL_16;
  }

  v159 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  v160 = v222;
  swift_beginAccess();
  v161 = *(v160 + v159);
  v162 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  v163 = v224;
  swift_beginAccess();
  v164 = *(v163 + v162);
  if (v161 == 2)
  {
    if (v164 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v164 == 2 || ((v161 ^ v164) & 1) != 0)
  {
    goto LABEL_16;
  }

  v165 = v222 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  v166 = *v165;
  v167 = *(v165 + 4);
  v168 = v224 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  if (v167)
  {
    if ((*(v168 + 4) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v168 + 4) & 1) != 0 || v166 != *v168)
  {
    goto LABEL_16;
  }

  v169 = v222 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  v170 = *v169;
  v171 = *(v169 + 4);
  v172 = v224 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  if (v171)
  {
    if ((*(v172 + 4) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v172 + 4) & 1) != 0 || v170 != *v172)
  {
    goto LABEL_16;
  }

  v173 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  v174 = v222;
  swift_beginAccess();
  v175 = *(v174 + v173);
  v176 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  v177 = v224;
  swift_beginAccess();
  v178 = *(v177 + v176);
  if (v175 == 2)
  {
    if (v178 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v178 == 2 || ((v175 ^ v178) & 1) != 0)
  {
    goto LABEL_16;
  }

  v179 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  v180 = v222;
  swift_beginAccess();
  v181 = *(v180 + v179);
  v182 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  v183 = v224;
  swift_beginAccess();
  v184 = *(v183 + v182);
  if (v181 == 2)
  {
    if (v184 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v184 == 2 || ((v181 ^ v184) & 1) != 0)
  {
    goto LABEL_16;
  }

  v185 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  v186 = v222;
  swift_beginAccess();
  v187 = *(v186 + v185);
  v188 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  v189 = v224;
  swift_beginAccess();
  v190 = *(v189 + v188);
  if (v187 == 2)
  {
    if (v190 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v190 == 2 || ((v187 ^ v190) & 1) != 0)
  {
    goto LABEL_16;
  }

  v191 = (v222 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v192 = *v191;
  v193 = v191[1];
  v194 = (v224 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v195 = v194[1];
  if (v193)
  {
    if (!v195 || (v192 != *v194 || v193 != v195) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v195)
  {
    goto LABEL_16;
  }

  v196 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  v197 = v222;
  swift_beginAccess();
  v198 = *(v197 + v196);
  v199 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  v200 = v224;
  swift_beginAccess();
  v201 = *(v200 + v199);
  if (v198 == 2)
  {
    if (v201 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v201 == 2 || ((v198 ^ v201) & 1) != 0)
  {
    goto LABEL_16;
  }

  v202 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  v203 = v222;
  swift_beginAccess();
  v204 = *(v203 + v202);
  v205 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  v206 = v224;
  swift_beginAccess();
  v207 = *(v206 + v205);
  if (v204 == 2)
  {
    if (v207 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v207 == 2 || ((v204 ^ v207) & 1) != 0)
  {
    goto LABEL_16;
  }

  v208 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  v209 = v222;
  swift_beginAccess();
  v210 = *(v209 + v208);
  v211 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  v212 = v224;
  swift_beginAccess();
  v213 = *(v212 + v211);
  if (v210 == 2)
  {
    if (v213 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v213 == 2 || ((v210 ^ v213) & 1) != 0)
  {
    goto LABEL_16;
  }

  v214 = v222 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  swift_beginAccess();
  v215 = *v214;
  v216 = *(v214 + 4);

  v217 = v224 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  swift_beginAccess();
  v218 = *v217;
  v219 = *(v217 + 4);

  if (v216)
  {
    if (!v219)
    {
      return 0;
    }
  }

  else
  {
    if (v215 == v218)
    {
      v220 = v219;
    }

    else
    {
      v220 = 1;
    }

    if (v220)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_214010E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903CE8, type metadata accessor for CSDMConversationParticipantDidJoinContextProto, byte_2146E90B8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214010EA8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto, aQd_0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214010F14(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto, aQd_0);

  return sub_2146D9008();
}

uint64_t sub_214010FD4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19770);
  __swift_project_value_buffer(v0, qword_27CA19770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "leaveReason";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21401119C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
        sub_2146D8F58();
      }

      else if (result == 2)
      {
        sub_2140247A4(a1, v5, a2, a3, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, sub_21402DA4C, &type metadata for CSDMConversationParticipantDidLeaveContextProto.LeaveReason);
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214011288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214017D50(v3, a1, a2, a3, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
  if (!v4)
  {
    sub_2140248F8(v3, a1, a2, a3, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, sub_21402DA4C, &type metadata for CSDMConversationParticipantDidLeaveContextProto.LeaveReason);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21401133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 4;
  return result;
}

uint64_t sub_2140113CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903CF8, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, byte_2146E8FC8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401146C(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, byte_2146E95C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2140114D8(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, byte_2146E95C8);

  return sub_2146D9008();
}

uint64_t sub_214011558()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19788);
  __swift_project_value_buffer(v0, qword_27CA19788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Handoff";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GreenTea";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ExitScreenMode";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2140117C0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA197A0);
  __swift_project_value_buffer(v0, qword_27CA197A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_2146E6920;
  v4 = v61 + v3;
  v5 = v61 + v3 + v1[14];
  *(v61 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v61 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "type";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v61 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "shouldSuppressInCallUI";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v61 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "activeParticipants";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v61 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "conversationGroupUUIDString";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v8();
  v16 = (v61 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "addedMembers";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v61 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "disconnectedReason";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v61 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "protoUpgradeSessionUUID";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  v22 = v61 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "activitySessions";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v61 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "nickname";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v61 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "link";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v8();
  v27 = (v61 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "reportData";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v8();
  v29 = (v61 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "isLetMeInApproved";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v8();
  v31 = (v61 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "encryptedMessage";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v61 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "letMeInDelegationHandle";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v8();
  v35 = (v61 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "letMeInDelegationUUID";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v61 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "enclosedEncryptedType";
  *(v37 + 8) = 21;
  *(v37 + 16) = 2;
  v8();
  v38 = (v61 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "invitationPreferences";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v61 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "removedMembers";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v61 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 22;
  *v43 = "lightweightMembers";
  *(v43 + 1) = 18;
  v43[16] = 2;
  v8();
  v44 = (v61 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 23;
  *v45 = "activeLightweightParticipants";
  *(v45 + 1) = 29;
  v45[16] = 2;
  v8();
  v46 = (v61 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 24;
  *v47 = "guestModeEnabled";
  *(v47 + 1) = 16;
  v47[16] = 2;
  v8();
  v48 = (v61 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 25;
  *v49 = "highlightIdentifier";
  *(v49 + 1) = 19;
  v49[16] = 2;
  v8();
  v50 = (v61 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 27;
  *v51 = "stagedActivitySession";
  *(v51 + 1) = 21;
  v51[16] = 2;
  v8();
  v52 = (v61 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 28;
  *v53 = "avMode";
  *(v53 + 1) = 6;
  v53[16] = 2;
  v8();
  v54 = (v61 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 29;
  *v55 = "requestBlobRecoveryOptions";
  *(v55 + 1) = 26;
  v55[16] = 2;
  v8();
  v56 = (v61 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 31;
  *v57 = "presentationMode";
  *(v57 + 1) = 16;
  v57[16] = 2;
  v8();
  v58 = (v61 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 33;
  *v59 = "isNearbySession";
  *(v59 + 1) = 15;
  v59[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21401200C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_214012060()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 21) = 546;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  *(v0 + 60) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = v1;
  v2 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  v3 = type metadata accessor for CSDMConversationLinkProto(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v5 = type metadata accessor for CSDMConversationReportProto(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved) = 2;
  v6 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v7 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType) = 34;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled) = 2;
  v10 = (v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v12 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode) = 3;
  v13 = v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  *v13 = 0;
  *(v13 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode) = 3;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession) = 2;
  return v0;
}

void *sub_2140122B0()
{

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link, &qword_27C903CD8, &qword_2146E9808);
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData, &qword_27C903CD0, &qword_2146E9800);
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage, &qword_27C903CC8, &qword_2146E97F8);

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession, &qword_27C903CB8, &qword_2146E97F0);
  return v0;
}

void sub_214012434(uint64_t a1)
{
  sub_21400E518(319, &qword_27C9034D8, type metadata accessor for CSDMConversationLinkProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21400E518(319, &qword_27C9034E0, type metadata accessor for CSDMConversationReportProto, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21400E518(319, &unk_27C9034E8, type metadata accessor for CSDMEncryptedConversationMessageProto, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21400E518(319, &unk_27C903420, type metadata accessor for CSDMConversationActivitySessionProto, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_214012710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, void, void, void))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = a7;
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v18 = a6(v17);
    a7 = v20;

    *(v10 + v14) = v18;
    v16 = v18;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_2140127F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2140193A4(a2, a1, a3, a4);
        continue;
      case 2:
        sub_214012C0C(a2, a1, a3, a4);
        continue;
      case 3:
        sub_214012CA0(a2, a1, a3, a4);
        continue;
      case 4:
        sub_214012D24(a2, a1, a3, a4, type metadata accessor for CSDMConversationParticipantProto, &qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto, byte_2146E8B00);
        continue;
      case 5:
        sub_21401FEF4(a2, a1, a3, a4, MEMORY[0x277D217D0]);
        continue;
      case 6:
        sub_214012DF0(a2, a1, a3, a4);
        continue;
      case 7:
        sub_214012EBC(a2, a1, a3, a4);
        continue;
      case 8:
        sub_214020004(a2, a1, a3, a4);
        continue;
      case 9:
        sub_214012F40(a2, a1, a3, a4);
        continue;
      case 10:
        sub_21401300C(a2, a1, a3, a4);
        continue;
      case 11:
        sub_214013090(a2, a1, a3, a4);
        continue;
      case 12:
        sub_21401316C(a2, a1, a3, a4);
        continue;
      case 13:
        v12 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
        goto LABEL_33;
      case 14:
        sub_214013248(a2, a1, a3, a4);
        continue;
      case 15:
        v9 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle;
        goto LABEL_3;
      case 16:
        v9 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid;
        goto LABEL_3;
      case 17:
        v13 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
        v14 = &type metadata for CSDMConversationMessageProto.ConversationMessageType;
        v15 = sub_214028DE0;
        goto LABEL_35;
      case 19:
        sub_214013324(a2, a1, a3, a4);
        continue;
      case 20:
        sub_214013400(a2, a1, a3, a4);
        continue;
      case 22:
        sub_2140134DC(a2, a1, a3, a4);
        continue;
      case 23:
        sub_2140135B8(a2, a1, a3, a4);
        continue;
      case 24:
        v12 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
        goto LABEL_33;
      case 25:
        v9 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier;
LABEL_3:
        sub_2140202C4(a2, a1, a3, a4, v9, MEMORY[0x277D217D0]);
        continue;
      case 27:
        sub_214013694(a2, a1, a3, a4);
        continue;
      case 28:
        v13 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
        v14 = &type metadata for CSDMConversationAudioVideoModeEnum;
        v15 = sub_214028D8C;
        goto LABEL_35;
      case 29:
        sub_214019630(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions, MEMORY[0x277D21780]);
        continue;
      case 31:
        v13 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
        v14 = &type metadata for CSDMConversationPresentationModeEnum;
        v15 = sub_214028D38;
LABEL_35:
        sub_214019588(a2, a1, a3, a4, v13, v15, v14);
        break;
      case 33:
        v12 = &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
LABEL_33:
        sub_214020438(a2, a1, a3, a4, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_214012C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_214028DE0();
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_214012CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8E98();
  return swift_endAccess();
}

uint64_t sub_214012D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), const char *a8)
{
  swift_beginAccess();
  a5(0);
  sub_214027000(a6, a7, a8);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_214012DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMemberProto(0);
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_214012EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F58();
  return swift_endAccess();
}

uint64_t sub_214012F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivitySessionProto(0);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_21401300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_214013090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationLinkProto(0);
  sub_214027000(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto, byte_2146E8290);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21401316C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationReportProto(0);
  sub_214027000(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto, asc_2146E7F70);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214013248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  sub_214027000(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto, byte_2146E96B8);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214013324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  sub_214027000(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto, byte_2146E8100);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_214013400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMemberProto(0);
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_2140134DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationMemberProto(0);
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_2140135B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationParticipantProto(0);
  sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto, byte_2146E8B00);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_214013694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivitySessionProto(0);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214013770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2140137F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214019BD0(a1, a2, a3, a4);
  if (!v4)
  {
    sub_214013F70(a1, a2, a3, a4);
    sub_21401400C(a1, a2, a3, a4);
    swift_beginAccess();
    if (*(a1[3] + 16))
    {
      type metadata accessor for CSDMConversationParticipantProto(0);
      sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto, byte_2146E8B00);

      sub_2146D90D8();
    }

    sub_214014094(a1, a2, a3, a4);
    swift_beginAccess();
    if (*(a1[6] + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);

      sub_2146D90D8();
    }

    sub_214014130(a1, a2, a3, a4);
    sub_2140208A0(a1, a2, a3, a4, 8);
    swift_beginAccess();
    if (*(a1[10] + 16))
    {
      type metadata accessor for CSDMConversationActivitySessionProto(0);
      sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);

      sub_2146D90D8();
    }

    sub_2140141B4(a1, a2, a3, a4);
    sub_214014250(a1, a2, a3, a4);
    sub_21401446C(a1, a2, a3, a4);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved, 13);
    sub_214014688(a1, a2, a3, a4);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle, 15);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid, 16);
    sub_2140148A4(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
      sub_214027000(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto, byte_2146E8100);

      sub_2146D90D8();
    }

    v11 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);

      sub_2146D90D8();
    }

    v12 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
    swift_beginAccess();
    if (*(*(a1 + v12) + 16))
    {
      type metadata accessor for CSDMConversationMemberProto(0);
      sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);

      sub_2146D90D8();
    }

    v13 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
    swift_beginAccess();
    if (*(*(a1 + v13) + 16))
    {
      type metadata accessor for CSDMConversationParticipantProto(0);
      sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto, byte_2146E8B00);

      sub_2146D90D8();
    }

    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled, 24);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier, 25);
    sub_214014948(a1, a2, a3, a4);
    sub_214019FB4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode, sub_214028D8C, 28, &type metadata for CSDMConversationAudioVideoModeEnum);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions, 29, MEMORY[0x277D21848]);
    sub_214019FB4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode, sub_214028D38, 31, &type metadata for CSDMConversationPresentationModeEnum);
    return sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession, 33);
  }

  return result;
}

uint64_t sub_214013F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 21) != 34)
  {
    sub_214028DE0();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21401400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 22) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_214014094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214014130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 60) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_2140141B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 96))
  {

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214014250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMConversationLinkProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &qword_27C903CD8, &qword_2146E9808);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C903CD8, &qword_2146E9808);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMConversationLinkProto);
  sub_214027000(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto, byte_2146E8290);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMConversationLinkProto);
}

uint64_t sub_21401446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMConversationReportProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &qword_27C903CD0, &qword_2146E9800);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C903CD0, &qword_2146E9800);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMConversationReportProto);
  sub_214027000(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto, asc_2146E7F70);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMConversationReportProto);
}

uint64_t sub_214014688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &qword_27C903CC8, &qword_2146E97F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C903CC8, &qword_2146E97F8);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_214027000(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto, byte_2146E96B8);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMEncryptedConversationMessageProto);
}

uint64_t sub_2140148A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  result = swift_beginAccess();
  if (*(a1 + v5) != 34)
  {
    sub_214028DE0();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_214014948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &qword_27C903CB8, &qword_2146E97F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C903CB8, &qword_2146E97F0);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMConversationActivitySessionProto);
}

uint64_t sub_214014B64(uint64_t a1, uint64_t a2)
{
  v221 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v219 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v220 = &v212 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D50, &qword_2146E9830);
  MEMORY[0x28223BE20](v216);
  v6 = &v212 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v218 = &v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v217 = &v212 - v10;
  v227 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v225 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v222 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D60, &qword_2146E9840);
  MEMORY[0x28223BE20](v223);
  v229 = &v212 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v224 = &v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v228 = &v212 - v16;
  v17 = type metadata accessor for CSDMConversationReportProto(0);
  v232 = *(v17 - 8);
  v233 = v17;
  MEMORY[0x28223BE20](v17);
  v226 = &v212 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D68, &qword_2146E9848);
  MEMORY[0x28223BE20](v230);
  v234 = &v212 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v231 = &v212 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v235 = &v212 - v23;
  v24 = type metadata accessor for CSDMConversationLinkProto(0);
  v236 = *(v24 - 8);
  v237 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = (&v212 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D70, &qword_2146E9850);
  MEMORY[0x28223BE20](v27);
  v238 = &v212 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = (&v212 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v34 = &v212 - v33;
  swift_beginAccess();
  v35 = *(a1 + 16);
  v36 = *(a1 + 20);
  swift_beginAccess();
  v37 = *(a2 + 20);
  if (v36)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v35 != *(a2 + 16))
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 21);
  swift_beginAccess();
  v39 = *(a2 + 21);
  if (v38 == 34)
  {
    if (v39 != 34)
    {
      return 0;
    }
  }

  else if (v39 == 34 || qword_2146E9AB0[v38] != qword_2146E9AB0[v39])
  {
    return 0;
  }

  swift_beginAccess();
  v40 = *(a1 + 22);
  swift_beginAccess();
  v41 = *(a2 + 22);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    return 0;
  }

  v214 = v6;
  swift_beginAccess();
  v42 = *(a1 + 24);
  swift_beginAccess();
  v43 = a2;
  v44 = *(a2 + 24);

  v45 = sub_2143D893C(v42, v44);

  if ((v45 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v46 = *(a1 + 32);
  v47 = *(a1 + 40);
  v215 = a1;
  swift_beginAccess();
  v48 = *(v43 + 40);
  v49 = v43;
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_49;
    }

    v50 = *(v43 + 32);
    v51 = v215;
    if ((v46 != v50 || v47 != v48) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v51 = v215;
    if (v48)
    {
      goto LABEL_49;
    }
  }

  swift_beginAccess();
  v52 = *(v51 + 48);
  swift_beginAccess();
  v53 = *(v49 + 48);

  v54 = v49;
  v55 = sub_2143D8748(v52, v53);

  if ((v55 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v56 = *(v51 + 56);
  v57 = *(v51 + 60);
  swift_beginAccess();
  v58 = *(v54 + 60);
  v59 = v54;
  if (v57)
  {
    v60 = v215;
    if ((v58 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (*(v54 + 60))
    {
      goto LABEL_49;
    }

    v61 = *(v54 + 56);
    v60 = v215;
    if (v56 != v61)
    {
      goto LABEL_49;
    }
  }

  swift_beginAccess();
  v62 = v60[8];
  v63 = v60[9];
  swift_beginAccess();
  v64 = v59[9];
  if (v63)
  {
    if (!v64 || (v62 != v59[8] || v63 != v64) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (v64)
  {
LABEL_49:

    return 0;
  }

  swift_beginAccess();
  v65 = v60[10];
  swift_beginAccess();
  v66 = v59[10];

  v67 = v60;
  v68 = v59;
  v69 = sub_2143D8BC8(v65, v66);

  if ((v69 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v71 = v67[11];
  v70 = v67[12];
  swift_beginAccess();
  v72 = v68[12];
  v73 = v68;
  if (v70)
  {
    if (!v72)
    {
      goto LABEL_49;
    }

    v74 = v68[11];
    v75 = v215;
    if ((v71 != v74 || v70 != v72) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v75 = v215;
    if (v72)
    {
      goto LABEL_49;
    }
  }

  v213 = v73;
  v76 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  sub_213FB2E54(v75 + v76, v34, &qword_27C903CD8, &qword_2146E9808);
  v77 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  v78 = *(v27 + 48);
  v79 = v238;
  sub_213FB2E54(v34, v238, &qword_27C903CD8, &qword_2146E9808);
  v80 = v79;
  sub_213FB2E54(v213 + v77, v79 + v78, &qword_27C903CD8, &qword_2146E9808);
  v81 = *(v236 + 48);
  v82 = v79;
  v83 = v237;
  if (v81(v82, 1, v237) == 1)
  {
    sub_213FB2DF4(v34, &qword_27C903CD8, &qword_2146E9808);
    if (v81(v80 + v78, 1, v83) == 1)
    {
      sub_213FB2DF4(v80, &qword_27C903CD8, &qword_2146E9808);
      goto LABEL_59;
    }

LABEL_56:
    sub_213FB2DF4(v80, &qword_27C903D70, &qword_2146E9850);
    goto LABEL_49;
  }

  sub_213FB2E54(v80, v32, &qword_27C903CD8, &qword_2146E9808);
  if (v81(v80 + v78, 1, v83) == 1)
  {
    sub_213FB2DF4(v34, &qword_27C903CD8, &qword_2146E9808);
    sub_214028E9C(v32, type metadata accessor for CSDMConversationLinkProto);
    goto LABEL_56;
  }

  sub_214028E34(v80 + v78, v26, type metadata accessor for CSDMConversationLinkProto);
  v85 = sub_21402B070(v32, v26);
  sub_214028E9C(v26, type metadata accessor for CSDMConversationLinkProto);
  sub_213FB2DF4(v34, &qword_27C903CD8, &qword_2146E9808);
  sub_214028E9C(v32, type metadata accessor for CSDMConversationLinkProto);
  sub_213FB2DF4(v80, &qword_27C903CD8, &qword_2146E9808);
  if ((v85 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_59:
  v86 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  swift_beginAccess();
  v87 = v235;
  sub_213FB2E54(v75 + v86, v235, &qword_27C903CD0, &qword_2146E9800);
  v88 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v89 = v213;
  swift_beginAccess();
  v90 = *(v230 + 48);
  v91 = v87;
  v92 = v234;
  sub_213FB2E54(v91, v234, &qword_27C903CD0, &qword_2146E9800);
  sub_213FB2E54(v89 + v88, v92 + v90, &qword_27C903CD0, &qword_2146E9800);
  v93 = v233;
  v94 = *(v232 + 48);
  if (v94(v92, 1, v233) == 1)
  {
    sub_213FB2DF4(v235, &qword_27C903CD0, &qword_2146E9800);
    if (v94(v92 + v90, 1, v93) == 1)
    {
      sub_213FB2DF4(v92, &qword_27C903CD0, &qword_2146E9800);
      goto LABEL_68;
    }

LABEL_64:
    v95 = &qword_27C903D68;
    v96 = &qword_2146E9848;
    v97 = v92;
LABEL_65:
    sub_213FB2DF4(v97, v95, v96);
    goto LABEL_49;
  }

  sub_213FB2E54(v92, v231, &qword_27C903CD0, &qword_2146E9800);
  if (v94(v92 + v90, 1, v93) == 1)
  {
    sub_213FB2DF4(v235, &qword_27C903CD0, &qword_2146E9800);
    sub_214028E9C(v231, type metadata accessor for CSDMConversationReportProto);
    v92 = v234;
    goto LABEL_64;
  }

  v98 = v234;
  v99 = v234 + v90;
  v100 = v226;
  sub_214028E34(v99, v226, type metadata accessor for CSDMConversationReportProto);
  v101 = v231;
  v102 = sub_21402A8E4(v231, v100);
  sub_214028E9C(v100, type metadata accessor for CSDMConversationReportProto);
  sub_213FB2DF4(v235, &qword_27C903CD0, &qword_2146E9800);
  sub_214028E9C(v101, type metadata accessor for CSDMConversationReportProto);
  sub_213FB2DF4(v98, &qword_27C903CD0, &qword_2146E9800);
  if ((v102 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_68:
  v103 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  v104 = v215;
  swift_beginAccess();
  v105 = *(v104 + v103);
  v106 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  v107 = v213;
  swift_beginAccess();
  v108 = v107[v106];
  if (v105 == 2)
  {
    if (v108 != 2)
    {
      goto LABEL_49;
    }
  }

  else if (v108 == 2 || ((v105 ^ v108) & 1) != 0)
  {
    goto LABEL_49;
  }

  v109 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v110 = v215;
  swift_beginAccess();
  v111 = v228;
  sub_213FB2E54(v110 + v109, v228, &qword_27C903CC8, &qword_2146E97F8);
  v112 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v113 = v213;
  swift_beginAccess();
  v114 = *(v223 + 48);
  v115 = v111;
  v116 = v229;
  sub_213FB2E54(v115, v229, &qword_27C903CC8, &qword_2146E97F8);
  sub_213FB2E54(v113 + v112, v116 + v114, &qword_27C903CC8, &qword_2146E97F8);
  v117 = *(v225 + 48);
  if (v117(v116, 1, v227) == 1)
  {
    sub_213FB2DF4(v228, &qword_27C903CC8, &qword_2146E97F8);
    if (v117(v229 + v114, 1, v227) == 1)
    {
      sub_213FB2DF4(v229, &qword_27C903CC8, &qword_2146E97F8);
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  v118 = v229;
  sub_213FB2E54(v229, v224, &qword_27C903CC8, &qword_2146E97F8);
  if (v117(v118 + v114, 1, v227) == 1)
  {
    sub_213FB2DF4(v228, &qword_27C903CC8, &qword_2146E97F8);
    sub_214028E9C(v224, type metadata accessor for CSDMEncryptedConversationMessageProto);
LABEL_78:
    v95 = &qword_27C903D60;
    v96 = &qword_2146E9840;
    v97 = v229;
    goto LABEL_65;
  }

  v119 = v229;
  v120 = v229 + v114;
  v121 = v222;
  sub_214028E34(v120, v222, type metadata accessor for CSDMEncryptedConversationMessageProto);
  v122 = v224;
  v123 = sub_214029130(v224, v121);
  sub_214028E9C(v121, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_213FB2DF4(v228, &qword_27C903CC8, &qword_2146E97F8);
  sub_214028E9C(v122, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_213FB2DF4(v119, &qword_27C903CC8, &qword_2146E97F8);
  if ((v123 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_80:
  v124 = (v215 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  swift_beginAccess();
  v125 = *v124;
  v126 = v124[1];
  v127 = (v213 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  swift_beginAccess();
  v128 = v127[1];
  if (v126)
  {
    if (!v128 || (v125 != *v127 || v126 != v128) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (v128)
  {
    goto LABEL_49;
  }

  v129 = (v215 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  swift_beginAccess();
  v130 = *v129;
  v131 = v129[1];
  v132 = (v213 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  swift_beginAccess();
  v133 = v132[1];
  if (v131)
  {
    if (!v133 || (v130 != *v132 || v131 != v133) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (v133)
  {
    goto LABEL_49;
  }

  v134 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  v135 = v215;
  swift_beginAccess();
  v136 = *(v135 + v134);
  v137 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  v138 = v213;
  swift_beginAccess();
  v139 = v138[v137];
  if (v136 == 34)
  {
    if (v139 != 34)
    {
      goto LABEL_49;
    }
  }

  else if (v139 == 34 || qword_2146E9AB0[v136] != qword_2146E9AB0[v139])
  {
    goto LABEL_49;
  }

  v140 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  v141 = v215;
  swift_beginAccess();
  v142 = *(v141 + v140);
  v143 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  v144 = v213;
  swift_beginAccess();
  v145 = *(v144 + v143);

  LOBYTE(v144) = sub_2143D9264(v142, v145);

  if ((v144 & 1) == 0)
  {
    goto LABEL_49;
  }

  v146 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  v147 = v215;
  swift_beginAccess();
  v148 = *(v147 + v146);
  v149 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  v150 = v213;
  swift_beginAccess();
  v151 = *(v150 + v149);

  LOBYTE(v150) = sub_2143D8748(v148, v151);

  if ((v150 & 1) == 0)
  {
    goto LABEL_49;
  }

  v152 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  v153 = v215;
  swift_beginAccess();
  v154 = *(v153 + v152);
  v155 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  v156 = v213;
  swift_beginAccess();
  v157 = *(v156 + v155);

  LOBYTE(v156) = sub_2143D8748(v154, v157);

  if ((v156 & 1) == 0)
  {
    goto LABEL_49;
  }

  v158 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  v159 = v215;
  swift_beginAccess();
  v160 = *(v159 + v158);
  v161 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  v162 = v213;
  swift_beginAccess();
  v163 = *(v162 + v161);

  LOBYTE(v162) = sub_2143D893C(v160, v163);

  if ((v162 & 1) == 0)
  {
    goto LABEL_49;
  }

  v164 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  v165 = v215;
  swift_beginAccess();
  v166 = *(v165 + v164);
  v167 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  v168 = v213;
  swift_beginAccess();
  v169 = v168[v167];
  if (v166 == 2)
  {
    if (v169 != 2)
    {
      goto LABEL_49;
    }
  }

  else if (v169 == 2 || ((v166 ^ v169) & 1) != 0)
  {
    goto LABEL_49;
  }

  v170 = (v215 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  swift_beginAccess();
  v171 = *v170;
  v172 = v170[1];
  v173 = (v213 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  swift_beginAccess();
  v174 = v173[1];
  if (v172)
  {
    if (!v174 || (v171 != *v173 || v172 != v174) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (v174)
  {
    goto LABEL_49;
  }

  v175 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v176 = v215;
  swift_beginAccess();
  v177 = v217;
  sub_213FB2E54(v176 + v175, v217, &qword_27C903CB8, &qword_2146E97F0);
  v178 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v179 = v213;
  swift_beginAccess();
  v180 = *(v216 + 48);
  v181 = v177;
  v182 = v214;
  sub_213FB2E54(v181, v214, &qword_27C903CB8, &qword_2146E97F0);
  sub_213FB2E54(v179 + v178, v182 + v180, &qword_27C903CB8, &qword_2146E97F0);
  v183 = *(v219 + 48);
  if (v183(v182, 1, v221) == 1)
  {
    sub_213FB2DF4(v217, &qword_27C903CB8, &qword_2146E97F0);
    if (v183(&v214[v180], 1, v221) == 1)
    {
      sub_213FB2DF4(v214, &qword_27C903CB8, &qword_2146E97F0);
      goto LABEL_122;
    }

    goto LABEL_120;
  }

  v184 = v214;
  sub_213FB2E54(v214, v218, &qword_27C903CB8, &qword_2146E97F0);
  if (v183((v184 + v180), 1, v221) == 1)
  {
    sub_213FB2DF4(v217, &qword_27C903CB8, &qword_2146E97F0);
    sub_214028E9C(v218, type metadata accessor for CSDMConversationActivitySessionProto);
LABEL_120:
    v95 = &qword_27C903D50;
    v96 = &qword_2146E9830;
    v97 = v214;
    goto LABEL_65;
  }

  v185 = v214;
  v186 = &v214[v180];
  v187 = v220;
  sub_214028E34(v186, v220, type metadata accessor for CSDMConversationActivitySessionProto);
  v188 = v218;
  v189 = sub_214029B00(v218, v187);
  sub_214028E9C(v187, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_213FB2DF4(v217, &qword_27C903CB8, &qword_2146E97F0);
  sub_214028E9C(v188, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_213FB2DF4(v185, &qword_27C903CB8, &qword_2146E97F0);
  if ((v189 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_122:
  v190 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  v191 = v215;
  swift_beginAccess();
  v192 = *(v191 + v190);
  v193 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  v194 = v213;
  swift_beginAccess();
  v195 = v194[v193];
  if (v192 == 3)
  {
    if (v195 != 3)
    {
      goto LABEL_49;
    }
  }

  else if (v195 == 3 || v192 != v195)
  {
    goto LABEL_49;
  }

  v196 = v215 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  swift_beginAccess();
  v197 = *v196;
  v198 = *(v196 + 4);
  v199 = v213 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  swift_beginAccess();
  if (v198)
  {
    if ((*(v199 + 4) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((*(v199 + 4) & 1) != 0 || v197 != *v199)
  {
    goto LABEL_49;
  }

  v200 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  v201 = v215;
  swift_beginAccess();
  v202 = *(v201 + v200);
  v203 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  v204 = v213;
  swift_beginAccess();
  v205 = v204[v203];
  if (v202 == 3)
  {
    if (v205 != 3)
    {
      goto LABEL_49;
    }
  }

  else if (v205 == 3 || v202 != v205)
  {
    goto LABEL_49;
  }

  v206 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
  v207 = v215;
  swift_beginAccess();
  v208 = *(v207 + v206);

  v209 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
  v210 = v213;
  swift_beginAccess();
  v211 = v210[v209];

  if (v208 == 2)
  {
    if (v211 != 2)
    {
      return 0;
    }
  }

  else if (v211 == 2 || ((v208 ^ v211) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_214016548(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903CA0, type metadata accessor for CSDMConversationMessageProto, byte_2146E8EB0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2140165E8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto, aAc_1);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214016654(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto, aAc_1);

  return sub_2146D9008();
}

uint64_t sub_214016714()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA197B8);
  __swift_project_value_buffer(v0, qword_27CA197B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_2146E6900;
  v4 = v72 + v3;
  v5 = v72 + v3 + v1[14];
  *(v72 + v3) = 0;
  *v5 = "Unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v72 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Invitation";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v72 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Upgrade";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v72 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "AddMember";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v72 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "BlobRecoveryRequest";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v72 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "BlobRecoveryResponse";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v72 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "RespondedElsewhere";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v72 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "AddActivitySession";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v72 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "Decline";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "LetMeInRequest";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "LinkCreated";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "NicknameUpdated";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "EncryptedConversationMessage";
  *(v30 + 1) = 28;
  v30[16] = 2;
  v8();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "LetMeInDelegation";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v8();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "LetMeInDelegationResponse";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v8();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "LetMeInResponse";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  v37 = v72 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 19;
  *v37 = "RemoveMember";
  *(v37 + 8) = 12;
  *(v37 + 16) = 2;
  v8();
  v38 = (v72 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 21;
  *v39 = "RemoveActivitySession";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v72 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 22;
  *v41 = "RequestVideoUpgrade";
  *(v41 + 1) = 19;
  v41[16] = 2;
  v8();
  v42 = (v72 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 23;
  *v43 = "UpdateActivity";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v8();
  v44 = (v72 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 24;
  *v45 = "LinkInvalidated";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  v46 = (v72 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 25;
  *v47 = "AddLightweightMember";
  *(v47 + 1) = 20;
  v47[16] = 2;
  v8();
  v48 = (v72 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 26;
  *v49 = "LinkChanged";
  *(v49 + 1) = 11;
  v49[16] = 2;
  v8();
  v50 = (v72 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 27;
  *v51 = "UpdateActivityImage";
  *(v51 + 1) = 19;
  v51[16] = 2;
  v8();
  v52 = (v72 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 28;
  *v53 = "GuestModeUpdated";
  *(v53 + 1) = 16;
  v53[16] = 2;
  v8();
  v54 = (v72 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 29;
  *v55 = "Endorse";
  *(v55 + 1) = 7;
  v55[16] = 2;
  v8();
  v56 = (v72 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 30;
  *v57 = "AddHighlight";
  *(v57 + 1) = 12;
  v57[16] = 2;
  v8();
  v58 = (v72 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 31;
  *v59 = "RemoveHighlight";
  *(v59 + 1) = 15;
  v59[16] = 2;
  v8();
  v60 = (v72 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 32;
  *v61 = "UpdateJoinedMetadata";
  *(v61 + 1) = 20;
  v61[16] = 2;
  v8();
  v62 = (v72 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 33;
  *v63 = "ParticipantUpdated";
  *(v63 + 1) = 18;
  v63[16] = 2;
  v8();
  v64 = (v72 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 34;
  *v65 = "RegisterMessagesGroupUUID";
  *(v65 + 1) = 25;
  v65[16] = 2;
  v8();
  v66 = (v72 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 35;
  *v67 = "ScreenShareRequest";
  *(v67 + 1) = 18;
  v67[16] = 2;
  v8();
  v68 = v72 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 36;
  *v68 = "ScreenShareResponse";
  *(v68 + 8) = 19;
  *(v68 + 16) = 2;
  v8();
  v69 = (v72 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 37;
  *v70 = "SharePlayAvailable";
  *(v70 + 1) = 18;
  v70[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_2140170C8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA197D0);
  __swift_project_value_buffer(v0, qword_27CA197D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publicKey";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "conversationMessageBytes";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214017290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for CSDMEncryptedConversationMessageProto(0);
      sub_2146D8EC8();
    }
  }

  return result;
}

uint64_t sub_214017338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140173D0(v3, a1, a2, a3, type metadata accessor for CSDMEncryptedConversationMessageProto);
  if (!v4)
  {
    sub_214017474(v3, a1, a2, a3, type metadata accessor for CSDMEncryptedConversationMessageProto);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2140173D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 20);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_21402D9F8(*v7, *(v7 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v9, v8);
  }

  return result;
}

uint64_t sub_214017474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 24);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_21402D9F8(*v7, *(v7 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v9, v8);
  }

  return result;
}

double sub_214017518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_2146E68C0;
  *(a2 + v5) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_2140175A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903CE0, type metadata accessor for CSDMEncryptedConversationMessageProto, byte_2146E8D98);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214017640(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto, byte_2146E96B8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2140176AC(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto, byte_2146E96B8);

  return sub_2146D9008();
}

uint64_t sub_21401772C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA197E8);
  __swift_project_value_buffer(v0, qword_27CA197E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handle";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nickname";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "lightweightPrimary";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "lightweightPrimaryParticipantID";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "stableDeviceIdentifier";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2140179F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_214017B74(a1, v5, a2, a3);
          break;
        case 5:
          type metadata accessor for CSDMConversationMemberProto(0);
          sub_2146D8F68();
          break;
        case 8:
          goto LABEL_13;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          type metadata accessor for CSDMConversationMemberProto(0);
          sub_2146D8F58();
          break;
        case 2:
          sub_2140259A8(a1, v5, a2, a3, type metadata accessor for CSDMConversationMemberProto);
          break;
        case 3:
LABEL_13:
          type metadata accessor for CSDMConversationMemberProto(0);
          v4 = 0;
          sub_2146D8F38();
          break;
      }
    }
  }
}

uint64_t sub_214017B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CSDMConversationMemberProto(0);
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  return sub_2146D8F98();
}

uint64_t sub_214017C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214017D50(v3, a1, a2, a3, type metadata accessor for CSDMConversationMemberProto);
  if (!v4)
  {
    sub_214025C54(v3, a1, a2, a3, type metadata accessor for CSDMConversationMemberProto);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationMemberProto, 3);
    sub_214017E50(v3, a1, a2, a3);
    sub_214018060(v3, a1, a2, a3);
    sub_214023A44(v3, a1, a2, a3, type metadata accessor for CSDMConversationMemberProto, 8);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214017D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 20) + 4) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214017DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214017E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMHandleProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CSDMConversationMemberProto(0);
  sub_213FB2E54(a1 + *(v12 + 32), v7, &unk_27C903788, "Į\r");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214018060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationMemberProto(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_2146D90C8();
  }

  return result;
}

uint64_t sub_2140180DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CSDMHandleProto(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v4, 1, 1, v6);
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  result = (v7)(a2 + v8, 1, 1, v6);
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_214018200(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DB0, type metadata accessor for CSDMConversationMemberProto, a1l);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2140182A0(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401830C(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);

  return sub_2146D9008();
}

uint64_t sub_214018388()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19800);
  __swift_project_value_buffer(v0, qword_27CA19800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_2146E6940;
  v4 = v67 + v3;
  v5 = v67 + v3 + v1[14];
  *(v67 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v67 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "identifier";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v67 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "handle";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v67 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "avcData";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v67 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "isMomentsAvailable";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v67 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isScreenSharingAvailable";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v67 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isGondolaCallingAvailable";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v8();
  v20 = (v67 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isPersonaAvailable";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v67 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isLightweight";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v67 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "sharePlayProtocolVersion";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v8();
  v25 = (v67 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "options";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v67 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isGFTDowngradeToOneToOneAvailable";
  *(v28 + 1) = 33;
  v28[16] = 2;
  v8();
  v29 = (v67 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "guestModeEnabled";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v67 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "isUPlusNDowngradeAvailable";
  *(v32 + 1) = 26;
  v32[16] = 2;
  v8();
  v33 = (v67 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "avMode";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v8();
  v35 = (v67 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "supportsLeaveContext";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  v37 = v67 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "isUPlusOneScreenSharingAvailable";
  *(v37 + 8) = 32;
  *(v37 + 16) = 2;
  v8();
  v38 = (v67 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "personaHandshakeData";
  *(v39 + 1) = 20;
  v39[16] = 2;
  v8();
  v40 = (v67 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "isSpatialPersonaEnabled";
  *(v41 + 1) = 23;
  v41[16] = 2;
  v8();
  v42 = (v67 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "isUPlusOneAVLessAvailable";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v8();
  v44 = (v67 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "visionFeatureVersion";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v67 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "visionCallEstablishmentVersion";
  *(v47 + 1) = 30;
  v47[16] = 2;
  v8();
  v48 = (v67 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "isUPlusOneVisionToVisionAvailable";
  *(v49 + 1) = 33;
  v49[16] = 2;
  v8();
  v50 = (v67 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 25;
  *v51 = "supportsRequestToScreenShare";
  *(v51 + 1) = 28;
  v51[16] = 2;
  v8();
  v52 = (v67 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "spatialPersonaGenerationCounter";
  *(v53 + 1) = 31;
  v53[16] = 2;
  v8();
  v54 = (v67 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "isPhotosSharePlayAvailable";
  *(v55 + 1) = 26;
  v55[16] = 2;
  v8();
  v56 = (v67 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 28;
  *v57 = "presentationMode";
  *(v57 + 1) = 16;
  v57[16] = 2;
  v8();
  v58 = (v67 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 29;
  *v59 = "stableDeviceIdentifier";
  *(v59 + 1) = 22;
  v59[16] = 2;
  v8();
  v60 = (v67 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 31;
  *v61 = "isTranslationAvailable";
  *(v61 + 1) = 22;
  v61[16] = 2;
  v8();
  v62 = (v67 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 32;
  *v63 = "isNearbySharePlay";
  *(v63 + 1) = 17;
  v63[16] = 2;
  v8();
  v64 = (v67 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 33;
  *v65 = "nearbyFeatureVersion";
  *(v65 + 1) = 20;
  v65[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214018C7C()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  v2 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData) = xmmword_2146E68C0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight) = 2;
  v3 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  *v4 = 0;
  *(v4 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode) = 3;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData) = xmmword_2146E68C0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable) = 2;
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare) = 2;
  v7 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode) = 3;
  v8 = (v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay) = 2;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  *v9 = 0;
  *(v9 + 4) = 1;
  return v0;
}

uint64_t sub_214018E94()
{
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle, &unk_27C903788, "Į\r");
  sub_213FDC6BC(*(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData), *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData + 8));
  sub_213FDC6BC(*(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData), *(v0 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData + 8));

  return swift_deallocClassInstance();
}

void sub_214018F6C(uint64_t a1)
{
  sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2140190BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2140193A4(a2, a1, a3, a4);
        continue;
      case 2:
        sub_214019428(a2, a1, a3, a4);
        continue;
      case 3:
        sub_2140194AC(a2, a1, a3, a4);
        continue;
      case 4:
        v16 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData;
        goto LABEL_33;
      case 5:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
        goto LABEL_3;
      case 6:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
        goto LABEL_3;
      case 7:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
        goto LABEL_3;
      case 8:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
        goto LABEL_3;
      case 9:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
        goto LABEL_3;
      case 10:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
        goto LABEL_36;
      case 11:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
        goto LABEL_36;
      case 12:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
        goto LABEL_3;
      case 13:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
        goto LABEL_3;
      case 15:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
        goto LABEL_3;
      case 16:
        v13 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
        v14 = &type metadata for CSDMConversationAudioVideoModeEnum;
        v15 = sub_214028D8C;
        goto LABEL_40;
      case 17:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
        goto LABEL_3;
      case 18:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
        goto LABEL_3;
      case 19:
        v16 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData;
LABEL_33:
        v17 = MEMORY[0x277D21760];
        goto LABEL_38;
      case 20:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
        goto LABEL_3;
      case 21:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
        goto LABEL_3;
      case 22:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
        goto LABEL_36;
      case 23:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
        goto LABEL_36;
      case 24:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
        goto LABEL_3;
      case 25:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
        goto LABEL_3;
      case 26:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
        goto LABEL_36;
      case 27:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
        goto LABEL_3;
      case 28:
        v13 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
        v14 = &type metadata for CSDMConversationPresentationModeEnum;
        v15 = sub_214028D38;
LABEL_40:
        sub_214019588(a2, a1, a3, a4, v13, v15, v14);
        continue;
      case 29:
        v16 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier;
        v17 = MEMORY[0x277D217D0];
LABEL_38:
        sub_2140202C4(a2, a1, a3, a4, v16, v17);
        continue;
      case 31:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
        goto LABEL_3;
      case 32:
        v9 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
LABEL_3:
        sub_214020438(a2, a1, a3, a4, v9);
        break;
      case 33:
        v12 = &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
LABEL_36:
        sub_214019630(a2, a1, a3, a4, v12, MEMORY[0x277D217E0]);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2140193A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F58();
  return swift_endAccess();
}

uint64_t sub_214019428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F68();
  return swift_endAccess();
}

uint64_t sub_2140194AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214019588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = swift_beginAccess();
  a6(v8);
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_214019630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2140196C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214019BD0(a1, a2, a3, a4);
  if (!v4)
  {
    sub_214019C54(a1, a2, a3, a4);
    sub_214019CD8(a1, a2, a3, a4);
    sub_214019EF4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData, 4);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable, 5);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable, 6);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable, 7);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable, 8);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight, 9);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion, 10, MEMORY[0x277D21860]);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options, 11, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable, 12);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled, 13);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable, 15);
    sub_214019FB4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode, sub_214028D8C, 16, &type metadata for CSDMConversationAudioVideoModeEnum);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext, 17);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable, 18);
    sub_214019EF4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData, 19);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled, 20);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable, 21);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion, 22, MEMORY[0x277D21860]);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion, 23, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable, 24);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare, 25);
    sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter, 26, MEMORY[0x277D21860]);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable, 27);
    sub_214019FB4(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode, sub_214028D38, 28, &type metadata for CSDMConversationPresentationModeEnum);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier, 29);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable, 31);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay, 32);
    return sub_21401A074(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion, 33, MEMORY[0x277D21860]);
  }

  return result;
}

uint64_t sub_214019BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 20) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214019C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 32) & 1) == 0)
  {
    return sub_2146D90C8();
  }

  return result;
}

uint64_t sub_214019CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMHandleProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &unk_27C903788, "Į\r");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214019EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = (a1 + *a5);
  result = swift_beginAccess();
  v8 = v6[1];
  if (v8 >> 60 != 15)
  {
    v9 = *v6;
    sub_21402D9F8(v9, v8);
    sub_2146D9048();
    return sub_213FDC6BC(v9, v8);
  }

  return result;
}

uint64_t sub_214019FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 3)
  {
    a6(result);
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21401A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21401A114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v175 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  MEMORY[0x28223BE20](v7);
  v9 = &v173 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v173 - v14;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v177 = a1;
  LOBYTE(a1) = *(a1 + 20);
  swift_beginAccess();
  v17 = *(a2 + 20);
  if (a1)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 16))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v174 = v6;
  v18 = v177;
  swift_beginAccess();
  v19 = *(v18 + 24);
  v20 = *(v18 + 32);
  swift_beginAccess();
  v21 = *(a2 + 32);
  if (v20)
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 24))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v176 = a2;
  v22 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  v23 = v177;
  swift_beginAccess();
  sub_213FB2E54(v23 + v22, v15, &unk_27C903788, "Į\r");
  v24 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  swift_beginAccess();
  v25 = *(v7 + 48);
  sub_213FB2E54(v15, v9, &unk_27C903788, "Į\r");
  sub_213FB2E54(v176 + v24, &v9[v25], &unk_27C903788, "Į\r");
  v26 = *(v175 + 48);
  if (v26(v9, 1, v4) == 1)
  {

    sub_213FB2DF4(v15, &unk_27C903788, "Į\r");
    if (v26(&v9[v25], 1, v4) == 1)
    {
      sub_213FB2DF4(v9, &unk_27C903788, "Į\r");
      goto LABEL_22;
    }

LABEL_18:
    sub_213FB2DF4(v9, &qword_27C903D78, &qword_2146E9858);
    goto LABEL_19;
  }

  sub_213FB2E54(v9, v13, &unk_27C903788, "Į\r");
  if (v26(&v9[v25], 1, v4) == 1)
  {

    sub_213FB2DF4(v15, &unk_27C903788, "Į\r");
    sub_214028E9C(v13, type metadata accessor for CSDMHandleProto);
    goto LABEL_18;
  }

  v28 = v174;
  sub_214028E34(&v9[v25], v174, type metadata accessor for CSDMHandleProto);
  v23 = v177;

  v29 = sub_21402B72C(v13, v28);
  sub_214028E9C(v28, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v15, &unk_27C903788, "Į\r");
  sub_214028E9C(v13, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v9, &unk_27C903788, "Į\r");
  if ((v29 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v30 = (v23 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  v33 = (v176 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  sub_213FDCA18(v32, v31);
  sub_213FDCA18(v34, v35);
  if (v31 >> 60 == 15)
  {
    if (v35 >> 60 != 15)
    {
LABEL_27:

      goto LABEL_28;
    }

    sub_213FDC6BC(v32, v31);
  }

  else
  {
    sub_213FDCA18(v32, v31);
    sub_213FDCA18(v34, v35);
    if (v35 >> 60 == 15)
    {
      goto LABEL_26;
    }

    v36 = sub_214466780(v32, v31, v34, v35);
    sub_213FDC6BC(v34, v35);
    sub_213FDC6BC(v32, v31);
    sub_213FDC6BC(v34, v35);
    sub_213FDC6BC(v32, v31);
    if (!v36)
    {
      goto LABEL_19;
    }
  }

  v37 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v38 = *(v23 + v37);
  v39 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v40 = *(v176 + v39);
  if (v38 == 2)
  {
    if (v40 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v40 == 2 || ((v38 ^ v40) & 1) != 0)
  {
    goto LABEL_19;
  }

  v41 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v42 = *(v23 + v41);
  v43 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v44 = *(v176 + v43);
  if (v42 == 2)
  {
    if (v44 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v44 == 2 || ((v42 ^ v44) & 1) != 0)
  {
    goto LABEL_19;
  }

  v45 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  v46 = *(v23 + v45);
  v47 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  v48 = *(v176 + v47);
  if (v46 == 2)
  {
    if (v48 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v48 == 2 || ((v46 ^ v48) & 1) != 0)
  {
    goto LABEL_19;
  }

  v49 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v50 = *(v23 + v49);
  v51 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v52 = *(v176 + v51);
  if (v50 == 2)
  {
    if (v52 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v52 == 2 || ((v50 ^ v52) & 1) != 0)
  {
    goto LABEL_19;
  }

  v53 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  v54 = *(v23 + v53);
  v55 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  v56 = *(v176 + v55);
  v57 = v176;
  if (v54 == 2)
  {
    if (v56 == 2)
    {
      goto LABEL_55;
    }

LABEL_19:

    return 0;
  }

  if (v56 == 2 || ((v54 ^ v56) & 1) != 0)
  {
    goto LABEL_19;
  }

LABEL_55:
  v58 = v23 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  v59 = v57;
  v60 = *v58;
  LOBYTE(v58) = *(v58 + 4);
  v61 = v59 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  if (v58)
  {
    if ((*(v61 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v61 + 4) & 1) != 0 || v60 != *v61)
  {
    goto LABEL_19;
  }

  v62 = v23 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  swift_beginAccess();
  v63 = *v62;
  LOBYTE(v62) = *(v62 + 4);
  v64 = v176 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  swift_beginAccess();
  if (v62)
  {
    if ((*(v64 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v64 + 4) & 1) != 0 || v63 != *v64)
  {
    goto LABEL_19;
  }

  v65 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  v66 = v177;
  swift_beginAccess();
  v67 = *(v66 + v65);
  v68 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  v69 = v176;
  swift_beginAccess();
  v70 = *(v69 + v68);
  if (v67 == 2)
  {
    if (v70 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v70 == 2 || ((v67 ^ v70) & 1) != 0)
  {
    goto LABEL_19;
  }

  v71 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  v72 = v177;
  swift_beginAccess();
  v73 = *(v72 + v71);
  v74 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  v75 = v176;
  swift_beginAccess();
  v76 = *(v75 + v74);
  if (v73 == 2)
  {
    if (v76 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v76 == 2 || ((v73 ^ v76) & 1) != 0)
  {
    goto LABEL_19;
  }

  v77 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  v78 = v177;
  swift_beginAccess();
  v79 = *(v78 + v77);
  v80 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  v81 = v176;
  swift_beginAccess();
  v82 = *(v81 + v80);
  if (v79 == 2)
  {
    if (v82 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v82 == 2 || ((v79 ^ v82) & 1) != 0)
  {
    goto LABEL_19;
  }

  v83 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  v84 = v177;
  swift_beginAccess();
  v85 = *(v84 + v83);
  v86 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  v87 = v176;
  swift_beginAccess();
  v88 = *(v87 + v86);
  if (v85 == 3)
  {
    if (v88 != 3)
    {
      goto LABEL_19;
    }
  }

  else if (v88 == 3 || v85 != v88)
  {
    goto LABEL_19;
  }

  v89 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  v90 = v177;
  swift_beginAccess();
  v91 = *(v90 + v89);
  v92 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  v93 = v176;
  swift_beginAccess();
  v94 = *(v93 + v92);
  if (v91 == 2)
  {
    if (v94 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v94 == 2 || ((v91 ^ v94) & 1) != 0)
  {
    goto LABEL_19;
  }

  v95 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  v96 = v177;
  swift_beginAccess();
  v97 = *(v96 + v95);
  v98 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  v99 = v176;
  swift_beginAccess();
  v100 = *(v99 + v98);
  if (v97 == 2)
  {
    if (v100 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v100 == 2 || ((v97 ^ v100) & 1) != 0)
  {
    goto LABEL_19;
  }

  v101 = (v177 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  swift_beginAccess();
  v32 = *v101;
  v31 = v101[1];
  v102 = (v176 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  swift_beginAccess();
  v34 = *v102;
  v35 = v102[1];
  sub_213FDCA18(v32, v31);
  sub_213FDCA18(v34, v35);
  if (v31 >> 60 == 15)
  {
    if (v35 >> 60 == 15)
    {
      sub_213FDC6BC(v32, v31);
      goto LABEL_103;
    }

    goto LABEL_27;
  }

  sub_213FDCA18(v32, v31);
  sub_213FDCA18(v34, v35);
  if (v35 >> 60 == 15)
  {
LABEL_26:

    sub_213FDC6BC(v34, v35);
    sub_213FDC6BC(v32, v31);
LABEL_28:
    sub_213FDC6BC(v32, v31);
    sub_213FDC6BC(v34, v35);
    return 0;
  }

  v103 = sub_214466780(v32, v31, v34, v35);
  sub_213FDC6BC(v34, v35);
  sub_213FDC6BC(v32, v31);
  sub_213FDC6BC(v34, v35);
  sub_213FDC6BC(v32, v31);
  if (!v103)
  {
    goto LABEL_19;
  }

LABEL_103:
  v104 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  v105 = v177;
  swift_beginAccess();
  v106 = *(v105 + v104);
  v107 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  v108 = v176;
  swift_beginAccess();
  v109 = *(v108 + v107);
  if (v106 == 2)
  {
    if (v109 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v109 == 2 || ((v106 ^ v109) & 1) != 0)
  {
    goto LABEL_19;
  }

  v110 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  v111 = v177;
  swift_beginAccess();
  v112 = *(v111 + v110);
  v113 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  v114 = v176;
  swift_beginAccess();
  v115 = *(v114 + v113);
  if (v112 == 2)
  {
    if (v115 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v115 == 2 || ((v112 ^ v115) & 1) != 0)
  {
    goto LABEL_19;
  }

  v116 = v177 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  v117 = *v116;
  LOBYTE(v116) = *(v116 + 4);
  v118 = v176 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  if (v116)
  {
    if ((*(v118 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v118 + 4) & 1) != 0 || v117 != *v118)
  {
    goto LABEL_19;
  }

  v119 = v177 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  v120 = *v119;
  LOBYTE(v119) = *(v119 + 4);
  v121 = v176 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  if (v119)
  {
    if ((*(v121 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v121 + 4) & 1) != 0 || v120 != *v121)
  {
    goto LABEL_19;
  }

  v122 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  v123 = v177;
  swift_beginAccess();
  v124 = *(v123 + v122);
  v125 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  v126 = v176;
  swift_beginAccess();
  v127 = *(v126 + v125);
  if (v124 == 2)
  {
    if (v127 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v127 == 2 || ((v124 ^ v127) & 1) != 0)
  {
    goto LABEL_19;
  }

  v128 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  v129 = v177;
  swift_beginAccess();
  v130 = *(v129 + v128);
  v131 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  v132 = v176;
  swift_beginAccess();
  v133 = *(v132 + v131);
  if (v130 == 2)
  {
    if (v133 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v133 == 2 || ((v130 ^ v133) & 1) != 0)
  {
    goto LABEL_19;
  }

  v134 = v177 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  swift_beginAccess();
  v135 = *v134;
  LOBYTE(v134) = *(v134 + 4);
  v136 = v176 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  swift_beginAccess();
  if (v134)
  {
    if ((*(v136 + 4) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(v136 + 4) & 1) != 0 || v135 != *v136)
  {
    goto LABEL_19;
  }

  v137 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  v138 = v177;
  swift_beginAccess();
  v139 = *(v138 + v137);
  v140 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  v141 = v176;
  swift_beginAccess();
  v142 = *(v141 + v140);
  if (v139 == 2)
  {
    if (v142 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v142 == 2 || ((v139 ^ v142) & 1) != 0)
  {
    goto LABEL_19;
  }

  v143 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  v144 = v177;
  swift_beginAccess();
  v145 = *(v144 + v143);
  v146 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  v147 = v176;
  swift_beginAccess();
  v148 = *(v147 + v146);
  if (v145 == 3)
  {
    if (v148 != 3)
    {
      goto LABEL_19;
    }
  }

  else if (v148 == 3 || v145 != v148)
  {
    goto LABEL_19;
  }

  v149 = (v177 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v150 = *v149;
  v151 = v149[1];
  v152 = (v176 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v153 = v152[1];
  if (v151)
  {
    if (!v153 || (v150 != *v152 || v151 != v153) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v153)
  {
    goto LABEL_19;
  }

  v154 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  v155 = v177;
  swift_beginAccess();
  v156 = *(v155 + v154);
  v157 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  v158 = v176;
  swift_beginAccess();
  v159 = *(v158 + v157);
  if (v156 == 2)
  {
    if (v159 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v159 == 2 || ((v156 ^ v159) & 1) != 0)
  {
    goto LABEL_19;
  }

  v160 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  v161 = v177;
  swift_beginAccess();
  v162 = *(v161 + v160);
  v163 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  v164 = v176;
  swift_beginAccess();
  v165 = *(v164 + v163);
  if (v162 == 2)
  {
    if (v165 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v165 == 2 || ((v162 ^ v165) & 1) != 0)
  {
    goto LABEL_19;
  }

  v166 = v177 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  swift_beginAccess();
  v167 = *v166;
  v168 = *(v166 + 4);

  v169 = v176 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  swift_beginAccess();
  v170 = *v169;
  v171 = *(v169 + 4);

  if (v168)
  {
    if (!v171)
    {
      return 0;
    }
  }

  else
  {
    if (v167 == v170)
    {
      v172 = v171;
    }

    else
    {
      v172 = 1;
    }

    if (v172)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21401B408(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DB8, type metadata accessor for CSDMConversationParticipantProto, byte_2146E8AC8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401B4A8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto, byte_2146E8B00);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401B514(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto, byte_2146E8B00);

  return sub_2146D9008();
}

uint64_t sub_21401B5D4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19818);
  __swift_project_value_buffer(v0, qword_27CA19818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "contextIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actionDescription";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ongoingDescription";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "completedDescription";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21401B81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2146D8E78();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          type metadata accessor for CSDMConversationActivityContextProto(0);
          sub_2146D8F38();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21401B908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityContextProto);
  if (!v4)
  {
    sub_21401BA04(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityContextProto, 2);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityContextProto, 3);
    sub_21401BA88(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityContextProto, 4);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21401BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21401BA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21401BB10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_21401BBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DC0, type metadata accessor for CSDMConversationActivityContextProto, byte_2146E8960);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401BC4C(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto, byte_2146E8998);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401BCB8(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto, byte_2146E8998);

  return sub_2146D9008();
}

uint64_t sub_21401BD38()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19830);
  __swift_project_value_buffer(v0, qword_27CA19830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "targetContentIdentifier";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shouldAssociateScene";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "preferredSceneSessionRole";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21401BF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
        sub_2146D8E98();
        break;
      case 1:
LABEL_8:
        type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
        sub_2146D8F38();
        break;
    }
  }
}

uint64_t sub_21401C024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
  if (!v4)
  {
    sub_21401CB00(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto, 3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21401C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21401C16C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_21401C200(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DC8, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto, aIp_0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401C2A0(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto, aAr_0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401C30C(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto, aAr_0);

  return sub_2146D9008();
}

uint64_t sub_21401C38C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19848);
  __swift_project_value_buffer(v0, qword_27CA19848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146E6950;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "fallbackURL";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "supportsContinuationOnTV";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "title";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "subtitle";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "image";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "preferredBroadcastingAttributes";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sceneAssociationBehavior";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "supportsActivityPreviews";
  *(v21 + 1) = 24;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "lifetimePolicy";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21401C70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2 || result == 1)
      {
        type metadata accessor for CSDMConversationActivityMetadataProto(0);
        sub_2146D8F38();
      }

      else if (result == 2)
      {
LABEL_20:
        type metadata accessor for CSDMConversationActivityMetadataProto(0);
        sub_2146D8E98();
      }
    }

    else if (result <= 6)
    {
      if (result != 5)
      {
        goto LABEL_17;
      }

      type metadata accessor for CSDMConversationActivityMetadataProto(0);
      sub_2146D8EC8();
    }

    else
    {
      switch(result)
      {
        case 7:
          sub_21401C8DC(a1, v5, a2, a3);
          break;
        case 8:
          goto LABEL_20;
        case 9:
LABEL_17:
          type metadata accessor for CSDMConversationActivityMetadataProto(0);
          sub_2146D8F58();
          break;
      }
    }
  }
}

uint64_t sub_21401C8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CSDMConversationActivityMetadataProto(0);
  type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  sub_214027000(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto, aAr_0);
  return sub_2146D8F98();
}

uint64_t sub_21401C990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityMetadataProto);
  if (!v4)
  {
    sub_21401CB00(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityMetadataProto);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityMetadataProto, 3);
    sub_21401BA88(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivityMetadataProto, 4);
    sub_21401CB7C(v3, a1, a2, a3);
    sub_21401CC1C(v3, a1, a2, a3);
    sub_21401CC94(v3, a1, a2, a3);
    sub_21401CEA4(v3, a1, a2, a3);
    sub_21401CF1C(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21401CB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21401CB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v6 = a1 + *(result + 36);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21402D9F8(*v6, *(v6 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

uint64_t sub_21401CC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_21401CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  sub_213FB2E54(a1 + *(v12 + 44), v7, &unk_27C9036F0, "а\r");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &unk_27C9036F0, "а\r");
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
  sub_214027000(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto, aAr_0);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
}

uint64_t sub_21401CEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21401CF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  if ((*(a1 + *(result + 52) + 4) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_21401CF94@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  *(a2 + v4) = 2;
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[10];
  *(a2 + a1[9]) = xmmword_2146E68C0;
  v10 = a2 + v9;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[11];
  v12 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  result = (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v14 = a1[13];
  *(a2 + a1[12]) = 2;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_21401D0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DD0, type metadata accessor for CSDMConversationActivityMetadataProto, byte_2146E8690);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401D158(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto, byte_2146E86C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401D1C4(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto, byte_2146E86C8);

  return sub_2146D9008();
}

uint64_t sub_21401D244()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19860);
  __swift_project_value_buffer(v0, qword_27CA19860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2146E6960;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "identifierUUIDString";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "applicationContext";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "bundleIdentifier";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "activityIdentifier";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "metadata";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "activityContext";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "originatorHandle";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "updatedDateEpochTime";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "fallbackApplicationName";
  *(v22 + 8) = 23;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "activityMetadata";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "isSystemActivity";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "timestampAsTimeIntervalSinceReferenceDate";
  *(v28 + 1) = 41;
  v28[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21401D6B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xF000000000000000;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xF000000000000000;
  v1 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  v2 = type metadata accessor for CSDMConversationActivityContextProto(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  v4 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  v8 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity) = 2;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate;
  *v9 = 0;
  *(v9 + 8) = 1;
  return v0;
}

void *sub_21401D814()
{

  sub_213FDC6BC(*(v0 + 32), *(v0 + 40));

  sub_213FDC6BC(*(v0 + 80), *(v0 + 88));
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext, &qword_27C903DA0, &qword_2146E9880);
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle, &unk_27C903788, "Į\r");

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata, &qword_27C903D90, &qword_2146E9870);
  return v0;
}

uint64_t sub_21401D8E0(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_21401D960(uint64_t a1)
{
  sub_21400E518(319, &qword_27C903658, type metadata accessor for CSDMConversationActivityContextProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21400E518(319, &unk_27C903660, type metadata accessor for CSDMConversationActivityMetadataProto, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_21401DC8C(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21402F448(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21400E518(319, &qword_27C903710, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21401DEE8(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21401E02C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  sub_2146D8DF8();
  if (v11 <= 0x3F)
  {
    sub_21402F448(319, a4, a5, MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      sub_21402F448(319, a6, a7, MEMORY[0x277D83D88]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CSDMConversationMessageProto.ConversationMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CSDMConversationMessageProto.ConversationMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_749Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_750Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_21401E4E0(uint64_t a1)
{
  sub_21400E518(319, &qword_27C9037A8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v2 <= 0x3F)
    {
      sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21402F448(319, &qword_280B34BD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_21402F448(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_21402F448(319, &qword_27C9037B0, &type metadata for CSDMConversationLinkProto.ConversationLinkLifetimeScope, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CSDMConversationLinkProto.ConversationLinkLifetimeScope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CSDMConversationLinkProto.ConversationLinkLifetimeScope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_21401E900(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_27C9037D8, &type metadata for CSDMCallMessageProto.CallMessageType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21400E518(319, &qword_27C9037E0, type metadata accessor for CSDMAVConferenceInviteDataProto, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MBDChipType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MBDChipType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_21401EC44(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_778Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_779Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 4;
  }

  return result;
}

void sub_21401EEB8(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21402F448(319, &unk_27C903810, &type metadata for CSDMConversationParticipantDidLeaveContextProto.LeaveReason, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21401F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_2146D8DF8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21401F140(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21402F448(319, &qword_280B2E320, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21401F2E0(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21400E518(319, &unk_27C903878, type metadata accessor for CSDMConversationActivityProto, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B34BD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21401F434(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_27C903898, &type metadata for CSDMHandleProto.HandleType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MBDOpenWebViewMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MBDOpenWebViewMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}