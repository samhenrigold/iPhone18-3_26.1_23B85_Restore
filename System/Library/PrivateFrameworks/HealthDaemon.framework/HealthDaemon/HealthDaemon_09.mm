void sub_228BAE4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BAFB50(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = HDDatabase;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_228BB029C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HDStringFromHDDatabaseType(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"Protected Database";
  }

  else if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Database Type (%ld)", a1];
  }

  else
  {
    v2 = @"Unprotected Database";
  }

  return v2;
}

void sub_228BB1EAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23)
{
  if (a2)
  {

    objc_begin_catch(a1);
    if ((a23 & 1) == 0)
    {
      JUMPOUT(0x228BB1A64);
    }

    JUMPOUT(0x228BB1910);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HDStringFromDatabaseComponentIdentifier(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown database component (%ld)", a1];
  }

  else
  {
    v2 = off_27861CB38[a1];
  }

  return v2;
}

void sub_228BB4788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x228BB455CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_228BB50A4(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

id HDDatabaseIdentifierDefaultKeyForProfileIdentifier(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 identifier];
  v3 = [v2 UUIDString];
  v4 = [v1 stringWithFormat:@"DatabaseIdentifier-%@", v3];

  return v4;
}

void sub_228BB5248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_228BB646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  if (!v21)
  {

    v21 = 0;
  }

  _Unwind_Resume(a1);
}

void sub_228BB6CB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_228BB9A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_228BBAD40(_Unwind_Exception *a1)
{
  if (!v3)
  {

    v3 = 0;
  }

  _Unwind_Resume(a1);
}

void sub_228BBB84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_228BBB908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_228BBC5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id HDDatabaseUserDefaultsKeyForProfileIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CCACA8];
  v5 = [a2 identifier];
  v6 = [v5 UUIDString];
  v7 = [v4 stringWithFormat:@"%@-%@", v3, v6];

  return v7;
}

uint64_t HDCodableCompanionUserNotificationResponseReadFrom(uint64_t a1, void *a2)
{
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(HDCodableError);
        objc_storeStrong((a1 + 8), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableErrorReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228BC67DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_228BC7754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228BC79B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228BC7F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  *(v34 - 248) = v32;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v34 - 248));

  _Block_object_dispose(va, 8);
  *(v34 - 248) = a10;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v34 - 248));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__307(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void *std::vector<_HDWrappedSource>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(a2);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

id std::vector<_HDWrappedSource>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    v15[4] = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(v12);
    }

    v13 = 24 * v9;
    v15[0] = 0;
    v15[1] = v13;
    v15[3] = 0;
    *v13 = *a2;
    v14 = *(a2 + 8);
    *(v13 + 16) = *(a2 + 16);
    *(v13 + 8) = v14;
    v15[2] = v13 + 24;
    std::vector<_HDWrappedSource>::__swap_out_circular_buffer(a1, v15);
    v8 = a1[1];
    result = std::__split_buffer<_HDWrappedSource>::~__split_buffer(v15);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = *(a2 + 16);
    *(v5 + 8) = *(a2 + 8);
    *(v5 + 16) = v7;
    v8 = v5 + 24;
  }

  a1[1] = v8;
  return result;
}

void sub_228BC8E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, id a58, id a59)
{
  _Block_object_dispose(&a44, 8);
  *(v59 - 248) = a10;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v59 - 248));

  _Unwind_Resume(a1);
}

void sub_228BC9830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = &a33;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = (v35 - 200);
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = (v35 - 136);
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a23);

  std::pair<_HDCachedSourceOrder * {__strong},HDConcreteSyncIdentity * {__strong}>::~pair(v34);
  _Unwind_Resume(a1);
}

void sub_228BCA074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  v17 = v15;

  a13 = &a10;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void sub_228BCA87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v66 - 256) = v65;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v66 - 256));
  _Block_object_dispose(&a65, 8);
  *(v66 - 256) = a10;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v66 - 256));

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  std::__hash_table<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,std::__unordered_map_hasher<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectHash,HDNSObjectEqual,true>,std::__unordered_map_equal<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectEqual,HDNSObjectHash,true>,std::allocator<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>>>::~__hash_table(&a38);
  _Block_object_dispose(&a43, 8);
  a32 = a13;
  std::vector<HKSource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a32);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__325(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t __Block_byref_object_copy__328(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t _HDDefaultSourceOrderCompare(HKSource *a1, HKSource *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = ___ZL28_HDDefaultSourceOrderCompareP8HKSourceS0__block_invoke(v3);
  v6 = ___ZL28_HDDefaultSourceOrderCompareP8HKSourceS0__block_invoke(v4);
  v7 = [v5 compare:v6];

  if (!v7)
  {
    if ([(HKSource *)v3 _isAppleDevice]&& [(HKSource *)v4 _isAppleDevice])
    {
      v8 = [(HKSource *)v3 bundleIdentifier];
      v9 = [(HKSource *)v4 bundleIdentifier];
      v7 = [v8 compare:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void sub_228BCBE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char *a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  std::__split_buffer<_HDWrappedSource>::~__split_buffer(va);

  a42 = &a45;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a42);

  _Unwind_Resume(a1);
}

void std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<_HDWrappedSource>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = v7[1];
      *(v8 + 16) = *(v7 + 16);
      *(v8 + 8) = v10;
      v7 += 3;
      v8 += 24;
    }

    while (v7 != v5);
    do
    {
      v11 = *v4;
      v4 += 3;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<_HDWrappedSource>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_HDWrappedSource>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<_HDWrappedSource>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
}

void std::vector<HKSource * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<_HDWrappedSource>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 3);
        v3 -= 24;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

id *std::__copy_impl::operator()[abi:ne200100]<_HDWrappedSource *,_HDWrappedSource *,_HDWrappedSource *>(uint64_t a1, uint64_t a2, id *location)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      objc_storeStrong(location, *v5);
      v6 = *(v5 + 8);
      *(location + 16) = *(v5 + 16);
      location[1] = v6;
      v5 += 24;
      location += 3;
    }

    while (v5 != a2);
  }

  return location;
}

void *___ZL28_HDDefaultSourceOrderCompareP8HKSourceS0__block_invoke(void *a1)
{
  v1 = a1;
  if ([v1 _isPreferredSource])
  {
    v2 = [v1 bundleIdentifier];
    v3 = [v2 isEqualToString:*MEMORY[0x277CCE3A8]];

    if (v3)
    {
      v4 = &unk_283CB0AC8;
    }

    else if ([v1 _isConnectedGymSource])
    {
      v4 = &unk_283CB0AE0;
    }

    else if ([v1 _isAppleWatch])
    {
      v4 = &unk_283CB0AF8;
    }

    else if ([v1 _isAppleDevice])
    {
      v4 = &unk_283CB0B10;
    }

    else if ([v1 _isApplication])
    {
      v4 = &unk_283CB0B28;
    }

    else
    {
      v4 = &unk_283CB0B40;
    }
  }

  else
  {
    v4 = &unk_283CB0B58;
  }

  return v4;
}

uint64_t std::__hash_table<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,std::__unordered_map_hasher<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectHash,HDNSObjectEqual,true>,std::__unordered_map_equal<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectEqual,HDNSObjectHash,true>,std::allocator<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,std::__unordered_map_hasher<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectHash,HDNSObjectEqual,true>,std::__unordered_map_equal<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectEqual,HDNSObjectHash,true>,std::allocator<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>>>::__emplace_unique_key_args<HKSource * {__strong},std::piecewise_construct_t const&,std::tuple<HKSource * const {__strong}&>,std::tuple<>>(float *a1, id *a2, id **a3)
{
  v5 = [*a2 hash];
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  v14 = *a2;
  v15 = v12[2];
  v16 = v14;
  v17 = v16;
  if (v15 != v16)
  {
    if (v16)
    {
      v18 = [v15 isEqual:v16];

      if (v18)
      {
        return v12;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

  return v12;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
{
  if (a1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_228BCD3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228BCDCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD0A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD0E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD1E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228BD2708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD2C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD2F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD3A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD5088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableTimestampedKeyValuePairReadFrom(uint64_t a1, void *a2)
{
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
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v21 = PBReaderReadString();
        v22 = 40;
LABEL_44:
        v28 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_54;
      }

      if (v13 == 2)
      {
        *(a1 + 56) |= 4u;
        v34 = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v34;
        v31 = 24;
LABEL_53:
        *(a1 + v31) = v30;
        goto LABEL_54;
      }

      if (v13 != 3)
      {
        goto LABEL_38;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 56) |= 2u;
      while (1)
      {
        LOBYTE(v34) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v34 & 0x7F) << v14;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_48;
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

LABEL_48:
      *(a1 + 16) = v20;
LABEL_54:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        *(a1 + 56) |= 1u;
        v34 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v34;
        v31 = 8;
        goto LABEL_53;
      case 5:
        v21 = PBReaderReadString();
        v22 = 48;
        break;
      case 6:
        v21 = PBReaderReadData();
        v22 = 32;
        break;
      default:
LABEL_38:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
    }

    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

void sub_228BD8904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228BD8AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD952C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

id getSOSUtilitiesClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSUtilitiesClass_softClass;
  v7 = getSOSUtilitiesClass_softClass;
  if (!getSOSUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke_0;
    v3[3] = &unk_278616E90;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_228BDAB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BDAC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSOSUtilitiesClass_block_invoke_0(uint64_t a1)
{
  SOSLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOSUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOSUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSOSUtilitiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"HDMedicalIDDataManager+EmergencyContactConsolidation.m" lineNumber:26 description:{@"Unable to find class %s", "SOSUtilities"}];

    __break(1u);
  }
}

void SOSLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SOSLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27861D450;
    v5 = 0;
    SOSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SOSLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SOSLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"HDMedicalIDDataManager+EmergencyContactConsolidation.m" lineNumber:25 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SOSLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSOSContactsManagerClass_block_invoke(uint64_t a1)
{
  SOSLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOSContactsManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOSContactsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSOSContactsManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"HDMedicalIDDataManager+EmergencyContactConsolidation.m" lineNumber:28 description:{@"Unable to find class %s", "SOSContactsManager"}];

    __break(1u);
  }
}

void sub_228BDDBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BDDDE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_228BDED44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, id a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 72));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

void sub_228BDF474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableMedicationDoseEventReadFrom(uint64_t a1, void *a2)
{
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
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            *(a1 + 88) |= 1u;
            v45[0] = 0;
            v28 = [a2 position] + 8;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v39 = v45[0];
            v40 = 8;
            goto LABEL_82;
          }

          if (v13 == 7)
          {
            *(a1 + 88) |= 4u;
            v45[0] = 0;
            v25 = [a2 position] + 8;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v39 = v45[0];
            v40 = 24;
            goto LABEL_82;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 88) |= 0x10u;
              while (1)
              {
                LOBYTE(v45[0]) = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v45[0] & 0x7F) << v30;
                if ((v45[0] & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v24 = 0;
                  goto LABEL_74;
                }
              }

              if ([a2 hasError])
              {
                v24 = 0;
              }

              else
              {
                v24 = v32;
              }

LABEL_74:
              v37 = 40;
              goto LABEL_75;
            case 9:
              v16 = PBReaderReadData();
              v17 = 64;
              goto LABEL_64;
            case 0xA:
              v16 = PBReaderReadString();
              v17 = 48;
LABEL_64:
              v36 = *(a1 + v17);
              *(a1 + v17) = v16;

              goto LABEL_83;
          }
        }

        goto LABEL_65;
      }

      if (v13 > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 88) |= 2u;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v45[0] & 0x7F) << v18;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_70;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_70:
          v37 = 16;
LABEL_75:
          *(a1 + v37) = v24;
          goto LABEL_83;
        }

LABEL_65:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_83;
      }

      v27 = objc_alloc_init(HDCodableSample);
      objc_storeStrong((a1 + 72), v27);
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_83:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v16 = PBReaderReadString();
        v17 = 80;
        goto LABEL_64;
      case 4:
        v16 = PBReaderReadString();
        v17 = 56;
        goto LABEL_64;
      case 5:
        *(a1 + 88) |= 8u;
        v45[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:v45 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v45[0];
        v40 = 32;
LABEL_82:
        *(a1 + v40) = v39;
        goto LABEL_83;
    }

    goto LABEL_65;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableMedicalCodingListReadFrom(void *a1, void *a2)
{
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HDCodableMedicalCoding);
        [a1 addItems:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicalCodingReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCloudSyncCodableSharedSummaryRecordReadFrom(char *a1, void *a2)
{
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addAuthorizationCategories:v16];
            }

            goto LABEL_37;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadData();
            v15 = 48;
            goto LABEL_36;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_36;
          }

          if (v13 == 6)
          {
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addObjectTypeIdentifiers:v16];
            }

            goto LABEL_37;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_36:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
