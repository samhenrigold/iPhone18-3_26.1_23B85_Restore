@interface ATAudioSessionPropertyManager
- (ATAudioSessionPropertyManager)initWithATAudioSessionClientImpl:(id)impl;
- (int)GetProperty:(unsigned int)property size:(unsigned int *)size data:(void *)data;
- (int)SetProperty:(unsigned int)property size:(unsigned int)size data:(const void *)data;
@end

@implementation ATAudioSessionPropertyManager

- (int)SetProperty:(unsigned int)property size:(unsigned int)size data:(const void *)data
{
  v7 = *&property;
  v50 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v9 = *kAudioSessionClientLogSubsystem;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "ATAudioSessionPropertyManager.mm";
    v44 = 1024;
    v45 = 219;
    v46 = 1024;
    v47 = v7;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SetProperty %d on AVAudioSession", buf, 0x18u);
  }

LABEL_8:
  asPropertyInfo::GetPropertyInfo(v40, v7);
  if ((v40[0] & 4) != 0)
  {
    if (v41 != size)
    {
      code = 561211770;
      if (kAudioSessionClientLogSubsystem)
      {
        avas = *kAudioSessionClientLogSubsystem;
        if (!avas)
        {
          return code;
        }
      }

      else
      {
        avas = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(avas, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_89;
      }

      *buf = 136315650;
      *&buf[4] = "ATAudioSessionPropertyManager.mm";
      v44 = 1024;
      v45 = 230;
      v46 = 1024;
      v47 = v7;
      v19 = "%25s:%-5d Invalid input size for property %d";
      goto LABEL_30;
    }

    WeakRetained = objc_loadWeakRetained(&self->mAsClientImpl);
    avas = [WeakRetained avas];

    if (!avas)
    {
      code = 560557673;
      goto LABEL_89;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = MEMORY[0x1E695DF50];
      v15 = [avas methodSignatureForSelector:v42];
      v16 = [v14 invocationWithMethodSignature:v15];

      if (v16)
      {
        [v16 setSelector:v42];
        [v16 setTarget:avas];
        v38 = &v39;
        v39 = 0;
        if (v7 <= 1752658801)
        {
          if (v7 > 1668114807)
          {
            if (v7 <= 1684431724)
            {
              if (v7 == 1668114808)
              {
LABEL_63:
                v25 = [ATAudioSessionUtils getCategoryOptionFromPropertyID:v7];
                if (*data)
                {
                  v26 = [avas categoryOptions]| v25;
                }

                else
                {
                  v26 = [avas categoryOptions]& ~v25;
                }

                *buf = v26;
                category = [avas category];
                [v16 setArgument:&category atIndex:2];
                [v16 setArgument:buf atIndex:3];
                [v16 setArgument:&v38 atIndex:4];

                goto LABEL_76;
              }

              v17 = 1668509803;
LABEL_62:
              if (v7 != v17)
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            if (v7 != 1684431725)
            {
              v17 = 1685414763;
              goto LABEL_62;
            }

            goto LABEL_68;
          }

          if (v7 == 1633902964)
          {
            v29 = *data;
            category = [ATAudioSessionUtils getAVASCategory:v29];
            if (category)
            {
              goto LABEL_69;
            }

            v36 = CALog::LogObjIfEnabled(1, kAudioSessionClientLogSubsystem, v30);
            v35 = v36;
            if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "ATAudioSessionPropertyManager.mm";
              v44 = 1024;
              v45 = 282;
              v46 = 1024;
              v47 = v29;
              _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid category %u", buf, 0x18u);
            }

            goto LABEL_98;
          }

          if (v7 != 1634956148)
          {
            v17 = 1667394677;
            goto LABEL_62;
          }

LABEL_70:
          *buf = *data;
          [v16 setArgument:buf atIndex:2];
          [v16 setArgument:&v38 atIndex:3];
          goto LABEL_76;
        }

        if (v7 <= 1836016740)
        {
          if (v7 != 1752658802)
          {
            if (v7 == 1768387427 || v7 == 1768907364)
            {
              *buf = *data;
              [v16 setArgument:buf atIndex:2];
              [v16 setArgument:&v38 atIndex:3];
            }

            goto LABEL_76;
          }
        }

        else
        {
          if (v7 <= 1886546286)
          {
            if (v7 == 1836016741)
            {
LABEL_68:
              v27 = *data;
              category = [ATAudioSessionUtils getAVASMode:v27];
              if (category)
              {
LABEL_69:
                [v16 setArgument:&category atIndex:2];
                [v16 setArgument:&v38 atIndex:3];

                goto LABEL_76;
              }

              v34 = CALog::LogObjIfEnabled(1, kAudioSessionClientLogSubsystem, v28);
              v35 = v34;
              if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "ATAudioSessionPropertyManager.mm";
                v44 = 1024;
                v45 = 298;
                v46 = 1024;
                v47 = v27;
                _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid mode %u", buf, 0x18u);
              }

LABEL_98:

              code = -50;
              goto LABEL_89;
            }

            if (v7 == 1870033508)
            {
              v23 = 1936747378;
              if (!*data)
              {
                v23 = 0;
              }

              *buf = v23;
              [v16 setArgument:buf atIndex:2];
              [v16 setArgument:&v38 atIndex:3];
            }

LABEL_76:
            [v16 invoke];
            LOBYTE(category) = 0;
            [v16 getReturnValue:&category];
            if (category)
            {
              code = 0;
LABEL_88:

              goto LABEL_89;
            }

            if (kAudioSessionClientLogSubsystem)
            {
              v31 = *kAudioSessionClientLogSubsystem;
              if (!v31)
              {
LABEL_85:
                code = 2003329396;
                if (v38 && [v39 code])
                {
                  code = [v39 code];
                }

                goto LABEL_88;
              }
            }

            else
            {
              v31 = MEMORY[0x1E69E9C10];
              v32 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "ATAudioSessionPropertyManager.mm";
              v44 = 1024;
              v45 = 363;
              v46 = 1024;
              v47 = v7;
              v48 = 2112;
              v49 = v39;
              _os_log_impl(&dword_1B9A08000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d FAILED to set property %d on AVAudioSession with error %@", buf, 0x22u);
            }

            goto LABEL_85;
          }

          if (v7 == 1886546287)
          {
            goto LABEL_70;
          }

          if (v7 != 1920166244)
          {
            goto LABEL_76;
          }
        }

        *buf = *data;
        [v16 setArgument:buf atIndex:2];
        [v16 setArgument:&v38 atIndex:3];
        goto LABEL_76;
      }

      code = 2003329396;
      if (kAudioSessionClientLogSubsystem)
      {
        v21 = *kAudioSessionClientLogSubsystem;
        if (!v21)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ATAudioSessionPropertyManager.mm";
        v44 = 1024;
        v45 = 241;
        v46 = 1024;
        v47 = v7;
        _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Error while setting property %d", buf, 0x18u);
      }
    }

    else
    {
      code = 2003329396;
      if (kAudioSessionClientLogSubsystem)
      {
        v21 = *kAudioSessionClientLogSubsystem;
        if (!v21)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ATAudioSessionPropertyManager.mm";
        v44 = 1024;
        v45 = 373;
        v46 = 1024;
        v47 = v7;
        _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Un-Supported property request to set: %d on AVAudioSession", buf, 0x18u);
      }
    }

    goto LABEL_89;
  }

  code = 1886681407;
  if (kAudioSessionClientLogSubsystem)
  {
    avas = *kAudioSessionClientLogSubsystem;
    if (!avas)
    {
      return code;
    }
  }

  else
  {
    avas = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(avas, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "ATAudioSessionPropertyManager.mm";
    v44 = 1024;
    v45 = 226;
    v46 = 1024;
    v47 = v7;
    v19 = "%25s:%-5d Invalid property request: property %d is not a write property";
LABEL_30:
    _os_log_impl(&dword_1B9A08000, avas, OS_LOG_TYPE_ERROR, v19, buf, 0x18u);
  }

LABEL_89:

  return code;
}

- (int)GetProperty:(unsigned int)property size:(unsigned int *)size data:(void *)data
{
  v7 = *&property;
  v44 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v9 = *kAudioSessionClientLogSubsystem;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v41 = "ATAudioSessionPropertyManager.mm";
    v42 = 1024;
    aSelector[0] = 60;
    LOWORD(aSelector[1]) = 1024;
    *(&aSelector[1] + 2) = v7;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d GetProperty %d from AVAudioSession", buf, 0x18u);
  }

LABEL_8:
  asPropertyInfo::GetPropertyInfo(buf, v7);
  if ((buf[0] & 2) != 0)
  {
    if (*size != v41)
    {
      v12 = 561211770;
      if (kAudioSessionClientLogSubsystem)
      {
        v13 = *kAudioSessionClientLogSubsystem;
        if (!v13)
        {
          return v12;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v34 = 136315650;
      v35 = "ATAudioSessionPropertyManager.mm";
      v36 = 1024;
      v37 = 71;
      v38 = 1024;
      v39 = v7;
      v18 = "%25s:%-5d Invalid input size for property %d";
      goto LABEL_33;
    }

    if (*(aSelector + 2))
    {
      WeakRetained = objc_loadWeakRetained(&self->mAsClientImpl);
      avas = [WeakRetained avas];

      if (!avas)
      {
        v13 = 0;
        v12 = 560557673;
        goto LABEL_34;
      }

      v16 = NSStringFromSelector(*(aSelector + 2));
      v13 = [avas valueForKey:v16];
    }

    else
    {
      v13 = 0;
    }

    v12 = 0;
    if (v7 > 1684431724)
    {
      if (v7 <= 1836016740)
      {
        if (v7 <= 1768382837)
        {
          if (v7 <= 1685414762)
          {
            if (v7 != 1684431725)
            {
              if (v7 != 1685288051)
              {
                goto LABEL_34;
              }

              goto LABEL_92;
            }

            goto LABEL_90;
          }

          if (v7 != 1685414763)
          {
            if (v7 != 1752658802)
            {
              goto LABEL_34;
            }

            goto LABEL_94;
          }

LABEL_89:
          v29 = [ATAudioSessionUtils getCategoryOptionFromPropertyID:v7];
          v12 = 0;
          *data = ([v13 unsignedLongValue]& v29) != 0;
          goto LABEL_34;
        }

        if (v7 <= 1768907363)
        {
          if (v7 != 1768382838)
          {
            v21 = 1768387427;
LABEL_84:
            if (v7 != v21)
            {
              goto LABEL_34;
            }

LABEL_85:
            [v13 floatValue];
            v12 = 0;
            *data = v28;
            goto LABEL_34;
          }

          goto LABEL_73;
        }

        if (v7 == 1768907364)
        {
          goto LABEL_85;
        }

        v22 = 1769173603;
LABEL_77:
        if (v7 != v22)
        {
          goto LABEL_34;
        }

        v12 = 0;
        v26 = &unk_1F37D4180;
LABEL_93:
        *data = v26;
        goto LABEL_34;
      }

      if (v7 <= 1919907187)
      {
        if (v7 <= 1869899889)
        {
          if (v7 == 1836016741)
          {
LABEL_90:
            if (*size == v41)
            {
              bOOLValue = [ATAudioSessionUtils getAudioSessionMode:v13];
              goto LABEL_74;
            }

            v31 = CALog::LogObjIfEnabled(1, kAudioSessionClientLogSubsystem, v11);
            v32 = v31;
            if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v34 = 136315650;
              v35 = "ATAudioSessionPropertyManager.mm";
              v36 = 1024;
              v37 = 109;
              v38 = 1024;
              v39 = v7;
              _os_log_impl(&dword_1B9A08000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid input size for property %d", &v34, 0x18u);
            }

LABEL_107:

            v12 = 561211770;
            goto LABEL_34;
          }

          v22 = 1868854132;
          goto LABEL_77;
        }

        if (v7 != 1869899890)
        {
          if (v7 != 1886546287)
          {
            goto LABEL_34;
          }

          goto LABEL_66;
        }

LABEL_73:
        bOOLValue = [v13 BOOLValue];
        goto LABEL_74;
      }

      if (v7 > 1936876402)
      {
        if (v7 != 1936876403)
        {
          if (v7 == 1954115685)
          {
            v27 = objc_loadWeakRetained(&self->mAsClientImpl);
            *data = [v27 interruptionType];

            v12 = 0;
          }

          goto LABEL_34;
        }

LABEL_92:
        v12 = 0;
        v26 = MEMORY[0x1E695E0F0];
        goto LABEL_93;
      }

      if (v7 == 1919907188)
      {
        longLongValue = v13;
        v13 = longLongValue;
      }

      else
      {
        if (v7 != 1920166244)
        {
          goto LABEL_34;
        }

        longLongValue = [v13 longLongValue];
      }

LABEL_101:
      v12 = 0;
      *data = longLongValue;
      goto LABEL_34;
    }

    if (v7 <= 1667788642)
    {
      if (v7 <= 1634956147)
      {
        if (v7 == 1633902964)
        {
          if (*size == v41)
          {
            bOOLValue = [ATAudioSessionUtils getAudioSessionCategory:v13];
            goto LABEL_74;
          }

          v33 = CALog::LogObjIfEnabled(1, kAudioSessionClientLogSubsystem, v11);
          v32 = v33;
          if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = 136315650;
            v35 = "ATAudioSessionPropertyManager.mm";
            v36 = 1024;
            v37 = 100;
            v38 = 1024;
            v39 = 1633902964;
            _os_log_impl(&dword_1B9A08000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid input size for property %d", &v34, 0x18u);
          }

          goto LABEL_107;
        }

        if (v7 != 1633907830 && v7 != 1634296182)
        {
          goto LABEL_34;
        }

        goto LABEL_73;
      }

      if (v7 > 1667785315)
      {
        if (v7 == 1667785316)
        {
          goto LABEL_85;
        }

        if (v7 != 1667787107)
        {
          goto LABEL_34;
        }

        goto LABEL_66;
      }

      if (v7 == 1634956148)
      {
LABEL_66:
        bOOLValue = [v13 unsignedIntValue];
LABEL_74:
        v12 = 0;
        *data = bOOLValue;
        goto LABEL_34;
      }

      v23 = 1667394677;
    }

    else
    {
      if (v7 <= 1668114807)
      {
        if (v7 > 1667789681)
        {
          if (v7 == 1667789682)
          {
LABEL_94:
            [v13 doubleValue];
            v12 = 0;
            *data = v30;
            goto LABEL_34;
          }

          v21 = 1667853428;
          goto LABEL_84;
        }

        if (v7 != 1667788643)
        {
          v21 = 1667788662;
          goto LABEL_84;
        }

        goto LABEL_66;
      }

      if (v7 <= 1668440433)
      {
        if (v7 == 1668114808)
        {
          goto LABEL_89;
        }

        v21 = 1668246644;
        goto LABEL_84;
      }

      if (v7 == 1668440434)
      {
        longLongValue = [ATAudioSessionUtils getRouteDescriptionFromAVASRouteDescription:v13];
        goto LABEL_101;
      }

      v23 = 1668509803;
    }

    if (v7 != v23)
    {
      goto LABEL_34;
    }

    goto LABEL_89;
  }

  v12 = 1886681407;
  if (kAudioSessionClientLogSubsystem)
  {
    v13 = *kAudioSessionClientLogSubsystem;
    if (!v13)
    {
      return v12;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v34 = 136315650;
    v35 = "ATAudioSessionPropertyManager.mm";
    v36 = 1024;
    v37 = 67;
    v38 = 1024;
    v39 = v7;
    v18 = "%25s:%-5d Invalid property request: property %d is not a read property";
LABEL_33:
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, v18, &v34, 0x18u);
  }

LABEL_34:

  return v12;
}

- (ATAudioSessionPropertyManager)initWithATAudioSessionClientImpl:(id)impl
{
  v17 = *MEMORY[0x1E69E9840];
  implCopy = impl;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v14 = "ATAudioSessionPropertyManager.mm";
    v15 = 1024;
    v16 = 40;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating ATAudioSessionPropertyManager", buf, 0x12u);
  }

LABEL_8:
  v12.receiver = self;
  v12.super_class = ATAudioSessionPropertyManager;
  v7 = [(ATAudioSessionPropertyManager *)&v12 init];
  v8 = v7;
  if (!v7)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (!implCopy)
  {
    if (kAudioSessionClientLogSubsystem)
    {
      v9 = *kAudioSessionClientLogSubsystem;
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "ATAudioSessionPropertyManager.mm";
      v15 = 1024;
      v16 = 46;
      _os_log_impl(&dword_1B9A08000, &v9->super, OS_LOG_TYPE_ERROR, "%25s:%-5d Passing nil ATAudioSessionClientImpl", buf, 0x12u);
    }

    goto LABEL_18;
  }

  objc_storeWeak(&v7->mAsClientImpl, implCopy);
  v9 = v8;
LABEL_19:

  return v9;
}

@end