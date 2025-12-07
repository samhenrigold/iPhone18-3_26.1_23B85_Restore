void sub_100003530(id a1)
{
  v1 = +[NSBundle allFrameworks];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 objectForInfoDictionaryKey:@"CFBundleName"];
        if ([v7 isEqualToString:@"Vision"])
        {
          v8 = [v6 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
          v9 = off_100101170;
          off_100101170 = v8;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

Class sub_100003AD0()
{
  if (qword_100104EC0 != -1)
  {
    sub_1000B4DB0();
  }

  result = objc_getClass("CMMotionManager");
  qword_100104EB8 = result;
  off_100101178 = sub_100003B24;
  return result;
}

void sub_100003F6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_100003F90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeStrong((*(a1 + 32) + 8), a2);
  if (WeakRetained || [v10 isEmpty])
  {
    v12 = [*(*(a1 + 32) + 16) voices];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];

    v14 = [WeakRetained _tableCellForVoiceViewModel:v13 indexPath:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_100004B00(uint64_t a1)
{
  Width = CVPixelBufferGetWidth(*(a1 + 40));
  Height = CVPixelBufferGetHeight(*(a1 + 40));
  if (Width >= Height)
  {
    v4 = Height;
  }

  else
  {
    v4 = Width;
  }

  v5 = v4;
  v6 = *(a1 + 32);
  [*(v6 + 48) setCropRect:{vcvtd_n_f64_u64(Width, 1uLL) - *(v6 + 72) * v5 * 0.5, vcvtd_n_f64_u64(Height, 1uLL) - *(v6 + 72) * v5 * 0.5, *(v6 + 72) * v5, *(v6 + 72) * v5}];
  [*(a1 + 32) processVideoFrame:*(a1 + 40)];
  v7 = *(a1 + 40);

  CFRelease(v7);
}

void sub_100004BFC(uint64_t a1)
{
  pixelBufferOut = 0;
  if (!CVPixelBufferCreate(0, 1uLL, 1uLL, 0x42475241u, 0, &pixelBufferOut))
  {
    [*(a1 + 32) processVideoFrame:pixelBufferOut];
  }

  CVPixelBufferRelease(pixelBufferOut);
}

void sub_100004E44(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 0;
  v1 = objc_retainBlock(*(a1 + 40));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_100005B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005B38(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAgreeFromObjectModel:v3];
}

void sub_100005B94(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005C24;
  block[3] = &unk_1000EDBC0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100005C24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _termsDisagree];
}

void sub_100005C64(id a1, BOOL a2, NSError *a3)
{
  v3 = @"Fail";
  if (a2)
  {
    v3 = @"Success";
  }

  NSLog(@"results = %@, with error = %@", v3, a3);
}

void sub_100005DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(@"Failed to mark terms as agreed in iCloud: %@", a2, a3, a4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005E3C;
  block[3] = &unk_1000EDB20;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LogControl();
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

id sub_100006538(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1000F2F88 table:@"Localizable"];

  return v3;
}

void sub_1000065E0(id a1)
{
  if (MGGetBoolAnswer())
  {
    v1 = 1;
  }

  else
  {
    v1 = MGGetBoolAnswer();
  }

  byte_100104ED0 = v1;
}

id sub_100006620(char a1)
{
  if ((a1 - 2) > 3u)
  {
    v1 = @"iPhone";
  }

  else
  {
    v1 = off_1000EDC68[(a1 - 2)];
  }

  return sub_100006668(@"Localizable", v1);
}

id sub_100006668(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[NSBundle mainBundle];
  v6 = sub_1000066EC(v5, v4, v3);

  return v6;
}

void *sub_1000066EC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (qword_100104ED8 != -1)
  {
    sub_1000B4E38();
  }

  if (byte_100104ED0 == 1)
  {
    v8 = [v7 stringByAppendingString:@"_GT"];
    v9 = [v5 localizedStringForKey:v8 value:@"_GT" table:v6];

    if (![v9 isEqual:@"_GT"])
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_7:
  if (![v9 length])
  {
    v10 = [v5 localizedStringForKey:v7 value:&stru_1000F2F88 table:v6];

    v9 = v10;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

void *sub_10000680C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = sub_100006668(@"Localizable", v5);
  v13 = 0;
  v8 = [[NSString alloc] initWithValidatedFormat:v7 validFormatSpecifiers:v6 arguments:a3 error:&v13];

  v9 = v13;
  v10 = v8;
  if (!v8)
  {
    sub_1000B4E4C(v5, v9);
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

id sub_1000068E0()
{
  v0 = CUAddSuffixForCurrentDeviceClass();
  v1 = [v0 stringByAppendingString:@"_HOMEPOD"];

  return v1;
}

id sub_100006934()
{
  v2[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v2[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v3[0] = &__kCFBooleanTrue;
  v3[1] = &__kCFBooleanTrue;
  v0 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];

  return v0;
}

uint64_t sub_1000069D0(void *a1)
{
  strlen([a1 UTF8String]);
  v1 = 1;
  while (TextSep())
  {
    if (strnicmpx())
    {
      if (strnicmpx())
      {
        if (strnicmpx())
        {
          if (strnicmpx())
          {
            if (strnicmpx())
            {
              if (strnicmpx())
              {
                if (strnicmpx())
                {
                  if (strnicmpx())
                  {
                    if (strnicmpx())
                    {
                      if (strnicmpx())
                      {
                        if (strnicmpx())
                        {
                          if (strnicmpx())
                          {
                            if (strnicmpx())
                            {
                              if (strnicmpx())
                              {
                                if (strnicmpx())
                                {
                                  if (strnicmpx())
                                  {
                                    if (strnicmpx())
                                    {
                                      if (strnicmpx())
                                      {
                                        if (strnicmpx())
                                        {
                                          if (strnicmpx())
                                          {
                                            if (strnicmpx())
                                            {
                                              if (strnicmpx())
                                              {
                                                if (strnicmpx())
                                                {
                                                  if (strnicmpx())
                                                  {
                                                    if (strnicmp_prefix())
                                                    {
                                                      if (strnicmp_prefix())
                                                      {
                                                        if (strnicmp_prefix())
                                                        {
                                                          if (strnicmp_prefix())
                                                          {
                                                            if (strnicmp_prefix())
                                                            {
                                                              if (strnicmp_prefix())
                                                              {
                                                                if (strnicmp_prefix())
                                                                {
                                                                  if (strnicmpx())
                                                                  {
                                                                    if (strnicmpx())
                                                                    {
                                                                      if (strnicmpx())
                                                                      {
                                                                        if (strnicmpx())
                                                                        {
                                                                          if (strnicmpx())
                                                                          {
                                                                            if (!strnicmpx())
                                                                            {
                                                                              v1 |= 0x10000000000uLL;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v1 |= 0x1000000000uLL;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v1 |= 0x800000000uLL;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v1 |= 0x400000000uLL;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v1 |= 0x200000000uLL;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v1 |= &_mh_execute_header;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v1 |= 0x80000000uLL;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v1 |= 0x20000000uLL;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v1 |= 0x10000000uLL;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v1 |= 0x8000000uLL;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v1 |= 0x4000000uLL;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v1 |= 0x40000000uLL;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v1 |= 0x2000000uLL;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v1 |= 0x1000000uLL;
                                                  }
                                                }

                                                else
                                                {
                                                  v1 |= 0x800000uLL;
                                                }
                                              }

                                              else
                                              {
                                                v1 |= 0x400000uLL;
                                              }
                                            }

                                            else
                                            {
                                              v1 |= 0x200000uLL;
                                            }
                                          }

                                          else
                                          {
                                            v1 |= 0x100000uLL;
                                          }
                                        }

                                        else
                                        {
                                          v1 |= 0x80000uLL;
                                        }
                                      }

                                      else
                                      {
                                        v1 |= 0x40000uLL;
                                      }
                                    }

                                    else
                                    {
                                      v1 |= 0x20000uLL;
                                    }
                                  }

                                  else
                                  {
                                    v1 |= 0x10000uLL;
                                  }
                                }

                                else
                                {
                                  v1 |= 0x8000uLL;
                                }
                              }

                              else
                              {
                                v1 |= 0x4000uLL;
                              }
                            }

                            else
                            {
                              v1 |= 0x2000uLL;
                            }
                          }

                          else
                          {
                            v1 |= 0x1000uLL;
                          }
                        }

                        else
                        {
                          v1 |= 0x800uLL;
                        }
                      }

                      else
                      {
                        v1 |= 0x400uLL;
                      }
                    }

                    else
                    {
                      v1 |= 0x200uLL;
                    }
                  }

                  else
                  {
                    v1 |= 0x100uLL;
                  }
                }

                else
                {
                  v1 |= 0x80uLL;
                }
              }

              else
              {
                v1 |= 0x40uLL;
              }
            }

            else
            {
              v1 |= 0x20uLL;
            }
          }

          else
          {
            v1 |= 0x10uLL;
          }
        }

        else
        {
          v1 |= 8uLL;
        }
      }

      else
      {
        v1 |= 4uLL;
      }
    }

    else
    {
      v1 |= 2uLL;
    }
  }

  return v1;
}

void sub_100006EE4(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, id *a5, id *a6, void **a7, id *a8, void **a9, void **a10, id *a11)
{
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_1000079D0;
  v70 = sub_1000079E0;
  v71 = 0;
  if ((a3 & 4) == 0)
  {
    v15 = 0;
    if ((a3 & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_89:
    v46 = sub_100006658(@"AUDIO_ACCESSORY");
    v47 = +[UIColor grayColor];
    v18 = 0;
    v19 = @"UnsupportedAccessory.png";
    goto LABEL_122;
  }

  if (dword_100101360 <= 30 && (dword_100101360 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 30, "Looking up assets for product ID %u, color code %u, %#{flags}\n", a1, a2, a3, &unk_1000BB860);
  }

  v23 = mach_absolute_time();
  v24 = a2;
  if ((a3 & 0x1060) == 0x60)
  {
    v25 = a2 != 2 || (a3 >> 11) & 1;
    v26 = ((a2 != 2) & (a3 >> 11) & 1) != 0 ? 2 : 1;
    v24 = v25 ? v26 : 2;
    if (dword_100101360 <= 30 && (dword_100101360 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 30, "SVSBluetoothDeviceInfoToUIInfoEx stereo/mixed color code %u, assetcode %u \n", a2, v24);
    }
  }

  if ((a3 & 8) != 0)
  {
    v29 = [[SFDeviceAssetQuery alloc] initWithHomePodColor:v24 version:a1];
  }

  else
  {
    v29 = [[SFDeviceAssetQuery alloc] initWithBluetoothProductIdentifier:a1 color:v24];
  }

  v30 = v29;
  v31 = dispatch_semaphore_create(0);
  v32 = objc_alloc_init(SFDeviceAssetManager);
  v33 = dispatch_queue_create("MobileAssetLookup", 0);
  [v32 setDispatchQueue:v33];

  [v32 activate];
  v34 = [SFDeviceAssetRequestConfiguration alloc];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000079E8;
  v60[3] = &unk_1000EDC90;
  v64 = a1;
  v65 = a2;
  v62 = &v66;
  v63 = v23;
  v35 = v31;
  v61 = v35;
  v36 = [v34 initWithQueryResultHandler:v60];
  [v36 setTimeout:3.0];
  [v32 getAssetBundleForDeviceQuery:v30 withRequestConfiguration:v36];
  v37 = dispatch_time(0, 5000000000);
  v38 = dispatch_semaphore_wait(v35, v37);
  if (v38)
  {
    if (dword_100101360 <= 60)
    {
      v39 = v38;
      if (dword_100101360 != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 60, "### Get MobileAsset timeout (%ld)\n", v39);
      }
    }
  }

  v15 = 0;
  if ((a3 & 8) != 0)
  {
    v40 = v67[5];
    if (v40)
    {
      v15 = [v40 pathForResource:@"ProxCard_connect-engage.mov" ofType:0];
      if (!v15)
      {
        if (dword_100101360 <= 90 && (dword_100101360 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 90, "### HomePod intro movie asset missing\n");
        }

        v15 = 0;
      }
    }
  }

  if ((a3 & 8) == 0)
  {
    goto LABEL_89;
  }

LABEL_3:
  v16 = GestaltCopyAnswer();
  v17 = [v16 intValue];
  if ((a3 & 0x10) != 0)
  {
    if (SFDeviceClassCodeGet() != 3)
    {
      if (v17 == 2)
      {
        v18 = @"ProxCard_Lockup-iPhone9_1@2x.png";
      }

      else
      {
        v18 = @"ProxCard_Lockup-iPhone9_2@3x.png";
      }

      v19 = [v67[5] pathForResource:v18 ofType:0];
      if (v19)
      {
        goto LABEL_118;
      }

      if (dword_100101360 <= 90 && (dword_100101360 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 90, "### HomePod iPhone lockup asset missing\n");
      }

      goto LABEL_92;
    }

    v19 = [v67[5] pathForResource:@"ProxCard_Lockup-iPad@2x.png" ofType:0];
    if (!v19)
    {
      if (dword_100101360 <= 90 && (dword_100101360 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 90, "### HomePod iPad lockup asset missing\n");
      }

      v18 = 0;
      goto LABEL_92;
    }

    goto LABEL_85;
  }

  if ((a3 & 0x400) != 0)
  {
    v20 = @"HomePod";
    if (a1 == 6)
    {
      v20 = @"HomePod6";
    }

    if ((a3 & 0x20) != 0)
    {
      if ((a3 & 0x40) != 0)
      {
        if ((a2 != 2) != ((a3 & 0x800) == 0))
        {
          v28 = @"TVAudio_Stereo%@_LeftWhite_RightBlack";
        }

        else
        {
          v28 = @"TVAudio_Stereo%@_LeftBlack_RightWhite";
        }

        goto LABEL_84;
      }

      v21 = @"TVAudio_Stereo%@_BothWhite";
      v22 = @"TVAudio_Stereo%@_BothBlack";
    }

    else
    {
      v21 = @"TVAudio_Single%@_White";
      v22 = @"TVAudio_Single%@_Black";
    }

    if (a2 == 2)
    {
      v28 = v21;
    }

    else
    {
      v28 = v22;
    }

LABEL_84:
    v19 = [NSString stringWithFormat:v28, v20];
LABEL_85:
    v18 = 0;
    goto LABEL_118;
  }

  if ((a3 & 0x20) != 0)
  {
    if ((a3 & 0x40) != 0)
    {
      if (a2 == 1)
      {
        v41 = @"2";
      }

      else
      {
        v41 = @"1";
      }

      v42 = v41;
      if ((a3 & 0x1000) == 0)
      {
        if (a2 == 2)
        {
          v43 = (a3 >> 11) & 1;
        }

        else
        {
          v43 = 1;
        }

        if ((a2 != 2) & (a3 >> 11))
        {
          v44 = @"1";
        }

        else
        {
          v44 = @"2";
        }

        if (!v43)
        {
          v44 = @"1";
        }

        v45 = v44;

        v42 = v45;
      }

      if (dword_100101360 <= 30 && (dword_100101360 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 30, "SVSBluetoothDeviceInfoToUIInfoEx stereo role unknown: '%@'\n", v42);
      }

      if ((a3 & 2) != 0)
      {
        v48 = @"ProxCard_StereoPair-Mixed-CL_%@-Small@%dx.png";
      }

      else
      {
        v48 = @"ProxCard_StereoPair-Mixed-CL_%@-Large@%dx.png";
      }

      v18 = [NSString stringWithFormat:v48, v42, v17];
      if (dword_100101360 <= 30 && (dword_100101360 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 30, "SVSBluetoothDeviceInfoToUIInfoEx fileName: '%@'\n", v18);
      }

      v19 = [v67[5] pathForResource:v18 ofType:0];
      if (v19)
      {

        goto LABEL_118;
      }

      v27 = [NSString stringWithFormat:@"ProxCard_StereoPair-Mixed-CL_%@@%dx.png", v42, v17];

      v19 = [v67[5] pathForResource:v27 ofType:0];
      if (dword_100101360 <= 90 && (dword_100101360 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 90, "### HomePod stereo mixed asset missing: '%@'\n", v27);
      }
    }

    else
    {
      v27 = 0;
      v19 = 0;
    }

    if ((a3 & 2) != 0)
    {
      v49 = @"ProxCard_StereoPair-Small@%dx.png";
    }

    else
    {
      v49 = @"ProxCard_StereoPair-Large@%dx.png";
    }

    v50 = [NSString stringWithFormat:v49, v17];

    v51 = [NSString stringWithFormat:@"ProxCard_StereoPair@%dx.png", v17];

    if (v19 || ([v67[5] pathForResource:v51 ofType:0], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = v51;
      goto LABEL_118;
    }

    v18 = [NSString stringWithFormat:@"ProxCard_StereoPair-Small@%dx.png", v17];

    v19 = [v67[5] pathForResource:v18 ofType:0];
    if (v19)
    {
      goto LABEL_118;
    }

    if (dword_100101360 <= 90 && (dword_100101360 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 90, "### HomePod stereo asset missing: '%@'\n", v18);
    }

    goto LABEL_92;
  }

  v18 = [NSString stringWithFormat:@"ProxCard_Setup@%dx.png", v17];
  v19 = [v67[5] pathForResource:v18 ofType:0];
  if (!v19)
  {
    if (dword_100101360 <= 90 && (dword_100101360 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)", 90, "### HomePod setup asset missing\n");
    }

LABEL_92:
    v19 = @"UnsupportedAccessory.png";
  }

LABEL_118:
  if (a1 == 5)
  {
    v52 = @"AS_HOMEPODMINI";
  }

  else
  {
    v52 = @"HOMEPOD";
  }

  v46 = sub_100006658(v52);

  v47 = 0;
LABEL_122:
  if (a7)
  {
    v53 = *a7;
    *a7 = 0;
  }

  if (a10)
  {
    v54 = *a10;
    *a10 = 0;
  }

  if (a9)
  {
    v55 = *a9;
    *a9 = 0;
  }

  if (a5)
  {
    objc_storeStrong(a5, v47);
  }

  if (a8)
  {
    objc_storeStrong(a8, v15);
  }

  if (a6)
  {
    objc_storeStrong(a6, v46);
  }

  if (a4)
  {
    objc_storeStrong(a4, v19);
  }

  if (a11)
  {
    objc_storeStrong(a11, v67[5]);
  }

  _Block_object_dispose(&v66, 8);
}

void sub_100007988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000079D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000079E8(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v20 = a3;
  v10 = a5;
  mach_absolute_time();
  UpTicksToSecondsF();
  v12 = v11 * 1000.0;
  if (v10)
  {
    if (dword_100101360 <= 60 && (dword_100101360 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)_block_invoke", 60, "### Look up assets for product ID %u (aka %@), color code %u failed after %f ms: %{error}\n", *(a1 + 56), v20, *(a1 + 60), *&v12, v10);
    }
  }

  else if (dword_100101360 <= 30 && (dword_100101360 != -1 || _LogCategory_Initialize()))
  {
    v13 = *(a1 + 60);
    if (a4)
    {
      v14 = "yes";
    }

    else
    {
      v14 = "no";
    }

    v15 = *(a1 + 56);
    v16 = [v9 bundleIdentifier];
    LogPrintF(&dword_100101360, "void SVSBluetoothDeviceInfoToUIInfoEx(uint32_t, SFBluetoothColorCode, SVSBluetoothDeviceInfoFlags, NSString * _Nonnull __strong * _Nullable, UIColor * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSString * _Nonnull __strong * _Nullable, NSBundle * _Nonnull __strong * _Nullable)_block_invoke", 30, "Found assets for product ID %u (aka %@), color code %u, fallback %s, %f ms, bundle %@\n", v15, v20, v13, v14, *&v12, v16);
  }

  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v9;
  v19 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000086DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000086F8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained && [*(WeakRetained + 3) isEqual:*(a1 + 32)])
  {
    v9 = v8[3];
    v8[3] = 0;
  }

  Int64 = CFDictionaryGetInt64();
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, Int64 != 0, v12);
  }
}

void sub_10000891C(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (dword_100101490 <= 30 && (dword_100101490 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100101490, "void HDSMetricsLog(NSString * _Nonnull __strong, NSDictionary<NSString *,NSObject *> * _Nonnull __strong)", 30, "MetricEvent '%@' : %##@\n", v4, v3);
  }

  off_100101500(v4, v3);
}

void sub_1000089D8(void *a1, void *a2)
{
  v3 = qword_100104EE0;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    sub_1000B4EDC();
  }

  off_100101500 = dlsym(qword_100104EE8, "AnalyticsSendEvent");
  off_100101500(v5, v4);
}

void sub_100008D14(CMTime *a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v24 = *a1;
  if (a5)
  {
    v6 = a3 - 1;
    if (a3 != 1)
    {
      v10 = 0;
      v11 = 0;
      v19 = a3 - 2;
      v12 = a5;
      do
      {
        lhs = a1[v10];
        rhs = v24;
        CMTimeSubtract(&time, &lhs, &rhs);
        Seconds = CMTimeGetSeconds(&time);
        v14 = v10 + 1;
        lhs = a1[v14];
        rhs = v24;
        CMTimeSubtract(&time, &lhs, &rhs);
        v15 = CMTimeGetSeconds(&time);
        lhs = *(a4 + 24 * v11);
        rhs = v24;
        CMTimeSubtract(&time, &lhs, &rhs);
        v16 = CMTimeGetSeconds(&time);
        if (v16 <= Seconds)
        {
          v18 = *(a2 + 4 * v10);
        }

        else
        {
          v17 = v15;
          if (v16 <= v17)
          {
            v18 = *(a2 + 4 * v10) + (((v16 - Seconds) * (*(a2 + 4 * v14) - *(a2 + 4 * v10))) / (v17 - Seconds));
          }

          else
          {
            if (v10 < v19)
            {
              ++v10;
              continue;
            }

            v18 = *(a2 + 4 * v14);
          }
        }

        *(a6 + 4 * v11++) = v18;
      }

      while (v11 < v12 && v10 < v6);
    }
  }
}

void sub_100008FA4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (dword_100101508 <= 30 && (dword_100101508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100101508, "[AppleMusicServiceUtilities serviceEnabled:]_block_invoke", 30, "SubscriptionStatusFetcher: subscriptionStatus=%@, error=%@\n", v6, v5);
  }

  if (v6 && !v5 && [v6 statusType] == 3)
  {
    [v6 isInFreeTrial];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100009368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009394(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_100101508 <= 90 && (dword_100101508 != -1 || _LogCategory_Initialize()))
    {
      sub_1000B4EF0(v5);
    }
  }

  else if ([v7 count])
  {
    if (dword_100101508 <= 40 && (dword_100101508 != -1 || _LogCategory_Initialize()))
    {
      sub_1000B4F30(v7);
    }
  }

  else if (dword_100101508 <= 90 && (dword_100101508 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B4F70();
  }

  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAmsDeviceRegistrationPromise:0];
}

void sub_100009B60(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[HPdetector_SceneClassifier_B238 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100009E28(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [HPdetector_SceneClassifier_B238Output alloc];
    v7 = [v12 featureValueForName:@"HomePodDetected"];
    v8 = [v7 multiArrayValue];
    v9 = [(HPdetector_SceneClassifier_B238Output *)v6 initWithHomePodDetected:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10000A000(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [HPdetector_SceneClassifier_B238Output alloc];
    v7 = [v12 featureValueForName:@"HomePodDetected"];
    v8 = [v7 multiArrayValue];
    v9 = [(HPdetector_SceneClassifier_B238Output *)v6 initWithHomePodDetected:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10000A9AC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[HPdetector_SmartCam_B238 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000AC74(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [HPdetector_SmartCam_B238Output alloc];
    v7 = [v12 featureValueForName:@"HomePodDetected"];
    v8 = [v7 multiArrayValue];
    v9 = [(HPdetector_SmartCam_B238Output *)v6 initWithHomePodDetected:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10000AE4C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [HPdetector_SmartCam_B238Output alloc];
    v7 = [v12 featureValueForName:@"HomePodDetected"];
    v8 = [v7 multiArrayValue];
    v9 = [(HPdetector_SmartCam_B238Output *)v6 initWithHomePodDetected:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10000B7F8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[HPdetector_SceneClassifier_B520 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000BAC0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [HPdetector_SceneClassifier_B520Output alloc];
    v7 = [v12 featureValueForName:@"HomePodDetected"];
    v8 = [v7 multiArrayValue];
    v9 = [(HPdetector_SceneClassifier_B520Output *)v6 initWithHomePodDetected:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10000BC98(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [HPdetector_SceneClassifier_B520Output alloc];
    v7 = [v12 featureValueForName:@"HomePodDetected"];
    v8 = [v7 multiArrayValue];
    v9 = [(HPdetector_SceneClassifier_B520Output *)v6 initWithHomePodDetected:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

unint64_t sub_10000BFCC()
{
  v11 = 0xD000000000000013;
  v12 = 0x80000001000C0EA0;
  _StringGuts.grow(_:)(18);

  v10[0] = 0x64657463656C6573;
  v10[1] = 0xEF3D6E6F69746341;
  v1._countAndFlagsBits = sub_10000FEC4(*v0);
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x64657463656C6573;
  v3._object = 0xEF3D6E6F69746341;
  String.append(_:)(v3);

  sub_10000F25C((v0 + 8), &v8, &qword_1001025D0, &unk_1000BD010);
  if (v9)
  {
    sub_10000EC04(&v8._countAndFlagsBits, v10);
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    v4._object = 0xEF3D6E6F6974704FLL;
    v4._countAndFlagsBits = 0x64657463656C6573;
    String.append(_:)(v4);
    sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
    _print_unlocked<A, B>(_:_:)();
    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    String.append(_:)(v8);

    sub_10000E70C(v10);
  }

  else
  {
    sub_10000EBA4(&v8, &qword_1001025D0, &unk_1000BD010);
  }

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v11;
}

uint64_t sub_10000C190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  v4 = a2 + 8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  strcpy(v53, "selectedAction");
  HIBYTE(v53[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v5 = sub_100053B3C(&v54), (v6 & 1) == 0))
  {
    sub_10000EA04(&v54);
    goto LABEL_6;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v5, &v48);
  sub_10000EA04(&v54);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    strcpy(v53, "buttonID");
    BYTE1(v53[1]) = 0;
    WORD1(v53[1]) = 0;
    HIDWORD(v53[1]) = -402653184;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v7 = sub_100053B3C(&v54), (v8 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v7, &v48);
      sub_10000EA04(&v54);
      if (swift_dynamicCast())
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_10000EA04(&v54);
    }

    v10 = 0;
    goto LABEL_14;
  }

LABEL_9:
  v9 = sub_100010634(v53[0], v53[1]);
  if (v9 == 38)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

LABEL_14:
  *a2 = v10;
  strcpy(v53, "selectedOption");
  HIBYTE(v53[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v11 = sub_100053B3C(&v54);
  if ((v12 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v11, &v48);
  sub_10000EA04(&v54);
  sub_10000E6C4(&qword_1001019A8, &qword_1000BC278);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v13 = v53[0];
  v48 = 1701869940;
  v49 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v13 + 16) || (v14 = sub_100053B3C(&v54), (v15 & 1) == 0))
  {

LABEL_23:
    sub_10000EA04(&v54);
LABEL_24:
    strcpy(v53, "optionID");
    BYTE1(v53[1]) = 0;
    WORD1(v53[1]) = 0;
    HIDWORD(v53[1]) = -402653184;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v21 = sub_100053B3C(&v54), (v22 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v21, &v48);
      sub_10000EA04(&v54);

      if (swift_dynamicCast())
      {
        v24 = v53[0];
        v23 = v53[1];
        *(&v56 + 1) = &type metadata for SimpleOption;
        *&v57 = &off_1000EF0B8;
        v25 = swift_allocObject();
        v54 = v25;
        v25[1].Kind = v24;
        v25[1].Description = v23;
        v25[2].Kind = v24;
        v25[2].Description = v23;
        v25[3].Kind = v24;
        v25[3].Description = v23;
        swift_bridgeObjectRetain_n();
LABEL_28:
        v26 = &v54;
        return sub_10000EAFC(v26, v4);
      }
    }

    else
    {

      sub_10000EA04(&v54);
    }

    result = sub_10000EBA4(v4, &qword_1001025D0, &unk_1000BD010);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
    return result;
  }

  v16 = v14;

  v17 = (*(v13 + 56) + 16 * v16);
  v19 = *v17;
  v18 = v17[1];

  sub_10000EA04(&v54);
  v54 = &type metadata for SimpleOption;
  sub_10000E6C4(&qword_1001019B0, &qword_1000BC280);
  if (v19 == String.init<A>(describing:)() && v18 == v20)
  {

LABEL_34:

    sub_10000FAAC(v13, &v54);

    v29 = v55;
    if (v55)
    {
      v30 = v54;
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v29;
      v32 = v57;
      *(v31 + 32) = v56;
      *(v31 + 48) = v32;
      v33 = &off_1000EF0B8;
      v34 = &type metadata for SimpleOption;
    }

    else
    {
      v31 = 0;
      v34 = 0;
      v33 = 0;
      v49 = 0;
      v50 = 0;
    }

    v48 = v31;
    v51 = v34;
    v52 = v33;
    v26 = &v48;
    return sub_10000EAFC(v26, v4);
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_34;
  }

  v54 = &type metadata for RoomOption;
  sub_10000E6C4(&qword_1001019B8, &qword_1000BC288);
  if (v19 == String.init<A>(describing:)() && v18 == v35)
  {

LABEL_42:
    v37 = sub_100099428(v13);
    if (v39)
    {
      v41 = v37;
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v45 = swift_allocObject();
      LOBYTE(v45[1].Kind) = v41 & 1;
      v45[1].Description = v42;
      v45[2].Kind = v43;
      LOBYTE(v45[2].Description) = v44 & 1;
      v46 = &off_1000F1C80;
      v47 = &type metadata for RoomOption;
    }

    else
    {
      v45 = 0;
      v47 = 0;
      v46 = 0;
      v55 = 0;
      *&v56 = 0;
    }

    v54 = v45;
    *(&v56 + 1) = v47;
    *&v57 = v46;
    goto LABEL_28;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_42;
  }
}

unint64_t sub_10000C754()
{
  sub_10000F25C((v0 + 8), v13, &qword_1001025D0, &unk_1000BD010);
  if (v14)
  {
    sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
    sub_10000E6C4(&qword_1001019D0, &qword_1000BC2A0);
    if (swift_dynamicCast())
    {
      if (*(&v16 + 1))
      {
        sub_10000EC04(&v15, v18);
        sub_10000E6C4(&qword_1001019C8, &unk_1000BD3E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000BB8E0;
        strcpy(&v15, "selectedAction");
        HIBYTE(v15) = -18;
        AnyHashable.init<A>(_:)();
        v2 = sub_10000FEC4(*v0);
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v2;
        *(inited + 80) = v3;
        strcpy(&v15, "selectedOption");
        HIBYTE(v15) = -18;
        AnyHashable.init<A>(_:)();
        v4 = v19;
        v5 = v20;
        sub_10000EC1C(v18, v19);
        v6 = (*(v5 + 16))(v4, v5);
        *(inited + 168) = sub_10000E6C4(&qword_1001019A8, &qword_1000BC278);
        *(inited + 144) = v6;
        v7 = sub_10000D8A8(inited);
        swift_setDeallocating();
        sub_10000E6C4(&qword_100101970, &unk_1000BC240);
        swift_arrayDestroy();
        sub_10000E70C(v18);
        return v7;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_10000EBA4(v13, &qword_1001025D0, &unk_1000BD010);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_10000EBA4(&v15, &qword_1001019C0, &unk_1000BC290);
  sub_10000F25C((v0 + 8), v18, &qword_1001025D0, &unk_1000BD010);
  v8 = v19;
  sub_10000EBA4(v18, &qword_1001025D0, &unk_1000BD010);
  sub_10000E6C4(&qword_1001019C8, &unk_1000BD3E0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1000BB8E0;
  strcpy(v18, "selectedAction");
  v18[15] = -18;
  AnyHashable.init<A>(_:)();
  v10 = sub_10000FEC4(*v0);
  *(v9 + 96) = &type metadata for String;
  *(v9 + 72) = v10;
  *(v9 + 80) = v11;
  strcpy(v18, "selectedOption");
  v18[15] = -18;
  AnyHashable.init<A>(_:)();
  *(v9 + 168) = &type metadata for String;
  if (v8)
  {
    *(v9 + 144) = 0xD000000000000024;
    *(v9 + 152) = 0x80000001000C0EC0;
  }

  else
  {
    *(v9 + 144) = 7104878;
    *(v9 + 152) = 0xE300000000000000;
  }

  v7 = sub_10000D8A8(v9);
  swift_setDeallocating();
  sub_10000E6C4(&qword_100101970, &unk_1000BC240);
  swift_arrayDestroy();
  return v7;
}

id variable initialization expression of SVSLPCActivityIndicatorViewController.v()
{
  v0 = objc_allocWithZone(type metadata accessor for SVSLEDPasscodeActivityIndicatorView());

  return [v0 init];
}

id variable initialization expression of SVSHomePodIDViewController.preView()
{
  type metadata accessor for PreviewView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of SVSHomePodIDViewController.session()
{
  v0 = objc_allocWithZone(AVCaptureSession);

  return [v0 init];
}

id variable initialization expression of SVSHomePodIDViewController.feedbackGenerator()
{
  v0 = objc_allocWithZone(UINotificationFeedbackGenerator);

  return [v0 init];
}

id variable initialization expression of SVSHomePodIDViewController.output()
{
  v0 = objc_allocWithZone(AVCaptureVideoDataOutput);

  return [v0 init];
}

_DWORD *sub_10000CC8C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_10000CCEC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000CD1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000CD48@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

Swift::Int sub_10000CEA4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000CF18(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000CF5C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000CFD4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000D054@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000D0B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000E9BC(a1);

  *a2 = v3;
  return result;
}

void *sub_10000D0FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000D10C(uint64_t a1)
{
  v2 = sub_10000E484(&qword_1001023C0, type metadata accessor for Key, &unk_1000BCBB8);
  v3 = sub_10000E484(&qword_100101B00, type metadata accessor for Key, &unk_1000BC5B8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D1CC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D1F8(uint64_t a1)
{
  v2 = sub_10000E484(&qword_1001025E0, type metadata accessor for AATermsEntry, &unk_1000BCB34);
  v3 = sub_10000E484(&qword_100101AC0, type metadata accessor for AATermsEntry, &unk_1000BCA94);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D2B4(uint64_t a1)
{
  v2 = sub_10000E484(&qword_100103990, type metadata accessor for SKCloudServiceSetupOptionsKey, &unk_1000BCB74);
  v3 = sub_10000E484(&unk_100101AF0, type metadata accessor for SKCloudServiceSetupOptionsKey, &unk_1000BC6D8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D370(uint64_t a1)
{
  v2 = sub_10000E484(&qword_100101AD8, type metadata accessor for SKCloudServiceSetupAction, &unk_1000BC84C);
  v3 = sub_10000E484(&unk_100101AE0, type metadata accessor for SKCloudServiceSetupAction, &unk_1000BC7EC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D42C(uint64_t a1)
{
  v2 = sub_10000E484(&qword_100101AC8, type metadata accessor for SKCloudServiceSetupMessageIdentifier, &unk_1000BC9A4);
  v3 = sub_10000E484(&qword_100101AD0, type metadata accessor for SKCloudServiceSetupMessageIdentifier, &unk_1000BC944);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D4E8@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000D530(uint64_t a1)
{
  v2 = sub_10000E484(&qword_100101B08, type metadata accessor for OpenExternalURLOptionsKey, &unk_1000BCBFC);
  v3 = sub_10000E484(&qword_100101B10, type metadata accessor for OpenExternalURLOptionsKey, &unk_1000BC498);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D5EC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000D628(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000D67C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10000D6F0(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t sub_10000D778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_100101B18, &qword_1000BCC40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, v15, &unk_100101B20, qword_1000BCC48);
      result = sub_100053B3C(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 16 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000D8A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_100101968, &qword_1000BC238);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, v13, &qword_100101970, &unk_1000BC240);
      result = sub_100053B3C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000E9F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000D9E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_1001018E8, &qword_1000BC218);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100053B80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000DAF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_1001018D8, &qword_1000BC208);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, &v11, &qword_1001018E0, &qword_1000BC210);
      v5 = v11;
      result = sub_100055BD4();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000E9F4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000DC20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_100101978, &qword_1000BCF70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, &v13, &qword_100101980, &qword_1000BC250);
      v5 = v13;
      v6 = v14;
      result = sub_100053B80(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000E9F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000DD50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_100101988, &qword_1000BC258);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100053B80(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000DE54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_100101950, &unk_1000BC220);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100055BD4();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000DF4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_100101958, &unk_1000BE900);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, &v11, &qword_100101960, &qword_1000BC230);
      v5 = v11;
      result = sub_100055BD4();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000E9F4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000E074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_1001019D8, &qword_1000BC2A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, &v17, &qword_1001019E0, &qword_1000BC2B0);
      v5 = v17;
      v6 = v18;
      result = sub_100053B80(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 56 * result;
      v11 = v19;
      v12 = v20;
      v13 = v21;
      *(v10 + 48) = v22;
      *(v10 + 16) = v12;
      *(v10 + 32) = v13;
      *v10 = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000E290(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10000E2A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10000E2C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_10000E320(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_10000E484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000E6C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E70C(void *a1)
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

unint64_t sub_10000E758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_100101998, &qword_1000BC268);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, &v11, &qword_1001019A0, &qword_1000BC270);
      v5 = v11;
      result = sub_100055BD4();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000E9F4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000E880(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_100101990, &qword_1000BC260);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100053B80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000E984(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10000E9BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

_OWORD *sub_10000E9F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000EA58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000EAB4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000EAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_1001025D0, &unk_1000BD010);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EB6C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000EBA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000E6C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EC04(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10000EC1C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_10000ED00(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000F25C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000E6C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000F35C()
{
  v1 = v0;
  v2 = sub_10000D778(_swiftEmptyArrayStorage);
  AnyHashable.init<A>(_:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100054E0C(0x704F656C706D6953, 0xEC0000006E6F6974, v14, isUniquelyReferenced_nonNull_native);
  sub_10000EA04(v14);
  AnyHashable.init<A>(_:)();
  v4 = *v1;
  v5 = v1[1];

  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100054E0C(v4, v5, v14, v6);
  sub_10000EA04(v14);
  AnyHashable.init<A>(_:)();
  v7 = v1[4];
  v8 = v1[5];

  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_100054E0C(v7, v8, v14, v9);
  sub_10000EA04(v14);
  AnyHashable.init<A>(_:)();
  v11 = v1[2];
  v10 = v1[3];

  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_100054E0C(v11, v10, v14, v12);
  sub_10000EA04(v14);
  return v2;
}

uint64_t sub_10000F550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100054E0C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_10000EA04(a3);
    *v3 = v15;
  }

  else
  {
    v10 = sub_100053B3C(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_10005540C();
        v14 = v16;
      }

      sub_10000EA04(*(v14 + 48) + 40 * v12);

      sub_10000F908(v12, v14);
      result = sub_10000EA04(a3);
      *v4 = v14;
    }

    else
    {

      return sub_10000EA04(a3);
    }
  }

  return result;
}

uint64_t sub_10000F670()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10000F6A4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10000F6D4()
{

  v0._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 1031365995;
  strcpy(&v11, "<SimpleOption ");
  v2._object = 0xE400000000000000;
  String.append(_:)(v2);

  countAndFlagsBits = v11._countAndFlagsBits;
  _StringGuts.grow(_:)(16);

  strcpy(&v11, "displayValue=");
  HIWORD(v11._object) = -4864;

  v4._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  String.append(_:)(v11);

  v6._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3D65756C6176;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  return countAndFlagsBits;
}

uint64_t sub_10000F908(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_10000FCF4(*(a2 + 48) + 40 * v6, v24);
      v9 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10000EA04(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000FAAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AnyHashable.init<A>(_:)();
  v4 = sub_1000A303C(v14, 0x6E776F6B6E75, 0xE600000000000000, a1);
  v6 = v5;

  sub_10000EA04(v14);
  AnyHashable.init<A>(_:)();
  v7 = sub_1000A303C(v14, 0x76206E776F6B6E75, 0xEC00000065756C61, a1);
  v9 = v8;

  sub_10000EA04(v14);
  AnyHashable.init<A>(_:)();
  v10 = sub_1000A303C(v14, 0xD000000000000013, 0x80000001000C0EF0, a1);
  v12 = v11;

  result = sub_10000EA04(v14);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v7;
  a2[5] = v9;
  return result;
}

__n128 sub_10000FC3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000FC50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FC98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomePodSetupStepAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomePodSetupStepAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000FEC4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x7972616D697270;
      break;
    case 2:
      result = 0x7261646E6F636573;
      break;
    case 3:
      result = 0x65756E69746E6F63;
      break;
    case 4:
      result = 0x6F6572657473;
      break;
    case 5:
      result = 1869508461;
      break;
    case 6:
      result = 0x654C6F6572657473;
      break;
    case 7:
      result = 0x69526F6572657473;
      break;
    case 8:
      result = 0x6565726761;
      break;
    case 9:
      result = 0x65726741746E6F64;
      break;
    case 10:
      result = 0x6E456C61756E616DLL;
      break;
    case 11:
      result = 0x7361506B61657073;
      break;
    case 12:
      result = 0x69466957776F6873;
      break;
    case 13:
      result = 0x534449656C707061;
      break;
    case 14:
      result = 0x73676E6974746573;
      break;
    case 15:
      result = 0x655373656E755469;
      break;
    case 16:
      result = 0x776F4E746F6ELL;
      break;
    case 17:
      result = 0x754274726F706572;
      break;
    case 18:
      result = 0x6F4C6E4F6E727574;
      break;
    case 19:
      result = 0x4C66664F6E727574;
      break;
    case 20:
      result = 0x747542636973756DLL;
      break;
    case 21:
      result = 0x7542657461647075;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0x4D5264756F6C4369;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
      result = 0x654674726F706572;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x7269417472617473;
      break;
    case 29:
      result = 0x79536C65636E6163;
      break;
    case 30:
      result = 0x69416C65636E6163;
      break;
    case 31:
      result = 0x6C65737055326868;
      break;
    case 32:
      result = 0x6E7261654C326868;
      break;
    case 33:
      result = 0x6C65636E6163;
      break;
    case 34:
      result = 0x75436C65636E6163;
      break;
    case 35:
    case 36:
      result = 0xD000000000000017;
      break;
    case 37:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000103D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000FEC4(*a1);
  v5 = v4;
  if (v3 == sub_10000FEC4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100010460()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000FEC4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000104C4(uint64_t a1)
{
  sub_10000FEC4(*v1);
  String.hash(into:)();
}

Swift::Int sub_100010518(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10000FEC4(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100010578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100010634(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000105A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000FEC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000105E0()
{
  result = qword_100101CB0;
  if (!qword_100101CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101CB0);
  }

  return result;
}

unint64_t sub_100010634(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100010688()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100101CB8);
  v1 = sub_100012AAC(v0, qword_100101CB8);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100010750(void *a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_viewModel;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_bodyText];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_style] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_images] = _swiftEmptyArrayStorage;
  v6 = &v1[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_estimatedSecondsText];
  strcpy(&v1[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_estimatedSecondsText], "Estimating...");
  *(v6 + 7) = -4864;
  *&v1[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_currentProgress] = -1082130432;
  v1[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_didShowActivityIndicator] = 0;
  v7 = [objc_allocWithZone(type metadata accessor for HomePodSetupProgressBarView()) initWithCardStyle:0];
  *&v1[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_myContentView] = v7;
  v8 = v7;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for HomePodSetupFileTransferViewController(0);
  v9 = objc_msgSendSuper2(&v11, "initWithContentView:", v8);

  return v9;
}

void sub_100010900()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for HomePodSetupFileTransferViewController(0);
  v34.receiver = v1;
  v34.super_class = v12;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v13, v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_1001015E0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100101CB8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupFileTransferViewController: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100012BAC(v4, v11, type metadata accessor for HomePodSetupViewModel);
    if (qword_1001015E0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100101CB8);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_100012C14(v9, type metadata accessor for HomePodSetupViewModel);
      v25 = sub_1000B08A0(v23, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupFileTransferViewController: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100012C14(v9, type metadata accessor for HomePodSetupViewModel);
    }

    sub_100011260(v11);
    v26 = *&v11[v5[10]];
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v26, sub_100012CAC, v27);

    if (v11[v5[40]] == 1)
    {
      sub_100010E48();
    }

    else if ((v11[v5[19]] & 2) == 0 && *&v11[v5[20] + 8])
    {
      v28 = String._bridgeToObjectiveC()();
      v29 = String._bridgeToObjectiveC()();
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = [v1 dismissalConfirmationActionWithTitle:v28 message:v29 confirmButtonTitle:v30 cancelButtonTitle:v31];

      [v1 setDismissButtonAction:v32];
    }

    sub_100012C14(v11, type metadata accessor for HomePodSetupViewModel);
  }
}

void sub_100010E48()
{
  v1 = objc_opt_self();
  v2 = [v1 sysDropBuildMode] == 2 || objc_msgSend(v1, "sysDropBuildMode") == 3;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = v0;
  v5 = String._bridgeToObjectiveC()();
  v8[4] = sub_100012CEC;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10003DFD0;
  v8[3] = &unk_1000EF1D0;
  v6 = _Block_copy(v8);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  [v4 setDismissButtonAction:v7];
}

void sub_100010FF4(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1001015E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100101CB8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupFileTransferViewController: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      memset(v17, 0, sizeof(v17));
      LOBYTE(v16) = v2;
      sub_100012DA0(v14, v17, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v16);
      swift_unknownObjectRelease();
      sub_100012E08(&v16);
    }
  }
}

id sub_100011260(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for AdjustedImage(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = String._bridgeToObjectiveC()();
  [v2 setTitle:v11];

  v12 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v12];

  v13 = type metadata accessor for HomePodSetupViewModel(0);
  sub_100011AD0(*(a1 + v13[7]), *(a1 + v13[7] + 8));
  sub_100011C28(*(a1 + v13[41]));
  v14 = *(a1 + v13[11]);
  if (v14 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if (qword_1001015E0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100012AAC(v15, qword_100101CB8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "HomePodSetupIconContent: iconImages used", v18, 2u);
    }

    sub_10001178C(v14);
    goto LABEL_16;
  }

  sub_10000F25C(a1 + v13[28], v6, &unk_100102610, &unk_1000BD130);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000EBA4(v6, &unk_100102610, &unk_1000BD130);
  }

  else
  {
    sub_100012BAC(v6, v10, type metadata accessor for AdjustedImage);
    if (qword_1001015E0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100012AAC(v19, qword_100101CB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "HomePodSetupIconContent: iconImages empty, prodImage used", v22, 2u);
    }

    v23 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v10];
    sub_100083828(v10 + *(v7 + 20));
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = *&v2[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_myContentView];
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000BCE00;
    *(v25 + 32) = v23;
    v26 = *&v24[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews];
    *&v24[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews] = v25;
    v27 = v24;
    v28 = v23;
    sub_10008FA14(v26);

    sub_100012C14(v10, type metadata accessor for AdjustedImage);
  }

LABEL_16:
  if ((v2[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_didShowActivityIndicator] & 1) == 0 && *(a1 + v13[39]) == 1)
  {
    v2[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_didShowActivityIndicator] = 1;
    v29 = String._bridgeToObjectiveC()();
    v30 = sub_100006658(v29);

    if (!v30)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();
    }

    [v2 showActivityIndicatorWithStatus:v30];
  }

  return [v2 setDismissalType:*(a1 + v13[19])];
}

id sub_10001178C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_images;

  v5 = sub_100093610(v4, a1);

  if ((v5 & 1) == 0)
  {
    *&v1[v3] = a1;

    result = [v1 isViewLoaded];
    if (result)
    {
      v12 = _swiftEmptyArrayStorage;
      v7 = v1;

      sub_100012750(v8, v7, &v12);

      v9 = *&v7[OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_myContentView];
      v10 = *&v9[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews];
      *&v9[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews] = v12;
      v11 = v9;

      sub_10008FA14(v10);
    }
  }

  return result;
}

void sub_1000118A8(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = *a1;
  v10 = [objc_allocWithZone(PRXImageView) initWithStyle:*(a2 + OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_style)];
  [v10 setImage:v9];
  v11 = v10;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(a2 + v12, v8, &qword_100103420, &unk_1000BCE90);
  v13 = type metadata accessor for HomePodSetupViewModel(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13))
  {

    sub_10000EBA4(v8, &qword_100103420, &unk_1000BCE90);
  }

  else
  {
    v14 = &v8[*(v13 + 128)];
    v15 = *v14;
    v16 = v14[8];
    sub_10000EBA4(v8, &qword_100103420, &unk_1000BCE90);
    if (v16 != 1)
    {
      [v11 setContentMode:v15];
    }
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_100011AD0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_bodyText);
  v5 = *(v2 + OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_bodyText) == a1 && *(v2 + OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_bodyText + 8) == a2;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *v4 = a1;
    v4[1] = a2;

    v7 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
    v8 = String._bridgeToObjectiveC()();
    [v7 setText:v8];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = *(v2 + OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_myContentView);
    v12 = *&v9[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabel];
    *&v9[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabel] = v7;
    v10 = v7;
    v11 = v9;
    sub_10008FC18(v12);
  }
}

void sub_100011C28(float a1)
{
  v2 = v1;
  if (qword_1001015E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100101CB8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePodSetupFileTransferViewController: setting progress view to %f", v7, 0xCu);
  }

  v9 = OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_myContentView;
  if (!*(*(v2 + OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_myContentView) + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView))
  {
    v10 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:0];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = *(v2 + v9);
    v12 = *&v11[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView];
    *&v11[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView] = v10;
    v13 = v10;
    v14 = v11;
    sub_10008FC04(v12);
  }

  v15 = (LODWORD(a1) & 0x7FFFFF) != 0 && (~LODWORD(a1) & 0x7F800000) == 0;
  if (!v15 && a1 >= 0.0)
  {
    if (*(v2 + OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_currentProgress) == a1)
    {
      oslog = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v16, "HomePodSetupFileTransferViewController: progresses are the same, not updating progress view", v17, 2u);
      }
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_currentProgress) = a1;
      v18 = *(*(v2 + v9) + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView);
      if (v18)
      {
        *&v8 = a1;

        [v18 setProgress:1 animated:v8];
      }
    }
  }
}

id sub_100011EF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupFileTransferViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupFileTransferViewController(uint64_t a1)
{
  result = qword_100101D00;
  if (!qword_100101D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012020(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100012108(uint64_t a1)
{
  if (!qword_100102560)
  {
    type metadata accessor for HomePodSetupViewModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100102560);
    }
  }
}

uint64_t sub_100012160(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1000121B4(uint64_t a1, char a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() alertControllerWithTitle:v6 message:v9 preferredStyle:1];

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v34 = sub_100012D48;
  v35 = v13;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003DFD0;
  v33 = &unk_1000EF220;
  v14 = _Block_copy(&aBlock);
  v15 = a3;

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v12 style:0 handler:v14];
  _Block_release(v14);

  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v34 = sub_100012D68;
  v35 = v20;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003DFD0;
  v33 = &unk_1000EF270;
  v21 = _Block_copy(&aBlock);
  v22 = v15;

  v23 = [v16 actionWithTitle:v19 style:0 handler:v21];
  _Block_release(v21);

  v24 = String._bridgeToObjectiveC()();
  v25 = sub_100006658(v24);

  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v10;
  v34 = sub_100012D88;
  v35 = v26;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003DFD0;
  v33 = &unk_1000EF2C0;
  v27 = _Block_copy(&aBlock);
  v28 = v10;

  v29 = [v16 actionWithTitle:v25 style:1 handler:v27];
  _Block_release(v27);

  [v28 addAction:v17];
  [v28 addAction:v29];
  if ((a2 & 1) == 0)
  {
    [v28 addAction:v23];
  }

  [v28 setPreferredAction:v17];
  [v22 presentViewController:v28 animated:1 completion:0];
}

uint64_t sub_1000126C0(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    memset(v8, 0, sizeof(v8));
    v7[0] = a3;
    sub_100012DA0(v5, v8, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v7);
    swift_unknownObjectRelease();
    return sub_100012E08(v7);
  }

  return result;
}

void sub_100012750(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_1000118A8(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id sub_100012850(uint64_t a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  if (qword_1001015E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100101CB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetupFileTransferViewController: presenter:didUpdate viewModel", v9, 2u);
  }

  sub_100012AE4(a1, v5);
  v10 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = OBJC_IVAR____TtC14HDSViewService38HomePodSetupFileTransferViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v5, v1 + v11, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v1 isViewLoaded];
  if (result)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "HomePodSetupFileTransferViewController: configureUI", v15, 2u);
    }

    return sub_100011260(a1);
  }

  return result;
}

uint64_t sub_100012AAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100012AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100012B48(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100012BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100012C14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100012C74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012CB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012D10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012DA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000E6C4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100012EA4()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100101D10);
  v1 = sub_100012AAC(v0, qword_100101D10);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100012F6C()
{
  _StringGuts.grow(_:)(16);

  strcpy(&v10, "serialNumber=");
  HIWORD(v10._object) = -4864;

  v0._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(v10);

  strcpy(&v10, "modelNum=");
  WORD1(v10._object) = 0;
  HIDWORD(v10._object) = -385875968;

  v2._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);

  String.append(_:)(v10);

  strcpy(&v10, "wifiAddress=");
  HIWORD(v10._object) = -5120;

  v4._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  String.append(_:)(v10);

  _StringGuts.grow(_:)(16);

  strcpy(&v10, "featureFlags=");
  HIWORD(v10._object) = -4864;
  v6._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  String.append(_:)(v10);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  return 0xD00000000000001DLL;
}

uint64_t sub_10001325C(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1000144DC();
    v11 = static OS_dispatch_queue.main.getter();
    v14 = v5;
    v12 = v11;
    aBlock[4] = sub_100014528;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100091194;
    aBlock[3] = &unk_1000EF3C0;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100014530();
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v14);
  }

  return result;
}

id sub_1000134FC(uint64_t a1)
{
  result = [*(a1 + 72) preAuthResponse];
  if (result)
  {
    v3 = result;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_10001363C(v4);

    if (v5)
    {
      sub_100013C84(v5, &v18);
      v6 = v19;
      v7 = v20;
      v8 = v21;
      v9 = v22;
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      *(a1 + 16) = v18;
      *(a1 + 24) = v6;
      *(a1 + 40) = v7;
      *(a1 + 48) = v8;
      *(a1 + 64) = v9;
      sub_100014634(&v18, &v17);
      sub_10001466C(v10, v11, v12, v13, v14, v15);
      *(a1 + 80) = 1;
      v16 = *(a1 + 88);

      v16(&v18);

      return sub_1000146BC(&v18);
    }
  }

  return result;
}

unint64_t sub_10001363C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000E6C4(&qword_100101978, &qword_1000BCF70);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10000FCF4(*(a1 + 48) + 40 * v12, v27);
        sub_10000EA58(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_10000FCF4(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_10000EA58(v25 + 8, v20);
        sub_10000EBA4(v24, &qword_100101E30, &qword_1000BCF78);
        v21 = v18;
        sub_10000E9F4(v20, v22);
        v13 = v21;
        sub_10000E9F4(v22, v23);
        sub_10000E9F4(v23, &v21);
        result = sub_100053B80(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_10000E70C(v10);
          result = sub_10000E9F4(&v21, v10);
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
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_10000E9F4(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_10000EBA4(v24, &qword_100101E30, &qword_1000BCF78);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100013918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1001015E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100101D10);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *(v3 + 72);
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetupPreAuth: preAuth requested for session: %@", v9, 0xCu);
    sub_10000EBA4(v10, &qword_100101E38, &unk_1000BCF80);
  }

  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  v13 = *(v3 + 24);
  if (v13 && (v14 = *(v3 + 16), v15 = *(v3 + 32), v16 = *(v3 + 40), v17 = *(v3 + 48), v18 = *(v3 + 56), v19 = *(v3 + 64), v24[0] = v14, v24[1] = v13, v24[2] = v15, v24[3] = v16, v24[4] = v17, v24[5] = v18, v24[6] = v19, *(v3 + 80) == 1))
  {
    v20 = (v3 + 80);
    v23 = *(v3 + 88);
    sub_1000146EC(v14, v13, v15, v16, v17, v18);

    v23(v24);
    sub_10001466C(v14, v13, v15, v16, v17, v18);
  }

  else
  {
    v21 = *(v3 + 72);
    [v21 setPauseAfterPreAuth:1];
    [v21 activate];
    v20 = (v3 + 80);
  }

  return *v20;
}

uint64_t sub_100013B68()
{
  sub_10001466C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100013BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100013C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100013C84(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100053B80(7238500, 0xE300000000000000), (v5 & 1) != 0) && (sub_10000EA58(*(a1 + 56) + 32 * v4, v56), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v55;
    v52 = v54;
  }

  else
  {
    v52 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = *(a1 + 16);

  if (v7 && (v8 = sub_100053B80(5137517, 0xE300000000000000), (v9 & 1) != 0) && (sub_10000EA58(*(a1 + 56) + 32 * v8, v56), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v55;
    v53 = v54;
  }

  else
  {
    v53 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = *(a1 + 16);

  if (v11 && (v12 = sub_100053B80(0x414D69666977, 0xE600000000000000), (v13 & 1) != 0) && (sub_10000EA58(*(a1 + 56) + 32 * v12, v56), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v54;
    v15 = v55;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = *(a1 + 16);

  if (v16 && (v17 = sub_100053B80(26214, 0xE200000000000000), (v18 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v17, v56);

    if (swift_dynamicCast())
    {
      v19 = v54;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_22:

  v20 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v20 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    if (qword_1001015E8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100012AAC(v21, qword_100101D10);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "HomePodSetupPreAuthFetcher: No serial number returned from PreAuthorization call.", v24, 2u);
    }
  }

  v25 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v25 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    if (qword_1001015E8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100012AAC(v26, qword_100101D10);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "HomePodSetupPreAuthFetcher: No model number returned from PreAuthorization call.", v29, 2u);
    }
  }

  v30 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v30 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    if (v19)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (qword_1001015E8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100012AAC(v31, qword_100101D10);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "HomePodSetupPreAuthFetcher: No model WiFi MAC address returned from PreAuthorization call.", v34, 2u);
  }

  if (!v19)
  {
LABEL_48:
    if (qword_1001015E8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100012AAC(v35, qword_100101D10);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "HomePodSetupPreAuthFetcher: No featureFlags returned from PreAuthorization call.", v38, 2u);
    }
  }

LABEL_53:
  v56[0] = v52;
  v56[1] = v6;
  v56[2] = v53;
  v56[3] = v10;
  v56[4] = v14;
  v56[5] = v15;
  v50 = v19;
  v51 = v15;
  v56[6] = v19;
  v39 = sub_100012F6C();
  v41 = v40;
  if (qword_1001015E8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100012AAC(v42, qword_100101D10);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = v14;
    v47 = v10;
    v48 = swift_slowAlloc();
    v54 = v48;
    *v45 = 136315138;
    v49 = sub_1000B08A0(v39, v41, &v54);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "HomePodSetupPreAuthFetcher: results=%s", v45, 0xCu);
    sub_10000E70C(v48);
    v10 = v47;
    v14 = v46;
  }

  else
  {
  }

  *a2 = v52;
  a2[1] = v6;
  a2[2] = v53;
  a2[3] = v10;
  a2[4] = v14;
  a2[5] = v51;
  a2[6] = v50;
}

uint64_t sub_100014370(void *a1)
{
  *(v1 + 80) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = a1;
  *(v1 + 88) = nullsub_1;
  *(v1 + 96) = 0;
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1000144BC;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100091194;
  v7[3] = &unk_1000EF398;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v5 setPreAuthHandler:v4];
  _Block_release(v4);
  return v1;
}

uint64_t sub_100014484()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000144C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000144DC()
{
  result = qword_1001025F0;
  if (!qword_1001025F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001025F0);
  }

  return result;
}

unint64_t sub_100014530()
{
  result = qword_1001042F0;
  if (!qword_1001042F0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001042F0);
  }

  return result;
}

unint64_t sub_100014588()
{
  result = qword_100104300;
  if (!qword_100104300)
  {
    sub_1000145EC(&unk_100102600, &qword_1000BE4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100104300);
  }

  return result;
}

uint64_t sub_1000145EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10001466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_1000146EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_100014744()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100101E40);
  v1 = sub_100012AAC(v0, qword_100101E40);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10001480C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___moreInfoButton;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___moreInfoButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___moreInfoButton);
  }

  else
  {
    v4 = [objc_opt_self() buttonWithType:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10001488C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___disclaimerLabel;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___disclaimerLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___disclaimerLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(PRXLabel) initWithStyle:3];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100014904()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v81 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v81 - v10;
  v12 = type metadata accessor for HomePodSetupDisclaimerViewController(0);
  v84.receiver = v1;
  v84.super_class = v12;
  objc_msgSendSuper2(&v84, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController_viewModel;
  swift_beginAccess();
  sub_100016238(&v1[v13], v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_100016310(v4, v11);
    if (qword_1001015F0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100101E40);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v82 = v11;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v83 = v23;
      *v22 = 136315138;
      v24 = *v9;
      v25 = v9[1];

      sub_100016374(v9);
      v26 = sub_1000B08A0(v24, v25, &v83);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupDisclaimer: viewDidLoad with title %s", v22, 0xCu);
      sub_10000E70C(v23);
      v11 = v82;
    }

    else
    {

      sub_100016374(v9);
    }

    v27 = String._bridgeToObjectiveC()();
    [v1 setTitle:v27];

    v28 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v28];

    v29 = sub_10001488C();
    v30 = String._bridgeToObjectiveC()();
    [v29 setText:v30];

    v31 = *&v11[v5[19]];
    [v1 setDismissalType:v31];
    v32 = *&v11[v5[10]];
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v32, sub_1000163D0, v33);

    if ((v31 & 2) == 0 && *&v11[v5[20] + 8])
    {
      v34 = String._bridgeToObjectiveC()();
      v35 = String._bridgeToObjectiveC()();
      v36 = String._bridgeToObjectiveC()();
      v37 = String._bridgeToObjectiveC()();
      v38 = [v1 dismissalConfirmationActionWithTitle:v34 message:v35 confirmButtonTitle:v36 cancelButtonTitle:v37];

      v11 = v82;
      [v1 setDismissButtonAction:v38];
    }

    v39 = sub_10001480C();
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

    v40 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___moreInfoButton;
    v41 = *&v11[v5[24] + 8];
    v42 = *&v1[OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___moreInfoButton];
    if (v41)
    {
      v41 = String._bridgeToObjectiveC()();
    }

    [v42 setTitle:v41 forState:0];

    [*&v1[v40] addTarget:v1 action:"moreInfoButtonTapped:" forControlEvents:0x2000];
    v43 = [*&v1[v40] titleLabel];
    if (v43)
    {
      v44 = v43;
      v45 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
      v46 = [v45 fontDescriptorWithSymbolicTraits:2];

      if (!v46)
      {
        __break(1u);
        return;
      }

      v47 = v46;
      [v47 pointSize];
      v49 = [objc_opt_self() fontWithDescriptor:v47 size:v48];

      [v44 setFont:v49];
      [v44 setAdjustsFontForContentSizeCategory:1];
      [v44 setNumberOfLines:0];
    }

    v50 = [v1 contentView];
    [v50 addSubview:*&v1[v40]];

    v51 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___disclaimerLabel;
    [*&v1[OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___disclaimerLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = [v1 contentView];
    [v52 addSubview:*&v1[v51]];

    v53 = [v1 contentView];
    v54 = [v53 mainContentGuide];

    v81 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1000BCF90;
    v56 = [*&v1[v51] topAnchor];
    v57 = [v54 topAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    *(v55 + 32) = v58;
    v59 = [*&v1[v51] leadingAnchor];
    v60 = [v54 leadingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v55 + 40) = v61;
    v62 = [*&v1[v51] trailingAnchor];
    v63 = [v54 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    *(v55 + 48) = v64;
    v65 = [*&v1[v40] topAnchor];
    v66 = [*&v1[v51] bottomAnchor];
    v67 = [v65 constraintEqualToAnchor:v66 constant:8.0];

    *(v55 + 56) = v67;
    v68 = [*&v1[v40] leadingAnchor];
    v69 = [v54 leadingAnchor];
    v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69];

    *(v55 + 64) = v70;
    v71 = [*&v1[v40] trailingAnchor];
    v72 = [v54 trailingAnchor];
    v73 = [v71 constraintLessThanOrEqualToAnchor:v72];

    *(v55 + 72) = v73;
    v74 = [*&v1[v40] centerXAnchor];
    v75 = [v54 centerXAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];

    *(v55 + 80) = v76;
    v77 = [*&v1[v40] bottomAnchor];
    v78 = [v54 bottomAnchor];
    v79 = [v77 constraintEqualToAnchor:v78];

    *(v55 + 88) = v79;
    sub_1000163D8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v81 activateConstraints:isa];

    sub_100016374(v82);
    return;
  }

  sub_1000162A8(v4);
  if (qword_1001015F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100012AAC(v14, qword_100101E40);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupDisclaimer: viewDidLoad failed because viewModel not set.", v17, 2u);
  }
}

void sub_100015428(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1001015F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100101E40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupDisclaimer: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      memset(v17, 0, sizeof(v17));
      LOBYTE(v16) = v2;
      sub_100012DA0(v14, v17, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v16);
      swift_unknownObjectRelease();
      sub_100012E08(&v16);
    }
  }
}

void sub_1000156DC()
{
  if (qword_1001015F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100101E40);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "HomePodSetupDisclaimer: termsManager loaded handler was called", v2, 2u);
  }
}

uint64_t sub_1000157C4(char a1, uint64_t a2)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  if (a1)
  {
    v2 = 8;
  }

  else
  {
    v2 = 9;
  }

  memset(v20, 0, sizeof(v20));
  v19[0] = v2;
  sub_100012DA0(v17, v20, &qword_1001025D0, &unk_1000BD010);
  if (qword_1001015F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100101E40);
  sub_1000161DC(v19, v17);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_10000BFCC();
    v10 = v9;
    sub_100012E08(v17);
    v11 = sub_1000B08A0(v8, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupDisclaimer: termsManager completion handler was called so selecting the %s button.", v6, 0xCu);
    sub_10000E70C(v7);
  }

  else
  {

    sub_100012E08(v17);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      sub_10007A070(v19);
      swift_unknownObjectRelease();
    }
  }

  return sub_100012E08(v19);
}

id sub_100015A3C(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  v4 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v4];

  v5 = sub_10001488C();
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = String._bridgeToObjectiveC()();
  [v5 setText:v7];

  v8 = *(a1 + *(v6 + 76));

  return [v1 setDismissalType:v8];
}

id sub_100015BF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupDisclaimerViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupDisclaimerViewController(uint64_t a1)
{
  result = qword_100101E98;
  if (!qword_100101E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015D00(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100015DA8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_100015DFC()
{
  v1 = [objc_allocWithZone(SFTermsAndConditionsManager) initWithPresenter:v0 showWarranty:1];
  v10 = sub_1000156DC;
  v11 = 0;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100091194;
  v9 = &unk_1000EF410;
  v2 = _Block_copy(&v6);
  [v1 setLoadedHandler:v2];
  _Block_release(v2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_1000161D4;
  v11 = v3;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000A3260;
  v9 = &unk_1000EF460;
  v4 = _Block_copy(&v6);

  [v1 setCompletionHandler:v4];
  _Block_release(v4);
  [v1 activate];
  v5 = *(v0 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController_termsManager);
  *(v0 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController_termsManager) = v1;
}

id sub_100015F9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (qword_1001015F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100101E40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupDisclaimer: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v2 isViewLoaded];
  if (result)
  {
    return sub_100015A3C(a1);
  }

  return result;
}

uint64_t sub_100016184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001619C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016238(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000162A8(uint64_t a1)
{
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016374(uint64_t a1)
{
  v2 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000163D8()
{
  result = qword_100102620;
  if (!qword_100102620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100102620);
  }

  return result;
}

char *sub_10001642C(void *a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_feature] = a1;
  v3 = objc_allocWithZone(PRXImageView);
  v4 = a1;
  v5 = [v3 initWithStyle:1];
  *&v1[OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_iconView] = v5;
  v6 = [objc_allocWithZone(PRXLabel) initWithStyle:4];
  *&v1[OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_titleLabel] = v6;
  v7 = [objc_allocWithZone(PRXLabel) initWithStyle:5];
  *&v1[OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_subTitleLabel] = v7;
  v63.receiver = v1;
  v63.super_class = type metadata accessor for HomePodSetupFeatureView();
  v8 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_iconView;
  v10 = *&v8[OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_iconView];
  v11 = v8;
  v12 = v10;
  v13 = [v4 icon];
  [v12 setImage:v13];

  v14 = OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_titleLabel;
  v15 = *&v11[OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_titleLabel];
  v16 = [v4 title];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v15 setText:v16];

  v17 = OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_subTitleLabel;
  v18 = *&v11[OBJC_IVAR____TtC14HDSViewService23HomePodSetupFeatureView_subTitleLabel];
  v19 = [v4 detailText];
  v62 = v4;
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [v18 setText:v19];

  [*&v11[v14] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v11[v17] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v8[v9] setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = v11;
  v21 = *&v8[v9];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 addSubview:*&v11[v14]];
  [v22 addSubview:*&v11[v17]];
  v61 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000BD020;
  v60 = v17;
  v24 = [*&v8[v9] topAnchor];
  v25 = [v22 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v23 + 32) = v26;
  v27 = [*&v8[v9] leadingAnchor];
  v28 = [v22 leadingAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v23 + 40) = v29;
  v30 = [*&v8[v9] bottomAnchor];
  v31 = [v22 bottomAnchor];

  v32 = [v30 constraintLessThanOrEqualToAnchor:v31];
  *(v23 + 48) = v32;
  v33 = [*&v8[v9] heightAnchor];
  v34 = [v33 constraintEqualToConstant:40.0];

  *(v23 + 56) = v34;
  v35 = [*&v8[v9] widthAnchor];
  v36 = [v35 constraintEqualToConstant:40.0];

  *(v23 + 64) = v36;
  v37 = [*&v11[v14] topAnchor];
  v38 = [v22 topAnchor];

  v39 = [v37 constraintEqualToAnchor:v38];
  *(v23 + 72) = v39;
  v40 = [*&v11[v14] leadingAnchor];
  v41 = [*&v8[v9] trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:12.0];

  *(v23 + 80) = v42;
  v43 = [*&v11[v14] trailingAnchor];
  v44 = [v22 trailingAnchor];

  v45 = [v43 constraintEqualToAnchor:v44];
  *(v23 + 88) = v45;
  v46 = [*&v11[v60] topAnchor];
  v47 = [*&v11[v14] bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:4.0];

  *(v23 + 96) = v48;
  v49 = [*&v11[v60] leadingAnchor];
  v50 = [*&v11[v14] leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v23 + 104) = v51;
  v52 = [*&v11[v60] trailingAnchor];
  v53 = [*&v11[v14] trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v23 + 112) = v54;
  v55 = [*&v11[v60] bottomAnchor];
  v56 = [v22 bottomAnchor];

  v57 = [v55 constraintLessThanOrEqualToAnchor:v56];
  *(v23 + 120) = v57;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v61 activateConstraints:isa];

  return v22;
}

id sub_100016C3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupFeatureView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100016D14(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100016DE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100016EB4(uint64_t a1)
{
  sub_10003AE18(319, &qword_100104620, UIImage_ptr);
  if (v1 <= 0x3F)
  {
    sub_100017810(319, &unk_100101F80, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100016F78(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[28];
    goto LABEL_9;
  }

  v14 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[58];

  return v15(v16, a2, v14);
}

uint64_t sub_10001711C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[28];
    goto LABEL_7;
  }

  v14 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[58];

  return v15(v16, a2, a2, v14);
}

void sub_1000172CC(uint64_t a1)
{
  sub_100017810(319, &qword_100102030, type metadata accessor for AdjustedMovie);
  if (v1 <= 0x3F)
  {
    sub_1000178EC(319, &qword_100102038, &qword_100102040, &qword_1000BD158, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100017884(319, &qword_100102048, &qword_100104620, UIImage_ptr, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1000178EC(319, &qword_100102050, &qword_100102058, &unk_1000BD160, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_1000178EC(319, &unk_100102060, &unk_100104940, &qword_1000BEAC0, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_1000178EC(319, &qword_100102070, &qword_100102058, &unk_1000BD160, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100017884(319, &qword_100102078, &qword_100102080, HMAccessory_ptr, &type metadata accessor for Array);
              if (v7 <= 0x3F)
              {
                sub_100017884(319, &qword_100102088, &qword_100102090, PRXFeature_ptr, &type metadata accessor for Array);
                if (v8 <= 0x3F)
                {
                  sub_100017810(319, &qword_100102098, type metadata accessor for SFDeviceSetupProgressEvent);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for PRXDismissalType(319);
                    if (v10 <= 0x3F)
                    {
                      sub_100017950(319, &qword_1001020A0, &type metadata for DismissalConfirmationInformation);
                      if (v11 <= 0x3F)
                      {
                        sub_1000178EC(319, &qword_1001020A8, &qword_1001020B0, &qword_1000BD170, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_100017884(319, &qword_1001020B8, &qword_1001020C0, NSAttributedString_ptr, &type metadata accessor for Optional);
                          if (v13 <= 0x3F)
                          {
                            sub_100017950(319, &qword_1001020C8, &type metadata for String);
                            if (v14 <= 0x3F)
                            {
                              sub_100017810(319, &qword_1001020D0, type metadata accessor for AdjustedImage);
                              if (v15 <= 0x3F)
                              {
                                sub_100017810(319, &qword_1001020D8, type metadata accessor for ContentMode);
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for SDAirDropStatus(319);
                                  if (v17 <= 0x3F)
                                  {
                                    type metadata accessor for HDSBuildType(319);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_100017884(319, &qword_1001020E0, &qword_1001020E8, ACAccount_ptr, &type metadata accessor for Optional);
                                      if (v19 <= 0x3F)
                                      {
                                        type metadata accessor for HomeCreationIssue(319);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_100017810(319, &unk_1001020F0, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
                                          if (v21 <= 0x3F)
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
  }
}

void sub_100017810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100017884(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10003AE18(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000178EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000145EC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100017950(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000179BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AdjustedImage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100017B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AdjustedImage(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100017C54(uint64_t a1)
{
  type metadata accessor for AdjustedImage(319);
  if (v1 <= 0x3F)
  {
    sub_100017810(319, &qword_1001020D0, type metadata accessor for AdjustedImage);
    if (v2 <= 0x3F)
    {
      sub_100017884(319, &unk_100102260, &qword_100104620, UIImage_ptr, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100017D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100017E0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100017EB0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100017F38()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100101EF0);
  v1 = sub_100012AAC(v0, qword_100101EF0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100018000()
{
  v1 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  __chkstk_darwin(v1);
  v3 = &v20 - v2;
  v22[0] = 0x3D6567616D69;
  v22[1] = 0xE600000000000000;
  v21 = *v0;
  v4 = v21;
  sub_10003AE18(0, &qword_100104620, UIImage_ptr);
  v5 = v4;
  v6._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = v22[0];
  v9 = v22[1];
  v22[0] = 0x657473756A64413CLL;
  v22[1] = 0xEF206567616D4964;
  v8._object = v9;
  String.append(_:)(v8);

  v11 = v22[0];
  v10 = v22[1];
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v22, "adjustmentURL=");
  HIBYTE(v22[1]) = -18;
  v12 = type metadata accessor for AdjustedImage(0);
  sub_10000F25C(v0 + *(v12 + 20), v3, &qword_100101F08, &unk_1000BD100);
  v13._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = v22[0];
  v16 = v22[1];
  v22[0] = v11;
  v22[1] = v10;

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  return v22[0];
}

uint64_t sub_10001821C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v42, "fileName=");
  WORD1(v42[1]) = 0;
  HIDWORD(v42[1]) = -385875968;
  v5 = *(v0 + 1);
  v41[0] = *v0;
  v41[1] = v5;

  v6._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = v42[0];
  v9 = v42[1];
  v42[0] = 0x657473756A64413CLL;
  v42[1] = 0xEF206569766F4D64;
  v8._object = v9;
  String.append(_:)(v8);

  v11 = v42[0];
  v10 = v42[1];
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v42, "adjustmentURL=");
  HIBYTE(v42[1]) = -18;
  v12 = type metadata accessor for AdjustedMovie(0);
  (*(v2 + 16))(v4, &v0[v12[5]], v1);
  v13._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = v42[0];
  v16 = v42[1];
  v42[0] = v11;
  v42[1] = v10;

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  v19 = v42[0];
  v18 = v42[1];
  v42[0] = 0x3D6874646977;
  v42[1] = 0xE600000000000000;
  v41[0] = *&v0[v12[6]];
  v20._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22 = v42[0];
  v23 = v42[1];
  v42[0] = v19;
  v42[1] = v18;

  v24._countAndFlagsBits = v22;
  v24._object = v23;
  String.append(_:)(v24);

  v26 = v42[0];
  v25 = v42[1];
  strcpy(v42, "height=");
  v42[1] = 0xE700000000000000;
  v41[0] = *&v0[v12[7]];
  v27._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29 = v42[0];
  v30 = v42[1];
  v42[0] = v26;
  v42[1] = v25;

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  String.append(_:)(v31);

  v33 = v42[0];
  v32 = v42[1];
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v42, "productHeight=");
  HIBYTE(v42[1]) = -18;
  v41[0] = *&v0[v12[8]];
  v34._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36 = v42[0];
  v37 = v42[1];
  v42[0] = v33;
  v42[1] = v32;

  v38._countAndFlagsBits = v36;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 62;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);

  return v42[0];
}

double sub_1000185F0@<D0>(id *a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  switch(a2)
  {
    case 1:
      sub_100019864(a1, a5);
      break;
    case 2:
      result = sub_10001A080(a1, a5);
      break;
    case 3:
      result = sub_10001A554(a1, a5);
      break;
    case 4:
      sub_10001AE28(a1, a5);
      break;
    case 5:
      sub_100027FB8(a1, a3 | ((HIDWORD(a3) & 1) << 32), a5);
      break;
    case 6:
      result = sub_100028910(a1, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5);
      break;
    case 7:
      result = sub_1000294E4(a1, a3 | ((HIDWORD(a3) & 1) << 32), a5);
      break;
    case 8:
      result = sub_100021F30(a5);
      break;
    case 9:
      result = sub_1000227C8(a5);
      break;
    case 10:
      result = sub_100023E4C(a5);
      break;
    case 11:
      sub_100033328(a1, a5);
      break;
    case 12:
      result = sub_1000274B4(a5);
      break;
    case 13:
      result = sub_1000217A0(a1, a5);
      break;
    case 14:
    case 15:
      sub_100037200(a1, a5);
      break;
    case 16:
      result = sub_1000270B4(a1, a5);
      break;
    case 17:
      result = sub_10001C9A8(a1, a5);
      break;
    case 18:
      result = sub_10001D780(a5);
      break;
    case 19:
      result = sub_10001DBF4(a5);
      break;
    case 20:
      sub_10001E0FC(a1, a5);
      break;
    case 21:
    case 26:
    case 51:
    case 63:
      result = sub_100026D18(a5);
      break;
    case 22:
      sub_10001EC94(a1, a5);
      break;
    case 23:
      result = sub_10001F288(a5);
      break;
    case 24:
      result = sub_1000262D0(a1, a5);
      break;
    case 25:
      sub_100027990(a5);
      break;
    case 27:
      sub_10002102C(a1, a5);
      break;
    case 28:
      result = sub_100034150(a5);
      break;
    case 29:
      result = sub_10003254C(a5);
      break;
    case 30:
      result = sub_10002A9DC(a5);
      break;
    case 31:
      result = sub_10002B138(a5);
      break;
    case 32:
      result = sub_10002B7F4(a5);
      break;
    case 33:
      result = sub_10002BF64(a5);
      break;
    case 34:
      result = sub_10002C520(a1, a5);
      break;
    case 35:
      result = sub_10002CAF8(a1, a5);
      break;
    case 36:
      result = sub_10002D894(a1, a5);
      break;
    case 37:
      result = sub_10002D1F0(a1, a5);
      break;
    case 38:
      sub_10002ED18(a5);
      break;
    case 39:
      sub_10002F5BC(a5);
      break;
    case 40:
      sub_10002FDF4(a5);
      break;
    case 41:
      result = sub_1000306B0(a5);
      break;
    case 42:
      result = sub_100030C74(a5);
      break;
    case 43:
      result = sub_1000312B0(a1, a5);
      break;
    case 44:
      result = sub_1000319AC(a5);
      break;
    case 45:
      result = sub_100031F74(a5);
      break;
    case 46:
      result = sub_10002DF08(a5);
      break;
    case 47:
      result = sub_100032B1C(a1, a5);
      break;
    case 48:
      result = sub_1000339E4(a1, a5);
      break;
    case 49:
      sub_10002999C(a1, a5);
      break;
    case 50:
      result = sub_10002A0A0(a1, a5);
      break;
    case 52:
      result = sub_100023820(a1, a5);
      break;
    case 53:
      *&result = sub_100022E9C(a1, a5).n128_u64[0];
      break;
    case 54:
      result = sub_10002E58C(a1, a5);
      break;
    case 55:
      result = sub_10001B83C(a1, a5);
      break;
    case 56:
      result = sub_10001BCF0(a5);
      break;
    case 57:
      result = sub_10001C198(a1, a5);
      break;
    case 58:
      sub_100024D64(a4, a5);
      break;
    case 59:
      result = sub_10002549C(a4, a5);
      break;
    case 60:
      sub_1000369BC(a4, a5);
      break;
    case 61:
      sub_100035FD4(a1, a4, a5);
      break;
    case 62:
      sub_10001F6FC(a1, a5);
      break;
    case 64:
      result = sub_1000348A0(a5);
      break;
    case 65:
      result = sub_100034D5C(a5);
      break;
    case 66:
      *&result = sub_10003576C(a1, a5).n128_u64[0];
      break;
    case 67:
      sub_10003521C(a1, a5);
      break;
    case 68:
      result = sub_100019148(a5);
      break;
    case 69:
      sub_1000243E8(a1, a5);
      break;
    default:
      result = sub_10001897C(a1, a5);
      break;
  }

  return result;
}

double sub_10001897C@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v63 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v13 - 8);
  v15 = &v63 - v14;
  if (*(a1 + 69))
  {
    v16 = 8;
  }

  else
  {
    v16 = 9;
  }

  sub_100057D98(v16);
  v17 = String._bridgeToObjectiveC()();

  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000BD050;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  *(v22 + 48) = 0;
  *(v22 + 56) = 1;
  v23 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle);
  if (!v23)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_10:
    sub_10000EBA4(v9, &qword_100101F08, &unk_1000BD100);
    v26 = type metadata accessor for AdjustedMovie(0);
    (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
    goto LABEL_18;
  }

  v24 = [v23 URLForResource:SFDeviceAssetNameAdjustments withExtension:0];
  if (v24)
  {
    v25 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v7, 1, 1, v10);
  }

  sub_10003B8EC(v7, v9, &qword_100101F08, &unk_1000BD100);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_10;
  }

  v63 = *(v11 + 32);
  v27 = v64;
  v63(v64, v9, v10);
  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) == 5)
  {
    v28 = 150.0;
  }

  else
  {
    v28 = 200.0;
  }

  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) == 5)
  {
    v29 = 260.0;
  }

  else
  {
    v29 = 291.333333;
  }

  v30 = qword_1000BD060[*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) == 5];
  v32 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_movieName);
  v31 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_movieName + 8);
  v33 = type metadata accessor for AdjustedMovie(0);
  v63(&v15[v33[5]], v27, v10);
  *v15 = v32;
  *(v15 + 1) = v31;
  *&v15[v33[6]] = v30;
  *&v15[v33[7]] = v29;
  *&v15[v33[8]] = v28;
  (*(*(v33 - 1) + 56))(v15, 0, 1, v33);

LABEL_18:
  v35 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_productName);
  v34 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_productName + 8);
  v36 = type metadata accessor for HomePodSetupViewModel(0);
  sub_10000F25C(v15, &a2[v36[6]], &unk_100101FB0, &qword_1000BD128);
  v37 = v36[28];

  sub_10004E01C(0, 0, &a2[v37]);
  v38 = v36[58];
  v39 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v39 - 8) + 56))(&a2[v38], 1, 1, v39);
  v40 = &a2[v36[14]];
  *(v40 + 4) = 0;
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v41 = String._bridgeToObjectiveC()();
  v42 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v65);
  sub_10000EBA4(v15, &unk_100101FB0, &qword_1000BD128);
  *a2 = v35;
  *(a2 + 1) = v34;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v44 = &a2[v36[7]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  v45 = &a2[v36[8]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  v46 = &a2[v36[9]];
  *v46 = 0;
  *(v46 + 1) = 0xE000000000000000;
  *&a2[v36[10]] = v22;
  *&a2[v36[11]] = _swiftEmptyArrayStorage;
  *&a2[v36[12]] = _swiftEmptyArrayStorage;
  *&a2[v36[13]] = _swiftEmptyArrayStorage;
  *&a2[v36[15]] = _swiftEmptyArrayStorage;
  *&a2[v36[16]] = _swiftEmptyArrayStorage;
  a2[v36[17]] = Int64 != 0;
  v47 = &a2[v36[18]];
  *v47 = 0;
  v47[4] = 1;
  *&a2[v36[19]] = 1;
  v48 = &a2[v36[20]];
  v49 = v65[3];
  *(v48 + 2) = v65[2];
  *(v48 + 3) = v49;
  *(v48 + 4) = v65[4];
  v50 = v65[1];
  *v48 = v65[0];
  *(v48 + 1) = v50;
  v51 = &a2[v36[21]];
  result = 0.0;
  *v51 = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 2) = 0u;
  *(v51 + 3) = 0u;
  *(v51 + 4) = 0u;
  *&a2[v36[22]] = 0;
  *&a2[v36[23]] = 0;
  v53 = &a2[v36[24]];
  *v53 = 0;
  *(v53 + 1) = 0;
  v54 = &a2[v36[25]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v55 = &a2[v36[26]];
  *v55 = 0;
  *(v55 + 1) = 0;
  a2[v36[27]] = 0;
  a2[v36[29]] = 0;
  *&a2[v36[30]] = 0;
  *&a2[v36[31]] = 0;
  v56 = &a2[v36[32]];
  *v56 = 0;
  v56[8] = 1;
  a2[v36[33]] = 0;
  a2[v36[34]] = 0;
  a2[v36[35]] = 0;
  *&a2[v36[36]] = 0;
  *&a2[v36[37]] = 0;
  v57 = &a2[v36[38]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  a2[v36[39]] = 0;
  a2[v36[40]] = 0;
  *&a2[v36[41]] = 0;
  a2[v36[42]] = 0;
  a2[v36[43]] = 0;
  a2[v36[44]] = 0;
  v58 = &a2[v36[45]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  a2[v36[46]] = 0;
  v59 = &a2[v36[47]];
  *v59 = 0;
  *(v59 + 1) = 0xE000000000000000;
  a2[v36[48]] = 0;
  v60 = &a2[v36[49]];
  *v60 = 0;
  *(v60 + 1) = 0;
  a2[v36[50]] = 0;
  *&a2[v36[51]] = 0;
  *&a2[v36[52]] = 0;
  v61 = &a2[v36[53]];
  *v61 = 0;
  *(v61 + 1) = 0;
  *&a2[v36[54]] = 0;
  v62 = &a2[v36[55]];
  *v62 = 0;
  *(v62 + 1) = 0xE000000000000000;
  *&a2[v36[56]] = 0;
  a2[v36[57]] = 1;
  return result;
}

double sub_100019148@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v5;
  v67 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v9;
  v65 = v8;

  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = String._bridgeToObjectiveC()();
  v16 = sub_100006658(v15);

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000BB8E0;
  *(v20 + 32) = v12;
  *(v20 + 40) = v14;
  *(v20 + 48) = 0;
  *(v20 + 56) = 31;
  *(v20 + 64) = v17;
  *(v20 + 72) = v19;
  *(v20 + 80) = 1;
  *(v20 + 88) = 32;
  v21 = [objc_opt_self() systemFontOfSize:72.0 weight:UIFontWeightRegular];
  v22 = objc_opt_self();
  v23 = [v22 configurationWithFont:v21];

  v24 = [objc_opt_self() orangeColor];
  v25 = [v22 configurationWithHierarchicalColor:v24];

  v26 = String._bridgeToObjectiveC()();
  v27 = [objc_opt_self() _systemImageNamed:v26];

  v28 = v27;
  if (!v27)
  {
    v28 = [objc_allocWithZone(UIImage) init];
  }

  v29 = v27;
  v30 = [v28 imageByApplyingSymbolConfiguration:v23];

  if (!v30)
  {
    v30 = [objc_allocWithZone(UIImage) init];
  }

  v31 = [v30 imageByApplyingSymbolConfiguration:v25];
  if (!v31)
  {
    v31 = [objc_allocWithZone(UIImage) init];
  }

  v32 = type metadata accessor for HomePodSetupViewModel(0);
  v33 = v32[6];
  v34 = type metadata accessor for AdjustedMovie(0);
  (*(*(v34 - 8) + 56))(&a1[v33], 1, 1, v34);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000BCE00;
  *(v35 + 32) = v31;
  v36 = v32[28];
  v37 = type metadata accessor for AdjustedImage(0);
  (*(*(v37 - 8) + 56))(&a1[v36], 1, 1, v37);
  v38 = v32[58];
  v39 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v39 - 8) + 56))(&a1[v38], 1, 1, v39);
  v40 = &a1[v32[14]];
  *(v40 + 4) = 0;
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v41 = v31;
  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v68);
  *a1 = v67;
  *(a1 + 1) = v66;
  *(a1 + 2) = v65;
  *(a1 + 3) = v64;
  v45 = &a1[v32[7]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  v46 = &a1[v32[8]];
  *v46 = 0;
  *(v46 + 1) = 0xE000000000000000;
  v47 = &a1[v32[9]];
  *v47 = 0;
  *(v47 + 1) = 0xE000000000000000;
  *&a1[v32[10]] = v20;
  *&a1[v32[11]] = v35;
  *&a1[v32[12]] = _swiftEmptyArrayStorage;
  *&a1[v32[13]] = _swiftEmptyArrayStorage;
  *&a1[v32[15]] = _swiftEmptyArrayStorage;
  *&a1[v32[16]] = _swiftEmptyArrayStorage;
  a1[v32[17]] = Int64 != 0;
  v48 = &a1[v32[18]];
  *v48 = 0;
  v48[4] = 1;
  *&a1[v32[19]] = 1;
  v49 = &a1[v32[20]];
  v50 = v68[3];
  *(v49 + 2) = v68[2];
  *(v49 + 3) = v50;
  *(v49 + 4) = v68[4];
  v51 = v68[1];
  *v49 = v68[0];
  *(v49 + 1) = v51;
  v52 = &a1[v32[21]];
  result = 0.0;
  *(v52 + 3) = 0u;
  *(v52 + 4) = 0u;
  *(v52 + 1) = 0u;
  *(v52 + 2) = 0u;
  *v52 = 0u;
  *&a1[v32[22]] = 0;
  *&a1[v32[23]] = 0;
  v54 = &a1[v32[24]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v55 = &a1[v32[25]];
  *v55 = 0;
  *(v55 + 1) = 0;
  v56 = &a1[v32[26]];
  *v56 = 0;
  *(v56 + 1) = 0;
  a1[v32[27]] = 0;
  a1[v32[29]] = 0;
  *&a1[v32[30]] = 0;
  *&a1[v32[31]] = 0;
  v57 = &a1[v32[32]];
  *v57 = 0;
  v57[8] = 1;
  a1[v32[33]] = 0;
  a1[v32[34]] = 0;
  a1[v32[35]] = 0;
  *&a1[v32[36]] = 0;
  *&a1[v32[37]] = 0;
  v58 = &a1[v32[38]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  a1[v32[39]] = 0;
  a1[v32[40]] = 0;
  *&a1[v32[41]] = 0;
  a1[v32[42]] = 0;
  a1[v32[43]] = 0;
  a1[v32[44]] = 0;
  v59 = &a1[v32[45]];
  *v59 = 0;
  *(v59 + 1) = 0xE000000000000000;
  a1[v32[46]] = 0;
  v60 = &a1[v32[47]];
  *v60 = 0;
  *(v60 + 1) = 0xE000000000000000;
  a1[v32[48]] = 0;
  v61 = &a1[v32[49]];
  *v61 = 0;
  *(v61 + 1) = 0;
  a1[v32[50]] = 0;
  *&a1[v32[51]] = 0;
  *&a1[v32[52]] = 0;
  v62 = &a1[v32[53]];
  *v62 = 0;
  *(v62 + 1) = 0;
  *&a1[v32[54]] = 0;
  v63 = &a1[v32[55]];
  *v63 = 0;
  *(v63 + 1) = 0xE000000000000000;
  *&a1[v32[56]] = 0;
  a1[v32[57]] = 1;
  return result;
}

void sub_100019864(uint64_t a1@<X0>, char *a2@<X8>)
{
  i = _swiftEmptyArrayStorage;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v79 = v6;

  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = String._bridgeToObjectiveC()();
  v13 = sub_100006658(v12);

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000BD050;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  j = *(a1 + 40);
  v76 = v9;
  v77 = a2;
  v74 = v17;
  v75 = v11;
  v78 = a1;
  if (!j)
  {
    v20 = _swiftEmptyArrayStorage;
    v19 = v79;
    goto LABEL_19;
  }

  if (j >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((j & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = v79;
    v20 = _swiftEmptyArrayStorage;
    if (i)
    {
      v81[0] = _swiftEmptyArrayStorage;

      sub_10008ECC8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_55;
      }

      v21 = 0;
      v20 = v81[0];
      do
      {
        if ((j & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(j + 8 * v21 + 32);
        }

        v23 = v22;
        v81[0] = v20;
        v25 = v20[2];
        v24 = v20[3];
        if (v25 >= v24 >> 1)
        {
          sub_10008ECC8((v24 > 1), v25 + 1, 1);
          v20 = v81[0];
        }

        ++v21;
        v20[2] = (v25 + 1);
        v26 = &v20[2 * v25];
        v26[4] = v23;
        *(v26 + 40) = 0;
      }

      while (i != v21);

      v19 = v79;
    }

    i = _swiftEmptyArrayStorage;
LABEL_19:
    v81[0] = _swiftEmptyArrayStorage;
    if (v19 >> 62)
    {
      goto LABEL_34;
    }

    for (j = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      i = 0;
      v27 = v19 & 0xC000000000000001;
      v28 = v19 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v27)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v28 + 16))
          {
            goto LABEL_33;
          }

          v29 = v19[i + 4];
        }

        v30 = v29;
        v31 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ([v29 homeLocationStatus] == 1)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v19 = v79;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++i;
        if (v31 == j)
        {
          v32 = v81[0];
          i = _swiftEmptyArrayStorage;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    v32 = i;
LABEL_36:

    v81[3] = &type metadata for HomeDeviceSetupFeatureFlags;
    v81[4] = sub_100039FE0();
    LOBYTE(v81[0]) = 1;
    v33 = isFeatureEnabled(_:)();
    sub_10000E70C(v81);
    if ((v33 & 1) == 0)
    {

      goto LABEL_47;
    }

    if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *(v32 + 16);
    }

    if (j && !v34)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_43:
        v36 = v20[2];
        v35 = v20[3];
        if (v36 >= v35 >> 1)
        {
          v20 = sub_1000533E0((v35 > 1), v36 + 1, 1, v20);
        }

        v20[2] = (v36 + 1);
        v37 = &v20[2 * v36];
        v37[4] = 0;
        *(v37 + 40) = 1;
        goto LABEL_47;
      }

LABEL_55:
      v20 = sub_1000533E0(0, v20[2] + 1, 1, v20);
      goto LABEL_43;
    }

LABEL_47:
    v38 = *(v78 + 72);
    if ((v38 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v38 < v20[2])
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v39 = &v20[2 * v38];
  v40 = v39[4];
  v41 = *(v39 + 40);
  v42 = type metadata accessor for HomePodSetupViewModel(0);
  v43 = v42[6];
  v44 = type metadata accessor for AdjustedMovie(0);
  (*(*(v44 - 8) + 56))(&v77[v43], 1, 1, v44);
  v45 = v40;
  v46 = sub_10008C090(v20);
  v47 = &v77[v42[14]];
  *(v47 + 3) = &type metadata for HomeOption;
  *(v47 + 4) = &off_1000F1F68;
  *v47 = v40;
  v47[8] = v41;
  v48 = v42[28];
  v49 = type metadata accessor for AdjustedImage(0);
  (*(*(v49 - 8) + 56))(&v77[v48], 1, 1, v49);
  v50 = v42[58];
  v51 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v51 - 8) + 56))(&v77[v50], 1, 1, v51);
  v52 = v45;
  v53 = String._bridgeToObjectiveC()();
  v54 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v80);

  *v77 = v76;
  *(v77 + 1) = v75;
  *(v77 + 2) = 0;
  *(v77 + 3) = 0xE000000000000000;
  v56 = &v77[v42[7]];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  v57 = &v77[v42[8]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  v58 = &v77[v42[9]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  *&v77[v42[10]] = v74;
  *&v77[v42[11]] = i;
  *&v77[v42[12]] = v46;
  *&v77[v42[13]] = i;
  *&v77[v42[15]] = i;
  *&v77[v42[16]] = i;
  v77[v42[17]] = Int64 != 0;
  v59 = &v77[v42[18]];
  *v59 = 0;
  v59[4] = 1;
  *&v77[v42[19]] = 1;
  v60 = &v77[v42[20]];
  v61 = v80[3];
  *(v60 + 2) = v80[2];
  *(v60 + 3) = v61;
  *(v60 + 4) = v80[4];
  v62 = v80[1];
  *v60 = v80[0];
  *(v60 + 1) = v62;
  v63 = &v77[v42[21]];
  *(v63 + 3) = 0u;
  *(v63 + 4) = 0u;
  *(v63 + 1) = 0u;
  *(v63 + 2) = 0u;
  *v63 = 0u;
  *&v77[v42[22]] = 0;
  *&v77[v42[23]] = 0;
  v64 = &v77[v42[24]];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = &v77[v42[25]];
  *v65 = 0;
  *(v65 + 1) = 0;
  v66 = &v77[v42[26]];
  *v66 = 0;
  *(v66 + 1) = 0;
  v77[v42[27]] = 0;
  v77[v42[29]] = 0;
  *&v77[v42[30]] = 0;
  *&v77[v42[31]] = 0;
  v67 = &v77[v42[32]];
  *v67 = 0;
  v67[8] = 1;
  v77[v42[33]] = 0;
  v77[v42[34]] = 0;
  v77[v42[35]] = 0;
  *&v77[v42[36]] = 0;
  *&v77[v42[37]] = 0;
  v68 = &v77[v42[38]];
  *v68 = 0;
  *(v68 + 1) = 0xE000000000000000;
  v77[v42[39]] = 0;
  v77[v42[40]] = 0;
  *&v77[v42[41]] = 0;
  v77[v42[42]] = 0;
  v77[v42[43]] = 0;
  v77[v42[44]] = 0;
  v69 = &v77[v42[45]];
  *v69 = 0;
  *(v69 + 1) = 0xE000000000000000;
  v77[v42[46]] = 0;
  v70 = &v77[v42[47]];
  strcpy(v70, "location.fill");
  *(v70 + 7) = -4864;
  v77[v42[48]] = 0;
  v71 = &v77[v42[49]];
  *v71 = 0;
  *(v71 + 1) = 0;
  v77[v42[50]] = 0;
  *&v77[v42[51]] = 0;
  *&v77[v42[52]] = 0;
  v72 = &v77[v42[53]];
  *v72 = 0;
  *(v72 + 1) = 0;
  *&v77[v42[54]] = 0;
  v73 = &v77[v42[55]];
  *v73 = 0;
  *(v73 + 1) = 0xE000000000000000;
  *&v77[v42[56]] = 0;
  v77[v42[57]] = 1;
}

double sub_10001A080@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000BD050;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = type metadata accessor for HomePodSetupViewModel(0);
  v20 = v19[6];
  v21 = type metadata accessor for AdjustedMovie(0);
  (*(*(v21 - 8) + 56))(&a2[v20], 1, 1, v21);
  v22 = v19[28];
  v23 = type metadata accessor for AdjustedImage(0);
  (*(*(v23 - 8) + 56))(&a2[v22], 1, 1, v23);
  v50 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_namingIssue);
  v24 = v19[58];
  v25 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v25 - 8) + 56))(&a2[v24], 1, 1, v25);
  v26 = &a2[v19[14]];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v51);
  *a2 = v49;
  *(a2 + 1) = v7;
  *(a2 + 2) = v16;
  *(a2 + 3) = v18;
  v30 = &a2[v19[7]];
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  v31 = &a2[v19[8]];
  *v31 = 0;
  *(v31 + 1) = 0xE000000000000000;
  v32 = &a2[v19[9]];
  *v32 = 0;
  *(v32 + 1) = 0xE000000000000000;
  *&a2[v19[10]] = v13;
  *&a2[v19[11]] = _swiftEmptyArrayStorage;
  *&a2[v19[12]] = _swiftEmptyArrayStorage;
  *&a2[v19[13]] = _swiftEmptyArrayStorage;
  *&a2[v19[15]] = _swiftEmptyArrayStorage;
  *&a2[v19[16]] = _swiftEmptyArrayStorage;
  a2[v19[17]] = Int64 != 0;
  v33 = &a2[v19[18]];
  *v33 = 0;
  v33[4] = 1;
  *&a2[v19[19]] = 1;
  v34 = &a2[v19[20]];
  v35 = v51[3];
  *(v34 + 2) = v51[2];
  *(v34 + 3) = v35;
  *(v34 + 4) = v51[4];
  v36 = v51[1];
  *v34 = v51[0];
  *(v34 + 1) = v36;
  v37 = &a2[v19[21]];
  result = 0.0;
  *(v37 + 3) = 0u;
  *(v37 + 4) = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 2) = 0u;
  *v37 = 0u;
  *&a2[v19[22]] = 0;
  *&a2[v19[23]] = 0;
  v39 = &a2[v19[24]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &a2[v19[25]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = &a2[v19[26]];
  *v41 = 0;
  *(v41 + 1) = 0;
  a2[v19[27]] = 0;
  a2[v19[29]] = 0;
  *&a2[v19[30]] = 0;
  *&a2[v19[31]] = 0;
  v42 = &a2[v19[32]];
  *v42 = 0;
  v42[8] = 1;
  a2[v19[33]] = 0;
  a2[v19[34]] = 0;
  a2[v19[35]] = 0;
  *&a2[v19[36]] = 0;
  *&a2[v19[37]] = 0;
  v43 = &a2[v19[38]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  a2[v19[39]] = 0;
  a2[v19[40]] = 0;
  *&a2[v19[41]] = 0;
  a2[v19[42]] = 0;
  a2[v19[43]] = 0;
  a2[v19[44]] = 0;
  v44 = &a2[v19[45]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  a2[v19[46]] = 0;
  v45 = &a2[v19[47]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  a2[v19[48]] = 0;
  v46 = &a2[v19[49]];
  *v46 = 0;
  *(v46 + 1) = 0;
  a2[v19[50]] = 0;
  *&a2[v19[51]] = 0;
  *&a2[v19[52]] = 0;
  v47 = &a2[v19[53]];
  *v47 = 0;
  *(v47 + 1) = 0;
  *&a2[v19[54]] = v50;
  v48 = &a2[v19[55]];
  *v48 = 0;
  *(v48 + 1) = 0xE000000000000000;
  *&a2[v19[56]] = 0;
  a2[v19[57]] = 1;
  return result;
}

double sub_10001A554@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v7;
  v84 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000BD050;
  v12 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sameLocationHomeName);
  v11 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sameLocationHomeName + 8);
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100039F8C();
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v11)
  {
    v14 = v11;
  }

  *(v10 + 32) = v13;
  *(v10 + 40) = v14;

  v15 = String.init(format:_:)();
  v81 = v16;
  v82 = v15;

  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000BB8E0;
  *(v27 + 32) = v24;
  *(v27 + 40) = v26;
  *(v27 + 48) = 0;
  *(v27 + 56) = 2;
  *(v27 + 64) = v19;
  *(v27 + 72) = v21;
  *(v27 + 80) = 1;
  *(v27 + 88) = 1;
  v28 = objc_opt_self();
  v29 = [v28 systemFontOfSize:72.0 weight:UIFontWeightRegular];
  v30 = objc_opt_self();
  v31 = [v30 configurationWithFont:v29];

  v32 = [objc_opt_self() orangeColor];
  v33 = [v30 configurationWithHierarchicalColor:v32];

  v34 = String._bridgeToObjectiveC()();
  v35 = [objc_opt_self() _systemImageNamed:v34];

  v80 = v31;
  v36 = [v35 imageByApplyingSymbolConfiguration:v31];

  v79 = v33;
  v37 = [v36 imageByApplyingSymbolConfiguration:v33];

  v38 = v37;
  if (!v37)
  {
    v38 = [objc_allocWithZone(UIImage) init];
  }

  sub_10000E6C4(&qword_1001023B0, &qword_1000BD270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  *(inited + 32) = NSFontAttributeName;
  v40 = NSFontAttributeName;
  v41 = v37;
  *(inited + 40) = [v28 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v42 = sub_10000DE54(inited);
  swift_setDeallocating();
  sub_10000EBA4(inited + 32, &qword_1001023B8, &qword_1000BD278);

  sub_10007811C(v42);

  v43 = objc_allocWithZone(NSMutableAttributedString);
  v44 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10003A034();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v78 = [v43 initWithString:v44 attributes:isa];

  v46 = type metadata accessor for HomePodSetupViewModel(0);
  v47 = v46[6];
  v48 = type metadata accessor for AdjustedMovie(0);
  (*(*(v48 - 8) + 56))(&a2[v47], 1, 1, v48);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1000BCE00;
  *(v49 + 32) = v38;
  v50 = v46[28];
  v51 = type metadata accessor for AdjustedImage(0);
  (*(*(v51 - 8) + 56))(&a2[v50], 1, 1, v51);
  v52 = v46[58];
  v53 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v53 - 8) + 56))(&a2[v52], 1, 1, v53);
  v54 = &a2[v46[14]];
  *(v54 + 4) = 0;
  *v54 = 0u;
  *(v54 + 1) = 0u;
  v55 = v38;
  v56 = String._bridgeToObjectiveC()();
  v57 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v85);
  *a2 = v84;
  *(a2 + 1) = v83;
  *(a2 + 2) = v82;
  *(a2 + 3) = v81;
  v59 = &a2[v46[7]];
  *v59 = 0;
  *(v59 + 1) = 0xE000000000000000;
  v60 = &a2[v46[8]];
  *v60 = 0;
  *(v60 + 1) = 0xE000000000000000;
  v61 = &a2[v46[9]];
  *v61 = 0;
  *(v61 + 1) = 0xE000000000000000;
  *&a2[v46[10]] = v27;
  *&a2[v46[11]] = v49;
  *&a2[v46[12]] = _swiftEmptyArrayStorage;
  *&a2[v46[13]] = _swiftEmptyArrayStorage;
  *&a2[v46[15]] = _swiftEmptyArrayStorage;
  *&a2[v46[16]] = _swiftEmptyArrayStorage;
  a2[v46[17]] = Int64 != 0;
  v62 = &a2[v46[18]];
  *v62 = 0;
  v62[4] = 1;
  *&a2[v46[19]] = 1;
  v63 = &a2[v46[20]];
  v64 = v85[3];
  *(v63 + 2) = v85[2];
  *(v63 + 3) = v64;
  *(v63 + 4) = v85[4];
  v65 = v85[1];
  *v63 = v85[0];
  *(v63 + 1) = v65;
  v66 = &a2[v46[21]];
  result = 0.0;
  *(v66 + 3) = 0u;
  *(v66 + 4) = 0u;
  *(v66 + 1) = 0u;
  *(v66 + 2) = 0u;
  *v66 = 0u;
  *&a2[v46[22]] = 0;
  *&a2[v46[23]] = 0;
  v68 = &a2[v46[24]];
  *v68 = 0;
  *(v68 + 1) = 0;
  v69 = &a2[v46[25]];
  *v69 = 0;
  *(v69 + 1) = 0;
  v70 = &a2[v46[26]];
  *v70 = 0;
  *(v70 + 1) = 0;
  a2[v46[27]] = 0;
  a2[v46[29]] = 0;
  *&a2[v46[30]] = 0;
  *&a2[v46[31]] = 0;
  v71 = &a2[v46[32]];
  *v71 = 0;
  v71[8] = 1;
  a2[v46[33]] = 0;
  a2[v46[34]] = 0;
  a2[v46[35]] = 0;
  *&a2[v46[36]] = 0;
  *&a2[v46[37]] = 0;
  v72 = &a2[v46[38]];
  *v72 = 0;
  *(v72 + 1) = 0xE000000000000000;
  a2[v46[39]] = 0;
  a2[v46[40]] = 0;
  *&a2[v46[41]] = 0;
  a2[v46[42]] = 0;
  a2[v46[43]] = 0;
  a2[v46[44]] = 0;
  v73 = &a2[v46[45]];
  *v73 = 0;
  *(v73 + 1) = 0xE000000000000000;
  a2[v46[46]] = 0;
  v74 = &a2[v46[47]];
  *v74 = 0;
  *(v74 + 1) = 0xE000000000000000;
  a2[v46[48]] = 0;
  v75 = &a2[v46[49]];
  *v75 = 0;
  *(v75 + 1) = 0;
  a2[v46[50]] = 0;
  *&a2[v46[51]] = 0;
  *&a2[v46[52]] = 0;
  v76 = &a2[v46[53]];
  *v76 = 0;
  *(v76 + 1) = 0;
  *&a2[v46[54]] = 0;
  v77 = &a2[v46[55]];
  *v77 = 0;
  *(v77 + 1) = 0xE000000000000000;
  *&a2[v46[56]] = v78;
  a2[v46[57]] = 1;
  return result;
}

