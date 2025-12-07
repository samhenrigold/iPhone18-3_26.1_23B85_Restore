id sub_100001D20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRAudioDecoder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002194(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_100002234(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & &_mh_execute_header;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ &_mh_execute_header) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      *(result + 32) = v3 - a3 + (v3 << 6);
      *(result + 40) = 0;
      LOBYTE(v4) = 64;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & &_mh_execute_header;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 >= 0x3F)
  {
LABEL_15:
    *(result + 48) = 0;
    v6 = -1;
    *(result + 56) = 0xFFFFFFFF >> -v4;
    goto LABEL_16;
  }

  *(result + 48) = 0x80000000uLL >> v4 << (v4 + 1);
  v6 = -1;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  *(result + 56) = v7;
  if (v4 <= 0x1E)
  {
    v6 = 0xFFFFFFFF >> ~v4;
  }

LABEL_16:
  *(result + 60) = v6;
  return result;
}

uint64_t sub_100002320(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = sub_100002194(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = sub_100002194(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

void sub_100002844(const void **a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (v4 - *a1) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return;
    }

    v12 = &v5[4 * a2];
  }

  else
  {
    v7 = a2 - v6;
    v8 = a1[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        sub_100002C84(v11);
      }

      sub_100002C6C();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = v4 + 8;
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_10002A6C0)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_10002A6D0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = &v4[4 * v7];
  }

  a1[1] = v12;
}

void sub_100002A88(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_100002C6C();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100002B60(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_100002B60(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_100002BA8();
}

void sub_100002BA8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100002BDC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100002C38(exception, a1);
}

std::logic_error *sub_100002C38(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100002C84(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_100002BA8();
}

void sub_100002DF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003938(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = objc_alloc_init(NSMutableArray);
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_1000040A0;
    v58 = sub_1000040B0;
    v59 = 0;
    v3 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v4 = [v3 isFileURL];

    if (v4)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v5 = *(a1 + 32);
      v6 = [v5 countByEnumeratingWithState:&v50 objects:v69 count:16];
      if (v6)
      {
        v7 = *v51;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v51 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [v2 addObject:*(*(&v50 + 1) + 8 * i)];
          }

          v6 = [v5 countByEnumeratingWithState:&v50 objects:v69 count:16];
        }

        while (v6);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v10 = NSTemporaryDirectory();
      v11 = [v10 stringByAppendingPathComponent:@"nnlm-attachments"];
      v34 = [NSURL fileURLWithPath:v11 isDirectory:1];

      v12 = +[NSFileManager defaultManager];
      v49 = 0;
      LOBYTE(v11) = [v12 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v49];
      v31 = v49;

      if (v11)
      {
        v13 = objc_alloc_init(NSMutableArray);
        v14 = dispatch_group_create();
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = *(a1 + 32);
        v15 = [obj countByEnumeratingWithState:&v45 objects:v62 count:16];
        if (v15)
        {
          v33 = *v46;
          *&v16 = 138412546;
          v30 = v16;
LABEL_17:
          v17 = 0;
          while (1)
          {
            if (*v46 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v45 + 1) + 8 * v17);
            dispatch_group_enter(v14);
            v19 = *(*(a1 + 40) + 16);
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_1000040B8;
            v39[3] = &unk_1000388D0;
            v39[4] = v18;
            v40 = v34;
            v44 = &v54;
            v41 = v2;
            v13 = v13;
            v42 = v13;
            v43 = v14;
            v20 = [v19 downloadTaskWithURL:v18 completionHandler:v39];
            if (v20)
            {
              v21 = qword_10003FF10;
              if (os_log_type_enabled(qword_10003FF10, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v66 = v20;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Starting attachment download %@", buf, 0xCu);
              }

              [v20 resume];
              [v13 addObject:v20];
            }

            else
            {

              v60 = NSLocalizedDescriptionKey;
              v61 = @"Fail to create download task";
              v22 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
              v23 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:155 userInfo:v22];
              v24 = v55[5];
              v55[5] = v23;

              v25 = qword_10003FF10;
              if (os_log_type_enabled(qword_10003FF10, OS_LOG_TYPE_ERROR))
              {
                v26 = v55[5];
                *buf = v30;
                v66 = v18;
                v67 = 2114;
                v68 = v26;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Fail to download attachment=%@ with error=%{public}@", buf, 0x16u);
              }

              v13 = 0;
            }

            if (!v20)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [obj countByEnumeratingWithState:&v45 objects:v62 count:16];
              if (v15)
              {
                goto LABEL_17;
              }

              break;
            }
          }
        }

        v27 = *(*(a1 + 40) + 8);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100004490;
        block[3] = &unk_1000388F8;
        v37 = *(a1 + 48);
        v36 = v2;
        v38 = &v54;
        dispatch_group_notify(v14, v27, block);
      }

      else
      {
        v28 = qword_10003FF10;
        if (os_log_type_enabled(qword_10003FF10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v66 = v34;
          v67 = 2112;
          v68 = v31;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not make temporary attachment directory at %@: %@", buf, 0x16u);
        }

        v29 = *(a1 + 48);
        v63 = NSUnderlyingErrorKey;
        v64 = v31;
        v13 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v14 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:155 userInfo:v13];
        (*(v29 + 16))(v29, &__NSArray0__struct, v14);
      }
    }

    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v9 = *(*(a1 + 48) + 16);

    v9();
  }
}

void sub_100004058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000040A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000040B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = qword_10003FF10;
  if (v7)
  {
    if (os_log_type_enabled(qword_10003FF10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      *buf = 138412802;
      v40 = v11;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Downloaded %@ to %@, response was %@", buf, 0x20u);
    }

    v12 = *(a1 + 40);
    v13 = [v8 suggestedFilename];
    v14 = [v12 URLByAppendingPathComponent:v13];

    v15 = +[NSFileManager defaultManager];
    v35 = 0;
    v16 = [v15 moveItemAtURL:v7 toURL:v14 error:&v35];
    v17 = v35;

    v18 = qword_10003FF10;
    if (v16)
    {
      if (os_log_type_enabled(qword_10003FF10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v40 = v7;
        v41 = 2112;
        v42 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Moved %@ to %@", buf, 0x16u);
      }

      [*(a1 + 48) addObject:v14];
LABEL_16:

      goto LABEL_27;
    }

    if (os_log_type_enabled(qword_10003FF10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v40 = v7;
      v41 = 2112;
      v42 = v17;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not move to %@: %@", buf, 0x16u);
    }

    v21 = *(*(a1 + 72) + 8);
    if (*(v21 + 40))
    {
      goto LABEL_16;
    }

    *(v21 + 40) = v17;
    goto LABEL_19;
  }

  if (os_log_type_enabled(qword_10003FF10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v40 = v8;
    v41 = 2112;
    v42 = v9;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Attachment download failed %@: %@", buf, 0x16u);
  }

  v19 = *(*(a1 + 72) + 8);
  if (!*(v19 + 40))
  {
    if (v9)
    {
      v20 = v9;
      v14 = *(v19 + 40);
      *(v19 + 40) = v20;
    }

    else
    {
      v22 = *(a1 + 32);
      v37 = NSURLErrorFailingURLErrorKey;
      v38 = v22;
      v14 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v23 = [NSError errorWithDomain:NSURLErrorDomain code:-1011 userInfo:v14];
      v24 = *(*(a1 + 72) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

LABEL_19:

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = *(a1 + 56);
    v27 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v32;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v31 + 1) + 8 * i) cancel];
        }

        v28 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v28);
    }

    [*(a1 + 56) removeAllObjects];
  }

LABEL_27:
  dispatch_group_leave(*(a1 + 64));
}

uint64_t sub_100004C98(void *a1)
{
  v1 = a1;
  v2 = +[NSCharacterSet punctuationCharacterSet];
  if ([v1 length])
  {
    v3 = 0;
    do
    {
      v4 = [v2 characterIsMember:{objc_msgSend(v1, "characterAtIndex:", v3)}];
      if ((v4 & 1) == 0)
      {
        break;
      }

      ++v3;
    }

    while (v3 < [v1 length]);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void sub_1000052CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000530C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005324(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void sub_10000638C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, NSErrorUserInfoKey a58, uint64_t a59, NSErrorUserInfoKey a60, uint64_t a61)
{
  if (a2)
  {

    v64 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      a58 = NSLocalizedDescriptionKey;
      (*(*v64 + 16))(v64);
      v65 = [NSString stringWithFormat:@"Exception in computeDelta: %s"];
      a59 = v65;
      [NSDictionary dictionaryWithObjects:&a59 forKeys:&a58 count:1];
    }

    else
    {
      a60 = NSLocalizedDescriptionKey;
      v65 = [NSString stringWithFormat:@"Exception in computeDelta"];
      a61 = v65;
      [NSDictionary dictionaryWithObjects:&a61 forKeys:&a60 count:1];
    }
    v66 = ;
    [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:153 userInfo:v66];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x1000062CCLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_100006924(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v5 objectForKeyedSubscript:v6];
      a3 = [v10 BOOLValue];
    }

    else
    {
      v11 = qword_10003FF18;
      if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412546;
        v14 = v6;
        v15 = 1024;
        v16 = a3;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "recipe[%@] cannot be parsed as a BOOL. Default value of %d is used. ", &v13, 0x12u);
      }
    }
  }

  return a3;
}

void sub_100006F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, NSErrorUserInfoKey a29, uint64_t a30, NSErrorUserInfoKey a31, uint64_t a32)
{
  if (a2)
  {

    v34 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      a29 = NSLocalizedDescriptionKey;
      (*(*v34 + 16))(v34);
      v35 = [NSString stringWithFormat:@"Exception in evaluatePartialDelta: %s"];
      a30 = v35;
      [NSDictionary dictionaryWithObjects:&a30 forKeys:&a29 count:1];
    }

    else
    {
      a31 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithFormat:@"Exception in evaluatePartialDelta"];
      a32 = v35;
      [NSDictionary dictionaryWithObjects:&a32 forKeys:&a31 count:1];
    }
    v36 = ;
    [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:154 userInfo:v36];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x100006EC0);
  }

  _Unwind_Resume(exception_object);
}

NSMutableDictionary *sub_10000726C(void *a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v29 = a2;
  v28 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v26 = *v32;
    do
    {
      v30 = v6;
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v29 getTensorNamed:v8 directBind:1];
        v10 = [v5 objectForKeyedSubscript:v8];
        v11 = [v10 objectForKeyedSubscript:@"offset"];
        v12 = [v11 intValue];

        v13 = [v9 dataPointer];
        v14 = [v5 objectForKeyedSubscript:v8];
        v15 = [v14 objectForKeyedSubscript:@"size"];
        LODWORD(v11) = [v15 intValue];

        v16 = 4 * v11;
        v17 = (a3 + 4 * v12);
        memcpy(v17, v13, v16);
        v18 = [ETDataTensor alloc];
        v19 = [v5 objectForKeyedSubscript:v8];
        v20 = [v19 objectForKeyedSubscript:@"shape"];
        v21 = [v5 objectForKeyedSubscript:v8];
        v22 = [v21 objectForKeyedSubscript:@"strides"];
        v23 = [v18 initWithData:v17 type:2 shape:v20 strides:v22];
        [v28 setObject:v23 forKeyedSubscript:v8];
      }

      v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);

  return v28;
}

