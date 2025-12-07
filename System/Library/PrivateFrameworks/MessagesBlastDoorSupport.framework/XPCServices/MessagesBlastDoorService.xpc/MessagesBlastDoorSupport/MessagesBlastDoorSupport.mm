void sub_100007AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100007B28(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE0B8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100007C6C;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0B90;
    v6 = 0;
    qword_1000FE0B8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE0B8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("WKUIBlastDoorDataSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C0EA8();
  }

  qword_1000FE0B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007C6C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000FE0B8 = result;
  return result;
}

void sub_1000096B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000096E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [a2 isEqualToString:{*(a1 + 32), a4, a5, a6}];
  if (result)
  {
    v12 = *(*(a1 + 40) + 8);
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *a7 = 1;
  }

  return result;
}

id sub_100009BE8(uint64_t a1)
{
  if (qword_1000FE0C8 != -1)
  {
    sub_1000C0ED0();
  }

  v2 = qword_1000FE0C0;

  return v2;
}

void sub_100009FC8(id a1)
{
  v1 = +[NSCharacterSet controlCharacterSet];
  v2 = [v1 mutableCopy];

  [v2 invert];
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  [v2 invert];
  WORD2(v7) = 6158;
  LODWORD(v7) = 537731084;
  v4 = [[NSString alloc] initWithCharactersNoCopy:&v7 length:3 freeWhenDone:0];
  [v2 removeCharactersInString:{v4, v7}];
  v5 = [v2 copy];
  v6 = qword_1000FE0C0;
  qword_1000FE0C0 = v5;
}

void sub_10000A0D0(id a1)
{
  v1 = sub_100009BE8(a1);
  v4 = [v1 mutableCopy];

  [v4 addCharactersInString:MBDIMAttachmentCharacterString];
  [v4 addCharactersInString:MBDIMBreadcrumbCharacterString];
  v2 = [v4 copy];
  v3 = qword_1000FE0D0;
  qword_1000FE0D0 = v2;
}

void sub_10000A274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000A294(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE0E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000A3D8;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0C50;
    v6 = 0;
    qword_1000FE0E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE0E8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SWCollaborationClearNoticeTransmissionMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C0EF8();
  }

  qword_1000FE0E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000A3D8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000FE0E8 = result;
  return result;
}

void sub_10000A90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000AA28(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE0F8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000AB6C;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0C68;
    v6 = 0;
    qword_1000FE0F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE0F8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FKOrderMessagesPreviewMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C0F20();
  }

  qword_1000FE0F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000AB6C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000FE0F8 = result;
  return result;
}

void sub_10000B73C(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKey:v8];
  if (v7)
  {
    [v6 setObject:v7 forKey:v8];
    [v5 removeObjectForKey:v8];
  }
}

id MBDIMCopyNormalizedAttributes(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 & 1) != 0 || (a3)
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v6 keyEnumerator];
    v8 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];
          if (a2)
          {
            v14 = [v12 lowercaseString];

            v12 = v14;
          }

          if (a3)
          {
            v15 = [v13 lowercaseString];

            v13 = v15;
          }

          [v7 setObject:v13 forKey:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = [v5 copy];
  }

  return v7;
}

double transcriptWaveformWidthForDuration(double a1)
{
  if (a1 >= 20.0)
  {
    return 150.0;
  }

  v1 = (log2(a1 + 1.0) * 50.0 / 4.39231742);
  if (v1 <= 0x19)
  {
    v1 = 25;
  }

  return (3 * v1);
}

AudioMetadata *audioMetadataForFileURL(void *a1)
{
  v78 = a1;
  v77 = objc_alloc_init(AudioMetadata);
  v76 = 0;
  v75 = 0;
  outExtAudioFile = 0;
  memset(&__b, 0, sizeof(__b));
  v1 = malloc_type_malloc(0x8000uLL, 0x1000040BDFB0063uLL);
  v74 = v1;
  if (v1)
  {
    if (v78)
    {
      v2 = ExtAudioFileOpenURL(v78, &outExtAudioFile);
      if (outExtAudioFile)
      {
        outPropertyData = 0;
        ioPropertyDataSize = 8;
        Property = ExtAudioFileGetProperty(outExtAudioFile, 0x6166696Cu, &ioPropertyDataSize, &outPropertyData);
        v66 = Property;
        if (Property)
        {
          v65 = sub_10000CC54(Property);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v64 = sub_10000CCB4(v66);
            sub_10000CCA0(v105, v64);
            _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Unable to get audioID: %@", v105, 0xCu);
          }
        }

        else
        {
          v88 = 0;
          ioDataSize = 4;
          v4 = AudioFileGetProperty(outPropertyData, 0x66666D74u, &ioDataSize, &v88);
          v63 = v88 == 1667327590;
          v62 = v88 == 1634562662;
          if (v88 == 1667327590 || v88 == 1634562662)
          {
            v86 = 0.0;
            v85 = 8;
            v5 = AudioFileGetProperty(outPropertyData, 0x65647572u, &v85, &v86);
            v67 = v5;
            if (v5)
            {
              v60 = sub_10000CC54(v5);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                v59 = sub_10000CCB4(v67);
                sub_10000CCA0(v104, v59);
                _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Unable to get duration: %@", v104, 0xCu);
              }
            }

            else
            {
              [(AudioMetadata *)v77 setDuration:v86];
              v58 = transcriptWaveformWidthForDuration(v86);
              v6 = powerLevelsCountForWidth(v58);
              v57 = v6;
              if (v6 && v6 < 0x3E8)
              {
                v75 = [[NSMutableArray alloc] initWithCapacity:v6];

                if (v75)
                {
                  for (i = 0; i < v57; ++i)
                  {
                    v9 = [NSNumber numberWithUnsignedInteger:0];
                    [v75 addObject:v9];
                  }

                  v53 = v86 / v57;
                  memset(v84, 0, sizeof(v84));
                  v83 = 40;
                  v10 = ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &v83, v84);
                  v68 = v10;
                  if (v10)
                  {
                    v52 = sub_10000CC54(v10);
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      v51 = sub_10000CCB4(v68);
                      sub_10000CCA0(v102, v51);
                      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Unable to get sourceFormat: %@", v102, 0xCu);
                    }
                  }

                  else if (!v63 || LODWORD(v84[1]) == 1869641075)
                  {
                    if (!v62 || LODWORD(v84[1]) == 1935764850)
                    {
                      v13 = memset(inPropertyData, 0, sizeof(inPropertyData));
                      if (v84[0] > 0.0 && v84[0] < 72000.0)
                      {
                        inPropertyData[0] = v84[0];
                        *&inPropertyData[1] = 0x96C70636DLL;
                        LODWORD(inPropertyData[4]) = 32;
                        *&inPropertyData[3] = 0x100000004;
                        *&inPropertyData[2] = 0x100000004;
                        v15 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
                        v69 = v15;
                        if (v15)
                        {
                          v47 = sub_10000CC54(v15);
                          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                          {
                            v46 = sub_10000CCB4(v69);
                            sub_10000CCA0(v98, v46);
                            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Unable to set clientFormat: %@", v98, 0xCu);
                          }
                        }

                        else
                        {
                          v45 = 0.0;
                          v76 = [[NSMutableArray alloc] initWithCapacity:v57];

                          if (v76)
                          {
                            for (j = 0; j < v57; ++j)
                            {
                              v17 = [NSNumber numberWithFloat:0.0];
                              [v76 addObject:v17];
                            }

                            do
                            {
                              __b.mNumberBuffers = 1;
                              __b.mBuffers[0].mNumberChannels = 1;
                              __b.mBuffers[0].mDataByteSize = 0x8000;
                              __b.mBuffers[0].mData = v74;
                              ioNumberFrames = 0x2000;
                              v18 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &__b);
                              v70 = v18;
                              if (!v18 && ioNumberFrames)
                              {
                                v44 = ioNumberFrames / inPropertyData[0];
                                mData = __b.mBuffers[0].mData;
                                v39 = __b.mBuffers[0].mDataByteSize / LODWORD(inPropertyData[3]);
                                for (k = 0; k < v39; ++k)
                                {
                                  if ((mData[k] * 32767.0) >= 0x7FFF)
                                  {
                                    v19 = 0x7FFF;
                                  }

                                  else
                                  {
                                    v19 = mData[k] * 32767.0;
                                  }

                                  if (v19 < -32768)
                                  {
                                    v19 = -32768;
                                  }

                                  v37 = v19;
                                  if (v39 == 1)
                                  {
                                    v36 = v45;
                                  }

                                  else
                                  {
                                    v36 = v45 + k / (v39 - 1) * v44;
                                  }

                                  if (v36 / v53 >= (v57 - 1))
                                  {
                                    v20 = (v57 - 1);
                                  }

                                  else
                                  {
                                    v20 = v36 / v53;
                                  }

                                  v35 = v20;
                                  v21 = [v76 objectAtIndex:v20];
                                  [v21 floatValue];
                                  v23 = pow(v22, 2.0);
                                  v24 = [v75 objectAtIndex:v35];
                                  v25 = [v24 unsignedIntegerValue];
                                  v26 = pow(v37, 2.0) + v23 * v25;
                                  v27 = [v75 objectAtIndex:v35];
                                  *&v26 = sqrt(v26 / ([v27 unsignedIntegerValue] + 1));

                                  LODWORD(v28) = LODWORD(v26);
                                  v29 = [NSNumber numberWithFloat:v28];
                                  [v76 setObject:v29 atIndexedSubscript:v35];

                                  v30 = [v75 objectAtIndex:v35];
                                  v31 = [v30 unsignedIntegerValue] + 1;

                                  v32 = [NSNumber numberWithUnsignedInteger:v31];
                                  [v75 replaceObjectAtIndex:v35 withObject:v32];
                                }

                                v45 = v45 + v44;
                                v34 = 0;
                              }

                              else
                              {
                                oslog = sub_10000CC54(v18);
                                if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                                {
                                  v40 = sub_10000CCB4(v70);
                                  sub_10000CCA0(v97, v40);
                                  _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unable to determine ioNumberFrames: %@", v97, 0xCu);
                                }

                                v34 = 2;
                              }
                            }

                            while (!v34);
                          }

                          else
                          {
                            v43 = sub_10000CC54(v16);
                            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                            {
                              sub_10000CC98(v92);
                              _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Unable to allocate powerLevels", v92, 2u);
                            }
                          }
                        }
                      }

                      else
                      {
                        v48 = sub_10000CC54(v13);
                        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                        {
                          v14 = [NSNumber numberWithDouble:v84[0]];
                          sub_10000CCA0(v99, v14);
                          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "mSampleRate is out of bounds: %@", v99, 0xCu);
                        }
                      }
                    }

                    else
                    {
                      v49 = sub_10000CC54(v10);
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                      {
                        v12 = [NSNumber numberWithUnsignedInt:LODWORD(v84[1])];
                        sub_10000CCA0(v100, v12);
                        _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Format is not AMR: %@", v100, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v50 = sub_10000CC54(v10);
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                    {
                      v11 = [NSNumber numberWithUnsignedInt:LODWORD(v84[1])];
                      sub_10000CCA0(v101, v11);
                      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Format is not OPUS: %@", v101, 0xCu);
                    }
                  }
                }

                else
                {
                  v55 = sub_10000CC54(v8);
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                  {
                    sub_10000CC98(v93);
                    _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Unable to allocate runningAverageCounts", v93, 2u);
                  }
                }
              }

              else
              {
                v56 = sub_10000CC54(v6);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  v7 = [NSNumber numberWithUnsignedInteger:v57];
                  sub_10000CCA0(v103, v7);
                  _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failing because powerLevelsCount is out of bounds: %@", v103, 0xCu);
                }
              }
            }
          }

          else
          {
            v61 = sub_10000CC54(v4);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              sub_10000CC98(v94);
              _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Container is not CAF or AMR.", v94, 2u);
            }
          }
        }
      }

      else
      {
        v71 = sub_10000CC54(v2);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          sub_10000CCA0(v106, v78);
          _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Unable to open file url: %@", v106, 0xCu);
        }
      }
    }

    else
    {
      v72 = sub_10000CC54(v1);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_10000CC98(v95);
        _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "No input file URL", v95, 2u);
      }
    }
  }

  else
  {
    v73 = sub_10000CC54(0);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_10000CC98(buf);
      _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Couldn't allocate output buffer", buf, 2u);
    }
  }

  if (outExtAudioFile)
  {
    ExtAudioFileDispose(outExtAudioFile);
  }

  if (v74)
  {
    free(v74);
  }

  [(AudioMetadata *)v77 setPowerLevels:v76];
  v79 = v77;

  return v79;
}

id sub_10000CC54(uint64_t a1)
{
  if (qword_1000FE100 != -1)
  {
    sub_1000C0F48();
  }

  v2 = qword_1000FE108;

  return v2;
}

double sub_10000CCA0(uint64_t a1, uint64_t a2)
{
  *&result = 138412290;
  *a1 = 138412290;
  *(a1 + 4) = a2;
  return result;
}

const __CFString *sub_10000CCB4(int a1)
{
  if (a1 < 0)
  {
    if (a1 == -1502)
    {
      return @"kAudioServicesSystemSoundExceededMaximumDurationError";
    }

    if (a1 != -1501)
    {
      if (a1 == -1500)
      {
        return @"kAudioServicesSystemSoundUnspecifiedError";
      }

      return @"Unknown Error";
    }

    return @"kAudioServicesSystemSoundClientTimedOutError";
  }

  else if (a1 > 561213538)
  {
    if (a1 != 561213539)
    {
      if (a1 == 1886681407)
      {
        return @"kAudioServicesUnsupportedPropertyError";
      }

      return @"Unknown Error";
    }

    return @"kAudioServicesBadSpecifierSizeError";
  }

  else
  {
    if (a1)
    {
      if (a1 == 561211770)
      {
        return @"kAudioServicesBadPropertySizeError";
      }

      return @"Unknown Error";
    }

    return @"kAudioServicesNoError";
  }
}

void sub_10000CD74(id a1)
{
  qword_1000FE108 = os_log_create("com.apple.Messages.blastdoor", "AudioPreviewLevelsGenerator");

  _objc_release_x1();
}

BOOL collaboratonNoticeEventTypeKnown(uint64_t a1)
{
  v2 = [sub_10000CE28() eventClassForType:a1];
  if (!v2)
  {
    v3 = sub_10000CF34(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000C0F5C(a1, v3);
    }
  }

  return v2 != 0;
}

id sub_10000CE28()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000FE110;
  v7 = qword_1000FE110;
  if (!qword_1000FE110)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000D268;
    v3[3] = &unk_1000F0B70;
    v3[4] = &v4;
    sub_10000D268(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000CF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000CF34(uint64_t a1)
{
  if (qword_1000FE120 != -1)
  {
    sub_1000C1000();
  }

  v2 = qword_1000FE128;

  return v2;
}

id unarchiveCollaborationNoticeEvent(void *a1)
{
  v1 = a1;
  v2 = [sub_10000CE28() allowedClasses];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v12[4] = objc_opt_class();
  v12[5] = objc_opt_class();
  v12[6] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v12 count:7];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v11 = 0;
  v5 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v4 fromData:v1 error:&v11];

  v6 = v11;
  v7 = v6;
  if (v6 || !v5)
  {
    v9 = sub_10000CF34(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C1014(v7, v9);
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

Class sub_10000D268(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE118)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000D3AC;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0CA0;
    v6 = 0;
    qword_1000FE118 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE118)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_SWHighlightEventAllowList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C1110();
  }

  qword_1000FE110 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000D3AC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000FE118 = result;
  return result;
}

void sub_10000D420(id a1)
{
  qword_1000FE128 = os_log_create("com.apple.Messages.blastdoor", "CollaborationNotice");

  _objc_release_x1();
}

id SMSCopySanitizedContentLocation(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"cid:"])
  {
    v2 = [v1 mutableCopy];
    [v2 replaceOccurrencesOfString:@"cid:" withString:&stru_1000F64A0 options:2 range:{0, objc_msgSend(@"cid:", "length")}];
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void sub_10000D688(id a1)
{
  qword_1000FE130 = objc_alloc_init(MBDXMLParser);

  _objc_release_x1();
}

id sub_10000D8F0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v3 reset];
  v5 = [[NSXMLParser alloc] initWithData:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v8 = objc_alloc_init(NSMutableArray);
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  *(v11 + 24) = 0;

  [*(*(a1 + 32) + 8) setDelegate:?];
  v13 = *(*(a1 + 32) + 8);

  return [v13 parse];
}

void sub_10000D9AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  [*(*(a1 + 32) + 8) setDelegate:0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;
}

objc_class *sub_10000E004(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (v5 == v4)
  {
LABEL_5:
    v11 = 0;
  }

  else
  {
    Superclass = v5;
    while (1)
    {
      MethodImplementation = class_getMethodImplementation(Superclass, "name");
      v8 = (MethodImplementation)(*(a1 + 32), "name");
      v9 = [[NSString alloc] initWithFormat:@"%@_%@_Frame", v8, a2];
      v10 = NSClassFromString(v9);
      if (v10)
      {
        break;
      }

      Superclass = class_getSuperclass(Superclass);

      if (Superclass == v4)
      {
        goto LABEL_5;
      }
    }

    v11 = v10;
  }

  return v11;
}

unsigned __int8 *MBDIMCreateDictionaryFromCSSString(void *a1, char a2)
{
  v2 = a1;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_47;
  }

  v28 = objc_alloc_init(NSMutableDictionary);
  v3 = [v2 lengthOfBytesUsingEncoding:4];
  if (!v3)
  {
LABEL_44:
    v5 = 0;
    goto LABEL_46;
  }

  v4 = v3;
  v5 = malloc_type_malloc((v3 + 1), 0x781C8EDFuLL);
  if (!v5)
  {
    goto LABEL_46;
  }

  if (![v2 getCString:v5 maxLength:v4 + 1 encoding:4])
  {
    free(v5);
    goto LABEL_44;
  }

  v6 = 0;
  v26 = v5;
  while (1)
  {
    v7 = *v5;
    if (*v5)
    {
      v8 = 0;
      while (1)
      {
        v9 = v5;
        if (v7 > 0x39)
        {
          if (v7 == 58)
          {

            goto LABEL_38;
          }

          if (v7 < 0x3C)
          {
            break;
          }
        }

        do
        {
          v10 = *++v5;
        }

        while (byte_1000C8DA8[v10] < 0);
        v11 = v5 - 1;
        v12 = v9;
        if (v9 < v5)
        {
          while (1)
          {
            v13 = *v9;
            v14 = v13 > 0x27;
            v15 = (1 << v13) & 0x8500002600;
            if (v14 || v15 == 0)
            {
              break;
            }

            v12 = v9 + 1;
            if (v9++ >= v11)
            {
              goto LABEL_19;
            }
          }

          v12 = v9;
        }

LABEL_19:
        v18 = v5;
        if (v11 > v12)
        {
          v19 = v5;
          v18 = v5;
          while (1)
          {
            v20 = *--v18;
            v21 = (1 << v20) & 0x8500002600;
            if (v20 > 0x27 || v21 == 0)
            {
              break;
            }

            v19 = v18;
            if (v18 <= (v12 + 1))
            {
              goto LABEL_26;
            }
          }

          v18 = v19;
        }

LABEL_26:
        v23 = [[NSString alloc] initWithBytes:v12 length:v18 - v12 encoding:4];

        v7 = *v5;
        v8 = v23;
        if (!*v5)
        {
          goto LABEL_31;
        }
      }

      v23 = v8;
      if (v6)
      {
LABEL_32:
        if (v23)
        {
          if (a2)
          {
            v24 = [v6 lowercaseString];
            [v28 setObject:v23 forKey:v24];
          }

          else
          {
            [v28 setObject:v23 forKey:v6];
          }
        }
      }
    }

    else
    {
      v23 = 0;
LABEL_31:
      if (v6)
      {
        goto LABEL_32;
      }
    }

    if (!*v5)
    {
      break;
    }

    v8 = 0;
    v9 = v5;
LABEL_38:
    v5 = v9 + 1;
    v6 = v8;
  }

  free(v26);
  v5 = v28;
LABEL_46:

LABEL_47:
  return v5;
}

id blastdoor_AVTAvatarRecordRenderingGetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000FE148;
  v7 = qword_1000FE148;
  if (!qword_1000FE148)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100010B08;
    v3[3] = &unk_1000F0B70;
    v3[4] = &v4;
    sub_100010B08(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000FFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id blastdoor_AVTAvatarRecordSerializerGetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000FE158;
  v7 = qword_1000FE158;
  if (!qword_1000FE158)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100010CD0;
    v3[3] = &unk_1000F0B70;
    v3[4] = &v4;
    sub_100010CD0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000100E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000103CC()
{
  v1[0] = 0;
  if (!qword_1000FE180)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100011098;
    v1[4] = &unk_1000F0BA8;
    v1[5] = v1;
    v2 = off_1000F0DB8;
    v3 = 0;
    qword_1000FE180 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000FE180)
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

void sub_1000105E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000109A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100010B08(uint64_t a1)
{
  sub_100010B60();
  result = objc_getClass("AVTAvatarRecordRendering");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C11BC();
  }

  qword_1000FE148 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100010B60()
{
  v1[0] = 0;
  if (!qword_1000FE150)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100010C5C;
    v1[4] = &unk_1000F0BA8;
    v1[5] = v1;
    v2 = off_1000F0D70;
    v3 = 0;
    qword_1000FE150 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000FE150)
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

uint64_t sub_100010C5C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000FE150 = result;
  return result;
}

Class sub_100010CD0(uint64_t a1)
{
  sub_100010B60();
  result = objc_getClass("AVTAvatarRecordSerializer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C11E4();
  }

  qword_1000FE158 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100010D28(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE168)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100010E6C;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0D88;
    v6 = 0;
    qword_1000FE168 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE168)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PFServerPosterPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C120C();
  }

  qword_1000FE160 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100010E6C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000FE168 = result;
  return result;
}