uint64_t sub_10001AE28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v4 - 8);
  v100 = v90 - v5;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v91 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000E6C4(&unk_100104950, &qword_1000BD280);
  __chkstk_darwin(v9 - 8);
  v96 = v90 - v10;
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v13;

  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000BD050;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  *(v19 + 48) = 0;
  v97 = v19;
  *(v19 + 56) = 1;
  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = _swiftEmptyArrayStorage;
    if (v21)
    {
      v92 = a1;
      v93 = v7;
      v94 = v6;
      v95 = a2;
      *&v101[0] = _swiftEmptyArrayStorage;

      sub_10008ECE8(0, v21, 0);
      v22 = *&v101[0];
      v23 = (v20 + 40);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        *&v101[0] = v22;
        v26 = v22[2];
        v27 = v22[3];

        if (v26 >= v27 >> 1)
        {
          sub_10008ECE8((v27 > 1), v26 + 1, 1);
          v22 = *&v101[0];
        }

        v22[2] = (v26 + 1);
        v28 = &v22[4 * v26];
        *(v28 + 32) = 0;
        v28[5] = v25;
        v28[6] = v24;
        *(v28 + 56) = 1;
        v23 += 2;
        --v21;
      }

      while (v21);

      a2 = v95;
      v6 = v94;
      v7 = v93;
      a1 = v92;
    }
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v29 = *(a1 + 56);
  v30 = _swiftEmptyArrayStorage;
  if (v29)
  {
    v31 = *(v29 + 16);
    if (v31)
    {
      v92 = a1;
      v93 = v7;
      v94 = v6;
      v95 = a2;
      *&v101[0] = _swiftEmptyArrayStorage;

      sub_10008ECE8(0, v31, 0);
      v30 = *&v101[0];
      v32 = v22[2] != 0;
      v90[1] = v29;
      v33 = (v29 + 40);
      do
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        *&v101[0] = v30;
        v37 = v30[2];
        v36 = v30[3];

        if (v37 >= v36 >> 1)
        {
          sub_10008ECE8((v36 > 1), v37 + 1, 1);
          v30 = *&v101[0];
        }

        v30[2] = (v37 + 1);
        v38 = &v30[4 * v37];
        *(v38 + 32) = 1;
        v38[5] = v34;
        v38[6] = v35;
        *(v38 + 56) = v32;
        v33 += 2;
        --v31;
      }

      while (v31);

      a2 = v95;
      v6 = v94;
      v7 = v93;
      a1 = v92;
    }
  }

  *&v101[0] = v22;

  sub_1000951E0(v39);
  v40 = *&v101[0];
  if (*(*&v101[0] + 16))
  {
    sub_10000E6C4(&qword_1001023D0, &qword_1000BD288);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BB8E0;
    v42 = v22[2];

    *(inited + 32) = v42;
    v43 = v30[2];

    *(inited + 40) = v43;
    v44 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_defaultRoomIndexPath;
    swift_beginAccess();
    v45 = v96;
    sub_10000F25C(a1 + v44, v96, &unk_100104950, &qword_1000BD280);
    if ((*(v7 + 48))(v45, 1, v6))
    {
      swift_setDeallocating();
      result = sub_10000EBA4(v45, &unk_100104950, &qword_1000BD280);
      v47 = 0;
    }

    else
    {
      v52 = v91;
      (*(v7 + 16))(v91, v45, v6);
      sub_10000EBA4(v45, &unk_100104950, &qword_1000BD280);
      v47 = sub_1000495BC(inited);
      v54 = v53;
      swift_setDeallocating();
      result = (*(v7 + 8))(v52, v6);
      if (v54)
      {
        v47 = 0;
      }

      else if ((v47 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    if (v47 < *(v40 + 16))
    {
      v55 = v40 + 32 * v47;
      v48 = *(v55 + 32);
      v49 = *(v55 + 40);
      v50 = *(v55 + 48);
      v51 = *(v55 + 56);

      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
LABEL_25:
  v56 = type metadata accessor for AdjustedMovie(0);
  (*(*(v56 - 8) + 56))(v100, 1, 1, v56);
  v57 = sub_10008C190(v40);

  if (v50)
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v48;
    *(v58 + 24) = v49;
    *(v58 + 32) = v50;
    *(v58 + 40) = v51;
    v59 = &off_1000F1C90;
    v60 = &type metadata for RoomOption;
  }

  else
  {
    v58 = 0;
    v60 = 0;
    v59 = 0;
  }

  v61 = type metadata accessor for HomePodSetupViewModel(0);
  v62 = v61[28];
  v63 = type metadata accessor for AdjustedImage(0);
  (*(*(v63 - 8) + 56))(a2 + v62, 1, 1, v63);
  v64 = v61[58];
  v65 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v65 - 8) + 56))(a2 + v64, 1, 1, v65);
  v66 = String._bridgeToObjectiveC()();
  v67 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v101);
  v69 = v100;
  v70 = v98;
  *a2 = v99;
  a2[1] = v70;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  result = sub_10003B8EC(v69, a2 + v61[6], &unk_100101FB0, &qword_1000BD128);
  v71 = (a2 + v61[7]);
  *v71 = 0;
  v71[1] = 0xE000000000000000;
  v72 = (a2 + v61[8]);
  *v72 = 0;
  v72[1] = 0xE000000000000000;
  v73 = (a2 + v61[9]);
  *v73 = 0;
  v73[1] = 0xE000000000000000;
  *(a2 + v61[10]) = v97;
  *(a2 + v61[11]) = _swiftEmptyArrayStorage;
  *(a2 + v61[12]) = v57;
  *(a2 + v61[13]) = _swiftEmptyArrayStorage;
  v74 = (a2 + v61[14]);
  *v74 = v58;
  v74[1] = 0;
  v74[2] = 0;
  v74[3] = v60;
  v74[4] = v59;
  *(a2 + v61[15]) = _swiftEmptyArrayStorage;
  *(a2 + v61[16]) = _swiftEmptyArrayStorage;
  *(a2 + v61[17]) = Int64 != 0;
  v75 = a2 + v61[18];
  *v75 = 0;
  v75[4] = 1;
  *(a2 + v61[19]) = 1;
  v76 = (a2 + v61[20]);
  v77 = v101[3];
  v76[2] = v101[2];
  v76[3] = v77;
  v76[4] = v101[4];
  v78 = v101[1];
  *v76 = v101[0];
  v76[1] = v78;
  v79 = (a2 + v61[21]);
  *v79 = 0u;
  v79[1] = 0u;
  v79[2] = 0u;
  v79[3] = 0u;
  v79[4] = 0u;
  *(a2 + v61[22]) = 0;
  *(a2 + v61[23]) = 0;
  v80 = (a2 + v61[24]);
  *v80 = 0;
  v80[1] = 0;
  v81 = (a2 + v61[25]);
  *v81 = 0;
  v81[1] = 0;
  v82 = (a2 + v61[26]);
  *v82 = 0;
  v82[1] = 0;
  *(a2 + v61[27]) = 0;
  *(a2 + v61[29]) = 0;
  *(a2 + v61[30]) = 0;
  *(a2 + v61[31]) = 0;
  v83 = a2 + v61[32];
  *v83 = 0;
  v83[8] = 1;
  *(a2 + v61[33]) = 0;
  *(a2 + v61[34]) = 0;
  *(a2 + v61[35]) = 0;
  *(a2 + v61[36]) = 0;
  *(a2 + v61[37]) = 0;
  v84 = (a2 + v61[38]);
  *v84 = 0;
  v84[1] = 0xE000000000000000;
  *(a2 + v61[39]) = 0;
  *(a2 + v61[40]) = 0;
  *(a2 + v61[41]) = 0;
  *(a2 + v61[42]) = 0;
  *(a2 + v61[43]) = 0;
  *(a2 + v61[44]) = 0;
  v85 = (a2 + v61[45]);
  *v85 = 0;
  v85[1] = 0xE000000000000000;
  *(a2 + v61[46]) = 0;
  v86 = (a2 + v61[47]);
  *v86 = 0;
  v86[1] = 0xE000000000000000;
  *(a2 + v61[48]) = 0;
  v87 = (a2 + v61[49]);
  *v87 = 0;
  v87[1] = 0;
  *(a2 + v61[50]) = 0;
  *(a2 + v61[51]) = 0;
  *(a2 + v61[52]) = 0;
  v88 = (a2 + v61[53]);
  *v88 = 0;
  v88[1] = 0;
  *(a2 + v61[54]) = 0;
  v89 = (a2 + v61[55]);
  *v89 = 0;
  v89[1] = 0xE000000000000000;
  *(a2 + v61[56]) = 0;
  *(a2 + v61[57]) = 1;
  return result;
}