LABEL_37:

          goto LABEL_38;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 64;
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableListUserDomainConceptReadFrom(uint64_t a1, void *a2)
{
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableCompanionUserNotificationRequestReadFrom(uint64_t a1, void *a2)
{
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HDCodableCompanionUserNotificationConfiguration);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HDCodableCompanionUserNotificationConfigurationReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

double combineNoiseLevelDatums(double a1, double a2, double a3, double a4)
{
  v8 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  v9 = __exp10(a1 / 10.0);
  v10 = __exp10(a3 / 10.0);
  v11 = 0.0;
  if (a2 + a4 > 0.0)
  {
    v12 = a2 * v9 + a4 * v10;
    if (v12 > 0.0)
    {
      v11 = log10(v12 / (a2 + a4)) * 10.0;
    }
  }

  return v11;
}

void HDStatisticsNoiseLevel::addSampleValue(HDStatisticsNoiseLevel *this, double a2, double a3, int a4)
{
  v7.f64[0] = __exp10(a2 / 10.0) * a3;
  v8 = *(this + 4);
  if (!v8)
  {
    *this = v7.f64[0];
    *(this + 1) = a3;
    v11 = 1;
    *(this + 2) = a2;
    *(this + 3) = a2;
    goto LABEL_9;
  }

  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9 >= a2)
  {
    v9 = a2;
  }

  if (v10 <= a2)
  {
    v10 = a2;
  }

  *(this + 2) = v10;
  *(this + 3) = v9;
  v7.f64[1] = a3;
  *this = vaddq_f64(v7, *this);
  if (a4)
  {
    v11 = v8 + 1;
LABEL_9:
    *(this + 4) = v11;
  }
}

long double HDStatisticsNoiseLevel::mean(HDStatisticsNoiseLevel *this)
{
  v1 = *(this + 1);
  result = 0.0;
  if (v1 > 0.0 && *this > 0.0)
  {
    return log10(*this / v1) * 10.0;
  }

  return result;
}

uint64_t *HDStatisticsNoiseLevel::splitSampleAtTime@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 1);
  v4 = *(result + 2);
  v5 = result[3];
  v6 = *(result + 32);
  v7 = 0.0;
  v8 = *(result + 33);
  if (v6)
  {
    if (v3 > a3)
    {
      v6 = 0;
      v9 = v4 > v3;
      a3 = *(result + 2);
      v10 = *(result + 33);
      v7 = *result;
      v11 = result[1];
LABEL_9:
      v12 = result[3];
      goto LABEL_10;
    }

    if (v4 >= a3)
    {
      v6 = v3 < a3;
      v9 = v4 > a3;
      v10 = *(result + 33);
      v7 = *result;
      v11 = *&a3;
      goto LABEL_9;
    }

    v10 = 0;
    v12 = 0;
    v9 = 0;
    v6 = v4 > v3;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v9 = 0;
  }

  a3 = *(result + 2);
  v11 = 0;
  v4 = 0.0;
LABEL_10:
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = a3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v8;
  *(a2 + 34) = *(result + 34);
  *(a2 + 38) = *(result + 19);
  *(a2 + 40) = v7;
  *(a2 + 48) = v11;
  *(a2 + 56) = v4;
  *(a2 + 64) = v12;
  *(a2 + 72) = v9;
  *(a2 + 73) = v10;
  return result;
}

double *HDStatisticsNoiseLevel::splitSampleAtTime(double *result, uint64_t a2, double a3)
{
  if ((result[4] & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = result[1];
  if (v3 > a3)
  {
    v4 = *(result + 16);
    v5 = *(result + 1);
    *a2 = *result;
    *(a2 + 16) = v5;
    *(a2 + 32) = v4;
    *(a2 + 32) = *(a2 + 16) > *(a2 + 8);
    *(result + 32) = 0;
    return result;
  }

  v6 = result[2];
  if (v6 < a3)
  {
    *(result + 32) = v6 > v3;
LABEL_6:
    *(a2 + 32) = 0;
    return result;
  }

  v7 = *result;
  v8 = *(result + 1);
  *(a2 + 32) = *(result + 16);
  *a2 = v7;
  *(a2 + 16) = v8;
  result[2] = a3;
  *(a2 + 8) = a3;
  *(result + 32) = result[1] < a3;
  *(a2 + 32) = *(a2 + 16) > a3;
  return result;
}

uint64_t HDStatisticsNoiseLevel::applyMaskToSample(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 - v4 <= 0.0)
    {
      goto LABEL_20;
    }

    v5 = (*a2 + 8);
    v6 = 0.0;
    v7 = *(result + 8);
    do
    {
      v8 = v5 - 1;
      if (*v5 > v7)
      {
        v9 = *v8;
        if (*v8 >= v3)
        {
          break;
        }

        if (v9 > v7)
        {
          if (v3 < v9)
          {
            v8 = (result + 16);
          }

          v6 = v6 + *v8 - v7;
        }

        if (*v5 >= v3)
        {
          v10 = (result + 16);
        }

        else
        {
          v10 = v5;
        }

        v7 = *v10;
      }

      v11 = v5 + 1;
      v5 += 2;
    }

    while (v11 != v2);
    v12 = v7 >= v3 ? v6 : v6 + v3 - v7;
    if (v12 <= 0.0)
    {
LABEL_20:
      *(result + 32) = 0;
    }

    else
    {
      *(result + 16) = v4 + v12;
    }
  }

  return result;
}

void HDStatisticsNoiseLevel::configure(HDStatisticsNoiseLevel *this, HDStatisticsNoiseLevelConfiguration *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(this + 89);
    v5 = v3;
    if (![(HDStatisticsNoiseLevelConfiguration *)v3 enableOverlapProcessing]&& (v4 & 1) != 0)
    {
      HDStatisticsNoiseLevel::finalizeSamples(this);
      *(this + 88) = 1;
      [*(this + 10) resetAnchorTime:0.0];
    }

    *(this + 89) = [(HDStatisticsNoiseLevelConfiguration *)v5 enableOverlapProcessing];
    v3 = v5;
  }
}

void HDStatisticsNoiseLevel::finalizeSamples(HDStatisticsNoiseLevel *this)
{
  v1 = MEMORY[0x28223BE20](this);
  if (*(v1 + 89) == 1)
  {
    v2 = v1;
    memset(v8, 0, 512);
    v3 = *(v1 + 80);
    if (v3)
    {
      objc_msgSend_exportCurrentState(v3);
    }

    else
    {
      bzero(v8, 0x1420uLL);
    }

    v4 = [HDQuantitySampleOverlapProcessor alloc];
    memcpy(__dst, v8, sizeof(__dst));
    v5 = [(HDQuantitySampleOverlapProcessor *)v4 initWithState:__dst];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN22HDStatisticsNoiseLevel15finalizeSamplesEv_block_invoke;
    v6[3] = &__block_descriptor_40_e24_B32__0q8____dddBq_16__24l;
    v6[4] = v2;
    [(HDQuantitySampleOverlapProcessor *)v5 fetchFinalOverlapSamplesWithErrorOut:0 handler:v6];
  }
}

void HDStatisticsNoiseLevel::addSample(HDStatisticsNoiseLevel *this, const HDRawQuantitySample *a2, char a3)
{
  if (*(this + 89))
  {
    memset(v14, 0, sizeof(v14));
    var0 = a2->var0;
    var3 = a2->var3;
    v6 = *(this + 10);
    v11 = *&a2->var1;
    v12 = var0;
    v13 = a3;
    v15 = var3;
    v7 = *(this + 88);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN22HDStatisticsNoiseLevel9addSampleERK19HDRawQuantitySampleb_block_invoke;
    v10[3] = &__block_descriptor_40_e24_B32__0q8____dddBq_16__24l;
    v10[4] = this;
    [v6 fetchOverlapProcessSamplesFrom:&v11 setAnchorTime:v7 errorOut:0 handler:v10];
    if (*(this + 88) == 1)
    {
      *(this + 88) = 0;
    }
  }

  else
  {
    v8 = a2->var0;
    v9 = a2->var2 - a2->var1;

    HDStatisticsNoiseLevel::addSampleValue(this, v8, v9, a3);
  }
}

void HDStatisticsNoiseLevel::addProcessedOverlapSampleValues(HDStatisticsNoiseLevel *this, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v5 = a3 + 16;
    do
    {
      v6 = *(v5 - 16);
      v7 = *(v5 - 8);
      v8 = *v5;
      v9 = *(v5 + 16);
      HDStatisticsNoiseLevel::addSampleValue(this, *v5, v7 - v6, *(v5 + 8) & 1);
      if (v3 == 1 && (!*(this + 72) || *(this + 6) <= v6))
      {
        *(this + 5) = v8;
        *(this + 6) = v6;
        *(this + 7) = v7;
        *(this + 8) = v9;
        *(this + 36) = 1;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }
}

__n128 HDStatisticsNoiseLevel::updateMostRecentSample(HDStatisticsNoiseLevel *this, const HDRawQuantitySample *a2)
{
  if (!*(this + 72) || (result.n128_u64[0] = *(this + 6), result.n128_f64[0] <= a2->var1))
  {
    result = *&a2->var0;
    v3 = *&a2->var2;
    *(this + 36) = *&a2->var4;
    *(this + 56) = v3;
    *(this + 40) = result;
  }

  return result;
}

void HDStatisticsNoiseLevel::unarchive(HDStatisticsNoiseLevel *this, const statistics::Statistics *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  *(v3 + 72) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  v5 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(v4 + 80) = v5;
  *(v4 + 32) = *(v2 + 24);
  v6 = *(v2 + 88);
  *v4 = vextq_s8(*(v2 + 184), *(v2 + 184), 8uLL);
  v7 = *(v2 + 104);
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 88) = *(v2 + 201);
  v8 = *(v2 + 112);
  if (v8)
  {
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    *(v4 + 40) = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
    *(v4 + 56) = v9;
    *(v4 + 64) = v10;
    *(v4 + 72) = 1;
  }

  *(v4 + 89) = *(v2 + 200);
  v11 = *(v2 + 120);
  if (v11)
  {
    memset(v14, 0, 512);
    HDStatisticsNoiseLevel::unarchiveOverlapProcessor(v14, v11);
    v12 = [HDQuantitySampleOverlapProcessor alloc];
    memcpy(v13, v14, sizeof(v13));
    *(v4 + 80) = [(HDQuantitySampleOverlapProcessor *)v12 initWithState:v13];
  }
}

void HDStatisticsNoiseLevel::unarchiveOverlapProcessor(uint64_t *__return_ptr a1@<X8>, HDStatisticsNoiseLevel *this@<X0>)
{
  bzero(a1 + 3, 0x1408uLL);
  *a1 = *(this + 1);
  v4 = *(this + 3);
  a1[1] = *(this + 2);
  a1[2] = v4;
  *(a1 + 24) = *(this + 56) & ((*(this + 60) & 8) >> 3);
  if (v4 >= 128)
  {
    v5 = 128;
  }

  else
  {
    v5 = v4;
  }

  if (v4 >= 1)
  {
    v6 = 0;
    v7 = a1 + 8;
    do
    {
      statistics::QuantitySampleAttenuationEngineSample::QuantitySampleAttenuationEngineSample(v10, *(*(this + 4) + 8 * v6));
      v8 = v13;
      v9 = v11;
      *(v7 - 4) = v12;
      *(v7 - 3) = *&v10[8];
      *(v7 - 8) = v8;
      *v7 = v9;
      v7 += 5;
      PB::Base::~Base(v10);
      ++v6;
    }

    while (v5 != v6);
  }
}

void HDStatisticsNoiseLevel::archive(HDStatisticsNoiseLevel *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 3);
  *(a2 + 88) = *(this + 2);
  *(a2 + 184) = vextq_s8(*this, *this, 8uLL);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 160) = 0;
  *a2 = &unk_283BE6208;
  *(a2 + 8) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  v5 = *(this + 4);
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 104) = v4;
  LOBYTE(v5) = *(this + 88);
  *(a2 + 204) = 90273;
  *(a2 + 201) = v5;
  statistics::Statistics::makeMostRecentDatum(a2);
  v7[0] = &unk_283BEB0A8;
  v11 = 127;
  v8 = vextq_s8(*(this + 40), *(this + 40), 8uLL);
  v7[1] = *(this + 7);
  v7[2] = *(this + 8);
  v9 = 0;
  v10 = 0;
  statistics::RawQuantitySample::operator=(*(a2 + 112), v7);
  PB::Base::~Base(v7);
  v6 = *(this + 89);
  *(a2 + 204) |= 0x8000u;
  *(a2 + 200) = v6;
  statistics::Statistics::makeOverlapProcessorState(a2);
  HDStatisticsNoiseLevel::archiveOverlapProcessor(this);
  statistics::QuantityOverlapProcessorState::operator=(*(a2 + 120), v7);
  v7[0] = &unk_283BEC550;
  v12 = &v8.i64[1];
  std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](&v12);
  PB::Base::~Base(v7);
}

void HDStatisticsNoiseLevel::archiveOverlapProcessor(HDStatisticsNoiseLevel *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(v1 + 80);
  if (v4)
  {
    objc_msgSend_exportCurrentState(v4);
    v6 = *(&v9 + 1);
    v7 = v9;
    v5 = v10;
    v8 = BYTE8(v10);
  }

  else
  {
    bzero(&v9, 0x1420uLL);
    v8 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *v3 = &unk_283BEC550;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 60) = 15;
  *(v3 + 8) = v7;
  *(v3 + 16) = v6;
  *(v3 + 24) = v5;
  *(v3 + 56) = v8;
  if (v5 >= 1)
  {
    operator new();
  }
}

