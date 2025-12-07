void sub_100001648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100001664(void *a1, uint64_t a2)
{
  if (a2)
  {
    *(*(a1[6] + 8) + 24) = a2;
    [*(a1[4] + 8) log:7 format:{@"%s Failed to download asset with result %ld", "-[Haywire findRemoteAsset]_block_invoke", a2}];
  }

  v3 = a1[5];

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_1000018C8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
  [v4 log:7 format:{@"[%f] query complete", v5, "-[Haywire _findAsset:]_block_invoke"}];
  if (a2)
  {
    [*(a1 + 32) setError:a2];
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

NSError *sub_10000195C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a2 arguments:&a9];
  v17 = +[NSMutableDictionary dictionary];
  if (v10)
  {
    AMRLog(3, @"%@", v11, v12, v13, v14, v15, v16, v10);
    [v17 setObject:v10 forKey:NSLocalizedDescriptionKey];
  }

  return [NSError errorWithDomain:@"HaywireErrorDomain" code:a1 userInfo:v17];
}

CFTypeRef sub_100001A14(const __CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMRLog(7, @"%s", a3, a4, a5, a6, a7, a8, "CFDictionaryRef createBootstrapOptionsDictionary(NSString *, NSString *, NSString *, uint32_t, uint32_t)");
  v27 = 0;
  v13 = CFPreferencesCopyAppValue(@"RestoreBootArgs", kCFPreferencesCurrentApplication);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = a3;
  }

  v16 = CFPreferencesCopyAppValue(@"DeviceTreeFile", kCFPreferencesCurrentApplication);
  v17 = CFPreferencesCopyAppValue(@"BootImageFile", kCFPreferencesCurrentApplication);
  v18 = CFPreferencesCopyAppValue(@"RestoreKernelCacheFile", kCFPreferencesCurrentApplication);
  v19 = AMRAuthInstallCreateOptionsForBootstrapDevice(a1, a2, a4, a5, v15, v16, v17, v18, &v27);
  if (v19)
  {
    AMRLog(5, @"AMRAuthInstallCreateOptionsForBootstrapDevice failed %d\n", v20, v21, v22, v23, v24, v25, v19);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v27;
}

void sub_100002364(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {

    [a2 deviceError:a1];
  }

  else
  {
    AMRLog(3, @"error %d processing device (updater is nil)\n", a1, a4, a5, a6, a7, a8, a1);
  }
}

id sub_10000256C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (!*(v4 + 32))
  {
    [*(v4 + 8) log:3 format:{@"%s error: _maxRemoteBuildNumber=%@ _maxLocalBuildNumber=%@", "-[Haywire findFirmwareWithOptions:remote:]_block_invoke", 0, *(v4 + 24)}];
    v8 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = [v5 compare:? options:?];
    v4 = *(a1 + 32);
    v7 = *(v4 + 8);
    if (v6 != -1)
    {
      v8 = 0;
      v9 = "No";
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v9 = "Yes";
  v8 = 1;
LABEL_9:
  [v7 log:5 format:{@"%s updateAvailable (%s) (%@) (%@)", "-[Haywire findFirmwareWithOptions:remote:]_block_invoke", v9, *(v4 + 24), *(v4 + 32)}];
  [*(*(a1 + 32) + 16) setValue:objc_msgSend(*(a1 + 32) forKey:{"getUpdateRequired"), @"UpdateRequired"}];
  if (!a2)
  {
LABEL_13:
    v11 = 1;
    goto LABEL_15;
  }

LABEL_10:
  v10 = [a2 domain];
  if ([v10 isEqualToString:ASErrorDomain] && objc_msgSend(a2, "code") == 21)
  {
    a2 = 0;
    goto LABEL_13;
  }

  [*(*(a1 + 32) + 8) log:3 format:{@"%s failed: %@", "-[Haywire findFirmwareWithOptions:remote:]_block_invoke", a2}];
  v11 = 0;
LABEL_15:
  [*(*(a1 + 32) + 8) didFind:v11 info:*(*(a1 + 32) + 16) updateAvailable:v8 needsDownload:1 error:a2];
  v12 = *(a1 + 32);

  return [v12 cleanupAssets];
}

id sub_100002890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(*(a1 + 32) + 8) log:5 format:{@"%s calling didDownload", "-[Haywire downloadFirmwareWithOptions:]_block_invoke"}];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);

  return [v6 didDownload:1 info:v7 error:a3];
}

id sub_100002FC8(int8x16_t *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003050;
  v3[3] = &unk_1000A90F0;
  v1 = a1[2];
  v4 = vextq_s8(v1, v1, 8uLL);
  v6 = a1[3].i8[8];
  v5 = a1[3].i64[0];
  return [v1.i64[0] queryMetaDataWithError:v3];
}

void sub_100003050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) queryComplete:objc_msgSend(*(a1 + 40) remote:"results") error:*(a1 + 56) completion:{a3, *(a1 + 48)}];
  v4 = *(a1 + 40);
}

void sub_1000030B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) queryComplete:objc_msgSend(*(a1 + 40) remote:"results") error:*(a1 + 56) completion:{a3, *(a1 + 48)}];
  v4 = *(a1 + 40);
}

id sub_100003370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  if (!a3)
  {
    return [v5 log:5 format:{@"%s: purged asset: %@.", "-[Haywire cleanupAssets]_block_invoke", v4}];
  }

  [v5 log:5 format:{@"%s: failed to purge asset %@: %@.", "-[Haywire cleanupAssets]_block_invoke", v4, a3}];
  v7 = *(a1 + 32);

  return [v7 setError:a3];
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000035BC(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, (a3 + 88)) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

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

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
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

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  memset(v8, 170, sizeof(v8));
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
  memset(v12, 170, sizeof(v12));
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

void sub_100004230(uint64_t a1)
{
  if (!a1)
  {
    sub_100056288();
  }

  if (!*(a1 + 520))
  {
    *(a1 + 520) = 1;
    AMAuthInstallApFinalize(a1);
    AMAuthInstallBasebandFinalize(a1);
    AMAuthInstallBundleFinalize(a1);
    SafeRelease(*(a1 + 120));
    SafeRelease(*(a1 + 376));
    SafeRelease(*(a1 + 384));
    SafeRelease(*(a1 + 416));
    SafeRelease(*(a1 + 336));
    SafeRelease(*(a1 + 96));
    SafeRelease(*(a1 + 72));
    SafeRelease(*(a1 + 88));
    SafeRelease(*(a1 + 64));
    SafeRelease(*(a1 + 352));
    SafeRelease(*(a1 + 296));
    SafeRelease(*(a1 + 312));
    SafeRelease(*(a1 + 320));
    SafeRelease(*(a1 + 424));
    SafeRelease(*(a1 + 456));
    SafeRelease(*(a1 + 464));
    SafeRelease(*(a1 + 472));
    SafeRelease(*(a1 + 480));
    SafeRelease(*(a1 + 496));
    SafeRelease(*(a1 + 40));
    SafeRelease(*(a1 + 512));
    SafeRelease(*(a1 + 360));
    SafeRelease(*(a1 + 488));

    bzero((a1 + 16), 0x208uLL);
  }
}

const __CFString *AMAuthInstallGetLocalizedStatusString(CFDictionaryRef *cf, int a2)
{
  valuePtr = a2;
  if (a2 > 98)
  {
    if (a2 <= 3500)
    {
      switch(a2)
      {
        case 99:
          return @"Generic";
        case 3194:
          return @"Declined to authorize this image on this device for this user.";
        case 3500:
          return @"The signing server returned an internal error";
      }
    }

    else if (a2 > 3503)
    {
      if (a2 == 3504)
      {
        return @"The signing server could not find the resource requested";
      }

      if (a2 == 3507)
      {
        return @"You must authorize with a proxy server before making this request";
      }
    }

    else
    {
      if (a2 == 3501)
      {
        return @"You must authorize with the signing server before making this request";
      }

      if (a2 == 3503)
      {
        return @"You are not authorized to make this request. Please check your device or credentials";
      }
    }

LABEL_42:
    Value = &stru_1000ABB18;
    if (cf)
    {
      if ((a2 - 3100) <= 0x383)
      {
        v5 = CFGetAllocator(cf);
        v6 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
        if (v6)
        {
          v7 = v6;
          Value = CFDictionaryGetValue(cf[44], v6);
          CFRelease(v7);
          if (!Value)
          {
            AMAuthInstallLog(7, "AMAuthInstallGetLocalizedStatusString", "no cached text for tss error code %d", valuePtr);
          }
        }
      }
    }
  }

  else
  {
    Value = @"No error";
    switch(a2)
    {
      case 0:
        return Value;
      case 1:
        Value = @"Bad parameter";
        break;
      case 2:
        Value = @"Allocation error";
        break;
      case 3:
        Value = @"Conversion error";
        break;
      case 4:
        Value = @"File error";
        break;
      case 5:
        Value = @"Hash error";
        break;
      case 6:
        Value = @"Crypto error";
        break;
      case 7:
        Value = @"Bad build identity";
        break;
      case 8:
        Value = @"Entry not found";
        break;
      case 9:
        Value = @"Invalid img3 object";
        break;
      case 10:
        Value = @"Invalid bbfw object";
        break;
      case 11:
        Value = @"Server not reachable";
        break;
      case 12:
        Value = @"Server timed out";
        break;
      case 13:
        Value = @"Unimplemented";
        break;
      case 14:
        Value = @"Internal error";
        break;
      case 15:
        Value = @"Invalid bbfw file";
        break;
      case 16:
        Value = @"Network error";
        break;
      case 17:
        Value = @"Bad response";
        break;
      case 18:
        Value = @"Fusing failed";
        break;
      case 19:
        Value = @"Baseband provisioning failed";
        break;
      case 20:
        Value = @"AppleConnect not found";
        break;
      case 21:
        Value = @"AppleConnect user canceled";
        break;
      case 22:
        Value = @"AppleConnect bad credentials";
        break;
      default:
        goto LABEL_42;
    }
  }

  return Value;
}

uint64_t AMAuthInstallSetDebugFlags(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 344) = a2;
  return result;
}

void AMAuthInstallApplyRequestEntries(const __CFString *a1, const __CFDictionary *a2, void *a3)
{
  if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      v7 = sub_10000480C;
LABEL_7:

      CFDictionaryApplyFunction(a2, v7, a3);
      return;
    }
  }

  if (CFStringCompare(a1, @"@BBTicket", 0) == kCFCompareEqualTo)
  {
    v8 = CFDictionaryGetTypeID();
    if (v8 == CFGetTypeID(a2))
    {
      v7 = sub_100004828;
      goto LABEL_7;
    }
  }

  if (CFStringHasPrefix(a1, @"Ap"))
  {
    v9 = @"ApRequestEntries";
  }

  else
  {
    if (!CFStringHasPrefix(a1, @"Bb"))
    {
      if (CFStringHasPrefix(a1, @"FDR"))
      {

        AMAuthInstallSetFDRRequestEntry(a3, a1, a2);
      }

      return;
    }

    v9 = @"BbRequestEntries";
  }

  AMAuthInstallSetRequestEntry(a3, v9, a1, a2);
}

uint64_t AMAuthInstallSetFDRRequestEntry(const void *a1, const void *a2, const void *a3)
{
  v6 = AMAuthInstallSetRequestEntry(a1, @"ApRequestEntries", a2, a3);
  if (v6)
  {
    v7 = v6;
    AMAuthInstallLog(3, "AMAuthInstallSetFDRRequestEntry", "failed to set FDR entry in Ap request");
  }

  else
  {
    v7 = AMAuthInstallSetRequestEntry(a1, @"BbRequestEntries", a2, a3);
    if (v7)
    {
      AMAuthInstallLog(3, "AMAuthInstallSetFDRRequestEntry", "failed to set FDR entry in Bb request");
    }
  }

  return v7;
}

uint64_t sub_100004904()
{
  result = _CFRuntimeRegisterClass();
  qword_1000C8778 = result;
  return result;
}

CFStringRef sub_10000492C(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    sub_1000562B4();
  }

  v4 = AMAuthInstallApCopyDescription(a1);
  v5 = AMAuthInstallBasebandCopyDescription(a1);
  v6 = CFGetAllocator(a1);
  v7 = *(a1 + 72);
  if (*(a1 + 64))
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = @"default";
  }

  if (*(a1 + 56))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (*(a1 + 104))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  PlatformInfoString = AMAuthInstallPlatformGetPlatformInfoString();
  v13 = CFStringCreateWithFormat(v6, a2, @"<AMAuthInstall %p>{ap=%@, bp=%@, UserAuth=%@, iTunes=%@, server=%@, locale=%@, version=%@, platform=%@}", a1, v4, v5, v10, v9, v7, v8, LibraryVersionString, PlatformInfoString);
  SafeRelease(v4);
  SafeRelease(v5);
  return v13;
}

CFMutableDictionaryRef sub_100004A30(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

uint64_t AMAuthInstallApIsImg4(uint64_t a1)
{
  if (!a1)
  {
    sub_1000586B0();
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    sub_100058678();
    return 0;
  }

  return *(v1 + 112);
}

__CFString *AMAuthInstallApCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 64);
  CFStringAppend(Mutable, @"(");
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = "YES";
    if (*(a1 + 57))
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (*(v4 + 20))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if (*(v4 + 97))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if (*(v4 + 88))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    if (*(v4 + 98))
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if (*(v4 + 112))
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    if (*(v4 + 136))
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (!*(v4 + 144))
    {
      v5 = "NO";
    }

    CFStringAppendFormat(Mutable, 0, @"personalize=%s %@ ecid=0x%llx, chipid=0x%x, boardid=0x%x, secDom=%d, isProduction=%s, EPRO=%s, isSecure=%s, ESEC=%s, img4=%s, demotionPolicy=%@, managedBaaCert=%s, slowRollBaaCert=%s, dpoc=%@", v6, *(v4 + 120), *v4, *(v4 + 8), *(v4 + 12), *(v4 + 16), v7, v8, v9, v10, v11, *(v4 + 104), v12, v5, *(v4 + 208));
    v13 = *(a1 + 16);
    if (*(v13 + 24))
    {
      v14 = CFGetAllocator(a1);
      v15 = _CopyHexStringFromData(v14, *(*(a1 + 16) + 24));
      CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v15);
      CFRelease(v15);
      v13 = *(a1 + 16);
    }

    if (*(v13 + 48))
    {
      v16 = CFGetAllocator(a1);
      v17 = _CopyHexStringFromData(v16, *(*(a1 + 16) + 48));
      CFStringAppendFormat(Mutable, 0, @", sepNonce=0x%@", v17);
      CFRelease(v17);
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void AMAuthInstallApFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    SafeRelease(*(v2 + 24));
    SafeRelease(*(a1[2] + 32));
    SafeRelease(*(a1[2] + 48));
    SafeRelease(*(a1[2] + 56));
    SafeRelease(*(a1[2] + 104));
    SafeRelease(*(a1[2] + 120));
    SafeRelease(*(a1[2] + 136));
    SafeRelease(*(a1[2] + 144));
    SafeRelease(*(a1[2] + 152));
    SafeRelease(*(a1[2] + 176));
    SafeRelease(*(a1[2] + 184));
    SafeRelease(*(a1[2] + 192));
    SafeRelease(*(a1[2] + 200));
    SafeRelease(*(a1[2] + 208));
    SafeRelease(*(a1[2] + 64));
    SafeRelease(*(a1[2] + 72));
    SafeFree(a1[2]);
    a1[2] = 0;
  }

  SafeRelease(a1[3]);
  SafeRelease(a1[66]);
  a1[3] = 0;
  a1[66] = 0;
}

uint64_t AMAuthInstallEnableManagedRequest(void *a1, void *a2)
{
  if (a1)
  {

    return AMAuthInstallHttpRequestManagedBaaCertificate(a1, a2);
  }

  else
  {
    sub_1000586E8(a1);
    return 1;
  }
}

uint64_t AMAuthInstallEnableAlternateUpdateRequest(void *a1, void *a2)
{
  if (a1)
  {

    return AMAuthInstallHttpRequestAlternateUpdateBaaCertificate(a1, a2);
  }

  else
  {
    sub_1000586FC(a1);
    return 1;
  }
}

uint64_t AMAuthInstallApEnableLocalPolicyHactivation(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 505) = 1;
  }

  else
  {
    sub_100058710(a1);
    return 1;
  }

  return result;
}

uint64_t AMAuthInstallApCreateDigest(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 && (a3 == 1 || a3 == 384 || a3 == 256))
  {

    return _AMSupportCreateDigest();
  }

  else
  {
    AMSupportCreateErrorInternal();
    return 0;
  }
}

void sub_100004EC0(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

CFTypeRef sub_100004EFC(uint64_t a1, uint64_t a2, const UInt8 **a3)
{
  theData = 0;
  if (!a2)
  {
    sub_100058D88(a1);
LABEL_15:
    v11 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    sub_100058D74(a1);
    goto LABEL_15;
  }

  DataFromMappedFileURL = AMAuthInstallPlatformCreateDataFromMappedFileURL(a1, &theData, a2);
  if (DataFromMappedFileURL)
  {
    AMAuthInstallLog(3, "_AMAuthInstallApFtabCopyFtabFromFile", "AMAuthInstallPlatformCreateDataFromMappedFileURL returned %d", DataFromMappedFileURL);
    goto LABEL_15;
  }

  if (!theData)
  {
    sub_100058D48();
    goto LABEL_15;
  }

  MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, theData);
  v6 = MutableCopy;
  if (!MutableCopy)
  {
    sub_100058D1C();
    goto LABEL_15;
  }

  Length = CFDataGetLength(MutableCopy);
  BytePtr = CFDataGetBytePtr(v6);
  if (!AMAuthInstallApFtabIsValid(v6, 0))
  {
    sub_100058CF0();
    goto LABEL_15;
  }

  v9 = &BytePtr[16 * (*(BytePtr + 10) - 1)];
  v10 = (*(v9 + 14) + *(v9 + 13));
  if (Length > v10)
  {
    v14.location = (v10 + 1);
    v14.length = Length + ~v10;
    CFDataDeleteBytes(v6, v14);
  }

  *(BytePtr + 2) = 0;
  v11 = CFRetain(v6);
  *a3 = BytePtr;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v11;
}

uint64_t image3SHA1Generate(const void *a1, CC_LONG a2, unsigned __int8 *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  return CC_SHA1_Final(a3, &v7);
}

uint64_t image3PKISignHash(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  return 0;
}

int8x16_t image3SHA1Partial(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  result = vrev32q_s8(*&v7.h0);
  *a3 = result;
  a3[1].i32[0] = bswap32(v7.h4);
  return result;
}

uint64_t AMAuthInstallApImg3CreatePersonalizedData(const void *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, CFTypeRef *a5)
{
  memset(length, 0, sizeof(length));
  v10 = AMAuthInstallSupportCopyAllocator();
  BytePtr = CFDataGetBytePtr(a2);
  LODWORD(a2) = CFDataGetLength(a2);
  v12 = CFDataGetBytePtr(a4);
  v13 = CFDataGetBytePtr(a3);
  v14 = CFDataGetLength(a3);
  if (tss_stitch_img3(BytePtr, a2, v12, v13, v14, &length[1], length))
  {
    v15 = 0;
    v16 = 9;
  }

  else
  {
    v17 = CFGetAllocator(a1);
    v18 = CFDataCreateWithBytesNoCopy(v17, *&length[1], length[0], v10);
    v15 = v18;
    if (v18)
    {
      v16 = 0;
      *a5 = CFRetain(v18);
    }

    else
    {
      free(*&length[1]);
      v16 = 2;
    }
  }

  SafeRelease(v15);
  SafeRelease(v10);
  return v16;
}

