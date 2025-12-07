uint64_t CAStreamBasicDescription::CAStreamBasicDescription(uint64_t result, int a2, int a3, int a4, double a5)
{
  v5 = 0.0;
  if (a3 <= 2)
  {
    if (a4)
    {
      v6 = 9;
    }

    else
    {
      v6 = 41;
    }

    v7 = 4 * a2;
    if (!a4)
    {
      v7 = 4;
    }

    v8 = 32;
    if (a4)
    {
      v9 = 12;
    }

    else
    {
      v9 = 44;
    }

    v10 = 2 * a2;
    if (!a4)
    {
      v10 = 2;
    }

    if (a3 == 2)
    {
      v5 = a5;
      v11 = 1819304813;
    }

    else
    {
      v11 = 0;
    }

    if (a3 != 2)
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = a3 == 2;
    if (a3 == 2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (a3 == 2)
    {
      v14 = 16;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3 == 1;
    goto LABEL_47;
  }

  if (a3 != 3)
  {
    if (a4)
    {
      v6 = 9;
    }

    else
    {
      v6 = 41;
    }

    v7 = 8 * a2;
    if (!a4)
    {
      v7 = 8;
    }

    v8 = 64;
    if (a4)
    {
      v9 = 12;
    }

    else
    {
      v9 = 44;
    }

    v10 = 4 * a2;
    if (!a4)
    {
      v10 = 4;
    }

    if (a3 == 5)
    {
      v5 = a5;
      v11 = 1819304813;
    }

    else
    {
      v11 = 0;
    }

    if (a3 != 5)
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = a3 == 5;
    if (a3 == 5)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (a3 == 5)
    {
      v14 = 32;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3 == 4;
LABEL_47:
    if (v15)
    {
      v16 = 1819304813;
    }

    else
    {
      a5 = v5;
      v16 = v11;
    }

    if (v15)
    {
      v17 = 1;
    }

    else
    {
      v6 = v9;
      v7 = v10;
      v17 = v12;
    }

    if (!v15)
    {
      a2 = v13;
      v8 = v14;
    }

    goto LABEL_55;
  }

  if (a4)
  {
    v6 = 3084;
  }

  else
  {
    v6 = 3116;
  }

  v7 = 4 * a2;
  if (!a4)
  {
    v7 = 4;
  }

  v8 = 32;
  v17 = 1;
  v16 = 1819304813;
LABEL_55:
  *result = a5;
  *(result + 8) = v16;
  *(result + 12) = v6;
  *(result + 16) = v7;
  *(result + 20) = v17;
  *(result + 24) = v7;
  *(result + 28) = a2;
  *(result + 32) = v8;
  *(result + 36) = 0;
  return result;
}

uint64_t CAStreamBasicDescription::IdentifyCommonPCMFormat(_DWORD *a1, int *a2)
{
  if (a1[2] != 1819304813)
  {
    return 0;
  }

  if (a1[5] != 1)
  {
    return 0;
  }

  v2 = a1[6];
  if (v2 != a1[4])
  {
    return 0;
  }

  v3 = a1[8];
  if (v2 < v3 >> 3)
  {
    return 0;
  }

  v4 = a1[7];
  if (!v4)
  {
    return 0;
  }

  v5 = a1[3];
  if ((v5 & 0x20) == 0)
  {
    v9 = v2 == v2 / v4 * v4;
    v2 /= v4;
    if (!v9)
    {
      return 0;
    }
  }

  v6 = 0;
  if ((v5 & 2) == 0 && 8 * v2 == v3)
  {
    if (v5)
    {
      if ((v5 & 0x1F84) != 0)
      {
        return 0;
      }

      if (v2 == 4)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4 * (v2 == 8);
      }
    }

    else if ((v5 & 4) != 0)
    {
      v8 = (v5 >> 7) & 0x3F;
      if (v8 == 24 && v2 == 4)
      {
        v6 = 3;
      }

      else if (v8 || v2 != 4)
      {
        v9 = v2 == 2 && v8 == 0;
        if (v9)
        {
          v6 = 2;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return 1;
}

_BYTE *tryToSetPlayerSessionListener(AVAudioPlayer *a1)
{
  result = objc_msgSend_impl(a1);
  if ((result[72] & 1) == 0)
  {
    v3 = result;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    result = [v4 addObserver:a1 selector:sel_handleInterruption_ name:*MEMORY[0x1E698D550] object:*(v3 + 8)];
    v3[72] = 1;
  }

  return result;
}

uint64_t UTItoFileType(NSString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 1095321155;
  if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletypeaiff.isa)]== NSOrderedSame)
  {
    return 1095321158;
  }

  if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletypeaifc.isa)])
  {
    if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletypewave.isa)])
    {
      if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletypempeg.isa)])
      {
        if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletypeappl.isa)])
        {
          if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletypecore.isa)])
          {
            if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletypempeg_0.isa)])
            {
              if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletypeac3.isa)])
              {
                if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletypesuna.isa)])
                {
                  if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletype3gpp.isa)])
                  {
                    if ([(NSString *)a1 compare:FileTypeConstant(&cfstr_Avfiletype3gpp_0.isa)])
                    {
                      return 0;
                    }

                    else
                    {
                      return 862416946;
                    }
                  }

                  else
                  {
                    return 862417008;
                  }
                }

                else
                {
                  return 1315264596;
                }
              }

              else
              {
                return 1633889587;
              }
            }

            else
            {
              return 1297106739;
            }
          }

          else
          {
            return 1667327590;
          }
        }

        else
        {
          return 1832149350;
        }
      }

      else
      {
        return 1836069990;
      }
    }

    else
    {
      return 1463899717;
    }
  }

  return v2;
}

uint64_t AVAudioPlayerCpp::setupAudioFile(AVAudioPlayerCpp *this)
{
  ioDataSize = 40;
  Property = AudioFileGetProperty(*(this + 20), 0x64666D74u, &ioDataSize, this + 72);
  if (!Property)
  {
    v3 = *(this + 88);
    *(this + 2) = *(this + 72);
    *(this + 3) = v3;
    *(this + 8) = *(this + 13);
    isWritable = 0;
    if (!AudioFileGetPropertyInfo(*(this + 20), 0x6D676963u, &ioDataSize, &isWritable))
    {
      v4 = ioDataSize;
      if (ioDataSize)
      {
        *(this + 15) = ioDataSize;
        v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
        *(this + 16) = v5;
        if (v5)
        {
          AudioFileGetProperty(*(this + 20), 0x6D676963u, &ioDataSize, v5);
        }

        else
        {
          *(this + 15) = 0;
        }
      }
    }

    if (!AudioFileGetPropertyInfo(*(this + 20), 0x666C7374u, &ioDataSize, &isWritable) && ioDataSize >= 0x60)
    {
      v6 = ioDataSize / 0x30uLL;
      *(this + 34) = v6;
      v7 = malloc_type_calloc(v6, 0x30uLL, 0x100004064842E6AuLL);
      *(this + 18) = v7;
      if (!AudioFileGetProperty(*(this + 20), 0x666C7374u, &ioDataSize, v7))
      {
        LODWORD(v19[0]) = 0;
        ioPropertyDataSize = 4;
        if (!AudioFormatGetProperty(0x6670666Cu, ioDataSize, *(this + 18), &ioPropertyDataSize, v19))
        {
          v8 = LODWORD(v19[0]);
          *(this + 38) = LODWORD(v19[0]);
          v9 = *(this + 18) + 48 * v8;
          v10 = *(v9 + 32);
          v11 = *(v9 + 16);
          *(this + 2) = *v9;
          *(this + 3) = v11;
          *(this + 8) = v10;
          v12 = *(v9 + 40);
          if (v12 <= 0xFFFEFFFF && (v12 & 0xFFFEFFFF) != 0)
          {
            *(this + 64) = [[AVAudioChannelLayout alloc] initWithLayoutTag:v12];
          }
        }
      }
    }

    ioDataSize = 4;
    AudioFormatGetProperty(0x66646570u, 0x28u, this + 32, &ioDataSize, this + 112);
    ioDataSize = 16;
    if (!AudioFileGetProperty(*(this + 20), 0x706E666Fu, &ioDataSize, v19))
    {
      *(this + 264) = *v19;
      if (*(this + 69) >= 1)
      {
        ioDataSize = 8;
        *(this + 25) = 0;
        AudioFileGetProperty(*(this + 20), 0x70636E74u, &ioDataSize, this + 200);
      }
    }

    v13 = *(this + 33);
    if (v13)
    {
      v14 = *(this + 9);
      v15 = v13 / v14;
      *(this + 231) = 257;
      *(this + 58) = vcvtmd_s64_f64(v13 * (*(this + 4) / v14) + 0.5);
    }

    else
    {
      v19[0] = 0.0;
      ioDataSize = 8;
      AudioFileGetProperty(*(this + 20), 0x65647572u, &ioDataSize, v19);
      v15 = v19[0];
    }

    *(this + 31) = v15;
    if (!*(this + 64) && !AudioFileGetPropertyInfo(*(this + 20), 0x636D6170u, &ioDataSize, &isWritable) && ioDataSize)
    {
      v16 = malloc_type_calloc(1uLL, ioDataSize, 0x1000040E0EAB150uLL);
      if (!AudioFileGetProperty(*(this + 20), 0x636D6170u, &ioDataSize, v16))
      {
        v17 = [AVAudioChannelLayout alloc];
        *(this + 64) = [(AVAudioChannelLayout *)v17 initWithLayout:v16 size:ioDataSize];
      }

      free(v16);
    }

    ioDataSize = 8;
    if (AudioFileGetProperty(*(this + 20), 0x6C6F7564u, &ioDataSize, this + 16))
    {
      *(this + 2) = 0;
    }

    ioDataSize = 4;
    AudioFileGetProperty(*(this + 20), 0x66666D74u, &ioDataSize, this + 168);
  }

  return Property;
}

void AVAudioPlayerCpp::AVAudioPlayerCpp(AVAudioPlayerCpp *this)
{
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 106) = 0;
  *(this + 64) = 0;
  *(this + 130) = 0;
  *this = 0;
  *(this + 8) = 0u;
  *(this + 6) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 34) = 0;
  *(this + 120) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 26) = 0;
  *(this + 60) = 0;
  *(this + 14) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 364) = 0u;
  *(this + 444) = 0;
  *(this + 110) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 120) = 0;
  *(this + 126) = 0;
  *(this + 488) = 0u;
  *(this + 33) = 0u;
  AudioSessionCreatePrimarySession_Priv();
}

void populatePlayerSettings(AudioPlayerImpl *a1)
{
  v26[32] = *MEMORY[0x1E69E9840];
  v24 = 0;
  localPlayer = a1->_localPlayer;
  v3 = localPlayer[4];
  v4 = *(localPlayer + 10);
  v5 = *(localPlayer + 11);
  v7 = *(localPlayer + 15);
  v6 = *(localPlayer + 16);
  if (AudioPlayerImpl_GetProperty<unsigned int>(localPlayer, 1651663220, &v24 + 1))
  {
    v26[0] = @"AVFormatIDKey";
    v25[0] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v4];
    v26[1] = @"AVSampleRateKey";
    v25[1] = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v3];
    v26[2] = @"AVNumberOfChannelsKey";
    v25[2] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v7];
    if (v4 == 1819304813)
    {
      v26[3] = @"AVLinearPCMBitDepthKey";
      v25[3] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v6];
      v26[4] = @"AVLinearPCMIsFloatKey";
      v25[4] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v5 & 1];
      v26[5] = @"AVLinearPCMIsBigEndianKey";
      v25[5] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:(v5 >> 1) & 1];
      v26[6] = @"AVLinearPCMIsNonInterleaved";
      v25[6] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:(v5 >> 5) & 1];
      v8 = 7;
    }

    else
    {
      v8 = 3;
    }

    v9 = AudioPlayerImpl_GetProperty<unsigned int>(a1->_localPlayer, 1718909296, &v24);
    v10 = v24;
    if (v24)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v26[v8] = @"AVAudioFileTypeKey";
      v25[v8++] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v10];
    }

    v26[v8] = @"AVEncoderBitRateKey";
    v12 = objc_alloc(MEMORY[0x1E696AD98]);
    v25[v8] = [v12 initWithUnsignedInteger:HIDWORD(v24)];
    v13 = v8 + 1;
    v14 = a1->_localPlayer;
    v15 = [v14[64] layoutSize];
    v16 = [v14[64] layout];
    if (v16)
    {
      if (v15)
      {
        v17 = v16;
        v18 = malloc_type_malloc(v15, 0x1000040E0EAB150uLL);
        if (v18)
        {
          v19 = v18;
          memcpy(v18, v17, v15);
          v20 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v15];
          memcpy([v20 mutableBytes], v19, v15);
          free(v19);
          v26[v13] = @"AVChannelLayoutKey";
          v25[v13] = v20;
          v13 = v8 + 2;
        }
      }
    }

    actualSettings = a1->_actualSettings;
    if (actualSettings)
    {
    }

    a1->_actualSettings = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v25 forKeys:v26 count:v13];
    format = a1->_format;
    if (format)
    {
    }

    v23 = 0;
    a1->_format = [[AVAudioFormat alloc] initWithSettings:a1->_actualSettings];
    do
    {
    }

    while (v13 != v23);
  }
}

BOOL AudioPlayerImpl_GetProperty<unsigned int>(AVAudioPlayerCpp *a1, int a2, _DWORD *a3)
{
  v6 = 0;
  v7 = 0;
  if (AVAudioPlayerCpp::GetProperty(a1, a2, &v6, &v7))
  {
    v4 = 0;
  }

  else
  {
    v4 = v6 == 4;
  }

  result = v4;
  if (v4)
  {
    *a3 = *v7;
  }

  return result;
}

uint64_t AVAudioPlayerCpp::GetProperty(AVAudioPlayerCpp *this, int a2, unint64_t *a3, const void **a4)
{
  result = 561017456;
  if (a2 <= 1701735795)
  {
    if (a2 <= 1667788402)
    {
      switch(a2)
      {
        case 1634951780:
          *a3 = 40;
          v8 = this + 32;
          break;
        case 1651663220:
          *a3 = 4;
          v8 = this + 504;
          break;
        case 1667787887:
          *a3 = [*(this + 64) layoutSize];
          v8 = [*(this + 64) layout];
          break;
        default:
          return result;
      }

      goto LABEL_50;
    }

    if (a2 > 1685350764)
    {
      if (a2 != 1685350765)
      {
        if (a2 != 1685418593)
        {
          return result;
        }

        outPropertyData = 0;
        v14 = *(this + 20);
        if (v14 && !*(this + 33))
        {
          ioDataSize = 8;
          AudioFileGetProperty(v14, 0x65647572u, &ioDataSize, &outPropertyData);
          *(this + 31) = outPropertyData;
        }

        *a3 = 8;
        v8 = this + 248;
        goto LABEL_50;
      }

      v15 = mach_absolute_time();
      v8 = this + 360;
      *(this + 45) = v15 * 0.0000000416666667;
    }

    else
    {
      if (a2 == 1667788403)
      {
        *a3 = 4;
        v8 = this + 60;
        goto LABEL_50;
      }

      if (a2 != 1668573549)
      {
        return result;
      }

      v9 = 0.0;
      if ((*(this + 313) & 1) == 0)
      {
        pthread_mutex_lock(&avap_mutex);
        v10 = *(this + 4);
        AVAudioPlayerCpp::getQueueTime(this, 1);
        v11 = *(this + 41);
        if (*(this + 463) == 1)
        {
          v12 = *(this + 58);
          v13 = v12;
          if (*(this + 74))
          {
            v11 = fmod(*(this + 41), v13);
          }

          else
          {
            if (v11 <= v13)
            {
              v16 = *(this + 41);
            }

            else
            {
              v16 = v12;
            }

            v11 = fmax(v16, 0.0);
          }
        }

        pthread_mutex_unlock(&avap_mutex);
        v9 = v11 / v10;
      }

      v8 = this + 352;
      *(this + 44) = v9;
    }

    *a3 = 8;
    goto LABEL_50;
  }

  if (a2 > 1885433375)
  {
    if (a2 > 1918989412)
    {
      if (a2 == 1918989413)
      {
        *a3 = 8;
        v8 = this + 224;
      }

      else
      {
        if (a2 != 1987013749)
        {
          return result;
        }

        *a3 = 8;
        v8 = this + 208;
      }
    }

    else if (a2 == 1885433376)
    {
      *a3 = 8;
      v8 = this + 232;
    }

    else
    {
      if (a2 != 1886157119)
      {
        return result;
      }

      *a3 = 4;
      v8 = this + 308;
    }
  }

  else if (a2 > 1718909295)
  {
    if (a2 == 1718909296)
    {
      *a3 = 4;
      v8 = this + 168;
    }

    else
    {
      if (a2 != 1819242352)
      {
        return result;
      }

      *a3 = 4;
      v8 = this + 296;
    }
  }

  else if (a2 == 1701735796)
  {
    *a3 = 4;
    v8 = this + 376;
  }

  else
  {
    if (a2 != 1701737076)
    {
      return result;
    }

    *a3 = 4;
    v8 = this + 240;
  }

LABEL_50:
  result = 0;
  *a4 = v8;
  return result;
}

uint64_t getUInt32ForKey(NSDictionary *a1, NSString *a2, unsigned int *a3, int *a4)
{
  v7 = a1;
  v8 = a2;
  *a4 = 0;
  v9 = [(NSDictionary *)v7 objectForKey:v8];
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      *a3 = [v9 unsignedIntegerValue];
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *a4 = -50;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

{
  v7 = a1;
  v8 = a2;
  *a4 = 0;
  v9 = [(NSDictionary *)v7 objectForKey:v8];
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      *a3 = [v9 unsignedIntegerValue];
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *a4 = -66675;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t getFloat64ForKey(NSDictionary *a1, NSString *a2, double *a3, int *a4)
{
  v6 = a1;
  v7 = @"AVSampleRateKey";
  *a3 = 0;
  v8 = [(NSDictionary *)v6 objectForKey:@"AVSampleRateKey"];
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      [v8 doubleValue];
      *a2 = v9;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *a3 = -50;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

{
  v6 = a1;
  v7 = @"AVSampleRateKey";
  *a3 = 0;
  v8 = [(NSDictionary *)v6 objectForKey:@"AVSampleRateKey"];
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      [v8 doubleValue];
      *a2 = v9;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *a3 = -66675;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id AVVCRecordingEngine::sessionManager(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__721;
  v11 = __Block_byref_object_dispose__722;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN19AVVCRecordingEngine14sessionManagerEPU15__autoreleasingP7NSError_block_invoke;
  v6[3] = &unk_1E7EF64B0;
  v6[4] = &v7;
  v6[5] = a1;
  if (*(a1 + 352) == -1)
  {
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once((a1 + 352), v6);
  if (a2)
  {
LABEL_3:
    *a2 = v8[5];
  }

LABEL_4:
  v4 = *(a1 + 360);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void AVVCRecordingEngine::safeWork(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock((a1 + 528));
      if (*(a1 + 512) == 1)
      {
        v6 = *kAVVCScope;
        v7 = CALog::Scope::oslog(*kAVVCScope);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          v8 = 136315138;
          v9 = a3;
          _os_log_fault_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_FAULT, "Warning: Tyring to do safeWork on engine work queue while in tearDown. Caller: %s", &v8, 0xCu);
        }
      }

      v5[2](v5);
      std::recursive_mutex::unlock((a1 + 528));
    }

    else
    {
      v5[2](v5);
    }
  }
}

void sub_1BA5AF050(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 528));

  _Unwind_Resume(a1);
}

