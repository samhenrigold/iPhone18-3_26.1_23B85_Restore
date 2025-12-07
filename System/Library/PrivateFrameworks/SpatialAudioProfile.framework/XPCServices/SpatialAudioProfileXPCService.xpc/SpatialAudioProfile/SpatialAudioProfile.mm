void sub_1000015BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  (*(v22 + 16))(v22, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000015F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001610(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_100008860 <= 90)
  {
    if (dword_100008860 != -1)
    {
LABEL_4:
      LogPrintF(&dword_100008860, "[SpatialAudioProfileClientXPCConnection fetchSpatialAudioProfileRecordForClient:WithCompletion:]_block_invoke", 90, "### Fetching spatial sound profile failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000016EC(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_100008860 <= 90 && (dword_100008860 != -1 || _LogCategory_Initialize()))
    {
      sub_100001D28(v5);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v17)
    {
      v6 = objc_alloc_init(SpatialAudioProfileRecord);
      v9 = v6;
      if (dword_100008860 <= 30)
      {
        if (dword_100008860 != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          sub_100001D68(v6, v7, v8);
        }
      }

      v10 = +[SpatialAudioProfileDataFuzzer sharedInstance];
      v11 = [v17 soundProfileData];
      v12 = [v10 createNoiseSoundProfileFromData:v11];

      v13 = [v9 setProfileData:v12];
      if (dword_100008860 <= 30)
      {
        if (dword_100008860 != -1 || (v13 = _LogCategory_Initialize(), v13))
        {
          sub_100001D84(v13, v14, v15);
        }
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v16 = *(a1 + 32);
      v9 = NSErrorF(NSOSStatusErrorDomain, 4294960596, "No sound profile record found");
      (*(v16 + 16))(v16, 0, v9);
    }
  }
}

void sub_1000019E4(id a1)
{
  qword_100008990 = objc_alloc_init(SpatialAudioProfileDataFuzzer);

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(SpatialAudioProfileXPCService);
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_100001BE4(void *a1)
{
  v1 = [a1 xpcCnx];
  LogPrintF(&dword_100008860, "-[SpatialAudioProfileXPCService _xpcConnectionInvalidated:]", 20, "XPC connection ended: %#{pid}", [v1 processIdentifier]);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}