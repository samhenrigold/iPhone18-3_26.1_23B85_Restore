void sub_19B6AA8C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_19B6AACC8(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    sub_19B428B50(&__p, "kCLConnectionMessageVO2MaxRetrocomputeStatusUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v3 < 0)
    {
      operator delete(__p);
    }

    v4 = @"kCLConnectionMessageSubscribeKey";
    v5[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v1, v5, &v4, 1);
    sub_19B6ABA98();
  }
}

void sub_19B6AAE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6AAE84(uint64_t a1, CLConnectionMessage **a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
  if (*a2)
  {
    v10 = DictionaryOfClasses == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v11 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "Response invalid for retrocompute status update.  Internal error occured.", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_18;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    *v37 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Response invalid for retrocompute status update.  Internal error occured.", v37, 2, *v37);
    goto LABEL_16;
  }

  v18 = DictionaryOfClasses;
  v19 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  v21 = objc_msgSend_objectForKeyedSubscript_(v18, v20, @"CMVO2MaxRetrocomputeRecord");
  if (!v19)
  {
    if (v21)
    {
      objc_loadWeak((*(a1 + 32) + 32));
      result = objc_opt_respondsToSelector();
      if (result)
      {
        Weak = objc_loadWeak((*(a1 + 32) + 32));
        v34 = *(a1 + 32);

        return MEMORY[0x1EEE66B58](Weak, sel_vo2MaxRetrocomputeManager_didUpdateState_, v34);
      }

      return result;
    }

    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v35 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageVO2MaxRetrocomputeStatusUpdate message", buf, 2u);
    }

    v36 = sub_19B420058();
    if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
    {
LABEL_18:
      objc_loadWeak((*(a1 + 32) + 32));
      result = objc_opt_respondsToSelector();
      if ((result & 1) == 0)
      {
        return result;
      }

      v17 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v16, @"CMErrorDomain", 103, 0);
      goto LABEL_33;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    *v37 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 17, "Unable to parse kCLConnectionMessageVO2MaxRetrocomputeStatusUpdate message", v37, 2, *v37);
LABEL_16:
    v14 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager startRetrocomputeStatusUpdates]_block_invoke", "CoreLocation: %s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }

    goto LABEL_18;
  }

  v24 = MEMORY[0x1E696ABC0];
  v25 = objc_msgSend_intValue(v19, v22, v23);
  v17 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v26, @"CMErrorDomain", v25, 0);
  if (qword_1EAFE2788 != -1)
  {
    dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
  }

  v27 = qword_1EAFE27C0;
  if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v39 = v17;
    _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "Received error for retrocompute status update: %{public}@", buf, 0xCu);
  }

  v28 = sub_19B420058();
  if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    *v37 = 138543362;
    *&v37[4] = v17;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Received error for retrocompute status update: %{public}@", v37, 12);
    v30 = v29;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager startRetrocomputeStatusUpdates]_block_invoke", "CoreLocation: %s\n", v29);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  objc_loadWeak((*(a1 + 32) + 32));
  result = objc_opt_respondsToSelector();
  if (result)
  {
LABEL_33:
    v31 = objc_loadWeak((*(a1 + 32) + 32));
    return objc_msgSend_vo2MaxRetrocomputeManager_updateFailedWithError_(v31, v32, *(a1 + 32), v17);
  }

  return result;
}

void sub_19B6AB77C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    sub_19B428B50(&__p, "kCLConnectionMessageVO2MaxRetrocomputeStatusUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v11 < 0)
    {
      operator delete(__p);
    }

    if (*(*(a1 + 32) + 24))
    {
      v8 = @"kCLConnectionMessageSubscribeKey";
      v9 = MEMORY[0x1E695E110];
      v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, &v9, &v8, 1);
      sub_19B6ABA98();
    }

    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v3 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Error stopping retrocompute status updates, no active clients", &__p, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      LOWORD(v7) = 0;
      _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B41C000, qword_1EAFE27C0, 0, "Error stopping retrocompute status updates, no active clients", &v7, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMVO2MaxRetrocomputeManager stopRetrocomputeStatusUpdates]_block_invoke", "CoreLocation: %s\n", v5);
      if (v6 != &__p)
      {
        free(v6);
      }
    }
  }
}

void sub_19B6ABA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6ABA68()
{
  result = os_log_create("com.apple.locationd.Motion", "VO2Max");
  qword_1EAFE27C0 = result;
  return result;
}

void *sub_19B6ABB0C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6ABB68((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6ABB68(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6ABBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6ABD18(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B6ABD48(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE29F8 != -1)
  {
    dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
  }

  v14 = qword_1EAFE2A00;
  if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A00, 17, "Failed with code %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHealthTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B6ABF70(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
    }

    v6 = qword_1EAFE2A00;
    if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v22 = v5;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
      }

      v10 = qword_1EAFE2A00;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138412802;
      v16 = v5;
      v17 = 1024;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 0, "Client connection interrupt, %@, %d, %p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHealthTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B6AC2B8(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    if (*(a1 + 56))
    {
      v2 = [CMMotionTimeRange alloc];
      objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 40), v3, v4);
      v6 = v5;
      objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 48), v7, v8);
      started = objc_msgSend_initWithStartDate_endDate_(v2, v9, v10, v6, v11);
      v14 = @"CMTimeRangeKey";
      v15[0] = started;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v15, &v14, 1);

      operator new();
    }
  }
}

void sub_19B6AC48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B6AC4E0(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v6, v11, v7, v8, v9, v10, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) != 0)
  {
    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMMetMinutesArray");
    if (v16)
    {
      v19 = *(*(a1 + 32) + 24);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_19B6AC90C;
      v30[3] = &unk_1E7532B90;
      v30[4] = v16;
      v30[5] = v5;
      v20 = v30;
    }

    else if (v18)
    {
      v21 = *(*(a1 + 32) + 24);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_19B6AC984;
      v29[3] = &unk_1E7532B90;
      v29[4] = v18;
      v29[5] = v5;
      v20 = v29;
      v19 = v21;
    }

    else
    {
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
      }

      v22 = qword_1EAFE2A00;
      if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "METMinutes,Unable to parse query response", buf, 2u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE29F8 != -1)
        {
          dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
        }

        v28 = 0;
        LODWORD(v26) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A00, 17, "METMinutes,Unable to parse query response", &v28, v26);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHealthTrackerInternal _queryMetMinutesFromDate:toDate:handler:]_block_invoke", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v19 = *(*(a1 + 32) + 24);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B6AC99C;
      v27[3] = &unk_1E7532B40;
      v27[4] = v5;
      v20 = v27;
    }
  }

  else
  {
    v19 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6AC8A8;
    block[3] = &unk_1E7532B40;
    block[4] = v5;
    v20 = block;
  }

  dispatch_async(v19, v20);
}

uint64_t sub_19B6AC8A8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B6AC90C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B6AC99C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B6ACA78(void *a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1[4] + 8) && a1[6])
  {
    v2 = a1[5];
    if (v2)
    {
      v7 = @"CMVO2MaxInputsRecord";
      v8 = v2;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v8, &v7, 1);
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      v3 = [CMVO2MaxInputs alloc];
      v12 = 0xFFEFFFFFFFFFFFFFLL;
      v13 = 0;
      v14 = 0xFFEFFFFFFFFFFFFFLL;
      v5 = objc_msgSend_initWithSample_(v3, v4, v11);
      v9 = @"CMVO2MaxInputsRecord";
      v10 = v5;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, &v10, &v9, 1);
    }

    sub_19B6AD504();
  }
}

void sub_19B6ACC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6ACC68(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v6, v11, v7, v8, v9, v10, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) != 0)
  {
    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMVO2MaxInputsArray");
    if (v16)
    {
      v19 = *(*(a1 + 32) + 24);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_19B6AD094;
      v30[3] = &unk_1E7532B90;
      v30[4] = v16;
      v30[5] = v5;
      v20 = v30;
    }

    else if (v18)
    {
      v21 = *(*(a1 + 32) + 24);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_19B6AD10C;
      v29[3] = &unk_1E7532B90;
      v29[4] = v18;
      v29[5] = v5;
      v20 = v29;
      v19 = v21;
    }

    else
    {
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
      }

      v22 = qword_1EAFE2A00;
      if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "VO2MaxData,Unable to parse query response", buf, 2u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE29F8 != -1)
        {
          dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
        }

        v28 = 0;
        LODWORD(v26) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A00, 17, "VO2MaxData,Unable to parse query response", &v28, v26);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHealthTrackerInternal _queryVO2MaxInputsFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v19 = *(*(a1 + 32) + 24);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B6AD124;
      v27[3] = &unk_1E7532B40;
      v27[4] = v5;
      v20 = v27;
    }
  }

  else
  {
    v19 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6AD030;
    block[3] = &unk_1E7532B40;
    block[4] = v5;
    v20 = block;
  }

  dispatch_async(v19, v20);
}

uint64_t sub_19B6AD030(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B6AD094(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B6AD124(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

os_log_t sub_19B6AD4D4()
{
  result = os_log_create("com.apple.locationd.Motion", "Health");
  qword_1EAFE2A00 = result;
  return result;
}

void *sub_19B6AD578(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6AD5D4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6AD5D4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6AD62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6AD648(uint64_t a1)
{
  *a1 = xmmword_19B7B7E30;
  sub_19B41E130(a1, xmmword_19B7B7E30);
  *(a1 + 16) = xmmword_19B7B7E30;
  sub_19B41E130((a1 + 16), xmmword_19B7B7E30);
  *(a1 + 84) = xmmword_19B7BBC00;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  sub_19B41E130((a1 + 84), xmmword_19B7BBC00);
  v2 = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1065749138;
  *(a1 + 136) = 1065353216;
  *(a1 + 116) = 1;
  *(a1 + 120) = xmmword_19B7BBC10;
  *(a1 + 140) = 1;
  do
  {
    v3 = *(a1 + 136);
    *sub_19B6AFB9C(a1 + 160, v2) = v3;
    v4 = *(a1 + 120) + (v2 * 1.5708);
    *sub_19B6AFB9C(a1 + 144, v2++) = v4;
  }

  while (v2 != 4);
  *(a1 + 176) = 0;
  *(a1 + 184) = -1;
  *(a1 + 188) = 0;
  if ((atomic_load_explicit(&qword_1ED71D380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D380))
  {
    xmmword_1ED71D3E0 = xmmword_19B7BBC20;
    __cxa_guard_release(&qword_1ED71D380);
  }

  v5 = 0;
  while (sub_19B5BDB18(&xmmword_1ED71D3E0, v5) >= *(a1 + 120) && sub_19B5BDB18(&xmmword_1ED71D3E0, v5) <= *(a1 + 124))
  {
    if (++v5 == 4)
    {
      v6 = 1;
      while (1)
      {
        v7 = *sub_19B6AFB9C(a1 + 144, v6);
        v8 = v6 - 1;
        if (v7 < (*sub_19B6AFB9C(a1 + 144, v8) + 0.000001))
        {
          goto LABEL_12;
        }

        v6 = v8 + 2;
        if (v6 == 4)
        {
          *(a1 + 144) = xmmword_1ED71D3E0;
          goto LABEL_12;
        }
      }
    }
  }

LABEL_12:
  if ((atomic_load_explicit(&qword_1ED71D388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D388))
  {
    xmmword_1ED71D3F0 = xmmword_19B7BBC30;
    __cxa_guard_release(&qword_1ED71D388);
  }

  if (*&xmmword_1ED71D3F0 >= *(a1 + 128))
  {
    v9 = 1;
    while (sub_19B5BDB18(&xmmword_1ED71D3F0, v9 - 1) <= *(a1 + 132))
    {
      if (v9 == 4)
      {
        *(a1 + 160) = xmmword_1ED71D3F0;
        return a1;
      }

      v10 = sub_19B5BDB18(&xmmword_1ED71D3F0, v9++);
      if (v10 < *(a1 + 128))
      {
        return a1;
      }
    }
  }

  return a1;
}

void sub_19B6AD8EC(uint64_t a1, float *a2)
{
  v4 = 0;
  v30 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  if (fabsf(sqrtf(v5) + -1.0) <= 0.000001)
  {
    *(a1 + 56) = sub_19B66C1A4((a1 + 84), *a2, a2[1], a2[2]);
    *(a1 + 60) = v16;
    *(a1 + 64) = v17;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = a2[2];
      *buf = 134349568;
      v25 = v7;
      v26 = 2050;
      v27 = v8;
      v28 = 2050;
      v29 = v9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[CMPerceptualFilter] Gravity vector must be unity norm. gravity.x,%{public}f,.y,%{public}f,.z,%{public}f", buf, 0x20u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v11 = *a2;
      v12 = a2[1];
      v13 = a2[2];
      v18 = 134349568;
      v19 = v11;
      v20 = 2050;
      v21 = v12;
      v22 = 2050;
      v23 = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMPerceptualFilter] Gravity vector must be unity norm. gravity.x,%{public}f,.y,%{public}f,.z,%{public}f", &v18, 32);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAudioPerceptualFilter::feedGravity(const CMVector3d &)", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }
}

void sub_19B6ADB58(uint64_t a1, float *a2, float *a3, uint64_t a4, uint64_t a5)
{
  v204 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16);
  v163[0] = *a1;
  v163[1] = v8;
  v164 = *(a1 + 32);
  v165 = *(a1 + 48);
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  v9 = sub_19B66C1A4((a1 + 84), *a2, a2[1], a2[2]);
  v12 = 0;
  v13 = 0.0;
  do
  {
    v13 = v13 + (a2[v12] * a2[v12]);
    ++v12;
  }

  while (v12 != 3);
  v14 = sqrtf(v13);
  if (v14 < 0.001)
  {
    if (*(a1 + 116) == 1)
    {
      *(a1 + 116) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v15 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Error -- cannot set listener orientation using boresight vector at 0 distance.", buf, 2u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
        }

        LOWORD(v171) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "Error -- cannot set listener orientation using boresight vector at 0 distance.", &v171, 2);
        v18 = v17;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAudioPerceptualFilter::feed(const CMVector3d &, const CMOQuaternion &, uint64_t, uint64_t)", "CoreLocation: %s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }

    sub_19B690DB4(a1, 0);
    return;
  }

  *(a1 + 116) = 1;
  v19 = v9 / v14;
  v20 = v10 / v14;
  v161 = v9 / v14;
  *v162.i32 = v10 / v14;
  v21 = v11 / v14;
  *&v162.i32[1] = v11 / v14;
  if (*(a1 + 100) == 1)
  {
    v22.f32[0] = sub_19B6AF0CC(&v161);
    *buf = v22.i32[0];
    *&buf[4] = v23;
    *&buf[8] = v24;
    *v189 = v25;
    if ((*(a1 + 188) & 1) == 0)
    {
      v169.i32[0] = sub_19B66C1A4(buf, *(a1 + 68), *(a1 + 72), *(a1 + 76));
      *(v169.i64 + 4) = __PAIR64__(v27, v26);
      v28 = *(a1 + 56);
      v29 = *(a1 + 60);
      v30 = *(a1 + 64);
      v31 = ((v21 * v30) + (v29 * v20)) + (v28 * v19);
      v166.f32[0] = v28 - (v19 * v31);
      v166.f32[1] = v29 - (v20 * v31);
      v166.f32[2] = v30 - (v21 * v31);
      sub_19B6AF264(a1, v166.f32, v169.f32, &v161);
      v171 = v32.i32[0];
      v172 = COERCE_DOUBLE(__PAIR64__(v34, v33));
      *v173 = v35;
      v22.f32[0] = sub_19B66BF70(&v171, buf, v32);
    }

    goto LABEL_49;
  }

  v169.i32[0] = sub_19B6AF0CC(&v161);
  *(v169.i64 + 4) = __PAIR64__(v37, v36);
  v169.i32[3] = v38;
  if ((atomic_load_explicit(&qword_1ED71D398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D398))
  {
    qword_1ED71D3B8 = 0x3F80000000000000;
    dword_1ED71D3C0 = 0;
    __cxa_guard_release(&qword_1ED71D398);
  }

  if ((atomic_load_explicit(&qword_1ED71D3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D3A0))
  {
    qword_1ED71D3C8 = 0;
    dword_1ED71D3D0 = 1065353216;
    __cxa_guard_release(&qword_1ED71D3A0);
  }

  v157 = sub_19B66C1A4(v169.f32, *&qword_1ED71D3B8, *(&qword_1ED71D3B8 + 1), *&dword_1ED71D3C0);
  v158 = v39;
  v159 = v40;
  v41.i32[0] = vdup_lane_s32(*(&qword_1ED71D3C8 + 4), 1).u32[0];
  v41.i32[1] = qword_1ED71D3C8;
  v42.i32[0] = vdup_lane_s32(v162, 1).u32[0];
  v42.f32[1] = v161;
  v167 = vmla_f32(vmul_f32(v162, vneg_f32(v41)), v42, *(&qword_1ED71D3C8 + 4));
  v168 = (*&qword_1ED71D3C8 * *v162.i32) - (*(&qword_1ED71D3C8 + 1) * v161);
  sub_19B6AF264(a1, &v167, &v157, &v161);
  v166.i64[0] = __PAIR64__(v44, v43.u32[0]);
  v166.i64[1] = __PAIR64__(v46, v45);
  v171 = sub_19B66BF70(&v166, v169.f32, v43);
  v172 = COERCE_DOUBLE(__PAIR64__(v48, v47));
  *v173 = v49;
  if (*(a1 + 100) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v50 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_ERROR, "[PerceptualFilter] already initialized, should not be calling initializeAmbienceBedGravity", buf, 2u);
    }

    v51 = sub_19B420058();
    if ((*(v51 + 160) & 0x80000000) != 0 && (*(v51 + 164) & 0x80000000) != 0 && (*(v51 + 168) & 0x80000000) != 0 && !*(v51 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v170[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[PerceptualFilter] already initialized, should not be calling initializeAmbienceBedGravity", v170, 2);
    v53 = v52;
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAudioPerceptualFilter::initializeAmbienceBedGravity(const CMOQuaternion &)", "CoreLocation: %s\n", v52);
    goto LABEL_46;
  }

  v54 = 0;
  v55 = a1 + 68;
  v56 = 0.0;
  do
  {
    v56 = v56 + (*(v55 + v54) * *(v55 + v54));
    v54 += 4;
  }

  while (v54 != 12);
  if (sqrtf(v56) != 0.0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v57 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_ERROR, "[PerceptualFilter] fAmbienceBedGravity has already been set, cannot re-initialize ambience bed gravity direction.", buf, 2u);
    }

    v58 = sub_19B420058();
    if ((*(v58 + 160) & 0x80000000) != 0 && (*(v58 + 164) & 0x80000000) != 0 && (*(v58 + 168) & 0x80000000) != 0 && !*(v58 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v170[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[PerceptualFilter] fAmbienceBedGravity has already been set, cannot re-initialize ambience bed gravity direction.", v170, 2);
    v53 = v59;
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAudioPerceptualFilter::initializeAmbienceBedGravity(const CMOQuaternion &)", "CoreLocation: %s\n", v59);
    goto LABEL_46;
  }

  v77 = 0;
  v78 = *(a1 + 184);
  v22.i64[0] = 0;
  do
  {
    v22.f32[0] = v22.f32[0] + (*(a1 + 56 + v77) * *(a1 + 56 + v77));
    v77 += 4;
  }

  while (v77 != 12);
  v22.f32[0] = sqrtf(v22.f32[0]);
  if (v22.f32[0] < 0.000001)
  {
    *(a1 + 184) = 0;
    if (!v78)
    {
      goto LABEL_48;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v79 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v79, OS_LOG_TYPE_ERROR, "[PerceptualFilter] Accessory gravity has not been set.", buf, 2u);
    }

    v80 = sub_19B420058();
    if ((*(v80 + 160) & 0x80000000) != 0 && (*(v80 + 164) & 0x80000000) != 0 && (*(v80 + 168) & 0x80000000) != 0 && !*(v80 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v170[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[PerceptualFilter] Accessory gravity has not been set.", v170, 2);
    v53 = v81;
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAudioPerceptualFilter::initializeAmbienceBedGravity(const CMOQuaternion &)", "CoreLocation: %s\n", v81);
    goto LABEL_46;
  }

  *(a1 + 184) = 1;
  if (v78 != 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v93 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v93, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Accessory gravity is available", buf, 2u);
    }

    v94 = sub_19B420058();
    if (*(v94 + 160) > 1 || *(v94 + 164) > 1 || *(v94 + 168) > 1 || *(v94 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v170[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[PerceptualFilter] Accessory gravity is available", v170, 2);
      v96 = v95;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::initializeAmbienceBedGravity(const CMOQuaternion &)", "CoreLocation: %s\n", v95);
      if (v96 != buf)
      {
        free(v96);
      }
    }
  }

  *buf = sub_19B66BFF4(&v171, v22);
  *&buf[4] = v97;
  *&buf[8] = v98;
  *v189 = v99;
  sub_19B66C1A4(buf, *(a1 + 56), *(a1 + 60), *(a1 + 64));
  v102 = 0;
  *(a1 + 72) = v100;
  *(a1 + 76) = v101;
  v22.i64[0] = 0;
  *(a1 + 68) = 0;
  do
  {
    v22.f32[0] = v22.f32[0] + (*(v55 + v102) * *(v55 + v102));
    v102 += 4;
  }

  while (v102 != 12);
  if (sqrtf(v22.f32[0]) >= 0.087156)
  {
    v147 = 0;
    v22.i64[0] = 0;
    do
    {
      v22.f32[0] = v22.f32[0] + (*(v55 + v147) * *(v55 + v147));
      v147 += 4;
    }

    while (v147 != 12);
    v148 = sqrtf(v22.f32[0]);
    *(a1 + 68) = 0.0 / v148;
    *(a1 + 72) = v100 / v148;
    *(a1 + 76) = v101 / v148;
    *(a1 + 100) = 1;
    if (*(a1 + 108))
    {
      goto LABEL_48;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v149 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v149, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Initialized ambience bed orientation with fixed gravity direction", buf, 2u);
    }

    v150 = sub_19B420058();
    if (*(v150 + 160) <= 1 && *(v150 + 164) <= 1 && *(v150 + 168) <= 1 && !*(v150 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v170[0] = 0;
    LODWORD(v152) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[PerceptualFilter] Initialized ambience bed orientation with fixed gravity direction", v170, *&v152);
    v53 = v151;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::initializeAmbienceBedGravity(const CMOQuaternion &)", "CoreLocation: %s\n", v151);
LABEL_46:
    if (v53 != buf)
    {
      free(v53);
    }

    goto LABEL_48;
  }

  *(a1 + 72) = 0;
LABEL_48:
  v22.i32[0] = v171;
  v24 = HIDWORD(v172);
  v23 = LODWORD(v172);
  v25 = *v173;
LABEL_49:
  v169.i64[0] = __PAIR64__(v23, v22.u32[0]);
  v169.i64[1] = __PAIR64__(v25, v24);
  v60.f32[0] = sub_19B66BFF4(v163, v22);
  *buf = v60.i32[0];
  *&buf[4] = v61;
  *&buf[8] = v62;
  *v189 = v63;
  v166.i32[0] = sub_19B66BF70(&v169, buf, v60);
  *(v166.i64 + 4) = __PAIR64__(v65, v64);
  v166.i32[3] = v66;
  LODWORD(v68) = sub_19B66C31C(&v166);
  v70 = v69;
  v71 = 0;
  v167 = __PAIR64__(v67, v68);
  v168 = v69;
  v72.i64[0] = 0;
  do
  {
    v72.f32[0] = v72.f32[0] + (*(&v167 + v71) * *(&v167 + v71));
    v71 += 4;
  }

  while (v71 != 12);
  v72.f32[0] = sqrtf(v72.f32[0]);
  v155 = v72;
  if (v165 == 1)
  {
    v153 = v67;
    v154 = v68;
    v73 = 0.0436332311;
    if (v72.f32[0] > 0.017453)
    {
      v74 = *(a1 + 108);
      if ((v74 & 1) != 0 || *(a1 + 110) == 1)
      {
        if (v74 == *(a1 + 109))
        {
          if (*(a1 + 110) == 1)
          {
            if (*(a1 + 111) == 1)
            {
              v75 = *(a1 + 180);
            }

            else
            {
              *(a1 + 180) = 0;
              v75 = 0.0;
            }

            if (v72.f32[0] > v75)
            {
              sub_19B6AEF90(a1 + 120, v72.f32[0]);
              v103 = 0.1;
              if (v104 >= 0.1)
              {
                sub_19B6AEF90(a1 + 120, v155.f32[0]);
                v103 = v105;
              }

              *(a1 + 112) = v155.f32[0] / v103;
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
              }

              v106 = off_1EAFE29A0;
              v107 = v103;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
              {
                v108 = *(a1 + 112);
                v109 = *(a1 + 176);
                *buf = 134218752;
                *&buf[4] = v155.f32[0];
                *v189 = 2048;
                *&v189[2] = v107;
                v190 = 2048;
                v191 = v108;
                v192 = 2048;
                v193 = v109;
                _os_log_impl(&dword_19B41C000, v106, OS_LOG_TYPE_DEFAULT, "[PerceptualFilterAnchor] thetaNormRad %.3f, sweepDurationS, %.3f, fPerceptualAngularVelocityRps, %.3f, fLastAuxYawRateRps, %.3f", buf, 0x2Au);
              }

              v110 = sub_19B420058();
              if (*(v110 + 160) > 1 || *(v110 + 164) > 1 || *(v110 + 168) > 1 || *(v110 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
                }

                v111 = *(a1 + 112);
                v112 = *(a1 + 176);
                v171 = 134218752;
                v172 = v155.f32[0];
                *v173 = 2048;
                *&v173[2] = v107;
                v174 = 2048;
                v175 = v111;
                v176 = 2048;
                v177 = v112;
                LODWORD(v152) = 42;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[PerceptualFilterAnchor] thetaNormRad %.3f, sweepDurationS, %.3f, fPerceptualAngularVelocityRps, %.3f, fLastAuxYawRateRps, %.3f", COERCE_DOUBLE(&v171), v152, *&v153, *(&v153 + 1));
                v114 = v113;
                sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::feed(const CMVector3d &, const CMOQuaternion &, uint64_t, uint64_t)", "CoreLocation: %s\n", v113);
                if (v114 != buf)
                {
                  free(v114);
                }
              }

              v72 = v155;
              *(a1 + 180) = v155.i32[0];
            }
          }
        }

        else
        {
          sub_19B6AEF90(a1 + 120, v72.f32[0]);
          v83 = v82;
          v84 = 0.1;
          if (v83 >= 0.1)
          {
            sub_19B6AEF90(a1 + 120, v155.f32[0]);
          }

          *(a1 + 112) = v155.f32[0] / v84;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
          }

          v85 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v86 = *(a1 + 112);
            v87 = *(a1 + 176);
            *buf = 134218496;
            *&buf[4] = v155.f32[0];
            *v189 = 2048;
            *&v189[2] = v86;
            v190 = 2048;
            v191 = v87;
            _os_log_impl(&dword_19B41C000, v85, OS_LOG_TYPE_DEFAULT, "[PerceptualFilterBTZ] thetaNormRad %.3f, fPerceptualAngularVelocityRps, %.3f, fLastAuxYawRateRps, %.3f", buf, 0x20u);
          }

          v88 = sub_19B420058();
          v72 = v155;
          if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
            }

            v89 = *(a1 + 112);
            v90 = *(a1 + 176);
            v171 = 134218496;
            v172 = v155.f32[0];
            *v173 = 2048;
            *&v173[2] = v89;
            v174 = 2048;
            v175 = v90;
            LODWORD(v152) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[PerceptualFilterBTZ] thetaNormRad %.3f, fPerceptualAngularVelocityRps, %.3f, fLastAuxYawRateRps, %.3f", COERCE_DOUBLE(&v171), v152, *&v153);
            v92 = v91;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::feed(const CMVector3d &, const CMOQuaternion &, uint64_t, uint64_t)", "CoreLocation: %s\n", v91);
            if (v92 != buf)
            {
              free(v92);
            }

            v72 = v155;
          }
        }

        v115 = *(a1 + 176);
        if (*(a1 + 112) > v115)
        {
          v115 = *(a1 + 112);
        }

        v73 = v115 * 0.00499999989;
      }
    }

    v116 = v72.f32[0];
    if (v72.f32[0] >= 0.000001)
    {
      if (v73 <= v116)
      {
        v117 = v73;
        v118 = v117;
      }

      else
      {
        v118 = v72.f32[0];
      }

      *buf = vdiv_f32(vmul_n_f32(__PAIR64__(v153, v154), v118), vdup_lane_s32(*v72.f32, 0));
      *&buf[8] = (v70 * v118) / v72.f32[0];
      *v72.i64 = sub_19B66C264(&v166, buf);
    }

    else
    {
      v166.i64[0] = 0;
      v166.i64[1] = 0x3F80000000000000;
    }

    *a1 = sub_19B66BF70(&v166, v163, v72);
    *(a1 + 4) = v119;
    *(a1 + 8) = v120;
    *(a1 + 12) = v121;
    v76 = v155;
    if (v155.f32[0] >= 0.017453)
    {
      if (*(a1 + 108) & 1) != 0 || (*(a1 + 110))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
        }

        v122 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v123 = *(a1 + 32);
          v124 = *(a1 + 108);
          v125 = *(a1 + 110);
          *buf = 134220032;
          *&buf[4] = v123;
          *v189 = 2048;
          *&v189[2] = v164;
          v190 = 2048;
          v191 = v166.f32[0];
          v192 = 2048;
          v193 = v166.f32[1];
          v194 = 2048;
          v195 = v166.f32[2];
          v196 = 2048;
          v197 = v166.f32[3];
          v198 = 2048;
          v199 = v116;
          v200 = 1024;
          v201 = v124;
          v202 = 1024;
          v203 = v125;
          _os_log_impl(&dword_19B41C000, v122, OS_LOG_TYPE_DEBUG, "[PerceptualFilter] currTimestamp %llu, prevTimestamp, %llu, dq [%.3f, %.3f, %.3f, %.3f], dthetaNorm, %.3f, inBTZ, %d, inAnchorConvergence, %d", buf, 0x54u);
        }

        v126 = sub_19B420058();
        if (*(v126 + 160) > 1 || *(v126 + 164) > 1 || *(v126 + 168) > 1 || *(v126 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
          }

          v127 = *(a1 + 32);
          v128 = *(a1 + 108);
          v129 = *(a1 + 110);
          v171 = 134220032;
          v172 = v127;
          *v173 = 2048;
          *&v173[2] = v164;
          v174 = 2048;
          v175 = v166.f32[0];
          v176 = 2048;
          v177 = v166.f32[1];
          v178 = 2048;
          v179 = v166.f32[2];
          v180 = 2048;
          v181 = v166.f32[3];
          v182 = 2048;
          v183 = v116;
          v184 = 1024;
          v185 = v128;
          v186 = 1024;
          v187 = v129;
          LODWORD(v152) = 84;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[PerceptualFilter] currTimestamp %llu, prevTimestamp, %llu, dq [%.3f, %.3f, %.3f, %.3f], dthetaNorm, %.3f, inBTZ, %d, inAnchorConvergence, %d", &v171, *&v152, *&v153, *(&v153 + 1), *&v154, *(&v154 + 1), *v155.i64, v155.i32[2], v156);
          v131 = v130;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::feed(const CMVector3d &, const CMOQuaternion &, uint64_t, uint64_t)", "CoreLocation: %s\n", v130);
          if (v131 != buf)
          {
            free(v131);
          }
        }
      }
    }

    else
    {
      *(a1 + 108) = 0;
      *(a1 + 110) = 0;
    }
  }

  else
  {
    v76 = v169;
    *a1 = v169;
    *(a1 + 108) = 0;
  }

  v132.f32[0] = sub_19B66BF70(a1 + 84, a3, v76);
  v171 = v132.i32[0];
  v172 = COERCE_DOUBLE(__PAIR64__(v134, v133));
  *v173 = v135;
  v136.f32[0] = sub_19B66BFF4((a1 + 84), v132);
  v157 = v136.f32[0];
  v158 = v137;
  v159 = v138;
  v160 = v139;
  v140.f32[0] = sub_19B66BF70(&v171, &v157, v136);
  *buf = v140.i32[0];
  *&buf[4] = v141;
  *&buf[8] = v142;
  *v189 = v143;
  *(a1 + 16) = sub_19B66BF70(buf, a1, v140);
  *(a1 + 20) = v144;
  *(a1 + 24) = v145;
  *(a1 + 28) = v146;
  *(a1 + 48) = 1;
  *(a1 + 49) = v155.f32[0] >= 0.0017453;
  *(a1 + 109) = *(a1 + 108);
  *(a1 + 111) = *(a1 + 110);
}

void sub_19B6AEF90(uint64_t a1, float a2)
{
  if ((*(a1 + 20) & 1) != 0 && *a1 <= a2 && *(a1 + 4) >= a2 && *(a1 + 24) <= a2)
  {
    v4 = -1;
    while (v4 != 2)
    {
      v5 = sub_19B5BDB18(a1 + 24, v4 + 2);
      ++v4;
      if (v5 > a2)
      {
        sub_19B5BDB18(a1 + 40, v4 + 1);
        sub_19B5BDB18(a1 + 40, v4);
        sub_19B5BDB18(a1 + 24, v4 + 1);
        sub_19B5BDB18(a1 + 24, v4);
        sub_19B5BDB18(a1 + 24, v4);
        sub_19B5BDB18(a1 + 40, v4);
        return;
      }
    }
  }
}

float32_t sub_19B6AF0CC(float *a1)
{
  if ((atomic_load_explicit(&qword_1ED71D390, memory_order_acquire) & 1) == 0)
  {
    v16 = a1;
    v17 = __cxa_guard_acquire(&qword_1ED71D390);
    a1 = v16;
    if (v17)
    {
      qword_1ED71D3A8 = 1065353216;
      dword_1ED71D3B0 = 0;
      __cxa_guard_release(&qword_1ED71D390);
      a1 = v16;
    }
  }

  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = ((v3 * *&dword_1ED71D3B0) + (v2 * *(&qword_1ED71D3A8 + 1))) + (*a1 * *&qword_1ED71D3A8);
  v5 = 1.0;
  if (v4 < 1.0)
  {
    v5 = -1.0;
    if (v4 > -1.0)
    {
      v5 = ((v3 * *&dword_1ED71D3B0) + (v2 * *(&qword_1ED71D3A8 + 1))) + (*a1 * *&qword_1ED71D3A8);
    }
  }

  v6 = 0;
  v7 = (v2 * *&dword_1ED71D3B0) - (v3 * *(&qword_1ED71D3A8 + 1));
  v8 = (v3 * *&qword_1ED71D3A8) - (v1 * *&dword_1ED71D3B0);
  v9 = (v1 * *(&qword_1ED71D3A8 + 1)) - (v2 * *&qword_1ED71D3A8);
  *&v19 = v7;
  *(&v19 + 1) = v8;
  v20 = v9;
  v10 = 0.0;
  do
  {
    v10 = v10 + (*(&v19 + v6) * *(&v19 + v6));
    v6 += 4;
  }

  while (v6 != 12);
  if (sqrtf(v10) < 0.000001)
  {
    v19 = 0x3F80000000000000;
    v20 = 0.0;
    v8 = 1.0;
    v9 = 0.0;
    v7 = 0.0;
  }

  v11 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + (*(&v19 + v11) * *(&v19 + v11));
    v11 += 4;
  }

  while (v11 != 12);
  v13 = acosf(v5);
  v14 = sqrtf(v12);
  v18[0] = v13 * (v7 / v14);
  v18[1] = v13 * (v8 / v14);
  v18[2] = v13 * (v9 / v14);
  sub_19B66C264(&v21, v18);
  return v21.f32[0];
}

void sub_19B6AF264(uint64_t a1, float *a2, float *a3, float32x2_t *a4)
{
  v8 = 0;
  v73 = *MEMORY[0x1E69E9840];
  v9 = a4->f32[1];
  v10 = a4[1].f32[0];
  v11 = ((a2[2] * v10) + (a2[1] * v9)) + (*a2 * a4->f32[0]);
  v12 = ((v10 * a3[2]) + (a3[1] * v9)) + (*a3 * a4->f32[0]);
  v13 = *(a1 + 80);
  v14 = 0.0;
  do
  {
    v14 = v14 + (a2[v8] * a2[v8]);
    ++v8;
  }

  while (v8 != 3);
  if (sqrtf(v14) >= 0.087156)
  {
    v16 = 0;
    v17 = 0.0;
    do
    {
      v17 = v17 + (a3[v16] * a3[v16]);
      ++v16;
    }

    while (v16 != 3);
    v15 = sqrtf(v17) < 0.087156;
  }

  else
  {
    v15 = 1;
  }

  *(a1 + 80) = v15;
  if ((v13 & 1) == 0 && v15)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Entering ambience bed constraints singularity", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v68.i16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[PerceptualFilter] Entering ambience bed constraints singularity", &v68, 2);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMOQuaternion CMAudioPerceptualFilter::rollAboutBoresightToAlignVectors(const CMVector3d &, const CMVector3d &, const CMVector3d &)", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  v22 = v11;
  if (v13 && (*(a1 + 80) & 1) == 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v23 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Exiting ambience bed constraints singularity", buf, 2u);
    }

    v24 = sub_19B420058();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v68.i16[0] = 0;
      LODWORD(v65) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[PerceptualFilter] Exiting ambience bed constraints singularity", &v68, v65);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMOQuaternion CMAudioPerceptualFilter::rollAboutBoresightToAlignVectors(const CMVector3d &, const CMVector3d &, const CMVector3d &)", "CoreLocation: %s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  if (v22 >= 0.001 || v12 >= 0.001)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v45 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_ERROR, "[PerceptualFilter] Vectors to align are not perpendicular to boresight vector", buf, 2u);
    }

    v46 = sub_19B420058();
    if ((*(v46 + 160) & 0x80000000) == 0 || (*(v46 + 164) & 0x80000000) == 0 || (*(v46 + 168) & 0x80000000) == 0 || *(v46 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v68.i16[0] = 0;
      LODWORD(v65) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[PerceptualFilter] Vectors to align are not perpendicular to boresight vector", &v68, v65);
      v48 = v47;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMOQuaternion CMAudioPerceptualFilter::rollAboutBoresightToAlignVectors(const CMVector3d &, const CMVector3d &, const CMVector3d &)", "CoreLocation: %s\n", v47);
      if (v48 != buf)
      {
        free(v48);
      }
    }

    v49 = *(a1 + 104);
    v27 = (a1 + 104);
    v29 = v49;
    *buf = *a4;
    v72 = a4[1].f32[0];
  }

  else
  {
    v28 = *(a1 + 104);
    v27 = (a1 + 104);
    v29 = v28;
    *buf = *a4;
    v72 = a4[1].f32[0];
    if ((*(v27 - 6) & 1) == 0)
    {
      v30 = 0;
      v31 = 0.0;
      do
      {
        v31 = v31 + (a2[v30] * a2[v30]);
        ++v30;
      }

      while (v30 != 3);
      v32 = 0;
      v33 = 0.0;
      do
      {
        v33 = v33 + (a3[v32] * a3[v32]);
        ++v32;
      }

      while (v32 != 3);
      v34 = sqrtf(v31);
      v35 = a2[1] / v34;
      v36 = *a2 / v34;
      v37 = a2[2] / v34;
      v38 = sqrtf(v33);
      v39 = a3[1] / v38;
      v40 = a3[2] / v38;
      v41 = (v37 * v40) + (v35 * v39);
      v42 = *a3 / v38;
      v43 = v41 + (v36 * v42);
      v44 = 1.0;
      if (v43 < 1.0)
      {
        v44 = -1.0;
        if (v43 > -1.0)
        {
          v44 = v41 + (v36 * v42);
        }
      }

      v29 = acosf(v44);
      *buf = (v35 * v40) - (v37 * v39);
      *&buf[4] = (v37 * v42) - (v36 * v40);
      v72 = (v36 * v39) - (v35 * v42);
    }
  }

  v50 = 0;
  v51 = 0.0;
  do
  {
    v51 = v51 + (*&buf[v50] * *&buf[v50]);
    v50 += 4;
  }

  while (v50 != 12);
  v52 = sqrtf(v51);
  v53 = 0.0;
  if (v52 >= 0.000001)
  {
    v54 = 0;
    v55 = 0;
    do
    {
      *v55.i32 = *v55.i32 + (*&buf[v54] * *&buf[v54]);
      v54 += 4;
    }

    while (v54 != 12);
    v56 = 0;
    *v55.i32 = sqrtf(*v55.i32);
    v57 = v72 / *v55.i32;
    v58 = vdiv_f32(*buf, vdup_lane_s32(v55, 0));
    v59 = *a4;
    v60 = a4[1].f32[0];
    v68 = vsub_f32(vneg_f32(v58), *a4);
    v69 = -(v72 / *v55.i32) - v60;
    v61 = 0.0;
    do
    {
      v61 = v61 + (v68.f32[v56] * v68.f32[v56]);
      ++v56;
    }

    while (v56 != 3);
    v62 = 0;
    v66 = vsub_f32(v58, v59);
    v67 = v57 - v60;
    v63 = 0.0;
    do
    {
      v63 = v63 + (v66.f32[v62] * v66.f32[v62]);
      ++v62;
    }

    while (v62 != 3);
    if (sqrtf(v61) >= sqrtf(v63))
    {
      v53 = v29;
    }

    else
    {
      v53 = -v29;
    }
  }

  *v27 = v53;
  v64 = v53 * a4[1].f32[0];
  v68 = vmul_n_f32(*a4, v53);
  v69 = v64;
  sub_19B66C264(&v70, &v68);
}