uint64_t AMAuthInstallApImg3PersonalizeImg3WithEntryNameAndOptions(void *a1, const __CFURL *a2, const __CFURL *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6, char a7)
{
  *v14 = 0;
  if (a1)
  {
    v8 = 0;
    v9 = 1;
    if (a3 && a2 && a1[2])
    {
      v11 = AMAuthInstallApImg3CopyPersonalizedData(a1, a2, a4, a5, a6, v14, a7 & 1);
      if (v11)
      {
        v9 = v11;
        v8 = *v14;
      }

      else
      {
        v13 = CFGetAllocator(a1);
        v8 = *v14;
        v9 = AMAuthInstallSupportWriteDataToFileURL(v13, *v14, a3, 1);
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  SafeRelease(v8);
  return v9;
}

uint64_t AMAuthInstallApImg3CopyBuildString(const __CFAllocator *a1, const void *a2, CFStringRef *a3)
{
  theData = 0;
  v17 = 0;
  __s = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (DataFromFileURL)
  {
    v13 = DataFromFileURL;
  }

  else
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    if (image3InstantiateFromBuffer(&v17, BytePtr, Length, 0))
    {
      v13 = 9;
      AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", "%s: invalid image 3 object");
    }

    else if (image3GetTagString(v17, 1447383635, &__s, 0))
    {
      v13 = 9;
      AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", "%s: failed to get tag");
    }

    else
    {
      v9 = __s;
      if (!strchr(__s, 126))
      {
        v10 = strlen(v9);
        if (v10 + 1 < 2)
        {
          v13 = 99;
          AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", "$s: failed to get tag buffer length", "AMAuthInstallApImg3CopyBuildString");
          goto LABEL_19;
        }

        v11 = realloc(v9, v10 + 2);
        __s = v11;
        if (!v11)
        {
          v13 = 2;
          AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", "$s: failed to realloc tag buffer", "AMAuthInstallApImg3CopyBuildString");
          goto LABEL_19;
        }

        *&v11[strlen(v11)] = 126;
        v9 = __s;
      }

      v12 = CFStringCreateWithCString(a1, v9, 0x8000100u);
      *a3 = v12;
      if (v12)
      {
        v13 = 0;
        goto LABEL_10;
      }

      v13 = 2;
    }
  }

LABEL_19:
  AMAuthInstallLog(8, "AMAuthInstallApImg3CopyBuildString", "%s: %@", "AMAuthInstallApImg3CopyBuildString", a2);
LABEL_10:
  if (v17)
  {
    image3Discard(&v17);
  }

  SafeRelease(theData);
  SafeFree(__s);
  return v13;
}

__CFString *AMAuthInstallApImg4GetTypeForEntryName(CFStringRef theString1)
{
  v2 = off_1000A94C0;
  v3 = 218;
  while (CFStringCompare(theString1, *(v2 - 1), 0))
  {
    v2 += 2;
    if (!--v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = *v2;
LABEL_6:
  if (v4)
  {
    return v4;
  }

  else
  {
    return theString1;
  }
}

CFStringRef AMAuthInstallApImg4GetEntryNameForType(CFStringRef theString1)
{
  v2 = off_1000A94C0;
  v3 = 218;
  while (CFStringCompare(theString1, *v2, 0))
  {
    v2 += 2;
    if (!--v3)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = CFRetain(*(v2 - 1));
LABEL_6:
  if (!result)
  {
    return theString1;
  }

  return result;
}

CFStringRef AMAuthInstallApImg4CopyPayloadType(const __CFAllocator *a1, CFTypeRef cf)
{
  v10 = 0;
  if (!cf)
  {
    sub_10005C1B0(a1);
    return 0;
  }

  v4 = CFGetTypeID(cf);
  TypeID = CFDataGetTypeID();
  if (v4 != TypeID)
  {
    sub_10005C0EC(TypeID);
    return 0;
  }

  v12[0] = 0;
  v12[1] = 0;
  memset(numBytes, 0, sizeof(numBytes));
  Length = CFDataGetLength(cf);
  v11 = Length;
  BytePtr = CFDataGetBytePtr(cf);
  if (DERDecoderInitialize(v12, BytePtr, &v11, Length))
  {
    sub_10005C100();
    return 0;
  }

  if (DERDecoderGetDataWithTag(v12, 0, 0x10u, 1, &numBytes[1], numBytes, &v10))
  {
    sub_10005C12C();
    return 0;
  }

  if (DERDecoderInitialize(v12, *&numBytes[1], numBytes, numBytes[0]))
  {
    sub_10005C158();
    return 0;
  }

  v10 = 1;
  if (DERDecoderGetDataWithTag(v12, 0, 0x16u, 0, &numBytes[1], numBytes, &v10))
  {
    sub_10005C184();
    return 0;
  }

  return CFStringCreateWithBytes(a1, *&numBytes[1], numBytes[0], 0x8000100u, 0);
}

uint64_t AMAuthInstallApImg4CopyPayloadVersionProperty(const __CFAllocator *a1, const void *a2, int a3, uint64_t *a4)
{
  Length = 0;
  theData = 0;
  v22 = 0;
  BytePtr = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v20 = 0;
  MutableBytePtr = 0;
  v19 = 0;
  if (!a2 || !a4)
  {
    v11 = 0;
    v9 = 0;
    v16 = 0;
    v17 = 0;
    v13 = 1;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v7 = AMAuthInstallApImg4CopyPayload(a1, a2, &theData);
  if (v7)
  {
    v13 = v7;
    v11 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = DERImg4DecodePayload(&BytePtr, &v26);
  if (v8)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "failed to decode img4 payload, error:%d", v8);
    v11 = 0;
    v9 = 0;
    goto LABEL_24;
  }

  v9 = AMSupportCopyDataFromAsciiEncodedHex();
  if (!v9)
  {
    v11 = 0;
    v13 = 3;
    goto LABEL_10;
  }

  MutableCopy = CFDataCreateMutableCopy(a1, 0, v9);
  v11 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_19;
  }

  v12 = 1952607602;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v22 = CFDataGetLength(v11);
  if (a3 == 1)
  {
    v12 = 1952607603;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
LABEL_12:
    Img4DecodeGetPayloadVersionPropertyString(&MutableBytePtr, v12 | 0xE000000000000000, &v20, &v19);
    if (!v15)
    {
      v14 = AMSupportCopyDataFromAsciiEncodedHex();
      if (v14)
      {
        v13 = 0;
        goto LABEL_15;
      }

LABEL_19:
      v13 = 2;
      goto LABEL_10;
    }

    AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "failed to parse version property: %d, error:%d", v12, v15);
LABEL_24:
    v13 = 23;
    goto LABEL_10;
  }

  AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "unsupported property type: %d\n", a3);
  v13 = 1;
LABEL_10:
  v14 = 0;
LABEL_15:
  *a4 = v14;
  v16 = v11;
  v17 = v9;
LABEL_16:
  SafeRelease(v16);
  SafeRelease(v17);
  SafeRelease(theData);
  return v13;
}

uint64_t sub_10000596C(uint64_t a1, CFDataRef theData, int a3, uint64_t a4, uint64_t (*a5)(FILE *, uint64_t))
{
  memset(v28, 0, sizeof(v28));
  v27 = 0;
  v26 = 0;
  *&__nitems[1] = 0;
  __nitems[0] = 0;
  if (!a1)
  {
    sub_10005C2D8(0);
    v18 = 1;
    goto LABEL_19;
  }

  if (!a3)
  {
    sub_10005C2C4(a1);
LABEL_31:
    v18 = 4;
    goto LABEL_19;
  }

  if (!theData)
  {
    v11 = Img4EncodeIMG4Tag(&v27, &v26);
    if (!v11)
    {
      v12 = 0;
      goto LABEL_9;
    }

LABEL_28:
    sub_10005C1F0();
    goto LABEL_35;
  }

  Length = CFDataGetLength(theData);
  if (Img4EncodeManifestHeader(Length, &v28[1], v28))
  {
    sub_10005C1C4();
    goto LABEL_35;
  }

  if (Img4EncodeIMG4Tag(&v27, &v26))
  {
    goto LABEL_28;
  }

  v11 = CFDataGetLength(theData);
  v12 = v28[0];
LABEL_9:
  if (!Img4EncodeImg4Header(v11 + a3 + v12 + v26, &__nitems[1], __nitems))
  {
    v13 = AMAuthInstallPlatformOpenFileStreamWithURL();
    if (v13)
    {
      v14 = v13;
      v15 = fwrite(*&__nitems[1], 1uLL, __nitems[0], v13);
      if (v15 == __nitems[0])
      {
        v16 = fwrite(v27, 1uLL, v26, v14);
        if (v16 == v26)
        {
          v17 = a5(v14, a4);
          v18 = v17;
          if (!theData || v17)
          {
            goto LABEL_18;
          }

          v19 = fwrite(*&v28[1], 1uLL, v28[0], v14);
          if (v19 == v28[0])
          {
            BytePtr = CFDataGetBytePtr(theData);
            v21 = CFDataGetLength(theData);
            v22 = fwrite(BytePtr, 1uLL, v21, v14);
            if (v22 == CFDataGetLength(theData))
            {
              v18 = 0;
LABEL_18:
              fclose(v14);
              goto LABEL_19;
            }

            v24 = "failed to stitch manifest to file: %s";
          }

          else
          {
            v24 = "failed to stitch manifest header to file: %s";
          }
        }

        else
        {
          v24 = "failed to write img4 string to dst file: %s";
        }
      }

      else
      {
        v24 = "failed to write header to dst file: %s";
      }

      sub_10005C21C(v24);
      v18 = 4;
      goto LABEL_18;
    }

    sub_10005C274(a1);
    goto LABEL_31;
  }

  sub_10005C1F0();
LABEL_35:
  v18 = 14;
LABEL_19:
  if (*&v28[1])
  {
    free(*&v28[1]);
  }

  if (v27)
  {
    free(v27);
  }

  if (*&__nitems[1])
  {
    free(*&__nitems[1]);
  }

  return v18;
}

uint64_t sub_100005BBC(FILE *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return 4 * (fwrite(BytePtr, 1uLL, Length, a1) != Length);
}

uint64_t sub_100005C18(FILE *a1, FILE *a2)
{
  v4 = malloc(0x100000uLL);
  if (v4)
  {
    while (1)
    {
      v5 = fread(v4, 1uLL, 0x100000uLL, a2);
      if (!v5)
      {
        break;
      }

      if (fwrite(v4, 1uLL, v5, a1) != v5)
      {
        sub_10005C2EC();
        v6 = 4;
        goto LABEL_6;
      }
    }

    v6 = 4 * (ferror(a2) != 0);
  }

  else
  {
    sub_10005C348(0);
    v6 = 2;
  }

LABEL_6:
  free(v4);
  return v6;
}

uint64_t AMAuthInstallApImg4StitchRestoreInfoWithAMAI(const __CFString *a1, const void *a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v5 = 0;
  *v27 = 0;
  *v28 = 0;
  v6 = 1;
  if (a2)
  {
    Mutable = 0;
    if (a3)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (a1)
      {
        v12 = &off_1000AA268;
        v13 = 4;
        do
        {
          v14 = *(v12 - 2);
          if (!v14)
          {
            sub_10005C3B4();
          }

          if (CFStringCompare(v14, a1, 0) == kCFCompareEqualTo)
          {
            v15 = *v12;
            if (!**v12)
            {
              sub_10005C388();
            }

            v16 = v15[1];
            if (!v16)
            {
              sub_10005C35C();
            }

            v17 = (v16)(a5, a3);
            if (v17)
            {
              v18 = v17;
              CFDictionarySetValue(Mutable, *v15, v17);
              CFRelease(v18);
            }
          }

          v12 += 3;
          --v13;
        }

        while (v13);
      }

      if (Mutable)
      {
        if (a4)
        {
          CFDictionaryApplyFunction(a4, sub_100005F70, Mutable);
        }

        if (a1)
        {
          v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-TBM", a1);
          if (v5)
          {
            Value = CFDictionaryGetValue(a3, v5);
            if (Value)
            {
              v20 = Value;
              v21 = CFDictionaryGetValue(Value, @"ucon");
              v22 = CFDictionaryGetValue(v20, @"ucer");
              if (v21)
              {
                CFDictionaryAddValue(Mutable, @"ucon", v21);
              }

              if (v22)
              {
                CFDictionaryAddValue(Mutable, @"ucer", v22);
              }
            }
          }
        }

        else
        {
          v5 = 0;
        }

        if (CFDictionaryGetCount(Mutable))
        {
          DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(0, v28, a2);
          if (DataFromMappedFileURL)
          {
            v6 = DataFromMappedFileURL;
            AMAuthInstallLog(3, "AMAuthInstallApImg4StitchRestoreInfoWithAMAI", "failed to read data from %@", a2);
          }

          else
          {
            v24 = AMAuthInstallApImg4EncodeRestoreInfo(*v28, Mutable, v27);
            if (v24)
            {
              v6 = v24;
              sub_10005C3E0();
            }

            else
            {
              v6 = AMAuthInstallSupportWriteDataToFileURL(0, *v27, a2, 1);
              if (v6)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4StitchRestoreInfoWithAMAI", "failed to write stitched data to %@", a2);
              }
            }
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v5 = 0;
        v6 = 2;
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  SafeRelease(Mutable);
  SafeRelease(*v28);
  SafeRelease(*v27);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallApImg4EncodeRestoreInfo(const __CFData *a1, CFDictionaryRef theDict, CFDataRef *a3)
{
  v26[0] = 0;
  v26[1] = 0;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  bytes = 0;
  v20 = 0;
  length = 0;
  v18 = 0;
  v19 = 0;
  if (!a1 || !theDict || (Count = CFDictionaryGetCount(theDict), !a3) || Count < 1)
  {
    Mutable = 0;
    if (!a3)
    {
      v17 = 3;
      v12 = 0;
      goto LABEL_18;
    }

    v12 = 0;
    goto LABEL_31;
  }

  v7 = CFDataGetLength(a1);
  v25 = v7;
  BytePtr = CFDataGetBytePtr(a1);
  if (DERDecoderInitialize(v26, BytePtr, &v25, v7))
  {
    v16 = "DERDecoderInitialize top level failed";
    goto LABEL_30;
  }

  if (DERDecoderGetDataWithTag(v26, 0, 0x10u, 1, &bytes, &length + 1, &v24))
  {
    v16 = "could not find im4p top level sequence";
    goto LABEL_30;
  }

  if (DERDecoderInitialize(v26, bytes, &length + 1, HIDWORD(length)))
  {
    v16 = "DERDecoderInitialize sequence failed";
    goto LABEL_30;
  }

  v24 = 3;
  EncodingWithTag = DERDecoderGetEncodingWithTag(v26, 2u, 1u, 1, &v22, &length, &v24);
  if (EncodingWithTag)
  {
    if (!AMAuthInstallApImg4EncodeRestoreDict(theDict, &v18, &v20 + 4))
    {
      Mutable = 0;
      goto LABEL_13;
    }

    v16 = "AMAuthInstallApImg4EncodeRestoreDict failed";
LABEL_30:
    sub_10005C40C(v16);
    Mutable = 0;
    v12 = 0;
    goto LABEL_31;
  }

  HIDWORD(length) -= length;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = Mutable;
  if (!AMAuthInstallApImg4DecodeRestoreInfo(a1, &v19))
  {
    AMSupportCreateMergedDictionary();
    v17 = 0;
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreInfo", "failed to create merged restore Info dictionary");
LABEL_32:
    v12 = 0;
    goto LABEL_18;
  }

  v15 = AMAuthInstallApImg4EncodeRestoreDict(theDict, &v18, &v20 + 4);
  if (v15)
  {
    v17 = v15;
    sub_10005C434();
    goto LABEL_32;
  }

LABEL_13:
  v11 = CFDataCreateMutable(0, 0);
  v12 = v11;
  if (!v11 || (CFDataAppendBytes(v11, bytes, HIDWORD(length)), CFDataAppendBytes(v12, v18, HIDWORD(v20)), !DEREncoderCreate()))
  {
    if (!EncodingWithTag)
    {
      v17 = 2;
      goto LABEL_18;
    }

LABEL_31:
    *a3 = 0;
    v17 = 3;
    goto LABEL_18;
  }

  CFDataGetBytePtr(v12);
  CFDataGetLength(v12);
  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_31;
  }

  v13 = CFDataCreate(0, 0, v20);
  *a3 = v13;
  v17 = 2 * (v13 == 0);
LABEL_18:
  SafeRelease(Mutable);
  SafeFree(v18);
  SafeFree(0);
  SafeRelease(v12);
  DEREncoderDestroy();
  return v17;
}

CFDataRef AMAuthInstallApImg4CreateStitchTicket(const __CFAllocator *a1, const __CFData *a2, const __CFData *a3)
{
  if (!a2)
  {
    a3 = 0;
    v7 = 0;
    goto LABEL_17;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_23;
  }

  if (CFStringGetCString(@"IMG4", buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      sub_10005C460();
      goto LABEL_23;
    }
  }

  if (DEREncoderCreateEncodedBuffer())
  {
LABEL_23:
    a3 = 0;
    v7 = 0;
    goto LABEL_17;
  }

  Mutable = CFDataCreateMutable(a1, 0);
  v7 = Mutable;
  if (!Mutable)
  {
    a3 = 0;
    goto LABEL_17;
  }

  CFDataAppendBytes(Mutable, 0, 0);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  CFDataAppendBytes(v7, BytePtr, Length);
  if (a3)
  {
    if (!DEREncoderCreate() || (CFDataGetBytePtr(a3), CFDataGetLength(a3), DEREncoderAddData()) || DEREncoderCreateEncodedBuffer())
    {
      a3 = 0;
    }

    else
    {
      v10 = CFDataCreate(a1, 0, 0);
      a3 = v10;
      if (v10)
      {
        v11 = CFDataGetBytePtr(v10);
        v12 = CFDataGetLength(a3);
        CFDataAppendBytes(v7, v11, v12);
        goto LABEL_13;
      }
    }

LABEL_17:
    SafeRelease(0);
    v13 = 0;
    goto LABEL_18;
  }

LABEL_13:
  if (!DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CFDataGetBytePtr(v7);
  CFDataGetLength(v7);
  if (DEREncoderAddDataNoCopy())
  {
    goto LABEL_17;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_17;
  }

  v13 = CFDataCreateWithBytesNoCopy(a1, 0, 0, kCFAllocatorMalloc);
  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_18:
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeFree(0);
  SafeFree(0);
  SafeRelease(v7);
  SafeRelease(a3);
  return v13;
}

BOOL AMAuthInstallApImg4SupportsLocalSigning(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      if (*(v1 + 92))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4GetTagAsInteger(CFStringRef theString)
{
  v4 = 0;
  if (!theString)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = 0; i != 4; ++i)
  {
    if (i == CFStringGetLength(theString))
    {
      break;
    }

    *(&v4 + i) = CFStringGetCharacterAtIndex(theString, i);
  }

  return bswap32(v4);
}

uint64_t AMAuthInstallApImg4AddInteger32Property(uint64_t a1, const __CFString *a2, const __CFNumber *a3)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ string", a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s: invalid datatype", "AMAuthInstallApImg4AddInteger32Property");
    if (CString)
    {
      v6 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v6 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s failed to create DER file", "AMAuthInstallApImg4AddInteger32Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt32())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ value", a2);
    goto LABEL_17;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder())
  {
    sub_10005C4A0();
    goto LABEL_17;
  }

  v6 = 0;
LABEL_11:
  DEREncoderDestroy();
  return v6;
}

uint64_t AMAuthInstallApImg4AddInteger64Property(uint64_t a1, const __CFString *a2, const __CFNumber *a3)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ string", a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s: invalid datatype", "AMAuthInstallApImg4AddInteger64Property");
    if (CString)
    {
      v6 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v6 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s failed to create DER file", "AMAuthInstallApImg4AddInteger64Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt64())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ value", a2);
    goto LABEL_17;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder())
  {
    sub_10005C4CC();
    goto LABEL_17;
  }

  v6 = 0;
LABEL_11:
  DEREncoderDestroy();
  return v6;
}

uint64_t AMAuthInstallApImg4AddBooleanProperty(uint64_t a1, const __CFString *a2, int a3)
{
  if (!a1 || !a2 || !DEREncoderCreate())
  {
    goto LABEL_13;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "failed to add %@ string", a2);
      goto LABEL_13;
    }
  }

  if (DEREncoderAddData())
  {
    sub_10005C4F8();
LABEL_13:
    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "%s failed to create DER file", "AMAuthInstallApImg4AddBooleanProperty");
    goto LABEL_9;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder())
  {
    sub_10005C530();
    goto LABEL_13;
  }

  v4 = 0;
LABEL_9:
  DEREncoderDestroy();
  return v4;
}

uint64_t AMAuthInstallApImg4AddDataProperty(uint64_t a1, const __CFString *a2, const __CFData *a3)
{
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ string", a2);
      goto LABEL_14;
    }
  }

  CFDataGetBytePtr(a3);
  CFDataGetLength(a3);
  if (DEREncoderAddData())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ data", a2);
LABEL_14:
    v5 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "%s failed to create DER file", "AMAuthInstallApImg4AddDataProperty");
    goto LABEL_10;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  if (DEREncoderAddPrivateFromEncoder())
  {
    sub_10005C55C();
    goto LABEL_14;
  }

  v5 = 0;
LABEL_10:
  DEREncoderDestroy();
  return v5;
}

uint64_t AMAuthInstallApImg4AddDictionaryProperty(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a3, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "failed to add %@ string", a3);
      goto LABEL_14;
    }
  }

  if (DEREncoderAddSetFromEncoder())
  {
    sub_10005C588();
LABEL_14:
    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "%s failed to create DER file", "AMAuthInstallApImg4AddDictionaryProperty");
    goto LABEL_10;
  }

  AMAuthInstallApImg4GetTagAsInteger(a3);
  if (DEREncoderAddPrivateFromEncoder())
  {
    sub_10005C5B4();
    goto LABEL_14;
  }

  v4 = 0;
LABEL_10:
  DEREncoderDestroy();
  return v4;
}

BOOL sub_100006E3C(uint64_t a1, char *__s)
{
  v2 = *a1;
  if (*a1 && (v5 = strlen(__s), *(a1 + 8) == v5))
  {
    return strncmp(v2, __s, v5) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t AMAuthInstallApImg4ValidImage(void *a1, uint64_t a2)
{
  v2 = a1;
  v14 = 0;
  if (!a1)
  {
    AMSupportCreateErrorInternal();
LABEL_14:
    v11 = 0;
    goto LABEL_17;
  }

  v3 = AMAuthInstallPlatformOpenFileStreamWithURL();
  if (!v3)
  {
    v12 = __error();
    strerror(*v12);
    AMSupportCreateErrorInternal();
    v2 = 0;
    goto LABEL_14;
  }

  v4 = v3;
  v5 = malloc(0x20uLL);
  v2 = v5;
  if (v5)
  {
    v6 = fread(v5, 1uLL, 0x20uLL, v4);
    v7 = v6;
    if (v6 != 32)
    {
      AMAuthInstallLog(4, "AMAuthInstallApImg4ValidImage", "Read %ld bytes out of expected %ld", v6, 32);
    }

    v8 = Img4DecodeParseLengthFromBufferWithTag(v2, v7, 0x494D3450u, &v14);
    v9 = Img4DecodeParseLengthFromBufferWithTag(v2, v7, 0x494D4734u, &v14);
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10;
  }

  else
  {
    AMSupportCreateErrorInternal();
    v11 = 0;
  }

  fclose(v4);
LABEL_17:
  SafeFree(v2);
  return v11;
}

uint64_t sub_100007058(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v8[0] = 0;
  v8[1] = 0;
  v5 = DERDecodeSeqContentInit(a1, v8);
  if (v5)
  {
    v6 = v5;
    sub_10005C5E0();
  }

  else
  {
    v11 = *v8;
    v9 = 0;
    v10 = 0uLL;
    while (1)
    {
      v6 = DERDecodeSeqNext(&v11, &v9);
      if (v6)
      {
        break;
      }

      if (v9 == a2)
      {
        *a3 = v10;
        return v6;
      }
    }
  }

  return v6;
}

CFTypeRef sub_1000070E4(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 56)) != 0)
  {
    return CFRetain(v2);
  }

  else
  {
    return 0;
  }
}

CFTypeRef sub_100007104(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return CFRetain(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000719C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return AMAuthInstallApImg4ReCreatePayloadWithProperties();
}

uint64_t sub_1000071C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v17 = a2 & 0xFFFFFFFFFFFFLL | 0xE000000000000000;

  return sub_10005BF44(va1, v17, va);
}

void sub_1000071DC(uint64_t a1, const void *a2)
{
  v5 = *v3;

  CFDictionarySetValue(v2, a2, v5);
}

uint64_t sub_1000071F4(uint64_t a1)
{
  result = 0;
  *(*(v1 + 16) + 48) = a1;
  return result;
}

CFDataRef sub_10000721C(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  v5 = *v3;

  return CFDataCreateWithBytesNoCopy(0, a2, a3, v5);
}

CFComparisonResult sub_100007234(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

CFComparisonResult sub_10000724C(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t AMAuthInstallApImg4LocalCreateManifestBody(const void **a1, CFTypeRef a2, CFDataRef *a3)
{
  if (!a1 || !a2 || !a3)
  {
    v66 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", "AMAuthInstallApImg4LocalCreateManifestBody");
    if (!a3)
    {
      v8 = 0;
      goto LABEL_68;
    }

    v8 = 0;
LABEL_84:
    SafeRelease(*a3);
    v66 = 3;
    goto LABEL_68;
  }

  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request", 2);
  v6 = DEREncoderCreate();
  if (!v6)
  {
    v8 = 0;
    goto LABEL_83;
  }

  v7 = CFGetAllocator(a1);
  v8 = CFNumberCreate(v7, kCFNumberIntType, a1[2] + 84);
  if (!v8)
  {
    goto LABEL_83;
  }

  if (AMAuthInstallApImg4AddInteger32Property(v6, @"CEPO", v8))
  {
    goto LABEL_83;
  }

  Value = CFDictionaryGetValue(a2, @"ApChipID");
  if (Value)
  {
    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v6, @"CHIP", v10))
      {
        goto LABEL_83;
      }
    }
  }

  v12 = CFDictionaryGetValue(a2, @"ApBoardID");
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v6, @"BORD", v13))
      {
        goto LABEL_83;
      }
    }
  }

  v15 = CFDictionaryGetValue(a2, @"ApECID");
  if (v15 && (v16 = v15, v17 = CFGetTypeID(v15), v17 == CFNumberGetTypeID()))
  {
    v18 = AMAuthInstallApImg4AddInteger64Property(v6, @"ECID", v16);
    if (v18)
    {
      sub_10005D148(v18);
      goto LABEL_83;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = CFDictionaryGetValue(a2, @"ApSecurityDomain");
  if (v20 && (v21 = v20, v22 = CFGetTypeID(v20), v22 == CFNumberGetTypeID()) && (v23 = AMAuthInstallApImg4AddInteger32Property(v6, @"SDOM", v21), v23) || ((v24 = CFDictionaryGetValue(a2, @"ApProductionMode")) == 0 || (v25 = v24, v26 = CFGetTypeID(v24), v26 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v25) ? (v27 = 0) : (v27 = 1), (v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"CPRO", v27), v23) || ((v28 = CFDictionaryGetValue(a2, @"ApSecurityMode")) == 0 || (v29 = v28, v30 = CFGetTypeID(v28), v30 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v29) ? (v31 = 0) : (v31 = 1), (v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"CSEC", v31), v23) || (v32 = CFDictionaryGetValue(a2, @"ApLocalNonceHash")) != 0 && (v33 = v32, v34 = CFGetTypeID(v32), v34 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"LNCH", v33), v23) || (v35 = CFDictionaryGetValue(a2, @"ApNonce")) != 0 && (v36 = v35, v37 = CFGetTypeID(v35), v37 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"BNCH", v36), v23) || (v38 = CFDictionaryGetValue(a2, @"SepNonce")) != 0 && (v39 = v38, v40 = CFGetTypeID(v38), v40 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"snon", v39), v23) || (v41 = CFDictionaryGetValue(a2, @"ApAllowMixAndMatch")) != 0 && (v42 = v41, v43 = CFGetTypeID(v41), v43 == CFBooleanGetTypeID()) && CFBooleanGetValue(v42) && (v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"AMNM", 1), v23) || (v44 = CFDictionaryGetValue(a2, @"Ap,NextStageIM4MHash")) != 0 && (v45 = v44, v46 = CFGetTypeID(v44), v46 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"nsih", v45), v23) || (v47 = CFDictionaryGetValue(a2, @"Ap,RecoveryOSPolicyNonceHash")) != 0 && (v48 = v47, v49 = CFGetTypeID(v47), v49 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"ronh", v48), v23) || (v50 = CFDictionaryGetValue(a2, @"Ap,VolumeUUID")) != 0 && (v51 = v50, v52 = CFGetTypeID(v50), v52 == CFDataGetTypeID()) && (v23 = AMAuthInstallApImg4AddDataProperty(v6, @"vuid", v51), v23) || (v53 = CFDictionaryGetValue(a2, @"Ap,LocalBoot")) != 0 && (v54 = v53, v55 = CFGetTypeID(v53), v55 == CFBooleanGetTypeID()) && (v56 = CFBooleanGetValue(v54), v23 = AMAuthInstallApImg4AddBooleanProperty(v6, @"lobo", v56), v23))))
  {
    v66 = v23;
    goto LABEL_78;
  }

  v57 = DEREncoderCreate();
  if (!v57)
  {
    goto LABEL_74;
  }

  v58 = AMAuthInstallApImg4AddDictionaryProperty(v6, v57, @"MANP");
  if (v58)
  {
    v66 = v58;
    goto LABEL_78;
  }

  v59 = CFGetAllocator(a1);
  v60 = AMAuthInstallApImg4LocalAddImages(v59, a2, v57);
  if (v60)
  {
    v66 = v60;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "failed to add img objects to the manifest body");
    goto LABEL_78;
  }

  v61 = DEREncoderCreate();
  if (!v61)
  {
    goto LABEL_74;
  }

  v62 = AMAuthInstallApImg4AddDictionaryProperty(v57, v61, @"MANB");
  if (v62)
  {
    v66 = v62;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "failed to create the signed section");
    goto LABEL_78;
  }

  if (!DEREncoderCreate())
  {
LABEL_74:
    v66 = 2;
    goto LABEL_78;
  }

  v63 = DEREncoderAddSetFromEncoder();
  if (v63)
  {
    v66 = v63;
LABEL_78:
    if (v19)
    {
      goto LABEL_68;
    }

    goto LABEL_83;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
LABEL_83:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", "AMAuthInstallApImg4LocalCreateManifestBody");
    goto LABEL_84;
  }

  v64 = CFGetAllocator(a1);
  v65 = CFDataCreate(v64, 0, 0);
  *a3 = v65;
  if (v65)
  {
    v66 = 0;
  }

  else
  {
    sub_10005D15C();
    v66 = 2;
  }