void sub_228BEF284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  PB::Base::~Base(&a9);
  statistics::QuantityOverlapProcessorState::~QuantityOverlapProcessorState(v9);
  _Unwind_Resume(a1);
}

void sub_228BF1050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BF1CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228BF3BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228BF449C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_228BF58F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_228BF62D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BF64EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BF6878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BF6D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDDataEntityPredicateForSyncProvenance(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  if (a2)
  {
    [v3 predicateWithProperty:@"data_provenances.sync_provenance" equalToValue:v4];
  }

  else
  {
    [v3 predicateWithProperty:@"data_provenances.sync_provenance" notEqualToValue:v4];
  }
  v5 = ;

  return v5;
}

id HDDataEntityPredicateForDataUUIDs(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = _HDSQLiteValueForUUID();
        [v2 addObject:{v8, v11}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"uuid" values:v2];

  return v9;
}

id HDDataEntityPredicateForObjectsFromAppleWatchSources(int a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"((%@ & %lld) != %d)", @"data_provenances.derived_flags", 1, a1 ^ 1u, 0];
  v2 = MEMORY[0x277D10B90];
  v6[0] = @"data_provenances.derived_flags";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 predicateWithSQL:v1 overProperties:v3 values:MEMORY[0x277CBEBF8]];

  return v4;
}

id HDDataEntityPredicateForSourceRevisionsSet(uint64_t a1, void *a2, int a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v6;
  if ((a1 - 1) >= 2)
  {
    if (a1 != 7)
    {
      v23 = 0;
      goto LABEL_45;
    }

    a1 = 1;
  }

  v47 = v5;
  if (!a3)
  {
    v49 = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __HDDataEntityPredicateForSourceRevisionsSet_block_invoke;
    aBlock[3] = &__block_descriptor_40_e40_v32__0__NSMutableArray_8__NSString_16_24l;
    aBlock[4] = a1;
    v24 = _Block_copy(aBlock);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v48 = v5;
    v55 = [v48 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (!v55)
    {
      goto LABEL_42;
    }

    obja = *v57;
    v51 = *MEMORY[0x277CCCE00];
    v50 = *MEMORY[0x277CCCDF8];
    while (1)
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v57 != obja)
        {
          objc_enumerationMutation(v48);
        }

        v26 = *(*(&v56 + 1) + 8 * i);
        v27 = [v26 version];
        v28 = v27;
        v29 = &stru_283BF39C8;
        if (v27)
        {
          v29 = v27;
        }

        v30 = v29;

        v31 = [v26 productType];
        v32 = v31;
        v33 = @"UnknownDevice";
        if (v31)
        {
          v33 = v31;
        }

        v34 = v33;

        if (v26)
        {
          objc_msgSend_operatingSystemVersion(v26);
        }

        v35 = [MEMORY[0x277CBEB18] array];
        v36 = MEMORY[0x277CCABB0];
        v37 = [v26 sourceEntity];
        v38 = [v36 numberWithLongLong:{objc_msgSend(v37, "persistentID")}];
        v24[2](v24, v35, @"data_provenances.source_id", v38);

        if (([(__CFString *)v30 isEqualToString:v51]& 1) == 0)
        {
          v24[2](v24, v35, @"data_provenances.source_version", v30);
        }

        v39 = [v26 productType];
        v40 = [v39 isEqualToString:v50];

        if ((v40 & 1) == 0)
        {
          v24[2](v24, v35, @"data_provenances.origin_product_type", v34);
        }

        if ((HKNSOperatingSystemVersionsEqual() & 1) == 0)
        {
          v41 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          v24[2](v24, v35, @"data_provenances.origin_major_version", v41);

          v42 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          v24[2](v24, v35, @"data_provenances.origin_minor_version", v42);

          v43 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          v24[2](v24, v35, @"data_provenances.origin_patch_version", v43);
        }

        if (a1 != 7)
        {
          if (a1 == 2)
          {
            v44 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v35];
            goto LABEL_39;
          }

          if (a1 != 1)
          {
            goto LABEL_40;
          }
        }

        v44 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v35];
LABEL_39:
        v45 = v44;
        [v49 addObject:v44];

LABEL_40:
      }

      v55 = [v48 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (!v55)
      {
LABEL_42:

        v7 = v49;
        v23 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v49];

        goto LABEL_43;
      }
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v8)
  {
    v9 = v8;
    v54 = *v62;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v62 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * j);
        v12 = MEMORY[0x277D10B18];
        v13 = MEMORY[0x277CCABB0];
        v14 = [v11 sourceEntity];
        v15 = [v13 numberWithLongLong:{objc_msgSend(v14, "persistentID")}];
        v16 = [v12 predicateWithProperty:@"data_provenances.source_id" value:v15 comparisonType:a1];
        v66[0] = v16;
        v17 = MEMORY[0x277D10B18];
        v18 = [v11 version];
        v19 = [v17 predicateWithProperty:@"data_provenances.source_version" value:v18 comparisonType:a1];
        v66[1] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];

        if (a1 == 7 || a1 == 1)
        {
          v21 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v20];
        }

        else
        {
          v21 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v20];
        }

        v22 = v21;
        [v7 addObject:v21];
      }

      v9 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v9);
  }

  v23 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v7];
LABEL_43:
  v5 = v47;
LABEL_45:

  return v23;
}

void __HDDataEntityPredicateForSourceRevisionsSet_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D10B18];
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v6 predicateWithProperty:a3 value:a4 comparisonType:v7];
  [v8 addObject:v9];
}

id HDDataEntityPredicateForOriginBuildInRange(void *a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"data_provenances.origin_build" notEqualToValue:@"UnknownBuild"];
    [v5 addObject:v6];

    v7 = MEMORY[0x277D10A50];
    if (v3)
    {
      v8 = MEMORY[0x277D10B90];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, ?) >= 0", *MEMORY[0x277D10A50], @"data_provenances.origin_build"];
      v25[0] = @"data_provenances.origin_build";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      v24 = v3;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      v12 = [v8 predicateWithSQL:v9 overProperties:v10 values:v11];
      [v5 addObject:v12];

      v7 = MEMORY[0x277D10A50];
    }

    if (v4)
    {
      v13 = MEMORY[0x277D10B90];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, ?) < 0", *v7, @"data_provenances.origin_build"];
      v23 = @"data_provenances.origin_build";
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v22 = v4;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      v17 = [v13 predicateWithSQL:v14 overProperties:v15 values:v16];
      [v5 addObject:v17];
    }

    v18 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v5];
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"HDSQLitePredicate * _Nonnull HDDataEntityPredicateForOriginBuildInRange(NSString * _Nullable __strong, NSString * _Nullable __strong)"}];
    [v20 handleFailureInFunction:v21 file:@"HDDataEntity.m" lineNumber:2312 description:@"Must specify at least one of minBuild and maxBuild."];

    v18 = 0;
  }

  return v18;
}

__CFString *HDDataEntityPredicateForOriginBuild(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = 0;
  if (a1 > 4)
  {
    if ((a1 - 7) < 2)
    {
      goto LABEL_17;
    }

    if (a1 == 5)
    {
      v4 = @"> 0";
    }

    else if (a1 == 6)
    {
      v4 = @">= 0";
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_17;
    }

    if (a1 == 1)
    {
      v4 = @"== 0";
    }
  }

  else if (a1 == 2)
  {
    v4 = @"!= 0";
  }

  else if (a1 == 3)
  {
    v4 = @"< 0";
  }

  else
  {
    v4 = @"<= 0";
  }

  v5 = MEMORY[0x277D10B90];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, ?) %@", *MEMORY[0x277D10A50], @"data_provenances.origin_build", v4];
  v11[0] = @"data_provenances.origin_build";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v4 = [v5 predicateWithSQL:v6 overProperties:v7 values:v8];

LABEL_17:

  return v4;
}

id HDDataEntityPredicateForDeviceIdentifierSet(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 7:
      goto LABEL_4;
    case 2:
      v4 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"data_provenances.device_id" values:v3];
      goto LABEL_6;
    case 1:
LABEL_4:
      v4 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"data_provenances.device_id" values:v3];
LABEL_6:
      v5 = v4;
      goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

id HDDataEntityPredicateForCreationDate(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = _HDSQLiteValueForDate();
  v5 = [v3 predicateWithProperty:@"creation_date" value:v4 comparisonType:a1];

  return v5;
}

id HDDataEntityPredicateForSyncIdentity(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLong:a2];
  v4 = [MEMORY[0x277D10B18] predicateWithProperty:@"data_provenances.sync_identity" value:v3 comparisonType:a1];

  return v4;
}

uint64_t HDCodableTinkerOptInRequestReadFrom(uint64_t a1, void *a2)
{
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___HDCodableTinkerOptInRequest__guardianDisplayName;
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

    v13 = &OBJC_IVAR___HDCodableTinkerOptInRequest__requestIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_228BFD3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228BFED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 216), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableStateSyncCollectionReadFrom(void *a1, void *a2)
{
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(HDCodableObjectCollection);
        [a1 addDeletedSampleCollections:v13];
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(HDCodableObjectCollection);
        [a1 addSampleCollections:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableObjectCollectionReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228C01788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableCompanionUserNotificationConfigurationReadFrom(uint64_t a1, void *a2)
{
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableSummarySharingEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v62) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v62 & 0x7F) << v5;
      if ((v62 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 144;
        goto LABEL_71;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_71;
      case 3u:
        v22 = PBReaderReadString();
        if (v22)
        {
          [a1 addAllContactIdentifiers:v22];
        }

        goto LABEL_81;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_71;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_71;
      case 6u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 152) |= 0x40u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v62 & 0x7F) << v25;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_100;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v27;
        }

LABEL_100:
        v54 = 132;
        goto LABEL_113;
      case 7u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 152) |= 8u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v62 & 0x7F) << v33;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v35;
        }

LABEL_104:
        v54 = 56;
        goto LABEL_113;
      case 8u:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 152) |= 0x20u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v62 & 0x7F) << v39;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v41;
        }

LABEL_108:
        v54 = 128;
        goto LABEL_113;
      case 9u:
        v22 = objc_alloc_init(HDCodableSharingSetupMetadata);
        objc_storeStrong((a1 + 120), v22);
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !HDCodableSharingSetupMetadataReadFrom(v22, a2))
        {
          goto LABEL_123;
        }

        goto LABEL_80;
      case 0xAu:
        *(a1 + 152) |= 4u;
        v62 = 0;
        v46 = [a2 position] + 8;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
        {
          v59 = [a2 data];
          [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v56 = v62;
        v57 = 24;
        goto LABEL_120;
      case 0xBu:
        v22 = PBReaderReadString();
        if (v22)
        {
          [a1 addAuthorizationCategories:v22];
        }

        goto LABEL_81;
      case 0xCu:
        *(a1 + 152) |= 1u;
        v62 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v58 = [a2 data];
          [v58 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v56 = v62;
        v57 = 8;
        goto LABEL_120;
      case 0xDu:
        *(a1 + 152) |= 2u;
        v62 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v55 = [a2 data];
          [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v56 = v62;
        v57 = 16;
LABEL_120:
        *(a1 + v57) = v56;
        goto LABEL_121;
      case 0xEu:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_71;
      case 0xFu:
        v13 = PBReaderReadString();
        v14 = 48;
        goto LABEL_71;
      case 0x10u:
        v13 = PBReaderReadData();
        v14 = 96;
LABEL_71:
        v45 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_121;
      case 0x11u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 152) |= 0x10u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v62 & 0x7F) << v48;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_112;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v50;
        }

LABEL_112:
        v54 = 88;
        goto LABEL_113;
      case 0x28u:
        v22 = objc_alloc_init(HDCodableSharingAuthorization);
        [a1 addSharingAuthorizations:v22];
        v62 = 0;
        v63 = 0;
        if (PBReaderPlaceMark() && HDCodableSharingAuthorizationReadFrom(v22, a2))
        {
LABEL_80:
          PBReaderRecallMark();
LABEL_81:

LABEL_121:
          v60 = [a2 position];
          if (v60 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_123:

        return 0;
      case 0x29u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 152) |= 0x80u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v62 & 0x7F) << v15;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_96:
        v54 = 136;
LABEL_113:
        *(a1 + v54) = v21;
        goto LABEL_121;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_121;
    }
  }
}