void sub_19B6AF9C0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 188) = 1;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Bypassing ambience bed alignment. This should only be used for E2E latency testing.", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[PerceptualFilter] Bypassing ambience bed alignment. This should only be used for E2E latency testing.", v5, 2);
    v4 = v3;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::enableBypassAmbienceBedForE2ELatencyTesting()", "CoreLocation: %s\n", v3);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

os_log_t sub_19B6AFB6C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t sub_19B6AFB9C(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 4)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E283E0);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 4;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E283E0);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 4>::operator[](const size_t) [T = float, N = 4]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1 + 4 * a2;
}

uint64_t sub_19B6AFD94(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = 0x1000000000;
  *(a1 + 144) = 0x1000000000;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v16 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMResampleIMUData] Constructed CMResampleIMUData. Set output sample period to: %.4f s", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
    }

    v13 = 134217984;
    v14 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMResampleIMUData] Constructed CMResampleIMUData. Set output sample period to: %.4f s", COERCE_DOUBLE(&v13));
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMResampleIMUData::CMResampleIMUData(const double)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (a2 < 0.005 || a2 > 0.05)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = a2;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "[CMResampleIMUData] Invalid output sample period: %.4f s", buf, 0xCu);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
      }

      v13 = 134217984;
      v14 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMResampleIMUData] Invalid output sample period: %.4f s", COERCE_DOUBLE(&v13));
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMResampleIMUData::CMResampleIMUData(const double)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return a1;
}

uint64_t sub_19B6B00F0(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  result = 0;
  v90 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (*a1 >= 0.005 && v5 <= 0.05)
  {
    v6 = a2;
    v7 = a3 * 0.000001;
    if (!*(a1 + 10))
    {
      v16 = *(a1 + 12);
      v17 = *(a1 + 8);
      if (v17 >= v16)
      {
        v18 = *(a1 + 12);
      }

      else
      {
        v18 = 0;
      }

      *(a1 + 8 * (v17 - v18) + 16) = v7;
      if (v16)
      {
        *(a1 + 10) = 1;
      }

      else
      {
        *(a1 + 8) = v17 + 1;
      }

      v15 = (a1 + 144);
      goto LABEL_55;
    }

    v8 = a1 + 16;
    v9 = *(a1 + 8);
    v10 = *(a1 + 10) + v9 - 1;
    v11 = *(a1 + 12);
    if (v10 >= v11)
    {
      v12 = *(a1 + 12);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v8 + 8 * (v10 - v12));
    if (v7 <= v13)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
      }

      v19 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 8);
        v21 = *(v8 + 8 * v20);
        v22 = v20 + *(a1 + 10) - 1;
        v23 = *(a1 + 12);
        if (v22 < v23)
        {
          v23 = 0;
        }

        v24 = *(v8 + 8 * (v22 - v23));
        *buf = 134218496;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        *&buf[22] = 2048;
        *&buf[24] = v24;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "[CMResampleIMUData]:[feedIMUData] Invalid backwards or repeated timestamp, rejecting input. Input timestamp: %.4f s, buffer front: %.4f s, buffer back: %.4f s", buf, 0x20u);
      }

      v25 = sub_19B420058();
      if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
        }

        v26 = *(a1 + 8);
        v27 = *(v8 + 8 * v26);
        v28 = v26 + *(a1 + 10) - 1;
        v29 = *(a1 + 12);
        if (v28 < v29)
        {
          v29 = 0;
        }

        v30 = *(v8 + 8 * (v28 - v29));
        v80 = 134218496;
        v81 = v7;
        v82 = 2048;
        v83 = v27;
        v84 = 2048;
        v85 = v30;
        LODWORD(v75) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMResampleIMUData]:[feedIMUData] Invalid backwards or repeated timestamp, rejecting input. Input timestamp: %.4f s, buffer front: %.4f s, buffer back: %.4f s", COERCE_DOUBLE(&v80), v75, v76);
        v32 = v31;
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMResampleIMUData::feedIMUData(const CMRelDM::IMUData &, const uint64_t)", "CoreLocation: %s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    else
    {
      v14 = *(v8 + 8 * v9);
      if (v7 - v14 > 0.1)
      {
        *(a1 + 144) = 0;
        v15 = (a1 + 144);
        *(a1 + 8) = 0;
        *(a1 + 16) = v7;
        if (v11)
        {
          *(a1 + 10) = 1;
        }

        else
        {
          *(a1 + 8) = 1;
        }

LABEL_55:
        sub_19B6B0958(v15, a2);
        return 1;
      }

      if (v7 - v14 >= v5)
      {
        v51 = v5 + v14;
        v52 = v5 + v14 - v13;
        if (v52 >= 0.001)
        {
          v58 = v52 / (v7 - v13);
          if (v58 < 0.0 || v58 > 1.0)
          {
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E28780);
            }

            v71 = off_1ED71C828;
            if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v71, OS_LOG_TYPE_FAULT, "Assertion failed: interpolationRatio >= 0 && interpolationRatio <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/DeviceMotion/RelativeDeviceMotion/CMResampleIMUData.cpp, line 157,Invalid interpolationRatio..", buf, 2u);
            }

            v72 = sub_19B420058();
            if ((*(v72 + 160) & 0x80000000) == 0 || (*(v72 + 164) & 0x80000000) == 0 || (*(v72 + 168) & 0x80000000) == 0 || *(v72 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E28780);
              }

              LOWORD(v80) = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: interpolationRatio >= 0 && interpolationRatio <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/DeviceMotion/RelativeDeviceMotion/CMResampleIMUData.cpp, line 157,Invalid interpolationRatio..", &v80, 2);
              v74 = v73;
              sub_19B6BB7CC("Generic", 1, 0, 0, "void CMResampleIMUData::interpolate(const CMRelDM::IMUData &, double)", "CoreLocation: %s\n", v73);
              if (v74 != buf)
              {
                free(v74);
              }
            }
          }

          v60 = *(a1 + 144) + *(a1 + 146) - 1;
          v61 = *(a1 + 148);
          if (v60 < v61)
          {
            v61 = 0;
          }

          v62 = a1 + 72 * (v60 - v61);
          v63 = v58;
          v64 = *(v6 + 12);
          *&v65 = *(v62 + 204) + (*(v6 + 13) - *(v62 + 204)) * v58;
          v78 = vaddq_f32(*(v62 + 168), vmulq_n_f32(vsubq_f32(*(v6 + 1), *(v62 + 168)), v63));
          v79 = vaddq_f32(*(v62 + 152), vmulq_n_f32(vsubq_f32(*v6, *(v62 + 152)), v63));
          v77 = vaddq_f32(*(v62 + 184), vmulq_n_f32(vsubq_f32(*(v6 + 2), *(v62 + 184)), v63));
          sub_19B66D5F4((v62 + 208), (v6 + 56), v63);
          *buf = v79;
          *&buf[16] = v78;
          v87 = v77;
          *&v88 = __PAIR64__(v65, v64);
          *(&v88 + 1) = __PAIR64__(v67, v66);
          v89 = __PAIR64__(v69, v68);
          *(a1 + 8) = 0;
          *(a1 + 144) = 0;
          v70 = *(a1 + 12);
          *(a1 + 16) = v51;
          if (v70)
          {
            *(a1 + 10) = 1;
          }

          else
          {
            *(a1 + 8) = 1;
          }

          a2 = buf;
          v15 = (a1 + 144);
        }

        else
        {
          v15 = (a1 + 144);
          v53 = *(a1 + 144) + *(a1 + 146) - 1;
          v54 = *(a1 + 148);
          if (v53 < v54)
          {
            v54 = 0;
          }

          v55 = a1 + 72 * (v53 - v54);
          v56 = *(v55 + 168);
          v57 = *(v55 + 200);
          v87 = *(v55 + 184);
          v88 = v57;
          v89 = *(v55 + 216);
          *buf = *(v55 + 152);
          *&buf[16] = v56;
          *(a1 + 8) = 0;
          *v15 = 0;
          *(a1 + 16) = v13;
          if (v11)
          {
            *(a1 + 10) = 1;
          }

          else
          {
            *(a1 + 8) = 1;
          }

          a2 = buf;
        }

        goto LABEL_55;
      }

      if (*(a1 + 148) == *(a1 + 146))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
        }

        v33 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          v34 = *(a1 + 8);
          v35 = *(v8 + 8 * v34);
          v36 = v34 + *(a1 + 10) - 1;
          v37 = *(a1 + 12);
          if (v36 < v37)
          {
            v37 = 0;
          }

          v38 = *(v8 + 8 * (v36 - v37));
          *buf = 134218496;
          *&buf[4] = v7;
          *&buf[12] = 2048;
          *&buf[14] = v35;
          *&buf[22] = 2048;
          *&buf[24] = v38;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_ERROR, "[CMResampleIMUData]:[feedIMUData] Too many consecutive over-closely spaced sampled received. This suggests an input sampling rate anomaly. Input timestamp: %.4f s, First / last timestamp in the buffer : %.4f s / %.4f s . The resampling will still continue but in a non-ideal rate.", buf, 0x20u);
        }

        v39 = sub_19B420058();
        if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
          }

          v40 = *(a1 + 8);
          v41 = *(v8 + 8 * v40);
          v42 = v40 + *(a1 + 10) - 1;
          v43 = *(a1 + 12);
          if (v42 < v43)
          {
            v43 = 0;
          }

          v44 = *(v8 + 8 * (v42 - v43));
          v80 = 134218496;
          v81 = v7;
          v82 = 2048;
          v83 = v41;
          v84 = 2048;
          v85 = v44;
          LODWORD(v75) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMResampleIMUData]:[feedIMUData] Too many consecutive over-closely spaced sampled received. This suggests an input sampling rate anomaly. Input timestamp: %.4f s, First / last timestamp in the buffer : %.4f s / %.4f s . The resampling will still continue but in a non-ideal rate.", COERCE_DOUBLE(&v80), v75, v76);
          v46 = v45;
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMResampleIMUData::feedIMUData(const CMRelDM::IMUData &, const uint64_t)", "CoreLocation: %s\n", v45);
          if (v46 != buf)
          {
            free(v46);
          }
        }
      }

      v47 = *(a1 + 10);
      v48 = *(a1 + 12);
      v49 = *(a1 + 8);
      if (v49 + v47 >= v48)
      {
        v50 = *(a1 + 12);
      }

      else
      {
        v50 = 0;
      }

      *(v8 + 8 * (v49 + v47 - v50)) = v7;
      if (v48 <= v47)
      {
        if (v49 + 1 < v48)
        {
          LOWORD(v48) = 0;
        }

        *(a1 + 8) = v49 + 1 - v48;
      }

      else
      {
        *(a1 + 10) = v47 + 1;
      }

      sub_19B6B0958((a1 + 144), v6);
    }

    return 0;
  }

  return result;
}