void sub_100007E48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, NSErrorUserInfoKey a63)
{
  if (a2)
  {

    v70 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      a63 = NSLocalizedDescriptionKey;
      (*(*v70 + 16))(v70);
      v71 = [NSString stringWithFormat:@"Exception in train: %s"];
      a64 = v71;
      [NSDictionary dictionaryWithObjects:&a64 forKeys:&a63 count:1];
    }

    else
    {
      a65 = NSLocalizedDescriptionKey;
      v71 = [NSString stringWithFormat:@"Exception in train"];
      a66 = v71;
      [NSDictionary dictionaryWithObjects:&a66 forKeys:&a65 count:1];
    }
    v72 = ;
    [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:152 userInfo:v72];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x100007DF4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100008240(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008258(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v43 = a2;
  v6 = a3;
  v44 = a4;
  for (i = 0; i < [v6 numberOfDataPoints]; ++i)
  {
    v51 = 0;
    v8 = [v6 dataPointAtIndex:i error:&v51];
    v9 = v51;
    if (v9)
    {
      v31 = v9;
      v36 = qword_10003FF18;
      if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v54 = v43;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "epochCallback is unable to retrieve output of iteration %lu", buf, 0xCu);
      }

LABEL_38:

      v35 = 0;
      goto LABEL_39;
    }

    v10 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v11 = [v8 objectForKeyedSubscript:v10];
    v12 = [v11 dataPointer];

    v13 = qword_10003FF18;
    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
    {
      v15 = *v12;
      *buf = 134218240;
      v54 = i;
      v55 = 2048;
      v56 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Cost for batch %lu = %f", buf, 0x16u);
    }

    v16 = *(a1 + 40);
    *&v14 = *v12;
    v17 = [NSNumber numberWithFloat:v14];
    [v16 addObject:v17];
  }

  v18 = qword_10003FF18;
  if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v54 = v43;
    v55 = 2112;
    v56 = *&v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Espresso training iteration=%lu result=%@", buf, 0x16u);
  }

  [*(*(a1 + 48) + 96) shuffleSamples];
  [*(*(a1 + 48) + 104) setVectorsWithProcessor:*(*(a1 + 48) + 96)];
  v19 = qword_10003FF18;
  if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v54 = v43;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Finish running train epoch number %lu", buf, 0xCu);
  }

  v20 = *(*(*(a1 + 64) + 8) + 24);
  if (v20 > 0.0)
  {
    sub_100022B8C(*(*(*(a1 + 72) + 8) + 40), 1.0 / v20);
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v21 = sub_100022CE0(*(*(*(a1 + 72) + 8) + 40));
      v22 = *(*(*(a1 + 88) + 8) + 24);
      if (v21 > v22)
      {
        sub_100022B8C(*(*(*(a1 + 72) + 8) + 40), v22 / v21);
      }
    }
  }

  if (*(*(*(a1 + 96) + 8) + 24) != 1)
  {
    goto LABEL_31;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:@"trainingGlobals"];
  v23 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (!v23)
  {
    goto LABEL_30;
  }

  v45 = *v48;
  while (2)
  {
    for (j = 0; j != v23; j = j + 1)
    {
      if (*v48 != v45)
      {
        objc_enumerationMutation(v8);
      }

      v25 = *(*(&v47 + 1) + 8 * j);
      v26 = [*(*(*(a1 + 72) + 8) + 40) objectForKey:v25];
      v27 = v26;
      if (v20 > 0.0 && v26 != 0)
      {
        v29 = [*(*(a1 + 48) + 144) objectForKeyedSubscript:v25];
        v46 = 0;
        LODWORD(v30) = 1.0;
        [v27 applyToTensor:v29 scale:&v46 error:v30];
        v31 = v46;

        if (v31)
        {
          v37 = qword_10003FF18;
          if (!os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }

          *buf = 0;
          v38 = "Unable to apply gradient";
          v39 = v37;
          v40 = 2;
        }

        else
        {
          v32 = [v44 getTensorNamed:v25 directBind:1];
          v33 = [*(*(a1 + 48) + 144) objectForKeyedSubscript:v25];
          v31 = sub_100009230(v32, v33);

          if (!v31)
          {
            [v27 reset];
            goto LABEL_28;
          }

          v41 = qword_10003FF18;
          if (!os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
          {
LABEL_37:

            goto LABEL_38;
          }

          *buf = 138412546;
          v54 = v25;
          v55 = 2048;
          v56 = *&v43;
          v38 = "Unable to set %@ after epoch %lu";
          v39 = v41;
          v40 = 22;
        }

        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
        goto LABEL_37;
      }

LABEL_28:
    }

    v23 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_30:

  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_31:
  v34 = sub_10000726C(*(*(a1 + 48) + 152), *(a1 + 56), *(*(a1 + 48) + 120));
  v35 = 1;
LABEL_39:

  return v35;
}

uint64_t sub_1000088C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v62 = a4;
  v75 = 0;
  v56 = a2;
  v57 = v7;
  v58 = [v7 dataPointAtIndex:a2 error:&v75];
  v8 = v75;
  if (v8)
  {
    v9 = v8;
    v10 = qword_10003FF18;
    if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v78 = a2;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "batchCallback is unable to retrieve outputs for batch %lu", buf, 0xCu);
    }

    goto LABEL_50;
  }

  v11 = [*(a1 + 32) objectAtIndexedSubscript:1];
  v63 = a1;
  v12 = [v58 objectForKeyedSubscript:v11];

  v13 = *[v12 dataPointer];
  *(*(*(a1 + 48) + 8) + 24) = v13 + *(*(*(a1 + 48) + 8) + 24);
  v14 = qword_10003FF18;
  if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v78) = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "batchSize == %d", buf, 8u);
  }

  v74 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  v15 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:@"trainingGlobals"];
  obj = v15;
  v16 = [v15 countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (v16)
  {
    v60 = *v72;
    *&v17 = 138412546;
    v55 = v17;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v72 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v71 + 1) + 8 * i);
        v20 = [*(*(*(v63 + 56) + 8) + 40) objectForKey:{v19, v55}];
        v21 = objc_autoreleasePoolPush();
        v22 = [v62 getTensorNamed:v19 directBind:1];
        v23 = [*(*(*(v63 + 64) + 8) + 40) containsObject:v19];
        if (v20)
        {
          v24 = [*(*(v63 + 40) + 144) objectForKeyedSubscript:v19];
          v69 = 0;
          *&v25 = v13;
          [(SMTGradientBuffer *)v20 accumulateDifferenceBetweenTensorBefore:v24 andTensorAfter:v22 withScale:&v69 error:v25];
          v9 = v69;
        }

        else
        {
          v26 = [SMTGradientBuffer alloc];
          v27 = [*(*(v63 + 40) + 144) objectForKeyedSubscript:v19];
          v70 = 0;
          *&v28 = v13;
          v20 = [(SMTGradientBuffer *)v26 initWithTensorBefore:v27 tensorAfter:v22 withScale:v23 shouldSparsify:&v70 error:v28];
          v9 = v70;

          [*(*(*(v63 + 56) + 8) + 40) setObject:v20 forKeyedSubscript:v19];
        }

        if (v9)
        {
          v29 = qword_10003FF18;
          if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            v78 = v56;
            v79 = 2112;
            v80 = v19;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Unable to accumulate gradient of batch %lu for %@", buf, 0x16u);
          }
        }

        else if (v23)
        {
          v30 = qword_10003FF18;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = [(SMTGradientBuffer *)v20 description];
            *buf = v55;
            v78 = v19;
            v79 = 2112;
            v80 = v31;
            _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v21);
        if (v9)
        {

LABEL_50:
          v48 = 0;
          goto LABEL_51;
        }
      }

      v15 = obj;
      v16 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    }

    while (v16);
  }

  v32 = v63;
  v61 = (v56 + 1) % *(v63 + 96);
  if (!v61)
  {
    sub_100022B8C(*(*(*(v63 + 56) + 8) + 40), 1.0 / *(*(*(v63 + 48) + 8) + 24));
    if (*(*(*(v63 + 72) + 8) + 24) == 1)
    {
      v33 = sub_100022CE0(*(*(*(v63 + 56) + 8) + 40));
      v34 = *(*(*(v63 + 80) + 8) + 24);
      if (v33 > v34)
      {
        sub_100022B8C(*(*(*(v63 + 56) + 8) + 40), v34 / v33);
      }
    }
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v35 = [*(*(v63 + 40) + 8) objectForKeyedSubscript:@"trainingGlobals"];
  v36 = v35;
  v37 = [v35 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (!v37)
  {
    goto LABEL_42;
  }

  v38 = *v66;
  while (2)
  {
    for (j = 0; j != v37; j = j + 1)
    {
      if (*v66 != v38)
      {
        objc_enumerationMutation(v35);
      }

      v40 = *(*(&v65 + 1) + 8 * j);
      v41 = [*(*(v32[7] + 8) + 40) objectForKeyedSubscript:v40];
      v42 = v41;
      if (*(*(v32[11] + 8) + 24) == 1)
      {
        if (!v61 && v41)
        {
          v43 = [*(v32[5] + 144) objectForKeyedSubscript:v40];
          v64 = 0;
          LODWORD(v44) = 1.0;
          [v42 applyToTensor:v43 scale:&v64 error:v44];
          v9 = v64;

          if (v9)
          {
            v53 = qword_10003FF18;
            if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v78 = v40;
              v50 = "Unable to apply gradient for %@";
              v51 = v53;
              v52 = 12;
              goto LABEL_53;
            }

LABEL_49:

            goto LABEL_50;
          }

          [v42 reset];
          v32 = v63;
          v45 = qword_10003FF18;
          if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v78 = v40;
            _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Applied gradient on %@", buf, 0xCu);
          }
        }

        v46 = [v62 getTensorNamed:v40 directBind:1];
        v47 = [*(v32[5] + 144) objectForKeyedSubscript:v40];
        v9 = sub_100009230(v46, v47);

        if (!v9)
        {
          goto LABEL_40;
        }

        v49 = qword_10003FF18;
        if (os_log_type_enabled(qword_10003FF18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v78 = v40;
          v79 = 2048;
          v80 = v56;
          v50 = "Unable to set %@ after batch %lu";
          v51 = v49;
          v52 = 22;
LABEL_53:
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, v50, buf, v52);
          goto LABEL_49;
        }

        goto LABEL_49;
      }

LABEL_40:

      v35 = v36;
      v32 = v63;
    }

    v37 = [v36 countByEnumeratingWithState:&v65 objects:v76 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v9 = 0;
  if (!v61)
  {
    *(*(*(v63 + 48) + 8) + 24) = 0;
  }

  v48 = 1;
LABEL_51:

  return v48;
}

id sub_100009230(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 type] != 2 || objc_msgSend(v4, "type") != 2)
  {
    goto LABEL_14;
  }

  v5 = [v3 shape];
  v6 = [v4 shape];
  if (([v5 isEqual:v6] & 1) == 0)
  {

    goto LABEL_14;
  }

  v7 = [v3 strides];
  v8 = [v4 strides];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_14:
    v28 = NSLocalizedDescriptionKey;
    v29 = @"Attempt to copy tensor of mismatch type/shape/strides";
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v19];

    goto LABEL_15;
  }

  __dst = [v4 dataPointer];
  v10 = [v3 dataPointer];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v3 shape];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = *v24;
    v14 = 1;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 intValue];

        v14 *= v17;
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
    v18 = 4 * v14;
  }

  else
  {
    v18 = 4;
  }

  memcpy(__dst, v10, v18);
  v20 = 0;
LABEL_15:

  return v20;
}

void sub_100009E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, NSErrorUserInfoKey a55, uint64_t a56, NSErrorUserInfoKey a57, uint64_t a58)
{
  if (a2)
  {

    v60 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      a55 = NSLocalizedDescriptionKey;
      (*(*v60 + 16))(v60);
      v61 = [NSString stringWithFormat:@"Exception in evaluate: %s"];
      a56 = v61;
      [NSDictionary dictionaryWithObjects:&a56 forKeys:&a55 count:1];
    }

    else
    {
      a57 = NSLocalizedDescriptionKey;
      v61 = [NSString stringWithFormat:@"Exception in evaluate"];
      a58 = v61;
      [NSDictionary dictionaryWithObjects:&a58 forKeys:&a57 count:1];
    }
    v62 = ;
    [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:154 userInfo:v62];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x100009D70);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000BD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, NSErrorUserInfoKey a37, uint64_t a38, NSErrorUserInfoKey a39, uint64_t a40)
{
  if (a2)
  {

    v47 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      a37 = NSLocalizedDescriptionKey;
      (*(*v47 + 16))(v47);
      v48 = [NSString stringWithFormat:@"Exception in setup: %s"];
      a38 = v48;
      [NSDictionary dictionaryWithObjects:&a38 forKeys:&a37 count:1];
    }

    else
    {
      a39 = NSLocalizedDescriptionKey;
      v48 = [NSString stringWithFormat:@"Exception in setup"];
      a40 = v48;
      [NSDictionary dictionaryWithObjects:&a40 forKeys:&a39 count:1];
    }
    v49 = ;
    [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v49];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x10000B348);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000C610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, NSErrorUserInfoKey a27, uint64_t a28, NSErrorUserInfoKey a29, uint64_t a30)
{
  if (a2)
  {

    v33 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      a27 = NSLocalizedDescriptionKey;
      (*(*v33 + 16))(v33);
      v34 = [NSString stringWithFormat:@"Exception in fetchData: %s"];
      a28 = v34;
      [NSDictionary dictionaryWithObjects:&a28 forKeys:&a27 count:1];
    }

    else
    {
      a29 = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithFormat:@"Exception in fetchData"];
      a30 = v34;
      [NSDictionary dictionaryWithObjects:&a30 forKeys:&a29 count:1];
    }
    v35 = ;
    [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v35];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x10000C5C0);
  }

  _Unwind_Resume(exception_object);
}

id sub_10000D0AC(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10000DEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DF04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DF1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_10003FF20;
  if (os_log_type_enabled(qword_10003FF20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "User Edit: Received ASR result", buf, 2u);
  }

  if (v5)
  {
    v8 = qword_10003FF20;
    if (os_log_type_enabled(qword_10003FF20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "User Edit: ASR is successful", buf, 2u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000E52C;
    v12[3] = &unk_1000389E8;
    v13 = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v12];
    v9 = v13;
  }

  else
  {
    v10 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:353 userInfo:0];
    v11 = *(*(a1 + 40) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

id sub_10000E088(void *a1)
{
  v1 = a1;
  v13 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v1;
  v15 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v15)
  {
    v14 = *v24;
    do
    {
      v2 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = v2;
        v3 = *(*(&v23 + 1) + 8 * v2);
        v17 = objc_alloc_init(NSMutableArray);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v18 = v3;
        v4 = [v18 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v4)
        {
          v5 = v4;
          v6 = *v20;
          do
          {
            for (i = 0; i != v5; i = i + 1)
            {
              if (*v20 != v6)
              {
                objc_enumerationMutation(v18);
              }

              v8 = *(*(&v19 + 1) + 8 * i);
              v9 = [NSSet setWithObjects:@"!\\exclamation-mark", @", \\comma", @".\\period", @"\\semicolon", @":\\colon", @"?\\question-mark", @"。\\ideographic-period", @"、\\ideographic-comma", @"¿\\inverted-question-mark", @"¡\\inverted-exclamation-mark", @", \\comma", @"?\\question-mark", @";\\semicolon", @":\\colon", @"!\\exclamation-mark", @"…\\horizontal-ellipsis", 0];;
              v10 = [v9 containsObject:v8];

              if ((v10 & 1) == 0)
              {
                [v17 addObject:v8];
              }
            }

            v5 = [v18 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v5);
        }

        if ([v17 count])
        {
          [v13 addObject:v17];
        }

        v2 = v16 + 1;
      }

      while ((v16 + 1) != v15);
      v15 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v15);
  }

  return v13;
}

uint64_t sub_10000E338(void *a1, void *a2, void *a3, unint64_t a4, unint64_t a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v26 = a6;
  v14 = 0;
  if ([v12 count] && a4)
  {
    v15 = 0;
    v25 = a4;
    while (![v13 count] || !a5)
    {
LABEL_11:
      ++v15;
      v14 = 0;
      if ([v12 count] <= v15 || v15 >= v25)
      {
        goto LABEL_15;
      }
    }

    v16 = 0;
    while (1)
    {
      v17 = [v12 objectAtIndex:v15];
      v18 = [v13 objectAtIndex:v16];
      v19 = [v11 editDistanceWithRefTokens:v17 hypTokens:v18 caseInsensitive:1 removeWordSense:1];

      v20 = [v19 objectForKeyedSubscript:@"EditDistance"];
      v21 = v20;
      if (v20)
      {
        if (![v20 intValue])
        {
          break;
        }
      }

      if ([v13 count] <= ++v16 || v16 >= a5)
      {
        goto LABEL_11;
      }
    }

    v22 = [NSNumber numberWithInt:v15];
    [v26 setObject:v22 forKeyedSubscript:@"sourceIndex"];

    v23 = [NSNumber numberWithInt:v16];
    [v26 setObject:v23 forKeyedSubscript:@"targetIndex"];

    v14 = 1;
  }

LABEL_15:

  return v14;
}

void sub_10000E52C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count])
  {
    [*(a1 + 32) addObjectsFromArray:v4];
  }
}

void sub_10000E9A4(uint64_t a1)
{
  v4 = *(a1 + 32);
  v2 = [NSArray arrayWithObjects:&v4 count:1];
  v3 = [[NSMutableDictionary alloc] initWithDictionary:*(a1 + 40)];
  [v3 setObject:&off_10003B1B0 forKeyedSubscript:@"nbestAlignmentSourceBound"];
  [v3 setObject:&off_10003B1B0 forKeyedSubscript:@"nbestAlignmentTargetBound"];
  [*(a1 + 48) generateConfusionPairsWithUUID:*(a1 + 56) parameters:v3 language:*(a1 + 64) task:*(a1 + 72) samplingRate:*(a1 + 112) recognizedNbest:v2 recognizedText:*(a1 + 80) correctedText:*(a1 + 88) selectedAlternatives:*(a1 + 96) completion:*(a1 + 104)];
}