uint64_t HDCodableWorkoutEventReadFrom(uint64_t a1, void *a2)
{
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
        LOBYTE(v39[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39[0] & 0x7F) << v5;
        if ((v39[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v39[0] & 0x7F) << v18;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_55:
        v32 = 24;
LABEL_60:
        *(a1 + v32) = v24;
        goto LABEL_66;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {
          *(a1 + 48) |= 2u;
          v39[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v39 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v39[0];
          v35 = 16;
LABEL_65:
          *(a1 + v35) = v34;
          goto LABEL_66;
        }

LABEL_50:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_66;
      }

      v25 = objc_alloc_init(HDCodableMetadataDictionary);
      objc_storeStrong((a1 + 40), v25);
      v39[0] = 0;
      v39[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableMetadataDictionaryReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_66:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(a1 + 48) |= 8u;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v29 = [a2 position] + 1;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v28 |= (v39[0] & 0x7F) << v26;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v11 = v27++ >= 9;
        if (v11)
        {
          v24 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v28;
      }

LABEL_59:
      v32 = 32;
      goto LABEL_60;
    }

    if (v13 == 2)
    {
      *(a1 + 48) |= 1u;
      v39[0] = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v36 = [a2 data];
        [v36 getBytes:v39 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v34 = v39[0];
      v35 = 8;
      goto LABEL_65;
    }

    goto LABEL_50;
  }

  return [a2 hasError] ^ 1;
}

id HDSummarySharingEntryPredicateForTypeStatusAndDirection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B18];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v7 = [v5 predicateWithProperty:@"type" equalToValue:v6];

  v8 = MEMORY[0x277D10B18];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v10 = [v8 predicateWithProperty:@"status" equalToValue:v9];

  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v13 = [v11 predicateWithProperty:@"direction" equalToValue:v12];

  v17[0] = v7;
  v17[1] = v10;
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v15 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v14];

  return v15;
}

id HDSummarySharingEntryPredicateForTypeAndStatus(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = [v3 predicateWithProperty:@"type" equalToValue:v4];

  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v8 = [v6 predicateWithProperty:@"status" equalToValue:v7];

  v12[0] = v5;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v9];

  return v10;
}

id HDSummarySharingEntryPredicateForIdentifierTypeAndDirection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D10B18] predicateWithProperty:@"primary_contact_identifier" equalToValue:a1];
  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v8 = [v6 predicateWithProperty:@"type" equalToValue:v7];

  v9 = MEMORY[0x277D10B18];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11 = [v9 predicateWithProperty:@"direction" equalToValue:v10];

  v15[0] = v5;
  v15[1] = v8;
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v13 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v12];

  return v13;
}

id HDSummarySharingEntryPredicateForCloudKitIdentifierTypeStatusAndDirection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"cloudkit_identifier" equalToValue:a1];
  v8 = MEMORY[0x277D10B18];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v10 = [v8 predicateWithProperty:@"type" equalToValue:v9];

  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v13 = [v11 predicateWithProperty:@"status" equalToValue:v12];

  v14 = MEMORY[0x277D10B18];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v16 = [v14 predicateWithProperty:@"direction" equalToValue:v15];

  v20[0] = v7;
  v20[1] = v10;
  v20[2] = v13;
  v20[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v18 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v17];

  return v18;
}

id HDUserDomainConceptEducationContentEntityPredicateForEducationContent(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [(HDSQLiteSchemaEntity *)HDUserDomainConceptEducationContentEntity disambiguatedSQLForProperty:@"deleted"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v5 = [v2 predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

void sub_228C13860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C13BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_228C1437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C153B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_228C15D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 224), 8);
  _Block_object_dispose((v36 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_228C168B8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_228C1715C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C17B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C1ABE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_228C1AF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C1B288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C1C34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C1D7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C1DC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C2040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C20E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C212EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C22AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C22D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C231D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C23E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C2A1B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v40 = objc_begin_catch(a1);
    _HKInitializeLogging();
    v41 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      *(v37 - 256) = 138412290;
      *(v37 - 252) = v40;
      _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "Exception creating demo workout: %@", (v37 - 256), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x228C29EFCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDNotificationInstructionPredicateForIsValid(int a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:a1 ^ 1u];
  v3 = [v1 predicateWithProperty:@"is_invalid" equalToValue:v2];

  return v3;
}

void sub_228C32F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C35680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose((v28 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C35B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C36AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C37DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C38208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C39E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_228C3A250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDOnboardingCompletionEntityAllProperties()
{
  v5[7] = *MEMORY[0x277D85DE8];
  v5[0] = @"uuid";
  v5[1] = @"feature_identifier";
  v5[2] = @"version";
  v5[3] = @"completion_date";
  v5[4] = @"country_code";
  v5[5] = @"country_code_provenance";
  v5[6] = @"mod_date";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:7];
  v4[0] = @"deleted";
  v4[1] = @"sync_provenance";
  v4[2] = @"sync_identity";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  return v2;
}

id _OnboardingCompletionFromRow(uint64_t a1, uint64_t a2)
{
  if (HDSQLiteColumnWithNameAsBoolean())
  {
    v3 = 0;
  }

  else
  {
    v4 = HDSQLiteColumnWithNameAsUUID();
    v5 = HDSQLiteColumnWithNameAsString();
    v6 = HDSQLiteColumnWithNameAsInt64();
    v7 = HDSQLiteColumnWithNameAsDate();
    v8 = HDSQLiteColumnWithNameAsString();
    v9 = HDSQLiteColumnWithNameAsInt64();
    if (v4 && v5 && v7)
    {
      v3 = [objc_alloc(MEMORY[0x277CCD740]) initWithFeatureIdentifier:v5 version:v6 completionDate:v7 countryCode:v8 countryCodeProvenance:v9 UUID:v4];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 format:{@"Unexpectedly found missing values: UUID(%@) featureIdentifier(%@) completionDate(%@)", v4, v5, v7}];
      v3 = 0;
    }
  }

  return v3;
}

void sub_228C3C5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C3CA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C3F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDWorkoutEntityOrderingTermsForCondenserDate()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"condenser_date" entityClass:objc_opt_class() ascending:1];
  v3[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];

  return v1;
}

void sub_228C3FCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C40A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C418B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDWorkoutEntityPredicateForDuration(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = [v2 predicateWithProperty:@"activities.duration" value:v3 comparisonType:a1];

  return v4;
}

id HDWorkoutEntityPredicateForTotalDistance(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = a2;
  v5 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:@"total_distance"];
  v6 = MEMORY[0x277CCABB0];
  v7 = _HKWorkoutCanonicalDistanceUnit();
  [v4 doubleValueForUnit:v7];
  v9 = v8;

  v10 = [v6 numberWithDouble:v9];
  v11 = [v3 predicateWithProperty:v5 value:v10 comparisonType:a1];

  return v11;
}

id HDWorkoutEntityPredicateForTotalEnergyBurned(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD830];
  v4 = *MEMORY[0x277CCC918];
  v5 = a2;
  v6 = [v3 quantityTypeForIdentifier:v4];
  v7 = [v6 canonicalUnit];

  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  [v5 doubleValueForUnit:v7];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [v8 predicateWithProperty:@"active_energy.quantity" value:v12 comparisonType:a1];

  return v13;
}

id HDWorkoutEntityPredicateForTotalSwimmingStrokeCount(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD830];
  v4 = *MEMORY[0x277CCCC78];
  v5 = a2;
  v6 = [v3 quantityTypeForIdentifier:v4];
  v7 = [v6 canonicalUnit];

  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  [v5 doubleValueForUnit:v7];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [v8 predicateWithProperty:@"swimming_strokes.quantity" value:v12 comparisonType:a1];

  return v13;
}

id HDWorkoutEntityPredicateForTotalFlightsClimbed(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD830];
  v4 = *MEMORY[0x277CCCB70];
  v5 = a2;
  v6 = [v3 quantityTypeForIdentifier:v4];
  v7 = [v6 canonicalUnit];

  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  [v5 doubleValueForUnit:v7];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [v8 predicateWithProperty:@"flights_climbed.quantity" value:v12 comparisonType:a1];

  return v13;
}

id HDWorkoutEntityPredicateForWorkoutGoalType(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D10B18];
  v5 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:@"goal_type"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v7 = [v4 predicateWithProperty:v5 value:v6 comparisonType:a1];

  return v7;
}

id HDWorkoutEntityPredicateForWorkoutGoal(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = _HKWorkoutCanonicalUnitForGoalType();
    [v5 doubleValueForUnit:v7];
    v8 = [v6 numberWithDouble:?];

    v9 = MEMORY[0x277D10B18];
    v10 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:@"goal"];
    v11 = [v9 predicateWithProperty:v10 value:v8 comparisonType:a1];

    v12 = HDWorkoutEntityPredicateForWorkoutGoalType(1, a2);
  }

  else
  {
    v13 = MEMORY[0x277D10B60];
    v14 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:@"goal"];
    if (a1 == 1)
    {
      [v13 isNullPredicateWithProperty:v14];
    }

    else
    {
      [v13 isNotNullPredicateWithProperty:v14];
    }
    v11 = ;

    v12 = 0;
    v8 = 0;
  }

  v15 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v11 otherPredicate:v12];

  return v15;
}

id HDWorkoutEntityPredicateForWorkoutCondenserVersionLessThan(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D10B20];
  v3 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"condenser_version"];
  v10[0] = v3;
  v4 = MEMORY[0x277D10B18];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v6 = [v4 predicateWithProperty:@"condenser_version" lessThanValue:v5];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 predicateMatchingAnyPredicates:v7];

  return v8;
}

id HDWorkoutEntityPredicateForWorkoutCondenserVersionEqualTo(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v3 = [v1 predicateWithProperty:@"condenser_version" equalToValue:v2];

  return v3;
}

uint64_t HDCodableWorkoutSessionSyncTransactionReadFrom(uint64_t a1, void *a2)
{
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
        LOBYTE(v19) = 0;
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
          objc_storeStrong((a1 + 24), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !HDCodableWorkoutSessionGlobalStateReadFrom(v14, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadData();
          v16 = 8;
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadData();
          v16 = 32;
LABEL_29:
          v14 = *(a1 + v16);
          *(a1 + v16) = v15;
          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(HDCodableWorkoutSessionConfiguration);
          objc_storeStrong((a1 + 16), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !HDCodableWorkoutSessionConfigurationReadFrom(v14, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228C441F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C4766C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HDCodableTypedObjectAssociationReadFrom(uint64_t a1, void *a2)
{
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
        LOBYTE(v44[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44[0] & 0x7F) << v5;
        if ((v44[0] & 0x80) == 0)
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

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = 32;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 40;
LABEL_64:
          v39 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_80;
        }

        goto LABEL_65;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            LOBYTE(v44[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v44[0] & 0x7F) << v18;
            if ((v44[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_72:
          v40 = 24;
LABEL_77:
          *(a1 + v40) = v24;
          goto LABEL_80;
        }

LABEL_65:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      }

      v38 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 56), v38);
      v44[0] = 0;
      v44[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v38, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_80:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v14 = PBReaderReadData();
        v15 = 48;
        goto LABEL_64;
      }

      if (v13 == 8)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 68) |= 1u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v44[0] & 0x7F) << v25;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_76:
        v40 = 8;
        goto LABEL_77;
      }
    }

    else
    {
      if (v13 == 5)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 68) |= 8u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v44[0] & 0x7F) << v31;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            LOBYTE(v37) = 0;
            goto LABEL_68;
          }
        }

        v37 = (v33 != 0) & ~[a2 hasError];
LABEL_68:
        *(a1 + 64) = v37;
        goto LABEL_80;
      }

      if (v13 == 6)
      {
        *(a1 + 68) |= 2u;
        v44[0] = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v44[0];
        goto LABEL_80;
      }
    }

    goto LABEL_65;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableBinarySampleReadFrom(uint64_t a1, void *a2)
{
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_228C51AE4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDPredicateForMetadataValue(void *a1, uint64_t a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3 && a2 == 2)
  {
    v4 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"numerical_value"];
    v5 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"date_value"];
    v6 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"string_value"];
    v7 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"data_value"];
    v8 = MEMORY[0x277D10B20];
    v15[0] = v4;
    v15[1] = v5;
    v15[2] = v6;
    v15[3] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    v10 = [v8 predicateMatchingAnyPredicates:v9];

    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D10B18];
    v12 = _HDSQLiteValueForString();
    v13 = @"string_value";
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D10B18];
    v12 = _HDSQLiteValueForNumber();
    v13 = @"numerical_value";
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D10B18];
    v12 = _HDSQLiteValueForDate();
    v13 = @"date_value";
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = MEMORY[0x277D10B18];
      v12 = _HDSQLiteValueForData();
      v13 = @"data_value";
LABEL_11:
      v10 = [v11 predicateWithProperty:v13 value:v12 comparisonType:a2];

      if (v10)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v10 = [MEMORY[0x277D10B70] falsePredicate];
    goto LABEL_13;
  }

  v10 = _HDMetadataQuantityComparisonPredicate(a2, v3);
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v10;
}

id _HDMetadataQuantityComparisonPredicate(uint64_t a1, void *a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v27 = 0;
        v4 = 0;
        v5 = 1;
        v6 = 1;
        v7 = @"=  0";
        goto LABEL_17;
      case 2:
        v5 = 0;
        v6 = 0;
        v4 = @"=  1";
        v27 = @"=  2";
        goto LABEL_14;
      case 3:
        v27 = 0;
        v4 = 0;
        v5 = 1;
        v6 = 1;
LABEL_14:
        v7 = @"= -1";
        goto LABEL_17;
    }