LABEL_68:
  SafeFree(0);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeRelease(v8);
  return v66;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedTag(const __CFString *a1)
{
  bytes = 0;
  if (!a1)
  {
    sub_10005D1C0();
    goto LABEL_9;
  }

  if (!CFStringGetCString(a1, &length[4], 256, 0x8000100u))
  {
    sub_10005D1F8();
    goto LABEL_9;
  }

  if (!DEREncoderCreate())
  {
LABEL_9:
    SafeRelease(0);
    v2 = 0;
    goto LABEL_7;
  }

  strlen(&length[4]);
  if (DEREncoderAddData())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedTag", "failed to add %@ string", a1, 0);
    goto LABEL_9;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    sub_10005D188();
    goto LABEL_9;
  }

  v2 = CFDataCreate(0, 0, 0);
LABEL_7:
  SafeFree(bytes);
  DEREncoderDestroy();
  return v2;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedVersion(uint64_t a1)
{
  if (!DEREncoderCreate())
  {
    goto LABEL_8;
  }

  v1 = DEREncoderAddUInt32();
  if (v1)
  {
    sub_10005D230(v1);
LABEL_8:
    SafeRelease(0);
    v2 = 0;
    goto LABEL_5;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    sub_10005D244();
    goto LABEL_8;
  }

  v2 = CFDataCreate(0, 0, 0);
LABEL_5:
  SafeFree(0);
  DEREncoderDestroy();
  return v2;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedData(const __CFData *a1)
{
  if (!DEREncoderCreate())
  {
    goto LABEL_8;
  }

  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (DEREncoderAddData())
  {
    sub_10005D27C();
LABEL_8:
    SafeRelease(0);
    v2 = 0;
    goto LABEL_5;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    sub_10005D2B4();
    goto LABEL_8;
  }

  v2 = CFDataCreate(0, 0, 0);
LABEL_5:
  SafeFree(0);
  DEREncoderDestroy();
  return v2;
}

uint64_t _AMAuthInstallApImg4LocalCreateSignedManifest(void *a1, const void *a2, const void *a3, const void *a4, const void *a5, CFDataRef *a6, int a7)
{
  LODWORD(length) = 0;
  v42 = 0;
  theData = 0;
  v41 = 0;
  if (!a1 || !a2 || !a6)
  {
    v25 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", "_AMAuthInstallApImg4LocalCreateSignedManifest");
    v28 = 0;
    v21 = 0;
    v17 = 0;
    Mutable = 0;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

  v14 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v14, 0);
  if (!Mutable)
  {
    v17 = 0;
LABEL_47:
    v21 = 0;
    goto LABEL_37;
  }

  EncodedTag = AMAuthInstallApImg4LocalCreateEncodedTag(@"IM4M");
  v17 = EncodedTag;
  if (!EncodedTag)
  {
    sub_10005D464();
    goto LABEL_47;
  }

  BytePtr = CFDataGetBytePtr(EncodedTag);
  v19 = CFDataGetLength(v17);
  CFDataAppendBytes(Mutable, BytePtr, v19);
  EncodedVersion = AMAuthInstallApImg4LocalCreateEncodedVersion(0);
  v21 = EncodedVersion;
  if (!EncodedVersion)
  {
    sub_10005D42C();
    goto LABEL_37;
  }

  cf = a5;
  v22 = CFDataGetBytePtr(EncodedVersion);
  v23 = CFDataGetLength(v21);
  CFDataAppendBytes(Mutable, v22, v23);
  if (a3)
  {
    v24 = CFRetain(a3);
    theData = v24;
    v25 = 99;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_19:
    sub_10005D400();
    goto LABEL_37;
  }

  if (AMAuthInstallApImg4LocalCreateManifestBody(a1, a2, &theData))
  {
    sub_10005D2EC();
    goto LABEL_37;
  }

  v25 = 0;
  v24 = theData;
  if (!theData)
  {
    goto LABEL_19;
  }

LABEL_9:
  v26 = CFDataGetBytePtr(v24);
  v27 = CFDataGetLength(theData);
  CFDataAppendBytes(Mutable, v26, v27);
  if (!a7)
  {
    if (!AMAuthInstallApImg4LocalRegisterKeys(a1))
    {
      if (a4)
      {
        v32 = CFRetain(a4);
        v42 = v32;
        if (v32)
        {
          EncodedData = AMAuthInstallApImg4LocalCreateEncodedData(v32);
          v28 = EncodedData;
          if (EncodedData)
          {
            v34 = CFDataGetBytePtr(EncodedData);
            v35 = CFDataGetLength(v28);
            CFDataAppendBytes(Mutable, v34, v35);
            if (cf)
            {
              v36 = CFRetain(cf);
              v41 = v36;
              if (v36)
              {
LABEL_26:
                v37 = CFDataGetBytePtr(v36);
                v38 = CFDataGetLength(v41);
                CFDataAppendBytes(Mutable, v37, v38);
                v25 = 0;
                goto LABEL_11;
              }
            }

            else
            {
              if (AMAuthInstallApImg4LocalCreateEncodedCertificateChain(a1, &v41))
              {
                sub_10005D318();
                goto LABEL_38;
              }

              v36 = v41;
              if (v41)
              {
                goto LABEL_26;
              }
            }

            sub_10005D370();
          }

          else
          {
            sub_10005D39C();
          }

LABEL_38:
          AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", "_AMAuthInstallApImg4LocalCreateSignedManifest");
LABEL_39:
          SafeRelease(*a6);
          *a6 = 0;
          v25 = 3;
          goto LABEL_16;
        }

        goto LABEL_35;
      }

      v39 = *(a1[2] + 128);
      if (v39 != 384)
      {
        if (v39 == 256)
        {
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallCryptoCreateRsaSignature_SHA256())
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v39 != 1)
          {
            AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "Unsupported digest type: %d", *(a1[2] + 128));
            goto LABEL_37;
          }

          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallCryptoCreateRsaSignature())
          {
            goto LABEL_37;
          }
        }

        goto LABEL_35;
      }

      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
      if (!AMAuthInstallCryptoCreateRsaSignature_SHA384())
      {
LABEL_35:
        sub_10005D3D4();
      }
    }

LABEL_37:
    v28 = 0;
    goto LABEL_38;
  }

  v28 = 0;
LABEL_11:
  if (!DEREncoderCreate())
  {
    goto LABEL_38;
  }

  CFDataGetBytePtr(Mutable);
  CFDataGetLength(Mutable);
  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_38;
  }

  v29 = CFGetAllocator(a1);
  v30 = CFDataCreate(v29, 0, length);
  *a6 = v30;
  if (!v30)
  {
    sub_10005D344();
    v25 = 2;
  }

LABEL_16:
  SafeRelease(Mutable);
  SafeRelease(v17);
  SafeRelease(v21);
  SafeRelease(theData);
  SafeRelease(v42);
  SafeRelease(v28);
  SafeRelease(v41);
  SafeFree(0);
  DEREncoderDestroy();
  return v25;
}

uint64_t sub_100008098(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return AMAuthInstallCryptoRegisterKeysFromPEMBuffer();
}

CFIndex AMAuthInstallBasebandApplyTssOverrides(const void *a1, const __CFData *a2, CFTypeRef cf)
{
  data = 0;
  v18 = a2;
  error = 0;
  if (!a1)
  {
    sub_10005FBF4(0);
LABEL_16:
    v5 = 0;
    v7 = 0;
    v6 = 1;
    goto LABEL_12;
  }

  if (!a2)
  {
    sub_10005FBE0(a1);
    goto LABEL_16;
  }

  if (!cf)
  {
    sub_10005FBCC(a1);
    goto LABEL_16;
  }

  v4 = BbfwReaderOpen(cf);
  v5 = v4;
  if (!v4)
  {
    sub_10005FBB8(0);
    v7 = 0;
    v6 = 4;
    goto LABEL_12;
  }

  if (BbfwReaderFindAndCopyFileData(v4, @"Options.plist", &data))
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  v8 = CFGetAllocator(a1);
  v9 = CFPropertyListCreateWithData(v8, data, 0, 0, &error);
  v7 = v9;
  if (!v9)
  {
    sub_10005FB7C(&error);
LABEL_20:
    v6 = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v9, @"TssOverrides");
  if (!Value)
  {
    sub_10005FB50();
    goto LABEL_20;
  }

  v11 = Value;
  v12 = CFGetAllocator(a1);
  v13 = AMAuthInstallSupportApplyDictionaryOverrides(v12, v11, &v18, @"Bb");
  if (v13)
  {
    v6 = v13;
    sub_10005FAF8();
  }

  else
  {
    v14 = CFGetAllocator(a1);
    v6 = AMAuthInstallSupportApplyDictionaryOverrides(v14, v11, &v18, @"FDR");
    if (v6)
    {
      sub_10005FB24();
    }
  }

LABEL_12:
  SafeRelease(v7);
  SafeRelease(data);
  SafeRelease(error);
  BbfwReaderClose(v5);
  return v6;
}

CFComparisonResult AMAuthInstallBasebandGetTagForKeyHashName(uint64_t a1, CFStringRef theString2, __CFString **a3)
{
  if (!a1)
  {
    sub_10005FC30(0);
    return 1;
  }

  if (!theString2)
  {
    sub_10005FC1C(a1);
    return 1;
  }

  if (!a3)
  {
    sub_10005FC08(a1);
    return 1;
  }

  if (CFStringCompare(@"BbProvisioningManifestKeyHash", theString2, 0))
  {
    result = CFStringCompare(@"BbActivationManifestKeyHash", theString2, 0);
    if (result)
    {
      result = CFStringCompare(@"BbCalibrationManifestKeyHash", theString2, 0);
      if (result)
      {
        result = CFStringCompare(@"BbFactoryActivationManifestKeyHash", theString2, 0);
        if (result)
        {
          result = CFStringCompare(@"BbFDRSecurityKeyHash", theString2, 0);
          if (result)
          {
            return 8;
          }

          v8 = kAMAuthInstallTagBbFDRSecurityKeyHash;
        }

        else
        {
          v8 = kAMAuthInstallTagBbFactoryActivationKeyHash;
        }
      }

      else
      {
        v8 = kAMAuthInstallTagBbCalibrationKeyHash;
      }
    }

    else
    {
      v8 = kAMAuthInstallTagBbActivationKeyHash;
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7 && *(v7 + 4) != 80)
    {
      result = kCFCompareEqualTo;
      v8 = kAMAuthInstallTagBbProvisioningKeyHash;
    }

    else
    {
      result = kCFCompareEqualTo;
      v8 = kAMAuthInstallTagBbSKeyId;
    }
  }

  *a3 = *v8;
  return result;
}

uint64_t sub_100008374(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  value = 0;
  v5 = BbfwReaderCopyFileData(a3, &value);
  if (v5)
  {
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(0, v5);
    AMAuthInstallLog(3, "_AddFirmware", "failed to extract bbfw item %@: %@; continuing anyway", a2, LocalizedStatusString);
  }

  else if (value)
  {
    CFDictionarySetValue(v4, a2, value);
  }

  else
  {
    AMAuthInstallLog(4, "_AddFirmware", "failed to add %@; ignoring it", a2);
  }

  SafeRelease(value);
  return 1;
}

void _AMAuthInstallBasebandParametersFinalize(void *a1)
{
  if (a1)
  {
    SafeRelease(a1[2]);
    SafeRelease(a1[3]);
    SafeRelease(a1[4]);
    SafeRelease(a1[5]);
    SafeRelease(a1[8]);
    SafeRelease(a1[9]);
    SafeRelease(a1[13]);
    SafeRelease(a1[14]);
    SafeRelease(a1[15]);
    SafeRelease(a1[16]);
    SafeRelease(a1[17]);
    SafeRelease(a1[18]);
    SafeRelease(a1[19]);
    SafeRelease(a1[21]);

    free(a1);
  }
}

uint64_t AMAuthInstallBasebandGetKeyHash(uint64_t a1, const void *a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 200), a2);
      result = 0;
      *a3 = Value;
      return result;
    }

    sub_10005FC44(a1);
  }

  else
  {
    sub_10005FC58(0);
  }

  return 1;
}

__CFString *AMAuthInstallBasebandCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 256);
  CFStringAppend(Mutable, @"(");
  if (*(a1 + 58))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"personalize=%s", v4);
  if (*(a1 + 48))
  {
    CFStringAppendFormat(Mutable, 0, @", ");
    if (*(*(a1 + 48) + 16))
    {
      v5 = CFGetAllocator(a1);
      v6 = _CopyHexStringFromData(v5, *(*(a1 + 48) + 16));
      if (v6)
      {
        v7 = v6;
        CFStringAppendFormat(Mutable, 0, @"snum=0x%@, ", v6);
        CFRelease(v7);
      }
    }

    CFStringAppendFormat(Mutable, 0, @"chipid=0x%x, certid=0x%x", *(*(a1 + 48) + 4), *(*(a1 + 48) + 8));
    if (*(*(a1 + 48) + 24))
    {
      v8 = CFGetAllocator(a1);
      v9 = _CopyHexStringFromData(v8, *(*(a1 + 48) + 24));
      if (v9)
      {
        v10 = v9;
        CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v9);
        CFRelease(v10);
      }
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void sub_100008678(CFStringRef theString, const __CFData *a2, CFErrorRef *a3)
{
  if (!*a3)
  {
    v5 = BbfwWriterAddFile(a3[1], theString, a2);
    if (v5)
    {
      v6 = v5;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v8 = Mutable;
        v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"BbfwWriterAddFile failed to add file: %@. Error code: %d", theString, v6);
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(v8, kCFErrorDescriptionKey, v9);
          CFRelease(v10);
        }

        *a3 = CFErrorCreate(kCFAllocatorDefault, @"AuthInstallErrorDomain", v6, v8);
        AMAuthInstallLog(3, "_AddToArchive", "failed to archive %@", theString);

        CFRelease(v8);
      }

      else
      {
        *a3 = CFErrorCreate(kCFAllocatorDefault, @"AuthInstallErrorDomain", v6, 0);
        AMAuthInstallLog(3, "_AddToArchive", "failed to archive %@", theString);
      }
    }
  }
}

void sub_100008908(__CFDictionary *a1)
{

  CFDictionarySetValue(a1, v2, v1);
}

uint64_t sub_100008920(const __CFAllocator *a1, uint64_t a2, unint64_t a3, CFDataRef *a4, CFStringRef *a5)
{
  if (!a4)
  {
    sub_100060E94();
  }

  if (!a5)
  {
    sub_100060E68();
  }

  v18 = 0uLL;
  v19 = 0;
  if (a3 < 0x50 || *(a2 + 4) != 1430808940 || (v6 = *(a2 + 12), (v6 + 1) <= 1))
  {
    AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", "PSI Image does not contain recognizable PSI header");
    return 10;
  }

  if ((*(a2 + 10) & 1) == 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", "missing SN indicator");
    return 1;
  }

  v8 = *(a2 + 20);
  if ((v8 & 0x3F) != 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", "GPuK is not properly aligned for partial digest");
    return 10;
  }

  *bytes = *(a2 + 40) - v8;
  v17 = v8;
  *&v11 = sub_100009230(a2, v8, &v18).u64[0];
  v12 = CFStringCreateWithFormat(a1, 0, @"0x%08x", v11, v6);
  if (v12)
  {
    v13 = v12;
    v14 = CFDataCreate(a1, bytes, 28);
    if (v14)
    {
      v15 = v14;
      result = 0;
      *a5 = v13;
      *a4 = v15;
      return result;
    }

    CFRelease(v13);
  }

  return 2;
}

uint64_t sub_100008AA8(const __CFAllocator *a1, void *data, CC_LONG len, CFDataRef *a4)
{
  CC_SHA1(data, len, md);
  v6 = CFDataCreate(a1, md, 20);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t AMAuthInstallBasebandICE3StitchModemStack(uint64_t a1, CFTypeRef cf, uint64_t a3, CFTypeRef *a4)
{
  if (*(*(a1 + 48) + 24))
  {
    *a4 = CFRetain(cf);
  }

  return 0;
}

unint64_t AMAuthInstallBasebandICE3MeasureWorld(const void *a1, CFDataRef theData, __CFDictionary *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = CFDataGetLength(theData);
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  if (!result)
  {
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  cf = 0;
  value = 0;
  do
  {
    v15 = &BytePtr[v8];
    v16 = *&BytePtr[v8];
    if (v16 <= 15)
    {
      if (v16 == 12)
      {
        v19 = v15[2];
        if (v19 > 4)
        {
LABEL_39:
          AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureWorld", "UID value of %ld exceeds maximum array bound of %d\n");
          return 10;
        }

        v20 = v15[7];
        v21 = &v48[v19];
        *v21 = &BytePtr[v15[9]];
        v21[1] = v20;
      }

      else if (v16 == 15)
      {
        v17 = v15[2];
        if (v17 > 4)
        {
          goto LABEL_39;
        }

        v18 = &v47[v17];
        *v18 = v15 + 131;
        v18[1] = 1536;
      }
    }

    else
    {
      switch(v16)
      {
        case 16:
          v9 = v15[3];
          v10 = &BytePtr[v15[5]];
          break;
        case 19:
          v14 = &BytePtr[v15[7]];
          v13 = v15[5];
          break;
        case 18:
          v11 = &BytePtr[v15[7]];
          v12 = v15[5];
          break;
      }
    }

    v8 += v15[1];
  }

  while (v8 < result);
  v44 = 0;
  if (!v11)
  {
    goto LABEL_20;
  }

  v22 = CFGetAllocator(a1);
  result = sub_100008920(v22, v11, v12, &cf, &value);
  if (!result)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "RamPSI Version: %@", value);
    CFDictionarySetValue(a3, @"RamPSI-Version", value);
    CFRelease(value);
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "RamPSI PartialDigest: %@", cf);
    CFDictionarySetValue(a3, @"RamPSI-PartialDigest", cf);
    CFRelease(cf);
LABEL_20:
    if (v14)
    {
      v23 = CFGetAllocator(a1);
      result = sub_100008AA8(v23, v14, v13, &v44);
      if (!result)
      {
        v24 = v44;
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "EBL Digest: %@", v44);
        CFDictionarySetValue(a3, @"EBL-Digest", v24);
        CFRelease(v24);
        goto LABEL_23;
      }

      return result;
    }

LABEL_23:
    if (!v9)
    {
      return 0;
    }

    v25 = v9;
    for (i = v10 + 4; ; i += 36)
    {
      v27 = *(i - 1);
      v28 = &v48[v27];
      v29 = *v28;
      if (!*v28 || (v30 = &v47[v27], (v31 = *v30) == 0))
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureWorld", "one or more elements are missing for TOC with UID = %lx\n");
        return 10;
      }

      if (*i == 4)
      {
        break;
      }

      if (*i == 2)
      {
        v32 = CFGetAllocator(a1);
        result = sub_100008920(v32, v29, *(v28 + 1), &cf, &value);
        if (result)
        {
          return result;
        }

        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI Version: %@", value);
        CFDictionarySetValue(a3, @"FlashPSI-Version", value);
        CFRelease(value);
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI PartialDigest: %@", cf);
        CFDictionarySetValue(a3, @"FlashPSI-PartialDigest", cf);
        CFRelease(cf);
        v33 = CFGetAllocator(a1);
        result = sub_100008AA8(v33, v31, *(v30 + 1), &v44);
        if (result)
        {
          return result;
        }

        v34 = v44;
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI SecPack Digest: %@", v44);
        v35 = a3;
        v36 = @"FlashPSI-SecPackDigest";
LABEL_36:
        CFDictionarySetValue(v35, v36, v34);
        CFRelease(v34);
      }

      result = 0;
      if (!--v25)
      {
        return result;
      }
    }

    v37 = CFGetAllocator(a1);
    v38 = *(v28 + 1);
    result = sub_100008AA8(v37, v29, v38, &v44);
    if (result)
    {
      return result;
    }

    v39 = v44;
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "Modem Stack Digest: %@", v44);
    CFDictionarySetValue(a3, @"ModemStack-Digest", v39);
    CFRelease(v39);
    v40 = CFGetAllocator(a1);
    v41 = CFStringCreateWithFormat(v40, 0, @"0x%08lx", v38);
    if (!v41)
    {
      return 2;
    }

    v42 = v41;
    CFDictionarySetValue(a3, @"ModemStack-Length", v41);
    CFRelease(v42);
    v43 = CFGetAllocator(a1);
    result = sub_100008AA8(v43, v31, *(v30 + 1), &v44);
    if (result)
    {
      return result;
    }

    v34 = v44;
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "Modem Stack SecPack Digest: %@", v44);
    v35 = a3;
    v36 = @"ModemStack-SecPackDigest";
    goto LABEL_36;
  }

  return result;
}

uint64_t AMAuthInstallBasebandCreatePersonalizedPsiData(const void *a1, const __CFData *a2, const __CFData *a3, __CFData **a4)
{
  v7 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v7, 0, a2);
  v9 = MutableCopy;
  if (MutableCopy)
  {
    Length = CFDataGetLength(MutableCopy);
    v11 = CFDataGetLength(a3);
    CFDataSetLength(v9, Length - v11);
    BytePtr = CFDataGetBytePtr(a3);
    v13 = CFDataGetLength(a3);
    CFDataAppendBytes(v9, BytePtr, v13);
    v14 = 0;
    if (a4)
    {
      *a4 = v9;
      v9 = 0;
    }
  }

  else
  {
    v14 = 2;
  }

  SafeRelease(v9);
  return v14;
}

uint64_t AMAuthInstallBasebandCreatePersonalizedTicketPlusEblData(CFTypeRef cf, const __CFData *a2, const __CFData *a3, __CFData **a4)
{
  result = 1;
  if (a2 && a3 && a4)
  {
    v9 = CFGetAllocator(cf);
    MutableCopy = CFDataCreateMutableCopy(v9, 0, a3);
    if (MutableCopy)
    {
      v11 = MutableCopy;
      Length = CFDataGetLength(MutableCopy);
      CFDataAppendBytes(v11, byte_1000848C3, -Length & 3);
      BytePtr = CFDataGetBytePtr(a2);
      v14 = CFDataGetLength(a2);
      CFDataAppendBytes(v11, BytePtr, v14);
      result = 0;
      *a4 = v11;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

int8x16_t sub_100009230(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  result = vrev32q_s8(*&v7.h0);
  *a3 = result;
  a3[1].i32[0] = bswap32(v7.h4);
  return result;
}

uint64_t sub_1000092A8(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v6, a2, v2, v3, v5, v4);
}

uint64_t sub_1000092CC(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, v3, v4, v5);
}

void sub_100009308(uint64_t a1, uint64_t a2, const char *a3)
{

  AMAuthInstallLog(6, v3, a3);
}

uint64_t sub_100009320(uint64_t a1, const void *a2, uint64_t a3)
{

  return AMAuthInstallDebugWriteObject(v3, a2, a3, 1);
}

uint64_t sub_100009358(const void **a1, uint64_t a2, uint64_t a3)
{

  return AMAuthInstallDebugWriteObject(a1, v3, a3, 1);
}

uint64_t sub_100009370()
{

  return FlsParserReadFromData(v0, v1);
}

uint64_t sub_1000093A4(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **))
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, a2, a3, v3, v5, v4);
}