Class sub_100010EE0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE178)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100011024;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0DA0;
    v6 = 0;
    qword_1000FE178 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE178)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRSPosterArchiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C1234();
  }

  qword_1000FE170 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100011024(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000FE178 = result;
  return result;
}

uint64_t sub_100011098(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000FE180 = result;
  return result;
}

Class sub_10001110C(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterSystemTimeFontConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C125C();
  }

  qword_1000FE188 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100011164(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterContentDiscreteColorsStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C1284();
  }

  qword_1000FE190 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000111BC(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterContentGradientStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C12AC();
  }

  qword_1000FE198 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100011214(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterContentVibrantMaterialStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C12D4();
  }

  qword_1000FE1A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10001126C(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterContentVibrantMonochromeStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C12FC();
  }

  qword_1000FE1A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id extractFirstContactFromData(uint64_t a1)
{
  v7 = 0;
  v1 = [CNContactVCardSerialization summaryOfVCard:a1 error:&v7];
  v2 = v1;
  if (v7)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3 || ![v1 contactCount])
  {
    v5 = 0;
  }

  else
  {
    v4 = [v2 avatarContacts];
    v5 = [v4 firstObject];
  }

  return v5;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000124CC(&qword_1000FC090, &qword_1000C8EB0);
  __chkstk_darwin(v3 - 8);
  v40 = &v29 - v4;
  v39 = sub_1000C55D4();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000C55E4();
  __chkstk_darwin(v36);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C1C94();
  __chkstk_darwin(v7 - 8);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000C1A34();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000C19F4();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C1A14();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C19D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_1000C1D64();
  qword_10010AC50 = sub_1000C1CF4();
  qword_10010AC58 = &off_1000F0F50;
  sub_1000C1CC4();
  qword_10010AC60 = &off_1000F1030;
  sub_1000C1CD4();
  sub_1000C3C14();
  sub_100012514();
  sub_1000C1D04();
  sub_1000C3F44();
  sub_100012568();
  sub_1000C1D04();
  sub_1000C4544();
  sub_1000125BC();
  sub_1000C1D04();
  sub_1000C3BC4();
  sub_100012610();
  sub_1000C1D04();
  sub_1000C3464();
  sub_100012664();
  sub_1000C1D04();
  sub_1000C42E4();
  sub_1000126B8();
  sub_1000C1D04();
  sub_1000C4214();
  sub_10001270C();
  sub_1000C1D04();
  sub_1000C4994();
  sub_100012760();
  sub_1000C1D04();
  sub_1000C4BC4();
  sub_1000127B4();
  sub_1000C1D04();
  sub_1000C2384();
  sub_100012808();
  sub_1000C1D04();
  sub_1000C33E4();
  sub_10001285C();
  sub_1000C1D04();
  sub_1000C2184();
  sub_1000128B0();
  sub_1000C1D04();
  sub_1000C2E24();
  sub_100012904();
  sub_1000C1D04();
  sub_1000C4394();
  sub_100012958();
  sub_1000C1D04();
  sub_1000C42A4();
  sub_1000129AC();
  sub_1000C1D04();
  sub_1000C3DE4();
  sub_100012A00();
  sub_1000C1D04();
  sub_1000C22A4();
  sub_100012A54();
  sub_1000C1D04();
  sub_1000C2214();
  sub_100012AA8();
  sub_1000C1D04();
  sub_1000C1E54();
  sub_100012AFC();
  sub_1000C1D04();
  sub_1000C4974();
  sub_100012B50();
  sub_1000C1D04();
  sub_1000C19C4();
  sub_1000C3474();
  sub_100012BA4(&qword_1000FC138, &type metadata accessor for LiteTextMessageUnpacker, &protocol conformance descriptor for LiteTextMessageUnpacker);
  sub_1000C1D04();
  (*(v17 + 8))(v19, v16);
  sub_1000C1A04();
  sub_1000C4404();
  sub_100012BA4(&qword_1000FC140, &type metadata accessor for SatelliteSMSTextMessageUnpacker, &protocol conformance descriptor for SatelliteSMSTextMessageUnpacker);
  sub_1000C1D04();
  (*(v13 + 8))(v15, v12);
  sub_1000C4AA4();
  sub_100012BEC();
  sub_1000C1D04();
  sub_1000C19E4();
  sub_1000C4084();
  sub_100012BA4(&qword_1000FC150, &type metadata accessor for LiteRelayTextMessageUnpacker, &protocol conformance descriptor for LiteRelayTextMessageUnpacker);
  v20 = v29;
  sub_1000C1D04();
  (*(v30 + 8))(v11, v20);
  sub_1000C1FD4();
  sub_100012C40();
  sub_1000C1D24();
  sub_1000C4344();
  sub_100012C94();
  sub_1000C1D04();
  v21 = v31;
  sub_1000C1A24();
  sub_1000C4634();
  sub_100012BA4(&qword_1000FC168, &type metadata accessor for RelayGroupMutationMessageUnpacker, &protocol conformance descriptor for RelayGroupMutationMessageUnpacker);
  v22 = v32;
  sub_1000C1D04();
  (*(v33 + 8))(v21, v22);
  sub_1000C4524();
  sub_100012CE8();
  sub_1000C1D04();
  sub_1000C4654();
  sub_100012D3C();
  sub_1000C1D04();
  sub_1000C4494();
  sub_100012D90();
  sub_1000C1D14();
  sub_1000C4104();
  sub_100012DE4();
  sub_1000C1D34();
  sub_1000C3E14();
  sub_100012E38();
  sub_1000C1D34();
  sub_1000C25F4();
  sub_100012E8C();
  sub_1000C1D34();
  sub_1000C3D84();
  sub_100012EE0();
  sub_1000C1D54();
  strcpy(&v41, "maps.apple.com");
  HIBYTE(v41) = -18;
  *&v42 = 0x6F6F672E7370616DLL;
  *(&v42 + 1) = 0xEF6D6F632E656C67;
  *&v43 = 27756;
  *(&v43 + 1) = 0xE200000000000000;
  *&v44 = 7105651;
  *(&v44 + 1) = 0xE300000000000000;
  *&v45 = 113;
  *(&v45 + 1) = 0xE100000000000000;
  *&v46 = 0xD000000000000013;
  *(&v46 + 1) = 0x80000001000D5240;
  sub_1000C40A4();
  sub_100012F34();
  sub_1000C1D04();
  v47[2] = v43;
  v47[3] = v44;
  v47[4] = v45;
  v47[5] = v46;
  v47[0] = v41;
  v47[1] = v42;
  sub_100012F88(v47);
  sub_100012FDC();
  sub_1000C1C84();
  *&v41 = _swiftEmptyArrayStorage;
  sub_100012BA4(&qword_1000FC1B8, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_1000124CC(&qword_1000FC1C0, &qword_1000C8EB8);
  sub_100013028();
  sub_1000C58D4();
  (*(v38 + 104))(v37, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v39);
  v23 = sub_1000C55F4();
  *&v41 = v23;
  sub_1000C2764();
  sub_1000130D4();
  sub_1000C1D54();

  sub_1000C3BB4();
  sub_100013128();
  sub_1000C1D34();
  sub_1000C3104();
  sub_10001317C();
  sub_1000C1D04();
  sub_1000C2164();
  sub_1000131D0();
  sub_1000C1D34();
  sub_1000C23F4();
  sub_100013224();
  sub_1000C1D34();
  sub_1000C2594();
  sub_100013278();
  sub_1000C1D34();
  *&v41 = 0xD000000000000022;
  *(&v41 + 1) = 0x80000001000D5280;
  sub_1000C3374();
  sub_1000132CC();
  sub_1000C1D44();
  sub_1000C3CD4();
  sub_100013320();
  sub_1000C1D04();
  sub_1000C4F84();
  sub_100013374();
  sub_1000C1D14();
  sub_1000C1D94();
  sub_1000133C8();
  sub_1000C1D34();
  sub_1000C3544();
  sub_10001341C();
  sub_1000C1D04();
  sub_1000C3F64();
  sub_100013470();
  sub_1000C1D04();
  sub_1000C45D4();
  sub_1000134C4();
  sub_1000C1D04();
  sub_1000C4424();
  sub_100013518();
  sub_1000C1D04();
  sub_1000C40D4();
  sub_10001356C();
  sub_1000C1D04();
  sub_1000C1DE4();
  sub_1000135C0();
  sub_1000C1D34();
  sub_1000C2E14();
  sub_100013614();
  sub_1000C1D34();
  v24 = enum case for SandboxID.blastdoor(_:);
  v25 = sub_1000C5054();
  v26 = *(v25 - 8);
  v27 = v40;
  (*(v26 + 104))(v40, v24, v25);
  (*(v26 + 56))(v27, 0, 1, v25);
  sub_1000C1CE4();
  sub_100013668(v27);
  return 0;
}

uint64_t sub_1000124CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100012514()
{
  result = qword_1000FC098;
  if (!qword_1000FC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC098);
  }

  return result;
}

unint64_t sub_100012568()
{
  result = qword_1000FC0A0;
  if (!qword_1000FC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0A0);
  }

  return result;
}

unint64_t sub_1000125BC()
{
  result = qword_1000FC0A8;
  if (!qword_1000FC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0A8);
  }

  return result;
}

unint64_t sub_100012610()
{
  result = qword_1000FC0B0;
  if (!qword_1000FC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0B0);
  }

  return result;
}

unint64_t sub_100012664()
{
  result = qword_1000FC0B8;
  if (!qword_1000FC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0B8);
  }

  return result;
}

unint64_t sub_1000126B8()
{
  result = qword_1000FC0C0;
  if (!qword_1000FC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0C0);
  }

  return result;
}

unint64_t sub_10001270C()
{
  result = qword_1000FC0C8;
  if (!qword_1000FC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0C8);
  }

  return result;
}

unint64_t sub_100012760()
{
  result = qword_1000FC0D0;
  if (!qword_1000FC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0D0);
  }

  return result;
}

unint64_t sub_1000127B4()
{
  result = qword_1000FC0D8;
  if (!qword_1000FC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0D8);
  }

  return result;
}

unint64_t sub_100012808()
{
  result = qword_1000FC0E0;
  if (!qword_1000FC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0E0);
  }

  return result;
}

unint64_t sub_10001285C()
{
  result = qword_1000FC0E8;
  if (!qword_1000FC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0E8);
  }

  return result;
}

unint64_t sub_1000128B0()
{
  result = qword_1000FC0F0;
  if (!qword_1000FC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0F0);
  }

  return result;
}

unint64_t sub_100012904()
{
  result = qword_1000FC0F8;
  if (!qword_1000FC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0F8);
  }

  return result;
}

unint64_t sub_100012958()
{
  result = qword_1000FC100;
  if (!qword_1000FC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC100);
  }

  return result;
}

unint64_t sub_1000129AC()
{
  result = qword_1000FC108;
  if (!qword_1000FC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC108);
  }

  return result;
}

unint64_t sub_100012A00()
{
  result = qword_1000FC110;
  if (!qword_1000FC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC110);
  }

  return result;
}

unint64_t sub_100012A54()
{
  result = qword_1000FC118;
  if (!qword_1000FC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC118);
  }

  return result;
}

unint64_t sub_100012AA8()
{
  result = qword_1000FC120;
  if (!qword_1000FC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC120);
  }

  return result;
}

unint64_t sub_100012AFC()
{
  result = qword_1000FC128;
  if (!qword_1000FC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC128);
  }

  return result;
}

unint64_t sub_100012B50()
{
  result = qword_1000FC130;
  if (!qword_1000FC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC130);
  }

  return result;
}

uint64_t sub_100012BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012BEC()
{
  result = qword_1000FC148;
  if (!qword_1000FC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC148);
  }

  return result;
}

unint64_t sub_100012C40()
{
  result = qword_1000FC158;
  if (!qword_1000FC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC158);
  }

  return result;
}

unint64_t sub_100012C94()
{
  result = qword_1000FC160;
  if (!qword_1000FC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC160);
  }

  return result;
}

unint64_t sub_100012CE8()
{
  result = qword_1000FC170;
  if (!qword_1000FC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC170);
  }

  return result;
}

unint64_t sub_100012D3C()
{
  result = qword_1000FC178;
  if (!qword_1000FC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC178);
  }

  return result;
}

unint64_t sub_100012D90()
{
  result = qword_1000FC180;
  if (!qword_1000FC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC180);
  }

  return result;
}

unint64_t sub_100012DE4()
{
  result = qword_1000FC188;
  if (!qword_1000FC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC188);
  }

  return result;
}

unint64_t sub_100012E38()
{
  result = qword_1000FC190;
  if (!qword_1000FC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC190);
  }

  return result;
}

unint64_t sub_100012E8C()
{
  result = qword_1000FC198;
  if (!qword_1000FC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC198);
  }

  return result;
}

unint64_t sub_100012EE0()
{
  result = qword_1000FC1A0;
  if (!qword_1000FC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1A0);
  }

  return result;
}

unint64_t sub_100012F34()
{
  result = qword_1000FC1A8;
  if (!qword_1000FC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1A8);
  }

  return result;
}

unint64_t sub_100012FDC()
{
  result = qword_1000FC1B0;
  if (!qword_1000FC1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FC1B0);
  }

  return result;
}

unint64_t sub_100013028()
{
  result = qword_1000FC1C8;
  if (!qword_1000FC1C8)
  {
    sub_10001308C(&qword_1000FC1C0, &qword_1000C8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1C8);
  }

  return result;
}

uint64_t sub_10001308C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000130D4()
{
  result = qword_1000FC1D0;
  if (!qword_1000FC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1D0);
  }

  return result;
}

unint64_t sub_100013128()
{
  result = qword_1000FC1D8;
  if (!qword_1000FC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1D8);
  }

  return result;
}

unint64_t sub_10001317C()
{
  result = qword_1000FC1E0;
  if (!qword_1000FC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1E0);
  }

  return result;
}

unint64_t sub_1000131D0()
{
  result = qword_1000FC1E8;
  if (!qword_1000FC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1E8);
  }

  return result;
}

unint64_t sub_100013224()
{
  result = qword_1000FC1F0;
  if (!qword_1000FC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1F0);
  }

  return result;
}

unint64_t sub_100013278()
{
  result = qword_1000FC1F8;
  if (!qword_1000FC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1F8);
  }

  return result;
}

unint64_t sub_1000132CC()
{
  result = qword_1000FC200;
  if (!qword_1000FC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC200);
  }

  return result;
}

unint64_t sub_100013320()
{
  result = qword_1000FC208;
  if (!qword_1000FC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC208);
  }

  return result;
}

unint64_t sub_100013374()
{
  result = qword_1000FC210;
  if (!qword_1000FC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC210);
  }

  return result;
}

unint64_t sub_1000133C8()
{
  result = qword_1000FC218;
  if (!qword_1000FC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC218);
  }

  return result;
}

unint64_t sub_10001341C()
{
  result = qword_1000FC220;
  if (!qword_1000FC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC220);
  }

  return result;
}

unint64_t sub_100013470()
{
  result = qword_1000FC228;
  if (!qword_1000FC228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC228);
  }

  return result;
}

unint64_t sub_1000134C4()
{
  result = qword_1000FC230;
  if (!qword_1000FC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC230);
  }

  return result;
}

unint64_t sub_100013518()
{
  result = qword_1000FC238;
  if (!qword_1000FC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC238);
  }

  return result;
}

unint64_t sub_10001356C()
{
  result = qword_1000FC240;
  if (!qword_1000FC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC240);
  }

  return result;
}

unint64_t sub_1000135C0()
{
  result = qword_1000FC248;
  if (!qword_1000FC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC248);
  }

  return result;
}

unint64_t sub_100013614()
{
  result = qword_1000FC250;
  if (!qword_1000FC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC250);
  }

  return result;
}

uint64_t sub_100013668(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC090, &qword_1000C8EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000136DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

Swift::Int sub_1000137C4(uint64_t a1, uint64_t a2)
{
  sub_1000C5CB4();
  swift_getWitnessTable();
  sub_1000C16D4();
  return sub_1000C5CD4();
}

uint64_t sub_10001382C()
{
  sub_1000C5224();
  v0 = sub_1000C5344();

  return v0;
}

uint64_t sub_100013868(uint64_t a1)
{
  sub_1000C5224();
  sub_1000C52C4();
}

Swift::Int sub_1000138BC()
{
  sub_1000C5224();
  sub_1000C5CB4();
  sub_1000C52C4();
  v0 = sub_1000C5CD4();

  return v0;
}

uint64_t sub_100013938(uint64_t a1, id *a2)
{
  result = sub_1000C5204();
  *a2 = 0;
  return result;
}

uint64_t sub_1000139B0(uint64_t a1, id *a2)
{
  v3 = sub_1000C5214();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100013A30@<X0>(uint64_t *a2@<X8>)
{
  sub_1000C5224();
  v3 = sub_1000C51F4();

  *a2 = v3;
  return result;
}

uint64_t sub_100013A74(void *a1, uint64_t *a2)
{
  v2 = sub_1000C5224();
  v4 = v3;
  if (v2 == sub_1000C5224() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000C5C04();
  }

  return v7 & 1;
}

void *sub_100013AFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100013B0C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1000C16C4();
}

uint64_t sub_100013B78@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000C51F4();

  *a2 = v3;
  return result;
}

uint64_t sub_100013BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C5224();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013BEC(uint64_t a1)
{
  v2 = sub_100012BA4(&qword_1000FC280, type metadata accessor for Key, &unk_1000C9004);
  v3 = sub_100012BA4(&qword_1000FC288, type metadata accessor for Key, &unk_1000C8FA4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

__n128 sub_100013D94(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013DA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100013E50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100013E64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013E84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100013ED0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013EF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100013F2C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013F40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013F60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_100014094(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100014100()
{
  result = qword_1000FC310;
  if (!qword_1000FC310)
  {
    sub_1000C2594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC310);
  }

  return result;
}

Swift::Int sub_100014160()
{
  sub_1000C5CB4();
  sub_1000C5CC4(0);
  return sub_1000C5CD4();
}

Swift::Int sub_1000141CC()
{
  sub_1000C5CB4();
  sub_1000C5CC4(0);
  return sub_1000C5CD4();
}

void sub_10001421C()
{
  v0 = sub_1000C14E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C4CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v5 + 8))(v7, v4);
  sub_1000C1494(v8);
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v11 = audioMetadataForFileURL(v10);

  if (v11)
  {
    v12 = [(AudioMetadata *)v11 powerLevels];
    if (v12)
    {
      v13 = v12;
      sub_1000146D8();
      v14 = sub_1000C53A4();

      v15 = sub_10001446C(v14);

      if (v15)
      {
        [(AudioMetadata *)v11 duration];
        sub_1000C2584();

        return;
      }
    }
  }

  sub_100014684();
  swift_allocError();
  swift_willThrow();
}

void *sub_10001446C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C59A4())
  {
    sub_10004592C(0, i & ~(i >> 63), 0);
    v4 = _swiftEmptyArrayStorage;
    if (v2)
    {
      v2 = sub_1000C59A4();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = sub_1000C5954();
LABEL_10:
  v6 = v5;
  sub_1000C5464();

  return 0;
}

unint64_t sub_100014684()
{
  result = qword_1000FC318;
  if (!qword_1000FC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC318);
  }

  return result;
}

unint64_t sub_1000146D8()
{
  result = qword_1000FC320;
  if (!qword_1000FC320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FC320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAudioUnpacker.PreviewAudioUnpackerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PreviewAudioUnpacker.PreviewAudioUnpackerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100014814()
{
  result = qword_1000FC328;
  if (!qword_1000FC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC328);
  }

  return result;
}

uint64_t sub_1000148C0@<X0>(uint64_t a3@<X8>)
{
  v37 = a3;
  v4 = sub_1000C4994();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  sub_1000C1464();
  swift_allocObject();
  v11 = sub_1000C1454();
  sub_100014F1C();
  v54 = v11;
  sub_1000C1444();
  v38 = v3;
  if (v3)
  {
    sub_100014F70();
    v12 = sub_1000C5834();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000C94D0;
    *&v40 = v3;
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v14 = sub_1000C4A84();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100014FBC();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v17 = sub_1000C5554();
    sub_1000C1A44("TranscriptBackgroundCommandDictionary unpacking unknown error: %{public}@ while unpacking TranscriptBackgroundStandaloneCommand", 127, 2, &_mh_execute_header, v12, v17, v13);

    swift_getErrorValue();
    swift_getDynamicType();
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    sub_1000C5944(22);

    *&v40 = 0xD000000000000014;
    *(&v40 + 1) = 0x80000001000D5330;
    v55._countAndFlagsBits = sub_1000C5D34();
    sub_1000C52E4(v55);

    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    v39 = v3;
    sub_1000C5994();
    v56._countAndFlagsBits = 32;
    v56._object = 0xE100000000000000;
    sub_1000C52E4(v56);
    swift_getErrorValue();
    v57._countAndFlagsBits = sub_1000C5C64();
    sub_1000C52E4(v57);

    sub_1000C4FC4();
    sub_100015010(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    if (v38)
    {
      return result;
    }

    *&v40 = v24;
    BYTE8(v40) = v21 & 1;
    v41 = v20[0];
    v42 = v20[1];
    v43 = v22;
    v44 = v23;
    *&v45 = v26;
    *(&v45 + 1) = v25;
    *&v46 = v28;
    BYTE8(v46) = v27 & 1;
    *&v47 = v30;
    BYTE8(v47) = v29 & 1;
    *&v48 = v32;
    BYTE8(v48) = v31 & 1;
    *&v49 = v34;
    *(&v49 + 1) = v33;
    LOBYTE(v50) = v35;
    *(&v50 + 1) = v37;
    v51 = v36 & 1;
    v19 = &v40;
  }

  else
  {
    v52[8] = v48;
    v52[9] = v49;
    v52[10] = v50;
    v53 = v51;
    v52[4] = v44;
    v52[5] = v45;
    v52[6] = v46;
    v52[7] = v47;
    v52[0] = v40;
    v52[1] = v41;
    v52[2] = v42;
    v52[3] = v43;
    sub_100046F3C(v52, v10);
    (*(v5 + 16))(v8, v10, v4);
    sub_1000C4BB4();
    (*(v5 + 8))(v10, v4);

    v19 = v52;
  }

  return sub_100015058(v19);
}

unint64_t sub_100014F1C()
{
  result = qword_1000FC338;
  if (!qword_1000FC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC338);
  }

  return result;
}

unint64_t sub_100014F70()
{
  result = qword_1000FC340;
  if (!qword_1000FC340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FC340);
  }

  return result;
}