LABEL_12:
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"HDSQLitePredicate * _Nonnull _HDMetadataQuantityComparisonPredicate(HDSQLiteComparisonType, HKQuantity * _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"HDMetadataValueEntity.m" lineNumber:668 description:@"Unsupported comparison type for HKQuantity metadata values!"];

    v7 = 0;
    v27 = 0;
    v4 = 0;
    v5 = 1;
    v6 = 1;
    goto LABEL_17;
  }

  switch(a1)
  {
    case 4:
      v27 = 0;
      v6 = 0;
      v4 = @"=  0";
      v5 = 1;
      goto LABEL_14;
    case 5:
      v27 = 0;
      v4 = 0;
      v5 = 1;
      v6 = 1;
      break;
    case 6:
      v27 = 0;
      v6 = 0;
      v4 = @"=  0";
      v5 = 1;
      break;
    default:
      goto LABEL_12;
  }

  v7 = @"=  1";
LABEL_17:
  v10 = MEMORY[0x277CCABB0];
  v11 = [v3 _unit];
  [v3 doubleValueForUnit:v11];
  v12 = [v10 numberWithDouble:?];
  v13 = _HDSQLiteValueForNumber();

  v14 = [v3 _unit];
  v15 = [v14 unitString];
  v16 = _HDSQLiteValueForString();

  v17 = MEMORY[0x277D10B90];
  v18 = *MEMORY[0x277D10A58];
  if (v5)
  {
    if (v6)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, %@, ?, ?) %@", v18, @"numerical_value", @"string_value", v7];
      v29[0] = @"numerical_value";
      v29[1] = @"string_value";
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      v28[0] = v13;
      v28[1] = v16;
      v21 = MEMORY[0x277CBEA60];
      v22 = v28;
      v23 = 2;
    }

    else
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, %@, ?, ?) %@ OR %@(%@, %@, ?, ?) %@", v18, @"numerical_value", @"string_value", v7, v18, @"numerical_value", @"string_value", v4];
      v31[0] = @"numerical_value";
      v31[1] = @"string_value";
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
      v30[0] = v13;
      v30[1] = v16;
      v30[2] = v13;
      v30[3] = v16;
      v21 = MEMORY[0x277CBEA60];
      v22 = v30;
      v23 = 4;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, %@, ?, ?) %@ OR %@(%@, %@, ?, ?) %@ OR %@(%@, %@, ?, ?) %@", v18, @"numerical_value", @"string_value", v7, v18, @"numerical_value", @"string_value", v4, v18, @"numerical_value", @"string_value", v27];
    v33[0] = @"numerical_value";
    v33[1] = @"string_value";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v32[0] = v13;
    v32[1] = v16;
    v32[2] = v13;
    v32[3] = v16;
    v32[4] = v13;
    v32[5] = v16;
    v21 = MEMORY[0x277CBEA60];
    v22 = v32;
    v23 = 6;
  }

  v24 = [v21 arrayWithObjects:v22 count:v23];
  v25 = [v17 predicateWithSQL:v19 overProperties:v20 values:v24];

  return v25;
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C576E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C593C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C5997C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C5A024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C5AC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C5AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C5B750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C5BF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, id);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_228C5CA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDSeriesSamplePredicateForSamplesToAutoFreezeExcludingSamples(void *a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D10B18] predicateWithProperty:@"frozen" equalToValue:&unk_283CB20A0];
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:+[HDSeriesSampleEntity _insertionEra]()];
  v5 = [v3 predicateWithProperty:@"insertion_era" notEqualToValue:v4];

  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v13[0] = v2;
  v13[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [v6 initWithArray:v7];

  if ([v1 count])
  {
    v9 = [v1 hk_map:&__block_literal_global_496];
    v10 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"uuid" values:v9];
    [v8 addObject:v10];
  }

  v11 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v8];

  return v11;
}

void sub_228C5CC70(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

id __HDSeriesSamplePredicateForSamplesToAutoFreezeExcludingSamples_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _HDSQLiteValueForUUID();

  return v2;
}

id HDSeriesSamplePredicateForSeriesIdentifier(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"hfd_key" equalToValue:v2];

  return v3;
}

void __cxx_global_array_dtor_0()
{
  v0 = &off_27D867240;
  v1 = -144;
  do
  {

    v0 -= 3;
    v1 += 24;
  }

  while (v1);
}