uint64_t sub_1000093DC(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, v6, v2, v4, v3);
}

uint64_t sub_100009400(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t (*a4)(uint64_t, CFTypeRef, uint64_t))
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, a4, v4, v5);
}

uint64_t AMAuthInstallBasebandN41SupportsLocalSigning(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *v1;
  v3 = v1[2];
  v4 = v2 == 3 && v3 == 398790697;
  v5 = v4;
  if (v4)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandN41SupportsLocalSigning", "local signing is enabled");
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandN41SupportsLocalSigning", "local signing is disabled. vendorID=%d certID=%d");
  }

  return v5;
}

uint64_t sub_100009514(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, v3, v4, v5);
}

BOOL AMAuthInstallIsICE19BBGoldCertIDECDSA(int a1)
{
  AMAuthInstallLog(6, "AMAuthInstallIsICE19BBGoldCertIDECDSA", "GoldCertId: %X\n", a1);
  v2 = a1 == 653523660 || a1 == 1559424078;
  return a1 == -2087094182 || v2;
}

uint64_t AMAuthInstallBasebandRembrandtSupportsServerSigning(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 4) - 94;
  if (v1 > 0xA)
  {
    return 0;
  }

  else
  {
    return byte_1000848C7[v1];
  }
}

uint64_t sub_100009668(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureSystemSoftware, v3, v4);
}

uint64_t sub_100009698(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, AMAuthInstallRembrandtCreateStitchedPSI, v2, v4, v3);
}

uint64_t sub_1000096C8(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureEBL, v3, v4);
}

uint64_t sub_1000096F8(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureRestorePSI, v3, v4);
}

uint64_t sub_100009728(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasurePSI, v3, v4);
}

uint64_t sub_100009758(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureBBCFG, v3, v4);
}

uint64_t sub_100009788(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, AMAuthInstallRembrandtCreateStitchedRestorePSI, v2, v4, v3);
}

uint64_t sub_1000097B8(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **))
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v6, a2, a3, v3, v5, v4);
}

uint64_t sub_1000097D8(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(0, v6, a3, v3, v4, v5);
}

uint64_t sub_1000097FC(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  value = 0;
  if (!a1 || !*a1 || !theString || !a3 || !*(a1 + 8))
  {
    sub_10006359C();
LABEL_15:
    v7 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 16) && !CFStringHasPrefix(theString, @"vinyl"))
  {
    return 1;
  }

  v6 = BbfwReaderFindAndCopyFileData(a3, theString, &value);
  if (v6)
  {
    AMAuthInstallLog(3, "_VinylBBFWReaderCB", "Failed copying %@ %d", theString, v6);
    goto LABEL_15;
  }

  CFDictionarySetValue(*(a1 + 8), theString, value);
  AMAuthInstallLog(3, "_VinylBBFWReaderCB", "Vinyl copied %@", theString);
  v7 = 1;
LABEL_10:
  SafeRelease(value);
  return v7;
}

void AMAuthInstallBundleFinalize(uint64_t result)
{
  v1 = *(result + 128);
  if (v1)
  {
    SafeRelease(*v1);
    SafeRelease(*(*(result + 128) + 8));
    SafeRelease(*(*(result + 128) + 16));
    SafeRelease(*(*(result + 128) + 24));
    SafeRelease(*(*(result + 128) + 32));
    SafeRelease(*(*(result + 128) + 40));
    SafeFree(*(result + 128));
    *(result + 128) = 0;
  }
}

uint64_t AMAuthInstallBundleCopyPublishedVariantsArray(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  v10 = 0;
  DictionaryFromFileURL = AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, @"BuildManifest.plist", 0, &v10);
  if (DictionaryFromFileURL || AMAuthInstallSupportCreateDictionaryFromFileURL() && ((AMAuthInstallLog(3, "AMAuthInstallBundleCopyPublishedVariantsArray", "No build manifest. Checking for a different file."), SafeRelease(v10), v10 = 0, DictionaryFromFileURL = AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, @"BuildManifesto.plist", 0, &v10), DictionaryFromFileURL) || (DictionaryFromFileURL = AMAuthInstallSupportCreateDictionaryFromFileURL(), DictionaryFromFileURL)))
  {
    v7 = DictionaryFromFileURL;
  }

  else
  {
    Value = CFDictionaryGetValue(0, @"BuildIdentities");
    if (Value)
    {
      v7 = 0;
      *a3 = CFRetain(Value);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyPublishedVariantsArray", "the specified restore bundle contains a malformed build manifest");
      AMAuthInstallLog(8, "AMAuthInstallBundleCopyPublishedVariantsArray", "bundle: %@", a2);
      v7 = 1;
    }
  }

  SafeRelease(v10);
  SafeRelease(0);
  return v7;
}

CFBooleanRef sub_100009AD8(uint64_t a1, CFStringRef theString1)
{
  v2 = kCFBooleanFalse;
  if (theString1)
  {
    v3 = *(a1 + 496);
    if (v3)
    {
      if (CFStringCompare(theString1, v3, 0) == kCFCompareEqualTo)
      {
        return kCFBooleanTrue;
      }
    }
  }

  return v2;
}

const __CFDictionary *sub_100009B34(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"Info");
  if (result)
  {

    return CFDictionaryGetValue(result, @"Path");
  }

  return result;
}

void _AMAuthInstallBundleNormalizeOverridePaths(const void *a1, const __CFString *a2, CFMutableDictionaryRef *a3)
{
  v5 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(*a3, a1, v5);

    CFRelease(v6);
  }
}

void _AMAuthInstallBundleNormalizeOverrideURLs(const void *a1, CFURLRef anURL, CFMutableDictionaryRef *a3)
{
  v5 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(*a3, a1, v5);

    CFRelease(v6);
  }
}

uint64_t _AMAuthInstallBundlePopulatePersonalizedBundle(_BYTE *a1, const __CFURL *a2, const __CFURL *a3, int a4, const __CFDictionary *a5, CFURLRef a6, CFDictionaryRef theDict, const __CFArray *a8, CFArrayRef theArray, CFArrayRef a10, CFBooleanRef BOOLean)
{
  v11 = 0;
  context = 0;
  v203 = 0;
  v200 = 0;
  v201 = 0;
  Code = 1;
  if (!a1 || !a2 || !a3 || !a5)
  {
    goto LABEL_251;
  }

  v13 = theDict;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!theDict)
  {
    goto LABEL_200;
  }

  v20 = CFDictionaryGetValue(theDict, @"CumulativeResponse");
  if (v20)
  {
    v21 = v20;
    v206[0] = 0;
    if (a6)
    {
      CFGetAllocator(a1);
      MergedDictionary = AMSupportCreateMergedDictionary();
      if (MergedDictionary)
      {
        Code = MergedDictionary;
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "could not create merged response dictionary");
        v11 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_200;
      }

      CFDictionarySetValue(v13, @"CumulativeResponse", v206[0]);
      a6 = v206[0];
      SafeRelease(v206[0]);
      AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", "created merged response dictionary");
    }

    else
    {
      AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", "replaced NULL response dictionary with cumulative response");
      a6 = v21;
    }
  }

  else if (a1[435])
  {
    CFDictionarySetValue(v13, @"CumulativeResponse", a6);
    AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", "caching response dictionary on skipped install");
  }

  if (CFBooleanGetValue(BOOLean))
  {
    v13 = CFDictionaryGetValue(v13, @"RecoveryOS");
    if (!v13)
    {
      v11 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      Code = 8;
      goto LABEL_200;
    }
  }

  v23 = CFDictionaryGetValue(v13, @"Personalized");
  v24 = CFDictionaryGetValue(v13, @"Manifest");
  v25 = CFDictionaryGetValue(v13, @"Linked");
  v26 = CFDictionaryGetValue(v13, @"Alignment");
  v11 = 0;
  Code = 8;
  v187 = v23;
  if (!v23 || !v24)
  {
LABEL_251:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_200;
  }

  v193 = v24;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!v25)
  {
    goto LABEL_200;
  }

  v186 = v26;
  v198 = CFDictionaryGetValue(a5, @"Manifest");
  if (!v198)
  {
    sub_100069CCC();
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    Code = 7;
    goto LABEL_200;
  }

  v185 = v13;
  v199 = a1;
  v15 = 0;
  v190 = v25;
  v191 = a8;
  theDicta = a6;
  v16 = 0;
  if (a8 && a6)
  {
    if (!a1[435])
    {
      Count = CFArrayGetCount(a8);
      if (Count >= 1)
      {
        v61 = Count;
        v16 = 0;
        v15 = 0;
        v62 = 0;
        allocator = kCFAllocatorDefault;
        v182 = @"Blob";
        key = @"UniqueBuildID";
        v184 = @"ProductMarketingVersion";
        v192 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a8, v62);
          if (!ValueAtIndex)
          {
            sub_100069CA0();
          }

          v64 = ValueAtIndex;
          if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
          {
            v65 = kCFBooleanFalse;
          }

          else
          {
            v65 = kCFBooleanTrue;
          }

          v66 = CFBooleanGetValue(v65);
          v67 = CFBooleanGetValue(BOOLean);
          if (v66)
          {
            if (!v67)
            {
              goto LABEL_113;
            }

            SafeRelease(v16);
            v68 = CFGetAllocator(v199);
            v64 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v68, v64);
            v16 = v64;
          }

          else if (v67)
          {
            goto LABEL_113;
          }

          v69 = CFDictionaryGetValue(v198, v64);
          if (v69)
          {
            v70 = v69;
            if (CFStringCompare(v64, @"BasebandFirmware", 0) == kCFCompareEqualTo)
            {
              v79 = v199[6];
              if (v79 && v79[20])
              {
                v80 = CFDictionaryGetValue(a5, key);
                if (v80)
                {
                  v81 = v80;
                  v82 = CFGetAllocator(v199);
                  Mutable = CFDictionaryCreateMutable(v82, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  v15 = Mutable;
                  if (!Mutable)
                  {
                    goto LABEL_259;
                  }

                  CFDictionarySetValue(Mutable, key, v81);
                }

                v84 = v199[2];
                if (v84[17] || v84[18])
                {
                  v85 = CFDictionaryGetValue(a5, v184);
                  if (v85)
                  {
                    v86 = v85;
                    if (!v15)
                    {
                      v87 = CFGetAllocator(v199);
                      v15 = CFDictionaryCreateMutable(v87, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      if (!v15)
                      {
LABEL_259:
                        v11 = 0;
                        v14 = 0;
                        goto LABEL_260;
                      }
                    }

                    CFDictionarySetValue(v15, v184, v86);
                  }
                }
              }

              Code = sub_10006420C(v199, v70, a6, v198, a2, a3, v187, v15);
              a8 = v191;
              if (Code)
              {
LABEL_210:
                LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(v199, Code);
                AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install %@ in personalized bundle: %@", v64, LocalizedStatusString);
                v11 = 0;
                v14 = 0;
                goto LABEL_200;
              }

              goto LABEL_112;
            }

            v205 = 0;
            v206[0] = 0;
            if (!v64)
            {
              v78 = 0;
              Code = 1;
              goto LABEL_96;
            }

            v71 = CFGetAllocator(v199);
            v171 = @"Personalize";
            ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v71, v70, @"%@.%@", v72, v73, v74, v75, v76);
            if (ValueForKeyWithFormat && !CFBooleanGetValue(ValueForKeyWithFormat))
            {
              v170 = v64;
              AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ does not require personalization; skipping it");
              if (CFDictionaryContainsKey(a6, v64))
              {
                CFDictionarySetValue(v193, v64, v70);
              }

              v78 = 0;
              Code = 0;
LABEL_96:
              a8 = v191;
LABEL_97:
              SafeRelease(v206[0]);
              SafeRelease(v78);
              SafeRelease(v205);
              SafeRelease(0);
              SafeRelease(0);
              if (Code)
              {
                goto LABEL_210;
              }

LABEL_112:
              v61 = v192;
              goto LABEL_113;
            }

            v88 = CFBooleanGetValue(BOOLean);
            sub_1000695F8(v199, v64, v70, a2, a3, 1, v88, &v205, @"Info", @"Personalize", v172, v173, pathComponent, v175, value, v177, v178, v179, theString, allocator, v182, key, v184, v185, v186, v187, v188, v190);
            if (v89)
            {
              Code = v89;
              v170 = v64;
              AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "failed to copy bundle URLs for %@");
              v78 = 0;
              goto LABEL_96;
            }

            v188 = v15;
            v90 = CFDictionaryGetValue(v205, @"SourceURL");
            v91 = CFDictionaryGetValue(v205, @"DestURL");
            v92 = CFDictionaryGetValue(v205, @"RelativeSrcPath");
            v93 = CFDictionaryGetValue(v205, @"RelativeDestPath");
            v179 = v90;
            if (v90 || v91 || v92 || v93)
            {
              theString = v93;
              if (CFDictionaryContainsKey(v193, v64))
              {
                v170 = v64;
                AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ has been previously personalized; skipping it");
                v78 = 0;
                goto LABEL_123;
              }

              v177 = v92;
              v178 = v91;
              DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(v91);
              if (DirectoryForURL)
              {
                Code = DirectoryForURL;
                sub_100069A18(v199, DirectoryForURL);
                v78 = 0;
                goto LABEL_124;
              }

              v95 = CFGetAllocator(v199);
              Code = 2;
              DeepCopy = CFPropertyListCreateDeepCopy(v95, v70, 2uLL);
              v78 = DeepCopy;
              if (!DeepCopy)
              {
LABEL_124:
                v15 = v188;
                goto LABEL_96;
              }

              v97 = CFDictionaryGetValue(DeepCopy, @"Info");
              if (v97)
              {
                v98 = v97;
                v99 = CFDictionaryGetValue(v97, @"Path");
                if (v99 && CFDictionaryContainsKey(v193, v99))
                {
                  v170 = v64;
                  v171 = v99;
                  AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ has been previously personalized as part of %@; skipping it");
LABEL_123:
                  Code = 0;
                  goto LABEL_124;
                }

                pathComponent = v99;
                value = v78;
                HIDWORD(v175) = _CFDictionaryGetBoolean(v98, @"IsFTAB", 0);
                v100 = CFGetAllocator(v199);
                PrependedFilePath = AMAuthInstallSupportCreatePrependedFilePath(v100, v64, theString, v206);
                if (PrependedFilePath)
                {
                  Code = PrependedFilePath;
                  sub_100069A54();
                  v15 = v188;
                  goto LABEL_166;
                }

                CFDictionarySetValue(v98, @"PersonalizedPath", v206[0]);
                v102 = CFDictionaryGetValue(a6, v64);
                if (v102)
                {
                  v103 = v102;
                  TypeID = CFDictionaryGetTypeID();
                  if (TypeID == CFGetTypeID(v103))
                  {
                    if (CFDictionaryContainsKey(v103, v182))
                    {
                      Code = AMAuthInstallApImg3PersonalizeWithEntryName(v199, v179, v178, v64, v70, a6);
                      v15 = v188;
                      if (Code)
                      {
                        sub_100069A8C(v199, Code);
LABEL_166:
                        a8 = v191;
                        v78 = value;
                        goto LABEL_97;
                      }

LABEL_148:
                      v78 = value;
                      CFDictionarySetValue(v193, v64, value);
                      sub_10000BA10(v25, v177);
                      goto LABEL_96;
                    }
                  }
                }

                v105 = v98;
                v15 = v188;
                if (AMAuthInstallApIsImg4(v199) && CFDictionaryGetValue(a6, v199[11]) && HIDWORD(v175))
                {
                  v106 = CFURLCreateCopyAppendingPathComponent(allocator, a3, pathComponent, 0);
                  a8 = v191;
                  v78 = value;
                  if (v106)
                  {
                    Code = AMAuthInstallApFtabStitchTicketData(v199, v179, v106, a6);
                    if (Code)
                    {
                      sub_100069AC8();
                    }

                    else
                    {
                      CFDictionarySetValue(v193, pathComponent, value);
                      sub_10000BA10(v25, v177);
                    }
                  }

                  else
                  {
                    sub_100069B00();
                    Code = 2;
                  }

                  goto LABEL_97;
                }

                a8 = v191;
                if (AMAuthInstallApIsImg4(v199) && CFDictionaryGetValue(a6, v199[11]) && !HIDWORD(v175))
                {
                  v107 = CFDictionaryGetValue(v105, @"Img4PayloadType");
                  v108 = AMAuthInstallApImg4StitchTicketData(v199, v107, v179, v178, a6);
                  if (v108)
                  {
                    Code = v108;
                    sub_100069B2C();
                    goto LABEL_166;
                  }

                  Code = AMAuthInstallApImg4StitchRestoreInfoWithAMAI(v64, v178, a6, 0, v199);
                  if (Code)
                  {
                    v170 = v178;
                    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "failed to stitch restore info to %@");
                    goto LABEL_166;
                  }

                  goto LABEL_148;
                }

                v204 = 0;
                v109 = AMAuthInstallSupportFileURLExists(v178, &v204);
                if (v109)
                {
                  Code = v109;
                }

                else
                {
                  v78 = value;
                  if (v204)
                  {
LABEL_151:
                    Code = 0;
                    goto LABEL_97;
                  }

                  v110 = AMAuthInstallBundleInstallFile(v199, v178, v179);
                  if (!v110)
                  {
                    CFArrayAppendValue(v25, v177);
                    goto LABEL_151;
                  }

                  Code = v110;
                  sub_100069B58(v199, v110);
                }

                v15 = v188;
                v25 = v190;
                goto LABEL_166;
              }

              v170 = "_AMAuthInstallBundleInstallPersonalizedEntry";
              v171 = v64;
              AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "%s: no personalized entry for %@");
            }

            else
            {
              v78 = 0;
            }

            Code = 8;
            goto LABEL_124;
          }

          v170 = v64;
          AMAuthInstallLog(6, "_AMAuthInstallBundlePopulatePersonalizedBundle", "no entry in manifest found for %@");
          a8 = v191;
LABEL_113:
          if (v61 == ++v62)
          {
            goto LABEL_23;
          }
        }
      }
    }

    v15 = 0;
    v16 = 0;
  }

LABEL_23:
  v189 = v15;
  if (!theArray)
  {
    v27 = v199;
    goto LABEL_50;
  }

  v27 = v199;
  if (*(v199 + 435) || (v28 = CFArrayGetCount(theArray), v28 < 1))
  {
LABEL_50:
    v208.length = CFArrayGetCount(v191);
    v208.location = 0;
    if (CFArrayContainsValue(v191, v208, @"BasebandFirmware") || *(v27 + 435))
    {
      v11 = 0;
      v14 = 0;
      goto LABEL_53;
    }

    LOBYTE(v206[0]) = 0;
    v123 = CFGetAllocator(v27);
    v14 = AMAuthInstallSupportGetValueForKeyWithFormat(v123, a5, @"%@.%@.%@.%@", v124, v125, v126, v127, v128, @"Manifest", @"BasebandFirmware", @"Info", @"Path");
    if (!v14)
    {
      v11 = 0;
      goto LABEL_53;
    }

    v129 = CFDictionaryGetValue(*v27[16], @"BasebandFirmware");
    if (v129)
    {
      v11 = CFRetain(v129);
    }

    else
    {
      v133 = CFGetAllocator(v27);
      v11 = CFURLCreateCopyAppendingPathComponent(v133, a2, v14, 0);
      if (!v11)
      {
        v14 = 0;
        goto LABEL_265;
      }
    }

    v134 = CFGetAllocator(v27);
    v135 = AMAuthInstallSupportCreatePrependedFilePath(v134, @"BasebandFirmware", v14, &v203);
    if (v135)
    {
      Code = v135;
      goto LABEL_198;
    }

    v136 = CFGetAllocator(v27);
    v137 = CFURLCreateCopyAppendingPathComponent(v136, a3, v203, 0);
    v14 = v137;
    if (v137)
    {
      SoftLink = AMAuthInstallSupportFileURLExists(v137, v206);
      if (SoftLink || !LOBYTE(v206[0]) && ((SoftLink = AMAuthInstallSupportFileURLExists(v11, v206), SoftLink) || LOBYTE(v206[0]) && (SoftLink = AMAuthInstallPlatformCreateSoftLink(v14, v11), SoftLink)))
      {
        Code = SoftLink;
        goto LABEL_199;
      }

LABEL_53:
      if (a10)
      {
        v48 = CFArrayGetCount(a10);
        if (v48 >= 1)
        {
          v49 = v48;
          v50 = 0;
          while (1)
          {
            v51 = CFArrayGetValueAtIndex(a10, v50);
            if (!v51)
            {
              sub_100069C48();
            }

            v52 = v51;
            v209.length = CFArrayGetCount(v25);
            v209.location = 0;
            if (!CFArrayContainsValue(v25, v209, v52))
            {
              v205 = 0;
              v206[0] = 0;
              v210.length = CFArrayGetCount(v25);
              v210.location = 0;
              if (CFArrayContainsValue(v25, v210, v52))
              {
                Code = 0;
              }

              else
              {
                v53 = CFGetAllocator(v199);
                v54 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v53, a2, v52, 0, v206);
                if (v54 || (v55 = CFGetAllocator(v199), v54 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v55, a3, v52, 0, &v205), v54) || (v54 = AMAuthInstallPlatformMakeDirectoryForURL(v205), v54))
                {
                  Code = v54;
                }

                else
                {
                  Code = AMAuthInstallBundleInstallFile(v199, v205, v206[0]);
                  if (!Code)
                  {
                    CFArrayAppendValue(v25, v52);
                  }
                }
              }

              SafeRelease(v206[0]);
              SafeRelease(v205);
              if (Code)
              {
                break;
              }
            }

            if (v49 == ++v50)
            {
              goto LABEL_69;
            }
          }

          AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install link in personalized bundle: %@", v52);
          goto LABEL_199;
        }
      }