void makeSynchronous(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v1[2](v1, 0);
  }
}

void ControllerImpl::_lookupEngineForStreamID(ControllerImpl *this, uint64_t a2, std::__shared_weak_count *a3, unint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *this = 0;
  *(this + 1) = 0;
  if (a2)
  {
    AVVCRecordingEngineMap::findEngine(v8, a2, a4);
    *this = *v8;
    goto LABEL_12;
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 136315394;
    *&v8[4] = "ControllerImpl.mm";
    *&v8[12] = 1024;
    *&v8[14] = 4186;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine Map does not exist", v8, 0x12u);
  }

LABEL_12:
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void ElapsedTime::ElapsedTime(ElapsedTime *this, const char *a2, const char *a3, char a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = mach_absolute_time();
  *(this + 152) = a4;
  Current = CFAbsoluteTimeGetCurrent();
  CFTimeBase::TimeAsString((this + 24), Current, v7);
}

CFTimeBase *CFTimeBase::TimeAsString(CFTimeBase *this, CFAbsoluteTime a2, char *a3)
{
  {
    CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz = CFTimeZoneCopySystem();
  }

  GregorianDate = CFAbsoluteTimeGetGregorianDate(a2, CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz);
  v6 = snprintf(this, 0x40uLL, "%04d-%02d-%02d ", GregorianDate.year, (*&GregorianDate.year >> 8) >> 24, (*&GregorianDate.year >> 16) >> 24);
  v7 = llround(GregorianDate.second * 1000000.0);
  snprintf(this + v6, 64 - v6, "%02d:%02d:%02d.%06d", (*&GregorianDate.year >> 24) >> 24, *&GregorianDate.month >> 24, v7 / 1000000, v7 % 1000000);
  return this;
}

void ElapsedTime::~ElapsedTime(ElapsedTime *this)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  Current = CFAbsoluteTimeGetCurrent();
  CFTimeBase::TimeAsString((this + 88), Current, v4);
  v5 = *(this + 1);
  if (v5)
  {
    if (*(this + 152))
    {
      if (kAVVCScope)
      {
        v6 = *kAVVCScope;
        if (!*kAVVCScope)
        {
          return;
        }
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v10 = *(this + 2);
      v11 = __udivti3();
      if (v2 >= v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = -v11;
      }

      v13 = v12;
      v34 = 136316674;
      v14 = *this;
      v35 = "AVVC_Log.mm";
      v36 = 1024;
      v37 = 123;
      v38 = 2080;
      v39 = v14;
      v40 = 2080;
      v41 = v5;
      v42 = 2080;
      v43 = this + 24;
      v44 = 2080;
      *&v45 = this + 88;
      v46 = 2048;
      v47 = v13 / 1000000.0;
      v15 = "%25s:%-5d %s : %s : start: %s end: %s duration %.2f ms";
      v16 = v6;
      v17 = OS_LOG_TYPE_DEBUG;
      goto LABEL_28;
    }

    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!*kAVVCScope)
      {
        return;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v18 = *(this + 2);
    v19 = __udivti3();
    if (v2 >= v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }

    v21 = v20;
    v34 = 136316674;
    v22 = *this;
    v35 = "AVVC_Log.mm";
    v36 = 1024;
    v37 = 127;
    v38 = 2080;
    v39 = v22;
    v40 = 2080;
    v41 = v5;
    v42 = 2080;
    v43 = this + 24;
    v44 = 2080;
    *&v45 = this + 88;
    v46 = 2048;
    v47 = v21 / 1000000.0;
    v15 = "%25s:%-5d %s : %s : start: %s end: %s duration %.2f ms";
    v16 = v8;
    v17 = OS_LOG_TYPE_DEFAULT;
LABEL_28:
    v23 = 68;
LABEL_42:
    _os_log_impl(&dword_1BA5AC000, v16, v17, v15, &v34, v23);
    return;
  }

  if (*(this + 152))
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!*kAVVCScope)
      {
        return;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v24 = *(this + 2);
    v25 = __udivti3();
    if (v2 >= v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = -v25;
    }

    v27 = v26;
    v34 = 136316418;
    v28 = *this;
    v35 = "AVVC_Log.mm";
    v36 = 1024;
    v37 = 133;
    v38 = 2080;
    v39 = v28;
    v40 = 2080;
    v41 = this + 24;
    v42 = 2080;
    v43 = this + 88;
    v44 = 2048;
    v45 = v27 / 1000000.0;
    v15 = "%25s:%-5d %s : start: %s end: %s duration %.2f ms";
    v16 = v7;
    v17 = OS_LOG_TYPE_DEBUG;
LABEL_41:
    v23 = 58;
    goto LABEL_42;
  }

  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_36;
  }

  v9 = *kAVVCScope;
  if (*kAVVCScope)
  {
LABEL_36:
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v29 = *(this + 2);
    v30 = __udivti3();
    if (v2 >= v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = -v30;
    }

    v32 = v31;
    v34 = 136316418;
    v33 = *this;
    v35 = "AVVC_Log.mm";
    v36 = 1024;
    v37 = 137;
    v38 = 2080;
    v39 = v33;
    v40 = 2080;
    v41 = this + 24;
    v42 = 2080;
    v43 = this + 88;
    v44 = 2048;
    v45 = v32 / 1000000.0;
    v15 = "%25s:%-5d %s : start: %s end: %s duration %.2f ms";
    v16 = v9;
    v17 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_41;
  }
}

void sub_1BA5AF84C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AVVCRecordingEngineMap::findEngine(AVVCRecordingEngineMap *this, uint64_t a2, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v6 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::recursive_mutex::lock((a2 + 24));
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = (a2 + 8);
  do
  {
    v9 = v7[4];
    v10 = v9 >= a3;
    v11 = v9 < a3;
    if (v10)
    {
      v8 = v7;
    }

    v7 = v7[v11];
  }

  while (v7);
  if (v8 == (a2 + 8) || v8[4] > a3)
  {
LABEL_13:
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
LABEL_20:
        *this = 0;
        *(this + 1) = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "AVVCRecordingEngineMap.mm";
      v18 = 1024;
      v19 = 39;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No recording engine found for stream(%lu)", &v16, 0x1Cu);
    }

    goto LABEL_20;
  }

  v15 = v8[5];
  v14 = v8[6];
  *this = v15;
  *(this + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_21:
  if ((v6 & 1) == 0)
  {
    std::recursive_mutex::unlock((a2 + 24));
  }
}

void ControllerImpl::safeNotifyAlwaysAsync(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 && a2)
  {
    std::recursive_mutex::lock((a1 + 40));
    v5[2]();
    std::recursive_mutex::unlock((a1 + 40));
  }
}

void sub_1BA5AFAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::recursive_mutex::unlock((v10 + 40));

  _Unwind_Resume(a1);
}

void ControllerImpl::safeWork(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock((a1 + 104));
      if (*(a1 + 520) == 1)
      {
        v6 = *kAVVCScope;
        v7 = CALog::Scope::oslog(*kAVVCScope);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          v8 = 136315138;
          v9 = a3;
          _os_log_fault_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_FAULT, "Warning: Tyring to do safeWork on impl work queue while in tearDown. Caller: %s", &v8, 0xCu);
        }
      }

      v5[2](v5);
      std::recursive_mutex::unlock((a1 + 104));
    }

    else
    {
      v5[2](v5);
    }
  }
}

void sub_1BA5AFC0C(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 104));

  _Unwind_Resume(a1);
}

id AVVCRouteManager::getRecordDeviceUID(AVVCRouteManager *this)
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    v2 = *(this + 2);
  }

  else
  {
    std::mutex::lock((this + 56));
    v2 = *(this + 2);
    std::mutex::unlock((this + 56));
  }

  return v2;
}

uint64_t IsPluginActivationContext(uint64_t a1)
{
  result = 0;
  if (a1 > 1919771247)
  {
    if (a1 != 1919771248 && a1 != 1936750196)
    {
      v3 = 1919776372;
LABEL_8:
      if (a1 != v3)
      {
        return result;
      }
    }
  }

  else if (a1 != 1651795060 && a1 != 1668314723)
  {
    v3 = 1751414371;
    goto LABEL_8;
  }

  return 1;
}

void ProfileMetrics(NSString *a1)
{
  v3 = a1;
  v1 = objc_autoreleasePoolPush();
  v2 = +[AVVCMetricsManager sharedManager];
  [v2 logProfileMetrics:v3];

  objc_autoreleasePoolPop(v1);
}

void sub_1BA5B0054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void TraceMethod::~TraceMethod(TraceMethod *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *this;
    v5 = 136315650;
    v6 = "AVVC_Log.h";
    v7 = 1024;
    v8 = 90;
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d << %s", &v5, 0x1Cu);
  }
}

void TraceMethod::TraceMethod(TraceMethod *this, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = a2;
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *this;
    v6 = 136315650;
    v7 = "AVVC_Log.h";
    v8 = 1024;
    v9 = 89;
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d >> %s", &v6, 0x1Cu);
  }
}

_BYTE *SessionLock::SessionLock(_BYTE *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  VCLocker::VCLocker(a1, a2, 3u);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  return a1;
}

void sub_1BA5B02E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *VCLocker::VCLocker(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = *(a2 + 8 * a3 + 536);
  a1[8] = 0;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    if (kAVVCScope)
    {
      if ((*(kAVVCScope + 12) & 0x80) != 0)
      {
        v4 = *kAVVCScope;
        if (v4)
        {
          v5 = v4;
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
          {
            v6 = *(*a1 + 8);
            v8 = 136315650;
            v9 = "ControllerImpl.h";
            v10 = 1024;
            v11 = 751;
            v12 = 2080;
            v13 = v6;
            _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d about to lock %s", &v8, 0x1Cu);
          }
        }
      }
    }

    a1[8] = (*(**a1 + 16))();
  }

  return a1;
}

id Get4CCFromInt(int a1)
{
  v3[4] = 0;
  v3[2] = BYTE1(a1);
  v3[3] = a1;
  v3[1] = BYTE2(a1);
  v3[0] = HIBYTE(a1);
  v1 = [MEMORY[0x1E696AEC0] stringWithCString:v3 encoding:4];

  return v1;
}

void AVVCRecordingEngine::setActivationContextSettings(AVVCRecordingEngine *this, AVVCContextSettings *a2)
{
  v9 = a2;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((this + 376));
  }

  v4 = [AVVCContextSettings alloc];
  v5 = [(AVVCContextSettings *)v9 activationMode];
  v6 = [(AVVCContextSettings *)v9 activationDeviceUID];
  v7 = [(AVVCContextSettings *)v4 initWithMode:v5 deviceUID:v6];
  v8 = *(this + 35);
  *(this + 35) = v7;

  [*(this + 35) setAnnounceCallsEnabled:{-[AVVCContextSettings announceCallsEnabled](v9, "announceCallsEnabled")}];
  if ((v3 & 1) == 0)
  {
    std::mutex::unlock((this + 376));
  }
}

id ControllerImpl::sessionManagerForStreamID(void *a1, unint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v7 = +[AVVCSessionFactory sharedInstance];
    v6 = [v7 sessionManagerForContext:0 clientType:a1[23] error:a3];

    goto LABEL_15;
  }

  v5 = a2;
  ControllerImpl::_lookupEngineForStreamID(&v11, a1[72], a1[73], a2);
  if (v11)
  {
    v6 = (*(*v11 + 64))(v11, a3);
    goto LABEL_13;
  }

  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_9;
  }

  v8 = *kAVVCScope;
  if (v8)
  {
LABEL_9:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "ControllerImpl.mm";
      v15 = 1024;
      v16 = 226;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d audioSessionForStreamID(%d) couldn't find engine, returning nil", buf, 0x18u);
    }
  }

  v6 = 0;
LABEL_13:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_15:

  return v6;
}

uint64_t ControllerImpl::setAnnounceCallsEnabledForStream(ControllerImpl *this, uint64_t a2, char a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmb_block_invoke;
  v5[3] = &unk_1E7EF6120;
  v5[5] = this;
  v5[6] = a2;
  v6 = a3;
  v5[4] = &v7;
  makeSynchronous(v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmb_block_invoke_2;
  v12[3] = &unk_1E7EF5D60;
  v7 = *(a1 + 32);
  v13 = v3;
  v14 = v7;
  v8 = v3;
  v9 = v12;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v21, *(v4 + 8), *(v4 + 16));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke;
  v15[3] = &unk_1F3848940;
  v10 = v21;
  v17 = v21;
  v18 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v5;
  v11 = v9;
  v16 = v11;
  v20 = v6;
  ControllerImpl::safeWork(v10, v15, "setAnnounceCallsEnabledForStream");

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1BA5B0A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v26 = *(v24 - 56);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v26, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v26;
  if (!v26)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 56);
      *buf = 136315650;
      v29 = "ControllerImpl.mm";
      v30 = 1024;
      v31 = 6487;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d setAnnounceCallsEnabledForStream: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_554;
    v23[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v24 = v13;
    v25 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v23);

    v3 = v27;
    if (!v27)
    {
      return;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F3848320;
  v3 = v27;
  v17 = v26;
  v18 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 64);
  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "setAnnounceCallsEnabledForStream_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA5B0CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (*(v25 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v25 - 88));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = AVVCRecordingEngine::getActivationContextSettings(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    [(AVVCContextSettings *)v2 setAnnounceCallsEnabled:*(a1 + 80)];
    AVVCRecordingEngine::setActivationContextSettings(*(a1 + 40), v3);
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = v5 != 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_3;
  v9[3] = &unk_1E7EF6590;
  v7 = v5;
  v8 = *(a1 + 72);
  v10 = v7;
  v11 = v8;
  ControllerImpl::safeNotifyAlwaysAsync(v4, v6, v9);
}

id AVVCRecordingEngine::getActivationContextSettings(AVVCRecordingEngine *this)
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v2 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((this + 376));
  }

  v3 = [*(this + 35) copy];
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock((this + 376));
  }

  return v3;
}

void sub_1BA5B0EC4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock((v1 + 376));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmb_block_invoke_2;
  v12[3] = &unk_1E7EF5D60;
  v7 = *(a1 + 32);
  v13 = v3;
  v14 = v7;
  v8 = v3;
  v9 = v12;
  TraceMethod::TraceMethod(v23, "enableSmartRoutingConsideration");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v21, *(v5 + 8), *(v5 + 16));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmbU13block_pointerFvmbP7NSErrorE_block_invoke;
  v15[3] = &unk_1F3848940;
  v10 = v21;
  v17 = v21;
  v18 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v4;
  v11 = v9;
  v16 = v11;
  v20 = v6;
  ControllerImpl::safeWork(v10, v15, "enableSmartRoutingConsideration");

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  TraceMethod::~TraceMethod(v23);
}

void sub_1BA5B1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v25 = *(v23 - 64);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  TraceMethod::~TraceMethod((v23 - 56));

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmbU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v26, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v26;
  if (!v26)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 56);
      *buf = 136315650;
      v29 = "ControllerImpl.mm";
      v30 = 1024;
      v31 = 6310;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d enableSmartRoutingConsideration: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmbU13block_pointerFvmbP7NSErrorE_block_invoke_532;
    v23[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v24 = v13;
    v25 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v23);

    v3 = v27;
    if (!v27)
    {
      return;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmbU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F3848320;
  v3 = v27;
  v17 = v26;
  v18 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 64);
  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "enableSmartRoutingConsideration_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA5B1334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (*(v25 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v25 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t AVVCRecordingEngine::getSessionProperties(AVVCRecordingEngine *this)
{
  v56 = *MEMORY[0x1E69E9840];
  v43 = 4100;
  v44 = 1;
  v45 = 0u;
  v46 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v55, "getSessionProperties", 0, 0);
  TraceMethod::TraceMethod(v42, "getSessionProperties");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v40, *(this + 1), *(this + 2));
  v2 = (*(*v40 + 64))(v40, 0);
  ProfileMetrics(&cfstr_AvvcProfilePro_0.isa);
  v3 = [v2 outputLatency];
  v5 = v4;
  if (v5 == 0.0)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      v6 = v3;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "AVVCRecordingEngine.mm";
      v49 = 1024;
      v50 = 1300;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getSessionProperties: unexpected 0.0 value for output latency", buf, 0x12u);
    }
  }

LABEL_9:
  v8 = 0.0;
  if (caulk::product::get_device_class(v3) == 4 || ([v2 inputLatency], *&v9 = v9, v8 = *&v9, *&v9 == 0.0))
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "AVVCRecordingEngine.mm";
      v49 = 1024;
      v50 = 1305;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getSessionProperties: working around bad input latency value for now", buf, 0x12u);
    }
  }

LABEL_18:
  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    v13 = v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v48 = "AVVCRecordingEngine.mm";
    v49 = 1024;
    v50 = 1307;
    v51 = 2048;
    v52 = v8;
    v53 = 2048;
    v54 = v5;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getSessionProperties: input HW latency: %g output HW latency: %g", buf, 0x26u);
  }

LABEL_25:
  device_class = caulk::product::get_device_class(v12);
  if (device_class == 4)
  {
    v16 = 16000.0;
    if (caulk::product::get_device_class(device_class) != 4 || !MGGetBoolAnswer())
    {
      goto LABEL_50;
    }
  }

  if ((*(*v40 + 296))(v40) == 2)
  {
    [v2 speechDetectionDeviceSampleRate];
    v16 = v17;
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v48 = "AVVCRecordingEngine.mm";
      v49 = 1024;
      v50 = 1315;
      v51 = 2048;
      v52 = v16;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getSessionProperties: input HW sampling rate %lf", buf, 0x1Cu);
    }