void _assertMetadataIsSame(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 firstObject];
  v3 = [v2 metadata];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * v8);
        v11 = [v10 metadata];
        v12 = v11;
        if (v11 == v9)
        {
          goto LABEL_12;
        }

        if (!v9)
        {

LABEL_11:
          v12 = [MEMORY[0x277CCA890] currentHandler];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _assertMetadataIsSame(NSArray<HDQuantityDatum *> * _Nonnull __strong)"];
          [v12 handleFailureInFunction:v15 file:@"HDQuantityDatum.m" lineNumber:262 description:@"Cannot merge an array of datums with different metadata"];

LABEL_12:
          goto LABEL_13;
        }

        v13 = [v10 metadata];
        v14 = [v13 isEqual:v9];

        if ((v14 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_13:
        v3 = [v10 metadata];

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

id _HDCombineQuantitySensorData(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 count])
  {
    _assertMetadataIsSame(v5);
    v8 = [v5 firstObject];
    v9 = [v8 dateInterval];
    v10 = [v9 startDate];

    if (v10)
    {
      v11 = [v5 lastObject];
      v12 = [v11 dateInterval];
      v13 = [v12 endDate];

      if (v13)
      {
        v14 = _HDCombinedQuantityForData(v5, v6);
        v15 = [v5 firstObject];
        v16 = [v15 metadata];

        if (v16)
        {
          if (v7)
          {
            v17 = [v16 hk_dictionaryByAddingEntriesFromDictionary:v7];

            v16 = v17;
          }
        }

        else
        {
          v16 = v7;
        }

        v18 = [MEMORY[0x277CCD800] _quantitySamplesEnforcingDurationWithType:v6 quantity:v14 startDate:v10 endDate:v13 device:0 metadata:v16];
      }

      else
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
        {
          v24 = v20;
          v25 = [v5 lastObject];
          v26 = 138412290;
          v27 = v25;
          _os_log_fault_impl(&dword_228986000, v24, OS_LOG_TYPE_FAULT, "Sensor datum missing end date: %@", &v26, 0xCu);
        }

        v18 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
      {
        v22 = v19;
        v23 = [v5 firstObject];
        v26 = 138412290;
        v27 = v23;
        _os_log_fault_impl(&dword_228986000, v22, OS_LOG_TYPE_FAULT, "Sensor datum missing start date: %@", &v26, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id _HDCombinedQuantityForData(void *a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 canonicalUnit];
  v6 = [v4 aggregationStyle];
  if ((v6 - 2) < 2)
  {
    v48 = v4;
    v51 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v4 intervalCollection:0 options:2 mergeStrategy:1];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v47 = v3;
    obj = v3;
    v15 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v15)
    {
      v16 = v15;
      v50 = *v54;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v54 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v53 + 1) + 8 * i);
          v19 = [v18 quantity];
          v20 = v5;
          [v19 doubleValueForUnit:v5];
          v22 = v21;
          v23 = [v18 dateInterval];
          v24 = [v23 startDate];
          [v24 timeIntervalSinceReferenceDate];
          v26 = v25;
          v27 = [v18 dateInterval];
          v28 = [v27 endDate];
          [v28 timeIntervalSinceReferenceDate];
          v52 = 0;
          v30 = [v51 addSampleValue:0 startTime:&v52 endTime:v22 sourceID:v26 error:v29];
          v31 = v52;

          if ((v30 & 1) == 0)
          {
            _HKInitializeLogging();
            v32 = *MEMORY[0x277CCC298];
            if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v66 = v48;
              v67 = 2114;
              v68 = v31;
              _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "Failed to add datum to calculator during merge calculation for type %{public}@: %{public}@", buf, 0x16u);
            }
          }

          v5 = v20;
        }

        v16 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
      }

      while (v16);
    }

    v33 = [v51 currentStatistics];
    a2 = [v33 averageQuantity];

    v3 = v47;
    v4 = v48;
  }

  else
  {
    if (v6 == 1)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v34 = v3;
      v35 = [v34 countByEnumeratingWithState:&v57 objects:v70 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v58;
        v38 = 0.0;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v58 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v40 = [*(*(&v57 + 1) + 8 * j) quantity];
            [v40 doubleValueForUnit:v5];
            v38 = v38 + v41;
          }

          v36 = [v34 countByEnumeratingWithState:&v57 objects:v70 count:16];
        }

        while (v36);
      }

      else
      {
        v38 = 0.0;
      }

      v45 = MEMORY[0x277CCD7E8];
      v44 = v38 / [v34 count];
      v42 = v45;
      v43 = v5;
    }

    else
    {
      if (v6)
      {
        goto LABEL_36;
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v61 objects:v71 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v62;
        v11 = 0.0;
        do
        {
          for (k = 0; k != v9; ++k)
          {
            if (*v62 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = [*(*(&v61 + 1) + 8 * k) quantity];
            [v13 doubleValueForUnit:v5];
            v11 = v11 + v14;
          }

          v9 = [v7 countByEnumeratingWithState:&v61 objects:v71 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = 0.0;
      }

      v42 = MEMORY[0x277CCD7E8];
      v43 = v5;
      v44 = v11;
    }

    a2 = [v42 quantityWithUnit:v43 doubleValue:v44];
  }

LABEL_36:

  return a2;
}

HDQuantityDatum *HDMergedQuantitySensorData(void *a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    _assertMetadataIsSame(v3);
    v5 = [v3 firstObject];
    v6 = [v5 dateInterval];
    v7 = [v6 startDate];

    if (v7)
    {
      v8 = [v3 lastObject];
      v9 = [v8 dateInterval];
      v10 = [v9 endDate];

      if (v10)
      {
        v40 = v10;
        v41 = v7;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v11 = v3;
        v12 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v45;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v45 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v44 + 1) + 8 * i);
              v18 = [v17 saveCompletion];

              if (v18)
              {
                if (!v14)
                {
                  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                v19 = [v17 saveCompletion];
                v20 = _Block_copy(v19);
                [v14 addObject:v20];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        v39 = v4;
        v24 = _HDCombinedQuantityForData(v11, v4);
        v38 = [HDQuantityDatum alloc];
        v37 = [v11 lastObject];
        v25 = [v37 datumIdentifier];
        v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v40];
        v27 = [v11 lastObject];
        v28 = [v27 metadata];
        v29 = [v11 lastObject];
        v30 = [v29 resumeContextProvider];
        v21 = [(HDQuantityDatum *)v38 initWithIdentifier:v25 dateInterval:v26 quantity:v24 metadata:v28 resumeContextProvider:v30];

        if (v14)
        {
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __HDMergedQuantitySensorData_block_invoke;
          aBlock[3] = &unk_2786130B0;
          v43 = v14;
          v31 = _Block_copy(aBlock);
          [(HDQuantityDatum *)v21 setSaveCompletion:v31];
        }

        v4 = v39;
        v10 = v40;
        v7 = v41;
      }

      else
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
        {
          v35 = v23;
          v36 = [v3 lastObject];
          *buf = 138412290;
          v50 = v36;
          _os_log_fault_impl(&dword_228986000, v35, OS_LOG_TYPE_FAULT, "Sensor datum missing end date: %@", buf, 0xCu);
        }

        v21 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
      {
        v33 = v22;
        v34 = [v3 firstObject];
        *buf = 138412290;
        v50 = v34;
        _os_log_fault_impl(&dword_228986000, v33, OS_LOG_TYPE_FAULT, "Sensor datum missing start date: %@", buf, 0xCu);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __HDMergedQuantitySensorData_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

id HDAggregateQuantitySensorData(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = MEMORY[0x277CBEAA8];
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = [v9 distantPast];
  v15 = HDAggregateQuantitySensorDataThroughDate(v13, v12, v11, v14, 0, v10, a5);

  return v15;
}

HDQuantityAggregationResult *HDAggregateQuantitySensorDataThroughDate(void *a1, void *a2, void *a3, void *a4, int a5, void *a6, double a7)
{
  v99 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v89 = a2;
  v13 = a3;
  v14 = a4;
  v85 = a6;
  v15 = [v12 count];
  if (!v15)
  {
    v22 = 0;
    goto LABEL_66;
  }

  v16 = v15;
  v80 = v13;
  v17 = [v12 firstObject];
  v91 = [v17 metadata];

  v18 = [v12 firstObject];
  v19 = [v18 dateInterval];
  v20 = [v19 startDate];

  v84 = v20;
  v92 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v20 sinceDate:a7];
  v81 = v16;
  v21 = v16 - 1;
  v83 = v14;
  if (v16 == 1)
  {
    v90 = 0;
    v87 = 0;
    v88 = 0;
  }

  else
  {
    v87 = 0;
    v88 = 0;
    v90 = 0;
    v23 = 2;
    do
    {
      v24 = [v12 objectAtIndexedSubscript:v23 - 1];
      v25 = [v24 dateInterval];
      v26 = [v25 endDate];

      v27 = [v24 metadata];
      if (v91 == v27)
      {
        v30 = 0;
      }

      else
      {
        v28 = [v24 metadata];
        if (v28)
        {
          v29 = [v24 metadata];
          v30 = [v91 isEqual:v29] ^ 1;
        }

        else
        {
          v30 = 1;
        }
      }

      if (![v26 hk_isBeforeDate:v92] || v30)
      {
        v31 = [v24 dateInterval];
        v32 = [v31 startDate];
        [v92 timeIntervalSinceDate:v32];
        v34 = v33;

        v35 = [v24 dateInterval];
        [v35 duration];
        v37 = v36;

        v38 = v34 + v34;
        v39 = [v12 subarrayWithRange:?];
        v40 = _HDCombineQuantitySensorData(v39, v89, v85);
        if (v40)
        {
          _HKInitializeLogging();
          v41 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
          {
            v42 = v41;
            v43 = [v39 count];
            *buf = 138543874;
            v94 = v89;
            v95 = 2048;
            v96 = v43;
            v97 = 2112;
            v98 = v40;
            _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_INFO, "%{public}@: Aggregating %ld sensor datums produced %@", buf, 0x20u);
          }

          v44 = v88;
          if (!v88)
          {
            v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v88 = v44;
          [v44 addObjectsFromArray:v40];
          v45 = v87;
          if (!v87)
          {
            v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v87 = v45;
          [v45 addObjectsFromArray:v39];
          if (v38 >= v37)
          {
            v46 = 1;
          }

          else
          {
            v46 = 2;
          }

          v47 = v23 - ((((v30 + 1) & v46) + 1) & 1);
          v90 = v47;
          if (v47 < [v12 count])
          {
            v48 = [v12 objectAtIndexedSubscript:v47];
            v82 = [v48 metadata];

            [v48 dateInterval];
            v50 = v49 = v12;
            v51 = [v50 startDate];

            v52 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v51 sinceDate:a7];

            v92 = v52;
            v12 = v49;
            v84 = v51;
            v91 = v82;
          }

          v14 = v83;
        }
      }

      ++v23;
      --v21;
    }

    while (v21);
  }

  v53 = v81;
  if (v81 <= v90)
  {
    v13 = v80;
  }

  else
  {
    v13 = v80;
    [v80 timeIntervalSinceDate:v84];
    if (v54 >= a7)
    {
      v55 = [v12 subarrayWithRange:{v90, v81 - v90}];
      v56 = _HDCombineQuantitySensorData(v55, v89, v85);
      if (v56)
      {
        _HKInitializeLogging();
        v57 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
        {
          v58 = v57;
          v59 = [v55 count];
          *buf = 138543874;
          v94 = v89;
          v95 = 2048;
          v96 = v59;
          v97 = 2112;
          v98 = v56;
          _os_log_impl(&dword_228986000, v58, OS_LOG_TYPE_INFO, "%{public}@: Aggregating %ld sensor datums produced %@", buf, 0x20u);
        }

        v60 = v88;
        v53 = v81;
        if (!v88)
        {
          v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v88 = v60;
        [v60 addObjectsFromArray:v56];
        v61 = v87;
        if (!v87)
        {
          v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v87 = v61;
        [v61 addObjectsFromArray:v55];
        v90 = v81;
      }
    }
  }

  while (1)
  {
    v62 = v53 - 1;
    v63 = [v12 objectAtIndexedSubscript:v53 - 1];
    v64 = [v63 dateInterval];
    v65 = [v64 startDate];

    v66 = [v63 dateInterval];
    v67 = [v66 endDate];

    if (([v65 hk_isAfterDate:v14] & 1) == 0 && (!objc_msgSend(v67, "hk_isAfterOrEqualToDate:", v14) || a5))
    {
      break;
    }

    --v53;
    if (!v62)
    {
      goto LABEL_57;
    }
  }

  if (v62 >= v90)
  {
    v68 = [v12 subarrayWithRange:{v90, v53 - v90}];
    v69 = _HDCombineQuantitySensorData(v68, v89, v85);
    if (v69)
    {
      _HKInitializeLogging();
      v70 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
      {
        v71 = v70;
        v72 = [v68 count];
        *buf = 138543874;
        v94 = v89;
        v95 = 2048;
        v96 = v72;
        v97 = 2112;
        v98 = v69;
        _os_log_impl(&dword_228986000, v71, OS_LOG_TYPE_INFO, "%{public}@: Aggregating %ld sensor datums produced %@", buf, 0x20u);
      }

      v73 = v88;
      if (!v88)
      {
        v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v88 = v73;
      [v73 addObjectsFromArray:v69];
      v14 = v83;
      v74 = v87;
      if (!v87)
      {
        v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v87 = v74;
      [v74 addObjectsFromArray:v68];
      v90 = v53;
    }
  }

LABEL_57:
  if (v88)
  {
    if (v81 <= v90)
    {
      v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v75 = [v12 hk_mutableSubarrayWithRange:{v90, v81 - v90}];
    }

    v76 = v75;
    v22 = [[HDQuantityAggregationResult alloc] initWithAggregatedSamples:v88 consumedData:v87 remainingData:v75];
  }

  else
  {
    if ([v12 count] < 2)
    {
      v22 = 0;
      goto LABEL_65;
    }

    v76 = HDMergedQuantitySensorData(v12, v89);
    v77 = [HDQuantityAggregationResult alloc];
    v78 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v76, 0}];
    v22 = [(HDQuantityAggregationResult *)v77 initWithAggregatedSamples:0 consumedData:0 remainingData:v78];
  }

LABEL_65:
LABEL_66:

  return v22;
}

uint64_t HDCodableRoutePointDatumReadFrom(uint64_t a1, void *a2)
{
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
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            *(a1 + 52) |= 0x10u;
            v40 = 0;
            v23 = [a2 position] + 8;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 40;
            break;
          case 2:
            *(a1 + 52) |= 2u;
            v40 = 0;
            v28 = [a2 position] + 8;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 16;
            break;
          case 3:
            *(a1 + 52) |= 4u;
            v40 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 24;
            break;
          default:
            goto LABEL_42;
        }

        goto LABEL_64;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        *(a1 + 52) |= 8u;
        v40 = 0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v33 = v40;
        v34 = 32;
LABEL_64:
        *(a1 + v34) = v33;
        goto LABEL_65;
      }

      if (v13 != 6)
      {
LABEL_42:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_65;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 52) |= 0x20u;
      while (1)
      {
        LOBYTE(v40) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v40 & 0x7F) << v16;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_53:
      *(a1 + 48) = v22;
LABEL_65:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 52) |= 1u;
    v40 = 0;
    v25 = [a2 position] + 8;
    if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
    {
      v35 = [a2 data];
      [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v33 = v40;
    v34 = 8;
    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

void sub_228C63960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C63AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C63DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C643F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C64A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C64E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C661D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C66820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *health::DataStoreInspector::DataStoreInspector(void *this, DataStore *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void health::DataStoreInspector::enumerateStoreForPrinting(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (a3 == 1)
  {
    v5 = *a1;
    v12[0] = &unk_283BE8F20;
    v12[1] = a1;
    v12[2] = a2;
    v12[3] = v12;
    health::DataStore::checkIntegrityForInspecting(v5, v12);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v11 = 0;
  operator new();
}

void sub_228C69C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void health::DataStoreInspector::_crossReferenceWithSQLiteEntries(uint64_t a1, __int128 **a2, __int128 **a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v49[0] = 0;
  v49[1] = 0;
  v47[1] = 0;
  v48 = v49;
  v46 = v47;
  v47[0] = 0;
  v45[0] = 0;
  v45[1] = 0;
  v43[1] = 0;
  v44 = v45;
  v42 = v43;
  v43[0] = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v40 = *v7;
      v9 = v40 == 3 || v40 == 0;
      v38 = &v40 + 1;
      if (v9)
      {
        v10 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v48, *(&v40 + 1), &v38);
        v11 = &v46;
      }

      else
      {
        v10 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v44, *(&v40 + 1), &v38);
        v11 = &v42;
      }

      v12 = *v7;
      v13 = *(v7 + 16);
      v14 = *(v7 + 32);
      v10[11] = *(v7 + 48);
      *(v10 + 9) = v14;
      *(v10 + 7) = v13;
      *(v10 + 5) = v12;
      std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v11, *(&v40 + 1), &v40 + 1);
      v7 += 56;
    }

    while (v7 != v8);
    v7 = *a2;
  }

  a2[1] = v7;
  *(&v40 + 1) = 0;
  v41 = 0;
  v39[1] = 0;
  *&v40 = &v40 + 8;
  v38 = v39;
  v39[0] = 0;
  v37[0] = 0;
  v37[1] = 0;
  v35[1] = 0;
  v36 = v37;
  v34 = v35;
  v35[0] = 0;
  v15 = *a3;
  v16 = a3[1];
  if (*a3 != v16)
  {
    do
    {
      v33 = *v15;
      v17 = v33 == 3 || v33 == 0;
      v50 = &v33 + 1;
      if (v17)
      {
        v18 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v40, *(&v33 + 1), &v50);
        v19 = &v38;
      }

      else
      {
        v18 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v36, *(&v33 + 1), &v50);
        v19 = &v34;
      }

      v20 = *v15;
      v21 = *(v15 + 16);
      v22 = *(v15 + 32);
      v18[11] = *(v15 + 48);
      *(v18 + 9) = v22;
      *(v18 + 7) = v21;
      *(v18 + 5) = v20;
      std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v19, *(&v33 + 1), &v33 + 1);
      v15 += 56;
    }

    while (v15 != v16);
    v15 = *a3;
  }

  a3[1] = v15;
  std::map<unsigned long long,health::DataStoreInspector::DataSeriesEntry>::map[abi:ne200100](v32, &v48);
  std::set<unsigned long long>::set[abi:ne200100](v31, &v46);
  std::map<unsigned long long,health::DataStoreInspector::DataSeriesEntry>::map[abi:ne200100](v30, &v40);
  std::set<unsigned long long>::set[abi:ne200100](v29, &v38);
  v23 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v52, a4);
  health::DataStoreInspector::_crossReferenceWithSQLiteKeys(v23, v32, v31, v30, v29, v52);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v52);
  std::__tree<long>::destroy(v29[1]);
  std::__tree<long>::destroy(v30[1]);
  std::__tree<long>::destroy(v31[1]);
  std::__tree<long>::destroy(v32[1]);
  std::map<unsigned long long,health::DataStoreInspector::DataSeriesEntry>::map[abi:ne200100](v28, &v44);
  std::set<unsigned long long>::set[abi:ne200100](v27, &v42);
  std::map<unsigned long long,health::DataStoreInspector::DataSeriesEntry>::map[abi:ne200100](v26, &v36);
  std::set<unsigned long long>::set[abi:ne200100](v25, &v34);
  v24 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v51, a4);
  health::DataStoreInspector::_crossReferenceWithSQLiteKeys(v24, v28, v27, v26, v25, v51);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v51);
  std::__tree<long>::destroy(v25[1]);
  std::__tree<long>::destroy(v26[1]);
  std::__tree<long>::destroy(v27[1]);
  std::__tree<long>::destroy(v28[1]);
  std::__tree<long>::destroy(v35[0]);
  std::__tree<long>::destroy(v37[0]);
  std::__tree<long>::destroy(v39[0]);
  std::__tree<long>::destroy(*(&v40 + 1));
  std::__tree<long>::destroy(v43[0]);
  std::__tree<long>::destroy(v45[0]);
  std::__tree<long>::destroy(v47[0]);
  std::__tree<long>::destroy(v49[0]);
}

void sub_228C69FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v46 - 136);
  std::__tree<long>::destroy(a10);
  std::__tree<long>::destroy(a13);
  std::__tree<long>::destroy(a16);
  std::__tree<long>::destroy(a19);
  std::__tree<long>::destroy(a37);
  std::__tree<long>::destroy(a40);
  std::__tree<long>::destroy(a43);
  std::__tree<long>::destroy(a46);
  std::__tree<long>::destroy(*(v46 - 232));
  std::__tree<long>::destroy(*(v46 - 208));
  std::__tree<long>::destroy(*(v46 - 184));
  std::__tree<long>::destroy(*(v46 - 160));
  _Unwind_Resume(a1);
}

void health::DataStoreInspector::enumerateSampleHistoryForPrinting(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v16 = *MEMORY[0x277D85DE8];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v12, a4);
      health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(v11, a1, 2, a3, v12, v7, v6);
    }

    if (a2 == 3)
    {
      std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v14, a4);
      health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(v11, a1, 3, a3, v14, v7, v6);
    }
  }

  else
  {
    if (!a2)
    {
      std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v15, a4);
      health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(v11, a1, 0, a3, v15, v7, v6);
    }

    if (a2 == 1)
    {
      std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v13, a4);
      health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(v11, a1, 1, a3, v13, v7, v6);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Unexpected object type");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_228C6A28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(exception_object);
    v28 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](&a16, v26);
    health::DataStoreInspector::_unknownBehaviorHandler(v28, v25, v24, v27, &a16);
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a16);
    __cxa_end_catch();
    JUMPOUT(0x228C6A218);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v15 = a3;
  *(&v15 + 1) = a4;
  v14 = a6;
  v13 = a7;
  *a1 = v15;
  *(a1 + 16) = xmmword_229166A20;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = 0xBFF0000000000000;
  v12 = 0;
  operator new();
}

void sub_228C6A54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v15 = a3;
  *(&v15 + 1) = a4;
  v14 = a6;
  v13 = a7;
  *a1 = v15;
  *(a1 + 16) = xmmword_229166A20;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = 0xBFF0000000000000;
  v12 = 0;
  operator new();
}