double sub_10001B83C@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000BD050;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  v14 = type metadata accessor for HomePodSetupViewModel(0);
  v15 = v14[6];
  v16 = type metadata accessor for AdjustedMovie(0);
  (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
  v17 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_wifiOptions);
  v18 = v14[28];
  v19 = type metadata accessor for AdjustedImage(0);
  (*(*(v19 - 8) + 56))(&a2[v18], 1, 1, v19);
  v20 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSSID);
  v21 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSSID + 8);
  v48 = v20;
  v22 = v14[58];
  v23 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v23 - 8) + 56))(&a2[v22], 1, 1, v23);
  v24 = &a2[v14[14]];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;

  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v49);
  *a2 = v47;
  *(a2 + 1) = v7;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v28 = &a2[v14[7]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  v29 = &a2[v14[8]];
  *v29 = 0;
  *(v29 + 1) = 0xE000000000000000;
  v30 = &a2[v14[9]];
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  *&a2[v14[10]] = v13;
  *&a2[v14[11]] = _swiftEmptyArrayStorage;
  *&a2[v14[12]] = _swiftEmptyArrayStorage;
  *&a2[v14[13]] = v17;
  *&a2[v14[15]] = _swiftEmptyArrayStorage;
  *&a2[v14[16]] = _swiftEmptyArrayStorage;
  a2[v14[17]] = Int64 != 0;
  v31 = &a2[v14[18]];
  *v31 = 0;
  v31[4] = 1;
  *&a2[v14[19]] = 1;
  v32 = &a2[v14[20]];
  v33 = v49[3];
  *(v32 + 2) = v49[2];
  *(v32 + 3) = v33;
  *(v32 + 4) = v49[4];
  v34 = v49[1];
  *v32 = v49[0];
  *(v32 + 1) = v34;
  v35 = &a2[v14[21]];
  result = 0.0;
  *(v35 + 3) = 0u;
  *(v35 + 4) = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = 0u;
  *&a2[v14[22]] = 0;
  *&a2[v14[23]] = 0;
  v37 = &a2[v14[24]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &a2[v14[25]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &a2[v14[26]];
  *v39 = 0;
  *(v39 + 1) = 0;
  a2[v14[27]] = 0;
  a2[v14[29]] = 0;
  *&a2[v14[30]] = 0;
  *&a2[v14[31]] = 0;
  v40 = &a2[v14[32]];
  *v40 = 0;
  v40[8] = 1;
  a2[v14[33]] = 0;
  a2[v14[34]] = 0;
  a2[v14[35]] = 0;
  *&a2[v14[36]] = 0;
  *&a2[v14[37]] = 0;
  v41 = &a2[v14[38]];
  *v41 = 0;
  *(v41 + 1) = 0xE000000000000000;
  a2[v14[39]] = 0;
  a2[v14[40]] = 0;
  *&a2[v14[41]] = 0;
  a2[v14[42]] = 0;
  a2[v14[43]] = 0;
  a2[v14[44]] = 0;
  v42 = &a2[v14[45]];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  a2[v14[46]] = 0;
  v43 = &a2[v14[47]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  a2[v14[48]] = 1;
  v44 = &a2[v14[49]];
  *v44 = 0;
  *(v44 + 1) = 0;
  a2[v14[50]] = 0;
  *&a2[v14[51]] = 0;
  *&a2[v14[52]] = 0;
  v45 = &a2[v14[53]];
  *v45 = 0;
  *(v45 + 1) = 0;
  *&a2[v14[54]] = 0;
  v46 = &a2[v14[55]];
  *v46 = v48;
  *(v46 + 1) = v21;
  *&a2[v14[56]] = 0;
  a2[v14[57]] = 1;
  return result;
}

double sub_10001BCF0@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000BD050;
  v10 = sub_100006658(v8);

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  v14 = type metadata accessor for HomePodSetupViewModel(0);
  v15 = v14[6];
  v16 = type metadata accessor for AdjustedMovie(0);
  (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  v17 = v14[28];
  v18 = type metadata accessor for AdjustedImage(0);
  (*(*(v18 - 8) + 56))(&a1[v17], 1, 1, v18);
  v19 = v14[58];
  v20 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v20 - 8) + 56))(&a1[v19], 1, 1, v20);
  v21 = &a1[v14[14]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v44);
  *a1 = v4;
  *(a1 + 1) = v6;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v25 = &a1[v14[7]];
  *v25 = 0;
  *(v25 + 1) = 0xE000000000000000;
  v26 = &a1[v14[8]];
  *v26 = 0;
  *(v26 + 1) = 0xE000000000000000;
  v27 = &a1[v14[9]];
  *v27 = 0;
  *(v27 + 1) = 0xE000000000000000;
  *&a1[v14[10]] = v9;
  *&a1[v14[11]] = _swiftEmptyArrayStorage;
  *&a1[v14[12]] = _swiftEmptyArrayStorage;
  *&a1[v14[13]] = _swiftEmptyArrayStorage;
  *&a1[v14[15]] = _swiftEmptyArrayStorage;
  *&a1[v14[16]] = _swiftEmptyArrayStorage;
  a1[v14[17]] = Int64 != 0;
  v28 = &a1[v14[18]];
  *v28 = 0;
  v28[4] = 1;
  *&a1[v14[19]] = 1;
  v29 = &a1[v14[20]];
  v30 = v44[3];
  *(v29 + 2) = v44[2];
  *(v29 + 3) = v30;
  *(v29 + 4) = v44[4];
  v31 = v44[1];
  *v29 = v44[0];
  *(v29 + 1) = v31;
  v32 = &a1[v14[21]];
  result = 0.0;
  *(v32 + 3) = 0u;
  *(v32 + 4) = 0u;
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *v32 = 0u;
  *&a1[v14[22]] = 0;
  *&a1[v14[23]] = 0;
  v34 = &a1[v14[24]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &a1[v14[25]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &a1[v14[26]];
  *v36 = 0;
  *(v36 + 1) = 0;
  a1[v14[27]] = 0;
  a1[v14[29]] = 0;
  *&a1[v14[30]] = 0;
  *&a1[v14[31]] = 0;
  v37 = &a1[v14[32]];
  *v37 = 0;
  v37[8] = 1;
  a1[v14[33]] = 0;
  a1[v14[34]] = 0;
  a1[v14[35]] = 0;
  *&a1[v14[36]] = 0;
  *&a1[v14[37]] = 0;
  v38 = &a1[v14[38]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  a1[v14[39]] = 0;
  a1[v14[40]] = 0;
  *&a1[v14[41]] = 0;
  a1[v14[42]] = 0;
  a1[v14[43]] = 0;
  a1[v14[44]] = 0;
  v39 = &a1[v14[45]];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  a1[v14[46]] = 1;
  v40 = &a1[v14[47]];
  *v40 = 0;
  *(v40 + 1) = 0xE000000000000000;
  a1[v14[48]] = 0;
  v41 = &a1[v14[49]];
  *v41 = 0;
  *(v41 + 1) = 0;
  a1[v14[50]] = 0;
  *&a1[v14[51]] = 0;
  *&a1[v14[52]] = 0;
  v42 = &a1[v14[53]];
  *v42 = 0;
  *(v42 + 1) = 0;
  *&a1[v14[54]] = 0;
  v43 = &a1[v14[55]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  *&a1[v14[56]] = 0;
  a1[v14[57]] = 1;
  return result;
}

double sub_10001C198@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v7;
  v69 = v6;

  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  v10 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID);
  v9 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID + 8);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_100039F8C();
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  *&v70[0] = 0;
  *(&v70[0] + 1) = 0xE000000000000000;

  sub_100038F50(inited, v70, 0xD000000000000011, 0x80000001000C16D0, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v66 = *(&v70[0] + 1);
  v67 = *&v70[0];
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100006658(v13);

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000BD050;
  v19 = sub_100006658(v12);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_showPickerOption) == 1)
  {
    v18 = sub_1000535F8(1, 2, 1, v18);
    *(v18 + 16) = 2;
    *(v18 + 64) = v15;
    *(v18 + 72) = v17;
    *(v18 + 80) = 1;
    *(v18 + 88) = 2;
  }

  else
  {
  }

  v23 = [objc_opt_self() systemFontOfSize:72.0 weight:UIFontWeightRegular];
  v24 = objc_opt_self();
  v25 = [v24 configurationWithFont:v23];

  v26 = [objc_opt_self() systemBlueColor];
  v27 = [v24 configurationWithHierarchicalColor:v26];

  v28 = String._bridgeToObjectiveC()();
  v29 = [objc_opt_self() _systemImageNamed:v28];

  v30 = v29;
  if (!v29)
  {
    v30 = [objc_allocWithZone(UIImage) init];
  }

  v31 = v29;
  v32 = [v30 imageByApplyingSymbolConfiguration:v25];

  if (!v32)
  {
    v32 = [objc_allocWithZone(UIImage) init];
  }

  v33 = [v32 imageByApplyingSymbolConfiguration:v27];
  if (!v33)
  {
    v33 = [objc_allocWithZone(UIImage) init];
  }

  v34 = type metadata accessor for HomePodSetupViewModel(0);
  v35 = v34[6];
  v36 = type metadata accessor for AdjustedMovie(0);
  (*(*(v36 - 8) + 56))(&a2[v35], 1, 1, v36);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000BCE00;
  *(v37 + 32) = v33;
  v38 = v34[28];
  v39 = type metadata accessor for AdjustedImage(0);
  (*(*(v39 - 8) + 56))(&a2[v38], 1, 1, v39);
  v40 = v34[58];
  v41 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v41 - 8) + 56))(&a2[v40], 1, 1, v41);
  v42 = &a2[v34[14]];
  *(v42 + 4) = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v43 = v33;
  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v70);
  *a2 = v69;
  *(a2 + 1) = v68;
  *(a2 + 2) = v67;
  *(a2 + 3) = v66;
  v47 = &a2[v34[7]];
  *v47 = 0;
  *(v47 + 1) = 0xE000000000000000;
  v48 = &a2[v34[8]];
  *v48 = 0;
  *(v48 + 1) = 0xE000000000000000;
  v49 = &a2[v34[9]];
  *v49 = 0;
  *(v49 + 1) = 0xE000000000000000;
  *&a2[v34[10]] = v18;
  *&a2[v34[11]] = v37;
  *&a2[v34[12]] = _swiftEmptyArrayStorage;
  *&a2[v34[13]] = _swiftEmptyArrayStorage;
  *&a2[v34[15]] = _swiftEmptyArrayStorage;
  *&a2[v34[16]] = _swiftEmptyArrayStorage;
  a2[v34[17]] = Int64 != 0;
  v50 = &a2[v34[18]];
  *v50 = 0;
  v50[4] = 1;
  *&a2[v34[19]] = 1;
  v51 = &a2[v34[20]];
  v52 = v70[3];
  *(v51 + 2) = v70[2];
  *(v51 + 3) = v52;
  *(v51 + 4) = v70[4];
  v53 = v70[1];
  *v51 = v70[0];
  *(v51 + 1) = v53;
  v54 = &a2[v34[21]];
  result = 0.0;
  *(v54 + 3) = 0u;
  *(v54 + 4) = 0u;
  *(v54 + 1) = 0u;
  *(v54 + 2) = 0u;
  *v54 = 0u;
  *&a2[v34[22]] = 0;
  *&a2[v34[23]] = 0;
  v56 = &a2[v34[24]];
  *v56 = 0;
  *(v56 + 1) = 0;
  v57 = &a2[v34[25]];
  *v57 = 0;
  *(v57 + 1) = 0;
  v58 = &a2[v34[26]];
  *v58 = 0;
  *(v58 + 1) = 0;
  a2[v34[27]] = 0;
  a2[v34[29]] = 0;
  *&a2[v34[30]] = 0;
  *&a2[v34[31]] = 0;
  v59 = &a2[v34[32]];
  *v59 = 0;
  v59[8] = 1;
  a2[v34[33]] = 0;
  a2[v34[34]] = 0;
  a2[v34[35]] = 0;
  *&a2[v34[36]] = 0;
  *&a2[v34[37]] = 0;
  v60 = &a2[v34[38]];
  *v60 = 0;
  *(v60 + 1) = 0xE000000000000000;
  a2[v34[39]] = 0;
  a2[v34[40]] = 0;
  *&a2[v34[41]] = 0;
  a2[v34[42]] = 0;
  a2[v34[43]] = 0;
  a2[v34[44]] = 0;
  v61 = &a2[v34[45]];
  *v61 = 0;
  *(v61 + 1) = 0xE000000000000000;
  a2[v34[46]] = 0;
  v62 = &a2[v34[47]];
  *v62 = 0;
  *(v62 + 1) = 0xE000000000000000;
  a2[v34[48]] = 0;
  v63 = &a2[v34[49]];
  *v63 = 0;
  *(v63 + 1) = 0;
  a2[v34[50]] = 0;
  *&a2[v34[51]] = 0;
  *&a2[v34[52]] = 0;
  v64 = &a2[v34[53]];
  *v64 = 0;
  *(v64 + 1) = 0;
  *&a2[v34[54]] = 0;
  v65 = &a2[v34[55]];
  *v65 = 0;
  *(v65 + 1) = 0xE000000000000000;
  *&a2[v34[56]] = 0;
  a2[v34[57]] = 1;
  return result;
}