LABEL_42:
    if (v16 == 0.0)
    {
      goto LABEL_43;
    }

    goto LABEL_50;
  }

  if ((*(*v40 + 296))(v40) != 1 && (*(*v40 + 296))(v40) != 3 && (*(*v40 + 296))(v40) != 4)
  {
LABEL_43:
    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
LABEL_61:
        v23 = 4294955511;
        goto LABEL_80;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v48 = "AVVCRecordingEngine.mm";
      v49 = 1024;
      v50 = 1329;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d getSessionProperties: Error getting input hardware sample rate", buf, 0x12u);
    }

    goto LABEL_61;
  }

  v16 = 16000.0;
  (*(*v40 + 40))(v40, 16000.0);
  if (kAVVCScope)
  {
    v19 = *kAVVCScope;
    if (!v19)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v48 = "AVVCRecordingEngine.mm";
    v49 = 1024;
    v50 = 1326;
    v51 = 2048;
    v52 = 16000.0;
    _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getSessionProperties: plugin mode - resetting to default HW sampling rate %lf", buf, 0x1Cu);
  }

LABEL_50:
  v23 = (*(*v40 + 72))(v40);
  if (v23)
  {
    goto LABEL_80;
  }

  (*(*v40 + 48))(v40);
  v24 = *v40;
  if (v25 != 0.0)
  {
    if (v16 == (*(v24 + 48))())
    {
      if (kAVVCScope)
      {
        v23 = *kAVVCScope;
        if (!v23)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v48 = "AVVCRecordingEngine.mm";
        v49 = 1024;
        v50 = 1374;
        _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d getSessionProperties: no change to HW rate or route -- nothing to do here", buf, 0x12u);
      }

      goto LABEL_78;
    }

    if (kAVVCScope)
    {
      v27 = *kAVVCScope;
      if (!v27)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    v30 = v27;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = (*(*v40 + 48))(v40);
      *buf = 136315906;
      v48 = "AVVCRecordingEngine.mm";
      v49 = 1024;
      v50 = 1355;
      v51 = 2048;
      v52 = v31;
      v53 = 2048;
      v54 = v16;
      _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getSessionProperties: Input sample rate changed from %f to %f", buf, 0x26u);
    }

LABEL_69:
    (*(*v40 + 40))(v40, v16);
    v32 = v40;
    if ((v40[27] & 0xFFFFFFFFFFFFFFFELL) == 4 && v40[41] != 2)
    {
      if (kAVVCScope)
      {
        v33 = *kAVVCScope;
        if (!v33)
        {
LABEL_87:
          AVVCRecordingEngine::setRecordErrorStatus(v32, 0xFFFFD1F5, "getSessionProperties");
          AVVCRecordingEngine::stopRecordWithRecordLock(v40[19]);
          v39 = v40;
          v40[3] = qword_1BA6CF360[v16 > 8000.0];
          v23 = AVVCRecordingEngine::reconfigureWithRecordLock(v39[20]);
          goto LABEL_79;
        }
      }

      else
      {
        v33 = MEMORY[0x1E69E9C10];
        v36 = MEMORY[0x1E69E9C10];
      }

      v37 = v33;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = (*(*v32 + 48))(v32);
        *buf = 136315906;
        v48 = "AVVCRecordingEngine.mm";
        v49 = 1024;
        v50 = 1364;
        v51 = 2048;
        v52 = v38;
        v53 = 2048;
        v54 = v16;
        _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getSessionProperties: sample rate changed from %f to %f - while record is active -- stopping and reconfiguring audio", buf, 0x26u);
      }

      v32 = v40;
      goto LABEL_87;
    }

LABEL_78:
    v23 = 0;
    goto LABEL_79;
  }

  (*(v24 + 40))(v16);
  v23 = 0;
  v26 = (*(*v40 + 48))(v40) > 8000.0;
  v40[3] = qword_1BA6CF360[v26];
LABEL_79:
  ProfileMetrics(&cfstr_AvvcProfilePro_1.isa);
LABEL_80:

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  TraceMethod::~TraceMethod(v42);
  ElapsedTime::~ElapsedTime(v55);
  TraceWrapper::~TraceWrapper(&v43);
  return v23;
}

void sub_1BA5B1DB0(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  TraceMethod::~TraceMethod(va);
  ElapsedTime::~ElapsedTime(va2);
  TraceWrapper::~TraceWrapper(va1);
  _Unwind_Resume(a1);
}

void CAX4CCString::CAX4CCString(CAX4CCString *this, unsigned int a2)
{
  v4 = bswap32(a2);
  *(this + 1) = v4;
  v5 = MEMORY[0x1E69E9830];
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(this + 2);
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v5 + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    *(this + 5) = 39;
    *this = 39;
    return;
  }

  if ((*(v5 + 4 * v7 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(this, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(this, 0x10uLL, "%d");
  }
}

void ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmPU15__autoreleasingP7NSError_block_invoke_2(void *a1, uint64_t a2, char a3, void *a4)
{
  v8 = a4;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  v7 = a1[4];
  if (v7)
  {
    dispatch_semaphore_signal(v7);
  }
}

void sub_1BA5B24BC(_Unwind_Exception *a1)
{
  if (v4)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 64))(*(a1 + 40), 0);
  v3 = [v2 isSWVolumeSupportedOnPickedRoute];
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = v5 != 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_3;
  v9[3] = &unk_1E7EF6080;
  v7 = v5;
  v8 = *(a1 + 72);
  v10 = v7;
  v11 = v8;
  v12 = v3;
  ControllerImpl::safeNotifyAlwaysAsync(v4, v6, v9);
}

void ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v24, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v24;
  if (!v24)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "ControllerImpl.mm";
      v28 = 1024;
      v29 = 6719;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d isDuckingSupportedOnPickedRouteForStream: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9 != 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_566;
    v21[3] = &unk_1E7EF6590;
    v12 = v9;
    v13 = *(a1 + 56);
    v22 = v12;
    v23 = v13;
    ControllerImpl::safeNotifyAlwaysAsync(v10, v11, v21);

    v3 = v25;
    if (!v25)
    {
      return;
    }

    goto LABEL_11;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v14[3] = &unk_1F38484A8;
  v3 = v25;
  v16 = v24;
  v17 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v18 = *(a1 + 40);
  v19 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v15 = v5;
  v20 = v6;
  (*(*v2 + 328))(v2, v14, "isDuckingSupportedOnPickedRouteForStream_block_invoke");

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA5B2884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &unk_1E7EF6198;
  v12 = *(a1 + 32);
  v11 = v3;
  v6 = v3;
  v7 = v10;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v18, *(v4 + 8), *(v4 + 16));
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke;
  v13[3] = &unk_1F3848BA0;
  v8 = v18;
  v15 = v18;
  v16 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v5;
  v9 = v7;
  v14 = v9;
  ControllerImpl::safeWork(v8, v13, "isDuckingSupportedOnPickedRouteForStream");

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_1BA5B2A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

uint64_t isHACProduct(void)
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = MGGetBoolAnswer();
  v1 = _os_feature_enabled_impl();
  v2 = v1;
  if (v0)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    device_class = caulk::product::get_device_class(v1);
    if (device_class == 3 || caulk::product::get_device_class(device_class) == 1)
    {
      v4 = 1;
    }

    else
    {
      v6 = MGCopyAnswer();
      v7 = v6;
      if (v6 && [v6 isEqualToString:@"t8142"])
      {
        v4 = _os_feature_enabled_impl();
      }

      else
      {
        v4 = 0;
      }
    }
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      return v4;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136316162;
    v12 = "AVVCUtils.mm";
    v13 = 1024;
    v14 = 1433;
    v15 = 1024;
    v16 = v0;
    v17 = 1024;
    v18 = v2;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d exclaveSupport(%d) corespeechdConclaveEnabled(%d) isHACProduct(%d)", &v11, 0x24u);
  }

  return v4;
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_287(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  *(v2 + 272) = *(a1 + 72);
  AVVCRecordingEngine::setActivationContextSettings(v2, *(a1 + 32));
  if (!kAVVCScope)
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
LABEL_5:
    v5 = v3;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:

      goto LABEL_20;
    }

    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v6)
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = *(v6 + 264);
        v10 = v7->__shared_owners_ + 1;
LABEL_11:
        v11 = [v8 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v6, v9, v10];
LABEL_13:
        v12 = v11;
        v13 = (*(**(a1 + 56) + 296))(*(a1 + 56));
        if (v13 > 4)
        {
          v14 = "ILLEGAL";
        }

        else
        {
          v14 = off_1E7EF6310[v13];
        }

        v15 = Get4CCFromInt(*(a1 + 72));
        v16 = *(*(a1 + 56) + 264);
        v17 = *(a1 + 40);
        *buf = 136316674;
        v27 = "ControllerImpl.mm";
        v28 = 1024;
        v29 = 3815;
        v30 = 2112;
        v31 = v12;
        v32 = 2080;
        v33 = v14;
        v34 = 2112;
        v35 = v15;
        v36 = 2112;
        v37 = v17;
        v38 = 2048;
        v39 = v16;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Found matching engine[%@] of type(%s) for activation mode(%@) and deviceUID(%@) with streamHandle(%lu)", buf, 0x44u);

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        goto LABEL_19;
      }
    }

    else if (v6)
    {
      v10 = 0;
      v8 = MEMORY[0x1E696AEC0];
      v9 = *(v6 + 264);
      goto LABEL_11;
    }

    v11 = @"(0x0) use_count:0";
    goto LABEL_13;
  }

  v3 = *kAVVCScope;
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_20:
  v18 = *(a1 + 80);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3321888768;
  v22[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_288;
  v22[3] = &unk_1F3848E90;
  v19 = *(a1 + 48);
  v21 = *(a1 + 56);
  v20 = *(a1 + 64);
  v23 = v19;
  v24 = v21;
  v25 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWork(v18, v22, "setContext_block_invoke");
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_1BA5B3024(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_288(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1BA5B30D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_273(void *a1, void **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    goto LABEL_10;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "ControllerImpl.mm";
    v21 = 1024;
    v22 = 3713;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d setContext: Engine lookup returned nil!", buf, 0x12u);
  }

LABEL_9:
  v3 = *a2;
  if (!*a2)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v7 = v3[33];
  v8 = (*(*v3 + 296))(v3);
LABEL_11:
  v9 = a1[6];
  v10 = a1[4];
  v11 = v10 != 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_274;
  v14[3] = &unk_1E7EF5C20;
  v12 = v10;
  v17 = v7;
  v18 = v8;
  v13 = a1[5];
  v15 = v12;
  v16 = v13;
  ControllerImpl::safeNotifyAlwaysAsync(v9, v11, v14);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_274(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  v3 = a1[4];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v3 + 16))(v3, v1, v2);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsPmP14AVVCStreamType_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a1[6];
  if (v8)
  {
    *v8 = a2;
  }

  v9 = a1[7];
  if (v9)
  {
    *v9 = a3;
  }

  v11 = v7;
  if (v7)
  {
    LODWORD(v7) = [v7 code];
  }

  *(*(a1[5] + 8) + 24) = v7;
  v10 = a1[4];
  if (v10)
  {
    dispatch_semaphore_signal(v10);
  }
}

void __destroy_helper_block_ea8_48c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t supportsCarPlayAuxStream(void)
{
  v10 = *MEMORY[0x1E69E9840];
  if (isAVSystemControllerAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAVSystemControllerAvailable(void)::onceToken, &__block_literal_global_230);
  }

  if ((isAVSystemControllerAvailable(void)::isAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        return 0;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "AVVCCarplayRuntimeAvailability.mm";
      v8 = 1024;
      v9 = 31;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d CarPlay API not available", &v6, 0x12u);
    }

    return 0;
  }

  v0 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v1 = [v0 attributeForKey:*MEMORY[0x1E69AEA48]];
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t __copy_helper_block_ea8_48c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void AVVCRecordingEngineMap::findEngine(AVVCRecordingEngineMap *this, NSString *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v42 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::recursive_mutex::lock((a2 + 3));
  }

  v43 = a2;
  if (v4 && [(NSString *)v4 length])
  {
    v5 = a2 + 1;
    v6 = *a2;
    if (*a2 != a2 + 1)
    {
      while (kAVVCScope)
      {
        v7 = *kAVVCScope;
        if (v7)
        {
          goto LABEL_12;
        }

LABEL_26:
        v22 = AVVCRouteManager::getRecordDeviceUID(*(v6[5] + 368));
        v23 = areDeviceUIDsSame(v4, v22);

        if (v23)
        {
          if (kAVVCScope)
          {
            v31 = *kAVVCScope;
            if (!v31)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v31 = MEMORY[0x1E69E9C10];
            v33 = MEMORY[0x1E69E9C10];
          }

          v34 = v31;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = (*(*v6[5] + 296))(v6[5]);
            if (v35 > 4)
            {
              v36 = "ILLEGAL";
            }

            else
            {
              v36 = off_1E7EF6310[v35];
            }

            v38 = Get4CCFromInt(*(v6[5] + 272));
            v39 = AVVCRouteManager::getRecordDeviceUID(*(v6[5] + 368));
            v40 = v6[4];
            *buf = 136316418;
            *&buf[4] = "AVVCRecordingEngineMap.mm";
            *&buf[12] = 1024;
            *&buf[14] = 64;
            v47 = 2080;
            v48 = v36;
            v49 = 2112;
            v50 = v38;
            v51 = 2112;
            v52 = v39;
            v53 = 2048;
            v54 = v40;
            _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Found matching engine of type(%s) for activation mode(%@) and deviceUID(%@) with streamHandle(%lu)", buf, 0x3Au);
          }

LABEL_62:
          *this = v6[5];
          v41 = v6[6];
          *(this + 1) = v41;
          if (v41)
          {
            atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
          }

          goto LABEL_64;
        }

        v24 = v6[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v6[2];
            v26 = *v25 == v6;
            v6 = v25;
          }

          while (!v26);
        }

        v6 = v25;
        if (v25 == v5)
        {
          goto LABEL_33;
        }
      }

      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
      v7 = v8;
LABEL_12:
      v10 = v7;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
LABEL_25:

        goto LABEL_26;
      }

      v12 = v6[4];
      v11 = v6[5];
      v13 = v6[6];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v11)
        {
          v14 = MEMORY[0x1E696AEC0];
          v15 = *(v11 + 264);
          v16 = v13->__shared_owners_ + 1;
LABEL_18:
          v17 = [v14 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v11, v15, v16];
LABEL_20:
          v18 = v17;
          v19 = AVVCRouteManager::getRecordDeviceUID(*(v6[5] + 368));
          v20 = (*(*v6[5] + 296))(v6[5]);
          v21 = "ILLEGAL";
          if (v20 <= 4)
          {
            v21 = off_1E7EF6310[v20];
          }

          *buf = 136316418;
          *&buf[4] = "AVVCRecordingEngineMap.mm";
          *&buf[12] = 1024;
          *&buf[14] = 62;
          v47 = 2048;
          v48 = v12;
          v49 = 2112;
          v50 = v18;
          v51 = 2112;
          v52 = v19;
          v53 = 2080;
          v54 = v21;
          _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Iterating through EngineMap. AVVCStreamHandle(%lu). AVVCRecordEngine[%@]. DeviceUID(%@). EngineType(%s)", buf, 0x3Au);

          a2 = v43;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          goto LABEL_25;
        }
      }

      else if (v11)
      {
        v16 = 0;
        v14 = MEMORY[0x1E696AEC0];
        v15 = *(v11 + 264);
        goto LABEL_18;
      }

      v17 = @"(0x0) use_count:0";
      goto LABEL_20;
    }

LABEL_33:
    if (kAVVCScope)
    {
      v27 = *kAVVCScope;
      if (!v27)
      {
LABEL_50:
        *this = 0;
        *(this + 1) = 0;
        goto LABEL_64;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVVCRecordingEngineMap.mm";
      *&buf[12] = 1024;
      *&buf[14] = 68;
      v47 = 2112;
      v48 = v4;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No matching plugin engine found for deviceUUID: %@", buf, 0x1Cu);
    }

    goto LABEL_50;
  }

  AVVCRecordingEngineMap::findEngine(this, a2, 1uLL);
  if (!*this)
  {
    AVVCRecordingEngineMap::findEngine(buf, a2, 2uLL);
    v28 = *(this + 1);
    v29 = *buf;
    *this = *buf;
    if (v28)
    {
      v45 = v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      v29 = v45;
    }

    if (!v29)
    {
      if (kAVVCScope)
      {
        v30 = *kAVVCScope;
        if (!v30)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E9C10];
        v37 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVVCRecordingEngineMap.mm";
        *&buf[12] = 1024;
        *&buf[14] = 55;
        _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No matching engine found for nil deviceUUID", buf, 0x12u);
      }
    }
  }

LABEL_64:
  if ((v42 & 1) == 0)
  {
    std::recursive_mutex::unlock((a2 + 3));
  }
}

void sub_1BA5B3BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17)
{
  if ((a16 & 1) == 0)
  {
    std::recursive_mutex::unlock((a17 + 24));
  }

  _Unwind_Resume(a1);
}

void AVVCRecordingEngineMap::listEngines(AVVCRecordingEngineMap *this)
{
  v39 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v2 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::recursive_mutex::lock((this + 24));
  }

  v25 = this;
  v26 = v2;
  if (*(this + 2))
  {
    v4 = this + 8;
    v3 = *this;
    if (v3 != v4)
    {
      while (1)
      {
        if (kAVVCScope)
        {
          v5 = *kAVVCScope;
          if (!v5)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v7 = MEMORY[0x1E69E9C10];
          v5 = v6;
        }

        v8 = v5;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          break;
        }

LABEL_24:

LABEL_25:
        v20 = *(v3 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v3 + 2);
            v22 = *v21 == v3;
            v3 = v21;
          }

          while (!v22);
        }

        v3 = v21;
        if (v21 == v4)
        {
          goto LABEL_39;
        }
      }

      v9 = *(v3 + 5);
      v10 = *(v3 + 6);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v9)
        {
          v11 = MEMORY[0x1E696AEC0];
          v12 = *(v9 + 264);
          v13 = v10->__shared_owners_ + 1;
LABEL_17:
          v14 = [v11 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v9, v12, v13];
LABEL_19:
          v15 = v14;
          v16 = (*(**(v3 + 5) + 296))(*(v3 + 5));
          v17 = "ILLEGAL";
          if (v16 <= 4)
          {
            v17 = off_1E7EF6310[v16];
          }

          v18 = *(v3 + 4);
          v19 = AVVCRouteManager::getRecordDeviceUID(*(*(v3 + 5) + 368));
          *buf = 136316418;
          v28 = "AVVCRecordingEngineMap.mm";
          v29 = 1024;
          v30 = 147;
          v31 = 2112;
          v32 = v15;
          v33 = 2080;
          v34 = v17;
          v35 = 2048;
          v36 = v18;
          v37 = 2112;
          v38 = v19;
          _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine[%@] type(%s) stream(%llu) deviceUID(%@)", buf, 0x3Au);

          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          goto LABEL_24;
        }
      }

      else if (v9)
      {
        v13 = 0;
        v11 = MEMORY[0x1E696AEC0];
        v12 = *(v9 + 264);
        goto LABEL_17;
      }

      v14 = @"(0x0) use_count:0";
      goto LABEL_19;
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v23 = *kAVVCScope;
      if (!v23)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "AVVCRecordingEngineMap.mm";
      v29 = 1024;
      v30 = 142;
      _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Empty Engine Map", buf, 0x12u);
    }
  }