void sub_228C6A754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v15 = a3;
  *(&v15 + 1) = a4;
  v14 = a6;
  v13 = a7;
  *a1 = v15;
  *(a1 + 16) = xmmword_229166A20;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = 0xBFF0000000000000;
  v12 = 0;
  operator new();
}

void sub_228C6A95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v15 = a3;
  *(&v15 + 1) = a4;
  v14 = a6;
  v13 = a7;
  *a1 = v15;
  *(a1 + 16) = xmmword_229166A20;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = 0xBFF0000000000000;
  v12 = 0;
  operator new();
}

void sub_228C6AB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_unknownBehaviorHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v9[1] = a3;
  v7 = (*(*a4 + 16))(a4);
  memset(&__p, 0, sizeof(__p));
  v10[0] = &v7;
  v10[1] = v9;
  health::FormatImplementation<health::DataStore::ObjectIdentifier &,char const*>("HFD sample history [ID: {0}] has unknown behavior - {1}", &__p, 0, v10);
  v6 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v11, a5);
  health::DataStoreInspector::_errorHandler(v6, 2, 0, 0, &__p, v11);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_228C6AC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v16 - 56);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void health::DataStoreInspector::_crossReferenceWithSQLiteKeys(uint64_t a1, uint64_t **a2, std::string::size_type *a3, uint64_t **a4, void **a5, uint64_t a6)
{
  v70 = *MEMORY[0x277D85DE8];
  v64[0] = 0;
  v64[1] = 0;
  v63 = v64;
  v12 = a5 + 1;
  v11 = *a5;
  v14 = a3 + 1;
  v13 = *a3;
  *&v51 = *a5;
  v61 = v13;
  *&v55 = &v63;
  *(&v55 + 1) = v64;
  LOBYTE(v59) = 0;
  if (v13 != a3 + 1)
  {
    do
    {
      v15 = v51;
      *&v51 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,unsigned long long,std::__identity const,std::__less<void,void>>(v51, v12, v13[4]);
      std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::insert_iterator<std::set<unsigned long long>>>((v51 == v15), &v51, &v61, &v55, &v59);
      if (v51 == v12)
      {
        break;
      }

      v16 = v61;
      v61 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,unsigned long long,std::__identity const,std::__less<void,void>>(v61, v14, *(v51 + 32));
      std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::insert_iterator<std::set<unsigned long long>>>((v61 == v16), &v51, &v61, &v55, &v59);
      v13 = v61;
    }

    while (v61 != v14);
    v13 = *a3;
    v11 = *a5;
  }

  v62[0] = 0;
  v62[1] = 0;
  v61 = v62;
  v59 = v13;
  __p.__r_.__value_.__r.__words[0] = v14;
  v48[0] = v11;
  v47.__r_.__value_.__r.__words[0] = v12;
  *&v51 = &v61;
  *(&v51 + 1) = v62;
  std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::insert_iterator<std::set<unsigned long long>> &>(&v55, &v59, &__p, v48, &v47, &v51);
  v60[0] = 0;
  v60[1] = 0;
  v59 = v60;
  v17 = *a3;
  __p.__r_.__value_.__r.__words[0] = *a5;
  v48[0] = v12;
  v47.__r_.__value_.__r.__words[0] = v17;
  v46.__r_.__value_.__r.__words[0] = v14;
  *&v51 = &v59;
  *(&v51 + 1) = v60;
  std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::insert_iterator<std::set<unsigned long long>> &>(&v55, &__p, v48, &v47, &v46, &v51);
  v18 = v63;
  if (v63 != v64)
  {
    do
    {
      v19 = v18[4];
      *&v51 = v18 + 4;
      v20 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a2, v19, &v51);
      v21 = *(v20 + 7);
      v55 = *(v20 + 5);
      v56 = v21;
      v57 = *(v20 + 9);
      v58 = v20[11];
      __p.__r_.__value_.__r.__words[0] = (v18 + 4);
      v22 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a4, v18[4], &__p);
      v23 = *(v22 + 7);
      v51 = *(v22 + 5);
      v52 = v23;
      v53 = *(v22 + 9);
      v54 = v22[11];
      if (v23)
      {
        if (*(&v52 + 1) != *(&v56 + 1))
        {
          health::FormatString<health::DataStore::ObjectIdentifier &,long long &,long long &>(&__p, "HFD sample history [ID: {0}] has an actual sample count ({1}) that does not match its SQLite row ({2})", &v55, &v56 + 1, &v52 + 1);
          v24 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v69, a6);
          health::DataStoreInspector::_errorHandler(v24, 4, 0, 0, &__p, v69);
          std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v69);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (vabdd_f64(*(&v53 + 1), *(&v57 + 1)) > 1800.0)
      {
        health::timestampToDate(&__p, *(&v57 + 1));
        health::timestampToDate(v48, *(&v53 + 1));
        health::FormatString<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(&v47, "HFD sample history [ID: {0}] has an actual start date ({1}) that does not match its SQLite row ({2})", &v55, &__p, v48);
        v25 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v68, a6);
        health::DataStoreInspector::_errorHandler(v25, 4, 0, 0, &v47, v68);
        std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v68);
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        if (v49 < 0)
        {
          operator delete(v48[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (vabdd_f64(*&v54, *&v58) > 1800.0)
      {
        health::timestampToDate(&__p, *&v58);
        health::timestampToDate(v48, *&v54);
        health::FormatString<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(&v47, "HFD sample history [ID: {0}] has an actual end date ({1}) that does not match its SQLite row ({2})", &v55, &__p, v48);
        v26 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v67, a6);
        health::DataStoreInspector::_errorHandler(v26, 4, 0, 0, &v47, v67);
        std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v67);
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        if (v49 < 0)
        {
          operator delete(v48[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v27 = v18[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v18[2];
          v29 = *v28 == v18;
          v18 = v28;
        }

        while (!v29);
      }

      v18 = v28;
    }

    while (v28 != v64);
  }

  v30 = v61;
  if (v61 != v62)
  {
    do
    {
      v31 = v30[4];
      *&v51 = v30 + 4;
      v32 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a2, v31, &v51);
      v33 = *(v32 + 9);
      v34 = *(v32 + 7);
      v55 = *(v32 + 5);
      v56 = v34;
      v57 = v33;
      v58 = v32[11];
      health::timestampToDate(&__p, *(&v33 + 1));
      health::timestampToDate(v48, *&v58);
      *&v51 = v48;
      *(&v51 + 1) = &__p;
      *&v52 = &v56 + 8;
      *(&v52 + 1) = &v55;
      memset(&v47, 0, sizeof(v47));
      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>("[ID: {0} | Count: {1} | {2} to {3}]", &v47, 0, &v51);
      v35 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v66, a6);
      health::DataStoreInspector::_errorHandler(v35, 5, 0, 0, &v47, v66);
      std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v66);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v36 = v30[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v30[2];
          v29 = *v37 == v30;
          v30 = v37;
        }

        while (!v29);
      }

      v30 = v37;
    }

    while (v37 != v62);
  }

  v38 = v59;
  if (v59 != v60)
  {
    do
    {
      v39 = v38[4];
      *&v51 = v38 + 4;
      v40 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a4, v39, &v51);
      v41 = *(v40 + 9);
      v42 = *(v40 + 7);
      v55 = *(v40 + 5);
      v56 = v42;
      v57 = v41;
      v58 = v40[11];
      health::timestampToDate(&__p, *(&v41 + 1));
      health::timestampToDate(v48, *&v58);
      health::timestampToDate(&v47, *&v57);
      *&v51 = &v56;
      *(&v51 + 1) = &v47;
      *&v52 = v48;
      *(&v52 + 1) = &__p;
      *&v53 = &v56 + 8;
      *(&v53 + 1) = &v55;
      memset(&v46, 0, sizeof(v46));
      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>("[ID: {0} | Count: {1} | {2} to {3} | Insertion Era: {4} | Frozen: {5}]", &v46, 0, &v51);
      v43 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v65, a6);
      health::DataStoreInspector::_errorHandler(v43, 6, 0, 0, &v46, v65);
      std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v65);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v44 = v38[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v38[2];
          v29 = *v45 == v38;
          v38 = v45;
        }

        while (!v29);
      }

      v38 = v45;
    }

    while (v45 != v60);
  }

  std::__tree<long>::destroy(v60[0]);
  std::__tree<long>::destroy(v62[0]);
  std::__tree<long>::destroy(v64[0]);
}

void sub_228C6B3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, char a59)
{
  std::__tree<long>::destroy(a51);
  std::__tree<long>::destroy(a54);
  std::__tree<long>::destroy(a57);
  _Unwind_Resume(a1);
}

void health::FormatString<health::DataStore::ObjectIdentifier &,long long &,long long &>(std::string *a1, std::string *a2, void *a3, void *a4, void *a5)
{
  v5[0] = a5;
  v5[1] = a4;
  v5[2] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,long long &>(a2, a1, 0, v5);
}

void sub_228C6B518(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_errorHandler(uint64_t a1, int a2, uint64_t a3, uint64_t a4, std::string::size_type a5, uint64_t a6)
{
  v22[0] = a3;
  v22[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(&v21, "Unknown Error");
  if (a2 <= 2)
  {
    if (!a2)
    {
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        v21.__r_.__value_.__l.__size_ = 15;
        v14 = v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v21.__r_.__value_.__s + 23) = 15;
        v14 = &v21;
      }

      qmemcpy(v14, "File Corruption", 15);
      v16 = &v14->__r_.__value_.__s.__data_[15];
      goto LABEL_26;
    }

    if (a2 == 1)
    {
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        v21.__r_.__value_.__l.__size_ = 22;
        v15 = v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v21.__r_.__value_.__s + 23) = 22;
        v15 = &v21;
      }

      qmemcpy(v15, "Unexpected Object Type", 22);
      v16 = &v15->__r_.__value_.__s.__data_[22];
      goto LABEL_26;
    }

    if (a2 != 2)
    {
      goto LABEL_27;
    }

    v12 = "Unable to Traverse History";
    v13 = 26;
LABEL_17:
    std::string::__assign_external(&v21, v12, v13);
    goto LABEL_27;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v12 = "Orphaned HFD Object (no reference in SQLite)";
      v13 = 44;
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_27;
      }

      v12 = "Orphaned SQLite Row (no matching object in HFD)";
      v13 = 47;
    }

    goto LABEL_17;
  }

  if (a2 == 3)
  {
    v12 = "Sample History Root Mismatch";
    v13 = 28;
    goto LABEL_17;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    v21.__r_.__value_.__l.__size_ = 19;
    v11 = v21.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v21.__r_.__value_.__s + 23) = 19;
    v11 = &v21;
  }

  *(&v11->__r_.__value_.__r.__words[1] + 7) = 1751348321;
  *&v11->__r_.__value_.__l.__data_ = *"SQLite Row Mismatch";
  v16 = &v11->__r_.__value_.__s.__data_[19];
LABEL_26:
  *v16 = 0;
LABEL_27:
  if (a3 | a4)
  {
    v23.__r_.__value_.__r.__words[0] = a5;
    v23.__r_.__value_.__l.__size_ = v22;
    v23.__r_.__value_.__r.__words[2] = &v21;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<std::string &,health::BlockPointer &,std::string const&>("{0}: [{1}] {2}", &__p, 0, &v23);
    v19 = *(a6 + 24);
    if (!v19)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v19 + 48))(v19, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v18 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_34;
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = a5;
    __p.__r_.__value_.__l.__size_ = &v21;
    memset(&v23, 0, sizeof(v23));
    health::FormatImplementation<std::string &,std::string const&>("{0}: {1}", &v23, 0, &__p);
    v17 = *(a6 + 24);
    if (!v17)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v17 + 48))(v17, &v23);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      v18 = v23.__r_.__value_.__r.__words[0];
LABEL_34:
      operator delete(v18);
    }
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_228C6B7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void health::timestampToDate(uint64_t *__return_ptr a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  }

  v5 = v3;
  v4 = HKDiagnosticStringFromDate();
  std::string::basic_string[abi:ne200100]<0>(a1, [v4 UTF8String]);
}

void health::FormatString<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(std::string *a1, std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[0] = a5;
  v5[1] = a4;
  v5[2] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(a2, a1, 0, v5);
}

void sub_228C6B928(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::doubleToString@<X0>(health *this@<X0>, double a2@<D0>, void *a3@<X8>)
{
  v3 = this;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  *(&v9[0].__locale_ + *(v7 - 24)) = v3;
  MEMORY[0x22AAC8380](&v7, a2);
  std::ostringstream::str[abi:ne200100](&v7, a3);
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x22AAC8550](&v11);
}

void sub_228C6BAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,unsigned long long,std::__identity const,std::__less<void,void>>(void *a1, void *a2, unint64_t a3)
{
  if (a1 != a2)
  {
    if (a1[4] >= a3)
    {
      return a1;
    }

    v3 = 1;
LABEL_4:
    if (v3)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        if (v5 == a2)
        {
          v9 = v3;
          goto LABEL_26;
        }

        v6 = v5[1];
        v7 = v5;
        if (v6)
        {
          do
          {
            v5 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v5 = v7[2];
            v8 = *v5 == v7;
            v7 = v5;
          }

          while (!v8);
        }

        ++v4;
      }

      while (v4 != v3);
      v9 = v3;
      v4 = v3;
    }

    else
    {
      v9 = 0;
      v4 = 0;
      v5 = a1;
    }