void sub_10000EC84(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"distanceThreshold"];
  if ([v2 intValue] < 1)
  {
    v4 = 10;
  }

  else
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"distanceThreshold"];
    v4 = [v3 intValue];
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"uttLengthThreshold"];
  if ([v5 intValue] < 1)
  {
    v7 = 30;
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"uttLengthThreshold"];
    v7 = [v6 intValue];
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"punctuationInsensitive"];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"caseInsensitive"];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"skipClassification"];

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"nbestAlignmentSourceBound"];
  if ([v11 intValue] < 1)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = [*(a1 + 32) objectForKeyedSubscript:@"nbestAlignmentSourceBound"];
    v13 = [v12 intValue];
  }

  v14 = [*(a1 + 32) objectForKeyedSubscript:@"nbestAlignmentTargetBound"];
  if ([v14 intValue] < 1)
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = [*(a1 + 32) objectForKeyedSubscript:@"nbestAlignmentTargetBound"];
    v16 = [v15 intValue];
  }

  v17 = [[EditCollectionParameters alloc] initWithDistanceThreshold:v4 uttLengthThreshold:v7 punctuationInsensitive:v8 != 0 caseInsensitive:v9 != 0 skipClassification:v10 != 0 nbestAlignmentSourceBound:v13 nbestAlignmentTargetBound:v16];
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v24 = *(a1 + 72);
  v22 = *(a1 + 88);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000EFC4;
  v25[3] = &unk_100038FA0;
  v23 = *(a1 + 104);
  v26 = *(a1 + 96);
  [ConfusionPairBuilder generateConfusionPairsWithUUID:v18 parameters:v17 language:v19 task:v20 samplingRate:v23 recognizedNbest:v21 recognizedText:v24 correctedText:v22 selectedAlternatives:v25 completion:?];
}

void sub_10000EFC4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v25 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:{16, v4}];
  if (v6)
  {
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_alloc_init(NSMutableDictionary);
        v11 = [v9 uttId];
        [v10 setObject:v11 forKeyedSubscript:@"uttId"];

        v12 = [v9 recognizedTokens];
        [v10 setObject:v12 forKeyedSubscript:@"recognizedTokens"];

        v13 = [v9 correctedTokens];
        [v10 setObject:v13 forKeyedSubscript:@"correctedTokens"];

        v14 = [v9 leftContext];
        [v10 setObject:v14 forKeyedSubscript:@"leftContext"];

        v15 = [v9 rightContext];
        [v10 setObject:v15 forKeyedSubscript:@"rightContext"];

        v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 errorType]);
        [v10 setObject:v16 forKeyedSubscript:@"errorType"];

        v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 editMethod]);
        [v10 setObject:v17 forKeyedSubscript:@"editMethod"];

        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 index]);
        [v10 setObject:v18 forKeyedSubscript:@"index"];

        v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 numInsertion]);
        [v10 setObject:v19 forKeyedSubscript:@"numInsertion"];

        v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 numDeletion]);
        [v10 setObject:v20 forKeyedSubscript:@"numDeletion"];

        v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 numSubstitution]);
        [v10 setObject:v21 forKeyedSubscript:@"numSubstitution"];

        v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 alignedSourceIndex]);
        [v10 setObject:v22 forKeyedSubscript:@"alignedSourceIndex"];

        v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 alignedTargetIndex]);
        [v10 setObject:v23 forKeyedSubscript:@"alignedTargetIndex"];

        [v5 addObject:v10];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F5A4(void *a1)
{
  v2 = objc_alloc_init(SRAudioGenerator);
  v3 = v2;
  if (v2)
  {
    v4 = [(SRAudioGenerator *)v2 generateTTSAudiosFromTexts:a1[4] language:a1[5] downsample:1];
    if (v4)
    {
      (*(a1[6] + 16))();
      xpc_transaction_exit_clean();
    }

    else
    {
      v7 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SRAudioGenerator: Failed to generate TTS audios", v10, 2u);
      }

      v8 = a1[6];
      v9 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:401 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);

      v4 = 0;
    }
  }

  else
  {
    v5 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SRAudioGenerator: Failed to generate TTS audios due to initialization error", buf, 2u);
    }

    v6 = a1[6];
    v4 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:401 userInfo:0];
    (*(v6 + 16))(v6, 0, v4);
  }
}

void sub_10000F844(uint64_t a1)
{
  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_100011650;
  v126[3] = &unk_100038A88;
  v127 = *(a1 + 48);
  v2 = objc_retainBlock(v126);
  v3 = objc_alloc_init(SMTSpeechAssets);
  v4 = *(a1 + 32);
  v125 = 0;
  v113 = v3;
  v114 = [(SMTSpeechAssets *)v3 fetchAssetPathForInstalledLanguage:v4 outError:&v125];
  v5 = v125;
  v6 = qword_10003FF28;
  if (!v5)
  {
    v7 = qword_10003FF28;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v130 = v114;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PM: Resolved asset=%@", buf, 0xCu);
    }

    if (![v114 length])
    {
      v21 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:102 userInfo:0];
      (v2[2])(v2, 0, v21);
LABEL_89:

      goto LABEL_90;
    }

    v111 = v114;
    v8 = qword_10003FF28;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v130 = v111;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PM: modelRoot=%@", buf, 0xCu);
    }

    v112 = [v111 stringByAppendingPathComponent:@"mini.json"];
    v9 = qword_10003FF28;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v130 = v112;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PM: Configuration=%@", buf, 0xCu);
    }

    v124 = 0;
    v10 = [NSData dataWithContentsOfFile:v112 options:0 error:&v124];
    v11 = v124;
    v109 = v10;
    if (!v10 || v11)
    {
      v110 = v11;
      v22 = qword_10003FF28;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v110 localizedDescription];
        *buf = 138412290;
        v130 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "PM: Unable to load configuration: %@", buf, 0xCu);
      }

      v24 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:306 userInfo:0];
      (v2[2])(v2, 0, v24);
      goto LABEL_88;
    }

    v123 = 0;
    v12 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:&v123];
    v13 = v123;
    v108 = v12;
    v110 = v13;
    if (!v12 || v13)
    {
      v25 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v130 = v112;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "PM: Unable to create JSON data from %@", buf, 0xCu);
      }

      v26 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:306 userInfo:0];
      (v2[2])(v2, 0, v26);
      goto LABEL_87;
    }

    v107 = EARPhoneticMatchBuildingKey;
    v14 = [v12 objectForKeyedSubscript:?];
    v15 = v14 == 0;

    if (v15)
    {
      v27 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "PM: Phonetic Match building is not supported", buf, 2u);
      }

      v26 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:307 userInfo:0];
      v110 = 0;
      (v2[2])(v2, 0, v26);
      goto LABEL_87;
    }

    v16 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v100 = [v16 firstObject];

    v17 = [v100 stringByAppendingPathComponent:@"Assistant/SpeechPhoneticMatch"];
    v106 = [v17 stringByStandardizingPath];

    v18 = qword_10003FF28;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v130 = v106;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "PM: phoneticMatchPath=%@", buf, 0xCu);
    }

    v19 = +[NSFileManager defaultManager];
    v122 = 0;
    v20 = v106;
    v96 = v19;
    if ([v19 fileExistsAtPath:v106 isDirectory:&v122])
    {
      if (v122)
      {
        v110 = 0;
        goto LABEL_35;
      }

      v62 = qword_10003FF28;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v130 = v106;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "PM: Removing the existing file: %@", buf, 0xCu);
      }

      v121 = 0;
      v20 = v106;
      v63 = [v19 removeItemAtPath:v106 error:&v121];
      v110 = v121;
      if ((v63 & 1) == 0)
      {
        v64 = qword_10003FF28;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = [v110 localizedDescription];
          *buf = 138412290;
          v130 = v65;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "PM: Unable to remove the existing file: %@", buf, 0xCu);
        }

        v66 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:306 userInfo:0];
        (v2[2])(v2, 0, v66);
        goto LABEL_86;
      }
    }

    else
    {
      v110 = 0;
    }

    v120 = 0;
    v28 = [v19 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v120];
    v29 = v120;
    if ((v28 & 1) == 0)
    {
      v99 = v29;
      v58 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v130 = v20;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "PM: Unable to create phoneticMatchPath: %@", buf, 0xCu);
      }

      v59 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:308 userInfo:0];
      (v2[2])(v2, 0, v59);
      goto LABEL_85;
    }

LABEL_35:
    v30 = [v108 objectForKeyedSubscript:v107];
    v90 = EARPhoneticMatchLGFstFileKey;
    v99 = [v30 objectForKeyedSubscript:?];

    v31 = [v108 objectForKeyedSubscript:v107];
    v89 = EARPhoneticMatchLFstFileKey;
    v93 = [v31 objectForKeyedSubscript:?];

    v32 = [v108 objectForKeyedSubscript:v107];
    v88 = EARPhoneticMatchGOsymsFileKey;
    v95 = [v32 objectForKeyedSubscript:?];

    if (!v99 || !v93 || !v95)
    {
      v60 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v130 = v90;
        v131 = 2112;
        v132 = v89;
        v133 = 2112;
        v134 = v88;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "PM: %@ or %@ or %@ key is not set in configuration", buf, 0x20u);
      }

      v61 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:306 userInfo:0];
      (v2[2])(v2, 0, v61);
      goto LABEL_84;
    }

    v87 = [v106 stringByAppendingPathComponent:?];
    v86 = [v106 stringByAppendingPathComponent:v93];
    v85 = [v106 stringByAppendingPathComponent:v95];
    v33 = qword_10003FF28;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "PM: Loading data for building phonetic match ... ", buf, 2u);
    }

    v98 = objc_alloc_init(NSMutableArray);
    v34 = [v108 objectForKeyedSubscript:v107];
    v105 = EARPhoneticMatchOnDeviceDataSourcesKey;
    v35 = [v34 objectForKeyedSubscript:?];
    v36 = v35 == 0;

    if (v36)
    {
      v68 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:307 userInfo:0];
      (v2[2])(v2, 0, v68);
      goto LABEL_83;
    }

    v37 = [v108 objectForKeyedSubscript:v107];
    v101 = EARPhoneticMatchRankingMethodKey;
    v91 = [v37 objectForKeyedSubscript:?];

    v38 = v91;
    v103 = EARPhoneticMatchRankingMethodPlayCount;
    v39 = v108;
    if (([v91 isEqualToString:?] & 1) == 0 && (objc_msgSend(v91, "isEqualToString:", EARPhoneticMatchRankingMethodMostRecentlyPlayed) & 1) == 0)
    {
      v40 = qword_10003FF28;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v130 = v91;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "PM: Invalid ranking method: '%@', switching to 'play-count'", buf, 0xCu);
      }

      v38 = v103;
      v39 = v108;
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v92 = v38;
    v41 = [v39 objectForKeyedSubscript:v107];
    v42 = [v41 objectForKeyedSubscript:v105];
    obj = [v42 allKeys];

    v43 = v108;
    v104 = [obj countByEnumeratingWithState:&v116 objects:v128 count:16];
    if (v104)
    {
      v102 = *v117;
      v94 = EARPhoneticMatchRankingMethodMostRecentlyPlayed;
LABEL_48:
      v44 = 0;
      while (1)
      {
        if (*v117 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v116 + 1) + 8 * v44);
        if ([*(a1 + 40) shouldStop])
        {
          break;
        }

        v46 = [v43 objectForKeyedSubscript:v107];
        v47 = [v46 objectForKeyedSubscript:v105];
        v48 = [v47 objectForKeyedSubscript:v45];
        v49 = [v48 objectForKeyedSubscript:v101];

        if (([v49 isEqualToString:v103] & 1) == 0 && (objc_msgSend(v49, "isEqualToString:", v94) & 1) == 0)
        {
          v50 = v92;

          v49 = v50;
        }

        v51 = qword_10003FF28;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v130 = v45;
          v131 = 2112;
          v132 = v49;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "PM: Fetching %@ with rankingMethod: %@... ", buf, 0x16u);
        }

        v115[0] = _NSConcreteStackBlock;
        v115[1] = 3221225472;
        v115[2] = sub_1000116D8;
        v115[3] = &unk_100038B00;
        v115[4] = *(a1 + 40);
        v52 = [SMTPhoneticMatchHelper fetchContentsWithConfiguration:v112 feedTypeString:v45 rankingMethod:v49 shouldStopBlock:v115];
        v53 = v52;
        if (v52)
        {
          [v52 expDecayPriors];
          [v53 normalizePriors];
          [v53 applyRegexEnumerations];
          [v53 addOsym];
          [v98 addObject:v53];
          if (*(a1 + 56) == 1)
          {
            v54 = [NSString stringWithFormat:@"%@.feed", v45];
            v55 = [v106 stringByAppendingPathComponent:v54];
            [v53 writeTsv:v55];
          }
        }

        v44 = v44 + 1;
        v43 = v108;
        if (v104 == v44)
        {
          v104 = [obj countByEnumeratingWithState:&v116 objects:v128 count:16];
          if (v104)
          {
            goto LABEL_48;
          }

          goto LABEL_62;
        }
      }
    }

    else
    {
LABEL_62:

      v56 = qword_10003FF28;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "PM: Creating pmBuilder ... ", buf, 2u);
      }

      obj = [[_EARPhoneticMatchBuilder alloc] initWithModelRoot:v111 jsonConfigFile:v112 dataFeeds:v98];
      v57 = qword_10003FF28;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "PM: buildGFsts ... ", buf, 2u);
      }

      if (![*(a1 + 40) shouldStop])
      {
        if (([obj buildGFsts] & 1) == 0)
        {
          v67 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:301 userInfo:0];
          (v2[2])(v2, 0, v67);
          goto LABEL_81;
        }

        if (*(a1 + 56) == 1)
        {
          [obj writeGFstsToDirectory:v106];
        }

        v70 = qword_10003FF28;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "PM: buildLFst ... ", buf, 2u);
        }

        if (![*(a1 + 40) shouldStop])
        {
          if (([obj buildLFst] & 1) == 0)
          {
            v67 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:302 userInfo:0];
            (v2[2])(v2, 0, v67);
            goto LABEL_81;
          }

          if (*(a1 + 56) == 1)
          {
            v71 = [v106 stringByAppendingPathComponent:@"music-orig.L.fst"];
            [obj writeLFstToPath:v71];
          }

          v72 = qword_10003FF28;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "PM: composeLGFsts ... ", buf, 2u);
          }

          if (![*(a1 + 40) shouldStop])
          {
            if (([obj composeLGFsts] & 1) == 0)
            {
              v67 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:303 userInfo:0];
              (v2[2])(v2, 0, v67);
              goto LABEL_81;
            }

            if (*(a1 + 56) == 1)
            {
              [obj writeIndividualLGFstsToDirectory:v106];
            }

            v73 = qword_10003FF28;
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "PM: combineFsts ... ", buf, 2u);
            }

            if (![*(a1 + 40) shouldStop])
            {
              if (([obj combineFsts] & 1) == 0)
              {
                v67 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:304 userInfo:0];
                (v2[2])(v2, 0, v67);
                goto LABEL_81;
              }

              v74 = qword_10003FF28;
              if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "PM: buildAlignedLFst ... ", buf, 2u);
              }

              if (![*(a1 + 40) shouldStop])
              {
                if ([obj buildAlignedLFst])
                {
                  v75 = qword_10003FF28;
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "PM: Saving FSTs ... ", buf, 2u);
                  }

                  if ([obj writeLGFstToPath:v87])
                  {
                    if ([obj writeAlignedLFstToPath:v86])
                    {
                      if ([obj writeOSymsToPath:v85 asText:0 quasarise:1])
                      {
                        v76 = [NSString stringWithFormat:@"pm-model-override-%@.json", *(a1 + 32)];
                        v67 = [v106 stringByAppendingPathComponent:v76];

                        if ([obj writeMetadataToPath:v67])
                        {
                          if (*(a1 + 56) == 1)
                          {
                            v77 = [v106 stringByAppendingPathComponent:@"music.L.isyms.txt"];
                            [obj writeISymsToPath:v77 asText:1];

                            v78 = [v106 stringByAppendingPathComponent:@"music.G.osyms.txt"];
                            [obj writeOSymsToPath:v78 asText:1 quasarise:0];
                          }

                          [obj reset];
                          v79 = qword_10003FF28;
                          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "PM: Finished building Phonetic Match", buf, 2u);
                          }

                          v80 = objc_alloc_init(NSMutableDictionary);
                          [v80 setObject:v87 forKeyedSubscript:v90];
                          [v80 setObject:v86 forKeyedSubscript:v89];
                          [v80 setObject:v85 forKeyedSubscript:v88];
                          (v2[2])(v2, v80, 0);
                        }

                        else
                        {
                          v84 = qword_10003FF28;
                          if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412290;
                            v130 = v67;
                            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "PM: Failed to write metadata: %@", buf, 0xCu);
                          }

                          v80 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:309 userInfo:0];
                          (v2[2])(v2, 0, v80);
                        }

                        goto LABEL_81;
                      }

                      v83 = qword_10003FF28;
                      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v130 = v85;
                        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "PM: Failed to write output symbols: %@", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v82 = qword_10003FF28;
                      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v130 = v86;
                        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "PM: Failed to write Aligned-L fst: %@", buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v81 = qword_10003FF28;
                    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v130 = v87;
                      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "PM: Failed to write LG fst: %@", buf, 0xCu);
                    }
                  }

                  v67 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:309 userInfo:0];
                  (v2[2])(v2, 0, v67);
                }

                else
                {
                  v67 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:305 userInfo:0];
                  (v2[2])(v2, 0, v67);
                }

