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

        while (byte_100033B30[v10] < 0);
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

id SMSCopySanitizedContentLocation(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"cid:"])
  {
    v2 = [v1 mutableCopy];
    [v2 replaceOccurrencesOfString:@"cid:" withString:&stru_10003EBC8 options:2 range:{0, objc_msgSend(@"cid:", "length")}];
  }

  else
  {
    v2 = v1;
  }

  return v2;
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
  v75 = a1;
  v74 = objc_alloc_init(AudioMetadata);
  v73 = 0;
  v72 = 0;
  outExtAudioFile = 0;
  memset(&__b, 0, sizeof(__b));
  v1 = malloc_type_malloc(0x8000uLL, 0x1000040BDFB0063uLL);
  v71 = v1;
  if (v1)
  {
    if (v75)
    {
      v2 = ExtAudioFileOpenURL(v75, &outExtAudioFile);
      if (outExtAudioFile)
      {
        outPropertyData = 0;
        ioPropertyDataSize = 8;
        Property = ExtAudioFileGetProperty(outExtAudioFile, 0x6166696Cu, &ioPropertyDataSize, &outPropertyData);
        v63 = Property;
        if (Property)
        {
          v62 = sub_10000AA78(Property);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v61 = sub_10000AAD8(v63);
            sub_10000AAC4(v101, v61);
            _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Unable to get audioID: %@", v101, 0xCu);
          }
        }

        else
        {
          v85 = 0;
          ioDataSize = 4;
          v4 = AudioFileGetProperty(outPropertyData, 0x66666D74u, &ioDataSize, &v85);
          v60 = v85 == 1667327590;
          if (v85 == 1667327590)
          {
            v83 = 0.0;
            v82 = 8;
            v5 = AudioFileGetProperty(outPropertyData, 0x65647572u, &v82, &v83);
            v64 = v5;
            if (v5)
            {
              v58 = sub_10000AA78(v5);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v57 = sub_10000AAD8(v64);
                sub_10000AAC4(v100, v57);
                _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Unable to get duration: %@", v100, 0xCu);
              }
            }

            else
            {
              [(AudioMetadata *)v74 setDuration:v83];
              v56 = transcriptWaveformWidthForDuration(v83);
              v6 = powerLevelsCountForWidth(v56);
              v55 = v6;
              if (v6 && v6 < 0x3E8)
              {
                v72 = [[NSMutableArray alloc] initWithCapacity:v6];

                if (v72)
                {
                  for (i = 0; i < v55; ++i)
                  {
                    v9 = [NSNumber numberWithUnsignedInteger:0];
                    [v72 addObject:v9];
                  }

                  v51 = v83 / v55;
                  memset(v81, 0, sizeof(v81));
                  v80 = 40;
                  v10 = ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &v80, v81);
                  v65 = v10;
                  if (v10)
                  {
                    v50 = sub_10000AA78(v10);
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                    {
                      v49 = sub_10000AAD8(v65);
                      sub_10000AAC4(v98, v49);
                      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Unable to get sourceFormat: %@", v98, 0xCu);
                    }
                  }

                  else if (!v60 || LODWORD(v81[1]) == 1869641075)
                  {
                    v12 = memset(inPropertyData, 0, sizeof(inPropertyData));
                    if (v81[0] > 0.0 && v81[0] < 72000.0)
                    {
                      inPropertyData[0] = v81[0];
                      *&inPropertyData[1] = 0x96C70636DLL;
                      LODWORD(inPropertyData[4]) = 32;
                      *&inPropertyData[3] = 0x100000004;
                      *&inPropertyData[2] = 0x100000004;
                      v14 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
                      v66 = v14;
                      if (v14)
                      {
                        v46 = sub_10000AA78(v14);
                        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                        {
                          v45 = sub_10000AAD8(v66);
                          sub_10000AAC4(v95, v45);
                          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Unable to set clientFormat: %@", v95, 0xCu);
                        }
                      }

                      else
                      {
                        v44 = 0.0;
                        v73 = [[NSMutableArray alloc] initWithCapacity:v55];

                        if (v73)
                        {
                          for (j = 0; j < v55; ++j)
                          {
                            v16 = [NSNumber numberWithFloat:0.0];
                            [v73 addObject:v16];
                          }

                          do
                          {
                            __b.mNumberBuffers = 1;
                            __b.mBuffers[0].mNumberChannels = 1;
                            __b.mBuffers[0].mDataByteSize = 0x8000;
                            __b.mBuffers[0].mData = v71;
                            ioNumberFrames = 0x2000;
                            v17 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &__b);
                            v67 = v17;
                            if (!v17 && ioNumberFrames)
                            {
                              v43 = ioNumberFrames / inPropertyData[0];
                              mData = __b.mBuffers[0].mData;
                              v38 = __b.mBuffers[0].mDataByteSize / LODWORD(inPropertyData[3]);
                              for (k = 0; k < v38; ++k)
                              {
                                if ((mData[k] * 32767.0) >= 0x7FFF)
                                {
                                  v18 = 0x7FFF;
                                }

                                else
                                {
                                  v18 = mData[k] * 32767.0;
                                }

                                if (v18 < -32768)
                                {
                                  v18 = -32768;
                                }

                                v36 = v18;
                                if (v38 == 1)
                                {
                                  v35 = v44;
                                }

                                else
                                {
                                  v35 = v44 + k / (v38 - 1) * v43;
                                }

                                if (v35 / v51 >= (v55 - 1))
                                {
                                  v19 = (v55 - 1);
                                }

                                else
                                {
                                  v19 = v35 / v51;
                                }

                                v34 = v19;
                                v20 = [v73 objectAtIndex:v19];
                                [v20 floatValue];
                                v22 = pow(v21, 2.0);
                                v23 = [v72 objectAtIndex:v34];
                                v24 = [v23 unsignedIntegerValue];
                                v25 = pow(v36, 2.0) + v22 * v24;
                                v26 = [v72 objectAtIndex:v34];
                                *&v25 = sqrt(v25 / ([v26 unsignedIntegerValue] + 1));

                                LODWORD(v27) = LODWORD(v25);
                                v28 = [NSNumber numberWithFloat:v27];
                                [v73 setObject:v28 atIndexedSubscript:v34];

                                v29 = [v72 objectAtIndex:v34];
                                v30 = [v29 unsignedIntegerValue] + 1;

                                v31 = [NSNumber numberWithUnsignedInteger:v30];
                                [v72 replaceObjectAtIndex:v34 withObject:v31];
                              }

                              v44 = v44 + v43;
                              v33 = 0;
                            }

                            else
                            {
                              oslog = sub_10000AA78(v17);
                              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                              {
                                v39 = sub_10000AAD8(v67);
                                sub_10000AAC4(v94, v39);
                                _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unable to determine ioNumberFrames: %@", v94, 0xCu);
                              }

                              v33 = 2;
                            }
                          }

                          while (!v33);
                        }

                        else
                        {
                          v42 = sub_10000AA78(v15);
                          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                          {
                            sub_10000AABC(v89);
                            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Unable to allocate powerLevels", v89, 2u);
                          }
                        }
                      }
                    }

                    else
                    {
                      v47 = sub_10000AA78(v12);
                      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                      {
                        v13 = [NSNumber numberWithDouble:v81[0]];
                        sub_10000AAC4(v96, v13);
                        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "mSampleRate is out of bounds: %@", v96, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v48 = sub_10000AA78(v10);
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      v11 = [NSNumber numberWithUnsignedInt:LODWORD(v81[1])];
                      sub_10000AAC4(v97, v11);
                      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Format is not OPUS: %@", v97, 0xCu);
                    }
                  }
                }

                else
                {
                  v53 = sub_10000AA78(v8);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    sub_10000AABC(v90);
                    _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Unable to allocate runningAverageCounts", v90, 2u);
                  }
                }
              }

              else
              {
                v54 = sub_10000AA78(v6);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  v7 = [NSNumber numberWithUnsignedInteger:v55];
                  sub_10000AAC4(v99, v7);
                  _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Failing because powerLevelsCount is out of bounds: %@", v99, 0xCu);
                }
              }
            }
          }

          else
          {
            v59 = sub_10000AA78(v4);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              sub_10000AABC(v91);
              _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Container is not CAF.", v91, 2u);
            }
          }
        }
      }

      else
      {
        v68 = sub_10000AA78(v2);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_10000AAC4(v102, v75);
          _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Unable to open file url: %@", v102, 0xCu);
        }
      }
    }

    else
    {
      v69 = sub_10000AA78(v1);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_10000AABC(v92);
        _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "No input file URL", v92, 2u);
      }
    }
  }

  else
  {
    v70 = sub_10000AA78(0);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      sub_10000AABC(buf);
      _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Couldn't allocate output buffer", buf, 2u);
    }
  }

  if (outExtAudioFile)
  {
    ExtAudioFileDispose(outExtAudioFile);
  }

  if (v71)
  {
    free(v71);
  }

  [(AudioMetadata *)v74 setPowerLevels:v73];
  v76 = v74;

  return v76;
}

id sub_10000AA78(uint64_t a1)
{
  if (qword_100043410 != -1)
  {
    sub_10002DD8C();
  }

  v2 = qword_100043418;

  return v2;
}

double sub_10000AAC4(uint64_t a1, uint64_t a2)
{
  *&result = 138412290;
  *a1 = 138412290;
  *(a1 + 4) = a2;
  return result;
}

const __CFString *sub_10000AAD8(int a1)
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

void sub_10000AB98(id a1)
{
  qword_100043418 = os_log_create("com.apple.Messages.blastdoor", "AudioPreviewLevelsGenerator");

  _objc_release_x1();
}

void sub_10000AC20(id a1)
{
  qword_100043420 = objc_alloc_init(MBDXMLParser);

  _objc_release_x1();
}

id sub_10000AE88(uint64_t a1, void *a2)
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

void sub_10000AF44(uint64_t a1)
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

objc_class *sub_10000B59C(uint64_t a1, uint64_t a2)
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

id sub_10000B79C(uint64_t a1)
{
  if (qword_100043440 != -1)
  {
    sub_10002DE24();
  }

  v2 = qword_100043438;

  return v2;
}

void sub_10000BB7C(id a1)
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
  v6 = qword_100043438;
  qword_100043438 = v5;
}

void sub_10000BC84(id a1)
{
  v1 = sub_10000B79C(a1);
  v4 = [v1 mutableCopy];

  [v4 addCharactersInString:MBDIMAttachmentCharacterString];
  [v4 addCharactersInString:MBDIMBreadcrumbCharacterString];
  v2 = [v4 copy];
  v3 = qword_100043448;
  qword_100043448 = v2;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_10000C0EC(&qword_100042D90, &qword_100033C60);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10002E02C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_10002E0EC();
  qword_100044E00 = sub_10002E0AC();
  qword_100044E08 = &off_10003D798;
  sub_10002E07C();
  qword_100044E10 = &off_10003D828;
  sub_10002E08C();
  sub_10002E45C();
  sub_10000C134();
  sub_10002E0BC();
  sub_10002E17C();
  sub_10000C188();
  sub_10002E0BC();
  sub_10002E49C();
  sub_10000C1DC();
  sub_10002E0BC();
  sub_10002E14C();
  sub_10000C230();
  sub_10002E0BC();
  sub_10002E01C();
  sub_10002E64C();
  sub_10000C904(&qword_100042DB8, &type metadata accessor for RelayGroupMutationMessageUnpacker, &protocol conformance descriptor for RelayGroupMutationMessageUnpacker);
  sub_10002E0BC();
  (*(v7 + 8))(v9, v6);
  sub_10002E29C();
  sub_10000C284();
  sub_10002E0CC();
  sub_10002E3BC();
  sub_10000C2D8();
  sub_10002E0DC();
  sub_10002E26C();
  sub_10000C32C();
  sub_10002E0CC();
  v10 = sub_10002E81C();
  sub_10000C380(v10, qword_100044E18);
  v11 = sub_10000C3E4(v10, qword_100044E18);
  v12 = *(v10 - 8);
  (*(v12 + 104))(v11, enum case for SandboxID.airlock(_:), v10);
  (*(v12 + 16))(v5, v11, v10);
  (*(v12 + 56))(v5, 0, 1, v10);
  sub_10002E09C();
  sub_10000C41C(v5);
  return 0;
}

uint64_t sub_10000C0EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000C134()
{
  result = qword_100042D98;
  if (!qword_100042D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042D98);
  }

  return result;
}

unint64_t sub_10000C188()
{
  result = qword_100042DA0;
  if (!qword_100042DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DA0);
  }

  return result;
}

unint64_t sub_10000C1DC()
{
  result = qword_100042DA8;
  if (!qword_100042DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DA8);
  }

  return result;
}

unint64_t sub_10000C230()
{
  result = qword_100042DB0;
  if (!qword_100042DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DB0);
  }

  return result;
}

unint64_t sub_10000C284()
{
  result = qword_100042DC0;
  if (!qword_100042DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DC0);
  }

  return result;
}

unint64_t sub_10000C2D8()
{
  result = qword_100042DC8;
  if (!qword_100042DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DC8);
  }

  return result;
}

unint64_t sub_10000C32C()
{
  result = qword_100042DD0;
  if (!qword_100042DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DD0);
  }

  return result;
}