unsigned __int16 *sub_19B6B0958(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[36 * (v3 - v2)];
  v6 = *(a2 + 32);
  v5 = *(a2 + 48);
  v7 = *(a2 + 16);
  *(v4 + 9) = *(a2 + 64);
  *(v4 + 4) = *a2;
  *(v4 + 12) = v7;
  *(v4 + 28) = v5;
  *(v4 + 20) = v6;
  v8 = result[1];
  v9 = *(result + 1);
  if (v9 <= v8)
  {
    v10 = *result + 1;
    if (v10 < v9)
    {
      LOWORD(v9) = 0;
    }

    *result = v10 - v9;
  }

  else
  {
    result[1] = v8 + 1;
  }

  return result;
}

double sub_19B6B09D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 10))
  {
    v3 = a1 + 72 * *(a1 + 144);
    v4 = *(v3 + 168);
    v5 = *(v3 + 200);
    *(a2 + 32) = *(v3 + 184);
    *(a2 + 48) = v5;
    *(a2 + 64) = *(v3 + 216);
    *a2 = *(v3 + 152);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[CMResampleIMUData]:[getResampledIMU] Called getResampledIMU before any valid samples were fed to the resampler. This should not occur under normal conditions. Returning zero-IMU data. This is a serious error, investigate further.", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
      }

      v11[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMResampleIMUData]:[getResampledIMU] Called getResampledIMU before any valid samples were fed to the resampler. This should not occur under normal conditions. Returning zero-IMU data. This is a serious error, investigate further.", v11, 2);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMRelDM::IMUData CMResampleIMUData::getResampledIMU() const", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 36) = vdup_n_s32(0x3A03126Fu);
    *(a2 + 44) = 973279855;
    *(a2 + 52) = xmmword_19B7BB860;
    *(a2 + 68) = 1065353216;
    *&v4 = sub_19B41E130((a2 + 56), xmmword_19B7BB860).u64[0];
  }

  return *&v4;
}

unint64_t sub_19B6B0BF4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 10))
  {
    return (*(a1 + 8 * *(a1 + 8) + 16) * 1000000.0);
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
  }

  v2 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[CMResampleIMUData]:[getResampledTimestampMicroSeconds] Called getResampledTimestampMicroSeconds before any valid samples were fed to the resampler. This should not occur under normal conditions. Returning zero-timestamp. This is a serious error, investigate further.", buf, 2u);
  }

  v3 = sub_19B420058();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
    }

    v6[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMResampleIMUData]:[getResampledTimestampMicroSeconds] Called getResampledTimestampMicroSeconds before any valid samples were fed to the resampler. This should not occur under normal conditions. Returning zero-timestamp. This is a serious error, investigate further.", v6, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 0, "uint64_t CMResampleIMUData::getResampledTimestampMicroSeconds() const", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  return 0;
}

os_log_t sub_19B6B0DBC()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B6B0E40(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = (a3 + 24);
  v7 = *(a3 + 24);
  if (v7)
  {
    if (v7 == a3)
    {
      *(a1 + 24) = a1;
      (*(**v6 + 24))(*v6, a1);
LABEL_7:
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = a4;
      *(a1 + 64) = 0;
      operator new();
    }

    *(a1 + 24) = v7;
  }

  else
  {
    v6 = (a1 + 24);
  }

  *v6 = 0;
  goto LABEL_7;
}

void sub_19B6B1034(_Unwind_Exception *a1)
{
  MEMORY[0x19EAE76F0](v2, 0x81C4018A671A6);
  v5 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_19B6399D4(v1);
  _Unwind_Resume(a1);
}

double sub_19B6B10D4(double *a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("onLidAngleChange", "CLDisplayGravityService.mm", 22, "data");
  }

  if (!a2)
  {
    __assert_rtn("onLidAngleChange", "CLDisplayGravityService.mm", 23, "info");
  }

  result = *a1;
  *(a2 + 56) = *a1;
  return result;
}

void sub_19B6B1138(uint64_t *a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __assert_rtn("onDeviceMotion", "CLDisplayGravityService.mm", 15, "sample");
  }

  if (!a2)
  {
    __assert_rtn("onDeviceMotion", "CLDisplayGravityService.mm", 16, "info");
  }

  v4 = *(a2 + 56);
  if (v4 < 0.0)
  {
    v4 = 180.0;
  }

  v37 = v4;
  v48 = (180.0 - v4) * -0.017453;
  v49 = 0;
  sub_19B66C264(&v47, &v48);
  v5 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 1)), *(a1 + 3));
  v46 = vextq_s8(v5, v5, 4uLL);
  sub_19B41E130(&v46, v46);
  v6.f32[0] = sub_19B420740(a1 + 1);
  v40 = v6.f32[0];
  v8 = v7;
  v10 = v9;
  v11.f32[0] = sub_19B66BFF4(&v47, v6);
  v12 = v11.i32[0];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  *buf = v11.i32[0];
  v67 = __PAIR64__(v15, v13);
  *v68 = v17;
  v19 = sub_19B66BF70(buf, v46.f32, v11);
  v21 = v20;
  v38 = v22;
  v39 = v23;
  *buf = v12;
  v67 = __PAIR64__(v16, v14);
  *v68 = v18;
  v24 = v10;
  v25 = sub_19B66C1A4(buf, v40, v8, v10);
  v27 = v26;
  v29 = v28;
  v45 = *a1;
  v30 = v19;
  v31 = v25;
  v41[2] = v21;
  v41[3] = v38;
  v41[0] = v39;
  v41[1] = v30;
  v42 = v25;
  v43 = v26;
  v44 = v28;
  v32 = *(a2 + 24);
  if (!v32)
  {
    sub_19B69ADA0();
  }

  (*(*v32 + 48))(v32, v41);
  if (qword_1EAFE2AD8 != -1)
  {
    dispatch_once(&qword_1EAFE2AD8, &unk_1F0E298E0);
  }

  v33 = qword_1EAFE2AE0;
  if (os_log_type_enabled(qword_1EAFE2AE0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136448002;
    v67 = "void CLDisplayGravityService::notifyDeviceMotion(const CLDeviceMotion::Sample &)";
    *v68 = 2050;
    *&v68[2] = v40;
    v69 = 2050;
    v70 = v8;
    v71 = 2050;
    v72 = v24;
    v73 = 2050;
    v74 = v37;
    v75 = 2050;
    v76 = v31;
    v77 = 2050;
    v78 = v27;
    v79 = 2050;
    v80 = v29;
    _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[CLDisplayGravityService] %{public}s : gravity=%{public}f, %{public}f ,%{public}f, lidAngleDeg=%{public}f, gravityCameraFrame=%{public}f, %{public}f ,%{public}f", buf, 0x52u);
  }

  v34 = sub_19B420058();
  if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AD8 != -1)
    {
      dispatch_once(&qword_1EAFE2AD8, &unk_1F0E298E0);
    }

    v50 = 136448002;
    v51 = "void CLDisplayGravityService::notifyDeviceMotion(const CLDeviceMotion::Sample &)";
    v52 = 2050;
    v53 = v40;
    v54 = 2050;
    v55 = v8;
    v56 = 2050;
    v57 = v24;
    v58 = 2050;
    v59 = v37;
    v60 = 2050;
    v61 = v31;
    v62 = 2050;
    v63 = v27;
    v64 = 2050;
    v65 = v29;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AE0, 2, "[CLDisplayGravityService] %{public}s : gravity=%{public}f, %{public}f ,%{public}f, lidAngleDeg=%{public}f, gravityCameraFrame=%{public}f, %{public}f ,%{public}f", &v50, 82);
    v36 = v35;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDisplayGravityService::notifyDeviceMotion(const CLDeviceMotion::Sample &)", "CoreLocation: %s\n", v35);
    if (v36 != buf)
    {
      free(v36);
    }
  }
}

uint64_t sub_19B6B1560(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    sub_19B6B160C(a1);
  }

  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_19B6399D4(a1);
}

void sub_19B6B160C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = sub_19B686F9C();
    sub_19B426A14(v2, 0, *(a1 + 40));
    v3 = sub_19B424AE0();
    sub_19B425248(v3, *(a1 + 32));
    *(a1 + 64) = 0;
  }
}

void sub_19B6B168C(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && (sub_19B423E34() & 4) != 0)
  {
    if (sub_19B686F9C())
    {
      v2 = sub_19B686F9C();
      sub_19B437CF0(v2, 0, *(a1 + 40), -1.0);
      v3 = sub_19B424AE0();
      sub_19B439EF4(v3, *(a1 + 32), *(a1 + 48));
      *(a1 + 64) = 1;
    }
  }
}

os_log_t sub_19B6B16F4()
{
  result = os_log_create("com.apple.locationd.Motion", "DisplayGravity");
  qword_1EAFE2AE0 = result;
  return result;
}

void sub_19B6B1728(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B6B18A4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  sub_19B6B1900();
  return a1;
}

void sub_19B6B18E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6B1900()
{
  v13 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  result = sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v2 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "runningOnMotionThread";
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLSPUHIDDriverInterface calls must be made on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }
    }

    v3 = qword_1EAFE2838;
    if (os_signpost_enabled(qword_1EAFE2838))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "runningOnMotionThread";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLSPUHIDDriverInterface calls must be made on motion thread", "{msg%{public}.0s:CLSPUHIDDriverInterface calls must be made on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }
    }

    v4 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "runningOnMotionThread";
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLSPUHIDDriverInterface calls must be made on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLSPUHIDDriverInterface.mm", 185, "assertOnMotionThread");
  }

  return result;
}

void *sub_19B6B1B7C(void *a1)
{
  sub_19B6B1BB4(a1);
  v2 = a1[1];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return a1;
}

void sub_19B6B1BB4(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_19B6B1900();
  if (!*a1)
  {
    return;
  }

  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v2 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CLSPUHIDDriverInterface] Close hid driver interface", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    LOWORD(v18) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 2, "[CLSPUHIDDriverInterface] Close hid driver interface", &v18, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::closeHIDDriverInterface()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a1 + 2;
  if (v7)
  {
    (*(*v7 + 72))(a1[3], 0);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else if (!v6)
  {
    *(*a1 + 8) = 0;
    *v8 = 0;
    a1[3] = 0;
    return;
  }

  ((*v6)->Release)(v6);
  IODestroyPlugInInterface(v6);
LABEL_19:
  *(*a1 + 8) = 0;
  *v8 = 0;
  a1[3] = 0;
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v9 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[2];
    v11 = a1[3];
    *buf = 134218752;
    v27 = v6;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = v10;
    v32 = 2048;
    v33 = v11;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[CLSPUHIDDriverInterface] Closed hid driver interface, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x2Au);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v13 = a1[2];
    v14 = a1[3];
    v18 = 134218752;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v13;
    v24 = 2048;
    v25 = v14;
    LODWORD(v17) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 0, "[CLSPUHIDDriverInterface] Closed hid driver interface, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", &v18, v17);
    v16 = v15;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::closeHIDDriverInterface()", "CoreLocation: %s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }
}

void sub_19B6B1F70(uint64_t *a1)
{
  v84 = *MEMORY[0x1E69E9840];
  sub_19B6B1900();
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v2 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CLSPUHIDDriverInterface] Open hid driver interface", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    LOWORD(v72) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 2, "[CLSPUHIDDriverInterface] Open hid driver interface", &v72, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *a1;
  if (!*a1)
  {
    return;
  }

  theInterface = 0;
  valuePtr = 0;
  v69 = 0;
  v7 = sub_19B43EE18(v6);
  if (!v7)
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v25 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_INFO, "[CLSPUHIDDriverInterface] IoHidDevice is not ready", buf, 2u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) <= 1 && *(v26 + 164) <= 1 && *(v26 + 168) <= 1 && !*(v26 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    LOWORD(v72) = 0;
    LODWORD(byte15) = 2;
    v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 1, "[CLSPUHIDDriverInterface] IoHidDevice is not ready", &v72, byte15);
    v24 = v28;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v27);
LABEL_49:
    if (v24 == buf)
    {
      return;
    }

    goto LABEL_50;
  }

  v8 = v7;
  RegistryID = IOHIDServiceClientGetRegistryID(v7);
  CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
  v10 = *MEMORY[0x1E696CD60];
  v11 = IORegistryEntryIDMatching(valuePtr);
  MatchingService = IOServiceGetMatchingService(v10, v11);
  if (!MatchingService)
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v29 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] Service doesn't exist", buf, 2u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    LOWORD(v72) = 0;
    LODWORD(byte15) = 2;
    v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 17, "[CLSPUHIDDriverInterface] Service doesn't exist", &v72, byte15);
    v24 = v32;
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v31);
    goto LABEL_49;
  }

  v13 = MatchingService;
  HIDWORD(v68) = 0;
  v14 = *MEMORY[0x1E695E4A8];
  v15 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x3Bu, 0xC5u, 0xCCu, 0x87u, 0x84u, 0x5Eu, 0x48u, 0xABu, 0xA9u, 0xC2u, 0x94u, 0x36u, 0, 0x1Bu, 0xA6u, 0x8Au);
  v16 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v17 = IOCreatePlugInInterfaceForService(v13, v15, v16, &theInterface, &v68 + 1);
  IOObjectRelease(v13);
  if (v17)
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v18 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      v19 = mach_error_string(v17);
      *buf = 67240706;
      *v79 = v17;
      *&v79[4] = 2082;
      *&v79[6] = v19;
      *&v79[14] = 2114;
      *&v79[16] = v8;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] Unable to create plugin interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v21 = qword_1EAFE2838;
    v22 = mach_error_string(v17);
    v72 = 67240706;
    *v73 = v17;
    *&v73[4] = 2082;
    *&v73[6] = v22;
    *&v73[14] = 2114;
    *&v73[16] = v8;
    LODWORD(byte15a) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v21, 17, "[CLSPUHIDDriverInterface] Unable to create plugin interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", &v72, byte15a);
    v24 = v23;
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v23);
    if (v24 == buf)
    {
      return;
    }

LABEL_50:
    free(v24);
    return;
  }

  v33 = theInterface;
  QueryInterface = (*theInterface)->QueryInterface;
  v35 = CFUUIDGetConstantUUIDWithBytes(v14, 0x6Eu, 0xBEu, 0xBAu, 0x6Eu, 9u, 0x1Eu, 0x45u, 0x2Eu, 0x82u, 0xEAu, 0x29u, 0x79u, 0x81u, 0x6Fu, 0xB1u, 0xB5u);
  v36 = CFUUIDGetUUIDBytes(v35);
  v37 = (QueryInterface)(v33, *&v36.byte0, *&v36.byte8, &v69);
  if (v37)
  {
    v38 = v37;
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v39 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      v40 = mach_error_string(v38);
      *buf = 67240706;
      *v79 = v38;
      *&v79[4] = 2082;
      *&v79[6] = v40;
      *&v79[14] = 2114;
      *&v79[16] = v8;
      _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] Unable to set up query interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
    }

    v41 = sub_19B420058();
    if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }

      v42 = qword_1EAFE2838;
      v43 = mach_error_string(v38);
      v72 = 67240706;
      *v73 = v38;
      *&v73[4] = 2082;
      *&v73[6] = v43;
      *&v73[14] = 2114;
      *&v73[16] = v8;
      LODWORD(byte15b) = 28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v42, 17, "[CLSPUHIDDriverInterface] Unable to set up query interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", &v72, byte15b);
      v45 = v44;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v44);
      if (v45 != buf)
      {
        free(v45);
      }
    }

LABEL_78:
    if (theInterface)
    {
      ((*theInterface)->Release)(theInterface);
      IODestroyPlugInInterface(theInterface);
    }

    return;
  }

  v46 = (*(*v69 + 64))(v69, 0);
  if (v46)
  {
    v47 = v46;
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v48 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      v49 = mach_error_string(v47);
      *buf = 67240706;
      *v79 = v47;
      *&v79[4] = 2082;
      *&v79[6] = v49;
      *&v79[14] = 2114;
      *&v79[16] = v8;
      _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] Unable to open hid driver interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
    }

    v50 = sub_19B420058();
    if ((*(v50 + 160) & 0x80000000) == 0 || (*(v50 + 164) & 0x80000000) == 0 || (*(v50 + 168) & 0x80000000) == 0 || *(v50 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }

      v51 = qword_1EAFE2838;
      v52 = mach_error_string(v47);
      v72 = 67240706;
      *v73 = v47;
      *&v73[4] = 2082;
      *&v73[6] = v52;
      *&v73[14] = 2114;
      *&v73[16] = v8;
      LODWORD(byte15b) = 28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v51, 17, "[CLSPUHIDDriverInterface] Unable to open hid driver interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", &v72, byte15b);
      v54 = v53;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v53);
      if (v54 != buf)
      {
        free(v54);
      }
    }

    if (v69)
    {
      (*(*v69 + 72))(v69, 0);
    }

    goto LABEL_78;
  }

  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v55 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEFAULT))
  {
    v56 = a1[2];
    v57 = a1[3];
    *buf = 134219008;
    *v79 = valuePtr;
    *&v79[8] = 2048;
    *&v79[10] = v56;
    *&v79[18] = 2048;
    *&v79[20] = v57;
    v80 = 2048;
    v81 = theInterface;
    v82 = 2048;
    v83 = v69;
    _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_DEFAULT, "[CLSPUHIDDriverInterface] Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x34u);
  }

  v58 = sub_19B420058();
  if (*(v58 + 160) > 1 || *(v58 + 164) > 1 || *(v58 + 168) > 1 || *(v58 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v59 = a1[2];
    v60 = a1[3];
    v72 = 134219008;
    *v73 = valuePtr;
    *&v73[8] = 2048;
    *&v73[10] = v59;
    *&v73[18] = 2048;
    *&v73[20] = v60;
    v74 = 2048;
    v75 = theInterface;
    v76 = 2048;
    v77 = v69;
    LODWORD(byte15b) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 0, "[CLSPUHIDDriverInterface] Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", &v72, byte15b, v68, v69, theInterface);
    v62 = v61;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v61);
    if (v62 != buf)
    {
      free(v62);
    }
  }

  v63 = theInterface;
  *(*a1 + 8) = valuePtr;
  v64 = v69;
  a1[2] = v63;
  a1[3] = v64;
}

os_log_t sub_19B6B2C08()
{
  result = os_log_create("com.apple.locationd.Motion", "AOP");
  qword_1EAFE2838 = result;
  return result;
}

uint64_t sub_19B6B2C38(uint64_t a1)
{
  *a1 = &unk_1F0E3AEA0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0;
  v2 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6B2D14;
  v4[3] = &unk_1E75327D8;
  v4[4] = a1;
  sub_19B420C9C(v2, v4);
  return a1;
}

void sub_19B6B2CF0(_Unwind_Exception *a1)
{
  sub_19B6B3E90(v2, 0);
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_19B6B2D1C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v2 = sub_19B421620();
  if ((v2 & 0x2000000000000000) != 0)
  {
    if (!*(a1 + 8))
    {
      v3 = sub_19B42CAAC();
      sub_19B42C428(v3);
    }
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v4 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Service unavailable.", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 17, "Service unavailable.", v9, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUFlickGestureInterface::openHidDevice()", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return (v2 >> 61) & 1;
}

void sub_19B6B3008(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6B303C(void *a1)
{
  v2 = a1[3];
  sub_19B6B1BB4(v2);
  sub_19B6B1F70(v2);
  v3 = *(*a1 + 40);

  return v3(a1);
}

void sub_19B6B30A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v4 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      *__dst = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 1, "Empty payload, returning", __dst, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUFlickGestureInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n", v6);
LABEL_23:
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v9 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      *__dst = 0;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 17, "Event ref invalid", __dst, 2);
      v8 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUFlickGestureInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n", v11);
      goto LABEL_23;
    }
  }
}

void sub_19B6B37F0(uint64_t a1, char a2, double a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6B3884;
  v7[3] = &unk_1E75342D8;
  v7[4] = a1;
  v8 = a2;
  *&v7[5] = a3;
  sub_19B420C9C(v6, v7);
}

void sub_19B6B3884(uint64_t a1)
{
  v1 = a1;
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (sub_19B6B2D1C(v2))
  {
    v19[0] = 3;
    v19[1] = v1[48];
    v20 = (*(v1 + 5) * 1000000.0);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v3 = off_1EAFE2970;
    v4 = "sE";
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v1 + 48);
      v6 = *(v1 + 5);
      *buf = 67240448;
      *&buf[4] = v5;
      v25 = 2050;
      v26 = v6;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CLSPUFlickGestureInterface] Simulate,gestureState,%{public}u,%{public}f", buf, 0x12u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) <= 1 && *(v7 + 164) <= 1 && *(v7 + 168) <= 1 && !*(v7 + 152))
    {
      goto LABEL_13;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v8 = *(v1 + 48);
      v9 = *(v1 + 5);
      v21[0] = *(v4 + 296);
      v21[1] = v8;
      v22 = 2050;
      v23 = v9;
      LODWORD(v18) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 0, "[CLSPUFlickGestureInterface] Simulate,gestureState,%{public}u,%{public}f", v21, v18);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUFlickGestureInterface::simulateFlickGestureEvent(uint8_t, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }

LABEL_13:
      sub_19B420D84();
      sub_19B44B9A0();
      if ((sub_19B421620() & 0x2000000000000000) != 0)
      {
        break;
      }

      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      v16 = off_1EAFE2970;
      v4 = "";
      v1 = "isAvailable()";
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = "assert";
        v29 = 2081;
        v30 = "isAvailable()";
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLSPUFlickGestureInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
        }
      }

      v17 = off_1EAFE2970;
      if (os_signpost_enabled(off_1EAFE2970))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = "assert";
        v29 = 2081;
        v30 = "isAvailable()";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLSPUFlickGestureInterface] Service required", "{msg%{public}.0s:[CLSPUFlickGestureInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
        }
      }

      v2 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = "assert";
        v29 = 2081;
        v30 = "isAvailable()";
        _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLSPUFlickGestureInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/FlickGesture/CLSPUFlickGestureInterface.mm", 27, "sendCommand");
LABEL_40:
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v21[0] = 0;
    *buf = 4;
    if (sub_19B44CF80(*(v2 + 3), v19, 0xA, v21, buf))
    {
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      v12 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "[CLSPUFlickGestureInterface] Simulate failed", buf, 2u);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
        }

        LOWORD(v21[0]) = 0;
        LODWORD(v18) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 16, "[CLSPUFlickGestureInterface] Simulate failed", v21, v18);
        v15 = v14;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUFlickGestureInterface::simulateFlickGestureEvent(uint8_t, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }
  }
}

void sub_19B6B3E14(void *a1)
{
  sub_19B6B3EDC(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B6B3E60()
{
  result = os_log_create("com.apple.locationd.Motion", "Flick");
  off_1EAFE2970 = result;
  return result;
}

void *sub_19B6B3E90(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B6B1B7C(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void *sub_19B6B3EDC(void *a1)
{
  *a1 = &unk_1F0E3AEA0;
  sub_19B6B3E90(a1 + 3, 0);
  v2 = a1[2];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return a1;
}

uint64_t sub_19B6B3F30(uint64_t a1, double a2)
{
  v2 = &dword_19B7BBD38;
  v3 = 96;
  while (1)
  {
    v4 = *(v2 - 3);
    if (v4 <= a2)
    {
      v5 = *(v2 - 2);
      if (v5 > a2)
      {
        v7 = *v2;
        goto LABEL_10;
      }
    }

    if (*v2 == 1)
    {
      v5 = *(v2 - 2);
      if (vabdd_f64(a2, v5) <= 1.0e-12)
      {
        break;
      }
    }

    v2 += 8;
    v3 -= 32;
    if (!v3)
    {
      return 0;
    }
  }

  v7 = 1;
LABEL_10:
  *(a1 + 24) = v7;
  v6 = 1;
  *a1 = v4;
  *(a1 + 8) = v5;
  return v6;
}

void sub_19B6B3FAC(uint64_t a1, void *a2, double *a3, double *a4, char a5)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F0E32388;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 9) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 128) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  *(a1 + 184) = _Q0;
  *(a1 + 200) = 0xBFF0000000000000;
  v10 = (0.100000001 / *a4);
  *(a1 + 208) = &unk_1F0E32728;
  *(a1 + 216) = v10;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  v11 = (0.100000001 / *a4);
  *(a1 + 280) = &unk_1F0E32728;
  *(a1 + 288) = v11;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 472) = a5;
  *(a1 + 480) = *a2;
  *(a1 + 488) = *a4;
  *(a1 + 496) = 4;
  *(a1 + 504) = 0x3FA0A3D70A3D70A4;
  *(a1 + 512) = 1;
  *(a1 + 520) = &unk_1F0E32728;
  *(a1 + 528) = 100;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 592) = &unk_1F0E32C18;
  *(a1 + 600) = 20;
  *(a1 + 608) = &unk_1F0E32748;
  *(a1 + 616) = 20;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = &unk_1F0E32748;
  *(a1 + 696) = 20;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 768) = &unk_1F0E32748;
  *(a1 + 776) = 20;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0xBFF0000000000000;
  *(a1 + 904) = 0;
  operator new[]();
}