unint64_t sub_100014FBC()
{
  result = qword_1000FC358;
  if (!qword_1000FC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC358);
  }

  return result;
}

uint64_t sub_100015010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GroupContextDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FC368, &unk_1000C9570);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10001530C(a1, a1[3]);
  sub_100015350();
  sub_1000C5D04();
  v15 = 0;
  sub_1000C5B34();
  if (!v2)
  {
    v14 = 1;
    sub_1000C5B34();
    v13 = 2;
    sub_1000C5AF4();
    v12 = 3;
    sub_1000C5AF4();
    v11 = *v3;
    v10[15] = 4;
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC380, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000C5B44();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_10001530C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100015350()
{
  result = qword_1000FC370;
  if (!qword_1000FC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC370);
  }

  return result;
}

__n128 GroupContextDictionary.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100015878(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

MessagesBlastDoorService::GroupContextDictionary::CodingKeys_optional __swiftcall GroupContextDictionary.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v5._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._rawValue = &off_1000F1068;
  v5._object = object;
  v3 = sub_1000C59F4(v2, v5);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t GroupContextDictionary.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 30320;
  v2 = 110;
  v3 = 6580583;
  if (a1 != 3)
  {
    v3 = 112;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 30311;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000154E4()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100015590(uint64_t a1)
{
  sub_1000C52C4();
}

Swift::Int sub_100015628()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

MessagesBlastDoorService::GroupContextDictionary::CodingKeys_optional sub_1000156D0@<W0>(Swift::String *a1@<X0>, MessagesBlastDoorService::GroupContextDictionary::CodingKeys_optional *a2@<X8>)
{
  result.value = GroupContextDictionary.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_100015700(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 30320;
  v5 = 0xE100000000000000;
  v6 = 110;
  v7 = 0xE300000000000000;
  v8 = 6580583;
  if (v2 != 3)
  {
    v8 = 112;
    v7 = 0xE100000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 30311;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100015768()
{
  v1 = *v0;
  v2 = 30320;
  v3 = 110;
  v4 = 6580583;
  if (v1 != 3)
  {
    v4 = 112;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 30311;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

MessagesBlastDoorService::GroupContextDictionary::CodingKeys_optional sub_1000157CC@<W0>(uint64_t a1@<X0>, MessagesBlastDoorService::GroupContextDictionary::CodingKeys_optional *a2@<X8>)
{
  result.value = GroupContextDictionary.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100015800(uint64_t a1)
{
  v2 = sub_100015350();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001583C(uint64_t a1)
{
  v2 = sub_100015350();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100015878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC3A0, &qword_1000C9778);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10001530C(a1, a1[3]);
  sub_100015350();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_1000C5A44();
  v39 = v10 & 1;
  LOBYTE(v33[0]) = 1;
  v27 = sub_1000C5A44();
  v38 = v11 & 1;
  LOBYTE(v33[0]) = 2;
  v12 = sub_1000C5A04();
  v14 = v13;
  *(&v26 + 1) = v12;
  LOBYTE(v33[0]) = 3;
  v15 = sub_1000C5A04();
  *&v26 = v16;
  v25 = v15;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  v40 = 4;
  sub_100015FB4(&qword_1000FC3A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000C5A54();
  (*(v6 + 8))(v8, v5);
  v24 = v37;
  v28 = __PAIR128__(v25, v37);
  v17 = *(&v26 + 1);
  v29 = v26;
  *&v30 = v14;
  *(&v30 + 1) = v9;
  v18 = v39;
  LOBYTE(v31) = v39;
  v19 = v27;
  *(&v31 + 1) = v27;
  v20 = v38;
  v32 = v38;
  sub_100016020(&v28, v33);
  sub_100015F68(a1);
  v33[0] = v24;
  v33[1] = v25;
  v33[2] = v26;
  v33[3] = v17;
  v33[4] = v14;
  v33[5] = v9;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  result = sub_100016058(v33);
  v22 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v22;
  *(a2 + 64) = v32;
  v23 = v29;
  *a2 = v28;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_100015C00()
{
  result = qword_1000FC388;
  if (!qword_1000FC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC388);
  }

  return result;
}

unint64_t sub_100015C58()
{
  result = qword_1000FC390;
  if (!qword_1000FC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC390);
  }

  return result;
}

unint64_t sub_100015CB0()
{
  result = qword_1000FC398;
  if (!qword_1000FC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC398);
  }

  return result;
}

__n128 sub_100015D04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100015D28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100015D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupContextDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupContextDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100015F68(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100015FB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(&qword_1000FC378, &qword_1000CA860);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1000C49B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1000C14E4();
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v17 = &v30 - v16;
  v42[0] = *a1;
  if (!*(&v42[0] + 1) || (v41 = *(a1 + 16), *(&v41 + 1) >> 60 == 15) || (v40 = *(a1 + 32), !*(&v40 + 1)) || (v39 = *(a1 + 48), *(&v39 + 1) >> 60 == 15) || (*(a1 + 68) & 1) != 0)
  {
    v18 = sub_1000C5514();
    sub_100014F70();
    v19 = sub_1000C5714();
    sub_1000C1A54(v18, &_mh_execute_header, v19, "Missing required keys for combined plugin attachment download, returnining nil.", 79, 2, _swiftEmptyArrayStorage);

    sub_100018E24(a1);
    return (*(v4 + 56))(v37, 1, 1, v3);
  }

  else
  {
    v31 = v41;
    v30 = v39;
    v21 = *(a1 + 64);
    v32 = *&v42[0];
    v33 = v21;
    v35 = v14;
    v36 = v15;
    v34 = v40;
    sub_100018F28(v42, v38, &qword_1000FC3F0, &unk_1000C97B0);
    sub_100018F28(&v41, v38, &qword_1000FC3F8, &qword_1000CE300);
    sub_100018F28(&v40, v38, &qword_1000FC3F0, &unk_1000C97B0);
    sub_100018F28(&v39, v38, &qword_1000FC3F8, &qword_1000CE300);
    sub_1000C14C4();
    sub_100018F90(&v40, &qword_1000FC3F0, &unk_1000C97B0);
    if ((*(v36 + 48))(v9, 1, v35) == 1)
    {
      sub_100018F90(v42, &qword_1000FC3F0, &unk_1000C97B0);
      sub_100018F90(v9, &qword_1000FC3E8, &unk_1000C9E10);
      v22 = sub_1000C5974();
      swift_allocError();
      v24 = v23;
      sub_1000124CC(&qword_1000FC400, &unk_1000C97C0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1000C94D0;
      *(v25 + 56) = &type metadata for BalloonPluginPayloadAttachment.CodingKeys;
      *(v25 + 64) = sub_100018E78();
      *(v25 + 32) = 2;
      sub_1000C5964();
      (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.dataCorrupted(_:), v22);
      swift_willThrow();
      sub_100018E24(a1);
      sub_100018F90(&v39, &qword_1000FC3F8, &qword_1000CE300);
      return sub_100018F90(&v41, &qword_1000FC3F8, &qword_1000CE300);
    }

    else
    {
      v26 = v9;
      v27 = v35;
      (*(v36 + 32))(v17, v26, v35);
      result = (*(v36 + 16))(v13, v17, v27);
      if ((v33 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v28 = v43;
        sub_1000C49A4();
        (*(v36 + 8))(v17, v35);
        if (v28)
        {
          return sub_100018E24(a1);
        }

        else
        {
          sub_100018E24(a1);
          v29 = v37;
          (*(v4 + 32))(v37, v6, v3);
          return (*(v4 + 56))(v29, 0, 1, v3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100016638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a3[2];
  v136 = a3[1];
  v138 = v9;
  v137 = a3[3];
  v10 = a3[6];
  v139 = a3[5];
  v141 = v10;
  v140 = a3[7];
  v11 = sub_1000124CC(&qword_1000FC3C8, &qword_1000C9798);
  __chkstk_darwin(v11 - 8);
  v13 = &v113 - v12;
  v131 = sub_1000C49B4();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1000C27A4();
  v120 = *(v121 - 8);
  v15 = __chkstk_darwin(v121);
  v116 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v113 - v17;
  v18 = sub_1000C3EA4();
  v19 = __chkstk_darwin(v18 - 8);
  v124 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v122 = &v113 - v21;
  v125 = sub_1000C4B04();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v134 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1000C4454();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v127 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000124CC(&qword_1000FC3C0, &qword_1000C9790);
  v25 = __chkstk_darwin(v24 - 8);
  v133 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v132 = &v113 - v27;
  v155 = sub_1000C4494();
  v144 = *(v155 - 8);
  v28 = __chkstk_darwin(v155);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v117 = &v113 - v32;
  v33 = __chkstk_darwin(v31);
  v128 = &v113 - v34;
  __chkstk_darwin(v33);
  v126 = &v113 - v35;
  v135 = a1;
  v146[0] = a1;
  v146[1] = a2;
  *&v145 = 58;
  *(&v145 + 1) = 0xE100000000000000;
  sub_100018D24();
  v36 = sub_1000C58B4();
  if (!v36[2])
  {

    sub_100018D78(a3);

    v59 = 1;
    v60 = v155;
    v61 = v144;
    v62 = a4;
    return (*(v61 + 56))(v62, v59, 1, v60);
  }

  v143 = a2;
  v114 = a4;
  v142 = v4;
  v37 = v36[4];
  v38 = v36[5];

  v39 = *a3;
  v40 = a3[1];
  v41 = *(a3 + 68);
  if (v41 >> 6)
  {
    if (v41 >> 6 == 1)
    {
      v141 = *a3;

      v42 = sub_1000C5514();
      sub_100014F70();
      v43 = sub_1000C5714();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1000C94D0;
      LOBYTE(v146[0]) = 0;
      v45 = sub_1000C4A84();
      v47 = v46;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = sub_100014FBC();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      sub_1000C1A54(v42, &_mh_execute_header, v43, "Unpacking associated message plugin using %@.", 45, 2, v44);

      v48 = sub_1000C1554();
      v50 = v49;
      v51 = sub_1000C5514();
      v52 = sub_1000C57D4();
      sub_1000C1A54(v51, &_mh_execute_header, v52, "Executing CustomAcknowledgementUnpacker unpacking flow.", 55, 2, _swiftEmptyArrayStorage);

      v53 = sub_1000C1554();
      v55 = v54;
      v56 = v142;
      v57 = sub_100020EC8(v53, v54, 0xD00000000000001ALL);
      if (v56)
      {
        sub_100018CD0(v48, v50);
        sub_100018D78(a3);

        return sub_100018CD0(v53, v55);
      }

      sub_100020064(v57);

      v89 = sub_1000C5514();
      v90 = sub_1000C57D4();
      sub_1000C1A54(v89, &_mh_execute_header, v90, "Sucessfully completed unpacking.", 32, 2, _swiftEmptyArrayStorage);

      sub_1000C3E54();
      v94 = v123;
      v95 = v115;
      (*(v123 + 16))(v115, v134, v125);
      (*(v120 + 104))(v95, enum case for BalloonPlugin.Payload.customAcknowledgement(_:), v121);
      sub_1000C4474();
      sub_100018CD0(v53, v55);
      sub_100018CD0(v48, v50);
      sub_100018D78(a3);
      (*(v94 + 8))(v134, v125);
      v61 = v144;
      v108 = *(v144 + 32);
      v109 = v126;
      v110 = v155;
      v108(v126, v117);
      v111 = v114;
      goto LABEL_34;
    }

    v82 = *(a3 + 16) | (*(a3 + 68) << 32);
    v149[0] = *a3;
    v149[1] = v40;
    v83 = *(a3 + 2);
    v150 = *(a3 + 1);
    v151 = v83;
    v152 = *(a3 + 3);
    v153 = v82;
    v154 = BYTE4(v82) & 0x3F;

    sub_100018C54(v138, v137);

    sub_100018C54(v141, v140);
    v84 = v142;
    sub_10001608C(v149, v13);
    if (v84)
    {
      return sub_100018D78(a3);
    }

    v85 = v130;
    v86 = v131;
    if ((*(v130 + 48))(v13, 1, v131) == 1)
    {
      sub_100018D78(a3);
      sub_100018F90(v13, &qword_1000FC3C8, &qword_1000C9798);
      v59 = 1;
LABEL_20:
      v62 = v114;
      v60 = v155;
      v61 = v144;
      return (*(v61 + 56))(v62, v59, 1, v60);
    }

    (*(v85 + 32))(v129, v13, v86);
    v87 = sub_1000C5514();
    sub_100014F70();
    v88 = sub_1000C5714();
    sub_1000C1A54(v87, &_mh_execute_header, v88, "Deferring unpacking of plugin due to combined payload.", 54, 2, _swiftEmptyArrayStorage);

    sub_1000C3E54();
    v110 = v155;
    v91 = v116;
    v92 = v129;
    (*(v85 + 16))(v116, v129, v86);
    (*(v120 + 104))(v91, enum case for BalloonPlugin.Payload.combinedPluginAttachmentInfo(_:), v121);
    sub_1000C4474();
    v93 = v92;
    v107 = v114;
    sub_100018D78(a3);
    (*(v85 + 8))(v93, v86);
    v61 = v144;
    v108 = *(v144 + 32);
    v109 = v126;
    (v108)(v126, v30, v110);
LABEL_33:
    v111 = v107;
LABEL_34:
    (v108)(v111, v109, v110);
    v62 = v111;
    v60 = v110;
    v59 = 0;
    return (*(v61 + 56))(v62, v59, 1, v60);
  }

  if (qword_1000FC068 != -1)
  {
    v112 = *a3;
    swift_once();
    v39 = v112;
  }

  v63 = qword_10010AD68;
  if (!*(qword_10010AD68 + 16))
  {

    goto LABEL_19;
  }

  v141 = v39;
  v64 = sub_100099FF8(v37, v38);
  v66 = v65;

  if ((v66 & 1) == 0)
  {
LABEL_19:

    sub_100018D78(a3);
    v59 = 1;
    goto LABEL_20;
  }

  sub_100018DA8(*(v63 + 56) + 40 * v64, &v145);
  sub_100018E0C(&v145, v146);
  v67 = sub_1000C5514();
  sub_100014F70();
  v68 = sub_1000C5714();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1000C94D0;
  sub_100018DA8(v146, &v145);
  sub_1000124CC(&qword_1000FC3D8, &unk_1000CE800);
  v70 = sub_1000C4A84();
  v72 = v71;
  sub_100018F90(&v145, &qword_1000FC3E0, &unk_1000C97A0);
  *(v69 + 56) = &type metadata for String;
  *(v69 + 64) = sub_100014FBC();
  *(v69 + 32) = v70;
  *(v69 + 40) = v72;
  sub_1000C1A54(v67, &_mh_execute_header, v68, "Unpacking balloon plugin using %@.", 34, 2, v69);

  v73 = sub_1000C1554();
  v75 = v74;

  v76 = v127;
  v77 = v142;
  sub_1000C4444();
  v141 = v75;
  v140 = v73;
  if (v77)
  {

    v142 = 0;
    v78 = 1;
    v79 = v114;
    v80 = v133;
    v81 = v132;
  }

  else
  {
    v81 = v132;
    sub_10006A690(v73, v75, v76);
    v80 = v133;
    v142 = 0;
    (*(v118 + 8))(v76, v119);
    v78 = 0;
    v79 = v114;
  }

  v61 = v144;
  v96 = v155;
  (*(v144 + 56))(v81, v78, 1, v155);
  sub_100018F28(v81, v80, &qword_1000FC3C0, &qword_1000C9790);
  v97 = *(v61 + 48);
  v110 = v96;
  if (v97(v80, 1, v96) != 1)
  {
    sub_100018CD0(v140, v141);

    sub_100018D78(a3);
    sub_100018F90(v81, &qword_1000FC3C0, &qword_1000C9790);
    v104 = v128;
    (*(v61 + 32))(v128, v80, v96);
    v109 = v126;
    v107 = v79;
LABEL_32:
    v108 = *(v61 + 32);
    (v108)(v109, v104, v110);
    sub_100015F68(v146);
    goto LABEL_33;
  }

  v98 = v147;
  v99 = v148;
  sub_10001530C(v146, v147);
  v100 = v140;
  v101 = v141;
  v102 = v142;
  (*(v99 + 8))(v140, v141, _swiftEmptyArrayStorage, v135, v143, v98, v99);
  if (!v102)
  {
    sub_100018CD0(v100, v101);

    sub_100018D78(a3);
    sub_100018F90(v132, &qword_1000FC3C0, &qword_1000C9790);
    v105 = v133;
    v110 = v155;
    v106 = (v97)(v133, 1);
    v107 = v114;
    if (v106 != 1)
    {
      sub_100018F90(v105, &qword_1000FC3C0, &qword_1000C9790);
    }

    v61 = v144;
    v109 = v126;
    v104 = v128;
    goto LABEL_32;
  }

  sub_100018CD0(v100, v101);

  sub_100018D78(a3);
  sub_100018F90(v132, &qword_1000FC3C0, &qword_1000C9790);
  v103 = v133;
  if (v97(v133, 1, v155) != 1)
  {
    sub_100018F90(v103, &qword_1000FC3C0, &qword_1000C9790);
  }

  return sub_100015F68(v146);
}

uint64_t sub_100017870()
{
  v1 = type metadata accessor for MessageDictionary(0);
  v2 = v0 + *(v1 + 224);
  if (*(v2 + 8))
  {
    return 0;
  }

  v3 = v0 + *(v1 + 228);
  if (*(v3 + 8))
  {
    return 0;
  }

  v4 = *v2;
  v5 = *v3;
  v6 = v4 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v4;
  if (v6 == sub_1000C1324())
  {
    return 0;
  }

  result = v6;
  if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (__OFADD__(v6, v8))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a4;
  v87 = a2;
  v10 = sub_1000124CC(&qword_1000FC410, &unk_1000CAEC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v75 - v11;
  v13 = sub_1000C3EA4();
  v14 = __chkstk_darwin(v13 - 8);
  v86 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v75 - v16;
  v17 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v18 = __chkstk_darwin(v17 - 8);
  v85 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v83 = &v75 - v20;
  v21 = sub_1000C27A4();
  v89 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v92 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v90 = &v75 - v24;
  v25 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v26 = __chkstk_darwin(v25 - 8);
  v91 = (&v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v94 = &v75 - v28;
  v29 = sub_1000124CC(&qword_1000FC3C0, &qword_1000C9790);
  __chkstk_darwin(v29 - 8);
  v31 = &v75 - v30;
  v32 = sub_1000C4494();
  v96 = *(v32 - 8);
  v97 = v32;
  __chkstk_darwin(v32);
  v93 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MessageDictionary(0);
  v39 = (v5 + v34[26]);
  v40 = v39[1];
  v116 = v40;
  if (!v40)
  {
    v51 = sub_1000C27D4();
    v52 = *(*(v51 - 8) + 56);
    v53 = a5;
    return v52(v53, 1, 1, v51);
  }

  v81 = a5;
  v82 = v21;
  v79 = a3;
  v80 = v5;
  v77 = a1;
  v78 = v34;
  v41 = *v39;
  v42 = (v5 + v34[27]);
  v43 = *v42;
  v44 = v42[1];
  if (v44 >> 60 == 15)
  {
    v45 = v5 + v34[28];
    v46 = *(v45 + 1);
    if (v46 == 1)
    {
      v47 = v82;
      if (v41 == 0xD000000000000025 && v116 == 0x80000001000D5590 || (sub_1000C5C04() & 1) != 0)
      {
        v48 = v91;
        sub_100018F28(v95, v91, &qword_1000FC3B8, &qword_1000C9788);
        v49 = sub_1000C35D4();
        (*(*(v49 - 8) + 56))(v12, 1, 1, v49);

        v50 = v92;
        sub_1000C37B4();
        if (v6)
        {

          return sub_100018F90(v48, &qword_1000FC3B8, &qword_1000C9788);
        }

        else
        {
          v88 = v41;
          (v89[13])(v50, enum case for BalloonPlugin.Payload.linkPresentation(_:), v47);
          sub_100018F28(v79, v85, &qword_1000FC3B0, &qword_1000C9780);
          if (*v80)
          {
            v64 = *v80;
          }

          else
          {
            v64 = _swiftEmptyArrayStorage;
          }

          v96 = *(v80 + v78[54]);
          v97 = v64;

          v65 = sub_100017870();
          v94 = v66;
          v95 = v65;
          sub_1000C3E54();

          v72 = v81;
          sub_1000C2794();
          v74 = sub_1000C27D4();
          return (*(*(v74 - 8) + 56))(v72, 0, 1, v74);
        }
      }

      else
      {
        sub_1000C4FC4();
        sub_100018BFC();
        swift_allocError();
        sub_1000C4FB4();
        return swift_willThrow();
      }
    }

    v88 = v41;
    v99[0] = *v45;
    v55 = v99[0];
    v99[1] = v46;
    v56 = *(v45 + 2);
    v100 = *(v45 + 1);
    v101 = v56;
    *v102 = *(v45 + 3);
    *&v102[13] = *(v45 + 61);
    v91 = v100;
    v92 = v6;
    v85 = v56;
    v86 = *(&v100 + 1);
    v41 = *&v102[8];
    v75 = *v102;
    v76 = *(&v56 + 1);
    v57 = *&v102[16];
    v54 = (*&v102[16] | (v102[20] << 32)) & 0x1FFFFFFFFLL | 0xFFFFFF8000000000;
    sub_100018ECC(v99, &v98);
    v38 = v75;
    v37 = v76;
    v36 = v85;
    v35 = v86;
    v40 = v91;
    v103 = v55;
    v104 = v46;
    v105 = v91;
    v106 = v86;
    v107 = v85;
    v108 = v76;
    v109 = v75;
    v110 = v41;
    v111 = v57;
    v112 = BYTE4(v54);
  }

  else
  {
    v88 = v41;
    v92 = v6;
    v54 = 0;
    v103 = v43;
    v104 = v44;
    v112 = 0;
    v55 = v43;
    v46 = v44;
    v111 = 0;
  }

  v113[0] = v55;
  v113[1] = v46;
  v113[2] = v40;
  v113[3] = v35;
  v113[4] = v36;
  v113[5] = v37;
  v113[6] = v38;
  v113[7] = v41;
  v114 = v54;
  v115 = BYTE4(v54);
  v58 = v116;
  swift_bridgeObjectRetain_n();
  sub_100018C54(v43, v44);
  sub_100018F28(&v103, v99, &qword_1000FC418, &qword_1000C97D0);
  v59 = v88;
  v60 = v92;
  sub_100016638(v88, v58, v113, v31);
  if (v60)
  {
    sub_100018F90(&v103, &qword_1000FC418, &qword_1000C97D0);
  }

  v61 = v96;
  v62 = v97;
  if ((*(v96 + 48))(v31, 1, v97) == 1)
  {
    sub_100018F90(&v103, &qword_1000FC418, &qword_1000C97D0);

    sub_100018F90(v31, &qword_1000FC3C0, &qword_1000C9790);
    v51 = sub_1000C27D4();
    v52 = *(*(v51 - 8) + 56);
    v53 = v81;
    return v52(v53, 1, 1, v51);
  }

  (*(v61 + 32))(v93, v31, v62);
  sub_100018F28(v95, v94, &qword_1000FC3B8, &qword_1000C9788);
  v63 = v80;
  sub_1000C4484();
  LODWORD(v95) = *(v63 + 97);
  v91 = sub_1000A89BC();
  sub_100018F28(v79, v83, &qword_1000FC3B0, &qword_1000C9780);
  v68 = _swiftEmptyArrayStorage;
  if (*v63)
  {
    v68 = *v63;
  }

  v89 = v68;
  v86 = *(v63 + v78[54]);

  v85 = sub_100017870();
  v88 = v59;
  v92 = 0;
  v69 = v93;
  sub_1000C4464();

  v70 = v81;
  v71 = v92;
  sub_1000C2794();
  (*(v96 + 8))(v69, v97);
  if (v71)
  {
    return sub_100018F90(&v103, &qword_1000FC418, &qword_1000C97D0);
  }

  sub_100018F90(&v103, &qword_1000FC418, &qword_1000C97D0);
  v73 = sub_1000C27D4();
  return (*(*(v73 - 8) + 56))(v70, 0, 1, v73);
}

uint64_t sub_1000184B0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v47 = a1;
  v5 = sub_1000C3EA4();
  __chkstk_darwin(v5 - 8);
  v48 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  __chkstk_darwin(v7 - 8);
  v50 = v39 - v8;
  v9 = sub_1000C27A4();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v49 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  __chkstk_darwin(v11 - 8);
  v13 = v39 - v12;
  v14 = sub_1000124CC(&qword_1000FC3C0, &qword_1000C9790);
  __chkstk_darwin(v14 - 8);
  v16 = v39 - v15;
  v17 = sub_1000C4494();
  v54 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MessageDictionary(0);
  v21 = (v2 + *(v20 + 104));
  v22 = v21[1];
  if (v22)
  {
    v23 = v20;
    v44 = a2;
    v24 = (v2 + *(v20 + 108));
    v25 = v24[1];
    if (v25 >> 60 == 15)
    {
      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      return swift_willThrow();
    }

    else
    {
      v41 = v17;
      v42 = v13;
      v28 = *v21;
      v51[0] = *v24;
      v29 = v51[0];
      v51[1] = v25;
      v52 = 0;
      v53 = 64;

      sub_100018C54(v29, v25);

      sub_100018C54(v29, v25);
      sub_100016638(v28, v22, v51, v16);
      v43 = v3;
      if (v3)
      {
        sub_100018CBC(v29, v25);
      }

      else
      {
        v39[4] = v28;
        v40 = v29;
        v30 = v54;
        v31 = v41;
        if ((*(v54 + 48))(v16, 1, v41) == 1)
        {
          sub_100018CBC(v40, v25);

          sub_100018F90(v16, &qword_1000FC3C0, &qword_1000C9790);
          v32 = sub_1000C27D4();
          return (*(*(v32 - 8) + 56))(v44, 1, 1, v32);
        }

        else
        {
          (*(v30 + 32))(v19, v16, v31);
          sub_100018F28(v47, v42, &qword_1000FC3B8, &qword_1000C9788);
          sub_1000C4484();
          v33 = sub_1000C3D24();
          (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
          if (*v2)
          {
            v34 = *v2;
          }

          else
          {
            v34 = _swiftEmptyArrayStorage;
          }

          v47 = v34;
          v39[3] = *(v2 + *(v23 + 216));

          v39[2] = sub_100017870();
          v39[1] = v35;
          v39[0] = *(v2 + *(v23 + 212));
          v36 = v43;
          sub_1000C3E54();
          if (v36)
          {

            sub_100018CBC(v40, v25);

            sub_100018F90(v50, &qword_1000FC3B0, &qword_1000C9780);
            (*(v45 + 8))(v49, v46);
            sub_100018F90(v42, &qword_1000FC3B8, &qword_1000C9788);
            return (*(v54 + 8))(v19, v31);
          }

          else
          {
            v37 = v44;
            sub_1000C2794();
            (*(v54 + 8))(v19, v31);
            sub_100018CBC(v40, v25);
            v38 = sub_1000C27D4();
            return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
          }
        }
      }
    }
  }

  else
  {
    v27 = sub_1000C27D4();
    return (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  }
}

unint64_t sub_100018BFC()
{
  result = qword_1000FC360;
  if (!qword_1000FC360)
  {
    sub_1000C4FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC360);
  }

  return result;
}

void sub_100018C54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_100018C68(a1, a2);
  }
}

void sub_100018C68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_100018CBC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018CD0(result, a2);
  }

  return result;
}

uint64_t sub_100018CD0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100018D24()
{
  result = qword_1000FC3D0;
  if (!qword_1000FC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC3D0);
  }

  return result;
}

uint64_t sub_100018DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100018E0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100018E78()
{
  result = qword_1000FC408;
  if (!qword_1000FC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC408);
  }

  return result;
}

uint64_t sub_100018F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000124CC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100018F90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000124CC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100018FF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10001900C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_100019040(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100019064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 69))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 68) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 68) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000190B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 0;
      *(result + 68) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100019130(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_10001914C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  result = a1 + 64;
  v4 = (v3 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
  *result = v3;
  *(result + 4) = BYTE4(v4);
  return result;
}

unint64_t sub_100019190(uint64_t a1)
{
  result = sub_100012C94();
  *(a1 + 8) = result;
  return result;
}

void sub_100019200(unint64_t a1@<X8>)
{
  v85 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v1 - 8);
  v86 = v78 - v2;
  v90 = sub_1000C5974();
  v88 = *(v90 - 8);
  v3 = __chkstk_darwin(v90);
  v87 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v89 = v78 - v6;
  __chkstk_darwin(v5);
  v8 = v78 - v7;
  v9 = sub_1000C4324();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C4ED4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v11 - 8);
  v13 = v78 - v12;
  v14 = sub_1000C1974();
  v92 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C4FC4();
  v94 = *(v17 - 8);
  __chkstk_darwin(v17);
  v93 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000C1984();
  if (v20 >> 60 == 15)
  {
    sub_100014F70();
    v21 = sub_1000C57F4();
    v22 = sub_1000C5554();
    sub_1000C1A44("Missing encrypted data for ScheduledMessageUpdate", 49, 2, &_mh_execute_header, v21, v22, _swiftEmptyArrayStorage);

    sub_10001A0F8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v82 = v17;
  v83 = v19;
  v84 = v20;
  isa = sub_1000C1544().super.isa;
  v24 = [(objc_class *)isa _imOptionallyDecompressData];

  v95 = sub_1000C1564();
  v26 = v25;

  v27 = v26;
  v28 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v30 = *(v95 + 16);
      v29 = *(v95 + 24);
      v31 = __OFSUB__(v29, v30);
      v32 = v29 - v30;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v32 > 0)
      {
        goto LABEL_10;
      }
    }

LABEL_15:
    v91 = v26;
    v59 = v92;
    (*(v92 + 104))(v16, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v14);
    sub_1000C1964();
    (*(v59 + 8))(v16, v14);
    v60 = v93;
    sub_1000C4FB4();
    sub_100014F70();
    v61 = sub_1000C57F4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1000C94D0;
    v63 = v94;
    v92 = *(v94 + 16);
    v64 = v82;
    (v92)(v13, v60, v82);
    (*(v63 + 56))(v13, 0, 1, v64);
    v65 = sub_1000C4A84();
    v67 = v66;
    sub_100018F90(v13, &qword_1000FC438, &unk_1000C9DC0);
    *(v62 + 56) = &type metadata for String;
    *(v62 + 64) = sub_100014FBC();
    *(v62 + 32) = v65;
    *(v62 + 40) = v67;
    v68 = sub_1000C5554();
    sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v61, v68, v62);

    sub_10001A14C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    (v92)(v69, v60, v64);
    swift_willThrow();
    sub_100018CBC(v83, v84);
    sub_100018CD0(v95, v91);
    (*(v63 + 8))(v60, v64);
    return;
  }

  if (!v28)
  {
    if (!BYTE6(v26))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v95), v95))
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (HIDWORD(v95) - v95 <= 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  sub_1000C1464();
  swift_allocObject();
  v33 = sub_1000C1454();
  sub_10001A194();
  v81 = v33;
  v34 = v91;
  sub_1000C1444();
  if (v34)
  {
    v91 = v27;
    v96 = v34;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v35 = v90;
    if (swift_dynamicCast())
    {

      v36 = v89;
      v37 = v88;
      (*(v88 + 32))(v89, v8, v35);
      v85 = sub_100014F70();
      v38 = v35;
      v39 = sub_1000C57F4();
      v80 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v40 = swift_allocObject();
      v79 = xmmword_1000C94D0;
      *(v40 + 16) = xmmword_1000C94D0;
      v78[0] = *(v37 + 16);
      v78[1] = v37 + 16;
      v41 = v86;
      (v78[0])(v86, v36, v38);
      v42 = v38;
      (*(v37 + 56))(v41, 0, 1, v38);
      v43 = sub_1000C4A84();
      v45 = v44;
      sub_100018F90(v41, &qword_1000FC430, &unk_1000C9B00);
      *(v40 + 56) = &type metadata for String;
      v86 = sub_100014FBC();
      *(v40 + 64) = v86;
      *(v40 + 32) = v43;
      *(v40 + 40) = v45;
      v46 = sub_1000C5554();
      sub_1000C1A44("ScheduledMessageUpdateDictionary unpacking error: %{public}@", 60, 2, &_mh_execute_header, v39, v46, v40);

      v47 = v92;
      (*(v92 + 104))(v16, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v14);
      sub_1000C1964();
      (*(v47 + 8))(v16, v14);
      (v78[0])(v87, v89, v42);
      v48 = v93;
      sub_1000C4FA4();
      v49 = sub_1000C57F4();
      v50 = swift_allocObject();
      *(v50 + 16) = v79;
      v51 = v94;
      v92 = *(v94 + 16);
      v52 = v82;
      (v92)(v13, v48, v82);
      (*(v51 + 56))(v13, 0, 1, v52);
      v53 = sub_1000C4A84();
      v55 = v54;
      sub_100018F90(v13, &qword_1000FC438, &unk_1000C9DC0);
      v56 = v86;
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = v56;
      *(v50 + 32) = v53;
      *(v50 + 40) = v55;
      v57 = sub_1000C5554();
      sub_1000C1A44("ScheduledMessageUpdateDictionary unpacking explosion: %{public}@", 64, 2, &_mh_execute_header, v49, v57, v50);

      sub_10001A14C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      (v92)(v58, v48, v52);
      swift_willThrow();
      sub_100018CBC(v83, v84);

      sub_100018CD0(v95, v91);
      (*(v51 + 8))(v48, v52);
      (*(v88 + 8))(v89, v90);
    }

    else
    {

      sub_100014F70();
      v72 = sub_1000C57F4();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1000C94D0;
      v96 = v34;
      v74 = sub_1000C4A84();
      v76 = v75;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = sub_100014FBC();
      *(v73 + 32) = v74;
      *(v73 + 40) = v76;
      v77 = sub_1000C5554();
      sub_1000C1A44("ScheduledMessageUpdateDictionary unpacking unknown error: %{public}@", 68, 2, &_mh_execute_header, v72, v77, v73);

      swift_getErrorValue();
      swift_getDynamicType();
      v96 = 0;
      v97 = 0xE000000000000000;
      sub_1000C5944(22);

      v96 = 0xD000000000000014;
      v97 = 0x80000001000D5330;
      v98._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v98);

      sub_10001A14C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CD0(v95, v91);
      sub_100018CBC(v83, v84);
    }
  }

  else
  {
    sub_100014F70();
    v70 = sub_1000C57F4();
    v71 = sub_1000C5554();
    sub_1000C1A44("Unpacking ScheduledMessageUpdateDictionary", 42, 2, &_mh_execute_header, v70, v71, _swiftEmptyArrayStorage);

    sub_1000C1994();
    sub_1000C4314();
    sub_1000C4334();
    sub_100018CBC(v83, v84);
    sub_100018CD0(v95, v27);
  }
}

uint64_t sub_100019F84@<X0>(unint64_t a3@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_10001A14C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    sub_100019200(a3);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_10001A0F8()
{
  result = qword_1000FC440;
  if (!qword_1000FC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC440);
  }

  return result;
}

uint64_t sub_10001A14C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001A194()
{
  result = qword_1000FC448;
  if (!qword_1000FC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC448);
  }

  return result;
}