LABEL_81:

                v68 = v92;
LABEL_83:

                v61 = v87;
LABEL_84:

                v59 = v93;
LABEL_85:

                v66 = v99;
LABEL_86:

                v26 = v100;
LABEL_87:

                v24 = v108;
LABEL_88:

                v21 = v111;
                goto LABEL_89;
              }
            }
          }
        }
      }
    }

    v67 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:4 userInfo:0];
    (v2[2])(v2, 0, v67);
    goto LABEL_81;
  }

  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v130 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "PM: Fetch asset error %@", buf, 0xCu);
  }

  (v2[2])(v2, 0, v5);
LABEL_90:

  v69 = qword_10003FF28;
  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "PM: Exiting...", buf, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100011110(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41)
{
  if (a2)
  {

    objc_begin_catch(a1);
    JUMPOUT(0x100010820);
  }

  _Unwind_Resume(a1);
}

void sub_100011650(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void sub_1000117E0(uint64_t a1)
{
  v2 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
  v3 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011904;
  v5[3] = &unk_100038F00;
  v4 = v2;
  v6 = v4;
  v7 = *(a1 + 40);
  [v4 updateSpeechProfileWithLanguage:v3 modelOverridePath:0 completion:v5];
}

void sub_100011904(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_10003FF28;
  v5 = os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *v9 = 138412290;
      *&v9[4] = v3;
      v6 = "Error while updating speech profile: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, v9, v8);
    }
  }

  else if (v5)
  {
    *v9 = 0;
    v6 = "Successfully updated speech profile";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  [*(a1 + 32) invalidate];
  xpc_transaction_exit_clean();
}

void sub_100012114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  v47 = v45;

  _Block_object_dispose((v46 - 224), 8);
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v46 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_100012250(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v7, v8);
  }

  xpc_transaction_exit_clean();
}

uint64_t sub_1000122FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012314(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v18 = v8;

  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v15 = v9;

  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v10;
}

void sub_1000123D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v7 = v3;
  v5 = [v3 prons];
  v6 = [v7 orthography];
  [v4 setObject:v5 forKey:v6];
}

void sub_100012660(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_10003FF28;
  v7 = os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      v8 = "UaaP: Error while training temporary all-app LM: %@";
      v9 = v6;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    LOWORD(v11) = 0;
    v8 = "UaaP: Finished rebuilding temporary all-app LM";
    v9 = v6;
    v10 = 2;
    goto LABEL_6;
  }
}

void sub_100012828(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_10003FF28;
  v7 = os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      v8 = "UaaP: Error while training all-app LM: %@";
      v9 = v6;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    LOWORD(v11) = 0;
    v8 = "UaaP: Finished rebuilding all-app LM";
    v9 = v6;
    v10 = 2;
    goto LABEL_6;
  }
}

void sub_100012A0C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    v6 = sub_100012AD0(*(a1 + 32), @"pruned");
    [v6 enumerateObjectsUsingBlock:&stru_100038E38];
  }

  (*(*(a1 + 40) + 16))();
}

id sub_100012AD0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100012EE4(v3);
  v6 = +[NSFileManager defaultManager];
  v18 = 0;
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:&v18];
  v8 = v18;

  if (v8)
  {
    v9 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
    {
      *v21 = 138412546;
      *&v21[4] = v5;
      *&v21[12] = 2112;
      *&v21[14] = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to enumerate UaaP pron directory at %@: %@", v21, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    *v21 = 0;
    *&v21[8] = v21;
    *&v21[16] = 0x3032000000;
    v22 = sub_1000122FC;
    v23 = sub_10001230C;
    v24 = +[NSMutableArray array];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100012FEC;
    v14[3] = &unk_100039030;
    v15 = v5;
    v16 = v4;
    v17 = v21;
    [v7 enumerateObjectsUsingBlock:v14];
    v11 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      v12 = *(*&v21[8] + 40);
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "UaaP: Arpa models files used for interpolation: %@", buf, 0xCu);
    }

    v10 = *(*&v21[8] + 40);

    _Block_object_dispose(v21, 8);
  }

  return v10;
}

void sub_100012D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_100012DC4(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[NSFileManager defaultManager];
  v9 = 0;
  v6 = [v5 removeItemAtPath:v4 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "UaaP: Error: failed to remove pruned LM at %@: %@", buf, 0x16u);
    }
  }
}

id sub_100012EE4(void *a1)
{
  v1 = a1;
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  v4 = [NSString stringWithFormat:@"Assistant/SpeechModels/%@", v1];
  v5 = [v3 stringByAppendingPathComponent:v4];
  v6 = [v5 stringByStandardizingPath];

  return v6;
}

void sub_100012FEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqualToString:@"allApp"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"tempAllApp") & 1) == 0)
  {
    v4 = [*(a1 + 32) stringByAppendingPathComponent:v3];
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = [v4 stringByAppendingPathComponent:?];

      v5 = v6;
    }

    v7 = +[NSFileManager defaultManager];
    v8 = [v7 fileExistsAtPath:v5];

    if (v8)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v5];
    }

    else
    {
      v9 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to find ARPA file: %@", &v10, 0xCu);
      }
    }
  }
}

void sub_100013294(uint64_t a1)
{
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100013AF0;
  v41[3] = &unk_100038A88;
  v42 = *(a1 + 64);
  v2 = objc_retainBlock(v41);
  v3 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UaaP: Interpolating %@ Lm.", &buf, 0xCu);
  }

  v5 = sub_100012EE4(*(a1 + 40));
  v6 = [v5 stringByAppendingPathComponent:*(a1 + 32)];

  if (![*(a1 + 40) length])
  {
    v10 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:253 userInfo:0];
    (v2[2])(v2, &__NSDictionary0__struct, v10);

LABEL_16:
    if ([v6 length])
    {
      [_EARNgramLmModel removeWithDirectory:v6];
    }

    goto LABEL_18;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x3032000000;
  v49 = sub_1000122FC;
  v50 = sub_10001230C;
  v51 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000122FC;
  v39 = sub_10001230C;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000122FC;
  v33 = sub_10001230C;
  v34 = 0;
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100013B7C;
  v28[3] = &unk_100038D58;
  v28[4] = &buf;
  v28[5] = &v35;
  v28[6] = &v29;
  [v7 _assetForLanguage:v8 completion:v28];
  if (v30[5])
  {
    (v2[2])(v2, &__NSDictionary0__struct);
    v9 = 0;
  }

  else
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100013C38;
    v25[3] = &unk_100038DD0;
    v26 = *(a1 + 40);
    p_buf = &buf;
    v22 = objc_retainBlock(v25);
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:*(a1 + 40) forKeyedSubscript:@"language"];
    [v11 setObject:*(*(&buf + 1) + 40) forKeyedSubscript:@"asset"];
    v24 = sub_100012AD0(*(a1 + 40), *(a1 + 56));
    [v11 setObject:? forKeyedSubscript:?];
    v23 = +[NSDate date];
    v12 = [_EARLmInterpolator interpolateArpaFilePaths:v24 configPath:v36[5] dataRoot:@"app-lm.data" modelRoot:@"app-lm.NGRAM"];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:v23];
    v14 = [NSNumber numberWithDouble:?];
    [v11 setObject:v14 forKeyedSubscript:@"executionTime"];

    [v12 setProtectionClass:NSFileProtectionNone];
    v15 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "UaaP: Done with interpolation", v45, 2u);
    }

    v9 = [v12 writeToDirectory:v6];
    if (v9)
    {
      (v2[2])(v2, v11, 0);
    }

    else
    {
      v16 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *v45 = 138412290;
        v46 = v6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "UaaP: Write failure: %@", v45, 0xCu);
      }

      v17 = [NSString stringWithFormat:@"Write failure: %@", v6];
      v43 = NSLocalizedDescriptionKey;
      v18 = (v22[2])(v22, v17);
      v44 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:3 userInfo:v19];
      (v2[2])(v2, v11, v20);
    }
  }

  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&buf, 8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  v21 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "UaaP: Exiting...", &buf, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100013920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a2)
  {

    _Block_object_dispose(&a26, 8);
    _Block_object_dispose(&a32, 8);

    _Block_object_dispose((v49 - 176), 8);
    objc_begin_catch(exception_object);
    JUMPOUT(0x100013864);
  }

  _Unwind_Resume(exception_object);
}

void sub_100013AF0(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }

  xpc_transaction_exit_clean();
}

void sub_100013B7C(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v18 = v8;

  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v15 = v9;

  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v10;
}

id sub_100013C38(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithFormat:@"language=%@ asset=%@: %@", *(a1 + 32), *(*(*(a1 + 40) + 8) + 40), a2];

  return v2;
}

void sub_100013DD4(uint64_t a1)
{
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1000146CC;
  v56[3] = &unk_100038D30;
  v57 = *(a1 + 72);
  v2 = objc_retainBlock(v56);
  v3 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UaaP: Training AppLm.", buf, 2u);
  }

  if ([*(a1 + 32) length])
  {
    *buf = 0;
    v51 = buf;
    v52 = 0x3032000000;
    v53 = sub_1000122FC;
    v54 = sub_10001230C;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_1000122FC;
    v48 = sub_10001230C;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_1000122FC;
    v42 = sub_10001230C;
    v43 = 0;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100014778;
    v37[3] = &unk_100038D58;
    v37[4] = buf;
    v37[5] = &v44;
    v37[6] = &v38;
    [v4 _assetForLanguage:v5 completion:v37];
    if (v39[5])
    {
      (v2[2])(v2, &__NSDictionary0__struct, &__NSArray0__struct);
LABEL_23:
      _Block_object_dispose(&v38, 8);

      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_24;
    }

    v7 = *(a1 + 48);
    v8 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v45[5];
      *v58 = 138412802;
      v59 = v9;
      v60 = 2112;
      v61 = v10;
      v62 = 2112;
      v63 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "UaaP: Training with language=%@ configuration=%@ directory=%@", v58, 0x20u);
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:*(a1 + 32) forKeyedSubscript:@"language"];
    [v11 setObject:*(v51 + 5) forKeyedSubscript:@"asset"];
    v12 = [*(a1 + 48) stringByDeletingLastPathComponent];
    v13 = [*(a1 + 48) lastPathComponent];
    v14 = [NSString stringWithFormat:@".%@", v13];
    v15 = [v12 stringByAppendingPathComponent:v14];

    v16 = +[NSFileManager defaultManager];
    v17 = [v15 stringByDeletingLastPathComponent];
    [v16 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:0];

    if (([_EARAppLmArtifact transitionArtifactAt:*(a1 + 56) toStage:5 configPath:v45[5] dataRoot:0 estimationRoot:0 minimize:1 saveTo:v15]& 1) != 0)
    {
      v18 = +[NSFileManager defaultManager];
      [v18 removeItemAtPath:*(a1 + 48) error:0];

      v19 = +[NSFileManager defaultManager];
      v20 = *(a1 + 48);
      v36 = 0;
      v21 = [v19 moveItemAtPath:v15 toPath:v20 error:&v36];
      v22 = v36;

      if (v21)
      {
        v23 = *(a1 + 56);
        v24 = *(a1 + 64);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100014834;
        v31[3] = &unk_100038D80;
        v25 = *(a1 + 40);
        v32 = *(a1 + 48);
        v33 = *(a1 + 56);
        v34 = *(a1 + 32);
        v35 = *(a1 + 64);
        [v25 extractBundledOovs:v23 appLmDataFileSandboxExtension:0 appBundleId:v24 completion:v31];

LABEL_20:
        v30 = qword_10003FF28;
        if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
        {
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "UaaP: Exiting...", v58, 2u);
        }

        xpc_transaction_exit_clean();

        goto LABEL_23;
      }

      v28 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *v58 = 138412290;
        v59 = v22;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "UaaP: Failed to rename temporary app lm model file: %@", v58, 0xCu);
      }

      v29 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:251 userInfo:&__NSDictionary0__struct];
      (v2[2])(v2, &__NSDictionary0__struct, &__NSArray0__struct, v29);
    }

    else
    {
      v26 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "UaaP: Failed to train app-specific LM", v58, 2u);
      }

      v27 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:251 userInfo:&__NSDictionary0__struct];
      (v2[2])(v2, &__NSDictionary0__struct, &__NSArray0__struct, v27);
    }

    if ([v7 length])
    {
      [_EARNgramLmModel removeWithDirectory:v7];
    }

    goto LABEL_20;
  }

  v6 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:253 userInfo:0];
  (v2[2])(v2, &__NSDictionary0__struct, &__NSArray0__struct, v6);