void sub_19B6B4884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_19B66F4D8(v15);
  v14[65] = a12;
  sub_19B42A568(v14 + 68);
  v14[35] = a13;
  sub_19B42A568(v14 + 38);
  v14[26] = a14;
  sub_19B42A568(v14 + 29);
  _Unwind_Resume(a1);
}

void *sub_19B6B48D4(void *a1)
{
  *a1 = &unk_1F0E32388;
  v2 = a1[16];
  if (v2)
  {
    MEMORY[0x19EAE76D0](v2, 0x1000C8052888210);
  }

  sub_19B66F4D8(a1 + 74);
  a1[65] = &unk_1F0E32728;
  sub_19B42A568(a1 + 68);
  a1[35] = &unk_1F0E32728;
  sub_19B42A568(a1 + 38);
  a1[26] = &unk_1F0E32728;
  sub_19B42A568(a1 + 29);
  return a1;
}

void sub_19B6B49B4(void *a1)
{
  sub_19B6B48D4(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6B49F4(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 11) = 0;
  bzero((a1 + 16), 0x20uLL);
  *(a1 + 40) = 0x3FF0000000000000;
  bzero((a1 + 64), 0x30uLL);
  bzero(*(a1 + 120), 0x18uLL);
  bzero(*(a1 + 112), 0x3CuLL);
  v2 = *(a1 + 120);
  memset_pattern16(v2, &unk_19B7BBDB0, 0xCuLL);
  memset_pattern16((v2 + 12), &unk_19B7BBDC0, 0xCuLL);
  *(a1 + 12) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  *(a1 + 184) = 0xBFF0000000000000;
  bzero((a1 + 352), 0xCuLL);
  bzero((a1 + 364), 0xCuLL);
  bzero((a1 + 376), 0x18uLL);
  bzero((a1 + 156), 0xCuLL);
  bzero((a1 + 136), 0xCuLL);
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  bzero((a1 + 448), 0x18uLL);
  bzero((a1 + 400), 0x18uLL);
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  bzero((a1 + 848), 0xCuLL);
  bzero((a1 + 864), 0x18uLL);
  *(a1 + 888) = 0;
  *(a1 + 896) = 0xBFF0000000000000;
  *(a1 + 904) = 0;
  sub_19B43FC50((a1 + 608));
  sub_19B43FC50((a1 + 688));
  sub_19B43FC50((a1 + 768));
  sub_19B43FA98((a1 + 520));
  sub_19B43FA98((a1 + 208));
  sub_19B43FA98((a1 + 280));
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
  }

  v8 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 600);
    *buf = 134217984;
    v17 = v9;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "fAccelBuffer,size,%zu", buf, 0xCu);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v11 = *(a1 + 600);
    v14 = 134217984;
    v15 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "fAccelBuffer,size,%zu", &v14);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::reset()", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }
}

uint64_t sub_19B6B4CF4(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *(a1 + 9);
  if (v2 == 1)
  {
    *a2 = vcvt_f32_f64(*(a1 + 376));
    v3 = *(a1 + 392);
    *(a2 + 8) = v3;
  }

  return v2;
}

void sub_19B6B4D2C(uint64_t a1, float64x2_t *a2, uint64_t a3, double *a4, void *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  *(a1 + 168) = *a5;
  ++*(a1 + 152);
  v7 = *a4;
  v8 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(*a2), vdup_n_s32(0x3C8EFA35u))), *(a1 + 88)));
  v9 = (v7 * 0.017453) - *(a1 + 104);
  *(a1 + 156) = v8;
  *(a1 + 164) = v9;
  v10 = v8.f32[1];
  v37 = *&v8;
  v38 = sqrtf((vmuls_lane_f32(v8.f32[1], v8, 1) + (v8.f32[0] * v8.f32[0])) + (v9 * v9));
  sub_19B4200DC(a1 + 520, &v38);
  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v12 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      v45 = (v38 / 0.017453);
      v46 = 2048;
      v47 = (*&v37 / 0.017453);
      v48 = 2048;
      v49 = (v10 / 0.017453);
      v50 = 2048;
      v51 = (v9 / 0.017453);
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "omegaMag9, %.3f, omega, %.3f, %.3f, %.3f", buf, 0x2Au);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v39 = 134218752;
      *&v39[4] = (v38 / 0.017453);
      *&v39[12] = 2048;
      *&v39[14] = (*&v37 / 0.017453);
      *&v39[22] = 2048;
      *&v39[24] = (v10 / 0.017453);
      v40 = 2048;
      v41 = (v9 / 0.017453);
      LODWORD(v33) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "omegaMag9, %.3f, omega, %.3f, %.3f, %.3f", COERCE_DOUBLE(v39), v33, v34, v36);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedGyroData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  *&v11 = *(a1 + 480);
  v35 = v11;
  v54 = vmulq_n_f64(vcvtq_f64_f32(*&v37), *&v11);
  v55 = *&v11 * v9;
  sub_19B6B6138(buf, v54.f64);
  sub_19B447A1C(v39, buf, (a1 + 16));
  v16 = *&v39[16];
  *(a1 + 16) = *v39;
  *(a1 + 32) = v16;
  v17 = vadd_f32(*(a1 + 136), *&v37);
  *(a1 + 136) = v17;
  *&v16 = *(a1 + 144) + v9;
  *(a1 + 144) = v16;
  ++*(a1 + 148);
  v18 = *&v35 * (*&v35 * ((COERCE_FLOAT(vmul_f32(v17, v17).i32[1]) + (v17.f32[0] * v17.f32[0])) + (*&v16 * *&v16)));
  if (v18 > 0.122500002)
  {
    sub_19B6B52AC(a1, v18, 0x3FBF5C2900000000);
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v19 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 16);
      v21 = *(a1 + 24);
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v24 = *a5;
      *buf = 134219008;
      v45 = v20;
      v46 = 2048;
      v47 = v21;
      v48 = 2048;
      v49 = v22;
      v50 = 2048;
      v51 = v23;
      v52 = 2048;
      v53 = v24;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "[AppleQuaternion9] x,%f,y,%f,z,%f,w,%f,timestamp,%f", buf, 0x34u);
    }

    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v26 = *(a1 + 16);
      v27 = *(a1 + 24);
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      v30 = *a5;
      *v39 = 134219008;
      *&v39[4] = v26;
      *&v39[12] = 2048;
      *&v39[14] = v27;
      *&v39[22] = 2048;
      *&v39[24] = v28;
      v40 = 2048;
      v41 = v29;
      v42 = 2048;
      v43 = v30;
      LODWORD(v33) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[AppleQuaternion9] x,%f,y,%f,z,%f,w,%f,timestamp,%f", COERCE_DOUBLE(v39), v33, *&v35, *(&v35 + 1), v37);
      v32 = v31;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedGyroData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }
}

uint64_t sub_19B6B52AC(uint64_t result, double a2, int32x2_t a3)
{
  v140 = *MEMORY[0x1E69E9840];
  v3 = *(result + 148);
  if (v3)
  {
    v4 = result;
    v5 = result + 136;
    *a3.i32 = v3;
    v115 = a3;
    v6 = *(result + 136) / v3;
    v7 = *(result + 480) * v3;
    *(result + 148) = 0;
    v114 = exp(v7 / -5000.0);
    v113 = vdiv_f32(*(v5 + 4), vdup_lane_s32(v115, 0));
    bzero(v5, 0xCuLL);
    v8 = 0;
    v9 = 0;
    v10 = v113;
    *(v5 - 48) = vmulq_n_f64(*(v5 - 48), v114);
    *(v5 - 32) = v114 * *(v5 - 32);
    v133[0] = 0;
    v133[1] = v113.i32[1];
    v134 = vneg_f32(v113);
    v135 = 0;
    v136 = v6;
    v137 = v113.i32[0];
    v138 = -v6;
    v139 = 0;
    v11 = vmul_f32(v10, v10).f32[0];
    v12 = vmuls_lane_f32(v113.f32[1], v113, 1);
    v125[0] = -(v11 + v12);
    v125[1] = v6 * v113.f32[0];
    v126 = vmuls_lane_f32(v6, v113, 1);
    v127 = v6 * v113.f32[0];
    v128 = -((v6 * v6) + v12);
    v129 = vmuls_lane_f32(v10.f32[0], v10, 1);
    v130 = v126;
    v131 = v129;
    v113.f32[0] = v11;
    v132 = -((v6 * v6) + v11);
    v13 = v7;
    v14 = -v13;
    v15 = v7 * v7 * 0.5;
    v16 = v15;
    do
    {
      v17 = v8;
      v18 = 3;
      do
      {
        *(v120 + v17) = (*(v125 + v17) * v16) + (v14 * *(v133 + v17));
        v17 += 4;
        --v18;
      }

      while (v18);
      v120[4 * v9] = v120[4 * v9] + 1.0;
      ++v9;
      v8 += 12;
    }

    while (v9 != 3);
    v19 = 0;
    v20 = v123;
    do
    {
      *v20 = *&v120[v19];
      v20[2] = v120[v19 + 2];
      v19 += 3;
      v20 += 6;
    }

    while (v19 != 9);
    v21 = 0;
    v22 = 0;
    v23 = v15 / 5000.0 - v7;
    do
    {
      v24 = v21;
      v25 = 3;
      do
      {
        *(v120 + v24) = *(v133 + v24) * v16;
        v24 += 4;
        --v25;
      }

      while (v25);
      v120[4 * v22] = v120[4 * v22] + v23;
      ++v22;
      v21 += 12;
    }

    while (v22 != 3);
    v26 = 0;
    v27 = &v124;
    do
    {
      *v27 = *&v120[v26];
      v27[2] = v120[v26 + 2];
      v26 += 3;
      v27 += 6;
    }

    while (v26 != 9);
    for (i = 12; i != 84; i += 24)
    {
      bzero(&v123[i], 0xCuLL);
    }

    for (j = 84; j != 156; j += 24)
    {
      bzero(&v123[j], 0xCuLL);
      v29 = v114;
      *&v123[i] = v29;
      i += 28;
    }

    v31 = 0;
    v32 = *(v4 + 112);
    v33 = v123;
    do
    {
      v34 = &v123[4 * v31];
      v35 = (v34 + 120);
      v36 = 5;
      LODWORD(v37) = 6;
      do
      {
        v38 = 0;
        v39 = v37 - 2;
        v37 = v36;
        v40 = *v35;
        v41 = v32 + 4 * (v39 * v36 / 2);
        v42 = v33;
        do
        {
          v43 = *v42;
          v42 += 6;
          v40 = v40 + (v43 * *(v41 + 4 * v38++));
        }

        while (v37 != v38);
        *v35 = v40;
        v36 = v37 - 1;
        v35 = &v34[24 * v37 - 24];
      }

      while (v37 > 1);
      ++v31;
      ++v33;
    }

    while (v31 != 6);
    v44 = 0;
    v45 = 2.76135698e-10 / (7.0 / (exp((0.11 - sqrtf((v113.f32[0] + (v6 * v6)) + (v113.f32[1] * v113.f32[1]))) / 0.012) + 1.0) + 1.0);
    v47 = v120;
    do
    {
      bzero(&v120[v44], 0xCuLL);
      v46 = (v7 * -0.25 / 5000.0 + 0.333333333) * (v7 * (v7 * (v7 * v45))) + (*v115.i32 * 0.00000021323) * 0.5 * v7;
      *v47 = v46;
      v47 += 7;
      v44 += 6;
    }

    while (v44 != 18);
    v48 = expm1(-(v7 / 5000.0));
    v49 = exp(-(v7 / 5000.0));
    v50 = 0;
    v51 = 0;
    v52 = v45 * -0.5 * 1.24999999e11 * (v49 * (v7 / 5000.0 * (v7 / 5000.0) + v7 / 5000.0 * 2.0) + v48 * 2.0);
    v53 = v49 * (v7 * (v7 * (v45 * -0.5)));
    v54 = v52;
    do
    {
      v55 = v50;
      v56 = 3;
      do
      {
        *(v119 + v55) = *(v133 + v55) * v54;
        v55 += 4;
        --v56;
      }

      while (v56);
      v119[4 * v51] = v119[4 * v51] + v53;
      ++v51;
      v50 += 12;
    }

    while (v51 != 3);
    v57 = &v121;
    v58 = &v122;
    v59 = v119;
    v60 = 3;
    do
    {
      v61 = 0;
      v62 = v57;
      do
      {
        v63 = v59[v61];
        *(v58 + v61 * 4) = v63;
        *v62 = v63;
        v62 += 6;
        ++v61;
      }

      while (v61 != 3);
      ++v60;
      ++v57;
      v58 += 3;
      v59 += 3;
    }

    while (v60 != 6);
    v64 = (1.0 - exp(v7 * -2.0 / 5000.0)) * (v45 * 5000.0) * 0.5;
    v65 = 21;
    for (k = 21; k != 39; k += 6)
    {
      bzero(&v120[k], 0xCuLL);
      v120[v65] = v64;
      v65 += 7;
    }

    bzero(v119, 0x3CuLL);
    bzero(v118, 0x18uLL);
    v67 = 0;
    v68 = v119;
    v69 = 6;
    v70 = 4;
    for (m = 5; ; --m)
    {
      v72 = *(&v120[m] + (((3 * m) << 33) >> 30));
      if (m > 4)
      {
        v118[m] = v72;
      }

      else
      {
        v73 = v67;
        do
        {
          v74 = v119[m + (((v73 + 5) * (v73 + 6)) >> 1)];
          v72 = v72 + (-(v74 * v74) * v118[v73++ + 6]);
        }

        while (v73 + 6 < 6);
        v118[m] = v72;
        if (m < 1)
        {
          v81 = 0;
          v82 = *(v4 + 120);
          v83 = v119;
          v84 = 5;
          v85 = 6;
          v86 = 20;
          result = v82;
          while (1)
          {
            v87 = 0;
            v88 = v85 - 1;
            v89 = 0.0;
            v90 = v86;
            do
            {
              v89 = v89 + ((*&v123[v90] * *&v123[v90]) * *(v82 + v87));
              v87 += 4;
              v90 += 24;
            }

            while (v87 != 24);
            if (v85 >= 6)
            {
              v93 = v118[v88];
              v94 = v89 + v93;
              *(&v116 + v88) = v94;
            }

            else
            {
              v91 = v81;
              do
              {
                v92 = v119[v88 + (((v91 + 5) * (v91 + 6)) >> 1)];
                v89 = v89 + ((v92 * v92) * v118[v91++ + 6]);
              }

              while (v91 + 6 < 6);
              v93 = v118[v88];
              v94 = v89 + v93;
              *(&v116 + v88) = v94;
              if (v85 < 2)
              {
                *result = v116;
                *(result + 16) = v117;
                return result;
              }
            }

            v95 = 0;
            v96 = 0;
            result = *(v4 + 120);
            v97 = (v88 * (v85 - 2) + ((v88 * (v85 - 2)) >> 31)) >> 1;
            do
            {
              v98 = 0;
              v99 = 0.0;
              v100 = v123;
              do
              {
                v99 = v99 + ((*&v100[v86] * *(result + v98)) * *&v100[v95]);
                v98 += 4;
                v100 += 24;
              }

              while (v98 != 24);
              v101 = v96 + v97;
              v102 = v119[v96 + v97];
              v103 = v99 + (v93 * v102);
              if (v85 <= 5)
              {
                v104 = v83;
                for (n = v85; n < 6; ++n)
                {
                  v106 = *v104++;
                  v103 = v103 + ((v119[v88 + (((n - 1) * n) >> 1)] * v106) * v119[v96 + (((n - 1) * n) >> 1)]);
                }
              }

              v107 = v103 / v94;
              *(v32 + 4 * v101) = v107;
              v108 = -v107;
              v109 = v123;
              v110 = 6;
              do
              {
                *&v109[v95] = *&v109[v95] + (v108 * *&v109[v86]);
                v109 += 24;
                --v110;
              }

              while (v110);
              if (v85 <= 5)
              {
                v111 = v84;
                do
                {
                  v112 = v111 + 1;
                  v119[v96 + ((v111 * v112) >> 1)] = v119[v96 + ((v111 * v112) >> 1)] + (v108 * v119[v88 + ((v111 * v112) >> 1)]);
                  ++v111;
                }

                while (v112 != 5);
                v102 = v119[v101];
              }

              v119[v101] = v102 - v107;
              ++v96;
              v95 += 4;
            }

            while (v96 != v84);
            --v84;
            v86 -= 4;
            --v81;
            --v83;
            --v85;
          }
        }
      }

      v75 = v70;
      do
      {
        v76 = v120[6 * m + v75];
        if (m <= 4)
        {
          v77 = v68;
          v78 = v69;
          do
          {
            v79 = *v77++;
            v76 = v76 + (-(v119[v75 + (((v78 - 1) * v78) >> 1)] * v119[m + (((v78 - 1) * v78) >> 1)]) * v79);
            ++v78;
          }

          while (v78 < 6);
        }

        v119[(m - 1) * m / 2 + v75] = v76 / v72;
      }

      while (v75-- > 0);
      --v70;
      --v67;
      --v69;
      --v68;
    }
  }

  return result;
}

void sub_19B6B5B70(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v12 = a6 + 6;
  bzero(a1, 0x30uLL);
  v13 = 0;
  v14 = a2[1];
  v15 = *a2 - 4;
  v16 = (a3 - 12);
  do
  {
    v17 = 0;
    v18 = v16;
    do
    {
      v19 = *(a3 + 4 * v13 + 12 * v17);
      a6[v17] = v19;
      if (v17)
      {
        v20 = v18;
        v21 = v17;
        do
        {
          v22 = *v20;
          v20 -= 3;
          v19 = v19 + (v22 * *(v15 + 4 * ((v17 - 1) * v17 / 2) + 4 * v21));
          a6[v17] = v19;
        }

        while (v21-- > 1);
      }

      ++v17;
      v18 += 3;
    }

    while (v17 != 6);
    v24 = v14;
    v25 = a6;
    v26 = 6;
    do
    {
      v27 = *v24++;
      v25[6] = v27 * *v25;
      ++v25;
      --v26;
    }

    while (v26);
    v28 = 0;
    v29 = *(a5 + 4 * v13);
    v30 = *(a4 + 4 * v13);
    v31 = *a2;
    v32 = 1.0 / v30;
    do
    {
      v33 = v30;
      v34 = a6[v28];
      v30 = v30 + (v34 * v12[v28]);
      *(v14 + 4 * v28) = *(v14 + 4 * v28) * (v33 * (1.0 / v30));
      if (v28)
      {
        v35 = 0;
        v36 = -(v34 * v32);
        v37 = v31 + 4 * ((v28 - 1) * v28 / 2);
        do
        {
          v38 = *(v37 + 4 * v35);
          *(v37 + 4 * v35) = v38 + (v12[v35] * v36);
          v12[v35] = v12[v35] + (v12[v28] * v38);
          ++v35;
        }

        while (v28 != v35);
      }

      ++v28;
      v32 = 1.0 / v30;
    }

    while (v28 != 6);
    v39 = 0;
    v40 = v29 * (1.0 / v30);
    do
    {
      *(a1 + v39) = *(a1 + v39) + (v40 * v12[v39]);
      ++v39;
    }

    while (v39 != 6);
    ++v13;
    ++v16;
  }

  while (v13 != 3);
}

void sub_19B6B5D38(uint64_t a1, float32x2_t *a2, double *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v6 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v7 = a2->f32[0];
      v8 = a2->f32[1];
      v9 = a2[1].f32[0];
      v10 = *a3;
      v11 = *(a3 + 1);
      v12 = *(a3 + 2);
      *buf = 134219264;
      v49 = v7;
      v50 = 2048;
      v51 = v8;
      v52 = 2048;
      v53 = v9;
      v54 = 2048;
      v55 = v10;
      v56 = 2048;
      v57 = v11;
      LOWORD(v58[0]) = 2048;
      *(v58 + 2) = v12;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "[Bias,Var] bias.x,%f,bias.y,%f,bias.z,%f,var.x,%f,var.y,%f,var.z,%f", buf, 0x3Eu);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v14 = a2->f32[0];
      v15 = a2->f32[1];
      v16 = a2[1].f32[0];
      v17 = *a3;
      v18 = *(a3 + 1);
      v19 = *(a3 + 2);
      v36 = 134219264;
      v37 = v14;
      v38 = 2048;
      v39 = v15;
      v40 = 2048;
      v41 = v16;
      v42 = 2048;
      v43 = v17;
      v44 = 2048;
      v45 = v18;
      v46 = 2048;
      v47 = v19;
      LODWORD(v31) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[Bias,Var] bias.x,%f,bias.y,%f,bias.z,%f,var.x,%f,var.y,%f,var.z,%f", COERCE_DOUBLE(&v36), v31, v32, v33, v34, v35);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedGyroBias(const CLMotionTypeRotationRate &, const CLMotionTypeVector3 &)", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 12))
  {
    v22 = 0;
    v34 = *a3;
    LODWORD(v35) = *(a3 + 2);
    do
    {
      v23 = *(&v34 + v22);
      if (v23 < 0.000001)
      {
        v23 = 0.000001;
      }

      *(&v34 + v22) = v23;
      v22 += 4;
    }

    while (v22 != 12);
    v24 = *(a1 + 152);
    if (v24 >= 50)
    {
      v25 = 50;
    }

    else
    {
      v25 = *(a1 + 152);
    }

    if (v24 >= 1)
    {
      v26 = 0;
      v27 = v34;
      v28 = LODWORD(v35);
      do
      {
        v32 = COERCE_DOUBLE(vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*a2), *(a1 + 88))));
        v29 = a2[1].f32[0] - *(a1 + 104);
        *&v33 = v29;
        bzero(buf, 0x48uLL);
        *(&v55 + 2) = 1065353216;
        v58[0] = 1065353216;
        v58[4] = 1065353216;
        v60 = v27;
        v61 = v28;
        sub_19B6B5B70(&v36, (a1 + 112), buf, &v60, &v32, v59);
        for (i = 0; i != 24; i += 8)
        {
          *(a1 + i + 88) = *(&v41 + i) + *(a1 + i + 88);
        }

        ++v26;
      }

      while (v26 != v25);
    }

    *(a1 + 152) = 0;
  }

  else
  {
    *(a1 + 88) = vcvtq_f64_f32(*a2);
    *(a1 + 104) = a2[1].f32[0];
    *(a1 + 12) = 1;
  }
}

void sub_19B6B6138(double *a1, double *a2)
{
  v4 = *a2;
  v5 = sqrt(a2[1] * a2[1] + v4 * v4 + a2[2] * a2[2]);
  if (v5 >= 0.00000002)
  {
    v13 = __sincos_stret(v5 * 0.5);
    cosval = v13.__cosval;
    *a1 = v4 * (v13.__sinval / v5);
    a1[1] = v13.__sinval / v5 * a2[1];
    v11 = v13.__sinval / v5 * a2[2];
  }

  else
  {
    *a1 = v4 * 0.5;
    v6 = a2[1] * 0.5;
    a1[1] = v6;
    v7 = a2[2] * 0.5;
    v8 = v5 * v5 * 0.125;
    v9 = 1.0 - v8;
    v10 = sqrt(v8 + 1.0);
    *a1 = v4 * 0.5 / v10;
    a1[1] = v6 / v10;
    v11 = v7 / v10;
    cosval = v9 / v10;
  }

  a1[2] = v11;
  a1[3] = cosval;
}

double sub_19B6B6210(double *a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  sub_19B6B630C(a1 + 2, a1 + 47, v20);
  v2 = a1[5];
  v3 = a1[4] + a1[4];
  v4 = a1[2];
  v5 = a1[3];
  v6 = v2 * (v5 + v5) - v4 * v3;
  v7 = -(v2 * (v4 + v4)) - v5 * v3;
  v8 = -1.0;
  v9 = v4 * (v4 + v4) + -1.0 + v5 * (v5 + v5);
  v19 = 0x3F8000003F800000;
  v17.i64[0] = 0;
  v17.i64[1] = 0x3F80000000000000;
  *&v3 = v20[0];
  *&v2 = v20[1];
  *&v4 = v20[2];
  *&v5 = v6;
  v10 = v7;
  *&v6 = v9;
  if (sub_19B66C3CC(&v19, &v17, v18, *&v3, *&v2, *&v4, *&v5, v10, *&v6, v11, v12, v13, v14, v15, 1065353216, 0))
  {
    return sub_19B66D564(v17.f32);
  }

  return v8;
}