double sub_10001C9A8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v7;
  v117 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_1000068E0();

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = sub_100006658(v9);

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v121 = v11;
  v122 = v13;
  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v113 = v17;
  v114 = v16;

  v18 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
  v19 = [v18 fontDescriptorWithSymbolicTraits:2];

  v120 = v19;
  sub_10000E6C4(&qword_1001023E0, &qword_1000BD400);
  Optional.unwrap(_:file:line:)();

  v20 = *&v119[0];
  [v20 pointSize];
  v22 = [objc_opt_self() fontWithDescriptor:v20 size:v21];
  v115 = v20;

  sub_10000E6C4(&qword_1001023E8, &unk_1000BD2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BB8E0;
  *(inited + 32) = NSFontAttributeName;
  v24 = sub_10003AE18(0, &qword_1001023F0, UIFont_ptr);
  *(inited + 40) = v22;
  *(inited + 64) = v24;
  *(inited + 72) = NSForegroundColorAttributeName;
  v25 = objc_opt_self();
  v109 = NSFontAttributeName;
  v26 = v22;
  v108 = NSForegroundColorAttributeName;
  v27 = [v25 labelColor];
  v28 = sub_10003AE18(0, &unk_1001023F8, UIColor_ptr);
  *(inited + 104) = v28;
  *(inited + 80) = v27;
  sub_10000DF4C(inited);
  swift_setDeallocating();
  sub_10000E6C4(&qword_100101960, &qword_1000BC230);
  swift_arrayDestroy();
  v118 = v26;
  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasLocationEnabled))
  {
    v29 = 0;
  }

  else
  {
    v29 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasExistingHomePods) ^ 1;
    if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_userEnabledLocationForHomePod) == 1 && ((*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasExistingHomePods) ^ 1) & 1) != 0)
    {
      v30 = String._bridgeToObjectiveC()();
      v31 = sub_100006658(v30);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000E6C4(&qword_100102388, qword_1000BE250);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1000BD050;
      v34 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName);
      v33 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName + 8);
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_100039F8C();
      *(v32 + 32) = v34;
      *(v32 + 40) = v33;

      v35 = String.init(format:_:)();
      v37 = v36;

      *&v119[0] = 2570;
      *(&v119[0] + 1) = 0xE200000000000000;
      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._countAndFlagsBits = 2570;
      v39._object = 0xE200000000000000;
      String.append(_:)(v39);

      v29 = 1;
    }
  }

  v112 = v29;
  v40 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iCloudId + 8);
  v41 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iTunesId + 8);
  if (v40)
  {
    if (v41 && (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iCloudId) == *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iTunesId) && v40 == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_16;
    }
  }

  else if (!v41)
  {
LABEL_16:
    v72 = objc_allocWithZone(NSAttributedString);

    v66 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10003A034();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v71 = [v72 initWithString:v66 attributes:isa];
    goto LABEL_17;
  }

  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1000BB8E0;
  *(v42 + 32) = v109;
  *(v42 + 40) = v118;
  *(v42 + 64) = v24;
  *(v42 + 72) = v108;
  v43 = v109;
  v44 = v118;
  v45 = v108;
  v46 = [v25 secondaryLabelColor];
  *(v42 + 104) = v28;
  *(v42 + 80) = v46;
  sub_10000DF4C(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  v47 = String._bridgeToObjectiveC()();
  v48 = sub_100006658(v47);

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v49._countAndFlagsBits = 32;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);

  v50 = String._bridgeToObjectiveC()();
  v51 = sub_100006658(v50);

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  *&v119[0] = 10;
  *(&v119[0] + 1) = 0xE100000000000000;
  v55._countAndFlagsBits = v52;
  v55._object = v54;
  String.append(_:)(v55);

  v56._countAndFlagsBits = 32;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);

  v57 = objc_allocWithZone(NSAttributedString);
  v58 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10003A034();
  v59 = Dictionary._bridgeToObjectiveC()().super.isa;
  v111 = [v57 initWithString:v58 attributes:v59];

  v60 = objc_allocWithZone(NSAttributedString);

  v61 = String._bridgeToObjectiveC()();

  v62 = Dictionary._bridgeToObjectiveC()().super.isa;
  v110 = [v60 initWithString:v61 attributes:v62];

  v63 = objc_allocWithZone(NSAttributedString);
  v64 = String._bridgeToObjectiveC()();

  v65 = Dictionary._bridgeToObjectiveC()().super.isa;

  v66 = [v63 initWithString:v64 attributes:v65];

  v67 = objc_allocWithZone(NSAttributedString);

  v68 = String._bridgeToObjectiveC()();

  v69 = Dictionary._bridgeToObjectiveC()().super.isa;

  isa = [v67 initWithString:v68 attributes:v69];

  v71 = [objc_allocWithZone(NSMutableAttributedString) init];
  [v71 appendAttributedString:v111];
  [v71 appendAttributedString:v110];
  [v71 appendAttributedString:v66];
  [v71 appendAttributedString:isa];