unint64_t sub_10001A208(uint64_t a1)
{
  result = sub_10001285C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001A234()
{
  result = qword_1000FC450;
  if (!qword_1000FC450)
  {
    sub_1000C33E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC450);
  }

  return result;
}

unint64_t sub_10001A2CC(uint64_t a1)
{
  result = sub_100012904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001A2F8()
{
  result = qword_1000FC458;
  if (!qword_1000FC458)
  {
    sub_1000C2E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC458);
  }

  return result;
}

uint64_t sub_10001A380@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C3574();
  v69 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v67 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v68 = v60 - v7;
  __chkstk_darwin(v6);
  v9 = v60 - v8;
  v10 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v10 - 8);
  v12 = v60 - v11;
  v13 = sub_1000C4D84();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000C1A94();
  v72 = *(v14 - 8);
  v73 = v14;
  v15 = __chkstk_darwin(v14);
  v66 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v70 = v60 - v18;
  __chkstk_darwin(v17);
  v71 = v60 - v19;
  v75 = sub_1000C20D4();
  v20 = *(v75 - 8);
  v21 = __chkstk_darwin(v75);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v74 = v60 - v25;
  __chkstk_darwin(v24);
  v27 = v60 - v26;
  v28 = type metadata accessor for MessageDictionary(0);
  v29 = (v1 + *(v28 + 120));
  v30 = v29[1];
  if (v30 >> 60 == 15 || (v31 = (v1 + *(v28 + 104)), !v31[1]))
  {
    v42 = sub_1000C34E4();
    v43 = *(*(v42 - 8) + 56);

    return v43(a1, 1, 1, v42);
  }

  else
  {
    v60[1] = v9;
    v60[2] = v3;
    v65 = a1;
    v32 = *v29;
    v61 = *v31;
    sub_100018C54(v32, v30);

    v62 = v32;
    v63 = v30;
    isa = sub_1000C1544().super.isa;
    v33 = [(objc_class *)isa _imOptionallyDecompressData];
    v34 = sub_1000C1564();
    v36 = v35;

    v37 = v75;
    (*(v20 + 104))(v27, enum case for ImageHeader.jpeg(_:), v75);
    LOBYTE(v33) = sub_1000C1594();
    v38 = v27;
    v39 = *(v20 + 8);
    v39(v38, v37);
    if (v33)
    {
      v76[3] = &type metadata for Data;
      v76[4] = &protocol witness table for Data;
      v76[0] = v34;
      v76[1] = v36;
      v40 = sub_1000C4D54();
      (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
      sub_100018C68(v34, v36);
      sub_1000C4D64();
      v41 = v65;
      sub_1000C34D4();
      sub_100018CBC(v62, v63);
      sub_100018CD0(v34, v36);

      v45 = sub_1000C34E4();
      return (*(*(v45 - 8) + 56))(v41, 0, 1, v45);
    }

    else
    {

      v44 = v74;
      v61 = v34;
      sub_1000C15A4();
      v60[0] = v36;
      v47 = v71;
      sub_1000C4C44();
      v48 = v75;
      (*(v20 + 16))(v23, v44, v75);
      v49 = sub_1000C1A84();
      v50 = sub_1000C5514();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v76[0] = v52;
        *v51 = 136315138;
        v53 = sub_1000C20C4();
        v55 = v54;
        v39(v23, v48);
        v56 = sub_10008AC30(v53, v55, v76);

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v49, v50, "Skipping typing indicator icon since image header was incorrect: %s", v51, 0xCu);
        sub_100015F68(v52);

        sub_100018CBC(v62, v63);

        sub_100018CD0(v61, v60[0]);
        (*(v72 + 8))(v71, v73);
        v57 = v74;
      }

      else
      {
        sub_100018CBC(v62, v63);

        sub_100018CD0(v61, v60[0]);
        v39(v23, v48);
        (*(v72 + 8))(v47, v73);
        v57 = v44;
      }

      v39(v57, v48);
      v58 = v65;
      v59 = sub_1000C34E4();
      return (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    }
  }
}