double sub_19B6B630C(double *a1, double *a2, double *a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 + v3;
  v6 = a1[1];
  v7 = *a1 + *a1;
  v8 = v6 + v6;
  v9 = v3 * (v3 + v3);
  v10 = (v6 + v6) * v6 + -1.0;
  v11 = (v4 + v4) * v4 + -1.0;
  v12 = v7 * v6;
  v13 = v7 * v4;
  v14 = v3 * v7;
  v15 = v8 * v4;
  v16 = v3 * v8;
  v17 = v5 * v4;
  *a3 = (v12 + v17) * a2[1] + (v9 + (*a1 + *a1) * *a1 + -1.0) * *a2 + (v13 - v16) * a2[2];
  a3[1] = (v9 + v10) * a2[1] + (v12 - v17) * *a2 + (v14 + v15) * a2[2];
  result = (v15 - v14) * a2[1] + (v13 + v16) * *a2 + (v9 + v11) * a2[2];
  a3[2] = result;
  return result;
}

void sub_19B6B63C0(uint64_t a1, double *a2, double *a3, double *a4, void *a5)
{
  v225 = *MEMORY[0x1E69E9840];
  v10.f64[0] = *a2;
  v11 = *a2;
  *(a1 + 352) = v11;
  v12 = *a3;
  v13 = *a3;
  *(a1 + 356) = v13;
  v14 = *a4;
  v15 = *a4;
  *(a1 + 360) = v15;
  if (*(a1 + 176) < 0.0)
  {
    sub_19B442618(a1 + 16, a2, a3, a4);
    *(a1 + 176) = *a5;
    v16 = *a2;
    *(a1 + 848) = v16;
    v17 = *a3;
    *(a1 + 852) = v17;
    v18 = *a4;
    *(a1 + 856) = v18;
    *(a1 + 888) = 0;
    sub_19B4425C0((a1 + 864), (a1 + 16));
    *(a1 + 8) = 1;
    return;
  }

  v10.f64[1] = v12;
  v19 = vcvt_f32_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(*(a1 + 848)), vdupq_n_s64(0x3FB999999999999AuLL)), vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL), v10));
  *(a1 + 848) = v19;
  v20 = *(a1 + 856) * 0.1 + v14 * 0.9;
  *(a1 + 856) = v20;
  *buf = v19.f32[0];
  *v214 = v19.f32[1];
  *v187 = v20;
  sub_19B66F590(a1 + 608, buf);
  sub_19B66F590(a1 + 688, v214);
  sub_19B66F590(a1 + 768, v187);
  v21 = *a5;
  *(a1 + 176) = *a5;
  if (!*(a1 + 148))
  {
    return;
  }

  v22 = *(a1 + 168);
  if (v21 < v22)
  {
    return;
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v23 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v24 = *a2;
      v25 = *a3;
      v26 = *a4;
      v27 = *a5;
      *buf = 134218752;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      *&buf[22] = 2048;
      v198 = v26;
      v199 = 2048;
      v200 = v27;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[Accelerometer9] x,%f,y,%f,z,%f,timestamp,%lf", buf, 0x2Au);
    }

    v28 = sub_19B420058();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v29 = *a2;
      v30 = *a3;
      v31 = *a4;
      v32 = *a5;
      *v214 = 134218752;
      *&v214[4] = v29;
      *&v214[12] = 2048;
      *&v214[14] = v30;
      *&v214[22] = 2048;
      v215 = v31;
      v216 = 2048;
      v217 = v32;
      LODWORD(v179) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[Accelerometer9] x,%f,y,%f,z,%f,timestamp,%lf", COERCE_DOUBLE(v214), v179, v180, v181);
      v34 = v33;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v33);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v35 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 156);
      v37 = *(a1 + 160);
      v38 = *(a1 + 164);
      v39 = *(a1 + 584);
      if (v39)
      {
        v40 = (*(a1 + 536) / v39);
      }

      else
      {
        v40 = 0.0;
      }

      *buf = 134218752;
      *&buf[4] = v36;
      *&buf[12] = 2048;
      *&buf[14] = v37;
      *&buf[22] = 2048;
      v198 = v38;
      v199 = 2048;
      v200 = v40;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEBUG, "[RotationRate9] %.3f, %.3f, %.3f, %.3f", buf, 0x2Au);
    }

    v41 = sub_19B420058();
    if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v42 = *(a1 + 156);
      v43 = *(a1 + 160);
      v44 = *(a1 + 164);
      v45 = *(a1 + 584);
      if (v45)
      {
        v46 = (*(a1 + 536) / v45);
      }

      else
      {
        v46 = 0.0;
      }

      *v214 = 134218752;
      *&v214[4] = v42;
      *&v214[12] = 2048;
      *&v214[14] = v43;
      *&v214[22] = 2048;
      v215 = v44;
      v216 = 2048;
      v217 = v46;
      LODWORD(v179) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[RotationRate9] %.3f, %.3f, %.3f, %.3f", COERCE_DOUBLE(v214), v179, v180, v181);
      v48 = v47;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v47);
      if (v48 != buf)
      {
        free(v48);
      }
    }
  }

  v49 = *a2;
  v50 = *a3;
  v51 = *a4;
  LODWORD(v22) = *(a1 + 136);
  v185 = *(a1 + 140);
  v186 = *&v22;
  LODWORD(v21) = *(a1 + 144);
  v52 = *(a1 + 148);
  HIDWORD(v184) = LODWORD(v21);
  sub_19B6B52AC(a1, v21, *&v22);
  v53 = sqrt(v50 * v50 + v49 * v49 + v51 * v51);
  v54 = fabs(v53 + -1.0) / v53;
  if (v54 > 0.1)
  {
    return;
  }

  if (*(a1 + 512) != 1 || *(a1 + 904))
  {
    goto LABEL_39;
  }

  v117 = fabsf(*(a1 + 156));
  if (v117 > 10.0)
  {
    goto LABEL_178;
  }

  v118 = fabsf(*(a1 + 160));
  if (v118 > 10.0)
  {
    goto LABEL_178;
  }

  v119 = fabsf(*(a1 + 164));
  if (v119 > 10.0)
  {
    goto LABEL_178;
  }

  v120 = *(a1 + 584);
  if (v120)
  {
    if ((*(a1 + 536) / v120) > 10.0)
    {
      goto LABEL_178;
    }
  }

  if (v117 > 3.14159265 || v118 > 3.14159265 || v119 > 3.14159265 || v120 && (*(a1 + 536) / v120) > 3.14159265)
  {
    if (v120 < 2 || (v121 = (v120 * *(a1 + 540)) - (*(a1 + 536) * *(a1 + 536)), v121 < 0.0) || (v121 / ((v120 - 1) * v120)) < 1.25)
    {
      sub_19B4425C0((a1 + 864), (a1 + 16));
      if (*(a1 + 472) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v122 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v122, OS_LOG_TYPE_DEBUG, "rotating and going through.", buf, 2u);
        }

        v123 = sub_19B420058();
        if (*(v123 + 160) > 1 || *(v123 + 164) > 1 || *(v123 + 168) > 1 || *(v123 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          *v214 = 0;
          LODWORD(v179) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "rotating and going through.", v214, *&v179);
          v125 = v124;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v124);
          if (v125 != buf)
          {
            free(v125);
          }
        }
      }

      goto LABEL_39;
    }
  }

  sub_19B66F0F4(a1 + 592, v187);
  v183 = sqrt(*&v187[16] * *&v187[16] + *&v187[8] * *&v187[8] + v188 * v188);
  v126 = *(a1 + 896);
  if (v126 > 0.0 && *(a1 + 176) - v126 > 15.0 && v183 < 0.3)
  {
    sub_19B66F1D4(a1 + 592, buf);
    if (fabs(sqrt(*&buf[16] * *&buf[16] + *&buf[8] * *&buf[8] + v198 * v198) + -1.0) <= 0.1)
    {
      *(a1 + 904) = 10;
      if (*(a1 + 472) != 1)
      {
        goto LABEL_248;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v156 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v156, OS_LOG_TYPE_DEBUG, "it's been too long. go through.", buf, 2u);
      }

      v157 = sub_19B420058();
      if (*(v157 + 160) <= 1 && *(v157 + 164) <= 1 && *(v157 + 168) <= 1 && !*(v157 + 152))
      {
        goto LABEL_248;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v214 = 0;
      LODWORD(v179) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "it's been too long. go through.", v214, *&v179);
      v159 = v158;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v158);
LABEL_192:
      if (v159 != buf)
      {
        free(v159);
      }

      goto LABEL_248;
    }
  }

  if (*(a1 + 680) <= (*(a1 + 600) * 0.5))
  {
LABEL_178:
    sub_19B4425C0((a1 + 864), (a1 + 16));
    return;
  }

  v127 = *(a1 + 584);
  if (v127)
  {
    if (*(*(*(a1 + 552) + (((v127 + *(a1 + 576) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v127 + *(a1 + 576) - 1) & 0x3FF)) > 0.2)
    {
      sub_19B4425C0((a1 + 864), (a1 + 16));
      if (*(a1 + 472) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v128 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          v129 = *(a1 + 864);
          v130 = *(a1 + 872);
          v131 = *(a1 + 880);
          *buf = 134218496;
          *&buf[4] = v129;
          *&buf[12] = 2048;
          *&buf[14] = v130;
          *&buf[22] = 2048;
          v198 = v131;
          _os_log_impl(&dword_19B41C000, v128, OS_LOG_TYPE_DEBUG, "grabing gravity, %.4f, %.4f, %.4f", buf, 0x20u);
        }

        v132 = sub_19B420058();
        if (*(v132 + 160) > 1 || *(v132 + 164) > 1 || *(v132 + 168) > 1 || *(v132 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          v133 = *(a1 + 864);
          v134 = *(a1 + 872);
          v135 = *(a1 + 880);
          *v214 = 134218496;
          *&v214[4] = v133;
          *&v214[12] = 2048;
          *&v214[14] = v134;
          *&v214[22] = 2048;
          v215 = v135;
          LODWORD(v179) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "grabing gravity, %.4f, %.4f, %.4f", COERCE_DOUBLE(v214), v179, v180);
          v137 = v136;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v136);
          if (v137 != buf)
          {
            free(v137);
          }
        }
      }
    }
  }

  if (v183 <= *(a1 + 504) * 0.75)
  {
    goto LABEL_248;
  }

  v138 = *(a1 + 864);
  v139 = *(a1 + 872);
  v140 = *(a1 + 880);
  v141 = fabs(*&v187[16] * v139 + *&v187[8] * v138 + v188 * v140);
  v182 = v183 - v141;
  v142 = *(a1 + 624);
  v143 = *(a1 + 704);
  v144 = *(a1 + 784);
  v208 = COERCE_DOUBLE(&unk_1F0E33EB0);
  v145 = v139 * v143 + v142 * v138 + v144 * v140;
  v209 = v142 - v145 * v138;
  v210 = v143 - v145 * v139;
  v211 = v144 - v145 * v140;
  v180 = v145;
  v181 = fabs(v211) + fabs(v209) + fabs(v210);
  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v146 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219264;
      *&buf[4] = *&v187[8];
      *&buf[12] = 2048;
      *&buf[14] = *&v187[16];
      *&buf[22] = 2048;
      v198 = v188;
      v199 = 2048;
      v200 = v183;
      v201 = 2048;
      v202 = v141;
      v203 = 2048;
      v204 = v183 - v141;
      _os_log_impl(&dword_19B41C000, v146, OS_LOG_TYPE_DEBUG, "std, %.3f, %.3f, %.3f, mag, %.3f, dot, %.3f, leftover, %.3f", buf, 0x3Eu);
    }

    v147 = sub_19B420058();
    if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v214 = 134219264;
      *&v214[4] = *&v187[8];
      *&v214[12] = 2048;
      *&v214[14] = *&v187[16];
      *&v214[22] = 2048;
      v215 = v188;
      v216 = 2048;
      v217 = v183;
      v218 = 2048;
      v219 = v141;
      v220 = 2048;
      v221 = v183 - v141;
      LODWORD(v179) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "std, %.3f, %.3f, %.3f, mag, %.3f, dot, %.3f, leftover, %.3f", COERCE_DOUBLE(v214), v179, v180, v181, v182, v183);
      v149 = v148;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v148);
      if (v149 != buf)
      {
        free(v149);
      }
    }

    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v150 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219008;
      *&buf[4] = v209;
      *&buf[12] = 2048;
      *&buf[14] = v210;
      *&buf[22] = 2048;
      v198 = v211;
      v199 = 2048;
      v200 = v180;
      v201 = 2048;
      v202 = v181;
      _os_log_impl(&dword_19B41C000, v150, OS_LOG_TYPE_DEBUG, "sum, %.3f, %.3f, %.3f, dot, %.3f, leftover, %.3f", buf, 0x34u);
    }

    v151 = sub_19B420058();
    if (*(v151 + 160) > 1 || *(v151 + 164) > 1 || *(v151 + 168) > 1 || *(v151 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v214 = 134219008;
      *&v214[4] = v209;
      *&v214[12] = 2048;
      *&v214[14] = v210;
      *&v214[22] = 2048;
      v215 = v211;
      v216 = 2048;
      v217 = v180;
      v218 = 2048;
      v219 = v181;
      LODWORD(v179) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "sum, %.3f, %.3f, %.3f, dot, %.3f, leftover, %.3f", COERCE_DOUBLE(v214), v179, v180, v181, v182);
      v153 = v152;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v152);
      if (v153 != buf)
      {
        free(v153);
      }
    }
  }

  if (v182 > *(a1 + 504))
  {
    goto LABEL_196;
  }

  v154 = *(a1 + 584);
  if (v154)
  {
    v155 = 0.0;
    if ((*(a1 + 536) / v154) > 1.57079633)
    {
      v155 = 1.0;
    }
  }

  else
  {
    v155 = 0.0;
  }

  if (v181 > (v155 * 0.5 + 1.0) * 6.0)
  {
LABEL_196:
    *(a1 + 888) = 0;
    return;
  }

  if (v182 >= 0.01 || v181 >= 0.6)
  {
    v164 = *(a1 + 888) + 1;
    *(a1 + 888) = v164;
    if (!v154)
    {
      goto LABEL_235;
    }

    v165 = (a1 + 888);
    v160 = *(a1 + 536) / v154;
  }

  else
  {
    if (!v154)
    {
      v164 = *(a1 + 888) + 1;
      *(a1 + 888) = v164;
      goto LABEL_235;
    }

    v160 = *(a1 + 536) / v154;
    if (v160 > 0.5)
    {
      if (*(a1 + 472) != 1)
      {
        goto LABEL_248;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v161 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v161, OS_LOG_TYPE_DEBUG, "===========Skip ahead.", buf, 2u);
      }

      v162 = sub_19B420058();
      if (*(v162 + 160) <= 1 && *(v162 + 164) <= 1 && *(v162 + 168) <= 1 && !*(v162 + 152))
      {
        goto LABEL_248;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v214 = 0;
      LODWORD(v179) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "===========Skip ahead.", v214, *&v179);
      v159 = v163;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v163);
      goto LABEL_192;
    }

    v165 = (a1 + 888);
    v164 = *(a1 + 888) + 1;
    *(a1 + 888) = v164;
  }

  if (v160 > 1.0 && *(*(*(a1 + 552) + (((v154 + *(a1 + 576) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v154 + *(a1 + 576) - 1) & 0x3FF)) < 0.2)
  {
    sub_19B66F1D4(a1 + 592, buf);
    v166 = sqrt(*&buf[16] * *&buf[16] + *&buf[8] * *&buf[8] + v198 * v198);
    if (fabs(v166 + -1.0) / v166 >= 0.025)
    {
      v164 = *v165;
    }

    else
    {
      if (*(a1 + 472) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v167 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v167, OS_LOG_TYPE_DEBUG, "Skip ahead------.", buf, 2u);
        }

        v168 = sub_19B420058();
        if (*(v168 + 160) > 1 || *(v168 + 164) > 1 || *(v168 + 168) > 1 || *(v168 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          *v214 = 0;
          LODWORD(v179) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Skip ahead------.", v214, *&v179);
          v170 = v169;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v169);
          if (v170 != buf)
          {
            free(v170);
          }
        }
      }

      v164 = *v165 + 2;
      *v165 = v164;
    }
  }

LABEL_235:
  if (v164 >= *(a1 + 496))
  {
LABEL_248:
    if (*(a1 + 512) == 1 && v183 > 0.2)
    {
      v174 = *(a1 + 584);
      if (!v174 || *(*(*(a1 + 552) + (((v174 + *(a1 + 576) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v174 + *(a1 + 576) - 1) & 0x3FF)) < 0.75 && (*(a1 + 536) / v174) < 1.0)
      {
        sub_19B66F1D4(a1 + 592, v214);
        v49 = *&v214[8];
        v50 = *&v214[16];
        v51 = v215;
        if (*(a1 + 472) == 1)
        {
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          v175 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v175, OS_LOG_TYPE_DEBUG, "using mean accel", buf, 2u);
          }

          v176 = sub_19B420058();
          if (*(v176 + 160) > 1 || *(v176 + 164) > 1 || *(v176 + 168) > 1 || *(v176 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
            }

            *v187 = 0;
            LODWORD(v179) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "using mean accel", v187, *&v179);
            v178 = v177;
            sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v177);
            if (v178 != buf)
            {
              free(v178);
            }
          }
        }

        v53 = sqrt(v50 * v50 + v49 * v49 + v51 * v51);
        v54 = fabs(v53 + -1.0) / v53;
      }
    }

LABEL_39:
    *(a1 + 888) = 0;
    if (*(a1 + 472) == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v55 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = v49;
        *&buf[12] = 2048;
        *&buf[14] = v50;
        *&buf[22] = 2048;
        v198 = v51;
        v199 = 2048;
        v200 = v53;
        _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_DEBUG, "accM, (%.4f, %.4f, %.4f), mag, %.3f", buf, 0x2Au);
      }

      v56 = sub_19B420058();
      if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        *v214 = 134218752;
        *&v214[4] = v49;
        *&v214[12] = 2048;
        *&v214[14] = v50;
        *&v214[22] = 2048;
        v215 = v51;
        v216 = 2048;
        v217 = v53;
        LODWORD(v179) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "accM, (%.4f, %.4f, %.4f), mag, %.3f", COERCE_DOUBLE(v214), v179, v180, v181);
        v58 = v57;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v57);
        if (v58 != buf)
        {
          free(v58);
        }
      }
    }

    v59 = v54 * (0.015 / (exp((0.9 - sqrtf((((v185 / v52) * (v185 / v52)) + ((v186 / v52) * (v186 / v52))) + ((*(&v184 + 1) / v52) * (*(&v184 + 1) / v52)))) / 0.08) + 1.0)) + 0.00000900000032;
    if (*(a1 + 512) == 1 && !*(a1 + 904))
    {
      v59 = v59 * 0.85;
    }

    v60 = 0;
    v61 = 0;
    v62 = v50 / v53;
    v63 = *(a1 + 16);
    v64 = *(a1 + 24);
    v65 = *(a1 + 32) + *(a1 + 32);
    v66 = *(a1 + 40);
    v67 = v66 * (v64 + v64) - v63 * v65;
    v68 = -(v66 * (v63 + v63)) - v64 * v65;
    v69 = v63 * (v63 + v63) + -1.0 + v64 * (v64 + v64);
    *&v63 = v68;
    *&v65 = v69;
    v224[0] = 0;
    v224[1] = LODWORD(v65);
    *&v224[2] = -*&v63;
    *&v64 = v67;
    *&v224[3] = -*&v65;
    v224[4] = 0;
    v224[5] = LODWORD(v64);
    v224[6] = LODWORD(v63);
    *&v224[7] = -*&v64;
    v224[8] = 0;
    do
    {
      v70 = v60;
      v71 = 3;
      do
      {
        *&v214[v70] = *(v224 + v70);
        v70 += 12;
        --v71;
      }

      while (v71);
      ++v61;
      v60 += 4;
    }

    while (v61 != 3);
    bzero(&v217 + 2, 0x24uLL);
    v72 = v59;
    *v213 = v72;
    *&v213[1] = v72;
    *&v213[2] = v72;
    v73 = v49 / v53 - v67;
    v74 = v62 - v68;
    *v212 = v73;
    *&v212[1] = v74;
    v75 = v51 / v53 - v69;
    *&v212[2] = v75;
    sub_19B6B5B70(&v208, (a1 + 112), v214, v213, v212, v207);
    v76 = v68 * v209 + v208 * v67 + v210 * v69;
    v77 = v208 - v76 * v67;
    v78 = v209 - v76 * v68;
    v208 = v77;
    v209 = v78;
    v79 = v210 - v76 * v69;
    v210 = v79;
    sub_19B6B8530(a1, &v208);
    if (*(a1 + 472))
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v80 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v81 = *(a1 + 88);
        v82 = *(a1 + 96);
        v83 = *(a1 + 104);
        v84 = *(a1 + 176);
        *buf = 134219520;
        *&buf[4] = v77;
        *&buf[12] = 2048;
        *&buf[14] = v78;
        *&buf[22] = 2048;
        v198 = v79;
        v199 = 2048;
        v200 = v81;
        v201 = 2048;
        v202 = v82;
        v203 = 2048;
        v204 = v83;
        v205 = 2048;
        v206 = v84;
        _os_log_impl(&dword_19B41C000, v80, OS_LOG_TYPE_DEBUG, "[KalmanFilterStates9-AccelUpdate] %f,%f,%f,%f,%f,%f,%f", buf, 0x48u);
      }

      v85 = sub_19B420058();
      if (*(v85 + 160) > 1 || *(v85 + 164) > 1 || *(v85 + 168) > 1 || *(v85 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        v86 = *(a1 + 88);
        v87 = *(a1 + 96);
        v88 = *(a1 + 104);
        v89 = *(a1 + 176);
        *v187 = 134219520;
        *&v187[4] = v77;
        *&v187[12] = 2048;
        *&v187[14] = v78;
        *&v187[22] = 2048;
        v188 = v79;
        v189 = 2048;
        v190 = v86;
        v191 = 2048;
        v192 = v87;
        v193 = 2048;
        v194 = v88;
        v195 = 2048;
        v196 = v89;
        LODWORD(v179) = 72;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[KalmanFilterStates9-AccelUpdate] %f,%f,%f,%f,%f,%f,%f", COERCE_DOUBLE(v187), v179, v180, v181, v182, v183, v184);
        v91 = v90;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusion9AxisMekf::doAccelerometerMeasurementUpdate(double *, double)", "CoreLocation: %s\n", v90);
        if (v91 != buf)
        {
          free(v91);
        }
      }
    }

    if (*(a1 + 512) == 1)
    {
      sub_19B4425C0((a1 + 864), (a1 + 16));
    }

    *(a1 + 896) = *a5;
    v92 = *(a1 + 904);
    v93 = __OFSUB__(v92, 1);
    v94 = v92 - 1;
    if (v94 < 0 == v93)
    {
      *(a1 + 904) = v94;
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v95 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v95, OS_LOG_TYPE_DEBUG, "Doing some crude updates to catch up.", buf, 2u);
      }

      v96 = sub_19B420058();
      if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        *v214 = 0;
        LODWORD(v179) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Doing some crude updates to catch up.", v214, *&v179);
        v98 = v97;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v97);
        if (v98 != buf)
        {
          free(v98);
        }
      }
    }

    if (*(a1 + 472) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v99 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v100 = *(a1 + 64);
        v101 = *(a1 + 72);
        v102 = *(a1 + 80);
        v103 = *(a1 + 88);
        v104 = *(a1 + 96);
        v105 = *(a1 + 104);
        v106 = *a5;
        *buf = 134219520;
        *&buf[4] = v100;
        *&buf[12] = 2048;
        *&buf[14] = v101;
        *&buf[22] = 2048;
        v198 = v102;
        v199 = 2048;
        v200 = v103;
        v201 = 2048;
        v202 = v104;
        v203 = 2048;
        v204 = v105;
        v205 = 2048;
        v206 = v106;
        _os_log_impl(&dword_19B41C000, v99, OS_LOG_TYPE_DEBUG, "[KalmanFilterStates9] %f,%f,%f,%f,%f,%f,%f", buf, 0x48u);
      }

      v107 = sub_19B420058();
      if (*(v107 + 160) > 1 || *(v107 + 164) > 1 || *(v107 + 168) > 1 || *(v107 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        v108 = *(a1 + 64);
        v109 = *(a1 + 72);
        v110 = *(a1 + 80);
        v111 = *(a1 + 88);
        v112 = *(a1 + 96);
        v113 = *(a1 + 104);
        v114 = *a5;
        *v214 = 134219520;
        *&v214[4] = v108;
        *&v214[12] = 2048;
        *&v214[14] = v109;
        *&v214[22] = 2048;
        v215 = v110;
        v216 = 2048;
        v217 = v111;
        v218 = 2048;
        v219 = v112;
        v220 = 2048;
        v221 = v113;
        v222 = 2048;
        v223 = v114;
        LODWORD(v179) = 72;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[KalmanFilterStates9] %f,%f,%f,%f,%f,%f,%f", COERCE_DOUBLE(v214), v179, v180, v181, v182, v183, v184);
        v116 = v115;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v115);
LABEL_99:
        if (v116 != buf)
        {
          free(v116);
        }

        return;
      }
    }

    return;
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v171 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v171, OS_LOG_TYPE_DEBUG, "Taking another look.", buf, 2u);
    }

    v172 = sub_19B420058();
    if (*(v172 + 160) > 1 || *(v172 + 164) > 1 || *(v172 + 168) > 1 || *(v172 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v214 = 0;
      LODWORD(v179) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Taking another look.", v214, *&v179);
      v116 = v173;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v173);
      goto LABEL_99;
    }
  }
}