LABEL_17:
  v73 = type metadata accessor for HomePodSetupViewModel(0);
  v74 = v73[6];
  v75 = type metadata accessor for AdjustedMovie(0);
  (*(*(v75 - 8) + 56))(&a2[v74], 1, 1, v75);
  v77 = v121;
  v76 = v122;
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1000BD050;
  *(v78 + 32) = v114;
  *(v78 + 40) = v113;
  *(v78 + 48) = 0;
  *(v78 + 56) = 1;
  v79 = v71;
  v80 = sub_10003A478(v112 & 1);
  v81 = v73[28];
  v82 = type metadata accessor for AdjustedImage(0);
  (*(*(v82 - 8) + 56))(&a2[v81], 1, 1, v82);
  v83 = v73[58];
  v84 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v84 - 8) + 56))(&a2[v83], 1, 1, v84);
  v85 = &a2[v73[14]];
  *(v85 + 4) = 0;
  *v85 = 0u;
  *(v85 + 1) = 0u;
  v86 = String._bridgeToObjectiveC()();
  v87 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v119);
  *a2 = v117;
  *(a2 + 1) = v116;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v89 = &a2[v73[7]];
  *v89 = v77;
  *(v89 + 1) = v76;
  v90 = &a2[v73[8]];
  *v90 = 0;
  *(v90 + 1) = 0xE000000000000000;
  v91 = &a2[v73[9]];
  *v91 = 0;
  *(v91 + 1) = 0xE000000000000000;
  *&a2[v73[10]] = v78;
  *&a2[v73[11]] = v80;
  *&a2[v73[12]] = _swiftEmptyArrayStorage;
  *&a2[v73[13]] = _swiftEmptyArrayStorage;
  *&a2[v73[15]] = _swiftEmptyArrayStorage;
  *&a2[v73[16]] = _swiftEmptyArrayStorage;
  a2[v73[17]] = Int64 != 0;
  v92 = &a2[v73[18]];
  *v92 = 0;
  v92[4] = 1;
  *&a2[v73[19]] = 1;
  v93 = &a2[v73[20]];
  v94 = v119[3];
  *(v93 + 2) = v119[2];
  *(v93 + 3) = v94;
  *(v93 + 4) = v119[4];
  v95 = v119[1];
  *v93 = v119[0];
  *(v93 + 1) = v95;
  v96 = &a2[v73[21]];
  result = 0.0;
  *(v96 + 3) = 0u;
  *(v96 + 4) = 0u;
  *(v96 + 1) = 0u;
  *(v96 + 2) = 0u;
  *v96 = 0u;
  *&a2[v73[22]] = 0;
  *&a2[v73[23]] = v79;
  v98 = &a2[v73[24]];
  *v98 = 0;
  *(v98 + 1) = 0;
  v99 = &a2[v73[25]];
  *v99 = 0;
  *(v99 + 1) = 0;
  v100 = &a2[v73[26]];
  *v100 = 0;
  *(v100 + 1) = 0;
  a2[v73[27]] = 0;
  a2[v73[29]] = 0;
  *&a2[v73[30]] = 0;
  *&a2[v73[31]] = 0;
  v101 = &a2[v73[32]];
  *v101 = 0;
  v101[8] = 1;
  a2[v73[33]] = 0;
  a2[v73[34]] = 0;
  a2[v73[35]] = 0;
  *&a2[v73[36]] = 0;
  *&a2[v73[37]] = 0;
  v102 = &a2[v73[38]];
  *v102 = 0;
  *(v102 + 1) = 0xE000000000000000;
  a2[v73[39]] = 0;
  a2[v73[40]] = 0;
  *&a2[v73[41]] = 0;
  a2[v73[42]] = 0;
  a2[v73[43]] = 0;
  a2[v73[44]] = 0;
  v103 = &a2[v73[45]];
  *v103 = 0;
  *(v103 + 1) = 0xE000000000000000;
  a2[v73[46]] = 0;
  v104 = &a2[v73[47]];
  *v104 = 0;
  *(v104 + 1) = 0xE000000000000000;
  a2[v73[48]] = 0;
  v105 = &a2[v73[49]];
  *v105 = 0;
  *(v105 + 1) = 0;
  a2[v73[50]] = 0;
  *&a2[v73[51]] = 0;
  *&a2[v73[52]] = 0;
  v106 = &a2[v73[53]];
  *v106 = 0;
  *(v106 + 1) = 0;
  *&a2[v73[54]] = 0;
  v107 = &a2[v73[55]];
  *v107 = 0;
  *(v107 + 1) = 0xE000000000000000;
  *&a2[v73[56]] = 0;
  a2[v73[57]] = 1;
  return result;
}