LABEL_39:
  if ((v26 & 1) == 0)
  {
    std::recursive_mutex::unlock((v25 + 24));
  }
}

void sub_1BA5B4000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((a15 & 1) == 0)
  {
    std::recursive_mutex::unlock((a13 + 24));
  }

  _Unwind_Resume(a1);
}

void ControllerImpl::setContext(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v21, *(a1 + 8), *(a1 + 16));
  v10 = v21;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848358;
  v18 = a1;
  v19 = v21;
  v20 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v9;
  v17 = v11;
  v12 = v8;
  v15 = v12;
  v13 = v7;
  v16 = v13;
  ControllerImpl::safeWork(v10, v14, "setContext");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1BA5B419C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke(uint64_t a1)
{
  v159 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (*(v2 + 520) != 1)
  {
    v6 = *(a1 + 56);
    *v117 = [*(a1 + 32) activationMode];
    [*(*(a1 + 64) + 464) setParentVoiceController:*(a1 + 40)];
    v142 = 0;
    v143 = &v142;
    v144 = 0x2020000000;
    v7 = *(a1 + 32);
    v8 = [v7 activationMode];
    if ([v7 activationMode] == 1987012963 || objc_msgSend(v7, "activationMode") == 1752396914)
    {
      v9 = ControllerImpl::sessionManagerForStreamID(v6, 0, 0);
      v10 = [v9 isCurrentInputBuiltInMic];

      if ((v10 & 1) != 0 || ![v7 announceCallsEnabled])
      {
        v12 = 1;
        goto LABEL_24;
      }

      v11 = ControllerImpl::sessionManagerForStreamID(v6, 0, 0);
      v12 = [v11 predictIfMicrophoneShouldBeUsedForActivationMode:{objc_msgSend(v7, "activationMode")}];

      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      v19 = v13;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = Get4CCFromInt(v8);
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3477;
        v155 = 2112;
        *v156 = v20;
        _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: Announce Calls case for activation mode (%@)", buf, 0x1Cu);
      }

LABEL_24:
      if (ControllerImpl::shouldUseHACEngine(v6, v12))
      {
        if (kAVVCScope)
        {
          v21 = *kAVVCScope;
          if (!v21)
          {
            v22 = 4;
            goto LABEL_40;
          }
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
          v23 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3483;
          _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: HAC engine selected", buf, 0x12u);
        }

        v22 = 4;
      }

      else
      {
        if (kAVVCScope)
        {
          v21 = *kAVVCScope;
          if (!v21)
          {
            v22 = 2;
            goto LABEL_40;
          }
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
          v24 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3490;
          _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: AQ engine selected", buf, 0x12u);
        }

        v22 = 2;
      }

LABEL_40:
      if (kAVVCScope)
      {
        v25 = *kAVVCScope;
        if (!v25)
        {
LABEL_47:
          v29 = 0;
LABEL_48:
          v30 = 0;
LABEL_49:
          v31 = v29;
          goto LABEL_50;
        }
      }

      else
      {
        v25 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
      }

      v27 = v25;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = Get4CCFromInt(v8);
        *buf = 136315906;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3508;
        v155 = 2112;
        *v156 = v28;
        *&v156[8] = 2112;
        *&v156[10] = 0;
        _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: %@ requested. ignoring the device id and use built in device - %@. ", buf, 0x26u);
      }

      goto LABEL_47;
    }

    if ([v7 activationMode] == 1886352244)
    {
      if (kAVVCScope)
      {
        v14 = *kAVVCScope;
        if (!v14)
        {
LABEL_93:
          v22 = 0;
          v29 = 0;
          v30 = -50;
LABEL_50:

          v5 = v29;
          v145 = v30;
          v32 = v143;
          if (*(v143 + 6))
          {
            if (kAVVCScope)
            {
              v33 = *kAVVCScope;
              if (!v33)
              {
LABEL_61:
                v39 = *(a1 + 64);
                v40 = *(a1 + 48);
                v41 = v40 != 0;
                v139[0] = MEMORY[0x1E69E9820];
                v139[1] = 3221225472;
                v139[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_272;
                v139[3] = &unk_1E7EF5A90;
                v140 = v40;
                v141 = &v142;
                ControllerImpl::safeNotifyAlwaysAsync(v39, v41, v139);

LABEL_122:
                _Block_object_dispose(&v142, 8);
                goto LABEL_123;
              }
            }

            else
            {
              v33 = MEMORY[0x1E69E9C10];
              v35 = MEMORY[0x1E69E9C10];
            }

            v36 = v33;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = *(v32 + 6);
              v38 = Get4CCFromInt(v117[0]);
              *buf = 136315906;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3699;
              v155 = 1024;
              *v156 = v37;
              *&v156[4] = 2112;
              *&v156[6] = v38;
              _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: returned error - %d for activation mode(%@)", buf, 0x22u);
            }

            goto LABEL_61;
          }

          if (kAVVCScope)
          {
            v34 = *kAVVCScope;
            if (!v34)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v34 = MEMORY[0x1E69E9C10];
            v42 = MEMORY[0x1E69E9C10];
          }

          v43 = v34;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = off_1E7EF6310[v22];
            v45 = Get4CCFromInt(v117[0]);
            v46 = [*(a1 + 32) announceCallsEnabled];
            *buf = 136316162;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3705;
            v155 = 2080;
            *v156 = v44;
            *&v156[8] = 2112;
            *&v156[10] = v45;
            v157 = 1024;
            LODWORD(v158) = v46;
            _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext: Selected engine (%s) for activation mode (%@) with announceCallsEnabled(%d)", buf, 0x2Cu);
          }

LABEL_66:
          v47 = *(a1 + 64);
          v48 = *(v47 + 576);
          v49 = *(v47 + 584);
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AVVCRecordingEngineMap::listEngines(v48);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3321888768;
          aBlock[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_273;
          aBlock[3] = &unk_1F3848B68;
          v50 = *(a1 + 72);
          v137 = *(a1 + 64);
          v138 = v50;
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v135 = *(a1 + 48);
          v136 = &v142;
          v51 = _Block_copy(aBlock);
          v52 = isHACProduct();
          if (v22 == 4)
          {
            v53 = v52;
          }

          else
          {
            v53 = 0;
          }

          if (v53 == 1)
          {
            ControllerImpl::_lookupEngineForStreamID(buf, *(*(a1 + 64) + 576), *(*(a1 + 64) + 584), 0x8001uLL);
            v54 = *buf;
            goto LABEL_107;
          }

          v55 = v51;
          v56 = *(a1 + 64);
          v57 = v5;
          v58 = *(v56 + 576);
          v59 = *(v56 + 584);
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v58)
          {
            v51 = v55;
            AVVCRecordingEngineMap::findEngine(buf, v58, v57);
            v60 = *buf;
LABEL_104:
            v115 = v60;
            if (v59)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v59);
            }

            v54 = v115;
LABEL_107:
            v73 = v54;
            if (v54)
            {
              v118[0] = MEMORY[0x1E69E9820];
              v118[1] = 3321888768;
              v118[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_287;
              v118[3] = &unk_1F3847E58;
              v122 = v54;
              if (*(&v54 + 1))
              {
                atomic_fetch_add_explicit((*(&v54 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v123 = *v117;
              v119 = *(a1 + 32);
              v74 = v5;
              v76 = *(a1 + 64);
              v75 = *(a1 + 72);
              v120 = v74;
              v124 = v76;
              v125 = v75;
              if (v75)
              {
                atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v121 = v51;
              (*(*v73 + 328))(v73, v118, "setContext_block_invoke");

              if (v125)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v125);
              }

              v77 = *(&v122 + 1);
              if (!*(&v122 + 1))
              {
                goto LABEL_116;
              }

              goto LABEL_115;
            }

            v78 = *(a1 + 72);
            v113 = v78;
            v79 = v51;
            if (v78)
            {
              atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
              v80 = *(a1 + 64);
              v78 = *(a1 + 72);
            }

            else
            {
              v80 = *(a1 + 64);
            }

            v81 = *(a1 + 40);
            v126[0] = MEMORY[0x1E69E9820];
            v126[1] = 3321888768;
            v127 = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_278;
            v128 = &unk_1F384DD80;
            v132 = v80;
            v133 = v78;
            if (v78)
            {
              atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v130 = *(a1 + 48);
            v129 = *(a1 + 32);
            v131 = v79;
            v112 = v81;
            v114 = v5;
            v116 = v126;
            *v150 = 0;
            v151 = v150;
            v152 = 0x2020000000;
            v153 = 0;
            if (v22 == 3)
            {
              operator new();
            }

            if (v22 == 1)
            {
              operator new();
            }

            v51 = v79;
            v82 = isHACProduct() ^ 1;
            if (v22 != 4)
            {
              LOBYTE(v82) = 1;
            }

            if ((v82 & 1) == 0)
            {
              operator new();
            }

            if (v22 == 2)
            {
              *(v151 + 3) = 1;
              operator new();
            }

            if (kAVVCScope)
            {
              v92 = *kAVVCScope;
              v94 = v112;
              v93 = v113;
              if (!v92)
              {
                goto LABEL_215;
              }
            }

            else
            {
              v92 = MEMORY[0x1E69E9C10];
              v110 = MEMORY[0x1E69E9C10];
              v94 = v112;
              v93 = v113;
            }

            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3893;
              _os_log_impl(&dword_1BA5AC000, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d _createRecordingEngineWithParameters : Fatal Error! Invalid engine type!", buf, 0x12u);
            }

LABEL_215:
            *buf = 0;
            *&buf[8] = 0;
            v127(v116, buf);
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            _Block_object_dispose(v150, 8);

            if (v93)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v93);
            }

            v77 = v133;
            if (!v133)
            {
              goto LABEL_116;
            }

LABEL_115:
            std::__shared_weak_count::__release_shared[abi:ne200100](v77);
LABEL_116:
            if (*(&v73 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v73 + 1));
            }

            if (v138)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v138);
            }

            if (v49)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v49);
            }

            goto LABEL_122;
          }

          v51 = v55;
          if (kAVVCScope)
          {
            v61 = *kAVVCScope;
            if (!v61)
            {
LABEL_103:
              v60 = 0uLL;
              goto LABEL_104;
            }
          }

          else
          {
            v61 = MEMORY[0x1E69E9C10];
            v72 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 4199;
            _os_log_impl(&dword_1BA5AC000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine Map does not exist", buf, 0x12u);
          }

          goto LABEL_103;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v68 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3512;
        _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d setContext: ERROR! No recording engine associated with device for post/auto activation context", buf, 0x12u);
      }

      goto LABEL_93;
    }

    if ([v7 activationMode] == 1684108899)
    {
      v15 = [v7 activationDeviceUID];
      v16 = isNSStringEmptyOrNil(v15);

      if (!v16)
      {
        v29 = [v7 activationDeviceUID];
        v30 = 0;
        v22 = 3;
        goto LABEL_49;
      }

      if (kAVVCScope)
      {
        v17 = *kAVVCScope;
        if (!v17)
        {
LABEL_162:
          v29 = 0;
          v22 = 0;
          v30 = -50;
          goto LABEL_49;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v89 = MEMORY[0x1E69E9C10];
      }

      v90 = v17;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v91 = Get4CCFromInt(v8);
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3521;
        v155 = 2112;
        *v156 = v91;
        _os_log_impl(&dword_1BA5AC000, v90, OS_LOG_TYPE_ERROR, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: Darwin activation (%@) requested with nil deviceUUID", buf, 0x1Cu);
      }

      goto LABEL_162;
    }

    if (IsPluginActivationContext([v7 activationMode]))
    {
      v62 = [v7 activationDeviceUID];
      v63 = isNSStringEmptyOrNil(v62);

      if (!v63)
      {
        v29 = [v7 activationDeviceUID];
        v83 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v84 = v83;
        if (v83)
        {
          v85 = v83;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            v86 = Get4CCFromInt(v8);
            *buf = 136315906;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3541;
            v155 = 2112;
            *v156 = v86;
            *&v156[8] = 2112;
            *&v156[10] = v29;
            _os_log_impl(&dword_1BA5AC000, v85, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: Plugin activation (%@) requested with deviceUUID - %@. ", buf, 0x26u);
          }
        }

        v30 = 0;
        v22 = 1;
        goto LABEL_49;
      }

      v64 = CALog::LogObjIfEnabled(1, kAVVCScope);
      v65 = v64;
      if (v64)
      {
        v66 = v64;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = Get4CCFromInt(v8);
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3532;
          v155 = 2112;
          *v156 = v67;
          _os_log_impl(&dword_1BA5AC000, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: Plugin activation (%@) requested with nil deviceUUID", buf, 0x1Cu);
        }
      }

      goto LABEL_162;
    }

    *v150 = 1936289391;
    v149 = 0;
    v69 = [v7 activationMode];
    v70 = v69;
    v148 = 0;
    if (v69 <= 1969840751)
    {
      if (v69 != 1684628340)
      {
        v71 = 1752132965;
        goto LABEL_153;
      }
    }

    else if (v69 != 1969840752)
    {
      if (v69 == 1986357346)
      {
        v109 = supportsCarPlayAuxStream();
        v87 = kAVVCScope;
        if (v109)
        {
LABEL_155:
          if (v87)
          {
            v88 = *v87;
            if (!v88)
            {
LABEL_170:
              v96 = ControllerImpl::sessionManagerForStreamID(v6, 0, 0);
              [v96 getSiriInputSource:v150 withIdentifier:&v148 withIsMicrophoneCheck:&v149 forActivationMode:v70];

              if (kAVVCScope)
              {
                v97 = *kAVVCScope;
                if (!v97)
                {
                  goto LABEL_178;
                }
              }

              else
              {
                v97 = MEMORY[0x1E69E9C10];
                v98 = MEMORY[0x1E69E9C10];
              }

              v99 = v97;
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                v100 = Get4CCFromInt(v150[0]);
                *buf = 136316162;
                *&buf[4] = "ControllerImpl.mm";
                *&buf[12] = 1024;
                *&buf[14] = 724;
                v155 = 2112;
                *v156 = v100;
                *&v156[8] = 2112;
                *&v156[10] = v148;
                v157 = 1024;
                LODWORD(v158) = v149;
                _os_log_impl(&dword_1BA5AC000, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getDeviceUIDForHomeOrBluetoothButtonActivation: siriInputSource(%@), siriRemoteInputIdentifier(%@), isMicrophoneBuiltIn(%d)", buf, 0x2Cu);
              }

              goto LABEL_177;
            }
          }

          else
          {
            v88 = MEMORY[0x1E69E9C10];
            v95 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 719;
            _os_log_impl(&dword_1BA5AC000, v88, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getDeviceUIDForHomeOrBluetoothButtonActivation: Context is ambiguous", buf, 0x12u);
          }

          goto LABEL_170;
        }

        goto LABEL_208;
      }

      v71 = 2003329648;
LABEL_153:
      if (v69 == v71)
      {
        goto LABEL_154;
      }

      v87 = kAVVCScope;
LABEL_208:
      if (v87)
      {
        v99 = *v87;
        if (!v99)
        {
LABEL_178:
          v29 = v148;
          if (*v150 > 1936290659)
          {
            if (*v150 != 1936290660)
            {
              if (*v150 == 1936679529)
              {
                v22 = 1;
                goto LABEL_198;
              }

              goto LABEL_197;
            }
          }

          else
          {
            if (*v150 == 1936024681)
            {
              if (*(v6 + 23) == 1)
              {
                v22 = 3;
              }

              else
              {
                v22 = 2;
              }

              goto LABEL_198;
            }

            if (*v150 != 1936286822)
            {
LABEL_197:
              v22 = 2;
              goto LABEL_198;
            }
          }

          shouldUseHACEngine = ControllerImpl::shouldUseHACEngine(v6, v149);
          v102 = CALog::LogObjIfEnabled(3, kAVVCScope);
          v103 = v102;
          if (!shouldUseHACEngine)
          {
            if (v102 && os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3636;
              _os_log_impl(&dword_1BA5AC000, v103, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: AQ engine selected", buf, 0x12u);
            }

            goto LABEL_197;
          }

          if (v102 && os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3630;
            _os_log_impl(&dword_1BA5AC000, v103, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: HAC engine selected", buf, 0x12u);
          }

          v22 = 4;
LABEL_198:
          if (kAVVCScope)
          {
            v104 = *kAVVCScope;
            if (!v104)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v104 = MEMORY[0x1E69E9C10];
            v105 = MEMORY[0x1E69E9C10];
          }

          v106 = v104;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v107 = Get4CCFromInt(v8);
            v108 = off_1E7EF62F0[v22 - 1];
            *buf = 136316162;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3654;
            v155 = 2112;
            *v156 = v107;
            *&v156[8] = 2112;
            *&v156[10] = v29;
            v157 = 2080;
            v158 = v108;
            _os_log_impl(&dword_1BA5AC000, v106, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext:getEngineTypeAndDeviceIDToUse: ActivationMode (%@) requested with deviceUUID (%@). Selected EngineType (%s)", buf, 0x30u);
          }

          goto LABEL_48;
        }
      }

      else
      {
        v99 = MEMORY[0x1E69E9C10];
        v111 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 727;
        _os_log_impl(&dword_1BA5AC000, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getDeviceUIDForHomeOrBluetoothButtonActivation: Context is not ambiguous", buf, 0x12u);
      }

LABEL_177:

      goto LABEL_178;
    }

LABEL_154:
    v87 = kAVVCScope;
    goto LABEL_155;
  }

  v3 = *(a1 + 48);
  v4 = v3 != 0;
  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_2;
  v146[3] = &unk_1E7EF6548;
  v147 = v3;
  ControllerImpl::safeNotifyAlwaysAsync(v2, v4, v146);
  v5 = v147;
LABEL_123:
}

uint64_t ControllerImpl::setContext(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsPmP14AVVCStreamType_block_invoke;
  v15[3] = &unk_1E7EF5C70;
  v19 = a1;
  v11 = v9;
  v16 = v11;
  v12 = v10;
  v20 = a4;
  v21 = a5;
  v17 = v12;
  v18 = &v22;
  makeSynchronous(v15);
  v13 = *(v23 + 6);

  _Block_object_dispose(&v22, 8);
  return v13;
}

void sub_1BA5B5E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsPmP14AVVCStreamType_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsPmP14AVVCStreamType_block_invoke_2;
  v9[3] = &unk_1E7EF5C48;
  v12 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  ControllerImpl::setContext(v7, v4, v5, v9);
}

void VCLocker::~VCLocker(VCLocker *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    if ((*(kAVVCScope + 12) & 0x80) != 0)
    {
      v2 = *kAVVCScope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          v4 = *(*this + 8);
          v5 = 136315650;
          v6 = "ControllerImpl.h";
          v7 = 1024;
          v8 = 756;
          v9 = 2080;
          v10 = v4;
          _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d about to unlock %s", &v5, 0x1Cu);
        }
      }
    }
  }

  if (*(this + 8) == 1)
  {
    (*(**this + 24))();
  }
}