double sub_19B6B8530(uint64_t a1, double *a2)
{
  sub_19B6B6138(v9, a2);
  sub_19B447A1C(v8, v9, (a1 + 16));
  v4 = 0;
  v5 = v8[1];
  *(a1 + 16) = v8[0];
  *(a1 + 32) = v5;
  v6 = a1 + 88;
  do
  {
    result = a2[v4 + 3] + *(v6 + v4 * 8);
    *(v6 + v4 * 8) = result;
    ++v4;
  }

  while (v4 != 3);
  return result;
}

void sub_19B6B85A4(uint64_t a1)
{
  sub_19B43FA98((a1 + 208));
  sub_19B43FA98((a1 + 280));
  *(a1 + 440) = 256;
  *(a1 + 436) = 0;
}

BOOL sub_19B6B85E0(uint64_t a1, uint64_t *a2, _BYTE *a3, _BYTE *a4, double *a5)
{
  v202 = *MEMORY[0x1E69E9840];
  *(a1 + 9) = 0;
  v10 = *(a2 + 10);
  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v11 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a5;
      v13 = *a3;
      v14 = *a4;
      *buf = 134218752;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      *&buf[18] = 1024;
      *&buf[20] = v13;
      LOWORD(v199) = 1024;
      *(&v199 + 2) = v14;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "[CompassIntoKF] timestamp,%f,calibration level %d, compassHasAlignedToStableField %d, useMagneticRefX %d", buf, 0x1Eu);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v16 = *a5;
      v17 = *a3;
      v18 = *a4;
      *v187 = 134218752;
      *&v187[4] = v16;
      *&v187[12] = 1024;
      *&v187[14] = v10;
      *&v187[18] = 1024;
      *&v187[20] = v17;
      LOWORD(v188) = 1024;
      *(&v188 + 2) = v18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[CompassIntoKF] timestamp,%f,calibration level %d, compassHasAlignedToStableField %d, useMagneticRefX %d", COERCE_DOUBLE(v187), 30, LODWORD(v178), LODWORD(v179));
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  if (v10 <= 2)
  {
    if (v10 <= 0)
    {
      v21 = 0;
      *(a1 + 184) = 0xBFF0000000000000;
      *(a1 + 441) = 1;
      *(a1 + 11) = 0;
      return v21;
    }

    return 0;
  }

  if (*a4 == 1 && *(a1 + 11) != 1 || *(a1 + 184) < 0.0)
  {
    *(a1 + 441) = 1;
  }

  if (*(a1 + 176) < 0.0)
  {
    if (*(a1 + 472) != 1)
    {
      return 0;
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v22 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 176);
      *buf = 134217984;
      *&buf[4] = v23;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEBUG, "[CompassIntoKF] fLastAccelTime,%f", buf, 0xCu);
    }

    v24 = sub_19B420058();
    if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v25 = qword_1EAFE2898;
    v26 = *(a1 + 176);
    *v187 = 134217984;
    *&v187[4] = v26;
    LODWORD(v177) = 12;
    v176 = v187;
    v27 = "[CompassIntoKF] fLastAccelTime,%f";
    goto LABEL_34;
  }

  if (*a3 == 1)
  {
    if (*(a1 + 472) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v31 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEBUG, "[CompassIntoKF] magneticFieldAdjusted!", buf, 2u);
      }

      v32 = sub_19B420058();
      if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        *v187 = 0;
        LODWORD(v177) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[CompassIntoKF] magneticFieldAdjusted!", v187, *&v177);
        v34 = v33;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v33);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    v21 = 0;
    *(a1 + 440) = 1;
    *(a1 + 432) = 0;
    return v21;
  }

  v35 = *(a1 + 40);
  v36 = *(a1 + 32) + *(a1 + 32);
  v37 = *(a1 + 16);
  v38 = *(a1 + 24);
  v39 = v35 * (v38 + v38) - v37 * v36;
  v40 = -(v35 * (v37 + v37)) - v38 * v36;
  v197[0] = v39;
  v197[1] = v40;
  v41 = v37 * (v37 + v37) + -1.0 + v38 * (v38 + v38);
  v197[2] = v41;
  v42 = v40 * *(a1 + 160) + *(a1 + 156) * v39 + *(a1 + 164) * v41;
  *&v36 = *(a1 + 436) + (v42 * 57.296) * *(a1 + 488);
  *(a1 + 436) = LODWORD(v36);
  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v43 = off_1ED71C808;
    v44 = v42;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(a1 + 436);
      *buf = 134218240;
      *&buf[4] = v44;
      *&buf[12] = 2048;
      *&buf[14] = v45;
      _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "rotAroundGrav, %.3f, sum, %.3f", buf, 0x16u);
    }

    v46 = sub_19B420058();
    if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v47 = *(a1 + 436);
      *v187 = 134218240;
      *&v187[4] = v44;
      *&v187[12] = 2048;
      *&v187[14] = v47;
      LODWORD(v177) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "rotAroundGrav, %.3f, sum, %.3f", COERCE_DOUBLE(v187), v177);
      v49 = v48;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v48);
      if (v49 != buf)
      {
        free(v49);
      }
    }
  }

  v50 = *(a1 + 584);
  v51 = 0.0;
  if (v50)
  {
    v52 = *(a1 + 536);
    v53 = v52 / v50;
    if (v50 != 1)
    {
      v54 = (v50 * *(a1 + 540)) - (v52 * v52);
      if (v54 >= 0.0)
      {
        v51 = v54 / ((v50 - 1) * v50);
      }
    }
  }

  else
  {
    v53 = 0.0;
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v55 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = v53;
      *&buf[12] = 2048;
      *&buf[14] = v51;
      _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_DEBUG, "[CompassIntoKF] omegaMag, %.3f, omegaVar, %.3f", buf, 0x16u);
    }

    v56 = sub_19B420058();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      *v187 = 134218240;
      *&v187[4] = v53;
      *&v187[12] = 2048;
      *&v187[14] = v51;
      LODWORD(v177) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[CompassIntoKF] omegaMag, %.3f, omegaVar, %.3f", COERCE_DOUBLE(v187), v177);
      v58 = v57;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v57);
      if (v58 != buf)
      {
        free(v58);
      }
    }
  }

  *(a1 + 364) = *a2;
  *(a1 + 368) = *(a2 + 1);
  *(a1 + 372) = *(a2 + 2);
  if ((*a4 & 1) == 0 && *(a1 + 440) == 1)
  {
    v21 = 0;
    if (v51 >= 2.25 || fabsf(*(a1 + 436)) <= 90.0 || v53 >= 1.57079633)
    {
      return v21;
    }

    sub_19B4200DC(a1 + 208, a2 + 12);
    sub_19B4200DC(a1 + 280, a2 + 13);
    v59 = *(a1 + 272);
    if (v59 < *(a1 + 216))
    {
      return 0;
    }

    v60 = 0.0;
    v61 = 0.0;
    if (v59)
    {
      v61 = *(a1 + 224) / v59;
    }

    v62 = *(a1 + 344);
    if (v62)
    {
      v60 = *(a1 + 296) / v62;
    }

    v63 = *(a1 + 424);
    v64 = 0.0;
    v65 = 0.0;
    if (v59 >= 2)
    {
      v66 = (v59 * *(a1 + 228)) - (*(a1 + 224) * *(a1 + 224));
      if (v66 >= 0.0)
      {
        v65 = v66 / ((v59 - 1) * v59);
      }
    }

    v67 = vabds_f32(v61, v63);
    if (v62 >= 2)
    {
      v68 = (v62 * *(a1 + 300)) - (*(a1 + 296) * *(a1 + 296));
      v69 = (v62 - 1) * v62;
      if (v68 >= 0.0)
      {
        v64 = v68 / v69;
      }

      else
      {
        v64 = 0.0;
      }
    }

    v181 = vabds_f32(v60, *(a1 + 428));
    v70 = v67 / v63;
    if (*(a1 + 472) == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v71 = off_1ED71C808;
      v178 = v181;
      v179 = v65;
      v180 = v64;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = v70;
        *&buf[12] = 2048;
        *&buf[14] = v181;
        *&buf[22] = 2048;
        v199 = v65;
        v200 = 2048;
        *v201 = v64;
        _os_log_impl(&dword_19B41C000, v71, OS_LOG_TYPE_DEBUG, "FieldDiff, %.3f, %.3f, %.3f, %.3f", buf, 0x2Au);
      }

      v72 = sub_19B420058();
      if (*(v72 + 160) > 1 || *(v72 + 164) > 1 || *(v72 + 168) > 1 || *(v72 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        *v187 = 134218752;
        *&v187[4] = v70;
        *&v187[12] = 2048;
        *&v187[14] = v181;
        *&v187[22] = 2048;
        v188 = v65;
        v189 = 2048;
        *v190 = v64;
        LODWORD(v177) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "FieldDiff, %.3f, %.3f, %.3f, %.3f", COERCE_DOUBLE(v187), v177, v178, v179);
        v74 = v73;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v73);
        if (v74 != buf)
        {
          free(v74);
        }
      }
    }

    if (v70 < 0.07 && v181 < 4.0 && v65 < 2.25 && v64 < 4.0)
    {
      *(a1 + 432) = 0;
    }

    else
    {
      v78 = *(a1 + 432);
      *(a1 + 432) = v78 + 1;
      if (v78 < 2)
      {
        sub_19B43FA98((a1 + 208));
        sub_19B43FA98((a1 + 280));
        if (*(a1 + 472) != 1)
        {
          return 0;
        }

        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v170 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          v171 = *(a1 + 432);
          *buf = 67109120;
          *&buf[4] = v171;
          _os_log_impl(&dword_19B41C000, v170, OS_LOG_TYPE_DEBUG, "Checking again for magField. checkcount, %d", buf, 8u);
        }

        v172 = sub_19B420058();
        if (*(v172 + 160) <= 1 && *(v172 + 164) <= 1 && *(v172 + 168) <= 1 && !*(v172 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v25 = off_1ED71C808;
        v173 = *(a1 + 432);
        *v187 = 67109120;
        *&v187[4] = v173;
        LODWORD(v177) = 8;
        v176 = v187;
        v27 = "Checking again for magField. checkcount, %d";
LABEL_34:
        v28 = 2;
        goto LABEL_35;
      }

      if (*(a1 + 472) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v79 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v79, OS_LOG_TYPE_DEBUG, "Aborted yawUpdate.", buf, 2u);
        }

        v80 = sub_19B420058();
        if (*(v80 + 160) > 1 || *(v80 + 164) > 1 || *(v80 + 168) > 1 || *(v80 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          *v187 = 0;
          LODWORD(v177) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Aborted yawUpdate.", v187, *&v177);
          v82 = v81;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v81);
          if (v82 != buf)
          {
            free(v82);
          }
        }
      }

      sub_19B6B85A4(a1);
    }
  }

  v83 = (a1 + 364);
  if (*(a1 + 441) == 1)
  {
    if (*a4 != 1)
    {
      *(a1 + 424) = a2[6];
      *v191 = vcvtq_f64_f32(*v83);
      *&v191[16] = *(a1 + 372);
      *v187 = vnegq_f64(*(a1 + 16));
      v101 = *(a1 + 40);
      *&v187[16] = -*(a1 + 32);
      v188 = v101;
      sub_19B6B630C(v187, v191, (a1 + 400));
      v102 = *(a1 + 400);
      v103 = vmulq_f64(v102, v102);
      v104 = *(a1 + 416);
      v105 = sqrt(v103.f64[1] + v102.f64[0] * v102.f64[0] + v104 * v104);
      if (v105 <= 0.0)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v139 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v139, OS_LOG_TYPE_INFO, "Warning: Compass outputs field magnitude 0.", buf, 2u);
        }

        v140 = sub_19B420058();
        if (*(v140 + 160) > 1 || *(v140 + 164) > 1 || *(v140 + 168) > 1 || *(v140 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          *v195 = 0;
          LODWORD(v177) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Warning: Compass outputs field magnitude 0.", v195, *&v177);
          v142 = v141;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v141);
          if (v142 != buf)
          {
            free(v142);
          }
        }

        v116 = -1.0;
        v117 = 184;
      }

      else
      {
        *(a1 + 448) = vdivq_f64(v102, vdupq_lane_s64(*&v105, 0));
        *(a1 + 464) = v104 / v105;
        if (*(a1 + 472) == 1)
        {
          if (qword_1EAFE2890 != -1)
          {
            dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
          }

          v106 = qword_1EAFE2898;
          if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
          {
            v107 = *(a1 + 448);
            v108 = *(a1 + 456);
            v109 = *(a1 + 464);
            *buf = 134218496;
            *&buf[4] = v107;
            *&buf[12] = 2048;
            *&buf[14] = v108;
            *&buf[22] = 2048;
            v199 = v109;
            _os_log_impl(&dword_19B41C000, v106, OS_LOG_TYPE_DEBUG, "[!!!CompassInertialReference] x,%f,y,%f,z,%f", buf, 0x20u);
          }

          v110 = sub_19B420058();
          if (*(v110 + 160) > 1 || *(v110 + 164) > 1 || *(v110 + 168) > 1 || *(v110 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2890 != -1)
            {
              dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
            }

            v111 = *(a1 + 448);
            v112 = *(a1 + 456);
            v113 = *(a1 + 464);
            *v195 = 134218496;
            *&v195[4] = v111;
            *&v195[12] = 2048;
            *&v195[14] = v112;
            *&v195[22] = 2048;
            v196 = v113;
            LODWORD(v177) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[!!!CompassInertialReference] x,%f,y,%f,z,%f", COERCE_DOUBLE(v195), v177, v178);
            v115 = v114;
            sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v114);
            if (v115 != buf)
            {
              free(v115);
            }
          }
        }

        v116 = *a5;
        *(a1 + 184) = *a5;
        v117 = 200;
      }

      v21 = 0;
      *(a1 + v117) = v116;
      return v21;
    }

    if ((*(a1 + 11) & 1) == 0)
    {
      v118 = *(a1 + 40);
      v119 = *(a1 + 32) + *(a1 + 32);
      v120 = *(a1 + 16);
      v121 = *(a1 + 24);
      v122 = v118 * (v121 + v121) - v120 * v119;
      *&v119 = -(v118 * (v120 + v120)) - v121 * v119;
      *&v118 = -*&v119;
      *&v120 = v120 * (v120 + v120) + -1.0 + v121 * (v121 + v121);
      *&v119 = sqrtf(((*&v119 * *&v119) + (v122 * v122)) + (*&v120 * *&v120));
      v185[0] = -v122 / *&v119;
      v185[1] = *&v118 / *&v119;
      v186 = -*&v120 / *&v119;
      v183 = *a2;
      v184 = *(a2 + 2);
      v123 = ((*&v118 / *&v119) * v184) - (v186 * *(&v183 + 1));
      *&v121 = (v186 * *&v183) - (v185[0] * v184);
      v124 = (v185[0] * *(&v183 + 1)) - ((*&v118 / *&v119) * *&v183);
      v125 = sqrtf(((*&v121 * *&v121) + (v123 * v123)) + (v124 * v124));
      v182[0] = v123 / v125;
      v182[1] = *&v121 / v125;
      v182[2] = v124 / v125;
      *&v183 = ((*&v121 / v125) * v186) - ((v124 / v125) * (*&v118 / *&v119));
      *(&v183 + 1) = ((v124 / v125) * v185[0]) - ((v123 / v125) * v186);
      v184 = ((v123 / v125) * (*&v118 / *&v119)) - ((*&v121 / v125) * v185[0]);
      sub_19B688DEC(v187, &v183, v182, v185);
      v126 = v188;
      v127 = *v187;
      *(a1 + 32) = v188;
      *(a1 + 40) = v127;
      *(a1 + 11) = 1;
      *(a1 + 441) = 0;
      v128 = *&v187[8];
      *(a1 + 16) = *&v187[8];
      *(a1 + 184) = *a5;
      *v195 = vnegq_f64(v128);
      *&v195[16] = -v126;
      v196 = v127;
      v193 = vcvtq_f64_f32(*v83);
      v194 = *(a1 + 372);
      sub_19B6B630C(v195, v193.f64, (a1 + 376));
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v129 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        v130 = *(a1 + 376);
        v131 = *(a1 + 384);
        v132 = *(a1 + 392);
        *buf = 134218496;
        *&buf[4] = v130;
        *&buf[12] = 2048;
        *&buf[14] = v131;
        *&buf[22] = 2048;
        v199 = v132;
        _os_log_impl(&dword_19B41C000, v129, OS_LOG_TYPE_DEBUG, "fCorrected, %.3f, %.3f, %.3f", buf, 0x20u);
      }

      v133 = sub_19B420058();
      if (*(v133 + 160) > 1 || *(v133 + 164) > 1 || *(v133 + 168) > 1 || *(v133 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v134 = *(a1 + 376);
        v135 = *(a1 + 384);
        v136 = *(a1 + 392);
        *v191 = 134218496;
        *&v191[4] = v134;
        *&v191[12] = 2048;
        *&v191[14] = v135;
        *&v191[22] = 2048;
        v192 = v136;
        LODWORD(v177) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "fCorrected, %.3f, %.3f, %.3f", COERCE_DOUBLE(v191), v177, v178);
        v138 = v137;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v137);
        if (v138 != buf)
        {
          free(v138);
        }
      }

      v21 = 1;
      *(a1 + 9) = 1;
      *(a1 + 456) = 0;
      *(a1 + 464) = 0;
      *(a1 + 448) = 0x3FF0000000000000;
      *(a1 + 200) = *a5;
      return v21;
    }

    if (*(a1 + 472) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v84 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v85 = *(a1 + 448);
        v86 = *(a1 + 456);
        v87 = *(a1 + 464);
        v88 = *a5;
        *buf = 134219008;
        *&buf[4] = v85;
        *&buf[12] = 2048;
        *&buf[14] = v86;
        *&buf[22] = 2048;
        v199 = v87;
        v200 = 1024;
        *v201 = v10;
        *&v201[4] = 2048;
        *&v201[6] = v88;
        _os_log_impl(&dword_19B41C000, v84, OS_LOG_TYPE_DEBUG, "[!!!CompassInertialReference] x,%f,y,%f,z,%f,calibrationLevel,%d,timestamp,%lf", buf, 0x30u);
      }

      v89 = sub_19B420058();
      if (*(v89 + 160) > 1 || *(v89 + 164) > 1 || *(v89 + 168) > 1 || *(v89 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        v90 = *(a1 + 448);
        v91 = *(a1 + 456);
        v92 = *(a1 + 464);
        v93 = *a5;
        *v187 = 134219008;
        *&v187[4] = v90;
        *&v187[12] = 2048;
        *&v187[14] = v91;
        *&v187[22] = 2048;
        v188 = v92;
        v189 = 1024;
        *v190 = v10;
        *&v190[4] = 2048;
        *&v190[6] = v93;
        LODWORD(v177) = 48;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[!!!CompassInertialReference] x,%f,y,%f,z,%f,calibrationLevel,%d,timestamp,%lf", COERCE_DOUBLE(v187), v177, v178, LODWORD(v179), v180);
        v95 = v94;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v94);
        if (v95 != buf)
        {
          free(v95);
        }
      }
    }
  }

  if (*(a1 + 440) != 1)
  {
    return 0;
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v96 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v96, OS_LOG_TYPE_DEBUG, "UpdatingYaw!", buf, 2u);
    }

    v97 = sub_19B420058();
    if (*(v97 + 160) > 1 || *(v97 + 164) > 1 || *(v97 + 168) > 1 || *(v97 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v187 = 0;
      LODWORD(v177) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "UpdatingYaw!", v187, *&v177);
      v99 = v98;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v98);
      if (v99 != buf)
      {
        free(v99);
      }
    }
  }

  v21 = 0;
  if (v53 <= 5.0 && v51 <= 8.0)
  {
    if (*a5 < *(a1 + 168))
    {
      return 0;
    }

    *(a1 + 184) = *a5;
    if (*(a1 + 472) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v143 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v144 = *(a1 + 364);
        v145 = *(a1 + 368);
        v146 = *(a1 + 372);
        v147 = *a5;
        *buf = 134218752;
        *&buf[4] = v144;
        *&buf[12] = 2048;
        *&buf[14] = v145;
        *&buf[22] = 2048;
        v199 = v146;
        v200 = 2048;
        *v201 = v147;
        _os_log_impl(&dword_19B41C000, v143, OS_LOG_TYPE_DEBUG, "[Magnetometer9] x,%f,y,%f,z,%f,timestamp,%lf", buf, 0x2Au);
      }

      v148 = sub_19B420058();
      if (*(v148 + 160) > 1 || *(v148 + 164) > 1 || *(v148 + 168) > 1 || *(v148 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        v149 = *(a1 + 364);
        v150 = *(a1 + 368);
        v151 = *(a1 + 372);
        v152 = *a5;
        *v187 = 134218752;
        *&v187[4] = v149;
        *&v187[12] = 2048;
        *&v187[14] = v150;
        *&v187[22] = 2048;
        v188 = v151;
        v189 = 2048;
        *v190 = v152;
        LODWORD(v177) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[Magnetometer9] x,%f,y,%f,z,%f,timestamp,%lf", COERCE_DOUBLE(v187), v177, v178, v179);
        v154 = v153;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v153);
        if (v154 != buf)
        {
          free(v154);
        }
      }
    }

    v155 = *(a1 + 364);
    v156 = *(a1 + 368);
    v157 = *(a1 + 372);
    v158 = sqrt(v156 * v156 + v155 * v155 + v157 * v157);
    if (v158 <= 0.0)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v168 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v168, OS_LOG_TYPE_INFO, "Warning: Hey! Compass outputs field magnitude 0.", buf, 2u);
      }

      v169 = sub_19B420058();
      if (*(v169 + 160) <= 1 && *(v169 + 164) <= 1 && *(v169 + 168) <= 1 && !*(v169 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v25 = off_1ED71C808;
      *v187 = 0;
      LODWORD(v177) = 2;
      v176 = v187;
      v27 = "Warning: Hey! Compass outputs field magnitude 0.";
    }

    else
    {
      v159 = v155 / v158;
      v160 = v156 / v158;
      *v187 = v159;
      *&v187[8] = v160;
      v161 = v157 / v158;
      *&v187[16] = v161;
      v162 = *a4;
      if ((v162 & 1) == 0)
      {
        goto LABEL_235;
      }

      v163 = 0;
      v164 = -(v40 * v160 + v159 * v39 + v161 * v41);
      do
      {
        *&v187[v163 * 8] = *&v187[v163 * 8] + v164 * v197[v163];
        ++v163;
      }

      while (v163 != 3);
      v165 = sqrt(COERCE_DOUBLE(*&vmulq_f64(*v187, *v187).f64[1]) + *v187 * *v187 + *&v187[16] * *&v187[16]);
      if (v165 > 0.001)
      {
        *v187 = vdivq_f64(*v187, vdupq_lane_s64(*&v165, 0));
        *&v187[16] = *&v187[16] / v165;
LABEL_235:
        v166 = sub_19B6BA4D8(a1, v187, v10, v162);
        *buf = vnegq_f64(*(a1 + 16));
        v167 = *(a1 + 40);
        *&buf[16] = -*(a1 + 32);
        v199 = v167;
        *v195 = vcvtq_f64_f32(*v83);
        *&v195[16] = *(a1 + 372);
        sub_19B6B630C(buf, v195, (a1 + 376));
        v21 = v166 >= 0.1;
        if (v166 < 0.1)
        {
          sub_19B6B85A4(a1);
          *(a1 + 440) = 0;
        }

        return v21;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v174 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v174, OS_LOG_TYPE_INFO, "Warning: Hey! Compass outputs field magnitude 0.", buf, 2u);
      }

      v175 = sub_19B420058();
      if (*(v175 + 160) <= 1 && *(v175 + 164) <= 1 && *(v175 + 168) <= 1 && !*(v175 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v25 = off_1ED71C808;
      *v195 = 0;
      LODWORD(v177) = 2;
      v176 = v195;
      v27 = "Warning: Hey! Compass outputs field magnitude 0.";
    }

    v28 = 1;
LABEL_35:
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v25, v28, v27, v176, *&v177);
    v30 = v29;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v29);
    if (v30 != buf)
    {
      free(v30);
    }

    return 0;
  }

  return v21;
}