LABEL_69:
      v15 = v189;
      v56 = v199;
      if (theDicta && !*(v199 + 32))
      {
        IsImg4 = AMAuthInstallApIsImg4(v199);
        v58 = IsImg4 ? @"amai/apimg4ticket.der" : @"amai/apticket.der";
        if (IsImg4)
        {
          v59 = *(v199[2] + 132) ? kAMAuthInstallTagX86Img4Ticket : (v199 + 11);
        }

        else
        {
          v59 = kAMAuthInstallTagApTicket;
        }

        v111 = *v59;
        v211.length = CFArrayGetCount(v187);
        v211.location = 0;
        if (!CFArrayContainsValue(v187, v211, v58))
        {
          v119 = CFDictionaryGetValue(theDicta, v111);
          if (v119)
          {
            v120 = v119;
            v121 = CFGetAllocator(v199);
            v122 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v121, a3, v58, 0, &v200);
            if (v122)
            {
              Code = v122;
              v113 = "failed to create an AP ticket URL";
              goto LABEL_186;
            }

            v130 = CFGetAllocator(v199);
            v131 = AMAuthInstallSupportWriteDataToFileURL(v130, v120, v200, 1);
            if (v131)
            {
              Code = v131;
              AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to write the AP ticket");
              AMAuthInstallLog(8, "_AMAuthInstallBundlePopulatePersonalizedBundle", "%@", v200);
              goto LABEL_200;
            }

            CFArrayAppendValue(v187, v58);
          }
        }
      }

      if (!(v199[56])(v199, a3, theDicta, &v201))
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to write updater manifests: %@", v201);
        if (v201)
        {
          Code = CFErrorGetCode(v201);
        }

        else
        {
          Code = 4;
        }

        goto LABEL_200;
      }

      if (v186)
      {
        goto LABEL_172;
      }

      v206[0] = 0;
      v114 = CFGetAllocator(v199);
      v116 = CFDictionaryCreateMutable(v114, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!v116)
      {
        v117 = 0;
        v118 = 0;
        Code = 2;
LABEL_181:
        SafeRelease(v116);
        SafeRelease(v118);
        SafeRelease(v206[0]);
        if (Code)
        {
          v170 = AMAuthInstallGetLocalizedStatusString(v199, Code);
          v113 = "_AMAuthInstallCreateAlignmentDictionary failed: %@";
          goto LABEL_186;
        }

        CFDictionarySetValue(v185, @"Alignment", v117);
        CFRelease(v117);
        v56 = v199;
LABEL_172:
        if (CFDictionaryGetCount(*v56[16]) >= 1)
        {
          v112 = CFGetAllocator(v56);
          context = CFDictionaryCreateMutable(v112, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (!context)
          {
LABEL_260:
            Code = 2;
            goto LABEL_200;
          }

          CFDictionaryApplyFunction(*v56[16], _AMAuthInstallBundleNormalizeOverrideURLs, &context);
          CFDictionarySetValue(v185, @"Overrides", context);
        }

        Code = AMAuthInstallBundleWriteReceipt(v56, a3, v185, BOOLean);
        if (!Code)
        {
          goto LABEL_200;
        }

        v170 = AMAuthInstallGetLocalizedStatusString(v56, Code);
        v113 = "failed to write receipt: %@";
LABEL_186:
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", v113, v170);
        goto LABEL_200;
      }

      RelativePathForManifestEntry = _CreateRelativePathForManifestEntry(v199, v115, a3, v198, @"iBSS");
      if (RelativePathForManifestEntry)
      {
        v142 = RelativePathForManifestEntry;
        v143 = @"RELEASE";
        if (CFStringFind(RelativePathForManifestEntry, @"RELEASE", 0).location != -1 || (v143 = @"DEVELOPMENT", CFStringFind(v142, @"DEVELOPMENT", 0).location != -1) || (v143 = @"DEBUG", CFStringFind(v142, @"DEBUG", 0).location != -1))
        {
          CFDictionarySetValue(v116, @"DFUFileType", v143);
        }

        SafeRelease(v142);
      }

      v144 = _CreateRelativePathForManifestEntry(v199, v141, a3, v198, @"OS");
      if (v144)
      {
        v146 = v144;
        CFDictionarySetValue(v116, @"OS", v144);
        SafeRelease(v146);
      }

      v147 = _CreateRelativePathForManifestEntry(v199, v145, a3, v198, @"RestoreKernelCache");
      if (v147)
      {
        v118 = v147;
        v149 = CFGetAllocator(v199);
        v150 = AMAuthInstallSupportCreatePrependedFilePath(v149, @"RestoreKernelCache", v118, v206);
        if (v150)
        {
          goto LABEL_266;
        }

        if (v206[0])
        {
          CFDictionarySetValue(v116, @"RestoreKernelCache", v206[0]);
          SafeRelease(v206[0]);
          v206[0] = 0;
        }

        SafeRelease(v118);
      }

      v151 = _CreateRelativePathForManifestEntry(v199, v148, a3, v198, @"KernelCache");
      if (v151)
      {
        v118 = v151;
        v153 = CFGetAllocator(v199);
        v150 = AMAuthInstallSupportCreatePrependedFilePath(v153, @"KernelCache", v118, v206);
        if (v150)
        {
          goto LABEL_266;
        }

        if (v206[0])
        {
          CFDictionarySetValue(v116, @"KernelCache", v206[0]);
          SafeRelease(v206[0]);
          v206[0] = 0;
        }

        SafeRelease(v118);
      }

      v154 = _CreateRelativePathForManifestEntry(v199, v152, a3, v198, @"RestoreRamDisk");
      if (v154)
      {
        v156 = v154;
        CFDictionarySetValue(v116, @"RestoreRamDisk", v154);
        SafeRelease(v156);
      }

      v157 = _CreateRelativePathForManifestEntry(v199, v155, a3, v198, @"OSRamdisk");
      if (v157)
      {
        v159 = v157;
        CFDictionarySetValue(v116, @"OSRamdisk", v157);
        SafeRelease(v159);
      }

      v160 = _CreateRelativePathForManifestEntry(v199, v158, a3, v198, @"RestoreDeviceTree");
      if (v160)
      {
        v118 = v160;
        v162 = CFGetAllocator(v199);
        v150 = AMAuthInstallSupportCreatePrependedFilePath(v162, @"RestoreDeviceTree", v118, v206);
        if (v150)
        {
          goto LABEL_266;
        }

        if (v206[0])
        {
          CFDictionarySetValue(v116, @"RestoreDeviceTree", v206[0]);
          v163 = sub_10000C090(kCFAllocatorDefault, v118);
          if (v163)
          {
            v164 = v163;
            CFDictionarySetValue(v116, @"AllFlash", v163);
            CFRelease(v164);
          }

          SafeRelease(v206[0]);
          v206[0] = 0;
        }

        SafeRelease(v118);
      }

      v165 = _CreateRelativePathForManifestEntry(v199, v161, a3, v198, @"DeviceTree");
      if (!v165)
      {
LABEL_246:
        v168 = _CreateRelativePathForManifestEntry(v199, v166, a3, v198, @"Diags");
        if (v168)
        {
          v169 = v168;
          CFDictionarySetValue(v116, @"Diags", v168);
          SafeRelease(v169);
        }

        v117 = CFRetain(v116);
        v118 = 0;
        Code = 0;
        goto LABEL_181;
      }

      v118 = v165;
      v167 = CFGetAllocator(v199);
      v150 = AMAuthInstallSupportCreatePrependedFilePath(v167, @"DeviceTree", v118, v206);
      if (!v150)
      {
        if (v206[0])
        {
          CFDictionarySetValue(v116, @"DeviceTree", v206[0]);
          SafeRelease(v206[0]);
          v206[0] = 0;
        }

        SafeRelease(v118);
        goto LABEL_246;
      }

LABEL_266:
      Code = v150;
      sub_100069C74();
      v117 = 0;
      goto LABEL_181;
    }

LABEL_265:
    Code = 2;
    goto LABEL_199;
  }

  v29 = v28;
  v30 = 0;
  while (1)
  {
    v31 = CFArrayGetValueAtIndex(theArray, v30);
    if (!v31)
    {
      sub_100069C1C();
    }

    v32 = v31;
    v33 = CFStringFind(v31, @"RecoveryOS", 0).location == -1 ? kCFBooleanFalse : kCFBooleanTrue;
    v34 = CFBooleanGetValue(v33);
    v35 = CFBooleanGetValue(BOOLean);
    if (v34)
    {
      break;
    }

    if (!v35)
    {
      goto LABEL_35;
    }

LABEL_44:
    if (v29 == ++v30)
    {
      goto LABEL_50;
    }
  }

  if (!v35)
  {
    goto LABEL_44;
  }

  SafeRelease(v16);
  v36 = CFGetAllocator(v27);
  v16 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v36, v32);
  v32 = v16;
LABEL_35:
  v37 = CFDictionaryGetValue(v198, v32);
  if (!v37)
  {
    v170 = v32;
    AMAuthInstallLog(6, "_AMAuthInstallBundlePopulatePersonalizedBundle", "no entry in manifest found for %@");
    goto LABEL_44;
  }

  v206[0] = 0;
  if (!v32)
  {
    Code = 1;
    goto LABEL_197;
  }

  v38 = v37;
  v39 = CFBooleanGetValue(v33);
  sub_1000695F8(v27, v32, v38, a2, a3, 0, v39, v206, v170, v171, v172, v173, pathComponent, v175, value, v177, v178, v179, theString, allocator, v182, key, v184, v185, v186, v187, v189, v190);
  if (v40)
  {
    Code = v40;
    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallLinkedEntry", "failed to copy bundle URLs for %@", v32);
    goto LABEL_197;
  }

  v41 = v16;
  v42 = CFDictionaryGetValue(v206[0], @"SourceURL");
  v43 = CFDictionaryGetValue(v206[0], @"DestURL");
  v44 = CFDictionaryGetValue(v206[0], @"RelativeSrcPath");
  v45 = v44;
  if (!v42 && !v43 && !v44)
  {
    Code = 8;
    goto LABEL_256;
  }

  v207.length = CFArrayGetCount(v190);
  v207.location = 0;
  if (CFArrayContainsValue(v190, v207, v45))
  {
LABEL_42:
    SafeRelease(v206[0]);
    v16 = v41;
    v27 = v199;
    v25 = v190;
    goto LABEL_44;
  }

  v46 = AMAuthInstallPlatformMakeDirectoryForURL(v43);
  if (v46)
  {
    Code = v46;
    sub_100069BD8(v46);
    goto LABEL_256;
  }

  v47 = AMAuthInstallBundleInstallFile(v199, v43, v42);
  if (!v47)
  {
    CFArrayAppendValue(v190, v45);
    goto LABEL_42;
  }

  Code = v47;
  sub_100069B94(v47);
LABEL_256:
  v16 = v41;
LABEL_197:
  SafeRelease(v206[0]);
  AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install link for %@ in personalized bundle", v32);
  v11 = 0;
LABEL_198:
  v14 = 0;
LABEL_199:
  v15 = v189;
LABEL_200:
  SafeRelease(v11);
  SafeRelease(v14);
  SafeRelease(v203);
  SafeRelease(context);
  SafeRelease(v201);
  SafeRelease(v200);
  SafeRelease(v15);
  SafeRelease(v16);
  return Code;
}

CFStringRef AMAuthInstallICreateTranslationOfRecoveryEnteryName(const __CFAllocator *a1, CFStringRef theString)
{
  v4 = CFStringFind(theString, @"RecoveryOS", 0);
  if (v4.location == -1)
  {

    return CFStringCreateCopy(a1, theString);
  }

  else
  {
    Length = CFStringGetLength(theString);
    v6.length = Length - CFStringGetLength(@"RecoveryOS");
    v6.location = v4.length;

    return CFStringCreateWithSubstring(a1, theString, v6);
  }
}

uint64_t AMAuthInstallBundleCreatePersonalizedPathWithKey(const void *a1, CFStringRef theString1, const __CFString *a3, const __CFURL **a4)
{
  anURL = 0;
  if (!a1 || !a3 || !a4)
  {
    Copy = 0;
    v14 = 0;
    v11 = 0;
    v15 = 1;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (theString1)
  {
    v7 = CFStringCompare(theString1, @"BasebandFirmware", 0) == kCFCompareEqualTo;
  }

  else
  {
    v7 = 0;
  }

  IsImg4 = AMAuthInstallApIsImg4(a1);
  v9 = CFGetAllocator(a1);
  if (v7 || !IsImg4)
  {
    Copy = CFStringCreateCopy(v9, a3);
    v15 = 0;
    v14 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  Copy = CFURLCreateWithFileSystemPath(v9, a3, kCFURLPOSIXPathStyle, 0);
  v11 = Copy;
  if (!Copy)
  {
    goto LABEL_19;
  }

  v12 = CFGetAllocator(a1);
  v13 = AMAuthInstallApImg4CopyURLAddingExtension(v12, v11, &anURL);
  if (v13)
  {
    v15 = v13;
    sub_100069D0C();
    Copy = 0;
    v14 = 0;
    goto LABEL_15;
  }

  Copy = anURL;
  if (!anURL)
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  Copy = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  v14 = Copy;
  if (!Copy)
  {
LABEL_20:
    v15 = 2;
    goto LABEL_15;
  }

  Copy = CFRetain(Copy);
  v15 = 0;
LABEL_15:
  *a4 = Copy;
LABEL_16:
  SafeRelease(v11);
  SafeRelease(0);
  SafeRelease(anURL);
  SafeRelease(v14);
  return v15;
}

const __CFString *sub_10000B538(void *a1)
{
  if (AMAuthInstallPreferencesGetBooleanValue(0, @"BAAForceEnable", 0))
  {
    AMAuthInstallEnableManagedRequest(a1, 0);
  }

  result = AMAuthInstallPreferencesGetBooleanValue(0, @"AlternateUpdateBAAForceEnable", 0);
  if (result)
  {

    return AMAuthInstallEnableAlternateUpdateRequest(a1, 0);
  }

  return result;
}

char *_AMAuthInstallBundleCreateDebugDirectory(CFURLRef *a1, const void *a2)
{
  SafeRelease(a1[42]);
  v4 = CFGetAllocator(a1);
  v5 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v4, a2, @"amai/debug", 1u, a1 + 42);
  if (v5)
  {
    v6 = v5;
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v5);
    AMAuthInstallLog(3, "_AMAuthInstallBundleCreateDebugDirectory", "failed to create debug directory within bundle: %@", LocalizedStatusString);
    AMAuthInstallLog(8, "_AMAuthInstallBundleCreateDebugDirectory", "bundle: %@", a2);
    return v6;
  }

  else
  {
    v9 = a1[42];

    return AMAuthInstallPlatformMakeDirectoryForURL(v9);
  }
}

uint64_t sub_10000B68C(uint64_t a1, CFDictionaryRef theDict, const __CFArray *a3, __CFArray *a4)
{
  BOOLean = kCFBooleanFalse;
  Value = CFDictionaryGetValue(theDict, @"Info");
  if (Value)
  {
    v7 = CFDictionaryGetValue(Value, @"Variant");
    if (v7)
    {
      v8 = *(a1 + 496);
      if (v8)
      {
        v9 = CFStringCompare(v7, v8, 0);
        v10 = kCFBooleanFalse;
        if (v9 == kCFCompareEqualTo)
        {
          v10 = kCFBooleanTrue;
        }

        BOOLean = v10;
      }
    }
  }

  v11 = CFDictionaryGetValue(theDict, @"Manifest");
  if (v11)
  {
    v12 = v11;
    Count = CFDictionaryGetCount(v11);
    v14 = malloc(8 * Count);
    v15 = malloc(8 * Count);
    CFDictionaryGetKeysAndValues(v12, v14, v15);
    if (Count >= 1)
    {
      v39 = a4;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = v14[v17];
        v20 = v15[v17];
        v21 = CFGetTypeID(v20);
        TypeID = CFDictionaryGetTypeID();
        if (v21 != TypeID)
        {
          sub_100069D38(TypeID);
          v37 = 99;
          goto LABEL_33;
        }

        v23 = CFDictionaryGetValue(v20, @"Info");
        if (v23)
        {
          v24 = v23;
          v25 = _CFDictionaryGetBoolean(v23, @"IsFirmwarePayload", 0);
          v26 = _CFDictionaryGetBoolean(v24, @"IsSecondaryFirmwarePayload", 0) | v25;
          v27 = _CFDictionaryGetBoolean(v24, @"IsFUDFirmware", 0);
          v28 = v26 | v27 | _CFDictionaryGetBoolean(v24, @"IsLoadedByiBoot", 0);
          v29 = _CFDictionaryGetBoolean(v24, @"IsEarlyAccessFirmware", 0);
          v30 = v29 | _CFDictionaryGetBoolean(v24, @"IsiBootEANFirmware", 0);
          v31 = v28 | v30 | _CFDictionaryGetBoolean(v24, @"IsiBootNonEssentialFirmware", 0);
          v32 = *(a1 + 528);
          if (v32)
          {
            v31 |= _CFDictionaryGetBoolean(v32, v19, 0);
          }

          if (v31)
          {
            SafeRelease(v18);
            if (CFBooleanGetValue(BOOLean))
            {
              Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"RecoveryOS%@", v19);
            }

            else
            {
              Copy = CFStringCreateCopy(kCFAllocatorDefault, v19);
            }

            v18 = Copy;
            v43.length = CFArrayGetCount(a3);
            v43.location = 0;
            if (CFArrayContainsValue(a3, v43, v18))
            {
              if (v16)
              {
                goto LABEL_28;
              }
            }

            else
            {
              CFArrayAppendValue(a3, v18);
              if (v16)
              {
                goto LABEL_28;
              }
            }

            v34 = CFDictionaryGetValue(v24, @"Path");
            if (v34)
            {
              v35 = sub_10000C090(kCFAllocatorDefault, v34);
              if (!v35)
              {
                v16 = 0;
LABEL_35:
                v37 = 2;
                goto LABEL_33;
              }

              v36 = v35;
              v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/manifest", v35);
              CFRelease(v36);
              if (!v16)
              {
                goto LABEL_35;
              }

              if (v39)
              {
                CFArrayAppendValue(v39, v16);
              }
            }

            else
            {
              v16 = 0;
            }
          }
        }

LABEL_28:
        if (Count == ++v17)
        {
          goto LABEL_32;
        }
      }
    }

    v18 = 0;
    v16 = 0;
LABEL_32:
    v37 = 0;
  }

  else
  {
    v18 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v37 = 7;
  }

LABEL_33:
  SafeFree(v14);
  SafeFree(v15);
  SafeRelease(v16);
  SafeRelease(v18);
  return v37;
}

void sub_10000BA10(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);
  if ((FirstIndexOfValue & 0x8000000000000000) == 0)
  {

    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }
}

uint64_t AMAuthInstallBundleShouldPersonalizeOSImage(uint64_t a1, char *a2, const __CFString *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_100069E78(a4, a2, a3, a4);
    return 0;
  }

  if (!a2)
  {
    sub_100069E3C(a4, 0, a3, 0);
    return 0;
  }

  ManifestEntry = AMAuthInstallBundleGetManifestEntry(a1, @"Manifest", a3, a2, a4);
  if (!ManifestEntry)
  {
    sub_100069E00(a4, v6, v7, v8);
    return 0;
  }

  Value = CFDictionaryGetValue(ManifestEntry, @"OS");
  if (!Value)
  {
    sub_100069DC4(a4, v10, v11, v12);
    return 0;
  }

  v13 = CFDictionaryGetValue(Value, @"Info");
  if (!v13)
  {
    sub_100069D88(a4, v14, v15, v16);
    return 0;
  }

  v17 = CFDictionaryGetValue(v13, @"Personalize");
  if (!v17)
  {
    sub_100069D4C(a4, v18, v19, v20);
    return 0;
  }

  v21 = CFBooleanGetValue(v17);
  v22 = "Yes";
  if (!v21)
  {
    v22 = "No";
  }

  AMAuthInstallLog(6, "AMAuthInstallBundleShouldPersonalizeOSImage", "Personalize OS image = %s", v22);
  return v21;
}

const __CFDictionary *AMAuthInstallBundleGetManifestEntry(uint64_t a1, const __CFString *a2, const __CFString *a3, char *a4, uint64_t a5)
{
  ValueForKeyPathInDict = a1;
  *v11 = 0;
  if (!a1)
  {
    sub_100069FB8(a5, a2, a3, a4);
    goto LABEL_8;
  }

  if (!a2)
  {
    sub_100069F7C(a5, 0, a3, a4);
LABEL_14:
    ValueForKeyPathInDict = 0;
    goto LABEL_8;
  }

  if (!a3)
  {
    sub_100069F40(a5, a2, 0, a4);
    goto LABEL_14;
  }

  if (!a4)
  {
    sub_100069F04(a5, a2, a3, 0);
    goto LABEL_14;
  }

  v8 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a4, a3, v11);
  if (v8)
  {
    sub_100069EB4(v8, a5);
    goto LABEL_14;
  }

  v9 = CFGetAllocator(ValueForKeyPathInDict);
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v9, *v11, a2);
  if (!ValueForKeyPathInDict)
  {
    AMSupportCreateErrorInternal();
  }

LABEL_8:
  SafeRelease(*v11);
  return ValueForKeyPathInDict;
}

BOOL sub_10000BC74(const void *a1, char *a2, const __CFString *a3, uint64_t a4)
{
  cf = 0;
  if (!a1)
  {
    sub_10006A030(a4, a2, a3, a4);
    return 0;
  }

  if (a2)
  {
    v5 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &cf);
    if (!v5)
    {
      CFGetAllocator(a1);
      ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
      v6 = ValueForKeyPathInDict != 0;
      v8 = "No";
      if (ValueForKeyPathInDict)
      {
        v8 = "Yes";
      }

      AMAuthInstallLog(6, "_AMAuthInstallBundleShouldPersonalizeOS", "Personalize OS = %s", v8);
      goto LABEL_9;
    }

    AMAuthInstallLog(3, "_AMAuthInstallBundleShouldPersonalizeOS", "failed to copy build variant %d", v5);
    AMSupportCreateErrorInternal();
  }

  else
  {
    sub_100069FF4(a4, 0, a3, a4);
  }

  v6 = 0;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_10000BD9C(const void *a1, const void *a2, CFTypeRef cf, CFTypeRef *a4)
{
  if (!a4)
  {
    return 1;
  }

  if (cf)
  {
    v5 = 0;
    *a4 = CFRetain(cf);
  }

  else
  {
    v8 = CFGetAllocator(a1);
    v14 = 0;
    v15 = 0;
    if (a1 && AMAuthInstallApIsImg4(a1))
    {
      v9 = @"amai/apimg4ticket.der";
    }

    else
    {
      v9 = @"amai/apticket.der";
    }

    v10 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v8, a2, v9, 0, &v14);
    if (v10)
    {
      v5 = v10;
      v12 = 0;
    }

    else
    {
      Digest = AMAuthInstallApCreateDigest(v14, 4096, 384, &v15);
      v12 = Digest;
      if (Digest)
      {
        v5 = 0;
        *a4 = CFRetain(Digest);
      }

      else
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundleLocalPolicyCopyDefaultNSIH", "failed to compute NSIH for %@: %@", v14, v15);
        v5 = 4;
      }
    }

    SafeRelease(v14);
    SafeRelease(v12);
    SafeRelease(v15);
  }

  return v5;
}

uint64_t AMAuthInstallBundleSetVariantSpecifiesRestoreBehavior(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 56) = a2;
  return result;
}

const __CFString *AMAuthInstallBundleGetApTicketComponentPath(uint64_t a1)
{
  if (a1 && AMAuthInstallApIsImg4(a1))
  {
    return @"amai/apimg4ticket.der";
  }

  else
  {
    return @"amai/apticket.der";
  }
}

const __CFString *_AMAuthInstallBundleImageHasBuildString(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringCompare(result, @"iBSS", 0) && CFStringCompare(v1, @"iBEC", 0))
    {
      return (CFStringCompare(v1, @"LLB", 0) == kCFCompareEqualTo);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

CFBooleanRef _AMAuthInstallBundleGetDefaultResult(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    result = kCFBooleanFalse;
    if (kCFBooleanFalse != a1)
    {
      return result;
    }

    goto LABEL_13;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    if (CFStringCompare(a1, &stru_1000ABB18, 0) == kCFCompareEqualTo)
    {
LABEL_13:
      v7 = &kCFBooleanTrue;
      return *v7;
    }
  }

  else
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      if (!valuePtr)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = CFGetTypeID(a1);
      if (v6 == CFDataGetTypeID() && !CFDataGetLength(a1))
      {
        goto LABEL_13;
      }
    }
  }

  v7 = &kCFBooleanFalse;
  return *v7;
}

CFStringRef sub_10000C090(const __CFAllocator *a1, CFStringRef theString)
{
  if (!CFStringGetCString(theString, buffer, 256, 0x8000100u))
  {
    return 0;
  }

  v3 = strlen(buffer);
  if (v3)
  {
    do
    {
      v4 = v3 - 1;
      v5 = buffer[v3 - 1] == 47 || v3 == 1;
      --v3;
    }

    while (!v5);
  }

  else
  {
    v4 = 0;
  }

  buffer[v4] = 0;
  return CFStringCreateWithCString(a1, buffer, 0x8000100u);
}