void sub_1BA5B6154(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 40) + 8) + 24) = [v6 code];
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }
}

void ControllerImpl::enableMiniDucking(ControllerImpl *this, uint64_t a2)
{
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v10, *(this + 1), *(this + 2));
  ControllerImpl::_lookupEngineForStreamID(&v8, *(this + 72), *(this + 73), 1uLL);
  if (v8)
  {
    v4 = AVVCRecordingEngine::getActivationContextSettings(v8);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 announceCallsEnabled];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = ControllerImpl::sessionManagerForStreamID(this, 0, 0);
  [v7 shouldEnableMiniDucking:a2 withOptions:v6];

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1BA5B64C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void extractFirstInputPortTypeFromRouteDescription(void *a1, void **a2)
{
  v9 = a1;
  v3 = [v9 inputs];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 portType];
    v7 = [v6 copy];
    v8 = *a2;
    *a2 = v7;
  }
}

BOOL contextIsRemora(AVVCContextSettings *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(AVVCContextSettings *)v1 activationMode]== 1919776372 || [(AVVCContextSettings *)v2 activationMode]== 1919771248;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1BA5B6820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

NSObject *AVVCAudioQueueRecordingEngine::enableMetering(AVVCAudioQueueRecordingEngine *this, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v23, "enableMetering");
  v4 = *(this + 75);
  if (v4)
  {
    inData = a2;
    v5 = AudioQueueSetProperty(v4, 0x61716D65u, &inData, 4u);
    v6 = v5;
    if (!v5)
    {
LABEL_25:
      if (!a2)
      {
        goto LABEL_42;
      }

      inData = 1;
      v12 = AudioQueueSetProperty(*(this + 75), 0x71696E6Du, &inData, 4u);
      v6 = v12;
      if (!v12)
      {
        goto LABEL_42;
      }

      if ((v12 + 199999) < 0x61A7F)
      {
        if (kAVVCScope)
        {
          v13 = *kAVVCScope;
          if (!v13)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v25 = "AVVCAudioQueueRecordingEngine.mm";
          v26 = 1024;
          v27 = 1242;
          v28 = 1024;
          v29 = v6;
          v15 = "%25s:%-5d ERROR: enableMetering: AudioQueueSetProperty(kAudioQueueProperty_InstantaneousMetering) err %d";
LABEL_40:
          _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x18u);
          goto LABEL_41;
        }

        goto LABEL_41;
      }

      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v25 = "AVVCAudioQueueRecordingEngine.mm";
        v26 = 1024;
        v27 = 1242;
        v28 = 1024;
        v29 = v6;
        v15 = "%25s:%-5d ERROR: enableMetering: AudioQueueSetProperty(kAudioQueueProperty_InstantaneousMetering) err %{audio:4CC}d";
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    if ((v5 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v7 = *kAVVCScope;
        if (!v7)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315650;
      v25 = "AVVCAudioQueueRecordingEngine.mm";
      v26 = 1024;
      v27 = 1238;
      v28 = 1024;
      v29 = v6;
      v10 = "%25s:%-5d ERROR: enableMetering: AudioQueueSetProperty(kAudioQueueProperty_EnableLevelMetering) err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v7 = *kAVVCScope;
        if (!v7)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v9 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315650;
      v25 = "AVVCAudioQueueRecordingEngine.mm";
      v26 = 1024;
      v27 = 1238;
      v28 = 1024;
      v29 = v6;
      v10 = "%25s:%-5d ERROR: enableMetering: AudioQueueSetProperty(kAudioQueueProperty_EnableLevelMetering) err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, v10, buf, 0x18u);
LABEL_24:

    goto LABEL_25;
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "AVVCAudioQueueRecordingEngine.mm";
    v26 = 1024;
    v27 = 1245;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCAudioQueueRecordingEngine: Record queue does not exist to enable metering. Caching, and will enable during prepare", buf, 0x12u);
  }

  v6 = 0;
LABEL_42:
  if (v6)
  {
    v17 = 0;
  }

  else
  {
    v17 = a2;
  }

  *(this + 288) = v17;
  if (kAVVCScope)
  {
    v18 = *kAVVCScope;
    if (!v18)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(this + 288);
    *buf = 136315650;
    v25 = "AVVCAudioQueueRecordingEngine.mm";
    v26 = 1024;
    v27 = 1248;
    v28 = 1024;
    v29 = v20;
    _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCAudioQueueRecordingEngine: Enable Metering?: %d", buf, 0x18u);
  }

LABEL_52:
  TraceMethod::~TraceMethod(v23);
  return v6;
}

void sub_1BA5B6C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

uint64_t AVVCRecordingEngine::updateRecordAndPlaybackRoutes(AVVCRecordingEngine *this)
{
  v52 = *MEMORY[0x1E69E9840];
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v44, *(this + 1), *(this + 2));
  location = 0;
  if (isDarwinOSProduct(void)::onceToken != -1)
  {
    dispatch_once(&isDarwinOSProduct(void)::onceToken, &__block_literal_global_164);
  }

  if (isDarwinOSProduct(void)::isDarwinOS != 1)
  {
    v2 = (*(*v44 + 64))(v44, 0);
    v5 = [v2 currentRoute];
    if (v5)
    {
      v6 = v44[46];
      if ((*(*v44 + 296))(v44) != 2)
      {
        v4 = (*(*v44 + 304))(v44, &location);
        goto LABEL_52;
      }

      v7 = v5;
      if (IsSerializationEnabled(void)::onceToken != -1)
      {
        dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
      }

      v8 = IsSerializationEnabled(void)::enable;
      if ((IsSerializationEnabled(void)::enable & 1) == 0)
      {
        std::mutex::lock((v6 + 56));
      }

      v9 = [v7 inputs];
      if (![v9 count])
      {
        if (kAVVCScope)
        {
          v10 = *kAVVCScope;
          if (!v10)
          {
            v4 = 4294955501;
LABEL_48:
            v11 = @"No Record Route";
            v18 = @"No Record Route";
            goto LABEL_49;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v16 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v47 = "AVVCRouteManager.mm";
          v48 = 1024;
          v49 = 159;
          _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d No input routes. AQ engine couldnt find routes since VSPD is not present!", buf, 0x12u);
        }

        v4 = 4294955501;
LABEL_47:

        goto LABEL_48;
      }

      v10 = [v9 objectAtIndex:0];
      v11 = [v10 portType];
      if (v11)
      {

        v4 = 0;
LABEL_49:
        v19 = [(__CFString *)v11 copy];
        v20 = *(v6 + 32);
        *(v6 + 32) = v19;

        if ((v8 & 1) == 0)
        {
          std::mutex::unlock((v6 + 56));
        }

        (*(*v44 + 304))(v44, &location);
LABEL_52:
        if (kAVVCScope)
        {
          v21 = *kAVVCScope;
          if (!v21)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
          v22 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v47 = "AVVCRecordingEngine.mm";
          v48 = 1024;
          v49 = 1249;
          v50 = 2112;
          v51 = location;
          _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New Record Route  : %@", buf, 0x1Cu);
        }

LABEL_59:
        if (v4 != -11795 && v4 != 0)
        {
          v24 = *(this + 21);
          if (v24)
          {
            (*(v24 + 16))(v24, *(this + 33));
          }
        }

        v25 = v5;
        if (IsSerializationEnabled(void)::onceToken != -1)
        {
          dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
        }

        v26 = IsSerializationEnabled(void)::enable;
        if ((IsSerializationEnabled(void)::enable & 1) == 0)
        {
          std::mutex::lock((v6 + 56));
        }

        v27 = [v25 outputs];
        if ([v27 count])
        {
          v28 = [v27 objectAtIndex:0];
          v29 = [v28 portType];
          if (!v29)
          {
            if (kAVVCScope)
            {
              v30 = *kAVVCScope;
              if (!v30)
              {
LABEL_85:
                v29 = @"Unknown Playback Route";
                goto LABEL_86;
              }
            }

            else
            {
              v30 = MEMORY[0x1E69E9C10];
              v32 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v47 = "AVVCRouteManager.mm";
              v48 = 1024;
              v49 = 182;
              _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Nil output port!", buf, 0x12u);
            }

            goto LABEL_85;
          }
        }

        else
        {
          if (kAVVCScope)
          {
            v28 = *kAVVCScope;
            if (!v28)
            {
              v29 = @"No Playback Route";
              goto LABEL_87;
            }
          }

          else
          {
            v28 = MEMORY[0x1E69E9C10];
            v31 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v47 = "AVVCRouteManager.mm";
            v48 = 1024;
            v49 = 187;
            _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d No output routes returned!", buf, 0x12u);
          }

          v29 = @"No Playback Route";
        }

LABEL_86:

LABEL_87:
        v33 = [(__CFString *)v29 copy];
        v34 = *(v6 + 40);
        *(v6 + 40) = v33;

        if ((v26 & 1) == 0)
        {
          std::mutex::unlock((v6 + 56));
        }

        if (IsSerializationEnabled(void)::onceToken != -1)
        {
          dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
        }

        v35 = IsSerializationEnabled(void)::enable;
        if ((IsSerializationEnabled(void)::enable & 1) == 0)
        {
          std::mutex::lock((v6 + 56));
        }

        v3 = [*(v6 + 40) copy];
        if ((v35 & 1) == 0)
        {
          std::mutex::unlock((v6 + 56));
        }

        if (kAVVCScope)
        {
          v36 = *kAVVCScope;
          if (!v36)
          {
LABEL_102:
            v38 = [(__CFString *)v3 copy];
            v39 = (*(*v44 + 64))(v44, 0);
            [v39 setPlaybackRoute:v38];

            v40 = objc_autoreleasePoolPush();
            v41 = +[AVVCMetricsManager sharedManager];
            [v41 logRecordRoute:location andPlaybackRoute:v3 reporterID:{-[NSObject reporterID](v2, "reporterID")}];

            objc_autoreleasePoolPop(v40);
LABEL_103:

            goto LABEL_104;
          }
        }

        else
        {
          v36 = MEMORY[0x1E69E9C10];
          v37 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v47 = "AVVCRecordingEngine.mm";
          v48 = 1024;
          v49 = 1262;
          v50 = 2112;
          v51 = v3;
          _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New Playback Route: %@", buf, 0x1Cu);
        }

        goto LABEL_102;
      }

      if (kAVVCScope)
      {
        v15 = *kAVVCScope;
        if (!v15)
        {
LABEL_46:
          v4 = 4294955512;
          goto LABEL_47;
        }
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "AVVCRouteManager.mm";
        v48 = 1024;
        v49 = 155;
        _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Nil port type!", buf, 0x12u);
      }

      goto LABEL_46;
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_28:
        if ((*(*v44 + 296))(v44) == 4)
        {
          (*(*v44 + 304))(v44, &location);
        }

        else
        {
          objc_storeStrong(&location, @"No Record Route");
        }

        v4 = 4294955512;
        v3 = @"Unknown Playback Route";
        goto LABEL_103;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v47 = "AVVCRecordingEngine.mm";
      v48 = 1024;
      v49 = 1222;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d updateRecordAndPlaybackRoutes: Nil currentRoute!", buf, 0x12u);
    }

    goto LABEL_28;
  }

  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      v3 = 0;
      v4 = 0;
      goto LABEL_105;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v47 = "AVVCRecordingEngine.mm";
    v48 = 1024;
    v49 = 1214;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d updateRecordAndPlaybackRoutes: built in route !", buf, 0x12u);
  }

  v3 = 0;
  v4 = 0;
LABEL_104:

LABEL_105:
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  return v4;
}

void sub_1BA5B765C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_372(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  [*(a1 + 32) recordBufferDuration];
  v5 = AVVCRecordingEngine::setRecordBufferDuration(v2, v4);
  if (v5)
  {
    v6 = v5;
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_17:
        v15 = *(a1 + 72);
        v16 = *(a1 + 40);
        v17 = v16 != 0;
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_373;
        v61[3] = &unk_1E7EF5D38;
        v63 = v16;
        v62 = *(a1 + 32);
        v64 = v6;
        ControllerImpl::safeNotifyAlwaysAsync(v15, v17, v61);

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4669;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d prepareRecordForStream: Failed to setRecordBufferDuration", buf, 0x12u);
    }

    goto LABEL_17;
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RecordLock::RecordLock(v51, v8, v9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(a1 + 56);
  v11 = [*(a1 + 32) avAudioSettings];
  v12 = (*(*v10 + 88))(v10, v11);

  if (v12)
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_34:
        v24 = *(a1 + 72);
        v25 = *(a1 + 40);
        v26 = v25 != 0;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_374;
        v57[3] = &unk_1E7EF5D38;
        v59 = v25;
        v58 = *(a1 + 32);
        v60 = v12;
        ControllerImpl::safeNotifyAlwaysAsync(v24, v26, v57);

        VCLocker::~VCLocker(v51);
        return;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4681;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d prepareRecordForStream: Error in prepareRecording: %d", buf, 0x18u);
    }

    goto LABEL_34;
  }

  VCLocker::~VCLocker(v51);
  v18 = [*(a1 + 32) deviceBufferFrameSize];
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v3 + 184) == 1;
  }

  if (v19)
  {
    v20 = 512;
  }

  else
  {
    v20 = v18;
  }

  if (v20)
  {
    (*(**(a1 + 56) + 320))(*(a1 + 56));
  }

  v21 = (*(**(a1 + 56) + 152))(*(a1 + 56), [*(a1 + 32) meteringEnabled]);
  if (v21)
  {
    if (kAVVCScope)
    {
      v22 = *kAVVCScope;
      if (!v22)
      {
LABEL_43:
        v44 = *(a1 + 72);
        v45 = *(a1 + 40);
        v46 = v45 != 0;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_375;
        v53[3] = &unk_1E7EF5D38;
        v55 = v45;
        v54 = *(a1 + 32);
        v56 = v21;
        ControllerImpl::safeNotifyAlwaysAsync(v44, v46, v53);

        return;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4701;
      *&buf[18] = 1024;
      *&buf[20] = v21;
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d prepareRecordForStream: Error in enableMetering: %d", buf, 0x18u);
    }

    goto LABEL_43;
  }

  v27 = (*(**(a1 + 56) + 72))(*(a1 + 56));
  ReporterID = AVVCRecordingEngine::getReporterID(*(a1 + 56));
  v29 = *(a1 + 56);
  v30 = *(v29 + 272);
  v31 = *(v29 + 40);
  *buf = *(v29 + 24);
  *&buf[16] = v31;
  v66 = *(v29 + 56);
  v32 = *(a1 + 88);
  v33 = mach_absolute_time();
  v34 = __udivti3();
  if (v33 >= v32)
  {
    v35 = v34;
  }

  else
  {
    v35 = -v34;
  }

  v36 = +[AVVCMetricsManager sharedManager];
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:v35 / 1000000.0];
  [v36 logSingleMetric:@"avvcPrepareRecordTime" value:v37 category:8 type:5 reporterID:ReporterID];

  v38 = +[AVVCMetricsManager sharedManager];
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
  [v38 logSingleMetric:@"avvcActivationContext" value:v39 category:8 type:5 reporterID:ReporterID];

  v40 = +[AVVCMetricsManager sharedManager];
  v51[0] = *buf;
  v51[1] = *&buf[16];
  v52 = v66;
  [v40 logRecordAudioFormat:v51 reporterID:ReporterID];

  v41 = *(a1 + 72);
  v42 = *(a1 + 40);
  LODWORD(v40) = v42 != 0;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v47[3] = &unk_1E7EF5D38;
  v49 = v42;
  v48 = *(a1 + 32);
  v50 = v27;
  ControllerImpl::safeNotifyAlwaysAsync(v41, v40, v47);
}

void sub_1BA5B8024(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AVVCRecordingEngine::getReporterID(AVVCRecordingEngine *this)
{
  if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
  {
    dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
  }

  if (IsMetricsOwnedByAVVC(void)::owned)
  {
    +[AVVCMetricsManager sharedManager];
  }

  else
  {
    (*(*this + 64))(this, 0);
  }
  v2 = ;
  v3 = [v2 reporterID];

  return v3;
}

void AVVCRouteManager::getRecordRoute(uint64_t a1, void **a2)
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v4 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((a1 + 56));
  }

  v5 = [*(a1 + 32) copy];
  v6 = *a2;
  *a2 = v5;

  if ((v4 & 1) == 0)
  {

    std::mutex::unlock((a1 + 56));
  }
}

void sub_1BA5B81A8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock((v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AVVCAudioQueueRecordingEngine::getRecordRoute(uint64_t a1, void **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  AVVCRouteManager::getRecordRoute(*(a1 + 368), a2);
  result = [*a2 isEqualToString:@"No Record Route"];
  if (result)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        return 4294955512;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "AVVCAudioQueueRecordingEngine.mm";
      v8 = 1024;
      v9 = 1948;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCAudioQueueRecordingEngine::getRecordRoute : Cached record route is nil!", &v6, 0x12u);
    }

    return 4294955512;
  }

  return result;
}

void TraceWrapper::~TraceWrapper(TraceWrapper *this)
{
  if (*(this + 4) == 1)
  {
    kdebug_trace();
  }
}