float sub_19B6BA4D8(uint64_t a1, float64x2_t *a2, int a3, int a4)
{
  v126 = *MEMORY[0x1E69E9840];
  *(a1 + 9) = 1;
  sub_19B6B630C((a1 + 16), (a1 + 448), v124.f64);
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = v11 * (v12 + v12);
  v15 = -(v11 * (v13 + v13));
  v16 = v125;
  v17 = v125;
  v120[0] = 0;
  *&v71 = -v17;
  *&v120[3] = -v17;
  v120[4] = 0;
  v72 = v124;
  *&v18 = vcvt_f32_f64(v124);
  v19 = *(&v18 + 1);
  v20 = -*(&v18 + 1);
  *&v120[1] = v17;
  *&v120[2] = -*(&v18 + 1);
  v121 = v18;
  v69 = v18;
  *(&v71 + 1) = -*&v18;
  v122 = -*&v18;
  v123 = 0;
  do
  {
    v21 = v8;
    v22 = 3;
    do
    {
      *&v118[v21] = *(v120 + v21);
      v21 += 12;
      --v22;
    }

    while (v22);
    ++v9;
    v8 += 4;
  }

  while (v9 != 3);
  v23 = v10 + v10;
  v24 = v14 - v13 * v23;
  v25 = v15 - v12 * v23;
  v26 = v13 * (v13 + v13) + -1.0 + v12 * (v12 + v12);
  bzero(&v119, 0x24uLL);
  v116 = vdup_n_s32(0x368637BDu);
  v117 = 914765757;
  v114 = vcvt_f32_f64(vsubq_f64(*a2, v72));
  v27 = a2[1].f64[0] - v16;
  v115 = v27;
  sub_19B6B5B70(&v111, (a1 + 112), v118, &v116, &v114, v110);
  v28 = v25 * v112 + v111 * v24 + v113 * v26;
  v29 = v24 * v28;
  v30 = v25 * v28;
  v111 = v29;
  v112 = v30;
  v31 = v26 * v28;
  v113 = v31;
  v32 = sqrt(v30 * v30 + v29 * v29 + v31 * v31) * 57.2957802;
  if (*(a1 + 472))
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v33 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(a1 + 184);
      *buf = 134218752;
      v93 = v72.f64[0];
      v94 = 2048;
      *(buf | 0xE) = v72.f64[1];
      v96 = 2048;
      v97 = v16;
      v98 = 2048;
      *v99 = v34;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[ExpectedCompass] %f,%f,%f,%f", buf, 0x2Au);
    }

    v35 = sub_19B420058();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v36 = qword_1EAFE2898;
      v37 = *(a1 + 184);
      v74 = 134218752;
      v75 = v72.f64[0];
      v76 = 2048;
      *(&v74 | 0xE) = v72.f64[1];
      v78 = 2048;
      v79 = v16;
      v80 = 2048;
      *v81 = v37;
      LODWORD(v68) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v36, 2, "[ExpectedCompass] %f,%f,%f,%f", COERCE_DOUBLE(&v74), v68, *&v69, *(&v69 + 1));
      v39 = v38;
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLSensorFusion9AxisMekf::doCompassMeasurementUpdate(double *, double, int, BOOL)", "CoreLocation: %s\n", v38);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v40 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v41 = a2->f64[0];
      v42 = a2->f64[1];
      v43 = a2[1].f64[0];
      v44 = *(a1 + 184);
      *buf = 134219008;
      v93 = v41;
      v94 = 2048;
      v95 = v42;
      v96 = 2048;
      v97 = v43;
      v98 = 1024;
      *v99 = a3;
      *&v99[4] = 2048;
      *&v99[6] = v44;
      _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_DEBUG, "[TrueCompass] %f,%f,%f,%d,%f", buf, 0x30u);
    }

    v45 = sub_19B420058();
    if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v46 = a2->f64[0];
      v47 = a2->f64[1];
      v48 = a2[1].f64[0];
      v49 = *(a1 + 184);
      v74 = 134219008;
      v75 = v46;
      v76 = 2048;
      v77 = v47;
      v78 = 2048;
      v79 = v48;
      v80 = 1024;
      *v81 = a3;
      *&v81[4] = 2048;
      *&v81[6] = v49;
      LODWORD(v68) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[TrueCompass] %f,%f,%f,%d,%f", COERCE_DOUBLE(&v74), v68, *&v69, DWORD2(v69), v70);
      v51 = v50;
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLSensorFusion9AxisMekf::doCompassMeasurementUpdate(double *, double, int, BOOL)", "CoreLocation: %s\n", v50);
      if (v51 != buf)
      {
        free(v51);
      }
    }

    v73 = v29;
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v52 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(a1 + 184);
      *buf = 134220288;
      v93 = 0.0;
      v94 = 2048;
      v95 = v17;
      v96 = 2048;
      v97 = v20;
      v98 = 2048;
      *v99 = *&v71;
      *&v99[8] = 2048;
      *&v99[10] = 0;
      v100 = 2048;
      v101 = *&v69;
      v102 = 2048;
      v103 = v19;
      v104 = 2048;
      v105 = *(&v71 + 1);
      v106 = 2048;
      v107 = 0;
      v108 = 2048;
      v109 = v53;
      _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_DEBUG, "[MagCCross] %f,%f,%f,%f,%f,%f,%f,%f,%f,%f", buf, 0x66u);
    }

    v54 = sub_19B420058();
    if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v55 = *(a1 + 184);
      v74 = 134220288;
      v75 = 0.0;
      v76 = 2048;
      v77 = v17;
      v78 = 2048;
      v79 = v20;
      v80 = 2048;
      *v81 = *&v71;
      *&v81[8] = 2048;
      *&v81[10] = 0;
      v82 = 2048;
      v83 = *&v69;
      v84 = 2048;
      v85 = v19;
      v86 = 2048;
      v87 = *(&v71 + 1);
      v88 = 2048;
      v89 = 0;
      v90 = 2048;
      v91 = v55;
      LODWORD(v68) = 102;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[MagCCross] %f,%f,%f,%f,%f,%f,%f,%f,%f,%f", COERCE_DOUBLE(&v74), v68, *&v69, *(&v69 + 1), v70, v71, v29, v72.f64[1]);
      v57 = v56;
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLSensorFusion9AxisMekf::doCompassMeasurementUpdate(double *, double, int, BOOL)", "CoreLocation: %s\n", v56);
      if (v57 != buf)
      {
        free(v57);
      }
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v29 = v73;
    v58 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v59 = fabsf(*(a1 + 436));
      v60 = *(a1 + 184);
      *buf = 134219264;
      v93 = v73;
      v94 = 2048;
      v95 = v30;
      v96 = 2048;
      v97 = v31;
      v98 = 2048;
      *v99 = v32;
      *&v99[8] = 2048;
      *&v99[10] = v59;
      v100 = 2048;
      v101 = v60;
      _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_DEBUG, "[MagCorrectionDX] %f,%f,%f,angle,%.3f,sumRot,%.3f,%f", buf, 0x3Eu);
    }

    v61 = sub_19B420058();
    if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v62 = fabsf(*(a1 + 436));
      v63 = *(a1 + 184);
      v74 = 134219264;
      v75 = v73;
      v76 = 2048;
      v77 = v30;
      v78 = 2048;
      v79 = v31;
      v80 = 2048;
      *v81 = v32;
      *&v81[8] = 2048;
      *&v81[10] = v62;
      v82 = 2048;
      v83 = v63;
      LODWORD(v68) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[MagCorrectionDX] %f,%f,%f,angle,%.3f,sumRot,%.3f,%f", COERCE_DOUBLE(&v74), v68, *&v69, *(&v69 + 1), v70, v71);
      v65 = v64;
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLSensorFusion9AxisMekf::doCompassMeasurementUpdate(double *, double, int, BOOL)", "CoreLocation: %s\n", v64);
      if (v65 != buf)
      {
        free(v65);
      }
    }
  }

  if (a4 && v32 > 3.0)
  {
    v66 = (sqrtf(v32) / v32);
    v111 = v29 * v66;
    v112 = v30 * v66;
    v113 = v31 * v66;
  }

  sub_19B6B8530(a1, &v111);
  return v32;
}

uint64_t sub_19B6BAEE8(_DWORD *a1, _DWORD *a2)
{
  *a2 = a1[39];
  a2[1] = a1[40];
  a2[2] = a1[41];
  return 1;
}

BOOL sub_19B6BAF08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  if (v2 <= 0.0)
  {
    *a2 = 0;
    v10 = 0.0;
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32) + *(a1 + 32);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = v3 * (v6 + v6) - v5 * v4;
    v8 = -(v3 * (v5 + v5)) - v6 * v4;
    v9 = v5 * (v5 + v5) + -1.0 + v6 * (v6 + v6);
    *&v5 = *(a1 + 352) - v7;
    *a2 = LODWORD(v5);
    *&v8 = *(a1 + 356) - v8;
    *(a2 + 4) = LODWORD(v8);
    v10 = *(a1 + 360) - v9;
  }

  result = v2 > 0.0;
  *(a2 + 8) = v10;
  return result;
}

os_log_t sub_19B6BAFB4()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

const char *sub_19B6BB7A8(unsigned int a1)
{
  if (a1 > 5)
  {
    return "NONE";
  }

  else
  {
    return off_1E7534338[a1];
  }
}

uint64_t sub_19B6BB7CC(const char *a1, int a2, int a3, uint64_t a4, const char *a5, char *a6, ...)
{
  va_start(va, a6);
  v12 = sub_19B420058();
  if (a3)
  {
    return sub_19B68A174(v12, a1, a2, a4, a5, a6, va);
  }

  else
  {
    return sub_19B6897D0(v12, a1, a2, a4, a5, a6, va);
  }
}

uint64_t sub_19B6BC5A4(float a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 < 0.0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
    }

    v3 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v10 = a1;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Assertion failed: arg >= 0.0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMFFTProcessor.cpp, line 41,arg,%f.", buf, 0xCu);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
      }

      v7 = 134217984;
      v8 = a1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: arg >= 0.0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMFFTProcessor.cpp, line 41,arg,%f.", COERCE_DOUBLE(&v7));
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static int CMFFTProcessor::idxRound(scalar_32)", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return (a1 + 0.5);
}

float sub_19B6BC784(int a1, int a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1 >= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
    }

    v10 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      v18 = a1;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Assertion failed: start < end, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMFFTProcessor.cpp, line 74,start,%d,end,%d.", buf, 0xEu);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
      }

      v14[0] = 67109376;
      v14[1] = a1;
      v15 = 1024;
      v16 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: start < end, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMFFTProcessor.cpp, line 74,start,%d,end,%d.", v14, 14);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static float CMFFTProcessor::getSum(int, int, const FrequencyData *)", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  result = 0.0;
  if (a1 <= a2)
  {
    v7 = a2 - a1 + 1;
    v8 = (a3 + 4 * a1);
    do
    {
      v9 = *v8++;
      result = result + v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

float sub_19B6BC99C(int a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1 >= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
    }

    v13 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      v21 = a1;
      v22 = 1024;
      v23 = a2;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Assertion failed: start < end, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMFFTProcessor.cpp, line 96,start,%d,end,%d.", buf, 0xEu);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
      }

      v17[0] = 67109376;
      v17[1] = a1;
      v18 = 1024;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: start < end, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMFFTProcessor.cpp, line 96,start,%d,end,%d.", v17, 14);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static float CMFFTProcessor::getMaxInRange(int, int, const FrequencyData *)", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    return *(a3 + 4 * a1);
  }

  else
  {
    v6 = (a3 + 4 * a1);
    v8 = *v6;
    v7 = v6 + 1;
    result = v8;
    v10 = a2 - a1;
    do
    {
      v11 = *v7++;
      v12 = v11;
      if (v11 > result)
      {
        result = v12;
      }

      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_19B6BCC68(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B6BCCA0(uint64_t a1, int a2, double *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v25) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryHeartRate] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (v8 = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      v20 = 67240192;
      LODWORD(v21) = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryHeartRate] Unrecognized update interval notification %{public}d", &v20, 8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryHeartRate::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }

      return 0.0;
    }
  }

  else
  {
    sub_19B750AC4(a1);
    v8 = *a3;
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
      if (v8 < 1.0)
      {
        v8 = 1.0;
      }
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
    }

    v11 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v12 = *a3;
      *buf = 134349312;
      v25 = v8;
      v26 = 2048;
      v27 = v12;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "[AccessoryHeartRate] Setting update interval to %{public}f, given minimumUpdateInterval, %f", buf, 0x16u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      v14 = *a3;
      v20 = 134349312;
      v21 = v8;
      v22 = 2048;
      v23 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryHeartRate] Setting update interval to %{public}f, given minimumUpdateInterval, %f", &v20, 22);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryHeartRate::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = rint(v8 * 1000000.0);
    if (v8 < 0.0)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    sub_19B4238F4(*(a1 + 32), v18);
  }

  return v8;
}

void sub_19B6BD04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v7 = IntegerValue;
    if (IntegerValue == 16)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v9 = sub_19B41E070(TimeStamp);
      v31 = v9;
      v10 = *(DataValue + 13);
      LODWORD(v32) = v10;
      _H9 = *(DataValue + 14);
      __asm { FCVT            S0, H9 }

      HIDWORD(v32) = _S0;
      v17 = *(DataValue + 5);
      v33 = v17;
      v18 = *(DataValue + 1);
      LODWORD(v34) = v18;
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      v19 = qword_1ED71C7C8;
      v20 = os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG);
      __asm { FCVT            D9, H9 }

      if (v20)
      {
        *buf = 67241731;
        v48 = v18;
        v49 = 1025;
        *v50 = v10;
        *&v50[4] = 2050;
        *&v50[6] = _D9;
        v51 = 2050;
        v52 = v17;
        v53 = 2050;
        v54 = v9;
        v55 = 1040;
        v56 = 16;
        v57 = 2097;
        v58 = DataValue;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "[AccessoryHeartRate] seq,%{public}d,heartrate,%{private}u,confidence,%{public}10.10f,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", buf, 0x3Cu);
      }

      v22 = sub_19B420058();
      if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
        }

        v35 = 67241731;
        v36 = v18;
        v37 = 1025;
        *v38 = v10;
        *&v38[4] = 2050;
        *&v38[6] = _D9;
        v39 = 2050;
        v40 = v17;
        v41 = 2050;
        v42 = v9;
        v43 = 1040;
        v44 = 16;
        v45 = 2097;
        v46 = DataValue;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[AccessoryHeartRate] seq,%{public}d,heartrate,%{private}u,confidence,%{public}10.10f,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", &v35, 60, *&v31, v32, v33, v34);
        v24 = v23;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryHeartRate::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      sub_19B41DF08(a1, 0, &v31, 32);
      return;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
    }

    v28 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157955;
      v48 = v7;
      v49 = 2097;
      *v50 = DataValue;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_ERROR, "[AccessoryHeartRate] Invalid payload: %{private}.*P", buf, 0x12u);
    }

    v29 = sub_19B420058();
    if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      v35 = 68157955;
      v36 = v7;
      v37 = 2097;
      *v38 = DataValue;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryHeartRate] Invalid payload: %{private}.*P", &v35, 18);
LABEL_36:
      v30 = v27;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryHeartRate::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v27);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
    }

    v25 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "[AccessoryHeartRate] Invalid payload", buf, 2u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      LOWORD(v35) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryHeartRate] Invalid payload", &v35, 2);
      goto LABEL_36;
    }
  }
}

os_log_t sub_19B6BD5A4()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void sub_19B6BDD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v35);
  _Unwind_Resume(a1);
}

void *sub_19B6BDDF0(uint64_t a1, CLConnectionMessage **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_19B444AA4(v21, Dictionary);
  if ((*(v21[0] + 856))(v21) > 0)
  {
    if (!*(*(a1 + 32) + 24))
    {
      return sub_19B445384(v21);
    }

    memset(&v20, 0, sizeof(v20));
    sub_19B5EC788(v21, "kCLConnectionMessageNameKey", &v20, 0xFFFFFFFFLL);
    if (!std::string::compare(&v20, "GestureDetected"))
    {
      v14 = 0;
    }

    else
    {
      if (std::string::compare(&v20, "GestureCanceled"))
      {
        if (qword_1EAFE27B0 != -1)
        {
          dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
        }

        v4 = qword_1EAFE27E8;
        if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_FAULT))
        {
          v5 = &v20;
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v5 = v20.__r_.__value_.__r.__words[0];
          }

          *buf = 136446210;
          v25 = v5;
          _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unexpected ear gesture state received: %{public}s", buf, 0xCu);
        }

        v6 = sub_19B420058();
        if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE27B0 != -1)
          {
            dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
          }

          v7 = &v20;
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v7 = v20.__r_.__value_.__r.__words[0];
          }

          v22 = 136446210;
          v23 = v7;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E8, 17, "Unexpected ear gesture state received: %{public}s", &v22, 12);
          v9 = v8;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMGestureManagerInternal startGestureUpdatesWithHandlerPrivate:]_block_invoke", "CoreLocation: %s\n", v8);
          if (v9 != buf)
          {
            free(v9);
          }
        }

LABEL_38:
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        return sub_19B445384(v21);
      }

      v14 = 1;
    }

    v15 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = sub_19B6BE2C4;
    block[3] = &unk_1F0E2A830;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_19B4C5138(&__p, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v20;
    }

    block[4] = v15;
    v19 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_38;
  }

  if (qword_1EAFE27B0 != -1)
  {
    dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
  }

  v10 = qword_1EAFE27E8;
  if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "Could not get dictionary for kCLConnectionMessageGesture", buf, 2u);
  }

  v11 = sub_19B420058();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27B0 != -1)
    {
      dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
    }

    LOWORD(v20.__r_.__value_.__l.__data_) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E8, 16, "Could not get dictionary for kCLConnectionMessageGesture", &v20, 2);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMGestureManagerInternal startGestureUpdatesWithHandlerPrivate:]_block_invoke", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  return sub_19B445384(v21);
}

void sub_19B6BE284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_19B445384(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6BE2C4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27B0 != -1)
  {
    dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
  }

  v2 = qword_1EAFE27E8;
  if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v3 = *v3;
    }

    *buf = 136446210;
    v12 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "Dispatching ear gesture %{public}s", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27B0 != -1)
    {
      dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
    }

    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    v9 = 136446210;
    v10 = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E8, 0, "Dispatching ear gesture %{public}s", &v9, 12);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMGestureManagerInternal startGestureUpdatesWithHandlerPrivate:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

char *sub_19B6BE4BC(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_19B4C5138(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_19B6BE4E8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_19B6BE4FC(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27B0 != -1)
  {
    dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
  }

  v3 = qword_1EAFE27E8;
  if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27B0 != -1)
    {
      dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
    }

    v7 = qword_1EAFE27E8;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136446210;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 2, "Default handler received message %{public}s", &v12, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMGestureManagerInternal startGestureUpdatesWithHandlerPrivate:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

uint64_t sub_19B6BE888(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v2)
  {
    return MEMORY[0x1EEE66B58](v1, sel_startGestureUpdatesWithHandlerPrivate_, v2);
  }

  else
  {
    return MEMORY[0x1EEE66B58](v1, sel_stopGestureUpdatesPrivate, 0);
  }
}

void sub_19B6BE968(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27B0 != -1)
  {
    dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
  }

  v2 = qword_1EAFE27E8;
  if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "#Notice Calling ear gesture handler", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27B0 != -1)
    {
      dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
    }

    v6[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E8, 0, "#Notice Calling ear gesture handler", v6, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMGestureManager gestureHandler]_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  *(*(*(a1 + 40) + 8) + 40) = *(*(a1 + 32) + 24);
}

os_log_t sub_19B6BEB94()
{
  result = os_log_create("com.apple.locationd.Motion", "EarGesture");
  qword_1EAFE27E8 = result;
  return result;
}

void sub_19B6BEEEC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6BEF3C(uint64_t a1, CLConnectionMessage **a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) != 0)
  {
    if (!*(*(a1 + 32) + 16))
    {
      return;
    }

    v12 = DictionaryOfClasses;
    v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
    v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMActivityData");
    if (v13)
    {
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v16 = qword_1ED71C7A8;
      if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        v35 = objc_msgSend_intValue(v13, v17, v18);
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "Error occurred while trying to retrieve activity update: CMErrorDomain Code:%{public}d", buf, 8u);
      }

      v19 = sub_19B420058();
      if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
      {
        return;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v22 = qword_1ED71C7A8;
      v33[0] = 67240192;
      v33[1] = objc_msgSend_intValue(v13, v20, v21);
      LODWORD(v31) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v22, 17, "Error occurred while trying to retrieve activity update: CMErrorDomain Code:%{public}d", v33, v31);
      v24 = v23;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v23);
      if (v24 == buf)
      {
        return;
      }

LABEL_27:
      free(v24);
      return;
    }

    if (v15)
    {
      v28 = *(*(a1 + 32) + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6BF454;
      block[3] = &unk_1E7532B90;
      block[4] = v15;
      block[5] = v28;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      return;
    }

    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v29 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageMotionState message!", buf, 2u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      LOWORD(v33[0]) = 0;
      LODWORD(v31) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7A8, 17, "Unable to parse kCLConnectionMessageMotionState message!", v33, v31);
      goto LABEL_26;
    }
  }

  else
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v25 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Could not get dictionary for kCLConnectionMessageMotionState", buf, 2u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      LOWORD(v33[0]) = 0;
      LODWORD(v31) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7A8, 16, "Could not get dictionary for kCLConnectionMessageMotionState", v33, v31);
LABEL_26:
      v24 = v27;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v27);
      if (v24 == buf)
      {
        return;
      }

      goto LABEL_27;
    }
  }
}

void sub_19B6BF468(uint64_t a1, CLConnectionMessage **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8), (v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMOverrideResult")) != 0) && (v14 = *(a1 + 32), *(v14 + 40)) && *(v14 + 56) == 1)
  {
    *(*(a1 + 32) + 64) = objc_msgSend_integerValue(v11, v12, v13);
    *(*(a1 + 32) + 56) = 0;
    v15 = *(*(a1 + 32) + 40);

    dispatch_semaphore_signal(v15);
  }

  else
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v16 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "Could not parse dictionary for kCLConnectionMessageSidebandOverride", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v21[0] = 0;
      LODWORD(v20) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7A8, 16, "Could not parse dictionary for kCLConnectionMessageSidebandOverride", v21, v20);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }
}

void sub_19B6BF6E0(uint64_t a1, CLConnectionMessage **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8), (v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMMotionStateSimResult")) != 0) && (v14 = *(a1 + 32), *(v14 + 72)) && *(v14 + 88) == 1)
  {
    *(*(a1 + 32) + 96) = objc_msgSend_integerValue(v11, v12, v13);
    *(*(a1 + 32) + 88) = 0;
    v15 = *(*(a1 + 32) + 72);

    dispatch_semaphore_signal(v15);
  }

  else
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v16 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "Could not parse dictionary for kCLConnectionMessageMotionStateSim", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v21[0] = 0;
      LODWORD(v20) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7A8, 16, "Could not parse dictionary for kCLConnectionMessageMotionStateSim", v21, v20);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }
}

intptr_t sub_19B6BF958(intptr_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 56) == 1 && *(v2 + 40))
  {
    *(v2 + 56) = 0;
    *(*(result + 32) + 64) = 3;
    result = dispatch_semaphore_signal(*(*(result + 32) + 40));
    v2 = *(v1 + 32);
  }

  if (*(v2 + 88) == 1 && *(v2 + 72))
  {
    *(v2 + 88) = 0;
    *(*(v1 + 32) + 96) = 3;
    v3 = *(*(v1 + 32) + 72);

    return dispatch_semaphore_signal(v3);
  }

  return result;
}

void sub_19B6BF9F8(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7A0 != -1)
  {
    dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
  }

  v3 = qword_1ED71C7A8;
  if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v7 = qword_1ED71C7A8;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136315138;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 2, "Default handler received message %s", &v12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_19B6BFD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6BFEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    sub_19B41FFEC(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C0094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C0290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C040C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C0438(uint64_t a1, CLConnectionMessage **a2)
{
  v3 = *a2;
  if (*a2 && (v4 = objc_opt_class(), (ObjectOfClass = CLConnectionMessage::getObjectOfClass(v3, v4)) != 0))
  {
    result = objc_msgSend_integerValue(ObjectOfClass, v6, v7);
  }

  else
  {
    result = 3;
  }

  *(*(a1 + 32) + 104) = result;
  return result;
}

uint64_t sub_19B6C05B4(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v2)
  {
    return MEMORY[0x1EEE66B58](v1, sel_startActivityUpdatesWithHandlerPrivate_, v2);
  }

  else
  {
    return MEMORY[0x1EEE66B58](v1, sel_stopActivityUpdatesPrivate, 0);
  }
}

dispatch_queue_t sub_19B6C0804(dispatch_queue_t result)
{
  if (!*(result[4].isa + 5))
  {
    v1 = result;
    *(result[4].isa + 5) = dispatch_semaphore_create(0);
    if (!*(v1[4].isa + 5))
    {
      *(*(v1[5].isa + 1) + 24) = 3;
    }

    result = dispatch_queue_create("com.apple.CoreMotion.SidebandOverride", 0);
    *(v1[4].isa + 6) = result;
    if (!*(v1[4].isa + 6))
    {
      *(*(v1[5].isa + 1) + 24) = 3;
    }
  }

  return result;
}

void sub_19B6C0890(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C0B04;
  block[3] = &unk_1E75343A8;
  v15 = *(a1 + 56);
  v4 = *(a1 + 48);
  block[4] = v2;
  block[5] = v4;
  dispatch_async(v3, block);
  v5 = *(*(a1 + 32) + 40);
  v6 = dispatch_time(0, 5000000000);
  v7 = dispatch_semaphore_wait(v5, v6);
  if (v7)
  {
    v8 = v7;
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v9 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349056;
      v19 = v8;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Timeout occurred after 5 seconds during overrideOscarSideband:withState:.  Wait result = %{public}ld", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v16 = 134349056;
      v17 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7A8, 17, "Timeout occurred after 5 seconds during overrideOscarSideband:withState:.  Wait result = %{public}ld", &v16, 12);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManager overrideOscarSideband:withState:]_block_invoke", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = 3;
  }

  else
  {
    v13 = *(*(a1 + 32) + 64);
  }

  *(*(*(a1 + 40) + 8) + 24) = v13;
}