double sub_10001D780@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000BD050;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = 1;
  *(v12 + 56) = 10;
  v13 = type metadata accessor for HomePodSetupViewModel(0);
  v14 = v13[6];
  v15 = type metadata accessor for AdjustedMovie(0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  v16 = v13[28];
  v17 = type metadata accessor for AdjustedImage(0);
  (*(*(v17 - 8) + 56))(&a1[v16], 1, 1, v17);
  v18 = v13[58];
  v19 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v19 - 8) + 56))(&a1[v18], 1, 1, v19);
  v20 = &a1[v13[14]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v43);
  *a1 = v4;
  *(a1 + 1) = v6;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v24 = &a1[v13[7]];
  *v24 = 0;
  *(v24 + 1) = 0xE000000000000000;
  v25 = &a1[v13[8]];
  *v25 = 0;
  *(v25 + 1) = 0xE000000000000000;
  v26 = &a1[v13[9]];
  *v26 = 0;
  *(v26 + 1) = 0xE000000000000000;
  *&a1[v13[10]] = v12;
  *&a1[v13[11]] = _swiftEmptyArrayStorage;
  *&a1[v13[12]] = _swiftEmptyArrayStorage;
  *&a1[v13[13]] = _swiftEmptyArrayStorage;
  *&a1[v13[15]] = _swiftEmptyArrayStorage;
  *&a1[v13[16]] = _swiftEmptyArrayStorage;
  a1[v13[17]] = Int64 != 0;
  v27 = &a1[v13[18]];
  *v27 = 0;
  v27[4] = 1;
  *&a1[v13[19]] = 1;
  v28 = &a1[v13[20]];
  v29 = v43[3];
  *(v28 + 2) = v43[2];
  *(v28 + 3) = v29;
  *(v28 + 4) = v43[4];
  v30 = v43[1];
  *v28 = v43[0];
  *(v28 + 1) = v30;
  v31 = &a1[v13[21]];
  result = 0.0;
  *(v31 + 3) = 0u;
  *(v31 + 4) = 0u;
  *(v31 + 1) = 0u;
  *(v31 + 2) = 0u;
  *v31 = 0u;
  *&a1[v13[22]] = 0;
  *&a1[v13[23]] = 0;
  v33 = &a1[v13[24]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &a1[v13[25]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &a1[v13[26]];
  *v35 = 0;
  *(v35 + 1) = 0;
  a1[v13[27]] = 0;
  a1[v13[29]] = 0;
  *&a1[v13[30]] = 0;
  *&a1[v13[31]] = 0;
  v36 = &a1[v13[32]];
  *v36 = 0;
  v36[8] = 1;
  a1[v13[33]] = 0;
  a1[v13[34]] = 0;
  a1[v13[35]] = 0;
  *&a1[v13[36]] = 0;
  *&a1[v13[37]] = 0;
  v37 = &a1[v13[38]];
  *v37 = 0;
  *(v37 + 1) = 0xE000000000000000;
  a1[v13[39]] = 0;
  a1[v13[40]] = 0;
  *&a1[v13[41]] = 0;
  a1[v13[42]] = 0;
  a1[v13[43]] = 0;
  a1[v13[44]] = 0;
  v38 = &a1[v13[45]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  a1[v13[46]] = 0;
  v39 = &a1[v13[47]];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  a1[v13[48]] = 0;
  v40 = &a1[v13[49]];
  *v40 = 0;
  *(v40 + 1) = 0;
  a1[v13[50]] = 0;
  *&a1[v13[51]] = 0;
  *&a1[v13[52]] = 0;
  v41 = &a1[v13[53]];
  *v41 = 0;
  *(v41 + 1) = 0;
  *&a1[v13[54]] = 0;
  v42 = &a1[v13[55]];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  *&a1[v13[56]] = 0;
  a1[v13[57]] = 1;
  return result;
}

double sub_10001DBF4@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v5;
  v53 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = type metadata accessor for HomePodSetupViewModel(0);
  v16 = v15[6];
  v17 = type metadata accessor for AdjustedMovie(0);
  (*(*(v17 - 8) + 56))(&a1[v16], 1, 1, v17);
  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000BD050;
  *(v23 + 32) = v12;
  *(v23 + 40) = v14;
  *(v23 + 48) = 1;
  *(v23 + 56) = 11;
  v24 = v15[28];
  v25 = type metadata accessor for AdjustedImage(0);
  (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
  v26 = v15[58];
  v27 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v27 - 8) + 56))(&a1[v26], 1, 1, v27);
  v28 = &a1[v15[14]];
  *(v28 + 4) = 0;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v29 = String._bridgeToObjectiveC()();
  v30 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v54);
  *a1 = v53;
  *(a1 + 1) = v52;
  *(a1 + 2) = v51;
  *(a1 + 3) = v9;
  v32 = &a1[v15[7]];
  *v32 = 0;
  *(v32 + 1) = 0xE000000000000000;
  v33 = &a1[v15[8]];
  *v33 = 0;
  *(v33 + 1) = 0xE000000000000000;
  v34 = &a1[v15[9]];
  *v34 = v20;
  *(v34 + 1) = v22;
  *&a1[v15[10]] = v23;
  *&a1[v15[11]] = _swiftEmptyArrayStorage;
  *&a1[v15[12]] = _swiftEmptyArrayStorage;
  *&a1[v15[13]] = _swiftEmptyArrayStorage;
  *&a1[v15[15]] = _swiftEmptyArrayStorage;
  *&a1[v15[16]] = _swiftEmptyArrayStorage;
  a1[v15[17]] = Int64 != 0;
  v35 = &a1[v15[18]];
  *v35 = 0;
  v35[4] = 1;
  *&a1[v15[19]] = 1;
  v36 = &a1[v15[20]];
  v37 = v54[3];
  *(v36 + 2) = v54[2];
  *(v36 + 3) = v37;
  *(v36 + 4) = v54[4];
  v38 = v54[1];
  *v36 = v54[0];
  *(v36 + 1) = v38;
  v39 = &a1[v15[21]];
  result = 0.0;
  *(v39 + 3) = 0u;
  *(v39 + 4) = 0u;
  *(v39 + 1) = 0u;
  *(v39 + 2) = 0u;
  *v39 = 0u;
  *&a1[v15[22]] = 0;
  *&a1[v15[23]] = 0;
  v41 = &a1[v15[24]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &a1[v15[25]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = &a1[v15[26]];
  *v43 = 0;
  *(v43 + 1) = 0;
  a1[v15[27]] = 0;
  a1[v15[29]] = 0;
  *&a1[v15[30]] = 0;
  *&a1[v15[31]] = 0;
  v44 = &a1[v15[32]];
  *v44 = 0;
  v44[8] = 1;
  a1[v15[33]] = 0;
  a1[v15[34]] = 0;
  a1[v15[35]] = 0;
  *&a1[v15[36]] = 0;
  *&a1[v15[37]] = 0;
  v45 = &a1[v15[38]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  a1[v15[39]] = 0;
  a1[v15[40]] = 0;
  *&a1[v15[41]] = 0;
  a1[v15[42]] = 0;
  a1[v15[43]] = 0;
  a1[v15[44]] = 0;
  v46 = &a1[v15[45]];
  *v46 = 0;
  *(v46 + 1) = 0xE000000000000000;
  a1[v15[46]] = 0;
  v47 = &a1[v15[47]];
  *v47 = 0;
  *(v47 + 1) = 0xE000000000000000;
  a1[v15[48]] = 0;
  v48 = &a1[v15[49]];
  *v48 = 0;
  *(v48 + 1) = 0;
  a1[v15[50]] = 0;
  *&a1[v15[51]] = 0;
  *&a1[v15[52]] = 0;
  v49 = &a1[v15[53]];
  *v49 = 0;
  *(v49 + 1) = 0;
  *&a1[v15[54]] = 0;
  v50 = &a1[v15[55]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  *&a1[v15[56]] = 0;
  a1[v15[57]] = 1;
  return result;
}

uint64_t sub_10001E0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v95 = a1;
  v2 = type metadata accessor for HomePodSetupViewModel(0);
  __chkstk_darwin(v2);
  v4 = (&v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  v6 = __chkstk_darwin(v5 - 8);
  v88 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v87 - v9;
  __chkstk_darwin(v8);
  v12 = &v87 - v11;
  v13 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v14 = __chkstk_darwin(v13 - 8);
  v87 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v93 = &v87 - v17;
  __chkstk_darwin(v16);
  v96 = &v87 - v18;
  v19 = String._bridgeToObjectiveC()();
  v20 = sub_100006658(v19);

  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v21;

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v24;

  v25 = String._bridgeToObjectiveC()();
  v26 = sub_100006658(v25);

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = String._bridgeToObjectiveC()();
  v31 = sub_100006658(v30);

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000BB8E0;
  *(v35 + 32) = v27;
  *(v35 + 40) = v29;
  *(v35 + 48) = 0;
  *(v35 + 56) = 4;
  *(v35 + 64) = v32;
  *(v35 + 72) = v34;
  *(v35 + 80) = 1;
  *(v35 + 88) = 5;
  v36 = *(v95 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode);
  v97 = v12;
  if (v36 == 5)
  {
    v37 = v96;
    sub_1000379DC(v95, 0, 1, v12);
    sub_10000F25C(v12, v10, &qword_100101FC0, &unk_1000BE590);
    v38 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    v39 = (*(*(v38 - 8) + 48))(v10, 1, v38);
    sub_10000EBA4(v10, &qword_100101FC0, &unk_1000BE590);
    if (v39 == 1)
    {
      v40 = v37;
      if (qword_1001015F8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100012AAC(v41, qword_100101EF0);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "createStereoPairViewModel: stereoPairImages are nil", v44, 2u);
      }

      sub_10004E01C(0, 1, v37);
    }

    else
    {
      v45 = type metadata accessor for AdjustedImage(0);
      v40 = v37;
      (*(*(v45 - 8) + 56))(v37, 1, 1, v45);
    }
  }

  else
  {
    v40 = v96;
    sub_10004E01C(0, 1, v96);
    v38 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
  }

  v46 = v2[6];
  v47 = type metadata accessor for AdjustedMovie(0);
  (*(*(v47 - 8) + 56))(v4 + v46, 1, 1, v47);
  sub_10000F25C(v40, v4 + v2[28], &unk_100102610, &unk_1000BD130);
  v48 = v2[58];
  type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  v95 = *(v38 - 8);
  (*(v95 + 56))(v4 + v48, 1, 1, v38);
  v49 = v4 + v2[14];
  *(v49 + 4) = 0;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  v50 = String._bridgeToObjectiveC()();
  v51 = String._bridgeToObjectiveC()();
  v52 = v40;
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v98);
  v54 = v91;
  *v4 = v92;
  v4[1] = v54;
  v55 = v89;
  v4[2] = v90;
  v4[3] = v55;
  v56 = (v4 + v2[7]);
  *v56 = 0;
  v56[1] = 0xE000000000000000;
  v57 = (v4 + v2[8]);
  *v57 = 0;
  v57[1] = 0xE000000000000000;
  v58 = (v4 + v2[9]);
  *v58 = 0;
  v58[1] = 0xE000000000000000;
  *(v4 + v2[10]) = v35;
  *(v4 + v2[11]) = _swiftEmptyArrayStorage;
  *(v4 + v2[12]) = _swiftEmptyArrayStorage;
  *(v4 + v2[13]) = _swiftEmptyArrayStorage;
  *(v4 + v2[15]) = _swiftEmptyArrayStorage;
  *(v4 + v2[16]) = _swiftEmptyArrayStorage;
  *(v4 + v2[17]) = Int64 != 0;
  v59 = v4 + v2[18];
  *v59 = 0;
  v59[4] = 1;
  *(v4 + v2[19]) = 1;
  v60 = (v4 + v2[20]);
  v61 = v98[3];
  v60[2] = v98[2];
  v60[3] = v61;
  v60[4] = v98[4];
  v62 = v98[1];
  *v60 = v98[0];
  v60[1] = v62;
  v63 = (v4 + v2[21]);
  v63[3] = 0u;
  v63[4] = 0u;
  v63[1] = 0u;
  v63[2] = 0u;
  *v63 = 0u;
  *(v4 + v2[22]) = 0;
  *(v4 + v2[23]) = 0;
  v64 = (v4 + v2[24]);
  *v64 = 0;
  v64[1] = 0;
  v65 = (v4 + v2[25]);
  *v65 = 0;
  v65[1] = 0;
  v66 = (v4 + v2[26]);
  *v66 = 0;
  v66[1] = 0;
  *(v4 + v2[27]) = 0;
  *(v4 + v2[29]) = 0;
  *(v4 + v2[30]) = 0;
  *(v4 + v2[31]) = 0;
  v67 = v4 + v2[32];
  *v67 = 0;
  v67[8] = 1;
  *(v4 + v2[33]) = 0;
  *(v4 + v2[34]) = 0;
  *(v4 + v2[35]) = 0;
  *(v4 + v2[36]) = 0;
  *(v4 + v2[37]) = 0;
  v68 = (v4 + v2[38]);
  *v68 = 0;
  v68[1] = 0xE000000000000000;
  *(v4 + v2[39]) = 0;
  *(v4 + v2[40]) = 0;
  *(v4 + v2[41]) = 0;
  *(v4 + v2[42]) = 0;
  *(v4 + v2[43]) = 0;
  *(v4 + v2[44]) = 0;
  v69 = (v4 + v2[45]);
  *v69 = 0;
  v69[1] = 0xE000000000000000;
  *(v4 + v2[46]) = 0;
  v70 = (v4 + v2[47]);
  *v70 = 0;
  v70[1] = 0xE000000000000000;
  *(v4 + v2[48]) = 0;
  v71 = (v4 + v2[49]);
  *v71 = 0;
  v71[1] = 0;
  *(v4 + v2[50]) = 0;
  *(v4 + v2[51]) = 0;
  *(v4 + v2[52]) = 0;
  v72 = (v4 + v2[53]);
  *v72 = 0;
  v72[1] = 0;
  *(v4 + v2[54]) = 0;
  v73 = (v4 + v2[55]);
  *v73 = 0;
  v73[1] = 0xE000000000000000;
  *(v4 + v2[56]) = 0;
  *(v4 + v2[57]) = 1;
  v74 = v97;
  sub_10003A6F8(v97, v4 + v48, &qword_100101FC0, &unk_1000BE590);
  if (qword_1001015F8 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_100012AAC(v75, qword_100101EF0);
  v76 = v93;
  sub_10000F25C(v52, v93, &unk_100102610, &unk_1000BD130);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 67109376;
    v80 = v87;
    sub_10000F25C(v76, v87, &unk_100102610, &unk_1000BD130);
    v81 = type metadata accessor for AdjustedImage(0);
    v82 = v38;
    v83 = (*(*(v81 - 8) + 48))(v80, 1, v81) != 1;
    sub_10000EBA4(v80, &unk_100102610, &unk_1000BD130);
    sub_10000EBA4(v76, &unk_100102610, &unk_1000BD130);
    *(v79 + 4) = v83;
    *(v79 + 8) = 1024;
    swift_beginAccess();
    v84 = v88;
    sub_10000F25C(v4 + v2[58], v88, &qword_100101FC0, &unk_1000BE590);
    v85 = (*(v95 + 48))(v84, 1, v82) != 1;
    sub_10000EBA4(v84, &qword_100101FC0, &unk_1000BE590);
    *(v79 + 10) = v85;
    v52 = v96;
    _os_log_impl(&_mh_execute_header, v77, v78, "createStereoPairViewModel: productImage exists = %{BOOL}d | stereoPairImages exists = %{BOOL}d", v79, 0xEu);
    v74 = v97;
  }

  else
  {
    sub_10000EBA4(v76, &unk_100102610, &unk_1000BD130);
  }

  sub_10000EBA4(v74, &qword_100101FC0, &unk_1000BE590);
  sub_10000EBA4(v52, &unk_100102610, &unk_1000BD130);
  swift_beginAccess();
  sub_10003A8F8(v4, v94, type metadata accessor for HomePodSetupViewModel);
  return sub_10003A960(v4, type metadata accessor for HomePodSetupViewModel);
}

void sub_10001EC94(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100006658(v13);

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000BB8E0;
  *(v18 + 32) = v10;
  *(v18 + 40) = v12;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 64) = v15;
  *(v18 + 72) = v17;
  *(v18 + 80) = 1;
  *(v18 + 88) = 2;
  v19 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_availableAccessories;
  v56 = a1;
  v20 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_availableAccessories);
  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v7;
  if (!v21)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_12:
    v25 = type metadata accessor for HomePodSetupViewModel(0);
    v26 = v25[6];
    v27 = type metadata accessor for AdjustedMovie(0);
    (*(*(v27 - 8) + 56))(&a2[v26], 1, 1, v27);
    v28 = sub_10008C2B8(v24);

    v29 = *(v56 + v19);
    v30 = v25[28];
    v31 = type metadata accessor for AdjustedImage(0);
    (*(*(v31 - 8) + 56))(&a2[v30], 1, 1, v31);
    v32 = v25[58];
    v33 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v33 - 8) + 56))(&a2[v32], 1, 1, v33);
    v34 = &a2[v25[14]];
    *(v34 + 4) = 0;
    *v34 = 0u;
    *(v34 + 1) = 0u;

    v35 = String._bridgeToObjectiveC()();
    v36 = String._bridgeToObjectiveC()();
    Int64 = CFPrefs_GetInt64();

    sub_1000660A0(v59);
    *a2 = v58;
    *(a2 + 1) = v57;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0xE000000000000000;
    v38 = &a2[v25[7]];
    *v38 = 0;
    *(v38 + 1) = 0xE000000000000000;
    v39 = &a2[v25[8]];
    *v39 = 0;
    *(v39 + 1) = 0xE000000000000000;
    v40 = &a2[v25[9]];
    *v40 = 0;
    *(v40 + 1) = 0xE000000000000000;
    *&a2[v25[10]] = v18;
    *&a2[v25[11]] = _swiftEmptyArrayStorage;
    *&a2[v25[12]] = v28;
    *&a2[v25[13]] = _swiftEmptyArrayStorage;
    *&a2[v25[15]] = v29;
    *&a2[v25[16]] = _swiftEmptyArrayStorage;
    a2[v25[17]] = Int64 != 0;
    v41 = &a2[v25[18]];
    *v41 = 0;
    v41[4] = 1;
    *&a2[v25[19]] = 1;
    v42 = &a2[v25[20]];
    v43 = v59[3];
    *(v42 + 2) = v59[2];
    *(v42 + 3) = v43;
    *(v42 + 4) = v59[4];
    v44 = v59[1];
    *v42 = v59[0];
    *(v42 + 1) = v44;
    v45 = &a2[v25[21]];
    *(v45 + 3) = 0u;
    *(v45 + 4) = 0u;
    *(v45 + 1) = 0u;
    *(v45 + 2) = 0u;
    *v45 = 0u;
    *&a2[v25[22]] = 0;
    *&a2[v25[23]] = 0;
    v46 = &a2[v25[24]];
    *v46 = 0;
    *(v46 + 1) = 0;
    v47 = &a2[v25[25]];
    *v47 = 0;
    *(v47 + 1) = 0;
    v48 = &a2[v25[26]];
    *v48 = 0;
    *(v48 + 1) = 0;
    a2[v25[27]] = 0;
    a2[v25[29]] = 0;
    *&a2[v25[30]] = 0;
    *&a2[v25[31]] = 0;
    v49 = &a2[v25[32]];
    *v49 = 0;
    v49[8] = 1;
    a2[v25[33]] = 0;
    a2[v25[34]] = 0;
    a2[v25[35]] = 0;
    *&a2[v25[36]] = 0;
    *&a2[v25[37]] = 0;
    v50 = &a2[v25[38]];
    *v50 = 0;
    *(v50 + 1) = 0xE000000000000000;
    a2[v25[39]] = 0;
    a2[v25[40]] = 0;
    *&a2[v25[41]] = 0;
    a2[v25[42]] = 0;
    a2[v25[43]] = 0;
    a2[v25[44]] = 0;
    v51 = &a2[v25[45]];
    *v51 = 0;
    *(v51 + 1) = 0xE000000000000000;
    a2[v25[46]] = 0;
    v52 = &a2[v25[47]];
    *v52 = 0;
    *(v52 + 1) = 0xE000000000000000;
    a2[v25[48]] = 0;
    v53 = &a2[v25[49]];
    *v53 = 0;
    *(v53 + 1) = 0;
    a2[v25[50]] = 0;
    *&a2[v25[51]] = 0;
    *&a2[v25[52]] = 0;
    v54 = &a2[v25[53]];
    *v54 = 0;
    *(v54 + 1) = 0;
    *&a2[v25[54]] = 0;
    v55 = &a2[v25[55]];
    *v55 = 0;
    *(v55 + 1) = 0xE000000000000000;
    *&a2[v25[56]] = 0;
    a2[v25[57]] = 1;
    return;
  }

  *&v59[0] = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v20 + 8 * v22 + 32);
      }

      ++v22;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v21 != v22);

    v24 = *&v59[0];
    goto LABEL_12;
  }

  __break(1u);
}