LABEL_24:
}

void sub_100014504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x100014410);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000146CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v7, v8);
  }

  xpc_transaction_exit_clean();
}

void sub_100014778(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v18 = v8;

  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v15 = v9;

  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v10;
}

void sub_100014834(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[_EARAppLmArtifact alloc] initWithPath:a1[4]];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 loadOovs];
  }

  else
  {
    v10 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      v11 = a1[5];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "UaaP: Failed to read app lm artifact at %@", buf, 0xCu);
    }

    v9 = v5;
  }

  v12 = v9;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v13 = a1[6];
    v14 = a1[7];
    v19 = 0;
    v15 = [CESRUaapData writeUaapOovsForLanguage:v13 bundleId:v14 customProns:v6 newOovs:v12 error:&v19];
    v16 = v19;
    if ((v15 & 1) == 0)
    {
      v17 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        v18 = a1[7];
        *buf = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "UaaP: Error while writing OOVs for %@: %@", buf, 0x16u);
      }
    }
  }
}

void sub_100014B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  v25 = v23;

  _Unwind_Resume(a1);
}

void sub_100014BD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = qword_10003FF28;
  v11 = os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v17 = 138412802;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v9;
      v14 = "UaaP: UaaP: Error while building language model for %@ with locale %@: %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v14, &v17, 0x20u);
    }
  }

  else if (v11)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = 138412802;
    v18 = v15;
    v19 = 2112;
    v20 = v16;
    v21 = 2112;
    v22 = v7;
    v14 = "UaaP: UaaP: Finished training app LM for %@ with locale %@: %@";
    goto LABEL_6;
  }
}

void sub_100014E98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = qword_10003FF28;
  v11 = os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v19 = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v9;
      v14 = "UaaP: UaaP: Error while building language model for %@ with locale %@: %@";
      v15 = v10;
      v16 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v14, &v19, v16);
    }
  }

  else if (v11)
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = 138412546;
    v20 = v17;
    v21 = 2112;
    v22 = v18;
    v14 = "UaaP: UaaP: Finished training app LM for %@ with locale %@";
    v15 = v10;
    v16 = 22;
    goto LABEL_6;
  }
}

void sub_1000151F4(uint64_t a1)
{
  v2 = [[SFEntitledAssetConfig alloc] initWithLanguage:*(a1 + 32) assetType:3];
  v3 = objc_alloc_init(SMTSpeechAssets);
  v11 = 0;
  v4 = [(SMTSpeechAssets *)v3 fetchAssetPathForAssetConfig:v2 outError:&v11];
  v5 = v11;

  if (v4 && [v4 length])
  {
    v6 = [v4 stringByAppendingPathComponent:@"mini.json"];
    v7 = v4;
    v8 = [[_EARSpeechModelInfo alloc] initWithConfig:v6];
    v9 = [v8 version];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v6 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:102 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, 0, v6);
  }
}

void sub_1000155AC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (v10)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000186D4;
      v13[3] = &unk_100038CE0;
      v15 = *(a1 + 32);
      v14 = v9;
      [v10 completeWithJSONResult:v11 binaryResult:v12 completionHandler:v13];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      +[SMTUtils cleanupTemporaryDirectory];
      xpc_transaction_exit_clean();
    }
  }
}

void sub_100015708(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (v6)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100018688;
      v8[3] = &unk_100038CE0;
      v10 = *(a1 + 32);
      v9 = v5;
      [v7 completeWithError:v9 completionHandler:v8];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      +[SMTUtils cleanupTemporaryDirectory];
      xpc_transaction_exit_clean();
    }
  }
}

void sub_100015830(uint64_t a1)
{
  v2 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Start Global NNLM training in queue", buf, 2u);
  }

  v3 = [DESRecipeEvaluationSession alloc];
  v4 = *(a1 + 32);
  v55 = 0;
  v5 = [v3 initWithResumptionURL:v4 error:&v55];
  v34 = v55;
  v6 = qword_10003FF28;
  if (v5)
  {
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Successfully reconstructed session from url: %@", buf, 0xCu);
    }

    v8 = [v5 recipe];
    v9 = [v8 recipeUserInfo];

    context = objc_autoreleasePoolPush();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v58 = sub_1000122FC;
    v59 = sub_10001230C;
    v60 = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x3032000000;
    v53[3] = sub_1000122FC;
    v53[4] = sub_10001230C;
    v54 = [[SMTGlobalNNLM alloc] initWithRecipe:v9];
    v33 = dispatch_queue_create("com.apple.SpeechModelTrainingConnection.download", 0);
    v10 = [v9 objectForKeyedSubscript:@"downloadTimeout"];
    [v10 doubleValue];
    if (v11 == 0.0)
    {
      v12 = 60.0;
    }

    else
    {
      v12 = v11;
    }

    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v52 = 0;
    v13 = *(a1 + 40);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100015EAC;
    v46[3] = &unk_100038BC8;
    v50 = v12;
    v49 = v51;
    v46[4] = v13;
    v48 = *(a1 + 48);
    v14 = v5;
    v47 = v14;
    v15 = [v13 createDispatchTimerWithInterval:v33 queue:v46 block:v12];
    v16 = [v14 recipe];
    v17 = [v16 attachments];

    v18 = [v14 recipe];
    v19 = [v18 attachments];
    v20 = [SMTGlobalNNLM compressedAttachmentURLFromRecipe:v9 attachments:v19];

    if (v20)
    {
      v56 = v20;
      v21 = [NSArray arrayWithObjects:&v56 count:1, context];

      v17 = v21;
    }

    v22 = [SMTAttachmentsDownload alloc];
    v23 = [(SMTAttachmentsDownload *)v22 initWithQueue:qword_10003FF30];
    v24 = *(a1 + 40);
    v25 = *(v24 + 24);
    *(v24 + 24) = v23;

    v26 = *(*(a1 + 40) + 24);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100016040;
    v35[3] = &unk_100038C90;
    v43 = v51;
    v27 = v15;
    v28 = *(a1 + 40);
    v36 = v27;
    v37 = v28;
    v38 = v14;
    v41 = *(a1 + 48);
    v29 = v20;
    v39 = v29;
    v30 = v9;
    v40 = v30;
    v44 = v53;
    v45 = buf;
    v42 = *(a1 + 56);
    [v26 downloadAttachments:v17 completion:v35];

    _Block_object_dispose(v51, 8);
    _Block_object_dispose(v53, 8);

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      *&buf[14] = v34;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to reconstruct session from url: %@ error: %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100015EAC(void *a1)
{
  *(*(a1[7] + 8) + 24) = 1;
  v2 = [NSString stringWithFormat:@"Attachments download timeout after %.2f seconds", a1[8]];
  v8 = NSLocalizedDescriptionKey;
  v9 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v3];

  v5 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v7 = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Attachments download timed out: %@", buf, 0xCu);
  }

  [*(a1[4] + 24) cancel];
  (*(a1[6] + 16))();
}

void sub_100016040(uint64_t a1, void *a2, void *a3)
{
  v132 = a2;
  v5 = a3;
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    goto LABEL_5;
  }

  dispatch_source_cancel(*(a1 + 32));
  if (([*(a1 + 40) shouldStop] & 1) != 0 || objc_msgSend(*(a1 + 48), "taskIsDeferred"))
  {
    v6 = *(a1 + 72);
    v7 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:4 userInfo:0];
    (*(v6 + 16))(v6, v7, *(a1 + 48));

    goto LABEL_5;
  }

  if (!v5)
  {
    v9 = v132;
    v10 = v9;
    v131 = a1;
    if (*(a1 + 56) && [v9 count])
    {
      v11 = [v10 firstObject];
      v165 = 0;
      v130 = [SMTUtils decompressArchiveWithURL:v11 outError:&v165];
      v12 = v165;

      if (!v130 || v12)
      {
        v59 = qword_10003FF28;
        if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
        {
          *__dst = 138412290;
          *&__dst[4] = v12;
          _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to extract test set: %@", __dst, 0xCu);
        }

        (*(*(a1 + 72) + 16))();

        goto LABEL_95;
      }
    }

    else
    {
      v130 = v10;
    }

    v129 = [*(a1 + 64) objectForKeyedSubscript:@"trainingDataReplacement"];

    v133 = objc_opt_new();
    v137 = objc_opt_new();
    if (v129)
    {
      v119 = [*(a1 + 64) objectForKeyedSubscript:@"trainingDataReplacement"];
      [SMTGlobalNNLM attachmentURL:v130 withName:v119];
      v121 = v164 = 0;
      v13 = [NSString stringWithContentsOfURL:v121 encoding:4 error:&v164];
      v123 = v164;
      v125 = v13;
      v14 = +[NSCharacterSet newlineCharacterSet];
      v127 = [v13 componentsSeparatedByCharactersInSet:v14];

      v15 = [*(v131 + 64) objectForKeyedSubscript:@"splitOffsets"];
      v16 = v15;
      v17 = &off_10003B278;
      if (v15)
      {
        v17 = v15;
      }

      v18 = v17;

      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      obj = v127;
      v19 = [obj countByEnumeratingWithState:&v160 objects:v182 count:16];
      if (v19)
      {
        v20 = *v161;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v161 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v160 + 1) + 8 * i);
            v23 = v22;
            v24 = [v22 UTF8String];
            v25 = v18;
            v26 = strlen(v24);
            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_100017944();
            }

            v27 = v26;
            if (v26 >= 0x17)
            {
              operator new();
            }

            v186 = v26;
            if (v26)
            {
              memcpy(__dst, v24, v26);
            }

            __dst[v27] = 0;
            v28 = sub_10001795C(__dst);
            if (v186 < 0)
            {
              operator delete(*__dst);
            }

            v29 = [v25 objectAtIndexedSubscript:0];
            [v29 floatValue];
            v30 = (v28 % 0x3E8) / 1000.0;
            v32 = v30 > v31;

            if (v32)
            {
              v33 = [v25 objectAtIndexedSubscript:1];
              [v33 floatValue];
              v35 = v30 > v34;

              if (v35)
              {
                v36 = 2;
              }

              else
              {
                v36 = 1;
              }
            }

            else
            {
              v36 = 0;
            }

            v37 = +[NSCharacterSet whitespaceCharacterSet];
            v38 = [v22 componentsSeparatedByCharactersInSet:v37];

            if ([v38 count])
            {
              v39 = v137;
              if (v36 == 2 || (v39 = v133, !v36))
              {
                [v39 addObject:v38];
              }
            }
          }

          v19 = [obj countByEnumeratingWithState:&v160 objects:v182 count:16];
        }

        while (v19);
      }

      v40 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *__dst = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "data from attachments loaded", __dst, 2u);
      }

      v41 = v131;
LABEL_46:
      [*(*(*(v41 + 96) + 8) + 40) setTrainData:v133];
      [*(*(*(v41 + 96) + 8) + 40) setEvalData:v137];
      if (!v129)
      {
        v60 = [*(v41 + 64) objectForKeyedSubscript:@"minDataCount"];
        v61 = v60;
        if (!v60)
        {
          v60 = &off_10003B198;
        }

        v62 = [v60 unsignedIntValue];

        v63 = [SMTUserData checkDataAmountQuickly:v62];
        v64 = *(*(v131 + 104) + 8);
        v65 = *(v64 + 40);
        *(v64 + 40) = v63;

        v66 = *(*(*(v131 + 104) + 8) + 40);
        v41 = v131;
        if (v66)
        {
          v67 = qword_10003FF28;
          if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
          {
            *__dst = 138412290;
            *&__dst[4] = v66;
            _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%@", __dst, 0xCu);
          }

          (*(*(v131 + 72) + 16))();
          goto LABEL_94;
        }
      }

      v42 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *__dst = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Successfully downloaded attachments for Global NNLM training", __dst, 2u);
      }

      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_100018074;
      v145[3] = &unk_100038C40;
      v148 = *(v41 + 72);
      v44 = *(v41 + 48);
      v43 = (v41 + 48);
      v45 = v44;
      v46 = *(v43 - 1);
      v146 = v45;
      v147 = v46;
      v47 = objc_retainBlock(v145);
      v48 = qword_10003FF30;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000182C0;
      block[3] = &unk_100038C68;
      v143 = *(v131 + 96);
      v49 = v130;
      v144 = *(v131 + 104);
      v139 = v49;
      v141 = v47;
      v140 = *v43;
      v142 = *(v131 + 80);
      v50 = v47;
      dispatch_async(v48, block);

      v51 = v148;
LABEL_93:

LABEL_94:
LABEL_95:
      v5 = 0;
      goto LABEL_5;
    }

    obja = objc_alloc_init(SMTSpeechAssets);
    v52 = [*(a1 + 64) objectForKeyedSubscript:@"language"];
    v53 = v52;
    if (!v52)
    {
      v52 = @"en-US";
    }

    v54 = [(__CFString *)v52 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    v159 = 0;
    v55 = [(SMTSpeechAssets *)obja fetchAssetPathForInstalledLanguage:v54 outError:&v159];
    v51 = v159;
    v134 = v55;
    if (v51 || ![v55 length])
    {
      v180 = NSLocalizedDescriptionKey;
      v181 = @"Unable to fetch asset";
      v56 = [NSDictionary dictionaryWithObjects:&v181 forKeys:&v180 count:1];
      v57 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:102 userInfo:v56];

      v58 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
      {
        *__dst = 138412546;
        *&__dst[4] = v54;
        v184 = 2112;
        v185 = v57;
        _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Failed to get asset for language %@: %@", __dst, 0x16u);
      }

      (*(*(a1 + 72) + 16))();

      goto LABEL_93;
    }

    v68 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      *__dst = 138412290;
      *&__dst[4] = v55;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Found speech asset in %@", __dst, 0xCu);
    }

    v128 = [v55 stringByAppendingPathComponent:@"mini.json"];
    v69 = [*(a1 + 64) valueForKey:@"dataConfigFilename"];
    v70 = v69 == 0;

    if (v70)
    {
      v178 = NSLocalizedDescriptionKey;
      v94 = [NSString stringWithFormat:@"Unable to read recipe[%@]", @"dataConfigFilename"];
      v179 = v94;
      v95 = [NSDictionary dictionaryWithObjects:&v179 forKeys:&v178 count:1];
      v96 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v95];

      v97 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
      {
        *__dst = 138412290;
        *&__dst[4] = v96;
        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to find data config url: %@", __dst, 0xCu);
      }

      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v71 = [*(a1 + 64) objectForKeyedSubscript:@"dataConfigFilename"];
      v126 = [SMTGlobalNNLM attachmentURL:v130 withName:v71];

      if (v126)
      {
        [v126 path];
        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v124 = v156 = 0u;
        v174[0] = v124;
        v174[1] = v128;
        v72 = [NSArray arrayWithObjects:v174 count:2];
        v73 = [v72 countByEnumeratingWithState:&v155 objects:v175 count:16];
        if (v73)
        {
          v74 = *v156;
          while (2)
          {
            for (j = 0; j != v73; j = j + 1)
            {
              if (*v156 != v74)
              {
                objc_enumerationMutation(v72);
              }

              v76 = *(*(&v155 + 1) + 8 * j);
              v77 = +[NSFileManager defaultManager];
              v78 = [v77 fileExistsAtPath:v76];

              if ((v78 & 1) == 0)
              {
                v172 = NSLocalizedDescriptionKey;
                v98 = [NSString stringWithFormat:@"File does not exist %@", v76];
                v173 = v98;
                v99 = [NSDictionary dictionaryWithObjects:&v173 forKeys:&v172 count:1];
                v100 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:102 userInfo:v99];

                v101 = qword_10003FF28;
                if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
                {
                  *__dst = 138412290;
                  *&__dst[4] = v100;
                  _os_log_error_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "Failed to load file: %@", __dst, 0xCu);
                }

                (*(*(v131 + 72) + 16))();

                goto LABEL_92;
              }
            }

            v73 = [v72 countByEnumeratingWithState:&v155 objects:v175 count:16];
            if (v73)
            {
              continue;
            }

            break;
          }
        }

        v79 = [[_EARLmData alloc] initWithConfiguration:v124 recognizerConfiguration:v128];
        if (v79)
        {
          v153[0] = _NSConcreteStackBlock;
          v153[1] = 3221225472;
          v153[2] = sub_100017DAC;
          v153[3] = &unk_100038BF0;
          v80 = v79;
          v154 = v80;
          v122 = objc_retainBlock(v153);
          v81 = [v80 sources];
          v82 = [v80 queryLimit];
          [v80 maxAge];
          v84 = v83;
          [v80 minAge];
          [SMTUserData enumerateDocumentSources:v81 limit:v82 maxAge:v122 minAge:v84 block:v85];

          v151[0] = _NSConcreteStackBlock;
          v151[1] = 3221225472;
          v151[2] = sub_100017E5C;
          v151[3] = &unk_100038C18;
          v86 = v133;
          v152 = v86;
          v120 = objc_retainBlock(v151);
          [v80 enumerateSentencesOfType:0 block:v120];
          v87 = [v86 count];
          v88 = [*(v131 + 64) objectForKeyedSubscript:@"minDataCount"];
          LODWORD(v87) = v87 < [v88 unsignedIntValue];

          if (v87)
          {
            v168 = NSLocalizedDescriptionKey;
            v89 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Insufficient training data (%lu)", [v86 count]);
            v169 = v89;
            v90 = [NSDictionary dictionaryWithObjects:&v169 forKeys:&v168 count:1];
            v91 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:2 userInfo:v90];

            v92 = qword_10003FF28;
            if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
            {
              *__dst = 138412290;
              *&__dst[4] = v91;
              _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "Insufficient training data: %@", __dst, 0xCu);
            }

            (*(*(v131 + 72) + 16))();
            v93 = 0;
          }

          else
          {
            v149[0] = _NSConcreteStackBlock;
            v149[1] = 3221225472;
            v149[2] = sub_100017F68;
            v149[3] = &unk_100038C18;
            v110 = v137;
            v150 = v110;
            v111 = objc_retainBlock(v149);
            [v80 enumerateSentencesOfType:2 block:v111];
            v112 = [v110 count];
            v93 = v112 != 0;
            if (v112)
            {
              v113 = qword_10003FF28;
              if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
              {
                *__dst = 0;
                _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "data from device loaded", __dst, 2u);
              }

              v114 = *(v131 + 40);
              v115 = *(v131 + 64);
              v116 = [*(*(*(v131 + 96) + 8) + 40) vocab];
              [v114 recordWordsAndOov:v115 data:v80 vocab:v116];
            }

            else
            {
              v166 = NSLocalizedDescriptionKey;
              v167 = @"No data left for evaluation";
              v117 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
              v116 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:2 userInfo:v117];

              v118 = qword_10003FF28;
              if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
              {
                *__dst = 138412290;
                *&__dst[4] = v116;
                _os_log_error_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "Insufficient evaluation data: %@", __dst, 0xCu);
              }

              (*(*(v131 + 72) + 16))();
            }

            v91 = v150;
          }

          v41 = v131;
          if (!v93)
          {
            goto LABEL_94;
          }

          goto LABEL_46;
        }

        v170 = NSLocalizedDescriptionKey;
        v171 = @"Unable to create data loader";
        v107 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
        v108 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v107];

        v109 = qword_10003FF28;
        if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
        {
          *__dst = 138412290;
          *&__dst[4] = v108;
          _os_log_error_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "Failed to load LM data: %@", __dst, 0xCu);
        }

        (*(*(v131 + 72) + 16))();
      }

      else
      {
        v176 = NSLocalizedDescriptionKey;
        v102 = [*(a1 + 64) objectForKeyedSubscript:@"dataConfigFilename"];
        v103 = [NSString stringWithFormat:@"No data-conf file attached: %@", v102];
        v177 = v103;
        v104 = [NSDictionary dictionaryWithObjects:&v177 forKeys:&v176 count:1];
        v105 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v104];

        v106 = qword_10003FF28;
        if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
        {
          *__dst = 138412290;
          *&__dst[4] = v105;
          _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "Failed to load data config: %@", __dst, 0xCu);
        }

        (*(*(a1 + 72) + 16))();
      }
    }

LABEL_92:
    v51 = obja;
    goto LABEL_93;
  }

  v8 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
  {
    *__dst = 138412290;
    *&__dst[4] = v5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to download session attachments with error:%@", __dst, 0xCu);
  }

  (*(*(a1 + 72) + 16))();
LABEL_5:
}

unint64_t sub_10001795C(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

void sub_100017DAC(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  v11 = a2;
  v9 = a3;
  v10 = a4;
  [*(a1 + 32) addDocumentWithUUID:v11 content:v9 metadata:v10];
  *a5 = [*(a1 + 32) roomForMoreData] ^ 1;
}

void sub_100017E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  v4 = qword_10003FF28;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 componentsJoinedByString:@" "];
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "training data: %@", &v6, 0xCu);
  }
}

void sub_100017F68(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  v4 = qword_10003FF28;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 componentsJoinedByString:@" "];
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "evaluation data: %@", &v6, 0xCu);
  }
}

uint64_t sub_100018074(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if ((*(*(a1 + 40) + 40) & 1) == 0 && ![*(a1 + 32) taskIsDeferred])
    {
      v12 = 0;
      goto LABEL_11;
    }

    v14 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithFormat:@"Training canceled after %@", v5];
    v15 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:4 userInfo:v9];

    v11 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v12 = 1;
LABEL_11:

  return v12;
}

void sub_1000182C0(uint64_t a1)
{
  [*(*(*(a1 + 64) + 8) + 40) setAttachments:*(a1 + 32)];
  v2 = [*(*(*(a1 + 64) + 8) + 40) loadData];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (((*(*(a1 + 48) + 16))() & 1) == 0)
  {
    v5 = [*(*(*(a1 + 64) + 8) + 40) setup];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (((*(*(a1 + 48) + 16))() & 1) == 0)
    {
      v8 = [*(*(*(a1 + 64) + 8) + 40) evaluate];
      v9 = *(*(a1 + 72) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (((*(*(a1 + 48) + 16))() & 1) == 0)
      {
        v11 = [*(*(*(a1 + 64) + 8) + 40) train];
        v12 = *(*(a1 + 72) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        if (((*(*(a1 + 48) + 16))() & 1) == 0)
        {
          v14 = [*(*(*(a1 + 64) + 8) + 40) evaluate];
          v15 = *(*(a1 + 72) + 8);
          v16 = *(v15 + 40);
          *(v15 + 40) = v14;

          if (((*(*(a1 + 48) + 16))() & 1) == 0)
          {
            v17 = *(*(*(a1 + 64) + 8) + 40);
            v18 = [*(a1 + 40) recipe];
            v19 = [v17 computeDelta:{objc_msgSend(v18, "pluginShouldAddNoiseAndEncryptResult")}];
            v20 = *(*(a1 + 72) + 8);
            v21 = *(v20 + 40);
            *(v20 + 40) = v19;

            if (((*(*(a1 + 48) + 16))() & 1) == 0)
            {
              v22 = [*(*(*(a1 + 64) + 8) + 40) delta];
              v23 = [*(*(*(a1 + 64) + 8) + 40) results];
              if (![*(*(*(a1 + 64) + 8) + 40) deltaIsPartial] || (objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "evaluatePartialDelta"), v24 = objc_claimAutoreleasedReturnValue(), v25 = *(*(a1 + 72) + 8), v26 = *(v25 + 40), *(v25 + 40) = v24, v26, ((*(*(a1 + 48) + 16))() & 1) == 0))
              {
                v27 = *(*(a1 + 64) + 8);
                v28 = *(v27 + 40);
                *(v27 + 40) = 0;

                v29 = qword_10003FF28;
                if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
                {
                  v30 = 138412290;
                  v31 = v23;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Training completed with result=%@", &v30, 0xCu);
                }

                (*(*(a1 + 56) + 16))();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100018688(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32));
  }

  +[SMTUtils cleanupTemporaryDirectory];

  xpc_transaction_exit_clean();
}

void sub_1000186D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32));
  }

  +[SMTUtils cleanupTemporaryDirectory];

  xpc_transaction_exit_clean();
}

id sub_100018C4C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10003FF40;
  v7 = qword_10003FF40;
  if (!qword_10003FF40)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100018F80;
    v3[3] = &unk_1000391A0;
    v3[4] = &v4;
    sub_100018F80(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100018D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = 0;
  *&v8 = 138412290;
  v17 = v8;
  while (v7 < [v6 intValue])
  {
    v9 = *(a1 + 32);
    v21 = v5;
    v10 = [NSArray arrayWithObjects:&v21 count:1];
    LOBYTE(v9) = [v9 record:v10];

    if ((v9 & 1) == 0)
    {
      v11 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
      {
        *buf = v17;
        v20 = v5;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "fail to save %@ for unigram statistics aggregation", buf, 0xCu);
      }
    }

    ++v7;
  }

  v12 = [*(a1 + 40) indexForWord:v5];
  if (v12 == [*(a1 + 40) unknownWordIndex])
  {
    [*(a1 + 48) addObject:v5];
    for (i = 0; i < [v6 intValue]; ++i)
    {
      v14 = *(a1 + 56);
      v18 = v5;
      v15 = [NSArray arrayWithObjects:&v18 count:1];
      LOBYTE(v14) = [v14 record:v15];

      if ((v14 & 1) == 0)
      {
        v16 = qword_10003FF28;
        if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_DEBUG))
        {
          *buf = v17;
          v20 = v5;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "fail save OOV %@ for later analysis", buf, 0xCu);
        }
      }
    }
  }
}

Class sub_100018F80(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_10003FF48)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_1000191B0;
    v7[4] = &unk_1000391D8;
    v7[5] = v7;
    v8 = off_100039010;
    v9 = 0;
    qword_10003FF48 = _sl_dlopen();
  }

  if (!qword_10003FF48)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *DifferentialPrivacyLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"SpeechModelTrainingConnection.mm" lineNumber:32 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("_DPStringRecorder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class get_DPStringRecorderClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"SpeechModelTrainingConnection.mm" lineNumber:33 description:{@"Unable to find class %s", "_DPStringRecorder"}];

LABEL_10:
    __break(1u);
  }

  qword_10003FF40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000191B0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10003FF48 = result;
  return result;
}

void sub_1000193DC(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.SpeechModelTrainingWaiting", v2);

  v4 = dispatch_time(0, 240000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B174;
  block[3] = &unk_100038A60;
  block[4] = *(a1 + 32);
  v102 = v3;
  dispatch_after(v4, v3, block);
  v124[0] = _NSConcreteStackBlock;
  v124[1] = 3221225472;
  v124[2] = sub_10001B1E8;
  v124[3] = &unk_100038A88;
  v125 = *(a1 + 56);
  v105 = objc_retainBlock(v124);
  v5 = *(a1 + 40);
  v104 = *(a1 + 48);
  v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v108 = [v6 firstObject];

  v7 = [v108 stringByAppendingPathComponent:@"Assistant/SpeechPersonalizedLM"];
  v106 = [v7 stringByStandardizingPath];

  v8 = [v108 stringByAppendingPathComponent:@"Assistant/SpeechPersonalizedLM_Fides"];
  v107 = [v8 stringByStandardizingPath];

  v9 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v146 = v106;
    v147 = 2112;
    v148 = v107;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PLM: personalizedLMPath=%@ fidesPersonalizedLMPath=%@", buf, 0x16u);
  }

  v10 = qword_10003FF28;
  if (*(a1 + 64))
  {
    if (*(a1 + 65))
    {
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PLM: Client is DictationPersonalizationFidesPlugin", buf, 2u);
      }

      [_EARLmModel removeWithDirectory:v107];
      v11 = v107;
LABEL_12:
      v12 = v11;
      goto LABEL_16;
    }
  }

  else if (*(a1 + 65))
  {
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PLM: Client is 24-hour job", buf, 2u);
    }

    [_EARLmModel removeWithDirectory:v106];
    [_EARLmModel removeWithDirectory:v107];
    v11 = v106;
    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PLM: Client is PersonalizedLmFidesPlugin", buf, 2u);
  }

  v12 = 0;