dispatch_queue_t sub_19B6C0C4C(dispatch_queue_t result)
{
  if (!*(result[4].isa + 9))
  {
    v1 = result;
    *(result[4].isa + 9) = dispatch_semaphore_create(0);
    if (!*(v1[4].isa + 9))
    {
      *(*(v1[5].isa + 1) + 24) = 3;
    }

    result = dispatch_queue_create("com.apple.CoreMotion.MotionStateSim", 0);
    *(v1[4].isa + 10) = result;
    if (!*(v1[4].isa + 10))
    {
      *(*(v1[5].isa + 1) + 24) = 3;
    }
  }

  return result;
}

intptr_t sub_19B6C0CD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6C0D88;
  v5[3] = &unk_1E75343F8;
  v5[4] = v2;
  v7 = *(a1 + 64);
  v6 = *(a1 + 48);
  dispatch_async(v3, v5);
  result = dispatch_semaphore_wait(*(*(a1 + 32) + 72), 0xFFFFFFFFFFFFFFFFLL);
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 96);
  return result;
}

os_log_t sub_19B6C0E28()
{
  result = os_log_create("com.apple.locationd.Motion", "Activity");
  qword_1ED71C7A8 = result;
  return result;
}

void sub_19B6C0F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void *sub_19B6C0FA4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6C1000((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6C1000(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6C1058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C1074(uint64_t a1)
{
  sub_19B654634(a1 + 80, *(a1 + 88));
  sub_19B6C38A0(a1 + 56, *(a1 + 64));
  sub_19B42A568((a1 + 8));
  return a1;
}

void sub_19B6C10B8(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v219 = *MEMORY[0x1E69E9840];
  *buf = vneg_f32(0x80000000800000);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  *&buf[12] = v6;
  *&buf[8] = 2139095039;
  *&buf[28] = 0x7FFFFFFF;
  v6.i64[0] = 0x80000000800000;
  v6.i64[1] = 0x80000000800000;
  v210 = vnegq_f32(v6);
  *&v211 = *buf;
  *(&v211 + 1) = 0x7FFFFFFF7F7FFFFFLL;
  v212 = 0;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  sub_19B6C32A4(&v213, 1uLL);
  v7 = *(&v215 + 1);
  v8 = v215;
  v9 = *(&v213 + 1);
  v10 = v214;
  v11 = (*(&v213 + 1) + 8 * ((v215 + *(&v215 + 1)) >> 9));
  v12 = *v11;
  if (v214 == *(&v213 + 1))
  {
    v13 = 0;
  }

  else
  {
    v13 = &(*v11)[8 * ((v215 + *(&v215 + 1)) & 0x1FF)];
  }

  v14 = (v13 - v12) >> 3;
  if (v14 < 0)
  {
    v18 = 510 - v14;
    v16 = &v11[-(v18 >> 9)];
    v17 = &(*v16)[8 * (~v18 & 0x1FF)];
  }

  else
  {
    v15 = v14 + 1;
    v16 = &v11[v15 >> 9];
    v17 = &(*v16)[8 * (v15 & 0x1FF)];
  }

  if (v13 != v17)
  {
    do
    {
      v19 = v12 + 4096;
      if (v11 == v16)
      {
        v19 = v17;
      }

      if (v13 == v19)
      {
        v21 = 0;
      }

      else
      {
        v20 = v19 - v13;
        memset_pattern16(v13, &unk_19B7BBE20, (v19 - v13) & 0xFFFFFFFFFFFFFFF8);
        v7 = *(&v215 + 1);
        v21 = v20 >> 3;
      }

      v7 += v21;
      *(&v215 + 1) = v7;
      if (v11 == v16)
      {
        break;
      }

      v22 = v11[1];
      ++v11;
      v12 = v22;
      v13 = v22;
    }

    while (v22 != v17);
    v8 = v215;
    v9 = *(&v213 + 1);
    v10 = v214;
  }

  v23 = v211;
  *(a3 + 32) = v210;
  *(a3 + 48) = v23;
  *(a3 + 64) = v212;
  v24 = *&buf[16];
  *a3 = *buf;
  *(a3 + 16) = v24;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  if (v10 != v9)
  {
    v25 = (v8 >> 6) & 0x3FFFFFFFFFFFFF8;
    v26 = (v9 + v25);
    v27 = v8 & 0x1FF;
    v28 = (*(v9 + v25) + 8 * v27);
    v29 = v8 + v7;
    v30 = (v29 >> 6) & 0x3FFFFFFFFFFFFF8;
    v31 = v29 & 0x1FF;
    if ((*(v9 + v30) + 8 * v31) != v28)
    {
      v32 = v31 | ((v30 - v25) << 6);
      v33 = v32 - v27;
      if (v32 != v27)
      {
        sub_19B6C32A4((a3 + 72), v32 - v27);
        v34 = *(a3 + 112);
        v35 = *(a3 + 80);
        v36 = *(a3 + 104) + v34;
        v37 = (v35 + 8 * (v36 >> 9));
        v38 = *v37;
        v39 = *v37 + 8 * (v36 & 0x1FF);
        v40 = *(a3 + 88) == v35 ? 0 : v39;
        v41 = v33 + v40 - v38;
        if (v41 < 1)
        {
          v43 = 511 - v41;
          LOWORD(v41) = ~(511 - v41);
          v42 = &v37[-(v43 >> 9)];
        }

        else
        {
          v42 = &v37[v41 >> 9];
        }

        v44 = *v42 + 8 * (v41 & 0x1FF);
        if (v40 != v44)
        {
          do
          {
            v45 = v38 + 512;
            if (v37 == v42)
            {
              v45 = v44;
            }

            if (v40 == v45)
            {
              v45 = v40;
            }

            else
            {
              v46 = v40;
              do
              {
                v47 = *v28++;
                *v46++ = v47;
                if ((v28 - *v26) == 4096)
                {
                  v48 = v26[1];
                  ++v26;
                  v28 = v48;
                }
              }

              while (v46 != v45);
              v34 = *(a3 + 112);
            }

            v34 += v45 - v40;
            *(a3 + 112) = v34;
            if (v37 == v42)
            {
              break;
            }

            v49 = v37[1];
            ++v37;
            v38 = v49;
            v40 = v49;
          }

          while (v49 != v44);
        }
      }
    }
  }

  if (*(a1 + 96))
  {
    v50 = a1 + 88;
    v51 = *(a1 + 88);
    *(a3 + 12) = *(*(a1 + 80) + 28);
    if (v51)
    {
      do
      {
        v52 = v51;
        v51 = *(v51 + 8);
      }

      while (v51);
    }

    else
    {
      do
      {
        v52 = *(v50 + 16);
        v53 = *v52 == v50;
        v50 = v52;
      }

      while (v53);
    }

    *(a3 + 16) = *(v52 + 28);
  }

  sub_19B66B918(&v213);
  if (*(a1 + 72) < a2)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
    }

    v54 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
    {
      v55 = *(a1 + 72);
      *buf = 134217984;
      *&buf[4] = v55;
      _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_INFO, "CLRobustSlopeEstimator given only %zd bins", buf, 0xCu);
    }

    v56 = sub_19B420058();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
      }

      v57 = *(a1 + 72);
      LODWORD(v216) = 134217984;
      *(&v216 + 4) = v57;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 1, "CLRobustSlopeEstimator given only %zd bins", &v216);
      v59 = v58;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLPressureStats CLRobustSlopeEstimator::computeStats(int)", "CoreLocation: %s\n", v58);
      if (v59 != buf)
      {
        free(v59);
      }
    }

    return;
  }

  v199 = 0u;
  v200 = 0u;
  v198 = 0u;
  v60 = *(a1 + 56);
  v61 = (a1 + 64);
  while (1)
  {
    v62 = *v61;
    v63 = (a1 + 64);
    if (*v61)
    {
      do
      {
        v64 = v62;
        v62 = v62[1];
      }

      while (v62);
    }

    else
    {
      do
      {
        v64 = v63[2];
        v53 = *v64 == v63;
        v63 = v64;
      }

      while (v53);
    }

    if (v60 == v64)
    {
      break;
    }

    v65 = v60[9];
    v66 = v60[6];
    v67 = v60[7];
    v68 = (v66 + 8 * (v65 >> 8));
    if (v67 == v66)
    {
      v69 = 0;
    }

    else
    {
      v69 = (*v68 + 16 * v65);
    }

    while (1)
    {
      if (v67 == v66)
      {
        v86 = 0;
      }

      else
      {
        v85 = v60[10] + v60[9];
        v86 = *(v66 + ((v85 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v85;
      }

      v72 = v60[1];
      if (v69 == v86)
      {
        break;
      }

      v70 = v60;
      if (v72)
      {
        do
        {
          v71 = v72;
          v72 = *v72;
        }

        while (v72);
      }

      else
      {
        do
        {
          v71 = v70[2];
          v53 = *v71 == v70;
          v70 = v71;
        }

        while (!v53);
      }

      if (v71 != v61)
      {
        do
        {
          v73 = v71[9];
          v74 = v71[6];
          v75 = v71[7];
          v76 = (v74 + 8 * (v73 >> 8));
          if (v75 == v74)
          {
            v77 = 0;
          }

          else
          {
            v77 = (*v76 + 16 * v73);
          }

          while (1)
          {
            if (v75 == v74)
            {
              v81 = 0;
            }

            else
            {
              v80 = v71[10] + v71[9];
              v81 = *(v74 + ((v80 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v80;
            }

            if (v77 == v81)
            {
              break;
            }

            v78 = vsub_f32(v77[1], v69[1]);
            *buf = vdiv_f32(v78, vdup_lane_s32(v78, 1)).u32[0];
            sub_19B420408(&v198, buf);
            v77 += 2;
            if ((v77 - *v76) == 4096)
            {
              v79 = v76[1];
              ++v76;
              v77 = v79;
            }

            v74 = v71[6];
            v75 = v71[7];
          }

          v82 = v71[1];
          if (v82)
          {
            do
            {
              v83 = v82;
              v82 = *v82;
            }

            while (v82);
          }

          else
          {
            do
            {
              v83 = v71[2];
              v53 = *v83 == v71;
              v71 = v83;
            }

            while (!v53);
          }

          v71 = v83;
        }

        while (v83 != v61);
      }

      v69 += 2;
      if ((v69 - *v68) == 4096)
      {
        v84 = v68[1];
        ++v68;
        v69 = v84;
      }

      v66 = v60[6];
      v67 = v60[7];
    }

    v87 = v60;
    if (v72)
    {
      do
      {
        v60 = v72;
        v72 = *v72;
      }

      while (v72);
    }

    else
    {
      do
      {
        v60 = v87[2];
        v53 = *v60 == v87;
        v87 = v60;
      }

      while (!v53);
    }
  }

  v88 = (*(&v198 + 1) + 8 * (v200 >> 10));
  if (v199 == *(&v198 + 1))
  {
    v89 = 0;
    v91 = 0;
    v90 = (*(&v198 + 1) + 8 * ((*(&v200 + 1) + v200) >> 10));
  }

  else
  {
    v89 = (*v88 + 4 * (v200 & 0x3FF));
    v90 = (*(&v198 + 1) + 8 * ((*(&v200 + 1) + v200) >> 10));
    v91 = (*v90 + 4 * ((*(&v200 + 1) + v200) & 0x3FF));
  }

  v92 = sub_19B6C39EC(v88, v89, v90, v91);
  v93 = *(&v198 + 1);
  *(&v200 + 1) = 0;
  v94 = (v199 - *(&v198 + 1)) >> 3;
  if (v94 >= 3)
  {
    do
    {
      operator delete(*v93);
      v93 = (*(&v198 + 1) + 8);
      *(&v198 + 1) = v93;
      v94 = (v199 - v93) >> 3;
    }

    while (v94 > 2);
  }

  if (v94 == 1)
  {
    v95 = 512;
  }

  else
  {
    if (v94 != 2)
    {
      goto LABEL_110;
    }

    v95 = 1024;
  }

  *&v200 = v95;
LABEL_110:
  v196 = 0u;
  v197 = 0u;
  v195 = 0u;
  v96 = *(a1 + 56);
  if (v96 == v61)
  {
    v108 = 0;
    v107 = 0;
    v112 = 0;
  }

  else
  {
    do
    {
      v97 = v96[9];
      v98 = v96[6];
      v99 = v96[7];
      v100 = (v98 + 8 * (v97 >> 8));
      if (v99 == v98)
      {
        v101 = 0;
      }

      else
      {
        v101 = *v100 + 16 * v97;
      }

      while (1)
      {
        if (v99 == v98)
        {
          v104 = 0;
        }

        else
        {
          v103 = v96[10] + v96[9];
          v104 = *(v98 + ((v103 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v103;
        }

        if (v101 == v104)
        {
          break;
        }

        *buf = *(v101 + 8) + (-v92 * *(v101 + 12));
        sub_19B420408(&v195, buf);
        v101 += 16;
        if (v101 - *v100 == 4096)
        {
          v102 = v100[1];
          ++v100;
          v101 = v102;
        }

        v98 = v96[6];
        v99 = v96[7];
      }

      v105 = v96[1];
      if (v105)
      {
        do
        {
          v106 = v105;
          v105 = *v105;
        }

        while (v105);
      }

      else
      {
        do
        {
          v106 = v96[2];
          v53 = *v106 == v96;
          v96 = v106;
        }

        while (!v53);
      }

      v96 = v106;
    }

    while (v106 != v61);
    v107 = *(&v195 + 1);
    v108 = (*(&v195 + 1) + 8 * (v197 >> 10));
    if (v196 != *(&v195 + 1))
    {
      v109 = (*v108 + 4 * (v197 & 0x3FF));
      v110 = (*(&v195 + 1) + 8 * ((*(&v197 + 1) + v197) >> 10));
      v111 = (*v110 + 4 * ((*(&v197 + 1) + v197) & 0x3FF));
      goto LABEL_132;
    }

    v112 = (*(&v197 + 1) + v197) >> 10;
  }

  v109 = 0;
  v111 = 0;
  v110 = (v107 + 8 * v112);
LABEL_132:
  v113 = sub_19B6C39EC(v108, v109, v110, v111);
  v193 = 0u;
  v194 = 0u;
  v192 = 0u;
  v114 = *(&v195 + 1);
  v115 = v196;
  v116 = (*(&v195 + 1) + 8 * (v197 >> 10));
  if (v196 == *(&v195 + 1))
  {
    v117 = 0;
  }

  else
  {
    v117 = (*v116 + 4 * (v197 & 0x3FF));
  }

  while (1)
  {
    v119 = v115 == v114 ? 0 : *(v114 + (((*(&v197 + 1) + v197) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v197 + 1) + v197) & 0x3FF);
    if (v117 == v119)
    {
      break;
    }

    *buf = vabds_f32(*v117, v113);
    sub_19B420408(&v192, buf);
    if ((++v117 - *v116) == 4096)
    {
      v118 = v116[1];
      ++v116;
      v117 = v118;
    }

    v114 = *(&v195 + 1);
    v115 = v196;
  }

  v120 = (*(&v192 + 1) + 8 * (v194 >> 10));
  if (v193 == *(&v192 + 1))
  {
    v121 = 0;
    v123 = 0;
    v122 = (*(&v192 + 1) + 8 * ((*(&v194 + 1) + v194) >> 10));
  }

  else
  {
    v121 = (*v120 + 4 * (v194 & 0x3FF));
    v122 = (*(&v192 + 1) + 8 * ((*(&v194 + 1) + v194) >> 10));
    v123 = (*v122 + 4 * ((*(&v194 + 1) + v194) & 0x3FF));
  }

  v124 = sub_19B6C39EC(v120, v121, v122, v123);
  v125 = *(&v192 + 1);
  v126 = (*(&v192 + 1) + 8 * (v194 >> 10));
  v127 = *v126;
  v128 = &(*v126)[v194 & 0x3FF];
  v129 = *(*(&v192 + 1) + (((*(&v194 + 1) + v194) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v194 + 1) + v194) & 0x3FF);
  if (v128 != v129)
  {
    v130 = &(*v126)[v194 & 0x3FF];
    while (1)
    {
      if (++v130 - v127 == 4096)
      {
        v131 = v126[1];
        ++v126;
        v127 = v131;
        v130 = v131;
      }

      if (v130 == v129)
      {
        break;
      }

      if (*v128 < *v130)
      {
        v128 = v130;
      }
    }
  }

  v132 = *v128;
  *(&v194 + 1) = 0;
  v133 = (v193 - *(&v192 + 1)) >> 3;
  if (v133 >= 3)
  {
    do
    {
      operator delete(*v125);
      v125 = (*(&v192 + 1) + 8);
      *(&v192 + 1) = v125;
      v133 = (v193 - v125) >> 3;
    }

    while (v133 > 2);
  }

  if (v133 == 1)
  {
    v134 = 512;
  }

  else
  {
    if (v133 != 2)
    {
      goto LABEL_160;
    }

    v134 = 1024;
  }

  *&v194 = v134;
LABEL_160:
  v135 = *(&v195 + 1);
  *(&v197 + 1) = 0;
  v136 = (v196 - *(&v195 + 1)) >> 3;
  if (v136 >= 3)
  {
    do
    {
      operator delete(*v135);
      v135 = (*(&v195 + 1) + 8);
      *(&v195 + 1) = v135;
      v136 = (v196 - v135) >> 3;
    }

    while (v136 > 2);
  }

  if (v136 == 1)
  {
    v137 = 512;
  }

  else
  {
    if (v136 != 2)
    {
      goto LABEL_167;
    }

    v137 = 1024;
  }

  *&v197 = v137;
LABEL_167:
  *a3 = v92;
  *(a3 + 4) = v124;
  *(a3 + 8) = v132;
  *(a3 + 64) = 1;
  *(&v138 + 1) = 0;
  v190 = 0u;
  v191 = 0u;
  *__p = 0u;
  v139 = *(a1 + 104);
  v140 = *(a1 + 108);
  v201 = v139;
  if (v139 <= v140)
  {
    *&v138 = 136315906;
    v188 = v138;
    do
    {
      v145 = *v61;
      if (*v61)
      {
        v146 = (a1 + 64);
        do
        {
          if (*(v145 + 8) >= v139)
          {
            v146 = v145;
          }

          v145 = v145[*(v145 + 8) < v139];
        }

        while (v145);
        if (v146 != v61 && v139 >= *(v146 + 8))
        {
          v217 = 0u;
          v218 = 0u;
          v216 = 0u;
          *buf = &v201;
          v147 = sub_19B6C38FC((a1 + 56), v139, buf);
          v148 = v147[9];
          v149 = v147[6];
          v150 = (v149 + 8 * (v148 >> 8));
          if (v147[7] == v149)
          {
            v151 = 0;
          }

          else
          {
            v151 = *v150 + 16 * v148;
          }

LABEL_183:
          v152 = v151 - 4096;
          while (1)
          {
            *buf = &v201;
            v153 = sub_19B6C38FC((a1 + 56), v201, buf);
            v154 = v153[6];
            if (v153[7] == v154)
            {
              v156 = 0;
            }

            else
            {
              v155 = v153[10] + v153[9];
              v156 = *(v154 + ((v155 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v155;
            }

            if (v151 == v156)
            {
              break;
            }

            sub_19B420408(&v216, (v151 + 8));
            v152 += 16;
            v151 += 16;
            if (*v150 == v152)
            {
              v157 = v150[1];
              ++v150;
              v151 = v157;
              goto LABEL_183;
            }
          }

          if (*(&v218 + 1))
          {
            v158 = (*(&v216 + 1) + 8 * (v218 >> 10));
            if (v217 == *(&v216 + 1))
            {
              v159 = 0;
              v161 = 0;
              v160 = (*(&v216 + 1) + 8 * ((v218 + *(&v218 + 1)) >> 10));
            }

            else
            {
              v159 = (*v158 + 4 * (v218 & 0x3FF));
              v160 = (*(&v216 + 1) + 8 * ((v218 + *(&v218 + 1)) >> 10));
              v161 = (*v160 + 4 * ((v218 + *(&v218 + 1)) & 0x3FF));
            }

            v162 = sub_19B6C39EC(v158, v159, v160, v161);
            v163 = __p[1];
            v164 = v201;
            if (v190 == __p[1])
            {
              v165 = 0;
            }

            else
            {
              v165 = ((v190 - __p[1]) << 6) - 1;
            }

            v166 = *(&v191 + 1) + v191;
            if (v165 == *(&v191 + 1) + v191)
            {
              if (v191 < 0x200)
              {
                if (v190 - __p[1] < *(&v190 + 1) - __p[0])
                {
                  if (*(&v190 + 1) != v190)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*(&v190 + 1) == __p[0])
                {
                  v167 = 1;
                }

                else
                {
                  v167 = (*(&v190 + 1) - __p[0]) >> 2;
                }

                v210.i64[0] = __p;
                sub_19B6C3828(v167);
              }

              *&v191 = v191 - 512;
              *buf = *__p[1];
              __p[1] = __p[1] + 8;
              sub_19B6C361C(__p, buf);
              v163 = __p[1];
              v166 = *(&v191 + 1) + v191;
            }

            v168 = *&v163[(v166 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v166 & 0x1FF);
            *v168 = v162;
            *(v168 + 4) = v164 + 0.5;
            ++*(&v191 + 1);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
            }

            v169 = qword_1EAFE2860;
            if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
            {
              v170 = (*(__p[1] + (((*(&v191 + 1) + v191 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v191 + 1) + v191 - 1) & 0x1FF));
              v171 = v170[1];
              v172 = *v170;
              *buf = v188;
              *&buf[4] = "PRTTSampleTemperature";
              *&buf[12] = 2048;
              *&buf[14] = v171;
              *&buf[22] = 2080;
              *&buf[24] = "PRTTSamplePressure";
              v210.i16[0] = 2048;
              *(v210.i64 + 2) = v172;
              _os_log_impl(&dword_19B41C000, v169, OS_LOG_TYPE_DEBUG, "%s,%f,%s,%f", buf, 0x2Au);
            }

            v173 = sub_19B420058();
            if (*(v173 + 160) > 1 || *(v173 + 164) > 1 || *(v173 + 168) > 1 || *(v173 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2840 != -1)
              {
                dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
              }

              v174 = (*(__p[1] + (((*(&v191 + 1) + v191 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v191 + 1) + v191 - 1) & 0x1FF));
              v175 = v174[1];
              v176 = *v174;
              v202[0] = v188;
              *&v202[1] = "PRTTSampleTemperature";
              v203 = 2048;
              v204 = v175;
              v205 = 2080;
              v206 = "PRTTSamplePressure";
              v207 = 2048;
              v208 = v176;
              LODWORD(v187) = 42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 2, "%s,%f,%s,%f", v202, v187, v188, *(&v188 + 1));
              v178 = v177;
              sub_19B6BB7CC("Generic", 1, 0, 2, "std::deque<CLMotionTypePressure> CLRobustSlopeEstimator::computePRTT()", "CoreLocation: %s\n", v177);
              if (v178 != buf)
              {
                free(v178);
              }
            }
          }

          sub_19B42A568(&v216);
        }
      }

      v179 = v201;
      v139 = ++v201;
    }

    while (v179 < *(a1 + 108));
  }

  v142 = *(a3 + 80);
  v141 = *(a3 + 88);
  *(a3 + 112) = 0;
  v143 = (v141 - v142) >> 3;
  if (v143 < 3)
  {
    v144 = (a3 + 72);
  }

  else
  {
    v144 = (a3 + 72);
    do
    {
      operator delete(*v142);
      v141 = *(a3 + 88);
      v142 = (*(a3 + 80) + 8);
      *(a3 + 80) = v142;
      v143 = (v141 - v142) >> 3;
    }

    while (v143 > 2);
  }

  if (v143 == 1)
  {
    v180 = 256;
    goto LABEL_228;
  }

  if (v143 == 2)
  {
    v180 = 512;
LABEL_228:
    *(a3 + 104) = v180;
  }

  v181 = *(a3 + 112);
  if (v181)
  {
    v182 = *(a3 + 104);
    if (v182 >= 0x200)
    {
      operator delete(*v142);
      v141 = *(a3 + 88);
      v142 = (*(a3 + 80) + 8);
      *(a3 + 80) = v142;
      v181 = *(a3 + 112);
      v182 = *(a3 + 104) - 512;
      *(a3 + 104) = v182;
    }

    if (v141 == v142)
    {
      v183 = 0;
    }

    else
    {
      v183 = ((v141 - v142) << 6) - 1;
    }

    if (v183 - (v182 + v181) >= 0x200)
    {
      operator delete(*(v141 - 8));
      *(a3 + 88) -= 8;
    }
  }

  else
  {
    while (v141 != v142)
    {
      operator delete(*(v141 - 8));
      v142 = *(a3 + 80);
      v141 = *(a3 + 88) - 8;
      *(a3 + 88) = v141;
    }

    *(a3 + 104) = 0;
  }

  sub_19B6C4148(v144);
  v185 = *(a3 + 80);
  v184 = *(a3 + 88);
  if (v184 != v185)
  {
    *(a3 + 88) = v184 + ((v185 - v184 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_19B6C4148(v144);
  v186 = v190;
  *(a3 + 72) = *__p;
  *(a3 + 88) = v186;
  *__p = 0u;
  v190 = 0u;
  *(a3 + 104) = v191;
  v191 = 0uLL;
  sub_19B66B918(__p);
  sub_19B42A568(&v192);
  sub_19B42A568(&v195);
  sub_19B42A568(&v198);
}