uint64_t sub_10001AF14(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC468, &qword_1000CAD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001AF7C()
{
  sub_1000124CC(&qword_1000FC470, &qword_1000C9C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000C9C70;
  v1 = sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
  *(v0 + 56) = sub_1000124CC(&qword_1000FC480, &qword_1000C9C88);
  *(v0 + 32) = v1;
  v2 = sub_10001D1A8(0, &qword_1000FC488, NSString_ptr);
  *(v0 + 88) = sub_1000124CC(&qword_1000FC490, &qword_1000C9C90);
  *(v0 + 64) = v2;
  v3 = sub_10001D1A8(0, &qword_1000FC498, NSData_ptr);
  *(v0 + 120) = sub_1000124CC(&qword_1000FC4A0, &qword_1000C9C98);
  *(v0 + 96) = v3;
  v4 = sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
  *(v0 + 152) = sub_1000124CC(&qword_1000FC4A8, &qword_1000C9CA0);
  *(v0 + 128) = v4;
  v5 = sub_10001D1A8(0, &qword_1000FC4B0, NSURL_ptr);
  *(v0 + 184) = sub_1000124CC(&qword_1000FC4B8, &qword_1000C9CA8);
  *(v0 + 160) = v5;
  v6 = sub_10001D1A8(0, &qword_1000FC4C0, NSUUID_ptr);
  *(v0 + 216) = sub_1000124CC(&qword_1000FC4C8, &qword_1000C9CB0);
  *(v0 + 192) = v6;
  v7 = sub_10001D1A8(0, &qword_1000FC4D0, NSValue_ptr);
  *(v0 + 248) = sub_1000124CC(&qword_1000FC4D8, &qword_1000C9CB8);
  *(v0 + 224) = v7;
  v8 = sub_10001D1A8(0, &qword_1000FC4E0, NSMutableDictionary_ptr);
  *(v0 + 280) = sub_1000124CC(&qword_1000FC4E8, &unk_1000C9CC0);
  *(v0 + 256) = v8;
  v9 = sub_10001D1A8(0, &qword_1000FC4F0, NSMutableData_ptr);
  *(v0 + 312) = sub_1000124CC(&qword_1000FC4F8, &qword_1000D1280);
  *(v0 + 288) = v9;
  v10 = sub_10001D1A8(0, &qword_1000FC500, NSMutableString_ptr);
  *(v0 + 344) = sub_1000124CC(&qword_1000FC508, &unk_1000C9CD0);
  *(v0 + 320) = v10;
  sub_10001D1A8(0, &qword_1000FC510, NSSet_ptr);
  result = sub_1000C5614();
  qword_10010AC68 = result;
  return result;
}

uint64_t sub_10001B234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v184 = a2;
  *(&v184 + 1) = a3;
  v178 = a4;
  v6 = sub_1000124CC(&qword_1000FC518, &unk_1000C9D10);
  __chkstk_darwin(v6 - 8);
  v180 = v165 - v7;
  v8 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  __chkstk_darwin(v8 - 8);
  v181 = v165 - v9;
  v10 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v10 - 8);
  v183 = v165 - v11;
  v12 = sub_1000124CC(&qword_1000FC528, &qword_1000C9D28);
  v13 = __chkstk_darwin(v12 - 8);
  v177 = v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v182 = v165 - v16;
  __chkstk_darwin(v15);
  v185 = v165 - v17;
  v18 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v18 - 8);
  v188 = v165 - v19;
  v20 = sub_1000C4D84();
  __chkstk_darwin(v20 - 8);
  v186 = v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000124CC(&qword_1000FC530, &qword_1000C9D38);
  v23 = __chkstk_darwin(v22 - 8);
  v179 = v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v187 = v165 - v26;
  __chkstk_darwin(v25);
  v189 = v165 - v27;
  v28 = sub_1000124CC(&qword_1000FC538, &qword_1000C9D40);
  v29 = __chkstk_darwin(v28 - 8);
  v176 = v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = v165 - v32;
  __chkstk_darwin(v31);
  v35 = v165 - v34;
  v36 = sub_1000C3F14();
  v194 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = v165 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v40 = sub_1000C5784();
  sub_1000C1A54(v39, &_mh_execute_header, v40, "Unpacking AppExtension root dictionary", 38, 2, _swiftEmptyArrayStorage);

  v41 = sub_1000C4BD4();
  v42 = a1;
  v44 = sub_100020D00(v41, v43, a1);
  if (v4)
  {
  }

  v46 = v44;
  v174 = v33;
  v175 = v42;

  if (v46)
  {
    v47 = sub_10001D1F0(v46);

    v48 = v38;
    if (v47)
    {

      v54 = v36;
      v49 = sub_1000C4A44();
      v169 = sub_1000204C8(v49, v50, v47);
      v171 = v55;

      v56 = sub_1000C4AE4();
      v167 = sub_1000204C8(v56, v57, v47);
      v168 = v67;

      v68 = sub_1000C4C64();
      v76 = sub_1000204C8(v68, v69, v47);
      v166 = v77;

      v78 = sub_1000C4C54();
      v94 = sub_1000204C8(v78, v79, v47);
      v165[5] = v95;

      v96 = sub_1000C4AD4();
      v165[1] = sub_1000204C8(v96, v97, v47);
      v165[4] = v117;
      v165[2] = v94;
      v165[3] = v76;
      v173 = v54;

      v118 = sub_1000C4B94();
      sub_1000204C8(v118, v119, v47);
      v172 = v35;
      v38 = v48;

      v134 = sub_1000C4AB4();
      sub_100020BB0(v134, v135, v47);
    }

    else
    {
      v172 = v35;
      v173 = v36;
    }
  }

  else
  {
    v172 = v35;
    v173 = v36;
  }

  sub_1000C3F04();
  v51 = sub_1000C4C74();
  v52 = v175;
  sub_100020A44(v51, v53, v175, &v191);
  v170 = v38;

  v58 = *(&v191 + 1);
  v59 = v191;
  v60 = sub_1000C3EE4();
  v61 = *(*(v60 - 8) + 56);
  v62 = v172;
  v61(v172, 1, 1, v60);
  if (v58 >> 60 != 15)
  {
    v172 = v62;
    sub_100018C68(v59, v58);
    v70 = v59;
    v71 = sub_1000C5514();
    v72 = sub_1000C5784();
    sub_1000C1A54(v71, &_mh_execute_header, v72, "Unpacking LiveLayout dictionary", 31, 2, _swiftEmptyArrayStorage);

    v73 = sub_10001D450(v70, v58, 0xD000000000000014);
    v74 = sub_1000C4BF4();
    sub_1000204C8(v74, v75, v73);

    v98 = v174;
    sub_1000C3ED4();
    v120 = v172;
    sub_100018F90(v172, &qword_1000FC538, &qword_1000C9D40);
    v121 = v70;
    v62 = v120;
    sub_100018CBC(v121, v58);
    v61(v98, 0, 1, v60);
    v122 = v120;
    v59 = v121;
    sub_10001D860(v98, v122, &qword_1000FC538, &qword_1000C9D40);
    v52 = v175;
  }

  v63 = sub_1000C49D4();
  sub_100020A44(v63, v64, v52, &v191);
  v65 = v194;
  v66 = v170;
  v172 = v62;

  v81 = *(&v191 + 1);
  v80 = v191;
  v169 = v59;
  v174 = 0;
  if (*(&v191 + 1) >> 60 == 15)
  {
    v171 = v191;
  }

  else
  {
    v82 = sub_1000C1554();
    v83 = v80;
    v84 = v82;
    v86 = v85;
    sub_100018CBC(v83, v81);
    v171 = v84;
    v81 = v86;
  }

  v87 = v189;
  v88 = sub_1000C3EC4();
  v89 = *(*(v88 - 8) + 56);
  v89(v87, 1, 1, v88);
  if (v81 >> 60 != 15)
  {
    v192 = &type metadata for Data;
    v193 = &protocol witness table for Data;
    v90 = v171;
    *&v191 = v171;
    *(&v191 + 1) = v81;
    v91 = sub_1000C4D54();
    (*(*(v91 - 8) + 56))(v188, 1, 1, v91);
    sub_100018C68(v90, v81);
    sub_1000C4D64();
    v92 = v187;
    v93 = v174;
    sub_1000C3EB4();
    v174 = v93;
    if (v93)
    {
      sub_100018CBC(v90, v81);
      sub_100018CBC(v169, v58);
      sub_100018F90(v87, &qword_1000FC530, &qword_1000C9D38);
      sub_100018F90(v172, &qword_1000FC538, &qword_1000C9D40);
      return (*(v194 + 8))(v170, v173);
    }

    sub_100018F90(v189, &qword_1000FC530, &qword_1000C9D38);
    v89(v92, 0, 1, v88);
    sub_10001D860(v92, v189, &qword_1000FC530, &qword_1000C9D38);
    v65 = v194;
    v66 = v170;
  }

  v99 = v58;
  v100 = sub_1000C49C4();
  v102 = v175;
  v103 = v174;
  if (*(v175 + 16))
  {
    v104 = sub_100099FF8(v100, v101);
    v106 = v105;

    v107 = v102;
    if (v106)
    {
      sub_10001D804(*(v102 + 56) + 32 * v104, &v191);
      if (swift_dynamicCast())
      {
        v108 = v190;

        v109 = HIBYTE(*(&v108 + 1)) & 0xFLL;
        if ((*(&v108 + 1) & 0x2000000000000000) == 0)
        {
          v109 = v108 & 0xFFFFFFFFFFFFLL;
        }

        if (v109)
        {
          sub_1000C4FC4();
          sub_100018BFC();
          swift_allocError();
          sub_1000C4FB4();
          swift_willThrow();
LABEL_27:
          sub_100018CBC(v171, v81);
          sub_100018CBC(v169, v99);
          sub_100018F90(v189, &qword_1000FC530, &qword_1000C9D38);
          sub_100018F90(v172, &qword_1000FC538, &qword_1000C9D40);
          return (*(v65 + 8))(v66, v173);
        }

        v188 = 0;
        goto LABEL_29;
      }
    }
  }

  else
  {

    v107 = v102;
  }

  v110 = sub_1000C49C4();
  v112 = sub_100020BB0(v110, v111, v107);
  if (v103)
  {

    goto LABEL_27;
  }

  v188 = v112;

LABEL_29:
  v113 = v189;
  v114 = sub_1000C4604();
  sub_100020A44(v114, v115, v107, &v191);
  if (!v103)
  {

    v123 = *(&v191 + 1);
    v187 = v191;
    v191 = v184;
    *&v190 = 58;
    *(&v190 + 1) = 0xE100000000000000;
    sub_100018D24();
    v124 = (sub_1000C58B4() + 16);
    if (!*v124)
    {

      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v187, v123);
      sub_100018CBC(v171, v81);
      sub_100018CBC(v169, v99);
LABEL_44:
      v116 = v189;
      goto LABEL_45;
    }

    v125 = &v124[2 * *v124];
    v127 = *v125;
    v126 = v125[1];
    *(&v184 + 1) = v127;
    v186 = v126;

    v128 = sub_1000C3144();
    v129 = v123;
    v130 = *(*(v128 - 8) + 56);
    v130(v185, 1, 1, v128);
    v168 = v129;
    if (v129 >> 60 != 15)
    {
      sub_100018C68(v187, v129);
      if (qword_1000FC060 != -1)
      {
        swift_once();
      }

      v136 = qword_10010AD60;
      if (!*(qword_10010AD60 + 16) || (v137 = sub_100099FF8(*(&v184 + 1), v186), (v138 & 1) == 0))
      {
        v144 = v187;
        v145 = v168;
        sub_100018CBC(v187, v168);

        sub_1000C4FC4();
        sub_100018BFC();
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CBC(v144, v145);
LABEL_43:
        sub_100018CBC(v171, v81);
        sub_100018CBC(v169, v99);
        sub_100018F90(v185, &qword_1000FC528, &qword_1000C9D28);
        goto LABEL_44;
      }

      sub_100018DA8(*(v136 + 56) + 40 * v137, &v190);
      sub_100018E0C(&v190, &v191);
      v174 = 0;
      v139 = v192;
      v140 = v193;
      sub_10001530C(&v191, v192);
      v141 = v174;
      (*(v140 + 1))(v187, v168, *(&v184 + 1), v186, v139, v140);
      if (v141)
      {
        v142 = v187;
        v143 = v168;
        sub_100018CBC(v187, v168);
        sub_100018CBC(v142, v143);
        sub_100018CBC(v171, v81);
        sub_100018CBC(v169, v99);

        sub_100018F90(v185, &qword_1000FC528, &qword_1000C9D28);
        sub_100018F90(v189, &qword_1000FC530, &qword_1000C9D38);
        sub_100018F90(v172, &qword_1000FC538, &qword_1000C9D40);
        (*(v194 + 8))(v170, v173);
        return sub_100015F68(&v191);
      }

      v151 = v185;
      sub_100018F90(v185, &qword_1000FC528, &qword_1000C9D28);
      sub_100018CBC(v187, v168);
      v152 = v182;
      v130(v182, 0, 1, v128);
      sub_10001D860(v152, v151, &qword_1000FC528, &qword_1000C9D28);
      sub_100015F68(&v191);
      v65 = v194;
    }

    v131 = sub_1000C4BE4();
    v132 = v175;
    sub_1000204C8(v131, v133, v175);

    v146 = sub_1000C4C04();
    sub_100020770(v146, v147, v132, v183);

    v148 = sub_1000C4C84();
    v182 = sub_1000204C8(v148, v149, v175);
    *&v184 = v150;

    v153 = sub_1000C44E4();
    sub_10001FE58(v153, v154, v175, v181);
    v174 = 0;

    v155 = v180;
    v156 = v173;
    (*(v65 + 16))(v180, v170, v173);
    v157 = *(v65 + 56);
    v173 = v156;
    v157(v155, 0, 1, v156);
    v158 = sub_1000C49E4();
    v160 = v174;
    v167 = sub_1000204C8(v158, v159, v175);
    v174 = v161;
    if (v160)
    {

      sub_100018CBC(v187, v168);
      sub_100018CBC(v171, v81);
      sub_100018CBC(v169, v99);

      sub_100018F90(v180, &qword_1000FC518, &unk_1000C9D10);
      sub_100018F90(v181, &qword_1000FC3E8, &unk_1000C9E10);
      sub_100018F90(v183, &qword_1000FC520, &qword_1000C9D20);
      sub_100018F90(v185, &qword_1000FC528, &qword_1000C9D28);
      v116 = v189;
      goto LABEL_45;
    }

    sub_100018F28(v189, v179, &qword_1000FC530, &qword_1000C9D38);
    v162 = sub_1000C4BF4();
    v175 = sub_1000204C8(v162, v163, v175);
    v166 = v164;

    sub_100018F28(v172, v176, &qword_1000FC538, &qword_1000C9D40);
    sub_100018F28(v185, v177, &qword_1000FC528, &qword_1000C9D28);
    sub_1000C3EF4();
    goto LABEL_43;
  }

  sub_100018CBC(v171, v81);
  sub_100018CBC(v169, v99);
  v116 = v113;
LABEL_45:
  sub_100018F90(v116, &qword_1000FC530, &qword_1000C9D38);
  sub_100018F90(v172, &qword_1000FC538, &qword_1000C9D40);
  return (*(v65 + 8))(v170, v173);
}

uint64_t sub_10001CD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a2;
  v33 = a5;
  v34 = a4;
  v38 = a3;
  v35 = a1;
  v32 = a6;
  v6 = sub_1000C27A4();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C3EA4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C3F24();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v15 = sub_1000C5784();
  sub_1000C1A54(v14, &_mh_execute_header, v15, "Executing MessagesAppBalloon unpacking flow.", 44, 2, _swiftEmptyArrayStorage);

  if (*(v38 + 2))
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  else
  {
    v17 = v34;
    v38 = v13;
    v30 = v6;
    v18 = sub_1000C1554();
    v20 = v19;
    v21 = v37;
    v22 = sub_10001D450(v18, v19, 0xD00000000000001ALL);
    if (v21)
    {
      v23 = v18;
      v24 = v20;
    }

    else
    {
      v36 = v18;
      v37 = v20;
      sub_10001B234(v22, v17, v33, v38);

      v25 = sub_1000C5514();
      v26 = sub_1000C5784();
      sub_1000C1A54(v25, &_mh_execute_header, v26, "Sucessfully completed unpacking.", 32, 2, _swiftEmptyArrayStorage);

      sub_1000C3E54();
      v27 = v11;
      v28 = *(v11 + 16);
      v29 = v38;
      v28(v8, v38, v10);
      (*(v31 + 104))(v8, enum case for BalloonPlugin.Payload.messagesAppBalloon(_:), v30);
      sub_1000C4474();
      (*(v27 + 8))(v29, v10);
      v23 = v36;
      v24 = v37;
    }

    return sub_100018CD0(v23, v24);
  }
}

uint64_t sub_10001D1A8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10001D1F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000124CC(&qword_1000FC540, &unk_1000CE8C0);
    v2 = sub_1000C59D4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_10001D804(*(a1 + 56) + 32 * v13, v28);
        *&v27 = v15;
        *(&v27 + 1) = v16;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v17 = v27;
        sub_10001D8C8(v26, v22);
        sub_10001D8C8(v22, v24);
        sub_10001D8C8(v24, v25);
        sub_10001D8C8(v25, &v23);

        result = sub_100099FF8(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100015F68(v10);
          result = sub_10001D8C8(&v23, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_10001D8C8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *sub_10001D450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000FBFF8 != -1)
  {
    swift_once();
  }

  v4 = 0;
  sub_1000C54A4();
  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();
  sub_1000C4FB4();
  swift_willThrow();
  return "esAppBalloon unpacking flow.";
}

uint64_t sub_10001D804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001D860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000124CC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