LABEL_16:
  if (![*(a1 + 32) shouldStop])
  {
    v14 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v146 = v5;
      v147 = 2112;
      v148 = v104;
      v149 = 2112;
      v150 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "PLM: Training start with language=%@ configuration=%@ directory=%@", buf, 0x20u);
    }

    if (![v5 length])
    {
      v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:204 userInfo:0];
      (v105[2])(v105, 0, v13);
      goto LABEL_26;
    }

    v103 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    v15 = objc_alloc_init(SMTSpeechAssets);
    v123 = 0;
    v99 = v15;
    v100 = [(SMTSpeechAssets *)v15 fetchAssetPathForInstalledLanguage:v103 outError:&v123];
    v16 = v123;
    v17 = qword_10003FF28;
    v18 = os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO);
    v101 = v16;
    if (v16)
    {
      if (v18)
      {
        *buf = 138412290;
        v146 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "PLM: Fetch asset error %@", buf, 0xCu);
      }

      (v105[2])(v105, 0, v16);
      v19 = 0;
LABEL_73:

      if (v19)
      {
        goto LABEL_74;
      }

      goto LABEL_27;
    }

    if (v18)
    {
      *buf = 138412290;
      v146 = v100;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "PLM: Resolved asset=%@", buf, 0xCu);
    }

    if (![v100 length])
    {
      v25 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:102 userInfo:0];
      (v105[2])(v105, 0, v25);
      v19 = 0;
LABEL_72:

      goto LABEL_73;
    }

    v97 = [v100 stringByAppendingPathComponent:@"mini.json"];
    v20 = [[_EARSpeechModelInfo alloc] initWithConfig:v97];
    v21 = [v20 version];

    v120[0] = _NSConcreteStackBlock;
    v120[1] = 3221225472;
    v120[2] = sub_10001B270;
    v120[3] = &unk_100038AB0;
    v93 = v103;
    v121 = v93;
    v95 = v21;
    v122 = v95;
    v96 = objc_retainBlock(v120);
    if (![v104 length])
    {
      v26 = v97;

      v104 = v26;
      goto LABEL_44;
    }

    v22 = v104;
    v23 = v22;
    if (v22)
    {
      v24 = v22;
      if (realpath_DARWIN_EXTSN([v23 fileSystemRepresentation], buf))
      {
        v104 = [NSString stringWithUTF8String:buf];
LABEL_42:

        if (![v104 hasPrefix:@"/private/var/tmp/com.apple.siri-distributed-evaluation/"] || (objc_msgSend(v104, "hasSuffix:", @"/lm-personalize.json") & 1) == 0)
        {
          v39 = [[NSString alloc] initWithFormat:@"Input configuration(%@) does not match expected path", v104];
          v40 = qword_10003FF28;
          if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v146 = v39;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "PLM: %{public}@", buf, 0xCu);
          }

          v141 = NSLocalizedDescriptionKey;
          v142 = v39;
          obj = v39;
          v36 = [NSDictionary dictionaryWithObjects:&v142 forKeys:&v141 count:1];
          v37 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:206 userInfo:v36];
          (v105[2])(v105, 0, v37);
          v19 = 0;
          goto LABEL_71;
        }

LABEL_44:
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v139 = v97;
        obj = [NSArray arrayWithObjects:&v139 count:1];
        v29 = [obj countByEnumeratingWithState:&v116 objects:v140 count:16];
        if (v29)
        {
          v30 = *v117;
          while (2)
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v117 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v116 + 1) + 8 * i);
              v33 = +[NSFileManager defaultManager];
              v34 = [v33 fileExistsAtPath:v32];

              if ((v34 & 1) == 0)
              {
                v41 = qword_10003FF28;
                if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v146 = v32;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "PLM: File does not exist %@", buf, 0xCu);
                }

                v36 = [NSString stringWithFormat:@"File does not exist %@", v32];
                v137 = NSLocalizedDescriptionKey;
                v37 = (v96[2])(v96, v36);
                v138 = v37;
                v38 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                v42 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:102 userInfo:v38];
                (v105[2])(v105, 0, v42);
                v19 = 0;
                goto LABEL_63;
              }
            }

            v29 = [obj countByEnumeratingWithState:&v116 objects:v140 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        v35 = [NSURL fileURLWithPath:v104];
        v115 = 0;
        v36 = [NSString stringWithContentsOfURL:v35 encoding:4 error:&v115];
        obj = v115;

        if (obj || ([v36 containsString:@"lm-personalize"] & 1) == 0)
        {
          v43 = qword_10003FF28;
          if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "PLM: Disabled", buf, 2u);
          }

          v37 = objc_alloc_init(NSMutableDictionary);
          [v37 setObject:@"Disabled" forKeyedSubscript:NSLocalizedDescriptionKey];
          if (obj)
          {
            [v37 setObject:obj forKeyedSubscript:NSUnderlyingErrorKey];
          }

          v38 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:202 userInfo:v37];
          (v105[2])(v105, 0, v38);
          goto LABEL_69;
        }

        v37 = [[_EARLmData alloc] initWithConfiguration:v104 recognizerConfiguration:v97];
        if (!v37)
        {
          v45 = qword_10003FF28;
          if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "PLM: Cannot create data", buf, 2u);
          }

          v135 = NSLocalizedDescriptionKey;
          v38 = (v96[2])(v96, @"Cannot create data");
          v136 = v38;
          v92 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
          v46 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:201 userInfo:v92];
          (v105[2])(v105, 0, v46);
          v19 = 0;
LABEL_116:

          obj = 0;
          v42 = v92;
LABEL_63:

          goto LABEL_70;
        }

        if ([*(a1 + 32) shouldStop])
        {
          v38 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:4 userInfo:0];
          (v105[2])(v105, 0, v38);
          obj = 0;
LABEL_69:
          v19 = 0;
LABEL_70:

LABEL_71:
          v25 = v97;
          goto LABEL_72;
        }

        v38 = [[_EARLmModel alloc] initWithConfiguration:v104];
        if (v38)
        {
          v47 = [[_EARLmEvaluator alloc] initWithConfiguration:v104 recognizerConfiguration:v97];
          if (v47)
          {
            v92 = v47;
            v48 = objc_alloc_init(NSMutableDictionary);
            v49 = v93;
            v94 = v48;
            [v48 setObject:v49 forKeyedSubscript:@"language"];
            [v48 setObject:v95 forKeyedSubscript:@"asset"];
            v50 = qword_10003FF28;
            if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "PLM: Fetching data", buf, 2u);
            }

            v51 = +[NSProcessInfo processInfo];
            [v51 systemUptime];
            v53 = v52;

            v54 = [v37 sources];
            v55 = [v37 queryLimit];
            [v37 maxAge];
            v57 = v56;
            [v37 minAge];
            v59 = v58;
            v112[0] = _NSConcreteStackBlock;
            v112[1] = 3221225472;
            v112[2] = sub_10001B2C4;
            v112[3] = &unk_100038AD8;
            v60 = v37;
            v61 = *(a1 + 32);
            v90 = v60;
            v113 = v60;
            v114 = v61;
            [SMTUserData enumerateDocumentSources:v54 limit:v55 maxAge:v112 minAge:v57 block:v59];

            if ([*(a1 + 32) shouldStop])
            {
              v62 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:4 userInfo:0];
              (v105[2])(v105, 0, v62);
LABEL_101:
              v19 = 0;
              goto LABEL_114;
            }

            v67 = +[NSProcessInfo processInfo];
            [v67 systemUptime];
            v69 = v68;

            v62 = objc_alloc_init(NSMutableDictionary);
            v70 = [v90 metrics];
            [v62 addEntriesFromDictionary:v70];

            v71 = [NSNumber numberWithDouble:v69 - v53];
            [v62 setObject:v71 forKey:@"textProcessingDuration"];

            [v94 setObject:v62 forKeyedSubscript:@"data"];
            v72 = qword_10003FF28;
            if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "PLM: Start training", buf, 2u);
            }

            v111[0] = _NSConcreteStackBlock;
            v111[1] = 3221225472;
            v111[2] = sub_10001B384;
            v111[3] = &unk_100038B00;
            v111[4] = *(a1 + 32);
            if (([v38 trainWithData:v90 shouldStop:v111] & 1) == 0)
            {
              v73 = qword_10003FF28;
              if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "PLM: Stopped after training", buf, 2u);
              }

              (v105[2])(v105, v94, 0);
              goto LABEL_101;
            }

            if ([*(a1 + 32) shouldStop])
            {
              v88 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:4 userInfo:0];
              (v105[2])(v105, 0, v88);
              v19 = 0;

LABEL_114:
              v64 = v113;
              goto LABEL_115;
            }

            v89 = [v38 metrics];
            if (v89)
            {
              [v94 setObject:v89 forKeyedSubscript:@"model"];
            }

            v87 = [v38 handle];
            if (v87)
            {
              *v143 = 0;
              v109 = 0;
              v110[0] = _NSConcreteStackBlock;
              v110[1] = 3221225472;
              v110[2] = sub_10001B38C;
              v110[3] = &unk_100038B00;
              v110[4] = *(a1 + 32);
              v74 = [v92 runEvaluationWithData:v90 handle:v87 shouldStop:v110 result:&v109 bestWeight:v143];
              v91 = v109;
              if ([*(a1 + 32) shouldStop])
              {
                v76 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:4 userInfo:0];
                (v105[2])(v105, 0, v76);
              }

              else
              {
                if (v91)
                {
                  [v94 setObject:v91 forKeyedSubscript:@"eval"];
                }

                if ((v74 & 1) == 0)
                {
                  v82 = qword_10003FF28;
                  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "PLM: Stopped after evaluation", buf, 2u);
                  }

                  (v105[2])(v105, v94, 0);
                  v19 = 0;
                  goto LABEL_112;
                }

                LODWORD(v75) = *v143;
                [v38 setWeight:v75];
                v80 = [v12 length];
                v19 = v80 != 0;
                if (!v80 || ([v38 writeToDirectory:v12] & 1) != 0)
                {
                  v81 = qword_10003FF28;
                  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v146 = v94;
                    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "PLM: Done. Result: %@", buf, 0xCu);
                  }

                  (v105[2])(v105, v94, 0);
                  goto LABEL_112;
                }

                v83 = qword_10003FF28;
                if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v146 = v12;
                  _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "PLM: Write failure: %@", buf, 0xCu);
                }

                v76 = [NSString stringWithFormat:@"Write failure: %@", v12];
                v127 = NSLocalizedDescriptionKey;
                v84 = (v96[2])(v96, v76);
                v128 = v84;
                v85 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
                v86 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:3 userInfo:v85];
                (v105[2])(v105, 0, v86);
              }
            }

            else
            {
              v77 = qword_10003FF28;
              if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "PLM: Failed to get handle", buf, 2u);
              }

              v129 = NSLocalizedDescriptionKey;
              v91 = (v96[2])(v96, @"Failed to get handle");
              v130 = v91;
              v78 = [NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1];
              v79 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:201 userInfo:v78];
              (v105[2])(v105, 0, v79);
            }

            v19 = 0;
LABEL_112:

            goto LABEL_114;
          }

          v65 = qword_10003FF28;
          if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "PLM: Cannot create evaluator", buf, 2u);
          }

          v131 = NSLocalizedDescriptionKey;
          v94 = (v96[2])(v96, @"Cannot create evaluator");
          v132 = v94;
          v64 = [NSDictionary dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          v66 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:201 userInfo:v64];
          (v105[2])(v105, 0, v66);

          v92 = 0;
        }

        else
        {
          v63 = qword_10003FF28;
          if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "PLM: Cannot create model", buf, 2u);
          }

          v133 = NSLocalizedDescriptionKey;
          v134 = (v96[2])(v96, @"Cannot create model");
          v92 = v134;
          v94 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
          v64 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:201 userInfo:v94];
          (v105[2])(v105, 0, v64);
        }

        v19 = 0;
LABEL_115:

        v46 = v94;
        goto LABEL_116;
      }

      v27 = [[NSString alloc] initWithFormat:@"Failed to get absolute path for path=%@ errorno=%d", v23, *__error()];
      v28 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        *v143 = 138412290;
        v144 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "PLM: %@", v143, 0xCu);
      }
    }

    v104 = 0;
    goto LABEL_42;
  }

  v13 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:4 userInfo:0];
  (v105[2])(v105, 0, v13);
LABEL_26:

  v103 = v5;
LABEL_27:
  if ([v12 length])
  {
    [_EARLmModel removeWithDirectory:v12];
  }

LABEL_74:
  v44 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "PLM: Exiting...", buf, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_10001AB94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, void *a62)
{
  if (a2)
  {

    objc_begin_catch(a1);
    JUMPOUT(0x1000198FCLL);
  }

  _Unwind_Resume(a1);
}

id sub_10001B174(uint64_t a1)
{
  v2 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "PLM: Training timed out", v4, 2u);
  }

  return [*(a1 + 32) setShouldStop:1];
}

void sub_10001B1E8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

id sub_10001B270(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithFormat:@"language=%@ asset=%@: %@", *(a1 + 32), *(a1 + 40), a2];

  return v2;
}

void sub_10001B2C4(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  [*(a1 + 32) addDocumentWithUUID:v12 content:v9 metadata:v10];
  if ([*(a1 + 32) roomForMoreData])
  {
    v11 = [*(a1 + 40) shouldStop];
  }

  else
  {
    v11 = 1;
  }

  *a5 = v11;
}

void sub_10001B474(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SpeechModelTrainingConnection;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_10001B5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v18 = v16;

  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10001B604(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      v3 = 138412290;
      v4 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ cancelling instance", &v3, 0xCu);
    }

    [WeakRetained setShouldStop:1];
    [WeakRetained[3] cancel];
  }
}

void sub_10001B98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, NSErrorUserInfoKey a20)
{
  if (a2)
  {
    _Block_object_dispose(&a16, 8);
    v23 = objc_begin_catch(exception_object);
    if (a2 == 2)
    {
      v24 = v23;
      *(v20 - 72) = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithFormat:@"Exception in checkDataAmountQuickly: %@"];
      *(v20 - 64) = v25;
      v26 = [NSDictionary dictionaryWithObjects:v20 - 64 forKeys:v20 - 72 count:1];
      [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v26];
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      a20 = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithFormat:@"Exception in checkDataAmountQuickly"];
      *(v20 - 80) = v24;
      v25 = [NSDictionary dictionaryWithObjects:v20 - 80 forKeys:&a20 count:1];
      [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v25];
      objc_claimAutoreleasedReturnValue();
    }

    objc_end_catch();
    JUMPOUT(0x10001B948);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001BB10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (++*(*(*(result + 32) + 8) + 24) > *(result + 40))
  {
    *a5 = 1;
  }

  return result;
}