uint64_t sub_10000C160(__CFData *a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  if (a1)
  {
    v4 = *(a1 + 2);
    if (v4)
    {
      if (theDict)
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v55 = 0;
        v39 = 0u;
        v38 = 0u;
        v37 = 0u;
        v36 = 0u;
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
        v25 = 0u;
        v24 = 0u;
        v23 = @"UniqueBuildID";
        if (*(v4 + 136) == 0)
        {
          v22 = 1;
        }

        else
        {
          *&v24 = @"ProductMarketingVersion";
          v22 = 2;
        }

        v7 = &v23;
        *(&v23 + v22) = @"Ap,InternalUseOnlyUnit";
        *(&v23 + v22 + 1) = @"Ap,EngineeringUseOnlyUnit";
        *(&v23 + v22 + 2) = @"Ap,InternalUseOnlySW";
        *(&v23 + v22 + 3) = @"Ap,RestoreSecurityOverrides0";
        *(&v23 + (v22 | 4)) = @"Ap,RestoreSecurityOverrides1";
        *(&v23 + v22 + 5) = @"Ap,RestoreSecurityOverrides2";
        *(&v23 + v22 + 6) = @"Ap,RestoreSecurityOverrides3";
        *(&v23 + v22 + 7) = @"Ap,OSLongVersion";
        *(&v23 + (v22 | 8)) = @"x86,OSLongVersion";
        *(&v23 + v22 + 9) = @"PearlCertificationRootPub";
        *(&v23 + v22 + 10) = @"Ap,OSEnvironment";
        *(&v23 + v22 + 11) = @"AllowNeRDBoot";
        *(&v23 + v22 + 13) = @"Ap,CurrentOSSecurityVersion";
        *(&v23 + v22 + 14) = @"Ap,MinimumOSSecurityVersion";
        *(&v23 + v22 + 15) = @"Ap,EphemeralDataMode";
        *(&v23 + (v22 | 0x10)) = @"Ap,EnableGroundhog";
        *(&v23 + v22 + 17) = @"Ap,TargetType";
        *(&v23 + v22 + 18) = @"Ap,ProductType";
        *(&v23 + v22 + 19) = @"Ap,SoftwareUpdateDeviceID";
        *(&v23 + (v22 | 0x14)) = @"Ap,SDKPlatform";
        *(&v23 + v22 + 21) = @"Ap,Target";
        *(&v23 + v22 + 22) = @"Ap,OSReleaseType";
        *(&v23 + v22 + 23) = @"Ap,UniqueTagList";
        *(&v23 + (v22 | 0x18)) = @"Ap,ProductMarketingVersion";
        v8 = v22 + 25;
        *(&v23 + (v22 | 0xC)) = @"NeRDEpoch";
        do
        {
          v9 = *v7;
          Value = CFDictionaryGetValue(theDict, *v7);
          if (Value)
          {
            CFDictionaryAddValue(a3, v9, Value);
            AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Copying manifest property %@ into request", v9);
          }

          ++v7;
          --v8;
        }

        while (v8);
        v11 = CFDictionaryGetValue(theDict, @"Info");
        if (_CFDictionaryGetBoolean(v11, @"RequiresUIDMode", 0))
        {
          if (*(*(a1 + 2) + 184))
          {
            v12 = *(*(a1 + 2) + 184);
          }

          else
          {
            v12 = kCFBooleanFalse;
          }

          CFDictionarySetValue(a3, @"UID_MODE", v12);
        }

        v13 = CFDictionaryGetValue(v11, @"RequestManifestProperties");
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFArrayGetTypeID() && CFArrayGetCount(v14) >= 1)
          {
            v16 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, v16);
              v18 = CFDictionaryGetValue(theDict, ValueAtIndex);
              if (v18 || (v18 = CFDictionaryGetValue(v11, ValueAtIndex)) != 0)
              {
                CFDictionaryAddValue(a3, ValueAtIndex, v18);
                AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Copying manifest property %@ into request. (Via BuildManifest)", ValueAtIndex);
              }

              ++v16;
            }

            while (CFArrayGetCount(v14) > v16);
          }
        }

        if (!CFDictionaryContainsKey(theDict, @"NeRDEpoch"))
        {
          goto LABEL_27;
        }

        v19 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v19, 0);
        if (Mutable)
        {
          CFDictionarySetValue(a3, @"PermitNeRDPivot", Mutable);
LABEL_27:
          AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Finished copying manifest entitlements.");
          goto LABEL_28;
        }

        sub_10006A06C(0);
      }

      else
      {
        sub_10006A080(a1);
      }
    }

    else
    {
      sub_10006A094(a1);
    }
  }

  else
  {
    sub_10006A0A8(0);
  }

LABEL_28:

  return AMSupportSafeRelease();
}

uint64_t sub_10000C6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return AMSupportCreateErrorInternal();
}

const __CFString *sub_10000C780(int a1)
{

  return AMAuthInstallGetLocalizedStatusString(v1, a1);
}

CFComparisonResult sub_10000C83C(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t sub_10000C854(int a1, int a2, int a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CFStringRef theString1, uint64_t a25, char *a26)
{

  return AMAuthInstallBundleCopyBuildIdentityForVariant(v26, a26, theString1, a4);
}

uint64_t AMAuthInstallCryptoCreateDigestForDataType(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3, int a4)
{
  switch(a4)
  {
    case 384:
      return AMAuthInstallCryptoCreateDigestForData_SHA384(a1, a2, a3);
    case 256:
      return AMAuthInstallCryptoCreateDigestForData_SHA256(a1, a2, a3);
    case 1:
      return AMAuthInstallCryptoCreateDigestForData(a1, a2, a3);
  }

  return 1;
}

uint64_t AMAuthInstallHttpUriEscapeString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3)
{
  if (!theString)
  {
    sub_10006B5A8(a1);
LABEL_10:
    MutableCopy = 0;
    v9 = 1;
    goto LABEL_7;
  }

  if (!a3)
  {
    sub_10006B594(a1);
    goto LABEL_10;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (MutableCopy)
  {
    v5 = off_1000AA350;
    v6 = 33;
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v11.length = CFStringGetLength(MutableCopy);
      v11.location = 0;
      CFStringFindAndReplace(MutableCopy, v7, v8, v11, 0);
      v5 += 2;
      --v6;
    }

    while (v6);
    v9 = 0;
    *a3 = CFRetain(MutableCopy);
  }

  else
  {
    sub_10006B580(0);
    v9 = 3;
  }

LABEL_7:
  SafeRelease(MutableCopy);
  return v9;
}

uint64_t AMAuthInstallHttpMessageSendSync(const void *a1, const __CFData *a2, const __CFDictionary *a3)
{
  AMAuthInstallLog(8, "AMAuthInstallHttpMessageSendSync", "httpRequest=%@", a1);
  v13 = 10002;
  theData = 0;
  v6 = CFGetAllocator(a1);
  v7 = AMAuthInstallHttpMessageSendSyncNew(v6, a1, &theData, &v13, a3, 60.0);
  if (v7)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpMessageSendSync", "AMAuthInstallHttpMessageSendSyncNew() failed: %d", v7);
  }

  else if (a2)
  {
    Length = CFDataGetLength(a2);
    BytePtr = CFDataGetBytePtr(theData);
    v10 = CFDataGetLength(theData);
    v14.location = 0;
    v14.length = Length;
    CFDataReplaceBytes(a2, v14, BytePtr, v10);
  }

  return v13;
}

uint64_t AMAuthInstallHttpMessageSendSyncNew(CFAllocatorRef allocator, uint64_t a2, CFTypeRef *a3, _DWORD *a4, CFDictionaryRef theDict, double a6)
{
  valuePtr = a6;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, Count, theDict);
    if (CFDictionaryContainsKey(MutableCopy, kAMSupportHttpOptionSocksProxySettings))
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains proxy information. Will attempt to use a proxy.");
    }

    Mutable = CFDictionaryContainsKey(MutableCopy, kAMSupportHttpOptionTrustedServerCAs);
    if (Mutable)
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains trusted server CAs. Will authenticate SSL against CAs.");
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    MutableCopy = Mutable;
  }

  if (!MutableCopy)
  {
    sub_10006B614(Mutable);
LABEL_13:
    v13 = 2;
    goto LABEL_10;
  }

  v11 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
  if (!v11)
  {
    sub_10006B5E8();
    goto LABEL_13;
  }

  CFDictionarySetValue(MutableCopy, kAMSupportHttpOptionTimeout, v11);
  AMSupportHttpSendSync();
  sub_10006B5BC();
  v13 = 16;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v13;
}

uint64_t AMAuthInstallHttpRequestManagedBaaCertificate(void *a1, void *a2)
{
  cf = 0;
  BaaCertificateData = AMAuthInstallHttpCreateBaaCertificateData(a1, 0, a2, &cf);
  if (!BaaCertificateData)
  {
    v4 = cf;
    if (cf)
    {
      if (*(a1[2] + 136))
      {
        CFRelease(*(a1[2] + 136));
        *(a1[2] + 136) = 0;
        v4 = cf;
      }

      *(a1[2] + 136) = CFRetain(v4);
    }
  }

  return BaaCertificateData;
}

uint64_t AMAuthInstallHttpCreateBaaCertificateData(void *a1, const __CFDictionary *a2, void *a3, CFDataRef *a4)
{
  theData = 0;
  v49 = 0;
  v47 = -1;
  v45 = 0;
  v46 = 0;
  if (!a1)
  {
    sub_10006B7B0(0);
LABEL_44:
    v14 = 0;
    v12 = 0;
    v11 = 0;
    v16 = 0;
    v15 = 1;
    goto LABEL_40;
  }

  v5 = a1[2];
  if (!v5)
  {
    sub_10006B79C(a1);
    goto LABEL_44;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    sub_10006B788(a1);
    goto LABEL_44;
  }

  if (!&_DeviceIdentityCreateClientCertificateRequest)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "DeviceIdentityCreateClientCertificateRequest is not available", a4);
    v14 = 0;
    v12 = 0;
    v11 = 0;
    v16 = 0;
    v15 = 13;
    goto LABEL_40;
  }

  v52[0] = kMAOptionsBAANonce;
  v52[1] = kMAOptionsBAASCRTAttestation;
  v53[0] = v6;
  v53[1] = &off_1000BD108;
  v52[2] = kMAOptionsBAAOIDSToInclude;
  v51[0] = kMAOptionsBAAOIDNonce;
  v51[1] = kMAOptionsBAAOIDDeviceIdentifiers;
  v51[2] = kMAOptionsBAAOIDKeyUsageProperties;
  v51[3] = kMAOptionsBAAOIDDeviceOSInformation;
  v10 = [NSArray arrayWithObjects:v51 count:4];
  v53[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];

  v44 = 0;
  v12 = DeviceIdentityCreateClientCertificateRequest();
  v13 = 0;
  v14 = v13;
  if (v13)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "Error creating baa request : %@", v13);
    if (a3)
    {
      *a3 = v14;
    }

    v15 = 6;
  }

  else
  {
    v15 = 1;
  }

  if (!v49)
  {
    sub_10006B75C();
LABEL_47:
    v16 = 0;
    goto LABEL_40;
  }

  if (!v12)
  {
    sub_10006B730();
    goto LABEL_47;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"userAgentStringOverride");
    if (Value)
    {
      v18 = Value;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 setValue:v18 forHTTPHeaderField:@"User-Agent"];
      }
    }
  }

  if (AMAuthInstallPreferencesCopyStringValue(0, @"BAAOverrideURL"))
  {
    CFGetAllocator(a1);
    URLFromString = AMSupportCreateURLFromString();
  }

  else
  {
    URLFromString = [v12 URL];
  }

  v16 = URLFromString;
  if (!URLFromString)
  {
    sub_10006B704();
    goto LABEL_40;
  }

  Request = CFHTTPMessageCreateRequest(0, [v12 HTTPMethod], URLFromString, kCFHTTPVersion1_1);
  if (!Request)
  {
    sub_10006B6D8();
    v16 = 0;
LABEL_59:
    v15 = 2;
    goto LABEL_40;
  }

  v21 = Request;
  v38 = a4;
  v39 = v14;
  v22 = v11;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = [v12 allHTTPHeaderFields];
  v23 = [(__CFURL *)v16 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v16);
        }

        v27 = *(*(&v40 + 1) + 8 * i);
        v28 = [(__CFURL *)v16 objectForKeyedSubscript:v27];
        CFHTTPMessageSetHeaderFieldValue(v21, v27, v28);
      }

      v24 = [(__CFURL *)v16 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v24);
  }

  v29 = [v12 HTTPBody];
  if (v29)
  {
    CFHTTPMessageSetBody(v21, [v12 HTTPBody]);
  }

  v30 = CFGetAllocator(a1);
  v31 = AMAuthInstallHttpMessageSendSyncNew(v30, v21, &theData, &v47, 0, 60.0);
  v11 = v22;
  if (v31)
  {
    v15 = v31;
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "AMAuthInstallHttpMessageSendSyncNew returned %d", v31);
    v14 = v39;
    goto LABEL_40;
  }

  v14 = v39;
  if (!theData)
  {
    sub_10006B6AC();
LABEL_53:
    v15 = 16;
    goto LABEL_40;
  }

  if (v47 != 200)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "httpStatus is %d", v47);
    goto LABEL_53;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v34 = AMAuthInstallSupportCreateDecodedPEM(BytePtr, Length, &v46, &v45);
  if (v34)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "AMAuthInstallSupportCreateDecodedPEM returned %d", v34);
LABEL_57:
    v15 = 6;
    goto LABEL_40;
  }

  if (!v46)
  {
    sub_10006B680();
    goto LABEL_57;
  }

  if (!v45)
  {
    sub_10006B654();
    goto LABEL_57;
  }

  v35 = CFGetAllocator(a1);
  v36 = CFDataCreate(v35, v46, v45);
  if (!v36)
  {
    sub_10006B628();
    goto LABEL_59;
  }

  v15 = 0;
  if (v38)
  {
    *v38 = v36;
  }

LABEL_40:
  AMSupportSafeFree();

  return v15;
}

uint64_t AMAuthInstallHttpRequestAlternateUpdateBaaCertificate(void *a1, void *a2)
{
  cf = 0;
  BaaCertificateData = AMAuthInstallHttpCreateBaaCertificateData(a1, &off_1000BD0E0, a2, &cf);
  v4 = cf;
  if (BaaCertificateData)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (!v5)
  {
    if (*(a1[2] + 144))
    {
      CFRelease(*(a1[2] + 144));
      *(a1[2] + 144) = 0;
      v4 = cf;
    }

    *(a1[2] + 144) = CFRetain(v4);
  }

  return BaaCertificateData;
}

uint64_t AMAuthInstallLockCreate(uint64_t a1)
{
  pthread_once(&stru_1000C7E20, sub_10000D4A0);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_10000D4A0()
{
  result = _CFRuntimeRegisterClass();
  qword_1000C8780 = result;
  return result;
}

CFMutableDictionaryRef sub_10000D4CC()
{

  return CFDictionaryCreateMutable(v1, 0, v0, v2);
}

void (*AMAuthInstallLogSetHandler(void (*result)(int a1, uint64_t a2)))(int a1, uint64_t a2)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = sub_10000D50C;
  }

  off_1000C7E30 = v1;
  return result;
}

void sub_10000D50C(unsigned int a1, uint64_t a2)
{
  if (qword_1000C8790 != -1)
  {
    sub_10006BBB0();
  }

  if (a1 <= 2)
  {
    if (os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_FAULT))
    {
      sub_10006BD20();
    }

    return;
  }

  if (a1 == 3)
  {
    if (os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_ERROR))
    {
      sub_10006BCAC();
    }

    return;
  }

  if (a1 <= 5)
  {
    v4 = qword_1000C8788;
    if (!os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v4;
    v6 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", &v9, 0xCu);
    return;
  }

  if (a1 == 6)
  {
    v7 = qword_1000C8788;
    if (!os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v7;
    v6 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  v8 = os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_DEBUG);
  if (a1 > 7)
  {
    if (v8)
    {
      sub_10006BBC4();
    }
  }

  else if (v8)
  {
    sub_10006BC38();
  }
}

void AMAuthInstallLog(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v3 = __chkstk_darwin(a1, a2, a3);
  v6 = v5;
  v7 = v3;
  v8 = "";
  if (v4)
  {
    v8 = v4;
  }

  v9 = snprintf(__str, 0x1000uLL, "%s: ", v8);
  v10 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v6, 0x8000100u, kCFAllocatorNull);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v11 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v10, va);
  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v20 = 0;
    v19 = 0;
    goto LABEL_14;
  }

  v13 = v9;
  v14 = 4096 - v9;
  Length = CFStringGetLength(v11);
  v16 = Length;
  if (4096 - v9 < Length && (v17 = malloc(v9 + Length + 1)) != 0)
  {
    v18 = v17;
    v14 = v16 + 1;
    memcpy(v17, __str, v9);
    v19 = v18;
  }

  else
  {
    v19 = 0;
    v18 = __str;
  }

  if (CFStringGetCString(v12, &v18[v13], v14, 0x8000100u))
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

LABEL_14:
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = "failed to format log message";
  }

  off_1000C7E30(v7, v21);
  SafeRelease(v10);
  SafeRelease(v12);
  SafeFree(v19);
}

uint64_t AMAuthInstallDebugWriteObject(const void **cf, CFTypeRef a2, uint64_t a3, int a4)
{
  cfa = 0;
  if (!cf)
  {
    goto LABEL_19;
  }

  if ((cf[43] & a4) == 0)
  {
    v14 = 0;
LABEL_16:
    Data = 0;
    goto LABEL_20;
  }

  if (!cf[42])
  {
    CFGetAllocator(cf);
    v19 = AMAuthInstallSupportCopyURLToNewTempDirectory();
    if (v19)
    {
      v14 = v19;
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "failed to create debug output directory");
      goto LABEL_16;
    }
  }

  v7 = CFGetTypeID(a2);
  if (v7 == CFDataGetTypeID())
  {
    Data = CFRetain(a2);
    v9 = "";
    if (Data)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_20;
  }

  v16 = CFGetTypeID(a2);
  if (v16 != CFDictionaryGetTypeID())
  {
    v17 = CFGetTypeID(a2);
    if (v17 != CFArrayGetTypeID())
    {
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "can't prepare data for output to file");
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "%@", a2);
LABEL_19:
      Data = 0;
      v14 = 1;
      goto LABEL_20;
    }
  }

  v18 = CFGetAllocator(cf);
  Data = CFPropertyListCreateData(v18, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v9 = ".plist";
  if (!Data)
  {
    goto LABEL_13;
  }

LABEL_6:
  v10 = CFGetAllocator(cf);
  v11 = CFStringCreateWithFormat(v10, 0, @"%@%s", a3, v9);
  if (v11)
  {
    v12 = v11;
    v13 = CFGetAllocator(cf);
    v14 = AMAuthInstallSupportCopyURLWithAppendedComponent(v13, cf[42], v12, 0, &cfa);
    CFRelease(v12);
    if (!v14)
    {
      v15 = CFGetAllocator(cf);
      v14 = AMAuthInstallSupportWriteDataToFileURL(v15, Data, cfa, 0);
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "debug object written: %@", cfa);
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_20:
  SafeRelease(Data);
  SafeRelease(cfa);
  return v14;
}

void AMAuthInstallLogDumpMemory(uint64_t a1, uint64_t a2, const char *a3, unsigned __int8 *a4, int a5)
{
  AMAuthInstallLog(a1, a2, "[%s: %u bytes]", a3, a5);
  if (a5 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = a5 + 1;
    do
    {
      v11 = *a4++;
      v12 = snprintf(&v13[v9], 64 - v9, "%02x ", v11);
      if (++v8 > 0xF || v10 == 2)
      {
        AMAuthInstallLog(a1, "", "%s", v13);
        v9 = 0;
        v8 = 0;
      }

      else
      {
        v9 += v12;
      }

      --v10;
    }

    while (v10 > 1);
  }

  AMAuthInstallLog(a1, "", "-----------------------------------------------");
}

uint64_t AMAuthInstallMonetMeasureDbl(const __CFNumber *a1, CFDataRef theData, __CFDictionary *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  v7 = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length <= 3)
  {
    AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", 0);
LABEL_8:
    AMAuthInstallLog(3, "_FindSblHeaderInFileData", "this file lacks sufficient magic");
    return 10;
  }

  v9 = 0;
  v10 = 0;
  v11 = Length >> 2;
  v12 = v7 - 4;
  do
  {
    if (*(v12 + 1) == 1943474228)
    {
      ++v9;
      v10 = v12;
      if (*(v12 + 2) != 2097890138)
      {
        AMAuthInstallLog(7, "_FindSblHeaderInFileData", "found SBL header");
        AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v9);
        v10 = v12;
        goto LABEL_11;
      }
    }

    v12 += 4;
    --v11;
  }

  while (v11);
  AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v9);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_11:
  v15 = *(v10 + 5);
  if (v10 + 80 != (BytePtr + v15))
  {
    sub_10006D380(v13);
    return 10;
  }

  AMAuthInstallMonetSetVersionAndPartialDigest(a1, a3, BytePtr, theData, v10, v15, *(v10 + 8), @"DBL-Version", @"DBL-PartialDigest");
  return 0;
}

uint64_t AMAuthInstallMonetStitchEBootLoader(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, const void *a5)
{
  v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-Original", a5);
  v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-Personalized", a5);
  Value = CFDictionaryGetValue(a3, @"BasebandFirmware");
  if (!Value)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "response lacks %@", @"BasebandFirmware");
LABEL_15:
    v33 = 8;
LABEL_18:
    SafeRelease(0);
    goto LABEL_12;
  }

  v13 = CFDictionaryGetValue(Value, a5);
  if (!v13)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "response lacks %@", a5);
    goto LABEL_15;
  }

  v14 = v13;
  Length = CFDataGetLength(v13);
  v16 = CFDataGetLength(a2);
  if (Length >= v16)
  {
    sub_10006D394(v16);
    v33 = 1;
    goto LABEL_18;
  }

  v17 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v17, 0, a2);
  if (!MutableCopy)
  {
    v33 = 2;
    goto LABEL_18;
  }

  v19 = MutableCopy;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v21 = CFDataGetLength(v19);
  v22 = &MutableBytePtr[v21 - CFDataGetLength(v14)];
  if ((v22 & 0x3F) != 0)
  {
    v23 = "NO";
  }

  else
  {
    v23 = "YES";
  }

  v36 = a2;
  v24 = a1;
  v25 = a4;
  v26 = v11;
  v27 = v10;
  if ((v22 & 0x7F) != 0)
  {
    v28 = "NO";
  }

  else
  {
    v28 = "YES";
  }

  v29 = CFDataGetLength(v14);
  v30 = CFDataGetLength(v19);
  v35 = v28;
  v10 = v27;
  v11 = v26;
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "Stitch Debug: \n StitchAddress: 0x%x \n 64-Byte-Aligned: %s \n 128-Byte-Aligned: %s\n Len(stitchData)=%d Len(newFileData) = %d", v22, v23, v35, v29, v30);
  BytePtr = CFDataGetBytePtr(v14);
  v32 = CFDataGetLength(v14);
  memcpy(v22, BytePtr, v32);
  *v25 = CFRetain(v19);
  SafeRelease(v19);
  AMAuthInstallDebugWriteObject(v24, v36, v10, 1);
  AMAuthInstallDebugWriteObject(v24, *v25, v26, 1);
  v33 = 0;
LABEL_12:
  SafeRelease(v10);
  SafeRelease(v11);
  return v33;
}

uint64_t AMAuthInstallMonetStitchSbl1(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v4 = *(a1[6] + 4);
  v5 = kAMAuthInstallTagBbSbl1HTDStitch;
  if (v4 > 1700064)
  {
    if (v4 > 2089184)
    {
      if (v4 != 2089185)
      {
        if (v4 == 9781473)
        {
          goto LABEL_24;
        }

        if (v4 != 2814177)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_23;
    }

    v6 = v4 == 1700065;
    v7 = 2044129;
LABEL_18:
    if (!v6 && v4 != v7)
    {
LABEL_27:
      v5 = kAMAuthInstallTagBbSbl1Stitch;
      goto LABEL_24;
    }

LABEL_23:
    v5 = kAMAuthInstallTagBbSbl1HTBStitch;
    goto LABEL_24;
  }

  if (v4 > 938208)
  {
    v6 = v4 == 938209 || v4 == 1327329;
    v7 = 1515745;
    goto LABEL_18;
  }

  if (v4 != 241889 && v4 != 520417)
  {
    goto LABEL_27;
  }

LABEL_24:
  v10 = *v5;
  if (v4 == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, v10, 1);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, v10);
  }
}