uint64_t *sub_10000C380(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000C3E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C41C(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100042D90, &qword_100033C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10000C484(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000C4BC()
{
  sub_10002E87C();
  v0 = sub_10002E96C();

  return v0;
}

uint64_t sub_10000C4F8(uint64_t a1)
{
  sub_10002E87C();
  sub_10002E8FC();
}

Swift::Int sub_10000C54C(uint64_t a1)
{
  sub_10002E87C();
  sub_10002EDCC();
  sub_10002E8FC();
  v1 = sub_10002EDEC();

  return v1;
}

uint64_t sub_10000C5C8(uint64_t a1, id *a2)
{
  result = sub_10002E85C();
  *a2 = 0;
  return result;
}

uint64_t sub_10000C640(uint64_t a1, id *a2)
{
  v3 = sub_10002E86C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000C6C0@<X0>(uint64_t *a2@<X8>)
{
  sub_10002E87C();
  v3 = sub_10002E84C();

  *a2 = v3;
  return result;
}

uint64_t sub_10000C704(void *a1, uint64_t *a2)
{
  v2 = sub_10002E87C();
  v4 = v3;
  if (v2 == sub_10002E87C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10002ED5C();
  }

  return v7 & 1;
}

uint64_t sub_10000C78C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10002E84C();

  *a2 = v3;
  return result;
}

uint64_t sub_10000C7D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002E87C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000C800(uint64_t a1)
{
  v2 = sub_10000C904(&qword_100042E00, type metadata accessor for Key, &unk_100033DA4);
  v3 = sub_10000C904(&qword_100042E08, type metadata accessor for Key, &unk_100033D44);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000C904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10000C9DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000C9F0(uint64_t a1, int a2)
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

uint64_t sub_10000CA10(uint64_t result, int a2, int a3)
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

uint64_t sub_10000CA5C(uint64_t a1, int a2)
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

uint64_t sub_10000CA7C(uint64_t result, int a2, int a3)
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

__n128 sub_10000CAB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000CACC(uint64_t a1, int a2)
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

uint64_t sub_10000CAEC(uint64_t result, int a2, int a3)
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

void sub_10000CB54(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000CC00@<X0>(const char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v228 = a1;
  v229 = a2;
  v196 = a3;
  v3 = sub_10000C0EC(&qword_100042E40, &unk_100034D10);
  v4 = __chkstk_darwin(v3 - 8);
  v205 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v204 = &v166 - v7;
  v8 = __chkstk_darwin(v6);
  v201 = &v166 - v9;
  __chkstk_darwin(v8);
  v200 = &v166 - v10;
  v11 = sub_10000C0EC(&qword_100042E48, &unk_100033F80);
  v12 = __chkstk_darwin(v11 - 8);
  v214 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v212 = &v166 - v14;
  v219 = sub_10000C0EC(&qword_100042E50, &qword_100034D20);
  v198 = *(v219 - 8);
  v15 = __chkstk_darwin(v219);
  v203 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v199 = &v166 - v17;
  v225 = sub_10000C0EC(&qword_100042E58, &qword_100033F90);
  v197 = *(v225 - 8);
  v18 = __chkstk_darwin(v225);
  v213 = &v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v226 = &v166 - v21;
  v22 = __chkstk_darwin(v20);
  v210 = &v166 - v23;
  __chkstk_darwin(v22);
  v211 = (&v166 - v24);
  v25 = sub_10000C0EC(&qword_100042E60, &qword_100033F98);
  __chkstk_darwin(v25 - 8);
  v202 = &v166 - v26;
  v27 = sub_10002E13C();
  __chkstk_darwin(v27 - 8);
  v207 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000C0EC(&qword_100042E68, &qword_100033FA0);
  __chkstk_darwin(v29 - 8);
  v206 = &v166 - v30;
  v31 = sub_10002E11C();
  v208 = *(v31 - 8);
  v209 = v31;
  __chkstk_darwin(v31);
  v222 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10002E7FC();
  __chkstk_darwin(v33 - 8);
  v35 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10002E80C();
  v223 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10000C0EC(&qword_100042E70, &qword_100033FA8);
  v40 = __chkstk_darwin(v39 - 8);
  v42 = &v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v166 - v43;
  v45 = type metadata accessor for SMSDictionary(0);
  __chkstk_darwin(v45);
  v47 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DE7C();
  swift_allocObject();
  v48 = sub_10002DE6C();
  sub_10000E54C(&qword_100042E78, type metadata accessor for SMSDictionary, &unk_1000347C0);
  v49 = v238;
  sub_10002DE5C();
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
    v52 = &_swiftEmptyArrayStorage;
  }

  v53 = v52[2];
  v215 = v47;
  v195 = v45;
  v224 = v52;
  v192 = v51;
  if (v53)
  {
    v230 = &_swiftEmptyArrayStorage;

    result = sub_10000E594(0, v53, 0);
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
      sub_10000E5B4(v237, &v231);

      v61 = v238;
      sub_10002A25C(v221);
      if (v61)
      {
        v238 = v61;

        sub_10000E610(v237);

        v66 = v215;
        return sub_10000E664(v66);
      }

      v62 = v220;
      sub_10002E7EC();
      v238 = 0;
      sub_10000E610(v237);
      v55 = v229;
      v230 = v229;
      v64 = v229[2];
      v63 = v229[3];
      v52 = v224;
      if (v64 >= v63 >> 1)
      {
        sub_10000E594((v63 > 1), v64 + 1, 1);
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

  v55 = &_swiftEmptyArrayStorage;
  v65 = v222;
LABEL_16:

  sub_10002E68C();
  v67 = v194;
  v68 = v238;
  sub_10002E0FC();
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
  v72 = sub_10002E10C();
  (*(*(v72 - 8) + 56))(v67, v69, 1, v72);
  v190 = *v215;
  v189 = v215[8];
  v73 = v206;
  sub_10000E7CC(&v215[v195[5]], v206, &qword_100042E68, &qword_100033FA0);
  v74 = *(v71 + 48);
  v75 = v74(v73, 1, v70);
  v229 = v55;
  if (v75 == 1)
  {
    (*(v71 + 104))(v65, enum case for SMSMessage.FilterSubCategoryType.filterSubCategoryNone(_:), v70);
    if (v74(v73, 1, v70) != 1)
    {
      sub_10000E76C(v73, &qword_100042E68, &qword_100033FA0);
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
  sub_100012EA4(v207);
  v238 = v84;
  if (!v84)
  {
    v186 = v83;
    v187 = v81;
    v188 = v80;
    v85 = v76[10];
    v209 = *(v78 + v76[9]);
    sub_10000E7CC(v78 + v85, v202, &qword_100042E60, &qword_100033F98);
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
    v220 = "rc-original-guid";
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
      sub_10000E5B4(&v231, &v230);
      sub_10000C0EC(&qword_100042E80, &qword_100033FB0);
      sub_10002DF8C();
      if (!*(&v232 + 1))
      {
        break;
      }

      v228 = v109;
      sub_10002E98C();
      v227 = v116;
      sub_10000E6C0();
      v117 = v210;
      v118 = v225;
      sub_10002DF7C();
      v119 = v238;
      sub_10002DF9C();
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
        sub_10000E76C(v112, &qword_100042E48, &unk_100033F80);
        goto LABEL_31;
      }

      v124 = v199;
      (*v166)(v199, v112, v106);
      swift_getKeyPath();
      sub_10002DFAC();

      sub_10002E8DC();

      v125 = v200;
      sub_10002DEFC();

      v126 = v201;
      sub_10000E7CC(v125, v201, &qword_100042E40, &unk_100034D10);
      v127 = sub_10002DF1C();
      v128 = *(v127 - 8);
      if ((*(v128 + 48))(v126, 1, v127) != 1)
      {
        sub_10002DF0C();
        sub_10000E76C(v125, &qword_100042E40, &unk_100034D10);
        v165 = v219;
        (*v167)(v124, v219);
        v121(v211, v225);
        (*(v128 + 8))(v126, v127);
        sub_10000E610(&v231);

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
            sub_10000E5B4(v236, &v231);
            v210 = sub_10002B794();
            v139 = v138;
            result = sub_10000E610(v236);
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
          sub_10000E7CC(v194, v191, &qword_100042E70, &qword_100033FA8);

          sub_10002E12C();
          sub_10000E76C(v164, &qword_100042E70, &qword_100033FA8);

          return sub_10000E664(v215);
        }

        v144 = 0;
        v145 = (v197 + 8);
        v220 = (v198 + 56);
        v221 = "rc-original-guid";
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
          sub_10000E5B4(&v231, &v230);
          sub_10000C0EC(&qword_100042E80, &qword_100033FB0);
          sub_10002DF8C();
          if (*(&v232 + 1))
          {
            v227 = v146;
            v228 = v144;
            sub_10002E98C();
            sub_10000E6C0();
            v150 = v213;
            v151 = v107;
            v152 = v225;
            sub_10002DF7C();
            v153 = v238;
            sub_10002DF9C();
            if (v153)
            {

              sub_10000E610(&v231);
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
              sub_10000E610(&v231);
              v155 = v225;
LABEL_60:
              v52 = v224;
              v154(v226, v155);
              v107 = v214;
              v78 = v215;
              v146 = v227;
              v144 = v228;
LABEL_52:
              result = sub_10000E76C(v107, &qword_100042E48, &unk_100033F80);
            }

            else
            {
              v156 = v151;
              v157 = v203;
              (*v212)(v203, v156, v106);
              swift_getKeyPath();
              sub_10002DFAC();

              sub_10002E8DC();

              v158 = v204;
              sub_10002DEFC();

              v159 = v205;
              sub_10000E7CC(v158, v205, &qword_100042E40, &unk_100034D10);
              v160 = sub_10002DF1C();
              v161 = *(v160 - 8);
              v162 = (*(v161 + 48))(v159, 1, v160);
              v52 = v224;
              if (v162 != 1)
              {
                sub_10002DF0C();
                sub_10000E610(&v231);
                sub_10000E76C(v158, &qword_100042E40, &unk_100034D10);
                (*v211)(v157, v219);
                v154(v226, v225);
                (*(v161 + 8))(v159, v160);

                LODWORD(v228) = 1;
                v78 = v215;
                goto LABEL_64;
              }

              sub_10000E610(&v231);
              sub_10000E76C(v158, &qword_100042E40, &unk_100034D10);
              v106 = v219;
              (*v211)(v157, v219);
              v145 = v218;
              v154(v226, v225);
              result = sub_10000E76C(v159, &qword_100042E40, &unk_100034D10);
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

        sub_10000E610(&v231);
        (*v145)(v108, v225);
        (*v220)(v107, 1, 1, v106);
        goto LABEL_52;
      }

      sub_10000E76C(v125, &qword_100042E40, &unk_100034D10);
      v106 = v219;
      (*v167)(v124, v219);
      v111 = v211;
      v121(v211, v225);
      sub_10000E76C(v126, &qword_100042E40, &unk_100034D10);
      v107 = v214;
      v78 = v215;
      v108 = v226;
      v112 = v212;
      v109 = v228;
LABEL_31:
      sub_10000E610(&v231);
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
  sub_10000E76C(v194, &qword_100042E70, &qword_100033FA8);
  v66 = v78;
  return sub_10000E664(v66);
}

uint64_t sub_10000E54C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10000E594(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000E664(uint64_t a1)
{
  v2 = type metadata accessor for SMSDictionary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000E6C0()
{
  result = qword_100042E88;
  if (!qword_100042E88)
  {
    sub_10000E724(&qword_100042E58, &qword_100033F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042E88);
  }

  return result;
}

uint64_t sub_10000E724(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E76C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000C0EC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E7CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C0EC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *sub_10000E834(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000EA30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000E854(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C0EC(&qword_100042E90, &qword_100033FD8);
  v10 = *(sub_10002E80C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10002E80C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000EA30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C0EC(&qword_100042E98, &unk_100033FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void BasicMessage.init(messageDictionary:)(void **a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  v5 = __chkstk_darwin(v4 - 8);
  v24 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v22 - v8;
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = [objc_opt_self() sharedInstance];
  v13 = v12;
  if (!a1[8])
  {
    if (!a1[6])
    {
      v23 = v12;
      v20 = sub_10002E52C();
      (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
      v19 = v11;
      goto LABEL_10;
    }
  }

  v14 = objc_allocWithZone(MBDMessageToSuperParserContext);

  v15 = sub_10002E84C();

  v16 = [v14 initWithContent:v15];

  if (![v13 parseContext:v16])
  {
    sub_10002E7DC();
    sub_10000EFF0();
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    sub_10000EF34(a1);
    return;
  }

  _AttributedString.init(fromNSAttributedString:)([v16 body], v9);

  if (v2)
  {

    sub_10000EF34(a1);
    return;
  }

  v23 = v13;
  v17 = sub_10002E52C();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = v9;
  v19 = v11;
  sub_10000F048(v18, v11);
LABEL_10:
  v21 = &_swiftEmptyArrayStorage;
  if (*a1)
  {
    v21 = *a1;
  }

  v22[1] = v21;
  sub_10000EEC4(v19, v24);

  sub_10002E19C();

  sub_10000EF34(a1);
  sub_10000EF88(v19);
}

uint64_t sub_10000EEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EF88(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000EFF0()
{
  result = qword_100042EA8;
  if (!qword_100042EA8)
  {
    sub_10002E7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EA8);
  }

  return result;
}

uint64_t sub_10000F048(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F0B8()
{
  v1 = sub_10000C0EC(&qword_100042ED0, &unk_1000349D0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002EBEC();
  v3 = __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v4 = *(v0 + 248);
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v5 = *(v0 + 240);
  sub_10002DE7C();
  swift_allocObject();
  sub_10000F7EC(v5, v4);
  sub_10002DE6C();
  sub_10000F840();
  sub_10002DE5C();

  sub_10000F894(v5, v4);
  return v7;
}

uint64_t sub_10000F4F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10002E1DC();
  __chkstk_darwin(v2 - 8);
  sub_10000F0B8();
  if (v3 == 1)
  {
    v4 = sub_10002E1FC();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }

  else
  {
    sub_10002E1CC();
    sub_10002E1EC();
    v7 = sub_10002E1FC();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }
}

unint64_t sub_10000F74C()
{
  result = qword_100042EB0;
  if (!qword_100042EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100042EB0);
  }

  return result;
}

unint64_t sub_10000F798()
{
  result = qword_100042EC8;
  if (!qword_100042EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EC8);
  }

  return result;
}

void sub_10000F7EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_10000F840()
{
  result = qword_100042ED8;
  if (!qword_100042ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042ED8);
  }

  return result;
}

uint64_t sub_10000F894(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F8A8(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F8A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000F8FC(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100042ED0, &unk_1000349D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000F978()
{
  result = qword_100042EE0;
  if (!qword_100042EE0)
  {
    sub_10002E26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EE0);
  }

  return result;
}

Swift::Int sub_10000F9D8()
{
  sub_10002EDCC();
  sub_10002EDDC(0);
  return sub_10002EDEC();
}

Swift::Int sub_10000FA44(uint64_t a1)
{
  sub_10002EDCC();
  sub_10002EDDC(0);
  return sub_10002EDEC();
}

void sub_10000FA94()
{
  v0 = sub_10002DEBC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002E74C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E70C();
  sub_10002E73C();
  (*(v5 + 8))(v7, v4);
  sub_10002DE9C(v8);
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v11 = audioMetadataForFileURL(v10);

  if (v11)
  {
    v12 = [(AudioMetadata *)v11 powerLevels];
    if (v12)
    {
      v13 = v12;
      sub_10000FF50();
      v14 = sub_10002E99C();

      v15 = sub_10000FCE4(v14);

      if (v15)
      {
        [(AudioMetadata *)v11 duration];
        sub_10002E25C();

        return;
      }
    }
  }

  sub_10000FEFC();
  swift_allocError();
  swift_willThrow();
}

void *sub_10000FCE4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10002EC0C())
  {
    sub_10000E834(0, i & ~(i >> 63), 0);
    v4 = &_swiftEmptyArrayStorage;
    if (v2)
    {
      v2 = sub_10002EC0C();
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

  v5 = sub_10002EBDC();
LABEL_10:
  v6 = v5;
  sub_10002EA0C();

  return 0;
}

unint64_t sub_10000FEFC()
{
  result = qword_100042EE8;
  if (!qword_100042EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EE8);
  }

  return result;
}

unint64_t sub_10000FF50()
{
  result = qword_100042EF0;
  if (!qword_100042EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100042EF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicPreviewAudioUnpacker.BasicPreviewAudioUnpackerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BasicPreviewAudioUnpacker.BasicPreviewAudioUnpackerError(_WORD *result, int a2, int a3)
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

unint64_t sub_10001008C()
{
  result = qword_100042EF8;
  if (!qword_100042EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EF8);
  }

  return result;
}

uint64_t BasicMessageDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000C0EC(&qword_100042F00, &qword_100034140);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000106D4(a1, a1[3]);
  sub_100010718();
  sub_10002EE0C();
  LOBYTE(v13) = 0;
  sub_10002ED0C();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  sub_10002ECDC();
  LOBYTE(v13) = 2;
  sub_10002ECDC();
  LOBYTE(v13) = 3;
  sub_10002ECDC();
  *&v13 = *v3;
  v11[0] = 4;
  sub_10000C0EC(&qword_100042F10, &qword_100034148);
  sub_1000121F4(&qword_100042F18, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_10002ED1C();
  LOBYTE(v13) = 5;
  sub_10002ECDC();
  LOBYTE(v13) = 6;
  sub_10002ECDC();
  LOBYTE(v13) = 7;
  sub_10002ECDC();
  LOBYTE(v13) = 8;
  sub_10002ECDC();
  LOBYTE(v13) = 9;
  sub_10002ECEC();
  v10 = v6;
  LOBYTE(v13) = 10;
  sub_10002ECEC();
  v15 = *(v3 + 80);
  v13 = *(v3 + 80);
  v12 = 11;
  sub_10001076C(&v15, v11);
  sub_1000107DC();
  sub_10002ED1C();
  sub_10000F894(v13, *(&v13 + 1));
  LOBYTE(v13) = 12;
  sub_10002ECFC();
  LOBYTE(v13) = 13;
  sub_10002ECDC();
  LOBYTE(v13) = 14;
  sub_10002ECDC();
  LOBYTE(v13) = 15;
  sub_10002ECDC();
  v13 = *(v3 + 240);
  v14 = v13;
  v12 = 16;
  sub_10001076C(&v14, v11);
  sub_10002ED1C();
  sub_10000F894(v13, *(&v13 + 1));
  LOBYTE(v13) = 17;
  sub_10002ECFC();
  LOBYTE(v13) = 18;
  sub_10002ECDC();
  LOBYTE(v13) = 19;
  sub_10002ECDC();
  LOBYTE(v13) = 20;
  sub_10002ED0C();
  LOBYTE(v13) = 21;
  sub_10002ED2C();
  LOBYTE(v13) = 22;
  sub_10002ECDC();
  *&v13 = *(v3 + 352);
  v11[0] = 23;
  sub_10002ED1C();
  LOBYTE(v13) = 24;
  sub_10002ED2C();
  return (*(v10 + 8))(v8, v5);
}

void *sub_1000106D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100010718()
{
  result = qword_100042F08;
  if (!qword_100042F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F08);
  }

  return result;
}

uint64_t sub_10001076C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100042F20, &qword_100034150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000107DC()
{
  result = qword_100042F28;
  if (!qword_100042F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F28);
  }

  return result;
}

void *BasicMessageDictionary.init(from:)@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100010D48(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x168uLL);
  }

  return result;
}

uint64_t BasicMessageDictionary.CodingKeys.rawValue.getter(char a1)
{
  result = 30320;
  switch(a1)
  {
    case 1:
      result = 30311;
      break;
    case 2:
      result = 6580583;
      break;
    case 3:
      result = 110;
      break;
    case 4:
      result = 112;
      break;
    case 5:
      result = 115;
      break;
    case 6:
      result = 116;
      break;
    case 7:
      result = 120;
      break;
    case 8:
      result = 30825;
      break;
    case 9:
      result = 117;
      break;
    case 10:
      result = 97;
      break;
    case 11:
      result = 808280425;
      break;
    case 12:
      result = 28786;
      break;
    case 13:
      result = 26484;
      break;
    case 14:
      result = 6711156;
      break;
    case 15:
      result = 6580578;
      break;
    case 16:
      result = 6910829;
      break;
    case 17:
      result = 7630177;
      break;
    case 18:
      result = 7040353;
      break;
    case 19:
      result = 6712673;
      break;
    case 20:
      result = 0x636C726D61;
      break;
    case 21:
      result = 0x6E6C726D61;
      break;
    case 22:
      result = 6647137;
      break;
    case 23:
      result = 26226;
      break;
    case 24:
      result = 1684628084;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100010A98(char *a1, char *a2)
{
  v2 = *a2;
  v3 = BasicMessageDictionary.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == BasicMessageDictionary.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002ED5C();
  }

  return v8 & 1;
}

Swift::Int sub_100010B20()
{
  v1 = *v0;
  sub_10002EDCC();
  BasicMessageDictionary.CodingKeys.rawValue.getter(v1);
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_100010B84(uint64_t a1)
{
  BasicMessageDictionary.CodingKeys.rawValue.getter(*v1);
  sub_10002E8FC();
}

Swift::Int sub_100010BD8(uint64_t a1)
{
  v2 = *v1;
  sub_10002EDCC();
  BasicMessageDictionary.CodingKeys.rawValue.getter(v2);
  sub_10002E8FC();

  return sub_10002EDEC();
}

unint64_t sub_100010C38@<X0>(Swift::String *a1@<X0>, MessagesAirlockService::BasicMessageDictionary::CodingKeys_optional *a2@<X8>)
{
  result = _s22MessagesAirlockService22BasicMessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_100010C68@<X0>(uint64_t *a1@<X8>)
{
  result = BasicMessageDictionary.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100010C9C@<X0>(uint64_t a1@<X0>, MessagesAirlockService::BasicMessageDictionary::CodingKeys_optional *a2@<X8>, uint64_t a3@<X1>)
{
  result = _s22MessagesAirlockService22BasicMessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a3);
  a2->value = result;
  return result;
}

uint64_t sub_100010CD0(uint64_t a1)
{
  v2 = sub_100010718();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010D0C(uint64_t a1)
{
  v2 = sub_100010718();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100010D48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10000C0EC(&qword_100042F48, qword_1000344C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50 - v7;
  v9 = a1[3];
  v166 = a1;
  sub_1000106D4(a1, v9);
  sub_100010718();
  sub_10002EDFC();
  if (v2)
  {
    return sub_1000121A8(v166);
  }

  v95 = a2;
  LOBYTE(v97) = 0;
  v94 = sub_10002EC9C();
  v161 = v10 & 1;
  LOBYTE(v97) = 1;
  v12 = sub_10002EC6C();
  v93 = v13;
  LOBYTE(v97) = 2;
  v14 = sub_10002EC6C();
  v92 = v15;
  v89 = v14;
  v90 = v12;
  LOBYTE(v97) = 3;
  v88 = sub_10002EC6C();
  v91 = v16;
  sub_10000C0EC(&qword_100042F10, &qword_100034148);
  LOBYTE(v96[0]) = 4;
  v87 = sub_1000121F4(&qword_100042F50, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_10002ECAC();
  v85 = v97;
  LOBYTE(v97) = 5;
  v17 = sub_10002EC6C();
  v84 = v18;
  v19 = v17;
  LOBYTE(v97) = 6;
  v83 = 0;
  v20 = sub_10002EC6C();
  v82 = v21;
  LOBYTE(v97) = 7;
  v70 = sub_10002EC6C();
  v81 = v22;
  LOBYTE(v97) = 8;
  v69 = sub_10002EC6C();
  v86 = 0;
  v23 = v20;
  v80 = v24;
  LOBYTE(v97) = 9;
  v25 = sub_10002EC7C();
  v86 = 0;
  v26 = v25;
  LOBYTE(v97) = 10;
  v68 = sub_10002EC7C();
  v86 = 0;
  LOBYTE(v96[0]) = 11;
  v74 = sub_100012260();
  v27 = v86;
  sub_10002ECAC();
  v86 = v27;
  if (v27)
  {
    (*(v6 + 8))(v8, v5);
    LODWORD(v90) = 0;
    LODWORD(v95) = 0;
    LODWORD(v94) = 0;
    v28 = v83;
    sub_1000121A8(v166);

    if (!v28)
    {
    }

    v29 = v94;

    if (v90)
    {
    }

    if (v95)
    {
    }

    if (v29)
    {
    }
  }

  else
  {
    v78 = v97;
    v79 = v98;
    LOBYTE(v97) = 12;
    v67 = sub_10002EC8C();
    v86 = 0;
    v163 = v30 & 1;
    LOBYTE(v97) = 13;
    v66 = sub_10002EC6C();
    v77 = v31;
    v86 = 0;
    LOBYTE(v97) = 14;
    v65 = sub_10002EC6C();
    v76 = v32;
    v86 = 0;
    LOBYTE(v97) = 15;
    v64 = sub_10002EC6C();
    v75 = v33;
    v86 = 0;
    LOBYTE(v96[0]) = 16;
    sub_10002ECAC();
    v86 = 0;
    v73 = v98;
    v74 = v97;
    LOBYTE(v97) = 17;
    v63 = sub_10002EC8C();
    v86 = 0;
    v157 = v34 & 1;
    LOBYTE(v97) = 18;
    v62 = sub_10002EC6C();
    v72 = v35;
    v86 = 0;
    LOBYTE(v97) = 19;
    v61 = sub_10002EC6C();
    v71 = v36;
    v86 = 0;
    LOBYTE(v97) = 20;
    v60 = sub_10002EC9C();
    v86 = 0;
    v155 = v37 & 1;
    LOBYTE(v97) = 21;
    v59 = sub_10002ECBC();
    v86 = 0;
    v153 = v38 & 1;
    LOBYTE(v97) = 22;
    v58 = sub_10002EC6C();
    v83 = v39;
    v86 = 0;
    LOBYTE(v96[0]) = 23;
    sub_10002ECAC();
    v86 = 0;
    v87 = v97;
    v151 = 24;
    v57 = sub_10002ECBC();
    v86 = 0;
    v41 = v40;
    (*(v6 + 8))(v8, v5);
    v159 = v41 & 1;
    v96[0] = v85;
    v96[1] = v19;
    v53 = v23;
    v54 = v19;
    v96[2] = v84;
    v96[3] = v23;
    v96[4] = v82;
    v96[5] = v70;
    v96[6] = v81;
    v96[7] = v69;
    v96[8] = v80;
    LOBYTE(v96[9]) = v26;
    BYTE1(v96[9]) = v68;
    *(&v96[9] + 2) = v164;
    HIWORD(v96[9]) = v165;
    v96[10] = v78;
    v96[11] = v79;
    v96[12] = v67;
    v51 = v163;
    v52 = v26;
    LOBYTE(v96[13]) = v163;
    HIDWORD(v96[13]) = *&v162[3];
    *(&v96[13] + 1) = *v162;
    v96[14] = v66;
    v96[15] = v77;
    v96[16] = v65;
    v96[17] = v76;
    v96[18] = v94;
    v56 = v161;
    LOBYTE(v96[19]) = v161;
    *(&v96[19] + 1) = *v160;
    HIDWORD(v96[19]) = *&v160[3];
    v96[20] = v90;
    v96[21] = v93;
    v96[22] = v89;
    v96[23] = v92;
    v96[24] = v88;
    v96[25] = v91;
    v96[26] = v64;
    v96[27] = v75;
    v96[28] = v57;
    v55 = v41 & 1;
    LOBYTE(v96[29]) = v41 & 1;
    *(&v96[29] + 1) = *v158;
    HIDWORD(v96[29]) = *&v158[3];
    v96[30] = v74;
    v96[31] = v73;
    v96[32] = v63;
    *(&v96[33] + 1) = *v156;
    *(&v96[39] + 1) = *v154;
    v42 = v157;
    LOBYTE(v96[33]) = v157;
    HIDWORD(v96[33]) = *&v156[3];
    v96[34] = v62;
    v43 = v71;
    v96[35] = v72;
    v96[36] = v61;
    v96[37] = v71;
    v96[38] = v60;
    *(&v96[41] + 1) = *v152;
    v44 = v155;
    LOBYTE(v96[39]) = v155;
    HIDWORD(v96[39]) = *&v154[3];
    v46 = v58;
    v45 = v59;
    v96[40] = v59;
    HIDWORD(v96[41]) = *&v152[3];
    v47 = v153;
    LOBYTE(v96[41]) = v153;
    v96[42] = v58;
    v48 = v83;
    v96[43] = v83;
    v49 = v87;
    v96[44] = v87;
    sub_1000122B4(v96, &v97);
    sub_1000121A8(v166);
    v97 = v85;
    v98 = v54;
    v99 = v84;
    v100 = v53;
    v101 = v82;
    v102 = v70;
    v103 = v81;
    v104 = v69;
    v105 = v80;
    v106 = v52;
    v107 = v68;
    v110 = v78;
    v111 = v79;
    v112 = v67;
    v113 = v51;
    v115 = v66;
    v116 = v77;
    v117 = v65;
    v118 = v76;
    v108 = v164;
    v109 = v165;
    *&v114[3] = *&v162[3];
    *v114 = *v162;
    v119 = v94;
    v120 = v56;
    *&v121[3] = *&v160[3];
    *v121 = *v160;
    v122 = v90;
    v123 = v93;
    v124 = v89;
    v125 = v92;
    v126 = v88;
    v127 = v91;
    v128 = v64;
    v129 = v75;
    v130 = v57;
    v131 = v55;
    *v132 = *v158;
    *&v132[3] = *&v158[3];
    v133 = v74;
    v134 = v73;
    v135 = v63;
    v136 = v42;
    *v137 = *v156;
    *&v137[3] = *&v156[3];
    v138 = v62;
    v139 = v72;
    v140 = v61;
    v141 = v43;
    v142 = v60;
    v143 = v44;
    *v144 = *v154;
    *&v144[3] = *&v154[3];
    v145 = v45;
    v146 = v47;
    *v147 = *v152;
    *&v147[3] = *&v152[3];
    v148 = v46;
    v149 = v48;
    v150 = v49;
    sub_10000EF34(&v97);
    return memcpy(v95, v96, 0x168uLL);
  }

  return result;
}

unint64_t _s22MessagesAirlockService22BasicMessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002ED6C();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100011DD0()
{
  result = qword_100042F30;
  if (!qword_100042F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F30);
  }

  return result;
}

unint64_t sub_100011E28()
{
  result = qword_100042F38;
  if (!qword_100042F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F38);
  }

  return result;
}

unint64_t sub_100011E80()
{
  result = qword_100042F40;
  if (!qword_100042F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F40);
  }

  return result;
}

uint64_t sub_100011ED4(uint64_t a1)
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

uint64_t sub_100011EF0(uint64_t a1)
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

uint64_t sub_100011F20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 360))
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

uint64_t sub_100011F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicMessageDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BasicMessageDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000121A8(void *a1)
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

uint64_t sub_1000121F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000E724(&qword_100042F10, &qword_100034148);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012260()
{
  result = qword_100042F58;
  if (!qword_100042F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F58);
  }

  return result;
}

unint64_t sub_1000122FC(uint64_t a1)
{
  result = sub_10000C188();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100012328()
{
  result = qword_100042F60;
  if (!qword_100042F60)
  {
    sub_10002E17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F60);
  }

  return result;
}

uint64_t BasicMessageSummaryInfoDictionary.encode(to:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000C0EC(&qword_100042F68, &qword_100034570);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000106D4(a1, a1[3]);
  sub_100012544();
  sub_10002EE0C();
  v14 = 0;
  sub_10002ECFC();
  if (!v5)
  {
    v13 = 1;
    sub_10002ECDC();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_100012544()
{
  result = qword_100042F70;
  if (!qword_100042F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F70);
  }

  return result;
}

uint64_t BasicMessageSummaryInfoDictionary.init(from:)(void *a1)
{
  result = sub_1000129B8(a1);
  if (v1)
  {
    return v3 & 1;
  }

  return result;
}

uint64_t sub_1000125D0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000129B8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

MessagesAirlockService::BasicMessageSummaryInfoDictionary::CodingKeys_optional __swiftcall BasicMessageSummaryInfoDictionary.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_10003DAD0;
  v6._object = object;
  v3 = sub_10002EC5C(v2, v6);

  if (v3 == 1)
  {
    v4.value = MessagesAirlockService_BasicMessageSummaryInfoDictionary_CodingKeys_summary;
  }

  else
  {
    v4.value = MessagesAirlockService_BasicMessageSummaryInfoDictionary_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t BasicMessageSummaryInfoDictionary.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 7564641;
  }

  else
  {
    return 6516065;
  }
}

uint64_t sub_1000126AC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7564641;
  }

  else
  {
    v2 = 6516065;
  }

  if (*a2)
  {
    v3 = 7564641;
  }

  else
  {
    v3 = 6516065;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_10002ED5C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100012720()
{
  sub_10002EDCC();
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_100012784(uint64_t a1)
{
  sub_10002E8FC();
}

Swift::Int sub_1000127CC(uint64_t a1)
{
  sub_10002EDCC();
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_10001282C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10003DAD0;
  v8._object = v3;
  v5 = sub_10002EC5C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10001288C(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 7564641;
  }

  else
  {
    v2 = 6516065;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1000128B0()
{
  if (*v0)
  {
    return 7564641;
  }

  else
  {
    return 6516065;
  }
}

uint64_t sub_1000128D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_10003DAD0;
  v9._object = a2;
  v6 = sub_10002EC5C(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100012940(uint64_t a1)
{
  v2 = sub_100012544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001297C(uint64_t a1)
{
  v2 = sub_100012544();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000129B8(void *a1)
{
  v3 = sub_10000C0EC(&qword_100042F90, &unk_100034760);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_1000106D4(a1, v7);
  sub_100012544();
  sub_10002EDFC();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_10002EC8C();
    v10 = 1;
    sub_10002EC6C();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000121A8(a1);
  return v7;
}

unint64_t sub_100012B74()
{
  result = qword_100042F78;
  if (!qword_100042F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F78);
  }

  return result;
}

unint64_t sub_100012BCC()
{
  result = qword_100042F80;
  if (!qword_100042F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F80);
  }

  return result;
}

unint64_t sub_100012C24()
{
  result = qword_100042F88;
  if (!qword_100042F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F88);
  }

  return result;
}

__n128 sub_100012C78(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100012C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100012CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicMessageSummaryInfoDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BasicMessageSummaryInfoDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100012EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SMSDictionary(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3 == 7564659 && v5 == 0xE300000000000000;
  if (v6 || (sub_10002ED5C() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.sms(_:);
LABEL_7:
    v8 = *v7;
    v9 = sub_10002E13C();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

  v11 = v4 == 7564653 && v5 == 0xE300000000000000;
  if (v11 || (sub_10002ED5C() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.mms(_:);
    goto LABEL_7;
  }

  v12 = v4 == 0x6E776F6E6B6E75 && v5 == 0xE700000000000000;
  if (v12 || (sub_10002ED5C() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.unknown(_:);
    goto LABEL_7;
  }

  sub_10002E7DC();
  sub_100015698(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
  sub_10002E7CC();
  return swift_willThrow();
}

uint64_t sub_100013098(void *a1)
{
  v3 = v1;
  v5 = sub_10000C0EC(&qword_100043108, &qword_1000347F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000106D4(a1, a1[3]);
  sub_100015524();
  sub_10002EE0C();
  LOBYTE(v12) = 0;
  sub_10002ECFC();
  if (!v2)
  {
    v9 = type metadata accessor for SMSDictionary(0);
    LOBYTE(v12) = 1;
    sub_10002E11C();
    sub_100015698(&qword_100043110, &type metadata accessor for SMSMessage.FilterSubCategoryType, &protocol conformance descriptor for SMSMessage.FilterSubCategoryType);
    sub_10002ED1C();
    LOBYTE(v12) = 2;
    sub_10002ECDC();
    LOBYTE(v12) = 3;
    sub_10002ED3C();
    LOBYTE(v12) = 4;
    sub_10002ED3C();
    v12 = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    sub_10000C0EC(&qword_100042F10, &qword_100034148);
    sub_1000121F4(&qword_100042F18, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_10002ED1C();
    LOBYTE(v12) = 6;
    sub_10002DEEC();
    sub_100015698(&qword_100043118, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10002ED1C();
    LOBYTE(v12) = 7;
    sub_10002ECDC();
    LOBYTE(v12) = 8;
    sub_10002ECFC();
    LOBYTE(v12) = 9;
    sub_10002ECDC();
    LOBYTE(v12) = 10;
    sub_10002ECDC();
    LOBYTE(v12) = 11;
    sub_10002ECDC();
    LOBYTE(v12) = 12;
    sub_10002ECDC();
    LOBYTE(v12) = 13;
    sub_10002ECDC();
    LOBYTE(v12) = 14;
    sub_10002ECDC();
    LOBYTE(v12) = 15;
    sub_10002ECFC();
    LOBYTE(v12) = 16;
    sub_10002ECDC();
    LOBYTE(v12) = 17;
    sub_10002ECDC();
    LOBYTE(v12) = 18;
    sub_10002ECDC();
    v12 = *(v3 + *(v9 + 92));
    HIBYTE(v11) = 19;
    sub_10000C0EC(&qword_100043030, qword_100034790);
    sub_1000156E0(&qword_100043120, sub_100015758, &protocol conformance descriptor for <A> [A]);
    sub_10002ED1C();
    LOBYTE(v12) = 20;
    sub_10002ECEC();
    LOBYTE(v12) = 21;
    sub_10002ECEC();
    LOBYTE(v12) = 22;
    sub_10002ECDC();
    LOBYTE(v12) = 23;
    sub_10002ED2C();
    LOBYTE(v12) = 24;
    sub_10002ECDC();
    LOBYTE(v12) = 25;
    sub_10002ECDC();
    LOBYTE(v12) = 26;
    sub_10002ECDC();
    LOBYTE(v12) = 27;
    sub_10002ECDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100013824@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v4 = sub_10000C0EC(&qword_100042E60, &qword_100033F98);
  __chkstk_darwin(v4 - 8);
  v6 = &v137 - v5;
  v7 = sub_10000C0EC(&qword_100042E68, &qword_100033FA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v137 - v8;
  v140 = sub_10000C0EC(&qword_1000430D8, &qword_1000347E8);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v11 = &v137 - v10;
  v12 = type metadata accessor for SMSDictionary(0);
  v13 = __chkstk_darwin(v12);
  v15 = (&v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 20);
  v17 = sub_10002E11C();
  v18 = *(*(v17 - 8) + 56);
  v159 = v16;
  v18(v15 + v16, 1, 1, v17);
  v157 = v12;
  v19 = *(v12 + 40);
  v20 = sub_10002DEEC();
  v21 = *(*(v20 - 8) + 56);
  v158 = v15;
  v156 = v19;
  v21(v15 + v19, 1, 1, v20);
  v22 = a1[3];
  v149 = a1;
  sub_1000106D4(a1, v22);
  sub_100015524();
  v141 = v11;
  sub_10002EDFC();
  if (v2)
  {
    v160 = v2;
    v23 = 0;
    v24 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v148 = 0;
    v25 = v158;
    v26 = v156;
    goto LABEL_15;
  }

  LOBYTE(v162) = 0;
  v27 = v140;
  v28 = sub_10002EC8C();
  v160 = 0;
  v26 = v156;
  v25 = v158;
  *v158 = v28;
  *(v25 + 8) = v29 & 1;
  LOBYTE(v162) = 1;
  sub_100015698(&qword_1000430E8, &type metadata accessor for SMSMessage.FilterSubCategoryType, &protocol conformance descriptor for SMSMessage.FilterSubCategoryType);
  v30 = v160;
  sub_10002ECAC();
  v160 = v30;
  if (v30)
  {
    (*(v139 + 8))(v141, v27);
    v23 = 0;
    v24 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v148 = 0;
    goto LABEL_15;
  }

  sub_100015578(v9, v25 + v159, &qword_100042E68, &qword_100033FA0);
  LOBYTE(v162) = 2;
  v31 = v160;
  v32 = sub_10002EC6C();
  v34 = v157;
  if (v31)
  {
    v160 = v31;
    (*(v139 + 8))(v141, v27);
    v23 = 0;
    v24 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v148 = 0;
    goto LABEL_15;
  }

  v35 = (v25 + v157[6]);
  *v35 = v32;
  v35[1] = v33;
  v137 = v33;
  LOBYTE(v162) = 3;
  v36 = sub_10002ECCC();
  v37 = (v25 + v34[7]);
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v162) = 4;
  v39 = sub_10002ECCC();
  v160 = 0;
  v40 = (v25 + v34[8]);
  *v40 = v39;
  v40[1] = v41;
  sub_10000C0EC(&qword_100042F10, &qword_100034148);
  v161 = 5;
  sub_1000121F4(&qword_100042F50, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v42 = v160;
  sub_10002ECAC();
  v160 = v42;
  if (v42)
  {
    (*(v139 + 8))(v141, v27);
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v148 = 0;
LABEL_14:
    v23 = 1;
    v24 = 1;
    goto LABEL_15;
  }

  v43 = v34[9];
  v148 = v162;
  *(v25 + v43) = v162;
  LOBYTE(v162) = 6;
  sub_100015698(&qword_1000430F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v44 = v160;
  sub_10002ECAC();
  v160 = v44;
  if (v44)
  {
    v45 = v139;
LABEL_13:
    (*(v45 + 8))(v141, v27);
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    goto LABEL_14;
  }

  sub_100015578(v6, v25 + v26, &qword_100042E60, &qword_100033F98);
  LOBYTE(v162) = 7;
  v46 = v160;
  v47 = sub_10002EC6C();
  v45 = v139;
  if (v46)
  {
    v160 = v46;
    goto LABEL_13;
  }

  v50 = (v25 + v34[11]);
  *v50 = v47;
  v50[1] = v48;
  v147 = v48;
  LOBYTE(v162) = 8;
  v51 = sub_10002EC8C();
  v160 = 0;
  v52 = v25 + v34[12];
  *v52 = v51;
  v52[8] = v53 & 1;
  LOBYTE(v162) = 9;
  v54 = v160;
  v55 = sub_10002EC6C();
  v155 = v56;
  v160 = v54;
  if (v54)
  {
    (*(v139 + 8))(v141, v140);
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
  }

  else
  {
    v57 = (v158 + v157[13]);
    v58 = v155;
    *v57 = v55;
    v57[1] = v58;
    LOBYTE(v162) = 10;
    v59 = v160;
    v60 = sub_10002EC6C();
    v154 = v61;
    v160 = v59;
    if (v59)
    {
      (*(v139 + 8))(v141, v140);
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      v146 = 0;
      v150 = 0;
      v151 = 0;
      v152 = 0;
      v153 = 0;
      v154 = 0;
    }

    else
    {
      v62 = (v158 + v157[14]);
      v63 = v154;
      *v62 = v60;
      v62[1] = v63;
      LOBYTE(v162) = 11;
      v64 = v160;
      v65 = sub_10002EC6C();
      v153 = v66;
      v160 = v64;
      if (v64)
      {
        (*(v139 + 8))(v141, v140);
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
      }

      else
      {
        v67 = (v158 + v157[15]);
        v68 = v153;
        *v67 = v65;
        v67[1] = v68;
        LOBYTE(v162) = 12;
        v69 = v160;
        v70 = sub_10002EC6C();
        v152 = v71;
        v160 = v69;
        if (v69)
        {
          (*(v139 + 8))(v141, v140);
          v142 = 0;
          v143 = 0;
          v144 = 0;
          v145 = 0;
          v146 = 0;
          v150 = 0;
          v151 = 0;
          v152 = 0;
        }

        else
        {
          v72 = (v158 + v157[16]);
          v73 = v152;
          *v72 = v70;
          v72[1] = v73;
          LOBYTE(v162) = 13;
          v74 = v160;
          v75 = sub_10002EC6C();
          v151 = v76;
          v160 = v74;
          if (v74)
          {
            (*(v139 + 8))(v141, v140);
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v150 = 0;
            v151 = 0;
          }

          else
          {
            v77 = (v158 + v157[17]);
            v78 = v151;
            *v77 = v75;
            v77[1] = v78;
            LOBYTE(v162) = 14;
            v79 = v160;
            v80 = sub_10002EC6C();
            v150 = v81;
            v160 = v79;
            if (v79)
            {
              (*(v139 + 8))(v141, v140);
              v142 = 0;
              v143 = 0;
              v144 = 0;
              v145 = 0;
              v146 = 0;
              v150 = 0;
            }

            else
            {
              v82 = (v158 + v157[18]);
              v83 = v150;
              *v82 = v80;
              v82[1] = v83;
              LOBYTE(v162) = 15;
              v84 = v160;
              v85 = sub_10002EC8C();
              v160 = v84;
              if (v84 || (v87 = v158 + v157[19], *v87 = v85, v87[8] = v86 & 1, LOBYTE(v162) = 16, v88 = v160, v89 = sub_10002EC6C(), v146 = v90, (v160 = v88) != 0))
              {
                (*(v139 + 8))(v141, v140);
                v142 = 0;
                v143 = 0;
                v144 = 0;
                v145 = 0;
                v146 = 0;
              }

              else
              {
                v91 = (v158 + v157[20]);
                v92 = v146;
                *v91 = v89;
                v91[1] = v92;
                LOBYTE(v162) = 17;
                v93 = v160;
                v94 = sub_10002EC6C();
                v145 = v95;
                v160 = v93;
                if (v93)
                {
                  (*(v139 + 8))(v141, v140);
                  v142 = 0;
                  v143 = 0;
                  v144 = 0;
                  v145 = 0;
                }

                else
                {
                  v96 = (v158 + v157[21]);
                  v97 = v145;
                  *v96 = v94;
                  v96[1] = v97;
                  LOBYTE(v162) = 18;
                  v98 = v160;
                  v99 = sub_10002EC6C();
                  v144 = v100;
                  v160 = v98;
                  if (v98)
                  {
                    (*(v139 + 8))(v141, v140);
                    v142 = 0;
                    v143 = 0;
                    v144 = 0;
                  }

                  else
                  {
                    v101 = (v158 + v157[22]);
                    v102 = v144;
                    *v101 = v99;
                    v101[1] = v102;
                    sub_10000C0EC(&qword_100043030, qword_100034790);
                    v161 = 19;
                    sub_1000156E0(&qword_1000430F8, sub_1000155E0, &protocol conformance descriptor for <A> [A]);
                    v103 = v160;
                    sub_10002ECAC();
                    v160 = v103;
                    if (v103)
                    {
                      (*(v139 + 8))(v141, v140);
                      v142 = 0;
                      v143 = 0;
                    }

                    else
                    {
                      v104 = v157[23];
                      v143 = v162;
                      *(v158 + v104) = v162;
                      LOBYTE(v162) = 20;
                      v105 = v160;
                      v106 = sub_10002EC7C();
                      v160 = v105;
                      if (v105 || (*(v158 + v157[24]) = v106, LOBYTE(v162) = 21, v107 = v160, v108 = sub_10002EC7C(), (v160 = v107) != 0) || (*(v158 + v157[25]) = v108, LOBYTE(v162) = 22, v109 = v160, v110 = sub_10002EC6C(), v142 = v111, (v160 = v109) != 0))
                      {
                        (*(v139 + 8))(v141, v140);
                        v142 = 0;
                      }

                      else
                      {
                        v112 = (v158 + v157[26]);
                        v113 = v142;
                        *v112 = v110;
                        v112[1] = v113;
                        LOBYTE(v162) = 23;
                        v114 = v160;
                        v115 = sub_10002ECBC();
                        v160 = v114;
                        if (!v114)
                        {
                          v117 = v158 + v157[27];
                          *v117 = v115;
                          v117[8] = v116 & 1;
                          LOBYTE(v162) = 24;
                          v118 = v160;
                          v119 = sub_10002EC6C();
                          v160 = v118;
                          if (!v118)
                          {
                            v121 = (v158 + v157[28]);
                            *v121 = v119;
                            v121[1] = v120;
                            LOBYTE(v162) = 25;
                            v122 = v160;
                            v123 = sub_10002EC6C();
                            v160 = v122;
                            if (!v122)
                            {
                              v125 = (v158 + v157[29]);
                              *v125 = v123;
                              v125[1] = v124;
                              LOBYTE(v162) = 26;
                              v126 = v160;
                              v127 = sub_10002EC6C();
                              v160 = v126;
                              if (!v126)
                              {
                                v129 = (v158 + v157[30]);
                                *v129 = v127;
                                v129[1] = v128;
                                LOBYTE(v162) = 27;
                                v130 = v160;
                                v131 = sub_10002EC6C();
                                v160 = v130;
                                if (!v130)
                                {
                                  v133 = v131;
                                  v134 = v132;
                                  v135 = v158;
                                  v136 = (v158 + v157[31]);
                                  (*(v139 + 8))(v141, v140);
                                  *v136 = v133;
                                  v136[1] = v134;
                                  sub_100015634(v135, v138);
                                  sub_1000121A8(v149);
                                  return sub_10000E664(v135);
                                }
                              }
                            }
                          }
                        }

                        (*(v139 + 8))(v141, v140);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v23 = 1;
  v24 = 1;
  v25 = v158;
  v26 = v156;
LABEL_15:
  sub_1000121A8(v149);
  sub_10000E76C(v25 + v159, &qword_100042E68, &qword_100033FA0);

  if (v23)
  {
  }

  if (v24)
  {
  }

  sub_10000E76C(v25 + v26, &qword_100042E60, &qword_100033F98);
}

uint64_t sub_100014A34(char a1)
{
  result = 6517599;
  switch(a1)
  {
    case 1:
      result = 1668510559;
      break;
    case 2:
      result = 29283;
      break;
    case 3:
      result = 22131;
      break;
    case 4:
      result = 109;
      break;
    case 5:
      result = 25970;
      break;
    case 6:
      result = 119;
      break;
    case 7:
      result = 104;
      break;
    case 8:
      result = 25449;
      break;
    case 9:
      result = 99;
      break;
    case 10:
      result = 28515;
      break;
    case 11:
      result = 25955;
      break;
    case 12:
      result = 29539;
      break;
    case 13:
      result = 97;
      break;
    case 14:
      result = 98;
      break;
    case 15:
      result = 108;
      break;
    case 16:
      result = 110;
      break;
    case 17:
      result = 103;
      break;
    case 18:
      result = 26726;
      break;
    case 19:
      result = 107;
      break;
    case 20:
      result = 25453;
      break;
    case 21:
      result = 114;
      break;
    case 22:
      result = 7234918;
      break;
    case 23:
      result = 7299942;
      break;
    case 24:
      result = 1145664868;
      break;
    case 25:
      result = 7234659;
      break;
    case 26:
      result = 6907747;
      break;
    case 27:
      result = 1768383343;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100014C5C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100014A34(*a1);
  v5 = v4;
  if (v3 == sub_100014A34(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002ED5C();
  }

  return v8 & 1;
}

Swift::Int sub_100014CE4()
{
  v1 = *v0;
  sub_10002EDCC();
  sub_100014A34(v1);
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_100014D48(uint64_t a1)
{
  sub_100014A34(*v1);
  sub_10002E8FC();
}

Swift::Int sub_100014D9C(uint64_t a1)
{
  v2 = *v1;
  sub_10002EDCC();
  sub_100014A34(v2);
  sub_10002E8FC();

  return sub_10002EDEC();
}

unint64_t sub_100014DFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100015A04(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100014E2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014A34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100014E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100015A04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100014E94(uint64_t a1)
{
  v2 = sub_100015524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100014ED0(uint64_t a1)
{
  v2 = sub_100015524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for SMSDictionary(uint64_t a1)
{
  result = qword_100042FF0;
  if (!qword_100042FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014F6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000C0EC(&qword_100042E68, &qword_100033FA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000C0EC(&qword_100042E60, &qword_100033F98);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000150C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000C0EC(&qword_100042E68, &qword_100033FA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000C0EC(&qword_100042E60, &qword_100033F98);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100015208(uint64_t a1)
{
  sub_1000154D8(319, &qword_100043000, &type metadata for Int);
  if (v1 <= 0x3F)
  {
    sub_100015430(319, &qword_100043008, &type metadata accessor for SMSMessage.FilterSubCategoryType);
    if (v2 <= 0x3F)
    {
      sub_1000154D8(319, &qword_100043010, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100015484(319, &qword_100043018, &qword_100042F10, &qword_100034148);
        if (v4 <= 0x3F)
        {
          sub_100015430(319, &qword_100043020, &type metadata accessor for Date);
          if (v5 <= 0x3F)
          {
            sub_100015484(319, &qword_100043028, &qword_100043030, qword_100034790);
            if (v6 <= 0x3F)
            {
              sub_1000154D8(319, &qword_100043038, &type metadata for Bool);
              if (v7 <= 0x3F)
              {
                sub_1000154D8(319, &unk_100043040, &type metadata for UInt64);
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

void sub_100015430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10002EB7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100015484(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000E724(a3, a4);
    v5 = sub_10002EB7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000154D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10002EB7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100015524()
{
  result = qword_1000430E0;
  if (!qword_1000430E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000430E0);
  }

  return result;
}

uint64_t sub_100015578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C0EC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000155E0()
{
  result = qword_100043100;
  if (!qword_100043100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043100);
  }

  return result;
}

uint64_t sub_100015634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSDictionary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000156E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000E724(&qword_100043030, qword_100034790);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100015758()
{
  result = qword_100043128;
  if (!qword_100043128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SMSDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SMSDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100015900()
{
  result = qword_100043130;
  if (!qword_100043130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043130);
  }

  return result;
}

unint64_t sub_100015958()
{
  result = qword_100043138;
  if (!qword_100043138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043138);
  }

  return result;
}

unint64_t sub_1000159B0()
{
  result = qword_100043140;
  if (!qword_100043140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043140);
  }

  return result;
}

unint64_t sub_100015A04(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002ED6C();

  if (v2 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100015AB0@<X0>(char *a1@<X8>)
{
  v3 = sub_10002E22C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C0EC(&qword_1000431A0, &unk_100034A30);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  if ((*(v1 + 264) & 1) == 0 && (*(v1 + 312) & 1) == 0 && (*(v1 + 328) & 1) == 0)
  {
    v25[1] = *(v1 + 256);
    v13 = *(v1 + 320);
    v14 = *(v1 + 304) >= 0x7FFFFFFFFFFFFFFFuLL ? 0x7FFFFFFFFFFFFFFFLL : *(v1 + 304);
    result = sub_10002DE4C();
    if (v14 != result)
    {
      if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v13;
      }

      v17 = v14 + v16;
      if (__OFADD__(v14, v16))
      {
        __break(1u);
        return result;
      }

      v18 = *(v1 + 280);
      if (v18)
      {
        v25[0] = *(v1 + 272);

        sub_10002E20C();
        sub_100019E54(v12, v10);
        if ((*(v4 + 48))(v10, 1, v3) != 1)
        {
          v20 = *(v4 + 32);
          v20(v6, v10, v3);
          v27 = *(v1 + 336);
          v20(a1, v6, v3);
          v21 = _s17AssociatedMessageVMa(0);
          v22 = &a1[v21[5]];
          *v22 = v25[0];
          *(v22 + 1) = v18;
          v23 = &a1[v21[6]];
          *v23 = 0;
          *(v23 + 1) = 0;
          v24 = &a1[v21[7]];
          *v24 = v14;
          *(v24 + 1) = v17;
          *&a1[v21[8]] = v27;
          (*(*(v21 - 1) + 56))(a1, 0, 1, v21);
          return sub_10001977C(&v27, v26);
        }

        sub_10000E76C(v10, &qword_1000431A0, &unk_100034A30);
      }
    }
  }

  v19 = _s17AssociatedMessageVMa(0);
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t sub_100015DAC@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v387 = a2;
  v381 = a1;
  v363 = a3;
  v4 = sub_10000C0EC(&qword_100042ED0, &unk_1000349D0);
  __chkstk_darwin(v4 - 8);
  v359 = &v319 - v5;
  v366 = sub_10002EBEC();
  *&v376 = *(v366 - 8);
  v6 = __chkstk_darwin(v366);
  v358 = &v319 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  *&v365 = &v319 - v9;
  __chkstk_darwin(v8);
  v364 = &v319 - v10;
  v11 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  __chkstk_darwin(v11 - 8);
  v343 = &v319 - v12;
  v13 = sub_10000C0EC(&qword_100043150, &qword_1000349E0);
  __chkstk_darwin(v13 - 8);
  v330 = &v319 - v14;
  v15 = sub_10002E4DC();
  v333 = *(v15 - 8);
  v334 = v15;
  v16 = __chkstk_darwin(v15);
  v328 = &v319 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v332 = &v319 - v18;
  v19 = sub_10000C0EC(&qword_100043158, &qword_1000349E8);
  v20 = __chkstk_darwin(v19 - 8);
  v327 = &v319 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v336 = &v319 - v22;
  v347 = sub_10002E22C();
  v341 = *(v347 - 8);
  v23 = __chkstk_darwin(v347);
  v335 = &v319 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v340 = &v319 - v25;
  v26 = sub_10000C0EC(&qword_100043160, &unk_1000349F0);
  v27 = __chkstk_darwin(v26 - 8);
  v338 = &v319 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v352 = &v319 - v29;
  v30 = _s17AssociatedMessageVMa(0);
  v31 = *(v30 - 8);
  v353 = v30;
  v354 = v31;
  __chkstk_darwin(v30);
  v351 = &v319 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10002E1BC();
  v356 = *(v33 - 8);
  v357 = v33;
  __chkstk_darwin(v33);
  v360 = &v319 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10002E47C();
  v36 = *(v35 - 8);
  v361 = v35;
  v362 = v36;
  v37 = __chkstk_darwin(v35);
  v368 = &v319 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v350 = &v319 - v40;
  v41 = __chkstk_darwin(v39);
  v345 = &v319 - v42;
  v43 = __chkstk_darwin(v41);
  v355 = &v319 - v44;
  v45 = __chkstk_darwin(v43);
  v339 = &v319 - v46;
  v47 = __chkstk_darwin(v45);
  v329 = &v319 - v48;
  v49 = __chkstk_darwin(v47);
  v337 = &v319 - v50;
  __chkstk_darwin(v49);
  v346 = &v319 - v51;
  v52 = sub_10000C0EC(&qword_100042E40, &unk_100034D10);
  __chkstk_darwin(v52 - 8);
  *&v375 = &v319 - v53;
  v54 = sub_10000C0EC(&qword_100043168, &unk_100034A00);
  __chkstk_darwin(v54 - 8);
  v369 = &v319 - v55;
  v56 = sub_10002DFCC();
  v373 = *(v56 - 8);
  v374 = v56;
  __chkstk_darwin(v56);
  v372 = &v319 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10002E7DC();
  v370 = *(v58 - 8);
  v371 = v58;
  __chkstk_darwin(v58);
  v377 = &v319 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_10002E7AC();
  v378 = *(v379 - 8);
  v60 = __chkstk_darwin(v379);
  v367 = &v319 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v349 = &v319 - v63;
  v64 = __chkstk_darwin(v62);
  v344 = &v319 - v65;
  v66 = __chkstk_darwin(v64);
  v348 = &v319 - v67;
  v68 = __chkstk_darwin(v66);
  v342 = &v319 - v69;
  v70 = __chkstk_darwin(v68);
  v331 = &v319 - v71;
  v72 = __chkstk_darwin(v70);
  v74 = &v319 - v73;
  v75 = __chkstk_darwin(v72);
  v77 = (&v319 - v76);
  v78 = __chkstk_darwin(v75);
  v80 = &v319 - v79;
  __chkstk_darwin(v78);
  v82 = &v319 - v81;
  v83 = sub_10002E00C();
  v380 = *(v83 - 8);
  __chkstk_darwin(v83);
  v85 = &v319 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DE7C();
  swift_allocObject();
  v86 = sub_10002DE6C();
  sub_10001960C(&qword_100043170, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_10002DE5C();
  if (v3)
  {
  }

  v381 = v77;
  v324 = v74;
  v325 = v82;
  v326 = v86;
  v387 = v83;
  sub_10002DFEC();
  v88 = v85;
  v322 = 0;
  v89 = v378;
  v90 = v325;
  v91 = v80;
  v92 = v379;
  (*(v378 + 32))(v325, v91, v379);
  v93 = sub_10002DFDC();
  v323 = v88;
  if (v94 >> 60 == 15)
  {
    v381 = sub_10000F74C();
    v95 = sub_10002EB3C();
    v377 = sub_10000C0EC(&qword_100042EB8, &unk_100034000);
    v96 = swift_allocObject();
    v376 = xmmword_100033FF0;
    *(v96 + 16) = xmmword_100033FF0;
    v97 = v375;
    sub_10002E79C();
    v98 = v90;
    v99 = sub_10002DF1C();
    v100 = *(v99 - 8);
    v101 = *(v100 + 56);
    v373 = v100 + 56;
    v374 = v101;
    v101(v97, 0, 1, v99);
    v102 = sub_10002E6CC();
    v104 = v103;
    sub_10000E76C(v97, &qword_100042E40, &unk_100034D10);
    *(v96 + 56) = &type metadata for String;
    v105 = sub_10000F798();
    *(v96 + 64) = v105;
    *(v96 + 32) = v102;
    *(v96 + 40) = v104;
    v106 = sub_10002EA8C();
    sub_10002E03C("Generating a typing indicator (guid: %@)", 40, 2, &_mh_execute_header, v95, v106, v96);

    v107 = v323;

    if ((sub_10002DFFC() & 1) == 0)
    {
      v125 = v378;
      v126 = v367;
      v127 = v379;
      (*(v378 + 16))(v367, v98, v379);
      v128 = v368;
      v129 = v322;
      sub_10002E56C();
      if (v129)
      {

        v130 = *(v125 + 8);
        v130(v126, v127);
        v130(v98, v127);
      }

      else
      {
        (*(v362 + 104))(v128, enum case for BasicTextMessage.MessageType.typingIndicator(_:), v361);
        sub_10002E48C();

        (*(v125 + 8))(v98, v127);
      }

      v176 = *(v380 + 8);
      v177 = v107;
      return v176(v177, v387);
    }

    v108 = sub_10002EB3C();
    v109 = swift_allocObject();
    *(v109 + 16) = v376;
    sub_10002E79C();
    v374(v97, 0, 1, v99);
    v110 = sub_10002E6CC();
    v112 = v111;
    sub_10000E76C(v97, &qword_100042E40, &unk_100034D10);
    *(v109 + 56) = &type metadata for String;
    *(v109 + 64) = v105;
    *(v109 + 32) = v110;
    *(v109 + 40) = v112;
    v113 = sub_10002EA8C();
    sub_10002E03C("Missing encrypted data, but not a typing indicator (guid: %@)", 61, 2, &_mh_execute_header, v108, v113, v109);

    sub_1000195B8();
    swift_allocError();
    swift_willThrow();

    (*(v378 + 8))(v98, v379);
LABEL_22:
    v176 = *(v380 + 8);
    v177 = v323;
    return v176(v177, v387);
  }

  v320 = v93;
  v321 = v94;
  isa = sub_10002DECC().super.isa;
  v115 = [(objc_class *)isa _imOptionallyDecompressData];

  v116 = sub_10002DEDC();
  v118 = v117;

  v119 = v118 >> 62;
  v367 = v116;
  v368 = v118;
  if ((v118 >> 62) <= 1)
  {
    v120 = v376;
    v121 = v373;
    v122 = v374;
    v123 = v372;
    if (!v119)
    {
      v124 = BYTE6(v118);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v120 = v376;
  v121 = v373;
  v122 = v374;
  v123 = v372;
  if (v119 != 2)
  {
LABEL_21:
    v163 = v121;
    (*(v121 + 104))(v123, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v122);
    sub_10002DFBC();
    (*(v163 + 8))(v123, v122);
    v164 = v377;
    sub_10002E7CC();
    sub_10000F74C();
    v165 = sub_10002EB5C();
    sub_10000C0EC(&qword_100042EB8, &unk_100034000);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_100033FF0;
    v167 = v369;
    v168 = v370;
    v381 = *(v370 + 16);
    v169 = v371;
    v381(v369, v164, v371);
    (*(v168 + 56))(v167, 0, 1, v169);
    v170 = sub_10002E6CC();
    v172 = v171;
    sub_10000E76C(v167, &qword_100043168, &unk_100034A00);
    *(v166 + 56) = &type metadata for String;
    *(v166 + 64) = sub_10000F798();
    *(v166 + 32) = v170;
    *(v166 + 40) = v172;
    v173 = sub_10002EA8C();
    sub_10002E03C("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v165, v173, v166);

    sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v174 = v377;
    v381(v175, v377, v169);
    swift_willThrow();
    sub_10000F894(v320, v321);

    sub_10000F8A8(v367, v368);
    (*(v168 + 8))(v174, v169);
    (*(v378 + 8))(v325, v379);
    goto LABEL_22;
  }

  v132 = *(v116 + 16);
  v131 = *(v116 + 24);
  v133 = __OFSUB__(v131, v132);
  v124 = v131 - v132;
  if (v133)
  {
    __break(1u);
LABEL_15:
    LODWORD(v124) = HIDWORD(v116) - v116;
    if (__OFSUB__(HIDWORD(v116), v116))
    {
      __break(1u);
      goto LABEL_109;
    }

    v124 = v124;
  }

LABEL_17:
  if (v124 <= 0)
  {
    goto LABEL_21;
  }

  sub_100019654();
  v134 = v322;
  sub_10002DE5C();
  if (v134)
  {
    v382[0] = v134;
    swift_errorRetain();
    sub_10000C0EC(&qword_100042EC0, &qword_100034A10);
    v135 = v364;
    v136 = v366;
    if (swift_dynamicCast())
    {

      (*(v120 + 32))(v365, v135, v136);
      v138 = v372;
      v137 = v373;
      v139 = v374;
      (*(v373 + 104))(v372, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v374);
      v140 = v136;
      sub_10002DFBC();
      v381 = v141;
      (*(v137 + 8))(v138, v139);
      v142 = *(v120 + 16);
      v143 = v365;
      v142(v358, v365, v136);
      sub_10002E7BC();
      v373 = sub_10000F74C();
      v144 = sub_10002EB5C();
      v381 = sub_10000C0EC(&qword_100042EB8, &unk_100034000);
      v145 = swift_allocObject();
      v375 = xmmword_100033FF0;
      *(v145 + 16) = xmmword_100033FF0;
      v146 = v359;
      v142(v359, v143, v140);
      (*(v376 + 56))(v146, 0, 1, v140);
      v147 = sub_10002E6CC();
      v149 = v148;
      sub_10000E76C(v146, &qword_100042ED0, &unk_1000349D0);
      *(v145 + 56) = &type metadata for String;
      v374 = sub_10000F798();
      *(v145 + 64) = v374;
      *(v145 + 32) = v147;
      *(v145 + 40) = v149;
      v150 = sub_10002EA8C();
      sub_10002E03C("Message unpacking error: %{public}@", 35, 2, &_mh_execute_header, v144, v150, v145);

      v151 = sub_10002EB5C();
      v152 = swift_allocObject();
      *(v152 + 16) = v375;
      v154 = v369;
      v153 = v370;
      v381 = *(v370 + 16);
      v155 = v371;
      v381(v369, v377, v371);
      (*(v153 + 56))(v154, 0, 1, v155);
      v156 = sub_10002E6CC();
      v158 = v157;
      sub_10000E76C(v154, &qword_100043168, &unk_100034A00);
      v159 = v374;
      *(v152 + 56) = &type metadata for String;
      *(v152 + 64) = v159;
      *(v152 + 32) = v156;
      *(v152 + 40) = v158;
      v160 = sub_10002EA8C();
      sub_10002E03C("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v151, v160, v152);

      sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v161 = v377;
      v381(v162, v377, v155);
      swift_willThrow();
      sub_10000F894(v320, v321);

      sub_10000F8A8(v367, v368);
      (*(v153 + 8))(v161, v155);
      (*(v376 + 8))(v365, v366);
      (*(v378 + 8))(v325, v379);
      (*(v380 + 8))(v323, v387);
    }

    sub_10000F74C();
    v193 = sub_10002EB5C();
    sub_10000C0EC(&qword_100042EB8, &unk_100034000);
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_100033FF0;
    v382[0] = v134;
    v195 = sub_10002E6CC();
    v197 = v196;
    *(v194 + 56) = &type metadata for String;
    *(v194 + 64) = sub_10000F798();
    *(v194 + 32) = v195;
    *(v194 + 40) = v197;
    v198 = sub_10002EA8C();
    sub_10002E03C("Message unpacking unknown error: %{public}@", 43, 2, &_mh_execute_header, v193, v198, v194);

    swift_getErrorValue();
    swift_getDynamicType();
    v382[0] = 0;
    v382[1] = 0xE000000000000000;
    sub_10002EBCC(22);

    v382[0] = 0xD000000000000014;
    v382[1] = 0x80000001000333B0;
    v388._countAndFlagsBits = sub_10002EE3C();
    sub_10002E90C(v388);

    sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    sub_10000F894(v320, v321);

    sub_10000F8A8(v367, v368);

    (*(v89 + 8))(v90, v92);
    goto LABEL_22;
  }

  memcpy(v383, v382, sizeof(v383));
  v369 = *&v383[224];
  LODWORD(v366) = v383[232];
  v372 = *&v383[96];
  LODWORD(v370) = v383[104];
  v178 = v383[72];
  v377 = sub_10000F74C();
  v179 = sub_10002EB5C();
  v373 = sub_10000C0EC(&qword_100042EB8, &unk_100034000);
  v180 = swift_allocObject();
  v365 = xmmword_100033FF0;
  *(v180 + 16) = xmmword_100033FF0;
  v181 = v375;
  sub_10002E79C();
  v182 = sub_10002DF1C();
  v183 = *(v182 - 8);
  *&v376 = *(v183 + 56);
  v374 = (v183 + 56);
  (v376)(v181, 0, 1, v182);
  v184 = sub_10002E6CC();
  v186 = v185;
  sub_10000E76C(v181, &qword_100042E40, &unk_100034D10);
  *(v180 + 56) = &type metadata for String;
  v187 = sub_10000F798();
  *(v180 + 64) = v187;
  *(v180 + 32) = v184;
  *(v180 + 40) = v186;
  v188 = sub_10002EA8C();
  sub_10002E03C("Unpacking message (guid: %@)", 28, 2, &_mh_execute_header, v179, v188, v180);

  if (v178 != 2 && (v178 & 1) != 0)
  {
    v189 = v378;
    v190 = v325;
    v191 = v379;
    (*(v378 + 16))(v349, v325, v379);

    v192 = v350;
    sub_10002E56C();
    (*(v362 + 104))(v192, enum case for BasicTextMessage.MessageType.typingIndicator(_:), v361);

    sub_10002E48C();
    v234 = v380;
    v235 = v387;
    v236 = v323;
    sub_10000F894(v320, v321);

    sub_10000F8A8(v367, v368);
    (*(v189 + 8))(v190, v191);
    (*(v234 + 8))(v236, v235);
    return sub_10000EF34(v383);
  }

  v364 = v187;
  v199 = *&v383[144];
  v384 = *&v383[208];
  v200 = *&v383[216];
  LODWORD(v359) = v383[152];
  if (*&v383[216])
  {
    v201 = v384;
    if ((v384 != 0xD000000000000025 || *&v383[216] != 0x80000001000335E0) && (sub_10002ED5C() & 1) == 0 && *v383)
    {
      v358 = v199;

      v202 = sub_10002EA6C();
      v203 = sub_10002EB2C();
      if (os_log_type_enabled(v203, v202))
      {
        sub_10001977C(&v384, v382);
        v204 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        v382[0] = v205;
        *v204 = 136446210;
        v206 = sub_100019850(v201, v200, v382);
        sub_10000E76C(&v384, &qword_100043190, &qword_100034A20);
        *(v204 + 4) = v206;
        _os_log_impl(&_mh_execute_header, v203, v202, "Returning unsupported message type for %{public}s", v204, 0xCu);
        sub_1000121A8(v205);
      }

      (*(v378 + 16))(v381, v325, v379);
      v207 = v346;
      sub_10002E53C();
      (*(v362 + 104))(v207, enum case for BasicTextMessage.MessageType.unsupported(_:), v361);
      v377 = *&v383[112];
      *&v376 = *&v383[128];
      v273 = *&v383[168];
      if (*&v383[168])
      {
        v274 = *&v383[160];

        sub_10001ADD8(v274, v273);
      }

      else
      {
      }

      sub_10002E48C();
      sub_10000F894(v320, v321);

      sub_10000F8A8(v367, v368);
      goto LABEL_104;
    }
  }

  sub_1000122B4(v383, v382);
  v208 = v360;
  BasicMessage.init(messageDictionary:)(v383, v360);
  v322 = 0;
  v358 = v199;
  v209 = v352;
  sub_100015AB0(v352);
  v210 = v353;
  v211 = (*(v354 + 48))(v209, 1, v353);
  v212 = v379;
  if (v211 == 1)
  {
    sub_10000E76C(v209, &qword_100043160, &unk_1000349F0);
    v213 = v355;
    goto LABEL_53;
  }

  v214 = v351;
  sub_1000196BC(v209, v351);
  v215 = *v383;
  v213 = v355;
  if (*v383)
  {
    v216 = v340;
    v217 = v341;
    v218 = *(v341 + 16);
    v219 = v347;
    v355 = (v341 + 16);
    v352 = v218;
    (v218)(v340, v214, v347);
    v220 = (*(v217 + 88))(v216, v219);
    v221 = v325;
    v381 = v215;
    if (v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackHeart(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackThumbsUp(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackThumbsDown(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackHa(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackExclamation(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackQuestionMark(_:))
    {
      if (v220 == enum case for BasicTapBack.AssociatedMessageType.tapbackEmoji(_:))
      {
        goto LABEL_48;
      }

      if (v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedHeart(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedThumbsUp(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedThumbsDown(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedHa(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedExclamation(_:) && v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedQuestionMark(_:))
      {
        if (v220 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedEmoji(_:))
        {
          sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();
          sub_10000F894(v320, v321);

          sub_10000F8A8(v367, v368);
          sub_100019720(v214);
          (*(v356 + 8))(v208, v357);
          (*(v378 + 8))(v221, v379);
          (*(v380 + 8))(v323, v387);
          sub_10000EF34(v383);
          return (*(v341 + 8))(v216, v347);
        }

LABEL_48:

        v222 = sub_10002EB3C();
        v223 = swift_allocObject();
        *(v223 + 16) = v365;
        v224 = v375;
        sub_10002E79C();
        (v376)(v224, 0, 1, v182);
        v225 = sub_10002E6CC();
        v227 = v226;
        sub_10000E76C(v224, &qword_100042E40, &unk_100034D10);
        v228 = v364;
        *(v223 + 56) = &type metadata for String;
        *(v223 + 64) = v228;
        *(v223 + 32) = v225;
        *(v223 + 40) = v227;
        v229 = sub_10002EA8C();
        sub_10002E03C("Generating an emoji tapback (guid: %@)", 38, 2, &_mh_execute_header, v222, v229, v223);

        v386[0] = *&v383[24];
        if (!*&v383[32] || (v230 = (v351 + v353[8]), !v230[1]))
        {

          goto LABEL_89;
        }

        *&v376 = *&v386[0];
        v377 = *v230;
        sub_10001977C(v386, v382);

        sub_10002E21C();
        v231 = v330;
        sub_10002E4CC();
        v233 = v333;
        v232 = v334;
        if ((*(v333 + 48))(v231, 1, v334) == 1)
        {

          sub_10000E76C(v386, &qword_100043190, &qword_100034A20);

          sub_10000E76C(v231, &qword_100043150, &qword_1000349E0);
LABEL_89:
          v305 = v380;
          v306 = v387;
          v307 = v323;
          v308 = v379;
          v309 = v356;
          sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();
          sub_10000F894(v320, v321);

          sub_10000F8A8(v367, v368);
          sub_100019720(v351);
          (*(v309 + 8))(v360, v357);
          (*(v378 + 8))(v325, v308);
          (*(v305 + 8))(v307, v306);
          return sub_10000EF34(v383);
        }

        v312 = v332;
        (*(v233 + 32))(v332, v231, v232);
        (*(v378 + 16))(v331, v325, v379);
        (*(v233 + 16))(v328, v312, v232);
        v313 = *(v351 + v353[5]);
        v374 = *(v351 + v353[6]);
        *&v375 = v313;
        v373 = *(v351 + v353[7]);

        sub_10000F4F8(v327);
        v314 = v322;
        sub_10002E4EC();
        if (v314)
        {
          sub_10000F894(v320, v321);

          sub_10000F8A8(v367, v368);
          v315 = *(v378 + 8);
          v316 = v379;
          v315(v331, v379);
          (*(v333 + 8))(v332, v334);
          sub_100019720(v351);
          (*(v356 + 8))(v360, v357);
          v315(v325, v316);
          goto LABEL_105;
        }

        (*(v362 + 104))(v329, enum case for BasicTextMessage.MessageType.emojiTapback(_:), v361);
        v381 = *&v383[112];
        v377 = *&v383[128];
        v317 = *&v383[168];
        if (*&v383[168])
        {
          v318 = *&v383[160];

          sub_10001ADD8(v318, v317);
LABEL_110:

          sub_10002E48C();
          sub_10000F894(v320, v321);

          sub_10000F8A8(v367, v368);
          (*(v333 + 8))(v332, v334);
          goto LABEL_102;
        }

LABEL_109:

        goto LABEL_110;
      }
    }

    v377 = sub_10002EB3C();
    v285 = swift_allocObject();
    *(v285 + 16) = xmmword_100034950;
    v286 = v338;
    sub_1000197EC(v214, v338);
    (*(v354 + 56))(v286, 0, 1, v210);
    v287 = sub_10002E6CC();
    v289 = v288;
    sub_10000E76C(v286, &qword_100043160, &unk_1000349F0);
    v290 = v364;
    *(v285 + 56) = &type metadata for String;
    *(v285 + 64) = v290;
    *(v285 + 32) = v287;
    *(v285 + 40) = v289;
    v291 = v375;
    sub_10002E79C();
    (v376)(v291, 0, 1, v182);
    v292 = sub_10002E6CC();
    v294 = v293;
    sub_10000E76C(v291, &qword_100042E40, &unk_100034D10);
    *(v285 + 96) = &type metadata for String;
    *(v285 + 104) = v290;
    *(v285 + 72) = v292;
    *(v285 + 80) = v294;
    v295 = sub_10002EA8C();
    v296 = v377;
    sub_10002E03C("Generating a tapback: %@ (guid: %@)", 35, 2, &_mh_execute_header, v377, v295, v285);

    v385 = *&v383[24];
    if (*&v383[32])
    {
      v377 = v385;
      v297 = v378;
      (*(v378 + 16))(v324, v325, v379);
      v298 = v351;
      (v352)(v335, v351, v347);
      v299 = v210[6];
      *&v376 = *(v298 + v210[5]);
      v300 = *(v298 + v299);
      v374 = *(v298 + v210[7] + 8);
      *&v375 = v300;
      sub_10001977C(&v385, v382);

      sub_10000F4F8(v336);
      v301 = v337;
      v302 = v322;
      sub_10002E23C();
      if (v302)
      {
        sub_10000F894(v320, v321);

        sub_10000F8A8(v367, v368);
        v303 = *(v297 + 8);
        v304 = v379;
        v303(v324, v379);
        sub_100019720(v351);
        (*(v356 + 8))(v360, v357);
        v303(v325, v304);
LABEL_105:
        (*(v380 + 8))(v323, v387);
        return sub_10000EF34(v383);
      }

      v322 = 0;
      (*(v362 + 104))(v301, enum case for BasicTextMessage.MessageType.tapback(_:), v361);
      v381 = *&v383[112];
      v310 = *&v383[168];
      if (*&v383[168])
      {
        v311 = *&v383[160];

        sub_10001ADD8(v311, v310);
      }

      else
      {
      }

      sub_10002E48C();
    }

    else
    {

      sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_10002E7CC();
      swift_willThrow();
    }

    sub_10000F894(v320, v321);

    sub_10000F8A8(v367, v368);
LABEL_102:
    sub_100019720(v351);
    goto LABEL_103;
  }

  sub_100019720(v214);
LABEL_53:
  if (v383[73] != 2 && (v383[73] & 1) != 0)
  {
    v237 = sub_10002EB5C();
    v238 = swift_allocObject();
    *(v238 + 16) = v365;
    v239 = v375;
    v240 = v325;
    sub_10002E79C();
    (v376)(v239, 0, 1, v182);
    v241 = sub_10002E6CC();
    v243 = v242;
    sub_10000E76C(v239, &qword_100042E40, &unk_100034D10);
    v244 = v364;
    *(v238 + 56) = &type metadata for String;
    *(v238 + 64) = v244;
    *(v238 + 32) = v241;
    *(v238 + 40) = v243;
    v245 = sub_10002EA8C();
    sub_10002E03C("Generating a audio message (guid: %@)", 37, 2, &_mh_execute_header, v237, v245, v238);

    (*(v378 + 16))(v342, v240, v212);
    sub_10002E1AC();
    sub_10002E18C();
    v246 = *&v383[80];
    v247 = *&v383[88];
    if (*&v383[88] >> 60 != 15)
    {
      sub_10000C0EC(&qword_100043188, &qword_100034A18);
      v278 = swift_allocObject();
      *(v278 + 16) = v365;
      *(v278 + 32) = v246;
      *(v278 + 40) = v247;
    }

    v279 = v380;
    v280 = v323;
    v281 = v357;
    sub_1000196A8(v246, v247);
    v282 = v339;
    v283 = v322;
    sub_10002E4BC();
    if (v283)
    {
      sub_10000F894(v320, v321);

      sub_10000F8A8(v367, v368);
      v284 = *(v378 + 8);
      v284(v342, v212);
      (*(v356 + 8))(v360, v281);
      v284(v325, v212);
      (*(v279 + 8))(v280, v387);
      return sub_10000EF34(v383);
    }

    (*(v362 + 104))(v282, enum case for BasicTextMessage.MessageType.audioMessage(_:), v361);
    v381 = *&v383[112];
    v377 = *&v383[128];
    v271 = *&v383[168];
    if (*&v383[168])
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

  if (*&v383[32] || *&v383[48] || *&v383[64])
  {
    v262 = sub_10002EB5C();
    v263 = swift_allocObject();
    *(v263 + 16) = v365;
    v264 = v375;
    v265 = v325;
    sub_10002E79C();
    (v376)(v264, 0, 1, v182);
    v266 = sub_10002E6CC();
    v268 = v267;
    sub_10000E76C(v264, &qword_100042E40, &unk_100034D10);
    v269 = v364;
    *(v263 + 56) = &type metadata for String;
    *(v263 + 64) = v269;
    *(v263 + 32) = v266;
    *(v263 + 40) = v268;
    v270 = sub_10002EA8C();
    sub_10002E03C("Generating a basicTextMessage (guid: %@)", 40, 2, &_mh_execute_header, v262, v270, v263);

    (*(v378 + 16))(v348, v265, v379);
    (*(v356 + 16))(v213, v360, v357);
    (*(v362 + 104))(v213, enum case for BasicTextMessage.MessageType.textMessage(_:), v361);
    v381 = *&v383[112];
    v271 = *&v383[168];
    if (*&v383[168])
    {
LABEL_64:
      v272 = *&v383[160];

      sub_10001ADD8(v272, v271);
LABEL_68:

      sub_10002E48C();
      sub_10000F894(v320, v321);

      sub_10000F8A8(v367, v368);
LABEL_103:
      (*(v356 + 8))(v360, v357);
LABEL_104:
      (*(v378 + 8))(v325, v379);
      goto LABEL_105;
    }

LABEL_67:

    goto LABEL_68;
  }

  v248 = sub_10002EB3C();
  v249 = swift_allocObject();
  *(v249 + 16) = v365;
  v250 = v375;
  v251 = v325;
  sub_10002E79C();
  (v376)(v250, 0, 1, v182);
  v252 = sub_10002E6CC();
  v254 = v253;
  sub_10000E76C(v250, &qword_100042E40, &unk_100034D10);
  v255 = v364;
  *(v249 + 56) = &type metadata for String;
  *(v249 + 64) = v255;
  *(v249 + 32) = v252;
  *(v249 + 40) = v254;
  v256 = sub_10002EA8C();
  sub_10002E03C("Generating a cancel typing indicator (guid: %@)", 47, 2, &_mh_execute_header, v248, v256, v249);

  v257 = v378;
  v258 = v344;
  (*(v378 + 16))(v344, v251, v212);

  v259 = v345;
  v260 = v322;
  sub_10002E56C();
  if (v260)
  {
    sub_10000F894(v320, v321);

    sub_10000F8A8(v367, v368);
    v261 = *(v257 + 8);
    v261(v258, v212);
    (*(v356 + 8))(v360, v357);
    v261(v251, v212);
    (*(v380 + 8))(v323, v387);
    return sub_10000EF34(v383);
  }

  (*(v362 + 104))(v259, enum case for BasicTextMessage.MessageType.typingIndicator(_:), v361);
  v275 = *&v383[168];
  v276 = v323;
  if (*&v383[168])
  {
    v277 = *&v383[160];

    sub_10001ADD8(v277, v275);
  }

  else
  {
  }

  sub_10002E48C();
  sub_10000F894(v320, v321);

  sub_10000F8A8(v367, v368);
  (*(v356 + 8))(v360, v357);
  (*(v378 + 8))(v325, v212);
  (*(v380 + 8))(v276, v387);
  return sub_10000EF34(v383);
}

uint64_t _s17AssociatedMessageVMa(uint64_t a1)
{
  result = qword_100043200;
  if (!qword_100043200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000195B8()
{
  result = qword_100043178;
  if (!qword_100043178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043178);
  }

  return result;
}

uint64_t sub_10001960C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100019654()
{
  result = qword_100043180;
  if (!qword_100043180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043180);
  }

  return result;
}

void sub_1000196A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_10000F7EC(a1, a2);
  }
}

uint64_t sub_1000196BC(uint64_t a1, uint64_t a2)
{
  v4 = _s17AssociatedMessageVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019720(uint64_t a1)
{
  v2 = _s17AssociatedMessageVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001977C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043190, &qword_100034A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000197EC(uint64_t a1, uint64_t a2)
{
  v4 = _s17AssociatedMessageVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100019850(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001991C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100019DF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000121A8(v11);
  return v7;
}

unint64_t sub_10001991C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100019A28(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10002EBFC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100019A28(uint64_t a1, unint64_t a2)
{
  v3 = sub_100019A74(a1, a2);
  sub_100019BA4(&off_10003DDE0);
  return v3;
}

char *sub_100019A74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100019C90(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10002EBFC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10002E91C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100019C90(v10, 0);
        result = sub_10002EBAC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100019BA4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100019D04(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100019C90(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000C0EC(&qword_100043198, &qword_100034A28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100019D04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C0EC(&qword_100043198, &qword_100034A28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100019DF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100019E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_1000431A0, &unk_100034A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002E22C();
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

    return (v10 + 1);
  }
}

uint64_t sub_100019FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002E22C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10001A078(uint64_t a1)
{
  sub_10002E22C();
  if (v1 <= 0x3F)
  {
    sub_10001A120();
    if (v2 <= 0x3F)
    {
      sub_10001A170();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001A120()
{
  if (!qword_100043010)
  {
    v0 = sub_10002EB7C();
    if (!v1)
    {
      atomic_store(v0, &qword_100043010);
    }
  }
}

void sub_10001A170()
{
  if (!qword_100043210)
  {
    v0 = sub_10002EA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_100043210);
    }
  }
}

unint64_t sub_10001A1D8(uint64_t a1)
{
  result = sub_10000C134();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10001A248@<X0>(uint64_t a3@<X8>)
{
  v18[1] = a3;
  v4 = sub_10002E7AC();
  __chkstk_darwin(v4 - 8);
  v18[3] = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C0EC(&qword_100043258, &qword_100034B38);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = sub_10002E00C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DE7C();
  swift_allocObject();
  sub_10002DE6C();
  sub_10001A9B0(&qword_100043170, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_10002DE5C();

  if (!v3)
  {
    v17 = sub_10002E4AC();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    sub_10001A9F8(v11, v9);
    sub_10002DFEC();
    sub_10002E16C();
    sub_10001AA68(v11);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

uint64_t sub_10001A52C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002E7AC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10002E00C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DE7C();
  swift_allocObject();
  sub_10002DE6C();
  sub_10001A9B0(&qword_100043170, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_10002DE5C();

  if (!v2)
  {
    sub_10002DFEC();
    sub_10002E44C();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_10001A724@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a3;
  v14[1] = a4;
  v5 = sub_10002E7AC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000C0EC(&qword_100043258, &qword_100034B38);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v9 = sub_10002E00C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DE7C();
  swift_allocObject();
  sub_10002DE6C();
  sub_10001A9B0(&qword_100043170, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_10002DE5C();

  if (!v4)
  {
    sub_10001A9F8(v15, v8);
    sub_10002DFEC();
    sub_10002E16C();
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_10001A9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001A9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043258, &qword_100034B38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001AA68(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100043258, &qword_100034B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _AttributedString.init(fromNSAttributedString:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002E52C();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 string];
  if (!v7)
  {
    sub_10002E87C();
    v7 = sub_10002E84C();
  }

  v8 = sub_10002E87C();
  v10 = v9;
  v24 = &_swiftEmptyArrayStorage;
  v23 = 0;
  result = [v7 length];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  v18 = v4;
  v19 = a2;
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v10;
  v13[4] = &v23;
  v13[5] = &v24;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10001EAC0;
  *(v14 + 24) = v13;
  aBlock[4] = sub_10001EADC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D490;
  aBlock[3] = &unk_10003E658;
  v15 = _Block_copy(aBlock);

  [a1 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v15}];
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v23)
  {
    swift_errorRetain();

    swift_willThrow();
  }

  else
  {

    v16 = v21;
    sub_10002E51C();

    if (!v16)
    {
      (*(v20 + 32))(v19, v6, v18);
    }
  }
}

unint64_t sub_10001ADD8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_10002EBFC();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_10001EB1C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10001B0D8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_10002EBFC();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10001F0A0(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10001B3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v114 = a8;
  v107 = a7;
  v109 = a6;
  v106 = a4;
  v112 = a1;
  v10 = sub_10000C0EC(&qword_100043280, &qword_100034B80);
  __chkstk_darwin(v10 - 8);
  v12 = &v91 - v11;
  v13 = sub_10002DEBC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v91 - v18;
  v20 = sub_10000C0EC(&qword_100043288, &qword_100034B88);
  __chkstk_darwin(v20 - 8);
  v22 = &v91 - v21;
  result = sub_10002DE4C();
  if (result != a2)
  {
    v111 = a2 + a3;
    if (!__OFADD__(a2, a3))
    {
      v108 = v22;
      v98 = v19;
      v99 = v17;
      v101 = v13;
      v102 = v12;
      v110 = a2;
      v24 = v112 + 64;
      v25 = 1 << *(v112 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(v112 + 64);
      v28 = (v25 + 63) >> 6;
      v113 = MBDIMFileTransferAttributeName;
      v105 = MBDIMBaseWritingDirectionAttributeName;
      v104 = MBDIMMessagePartAttributeName;
      v103 = MBDIMLinkAttributeName;
      v94 = MBDIMLinkIsRichLinkAttributeName;
      v100 = (v14 + 56);
      v97 = (v14 + 32);
      v96 = (v14 + 16);
      v95 = (v14 + 8);

      v29 = 0;
      v93 = xmmword_100034B50;
      if (!v27)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v30 = v29;
LABEL_17:
        v33 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v34 = v33 | (v30 << 6);
        v35 = *(*(v112 + 48) + 8 * v34);
        sub_100019DF8(*(v112 + 56) + 32 * v34, &v116);
        *&v120 = v35;
        sub_10001FD38(&v116, (&v120 + 8));
        v36 = v35;
LABEL_18:
        v123[0] = v120;
        v123[1] = v121;
        v124 = v122;
        v37 = v120;
        if (!v120)
        {
        }

        sub_10001FD38((v123 + 8), v119);
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        v38 = sub_10002E87C();
        v40 = v39;
        if (v38 == sub_10002E87C() && v40 == v41)
        {

LABEL_23:
          sub_100019DF8(v119, &v116);
          sub_10000C0EC(&qword_100043278, &qword_100034B78);
          if (swift_dynamicCast())
          {
            v43 = v115;

            v44 = v108;
            FileTransferAttribute.init(fileTransferDict:string:range:)(v43, v110, v111, v108);
            v49 = sub_10002E5FC();
            v50 = *(v49 - 8);
            if ((*(*(v49 - 8) + 48))(v44, 1, v49) == 1)
            {
              sub_10000E76C(&v120, &qword_100043290, &qword_100034B90);
              sub_10000E76C(v44, &qword_100043288, &qword_100034B88);
              v116 = 0u;
              v117 = 0u;
              v118 = 0;
            }

            else
            {
              *(&v117 + 1) = v49;
              v118 = sub_10001FEDC(&qword_1000432B8, &type metadata accessor for FileTransferAttribute, &protocol conformance descriptor for FileTransferAttribute);
              v53 = sub_10001FE28(&v116);
              (*(v50 + 32))(v53, v44, v49);
              sub_10000E76C(&v120, &qword_100043290, &qword_100034B90);
            }

            goto LABEL_38;
          }

          goto LABEL_51;
        }

        v42 = sub_10002ED5C();

        if (v42)
        {
          goto LABEL_23;
        }

        v45 = sub_10002E87C();
        v47 = v46;
        if (v45 == sub_10002E87C() && v47 == v48)
        {
          break;
        }

        v51 = sub_10002ED5C();

        if (v51)
        {
          goto LABEL_32;
        }

        v54 = sub_10002E87C();
        v56 = v55;
        if (v54 == sub_10002E87C() && v56 == v57)
        {

LABEL_40:
          sub_100019DF8(v119, &v116);
          sub_10001FDE0(0, &qword_100042EF0, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v59 = v115;
            sub_10002EB9C();
            *(&v117 + 1) = sub_10002E58C();
            v118 = sub_10001FEDC(&qword_1000432A8, &type metadata accessor for MessagePartAttribute, &protocol conformance descriptor for MessagePartAttribute);
            sub_10001FE28(&v116);
            sub_10002E57C();
            goto LABEL_42;
          }

          goto LABEL_51;
        }

        v58 = sub_10002ED5C();

        if (v58)
        {
          goto LABEL_40;
        }

        v60 = sub_10002E87C();
        v62 = v61;
        if (v60 == sub_10002E87C() && v62 == v63)
        {

LABEL_48:
          sub_100019DF8(v119, &v116);
          v65 = v102;
          v66 = v101;
          v67 = swift_dynamicCast();
          v68 = *v100;
          if ((v67 & 1) == 0)
          {
            v68(v65, 1, 1, v66);
            sub_10000E76C(v65, &qword_100043280, &qword_100034B80);
            goto LABEL_51;
          }

          v68(v65, 0, 1, v66);
          v69 = v98;
          (*v97)(v98, v65, v66);
          (*v96)(v99, v69, v66);
          *(&v117 + 1) = sub_10002E3EC();
          v118 = sub_10001FEDC(&qword_1000432A0, &type metadata accessor for LinkAttribute, &protocol conformance descriptor for LinkAttribute);
          sub_10001FE28(&v116);
          sub_10002E3DC();
          (*v95)(v69, v66);
          goto LABEL_43;
        }

        v64 = sub_10002ED5C();

        if (v64)
        {
          goto LABEL_48;
        }

        v76 = sub_10002E87C();
        v78 = v77;
        if (v76 == sub_10002E87C() && v78 == v79)
        {
        }

        else
        {
          v80 = sub_10002ED5C();

          if ((v80 & 1) == 0)
          {
            sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
            v92 = sub_10002EB3C();
            sub_10000C0EC(&qword_100042EB8, &unk_100034000);
            v81 = swift_allocObject();
            *(v81 + 16) = v93;
            v82 = sub_10002E87C();
            v84 = v83;
            *(v81 + 56) = &type metadata for String;
            v85 = sub_10000F798();
            *(v81 + 32) = v82;
            *(v81 + 40) = v84;
            *(v81 + 96) = &type metadata for Int;
            v86 = v110;
            *(v81 + 64) = v85;
            *(v81 + 72) = v86;
            *(v81 + 136) = &type metadata for Int;
            *(v81 + 144) = &protocol witness table for Int;
            v87 = v111;
            *(v81 + 104) = &protocol witness table for Int;
            *(v81 + 112) = v87;
            v88 = sub_10002EA8C();
            v89 = v92;
            sub_10002E03C("Unhandled attribute '%{public}@' in NSAttributedString at range=[%ld,%ld)", 73, 2, &_mh_execute_header, v92, v88, v81);

            goto LABEL_51;
          }
        }

        sub_100019DF8(v119, &v116);
        sub_10001FDE0(0, &qword_100042EF0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v59 = v115;
          [v115 BOOLValue];
          *(&v117 + 1) = sub_10002E06C();
          v118 = sub_10001FEDC(&qword_100043298, &type metadata accessor for LinkIsRichLinkAttribute, &protocol conformance descriptor for LinkIsRichLinkAttribute);
          sub_10001FE28(&v116);
          sub_10002E05C();
LABEL_42:

LABEL_43:
          sub_10000E76C(&v120, &qword_100043290, &qword_100034B90);
          sub_10001FDC8(&v116, &v120);
        }

LABEL_51:
        sub_10000E7CC(&v120, &v116, &qword_100043290, &qword_100034B90);
        if (*(&v117 + 1))
        {
          sub_10000E76C(&v116, &qword_100043290, &qword_100034B90);
          result = sub_10000E7CC(&v120, &v116, &qword_100043290, &qword_100034B90);
          if (!*(&v117 + 1))
          {
            goto LABEL_70;
          }

          v70 = v114;
          v71 = *v114;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v70 = v71;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v71 = sub_10002C858(0, v71[2] + 1, 1, v71);
            *v114 = v71;
          }

          v74 = v71[2];
          v73 = v71[3];
          if (v74 >= v73 >> 1)
          {
            v90 = sub_10002C858((v73 > 1), v74 + 1, 1, v71);
            *v114 = v90;
          }

          sub_10000E76C(&v120, &qword_100043290, &qword_100034B90);
          sub_1000121A8(v119);
          v75 = *v114;
          *(v75 + 16) = v74 + 1;
          result = sub_10001FDC8(&v116, v75 + 40 * v74 + 32);
          if (!v27)
          {
LABEL_9:
            if (v28 <= v29 + 1)
            {
              v31 = v29 + 1;
            }

            else
            {
              v31 = v28;
            }

            v32 = v31 - 1;
            while (1)
            {
              v30 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                break;
              }

              if (v30 >= v28)
              {
                v27 = 0;
                v122 = 0;
                v29 = v32;
                v120 = 0u;
                v121 = 0u;
                goto LABEL_18;
              }

              v27 = *(v24 + 8 * v30);
              ++v29;
              if (v27)
              {
                v29 = v30;
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_69;
          }
        }

        else
        {

          sub_10000E76C(&v120, &qword_100043290, &qword_100034B90);
          sub_1000121A8(v119);
          result = sub_10000E76C(&v116, &qword_100043290, &qword_100034B90);
          if (!v27)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_32:
      sub_100019DF8(v119, &v116);
      sub_10001FDE0(0, &qword_100042EF0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v52 = v115;
        sub_10002EA1C();
        *(&v117 + 1) = sub_10002E6BC();
        v118 = sub_10001FEDC(&qword_1000432B0, &type metadata accessor for BaseWritingDirectionAttribute, &protocol conformance descriptor for BaseWritingDirectionAttribute);
        sub_10001FE28(&v116);
        sub_10002E6AC();
        sub_10000E76C(&v120, &qword_100043290, &qword_100034B90);

LABEL_38:
        v120 = v116;
        v121 = v117;
        v122 = v118;
        goto LABEL_51;
      }

      goto LABEL_51;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  return result;
}

uint64_t FileTransferAttribute.init(fileTransferDict:string:range:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v114 = a3;
  v115 = a4;
  v129 = sub_10002E5FC();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v116 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C0EC(&qword_100043260, &qword_100034B60);
  v10 = __chkstk_darwin(v9 - 8);
  v113 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v111 = &v101 - v13;
  __chkstk_darwin(v12);
  v117 = &v101 - v14;
  v15 = sub_10002E61C();
  v118 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C0EC(&qword_100043268, &qword_100034B68);
  __chkstk_darwin(v18 - 8);
  v20 = &v101 - v19;
  v21 = sub_10002E66C();
  v122 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002E5BC();
  v119 = *(v24 - 8);
  v120 = v24;
  v25 = __chkstk_darwin(v24);
  v112 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v121 = &v101 - v27;

  v28 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_15;
  }

  v123 = a5;
  v124 = v5;
  v30 = sub_10001FAA0(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0 || (sub_100019DF8(*(a1 + 56) + 32 * v30, v128), sub_10000C0EC(&qword_100043270, &qword_100034B70), (swift_dynamicCast() & 1) == 0))
  {

    a5 = v123;
LABEL_15:
    sub_10002EA7C();
    sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
    v43 = sub_10002EB3C();
    sub_10002E04C();

    v44 = 1;
    v45 = v129;
    v46 = v125;
    return (*(v46 + 56))(a5, v44, 1, v45);
  }

  if (!*(v126 + 16))
  {

    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    return swift_willThrow();
  }

  v105 = "nary8{_NSRange=QQ}16^B32";
  v107 = v126;
  v33 = *(v126 + 32);
  v34 = sub_10002E87C();
  v36 = v35;
  if (!*(v33 + 16))
  {

    goto LABEL_19;
  }

  v37 = v34;

  v110 = sub_10001FAA0(v37, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_19:
    v104 = 0;
    v108 = 0;
    goto LABEL_20;
  }

  sub_100019DF8(*(v33 + 56) + 32 * v110, v128);
  v40 = swift_dynamicCast();
  v41 = v126;
  if (!v40)
  {
    v41 = 0;
  }

  v104 = v41;
  if (v40)
  {
    v42 = v127;
  }

  else
  {
    v42 = 0;
  }

  v108 = v42;
LABEL_20:
  v48 = sub_10002E87C();
  if (!*(v33 + 16))
  {

    goto LABEL_29;
  }

  v110 = sub_10001FAA0(v48, v49);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
LABEL_29:
    v102 = 0;
    v109 = 0;
    goto LABEL_30;
  }

  sub_100019DF8(*(v33 + 56) + 32 * v110, v128);
  v52 = swift_dynamicCast();
  v53 = v126;
  if (!v52)
  {
    v53 = 0;
  }

  v102 = v53;
  if (v52)
  {
    v54 = v127;
  }

  else
  {
    v54 = 0;
  }

  v109 = v54;
LABEL_30:
  v55 = sub_10002E87C();
  if (!*(v33 + 16))
  {

    goto LABEL_38;
  }

  v110 = sub_10001FAA0(v55, v56);
  v58 = v57;

  if ((v58 & 1) == 0)
  {
LABEL_38:
    v101 = 0;
    v61 = 0;
    goto LABEL_39;
  }

  sub_100019DF8(*(v33 + 56) + 32 * v110, v128);
  v59 = swift_dynamicCast();
  v60 = v126;
  if (!v59)
  {
    v60 = 0;
  }

  v101 = v60;
  if (v59)
  {
    v61 = v127;
  }

  else
  {
    v61 = 0;
  }

LABEL_39:
  v62 = sub_10002E87C();
  if (*(v33 + 16))
  {
    v106 = v61;
    v110 = sub_10001FAA0(v62, v63);
    v65 = v64;

    if (v65)
    {
      sub_100019DF8(*(v33 + 56) + 32 * v110, v128);
      v66 = swift_dynamicCast();
      v67 = v126;
      if (!v66)
      {
        v67 = 0;
      }

      v103 = v67;
      if (v66)
      {
        v68 = v127;
      }

      else
      {
        v68 = 0;
      }

      v110 = v68;
    }

    else
    {
      v103 = 0;
      v110 = 0;
    }

    v69 = v124;
  }

  else
  {

    v103 = 0;
    v110 = 0;
    v69 = v124;
  }

  AudioMessageAttachmentInfo.init(audioMessageDict:)(v33, v20);
  if (v69)
  {
  }

  v70 = v122;
  if ((*(v122 + 48))(v20, 1, v21) == 1)
  {
    sub_10000E76C(v20, &qword_100043268, &qword_100034B68);
    sub_10001D7D4(v107);

    sub_10002E60C();
    v81 = v121;
    (*(v118 + 32))(v121, v17, v15);
    v82 = v119;
    v83 = v120;
    (*(v119 + 104))(v81, enum case for FileTransferAttribute.AttachmentSubtype.unspecified(_:), v120);
  }

  else
  {

    (*(v70 + 32))(v23, v20, v21);
    v71 = v121;
    (*(v70 + 16))(v121, v23, v21);
    v82 = v119;
    v83 = v120;
    (*(v119 + 104))(v71, enum case for FileTransferAttribute.AttachmentSubtype.audioMessage(_:), v120);
    v72 = *(v70 + 8);
    v81 = v71;
    v72(v23, v21);
  }

  v73 = sub_10002E87C();
  if (!*(a1 + 16))
  {

LABEL_63:
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    return (*(v82 + 8))(v81, v83);
  }

  v75 = sub_10001FAA0(v73, v74);
  v77 = v76;

  if ((v77 & 1) == 0 || (sub_100019DF8(*(a1 + 56) + 32 * v75, v128), (swift_dynamicCast() & 1) == 0))
  {

    v81 = v121;
    goto LABEL_63;
  }

  if (!v108)
  {

    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    return (*(v82 + 8))(v121, v83);
  }

  v78 = v126;
  v79 = sub_10001ADD8(v104, v108);
  if ((v80 & 1) == 0)
  {
    if (v110)
    {
      v84 = v79;
      v85 = sub_10001B0D8(v103, v110);
      if (v86)
      {

        sub_10002E7DC();
        sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        goto LABEL_68;
      }

      v118 = v85;
      v79 = v84;
    }

    else
    {
      v118 = 0;
    }

    v124 = v79;
    v87 = sub_10002E87C();
    v89 = *(a1 + 16);
    v122 = v78;
    if (v89)
    {
      v90 = sub_10001FAA0(v87, v88);
      v92 = v91;

      if (v92)
      {
        sub_100019DF8(*(a1 + 56) + 32 * v90, v128);

        sub_10000C0EC(&qword_100043278, &qword_100034B78);
        if (swift_dynamicCast())
        {
          v93 = v111;
          FileTransferAttribute.ImageInfo.init(imageDict:)(v126, v111);
          v100 = v117;
          sub_10001FB18(v93, v117);
LABEL_78:
          sub_10000E7CC(v100, v113, &qword_100043260, &qword_100034B60);
          v95 = v119;
          v96 = v121;
          (*(v119 + 16))(v112, v121, v120);
          v97 = v116;
          sub_10002E5CC();
          sub_10000E76C(v117, &qword_100043260, &qword_100034B60);
          (*(v95 + 8))(v96, v120);
          v46 = v125;
          a5 = v123;
          v98 = v97;
          v99 = v129;
          (*(v125 + 32))(v123, v98, v129);
          v45 = v99;
          v44 = 0;
          return (*(v46 + 56))(a5, v44, 1, v45);
        }
      }

      else
      {
      }
    }

    else
    {
    }

    v94 = sub_10002E5EC();
    v100 = v117;
    (*(*(v94 - 8) + 56))(v117, 1, 1, v94);
    goto LABEL_78;
  }

  sub_10002E7DC();
  sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
LABEL_68:
  sub_10002E7CC();
  swift_willThrow();
  return (*(v119 + 8))(v121, v120);
}

uint64_t sub_10001D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_10001FEDC(&qword_100042E00, type metadata accessor for Key, &unk_100033DA4);
  v9 = sub_10002E83C();
  v8(v9, a3, a4, a5);
}

uint64_t AudioMessageAttachmentInfo.init(audioMessageDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10002E66C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002E87C();
  if (!*(a1 + 16))
  {

LABEL_8:

    v21 = 1;
    return (*(v6 + 56))(a2, v21, 1, v5);
  }

  v11 = sub_10001FAA0(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_100019DF8(*(a1 + 56) + 32 * v11, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = v23[2];
  v15 = v23[3];
  v16 = sub_10002E87C();
  if (*(a1 + 16))
  {
    v23[1] = v15;
    v25 = v14;
    v18 = sub_10001FAA0(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_100019DF8(*(a1 + 56) + 32 * v18, v24);

      swift_dynamicCast();
    }

    else
    {
    }
  }

  else
  {
  }

  result = sub_10002E65C();
  if (!v2)
  {
    (*(v6 + 32))(a2, v8, v5);
    v21 = 0;
    return (*(v6 + 56))(a2, v21, 1, v5);
  }

  return result;
}

void *sub_10001D7D4(uint64_t a1)
{
  v3 = sub_10002E5AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return &_swiftEmptyArrayStorage;
  }

  v11 = a1 + 32;
  v18[2] = v4 + 8;
  v19 = (v4 + 16);
  v18[1] = v4 + 32;
  v12 = &_swiftEmptyArrayStorage;
  v20 = v7;
  while (1)
  {

    FileTransferAttribute.AttachmentInfo.init(attributes:)(v13, v9);
    if (v1)
    {
      break;
    }

    (*v19)(v7, v9, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_10002C654(0, v12[2] + 1, 1, v12);
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_10002C654((v14 > 1), v15 + 1, 1, v12);
    }

    (*(v4 + 8))(v9, v3);
    v12[2] = v15 + 1;
    v16 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15;
    v7 = v20;
    (*(v4 + 32))(v16, v20, v3);
    v11 += 8;
    if (!--v10)
    {
      return v12;
    }
  }

  return v12;
}

uint64_t FileTransferAttribute.ImageInfo.init(imageDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10002E5EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_12;
  }

  v11 = sub_10001FAA0(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_100019DF8(*(a1 + 56) + 32 * v11, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v29;
  v14 = v30;
  v16 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_12;
  }

  v27 = v15;
  v28 = v14;
  v18 = sub_10001FAA0(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_100019DF8(*(a1 + 56) + 32 * v18, v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v26 = 1;
    return (*(v6 + 56))(a2, v26, 1, v5);
  }

  v22 = v29;
  v21 = v30;
  v31[0] = 0;
  v23 = sub_10001FC40(v27, v28, v31);

  if (!v23)
  {

    goto LABEL_19;
  }

  v31[0] = 0;
  v24 = sub_10001FC40(v22, v21, v31);

  if (!v24)
  {
LABEL_19:
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    return swift_willThrow();
  }

  result = sub_10002E5DC();
  if (v2)
  {
    return result;
  }

  (*(v6 + 32))(a2, v8, v5);
  v26 = 0;
  return (*(v6 + 56))(a2, v26, 1, v5);
}

unsigned __int8 *FileTransferAttribute.AttachmentInfo.init(attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C0EC(&qword_100043280, &qword_100034B80);
  __chkstk_darwin(v5 - 8);
  v7 = v67 - v6;
  v8 = sub_10002DEBC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v67 - v13;
  v80 = "FileTransferAttribute.ImageInfo";
  v15 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v72 = a2;
  v73 = v2;
  v74 = v9;
  v17 = sub_10001FAA0(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:

    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    return swift_willThrow();
  }

  sub_100019DF8(*(a1 + 56) + 32 * v17, v78);
  sub_10001FD38(v78, v79);
  sub_100019DF8(v79, v78);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_10002DEAC();

  v20 = v74;
  if ((*(v74 + 48))(v7, 1, v8) == 1)
  {

    sub_10000E76C(v7, &qword_100043280, &qword_100034B80);
LABEL_9:
    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    return sub_1000121A8(v79);
  }

  (*(v20 + 32))(v14, v7, v8);
  v22 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_41;
  }

  v24 = sub_10001FAA0(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0 || (sub_100019DF8(*(a1 + 56) + 32 * v24, v78), (swift_dynamicCast() & 1) == 0))
  {

    v20 = v74;
LABEL_41:
    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    (*(v20 + 8))(v14, v8);
    return sub_1000121A8(v79);
  }

  v27 = *(&v77[0] + 1);
  v28 = *&v77[0];
  v29 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_45;
  }

  v70 = v28;
  v71 = v27;
  v31 = sub_10001FAA0(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0 || (sub_100019DF8(*(a1 + 56) + 32 * v31, v78), (swift_dynamicCast() & 1) == 0))
  {

LABEL_45:

    v50 = v74;
LABEL_46:
    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    (*(v50 + 8))(v14, v8);
    return sub_1000121A8(v79);
  }

  v34 = *(&v77[0] + 1);
  v35 = *&v77[0];
  v36 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    v50 = v74;
LABEL_49:

    goto LABEL_46;
  }

  v67[1] = v35;
  v69 = v34;
  v38 = sub_10001FAA0(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {

    v50 = v74;
    goto LABEL_49;
  }

  sub_100019DF8(*(a1 + 56) + 32 * v38, v77);
  sub_10001FD38(v77, v78);
  sub_100019DF8(v78, v77);
  v41 = swift_dynamicCast();
  v42 = v74;
  if ((v41 & 1) == 0)
  {
LABEL_98:

    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    sub_1000121A8(v78);
    (*(v42 + 8))(v14, v8);
    return sub_1000121A8(v79);
  }

  result = v75;
  v43 = HIBYTE(v76) & 0xF;
  v44 = v75 & 0xFFFFFFFFFFFFLL;
  if ((v76 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v76) & 0xF;
  }

  else
  {
    v45 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {

    goto LABEL_98;
  }

  if ((v76 & 0x1000000000000000) != 0)
  {
    v68 = sub_10001EB1C(v75, v76, 10);
    v60 = v66;
LABEL_97:

    if (v60)
    {
      goto LABEL_98;
    }

    v61 = sub_10002E87C();
    if (*(a1 + 16))
    {
      v63 = sub_10001FAA0(v61, v62);
      v65 = v64;

      if (v65)
      {
        sub_100019DF8(*(a1 + 56) + 32 * v63, v77);

        if (swift_dynamicCast())
        {
          (*(v74 + 16))(v12, v14, v8);
          sub_10002E59C();
LABEL_106:
          sub_1000121A8(v78);
          (*(v74 + 8))(v14, v8);
          return sub_1000121A8(v79);
        }

LABEL_105:

        sub_10002E87C();
        sub_10002E7DC();
        sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_10002E7CC();
        swift_willThrow();
        goto LABEL_106;
      }
    }

    else
    {
    }

    goto LABEL_105;
  }

  if ((v76 & 0x2000000000000000) == 0)
  {
    if ((v75 & 0x1000000000000000) != 0)
    {
      result = ((v76 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_10002EBFC();
    }

    v46 = *result;
    if (v46 == 43)
    {
      if (v44 >= 1)
      {
        v43 = v44 - 1;
        if (v44 != 1)
        {
          if (result)
          {
            v68 = 0;
            v53 = result + 1;
            while (1)
            {
              v54 = *v53 - 48;
              if (v54 > 9)
              {
                goto LABEL_95;
              }

              if (!is_mul_ok(v68, 0xAuLL))
              {
                goto LABEL_95;
              }

              v49 = __CFADD__(10 * v68, v54);
              v68 = 10 * v68 + v54;
              if (v49)
              {
                goto LABEL_95;
              }

              ++v53;
              if (!--v43)
              {
                goto LABEL_96;
              }
            }
          }

          goto LABEL_86;
        }

        goto LABEL_95;
      }

      goto LABEL_112;
    }

    if (v46 != 45)
    {
      if (v44)
      {
        if (result)
        {
          v68 = 0;
          while (1)
          {
            v57 = *result - 48;
            if (v57 > 9)
            {
              goto LABEL_95;
            }

            if (!is_mul_ok(v68, 0xAuLL))
            {
              goto LABEL_95;
            }

            v49 = __CFADD__(10 * v68, v57);
            v68 = 10 * v68 + v57;
            if (v49)
            {
              goto LABEL_95;
            }

            ++result;
            if (!--v44)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }

LABEL_95:
      v68 = 0;
      LOBYTE(v43) = 1;
LABEL_96:
      LOBYTE(v75) = v43;
      v42 = v74;
      v60 = v43;
      goto LABEL_97;
    }

    if (v44 >= 1)
    {
      v43 = v44 - 1;
      if (v44 != 1)
      {
        if (result)
        {
          v68 = 0;
          v47 = result + 1;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              goto LABEL_95;
            }

            if (!is_mul_ok(v68, 0xAuLL))
            {
              goto LABEL_95;
            }

            v49 = 10 * v68 >= v48;
            v68 = 10 * v68 - v48;
            if (!v49)
            {
              goto LABEL_95;
            }

            ++v47;
            if (!--v43)
            {
              goto LABEL_96;
            }
          }
        }

LABEL_86:
        v68 = 0;
LABEL_87:
        LOBYTE(v43) = 0;
        goto LABEL_96;
      }

      goto LABEL_95;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  *&v77[0] = v75;
  *(&v77[0] + 1) = v76 & 0xFFFFFFFFFFFFFFLL;
  if (v75 != 43)
  {
    if (v75 != 45)
    {
      if (v43)
      {
        v68 = 0;
        v58 = v77;
        while (1)
        {
          v59 = *v58 - 48;
          if (v59 > 9)
          {
            break;
          }

          if (!is_mul_ok(v68, 0xAuLL))
          {
            break;
          }

          v49 = __CFADD__(10 * v68, v59);
          v68 = 10 * v68 + v59;
          if (v49)
          {
            break;
          }

          ++v58;
          if (!--v43)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_95;
    }

    if (v43)
    {
      if (--v43)
      {
        v68 = 0;
        v51 = v77 + 1;
        while (1)
        {
          v52 = *v51 - 48;
          if (v52 > 9)
          {
            break;
          }

          if (!is_mul_ok(v68, 0xAuLL))
          {
            break;
          }

          v49 = 10 * v68 >= v52;
          v68 = 10 * v68 - v52;
          if (!v49)
          {
            break;
          }

          ++v51;
          if (!--v43)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_95;
    }

    goto LABEL_111;
  }

  if (v43)
  {
    if (--v43)
    {
      v68 = 0;
      v55 = v77 + 1;
      while (1)
      {
        v56 = *v55 - 48;
        if (v56 > 9)
        {
          break;
        }

        if (!is_mul_ok(v68, 0xAuLL))
        {
          break;
        }

        v49 = __CFADD__(10 * v68, v56);
        v68 = 10 * v68 + v56;
        if (v49)
        {
          break;
        }

        ++v55;
        if (!--v43)
        {
          goto LABEL_96;
        }
      }
    }

    goto LABEL_95;
  }

LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_10001EA88()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001EB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unsigned __int8 *sub_10001EB1C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_10002E97C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10001F62C(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10002EBFC();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}