void sub_10001C1D0(id a1)
{
  v1 = [NSBundle bundleWithPath:@"/System/Library/TextInput/Plugins/MessagesDataKeyboardPlugin.bundle"];
  v2 = qword_10003FF60;
  qword_10003FF60 = v1;

  v3 = [qword_10003FF60 classNamed:@"MessagesTextInputModelDataSource"];
  qword_10003FF68 = v3;
  if (![v3 instancesRespondToSelector:"setNextRowID:"] || !objc_msgSend(v3, "instancesRespondToSelector:", "nextRowID") || (objc_msgSend(v3, "instancesRespondToSelector:", "lastDatabaseRowID") & 1) == 0)
  {
    v4 = qword_10003FF50;
    if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Incompatible Messages plugin data source", v5, 2u);
    }

    qword_10003FF68 = 0;
  }
}

void sub_10001CC74(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v11 eventBody];
    [v5 absoluteTimestamp];
    v7 = v6;
    v8 = *(a1 + 40);

    if (v7 <= v8)
    {
      v9 = *(a1 + 32);
      v10 = [v11 eventBody];
      [v9 addObject:v10];
    }
  }
}

void sub_10001CD44(id a1, BPSCompletion *a2)
{
  v2 = a2;
  if ([(BPSCompletion *)v2 state])
  {
    v3 = qword_10003FF50;
    if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v5 = [(BPSCompletion *)v2 error];
      v6 = [v5 description];
      v7 = 136315138;
      v8 = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Biome Dictation: Error reading dictation event, reason: %s", &v7, 0xCu);
    }
  }
}

void sub_10001D0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10001D0D8(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100017944();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void *sub_10001D190(float *a1, void *a2, __int128 **a3)
{
  v5 = sub_10001795C(a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10001D408(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

BOOL sub_10001D408(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_10001D47C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_100002BA8();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_10001D680(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_10001D6DC(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100017944();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_10001DCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v47 - 248), 8);

  _Block_object_dispose((v47 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001DDE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001DDFC(void *a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 isEqualToString:&stru_100039238] & 1) == 0)
  {
    v8 = +[NSCharacterSet whitespaceCharacterSet];
    v9 = [v7 componentsSeparatedByCharactersInSet:v8];

    if ([v9 count] == 2)
    {
      v10 = [v9 objectAtIndex:0];
      v11 = [v9 objectAtIndex:1];
      if (a3 > 3)
      {
        sub_10001D0D8(__p, [v10 UTF8String]);
        v17 = a1[4];
        v18 = *(v17 + 64);
        v21 = __p;
        sub_10001D190((v17 + 40), __p, &v21)[5] = v18;
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else if ([v10 isEqualToString:@"<VocabSize>"])
      {
        *(*(a1[6] + 8) + 24) = [v11 intValue];
      }

      else if ([v10 isEqualToString:@"<UnknownWord>"])
      {
        objc_storeStrong((*(a1[7] + 8) + 40), v11);
      }

      else if ([v10 isEqualToString:@"<BeginOfSentenceWord>"])
      {
        objc_storeStrong((*(a1[8] + 8) + 40), v11);
      }

      else if ([v10 isEqualToString:@"<EndOfSentenceWord>"])
      {
        objc_storeStrong((*(a1[9] + 8) + 40), v11);
      }
    }

    else
    {
      v22 = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithFormat:@"Incorrect format of vocab file for line=%@", v7];
      v23 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v14 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v13];
      v15 = *(a1[5] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      *a4 = 1;
    }
  }
}

void sub_10001E0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10001E12C(void *a1, void *a2, __int128 **a3)
{
  v5 = sub_10001795C(a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10001D408(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_10001E488(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10001EAD0(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 24 * a2);
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 2) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * (&v7[-v3] >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_100002BA8();
      }

      sub_100002C6C();
    }

    bzero(a1[1], 24 * ((24 * v6 - 24) / 0x18) + 24);
    a1[1] = &v4[24 * ((24 * v6 - 24) / 0x18) + 24];
  }
}

void sub_10001ECA8(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 4 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_100002C84(v10);
      }

      sub_100002C6C();
    }

    bzero(a1[1], 4 * v6);
    v11 = &v4[4 * v6];
  }

  a1[1] = v11;
}

void sub_10001FFAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_10003FF78;
  if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 audioData];
    v7 = 134218240;
    v8 = [v6 length];
    v9 = 1024;
    v10 = [SRAudioDecoder totalFrames:v3];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SRAudioGenerator: Received audio chunk, audio length: %zu, frames: %u", &v7, 0x12u);
  }

  [*(a1 + 32) addObject:v3];
}

void sub_1000200B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v5 = *(a1 + 40);
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v7)
    {
      v8 = *v58;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v58 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v57 + 1) + 8 * i) audioData];
          v11 = [v10 length];

          v6 += v11;
        }

        v7 = [v5 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v7);
    }

    v12 = qword_10003FF78;
    if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 48);
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SRAudioGenerator: Speech synthesis is successful, uuid: %@, audio length: %zu", buf, 0x16u);
    }

    v14 = [*(a1 + 40) firstObject];
    v15 = v14;
    if (v14)
    {
      objc_msgSend_asbd(v14);
      v16 = DWORD2(v54);

      if (DWORD2(v54) == 1869641075)
      {
        v29 = qword_10003FF78;
        if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "SRAudioGenerator: Convert Opus audio to PCM", buf, 2u);
        }

        v30 = *(a1 + 40);
        v31 = [SRAudioDecoder alloc];
        v67 = 0;
        *buf = xmmword_10002A790;
        *&buf[16] = unk_10002A7A0;
        v71 = 16;
        v32 = [(SRAudioDecoder *)v31 initWithStreamDescription:buf error:&v67];
        v48 = v67;
        v33 = objc_opt_new();
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v34 = v30;
        v35 = [v34 countByEnumeratingWithState:&v63 objects:buf count:16];
        if (v35)
        {
          v36 = *v64;
          while (2)
          {
            for (j = 0; j != v35; j = j + 1)
            {
              if (*v64 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = *(*(&v63 + 1) + 8 * j);
              v62 = 0;
              v39 = [(SRAudioDecoder *)v32 decodeAudio:v38 error:&v62];
              v40 = v62;
              if (v40)
              {
                v44 = v40;

                v28 = 0;
                v42 = v34;
                goto LABEL_45;
              }

              v41 = [v39 audioData];
              [v33 appendData:v41];
            }

            v35 = [v34 countByEnumeratingWithState:&v63 objects:buf count:16];
            if (v35)
            {
              continue;
            }

            break;
          }
        }

        v61 = 0;
        v42 = [(SRAudioDecoder *)v32 endWithError:&v61];
        v43 = v61;
        if (v43)
        {
          v44 = v43;
          v28 = 0;
        }

        else
        {
          v47 = [v42 audioData];
          [v33 appendData:v47];

          v28 = sub_100020748(v33, 0xBB80uLL);
          v44 = 0;
        }

LABEL_45:

LABEL_48:
        if (v28 && [v28 length])
        {
          v45 = *(a1 + 56);
          objc_sync_enter(v45);
          [*(a1 + 56) setObject:v28 forKeyedSubscript:*(a1 + 48)];
          objc_sync_exit(v45);

          dispatch_group_leave(*(a1 + 32));
LABEL_53:

          goto LABEL_54;
        }

LABEL_51:
        dispatch_group_leave(*(a1 + 32));
        v46 = qword_10003FF78;
        if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "SRAudioGenerator: Audio conversion failed", buf, 2u);
        }

        goto LABEL_53;
      }

      if (DWORD2(v54) == 1819304813)
      {
        v17 = qword_10003FF78;
        if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "SRAudioGenerator: Downsample PCM audio", buf, 2u);
        }

        v18 = objc_opt_new();
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v19 = *(a1 + 40);
        v20 = [v19 countByEnumeratingWithState:&v50 objects:v68 count:16];
        if (v20)
        {
          v21 = *v51;
          do
          {
            for (k = 0; k != v20; k = k + 1)
            {
              if (*v51 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = [*(*(&v50 + 1) + 8 * k) audioData];
              [v18 appendData:v23];
            }

            v20 = [v19 countByEnumeratingWithState:&v50 objects:v68 count:16];
          }

          while (v20);
        }

        v24 = [*(a1 + 40) firstObject];
        v25 = v24;
        if (v24)
        {
          objc_msgSend_asbd(v24);
          v26 = v49;
        }

        else
        {
          v26 = 0;
        }

        v28 = sub_100020748(v18, v26);

        goto LABEL_48;
      }
    }

    else
    {
      v56 = 0;
      v54 = 0u;
      v55 = 0u;
      v16 = 0;
    }

    v27 = qword_10003FF78;
    if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "SRAudioGenerator: Unrecognized codec: %lu", buf, 0xCu);
    }

    v28 = 0;
    goto LABEL_51;
  }

  v4 = qword_10003FF78;
  if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SRAudioGenerator: Speech synthesis failed with error: %@", buf, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
LABEL_54:
}

id sub_100020748(void *a1, unint64_t a2)
{
  v3 = a1;
  if (!a2)
  {
    a2 = 48000;
  }

  outAudioConverter = 0;
  *&inSourceFormat.mBitsPerChannel = 16;
  inSourceFormat.mSampleRate = a2;
  *&inSourceFormat.mBytesPerFrame = 0x100000002;
  *&inSourceFormat.mFormatID = xmmword_10002A6E0;
  *&inDestinationFormat.mBitsPerChannel = 16;
  inDestinationFormat.mSampleRate = 16000.0;
  *&inDestinationFormat.mBytesPerFrame = 0x100000002;
  *&inDestinationFormat.mFormatID = xmmword_10002A6E0;
  v4 = 0;
  if (!AudioConverterNew(&inSourceFormat, &inDestinationFormat, &outAudioConverter))
  {
    v5 = a2 / 0x3E80;
    v6 = [v3 mutableCopy];
    inInputDataProcUserData = 1;
    v14 = 1;
    v15 = [v6 length];
    v16 = [v6 mutableBytes];
    v7 = [v6 length] / v5;
    v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
    bzero(v8, v7);
    *&outOutputData.mNumberBuffers = 1;
    outOutputData.mBuffers[0].mNumberChannels = 1;
    outOutputData.mBuffers[0].mDataByteSize = v7;
    outOutputData.mBuffers[0].mData = v8;
    ioOutputDataPacketSize = v7 >> 1;
    v9 = AudioConverterFillComplexBuffer(outAudioConverter, sub_100020900, &inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
    AudioConverterDispose(outAudioConverter);
    v4 = 0;
    if (!v9)
    {
      v4 = [NSData dataWithBytes:outOutputData.mBuffers[0].mData length:outOutputData.mBuffers[0].mDataByteSize];
    }

    free(v8);
  }

  return v4;
}

uint64_t sub_100020900(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 12);
  *(a3 + 16) = *(a5 + 16);
  *(a3 + 12) = v5;
  *a2 = v5 >> 1;
  return 0;
}

uint64_t *sub_10002168C(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_100021740(void *a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100022094(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = SMTSimpleMmapBuffer;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_10002296C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    if (*(v17 - 217) < 0)
    {
      operator delete(*(v17 - 240));
    }

    std::ostream::sentry::~sentry();
    __cxa_begin_catch(a1);
    std::ios_base::__set_badbit_and_consider_rethrow((&a17 + *(a17 - 24)));
    __cxa_end_catch();
    JUMPOUT(0x1000226DCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100022AC0(void *a1)
{
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

void sub_100022B8C(void *a1, float a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [v5 objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v8), v11}];
          *&v10 = a2;
          [v9 multiply:v10];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

float sub_100022CE0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      v6 = 0.0;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [v3 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
          [v8 l2norm];
          v10 = v9;

          v6 = v6 + v10;
        }

        v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

id sub_100024154()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10003FF90;
  v7 = qword_10003FF90;
  if (!qword_10003FF90)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100024764;
    v3[3] = &unk_1000391A0;
    v3[4] = &v4;
    sub_100024764(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10002421C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024234()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_10003FFA0;
  v9 = qword_10003FFA0;
  if (!qword_10003FFA0)
  {
    v1 = sub_10002454C();
    v7[3] = dlsym(v1, "MPMediaItemPropertyPlayCount");
    qword_10003FFA0 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getMPMediaItemPropertyPlayCount(void)"];
    [v4 handleFailureInFunction:v5 file:@"SMTPhoneticMatchHelper.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100024380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024398()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_10003FFA8;
  v9 = qword_10003FFA8;
  if (!qword_10003FFA8)
  {
    v1 = sub_10002454C();
    v7[3] = dlsym(v1, "MPMediaItemPropertyLastPlayedDate");
    qword_10003FFA8 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getMPMediaItemPropertyLastPlayedDate(void)"];
    [v4 handleFailureInFunction:v5 file:@"SMTPhoneticMatchHelper.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1000244E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000244FC(uint64_t a1)
{
  v2 = sub_10002454C();
  result = dlsym(v2, "MPMediaItemPropertyLastPlayedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10003FFA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002454C()
{
  v4[0] = 0;
  if (!qword_10003FF98)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000246A0;
    v4[4] = &unk_1000391D8;
    v4[5] = v4;
    v5 = off_1000391C0;
    v6 = 0;
    qword_10003FF98 = _sl_dlopen();
  }

  v0 = qword_10003FF98;
  if (!qword_10003FF98)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"SMTPhoneticMatchHelper.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000246A0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10003FF98 = result;
  return result;
}

void *sub_100024714(uint64_t a1)
{
  v2 = sub_10002454C();
  result = dlsym(v2, "MPMediaItemPropertyPlayCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10003FFA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100024764(uint64_t a1)
{
  sub_10002454C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10003FF90 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SMTPhoneticMatchHelper.m" lineNumber:18 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

uint64_t start()
{
  v0 = os_log_create("com.apple.speech.speechmodeltraining", "daemon");
  v1 = qword_10003FFB8;
  qword_10003FFB8 = v0;

  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v6 = qword_10003FFB8;
    if (os_log_type_enabled(qword_10003FFB8, OS_LOG_TYPE_FAULT))
    {
      v7 = v6;
      v8 = *__error();
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "_set_user_dir_suffix failed™: %{darwin.errno}d", v9, 8u);
    }

    exit(1);
  }

  v2 = NSTemporaryDirectory();
  +[SMTUtils cleanupTemporaryDirectory];
  v3 = objc_opt_new();
  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.corespeech.speechmodeltraining.xpc"];
  [v4 setDelegate:v3];
  [v4 resume];
  CFRunLoopRun();

  return 0;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}