uint64_t AMAuthInstallMonetStitchMav25EBootLoader(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, const void *a5, int a6)
{
  if (!a1)
  {
    sub_10006D4C8(0);
LABEL_30:
    v12 = 0;
LABEL_31:
    v13 = 0;
LABEL_32:
    v49 = 99;
    goto LABEL_24;
  }

  if (!a2)
  {
    sub_10006D4B4(a1);
    goto LABEL_30;
  }

  if (!a3)
  {
    sub_10006D4A0(a1);
    goto LABEL_30;
  }

  if (!a4)
  {
    sub_10006D48C(a1);
    goto LABEL_30;
  }

  if (!a5)
  {
    sub_10006D478(a1);
    goto LABEL_30;
  }

  v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-Original", a5);
  if (!v12)
  {
    sub_10006D464(0);
    goto LABEL_31;
  }

  v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-Personalized", a5);
  if (!v13)
  {
    sub_10006D450(0);
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(a3, @"BasebandFirmware");
  v15 = CFGetTypeID(Value);
  TypeID = CFDictionaryGetTypeID();
  if (v15 != TypeID)
  {
    sub_10006D3A8(TypeID);
LABEL_38:
    v28 = 0;
LABEL_44:
    v49 = 99;
    goto LABEL_46;
  }

  v17 = CFDictionaryGetValue(a3, @"BasebandFirmware");
  if (!v17)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "response lacks %@", @"BasebandFirmware");
LABEL_40:
    v28 = 0;
    v49 = 8;
LABEL_46:
    SafeRelease(v28);
    goto LABEL_24;
  }

  v18 = v17;
  v19 = CFDictionaryGetValue(v17, a5);
  v20 = CFGetTypeID(v19);
  v21 = CFDataGetTypeID();
  if (v20 != v21)
  {
    sub_10006D3BC(v21);
    goto LABEL_38;
  }

  v22 = CFDictionaryGetValue(v18, a5);
  if (!v22)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "response lacks %@", a5);
    goto LABEL_40;
  }

  v23 = v22;
  Length = CFDataGetLength(v22);
  v25 = CFDataGetLength(a2);
  if (Length >= v25)
  {
    sub_10006D3D0(v25);
    v28 = 0;
    v49 = 1;
    goto LABEL_46;
  }

  v26 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v26, 0, a2);
  v28 = MutableCopy;
  if (!MutableCopy)
  {
    v49 = 2;
    goto LABEL_46;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  theData = a2;
  BytePtr = CFDataGetBytePtr(a2);
  if (a6)
  {
    v31 = *&BytePtr[56 * *(BytePtr + 28) - 48 + *(BytePtr + 4)];
  }

  else
  {
    v31 = *&BytePtr[32 * *(BytePtr + 22) - 28 + *(BytePtr + 7)];
  }

  v32 = &CFDataGetBytePtr(theData)[v31];
  v34 = sub_10000EE9C(v32, v33) + v32[5];
  v35 = CFDataGetLength(v23);
  if (v34 > v35)
  {
    sub_10006D3E4(v35);
    goto LABEL_44;
  }

  cf = a1;
  v52 = a4;
  v53 = v13;
  v36 = &MutableBytePtr[v31];
  v37 = CFDataGetLength(v28);
  sub_10000FAFC(v36, v23, 0, v34, v37);
  v39 = sub_10000EE9C(v32, v38);
  v40 = v32[5];
  v41 = v32[6];
  v43 = v32[8];
  v42 = v32[9];
  v44 = v32[7];
  if (v43 && v43 != 104)
  {
    sub_10006D424();
  }

  if (v42 && v42 != 3360)
  {
    sub_10006D3F8();
  }

  v45 = v43 + v42;
  v46 = v40 + v32[3] + 288;
  v47 = CFDataGetLength(v23);
  if (v46 + v45 > v47)
  {
    sub_10006D3E4(v47);
    v49 = 99;
    v13 = v53;
    goto LABEL_46;
  }

  v48 = CFDataGetLength(v28);
  sub_10000FAFC(&v36[v39 + v40 + v41 + v44], v23, v46, v45, v48);
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "\n\n");
  *v52 = CFRetain(v28);
  SafeRelease(v28);
  AMAuthInstallDebugWriteObject(cf, theData, v12, 1);
  v13 = v53;
  AMAuthInstallDebugWriteObject(cf, *v52, v53, 1);
  v49 = 0;
LABEL_24:
  SafeRelease(v12);
  SafeRelease(v13);
  return v49;
}

uint64_t AMAuthInstallMonetStitchMisc(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  if (*(a1[6] + 4) == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, @"Misc-HashTableBody-Blob", 1);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, @"Misc-HashTableBody-Blob");
  }
}

uint64_t AMAuthInstallMonetStitchRestoreSbl1(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v4 = *(a1[6] + 4);
  v5 = kAMAuthInstallTagBbRestoreSbl1HTDStitch;
  if (v4 > 1700064)
  {
    if (v4 > 2089184)
    {
      if (v4 != 2089185)
      {
        if (v4 == 9781473)
        {
          goto LABEL_24;
        }

        if (v4 != 2814177)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_23;
    }

    v6 = v4 == 1700065;
    v7 = 2044129;
LABEL_18:
    if (!v6 && v4 != v7)
    {
LABEL_27:
      v5 = kAMAuthInstallTagBbRestoreSbl1Stitch;
      goto LABEL_24;
    }

LABEL_23:
    v5 = kAMAuthInstallTagBbRestoreSbl1HTBStitch;
    goto LABEL_24;
  }

  if (v4 > 938208)
  {
    v6 = v4 == 938209 || v4 == 1327329;
    v7 = 1515745;
    goto LABEL_18;
  }

  if (v4 != 241889 && v4 != 520417)
  {
    goto LABEL_27;
  }

LABEL_24:
  v10 = *v5;
  if (v4 == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, v10, 1);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, v10);
  }
}

uint64_t AMAuthInstallMonetMeasureMav20ElfMBN(const void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, void *a5, const void *a6)
{
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *bytes = 0u;
  v49 = 0u;
  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    sub_10006D4DC(Length);
    goto LABEL_23;
  }

  v13 = Length;
  v14 = *(Length + 44);
  if (!*(Length + 44))
  {
    goto LABEL_22;
  }

  v15 = 0;
  v16 = 0;
  v17 = Length + *(Length + 28);
  do
  {
    if (*(v17 + 12) > v15 && (*(v17 + 24) & 0x7000000) != 0x5000000)
    {
      v16 = v17;
      v15 = *(v17 + 12);
    }

    v17 += 32;
    --v14;
  }

  while (v14);
  if (!v16)
  {
LABEL_22:
    sub_10006D5BC(Length);
LABEL_23:
    v47 = 0;
    v41 = 0;
    v43 = 0;
    v39 = 0;
    v42 = 10;
    goto LABEL_21;
  }

  v18 = (*(v16 + 16) + *(v16 + 4));
  v19 = CFDataGetLength(theData);
  if (v19 < v18)
  {
    sub_10006D5A8(v19);
    goto LABEL_23;
  }

  CFDataGetBytePtr(theData);
  BytePtr = CFDataGetBytePtr(theData);
  v21 = *(v16 + 4);
  v22 = &BytePtr[v21];
  v23 = (*&BytePtr[v21 + 20] + v21);
  v24 = CFDataGetLength(theData);
  if (v24 < v23)
  {
    sub_10006D594(v24);
    goto LABEL_23;
  }

  v25 = (*(v22 + 4) + *(v16 + 4));
  v26 = CFDataGetLength(theData);
  if (v26 < v25)
  {
    sub_10006D580(v26);
    goto LABEL_23;
  }

  v27 = (*(v22 + 9) + *(v16 + 4));
  v28 = CFDataGetLength(theData);
  if (v28 < v27)
  {
    sub_10006D56C(v28);
    goto LABEL_23;
  }

  v29 = (*(v22 + 7) + *(v16 + 4));
  v30 = CFDataGetLength(theData);
  if (v30 < v29)
  {
    sub_10006D558(v30);
    goto LABEL_23;
  }

  if ((*(v22 + 7) + *(v22 + 5) + *(v22 + 9)) + 168 != *(v16 + 16))
  {
    sub_10006D4F0(v30);
    goto LABEL_23;
  }

  v31 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v31, 0);
  if (!Mutable)
  {
    sub_10006D544(0);
    v47 = 0;
    v41 = 0;
    v43 = 0;
    v39 = 0;
    v42 = 2;
    goto LABEL_21;
  }

  v33 = Mutable;
  key = a5;
  CFDataSetLength(Mutable, 48);
  CFDataGetBytePtr(theData);
  v47 = v33;
  CFDataGetMutableBytePtr(v33);
  v34 = *(v16 + 4);
  v35 = CFDataGetBytePtr(theData);
  v36 = CFGetAllocator(a1);
  v46 = CFDataCreate(v36, v22, 168);
  CFDictionarySetValue(a3, a6, v46);
  v37 = CFGetAllocator(a1);
  v38 = CFDataCreateMutable(v37, 0);
  v39 = v38;
  if (!v38)
  {
    sub_10006D530(0);
    v41 = 0;
LABEL_35:
    v42 = 2;
    goto LABEL_20;
  }

  CFDataAppendBytes(v38, &v35[v34 + 168], *(v22 + 5));
  CFDataSetLength(v39, *(v22 + 5));
  CFDictionarySetValue(a3, a4, v39);
  *&bytes[4] = *(v16 + 4);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  sub_10000EA30(v13, *&bytes[4], &bytes[8]);
  v40 = CFGetAllocator(a1);
  v41 = CFDataCreate(v40, bytes, 72);
  if (!v41)
  {
    sub_10006D504();
    goto LABEL_35;
  }

  CFDictionarySetValue(a3, key, v41);
  v42 = 0;
LABEL_20:
  v43 = v46;
LABEL_21:
  SafeRelease(v39);
  SafeRelease(v47);
  SafeRelease(v41);
  SafeRelease(v43);
  return v42;
}

int8x16_t sub_10000EA30(const void *a1, CC_LONG a2, uint64_t a3)
{
  memset(&v8, 0, sizeof(v8));
  CC_SHA384_Init(&v8);
  CC_SHA384_Update(&v8, a1, a2);
  for (i = 0; i != 8; i += 2)
  {
    result = vrev64q_s8(*&v8.hash[i]);
    *(a3 + i * 8) = result;
  }

  return result;
}

uint64_t AMAuthInstallMonetMeasureMav25Elf32MBN(const __CFData *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5, const __CFData *a6)
{
  v6 = a1;
  memset(bytes, 0, sizeof(bytes));
  if (!a1)
  {
    sub_10006D750(0);
    v36 = 0;
    v11 = 0;
LABEL_32:
    v44 = 99;
    goto LABEL_23;
  }

  if (!theData)
  {
    sub_10006D73C(a1);
LABEL_29:
    v36 = 0;
LABEL_30:
    v11 = 0;
LABEL_31:
    v6 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    sub_10006D728(a1);
    goto LABEL_29;
  }

  if (!a4)
  {
    sub_10006D714(a1);
    goto LABEL_29;
  }

  if (!a5)
  {
    sub_10006D700(a1);
    goto LABEL_29;
  }

  v11 = a6;
  if (!a6)
  {
    sub_10006D6EC(a1);
    v36 = 0;
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    sub_10006D5D0(Length);
LABEL_44:
    v36 = 0;
    v11 = 0;
    v6 = 0;
    v44 = 10;
    goto LABEL_23;
  }

  v13 = Length;
  BytePtr = CFDataGetBytePtr(theData);
  v15 = &BytePtr[32 * *(BytePtr + 22) + *(BytePtr + 7)];
  if (v15 == 32)
  {
    sub_10006D6D8(BytePtr);
    goto LABEL_44;
  }

  v16 = (*(v15 - 16) + *(v15 - 28));
  v17 = CFDataGetLength(theData);
  if (v17 < v16)
  {
    sub_10006D6C4(v17);
    goto LABEL_44;
  }

  v18 = CFDataGetBytePtr(theData);
  v19 = *(v15 - 28);
  v20 = &v18[v19];
  v21 = (*&v18[v19 + 20] + v19);
  v22 = CFDataGetLength(theData);
  if (v22 < v21)
  {
    sub_10006D6B0(v22);
    goto LABEL_44;
  }

  v23 = (*(v20 + 24) + *(v15 - 28));
  v24 = CFDataGetLength(theData);
  if (v24 < v23)
  {
    sub_10006D69C(v24);
    goto LABEL_44;
  }

  v25 = (*(v20 + 28) + *(v15 - 28));
  v26 = CFDataGetLength(theData);
  if (v26 < v25)
  {
    sub_10006D688(v26);
    goto LABEL_44;
  }

  v27 = (*(v20 + 32) + *(v15 - 28));
  v28 = CFDataGetLength(theData);
  if (v28 < v27)
  {
    sub_10006D674(v28);
    goto LABEL_44;
  }

  v29 = (*(v20 + 36) + *(v15 - 28));
  v30 = CFDataGetLength(theData);
  if (v30 < v29)
  {
    sub_10006D660(v30);
    goto LABEL_44;
  }

  v32 = sub_10000EE9C(v20, v31);
  if (vaddlvq_u32(*(v20 + 20)) + *(v20 + 36) + v32 > *(v15 - 16))
  {
    sub_10006D64C(v32);
    goto LABEL_44;
  }

  v34 = sub_10000EE9C(v20, v33);
  v35 = CFGetAllocator(v6);
  v36 = CFDataCreate(v35, v20, v34);
  if (!v36)
  {
    sub_10006D638(0);
    v11 = 0;
    v6 = 0;
    v44 = 2;
    goto LABEL_23;
  }

  CFDictionarySetValue(a3, v11, v36);
  v39 = *(v20 + 20);
  if (!v39)
  {
    sub_10006D624(v37);
    goto LABEL_30;
  }

  v46 = v36;
  v40 = a5;
  v41 = sub_10000EE9C(v20, v38);
  v42 = CFGetAllocator(v6);
  v11 = CFDataCreate(v42, (v20 + v41), v39);
  if (!v11)
  {
    sub_10006D610(0);
    v6 = 0;
LABEL_49:
    v44 = 2;
    goto LABEL_22;
  }

  CFDictionarySetValue(a3, a4, v11);
  memset(&bytes[8], 0, 64);
  *&bytes[4] = *(v15 - 28);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  sub_10000EA30(v13, *&bytes[4], &bytes[8]);
  v43 = CFGetAllocator(v6);
  v6 = CFDataCreate(v43, bytes, 72);
  if (!v6)
  {
    sub_10006D5E4();
    goto LABEL_49;
  }

  CFDictionarySetValue(a3, v40, v6);
  v44 = 0;
LABEL_22:
  v36 = v46;
LABEL_23:
  SafeRelease(v36);
  SafeRelease(v11);
  SafeRelease(v6);
  return v44;
}

uint64_t sub_10000EE9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 && v2 != 224)
  {
    sub_10006D764();
  }

  return v2 + 288;
}

uint64_t AMAuthInstallMonetMeasureMav25Elf64MBN(const __CFData *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5, const __CFData *a6)
{
  v6 = a1;
  memset(bytes, 0, sizeof(bytes));
  if (!a1)
  {
    sub_10006D910(0);
    v36 = 0;
    v11 = 0;
LABEL_32:
    v44 = 99;
    goto LABEL_23;
  }

  if (!theData)
  {
    sub_10006D8FC(a1);
LABEL_29:
    v36 = 0;
LABEL_30:
    v11 = 0;
LABEL_31:
    v6 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    sub_10006D8E8(a1);
    goto LABEL_29;
  }

  if (!a4)
  {
    sub_10006D8D4(a1);
    goto LABEL_29;
  }

  if (!a5)
  {
    sub_10006D8C0(a1);
    goto LABEL_29;
  }

  v11 = a6;
  if (!a6)
  {
    sub_10006D8AC(a1);
    v36 = 0;
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    sub_10006D790(Length);
LABEL_44:
    v36 = 0;
    v11 = 0;
    v6 = 0;
    v44 = 10;
    goto LABEL_23;
  }

  v13 = Length;
  BytePtr = CFDataGetBytePtr(theData);
  v15 = &BytePtr[56 * *(BytePtr + 28) + *(BytePtr + 4)];
  if (v15 == 56)
  {
    sub_10006D898(BytePtr);
    goto LABEL_44;
  }

  v16 = *(v15 - 24) + *(v15 - 48);
  v17 = CFDataGetLength(theData);
  if (v16 > v17)
  {
    sub_10006D884(v17);
    goto LABEL_44;
  }

  v18 = CFDataGetBytePtr(theData);
  v19 = *(v15 - 48);
  v20 = &v18[v19];
  v21 = v19 + *&v18[v19 + 20];
  v22 = CFDataGetLength(theData);
  if (v21 > v22)
  {
    sub_10006D870(v22);
    goto LABEL_44;
  }

  v23 = *(v15 - 48) + *(v20 + 24);
  v24 = CFDataGetLength(theData);
  if (v23 > v24)
  {
    sub_10006D85C(v24);
    goto LABEL_44;
  }

  v25 = *(v15 - 48) + *(v20 + 28);
  v26 = CFDataGetLength(theData);
  if (v25 > v26)
  {
    sub_10006D848(v26);
    goto LABEL_44;
  }

  v27 = *(v15 - 48) + *(v20 + 32);
  v28 = CFDataGetLength(theData);
  if (v27 > v28)
  {
    sub_10006D834(v28);
    goto LABEL_44;
  }

  v29 = *(v15 - 48) + *(v20 + 36);
  v30 = CFDataGetLength(theData);
  if (v29 > v30)
  {
    sub_10006D820(v30);
    goto LABEL_44;
  }

  v32 = sub_10000EE9C(v20, v31);
  if (vaddlvq_u32(*(v20 + 20)) + *(v20 + 36) + v32 > *(v15 - 24))
  {
    sub_10006D80C(v32);
    goto LABEL_44;
  }

  v34 = sub_10000EE9C(v20, v33);
  v35 = CFGetAllocator(v6);
  v36 = CFDataCreate(v35, v20, v34);
  if (!v36)
  {
    sub_10006D7F8(0);
    v11 = 0;
    v6 = 0;
    v44 = 2;
    goto LABEL_23;
  }

  CFDictionarySetValue(a3, v11, v36);
  v39 = *(v20 + 20);
  if (!v39)
  {
    sub_10006D7E4(v37);
    goto LABEL_30;
  }

  v46 = v36;
  v40 = a5;
  v41 = sub_10000EE9C(v20, v38);
  v42 = CFGetAllocator(v6);
  v11 = CFDataCreate(v42, (v20 + v41), v39);
  if (!v11)
  {
    sub_10006D7D0(0);
    v6 = 0;
LABEL_49:
    v44 = 2;
    goto LABEL_22;
  }

  CFDictionarySetValue(a3, a4, v11);
  memset(&bytes[8], 0, 64);
  *&bytes[4] = *(v15 - 48);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  sub_10000EA30(v13, *&bytes[4], &bytes[8]);
  v43 = CFGetAllocator(v6);
  v6 = CFDataCreate(v43, bytes, 72);
  if (!v6)
  {
    sub_10006D7A4();
    goto LABEL_49;
  }

  CFDictionarySetValue(a3, v40, v6);
  v44 = 0;
LABEL_22:
  v36 = v46;
LABEL_23:
  SafeRelease(v36);
  SafeRelease(v11);
  SafeRelease(v6);
  return v44;
}

uint64_t AMAuthInstallMonetMeasureElfMBN(void *a1, CFDataRef theData, __CFDictionary *a3, void *a4, const void *a5)
{
  v53 = 0;
  *bytes = 0u;
  v52 = 0u;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    sub_10006D924(Length);
    goto LABEL_24;
  }

  v11 = Length;
  v12 = *(Length + 44);
  if (!*(Length + 44))
  {
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 0;
  v15 = Length + *(Length + 28);
  do
  {
    if (*(v15 + 12) > v14 && (*(v15 + 24) & 0x7000000) != 0x5000000)
    {
      v14 = *(v15 + 12);
      v13 = v15;
    }

    v15 += 32;
    --v12;
  }

  while (v12);
  if (!v13)
  {
LABEL_23:
    sub_10006D9F0(Length);
LABEL_24:
    v31 = 0;
    v44 = 0;
    v45 = 10;
    goto LABEL_22;
  }

  v16 = (*(v13 + 16) + *(v13 + 4));
  v17 = CFDataGetLength(theData);
  if (v17 < v16)
  {
    sub_10006D9DC(v17);
    goto LABEL_24;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v19 = *(v13 + 4);
  v20 = &BytePtr[v19];
  v21 = (*&BytePtr[v19 + 20] + v19);
  v22 = CFDataGetLength(theData);
  if (v22 < v21)
  {
    sub_10006D9C8(v22);
    goto LABEL_24;
  }

  v23 = (*(v20 + 4) + *(v13 + 4));
  v24 = CFDataGetLength(theData);
  if (v24 < v23)
  {
    sub_10006D9B4(v24);
    goto LABEL_24;
  }

  v25 = (*(v20 + 9) + *(v13 + 4));
  v26 = CFDataGetLength(theData);
  if (v26 < v25)
  {
    sub_10006D9A0(v26);
    goto LABEL_24;
  }

  v27 = (*(v20 + 7) + *(v13 + 4));
  v28 = CFDataGetLength(theData);
  if (v28 < v27)
  {
    sub_10006D98C(v28);
    goto LABEL_24;
  }

  if ((*(v20 + 7) + *(v20 + 5) + *(v20 + 9)) + 40 != *(v13 + 16))
  {
    sub_10006D938(v28);
    goto LABEL_24;
  }

  v29 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v29, 0);
  v31 = Mutable;
  if (!Mutable)
  {
    sub_10006D978(0);
    v44 = 0;
LABEL_35:
    v45 = 2;
    goto LABEL_22;
  }

  theDict = a3;
  key = a4;
  v32 = a5;
  if (*(a1[6] + 4) == 520417)
  {
    CFDataSetLength(Mutable, 48);
    v33 = CFDataGetBytePtr(theData);
    v34 = *(v13 + 4);
    v35 = *(v20 + 5);
    MutableBytePtr = CFDataGetMutableBytePtr(v31);
    CC_SHA384(&v33[v34], v35 + 40, MutableBytePtr);
    DWORD1(v49[0]) = *(v13 + 4) + *(v20 + 5) + 40;
    LODWORD(v49[0]) = CFDataGetLength(theData) - DWORD1(v49[0]);
    sub_10000EA30(v11, DWORD1(v49[0]), v49 + 8);
    v37 = CFGetAllocator(a1);
    v38 = v49;
    v39 = 72;
  }

  else
  {
    CFDataSetLength(Mutable, 32);
    v40 = CFDataGetBytePtr(theData);
    v41 = *(v13 + 4);
    v42 = *(v20 + 5);
    v43 = CFDataGetMutableBytePtr(v31);
    CC_SHA256(&v40[v41], v42 + 40, v43);
    *&bytes[4] = *(v13 + 4) + *(v20 + 5) + 40;
    *bytes = CFDataGetLength(theData) - *&bytes[4];
    sub_10000F65C(v11, *&bytes[4], &bytes[8]);
    v37 = CFGetAllocator(a1);
    v38 = bytes;
    v39 = 40;
  }

  v44 = CFDataCreate(v37, v38, v39);
  if (!v44)
  {
    sub_10006D94C();
    goto LABEL_35;
  }

  CFDictionarySetValue(theDict, key, v31);
  CFDictionarySetValue(theDict, v32, v44);
  v45 = 0;
LABEL_22:
  SafeRelease(v31);
  SafeRelease(v44);
  return v45;
}

int8x16_t sub_10000F65C(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v8, 0, sizeof(v8));
  CC_SHA256_Init(&v8);
  CC_SHA256_Update(&v8, a1, a2);
  result = vrev32q_s8(*v8.hash);
  v7 = vrev32q_s8(*&v8.hash[4]);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t AMAuthInstallMonetStitchTme(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  if (*(a1[6] + 4) != 2044129)
  {
    sub_10006DA04();
  }

  return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, @"TME-HashTableBody-Blob", 0);
}

uint64_t AMAuthInstallMonetCreateMEIDFromString(int a1, CFStringRef theString, CFTypeRef *a3)
{
  v4 = theString;
  cf = 0;
  if (CFStringGetLength(theString) == 15)
  {
    v10.length = CFStringGetLength(v4) - 1;
    v10.location = 0;
    v5 = CFStringCreateWithSubstring(kCFAllocatorDefault, v4, v10);
    v4 = v5;
  }

  else
  {
    v5 = 0;
  }

  v6 = AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, v4, &cf);
  if (v6)
  {
    v7 = v6;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateMEIDFromString", "failed to convert meid (%@) to data", v4);
  }

  else if (cf)
  {
    v7 = 0;
    *a3 = CFRetain(cf);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateMEIDFromString", "meid (%@) tempData is NULL", v4);
    v7 = 14;
  }

  SafeRelease(v5);
  SafeRelease(cf);
  return v7;
}

uint64_t AMAuthInstallMonetCreateReversedMEIDFromString(int a1, const __CFString *a2, CFTypeRef *a3)
{
  theData = 0;
  v14 = 0;
  MEIDFromString = AMAuthInstallMonetCreateMEIDFromString(a1, a2, &v14);
  if (MEIDFromString)
  {
    v11 = MEIDFromString;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "failed to convert meid (%@) to data", a2);
    v8 = 0;
    v6 = v14;
    goto LABEL_6;
  }

  v6 = v14;
  if (!v14)
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "meid (%@) tempData is NULL", a2);
    v8 = 0;