void ControllerImpl::prepareRecordForStream(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = mach_absolute_time();
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v21, *(a1 + 8), *(a1 + 16));
  v11 = v21;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke;
  v14[3] = &unk_1F38483C8;
  v17 = a1;
  v12 = v8;
  v15 = v12;
  v18 = v11;
  v19 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v9;
  v16 = v13;
  v20 = v10;
  ControllerImpl::safeWork(v11, v14, "prepareRecordForStream");

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1BA5B844C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  ControllerImpl::_lookupEngineForStreamID(&v41, *(v2 + 576), *(v2 + 584), [*(a1 + 32) streamID]);
  v3 = v41;
  if (!v41)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_16:
        v15 = *(a1 + 56);
        v16 = *(a1 + 40);
        v17 = v16 != 0;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_371;
        v38[3] = &unk_1E7EF6710;
        v40 = v16;
        v39 = *(a1 + 32);
        ControllerImpl::safeNotifyAlwaysAsync(v15, v17, v38);

        v18 = v42;
        goto LABEL_33;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    v13 = v5;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) streamID];
      *buf = 136315650;
      v44 = "ControllerImpl.mm";
      v45 = 1024;
      v46 = 4657;
      v47 = 2048;
      v48 = v14;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d prepareRecordForStream: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    v4 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
    goto LABEL_9;
  }

  v4 = *kAVVCScope;
  if (v4)
  {
LABEL_9:
    v7 = v4;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v42;
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = MEMORY[0x1E696AEC0];
        v10 = *(v3 + 264);
        v11 = v8->__shared_owners_ + 1;
      }

      else
      {
        v11 = 0;
        v9 = MEMORY[0x1E696AEC0];
        v10 = *(v3 + 264);
      }

      v19 = [v9 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v3, v10, v11];
      v20 = (*(*v3 + 296))(v3);
      if (v20 > 4)
      {
        v21 = "ILLEGAL";
      }

      else
      {
        v21 = off_1E7EF6310[v20];
      }

      v22 = [*(a1 + 32) streamID];
      v23 = Get4CCFromInt(*(v3 + 272));
      *buf = 136316418;
      v44 = "ControllerImpl.mm";
      v45 = 1024;
      v46 = 4664;
      v47 = 2112;
      v48 = v19;
      v49 = 2080;
      v50 = v21;
      v51 = 2048;
      v52 = v22;
      v53 = 2112;
      v54 = v23;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d prepareRecordForStream: Found engine[%@] of type(%s) for streamID(%lu), with activation mode(%@)", buf, 0x3Au);

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3321888768;
  v29[2] = ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_372;
  v29[3] = &unk_1F3847AF8;
  v32 = v2;
  v33 = v3;
  v18 = v42;
  v34 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = *(a1 + 32);
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
  v30 = v24;
  v35 = v26;
  v36 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = *(a1 + 40);
  v28 = *(a1 + 72);
  v31 = v27;
  v37 = v28;
  (*(*v3 + 328))(v3, v29, "prepareRecordForStream_block_invoke");

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

LABEL_33:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1BA5B8918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v4 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(v2 + 16))(v2, v3, v4 == 0);
  if (v4)
  {
  }
}

void sub_1BA5B8A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettings_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = v5;
  if (v5)
  {
    LODWORD(v5) = [v5 code];
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  v6 = *(a1 + 32);
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

uint64_t ___ZN14ControllerImpl16getPlaybackRouteEPU8__strongP8NSStringm_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [v3 copy];
    v5 = *(a1 + 40);
    v6 = *v5;
    *v5 = v4;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = dispatch_semaphore_signal(v7);
  }

  return MEMORY[0x1EEE66BB8](v7);
}

void ___ZN14ControllerImpl16getPlaybackRouteEPU8__strongP8NSStringm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN14ControllerImpl16getPlaybackRouteEPU8__strongP8NSStringm_block_invoke_2;
  v8[3] = &unk_1E7EF5AB8;
  v6 = a1[6];
  v9 = v3;
  v10 = v6;
  v7 = v3;
  ControllerImpl::getPlaybackRoute(v4, v5, v8);
}

void ControllerImpl::getPlaybackRoute(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v16, *(a1 + 8), *(a1 + 16));
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__5601;
  v14[4] = __Block_byref_object_dispose__5602;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZN14ControllerImpl16getPlaybackRouteEmU13block_pointerFvP8NSStringE_block_invoke;
  v8[3] = &unk_1F38487F0;
  v6 = v16;
  v11 = v16;
  v12 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a2;
  v10 = v14;
  v7 = v5;
  v9 = v7;
  ControllerImpl::safeWork(v6, v8, "getPlaybackRoute");

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Block_object_dispose(v14, 8);

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1BA5B8DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Block_object_dispose(&a19, 8);

  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl16getPlaybackRouteEmU13block_pointerFvP8NSStringE_block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = ControllerImpl::sessionManagerForStreamID(a1[6], a1[8], 0);
  v3 = [v2 playbackRoute];
  v4 = [v3 copy];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1[5] + 8) + 40);
    *buf = 136315650;
    v19 = "ControllerImpl.mm";
    v20 = 1024;
    v21 = 839;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getPlaybackRoute: %@", buf, 0x1Cu);
  }

LABEL_8:
  v10 = a1[6];
  v11 = a1[4];
  v12 = v11 != 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN14ControllerImpl16getPlaybackRouteEmU13block_pointerFvP8NSStringE_block_invoke_139;
  v15[3] = &unk_1E7EF5A90;
  v13 = v11;
  v14 = a1[5];
  v16 = v13;
  v17 = v14;
  ControllerImpl::safeNotifyAlwaysAsync(v10, v12, v15);
}

uint64_t AVVCRecordingEngine::setSessionActive(AVVCRecordingEngine *this, uint64_t a2, BOOL *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v47 = 4099;
  v48 = 1;
  v49 = 0u;
  v50 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v57, "setSessionActive", "setSessionActive", 0);
  TraceMethod::TraceMethod(v46, "setSessionActive");
  *a3 = 0;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v44, *(this + 1), *(this + 2));
  v6 = (*(*v44 + 64))(v44, 0);
  v7 = [v6 sessionState];
  if (!v7)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        SessionProperties = 4294955515;
        goto LABEL_78;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v52 = "AVVCRecordingEngine.mm";
      v53 = 1024;
      v54 = 1451;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d setSessionActive: Error! Attemtping to activate a session that is not configured", buf, 0x12u);
    }

    SessionProperties = 4294955515;
LABEL_50:

    v9 = 0;
    goto LABEL_78;
  }

  if (v7 > 4)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        v9 = 0;
        SessionProperties = 0;
        goto LABEL_78;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    v9 = v11;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v6 sessionState];
      if (v19 > 7)
      {
        v20 = "ILLEGAL";
      }

      else
      {
        v20 = off_1E7EF63F8[v19];
      }

      *buf = 136315650;
      v52 = "AVVCRecordingEngine.mm";
      v53 = 1024;
      v54 = 1533;
      v55 = 2080;
      v56 = v20;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setSessionActive(true): session state already %s -- no-op", buf, 0x1Cu);
    }

    SessionProperties = 0;
    goto LABEL_50;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "Activating";
    v52 = "AVVCRecordingEngine.mm";
    *buf = 136315650;
    if (a2)
    {
      v14 = "Prewarming";
    }

    v53 = 1024;
    v54 = 1457;
    v55 = 2080;
    v56 = v14;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: %s session ####", buf, 0x1Cu);
  }

LABEL_22:
  v15 = *(this + 23);
  if (v15)
  {
    (*(v15 + 16))(v15, 1);
  }

  v43 = 0;
  v16 = [v6 activateAudioSessionWithPrewarm:a2 error:&v43];
  v9 = v43;
  SessionProperties = [v9 code];
  *a3 = v16 ^ 1;
  if (kAVVCScope)
  {
    v17 = *kAVVCScope;
    if (!v17)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v52 = "AVVCRecordingEngine.mm";
    v53 = 1024;
    v54 = 1467;
    _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setSessionActive(true): AVAudioSession:setActive has returned", buf, 0x12u);
  }

LABEL_35:
  if (SessionProperties)
  {
    goto LABEL_63;
  }

  if ([v6 forceGetSessionProperties])
  {
    [v6 setForceGetSessionProperties:0];
    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v22 = *kAVVCScope;
        if (v22)
        {
          v23 = v22;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v52 = "AVVCRecordingEngine.mm";
            v53 = 1024;
            v54 = 1479;
            _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d setSessionActive(true): force of getSessionProperties requested", buf, 0x12u);
          }
        }
      }
    }

    SessionProperties = AVVCRecordingEngine::getSessionProperties(v44);
    if (!SessionProperties)
    {
      goto LABEL_76;
    }

    if (kAVVCScope)
    {
      v24 = *kAVVCScope;
      if (!v24)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v52 = "AVVCRecordingEngine.mm";
      v53 = 1024;
      v54 = 1481;
      v55 = 1024;
      LODWORD(v56) = SessionProperties;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d setSessionActive(true): force of getSessionProperties requested - returned error : %d", buf, 0x18u);
    }
  }

  else
  {
    v25 = *(v44 + 46);
    v42 = 0;
    AVVCRouteManager::getRecordRoute(v25, &v42);
    SessionProperties = (*(*v44 + 72))(v44);
    v41 = 0;
    AVVCRouteManager::getRecordRoute(v25, &v41);
    v27 = v41;
    v26 = v42;
    if (!SessionProperties)
    {
      if ([v41 isEqualToString:v42])
      {
        SessionProperties = 0;
      }

      else
      {
        v29 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v30 = v29;
        if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v52 = "AVVCRecordingEngine.mm";
          v53 = 1024;
          v54 = 1500;
          v55 = 2112;
          v56 = v27;
          _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d setSessionActive(true): Route change when we went active: %@ -- getting properties", buf, 0x1Cu);
        }

        SessionProperties = AVVCRecordingEngine::getSessionProperties(v44);
      }
    }
  }

LABEL_63:
  if (SessionProperties != -11795)
  {
    if (SessionProperties == 561017449)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = [v6 getActiveSessionDisplayIDsAsString];
      v33 = +[AVVCMetricsManager sharedManager];
      [v33 logSessionMetric:@"avvcActiveHigherPriorityProcessName" value:v32 category:1 type:6 reporterID:{objc_msgSend(v6, "reporterID")}];

      objc_autoreleasePoolPop(v31);
      SessionProperties = 561017449;
    }

    goto LABEL_76;
  }

  if (!a2)
  {
    SessionProperties = 4294955501;
    goto LABEL_76;
  }

  if (!kAVVCScope)
  {
    v34 = MEMORY[0x1E69E9C10];
    v35 = MEMORY[0x1E69E9C10];
    goto LABEL_72;
  }

  v34 = *kAVVCScope;
  if (v34)
  {
LABEL_72:
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v52 = "AVVCRecordingEngine.mm";
      v53 = 1024;
      v54 = 1518;
      v55 = 1024;
      LODWORD(v56) = -11795;
      _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d setSessionActive(false): Deactivating session due to error: %d", buf, 0x18u);
    }
  }

  v40 = v9;
  [v6 deactivateAudioSessionWithOptions:0x2000 error:&v40];
  v36 = v40;

  SessionProperties = 4294955501;
  v9 = v36;
LABEL_76:
  v37 = [v6 sessionState];
  v38 = *(this + 24);
  if (v38)
  {
    (*(v38 + 16))(v38, v37 == 7);
  }

LABEL_78:

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  TraceMethod::~TraceMethod(v46);
  ElapsedTime::~ElapsedTime(v57);
  TraceWrapper::~TraceWrapper(&v47);
  return SessionProperties;
}

void sub_1BA5B9820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  TraceMethod::~TraceMethod(&a15);
  ElapsedTime::~ElapsedTime(&a27);
  TraceWrapper::~TraceWrapper(&a17);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_342(uint64_t a1, char a2)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = *(a1 + 40);
  if (WeakRetained && v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_343;
    v10[3] = &unk_1E7EF5D10;
    objc_copyWeak(&v11, (a1 + 32));
    v12 = a2;
    ControllerImpl::safeNotify(v7, "beginAudioSessionActivate", v10);
    objc_destroyWeak(&v11);
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v14 = "ControllerImpl.mm";
    v15 = 1024;
    v16 = 4084;
    v17 = 2048;
    v18 = WeakRetained;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:
}

void sub_1BA5B9AA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

uint64_t ControllerImpl::getCurrentStreamStateForStream(ControllerImpl *this, AVVoiceController *a2, uint64_t a3)
{
  v5 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllerm_block_invoke;
  v9[3] = &unk_1E7EF5E78;
  v12 = this;
  v13 = a3;
  v10 = v5;
  v11 = &v14;
  v6 = v5;
  makeSynchronous(v9);
  v7 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v7;
}

void sub_1BA5B9F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA5BA080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ElapsedTime::~ElapsedTime(va);
  if (v4)
  {
    std::recursive_mutex::unlock((v3 + 24));
  }

  _Unwind_Resume(a1);
}

uint64_t ControllerImpl::enableSmartRoutingConsideration(ControllerImpl *this, uint64_t a2, char a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmb_block_invoke;
  v5[3] = &unk_1E7EF6120;
  v5[5] = this;
  v5[6] = a2;
  v6 = a3;
  v5[4] = &v7;
  makeSynchronous(v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmbU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 64))(*(a1 + 40), 0);
  v3 = [v2 enableSmartRoutingConsideration:*(a1 + 80)];
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = v5 != 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmbU13block_pointerFvmbP7NSErrorE_block_invoke_3;
  v9[3] = &unk_1E7EF60A8;
  v7 = v5;
  v8 = *(a1 + 72);
  v10 = v7;
  v11 = v8;
  v12 = v3;
  ControllerImpl::safeNotifyAlwaysAsync(v4, v6, v9);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_343(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained beginAudioSessionActivate:*(a1 + 40)];
  }

  else
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ControllerImpl.mm";
      v8 = 1024;
      v9 = 4086;
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v6, 0x1Cu);
    }
  }

LABEL_10:
}

void ___ZN14ControllerImpl12checkSessionEP17AVVoiceControllermb_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 56) + 64))(*(a1 + 56), 0);
  *(*(*(a1 + 32) + 8) + 24) = [v2 sessionState] < 5;

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = AVVCRecordingEngine::setSessionActive(*(a1 + 56), *(a1 + 72), (*(*(a1 + 48) + 8) + 24));
  }
}

_BYTE *SessionUnlocker::SessionUnlocker(_BYTE *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  VCUnlocker::VCUnlocker(a1, a2, 3u);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  return a1;
}

void sub_1BA5BA4B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AVAudioConverterImpl::FillComplexProc(AVAudioConverterImpl *this, OpaqueAudioConverter *a2, unsigned int *a3, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  if (*(a5 + 64) != 1)
  {
    v9 = (a5[7][1].mStartOffset)();
    v10 = a5[6];
    a5[6] = v9;

    *(a5 + 64) = 1;
    v11 = a5[6];
    a5[6] = 0;
  }

  *a2 = 0;
  return 0;
}

void sub_1BA5BAB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_ea8_56c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t __copy_helper_block_ea8_40c39_ZTSNSt3__18weak_ptrI14ControllerImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl19dispatchAndSafeWorkEU13block_pointerFvvEPKc_block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = a1[5]) == 0)
  {
LABEL_10:
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "ControllerImpl.mm";
      v12 = 1024;
      v13 = 4430;
      v14 = 2048;
      v15 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (impl: %p). Bailing", &v10, 0x1Cu);
    }

LABEL_17:
    if (!v3)
    {
      return;
    }

    goto LABEL_18;
  }

  std::recursive_mutex::lock((v4 + 104));
  if (*(v4 + 520) == 1)
  {
    v5 = *kAVVCScope;
    v6 = CALog::Scope::oslog(*kAVVCScope);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = a1[7];
      v10 = 136315138;
      v11 = v9;
      _os_log_fault_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_FAULT, "Warning: Trying to do safeWork on impl work queue while in tearDown. Caller: %s", &v10, 0xCu);
    }
  }

  (*(a1[4] + 16))();
  std::recursive_mutex::unlock((v4 + 104));
LABEL_18:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1BA5BAD6C(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 104));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

char *_AVAE_Check(char *result, int a2, const char *a3, const char *a4, char a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a5 & 1) == 0)
  {
    v8 = result;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      if (v8)
      {
        v10 = strrchr(v8, 47);
        if (v10)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = v8;
        }
      }

      else
      {
        v11 = 0;
      }

      *buf = 136316418;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 71;
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = a2;
      v20 = 2080;
      v21 = a3;
      v22 = 2080;
      v23 = a4;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    return [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", a4}];
  }

  return result;
}