LABEL_26:
    while (v5 != a2 && v5[4] < a3)
    {
      v3 *= 2;
      a1 = v5;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      v4 = 0;
      v9 = -v3;
      if (-v3 > 1)
      {
        v10 = -v3;
      }

      else
      {
        v10 = 1;
      }

      while (v5 != a2)
      {
        v11 = *v5;
        v12 = v5;
        if (*v5)
        {
          do
          {
            v5 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v5 = v12[2];
            v8 = *v5 == v12;
            v12 = v5;
          }

          while (v8);
        }

        if (++v4 == v10)
        {
          v4 = v10;
          goto LABEL_26;
        }
      }
    }

    v13 = v4 - v9 + v3;
    if (!v13)
    {
      return a1;
    }

    a2 = v5;
    if (v13 != 1)
    {
      do
      {
        v14 = v13 >> 1;
        v15 = a1;
        if (v13 >= 2)
        {
          v16 = v13 >> 1;
          v17 = a1;
          do
          {
            v18 = v17[1];
            if (v18)
            {
              do
              {
                v15 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v15 = v17[2];
                v8 = *v15 == v17;
                v17 = v15;
              }

              while (!v8);
            }

            v17 = v15;
          }

          while (v16-- > 1);
        }

        if (v15[4] < a3)
        {
          v20 = v15[1];
          if (v20)
          {
            do
            {
              a1 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a1 = v15[2];
              v8 = *a1 == v15;
              v15 = a1;
            }

            while (!v8);
          }

          v14 = v13 + ~v14;
        }

        v13 = v14;
      }

      while (v14);
      return a1;
    }
  }

  return a2;
}

void *std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::insert_iterator<std::set<unsigned long long>>>(void *result, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = std::insert_iterator<std::set<unsigned long long>>::operator=[abi:ne200100](a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

void *std::insert_iterator<std::set<unsigned long long>>::operator=[abi:ne200100](void *a1, unint64_t *a2)
{
  v3 = std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(*a1, a1[1], *a2, a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

void *std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, void *a2, unint64_t a3, void *a4)
{
  v4 = a2;
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = a2[4], v6 > a3))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
    }

    else
    {
      if (v7)
      {
        v8 = *a2;
        do
        {
          v9 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        v13 = a2;
        do
        {
          v9 = v13[2];
          v14 = *v9 == v13;
          v13 = v9;
        }

        while (v14);
      }

      if (v9[4] >= a3)
      {
        v16 = *v5;
        if (!*v5)
        {
          goto LABEL_38;
        }

        while (1)
        {
          while (1)
          {
            v4 = v16;
            v17 = v16[4];
            if (v17 <= a3)
            {
              break;
            }

            v16 = *v16;
            if (!*v4)
            {
              goto LABEL_38;
            }
          }

          if (v17 >= a3)
          {
            return v4;
          }

          v16 = v16[1];
          if (!v16)
          {
            goto LABEL_38;
          }
        }
      }
    }

    if (v7)
    {
      v15 = (v9 + 1);
    }

    else
    {
      v15 = a2;
    }

    v4 = *v15;
    if (!*v15)
    {
      goto LABEL_38;
    }
  }

  else if (v6 < a3)
  {
    v10 = a2[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
        v12 = v11;
      }

      while (v10);
    }

    else
    {
      v12 = a2;
      do
      {
        v18 = v12;
        v12 = v12[2];
      }

      while (*v12 != v18);
    }

    if (v12 == v5 || v12[4] > a3 || (v19 = *v5) == 0)
    {
LABEL_38:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v4 = v19;
        v20 = v19[4];
        if (v20 <= a3)
        {
          break;
        }

        v19 = *v19;
        if (!*v4)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        break;
      }

      v19 = v19[1];
      if (!v19)
      {
        goto LABEL_38;
      }
    }
  }

  return v4;
}

uint64_t *std::__tree<unsigned long long>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::insert_iterator<std::set<unsigned long long>> &>(void *result, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v27 = *a6;
    v9 = v8;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = v8[4];
    v16 = i[4];
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = v8[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v8[2];
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      result = std::insert_iterator<std::set<unsigned long long>>::operator=[abi:ne200100](a6, v8 + 4);
      v17 = *a2;
      v18 = *(*a2 + 8);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v17[2];
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v27 = *a6;
  v30 = *a6;
  if (v8 != v9)
  {
    do
    {
      result = std::insert_iterator<std::set<unsigned long long>>::operator=[abi:ne200100](&v30, v8 + 4);
      v28 = v8[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v8[2];
          v20 = *v29 == v8;
          v8 = v29;
        }

        while (!v20);
      }

      v8 = v29;
    }

    while (v29 != v9);
    v27 = v30;
  }

LABEL_39:
  *v7 = v9;
  *(v7 + 1) = v27;
  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v7 = 22;
LABEL_5:
    std::string::__grow_by_and_replace(this, v7, __n - v7, size, 0, size, __n, __s);
    return this;
  }

  v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 < __n)
  {
    size = this->__r_.__value_.__l.__size_;
    goto LABEL_5;
  }

  v9 = this->__r_.__value_.__r.__words[0];
  memmove(this->__r_.__value_.__l.__data_, __s, __n);
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  *(v9 + __n) = 0;
  return this;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0,std::allocator<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0>,BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE8F20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0,std::allocator<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0>,BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, std::string::size_type a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v7 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v9, *(a1 + 16));
  health::DataStoreInspector::_errorHandler(v7, 0, v5, v6, a4, v9);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v9);
  return 1;
}

void sub_228C6C500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0,std::allocator<health::DataStoreInspector::enumerateStoreForPrinting(std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,std::vector<health::DataStoreInspector::DataSeriesEntry> *)::$_0>,BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_228C6C6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(health::DataStore::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void health::FormatString<health::DataStore::ObjectIdentifier &>(std::string *a1, std::string *a2, uint64_t a3)
{
  v3 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<health::DataStore::ObjectIdentifier &>(a2, a1, 0, &v3);
}

void sub_228C6C704(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatString<long long &>(std::string *a1, void *a2)
{
  v2 = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<long long &>("\nTotal # of samples = {0}", a1, 0, &v2);
}

void sub_228C6C76C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE8FB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v5[16], 0, 32);
  memset(&v5[56], 0, 32);
  v6 = a2;
  result = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::loadHistoryRoot(v5, *(a1 + 8));
  if (result)
  {
    v4 = *(*(a1 + 16) + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v4 + 48))(v4, v5);
    **(a1 + 24) = 1;
  }

  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE9030;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::operator()(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v16 = v6;
  if (v6 < 1)
  {
    v7 = **(a1 + 16);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 1;
    }

    if (v8)
    {
      health::FormatString<health::DataStore::ObjectIdentifier &>(&v19, "HFD sample history root [ID: {0}] reports an empty sample count.", *(a1 + 24));
      v14 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v20, *(a1 + 40));
      health::DataStoreInspector::_errorHandler(v14, 2, v4, v5, &v19, v20);
      std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v20);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v13 = v19.__r_.__value_.__r.__words[0];
      goto LABEL_23;
    }
  }

  else
  {
    *(*(a1 + 8) + 40) = health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::firstSampleKey(a2);
    *(*(a1 + 8) + 48) = health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::lastSampleKey(a2);
    v7 = **(a1 + 16);
  }

  if (v7 == 2)
  {
    if (**(a1 + 48) != 1)
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 40);
    std::string::basic_string[abi:ne200100]<0>(v20, "object_id \t sample_number \t timestamp \t data");
    v12 = *(v11 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v12 + 48))(v12, v20);
  }

  else
  {
    if (v7)
    {
      goto LABEL_24;
    }

    _HDSampleHistoryDescriptionForObjectType(v20, **(a1 + 24));
    health::timestampToDate(&v19, *(*(a1 + 8) + 40));
    health::timestampToDate(v17, *(*(a1 + 8) + 48));
    v9 = *(a1 + 40);
    health::FormatString<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(&__p, v20, *(a1 + 24), &v16, &v19, v17);
    v10 = *(v9 + 24);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  if ((v21 & 0x80000000) == 0)
  {
LABEL_24:
    operator new();
  }

  v13 = v20[0];
LABEL_23:
  operator delete(v13);
  goto LABEL_24;
}

void sub_228C6CD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a31);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1},std::allocator<health::DataStoreInspector::DataSeriesEntry health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier,std::function<void ()(std::string const&)>,health::DataStoreInspector::OutputFormat,BOOL)::{lambda(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)#1}>,void ()(health::DataStore::SampleHistory<LocationHistoryBehaviorV1> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::firstSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_6;
  }

  v1 = *(a1[11] + 24);
  v2 = a1[2];
  v3 = a1[3];
  memset(v6, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v2, v3, v6);
  if (!WORD4(v6[25]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_6:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  return *v6;
}

double health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::lastSampleKey(void *a1)
{
  if (!a1[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "History contains no samples.");
    goto LABEL_11;
  }

  v1 = *(a1[11] + 24);
  v11[0] = 0;
  v11[1] = 0;
  v11[2] = v1;
  v2 = a1[3];
  v9[0] = a1[2];
  v9[1] = v2;
  v10 = v11;
  memset(__dst, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v1, v9[0], v2, __dst);
  v3 = __dst[204];
  if (!__dst[204])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
    goto LABEL_11;
  }

  if ((__dst[205] & 1) == 0)
  {
    v5 = 0;
    while (__dst[204])
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(v9, v5, __dst, (__dst[204] - 1), __src);
      memcpy(__dst, __src, 0x19BuLL);
      ++v5;
      if (LOBYTE(__dst[205]) == 1)
      {
        v3 = __dst[204];
        v4 = v10;
        goto LABEL_9;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Tree contains no values.");
LABEL_11:
    __cxa_throw(exception, off_278612E80, MEMORY[0x277D825F8]);
  }

  v4 = v11;
LABEL_9:
  v6 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](__dst, v3 - 1);
  bzero(__src, 0x332uLL);
  v14 = 0u;
  v15 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(v4[2], *(v6 + 8), *(v6 + 16), __src);
  return *health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__src, v13 - 1);
}

void health::FormatString<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[0] = a6;
  v6[1] = a5;
  v6[2] = a4;
  v6[3] = a3;
  v6[4] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>("'{0}' [ID: {1} | Count: {2} | {3} to {4}]\n", a1, 0, v6);
}

void sub_228C6D174(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(result + 48))
  {
    v2 = *(*(result + 88) + 24);
    v5[0] = 0;
    v5[1] = 0;
    v5[2] = v2;
    v3 = *(result + 16);
    v4 = v5;
    std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>::__value_func[abi:ne200100](v6, a2);
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::enumerateAllValues<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(&v3, v6, 0);
    return std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>::~__value_func[abi:ne200100](v6);
  }

  return result;
}

void sub_228C6D228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v34 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v34 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v34 = &v11->__r_.__value_.__s.__data_[2];
    v25 = v11->__r_.__value_.__s.__data_[2];
    if ((v25 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v26 = 0;
      v27 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v34 = v27;
        v26 = (v25 & 0xF) + 10 * v26;
        v28 = *v27++;
        LOBYTE(v25) = v28;
      }

      while ((v28 - 58) >= 0xFFFFFFF6);
      v34 = v27;
      if (*(v27 - 1) == 125)
      {
        health::FormatterParameters<0ul,std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>::formatOptionsAtIndex<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v26);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_78;
  }

  health::FormatOptions::FormatOptions(v30, &v34);
  v13 = v34;
  if (v31 <= 1)
  {
    if (v31)
    {
      if (v31 != 1)
      {
        goto LABEL_79;
      }

      health::TypeFormatter<health::DataStore::ObjectIdentifier &,void>::TypeFormatter(&__p, *(a4 + 24), v30);
      v17 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v17 = v36;
      }

      v18 = v33;
      if (v33 <= v17)
      {
        v18 = v17;
      }

      if (v32)
      {
        v17 = v18;
      }

      health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v17 + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 32), v30);
      v23 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v23 = v36;
      }

      v24 = v33;
      if (v33 <= v23)
      {
        v24 = v23;
      }

      if (v32)
      {
        v23 = v24;
      }

      health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v23 + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }
    }
  }

  else
  {
    switch(v31)
    {
      case 2:
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, *(a4 + 16), v30);
        v19 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v19 = v36;
        }

        v20 = v33;
        if (v33 <= v19)
        {
          v20 = v19;
        }

        if (v32)
        {
          v19 = v20;
        }

        health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v19 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      case 3:
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *(a4 + 8), v30);
        v21 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v21 = v36;
        }

        v22 = v33;
        if (v33 <= v21)
        {
          v22 = v21;
        }

        if (v32)
        {
          v21 = v22;
        }

        health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v21 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      case 4:
        health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, *a4, v30);
        v14 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v14 = v36;
        }

        v15 = v33;
        if (v33 <= v14)
        {
          v15 = v14;
        }

        if (v32)
        {
          v14 = v15;
        }

        health::FormatImplementation<std::string &,health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        break;
      default:
LABEL_79:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_78:
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v30, v16 + a3 + v9, &__p);
  if (v37 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}