_OWORD *sub_10001D8C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001D930@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v44 = sub_1000C4A74();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FC558, &qword_1000C9DD0);
  __chkstk_darwin(v7 - 8);
  v38 = v32 - v8;
  v9 = sub_1000C4304();
  v37 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v32 - v13;
  v42 = a1;

  v16 = sub_10001F530(v15, sub_10001F514, v41);

  v39 = v2;
  if (v2)
  {
    v43 = *a1;
    sub_10001F998(&v43);
  }

  else
  {
    v19 = v37;
    v18 = v38;
    v33 = v12;
    v34 = a1;
    v40 = v16;
    v35 = v14;
    v20 = *(a1 + 1);
    v32[1] = *a1;
    v32[2] = v20;
    v21 = *(a1 + 24);
    v22 = a1;
    v32[3] = v15;
    if (v21)
    {
      v23 = v33;
      v24 = v9;
      (*(v37 + 104))(v33, enum case for RelayReachabilityError.none(_:), v9);

      v25 = v35;
    }

    else
    {

      sub_1000C42F4();
      v24 = v9;
      v26 = (*(v19 + 48))(v18, 1, v9);
      v25 = v35;
      if (v26 == 1)
      {
        sub_100018F90(v18, &qword_1000FC558, &qword_1000C9DD0);
        v23 = v33;
        (*(v19 + 104))(v33, enum case for RelayReachabilityError.unknown(_:), v24);
      }

      else
      {
        v23 = v33;
        (*(v19 + 32))(v33, v18, v24);
      }

      v22 = v34;
    }

    result = (*(v19 + 32))(v25, v23, v24);
    v27 = 0;
    LODWORD(v38) = *(v22 + 40);
    v28 = v40;
    v29 = *(v40 + 16);
    v30 = v44;
    while (1)
    {
      if (v29 == v27)
      {
LABEL_13:
        sub_1000C43C4();
      }

      if (v27 >= *(v28 + 16))
      {
        break;
      }

      (*(v4 + 16))(v6, v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27++, v30);
      v31 = sub_1000C4A54();
      result = (*(v4 + 8))(v6, v30);
      v28 = v40;
      if ((v31 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001DD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a1;
  v45 = a2;
  v43 = a5;
  v7 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v7 - 8);
  v47 = &v36[-v8];
  v9 = sub_1000C4D84();
  __chkstk_darwin(v9 - 8);
  v46 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000124CC(&qword_1000FC568, &qword_1000C9DE8);
  __chkstk_darwin(v11 - 8);
  v13 = &v36[-v12];
  v14 = sub_1000124CC(&qword_1000FC570, &qword_1000C9DF0);
  __chkstk_darwin(v14 - 8);
  v16 = &v36[-v15];
  v17 = sub_1000124CC(&qword_1000FC578, &qword_1000C9DF8);
  __chkstk_darwin(v17 - 8);
  v19 = &v36[-v18];
  v21 = *a4;
  v20 = a4[1];
  v22 = a3[1];
  v23 = *(a3 + 1);
  v24 = *(a3 + 2);

  sub_100018C54(v23, v24);
  v25 = v52;
  sub_1000C3C04();
  if (v25)
  {
  }

  v39 = v22;
  v41 = v13;
  v42 = v20;
  v40 = v21;
  v52 = v19;
  v26 = v47;
  sub_100018C54(*(a3 + 3), *(a3 + 4));
  sub_1000C22F4();
  v28 = *(a3 + 6);
  if (v28 >> 60 == 15)
  {
    v29 = 1;
    v30 = v41;
  }

  else
  {
    v38 = v16;
    v31 = *(a3 + 5);
    v50 = &type metadata for Data;
    v51 = &protocol witness table for Data;
    v48 = v31;
    v49 = v28;
    v37 = enum case for Image.Encoding.png(_:);
    v32 = v28;
    v33 = sub_1000C4D54();
    v34 = *(v33 - 8);
    (*(v34 + 104))(v26, v37, v33);
    (*(v34 + 56))(v26, 0, 1, v33);
    sub_100018C68(v31, v32);
    sub_1000C4D64();
    v30 = v41;
    sub_1000C2304();
    v29 = 0;
  }

  v35 = sub_1000C2314();
  (*(*(v35 - 8) + 56))(v30, v29, 1, v35);

  return sub_1000C4A64();
}

void sub_10001E1D0(uint64_t a3@<X8>)
{
  v119 = a3;
  v3 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v3 - 8);
  v120 = v118 - v4;
  v133 = sub_1000C5974();
  v129 = *(v133 - 8);
  v5 = __chkstk_darwin(v133);
  v124 = v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v122 = v118 - v8;
  v9 = __chkstk_darwin(v7);
  v132 = (v118 - v10);
  __chkstk_darwin(v9);
  v127 = (v118 - v11);
  v12 = sub_1000C43D4();
  __chkstk_darwin(v12 - 8);
  v125 = (v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v14 - 8);
  v131 = v118 - v15;
  v16 = sub_1000C1A94();
  v138 = *(v16 - 8);
  v139 = v16;
  v17 = __chkstk_darwin(v16);
  v121 = (v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v126 = v118 - v20;
  v21 = __chkstk_darwin(v19);
  v128 = v118 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v118 - v24;
  __chkstk_darwin(v23);
  v27 = v118 - v26;
  v135 = sub_1000C1974();
  v28 = *(v135 - 1);
  __chkstk_darwin(v135);
  v30 = v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1000C4FC4();
  v136 = *(v140 - 8);
  v31 = __chkstk_darwin(v140);
  v123 = v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v130 = v118 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = v118 - v36;
  __chkstk_darwin(v35);
  v39 = v118 - v38;
  isa = sub_1000C1544().super.isa;
  v41 = [(objc_class *)isa _imOptionallyDecompressData];

  v42 = sub_1000C1564();
  v44 = v43;

  v45 = v44 >> 62;
  v137 = v42;
  if ((v44 >> 62) > 1)
  {
    if (v45 != 2)
    {
      goto LABEL_14;
    }

    v47 = *(v42 + 16);
    v46 = *(v42 + 24);
    v48 = __OFSUB__(v46, v47);
    v49 = v46 - v47;
    if (!v48)
    {
      if (v49 > 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if (v45)
  {
    if (!__OFSUB__(HIDWORD(v42), v42))
    {
      if (HIDWORD(v42) - v42 > 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v134 = v44;
      v66 = v135;
      (*(v28 + 104))(v30, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v135);
      sub_1000C1964();
      (*(v28 + 8))(v30, v66);
      sub_1000C4FB4();
      v67 = v27;
      sub_1000C1A74();
      v68 = v136;
      v69 = *(v136 + 16);
      v133 = v39;
      v70 = v140;
      v135 = v69;
      (v69)(v37, v39, v140);
      v71 = sub_1000C1A84();
      v72 = sub_1000C5554();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v129 = v73;
        v132 = swift_slowAlloc();
        *&v142 = v132;
        *v73 = 136446210;
        v74 = v131;
        (v135)(v131, v37, v70);
        (*(v68 + 56))(v74, 0, 1, v70);
        v75 = sub_1000C4A84();
        v130 = v67;
        v76 = v68;
        v78 = v77;
        sub_100018F90(v74, &qword_1000FC438, &unk_1000C9DC0);
        v79 = *(v76 + 8);
        v79(v37, v140);
        v80 = sub_10008AC30(v75, v78, &v142);

        v81 = v129;
        *(v129 + 1) = v80;
        v70 = v140;
        _os_log_impl(&_mh_execute_header, v71, v72, "Message unpacking explosion: %{public}s", v81, 0xCu);
        sub_100015F68(v132);

        (*(v138 + 8))(v130, v139);
      }

      else
      {

        v79 = *(v68 + 8);
        v79(v37, v70);
        (*(v138 + 8))(v67, v139);
      }

      sub_10001F478(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v82 = v133;
      (v135)(v83, v133, v70);
      swift_willThrow();
      sub_100018CD0(v137, v134);
      v79(v82, v70);
      return;
    }

    goto LABEL_31;
  }

  if (!BYTE6(v44))
  {
    goto LABEL_14;
  }

LABEL_8:
  sub_1000C1464();
  swift_allocObject();
  v50 = sub_1000C1454();
  sub_10001F4C0();
  v51 = v134;
  sub_1000C1444();
  if (!v51)
  {
    v84 = v44;
    v144 = v142;
    *v145 = *v143;
    *&v145[10] = *&v143[10];
    sub_1000C1A74();
    v85 = sub_1000C1A84();
    v86 = sub_1000C5554();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Unpacking RelayReachabilityResponseDictionary", v87, 2u);
    }

    (*(v138 + 8))(v25, v139);
    sub_10001D930(&v144, v125);
    sub_1000C4644();

    v88 = v137;
    v89 = v84;
    goto LABEL_24;
  }

  v134 = v44;
  *&v142 = v51;
  swift_errorRetain();
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  v52 = v127;
  v53 = v133;
  if (!swift_dynamicCast())
  {

    v90 = v121;
    sub_1000C1A74();
    swift_errorRetain();
    v91 = sub_1000C1A84();
    v92 = sub_1000C5554();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v142 = v94;
      *v93 = 136446210;
      v141 = v51;
      v95 = sub_1000C4A84();
      v97 = sub_10008AC30(v95, v96, &v142);

      *(v93 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v91, v92, "RelayReachabilityResponseDictionary unpacking unknown error: %{public}s", v93, 0xCu);
      sub_100015F68(v94);
    }

    (*(v138 + 8))(v90, v139);
    swift_getErrorValue();
    swift_getDynamicType();
    *&v142 = 0;
    *(&v142 + 1) = 0xE000000000000000;
    sub_1000C5944(22);

    *&v142 = 0xD000000000000014;
    *(&v142 + 1) = 0x80000001000D5330;
    v146._countAndFlagsBits = sub_1000C5D34();
    sub_1000C52E4(v146);

    sub_10001F478(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    v88 = v137;
    v89 = v134;
LABEL_24:
    sub_100018CD0(v88, v89);
    return;
  }

  v54 = v50;

  v55 = v129;
  v56 = v132;
  (*(v129 + 4))(v132, v52, v53);
  sub_1000C1A74();
  v57 = v122;
  v127 = *(v55 + 2);
  (v127)(v122, v56, v53);
  v58 = sub_1000C1A84();
  v59 = sub_1000C5554();
  v60 = os_log_type_enabled(v58, v59);
  v118[1] = v54;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v141 = v121;
    *v61 = 136446210;
    LODWORD(v119) = v59;
    v62 = v120;
    (v127)(v120, v57, v53);
    (*(v55 + 7))(v62, 0, 1, v53);
    v118[0] = sub_1000C4A84();
    v64 = v63;
    sub_100018F90(v62, &qword_1000FC430, &unk_1000C9B00);
    v125 = *(v55 + 1);
    v125(v57, v133);
    v65 = sub_10008AC30(v118[0], v64, &v141);
    v53 = v133;

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v58, v119, "RelayReachabilityResponseDictionary unpacking error: %{public}s", v61, 0xCu);
    sub_100015F68(v121);
  }

  else
  {

    v125 = *(v55 + 1);
    v125(v57, v53);
  }

  v98 = v128;
  v128 = *(v138 + 8);
  (v128)(v98, v139);
  v99 = v135;
  (*(v28 + 104))(v30, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v135);
  sub_1000C1964();
  (*(v28 + 8))(v30, v99);
  (v127)(v124, v132, v53);
  v100 = v130;
  sub_1000C4FA4();
  v101 = v126;
  sub_1000C1A74();
  v102 = v136;
  v103 = v123;
  v104 = v140;
  v135 = *(v136 + 16);
  (v135)(v123, v100, v140);
  v105 = sub_1000C1A84();
  v106 = sub_1000C5554();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v141 = v127;
    *v107 = 136446210;
    v108 = v131;
    (v135)(v131, v103, v104);
    (*(v102 + 56))(v108, 0, 1, v104);
    v109 = sub_1000C4A84();
    v111 = v110;
    sub_100018F90(v108, &qword_1000FC438, &unk_1000C9DC0);
    v112 = *(v102 + 8);
    v112(v103, v140);
    v113 = sub_10008AC30(v109, v111, &v141);

    *(v107 + 4) = v113;
    v104 = v140;
    _os_log_impl(&_mh_execute_header, v105, v106, "RelayReachabilityResponseDictionary unpacking explosion: %{public}s", v107, 0xCu);
    sub_100015F68(v127);

    v114 = v126;
  }

  else
  {

    v112 = *(v102 + 8);
    v112(v103, v104);
    v114 = v101;
  }

  (v128)(v114, v139);
  v115 = v137;
  sub_10001F478(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
  v116 = v130;
  (v135)(v117, v130, v104);
  swift_willThrow();

  sub_100018CD0(v115, v134);
  v112(v116, v104);
  v125(v132, v133);
}

uint64_t sub_10001F478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001F4C0()
{
  result = qword_1000FC550;
  if (!qword_1000FC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC550);
  }

  return result;
}

uint64_t sub_10001F530(uint64_t a1, void (*a2)(uint64_t, uint64_t, _OWORD *), uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v41 = a3;
  v39 = sub_1000C4A74();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v47 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v69 = _swiftEmptyArrayStorage;
  sub_100045A18(0, v7, 0);
  v8 = v69;
  v46 = a1 + 64;
  result = sub_1000C58E4();
  if (result < 0 || (v10 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v48 = *(a1 + 36);
    v37 = v7;
    v38 = v42 + 32;
    v36 = a1 + 72;
    v11 = 1;
    v43 = a1;
    while (1)
    {
      v12 = v10 >> 6;
      if ((*(v46 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        break;
      }

      if (v48 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v44 = v11;
      v45 = 1 << v10;
      v13 = *(a1 + 56);
      v14 = (*(a1 + 48) + 16 * v10);
      v15 = *v14;
      v16 = v14[1];
      v17 = (v13 + 56 * v10);
      v19 = v17[1];
      v18 = v17[2];
      v20 = *(v17 + 6);
      v53[0] = *v17;
      v54 = v20;
      v72 = v4;
      v53[1] = v19;
      v53[2] = v18;
      v21 = *v17;
      v22 = v17[1];
      v23 = v17[2];
      v52 = *(v17 + 6);
      v50 = v22;
      v51 = v23;
      *&v49[56] = v21;
      v58 = v52;
      v59[0] = v15;
      v56 = v22;
      v57 = v23;
      v55 = v21;
      v59[1] = v16;
      v60 = v21;
      v61 = v22;
      v62 = v23;
      v63 = v52;
      swift_bridgeObjectRetain_n();
      sub_10001F9EC(v53, v49);
      sub_10001F9EC(&v55, v49);
      sub_100018F90(v59, &qword_1000FC560, &unk_1000C9DD8);
      v65 = v55;
      v66 = v56;
      v67 = v57;
      v68 = v58;
      v64[0] = v15;
      v64[1] = v16;
      v70[0] = v55;
      v70[1] = v56;
      v70[2] = v57;
      v71 = v58;
      v24 = v72;
      v40(v15, v16, v70);
      if (v24)
      {
        sub_100018F90(v64, &qword_1000FC560, &unk_1000C9DD8);

        return v8;
      }

      v72 = 0;
      sub_100018F90(v64, &qword_1000FC560, &unk_1000C9DD8);
      v25 = v8;
      v69 = v8;
      v27 = v8[2];
      v26 = v8[3];
      if (v27 >= v26 >> 1)
      {
        sub_100045A18((v26 > 1), v27 + 1, 1);
        v25 = v69;
      }

      v25[2] = v27 + 1;
      v8 = v25;
      result = (*(v42 + 32))(v25 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v27, v47, v39);
      a1 = v43;
      v28 = 1 << *(v43 + 32);
      if (v10 >= v28)
      {
        goto LABEL_30;
      }

      v29 = *(v46 + 8 * v12);
      if ((v29 & v45) == 0)
      {
        goto LABEL_31;
      }

      if (v48 != *(v43 + 36))
      {
        goto LABEL_32;
      }

      v30 = v29 & (-2 << (v10 & 0x3F));
      if (v30)
      {
        v10 = __clz(__rbit64(v30)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v4 = v72;
      }

      else
      {
        v31 = v12 << 6;
        v32 = v12 + 1;
        v33 = (v36 + 8 * v12);
        v4 = v72;
        while (v32 < (v28 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_10001FA48(v10, v48, 0);
            v10 = __clz(__rbit64(v34)) + v31;
            goto LABEL_20;
          }
        }

        result = sub_10001FA48(v10, v48, 0);
        v10 = v28;
LABEL_20:
        a1 = v43;
      }

      if (v44 == v37)
      {
        return v8;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = v44 + 1;
        if (v10 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10001FA48(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10001FA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a2;
  v32 = a5;
  v33 = a4;
  v37 = a3;
  v34 = a1;
  v31 = a6;
  v6 = sub_1000C27A4();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C3EA4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C4B04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v15 = sub_1000C57D4();
  sub_1000C1A54(v14, &_mh_execute_header, v15, "Executing CustomAcknowledgementUnpacker unpacking flow.", 55, 2, _swiftEmptyArrayStorage);

  if (*(v37 + 2))
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  else
  {
    v37 = v13;
    v29 = v6;
    v17 = sub_1000C1554();
    v19 = v18;
    v20 = v36;
    v21 = sub_100020EC8(v17, v18, 0xD00000000000001ALL);
    if (v20)
    {
      v22 = v17;
      v23 = v19;
    }

    else
    {
      v35 = v17;
      v36 = v19;
      sub_100020064(v21);

      v24 = sub_1000C5514();
      v25 = sub_1000C57D4();
      sub_1000C1A54(v24, &_mh_execute_header, v25, "Sucessfully completed unpacking.", 32, 2, _swiftEmptyArrayStorage);

      sub_1000C3E54();
      v26 = v11;
      v27 = *(v11 + 16);
      v28 = v37;
      v27(v8, v37, v10);
      (*(v30 + 104))(v8, enum case for BalloonPlugin.Payload.customAcknowledgement(_:), v29);
      sub_1000C4474();
      (*(v26 + 8))(v28, v10);
      v22 = v35;
      v23 = v36;
    }

    return sub_100018CD0(v22, v23);
  }
}

void *sub_10001FE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  result = sub_100020614(a1, a2, a3);
  if (!v4)
  {
    if (result)
    {
      v13 = result;
      v14 = [result absoluteString];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1000C5224();
        v18 = v17;

        if (v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18 == 0xE000000000000000;
        }

        if (v19)
        {

          goto LABEL_14;
        }

        v20 = sub_1000C5C04();

        if (v20)
        {

LABEL_14:
          v23 = sub_1000C14E4();
          return (*(*(v23 - 8) + 56))(a4, 1, 1, v23);
        }
      }

      sub_1000C14A4();

      v22 = sub_1000C14E4();
      (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
    }

    else
    {
      v21 = sub_1000C14E4();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    }

    return sub_100020E58(v11, a4);
  }

  return result;
}

uint64_t sub_100020064(uint64_t a1)
{
  v3 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  __chkstk_darwin(v3 - 8);
  v5 = v34 - v4;
  v6 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v6 - 8);
  v8 = v34 - v7;
  v9 = sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v10 = sub_1000C57D4();
  sub_1000C1A54(v9, &_mh_execute_header, v10, "Unpacking Custom Acknowledgement root dictionary", 48, 2, _swiftEmptyArrayStorage);

  v11 = sub_1000C49C4();
  if (*(a1 + 16))
  {
    v13 = sub_100099FF8(v11, v12);
    v15 = v14;

    if (v15)
    {
      sub_10001D804(*(a1 + 56) + 32 * v13, v35);
      if (swift_dynamicCast())
      {
        v17 = v34[4];
        v16 = v34[5];

        v18 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v18 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          sub_1000C4FC4();
          sub_100018BFC();
          swift_allocError();
          sub_1000C4FB4();
          return swift_willThrow();
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
  }

  v20 = sub_1000C49C4();
  sub_100020BB0(v20, v21, a1);
  if (v1)
  {
  }

LABEL_11:
  v22 = sub_1000C4BE4();
  v24 = sub_1000204C8(v22, v23, a1);
  if (v1)
  {
  }

  v36 = v24;

  v25 = sub_1000C4C04();
  sub_100020770(v25, v26, a1, v8);

  v27 = sub_1000C4C84();
  v34[2] = sub_1000204C8(v27, v28, a1);
  v34[3] = v29;

  v30 = sub_1000C44E4();
  sub_10001FE58(v30, v31, a1, v5);

  v32 = sub_1000C49E4();
  v34[1] = sub_1000204C8(v32, v33, a1);

  return sub_1000C4AF4();
}

uint64_t sub_1000204C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10001D804(*(a3 + 56) + 32 * v4, v8);
  sub_10001D8C8(v8, v9);
  sub_10001D804(v9, v8);
  if (swift_dynamicCast())
  {
    sub_100015F68(v9);
    return v7;
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v9);
  }
}

uint64_t sub_100020614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10001D804(*(a3 + 56) + 32 * v4, v7);
  sub_10001D8C8(v7, v8);
  sub_10001D804(v8, v7);
  sub_10001D1A8(0, &qword_1000FC4B0, NSURL_ptr);
  if (swift_dynamicCast())
  {
    sub_100015F68(v8);
    return v9;
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v8);
  }
}

uint64_t sub_100020770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  if (*(a3 + 16) && (v11 = sub_100099FF8(a1, a2), (v12 & 1) != 0))
  {
    sub_10001D804(*(a3 + 56) + 32 * v11, v18);
    sub_10001D8C8(v18, v19);
    sub_10001D804(v19, v18);
    v13 = sub_1000C1614();
    if (swift_dynamicCast())
    {
      sub_100015F68(v19);
      v14 = *(v13 - 8);
      v15 = *(v14 + 56);
      v15(v10, 0, 1, v13);
      (*(v14 + 32))(a4, v10, v13);
      return (v15)(a4, 0, 1, v13);
    }

    else
    {
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      sub_100018F90(v10, &qword_1000FC520, &qword_1000C9D20);
      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();

      sub_1000C4FB4();
      swift_willThrow();
      return sub_100015F68(v19);
    }
  }

  else
  {
    v17 = sub_1000C1614();
    return (*(*(v17 - 8) + 56))(a4, 1, 1, v17);
  }
}

uint64_t sub_100020A44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  if (!*(a3 + 16) || (result = sub_100099FF8(result, a2), (v6 & 1) == 0))
  {
    v7 = xmmword_1000C9E00;
    goto LABEL_6;
  }

  sub_10001D804(*(a3 + 56) + 32 * result, v9);
  sub_10001D8C8(v9, v10);
  sub_10001D804(v10, v9);
  if (swift_dynamicCast())
  {
    result = sub_100015F68(v10);
    v7 = v8;
LABEL_6:
    *a4 = v7;
    return result;
  }

  sub_100018CBC(0, 0xF000000000000000);
  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();

  sub_1000C4FB4();
  swift_willThrow();
  return sub_100015F68(v10);
}

uint64_t sub_100020BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10001D804(*(a3 + 56) + 32 * v4, v8);
  sub_10001D8C8(v8, v9);
  sub_10001D804(v9, v8);
  if (swift_dynamicCast())
  {
    sub_100015F68(v9);
    return v7;
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v9);
  }
}

uint64_t sub_100020D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10001D804(*(a3 + 56) + 32 * v4, v7);
  sub_10001D8C8(v7, v8);
  sub_10001D804(v8, v7);
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if (swift_dynamicCast())
  {
    sub_100015F68(v8);
    return v9;
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v8);
  }
}

uint64_t sub_100020E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100020EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000FBFF8 != -1)
  {
    swift_once();
  }

  v4 = 0;
  sub_1000C54A4();
  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();
  sub_1000C4FB4();
  swift_willThrow();
  return " root dictionary";
}