LABEL_11:
    v11 = 14;
    goto LABEL_6;
  }

  ReversedMEID = AMAuthInstallMonetCreateReversedMEID(kCFAllocatorDefault, v14, &theData);
  if (ReversedMEID)
  {
    v11 = ReversedMEID;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "failed to reverse meid (%@)", a2);
    v8 = theData;
    goto LABEL_6;
  }

  v8 = theData;
  if (!theData)
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "meid (%@) reversedData is NULL", a2);
    goto LABEL_11;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v8);
  AMAuthInstallLogDumpMemory(7, "AMAuthInstallMonetCreateReversedMEIDFromString", "reversed meid", BytePtr, Length);
  v11 = 0;
  *a3 = CFRetain(v8);
LABEL_6:
  SafeRelease(0);
  SafeRelease(v6);
  SafeRelease(v8);
  return v11;
}

void *sub_10000FAFC(void *a1, const __CFData *a2, uint64_t a3, size_t a4, int a5)
{
  v9 = "NO";
  if ((a1 & 0x3F) != 0)
  {
    v10 = "NO";
  }

  else
  {
    v10 = "YES";
  }

  if ((a1 & 0x7F) == 0)
  {
    v9 = "YES";
  }

  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25Chunk", "Stitch Debug: \n StitchAddress: 0x%x \n 64-Byte-Aligned: %s \n 128-Byte-Aligned: %s\n stitchDataSize = %d stitchDataOffset = %d Len(newFileData) = %d", a1, v10, v9, a4, a3, a5);
  v11 = &CFDataGetBytePtr(a2)[a3];

  return memcpy(a1, v11, a4);
}

uint64_t sub_10000FBA0(uint64_t a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

UInt8 *sub_10000FBC0()
{

  return CFDataGetMutableBytePtr(v0);
}

void sub_10000FBE0(uint64_t a1, uint64_t a2, const char *a3)
{

  AMAuthInstallLog(7, v3, a3);
}

CFDataRef sub_10000FC34(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFErrorRef error)
{
  v14 = *(v12 + 176);

  return CFPropertyListCreateData(a1, v14, kCFPropertyListXMLFormat_v1_0, 0, &error);
}

uint64_t AMAuthInstallPlatformCreateSoftLink(const __CFURL *a1, CFURLRef url)
{
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024) || !CFURLGetFileSystemRepresentation(a1, 1u, v6, 1024))
  {
    return 3;
  }

  result = symlink(buffer, v6);
  if (result)
  {
    v4 = __error();
    v5 = strerror(*v4);
    AMAuthInstallLog(3, "AMAuthInstallPlatformCreateSoftLink", "failed to create link: %s", v5);
    AMAuthInstallLog(7, "AMAuthInstallPlatformCreateSoftLink", "source path: %s; dest path: %s", buffer, v6);
    return 4;
  }

  return result;
}

char *AMAuthInstallPlatformMakeDirectoryForURL(const __CFURL *a1)
{
  strcpy(__delim, "/");
  bzero(__str, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  v2 = strlen(buffer);
  if (!CFURLHasDirectoryPath(a1))
  {
    if (v2)
    {
      do
      {
        v3 = v2 - 1;
        v4 = __delim[v2 + 1] == 47 || v2 == 1;
        --v2;
      }

      while (!v4);
    }

    else
    {
      v3 = 0;
    }

    buffer[v3] = 0;
  }

  __stringp = buffer;
  result = strsep(&__stringp, __delim);
  if (result)
  {
    v6 = "Could not stat (%s)";
    while (1)
    {
      memset(&v9, 0, sizeof(v9));
      if (*result)
      {
        snprintf(__str, 0x400uLL, "%s%c%s", __str, 47, result);
        if (stat(__str, &v9) == -1)
        {
          if (*__error() != 2)
          {
            goto LABEL_23;
          }

          if (mkdir(__str, 0x1EDu) == -1 && *__error() != 17)
          {
            break;
          }
        }
      }

      result = strsep(&__stringp, __delim);
      if (!result)
      {
        return result;
      }
    }

    v6 = "Could not mkdir (%s)";
LABEL_23:
    v7 = __error();
    v8 = strerror(*v7);
    AMAuthInstallLog(3, "AMAuthInstallPlatformMakeDirectoryForURL", v6, v8);
    AMAuthInstallLog(7, "AMAuthInstallPlatformMakeDirectoryForURL", "%s", __str);
    return 4;
  }

  return result;
}

uint64_t AMAuthInstallPlatformRemoveDirectory(const __CFURL *a1)
{
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  v7 = 0;
  v2 = &v7;
  v3 = sub_10001007C(buffer, &v7);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    if (!rmdir(buffer))
    {
      return 0;
    }

    v4 = 4;
    v2 = __error();
  }

  v5 = strerror(*v2);
  AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveDirectory", "failed to remove directory: %s", v5);
  AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveDirectory", "url=%@, path=%s", a1, buffer);
  return v4;
}

uint64_t sub_10001007C(const char *a1, int *a2)
{
  v4 = opendir(a1);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  for (i = readdir(v4); i; i = readdir(v5))
  {
    if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
    {
      snprintf(__str, 0x400uLL, "%s%c%s", a1, 47, i->d_name);
      memset(&v8, 0, sizeof(v8));
      if (!lstat(__str, &v8))
      {
        if ((v8.st_mode & 0x4000) != 0)
        {
          if (sub_10001007C(__str, a2))
          {
            return 4;
          }

          if (rmdir(__str))
          {
            goto LABEL_15;
          }
        }

        else if (unlink(__str))
        {
          goto LABEL_15;
        }
      }
    }
  }

  result = closedir(v5);
  if (result)
  {
LABEL_15:
    *a2 = *__error();
    return 4;
  }

  return result;
}

uint64_t AMAuthInstallPlatformRemoveFile(const __CFURL *a1)
{
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  result = remove(buffer, v2);
  if (result)
  {
    v4 = __error();
    v5 = strerror(*v4);
    AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveFile", "failed to file: %s", v5);
    AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveFile", "url=%@, path=%s", a1, buffer);
    return 4;
  }

  return result;
}

const __CFString *sub_1000102D0()
{
  v1 = 32;
  result = sysctlbyname("kern.osversion", v3, &v1, 0, 0);
  if (!result)
  {
    v1 = 32;
    if (!sysctlbyname("hw.product", v2, &v1, 0, 0) || (result = sysctlbyname("hw.machine", v2, &v1, 0, 0), !result))
    {
      result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"mac/%s/%s", v3, v2);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  if (!qword_1000C8798)
  {
    result = @"???";
LABEL_5:
    qword_1000C8798 = result;
  }

  return result;
}

uint64_t _AMAuthInstallSupportsECProvision(uint64_t a1)
{
  result = 0;
  v3 = *(*(a1 + 48) + 4);
  if (v3 <= 241888)
  {
    v6 = v3 - 96;
    v7 = v6 > 7;
    v8 = (1 << v6) & 0xA1;
    if (v7 || v8 == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 > 9572576)
    {
      v4 = v3 == 9572577;
      v5 = 9781473;
    }

    else
    {
      v4 = v3 == 241889;
      v5 = 8343777;
    }

    if (!v4 && v3 != v5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100010474(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CFTypeRef a11)
{
  a11 = 0;

  return AMAuthInstallMonetCreateReversedMEIDFromString(v11, a1, &a11);
}

uint64_t sub_1000104A8(const __CFAllocator *a1, uint64_t a2, const void *a3)
{

  return AMAuthInstallHttpSetUriEscapedValue(a1, v3, a3, v4);
}

CFAllocatorRef sub_1000104C0()
{

  return CFGetAllocator(v0);
}

uint64_t AMAuthInstallRembrandtLocalRegisterKeys(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 4);
  if (v1 > 100)
  {
    if (v1 != 101 && v1 != 103)
    {
      if (v1 != 104)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v1 == 94)
  {
LABEL_9:
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    goto LABEL_10;
  }

  if (v1 == 96)
  {
LABEL_8:
    AMAuthInstallCryptoRegisterKeysFromPEMBuffer();
    AMAuthInstallCryptoRegisterKeysFromPEMBuffer();
LABEL_10:
    AMAuthInstallLog(6, "AMAuthInstallRembrandtLocalRegisterKeys", "rembrandt local signing keys available");
    return 0;
  }

LABEL_11:
  AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalRegisterKeys", "unknown chipID");
  return 99;
}

void sub_100010788(const __CFString *a1, const void *a2, CFMutableDictionaryRef *a3)
{
  MutableCopy = kCFAllocatorDefault;
  v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@,", *(*(*a3 + 2) + 160));
  v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"@%@", *(*a3 + 11));
  if (v8 && (MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, a1)) != 0)
  {
    if (CFStringHasPrefix(a1, @"Ap,"))
    {
      v9 = MutableCopy;
      v10.location = 0;
      v10.length = 3;
LABEL_7:
      CFStringReplace(v9, v10, v7);
      v11 = a3[1];
      v12 = MutableCopy;
LABEL_8:
      CFDictionarySetValue(v11, v12, a2);
      CFDictionaryRemoveValue(a3[1], a1);
      goto LABEL_9;
    }

    if (CFStringHasPrefix(a1, @"Ap"))
    {
      v9 = MutableCopy;
      v10.location = 0;
      v10.length = 2;
      goto LABEL_7;
    }

    if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
    {
      v11 = a3[1];
      v12 = v8;
      goto LABEL_8;
    }
  }

  else
  {
    sub_100072340(0);
  }

LABEL_9:
  SafeRelease(v7);
  SafeRelease(v8);

  SafeRelease(MutableCopy);
}

void sub_100010900(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (CFDictionaryContainsKey(theDict, key))
  {
    Value = CFDictionaryGetValue(theDict, key);
    CFDictionarySetValue(theDict, a2, Value);

    CFDictionaryRemoveValue(theDict, key);
  }
}

void sub_100010984(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%lld", a3);
  v6 = v5;
  if (a1 && a2 && v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  else if (!v5)
  {
    return;
  }

  CFRelease(v6);
}

uint64_t AMAuthInstallSsoInitialize()
{
  if (qword_1000C87B0)
  {
    goto LABEL_5;
  }

  v0 = dlopen("/usr/lib/libSoftwareUpdateSSO.dylib", 1);
  qword_1000C87B0 = v0;
  if (v0)
  {
    off_1000C87C0 = dlsym(v0, "copyPersonalizationSSOToken");
    if (off_1000C87C0)
    {
      AMAuthInstallLog(7, "AMAuthInstallSsoInitialize", "SoftwareUpdateSSO dylib found");
LABEL_5:
      v1 = 0;
      goto LABEL_6;
    }

    sub_100072A48();
    v1 = 8;
  }

  else
  {
    v1 = 4;
  }

  AMAuthInstallLog(3, "AMAuthInstallSsoInitialize", "SoftwareUpdateSSO dylib not found");
LABEL_6:
  if (!qword_1000C87A0)
  {
    v2 = dlopen("/usr/lib/libacmobileshim.dylib", 1);
    qword_1000C87A0 = v2;
    if (v2)
    {
      off_1000C87B8 = dlsym(v2, "ACMobileShimCopyTicket");
      if (off_1000C87B8)
      {
        AMAuthInstallLog(7, "AMAuthInstallSsoInitialize", "ACMobileShim dylib found");
        return 0;
      }

      sub_100072A8C();
      v1 = 8;
    }

    else
    {
      v1 = 4;
    }

    AMAuthInstallLog(3, "AMAuthInstallSsoInitialize", "ACMobileShim dylib not found");
  }

  return v1;
}

uint64_t sub_100010B50(uint64_t a1, const __CFAllocator *a2, CFDataRef *a3, uint64_t *a4)
{
  error = 0;
  responseFlags = 0;
  err = 0;
  if (!a3)
  {
    sub_100072E3C(a4);
    v15 = 0;
    v17 = 0;
    v16 = 1;
    goto LABEL_47;
  }

  v5 = (!a1 || !*(a1 + 112)) && byte_1000C87A8 == 0;
  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v55 = 0x2000000000;
  v56 = 0;
  v51 = 0;
  v52[0] = &v51;
  v52[1] = 0x2000000000;
  v52[2] = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  if (off_1000C87C0)
  {
    v6 = a4;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8 = Mutable;
    if (v5)
    {
      v9 = &kCFBooleanFalse;
    }

    else
    {
      v9 = &kCFBooleanTrue;
    }

    CFDictionaryAddValue(Mutable, @"stealthMode", *v9);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1107296256;
    block[2] = sub_1000114E8;
    block[3] = &unk_1000AA650;
    block[4] = &valuePtr;
    block[5] = &v51;
    block[6] = &v47;
    block[7] = v8;
    dispatch_async(global_queue, block);
    if ((v48[3] & 1) == 0)
    {
      do
      {
        CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 1u);
      }

      while (*(v48 + 24) != 1);
    }

    v11 = *(v52[0] + 24);
    if (v11 || (v12 = p_valuePtr[3]) == 0)
    {
      sub_100072B24(v6, v11);
      LOBYTE(Value) = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(v12, @"ssodata");
      if (Value)
      {
        AMAuthInstallLog(6, "_AMAuthInstallSsoCopyTicketUsingSUSSO", "_AMAuthInstallSsoCopyTicketUsingSUSSO successfully acquired ssoData");
        v14 = 0;
        *a3 = CFDataCreateCopy(kCFAllocatorDefault, Value);
        LOBYTE(Value) = 1;
        goto LABEL_16;
      }

      sub_100072AD0(v52, v6);
    }

    v14 = 99;
  }

  else
  {
    v6 = a4;
    sub_100072B6C(a4);
    LOBYTE(Value) = 0;
    v8 = 0;
    v14 = 8;
  }

LABEL_16:
  SafeRelease(v8);
  SafeRelease(p_valuePtr[3]);
  SafeRelease(*(v52[0] + 24));
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&valuePtr, 8);
  if (Value)
  {
    v15 = 0;
    v16 = 0;
LABEL_18:
    v17 = 0;
    goto LABEL_47;
  }

  if (v6)
  {
    v18 = *v6;
  }

  else
  {
    v18 = 0;
  }

  AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get a ticket using SUSSO, status:%d, error:%@", v14, v18);
  if (!v5)
  {
    sub_100072BB4(v6);
    v15 = 0;
    v17 = 0;
    v16 = 21;
    goto LABEL_47;
  }

  if (!off_1000C87B8)
  {
    sub_100072DF4(v6);
    v15 = 0;
    v17 = 0;
LABEL_68:
    v16 = 8;
    goto LABEL_47;
  }

  LODWORD(valuePtr) = 0;
  LODWORD(v51) = 1;
  LODWORD(v47) = 0;
  block[0] = 0;
  v19 = CFNumberCreate(a2, kCFNumberIntType, &valuePtr);
  v41 = v6;
  v38 = a3;
  v39 = v19;
  if (!v19)
  {
    v40 = 0;
    v24 = 0;
    v27 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
LABEL_82:
    v28 = 0;
    v16 = 2;
    goto LABEL_38;
  }

  v20 = CFNumberCreate(a2, kCFNumberIntType, &v51);
  if (!v20)
  {
    v40 = 0;
    v24 = 0;
    v27 = 0;
    v19 = 0;
    v21 = 0;
LABEL_74:
    v22 = 0;
    goto LABEL_82;
  }

  v21 = CFArrayCreateMutable(a2, 0, &kCFTypeArrayCallBacks);
  if (!v21)
  {
    v40 = 0;
    v24 = 0;
    v27 = 0;
    v19 = 0;
    goto LABEL_74;
  }

  v22 = CFArrayCreateMutable(a2, 0, &kCFTypeArrayCallBacks);
  if (!v22)
  {
    v40 = 0;
    v24 = 0;
LABEL_77:
    v27 = 0;
    goto LABEL_81;
  }

  CFArrayAppendValue(v21, v19);
  CFArrayAppendValue(v21, v19);
  CFArrayAppendValue(v22, v20);
  CFArrayAppendValue(v22, v20);
  v23 = CFArrayCreateMutable(a2, 0, &kCFTypeArrayCallBacks);
  v24 = v23;
  if (!v23)
  {
    v40 = 0;
    goto LABEL_77;
  }

  CFArrayAppendValue(v23, @"Username");
  CFArrayAppendValue(v24, @"Password");
  v25 = sub_1000723D8(block, 0);
  if ((v25 & 7) != 0)
  {
    v16 = v25;
    sub_100072BFC();
    v40 = 0;
    v27 = 0;
    v19 = 0;
    v28 = 0;
    goto LABEL_38;
  }

  if (block[0])
  {
    v26 = CFArrayCreateMutable(a2, 0, &kCFTypeArrayCallBacks);
    v27 = v26;
    if (v26)
    {
      CFArrayAppendValue(v26, block[0]);
      goto LABEL_34;
    }

    v40 = 0;
LABEL_81:
    v19 = 0;
    goto LABEL_82;
  }

  v27 = 0;
LABEL_34:
  v19 = CFDictionaryCreateMutable(a2, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v19)
  {
    v40 = 0;
    goto LABEL_82;
  }

  v28 = CFNumberCreate(a2, kCFNumberIntType, &v47);
  CFDictionaryAddValue(v19, kCFUserNotificationAlertHeaderKey, @"AppleConnect");
  CFDictionaryAddValue(v19, kCFUserNotificationTextFieldTitlesKey, v24);
  CFDictionaryAddValue(v19, kCFUserNotificationDefaultButtonTitleKey, @"OK");
  CFDictionaryAddValue(v19, kCFUserNotificationAlternateButtonTitleKey, @"Cancel");
  CFDictionaryAddValue(v19, @"SBUserNotificationBehavesSuperModally", kCFBooleanTrue);
  CFDictionaryAddValue(v19, @"SBUserNotificationTextAutocapitalizationType", v21);
  CFDictionaryAddValue(v19, @"SBUserNotificationTextAutocorrectionType", v22);
  CFDictionaryAddValue(v19, @"SBUserNotificationDontDismissOnUnlock", kCFBooleanTrue);
  CFDictionaryAddValue(v19, @"DismissOnLock", kCFBooleanFalse);
  CFDictionaryAddValue(v19, kCFUserNotificationKeyboardTypesKey, v28);
  CFDictionaryAddValue(v19, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
  CFDictionaryAddValue(v19, @"SBUserNotificationDisplayActionButtonOnLockScreen", kCFBooleanTrue);
  if (v27)
  {
    CFDictionaryAddValue(v19, kCFUserNotificationTextFieldValuesKey, v27);
  }

  v40 = CFRetain(v19);
  v16 = 0;
LABEL_38:
  SafeRelease(0);
  SafeRelease(v24);
  SafeRelease(v27);
  SafeRelease(v19);
  SafeRelease(block[0]);
  SafeRelease(v21);
  SafeRelease(v22);
  SafeRelease(v39);
  SafeRelease(v20);
  SafeRelease(v28);
  v15 = v40;
  if (v16 || !v40)
  {
    sub_100072D78(v16, v6);
    goto LABEL_18;
  }

  AMAuthInstallLog(5, "_AMAuthInstallSsoCreateServiceTicket", "%s: Creating user notification", "_AMAuthInstallSsoCreateServiceTicket");
  v29 = CFUserNotificationCreate(a2, 0.0, 0x20000uLL, &error, v40);
  v17 = v29;
  if (!v29)
  {
    sub_100072D0C(v41);
    v16 = 2;
    goto LABEL_47;
  }

  error = CFUserNotificationReceiveResponse(v29, 300.0, &responseFlags);
  if (error)
  {
    CFUserNotificationCancel(v17);
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to receive CFUserNotification response %d", error);
LABEL_43:
    v16 = 8;
LABEL_46:
    AMSupportCreateErrorInternal();
    goto LABEL_47;
  }

  responseFlags &= 3u;
  if (responseFlags == 1)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "user canceled AppleConnect login.");
    v16 = 21;
    goto LABEL_46;
  }

  ResponseDictionary = CFUserNotificationGetResponseDictionary(v17);
  if (!ResponseDictionary)
  {
    sub_100072CA0(v41);
    goto LABEL_68;
  }

  v32 = CFDictionaryGetValue(ResponseDictionary, kCFUserNotificationTextFieldValuesKey);
  if (!v32 || (v33 = v32, CFArrayGetCount(v32) < 0))
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get CFUserNotification textField values");
    goto LABEL_43;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v33, 0);
  v35 = CFArrayGetValueAtIndex(v33, 1);
  if (!ValueAtIndex || (v36 = v35, CFStringGetLength(ValueAtIndex) < 1) || !v36 || CFStringGetLength(v36) <= 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get username and password values");
    v16 = 1;
    goto LABEL_46;
  }

  v37 = sub_10007279C(ValueAtIndex);
  if (v37)
  {
    v16 = v37;
    sub_100072C28(v37, v41);
    goto LABEL_47;
  }

  v16 = off_1000C87B8(ValueAtIndex, v36, v38, &err);
  if (v16 && err)
  {
    CFErrorGetCode(err);
    goto LABEL_46;
  }

LABEL_47:
  SafeRelease(v17);
  SafeRelease(v15);
  return v16;
}

CFTypeRef sub_1000114E8(void *a1)
{
  *(*(a1[4] + 8) + 24) = off_1000C87C0(a1[7], *(a1[5] + 8) + 24);
  SafeRetain(*(*(a1[4] + 8) + 24));
  result = SafeRetain(*(*(a1[5] + 8) + 24));
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void sub_100011560(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void sub_1000115C0(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void SafeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef SafeRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void SafeFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void _CFDictionarySetInteger64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  if (!v5)
  {
    sub_100073CBC();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
}

void _CFDictionarySetInteger32(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (!v5)
  {
    sub_100073CE8();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
}

void AMAuthInstallSupportDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(a1, a2, *v3);
}

void _CFDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(a1, a2, *v3);
}

CFArrayRef _CFArrayCreateWithObjects(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v13 = &a9;
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
  *values = 0u;
  v15 = 0u;
  while (1)
  {
    v10 = v13++;
    v11 = *v10;
    if (!v11)
    {
      break;
    }

    values[v9++] = v11;
    if (v9 == 32)
    {
      return 0;
    }
  }

  return CFArrayCreate(a1, values, v9, &kCFTypeArrayCallBacks);
}

uint64_t _CFStringToUInt32(const __CFString *a1, _DWORD *a2)
{
  result = CFStringGetCString(a1, buffer, 32, 0x600u);
  if (result)
  {
    *__error() = 0;
    *a2 = strtoul(buffer, 0, 0);
    return *__error() == 0;
  }

  return result;
}

CFPropertyListRef AMAuthInstallPreferencesCopyStringValue(const __CFString *a1, const __CFString *a2)
{
  if (!a1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (!v4)
    {
      v4 = CFPreferencesCopyAppValue(a2, @"com.apple.libauthinstall");
    }

LABEL_8:
    if (!v4)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v4 = CFPreferencesCopyAppValue(a1, kCFPreferencesCurrentApplication);
  if (!v4)
  {
    v4 = CFPreferencesCopyAppValue(a1, @"com.apple.libauthinstall");
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_9:
  v5 = CFGetTypeID(v4);
  if (v5 != CFStringGetTypeID())
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

const __CFString *AMAuthInstallPreferencesGetBooleanValue(const __CFString *result, const __CFString *a2, Boolean *a3)
{
  keyExistsAndHasValidFormat = 0;
  if (result)
  {
    v5 = result;
    result = CFPreferencesGetAppBooleanValue(result, kCFPreferencesCurrentApplication, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      goto LABEL_8;
    }

    result = CFPreferencesGetAppBooleanValue(v5, @"com.apple.libauthinstall", &keyExistsAndHasValidFormat);
    v6 = keyExistsAndHasValidFormat == 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 1;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    result = CFPreferencesGetAppBooleanValue(a2, @"com.apple.libauthinstall", &keyExistsAndHasValidFormat);
  }

LABEL_8:
  if (a3)
  {
    *a3 = keyExistsAndHasValidFormat;
  }

  return result;
}

uint64_t AMAuthInstallSupportBase64Encode(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  if (!theData)
  {
    sub_100073D28(a1);
    return 1;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "value length == 0: '%@'", theData);
    return 1;
  }

  if (!a3)
  {
    sub_100073D14(Length);
    return 1;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v8 = CFDataGetLength(theData);
  v9 = b64encode(BytePtr, v8);
  if (v9)
  {
    v10 = v9;
    v11 = strlen(v9);
    if (v11)
    {
      v12 = CFStringCreateWithBytes(a1, v10, v11, 0x8000100u, 0);
      if (v12)
      {
        v13 = v12;
        *a3 = CFRetain(v12);
        free(v10);
        CFRelease(v13);
        return 0;
      }

      AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedValue == NULL: '%@'", theData);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedLength == 0: '%@'", theData);
    }

    free(v10);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedBuffer == NULL: '%@'", theData);
  }

  return 99;
}