BOOL anonymous namespace::isPCMFormat(_DWORD *a1)
{
  v1 = a1[2];
  v2 = a1[5];
  v3 = v1 == 1819304813 && v2 == 1;
  if (!v3)
  {
    if ((v1 == 1970037111 || v1 == 1634492791) && v2 == 1)
    {
      v5 = a1[6];
      if (v5 == a1[4])
      {
        return a1[8] <= (8 * v5) && a1[7] != 0;
      }
    }

    return 0;
  }

  v8 = a1[6];
  if (v8 != a1[4])
  {
    return 0;
  }

  v9 = a1[8];
  if (v8 < v9 >> 3)
  {
    return 0;
  }

  v10 = a1[7];
  if (!v10)
  {
    return 0;
  }

  v11 = a1[3];
  if ((v11 & 0x20) == 0)
  {
    v3 = v8 == v8 / v10 * v10;
    v8 /= v10;
    if (!v3)
    {
      return 0;
    }
  }

  result = 1;
  if ((v11 & 3) == 1 && 8 * v8 == v9 && (v11 & 0x1F84) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t anonymous namespace::getPCMFormat(_DWORD *a1)
{
  v1 = a1[3];
  if (v1)
  {
    if (a1[8] == 32)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v2 = a1[6];
    if (!v2)
    {
      return 3;
    }

    if ((v1 & 0x20) != 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = a1[7];
      if (!v3)
      {
        return 3;
      }
    }

    v5 = v2 / v3;
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    if (v5 == 4)
    {
      return 2;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t std::optional<CA::BufferList>::operator=[abi:ne200100]<CA::BufferList,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void std::vector<char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1BA5BB148(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ControllerImpl::handleRouteChange(ControllerImpl *this, AVVoiceController *a2, AVAudioSession *a3, NSDictionary *a4)
{
  v129 = *MEMORY[0x1E69E9840];
  v99 = a2;
  v7 = a3;
  v100 = a4;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v113, *(this + 1), *(this + 2));
  v8 = ControllerImpl::audioSessionForStreamID(this, 0, 0);

  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "aux";
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3108;
    *buf = 136315906;
    if (v8 == v7)
    {
      v11 = "primary";
    }

    *&buf[18] = 2080;
    *&buf[20] = v11;
    *&buf[28] = 2048;
    *&buf[30] = v7;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVoiceController -> Route Change for %s session (%p)", buf, 0x26u);
  }

LABEL_10:
  if (v8 == v7)
  {
    SessionState = ControllerImpl::getSessionState(this, 0);
    if (SessionState < 7)
    {
      v93 = 0;
      v96 = 0;
    }

    else
    {
      ControllerImpl::_getCurrentRecordingEngine(buf, this, *(this + 59), 1, "handleRouteChange");
      v93 = *buf;
      v96 = *&buf[8];
    }

    v98 = [(NSDictionary *)v100 objectForKey:*MEMORY[0x1E698D6E0]];
    v97 = [(NSDictionary *)v100 objectForKey:*MEMORY[0x1E698D6D8]];
    if (!v98)
    {
      if (kAVVCScope)
      {
        v20 = *kAVVCScope;
        if (!v20)
        {
          goto LABEL_181;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3251;
        _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route change reason was NULL", buf, 0x12u);
      }

      goto LABEL_44;
    }

    v14 = [v98 unsignedIntegerValue];
    v15 = v14;
    if (v14 <= 3)
    {
      if ((v14 - 1) < 2)
      {
        goto LABEL_58;
      }

      if (v14 == 3)
      {
        v16 = v100;
        *v120 = 0;
        v17 = [(NSDictionary *)v16 objectForKey:@"AVAudioSessionRouteChangeCurrentRouteKey"];
        extractFirstInputPortTypeFromRouteDescription(v17, v120);
        v117 = [v17 siriInputSource];
        v18 = *(this + 72);
        v19 = *(this + 73);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18)
        {
          *buf = &unk_1F384DF70;
          *&buf[8] = v120;
          *&buf[16] = &v117;
          *&buf[24] = buf;
          AVVCRecordingEngineMap::for_each_engine(v18, buf, "stopRecordingOnCategoryChange");
          std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](buf);
LABEL_81:
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          if (SessionState > 6)
          {
            v50 = ControllerImpl::audioSessionForStreamID(this, 0, 0);
            v51 = [v50 category];
            if (([v51 isEqualToString:*MEMORY[0x1E698D518]] & 1) == 0)
            {
              v52 = CALog::LogObjIfEnabled(2, kAVVCScope);
              v53 = v52;
              if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "ControllerImpl.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3191;
                _os_log_impl(&dword_1BA5AC000, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New route Category is not ours!", buf, 0x12u);
              }
            }

            std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v107, *(this + 1), *(this + 2));
            SessionLock::SessionLock(v120, v107, v108);
            if (v108)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v108);
            }

            if (v93)
            {
              v54 = (*(*v93 + 64))(v93, 0);
              v55 = [v54 forceGetSessionProperties];

              if (v55)
              {
                v56 = CALog::LogObjIfEnabled(5, kAVVCScope);
                v57 = v56;
                if (v56 && os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "ControllerImpl.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 3197;
                  _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d We were waiting for a route change -- Re-checking properties", buf, 0x12u);
                }

                v58 = (*(*v93 + 64))(v93, 0);
                [v58 setForceGetSessionProperties:0];

                v105[0] = MEMORY[0x1E69E9820];
                v105[1] = 3321888768;
                v105[2] = ___ZN14ControllerImpl17handleRouteChangeEP17AVVoiceControllerP14AVAudioSessionPK12NSDictionary_block_invoke_265;
                v105[3] = &__block_descriptor_48_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
                v105[4] = v93;
                v106 = v96;
                if (v96)
                {
                  atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                (*(*v93 + 344))(v93, v105);
                if (v106)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v106);
                }

                goto LABEL_115;
              }

              v65 = CALog::LogObjIfEnabled(6, kAVVCScope);
              v64 = v65;
              if (v65 && os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "ControllerImpl.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3205;
                _os_log_impl(&dword_1BA5AC000, v64, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route change reason: category change - ignoring", buf, 0x12u);
              }
            }

            else
            {
              v63 = CALog::LogObjIfEnabled(1, kAVVCScope);
              v64 = v63;
              if (v63 && os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ControllerImpl.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3209;
                _os_log_impl(&dword_1BA5AC000, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d Nil Engine! Could not get session properties", buf, 0x12u);
              }
            }

LABEL_115:
            VCLocker::~VCLocker(v120);

            goto LABEL_181;
          }

          v59 = CALog::LogObjIfEnabled(6, kAVVCScope);
          v20 = v59;
          if (v59)
          {
            v60 = v59;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v61 = ControllerImpl::getSessionState(this, 0);
              v62 = "not (yet) active";
              *&buf[4] = "ControllerImpl.mm";
              *buf = 136315650;
              if ((v61 & 0xFFFFFFFE) == 2)
              {
                v62 = "interrupted";
              }

              *&buf[12] = 1024;
              *&buf[14] = 3214;
              *&buf[18] = 2080;
              *&buf[20] = v62;
              _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d Category change came in while we were %s -- ignoring", buf, 0x1Cu);
            }
          }

LABEL_44:

LABEL_181:
          v84 = MGGetSInt32Answer();
          v85 = MGGetBoolAnswer();
          if (v84 == 7)
          {
            v86 = 1;
          }

          else
          {
            v86 = v85;
          }

          if (v86 == 1)
          {
            ControllerImpl::stopRunningEngines(this, v99, 1, 0xFFFFD1F5);
          }

          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          goto LABEL_188;
        }

        if (kAVVCScope)
        {
          v33 = *kAVVCScope;
          if (!v33)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v33 = MEMORY[0x1E69E9C10];
          v49 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1480;
          _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine Map does not exist", buf, 0x12u);
        }

        goto LABEL_81;
      }

      goto LABEL_45;
    }

    if (v14 == 4)
    {
      goto LABEL_58;
    }

    if (v14 != 8)
    {
LABEL_45:
      if (kAVVCScope)
      {
        v29 = *kAVVCScope;
        if (!v29)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v29 = MEMORY[0x1E69E9C10];
        v30 = MEMORY[0x1E69E9C10];
      }

      v31 = v29;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        if (v15 > 8)
        {
          v32 = "Illegal";
        }

        else
        {
          v32 = off_1E7EF62A8[v15];
        }

        *buf = 136315906;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3140;
        *&buf[18] = 1024;
        *&buf[20] = v15;
        *&buf[24] = 2080;
        *&buf[26] = v32;
        _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route change reason : [%d] = %s", buf, 0x22u);
      }

LABEL_58:
      v91 = v99;
      v95 = v97;
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v117, *(this + 1), *(this + 2));
      if (kAVVCScope)
      {
        v34 = *kAVVCScope;
        if (!v34)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 4211;
        _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d _invalidateStreamWhenDeviceUnavailable()", buf, 0x12u);
      }

LABEL_65:
      v88 = ControllerImpl::sessionManagerForStreamID(v117, 0, 0);
      v36 = [v88 currentRoute];
      v92 = [v36 inputs];
      v90 = [v36 siriRemoteInputIdentifier];
      v89 = [v95 siriRemoteInputIdentifier];
      v37 = [v88 isSessionOutputInWirelessSplitterMode];
      v38 = [v95 inputs];
      v39 = [v38 count];

      v40 = [v92 count];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3321888768;
      *&buf[16] = ___ZN14ControllerImpl38_invalidateStreamWhenDeviceUnavailableEP17AVVoiceControllerP30AVAudioSessionRouteDescription_block_invoke;
      *&buf[24] = &unk_1F38482B0;
      v125 = v117;
      v126 = v118;
      if (v118)
      {
        atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v41 = v89;
      *&buf[32] = v41;
      v42 = v90;
      v128 = v37;
      v123 = v42;
      v127 = v40;
      v43 = v91;
      v124 = v43;
      v44 = _Block_copy(buf);
      v45 = v44;
      if (v39 != 1)
      {
        (*(v44 + 2))(v44);
        goto LABEL_123;
      }

      v119 = 0;
      v116 = 0;
      extractFirstInputPortTypeFromRouteDescription(v36, &v119);
      extractFirstInputPortTypeFromRouteDescription(v95, &v116);
      v46 = v119;
      if (areNSStringsEqualOrBothNil(v116, v119))
      {
LABEL_122:

LABEL_123:
        if (v126)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v126);
        }

        if (v118)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v118);
        }

        if (SessionState > 6 && *(this + 59) && v93)
        {
          if (kAVVCScope)
          {
            v67 = *kAVVCScope;
            if (!v67)
            {
LABEL_144:

              std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v111, *(this + 1), *(this + 2));
              SessionLock::SessionLock(buf, v111, v112);
              if (v112)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v112);
              }

              v109[0] = MEMORY[0x1E69E9820];
              v109[1] = 3321888768;
              v109[2] = ___ZN14ControllerImpl17handleRouteChangeEP17AVVoiceControllerP14AVAudioSessionPK12NSDictionary_block_invoke;
              v109[3] = &__block_descriptor_56_ea8_40c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
              v109[4] = this;
              v109[5] = v93;
              v110 = v96;
              if (v96)
              {
                atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v93 + 344))(v93, v109);
              if (v110)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v110);
              }

              v72 = buf;
              goto LABEL_180;
            }
          }

          else
          {
            v67 = MEMORY[0x1E69E9C10];
            v71 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3151;
            _os_log_impl(&dword_1BA5AC000, v67, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route really changed -- Re-checking properties", buf, 0x12u);
          }

          goto LABEL_144;
        }

        if (kAVVCScope)
        {
          v68 = *kAVVCScope;
          if (!v68)
          {
LABEL_140:
            v70 = ControllerImpl::sessionManagerForStreamID(this, 0, 0);
            [v70 setForceGetSessionProperties:1];

            goto LABEL_181;
          }
        }

        else
        {
          v68 = MEMORY[0x1E69E9C10];
          v69 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3174;
          _os_log_impl(&dword_1BA5AC000, v68, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route really changed but session not-yet-active/interrupted -- set flag to check properties when we are active", buf, 0x12u);
        }

        goto LABEL_140;
      }

      v115 = 0;
      v47 = v117[72];
      v48 = v117[73];
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v47)
      {
        *v120 = &unk_1F384E038;
        *&v120[8] = &v116;
        *&v120[16] = &v115;
        v121 = v120;
        AVVCRecordingEngineMap::for_each_engine(v47, v120, "_invalidateStreamWhenDeviceUnavailable");
        std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](v120);
        goto LABEL_120;
      }

      if (kAVVCScope)
      {
        oslog = *kAVVCScope;
        if (!oslog)
        {
LABEL_120:
          ControllerImpl::_removeEngineFromMap(v117, v43, v115, 0, v45);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          goto LABEL_122;
        }
      }

      else
      {
        oslog = MEMORY[0x1E69E9C10];
        v66 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *v120 = 136315394;
        *&v120[4] = "ControllerImpl.mm";
        *&v120[12] = 1024;
        *&v120[14] = 4290;
        _os_log_impl(&dword_1BA5AC000, oslog, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine Map does not exist", v120, 0x12u);
      }

      goto LABEL_120;
    }

    v21 = v99;
    v22 = v100;
    ControllerImpl::_lookupEngineForStreamID(v120, *(this + 72), *(this + 73), 1uLL);
    v23 = *v120;
    if (!*v120 || *(*v120 + 216) != 5)
    {
LABEL_157:
      if (*&v120[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v120[8]);
      }

      if (SessionState <= 6)
      {
        v81 = CALog::LogObjIfEnabled(6, kAVVCScope);
        v20 = v81;
        if (v81 && os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3245;
          _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route change reason: route configuration change - ignoring", buf, 0x12u);
        }

        goto LABEL_44;
      }

      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v103, *(this + 1), *(this + 2));
      SessionLock::SessionLock(v120, v103, v104);
      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
      }

      if (v93)
      {
        v76 = (*(*v93 + 64))(v93, 0);
        v77 = [v76 forceGetSessionProperties];

        if (v77)
        {
          v78 = CALog::LogObjIfEnabled(5, kAVVCScope);
          v79 = v78;
          if (v78 && os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3232;
            _os_log_impl(&dword_1BA5AC000, v79, OS_LOG_TYPE_DEBUG, "%25s:%-5d We were waiting for a route change -- Re-checking properties", buf, 0x12u);
          }

          v80 = (*(*v93 + 64))(v93, 0);
          [v80 setForceGetSessionProperties:0];

          v101[0] = MEMORY[0x1E69E9820];
          v101[1] = 3321888768;
          v101[2] = ___ZN14ControllerImpl17handleRouteChangeEP17AVVoiceControllerP14AVAudioSessionPK12NSDictionary_block_invoke_268;
          v101[3] = &__block_descriptor_48_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
          v101[4] = v93;
          v102 = v96;
          if (v96)
          {
            atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v93 + 344))(v93, v101);
          if (v102)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v102);
          }
        }
      }

      else
      {
        v82 = CALog::LogObjIfEnabled(1, kAVVCScope);
        v83 = v82;
        if (v82 && os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3241;
          _os_log_impl(&dword_1BA5AC000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d Nil Engine! Could not get session properties", buf, 0x12u);
        }
      }

      v72 = v120;
LABEL_180:
      VCLocker::~VCLocker(v72);
      goto LABEL_181;
    }

    v117 = 0;
    (*(**v120 + 304))(*v120, &v117);
    v119 = 0;
    v24 = [(NSDictionary *)v22 objectForKey:@"AVAudioSessionRouteChangeCurrentRouteKey"];
    extractFirstInputPortTypeFromRouteDescription(v24, &v119);
    v25 = areNSStringsEqualOrBothNil(v117, *MEMORY[0x1E698D690]);
    v26 = v119;
    if (!v25 || !areNSStringsEqualOrBothNil(v119, *MEMORY[0x1E698D660]))
    {
LABEL_156:

      goto LABEL_157;
    }

    if (kAVVCScope)
    {
      v27 = *kAVVCScope;
      if (!v27)
      {
LABEL_155:
        AVVCRecordingEngine::stopRecordWithRecordLock(*(v23 + 152));
        goto LABEL_156;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v73 = MEMORY[0x1E69E9C10];
    }

    v74 = v27;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = *(v23 + 264);
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1508;
      *&buf[18] = 2048;
      *&buf[20] = v75;
      _os_log_impl(&dword_1BA5AC000, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d stopRecordingOnRouteConfigurationChange: Route has changed from CarAudio to MicrophoneBuiltIn while stream(%lu) engine is running! Stopping the recording.", buf, 0x1Cu);
    }

    goto LABEL_155;
  }

  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    if (!v12)
    {
      goto LABEL_188;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3113;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d   Route change for aux session unexpected", buf, 0x12u);
  }

LABEL_188:
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }
}

void sub_1BA5BC610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49)
{
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  VCLocker::~VCLocker((v52 - 240));

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  _Unwind_Resume(a1);
}

void AVVCRecordingEngineMap::for_each_engine(uint64_t a1, uint64_t a2, const char *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v6 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::recursive_mutex::lock((a1 + 24));
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }
  }

  v7 = IsSerializationEnabled(void)::enable;
  v18 = v6;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    v8 = dispatch_group_create();
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v10 = v9[5];
      v3 = v9[6];
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7)
      {
        dispatch_group_enter(v8);
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3321888768;
      v25[2] = ___ZN22AVVCRecordingEngineMap15for_each_engineENSt3__18functionIFvNS0_10shared_ptrI19AVVCRecordingEngineEEEEEPKc_block_invoke;
      v25[3] = &unk_1F3847FD8;
      std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::__value_func[abi:ne200100](v27, a2);
      v27[4] = v10;
      v28 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = v7;
      v26 = v8;
      (*(*v10 + 328))(v10, v25, "for_each_engine");

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](v27);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      v11 = v9[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v9[2];
          v13 = *v12 == v9;
          v9 = v12;
        }

        while (!v13);
      }

      v9 = v12;
    }

    while (v12 != (a1 + 8));
  }

  if ((v7 & 1) != 0 && dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = CALog::LogObjIfEnabled(1, kAVVCScope);
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "AVVCRecordingEngineMap.mm";
      v21 = 1024;
      v22 = 132;
      v23 = 2080;
      v24 = a3;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVC_TIMEOUT occurred : for_each_engine : EngineDispatchGroup timed out! Caller: %s", buf, 0x1Cu);
    }

    v16 = CAVerboseAbort("ASSERTION FAILURE: AVVC_TIMEOUT occurred : for_each_engine timed out! Caller: %s", a3);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if ((v18 & 1) == 0)
    {
      std::recursive_mutex::unlock((a1 + 24));
    }

    _Unwind_Resume(v16);
  }

  if ((v18 & 1) == 0)
  {
    std::recursive_mutex::unlock((a1 + 24));
  }
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ___ZN22AVVCRecordingEngineMap15for_each_engineENSt3__18functionIFvNS0_10shared_ptrI19AVVCRecordingEngineEEEEEPKc_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v4 = *(a1 + 72);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a1 + 88) == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_1BA5BCD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ControllerImpl::stopRecordingOnCategoryChange(AVVoiceController *,NSDictionary const*)::$_0,std::allocator<ControllerImpl::stopRecordingOnCategoryChange(AVVoiceController *,NSDictionary const*)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::operator()(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v2 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (!v3 || *(v3 + 27) != 5)
  {
    goto LABEL_17;
  }

  v12 = 0;
  (*(*v3 + 304))(v3, &v12);
  if ((areNSStringsEqualOrBothNil(v12, **(a1 + 8)) & 1) == 0)
  {
    v5 = (*(*v3 + 296))(v3) == 2 && **(a1 + 16) == 1936290660;
    v6 = AVVCRecordingEngine::getActivationContextSettings(v3);
    v7 = [v6 announceCallsEnabled];

    if ((v7 | v5))
    {
      if (kAVVCScope)
      {
        v8 = *kAVVCScope;
        if (!v8)
        {
LABEL_15:
          AVVCRecordingEngine::stopRecordWithRecordLock(*(v3 + 19));
          goto LABEL_16;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v9 = MEMORY[0x1E69E9C10];
      }

      v10 = v8;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v3 + 33);
        *buf = 136315650;
        v14 = "ControllerImpl.mm";
        v15 = 1024;
        v16 = 1472;
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping the recording on stream(%lu) due to a category change", buf, 0x1Cu);
      }

      goto LABEL_15;
    }
  }

LABEL_16:

LABEL_17:
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1BA5BCFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ControllerImpl::_getCurrentRecordingEngine(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  v7 = *(a2 + 576);
  v8 = *(a2 + 584);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "ControllerImpl.mm";
      *&v14[12] = 1024;
      *&v14[14] = 4159;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine Map does not exist", v14, 0x12u);
    }

    goto LABEL_23;
  }

  if (a3)
  {
    ControllerImpl::_lookupEngineForStreamID(v14, *(a2 + 576), *(a2 + 584), a3);
    *a1 = *v14;
    goto LABEL_24;
  }

  if (a4)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "ControllerImpl.mm";
      *&v14[12] = 1024;
      *&v14[14] = 4168;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid streamID. Session is not active", v14, 0x12u);
    }