uint64_t sub_1000212E4@<X0>(const char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v228 = a1;
  v229 = a2;
  v196 = a3;
  v3 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v4 = __chkstk_darwin(v3 - 8);
  v205 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v204 = &v166 - v7;
  v8 = __chkstk_darwin(v6);
  v201 = &v166 - v9;
  __chkstk_darwin(v8);
  v200 = &v166 - v10;
  v11 = sub_1000124CC(&qword_1000FC590, &qword_1000C9EC0);
  v12 = __chkstk_darwin(v11 - 8);
  v214 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v212 = &v166 - v14;
  v219 = sub_1000124CC(&qword_1000FC598, &qword_1000C9EC8);
  v198 = *(v219 - 8);
  v15 = __chkstk_darwin(v219);
  v203 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v199 = &v166 - v17;
  v225 = sub_1000124CC(&qword_1000FC5A0, &unk_1000C9ED0);
  v197 = *(v225 - 8);
  v18 = __chkstk_darwin(v225);
  v213 = &v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v226 = &v166 - v21;
  v22 = __chkstk_darwin(v20);
  v210 = &v166 - v23;
  __chkstk_darwin(v22);
  v211 = (&v166 - v24);
  v25 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  __chkstk_darwin(v25 - 8);
  v202 = &v166 - v26;
  v27 = sub_1000C1E44();
  __chkstk_darwin(v27 - 8);
  v207 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000124CC(&qword_1000FC5B0, &qword_1000C9EE0);
  __chkstk_darwin(v29 - 8);
  v206 = &v166 - v30;
  v31 = sub_1000C1E24();
  v208 = *(v31 - 8);
  v209 = v31;
  __chkstk_darwin(v31);
  v222 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000C5034();
  __chkstk_darwin(v33 - 8);
  v35 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000C5044();
  v223 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000124CC(&qword_1000FC5B8, &qword_1000C9EE8);
  v40 = __chkstk_darwin(v39 - 8);
  v42 = &v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v166 - v43;
  v45 = type metadata accessor for SMSDictionary(0);
  __chkstk_darwin(v45);
  v47 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  v48 = sub_1000C1454();
  sub_100022C18(&qword_1000FC5C0, type metadata accessor for SMSDictionary, &unk_1000CDA10);
  v49 = v238;
  sub_1000C1444();
  v238 = v49;
  if (v49)
  {
  }

  v220 = v38;
  v221 = v35;
  v218 = v36;
  v191 = v42;
  v193 = v48;
  v194 = v44;
  v51 = *&v47[*(v45 + 92)];
  if (v51)
  {
    v52 = *&v47[*(v45 + 92)];
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

  v53 = v52[2];
  v215 = v47;
  v195 = v45;
  v224 = v52;
  v192 = v51;
  if (v53)
  {
    v230 = _swiftEmptyArrayStorage;

    result = sub_100045A5C(0, v53, 0);
    v54 = 0;
    v55 = v230;
    v216 = (v223 + 32);
    v217 = v53;
    v56 = 32;
    while (v54 < v52[2])
    {
      v228 = v54;
      v229 = v55;
      v227 = v56;
      v57 = *(v52 + v56 + 48);
      v58 = *(v52 + v56 + 64);
      v59 = *(v52 + v56 + 32);
      v237[1] = *(v52 + v56 + 16);
      v237[2] = v59;
      v60 = *(v52 + v56);
      v237[3] = v57;
      v237[4] = v58;
      v237[0] = v60;
      sub_100022C60(v237, &v231);

      v61 = v238;
      sub_100049308(v221);
      if (v61)
      {
        v238 = v61;

        sub_100022CBC(v237);

        v66 = v215;
        return sub_100022D10(v66);
      }

      v62 = v220;
      sub_1000C5024();
      v238 = 0;
      sub_100022CBC(v237);
      v55 = v229;
      v230 = v229;
      v64 = v229[2];
      v63 = v229[3];
      v52 = v224;
      if (v64 >= v63 >> 1)
      {
        sub_100045A5C((v63 > 1), v64 + 1, 1);
        v62 = v220;
        v55 = v230;
      }

      v54 = v228 + 1;
      v55[2] = v64 + 1;
      result = (*(v223 + 32))(v55 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v64, v62, v218);
      v56 = v227 + 80;
      v65 = v222;
      if (v217 == v54)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v55 = _swiftEmptyArrayStorage;
  v65 = v222;
LABEL_16:

  sub_1000C4954();
  v67 = v194;
  v68 = v238;
  sub_1000C1E04();
  if (v68)
  {

    v238 = 0;
    v69 = 1;
  }

  else
  {
    v238 = 0;
    v69 = 0;
  }

  v71 = v208;
  v70 = v209;
  v72 = sub_1000C1E14();
  (*(*(v72 - 8) + 56))(v67, v69, 1, v72);
  v190 = *v215;
  v189 = v215[8];
  v73 = v206;
  sub_100018F28(&v215[v195[5]], v206, &qword_1000FC5B0, &qword_1000C9EE0);
  v74 = *(v71 + 48);
  v75 = v74(v73, 1, v70);
  v229 = v55;
  if (v75 == 1)
  {
    (*(v71 + 104))(v65, enum case for SMSMessage.FilterSubCategoryType.filterSubCategoryNone(_:), v70);
    if (v74(v73, 1, v70) != 1)
    {
      sub_100018F90(v73, &qword_1000FC5B0, &qword_1000C9EE0);
    }
  }

  else
  {
    (*(v71 + 32))(v65, v73, v70);
  }

  v76 = v195;
  v77 = v195[7];
  v78 = v215;
  v79 = &v215[v195[6]];
  v81 = *v79;
  v80 = *(v79 + 1);
  v83 = *&v215[v77];
  v82 = *&v215[v77 + 8];

  v217 = v82;

  v84 = v238;
  sub_100060C2C(v207);
  v238 = v84;
  if (!v84)
  {
    v186 = v83;
    v187 = v81;
    v188 = v80;
    v85 = v76[10];
    v209 = *(v78 + v76[9]);
    sub_100018F28(v78 + v85, v202, &qword_1000FC5A8, &qword_1000CEA40);
    v86 = v76[12];
    v87 = (v78 + v76[11]);
    v88 = v87[1];
    v185 = *v87;
    v183 = *(v78 + v86);
    v182 = *(v78 + v86 + 8);
    v89 = v76[14];
    v90 = (v78 + v76[13]);
    v91 = v90[1];
    v181 = *v90;
    v92 = *(v78 + v89 + 8);
    v179 = *(v78 + v89);
    v93 = v76[16];
    v94 = (v78 + v76[15]);
    v95 = v94[1];
    v177 = *v94;
    v96 = *(v78 + v93 + 8);
    v175 = *(v78 + v93);
    v97 = v76[18];
    v98 = (v78 + v76[17]);
    v99 = *v98;
    v208 = v98[1];
    v100 = *(v78 + v97 + 8);
    v172 = *(v78 + v97);
    v173 = v99;
    v206 = v100;
    v101 = v76[20];
    v102 = v78 + v76[19];
    v171 = *v102;
    v170 = *(v102 + 8);
    v103 = v78 + v101;
    v104 = *(v78 + v101);
    v168 = *(v103 + 8);
    v169 = v104;
    v174 = v96;
    v105 = v192;
    v184 = v88;
    v180 = v91;
    v178 = v92;
    v176 = v95;
    if (!v192)
    {

      v106 = v219;
      v107 = v214;
      v108 = v226;
      goto LABEL_45;
    }

    v221 = *(v192 + 16);

    v106 = v219;
    v107 = v214;
    v108 = v226;
    if (!v221)
    {
      v129 = 0;
      goto LABEL_43;
    }

    v109 = 0;
    v110 = (v105 + 32);
    v220 = "incorrectValueType";
    v223 = v197 + 8;
    v218 = (v198 + 56);
    v216 = (v198 + 48);
    v166 = (v198 + 32);
    v167 = (v198 + 8);
    v111 = v211;
    v112 = v212;
    while (1)
    {
      v231 = *v110;
      v113 = v110[1];
      v114 = v110[2];
      v115 = v110[4];
      v234 = v110[3];
      v235 = v115;
      v232 = v113;
      v233 = v114;
      sub_100022C60(&v231, &v230);
      sub_1000124CC(&qword_1000FC5C8, &qword_1000C9EF0);
      sub_1000C1704();
      if (!*(&v232 + 1))
      {
        break;
      }

      v228 = v109;
      sub_1000C5374();
      v227 = v116;
      sub_100022D6C();
      v117 = v210;
      v118 = v225;
      sub_1000C16F4();
      v119 = v238;
      sub_1000C1714();
      v120 = v223;
      if (v119)
      {

        v121 = *v120;
        (*v120)(v117, v118);
        v106 = v219;
        v112 = v212;
        (*v218)(v212, 1, 1, v219);
        v238 = 0;
        v122 = v118;
        goto LABEL_37;
      }

      v238 = 0;
      v121 = *v223;
      (*v223)(v117, v118);

      v112 = v212;
      v106 = v219;
      if ((*v216)(v212, 1, v219) == 1)
      {
        v122 = v225;
LABEL_37:
        v109 = v228;
        v123 = v211;
        v121(v211, v122);
        v111 = v123;
        v107 = v214;
        v78 = v215;
        v108 = v226;
LABEL_30:
        sub_100018F90(v112, &qword_1000FC590, &qword_1000C9EC0);
        goto LABEL_31;
      }

      v124 = v199;
      (*v166)(v199, v112, v106);
      swift_getKeyPath();
      sub_1000C1724();

      sub_1000C52A4();

      v125 = v200;
      sub_1000C15E4();

      v126 = v201;
      sub_100018F28(v125, v201, &qword_1000FC520, &qword_1000C9D20);
      v127 = sub_1000C1614();
      v128 = *(v127 - 8);
      if ((*(v128 + 48))(v126, 1, v127) != 1)
      {
        sub_1000C15F4();
        sub_100018F90(v125, &qword_1000FC520, &qword_1000C9D20);
        v165 = v219;
        (*v167)(v124, v219);
        v121(v211, v225);
        (*(v128 + 8))(v126, v127);
        sub_100022CBC(&v231);

        v107 = v214;
        v78 = v215;
        v106 = v165;
        v108 = v226;
        v52 = v224;
        v129 = v228;
LABEL_43:
        result = v192;
        v130 = *(v192 + 16);
        if (v129 != v130)
        {
          if (v129 < v130)
          {
            v134 = (v192 + 80 * v129);
            v236[0] = v134[2];
            v135 = v134[3];
            v136 = v134[4];
            v137 = v134[6];
            v236[3] = v134[5];
            v236[4] = v137;
            v236[1] = v135;
            v236[2] = v136;
            sub_100022C60(v236, &v231);
            v210 = sub_10004A758();
            v139 = v138;
            result = sub_100022CBC(v236);
            v201 = v139;
            if (v139)
            {

              v107 = v214;
              v131 = v195;
              goto LABEL_49;
            }

            goto LABEL_70;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          return result;
        }

LABEL_45:
        v131 = v195;
        v132 = (v78 + v195[21]);
        v133 = v132[1];
        v210 = *v132;
        v201 = v133;

LABEL_49:
        v140 = (v78 + v131[22]);
        v141 = *v140;
        v199 = v140[1];
        v200 = v141;
        v142 = v131[25];
        LODWORD(v192) = *(v78 + v131[24]);
        LODWORD(v167) = *(v78 + v142);
        v143 = v52[2];

        v223 = v143;
        if (!v143)
        {
LABEL_63:

          LODWORD(v228) = 0;
LABEL_64:
          v163 = *(v78 + v195[30]);
          v226 = *(v78 + v195[31]);
          v227 = v163;
          v164 = v194;
          sub_100018F28(v194, v191, &qword_1000FC5B8, &qword_1000C9EE8);

          sub_1000C1E34();
          sub_100018F90(v164, &qword_1000FC5B8, &qword_1000C9EE8);

          return sub_100022D10(v215);
        }

        v144 = 0;
        v145 = (v197 + 8);
        v220 = (v198 + 56);
        v221 = "incorrectValueType";
        v216 = (v198 + 48);
        v211 = (v198 + 8);
        v212 = (v198 + 32);
        v146 = 32;
        v218 = (v197 + 8);
        while (2)
        {
          if (v144 >= v52[2])
          {
            goto LABEL_68;
          }

          v231 = *(v52 + v146);
          v147 = *(v52 + v146 + 16);
          v148 = *(v52 + v146 + 32);
          v149 = *(v52 + v146 + 64);
          v234 = *(v52 + v146 + 48);
          v235 = v149;
          v232 = v147;
          v233 = v148;
          sub_100022C60(&v231, &v230);
          sub_1000124CC(&qword_1000FC5C8, &qword_1000C9EF0);
          sub_1000C1704();
          if (*(&v232 + 1))
          {
            v227 = v146;
            v228 = v144;
            sub_1000C5374();
            sub_100022D6C();
            v150 = v213;
            v151 = v107;
            v152 = v225;
            sub_1000C16F4();
            v153 = v238;
            sub_1000C1714();
            if (v153)
            {

              sub_100022CBC(&v231);
              v145 = v218;
              v154 = *v218;
              (*v218)(v150, v152);
              v106 = v219;
              (*v220)(v151, 1, 1, v219);
              v238 = 0;
              v155 = v152;
              goto LABEL_60;
            }

            v238 = 0;
            v145 = v218;
            v154 = *v218;
            (*v218)(v150, v152);

            v106 = v219;
            if ((*v216)(v151, 1, v219) == 1)
            {
              sub_100022CBC(&v231);
              v155 = v225;
LABEL_60:
              v52 = v224;
              v154(v226, v155);
              v107 = v214;
              v78 = v215;
              v146 = v227;
              v144 = v228;
LABEL_52:
              result = sub_100018F90(v107, &qword_1000FC590, &qword_1000C9EC0);
            }

            else
            {
              v156 = v151;
              v157 = v203;
              (*v212)(v203, v156, v106);
              swift_getKeyPath();
              sub_1000C1724();

              sub_1000C52A4();

              v158 = v204;
              sub_1000C15E4();

              v159 = v205;
              sub_100018F28(v158, v205, &qword_1000FC520, &qword_1000C9D20);
              v160 = sub_1000C1614();
              v161 = *(v160 - 8);
              v162 = (*(v161 + 48))(v159, 1, v160);
              v52 = v224;
              if (v162 != 1)
              {
                sub_1000C15F4();
                sub_100022CBC(&v231);
                sub_100018F90(v158, &qword_1000FC520, &qword_1000C9D20);
                (*v211)(v157, v219);
                v154(v226, v225);
                (*(v161 + 8))(v159, v160);

                LODWORD(v228) = 1;
                v78 = v215;
                goto LABEL_64;
              }

              sub_100022CBC(&v231);
              sub_100018F90(v158, &qword_1000FC520, &qword_1000C9D20);
              v106 = v219;
              (*v211)(v157, v219);
              v145 = v218;
              v154(v226, v225);
              result = sub_100018F90(v159, &qword_1000FC520, &qword_1000C9D20);
              v107 = v214;
              v78 = v215;
              v146 = v227;
              v144 = v228;
            }

            ++v144;
            v146 += 80;
            v108 = v226;
            if (v223 == v144)
            {
              goto LABEL_63;
            }

            continue;
          }

          break;
        }

        sub_100022CBC(&v231);
        (*v145)(v108, v225);
        (*v220)(v107, 1, 1, v106);
        goto LABEL_52;
      }

      sub_100018F90(v125, &qword_1000FC520, &qword_1000C9D20);
      v106 = v219;
      (*v167)(v124, v219);
      v111 = v211;
      v121(v211, v225);
      sub_100018F90(v126, &qword_1000FC520, &qword_1000C9D20);
      v107 = v214;
      v78 = v215;
      v108 = v226;
      v112 = v212;
      v109 = v228;
LABEL_31:
      sub_100022CBC(&v231);
      ++v109;
      v110 += 5;
      if (v221 == v109)
      {
        v129 = v221;
        v52 = v224;
        goto LABEL_43;
      }
    }

    (*v223)(v111, v225);
    (*v218)(v112, 1, 1, v106);
    goto LABEL_30;
  }

  (*(v208 + 8))(v65, v209);
  sub_100018F90(v194, &qword_1000FC5B8, &qword_1000C9EE8);
  v66 = v78;
  return sub_100022D10(v66);
}

uint64_t sub_100022C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022D10(uint64_t a1)
{
  v2 = type metadata accessor for SMSDictionary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100022D6C()
{
  result = qword_1000FC5D0;
  if (!qword_1000FC5D0)
  {
    sub_10001308C(&qword_1000FC5A0, &unk_1000C9ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC5D0);
  }

  return result;
}

unint64_t sub_100022DE4()
{
  result = qword_1000FC5D8;
  if (!qword_1000FC5D8)
  {
    sub_1000C3104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC5D8);
  }

  return result;
}

void sub_100022E3C(uint64_t a3@<X8>)
{
  v5 = sub_1000C30E4();
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_1000C1544().super.isa;
  v9 = extractFirstContactFromData(isa);

  if (v9)
  {
    v10 = [v9 familyName];
    v11 = sub_1000C5224();

    v12 = [v9 givenName];
    v13 = sub_1000C5224();
    v37 = v14;

    v15 = objc_opt_self();
    v16 = [v15 stringFromContact:v9 style:0];
    v35 = v7;
    if (v16)
    {
      v17 = v16;
      v18 = sub_1000C5224();
      v31 = v19;
      v32 = v18;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v36 = v3;
    v20 = [v15 nameOrderForContact:{v9, a3}];
    v33 = v13;
    v34 = v11;
    if (v20 == 1)
    {
      v21 = v13;
    }

    else
    {
      v21 = v11;
    }

    v30 = v21;

    if ([v9 contactType] == 1)
    {
      v22 = [v9 organizationName];
      v23 = sub_1000C5224();
      v28 = v24;
      v29 = v23;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v25 = [v9 organizationName];
    sub_1000C5224();

    [v15 nameOrderForContact:v9];

    v26 = v36;
    sub_1000C30D4();
    if (!v26)
    {
      sub_1000C30F4();
    }
  }

  else
  {
    sub_100023120();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_100023120()
{
  result = qword_1000FC5E0;
  if (!qword_1000FC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC5E0);
  }

  return result;
}

uint64_t sub_1000231DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a2;
  v154 = a1;
  v129 = a3;
  v135 = sub_1000C4D24();
  v134 = *(v135 - 8);
  v3 = __chkstk_darwin(v135);
  v139 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v136 = &v125 - v6;
  v7 = __chkstk_darwin(v5);
  v133 = &v125 - v8;
  __chkstk_darwin(v7);
  v140 = &v125 - v9;
  v10 = sub_1000124CC(&qword_1000FC5F0, &unk_1000CA030);
  v11 = __chkstk_darwin(v10 - 8);
  v128 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v130 = &v125 - v14;
  v15 = __chkstk_darwin(v13);
  v127 = &v125 - v16;
  v17 = __chkstk_darwin(v15);
  v126 = &v125 - v18;
  v19 = __chkstk_darwin(v17);
  v138 = &v125 - v20;
  __chkstk_darwin(v19);
  v142 = &v125 - v21;
  v143 = sub_1000C2114();
  v141 = *(v143 - 8);
  v22 = __chkstk_darwin(v143);
  v137 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v144 = &v125 - v24;
  v25 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v25 - 8);
  v146 = &v125 - v26;
  v27 = sub_1000124CC(&qword_1000FC5F8, &unk_1000CA040);
  v28 = __chkstk_darwin(v27 - 8);
  v132 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v131 = &v125 - v31;
  v32 = __chkstk_darwin(v30);
  v145 = &v125 - v33;
  __chkstk_darwin(v32);
  v147 = &v125 - v34;
  v155 = sub_1000C4CC4();
  v165 = *(v155 - 8);
  v35 = __chkstk_darwin(v155);
  v156 = &v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v125 - v37;
  v39 = sub_1000C4CF4();
  v152 = v39;
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1000C5554();
  v153 = sub_100014F70();
  v43 = sub_1000C56B4();
  v150 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v44 = swift_allocObject();
  v149 = xmmword_1000C94D0;
  *(v44 + 16) = xmmword_1000C94D0;
  sub_1000C4CB4();
  v45 = sub_1000C4CD4();
  v47 = v46;
  v151 = *(v40 + 8);
  v151(v42, v39);
  v161 = v45;
  v162 = v47;
  v48 = sub_1000C4A84();
  v50 = v49;

  *(v44 + 56) = &type metadata for String;
  v51 = sub_100014FBC();
  *(v44 + 64) = v51;
  *(v44 + 32) = v48;
  *(v44 + 40) = v50;
  sub_1000C1A54(v148, &_mh_execute_header, v43, "Processing pass at: %@", 22, 2, v44);

  v148 = sub_1000C5524();
  v52 = sub_1000C56B4();
  v53 = swift_allocObject();
  *(v53 + 16) = v149;
  sub_1000C2144();
  sub_1000C4CB4();
  v54 = *(v165 + 8);
  v55 = v38;
  v56 = v155;
  v165 += 8;
  v153 = v54;
  v54(v55, v155);
  v57 = sub_1000C4CD4();
  v59 = v58;
  v151(v42, v152);
  v161 = v57;
  v162 = v59;
  v60 = sub_1000C4A84();
  v62 = v61;

  *(v53 + 56) = &type metadata for String;
  *(v53 + 64) = v51;
  v63 = v156;
  *(v53 + 32) = v60;
  *(v53 + 40) = v62;
  sub_1000C1A54(v148, &_mh_execute_header, v52, "Using working directory: %@", 27, 2, v53);

  sub_1000C2144();
  v159 = v154;
  v160 = v63;
  sub_1000124CC(&qword_1000FC600, &qword_1000CA050);
  v64 = v158;
  sub_1000C4C94();
  if (v64)
  {
    return v153(v63, v56);
  }

  v66 = v146;
  v67 = v161;
  v153(v63, v56);
  if (v67)
  {
    v68 = v67;
    v69 = [v67 image];
    if (v69)
    {
      v70 = v69;
      type metadata accessor for CGImage(0);
      v163 = v71;
      v164 = &protocol witness table for CGImageRef;
      v161 = v70;
      v72 = sub_1000C4D54();
      (*(*(v72 - 8) + 56))(v66, 1, 1, v72);
      v73 = v147;
      sub_1000C4D64();
      v74 = 0;
    }

    else
    {
      v74 = 1;
      v73 = v147;
    }

    v75 = sub_1000C4D84();
    v76 = *(*(v75 - 8) + 56);
    v77 = 1;
    v76(v73, v74, 1, v75);
    v78 = [v68 icon];
    if (v78)
    {
      v79 = v78;
      type metadata accessor for CGImage(0);
      v163 = v80;
      v164 = &protocol witness table for CGImageRef;
      v161 = v79;
      v81 = sub_1000C4D54();
      (*(*(v81 - 8) + 56))(v66, 1, 1, v81);
      v82 = v145;
      sub_1000C4D64();
      v77 = 0;
      v83 = v144;
    }

    else
    {
      v83 = v144;
      v82 = v145;
    }

    v76(v82, v77, 1, v75);
    sub_100024420(v68, v83);
    v84 = [v68 primaryText];
    if (v84)
    {
      v85 = v84;
      v165 = sub_1000C5224();
      v87 = v86;
    }

    else
    {
      v165 = 0;
      v87 = 0;
    }

    v88 = v140;
    v89 = [v68 primaryColor];
    sub_1000C5224();

    if (v87)
    {
      sub_100024D80(v88);
      v90 = v134;
      v91 = v135;
      (*(v134 + 16))(v133, v88, v135);
      v92 = v142;
      sub_1000C2124();

      (*(v90 + 8))(v88, v91);
      v93 = 0;
    }

    else
    {

      v93 = 1;
      v92 = v142;
    }

    v94 = sub_1000C2134();
    v95 = *(v94 - 8);
    v165 = *(v95 + 56);
    v158 = v95 + 56;
    (v165)(v92, v93, 1, v94);
    v96 = [v68 secondaryText];
    v97 = v139;
    if (v96)
    {
      v98 = v96;
      v156 = sub_1000C5224();
      v100 = v99;
    }

    else
    {
      v156 = 0;
      v100 = 0;
    }

    v101 = [v68 secondaryColor];
    sub_1000C5224();

    if (v100)
    {
      v102 = v136;
      sub_100024D80(v136);
      v103 = v134;
      v104 = *(v134 + 16);
      v157 = v94;
      v105 = v102;
      v106 = v135;
      v104(v133, v105, v135);
      v107 = v138;
      v94 = v157;
      sub_1000C2124();

      v108 = v103;
      v97 = v139;
      (*(v108 + 8))(v136, v106);
      v109 = 0;
    }

    else
    {

      v109 = 1;
      v107 = v138;
    }

    v157 = v94;
    (v165)(v107, v109, 1, v94);
    v110 = [v68 tertiaryText];
    v111 = v137;
    if (v110)
    {
      v112 = v110;
      v156 = sub_1000C5224();
      v114 = v113;
    }

    else
    {
      v156 = 0;
      v114 = 0;
    }

    v115 = [v68 tertiaryColor];
    sub_1000C5224();

    if (v114)
    {
      sub_100024D80(v97);
      v116 = v130;
      v117 = v97;
      v118 = v134;
      v119 = v135;
      (*(v134 + 16))(v133, v117, v135);
      v120 = v126;
      sub_1000C2124();

      v111 = v137;
      (*(v118 + 8))(v139, v119);
      v121 = 0;
      v122 = v143;
      v123 = v141;
    }

    else
    {

      v121 = 1;
      v122 = v143;
      v123 = v141;
      v116 = v130;
      v120 = v126;
    }

    (v165)(v120, v121, 1, v157);
    sub_100018F28(v147, v131, &qword_1000FC5F8, &unk_1000CA040);
    sub_100018F28(v145, v132, &qword_1000FC5F8, &unk_1000CA040);
    (*(v123 + 16))(v111, v144, v122);
    sub_100018F28(v142, v127, &qword_1000FC5F0, &unk_1000CA030);
    v124 = v138;
    sub_100018F28(v138, v116, &qword_1000FC5F0, &unk_1000CA030);
    sub_100018F28(v120, v128, &qword_1000FC5F0, &unk_1000CA030);
    sub_1000C2154();

    sub_100018F90(v120, &qword_1000FC5F0, &unk_1000CA030);
    sub_100018F90(v124, &qword_1000FC5F0, &unk_1000CA030);
    sub_100018F90(v142, &qword_1000FC5F0, &unk_1000CA030);
    (*(v123 + 8))(v144, v143);
    sub_100018F90(v145, &qword_1000FC5F8, &unk_1000CA040);
    return sub_100018F90(v147, &qword_1000FC5F8, &unk_1000CA040);
  }

  else
  {
    sub_1000C4FC4();
    sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }
}

uint64_t sub_100024420@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28[7] = a2;
  v4 = sub_1000C4D24();
  v28[0] = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v28 - v8;
  v10 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v10 - 8);
  v12 = v28 - v11;
  v13 = sub_1000124CC(&qword_1000FC5F8, &unk_1000CA040);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v28 - v17;
  v19 = [a1 backgroundImage];
  if (v19)
  {
    v20 = v19;
    type metadata accessor for CGImage(0);
    v28[4] = v21;
    v28[5] = &protocol witness table for CGImageRef;
    v28[1] = v20;
    v22 = sub_1000C4D54();
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    sub_1000C4D64();
    v23 = sub_1000C4D84();
    (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  }

  else
  {
    v24 = sub_1000C4D84();
    (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  }

  v25 = [a1 backgroundColor];
  sub_1000C5224();

  sub_100024D80(v9);
  if (v2)
  {
    sub_100018F90(v18, &qword_1000FC5F8, &unk_1000CA040);
  }

  else
  {

    sub_100018F28(v18, v16, &qword_1000FC5F8, &unk_1000CA040);
    v27 = v28[0];
    (*(v28[0] + 16))(v7, v9, v4);
    sub_1000C2104();
    (*(v27 + 8))(v9, v4);
    return sub_100018F90(v18, &qword_1000FC5F8, &unk_1000CA040);
  }
}

uint64_t sub_1000247BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  sub_1000C4CB4();
  sub_1000C4CD4();
  (*(v5 + 8))(v7, v4);
  v9 = sub_1000C51F4();

  LOBYTE(v4) = [v8 fileExistsAtPath:v9 isDirectory:0];

  if (v4)
  {
    __chkstk_darwin(v10);
    *(&v12 - 2) = a2;
    *(&v12 - 1) = a1;
    sub_1000124CC(&qword_1000FC600, &qword_1000CA050);
    return sub_1000C4C94();
  }

  else
  {
    sub_1000C4FC4();
    sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }
}

void sub_100024A34(NSURL *a1@<X0>, NSURL *a2@<X1>, uint64_t *a3@<X8>)
{
  v24[0] = a2;
  v26 = a3;
  v25 = sub_1000C14E4();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C4CF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v24[1] = a1;
  sub_1000C4CB4();
  sub_1000C4CD4();
  v12 = *(v8 + 8);
  v12(v10, v7);
  v13 = sub_1000C51F4();

  v14 = [v11 isWritableFileAtPath:v13];

  if (v14)
  {
    sub_1000C4CB4();
    sub_1000C4CE4();
    v12(v10, v7);
    sub_1000C1494(v15);
    v24[0] = v16;
    v17 = *(v4 + 8);
    v18 = v25;
    v17(v6, v25);
    sub_1000C4CB4();
    sub_1000C4CE4();
    v12(v10, v7);
    sub_1000C1494(v19);
    v21 = v20;
    v17(v6, v18);
    v22 = v24[0];
    MessagesPreview = PKPassSecurePreviewContextCreateMessagesPreview(v24[0], v21);

    *v26 = MessagesPreview;
  }

  else
  {
    sub_1000C4FC4();
    sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }
}

void sub_100024D80(uint64_t a3@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC608, qword_1000CA058);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000C51F4();
  v9 = [objc_opt_self() colorFromString:v8];

  if (v9)
  {
    if ([v9 CGColor])
    {
      sub_1000C4D14();
      if (v3)
      {

        v10 = sub_1000C4D24();
        (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
        sub_100018F90(v7, &qword_1000FC608, qword_1000CA058);
        sub_1000C4FC4();
        sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
      }

      else
      {

        v11 = sub_1000C4D24();
        v12 = *(v11 - 8);
        (*(v12 + 56))(v7, 0, 1, v11);
        (*(v12 + 32))(a3, v7, v11);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000C4FC4();
    sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }
}

uint64_t sub_100025100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100025164(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000254A4(*a1);
  v5 = v4;
  if (v3 == sub_1000254A4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_1000251EC()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000254A4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100025250(uint64_t a1)
{
  sub_1000254A4(*v1);
  sub_1000C52C4();
}

Swift::Int sub_1000252A4()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000254A4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_100025314()
{
  v0 = &stru_100000020;
  while (1)
  {
    v3 = *(&off_1000F1128 + v0);
    v4 = sub_1000254A4(v3);
    v6 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100099FF8(v4, v6);
    v9 = _swiftEmptyDictionarySingleton[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      break;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_10003AEB0(v12, isUniquelyReferenced_nonNull_native);
      result = sub_100099FF8(v4, v6);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v13)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v18 = result;
    sub_10003B5C4();
    result = v18;
    if (v13)
    {
LABEL_2:
      v1 = result;

      *(_swiftEmptyDictionarySingleton[7] + v1) = v3;
      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    v15 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
    *v15 = v4;
    v15[1] = v6;
    *(_swiftEmptyDictionarySingleton[7] + result) = v3;
    v16 = _swiftEmptyDictionarySingleton[2];
    v11 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v11)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v17;
LABEL_3:
    if (++v0 == 118)
    {
      off_1000FC610 = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1000C5C54();
  __break(1u);
  return result;
}

uint64_t sub_1000254A4(char a1)
{
  result = 0x6974617275447661;
  switch(a1)
  {
    case 1:
      if (kPFMediaPropertyTimeZoneOffsetSeconds)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 29:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 50:
    case 51:
    case 52:
    case 58:
    case 79:
    case 85:
      goto LABEL_100;
    case 9:
      if (!kPFImagePropertyCustomPhotoProcessingFlags)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 24:
      if (!kPFVideoPropertyVideoDynamicRange)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 25:
      goto LABEL_88;
    case 26:
      goto LABEL_33;
    case 27:
      if (kPFVideoPropertyVideoContainsCinematicData)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_84:
      if (!kPFMediaPropertyLivePhotoPairingIdentifier)
      {
        __break(1u);
LABEL_86:
        if (!kPFVideoPropertyCaptureMode)
        {
          __break(1u);
LABEL_88:
          if (!kPFImagePropertyHDRGain)
          {
            __break(1u);
LABEL_90:
            if (!kPFFilePropertyUniformTypeIdentifier)
            {
              __break(1u);
LABEL_92:
              if (!kPFImagePropertySmartStyleVideoCastValue)
              {
                __break(1u);
LABEL_94:
                if (!kPFFilePropertyOriginalFilename)
                {
                  goto LABEL_99;
                }
              }
            }
          }
        }
      }

      goto LABEL_100;
    case 28:
      goto LABEL_84;
    case 30:
      if (!kPFVideoPropertyPlaybackVariationIdentifier)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 31:
      if (!kPFVideoPropertyVideoComplVideoDurationValue)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 32:
      if (!kPFVideoPropertyVideoComplVideoDurationTimescale)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 33:
      goto LABEL_35;
    case 34:
      goto LABEL_27;
    case 35:
      return result;
    case 36:
      goto LABEL_29;
    case 37:
      goto LABEL_20;
    case 38:
      goto LABEL_86;
    case 39:
      if (!kPFVideoPropertyVideoIsMontage)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 40:
      if (kPFVideoPropertyIsProRes)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_48:
      if (!kPFImagePropertySpatialOverCaptureIdentifier)
      {
        __break(1u);
LABEL_50:
        if (!kPFImagePropertySemanticStylePreset)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_100;
    case 41:
      if (kPFVideoPropertyVideoDurationValue)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_62:
      if (!kPFImagePropertyStillImageCaptureFlags)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 42:
      goto LABEL_78;
    case 43:
      if (kPFMediaPropertyOriginatingAssetIdentifier)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_14:
      if (kPFImagePropertySmartStyleToneBias)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_16:
      if (kPFVideoPropertyCaptureModeTimelapse)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_18:
      if (kPFImagePropertySmartStyleIsReversible)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_20:
      if (kPFVideoPropertyCustomCodecFourCharCode)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_22:
      result = 0x6953656C6946534ELL;
      break;
    case 49:
      return 0x5465746144737067;
    case 53:
      goto LABEL_22;
    case 54:
      goto LABEL_90;
    case 55:
      goto LABEL_94;
    case 56:
      if (kPFImagePropertyIsPhotoBooth)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_25:
      if (!kPFImagePropertyIsAnimatedImage)
      {
        __break(1u);
LABEL_27:
        if (!kPFVideoPropertyVideoComplVideoImageDisplayTimescale)
        {
          __break(1u);
LABEL_29:
          if (!kPFVideoPropertyAVFPS)
          {
            __break(1u);
LABEL_31:
            if (!kPFImagePropertySmartStyleCast)
            {
              __break(1u);
LABEL_33:
              if (!kPFImagePropertyHasHDRGainMap)
              {
                __break(1u);
LABEL_35:
                if (!kPFVideoPropertyVideoComplVideoImageDisplayValue)
                {
                  goto LABEL_99;
                }
              }
            }
          }
        }
      }

      goto LABEL_100;
    case 57:
      if (kPFImagePropertyBurstUuid)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_78:
      if (!kPFVideoPropertyVideoDurationTimescale)
      {
        __break(1u);
LABEL_80:
        if (!kPFImagePropertyFrontFacingCamera)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_100;
    case 59:
      goto LABEL_80;
    case 60:
      goto LABEL_48;
    case 61:
      if (!kPFImagePropertySemanticStyleSceneBias)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 62:
      goto LABEL_68;
    case 63:
      if (!kPFImagePropertySemanticStyleRenderingVersion)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 64:
      goto LABEL_50;
    case 65:
      if (kPFImagePropertySmartStyleHasSmartStyle)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_68:
      if (!kPFImagePropertySemanticStyleWarmthBias)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 66:
      goto LABEL_14;
    case 67:
      if (!kPFImagePropertySmartStyleColorBias)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 68:
      goto LABEL_103;
    case 69:
      goto LABEL_31;
    case 70:
      if (kPFImagePropertySmartStyleRenderingVersion)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_10:
      if (!kPFImagePropertyCameraUsedForCapture)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 71:
      goto LABEL_18;
    case 72:
      goto LABEL_92;
    case 73:
      if (kPFImagePropertyIsHDR)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_98:
      if (!kPFImagePropertyHasISOGainMap)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 74:
      goto LABEL_98;
    case 75:
      goto LABEL_25;
    case 76:
      goto LABEL_62;
    case 77:
      goto LABEL_10;
    case 78:
      if (kPFImagePropertyExifFlashFired)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_103:
      if (!kPFImagePropertySmartStyleIntensity)
      {
        __break(1u);
        JUMPOUT(0x100025AB8);
      }

      goto LABEL_100;
    case 80:
      goto LABEL_16;
    case 81:
      if (kPFImagePropertyHasSpatialAudio)
      {
        goto LABEL_100;
      }

      __break(1u);
      return 0x5465746144737067;
    case 82:
      if (!kPFImagePropertyIsAlchemist)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 83:
      goto LABEL_6;
    case 84:
      goto LABEL_4;
    default:
      if (kPFMediaPropertyCreationDate)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_4:
      if (!kPFImagePropertyGenerativeAIImageType)
      {
        __break(1u);
LABEL_6:
        if (!kPFImagePropertyIsThreeImageStereoHEIC)
        {
LABEL_99:
          __break(1u);
        }
      }

LABEL_100:
      result = sub_1000C5224();
      break;
  }

  return result;
}

uint64_t sub_100025C10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100028738(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100025C40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000254A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_100025C6C(void *a1)
{
  v2 = sub_1000C2B54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000124CC(&qword_1000FC618, &unk_1000CA098);
  __chkstk_darwin(v6 - 8);
  v8 = &v113 - v7;
  v9 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v9 - 8);
  v11 = &v113 - v10;
  v12 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v113 - v16;
  result = [a1 syndicationProperties];
  if (result)
  {
    v116 = v17;
    v117 = v15;
    v118 = v11;
    v119 = v8;
    v120 = v5;
    v121 = v2;
    v19 = result;
    v20 = sub_1000C5194();

    v21 = 0;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 64);
    v25 = (v22 + 63) >> 6;
    v115 = enum case for MediaMetadata.AppleMakerNoteCamera.unknown(_:);
    v114 = (v3 + 104);
    v113 = (v3 + 56);
    while (1)
    {
      if (v24)
      {
        v26 = v21;
LABEL_17:
        v29 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v30 = v29 | (v26 << 6);
        v31 = (*(v20 + 48) + 16 * v30);
        v33 = *v31;
        v32 = v31[1];
        sub_10001D804(*(v20 + 56) + 32 * v30, v123);
        *&v124 = v33;
        *(&v124 + 1) = v32;
        sub_10001D8C8(v123, &v125);
      }

      else
      {
        v27 = v25 <= v21 + 1 ? v21 + 1 : v25;
        v28 = v27 - 1;
        while (1)
        {
          v26 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            JUMPOUT(0x1000285E0);
          }

          if (v26 >= v25)
          {
            break;
          }

          v24 = *(v20 + 64 + 8 * v26);
          ++v21;
          if (v24)
          {
            v21 = v26;
            goto LABEL_17;
          }
        }

        v24 = 0;
        v125 = 0u;
        v126 = 0u;
        v21 = v28;
        v124 = 0u;
      }

      v127 = v124;
      v128[0] = v125;
      v128[1] = v126;
      v34 = *(&v124 + 1);
      if (!*(&v124 + 1))
      {
      }

      v35 = v127;
      sub_10001D8C8(v128, &v124);
      if (qword_1000FC000 != -1)
      {
        swift_once();
      }

      v36 = off_1000FC610;
      if (*(off_1000FC610 + 2))
      {
        v37 = sub_100099FF8(v35, v34);
        v39 = v38;

        if (v39)
        {
          switch(*(v36[7] + v37))
          {
            case 1:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v83 = v122;
                [v122 integerValue];
              }

              sub_1000C2A24();
              break;
            case 2:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v76 = v122;
                [v122 doubleValue];
              }

              sub_1000C2AD4();
              break;
            case 3:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v79 = v122;
                [v122 integerValue];
              }

              sub_1000C29F4();
              break;
            case 4:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v69 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_1000C29A4();
              break;
            case 5:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v89 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_1000C2A04();
              break;
            case 6:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2DF4();
              break;
            case 7:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2DC4();
              break;
            case 8:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C28E4();
              break;
            case 9:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v73 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_1000C2A44();
              break;
            case 0xA:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v95 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2A54();
              break;
            case 0xB:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v64 = v122;
                [v122 doubleValue];
              }

              sub_1000C2964();
              break;
            case 0xC:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v72 = v122;
                [v122 integerValue];
              }

              sub_1000C2A84();
              break;
            case 0xD:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v93 = v122;
                [v122 integerValue];
              }

              sub_1000C2D24();
              break;
            case 0xE:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v61 = v122;
                [v122 doubleValue];
              }

              sub_1000C28A4();
              break;
            case 0xF:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v77 = v122;
                [v122 doubleValue];
              }

              sub_1000C2AB4();
              break;
            case 0x10:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v58 = v122;
                [v122 integerValue];
              }

              sub_1000C29E4();
              break;
            case 0x11:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v85 = v122;
                [v122 integerValue];
              }

              sub_1000C2934();
              break;
            case 0x12:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v94 = v122;
                [v122 doubleValue];
              }

              sub_1000C2944();
              break;
            case 0x13:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2D44();
              break;
            case 0x14:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2D04();
              break;
            case 0x15:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v92 = v122;
                [v122 integerValue];
              }

              sub_1000C2954();
              break;
            case 0x16:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v99 = v122;
                [v122 integerValue];
              }

              sub_1000C28D4();
              break;
            case 0x17:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v102 = v122;
                [v122 integerValue];
              }

              sub_1000C2B94();
              break;
            case 0x18:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v75 = v122;
                [v122 integerValue];
              }

              sub_1000C2AA4();
              break;
            case 0x19:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v74 = v122;
                [v122 doubleValue];
              }

              sub_1000C2D64();
              break;
            case 0x1A:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v104 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2974();
              break;
            case 0x1B:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v56 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2C94();
              break;
            case 0x1C:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2864();
              break;
            case 0x1D:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v103 = v122;
                [v122 doubleValue];
              }

              sub_1000C2904();
              break;
            case 0x1E:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v96 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_1000C2B34();
              break;
            case 0x1F:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v84 = v122;
                [v122 doubleValue];
              }

              sub_1000C2CB4();
              break;
            case 0x20:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v97 = v122;
                [v122 doubleValue];
              }

              sub_1000C2CD4();
              break;
            case 0x21:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v62 = v122;
                [v122 doubleValue];
              }

              sub_1000C2CE4();
              break;
            case 0x22:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v57 = v122;
                [v122 doubleValue];
              }

              sub_1000C2CF4();
              break;
            case 0x23:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v53 = v122;
                [v122 doubleValue];
              }

              sub_1000C2884();
              break;
            case 0x24:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v54 = v122;
                [v122 doubleValue];
              }

              sub_1000C2D14();
              break;
            case 0x25:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2A74();
              break;
            case 0x26:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2894();
              break;
            case 0x27:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C29D4();
              break;
            case 0x28:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v70 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2DA4();
              break;
            case 0x29:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v86 = v122;
                [v122 doubleValue];
              }

              sub_1000C2AE4();
              break;
            case 0x2A:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v100 = v122;
                [v122 doubleValue];
              }

              sub_1000C2C04();
              break;
            case 0x2B:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2C74();
              break;
            case 0x2C:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v60 = v122;
                [v122 doubleValue];
              }

              sub_1000C2E04();
              break;
            case 0x2D:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v98 = v122;
                [v122 doubleValue];
              }

              sub_1000C2DB4();
              break;
            case 0x2E:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v106 = v122;
                [v122 doubleValue];
              }

              sub_1000C2D74();
              break;
            case 0x2F:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v51 = v122;
                [v122 doubleValue];
              }

              sub_1000C2D94();
              break;
            case 0x30:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C28B4();
              break;
            case 0x31:
              sub_10001D804(&v124, v123);
              v66 = sub_1000C15D4();
              v67 = v117;
              v68 = swift_dynamicCast();
              (*(*(v66 - 8) + 56))(v67, v68 ^ 1u, 1, v66);
              sub_1000C2914();
              break;
            case 0x32:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v46 = v122;
                [v122 doubleValue];
              }

              sub_1000C2B84();
              break;
            case 0x33:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v108 = v122;
                [v122 doubleValue];
              }

              sub_1000C29C4();
              break;
            case 0x34:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2A94();
              break;
            case 0x35:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v50 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_1000C2D84();
              break;
            case 0x36:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2BB4();
              break;
            case 0x37:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2A64();
              break;
            case 0x38:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v52 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2924();
              break;
            case 0x39:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C15E4();

              sub_1000C2DD4();
              break;
            case 0x3A:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C28F4();
              break;
            case 0x3B:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v101 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2AF4();
              break;
            case 0x3C:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2CA4();
              break;
            case 0x3D:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v88 = v122;
                [v122 doubleValue];
              }

              sub_1000C2BD4();
              break;
            case 0x3E:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v91 = v122;
                [v122 doubleValue];
              }

              sub_1000C2C14();
              break;
            case 0x3F:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v78 = v122;
                [v122 integerValue];
              }

              sub_1000C2CC4();
              break;
            case 0x40:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v71 = v122;
                [v122 integerValue];
              }

              sub_1000C2B04();
              break;
            case 0x41:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v90 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2994();
              break;
            case 0x42:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v47 = v122;
                [v122 doubleValue];
              }

              sub_1000C2AC4();
              break;
            case 0x43:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v59 = v122;
                [v122 doubleValue];
              }

              sub_1000C2B14();
              break;
            case 0x44:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v110 = v122;
                [v122 doubleValue];
              }

              sub_1000C2B24();
              break;
            case 0x45:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v55 = v122;
                [v122 doubleValue];
              }

              sub_1000C2A14();
              break;
            case 0x46:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v44 = v122;
                [v122 integerValue];
              }

              sub_1000C2C84();
              break;
            case 0x47:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v49 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2BE4();
              break;
            case 0x48:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v105 = v122;
                [v122 doubleValue];
              }

              sub_1000C2C64();
              break;
            case 0x49:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v107 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2D34();
              break;
            case 0x4A:
            case 0x4B:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v40 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2984();
              break;
            case 0x4C:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v87 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_1000C2BF4();
              break;
            case 0x4D:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v45 = v122;
                [v122 integerValue];
              }

              v111 = v121;
              (*v114)(v120, v115, v121);
              v112 = v119;
              sub_1000C2B44();
              (*v113)(v112, 0, 1, v111);
              sub_1000C2B64();
              break;
            case 0x4E:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v109 = v122;
                [v122 BOOLValue];
              }

              sub_1000C29B4();
              break;
            case 0x4F:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v43 = v122;
                [v122 doubleValue];
              }

              sub_1000C2C44();
              break;
            case 0x50:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v48 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2B74();
              break;
            case 0x51:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v65 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2A34();
              break;
            case 0x52:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v63 = v122;
                [v122 BOOLValue];
              }

              sub_1000C28C4();
              break;
            case 0x53:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v42 = v122;
                [v122 BOOLValue];
              }

              sub_1000C2BC4();
              break;
            case 0x54:
              sub_10001D804(&v124, v123);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v41 = v122;
                [v122 doubleValue];
              }

              sub_1000C2BA4();
              break;
            case 0x55:
              sub_10001D804(&v124, v123);
              swift_dynamicCast();
              sub_1000C2874();
              break;
            default:
              sub_10001D804(&v124, v123);
              v80 = sub_1000C15D4();
              v81 = v116;
              v82 = swift_dynamicCast();
              (*(*(v80 - 8) + 56))(v81, v82 ^ 1u, 1, v80);
              sub_1000C2DE4();
              break;
          }
        }
      }

      else
      {
      }

      sub_100015F68(&v124);
    }
  }

  return result;
}