LABEL_23:

    goto LABEL_24;
  }

  v11 = *kAVVCScope;
  v12 = CALog::Scope::oslog(*kAVVCScope);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *v14 = 136315394;
    *&v14[4] = "_getCurrentRecordingEngine";
    *&v14[12] = 2080;
    *&v14[14] = a5;
    _os_log_fault_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_FAULT, "%s Likely ambiguous AVVC V2 use case detected. Must pass streamID here: %s !", v14, 0x16u);
  }

LABEL_24:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1BA5BD2D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ControllerImpl::getSessionState(ControllerImpl *this, unint64_t a2)
{
  v2 = ControllerImpl::sessionManagerForStreamID(this, a2, 0);
  v3 = [v2 sessionState];

  return v3;
}

id ControllerImpl::audioSessionForStreamID(void *a1, unint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v7 = +[AVVCSessionFactory sharedInstance];
    v6 = [v7 sessionForContext:0 clientType:a1[23] error:a3];

    goto LABEL_15;
  }

  v5 = a2;
  ControllerImpl::_lookupEngineForStreamID(&v11, a1[72], a1[73], a2);
  if (v11)
  {
    v6 = (*(*v11 + 56))(v11, a3);
    goto LABEL_13;
  }

  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_9;
  }

  v8 = *kAVVCScope;
  if (v8)
  {
LABEL_9:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "ControllerImpl.mm";
      v15 = 1024;
      v16 = 206;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d audioSessionForStreamID(%d) couldn't find engine, returning nil", buf, 0x18u);
    }
  }

  v6 = 0;
LABEL_13:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_15:

  return v6;
}

__CFString *_logRouteDesc(AVAudioSessionRouteDescription *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(AVAudioSessionRouteDescription *)v1 inputs];
    v4 = _logPortDesc(v3);
    v5 = [&stru_1F384E730 stringByAppendingFormat:@"{ inputs: %@, ", v4];

    v6 = [(AVAudioSessionRouteDescription *)v2 outputs];
    v7 = _logPortDesc(v6);
    v8 = [v5 stringByAppendingFormat:@"outputs: %@, ", v7];

    v9 = [(AVAudioSessionRouteDescription *)v2 siriInputSource];
    v10 = [(AVAudioSessionRouteDescription *)v2 siriRemoteInputIdentifier];
    v11 = Get4CCFromInt(v9);
    v12 = [v8 stringByAppendingFormat:@"siriInputSource: %@, siriRemoteInputIdentifier: %@ }", v11, v10];
  }

  else
  {
    v12 = @"null";
  }

  return v12;
}

__CFString *_logPortDesc(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v14 = v1;
  if (v1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = *v16;
      v5 = @"[ ";
      do
      {
        v6 = 0;
        v7 = v5;
        do
        {
          if (*v16 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v15 + 1) + 8 * v6);
          v9 = [v8 portType];
          v10 = [v8 portName];
          v11 = [v8 UID];
          v5 = [(__CFString *)v7 stringByAppendingFormat:@"(type=%@, name=%@, UID=%@) ", v9, v10, v11, v14, v15];;

          ++v6;
          v7 = v5;
        }

        while (v3 != v6);
        v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v3);
    }

    else
    {
      v5 = @"[ ";
    }

    v12 = [(__CFString *)v5 stringByAppendingString:@"]"];
  }

  else
  {
    v12 = @"null";
  }

  return v12;
}

__n128 std::__function::__func<ControllerImpl::stopRecordingOnCategoryChange(AVVoiceController *,NSDictionary const*)::$_0,std::allocator<ControllerImpl::stopRecordingOnCategoryChange(AVVoiceController *,NSDictionary const*)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384DF70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t ControllerImpl::isDuckingSupportedOnPickedRouteForStream(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5601;
  v11 = __Block_byref_object_dispose__5602;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmPU15__autoreleasingP7NSError_block_invoke;
  v6[3] = &unk_1E7EF61E8;
  v6[6] = a1;
  v6[7] = a2;
  v6[4] = &v13;
  v6[5] = &v7;
  makeSynchronous(v6);
  if (a3)
  {
    *a3 = v8[5];
  }

  v4 = *(v14 + 24);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4;
}

void sub_1BA5BDA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v22 - 48), 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 65);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbb_block_invoke_2;
  v16[3] = &unk_1E7EF5D60;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v17 = v3;
  v18 = v8;
  v10 = v3;
  v11 = v9;
  v12 = v16;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v28, *(v5 + 8), *(v5 + 16));
  v13 = v28;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3321888768;
  v19[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke;
  v19[3] = &unk_1F3848240;
  v22 = v5;
  v23 = v28;
  v24 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = v4;
  v14 = v12;
  v21 = v14;
  v26 = v6;
  v15 = v11;
  v20 = v15;
  v27 = v7;
  ControllerImpl::safeWork(v13, v19, "activateAudioSessionForStream");

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }
}

void sub_1BA5BDC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v29 = *(v27 - 72);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  ControllerImpl::_lookupEngineForStreamID(&v28, *(*(a1 + 56) + 576), *(*(a1 + 56) + 584), *(a1 + 72));
  v3 = v28;
  if (!v28)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 72);
      *buf = 136315650;
      v31 = "ControllerImpl.mm";
      v32 = 1024;
      v33 = 5503;
      v34 = 2048;
      v35 = v8;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d activateAudioSessionForStream ERROR: Cannot find recording engine for streamID(%lu). Bailing.", buf, 0x1Cu);
    }

LABEL_20:
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = v10 != 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_450;
    v25[3] = &unk_1E7EF6590;
    v12 = v10;
    v13 = *(a1 + 72);
    v26 = v12;
    v27 = v13;
    ControllerImpl::safeNotifyAlwaysAsync(v9, v11, v25);

    v4 = v29;
    if (!v29)
    {
      return;
    }

    goto LABEL_11;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v14[3] = &unk_1F3847DB0;
  v17 = v2;
  v18 = v28;
  v4 = v29;
  v19 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 64);
  v20 = *(a1 + 56);
  v21 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  v16 = *(a1 + 40);
  v15 = *(a1 + 32);
  v24 = *(a1 + 81);
  (*(*v3 + 328))(v3, v14, "activateAudioSessionForStream_block_invoke");

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v4)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1BA5BDF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (*(v27 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v27 - 88));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = AVVCRecordingEngine::getActivationContextSettings(*(a1 + 56));
  v4 = [v3 activationMode];
  v5 = [v3 activationDeviceUID];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == 1986357346;
  }

  if (v6)
  {
    v5 = AVVCRouteManager::getRecordDeviceUID(*(*(a1 + 56) + 368));
  }

  if (![v3 announceCallsEnabled])
  {
    v8 = 0;
    goto LABEL_17;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_13;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_13:
    v10 = v7;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v31, v4);
      *buf = 136315650;
      v33 = "ControllerImpl.mm";
      v34 = 1024;
      v35 = 5537;
      v36 = 2080;
      v37 = v31;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Announce option set for %s activation mode", buf, 0x1Cu);
    }
  }

  v8 = 1;
LABEL_17:
  v11 = *(a1 + 72);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_451;
  v17[3] = &unk_1F3848FC8;
  v21 = v2;
  v12 = v5;
  v18 = v12;
  v14 = *(a1 + 72);
  v13 = *(a1 + 80);
  v22 = v4;
  v23 = v14;
  v24 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  v25 = *(a1 + 88);
  v26 = v16;
  v27 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *(a1 + 96);
  v20 = *(a1 + 40);
  v28 = v8;
  v19 = *(a1 + 32);
  v30 = *(a1 + 97);
  ControllerImpl::safeWork(v11, v17, "activateAudioSessionForStream_block_invoke");

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void __destroy_helper_block_ea8_56c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void __destroy_helper_block_ea8_40c39_ZTSNSt3__18weak_ptrI14ControllerImplEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ControllerImpl::dispatchAndSafeWork(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v14, *(a1 + 8), *(a1 + 16));
      v6 = v14;
      v7 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v6 + 32);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3321888768;
      v9[2] = ___ZN14ControllerImpl19dispatchAndSafeWorkEU13block_pointerFvvEPKc_block_invoke;
      v9[3] = &unk_1F384DDF8;
      v11 = v6;
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = a3;
      v10 = v5;
      dispatch_async(v8, v9);

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v5[2](v5);
    }
  }
}

id ControllerImpl::getRecordDeviceInfoForStream(ControllerImpl *this, AVVoiceController *a2, uint64_t a3)
{
  v5 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5601;
  v18 = __Block_byref_object_dispose__5602;
  v19 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllerm_block_invoke;
  v9[3] = &unk_1E7EF5E78;
  v12 = this;
  v13 = a3;
  v10 = v5;
  v11 = &v14;
  v6 = v5;
  makeSynchronous(v9);
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

void sub_1BA5BE66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllerm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = a1[7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllerm_block_invoke_2;
  v11[3] = &unk_1E7EF6030;
  v6 = a1[5];
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v11;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v19, *(v4 + 8), *(v4 + 16));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllermU13block_pointerFvmP20AVVCRecordDeviceInfoP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848BA0;
  v9 = v19;
  v16 = v19;
  v17 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5;
  v10 = v8;
  v15 = v10;
  ControllerImpl::safeWork(v9, v14, "getRecordDeviceInfoForStream");

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1BA5BE7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

id CALog::LogObjIfEnabled(int a1, uint64_t a2)
{
  if (a1 >= 6)
  {
    if (!a2 || (*(a2 + 8) & 1) == 0)
    {
      v2 = 0;
      goto LABEL_8;
    }
  }

  else if (!a2)
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v2 = *a2;
LABEL_8:

  return v2;
}

_BYTE *VCUnlocker::VCUnlocker(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = *(a2 + 8 * a3 + 536);
  a1[8] = 0;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
LABEL_11:
        if (((*(**a1 + 48))() & 1) == 0)
        {
          CAVerboseAbort("ASSERTION FAILED: Unlocker attempted to unlock a mutex not owned by the current thread!");
        }

        (*(**a1 + 24))();
        a1[8] = 1;
        return a1;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*a1 + 8);
      v8 = 136315650;
      v9 = "ControllerImpl.h";
      v10 = 1024;
      v11 = 794;
      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d unlocker about to unlock %s", &v8, 0x1Cu);
    }

    goto LABEL_11;
  }

  return a1;
}

void ControllerImpl::safeNotify(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock((a1 + 40));
      v5[2](v5);
      std::recursive_mutex::unlock((a1 + 40));
      goto LABEL_14;
    }

    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_13:
        v5[2](v5);
        goto LABEL_14;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "ControllerImpl.mm";
      v10 = 1024;
      v11 = 4533;
      v12 = 2080;
      v13 = a2;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d calling %s synchronously", &v8, 0x1Cu);
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_1BA5BEC24(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 40));

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_452(uint64_t a1)
{
  v89 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 120);
    v6 = *(a1 + 64);
    v7 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0);
    v8 = [v7 sessionState];
    if (v8 > 7)
    {
      v9 = "ILLEGAL";
    }

    else
    {
      v9 = off_1E7EF63F8[v8];
    }

    *buf = 136316162;
    v78 = "ControllerImpl.mm";
    v79 = 1024;
    v80 = 5568;
    v81 = 2048;
    v82 = v6;
    v83 = 1024;
    *v84 = v5;
    *&v84[4] = 2080;
    *&v84[6] = v9;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d activateAudioSessionForStream for stream(%lu). isPrewarm(%d). CurrentState(%s).", buf, 0x2Cu);
  }

LABEL_11:
  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = (*(**(a1 + 72) + 56))(*(a1 + 72), 0);
    v14 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0);
    v15 = *(a1 + 72);
    CAX4CCString::CAX4CCString(v76, *(v15 + 272));
    v16 = AVVCRouteManager::getRecordDeviceUID(*(*(a1 + 72) + 368));
    *buf = 136316674;
    v78 = "ControllerImpl.mm";
    v79 = 1024;
    v80 = 5570;
    v81 = 2048;
    v82 = v13;
    v83 = 2048;
    *v84 = v14;
    *&v84[8] = 2048;
    *&v84[10] = v15;
    v85 = 2080;
    v86 = v76;
    v87 = 2112;
    v88 = v16;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d session (%p) and session mananger (%p) used for engine (%p) with context(%s, %@)", buf, 0x44u);
  }

LABEL_18:
  v17 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0);
  *(*(*(a1 + 48) + 8) + 24) = [v17 setSessionActivationContext:*(a1 + 32)];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
LABEL_30:
        v23 = *(a1 + 88);
        v24 = *(a1 + 40);
        v25 = v24 != 0;
        v26 = v75;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_453;
        v75[3] = &unk_1E7EF5F40;
        v27 = v24;
        v28 = *(a1 + 64);
        v29 = *(a1 + 48);
        v75[4] = v27;
        v75[5] = v29;
        v75[6] = v28;
        ControllerImpl::safeNotifyAlwaysAsync(v23, v25, v75);
        goto LABEL_64;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136315650;
      v78 = "ControllerImpl.mm";
      v79 = 1024;
      v80 = 5576;
      v81 = 1024;
      LODWORD(v82) = v22;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d activateAudioSessionForStream ERROR: Failed at setSessionActivationContext: %d", buf, 0x18u);
    }

    goto LABEL_30;
  }

  v19 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0);
  *(*(*(a1 + 48) + 8) + 24) = [v19 setSessionCategoryModeOptionsForActivationMode:*(a1 + 104) withOptions:*(a1 + 112)];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (kAVVCScope)
    {
      v20 = *kAVVCScope;
      if (!v20)
      {
LABEL_39:
        v34 = *(a1 + 88);
        v35 = *(a1 + 40);
        v36 = v35 != 0;
        v26 = v74;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_454;
        v74[3] = &unk_1E7EF5F40;
        v37 = v35;
        v38 = *(a1 + 64);
        v39 = *(a1 + 48);
        v74[4] = v37;
        v74[5] = v39;
        v74[6] = v38;
        ControllerImpl::safeNotifyAlwaysAsync(v34, v36, v74);
        goto LABEL_64;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v33 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136315650;
      v78 = "ControllerImpl.mm";
      v79 = 1024;
      v80 = 5588;
      v81 = 1024;
      LODWORD(v82) = v33;
      _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d activateAudioSessionForStream ERROR: Failed at setSessionCategoryModeOptionsForActivationMode: %d", buf, 0x18u);
    }

    goto LABEL_39;
  }

  v30 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0);
  *(*(*(a1 + 48) + 8) + 24) = [v30 setSessionSampleRateForActivationMode:*(a1 + 104)];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (kAVVCScope)
    {
      v31 = *kAVVCScope;
      if (!v31)
      {
LABEL_47:
        v45 = *(a1 + 88);
        v46 = *(a1 + 40);
        v47 = v46 != 0;
        v26 = v73;
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_455;
        v73[3] = &unk_1E7EF5F40;
        v48 = v46;
        v49 = *(a1 + 64);
        v50 = *(a1 + 48);
        v73[4] = v48;
        v73[5] = v50;
        v73[6] = v49;
        ControllerImpl::safeNotifyAlwaysAsync(v45, v47, v73);
        goto LABEL_64;
      }
    }

    else
    {
      v31 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v44 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136315650;
      v78 = "ControllerImpl.mm";
      v79 = 1024;
      v80 = 5599;
      v81 = 1024;
      LODWORD(v82) = v44;
      _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d activateAudioSessionForStream ERROR: Failed at setSessionSampleRateForActivationMode: %d", buf, 0x18u);
    }

    goto LABEL_47;
  }

  v40 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0);
  v41 = *(a1 + 72);
  if (caulk::product::get_device_class(v40) != 4)
  {
    if ((*(*v41 + 296))(v41) == 1)
    {
      v42 = 1440;
      goto LABEL_50;
    }

    (*(*v41 + 296))(v41);
  }

  v42 = 256;
LABEL_50:
  *(*(*(a1 + 48) + 8) + 24) = [(caulk::product *)v40 setSessionBufferSize:v42];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (kAVVCScope)
    {
      v51 = *kAVVCScope;
      if (!v51)
      {
LABEL_63:
        v64 = *(a1 + 88);
        v65 = *(a1 + 40);
        v66 = v65 != 0;
        v26 = v72;
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_456;
        v72[3] = &unk_1E7EF5F40;
        v67 = v65;
        v68 = *(a1 + 64);
        v69 = *(a1 + 48);
        v72[4] = v67;
        v72[5] = v69;
        v72[6] = v68;
        ControllerImpl::safeNotifyAlwaysAsync(v64, v66, v72);
        goto LABEL_64;
      }
    }

    else
    {
      v51 = MEMORY[0x1E69E9C10];
      v62 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v63 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136315650;
      v78 = "ControllerImpl.mm";
      v79 = 1024;
      v80 = 5610;
      v81 = 1024;
      LODWORD(v82) = v63;
      _os_log_impl(&dword_1BA5AC000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d activateAudioSessionForStream ERROR: Failed at setSessionBufferSize: %d", buf, 0x18u);
    }

    goto LABEL_63;
  }

  v52 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0);
  *(*(*(a1 + 48) + 8) + 24) = [v52 setSessionAudioHWControlFlagsForActivationMode:*(a1 + 104) withOptions:*(a1 + 112)];

  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v70 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0);
    [v70 setSessionState:1];
    goto LABEL_65;
  }

  v53 = CALog::LogObjIfEnabled(1, kAVVCScope);
  v54 = v53;
  if (v53 && os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v55 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 136315650;
    v78 = "ControllerImpl.mm";
    v79 = 1024;
    v80 = 5621;
    v81 = 1024;
    LODWORD(v82) = v55;
    _os_log_impl(&dword_1BA5AC000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d activateAudioSessionForStream ERROR: Failed at setSessionAudioHWControlFlagsForActivationMode: %d", buf, 0x18u);
  }

  v56 = *(a1 + 88);
  v57 = *(a1 + 40);
  v58 = v57 != 0;
  v26 = v71;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_457;
  v71[3] = &unk_1E7EF5F40;
  v59 = v57;
  v60 = *(a1 + 64);
  v61 = *(a1 + 48);
  v71[4] = v59;
  v71[5] = v61;
  v71[6] = v60;
  ControllerImpl::safeNotifyAlwaysAsync(v56, v58, v71);
LABEL_64:
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v70 = v26[4];
LABEL_65:
}