uint64_t sub_19B8DD4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 32));

  return MEMORY[0x1EEE66B58](Weak, sel_handleMessageWithName_payload_, a2, a3);
}

void sub_19B8DE36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(*(a1 + 32) + 40);
  if (v5)
  {

    MEMORY[0x1EEE66B58](v5, sel__resumeLocationUpdater, a3, a4);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 68289282;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#locationUpdater [CLLocationUpdater resume] called on an invalidated instance., self:%{public}p}", &v10, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v8 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v9 = *(a1 + 32);
      v10 = 68289282;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v9;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater [CLLocationUpdater resume] called on an invalidated instance.", "{msg%{public}.0s:#locationUpdater [CLLocationUpdater resume] called on an invalidated instance., self:%{public}p}", &v10, 0x1Cu);
    }
  }
}

uint64_t sub_19B8DFD64(double a1, double a2)
{
  if (a2 > 134.82 || a2 < 73.48 || a1 < 18.15 || a1 > 53.6)
  {
    return 0;
  }

  if (a1 <= 42.3 && a2 <= 119.3 && a2 >= 107.1 || a1 <= 42.3 && a2 >= 119.3 && a1 >= 25.3 && a2 <= 123.45 || a1 >= 42.3 && a2 <= 129.2 && a1 <= 49.34 && a2 >= 119.93 || a2 <= 107.1 && a2 >= 98.76 && a1 >= 23.39 && a1 <= 41.58 || a1 <= 42.6 && a2 <= 98.76 && a1 >= 28.39 && a2 >= 85.19 || a2 <= 90.66 && a2 >= 80.81 && a1 >= 42.6 && a1 <= 45.2 || a2 <= 101.54 && a2 >= 99.4 && a1 >= 22.06 && a1 <= 23.39 || a2 <= 119.93 && a1 >= 42.3 && a1 <= 44.74 && a2 >= 111.924 || a2 <= 119.93 && a2 >= 116.55 && a1 >= 44.74 && a1 <= 46.35 || a2 <= 133.09 && a2 >= 129.2 && a1 >= 45.23 && a1 <= 47.66 || a2 <= 125.95 && a2 >= 120.78 && a1 >= 49.34 && a1 <= 52.86 || a2 >= 123.45 && a1 >= 41.38 && a1 <= 42.4 && a2 <= 126.51 || a2 <= 85.19 && a2 >= 79.24 && a1 >= 31.07 && a1 <= 41.73 || a2 <= 85.19 && a1 <= 42.6 && a1 >= 41.73 && a2 >= 80.28 || a2 >= 123.45 && a1 >= 40.9 && a1 <= 41.38 && a2 <= 125.97 || a2 >= 123.45 && a1 >= 40.47 && a1 <= 40.9 && a2 <= 125.0 || a2 <= 120.15 && a2 >= 119.2 && a1 >= 24.78 && a1 <= 25.4)
  {
    return 1;
  }

  if ((a2 > 108.15 || a2 < 97.511 || a1 < 21.14 || a1 > 28.39) && (a2 > 97.511 || a2 < 78.33 || a1 < 27.29 || a1 > 32.7) && (a1 > 41.73 || a1 < 32.7 || a2 > 79.24) && (a2 < 79.24 || a1 < 41.73 || a1 > 49.16 || a2 > 96.06) && (a1 < 41.38 || a2 > 115.52 || a1 > 45.45 || a2 < 96.06) && (a1 < 39.6 || a2 < 115.52) && (a2 < 119.3 || a1 < 21.7 || a1 > 25.3 || a2 > 122.5))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

void sub_19B8E053C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_19B8E0598(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v6 = a2[1];
  v7 = *a2;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend_handleMessage_(Weak, v4, &v7, v5);
  if (v8)
  {
    sub_19B8750F8(v8);
  }
}

void sub_19B8E05F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B8E060C(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return objc_msgSend_handleInterruption(Weak, v2, v3, v4);
}

uint64_t sub_19B8E1420(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x19EAE95D0]();

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

os_log_t sub_19B8E146C()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

uint64_t sub_19B8E1AB0(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v50 = 0;
  v49 = 0;
  v51 = 0;
  v56 = 0;
  v55 = 0;
  v57 = 0;
  objc_msgSend_latitude(a3, a2, a3, a4);
  v7 = v6;
  objc_msgSend_longitude(a3, v8, v9, v10);
  v12 = v11;
  objc_msgSend_horizontalUncertainty(a3, v13, v14, v15);
  v17 = v16;
  v21 = objc_msgSend_date(a3, v18, v19, v20);
  objc_msgSend_timeIntervalSinceReferenceDate(v21, v22, v23, v24);
  v26 = v25;
  v30 = objc_msgSend_referenceFrame(a3, v27, v28, v29);
  v39 = 0xFFFF;
  v40 = v7;
  v41 = v12;
  v42 = v17;
  __asm { FMOV            V0.2D, #-1.0 }

  v43 = xmmword_19BA896C0;
  v44 = _Q0;
  v45 = _Q0;
  v46 = v26;
  v47 = 0;
  v48 = 0xBFF0000000000000;
  v52 = 0xBFF0000000000000;
  v53 = 0x7FFFFFFFLL;
  v54 = v30;
  return objc_msgSend_initWithClientLocation_(a1, v36, &v39, v37);
}

void sub_19B8E2378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B8E23A4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v2 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "Interrupted, serviceName %@", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 0, "Interrupted, serviceName %@", &v7, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

uint64_t sub_19B8E2570(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v2 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "Invalidated - releasing, serviceName %@", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v5 = *(a1 + 32);
    v14 = 138412290;
    v15 = v5;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 0, "Invalidated - releasing, serviceName %@", &v14, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  Weak = objc_loadWeak((a1 + 40));
  if (!Weak)
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v10 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "CLLocationManagerGathering object went away", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      LOWORD(v14) = 0;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 0, "CLLocationManagerGathering object went away", &v14, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return objc_msgSend_setConnection_(Weak, v7, 0, v8);
}

void sub_19B8E28CC(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v3 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = objc_msgSend_localizedDescription(a2, v4, v5, v6);
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "getRemoteObjectProxy error %@", buf, 0xCu);
  }

  v7 = sub_19B87DD40();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v11 = qword_1EAFE4710;
    v13 = 138412290;
    v14 = objc_msgSend_localizedDescription(a2, v8, v9, v10);
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v11, 16, "getRemoteObjectProxy error %@", &v13, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerGathering getRemoteObjectProxy]_block_invoke", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }
}

uint64_t sub_19B8E2CF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  RemoteObjectProxy = objc_msgSend_getRemoteObjectProxy(*(a1 + 32), a2, a3, a4);
  if (*(*(a1 + 32) + 16))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8E2E30;
    v12[3] = &unk_1E753D660;
    v12[4] = *(a1 + 40);
    return objc_msgSend_fetchAdvertisementsWithCompletion_(RemoteObjectProxy, v6, v12, v7);
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"fetchAdvertisementsWithHandler unavailable";
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v14, &v13, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, @"kCLErrorDomain", 2, v10);
    return (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_19B8E2E30(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v5 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = objc_msgSend_localizedDescription(a3, v6, v7, v8);
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "fetchAdvertisementsWithCompletion error: %@", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      v13 = qword_1EAFE4710;
      v16 = 138412290;
      v17 = objc_msgSend_localizedDescription(a3, v10, v11, v12);
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v13, 16, "fetchAdvertisementsWithCompletion error: %@", &v16, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerGathering fetchAdvertisementsWithHandler:]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_19B8E3284(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  RemoteObjectProxy = objc_msgSend_getRemoteObjectProxy(*(a1 + 32), a2, a3, a4);
  if (*(*(a1 + 32) + 16))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8E33C8;
    v12[3] = &unk_1E753D6B0;
    v12[4] = *(a1 + 40);
    return objc_msgSend_fetchAdvertisementsDetailedWithCompletion_(RemoteObjectProxy, v6, v12, v7);
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"fetchAdvertisementsDetailedWithHandler unavailable";
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v14, &v13, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, @"kCLErrorDomain", 2, v10);
    return (*(*(a1 + 40) + 16))(0.0);
  }
}

uint64_t sub_19B8E33C8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v8 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = objc_msgSend_localizedDescription(a5, v9, v10, v11);
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "fetchAdvertisementsWithCompletion error: %@", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      v16 = qword_1EAFE4710;
      v19 = 138412290;
      v20 = objc_msgSend_localizedDescription(a5, v13, v14, v15);
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 16, "fetchAdvertisementsWithCompletion error: %@", &v19, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerGathering fetchAdvertisementsDetailedWithHandler:]_block_invoke", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t sub_19B8E3844(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  RemoteObjectProxy = objc_msgSend_getRemoteObjectProxy(*(a1 + 32), a2, a3, a4);
  if (*(*(a1 + 32) + 16))
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);

    return MEMORY[0x1EEE66B58](RemoteObjectProxy, sel_configure_withCompletion_, v6, v7);
  }

  else
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v8 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "configure:withCompletionHandler: connection invalid", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      v16[0] = 0;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 16, "configure:withCompletionHandler: connection invalid", v16, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerGathering configure:withCompletionHandler:]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18 = @"configure:withCompletion unavailable";
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v18, &v17, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"kCLErrorDomain", 2, v13);
    return (*(*(a1 + 40) + 16))();
  }
}

os_log_t sub_19B8E3AC0()
{
  result = os_log_create("com.apple.locationd.Position", "Gathering");
  qword_1EAFE4710 = result;
  return result;
}

uint64_t *sub_19B8E3AF0(uint64_t *a1, uint64_t a2, int a3)
{
  a1[58] = 0;
  v4 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v5 = *(MEMORY[0x1E69E54D0] + 16);
  v6 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x1E69E5530] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x19EAE9730](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_19B8E3C78(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x19EAE9870](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8E3CB0()
{
  if (!qword_1EAFE5B18)
  {
    operator new();
  }

  return qword_1EAFE5B18;
}

void sub_19B8E3D48(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v196[152] = *MEMORY[0x1E69E9840];
  if (*a1 != 1)
  {
    return;
  }

  v7 = *(a1 + 32);
  v8 = v7 < 0.0;
  if (v7 < 0.0 || ((v83 = vabdd_f64(v7, a3), !v8) ? (v84 = v83 <= 30.0) : (v84 = 1), !v84))
  {
    *(a1 + 40) = a3;
    v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a4, a5);
    v10 = NSHomeDirectory();
    v12 = objc_msgSend_attributesOfFileSystemForPath_error_(v9, v11, v10, 0);
    v15 = objc_msgSend_objectForKey_(v12, v13, *MEMORY[0x1E696A3C0], v14);
    v19 = objc_msgSend_unsignedLongValue(v15, v16, v17, v18);
    *(a1 + 48) = v19 > 0x3B9ACA00;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
    }

    v20 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      *buf = 134349568;
      *&buf[4] = v21;
      *&buf[12] = 1026;
      *&buf[14] = v22;
      *&buf[18] = 2050;
      *&buf[20] = v19;
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_INFO, "CLMM,Recorder,new start time saved,%{public}.1lf,minDiskSpaceRequirementMet,%{public}d,freeSpace,%{public}lu", buf, 0x1Cu);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      LODWORD(__p[0]) = 134349568;
      *(__p + 4) = v24;
      WORD2(__p[1]) = 1026;
      *(&__p[1] + 6) = v25;
      WORD1(__p[2]) = 2050;
      *(&__p[2] + 4) = v19;
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,Recorder,new start time saved,%{public}.1lf,minDiskSpaceRequirementMet,%{public}d,freeSpace,%{public}lu", __p, 28);
      sub_19B885924("Generic", 1, 0, 2, "void CLMapMatcherRecorder::storeStartTime(const CFAbsoluteTime)", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    if ((*(a1 + 48) & 1) == 0)
    {
      sub_19B890FA4((a1 + 8));
      *(a1 + 52) = 0;
    }

    sub_19B87BBB4();
    if (sub_19B93CCA4())
    {
      buf[0] = 0;
      v30 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v27, v28, v29);
      if (objc_msgSend_fileExistsAtPath_isDirectory_(v30, v31, @"/var/mobile/Library/Logs/locationd/mapmatcher", buf))
      {
LABEL_32:
        v40 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v32, v33, v34, -172800.0);
        sub_19B87BBB4();
        if (sub_19B93CCA4())
        {
          v44 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v41, v42, v43);
          v47 = objc_msgSend_enumeratorAtPath_(v44, v45, @"/var/mobile/Library/Logs/locationd/mapmatcher", v46);
          for (i = objc_msgSend_nextObject(v47, v48, v49, v50); i; i = objc_msgSend_nextObject(v47, v63, v64, v65))
          {
            v191 = 0;
            v54 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v52, @"%@/%@", v53, @"/var/mobile/Library/Logs/locationd/mapmatcher", i);
            v56 = objc_msgSend_attributesOfItemAtPath_error_(v44, v55, v54, 0);
            v60 = objc_msgSend_fileCreationDate(v56, v57, v58, v59);
            if (objc_msgSend_compare_(v60, v61, v40, v62) == -1)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
              }

              v66 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
              {
                objc_msgSend_timeIntervalSinceReferenceDate(v60, v67, v68, v69);
                *buf = 138543618;
                *&buf[4] = v54;
                *&buf[12] = 2050;
                *&buf[14] = v70;
                _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_INFO, "CLMM,Recorder,old file deleted,%{public}@,creationDate,%{public}.2lf", buf, 0x16u);
              }

              v71 = sub_19B87DD40();
              if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
                }

                v78 = off_1EAFE4708;
                objc_msgSend_timeIntervalSinceReferenceDate(v60, v75, v76, v77);
                LODWORD(__p[0]) = 138543618;
                *(__p + 4) = v54;
                WORD2(__p[1]) = 2050;
                *(&__p[1] + 6) = v79;
                v80 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v78, 1, "CLMM,Recorder,old file deleted,%{public}@,creationDate,%{public}.2lf", __p, 22);
                sub_19B885924("Generic", 1, 0, 2, "void logRecorder::removeFilesOlderThanThisDate(NSDate *)", "CoreLocation: %s\n", v80);
                if (v80 != buf)
                {
                  free(v80);
                }
              }

              v81 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v72, v73, v74);
              objc_msgSend_removeItemAtPath_error_(v81, v82, v54, &v191);
            }
          }
        }

        goto LABEL_78;
      }

      v35 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v32, v33, v34);
      v191 = 0;
      if (objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v35, v36, @"/var/mobile/Library/Logs/locationd/mapmatcher", 1, 0, &v191))
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
        }

        v37 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = @"/var/mobile/Library/Logs/locationd/mapmatcher";
          _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_INFO, "CLMM,Recorder,created directory at path,%{public}@", buf, 0xCu);
        }

        v38 = sub_19B87DD40();
        if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
          }

          LODWORD(__p[0]) = 138543362;
          *(__p + 4) = @"/var/mobile/Library/Logs/locationd/mapmatcher";
          v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,Recorder,created directory at path,%{public}@", __p, 12);
          sub_19B885924("Generic", 1, 0, 2, "BOOL logRecorder::createDirectory()", "CoreLocation: %s\n", v39);
          if (v39 != buf)
          {
            free(v39);
          }
        }

        goto LABEL_32;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v85 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        *&buf[4] = @"/var/mobile/Library/Logs/locationd/mapmatcher";
        *&buf[12] = 2114;
        *&buf[14] = v191;
        _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_INFO, "CLMM,Recorder,unable to create directory at path,%{public}@, error, %{public}@", buf, 0x16u);
      }

      v86 = sub_19B87DD40();
      if (*(v86 + 160) > 1 || *(v86 + 164) > 1 || *(v86 + 168) > 1 || *(v86 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
        }

        LODWORD(__p[0]) = 138543618;
        *(__p + 4) = @"/var/mobile/Library/Logs/locationd/mapmatcher";
        WORD2(__p[1]) = 2114;
        *(&__p[1] + 6) = v191;
        v87 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,Recorder,unable to create directory at path,%{public}@, error, %{public}@", __p, 22);
        sub_19B885924("Generic", 1, 0, 2, "BOOL logRecorder::createDirectory()", "CoreLocation: %s\n", v87);
        if (v87 != buf)
        {
          free(v87);
        }
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
    }

    v88 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = a3;
      _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_ERROR, "CLMM,Recorder,unable to create directory, time,%{public}.1lf", buf, 0xCu);
    }

    v89 = sub_19B87DD40();
    if ((*(v89 + 160) & 0x80000000) == 0 || (*(v89 + 164) & 0x80000000) == 0 || (*(v89 + 168) & 0x80000000) == 0 || *(v89 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      LODWORD(__p[0]) = 134349056;
      *(__p + 4) = *&a3;
      v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Recorder,unable to create directory, time,%{public}.1lf", __p, 12);
      sub_19B885924("Generic", 1, 0, 0, "void CLMapMatcherRecorder::storeStartTime(const CFAbsoluteTime)", "CoreLocation: %s\n", v90);
      if (v90 != buf)
      {
        free(v90);
      }
    }
  }

LABEL_78:
  *(a1 + 32) = a3;
  v91 = *(a1 + 52);
  if (*(a1 + 48) != 1 || v91 < 25001)
  {
    goto LABEL_123;
  }

  v93 = objc_autoreleasePoolPush();
  v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v97 = *(a1 + 8);
  for (j = *(a1 + 16); v97 != j; v97 += 3)
  {
    v99 = v97;
    if (*(v97 + 23) < 0)
    {
      v99 = *v97;
    }

    v100 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v94, @"%s", v95, v99);
    objc_msgSend_addObject_(v96, v101, v100, v102);
  }

  v103 = *(a1 + 40);
  sub_19B87BBB4();
  if (sub_19B93CCA4())
  {
    v107 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v104, v105, v106, v103);
    v108 = objc_alloc_init(MEMORY[0x1E696AB78]);
    objc_msgSend_setDateFormat_(v108, v109, @"yy-MM-dd", v110);
    v113 = objc_msgSend_stringFromDate_(v108, v111, v107, v112);
    v116 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v114, @"%@/mapmatcher_%@.clmm", v115, @"/var/mobile/Library/Logs/locationd/mapmatcher", v113);
    v120 = objc_msgSend_UTF8String(v116, v117, v118, v119);
    sub_19B8759E8(__p, v120);
    buf[0] = 0;
    v124 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v121, v122, v123);
    if ((objc_msgSend_fileExistsAtPath_isDirectory_(v124, v125, v116, buf) & 1) == 0)
    {
      if (SHIBYTE(__p[2]) >= 0)
      {
        v126 = __p;
      }

      else
      {
        v126 = __p[0];
      }

      sub_19B8E3AF0(buf, v126, 20);
      if (!std::filebuf::close())
      {
        std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
      }

      *buf = *MEMORY[0x1E69E54D0];
      *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x19EAE9740](&buf[8]);
      std::ostream::~ostream();
      MEMORY[0x19EAE9870](v196);
    }

    v127 = objc_autoreleasePoolPush();
    v131 = objc_msgSend_fileHandleForWritingAtPath_(MEMORY[0x1E696AC00], v128, v116, v129);
    if (!v131)
    {
      goto LABEL_120;
    }

    v191 = 0;
    v132 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v130, v96, 1, &v191);
    if (objc_msgSend_length(v132, v133, v134, v135))
    {
      objc_msgSend_seekToEndOfFile(v131, v136, v137, v138);
      v139 = MEMORY[0x1E696AEC0];
      v143 = objc_msgSend_length(v132, v140, v141, v142);
      v146 = objc_msgSend_stringWithFormat_(v139, v144, @"clmm,%d,%d,AA", v145, v103, v143);
      v149 = objc_msgSend_dataUsingEncoding_(v146, v147, 4, v148);
      objc_msgSend_writeData_(v131, v150, v149, v151);
      objc_msgSend_writeData_(v131, v152, v132, v153);
      objc_msgSend_closeFile(v131, v154, v155, v156);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v157 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        v161 = objc_msgSend_length(v132, v158, v159, v160);
        *buf = 67240192;
        *&buf[4] = v161;
        _os_log_impl(&dword_19B873000, v157, OS_LOG_TYPE_INFO, "CLMM,Recorder,writeToFile,success,length,%{public}d", buf, 8u);
      }

      v162 = sub_19B87DD40();
      if (*(v162 + 160) <= 1 && *(v162 + 164) <= 1 && *(v162 + 168) <= 1 && !*(v162 + 152))
      {
        goto LABEL_120;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v166 = off_1EAFE4708;
      v167 = objc_msgSend_length(v132, v163, v164, v165);
      v193[0] = 67240192;
      v193[1] = v167;
      v168 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v166, 1, "CLMM,Recorder,writeToFile,success,length,%{public}d", v193, 8);
      sub_19B885924("Generic", 1, 0, 2, "void logRecorder::writeToFile(id, CFAbsoluteTime)", "CoreLocation: %s\n", v168);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v169 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v169, OS_LOG_TYPE_INFO, "CLMM,Recorder,writeToFile,failed as date length is 0", buf, 2u);
      }

      v170 = sub_19B87DD40();
      if (*(v170 + 160) <= 1 && *(v170 + 164) <= 1 && *(v170 + 168) <= 1 && !*(v170 + 152))
      {
        goto LABEL_120;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      LOWORD(v193[0]) = 0;
      v168 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,Recorder,writeToFile,failed as date length is 0", v193, 2);
      sub_19B885924("Generic", 1, 0, 2, "void logRecorder::writeToFile(id, CFAbsoluteTime)", "CoreLocation: %s\n", v168);
    }

    if (v168 != buf)
    {
      free(v168);
    }

LABEL_120:
    objc_autoreleasePoolPop(v127);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v93);
  sub_19B890FA4((a1 + 8));
  v91 = 0;
  *(a1 + 52) = 0;
LABEL_123:
  v171 = *(a2 + 23);
  if ((v171 & 0x80u) != 0)
  {
    v171 = *(a2 + 8);
  }

  *(a1 + 52) = v91 + v171;
  if (*(a2 + 23) >= 0)
  {
    v172 = a2;
  }

  else
  {
    v172 = *a2;
  }

  sub_19B8759E8(__p, v172);
  v174 = *(a1 + 16);
  v173 = *(a1 + 24);
  if (v174 >= v173)
  {
    v176 = *(a1 + 8);
    v177 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v176) >> 3);
    v178 = v177 + 1;
    if (v177 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
    }

    v179 = 0xAAAAAAAAAAAAAAABLL * ((v173 - v176) >> 3);
    if (2 * v179 > v178)
    {
      v178 = 2 * v179;
    }

    if (v179 >= 0x555555555555555)
    {
      v180 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v180 = v178;
    }

    v195 = a1 + 8;
    if (v180)
    {
      sub_19B8B8A58(a1 + 8, v180);
    }

    v181 = 24 * v177;
    v182 = *__p;
    *(v181 + 16) = __p[2];
    *v181 = v182;
    memset(__p, 0, 24);
    v183 = 24 * v177 + 24;
    v184 = *(a1 + 8);
    v185 = *(a1 + 16) - v184;
    v186 = 24 * v177 - v185;
    memcpy((v181 - v185), v184, v185);
    v187 = *(a1 + 8);
    *(a1 + 8) = v186;
    *(a1 + 16) = v183;
    v188 = *(a1 + 24);
    *(a1 + 24) = 0;
    *&buf[16] = v187;
    *&buf[24] = v188;
    *buf = v187;
    *&buf[8] = v187;
    sub_19B8B8AE4(buf);
    v189 = SHIBYTE(__p[2]);
    *(a1 + 16) = v183;
    if (v189 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v175 = *__p;
    *(v174 + 16) = __p[2];
    *v174 = v175;
    *(a1 + 16) = v174 + 24;
  }
}

void sub_19B8E4E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B8E4E80()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B8E4EB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x19EAE9740](a1 + 1);

  return std::ostream::~ostream();
}

void sub_19B8E5918(void *a1, const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  sub_19B880238(a1, a2, 1, 1);
}

void sub_19B8E5A9C(_Unwind_Exception *a1)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v2 + 40));
  }

  sub_19B93466C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8E5AC0(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(result + 104))
  {
    v1 = result;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,Creating maps geocaching OS transaction", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 0, "CLTSP,Creating maps geocaching OS transaction", v5, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapGeometry::takeOSTransaction()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    result = os_transaction_create();
    *(v1 + 104) = result;
  }

  return result;
}

void sub_19B8E5C90(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,Releasing maps geocaching OS transaction", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 0, "CLTSP,Releasing maps geocaching OS transaction", v5, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapGeometry::releaseOSTransaction()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    *(a1 + 104) = 0;
  }
}

void sub_19B8E5E54(uint64_t result, __int128 *a2, uint64_t a3, __int128 **a4)
{
  if (*(result + 168) == 1 && a2 != 0)
  {
    v6 = a3;
    v7 = sub_19B8E5F08((result + 288), a2, 1);
    if (v7)
    {
      v8 = v7;
      if (*(v7 + v6) == 1)
      {
        sub_19B8E6054(v7, v6);
      }

      v9 = *a4;
      for (i = a4[1]; v9 != i; ++v9)
      {
        if (v6)
        {
          *(v8 + 1) = 1;
          v11 = 1;
        }

        else
        {
          *v8 = 1;
          v11 = 4;
        }

        sub_19B8EAB68(&v8[v11], v9);
      }
    }
  }
}

uint64_t sub_19B8E5F08(uint64_t **a1, __int128 *a2, int a3)
{
  if (sub_19B8F07E0(a1, a2))
  {
    *&v8 = a2;
    return sub_19B8F0840(a1, a2, &unk_19BA897F0, &v8) + 48;
  }

  else if (a3)
  {
    v12 = 0;
    memset(v13, 0, sizeof(v13));
    v14 = 0xBFF0000000000000;
    v8 = *a2;
    v9 = 0;
    memset(v10, 0, sizeof(v10));
    v11 = 0xBFF0000000000000;
    sub_19B8F0B5C(a1, &v8, &v8);
    v15 = &v10[1] + 1;
    sub_19B8F0E84(&v15);
    v15 = v10;
    sub_19B8F0E84(&v15);
    *&v8 = a2;
    v6 = sub_19B8F0840(a1, a2, &unk_19BA897F0, &v8) + 48;
    *&v8 = &v13[1] + 8;
    sub_19B8F0E84(&v8);
    *&v8 = v13;
    sub_19B8F0E84(&v8);
  }

  else
  {
    return 0;
  }

  return v6;
}

void sub_19B8E6030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_19B8F0F24(va);
  _Unwind_Resume(a1);
}

void sub_19B8E6054(uint64_t *a1, int a2)
{
  if (a2)
  {
    sub_19B8F0F70(a1, a1 + 1);
    *(a1 + 1) = 0;
  }

  else
  {
    sub_19B8F0F70(a1, a1 + 4);
    *a1 = 0;
  }
}

uint64_t sub_19B8E609C(uint64_t a1, __int128 *a2, unsigned int a3, void *a4)
{
  if (*(a1 + 168) != 1 || a2 == 0)
  {
    return 0;
  }

  result = sub_19B8E5F08((a1 + 288), a2, 0);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (*(result + a3) != 1)
  {
    return 0;
  }

  v9 = 32;
  if (a3)
  {
    v9 = 8;
  }

  v10 = (result + v9);
  v12 = *v10;
  v11 = v10[1];
  v13 = v11 - v12;
  v14 = (v11 - v12) >> 4;
  if (v14 >= 1)
  {
    v16 = a4[1];
    v15 = a4[2];
    if (v15 - v16 >= v13)
    {
      v40 = a4[1];
      v41 = v16;
      v35 = a4;
      v36 = &v40;
      v37 = &v41;
      if (v12 == v11)
      {
        v23 = v16;
      }

      else
      {
        v23 = v16;
        do
        {
          *v16 = *v12;
          v24 = *(v12 + 1);
          v16[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          v12 += 16;
          v16 += 2;
          v23 += 2;
        }

        while (v12 != v11);
        v41 = v16;
      }

      LOBYTE(v38) = 1;
      sub_19B8F0E08(&v35);
      a4[1] = v23;
    }

    else
    {
      v17 = *a4;
      v18 = v16 - *a4;
      v19 = v14 + (v18 >> 4);
      if (v19 >> 60)
      {
        sub_19B8B8A40();
      }

      v20 = v15 - v17;
      v21 = (v15 - v17) >> 3;
      if (v21 > v19)
      {
        v19 = v21;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v22 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v19;
      }

      v39 = a4;
      if (v22)
      {
        sub_19B8F0D38(a4, v22);
      }

      v25 = 16 * (v18 >> 4);
      v38 = 0;
      v26 = (v25 + v13);
      v27 = v25;
      do
      {
        *v27 = *v12;
        v28 = *(v12 + 1);
        *(v27 + 1) = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        v27 += 16;
        v12 += 16;
      }

      while (v27 != v26);
      memcpy(v26, v16, a4[1] - v16);
      v29 = *a4;
      v30 = &v26[a4[1] - v16];
      a4[1] = v16;
      v31 = v16 - v29;
      v32 = (v25 - (v16 - v29));
      memcpy(v32, v29, v31);
      v33 = *a4;
      *a4 = v32;
      a4[1] = v30;
      v34 = a4[2];
      a4[2] = v38;
      v37 = v33;
      v38 = v34;
      v35 = v33;
      v36 = v33;
      sub_19B8F10D0(&v35);
    }
  }

  *(v8 + 56) = CFAbsoluteTimeGetCurrent();
  return 1;
}

void sub_19B8E62BC(uint64_t a1, double a2, double a3, double a4)
{
  __p[205] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = v40;
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  v9 = *(a1 + 24);
  v10 = v9 < 0.0;
  v11 = vabdd_f64(a2, v9);
  v12 = !v10 && v11 <= a3;
  if (!v12 || v7 >= 501)
  {
    v14 = (a1 + 8);
    v13 = *a1;
    if (*a1 != a1 + 8)
    {
      do
      {
        v15 = *(v13 + 13);
        v16 = vabdd_f64(a2, v15);
        if (v15 >= 0.0 && v16 <= a4)
        {
          if (v7 >= 501)
          {
            v19 = fabs((a2 - v15));
            v38 = v19;
            for (i = v40[0]; i; i = *i)
            {
              v21 = *(i + 8);
              if (v21 <= v19)
              {
                if (v21 >= v19)
                {
                  __p[0] = &v38;
                  v23 = sub_19B8F1678(&v39, &v38, &unk_19BA897F0, __p);
                  sub_19B8F1158((v23 + 5), v13 + 2);
                  goto LABEL_24;
                }

                ++i;
              }
            }

            memset(__p, 0, 24);
            sub_19B8F1158(__p, v13 + 2);
            *v41 = &v38;
            v22 = (sub_19B8F1678(&v39, &v38, &unk_19BA897F0, v41) + 5);
            if (v22 != __p)
            {
              sub_19B8F1798(v22, __p[0], __p[1], (__p[1] - __p[0]) >> 4);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

LABEL_24:
          v24 = v13[1];
          if (v24)
          {
            do
            {
              v18 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v18 = v13[2];
              v25 = *v18 == v13;
              v13 = v18;
            }

            while (!v25);
          }
        }

        else
        {
          sub_19B8F0F70((v13 + 6), v13 + 7);
          sub_19B8F0F70((v13 + 6), v13 + 10);
          v18 = sub_19B8F1230(a1, v13);
        }

        v13 = v18;
      }

      while (v18 != v14);
      if (v40 != v39)
      {
        do
        {
          if (*(a1 + 16) < 0x1F5uLL)
          {
            break;
          }

          v26 = *v8;
          v27 = *v8;
          v28 = v8;
          if (*v8)
          {
            do
            {
              v29 = v27;
              v27 = v27[1];
            }

            while (v27);
          }

          else
          {
            do
            {
              v29 = v28[2];
              v25 = *v29 == v28;
              v28 = v29;
            }

            while (v25);
          }

          v30 = v29[5];
          v31 = v29[6];
          if (v30 != v31)
          {
            do
            {
              if (sub_19B8F07E0(a1, v30))
              {
                __p[0] = v30;
                v32 = sub_19B8F0840(a1, v30, &unk_19BA897F0, __p);
                sub_19B8F0F70(v32 + 48, (v32 + 56));
                sub_19B8F0F70(v32 + 48, (v32 + 80));
                sub_19B8F1908(a1, v30);
                if (*(a1 + 16) < 0x1F5uLL)
                {
                  break;
                }
              }

              v30 += 16;
            }

            while (v30 != v31);
            v26 = *v8;
          }

          if (v26)
          {
            do
            {
              v33 = v26;
              v26 = v26[1];
            }

            while (v26);
          }

          else
          {
            do
            {
              v33 = v8[2];
              v25 = *v33 == v8;
              v8 = v33;
            }

            while (v25);
          }

          v8 = v33;
        }

        while (v33 != v39);
      }
    }

    v34 = *(a1 + 16);
    *(a1 + 24) = a2;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v35 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p[0]) = 134349568;
      *(__p + 4) = *&a2;
      WORD2(__p[1]) = 1026;
      *(&__p[1] + 6) = v7;
      WORD1(__p[2]) = 1026;
      HIDWORD(__p[2]) = v34;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,ClearStoredStaleConnections,szBefore,%{public}d,szAfter,%{public}d", __p, 0x18u);
    }

    v36 = sub_19B87DD40();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v41 = 134349568;
      *&v41[4] = a2;
      v42 = 1026;
      v43 = v7;
      v44 = 1026;
      v45 = v34;
      v37 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,ClearStoredStaleConnections,szBefore,%{public}d,szAfter,%{public}d", v41, 24);
      sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapFeatureAccessGeometryCommon::CLGeoRoadConnectionsMap::clearStoredStaleConnections(const CFAbsoluteTime, const double, const double)", "CoreLocation: %s\n", v37);
      if (v37 != __p)
      {
        free(v37);
      }
    }
  }

  sub_19B8F19C4(&v39, v40[0]);
}

uint64_t sub_19B8E67BC(uint64_t a1, char a2, int a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v106 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  ++*(a1 + 112);
  if ((a2 & 1) == 0 && !sub_19B8E7644((a1 + 56), (a1 + 16), *(a1 + 217), a6, a7, a8))
  {
    goto LABEL_68;
  }

  if (a3)
  {
    if (sub_19B8E7710(a5, a8, a6, a7))
    {
      if (a3)
      {
        goto LABEL_24;
      }

      goto LABEL_12;
    }

LABEL_38:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v35 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349825;
      *&buf[4] = a5;
      *&buf[12] = 2053;
      *&buf[14] = a6;
      *&buf[22] = 2053;
      v98 = a7;
      LOWORD(v99) = 2050;
      *(&v99 + 2) = a8;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Roads,%{public}.1lf,cacheRoadData,invalid input,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf", buf, 0x2Au);
    }

    v36 = sub_19B87DD40();
    if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v85 = 134349825;
      *&v85[4] = a5;
      *&v85[12] = 2053;
      *&v85[14] = a6;
      *&v85[22] = 2053;
      v86 = a7;
      LOWORD(v87) = 2050;
      *(&v87 + 2) = a8;
      v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Roads,%{public}.1lf,cacheRoadData,invalid input,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf", v85, 42);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::bufferMapData(const CFAbsoluteTime, const double, const double, const double, const BOOL, const BOOL, const BOOL)", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    v38 = 0;
    goto LABEL_69;
  }

  *buf = a8;
  v16 = (a1 + 176);
  v17 = (a1 + 184);
  if (*(a1 + 184) >= a8)
  {
    v17 = buf;
  }

  if (*(a1 + 176) <= a8)
  {
    v16 = v17;
  }

  a8 = *v16;
  if (!sub_19B8E7710(a5, *v16, a6, a7))
  {
    goto LABEL_38;
  }

LABEL_12:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v18 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 112);
    v19 = *(a1 + 116);
    v21 = *(a1 + 320);
    v22 = *(a1 + 224);
    v23 = *(a1 + 192);
    *buf = 134351105;
    *&buf[4] = a5;
    *&buf[12] = 2053;
    *&buf[14] = a6;
    *&buf[22] = 2053;
    v98 = a7;
    LOWORD(v99) = 2050;
    *(&v99 + 2) = a8;
    WORD5(v99) = 1026;
    HIDWORD(v99) = v19;
    LOWORD(v100) = 1026;
    *(&v100 + 2) = v20;
    HIWORD(v100) = 2050;
    v101 = v21;
    LOWORD(v102) = 1026;
    *(&v102 + 2) = v22;
    HIWORD(v102) = 1026;
    LODWORD(v103) = v23;
    _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,%{public}.1lf,buffering map data,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,mapsAPICalls,%{public}d,bufferCalls,%{public}d,connectionUsed,%{public}lu,queryInProgress,%{public}d,network,%{public}d", buf, 0x4Cu);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v26 = *(a1 + 112);
    v25 = *(a1 + 116);
    v27 = *(a1 + 320);
    v28 = *(a1 + 224);
    v29 = *(a1 + 192);
    *v85 = 134351105;
    *&v85[4] = a5;
    *&v85[12] = 2053;
    *&v85[14] = a6;
    *&v85[22] = 2053;
    v86 = a7;
    LOWORD(v87) = 2050;
    *(&v87 + 2) = a8;
    WORD5(v87) = 1026;
    HIDWORD(v87) = v25;
    LOWORD(v88) = 1026;
    *(&v88 + 2) = v26;
    HIWORD(v88) = 2050;
    v89 = v27;
    LOWORD(v90) = 1026;
    *(&v90 + 2) = v28;
    HIWORD(v90) = 1026;
    LODWORD(v91) = v29;
    v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,CLTSP,Roads,%{public}.1lf,buffering map data,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,mapsAPICalls,%{public}d,bufferCalls,%{public}d,connectionUsed,%{public}lu,queryInProgress,%{public}d,network,%{public}d", v85, 76);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::bufferMapData(const CFAbsoluteTime, const double, const double, const double, const BOOL, const BOOL, const BOOL)", "CoreLocation: %s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

LABEL_24:
  (*(*a1 + 16))(a1);
  if (*(a1 + 169) == 1)
  {
    v31 = *(a1 + 224);
    if (v31 == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v32 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_INFO, "CLMM,CLTSP,road data query already in progress using XPC", buf, 2u);
      }

      v33 = sub_19B87DD40();
      if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
        }

        *v85 = 0;
        v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,CLTSP,road data query already in progress using XPC", v85, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    else
    {
      v42 = *(a1 + 192);
      v70[0] = a1;
      (*(*a1 + 16))(a1);
      LOWORD(v71) = 256;
      v43 = mach_continuous_time();
      v44 = sub_19B994BF4(v43);
      v45 = objc_autoreleasePoolPush();
      *v85 = 0;
      *&v85[8] = v85;
      *&v85[16] = 0x2020000000;
      LOBYTE(v86) = 0;
      v46 = CLLocationCoordinate2DMake(a6, a7);
      *(a1 + 224) = 1;
      v50 = objc_msgSend_sharedInstance(CLMapsXPCServiceManager, v47, v48, v49);
      v51 = *(a1 + 193);
      v52 = (*(a1 + 152) & 0xFFFFFFFE) == 2;
      v53 = *(a1 + 216);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_19B8EC534;
      v98 = COERCE_DOUBLE(&unk_1E753D7B0);
      v100 = a5;
      v101 = a8;
      v102 = a6;
      v103 = a7;
      *&v99 = v85;
      *(&v99 + 1) = a1;
      v105 = v42;
      v104 = v44;
      objc_msgSend_collectMapDataOfType_aroundCoordinate_inRadius_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_callSynchronously_WithReply_(v50, v54, 0, v42, v51, v52, a4, v53, v46.latitude, v46.longitude, a8, buf);
      _Block_object_dispose(v85, 8);
      objc_autoreleasePoolPop(v45);
      (*(*a1 + 24))(a1);
    }

    v38 = v31 ^ 1u;
    goto LABEL_67;
  }

  if (!*(a1 + 88))
  {
LABEL_64:
    v38 = 0;
    goto LABEL_67;
  }

  if (*(a1 + 224) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v39 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_INFO, "CLMM,CLTSP,road data query already in progress using maps API", buf, 2u);
    }

    v40 = sub_19B87DD40();
    if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v85 = 0;
      v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,CLTSP,road data query already in progress using maps API", v85, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)", "CoreLocation: %s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    goto LABEL_64;
  }

  v82 = a1;
  (*(*a1 + 16))(a1);
  v84 = 256;
  v56 = mach_continuous_time();
  v57 = sub_19B994BF4(v56);
  v59 = objc_autoreleasePoolPush();
  v76 = 0;
  v77 = &v76;
  v78 = 0x3052000000;
  v79 = sub_19B8EBCE4;
  v80 = sub_19B8EBCF4;
  v81 = 0;
  v60 = *(a1 + 216);
  if (v60 == 1)
  {
    v77[5] = dispatch_semaphore_create(0);
  }

  v70[0] = 0;
  v70[1] = v70;
  v71 = 0x4812000000;
  v72 = sub_19B8EBD00;
  v73 = sub_19B8EBD24;
  v74 = "";
  memset(v75, 0, sizeof(v75));
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = sub_19B8EBD50;
  v67[3] = &unk_1E753D760;
  v67[5] = v70;
  v67[6] = a1;
  v67[4] = v68;
  *v85 = MEMORY[0x1E69E9820];
  *&v85[8] = 3221225472;
  *&v85[16] = sub_19B8EBF3C;
  v86 = COERCE_DOUBLE(&unk_1E753D788);
  v90 = a5;
  v91 = a8;
  v92 = a6;
  v93 = a7;
  v94 = v57;
  v95 = a4;
  *&v87 = v68;
  *(&v87 + 1) = v70;
  v96 = v60;
  v88 = &v76;
  v89 = a1;
  ++*(a1 + 116);
  *(a1 + 224) = 1;
  objc_msgSend_findRoadsNear_radius_handler_completionHandler_(*(a1 + 88), v58, v67, v85, a6, a7, a8);
  if (!v60)
  {
    goto LABEL_88;
  }

  v61 = dispatch_semaphore_wait(v77[5], 0xFFFFFFFFFFFFFFFFLL);
  v62 = v77[5];
  if (v62)
  {
    dispatch_release(v62);
  }

  if (v61)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v63 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Roads,queryForRoadsWithinDistance,semaphore timed out", buf, 2u);
    }

    v64 = sub_19B87DD40();
    if ((*(v64 + 160) & 0x80000000) == 0 || (*(v64 + 164) & 0x80000000) == 0 || (*(v64 + 168) & 0x80000000) == 0 || *(v64 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v66 = 0;
      v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Roads,queryForRoadsWithinDistance,semaphore timed out", &v66, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)", "CoreLocation: %s\n", v65);
      if (v65 != buf)
      {
        free(v65);
      }
    }

    v38 = 0;
  }

  else
  {
LABEL_88:
    v38 = 1;
  }

  _Block_object_dispose(v68, 8);
  _Block_object_dispose(v70, 8);
  *buf = v75;
  sub_19B8F0E84(buf);
  _Block_object_dispose(&v76, 8);
  objc_autoreleasePoolPop(v59);
  if (HIBYTE(v84) == 1)
  {
    if (v84)
    {
      pthread_mutex_unlock(v83);
    }

    else
    {
      (*(*v82 + 24))(v82);
    }
  }

LABEL_67:
  (*(*a1 + 24))(a1);
  if (v38)
  {
LABEL_68:
    v38 = 1;
  }

LABEL_69:
  (*(*a1 + 24))(a1);
  return v38;
}

void sub_19B8E7584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  sub_19B8F0E84(&a61);
  _Block_object_dispose(&a38, 8);
  sub_19B888D7C(&a44);
  sub_19B888D7C(&a14);
  sub_19B888D7C(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_19B8E7644(double *a1, float64x2_t *a2, int a3, double a4, double a5, double a6)
{
  v12 = a1[1];
  v13 = a1[2];
  if (!sub_19B8E7710(*a1, a1[3], v12, v13))
  {
    return 1;
  }

  sub_19BA0C01C(a2, a4, a5, v12, v13, 0.0);
  v15 = a1[3];
  if (a3)
  {
    return v14 >= v15 * 0.5;
  }

  v17 = v15 * 0.9;
  return v14 > v17 && v14 + a6 >= v17;
}

BOOL sub_19B8E7710(double a1, double a2, double a3, double a4)
{
  result = 0;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && a1 > 0.0 && a2 > 0.0)
  {
    v5 = fabs(a3);
    if (v5 >= 0.00003 || fabs(a4) >= 0.00003)
    {
      v6 = v5 <= 90.0;
      if (a4 > 180.0)
      {
        v6 = 0;
      }

      return a4 >= -180.0 && v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19B8E77AC(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7)
{
  v8 = a3;
  v20 = a1;
  (*(*a1 + 16))(a1);
  v21 = 256;
  if (a1[216] == 1 && (Current = CFAbsoluteTimeGetCurrent(), (sub_19B8E67BC(a1, 0, 0, 0, Current, a5, a6, a7) & 1) == 0))
  {
    v15 = 0;
  }

  else
  {
    sub_19B8E794C(a1, a1 + 30, a2, v8, a5, a6, a7);
    if (a4)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      sub_19B8E794C(a1, a1 + 33, &v17, v8, a5, a6, a7);
      sub_19B8F1A28(a2, *(a2 + 8), v17, v18, (v18 - v17) >> 4);
      v22 = &v17;
      sub_19B8F0E84(&v22);
    }

    v15 = 1;
  }

  (*(*a1 + 24))(a1);
  return v15;
}

void sub_19B8E7914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16)
{
  a16 = &a10;
  sub_19B8F0E84(&a16);
  sub_19B888D7C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8E794C(uint64_t a1, void *a2, uint64_t *a3, int a4, double a5, double a6, double a7)
{
  v79 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  if (*(a1 + 224) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,map data requested while map data buffering was in progress", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      LOWORD(v72) = 0;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,CLTSP,map data requested while map data buffering was in progress", &v72, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::findRoadsNear(const double, const double, const double, const std::map<CLMapRoadKey, CLMapRoadPtr> &, std::vector<CLMapRoadPtr> &, const BOOL)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  else
  {
    v72 = a1;
    (*(*a1 + 16))(a1);
    v73 = 256;
    v17 = *(a1 + 328);
    v18 = *(a1 + 336);
    if (v17 != v18)
    {
      v71[0] = 0;
      v71[1] = 0;
      v70 = v71;
      do
      {
        v19 = *v17;
        *buf = **v17;
        buf[16] = 1;
        if (!*sub_19B8F08E8(&v70, v74, buf))
        {
          operator new();
        }

        v20 = *(a1 + 248);
        v21 = *v19;
        for (i = *(v19 + 1); v20; v20 = *v20)
        {
          v23 = v20[4];
          v24 = v20[5];
          v25 = v24 > i;
          if (v23 != v21)
          {
            v25 = v23 > v21;
          }

          if (!v25)
          {
            v26 = v24 < i;
            v27 = v23 == v21;
            v28 = v23 < v21;
            if (v27)
            {
              v28 = v26;
            }

            if (!v28)
            {
              goto LABEL_45;
            }

            ++v20;
          }
        }

        for (j = *(a1 + 272); j; j = *j)
        {
          v30 = j[4];
          v31 = j[5];
          v32 = v31 > i;
          if (v30 != v21)
          {
            v32 = v30 > v21;
          }

          if (!v32)
          {
            v33 = v31 < i;
            v27 = v30 == v21;
            v34 = v30 < v21;
            if (v27)
            {
              v34 = v33;
            }

            if (!v34)
            {
              goto LABEL_45;
            }

            ++j;
          }
        }

        if (sub_19B9F6598(*v17))
        {
          *buf = *v19;
          *&buf[16] = *v17;
          v35 = v17[1];
          v78 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B8F34D8((a1 + 240), *buf, *&buf[8], buf);
        }

        else
        {
          *buf = *v19;
          *&buf[16] = *v17;
          v36 = v17[1];
          v78 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B8F34D8((a1 + 264), *buf, *&buf[8], buf);
        }

        if (*&v78 != 0.0)
        {
          sub_19B8750F8(v78);
        }

LABEL_45:
        v17 += 2;
      }

      while (v17 != v18);
      sub_19B8EBC04((a1 + 328));
      sub_19B8EBC50((a1 + 240), &v70);
      sub_19B8EBC50((a1 + 264), &v70);
      if ((*(a1 + 216) & 1) == 0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
        }

        v37 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(a1 + 256);
          v39 = *(a1 + 280);
          *buf = 134349312;
          *&buf[4] = v38;
          *&buf[12] = 2050;
          *&buf[14] = v39;
          _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,newly buffered data ingested,roads,%{public}lu,zeroLengthRoads,%{public}lu", buf, 0x16u);
        }

        v40 = sub_19B87DD40();
        if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
          }

          v41 = *(a1 + 256);
          v42 = *(a1 + 280);
          *v74 = 134349312;
          *&v74[4] = v41;
          v75 = 2050;
          v76 = v42;
          v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,CLTSP,Roads,newly buffered data ingested,roads,%{public}lu,zeroLengthRoads,%{public}lu", v74, 22);
          sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapFeatureRoadGeometryBuffer::updateRoadDataObjectsWithNewlyBufferedData()", "CoreLocation: %s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }
      }

      sub_19B8F3484(&v70, v71[0]);
    }

    (*(*a1 + 24))(a1);
  }

  if (!a4)
  {
    sub_19B8EBC04(a3);
    v60 = *a2;
    v58 = (a2 + 1);
    v59 = v60;
    if (v60 == v58)
    {
      goto LABEL_105;
    }

    while (1)
    {
      v61 = *(v59 + 6);
      if (v61)
      {
        if (*(v61 + 144) - *(v61 + 136) >= 0x11uLL)
        {
          v62 = 0;
          v63 = 0;
          while (1)
          {
            GEOClosestCoordinateOnLineSegmentFromCoordinate();
            GEOCalculateDistance();
            if (v64 <= a7)
            {
              break;
            }

            ++v63;
            v62 += 16;
            if (v63 >= ((*(v61 + 144) - *(v61 + 136)) >> 4) - 1)
            {
              goto LABEL_99;
            }
          }

LABEL_98:
          sub_19B8EAB68(a3, v59 + 3);
          goto LABEL_99;
        }

        GEOCalculateDistance();
        if (v65 <= a7)
        {
          goto LABEL_98;
        }
      }

LABEL_99:
      v66 = *(v59 + 1);
      if (v66)
      {
        do
        {
          v67 = v66;
          v66 = *v66;
        }

        while (v66);
      }

      else
      {
        do
        {
          v67 = *(v59 + 2);
          v27 = *v67 == v59;
          v59 = v67;
        }

        while (!v27);
      }

      v59 = v67;
      if (v67 == v58)
      {
        goto LABEL_105;
      }
    }
  }

  v44 = mach_continuous_time();
  sub_19B994BF4(v44);
  sub_19B8F1EE8(buf, a5, a6, a7);
  sub_19B8EBC04(a3);
  v48 = *a2;
  v46 = (a2 + 1);
  v47 = v48;
  if (v48 == v46)
  {
    goto LABEL_105;
  }

  do
  {
    v45 = v47 + 3;
    v49 = *(v47 + 6);
    if (!v49)
    {
      goto LABEL_83;
    }

    v50 = *(v49 + 136);
    v51 = *(v49 + 144);
    if (v50 == v51)
    {
      goto LABEL_83;
    }

    while (1)
    {
      if (*buf > *v50 || *&buf[16] < *v50)
      {
        goto LABEL_80;
      }

      v53 = v50[1];
      if (*&v78 <= *&buf[8])
      {
        break;
      }

      if (*&v78 >= v53 && *&buf[8] <= v53)
      {
        goto LABEL_82;
      }

LABEL_80:
      v50 += 2;
      if (v50 == v51)
      {
        goto LABEL_83;
      }
    }

    if (*&v78 >= *&buf[8])
    {
      goto LABEL_80;
    }

    if (*&v78 <= v53 && *&buf[8] >= v53)
    {
      goto LABEL_80;
    }

LABEL_82:
    sub_19B8EAB68(a3, v45);
LABEL_83:
    v56 = *(v47 + 1);
    if (v56)
    {
      do
      {
        v57 = v56;
        v56 = *v56;
      }

      while (v56);
    }

    else
    {
      do
      {
        v57 = *(v47 + 2);
        v27 = *v57 == v47;
        v47 = v57;
      }

      while (!v27);
    }

    v47 = v57;
  }

  while (v57 != v46);
LABEL_105:
  (*(*a1 + 24))(a1, v45);
  return 1;
}

void sub_19B8E8190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void *);
  v13 = va_arg(va2, void);
  sub_19B8F3484(va1, v12);
  sub_19B888D7C(va2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B8E8210(id *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v31 = a1;
  (*(*a1 + 2))(a1);
  v32 = 256;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (sub_19B8E83FC(a1, a3, &v28, 0, a4, a5, a6, a7, a8, a9))
  {
    v18 = v28;
    v19 = v29;
    if (v28 == v29)
    {
      v25 = *a2 != 0;
      v20 = -1.0;
    }

    else
    {
      v20 = -1.0;
      do
      {
        v21 = *v18;
        if (v20 < 0.0 || v21 && *(v21 + 56) > v20)
        {
          v22 = *(v18 + 1);
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          v23 = a2[1];
          *a2 = v21;
          a2[1] = v22;
          if (v23)
          {
            sub_19B8750F8(v23);
          }

          v20 = *(*v18 + 56);
        }

        ++v18;
      }

      while (v18 != v19);
      v24 = *a2;
      v25 = *a2 != 0;
      if (*a2 && v20 > 0.0)
      {
        v25 = 1;
        *(v24 + 64) = 1;
        *(v24 + 112) = 0x3FF0000000000000;
      }
    }

    v26 = v20 >= 0.0 && v25;
  }

  else
  {
    v26 = 0;
  }

  v33 = &v28;
  sub_19B8F0E84(&v33);
  (*(*a1 + 3))(a1);
  return v26;
}

void sub_19B8E83DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_19B8F0E84(va1);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B8E83FC(id *a1, uint64_t a2, __int128 **a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = a2;
  v260 = *MEMORY[0x1E69E9840];
  v237 = a1;
  (*(*a1 + 2))(a1);
  v239 = 256;
  v19 = *(a1 + 25);
  if (*(a1 + 26) >= v19 + a9 * 4.0)
  {
    v20 = v19 + a9 * 4.0;
  }

  else
  {
    v20 = *(a1 + 26);
  }

  v235 = a7;
  v236 = a6;
  v234 = a9;
  if (sub_19B94960C(a1 + 29, v12, &v236, &v235, &v234, 5, a6, a7, a9) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 134349569;
      *&buf[4] = a5;
      *&buf[12] = 2053;
      *&buf[14] = v236;
      *&buf[22] = 2053;
      *&buf[24] = v235;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_INFO, "CLTSP,%{public}.1lf,getSnapCandidates,location shifting failed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v251 = 134349569;
      *&v251[4] = a5;
      *&v251[12] = 2053;
      *&v251[14] = v236;
      *&v251[22] = 2053;
      v252 = v235;
      v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,%{public}.1lf,getSnapCandidates,location shifting failed,LL,%{sensitive}.7lf,%{sensitive}.7lf", v251, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::getSnapCandidates(const double, const double, const double, const double, const double, const double, const CLClientLocationReferenceFrame, std::vector<CLGeoMapSnapDataPtr> &, const BOOL)", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    goto LABEL_131;
  }

  v231 = 0;
  v232 = 0;
  v233 = 0;
  if ((sub_19B8E77AC(a1, &v231, a4, 0, v236, v235, v20) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v83 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349569;
      *&buf[4] = a5;
      *&buf[12] = 2053;
      *&buf[14] = v236;
      *&buf[22] = 2053;
      *&buf[24] = v235;
      _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,getSnapCandidates,findRoadsNear failed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
    }

    v84 = sub_19B87DD40();
    if (*(v84 + 160) <= 1 && *(v84 + 164) <= 1 && *(v84 + 168) <= 1 && !*(v84 + 152))
    {
      goto LABEL_130;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_127;
    }

    goto LABEL_406;
  }

  v24 = v231;
  v25 = v232;
  if (v231 != v232)
  {
    goto LABEL_19;
  }

  v88 = *(a1 + 26);
  if (v20 == v88)
  {
    goto LABEL_19;
  }

  if ((sub_19B8E77AC(a1, &v231, a4, 0, v236, v235, v88) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v217 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349569;
      *&buf[4] = a5;
      *&buf[12] = 2053;
      *&buf[14] = v236;
      *&buf[22] = 2053;
      *&buf[24] = v235;
      _os_log_impl(&dword_19B873000, v217, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,getSnapCandidates,findRoadsNear failed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
    }

    v218 = sub_19B87DD40();
    if (*(v218 + 160) <= 1 && *(v218 + 164) <= 1 && *(v218 + 168) <= 1 && !*(v218 + 152))
    {
      goto LABEL_130;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_127;
    }

LABEL_406:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
LABEL_127:
    *v251 = 134349569;
    *&v251[4] = a5;
    *&v251[12] = 2053;
    *&v251[14] = v236;
    *&v251[22] = 2053;
    v252 = v235;
    v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLTSP,%{public}.1lf,getSnapCandidates,findRoadsNear failed,LL,%{sensitive}.7lf,%{sensitive}.7lf", v251, 32);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::getSnapCandidates(const double, const double, const double, const double, const double, const double, const CLClientLocationReferenceFrame, std::vector<CLGeoMapSnapDataPtr> &, const BOOL)", "CoreLocation: %s\n", v85);
    goto LABEL_128;
  }

  v24 = v231;
  v25 = v232;
  if (v231 == v232)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v89 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 134349569;
      *&buf[4] = a5;
      *&buf[12] = 2053;
      *&buf[14] = v236;
      *&buf[22] = 2053;
      *&buf[24] = v235;
      _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_INFO, "CLTSP,%{public}.1lf,roads not available close to this point,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
    }

    v90 = sub_19B87DD40();
    if (*(v90 + 160) <= 1 && *(v90 + 164) <= 1 && *(v90 + 168) <= 1 && !*(v90 + 152))
    {
      goto LABEL_130;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    *v251 = 134349569;
    *&v251[4] = a5;
    *&v251[12] = 2053;
    *&v251[14] = v236;
    *&v251[22] = 2053;
    v252 = v235;
    v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,%{public}.1lf,roads not available close to this point,LL,%{sensitive}.7lf,%{sensitive}.7lf", v251, 32);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::getSnapCandidates(const double, const double, const double, const double, const double, const double, const CLClientLocationReferenceFrame, std::vector<CLGeoMapSnapDataPtr> &, const BOOL)", "CoreLocation: %s\n", v85);
LABEL_128:
    if (v85 != buf)
    {
      free(v85);
    }

LABEL_130:
    *buf = &v231;
    sub_19B8F0E84(buf);
LABEL_131:
    v86 = 0;
LABEL_132:
    if (v239)
    {
      pthread_mutex_unlock(v238);
    }

    else
    {
      (*(*v237 + 3))(v237);
    }

    return v86;
  }

LABEL_19:
  v228 = 0;
  v229 = 0;
  v230 = 0;
  *&v251[8] = 0;
  *&v251[16] = 0;
  *v251 = &v251[8];
  v222 = a3;
  if (v24 == v25)
  {
    v108 = 0;
    *(&__y + 1) = 0;
    *&v247 = 0;
    *&__y = &__y + 8;
  }

  else
  {
    do
    {
      v27 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        *buf = v27;
        *&buf[8] = v26;
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        memset(&buf[16], 0, 32);
        sub_19B8750F8(v26);
        v28 = *v24;
      }

      else
      {
        *buf = *v24;
        memset(&buf[8], 0, 40);
        v28 = v27;
      }

      *&__y = v28;
      v29 = sub_19B8F35D8(v251, *v28, v28[1], &__y);
      v30 = v29;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = v29[7];
      v30[6] = v27;
      v30[7] = v26;
      if (v31)
      {
        sub_19B8750F8(v31);
      }

      v32 = v30[9];
      v30[8] = 0;
      v30[9] = 0;
      if (v32)
      {
        sub_19B8750F8(v32);
      }

      v33 = v30[11];
      v30[10] = 0;
      v30[11] = 0;
      if (v33)
      {
        sub_19B8750F8(v33);
      }

      if (v26)
      {
        sub_19B8750F8(v26);
      }

      v24 += 2;
    }

    while (v24 != v25);
    v34 = *v251;
    if (*v251 != &v251[8])
    {
      while (1)
      {
        memset(buf, 0, 24);
        sub_19B8EB310(a1, v34 + 6, buf, 1);
        v35 = *buf;
        v36 = *&buf[8];
        if (*buf == *&buf[8])
        {
          v38 = 0;
          goto LABEL_68;
        }

        v37 = 0;
        v38 = 0;
        v39 = 360.0;
        do
        {
          v40 = *v35;
          if (!*v35)
          {
            goto LABEL_61;
          }

          v41 = *&v251[8];
          if (!*&v251[8])
          {
            goto LABEL_61;
          }

          v42 = *v40;
          v43 = v40[1];
          while (1)
          {
            v44 = v41[4];
            v45 = v41[5];
            v46 = v45 > v43;
            if (v44 != v42)
            {
              v46 = v44 > v42;
            }

            if (v46)
            {
              goto LABEL_47;
            }

            v47 = v45 < v43;
            v48 = v44 == v42;
            v49 = v44 < v42;
            if (v48)
            {
              v49 = v47;
            }

            if (!v49)
            {
              break;
            }

            ++v41;
LABEL_47:
            v41 = *v41;
            if (!v41)
            {
              goto LABEL_61;
            }
          }

          v50 = sub_19B9F5C98(*(v34 + 6), 0);
          v51 = ((*v35)[18] - (*v35)[17]) >> 4;
          v52 = -1.0;
          if (v51 >= 2)
          {
            v52 = sub_19B9F5C98(*v35, v51 - 2);
          }

          v53 = fmod(v50 - v52, 360.0);
          if (v53 < 0.0)
          {
            v53 = v53 + 360.0;
          }

          if (v53 > 180.0)
          {
            v53 = v53 + -360.0;
          }

          v54 = fabs(v53);
          if (v54 < v39)
          {
            v37 = *v35;
            v55 = v35[1];
            if (v55)
            {
              atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v38)
            {
              sub_19B8750F8(v38);
            }

            v38 = v55;
            v39 = v54;
          }

LABEL_61:
          v35 += 2;
        }

        while (v35 != v36);
        if (v39 < 30.0)
        {
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v56 = *(v34 + 9);
          *(v34 + 8) = v37;
          *(v34 + 9) = v38;
          if (v56)
          {
            sub_19B8750F8(v56);
          }
        }

LABEL_68:
        __y = 0uLL;
        *&v247 = 0;
        sub_19B8EAC7C(a1, v34 + 6, &__y, 1);
        v58 = *(&__y + 1);
        v57 = __y;
        if (__y == *(&__y + 1))
        {
          p_y = &__y;
          sub_19B8F0E84(&p_y);
          if (v38)
          {
            goto LABEL_108;
          }

          goto LABEL_109;
        }

        v59 = 0;
        v60 = 0;
        v61 = 360.0;
        while (2)
        {
          v62 = *v57;
          if (!*v57)
          {
            goto LABEL_99;
          }

          v63 = *&v251[8];
          if (!*&v251[8])
          {
            goto LABEL_99;
          }

          v64 = *v62;
          v65 = v62[1];
          while (2)
          {
            v66 = v63[4];
            v67 = v63[5];
            v68 = v67 > v65;
            if (v66 != v64)
            {
              v68 = v66 > v64;
            }

            if (v68)
            {
LABEL_80:
              v63 = *v63;
              if (!v63)
              {
                goto LABEL_99;
              }

              continue;
            }

            break;
          }

          v69 = v67 < v65;
          v48 = v66 == v64;
          v70 = v66 < v64;
          if (v48)
          {
            v70 = v69;
          }

          if (v70)
          {
            ++v63;
            goto LABEL_80;
          }

          v71 = *(v34 + 6);
          if (sub_19B9F6278(v71, v57))
          {
            v72 = sub_19B9F5C98(v62, 0);
            v73 = *(v34 + 6);
            v74 = (v73[18] - v73[17]) >> 4;
            v75 = -1.0;
            if (v74 >= 2)
            {
              v75 = sub_19B9F5C98(v73, v74 - 2);
            }
          }

          else
          {
            v76 = (v62[18] - v62[17]) >> 4;
            if (v76 >= 2)
            {
              v72 = sub_19B9F5C98(v62, v76 - 2);
              v71 = *(v34 + 6);
            }

            else
            {
              v72 = -1.0;
            }

            v75 = sub_19B9F5C98(v71, 0);
          }

          v77 = fmod(v72 - v75, 360.0);
          if (v77 < 0.0)
          {
            v77 = v77 + 360.0;
          }

          if (v77 > 180.0)
          {
            v77 = v77 + -360.0;
          }

          v78 = fabs(v77);
          if (v78 < v61)
          {
            v60 = *v57;
            v79 = v57[1];
            if (v79)
            {
              atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v59)
            {
              sub_19B8750F8(v59);
            }

            v59 = v79;
            v61 = v78;
          }

LABEL_99:
          v57 += 2;
          if (v57 != v58)
          {
            continue;
          }

          break;
        }

        if (v61 < 30.0)
        {
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v80 = *(v34 + 11);
          *(v34 + 10) = v60;
          *(v34 + 11) = v59;
          if (v80)
          {
            sub_19B8750F8(v80);
          }
        }

        p_y = &__y;
        sub_19B8F0E84(&p_y);
        if (v59)
        {
          sub_19B8750F8(v59);
        }

        if (v38)
        {
LABEL_108:
          sub_19B8750F8(v38);
        }

LABEL_109:
        *&__y = buf;
        sub_19B8F0E84(&__y);
        v81 = *(v34 + 1);
        if (v81)
        {
          do
          {
            v82 = v81;
            v81 = *v81;
          }

          while (v81);
        }

        else
        {
          do
          {
            v82 = *(v34 + 2);
            v48 = *v82 == v34;
            v34 = v82;
          }

          while (!v48);
        }

        v34 = v82;
        if (v82 == &v251[8])
        {
          v34 = *v251;
          break;
        }
      }
    }

    *(&__y + 1) = 0;
    *&v247 = 0;
    *&__y = &__y + 8;
    if (v34 != &v251[8])
    {
      while (1)
      {
        v91 = *(v34 + 6);
        v92 = *(v34 + 7);
        v93 = v91;
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          v93 = *(v34 + 6);
        }

        if (v93 && !sub_19B8F07E0(&__y, v91))
        {
          break;
        }

        if (v92)
        {
          goto LABEL_156;
        }

LABEL_157:
        v94 = *(v34 + 1);
        if (v94)
        {
          do
          {
            v95 = v94;
            v94 = *v94;
          }

          while (v94);
        }

        else
        {
          do
          {
            v95 = *(v34 + 2);
            v48 = *v95 == v34;
            v34 = v95;
          }

          while (!v48);
        }

        v34 = v95;
        if (v95 == &v251[8])
        {
          v108 = *(&__y + 1);
          goto LABEL_185;
        }
      }

      p_y = 0;
      v244 = 0;
      v245 = 0;
      sub_19B8ECDD4((v34 + 48), v251, &p_y);
      sub_19B8ED318(&p_y, v34 + 6);
      sub_19B8ED434((v34 + 48), v251, &p_y);
      v240 = 0;
      v241 = 0;
      v242 = 0;
      v97 = p_y;
      v96 = v244;
      while (v97 != v96)
      {
        v98 = *v97;
        if (*v97)
        {
          *buf = *v97;
          *(sub_19B8F3760(&__y, v98, &unk_19BA897F0, buf) + 48) = 1;
          sub_19B8EAB68(&v240, v97);
        }

        v97 += 3;
      }

      v99 = v229;
      if (v229 >= v230)
      {
        v101 = 0xAAAAAAAAAAAAAAABLL * (v229 - v228);
        v102 = v101 + 1;
        if (v101 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_19B8B8A40();
        }

        if (0x5555555555555556 * ((v230 - v228) >> 3) > v102)
        {
          v102 = 0x5555555555555556 * ((v230 - v228) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v230 - v228) >> 3) >= 0x555555555555555)
        {
          v103 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v103 = v102;
        }

        *&buf[32] = &v228;
        if (v103)
        {
          if (v103 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_19B8B8AB0();
        }

        v104 = (8 * (v229 - v228));
        *buf = 0;
        *&buf[8] = v104;
        *&buf[16] = v104;
        *&buf[24] = 0;
        v104[1] = 0;
        v104[2] = 0;
        *v104 = 0;
        sub_19B8F0C74((24 * v101), v240, v241, (v241 - v240) >> 4);
        v100 = *&buf[16] + 24;
        v105 = (*&buf[8] - (v229 - v228));
        memcpy(v105, v228, v229 - v228);
        v106 = v228;
        v107 = v230;
        v228 = v105;
        v229 = v100;
        v230 = *&buf[24];
        *&buf[16] = v106;
        *&buf[24] = v107;
        *buf = v106;
        *&buf[8] = v106;
        sub_19B8F22C8(buf);
      }

      else
      {
        *v229 = 0;
        v99[1] = 0;
        v99[2] = 0;
        sub_19B8F0C74(v99, v240, v241, (v241 - v240) >> 4);
        v100 = (v99 + 3);
      }

      v229 = v100;
      *buf = &v240;
      sub_19B8F0E84(buf);
      *buf = &p_y;
      sub_19B8F2328(buf);
      if (!v92)
      {
        goto LABEL_157;
      }

LABEL_156:
      sub_19B8750F8(v92);
      goto LABEL_157;
    }

    v108 = 0;
  }

LABEL_185:
  v225 = a5;
  sub_19B8F3484(&__y, v108);
  sub_19B8F36F0(*&v251[8]);
  memset(&buf[7], 0, 32);
  *&v251[16] = 0;
  v253 = 0;
  v254 = 0;
  v255 = *buf;
  *v256 = *&buf[16];
  *&v256[15] = 0;
  *v251 = v234 * v234 * 0.5;
  *&v251[8] = *v251;
  v109 = a10 * a10;
  if (a10 <= 0.0)
  {
    v109 = -1.0;
  }

  v252 = v109;
  sub_19B9C1640(v251);
  v111 = v235;
  v110 = v236;
  p_y = 0;
  v244 = 0;
  v245 = 0;
  v112 = v228;
  v223 = v229;
  if (v228 == v229)
  {
LABEL_342:
    v86 = *v222 != v222[1];
    goto LABEL_388;
  }

  v113 = a8 >= 0.0;
  if (a10 <= 0.0)
  {
    v113 = 0;
  }

  v224 = v113;
  while (1)
  {
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v114 = *v112;
    if (*v112 != v112[1])
    {
      break;
    }

    *&buf[8] = 0;
    *buf = &v240;
    sub_19B8F0E84(buf);
    v112 += 3;
    if (v112 == v223)
    {
      goto LABEL_342;
    }
  }

  v115 = *v114;
  if (!*v114)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v206 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = a5;
      _os_log_impl(&dword_19B873000, v206, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,road is nullptr", buf, 0xCu);
    }

    v207 = sub_19B87DD40();
    if ((*(v207 + 160) & 0x80000000) != 0 && (*(v207 + 164) & 0x80000000) != 0 && (*(v207 + 168) & 0x80000000) != 0 && !*(v207 + 152))
    {
      goto LABEL_387;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LODWORD(__y) = 134349056;
    *(&__y + 4) = a5;
    v208 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,%{public}.1lf,road is nullptr", &__y, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::getSnapCandidates(const double, const double, const double, const double, const double, const double, const CLClientLocationReferenceFrame, std::vector<CLGeoMapSnapDataPtr> &, const BOOL)", "CoreLocation: %s\n", v208);
LABEL_385:
    if (v208 != buf)
    {
      free(v208);
    }

    goto LABEL_387;
  }

  v116 = *(v115 + 136);
  v117 = *(v115 + 144) - v116;
  if ((v117 >> 4) <= 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v209 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v209, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
    }

    v210 = sub_19B87DD40();
    if (*(v210 + 160) > 1 || *(v210 + 164) > 1 || *(v210 + 168) > 1 || *(v210 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      LOWORD(__y) = 0;
      v211 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", &__y, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = GEOLocationCoordinate2D]", "CoreLocation: %s\n", v211);
      if (v211 != buf)
      {
        free(v211);
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v212 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = a5;
      _os_log_impl(&dword_19B873000, v212, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,findClosestPointOnRoad returned false", buf, 0xCu);
    }

    v213 = sub_19B87DD40();
    if ((*(v213 + 160) & 0x80000000) != 0 && (*(v213 + 164) & 0x80000000) != 0 && (*(v213 + 168) & 0x80000000) != 0 && !*(v213 + 152))
    {
      goto LABEL_387;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LODWORD(__y) = 134349056;
    *(&__y + 4) = a5;
    v208 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,%{public}.1lf,findClosestPointOnRoad returned false", &__y, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::getSnapCandidates(const double, const double, const double, const double, const double, const double, const CLClientLocationReferenceFrame, std::vector<CLGeoMapSnapDataPtr> &, const BOOL)", "CoreLocation: %s\n", v208);
    goto LABEL_385;
  }

  v118 = *v116;
  v119 = v116[1];
  *buf = 0;
  *&buf[8] = 0;
  v120 = 0.0;
  sub_19BA0BE88(a1 + 1, buf, &buf[8], &__y, v110, v111, 0.0, v118, v119, 0.0);
  v121 = 0;
  v122 = *buf;
  v123 = *&buf[8];
  v124 = ((v117 >> 4) & 0x7FFFFFFF) - 1;
  v125 = -1.0;
  v126 = 0.0;
  do
  {
    v127 = v122;
    v128 = v123;
    v129 = *(v115 + 136) + v121;
    v130 = *(v129 + 16);
    v131 = *(v129 + 24);
    __y = 0uLL;
    sub_19BA0BE88(a1 + 1, &__y, &__y + 1, &v227, v110, v111, 0.0, v130, v131, 0.0);
    v123 = *(&__y + 1);
    v122 = *&__y;
    v132 = (v127 - *&__y) * (v127 - *&__y) + (v128 - *(&__y + 1)) * (v128 - *(&__y + 1));
    v133 = 0.0;
    v134 = 0.0 - v127;
    if (v132 < 0.001)
    {
      v135 = v134 * v134;
      v136 = 0.0 - v128;
LABEL_197:
      v137 = v135 + v136 * v136;
      goto LABEL_202;
    }

    v133 = ((0.0 - v128) * (*(&__y + 1) - v128) + v134 * (*&__y - v127)) / v132;
    if (v133 >= 0.0)
    {
      if (v133 <= 1.0)
      {
        v135 = (0.0 - (v127 + (*&__y - v127) * v133)) * (0.0 - (v127 + (*&__y - v127) * v133));
        v136 = 0.0 - (v128 + (*(&__y + 1) - v128) * v133);
        goto LABEL_197;
      }

      v137 = (0.0 - *&__y) * (0.0 - *&__y) + (0.0 - *(&__y + 1)) * (0.0 - *(&__y + 1));
      v133 = 1.0;
    }

    else
    {
      v137 = v134 * v134 + (0.0 - v128) * (0.0 - v128);
      v133 = 0.0;
    }

LABEL_202:
    v138 = sqrt(v132);
    v139 = sqrt(v137);
    v140 = v125 < 0.0;
    if (v139 < v125)
    {
      v140 = 1;
    }

    v141 = v120 + v138 * v133;
    if (v140)
    {
      v125 = v139;
      v126 = v141;
    }

    v120 = v120 + v138;
    v121 += 16;
    --v124;
  }

  while (v124);
  if (v120 >= 0.001)
  {
    v142 = v126 / v120;
  }

  else
  {
    v142 = 0.0;
  }

  v144 = *v114;
  v143 = v114[1];
  if (v143)
  {
    atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v144)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v155 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v155, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v156 = sub_19B87DD40();
    if ((*(v156 + 160) & 0x80000000) != 0 && (*(v156 + 164) & 0x80000000) != 0 && (*(v156 + 168) & 0x80000000) != 0 && !*(v156 + 152))
    {
      goto LABEL_243;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LOWORD(__y) = 0;
    v157 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM, NULL road", &__y, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v157);
LABEL_241:
    if (v157 != buf)
    {
      free(v157);
    }

    goto LABEL_243;
  }

  v145 = (*(v144 + 144) - *(v144 + 136)) >> 4;
  if (v145 <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v158 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v158, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v159 = sub_19B87DD40();
    if (*(v159 + 160) <= 1 && *(v159 + 164) <= 1 && *(v159 + 168) <= 1 && !*(v159 + 152))
    {
      goto LABEL_243;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LOWORD(__y) = 0;
    v157 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,CoordinateCount is 0", &__y, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v157);
    goto LABEL_241;
  }

  v146 = 0.0;
  if (v145 == 1)
  {
    goto LABEL_244;
  }

  sub_19B9F5AA8(v144);
  v147 = (*(v144 + 168) - *(v144 + 160)) >> 3;
  if (v147 != v145 - 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v167 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v167, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
    }

    v168 = sub_19B87DD40();
    if (*(v168 + 160) <= 1 && *(v168 + 164) <= 1 && *(v168 + 168) <= 1 && !*(v168 + 152))
    {
      goto LABEL_283;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LOWORD(__y) = 0;
    v169 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,inconsistent array size", &__y, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v169);
    goto LABEL_281;
  }

  sub_19B9F5AA8(v144);
  if (v142 < 0.000001)
  {
    v148 = *(v144 + 136);
    v146 = *v148;
    v149 = v148[1];
    v150 = v148[2];
    v151 = v148[3];
    *buf = 0;
    *&__y = 0;
    v152 = (a1 + 2);
    v153 = v146;
    v154 = v149;
    goto LABEL_302;
  }

  if (v142 >= 0.999999)
  {
    v178 = *(v144 + 136) + 16 * v147;
    v146 = *v178;
    v149 = *(v178 + 8);
    v153 = *(v178 - 16);
    v154 = *(v178 - 8);
    *buf = 0;
    *&__y = 0;
    v152 = (a1 + 2);
    v150 = v146;
    v151 = v149;
LABEL_302:
    sub_19BA0BE88(v152, buf, &__y, &v227, v153, v154, 0.0, v150, v151, 0.0);
    v179 = atan2(*&__y, *buf);
    if (v179 < 0.0)
    {
      v179 = v179 + 6.28318531;
    }

    v160 = v179 * 57.2957795;
LABEL_305:
    LOBYTE(v145) = 1;
    goto LABEL_245;
  }

  v170 = *(v144 + 160);
  v171 = *(v144 + 168);
  if (v170 == v171)
  {
LABEL_290:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v176 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v176, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
    }

    v177 = sub_19B87DD40();
    if (*(v177 + 160) <= 1 && *(v177 + 164) <= 1 && *(v177 + 168) <= 1 && !*(v177 + 152))
    {
      goto LABEL_283;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LOWORD(__y) = 0;
    v169 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,Could not interpolate to intended projection", &__y, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v169);
LABEL_281:
    if (v169 != buf)
    {
      free(v169);
    }

LABEL_283:
    LOBYTE(v145) = 0;
    goto LABEL_244;
  }

  v172 = 0.0;
  v173 = 2;
  v174 = 24;
  while (1)
  {
    v175 = *v170 / *(v144 + 40);
    if (vabdd_f64(v142, v172 + v175) < 0.000001)
    {
      break;
    }

    if (v172 + v175 > v142)
    {
      v192 = (*(v144 + 136) + v174);
      v193 = *(v192 - 2);
      v194 = *v192;
      v195 = v193 + 360.0;
      if (v193 >= 0.0)
      {
        v195 = *(v192 - 2);
      }

      v196 = v194 + 360.0;
      v220 = *v192;
      if (v194 >= 0.0)
      {
        v196 = *v192;
      }

      v197 = v196 - v195;
      if (v197 <= 180.0)
      {
        if (v197 < -180.0)
        {
          v197 = v197 + 360.0;
        }
      }

      else
      {
        v197 = v197 + -360.0;
      }

      v200 = (v142 - v172) / v175;
      v201 = *(v192 - 3);
      v202 = *(v192 - 1);
      v203 = fmod(v193 + v197 * v200, 360.0);
      if (v203 <= -180.0)
      {
        v204 = v203 + 360.0;
      }

      else
      {
        v204 = v203;
        if (v203 > 180.0)
        {
          v204 = v203 + -360.0;
        }
      }

      v146 = v201 + (v202 - v201) * v200;
      *buf = 0;
      *&__y = 0;
      sub_19BA0BE88(a1 + 1, buf, &__y, &v227, v201, v193, 0.0, v202, v220, 0.0);
      v205 = atan2(*&__y, *buf);
      if (v205 < 0.0)
      {
        v205 = v205 + 6.28318531;
      }

      v160 = v205 * 57.2957795;
      LOBYTE(v145) = 1;
      v149 = v204;
      goto LABEL_245;
    }

    ++v170;
    v174 += 16;
    ++v173;
    v172 = v172 + v175;
    if (v170 == v171)
    {
      goto LABEL_290;
    }
  }

  if (v173 < v145)
  {
    v180 = (*(v144 + 136) + v174);
    v146 = *(v180 - 1);
    v149 = *v180;
    v181 = *(v180 - 3);
    v182 = *(v180 - 2);
    *buf = 0;
    *&__y = 0;
    sub_19BA0BE88(a1 + 1, buf, &__y, &v227, v181, v182, 0.0, v146, v149, 0.0);
    v183 = *&__y;
    v184 = *buf;
    v185 = *(v144 + 136) + v174;
    v186 = *(v185 + 8);
    v187 = *(v185 + 16);
    *buf = 0;
    *&__y = 0;
    sub_19BA0BE88(a1 + 1, buf, &__y, &v227, v146, v149, 0.0, v186, v187, 0.0);
    v219 = *buf;
    v221 = *&__y;
    v188 = atan2(v183, v184);
    if (v188 < 0.0)
    {
      v188 = v188 + 6.28318531;
    }

    v189 = v188 * 57.2957795;
    v190 = atan2(v221, v219);
    if (v190 < 0.0)
    {
      v190 = v190 + 6.28318531;
    }

    sub_19B8B646C(v189, v190 * 57.2957795);
    v160 = v191;
    goto LABEL_305;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v198 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v198, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
  }

  v199 = sub_19B87DD40();
  if ((*(v199 + 160) & 0x80000000) == 0 || (*(v199 + 164) & 0x80000000) == 0 || (*(v199 + 168) & 0x80000000) == 0 || *(v199 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LOWORD(__y) = 0;
    v157 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", &__y, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v157);
    goto LABEL_241;
  }

LABEL_243:
  LOBYTE(v145) = 0;
  v146 = 0.0;
LABEL_244:
  v149 = 0.0;
  v160 = 0.0;
LABEL_245:
  if (v143)
  {
    sub_19B8750F8(v143);
  }

  if (v145)
  {
    memset(buf, 0, 24);
    *&buf[24] = 0x3FF0000000000000;
    *&buf[32] = 0u;
    v258 = 0u;
    v259 = 0;
    sub_19BA0BE88(a1 + 1, &buf[40], &buf[32], &v258, v146, v149, 0.0, v236, v235, 0.0);
    v161 = v160 >= 0.0 && v224;
    if (v161)
    {
      v162 = fmod(a8 - v160, 360.0);
      if (v162 < 0.0)
      {
        v162 = v162 + 360.0;
      }

      if (v162 > 180.0)
      {
        v162 = v162 + -360.0;
      }

      *(&v258 + 1) = fabs(v162);
    }

    sub_19B9C1C60(v251, buf);
    v163 = !v161;
    if ((a1[19] & 0xFFFFFFFE) != 2)
    {
      v163 = 1;
    }

    if ((v163 & 1) == 0)
    {
      __y = 0uLL;
      *&v247 = 0;
      *(&v247 + 1) = 0x3FF0000000000000;
      v250 = 0;
      v164 = fmod(v160 + 180.0, 360.0);
      if (v164 >= 0.0)
      {
        v165 = v164;
      }

      else
      {
        v165 = v164 + 360.0;
      }

      v248 = *&buf[32];
      *&v249 = v258;
      v166 = fmod(a8 - v165, 360.0);
      if (v166 < 0.0)
      {
        v166 = v166 + 360.0;
      }

      if (v166 > 180.0)
      {
        v166 = v166 + -360.0;
      }

      *(&v249 + 1) = fabs(v166);
      sub_19B9C1C60(v251, &__y);
      if (*&__y > *buf)
      {
        *&buf[32] = v248;
        v258 = v249;
        v259 = v250;
        *buf = __y;
        *&buf[16] = v247;
      }
    }

    operator new();
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v214 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    *&buf[4] = v225;
    _os_log_impl(&dword_19B873000, v214, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,interpolateOnRoad,interpolateProjections returned false", buf, 0xCu);
  }

  v215 = sub_19B87DD40();
  if ((*(v215 + 160) & 0x80000000) == 0 || (*(v215 + 164) & 0x80000000) == 0 || (*(v215 + 168) & 0x80000000) == 0 || *(v215 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LODWORD(__y) = 134349056;
    *(&__y + 4) = v225;
    v208 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,%{public}.1lf,interpolateOnRoad,interpolateProjections returned false", &__y, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::getSnapCandidates(const double, const double, const double, const double, const double, const double, const CLClientLocationReferenceFrame, std::vector<CLGeoMapSnapDataPtr> &, const BOOL)", "CoreLocation: %s\n", v208);
    goto LABEL_385;
  }

LABEL_387:
  *buf = &v240;
  sub_19B8F0E84(buf);
  v86 = 0;
LABEL_388:
  *buf = &p_y;
  sub_19B8F0E84(buf);
  *buf = &v228;
  sub_19B8F1C84(buf);
  v216 = HIBYTE(v239);
  *buf = &v231;
  sub_19B8F0E84(buf);
  if (v216)
  {
    goto LABEL_132;
  }

  return v86;
}

void sub_19B8EA974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t **a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    sub_19B8750F8(a65);
  }

  a28 = &a42;
  sub_19B8F0E84(&a28);
  a42 = &a45;
  sub_19B8F0E84(&a42);
  a59 = &a30;
  sub_19B8F1C84(&a59);
  a59 = &a33;
  sub_19B8F0E84(&a59);
  sub_19B888D7C(&a39);
  _Unwind_Resume(a1);
}

void **sub_19B8EAB68(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_19B8F0D38(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_19B8F10D0(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_19B8EAC7C(uint64_t a1, uint64_t *a2, void **a3, int a4)
{
  v45[2] = a1;
  (*(*a1 + 16))(a1);
  v46 = 256;
  if (!*a2)
  {
    v10 = 0;
    goto LABEL_70;
  }

  if (!sub_19B8E609C(a1, *a2, 0, a3))
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    if (*(a1 + 216) == 1 && ((Current = CFAbsoluteTimeGetCurrent(), v12 = *(*a2 + 144), v12 == *(*a2 + 136)) ? (v13 = 0.0, v14 = 0.0) : (v13 = *(v12 - 16), v14 = *(v12 - 8)), (sub_19B8E67BC(a1, 0, 1, 0, Current, v13, v14, *(a1 + 160)) & 1) == 0))
    {
      v10 = 0;
    }

    else
    {
      v15 = *(*a2 + 144);
      if (v15 == *(*a2 + 136))
      {
        v16 = 0.0;
        v17 = 0.0;
      }

      else
      {
        v16 = *(v15 - 16);
        v17 = *(v15 - 8);
      }

      sub_19B8E794C(a1, (a1 + 264), &v42, 1, v16, v17, *(a1 + 160));
      v18 = *(*a2 + 144);
      if (v18 == *(*a2 + 136))
      {
        v19 = 0.0;
        v20 = 0.0;
      }

      else
      {
        v19 = *(v18 - 16);
        v20 = *(v18 - 8);
      }

      sub_19B8E794C(a1, (a1 + 240), &v39, 1, v19, v20, *(a1 + 160));
      __p = 0;
      v37 = 0;
      v38 = 0;
      v35 = *(*a2 + 112);
      sub_19B8EB230(&__p, &v35);
      v21 = v42;
      v22 = v43;
      while (v21 != v22)
      {
        if (sub_19B9F6278(*a2, v21))
        {
          v35 = *(*v21 + 112);
          sub_19B8EB230(&__p, &v35);
        }

        if ((*(a1 + 152) & 0xFFFFFFFE) == 2 && sub_19B9F6340(*a2, v21))
        {
          v35 = *(*v21 + 108);
          sub_19B8EB230(&__p, &v35);
        }

        v21 += 2;
      }

      v23 = v39;
      v24 = v40;
      if (v39 != v40)
      {
        do
        {
          v25 = *v23;
          if (!*v23)
          {
            goto LABEL_52;
          }

          v26 = *a2;
          if (*v25 == **a2 && *(v25 + 8) == *(v26 + 8))
          {
            goto LABEL_52;
          }

          if (*(v26 + 17) != *(v25 + 17))
          {
            goto LABEL_52;
          }

          if (sub_19B9F6278(*a2, v23) && vabdd_f64(*(v26 + 128), *(v25 + 120)) < 1.0)
          {
            if (*(v26 + 117))
            {
              goto LABEL_51;
            }

            if ((~*(v26 + 112) & 0x7FFFFFFF) == 0)
            {
              goto LABEL_51;
            }

            if (*(v25 + 116))
            {
              goto LABEL_51;
            }

            v27 = *(v25 + 108);
            if ((~v27 & 0x7FFFFFFF) == 0)
            {
              goto LABEL_51;
            }

            for (i = __p; i != v37; ++i)
            {
              if (*i == v27)
              {
                goto LABEL_51;
              }
            }
          }

          if ((*(a1 + 152) & 0xFFFFFFFE) != 2 || !sub_19B9F6340(v26, v23) || vabdd_f64(*(v26 + 128), *(v25 + 128)) >= 1.0)
          {
            goto LABEL_52;
          }

          if ((*(v26 + 117) & 1) == 0 && (~*(v26 + 112) & 0x7FFFFFFF) != 0 && (*(v25 + 117) & 1) == 0)
          {
            v29 = *(v25 + 112);
            if ((~v29 & 0x7FFFFFFF) != 0)
            {
              for (j = __p; j != v37; ++j)
              {
                if (*j == v29)
                {
                  goto LABEL_51;
                }
              }

              goto LABEL_52;
            }
          }

LABEL_51:
          sub_19B8EAB68(a3, v23);
LABEL_52:
          v23 += 2;
        }

        while (v23 != v24);
      }

      sub_19B8E5E54(a1, *a2, 0, a3);
      if (a4)
      {
        v31 = *a2;
        v32 = a2[1];
        v34[0] = v31;
        v34[1] = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_19B8EB190(v34, a3);
        if (v32)
        {
          sub_19B8750F8(v32);
        }
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      v10 = 1;
    }

    __p = &v39;
    sub_19B8F0E84(&__p);
    v39 = &v42;
    sub_19B8F0E84(&v39);
    goto LABEL_70;
  }

  if (a4)
  {
    v8 = *a2;
    v9 = a2[1];
    v45[0] = v8;
    v45[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B8EB190(v45, a3);
    if (v9)
    {
      sub_19B8750F8(v9);
    }
  }

  ++*(a1 + 320);
  v10 = 1;
LABEL_70:
  (*(*a1 + 24))(a1);
  return v10;
}

void sub_19B8EB0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char **__p, char **a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a16;
  sub_19B8F0E84(&__p);
  a16 = &a19;
  sub_19B8F0E84(&a16);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void sub_19B8EB190(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    while (!sub_19B9F6128(*v2, a1))
    {
      v2 += 16;
      if (v2 == v3)
      {
        return;
      }
    }

    sub_19B8F1CF8(&v10, (v2 + 16), v3, v2);
    v7 = v6;
    v8 = a2[1];
    if (v8 != v6)
    {
      do
      {
        v9 = *(v8 - 8);
        if (v9)
        {
          sub_19B8750F8(v9);
        }

        v8 -= 16;
      }

      while (v8 != v7);
    }

    a2[1] = v7;
  }
}

void sub_19B8EB230(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_19B8B8A40();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_19B8F1D64(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_19B8EB310(uint64_t a1, uint64_t *a2, void **a3, int a4)
{
  v45[2] = a1;
  (*(*a1 + 16))(a1);
  v46 = 256;
  if (!*a2)
  {
    v10 = 0;
    goto LABEL_70;
  }

  if (!sub_19B8E609C(a1, *a2, 1u, a3))
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    if (*(a1 + 216) == 1 && ((Current = CFAbsoluteTimeGetCurrent(), v12 = *(*a2 + 136), *(*a2 + 144) == v12) ? (v13 = 0.0, v14 = 0.0) : (v13 = *v12, v14 = v12[1]), (sub_19B8E67BC(a1, 0, 1, 0, Current, v13, v14, *(a1 + 160)) & 1) == 0))
    {
      v10 = 0;
    }

    else
    {
      v15 = *(*a2 + 136);
      if (*(*a2 + 144) == v15)
      {
        v16 = 0.0;
        v17 = 0.0;
      }

      else
      {
        v16 = *v15;
        v17 = v15[1];
      }

      sub_19B8E794C(a1, (a1 + 264), &v42, 1, v16, v17, *(a1 + 160));
      v18 = *(*a2 + 136);
      if (*(*a2 + 144) == v18)
      {
        v19 = 0.0;
        v20 = 0.0;
      }

      else
      {
        v19 = *v18;
        v20 = v18[1];
      }

      sub_19B8E794C(a1, (a1 + 240), &v39, 1, v19, v20, *(a1 + 160));
      __p = 0;
      v37 = 0;
      v38 = 0;
      v35 = *(*a2 + 108);
      sub_19B8EB230(&__p, &v35);
      v21 = v42;
      v22 = v43;
      while (v21 != v22)
      {
        if (sub_19B9F6214(*a2, v21))
        {
          v35 = *(*v21 + 108);
          sub_19B8EB230(&__p, &v35);
        }

        if ((*(a1 + 152) & 0xFFFFFFFE) == 2 && sub_19B9F62DC(*a2, v21))
        {
          v35 = *(*v21 + 112);
          sub_19B8EB230(&__p, &v35);
        }

        v21 += 2;
      }

      v23 = v39;
      v24 = v40;
      if (v39 != v40)
      {
        do
        {
          v25 = *v23;
          if (!*v23)
          {
            goto LABEL_52;
          }

          v26 = *a2;
          if (*v25 == **a2 && *(v25 + 8) == *(v26 + 8))
          {
            goto LABEL_52;
          }

          if (*(v26 + 17) != *(v25 + 17))
          {
            goto LABEL_52;
          }

          if (sub_19B9F6214(*a2, v23) && vabdd_f64(*(v26 + 120), *(v25 + 128)) < 1.0)
          {
            if (*(v26 + 116))
            {
              goto LABEL_51;
            }

            if ((~*(v26 + 108) & 0x7FFFFFFF) == 0)
            {
              goto LABEL_51;
            }

            if (*(v25 + 117))
            {
              goto LABEL_51;
            }

            v27 = *(v25 + 112);
            if ((~v27 & 0x7FFFFFFF) == 0)
            {
              goto LABEL_51;
            }

            for (i = __p; i != v37; ++i)
            {
              if (*i == v27)
              {
                goto LABEL_51;
              }
            }
          }

          if ((*(a1 + 152) & 0xFFFFFFFE) != 2 || !sub_19B9F62DC(v26, v23) || vabdd_f64(*(v26 + 120), *(v25 + 120)) >= 1.0)
          {
            goto LABEL_52;
          }

          if ((*(v26 + 116) & 1) == 0 && (~*(v26 + 108) & 0x7FFFFFFF) != 0 && (*(v25 + 116) & 1) == 0)
          {
            v29 = *(v25 + 108);
            if ((~v29 & 0x7FFFFFFF) != 0)
            {
              for (j = __p; j != v37; ++j)
              {
                if (*j == v29)
                {
                  goto LABEL_51;
                }
              }

              goto LABEL_52;
            }
          }

LABEL_51:
          sub_19B8EAB68(a3, v23);
LABEL_52:
          v23 += 2;
        }

        while (v23 != v24);
      }

      sub_19B8E5E54(a1, *a2, 1, a3);
      if (a4)
      {
        v31 = *a2;
        v32 = a2[1];
        v34[0] = v31;
        v34[1] = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_19B8EB190(v34, a3);
        if (v32)
        {
          sub_19B8750F8(v32);
        }
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      v10 = 1;
    }

    __p = &v39;
    sub_19B8F0E84(&__p);
    v39 = &v42;
    sub_19B8F0E84(&v39);
    goto LABEL_70;
  }

  if (a4)
  {
    v8 = *a2;
    v9 = a2[1];
    v45[0] = v8;
    v45[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B8EB190(v45, a3);
    if (v9)
    {
      sub_19B8750F8(v9);
    }
  }

  ++*(a1 + 320);
  v10 = 1;
LABEL_70:
  (*(*a1 + 24))(a1);
  return v10;
}

void sub_19B8EB78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char **__p, char **a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a16;
  sub_19B8F0E84(&__p);
  a16 = &a19;
  sub_19B8F0E84(&a16);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8EB824(uint64_t a1, void *a2, const void **a3, uint8_t *a4, int a5, double a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = a1;
  (*(*a1 + 16))(a1);
  v25 = 256;
  sub_19B8EBC04(a3);
  sub_19B8EBC04(a4);
  if (!*a2)
  {
    v14 = 0;
    goto LABEL_40;
  }

  v12 = a2[1];
  *&v23 = *a2;
  *(&v23 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = 150;
  do
  {
    v14 = 0;
    if (!v23 || a6 <= 0.0)
    {
      goto LABEL_38;
    }

    *buf = 0;
    v28 = 0;
    v29 = 0;
    if (a5)
    {
      if ((sub_19B8EAC7C(a1, &v23, buf, 1) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (!sub_19B8EB310(a1, &v23, buf, 1))
    {
LABEL_31:
      v14 = 0;
LABEL_36:
      sub_19B8EBC04(a3);
LABEL_37:
      v26[0] = buf;
      sub_19B8F0E84(v26);
      goto LABEL_38;
    }

    sub_19B8EAB68(a3, &v23);
    v15 = (v28 - *buf) >> 4;
    if (v15 >= 2)
    {
      if (buf != a4)
      {
        sub_19B8F1DAC(a4, *buf, v28, v15);
      }

      v14 = 1;
      goto LABEL_37;
    }

    if (*buf == v28)
    {
      v14 = 1;
      a3 = a4;
      goto LABEL_36;
    }

    v17 = **buf;
    v16 = *(*buf + 8);
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(&v23 + 1);
    *&v23 = v17;
    *(&v23 + 1) = v16;
    if (v18)
    {
      sub_19B8750F8(v18);
      v17 = v23;
    }

    sub_19B9F5AA8(v17);
    a6 = a6 - v17[5];
    v26[0] = buf;
    sub_19B8F0E84(v26);
    --v13;
  }

  while (v13);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v19 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,findAllRoadsUntilTheMultiIntersectionFromThisRoad,exceeded maximum tolerable road search count. Discovered roads may be limited", buf, 2u);
  }

  v20 = sub_19B87DD40();
  if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LOWORD(v26[0]) = 0;
    v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,findAllRoadsUntilTheMultiIntersectionFromThisRoad,exceeded maximum tolerable road search count. Discovered roads may be limited", v26, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::findAllRoadsUntilTheMultiIntersectionFromThisRoad(const CLMapRoadPtr, std::vector<CLMapRoadPtr> &, std::vector<CLMapRoadPtr> &, const BOOL, double)", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  v14 = 0;
LABEL_38:
  if (*(&v23 + 1))
  {
    sub_19B8750F8(*(&v23 + 1));
  }

LABEL_40:
  (*(*a1 + 24))(a1);
  return v14;
}

void sub_19B8EBBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, char a19)
{
  a17 = &a19;
  sub_19B8F0E84(&a17);
  if (a13)
  {
    sub_19B8750F8(a13);
  }

  sub_19B888D7C(&a14);
  _Unwind_Resume(a1);
}

void sub_19B8EBC04(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_19B8750F8(v4);
    }
  }

  a1[1] = v2;
}

uint64_t *sub_19B8EBC50(uint64_t *result, uint64_t a2)
{
  v3 = result + 1;
  v2 = *result;
  if (*result != result + 1)
  {
    v5 = result;
    do
    {
      if (sub_19B8F07E0(a2, v2 + 4))
      {
        v6 = v2[1];
        if (v6)
        {
          do
          {
            result = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            result = v2[2];
            v7 = *result == v2;
            v2 = result;
          }

          while (!v7);
        }
      }

      else
      {
        result = sub_19B8F3444(v5, v2);
      }

      v2 = result;
    }

    while (result != v3);
  }

  return result;
}

__n128 sub_19B8EBD00(__n128 *a1, __n128 *a2)
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

void sub_19B8EBD50(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a1[6];
    v3 = a2;
    if (v3)
    {
      v7 = v3;
      v8 = *(v2 + 152);
      if (v8 == 1)
      {
        if (objc_msgSend_isDrivable(v3, v4, v5, v6))
        {
          goto LABEL_15;
        }

        v8 = *(v2 + 152);
      }

      if (v8 == 2)
      {
        isRoadPedestrianNavigable = objc_msgSend_isRoadPedestrianNavigable(v7, v4, v5, v6);
        v13 = objc_msgSend_walkableSide(v7, v10, v11, v12);
        isRail = objc_msgSend_isRail(v7, v14, v15, v16);
        if ((((v13 - 1) > 2) & ~isRoadPedestrianNavigable) == 0 && !isRail)
        {
          goto LABEL_15;
        }

        v8 = *(v2 + 152);
      }

      if (v8 == 3)
      {
        if ((v18 = objc_msgSend_isRoadPedestrianNavigable(v7, v4, v5, v6), v22 = objc_msgSend_walkableSide(v7, v19, v20, v21), v26 = objc_msgSend_isRail(v7, v23, v24, v25), (((v22 - 1) > 2) & ~v18) == 0) && !v26 || (v30 = objc_msgSend_bikeableSide(v7, v27, v28, v29), (objc_msgSend_isRail(v7, v31, v32, v33) & 1) == 0) && (v30 - 4) >= 0xFFFFFFFD)
        {
LABEL_15:
          sub_19B8F30F0();
        }
      }
    }
  }
}

void sub_19B8EBF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8EBF3C(uint64_t a1, void *a2)
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      *v84 = objc_msgSend_code(a2, v6, v7, v8);
      *&v84[8] = 2114;
      *v85 = objc_msgSend_domain(a2, v9, v10, v11);
      *&v85[8] = 2113;
      *v86 = objc_msgSend_localizedDescription(a2, v12, v13, v14);
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,Roads,Warning,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v22 = off_1EAFE4708;
      v63 = 134349571;
      *v64 = objc_msgSend_code(a2, v19, v20, v21);
      *&v64[8] = 2114;
      *v65 = objc_msgSend_domain(a2, v23, v24, v25);
      *&v65[8] = 2113;
      *v66 = objc_msgSend_localizedDescription(a2, v26, v27, v28);
      v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v22, 0, "CLMM,CLTSP,Roads,Warning,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", &v63, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)_block_invoke", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    *(v4 + 120) = vadd_s32(*(v4 + 120), 0x100000001);
  }

  else
  {
    v31 = *(a1 + 64);
    v30 = *(a1 + 72);
    v32 = *(a1 + 80);
    v33 = *(a1 + 88);
    if (sub_19B8E7710(v31, v30, v32, v33))
    {
      *(v4 + 56) = v31;
      *(v4 + 64) = v32;
      *(v4 + 72) = v33;
      *(v4 + 80) = v30;
    }

    *(v4 + 124) = 0;
  }

  if (*(a1 + 72) > 0.5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v34 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(v4 + 280) + *(v4 + 256);
      v36 = *(*(*(a1 + 32) + 8) + 24);
      v37 = 0.0;
      if (*(a1 + 96) >= 0.0)
      {
        v38 = mach_continuous_time();
        v37 = vabdd_f64(sub_19B994BF4(v38), *(a1 + 96)) * 1000.0;
      }

      v40 = *(a1 + 80);
      v39 = *(a1 + 88);
      v41 = *(a1 + 72);
      v42 = *(v4 + 320);
      v44 = *(v4 + 112);
      v43 = *(v4 + 116);
      v45 = *(v4 + 120);
      v46 = *(v4 + 124);
      *buf = 67243009;
      *v84 = v35;
      *&v84[4] = 1026;
      *&v84[6] = v36;
      *v85 = 2050;
      *&v85[2] = v37;
      *v86 = 2053;
      *&v86[2] = v40;
      v87 = 2053;
      v88 = v39;
      v89 = 2050;
      v90 = v41;
      v91 = 1026;
      v92 = a2 != 0;
      v93 = 1026;
      v94 = v43;
      v95 = 2050;
      v96 = v42;
      v97 = 1026;
      v98 = v44;
      v99 = 1026;
      v100 = v45;
      v101 = 1026;
      v102 = v46;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,bufferDataUsingMapsAPI,roadCount,%{public}d,sizeOfRoad,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,connectionBufferUsedCount,%{public}lu,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d", buf, 0x5Eu);
    }

    v47 = sub_19B87DD40();
    if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v48 = off_1EAFE4708;
      v49 = *(v4 + 280) + *(v4 + 256);
      v50 = *(*(*(a1 + 32) + 8) + 24);
      v51 = 0.0;
      if (*(a1 + 96) >= 0.0)
      {
        v52 = mach_continuous_time();
        v51 = vabdd_f64(sub_19B994BF4(v52), *(a1 + 96)) * 1000.0;
      }

      v54 = *(a1 + 80);
      v53 = *(a1 + 88);
      v55 = *(a1 + 72);
      v56 = *(v4 + 320);
      v58 = *(v4 + 112);
      v57 = *(v4 + 116);
      v59 = *(v4 + 120);
      v60 = *(v4 + 124);
      v63 = 67243009;
      *v64 = v49;
      *&v64[4] = 1026;
      *&v64[6] = v50;
      *v65 = 2050;
      *&v65[2] = v51;
      *v66 = 2053;
      *&v66[2] = v54;
      v67 = 2053;
      v68 = v53;
      v69 = 2050;
      v70 = v55;
      v71 = 1026;
      v72 = a2 != 0;
      v73 = 1026;
      v74 = v57;
      v75 = 2050;
      v76 = v56;
      v77 = 1026;
      v78 = v58;
      v79 = 1026;
      v80 = v59;
      v81 = 1026;
      v82 = v60;
      v61 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v48, 2, "CLMM,CLTSP,Roads,bufferDataUsingMapsAPI,roadCount,%{public}d,sizeOfRoad,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,connectionBufferUsedCount,%{public}lu,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d", &v63, 94);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)_block_invoke", "CoreLocation: %s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }
  }

  if (*(a1 + 104) == 1)
  {
    objc_msgSend_clearRoadTiles(*(v4 + 88), v16, v17, v18);
  }

  v62 = *(*(a1 + 40) + 8);
  if (v4 + 328 != v62 + 48)
  {
    sub_19B8F1DAC((v4 + 328), *(v62 + 48), *(v62 + 56), (*(v62 + 56) - *(v62 + 48)) >> 4);
  }

  *(v4 + 224) = 0;
  if (*(a1 + 105) == 1)
  {
    dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_19B8EC534(uint64_t a1, void *a2)
{
  v114 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  ++*(v4 + 116);
  v75[0] = 0;
  v75[1] = 0;
  v73 = 0;
  v74 = v75;
  v71 = 0;
  v72 = 0;
  if (a2)
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    if (sub_19B8E7710(v6, v5, v7, v8))
    {
      *(v4 + 56) = v6;
      *(v4 + 64) = v7;
      *(v4 + 72) = v8;
      *(v4 + 80) = v5;
    }

    *(v4 + 124) = 0;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v9, &v67, v113, 16);
    if (v10)
    {
      v11 = *v68;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v68 != v11)
          {
            objc_enumerationMutation(a2);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_19B8F30F0();
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v13, &v67, v113, 16);
      }

      while (v10);
    }

    if ((v4 + 328) != &v71)
    {
      sub_19B8F1DAC((v4 + 328), v71, v72, (v72 - v71) >> 4);
    }
  }

  else
  {
    *(v4 + 120) = vadd_s32(*(v4 + 120), 0x100000001);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 64);
      v15 = *(a1 + 72);
      v17 = *(a1 + 56);
      v19 = *(v4 + 112);
      v18 = *(v4 + 116);
      v20 = *(v4 + 120);
      v21 = *(v4 + 124);
      v22 = *(a1 + 88);
      *buf = 134547457;
      *&buf[4] = v16;
      *&buf[12] = 2053;
      *v96 = v15;
      *&v96[8] = 2050;
      *v97 = v17;
      *&v97[8] = 1026;
      *v98 = v18;
      *&v98[4] = 1026;
      *&v98[6] = v19;
      v99 = 1026;
      *v100 = v20;
      *&v100[4] = 1026;
      *&v100[6] = v21;
      *v101 = 1026;
      *&v101[2] = v22;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Roads,queryForRoadsWithinDistance returned,xpcError,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,apiCalls,%{public}d,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", buf, 0x3Eu);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v25 = *(a1 + 64);
      v24 = *(a1 + 72);
      v26 = *(a1 + 56);
      v28 = *(v4 + 112);
      v27 = *(v4 + 116);
      v29 = *(v4 + 120);
      v30 = *(v4 + 124);
      v31 = *(a1 + 88);
      v76 = 134547457;
      *v77 = v25;
      *&v77[8] = 2053;
      *v78 = v24;
      *&v78[8] = 2050;
      *v79 = v26;
      *&v79[8] = 1026;
      *v80 = v27;
      *&v80[4] = 1026;
      *&v80[6] = v28;
      v81 = 1026;
      *v82 = v29;
      *&v82[4] = 1026;
      *&v82[6] = v30;
      *v83 = 1026;
      *&v83[2] = v31;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Roads,queryForRoadsWithinDistance returned,xpcError,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,apiCalls,%{public}d,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", &v76, 62);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  *(v4 + 224) = 0;
  if (*(a1 + 56) > *(v4 + 160))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v33 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v37 = objc_msgSend_count(a2, v34, v35, v36);
      }

      else
      {
        v37 = 0;
      }

      v38 = 0.0;
      if (*(a1 + 80) >= 0.0)
      {
        v39 = mach_continuous_time();
        v38 = vabdd_f64(sub_19B994BF4(v39), *(a1 + 80)) * 1000.0;
      }

      v41 = *(a1 + 64);
      v40 = *(a1 + 72);
      v42 = *(a1 + 56);
      v43 = *(v4 + 320);
      v45 = *(v4 + 112);
      v44 = *(v4 + 116);
      v46 = *(v4 + 120);
      v47 = *(v4 + 124);
      v48 = *(a1 + 88);
      *buf = 67243265;
      *&buf[4] = v37;
      *&buf[8] = 1026;
      *&buf[10] = 0;
      *v96 = 2050;
      *&v96[2] = v38;
      *v97 = 2053;
      *&v97[2] = v41;
      *v98 = 2053;
      *&v98[2] = v40;
      v99 = 2050;
      *v100 = v42;
      *&v100[8] = 1026;
      *v101 = a2 == 0;
      *&v101[4] = 1026;
      v102 = v44;
      v103 = 2050;
      v104 = v43;
      v105 = 1026;
      v106 = v45;
      v107 = 1026;
      v108 = v46;
      v109 = 1026;
      v110 = v47;
      v111 = 1026;
      v112 = v48;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,MapHelperService,roadCount,%{public}d,sizeOfRoad,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,connectionBufferUsedCount,%{public}lu,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", buf, 0x64u);
    }

    v49 = sub_19B87DD40();
    if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v53 = off_1EAFE4708;
      if (a2)
      {
        v54 = objc_msgSend_count(a2, v50, v51, v52);
      }

      else
      {
        v54 = 0;
      }

      v55 = 0.0;
      if (*(a1 + 80) >= 0.0)
      {
        v56 = mach_continuous_time();
        v55 = vabdd_f64(sub_19B994BF4(v56), *(a1 + 80)) * 1000.0;
      }

      v58 = *(a1 + 64);
      v57 = *(a1 + 72);
      v59 = *(a1 + 56);
      v60 = *(v4 + 320);
      v62 = *(v4 + 112);
      v61 = *(v4 + 116);
      v63 = *(v4 + 120);
      v64 = *(v4 + 124);
      v65 = *(a1 + 88);
      v76 = 67243265;
      *v77 = v54;
      *&v77[4] = 1026;
      *&v77[6] = 0;
      *v78 = 2050;
      *&v78[2] = v55;
      *v79 = 2053;
      *&v79[2] = v58;
      *v80 = 2053;
      *&v80[2] = v57;
      v81 = 2050;
      *v82 = v59;
      *&v82[8] = 1026;
      *v83 = a2 == 0;
      *&v83[4] = 1026;
      v84 = v61;
      v85 = 2050;
      v86 = v60;
      v87 = 1026;
      v88 = v62;
      v89 = 1026;
      v90 = v63;
      v91 = 1026;
      v92 = v64;
      v93 = 1026;
      v94 = v65;
      v66 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v53, 2, "CLMM,CLTSP,Roads,MapHelperService,roadCount,%{public}d,sizeOfRoad,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,connectionBufferUsedCount,%{public}lu,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", &v76, 100);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v66);
      if (v66 != buf)
      {
        free(v66);
      }
    }
  }

  *buf = &v71;
  sub_19B8F0E84(buf);
  sub_19B8F3484(&v74, v75[0]);
}

void sub_19B8ECD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39)
{
  a39 = &a19;
  sub_19B8F0E84(&a39);
  sub_19B8F3484(&a22, a23);
  _Unwind_Resume(a1);
}

void *sub_19B8ECD8C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

void sub_19B8ECDD4(uint64_t a1, uint64_t **a2, char **a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = *a3;
    v7 = *v3;
    v8 = a3[1] - *a3;
    if (v8)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      while (**v6 != v7 || *(*v6 + 8) != v3[1])
      {
        v6 += 48;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v63[0] = *(a1 + 16);
      v10 = sub_19B8F35D8(a2, v7, v3[1], v63);
      v12 = v10[6];
      v11 = v10[7];
      v54 = v12;
      v55 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v10[9];
      v56 = v10[8];
      v57 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v10[11];
      v58 = v10[10];
      v59 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *a3;
      v15 = a3[1];
      v17 = a3[2];
      if (v15 >= v17)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 4) + 1;
        if (v20 <= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 4);
          if (2 * v21 > v20)
          {
            v20 = 2 * v21;
          }

          if (v21 >= 0x2AAAAAAAAAAAAAALL)
          {
            v22 = 0x555555555555555;
          }

          else
          {
            v22 = v20;
          }

          v62 = a3;
          if (v22)
          {
            sub_19B8F2148(v22);
          }

          v60 = 0u;
          v61 = 0u;
          v63[4] = a3;
          sub_19B8F2148(1uLL);
        }

        sub_19B8B8A40();
      }

      if (v16 == v15)
      {
        *v15 = v12;
        v23 = v55;
        *(v15 + 1) = v55;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v15 + 2) = v56;
        v24 = v57;
        *(v15 + 3) = v57;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v15 + 4) = v58;
        v25 = v59;
        *(v15 + 5) = v59;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        a3[1] = v15 + 48;
      }

      else
      {
        v18 = v15 - 48;
        if (v15 < 0x30)
        {
          v19 = a3[1];
        }

        else
        {
          v19 = v15 + 48;
          *v15 = *v18;
          *v18 = 0;
          *(v15 - 5) = 0;
          *(v15 + 1) = *(v15 - 2);
          *(v15 - 4) = 0;
          *(v15 - 3) = 0;
          *(v15 + 2) = *(v15 - 1);
          *(v15 - 2) = 0;
          *(v15 - 1) = 0;
        }

        a3[1] = v19;
        if (v15 != v16 + 48)
        {
          v26 = v16 - v15 + 48;
          v27 = v15 - 96;
          v28 = v15 - 24;
          do
          {
            v29 = *v27;
            *v27 = 0;
            *(v27 + 1) = 0;
            v30 = *(v28 - 2);
            *(v28 - 24) = v29;
            if (v30)
            {
              sub_19B8750F8(v30);
            }

            v31 = *(v27 + 1);
            *(v27 + 2) = 0;
            *(v27 + 3) = 0;
            v32 = *v28;
            *(v28 - 8) = v31;
            if (v32)
            {
              sub_19B8750F8(v32);
            }

            v33 = *(v27 + 2);
            *(v27 + 4) = 0;
            *(v27 + 5) = 0;
            v34 = *(v28 + 2);
            *(v28 + 8) = v33;
            if (v34)
            {
              sub_19B8750F8(v34);
            }

            v27 -= 48;
            v28 -= 48;
            v26 += 48;
          }

          while (v26);
          v19 = a3[1];
        }

        v35 = v16 <= &v54;
        v36 = v19 > &v54;
        v38 = v35 && v36;
        v37 = !v35 || !v36;
        v39 = 48;
        if (v37)
        {
          v39 = 0;
        }

        v40 = *(&v54 + v39);
        v41 = 8;
        if (!v37)
        {
          v41 = 56;
        }

        v42 = *(&v54 + v41);
        if (v42)
        {
          atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
        }

        v43 = *(v16 + 1);
        *v16 = v40;
        *(v16 + 1) = v42;
        if (v43)
        {
          sub_19B8750F8(v43);
        }

        v44 = 16;
        if (v38)
        {
          v44 = 64;
        }

        v45 = *(&v54 + v44);
        v46 = 24;
        if (v38)
        {
          v46 = 72;
        }

        v47 = *(&v54 + v46);
        if (v47)
        {
          atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
        }

        v48 = *(v16 + 3);
        *(v16 + 2) = v45;
        *(v16 + 3) = v47;
        if (v48)
        {
          sub_19B8750F8(v48);
        }

        v49 = 32;
        if (v38)
        {
          v49 = 80;
        }

        v50 = *(&v54 + v49);
        v51 = 40;
        if (v38)
        {
          v51 = 88;
        }

        v52 = *(&v54 + v51);
        if (v52)
        {
          atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
        }

        v53 = *(v16 + 5);
        *(v16 + 4) = v50;
        *(v16 + 5) = v52;
        if (v53)
        {
          sub_19B8750F8(v53);
        }
      }

      sub_19B8ECDD4(&v54, a2, a3);
      if (v59)
      {
        sub_19B8750F8(v59);
      }

      if (v57)
      {
        sub_19B8750F8(v57);
      }

      if (v55)
      {
        sub_19B8750F8(v55);
      }
    }
  }
}

void sub_19B8ED2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_19B8F2278(va);
  sub_19B8ECD8C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8ED318(unint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    if (v7 + 1 > 0x555555555555555)
    {
      sub_19B8B8A40();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      sub_19B8F2148(v10);
    }

    v11 = 48 * v7;
    sub_19B8F20FC(v11, a2);
    v6 = v11 + 48;
    v12 = a1[1];
    v13 = (v11 + *a1 - v12);
    sub_19B8F21A0(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11 + 48;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_19B8F2278(v16);
  }

  else
  {
    result = sub_19B8F20FC(v3, a2);
    v6 = result + 48;
  }

  a1[1] = v6;
  return result;
}

void sub_19B8ED434(uint64_t a1, uint64_t **a2, unint64_t *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v6 = *a3;
    v7 = *v3;
    v8 = a3[1] - *a3;
    if (v8)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      while (**v6 != v7 || *(*v6 + 8) != v3[1])
      {
        v6 += 48;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v15 = *(a1 + 32);
      v10 = sub_19B8F35D8(a2, v7, v3[1], &v15);
      v11 = v10[7];
      v14[0] = v10[6];
      v14[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v10[9];
      v14[2] = v10[8];
      v14[3] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v10[11];
      v14[4] = v10[10];
      v14[5] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_19B8ED318(a3, v14);
      sub_19B8ED434(v14, a2, a3);
      if (v13)
      {
        sub_19B8750F8(v13);
      }

      if (v12)
      {
        sub_19B8750F8(v12);
      }

      if (v11)
      {
        sub_19B8750F8(v11);
      }
    }
  }
}

void sub_19B8ED568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8ECD8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8ED57C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  (*(*a1 + 16))(a1);
  v8 = *a2;
  v9 = *(a2 + 8);
  if (*a2 != v9)
  {
    v10 = -1.0;
    do
    {
      v11 = *v8;
      if (*v8)
      {
        v12 = *a3;
        if (a4 >= 0.0 && v12 != 0 && v10 >= 0.0)
        {
          v14 = *v12;
          if (*v12)
          {
            if ((*(v14 + 17) & 1) != 0 || !*(v14 + 72))
            {
              if (sub_19B9F6128(*v11, v12))
              {
                v15 = fmod(*(v11 + 40) - a4, 360.0);
                if (v15 < 0.0)
                {
                  v15 = v15 + 360.0;
                }

                if (v15 > 180.0)
                {
                  v15 = v15 + -360.0;
                }

                if (fabs(v15) >= 90.0)
                {
                  goto LABEL_26;
                }

LABEL_21:
                v16 = v8[1];
                if (v16)
                {
                  atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
                }

                v17 = *(a3 + 8);
                *a3 = v11;
                *(a3 + 8) = v16;
                if (v17)
                {
                  sub_19B8750F8(v17);
                }

                v10 = *(*v8 + 56);
                goto LABEL_26;
              }
            }
          }
        }

        if (v10 < 0.0 || *(v11 + 56) > v10)
        {
          goto LABEL_21;
        }
      }

LABEL_26:
      v8 += 2;
    }

    while (v8 != v9);
  }

  v18 = *a3;
  if (*a3 && (v19 = *(v18 + 7), v19 > 0.0))
  {
    v20 = 1;
    *(v18 + 64) = 1;
    v21 = *a2;
    v22 = *(a2 + 8);
    if (*a2 != v22)
    {
      do
      {
        if (*v21)
        {
          *(*v21 + 112) = *(*v21 + 56) / v19;
        }

        v21 += 2;
      }

      while (v21 != v22);
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  (*(*a1 + 24))(a1);
  return v20;
}

uint64_t sub_19B8ED778(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_19B8EAC7C(a1, a2, &v8, a4);
  v5 = v8;
  if (v8 == v9)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    while (**v5 != **a3 || *(*v5 + 8) != *(*a3 + 8))
    {
      v5 += 16;
      if (v5 == v9)
      {
        goto LABEL_5;
      }
    }

    v6 = 1;
  }

  v11 = &v8;
  sub_19B8F0E84(&v11);
  return v6;
}

void sub_19B8ED814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B8F0E84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8ED82C(uint64_t a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v102 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  ++*(a1 + 112);
  if ((a2 & 1) == 0 && !sub_19B8E7644((a1 + 56), (a1 + 16), *(a1 + 217), a5, a6, a7))
  {
    goto LABEL_92;
  }

  *buf = a7;
  v14 = (a1 + 176);
  v15 = (a1 + 184);
  if (*(a1 + 184) >= a7)
  {
    v15 = buf;
  }

  if (*(a1 + 176) <= a7)
  {
    v14 = v15;
  }

  v16 = *v14;
  if (!sub_19B8E7710(a4, *v14, a5, a6))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349825;
      *&buf[4] = a4;
      *&buf[12] = 2053;
      *&buf[14] = a5;
      *&buf[22] = 2053;
      v95 = a6;
      LOWORD(v96) = 2050;
      *(&v96 + 2) = v16;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Buildings,%{public}.1lf,cacheRoadData,invalid input,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf", buf, 0x2Au);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v82 = 134349825;
      *&v82[4] = a4;
      *&v82[12] = 2053;
      *&v82[14] = a5;
      *&v82[22] = 2053;
      v83 = a6;
      LOWORD(v84) = 2050;
      *(&v84 + 2) = v16;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Buildings,%{public}.1lf,cacheRoadData,invalid input,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf", v82, 42);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::bufferMapData(const CFAbsoluteTime, const double, const double, const double, const BOOL, const BOOL)", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    v33 = 0;
    goto LABEL_93;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v17 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 112);
    v18 = *(a1 + 116);
    v20 = *(a1 + 224);
    *buf = 134350593;
    *&buf[4] = a4;
    *&buf[12] = 2053;
    *&buf[14] = a5;
    *&buf[22] = 2053;
    v95 = a6;
    LOWORD(v96) = 2050;
    *(&v96 + 2) = v16;
    WORD5(v96) = 1026;
    HIDWORD(v96) = v18;
    LOWORD(v97) = 1026;
    *(&v97 + 2) = v19;
    HIWORD(v97) = 1026;
    LODWORD(v98) = v20;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Buildings,%{public}.1lf,buffering map data,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,mapsAPICalls,%{public}d,bufferCalls,%{public}d,queryInProgress,%{public}d", buf, 0x3Cu);
  }

  v21 = sub_19B87DD40();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v23 = *(a1 + 112);
    v22 = *(a1 + 116);
    v24 = *(a1 + 224);
    *v82 = 134350593;
    *&v82[4] = a4;
    *&v82[12] = 2053;
    *&v82[14] = a5;
    *&v82[22] = 2053;
    v83 = a6;
    LOWORD(v84) = 2050;
    *(&v84 + 2) = v16;
    WORD5(v84) = 1026;
    HIDWORD(v84) = v22;
    LOWORD(v85) = 1026;
    *(&v85 + 2) = v23;
    HIWORD(v85) = 1026;
    LODWORD(v86) = v24;
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,CLTSP,Buildings,%{public}.1lf,buffering map data,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,mapsAPICalls,%{public}d,bufferCalls,%{public}d,queryInProgress,%{public}d", v82, 60);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::bufferMapData(const CFAbsoluteTime, const double, const double, const double, const BOOL, const BOOL)", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  (*(*a1 + 16))(a1);
  if (*(a1 + 169) == 1)
  {
    v26 = *(a1 + 224);
    if (v26 == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v27 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_INFO, "CLMM,CLTSP,building data query already in progress using XPC", buf, 2u);
      }

      v28 = sub_19B87DD40();
      if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
        }

        *v82 = 0;
        v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,CLTSP,building data query already in progress using XPC", v82, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)", "CoreLocation: %s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }
    }

    else
    {
      v38 = *(a1 + 192);
      v67[0] = a1;
      (*(*a1 + 16))(a1);
      LOWORD(v68) = 256;
      v39 = mach_continuous_time();
      v40 = sub_19B994BF4(v39);
      v41 = objc_autoreleasePoolPush();
      ++*(a1 + 116);
      *v82 = 0;
      *&v82[8] = v82;
      *&v82[16] = 0x2020000000;
      LOBYTE(v83) = 0;
      v42 = CLLocationCoordinate2DMake(a5, a6);
      *(a1 + 224) = 1;
      v46 = objc_msgSend_sharedInstance(CLMapsXPCServiceManager, v43, v44, v45);
      if (*(a1 + 220) == 1)
      {
        v48 = 2;
      }

      else
      {
        v48 = 1;
      }

      v49 = *(a1 + 193);
      v50 = (*(a1 + 152) & 0xFFFFFFFE) == 2;
      v51 = *(a1 + 216);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_19B8EF530;
      v95 = COERCE_DOUBLE(&unk_1E753D800);
      v97 = a4;
      v98 = v16;
      v99 = a5;
      v100 = a6;
      *&v96 = v82;
      *(&v96 + 1) = a1;
      v101 = v40;
      objc_msgSend_collectMapDataOfType_aroundCoordinate_inRadius_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_callSynchronously_WithReply_(v46, v47, v48, v38, v49, v50, a3, v51, v42.latitude, v42.longitude, v16, buf);
      _Block_object_dispose(v82, 8);
      objc_autoreleasePoolPop(v41);
      (*(*a1 + 24))(a1);
    }

    v33 = v26 ^ 1u;
    goto LABEL_91;
  }

  if (!*(a1 + 88))
  {
    v33 = 0;
    goto LABEL_91;
  }

  v79 = a1;
  (*(*a1 + 16))(a1);
  v81 = 256;
  if (!*(a1 + 88))
  {
    goto LABEL_61;
  }

  if (*(a1 + 224) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v34 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_INFO, "CLMM,CLTSP,building data query already in progress using maps API", buf, 2u);
    }

    v35 = sub_19B87DD40();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v82 = 0;
      v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,CLTSP,building data query already in progress using maps API", v82, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

LABEL_61:
    v33 = 0;
    v37 = a1;
    goto LABEL_62;
  }

  v52 = mach_continuous_time();
  v53 = sub_19B994BF4(v52);
  v55 = objc_autoreleasePoolPush();
  v73 = 0;
  v74 = &v73;
  v75 = 0x3052000000;
  v76 = sub_19B8EBCE4;
  v77 = sub_19B8EBCF4;
  v78 = 0;
  v56 = *(a1 + 216);
  if (v56 == 1)
  {
    v74[5] = dispatch_semaphore_create(0);
  }

  v67[0] = 0;
  v67[1] = v67;
  v68 = 0x4812000000;
  v69 = sub_19B8EEC1C;
  v70 = sub_19B8EEC40;
  v71 = "";
  memset(v72, 0, sizeof(v72));
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v66 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = sub_19B8EEC6C;
  v64[3] = &unk_1E753D7D8;
  v64[4] = v67;
  v64[5] = v65;
  *v82 = MEMORY[0x1E69E9820];
  *&v82[8] = 3221225472;
  *&v82[16] = sub_19B8EEF50;
  v83 = COERCE_DOUBLE(&unk_1E753D788);
  v87 = a4;
  v88 = v16;
  v89 = a5;
  v90 = a6;
  *&v84 = v67;
  *(&v84 + 1) = v65;
  v91 = v53;
  v92 = v56;
  v93 = a3;
  v85 = &v73;
  v86 = a1;
  ++*(a1 + 116);
  *(a1 + 224) = 1;
  objc_msgSend_findBuildingsNear_radius_tileSetStyle_handler_completionHandler_(*(a1 + 88), v54, *(a1 + 220) == 1, v64, v82, a5, a6, v16);
  if (!v56)
  {
    goto LABEL_87;
  }

  v57 = dispatch_semaphore_wait(v74[5], 0xFFFFFFFFFFFFFFFFLL);
  v58 = v74[5];
  if (v58)
  {
    dispatch_release(v58);
  }

  if (v57)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v59 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Buildings,queryForBuildingsWithinDistance,semaphore timed out", buf, 2u);
    }

    v60 = sub_19B87DD40();
    if ((*(v60 + 160) & 0x80000000) == 0 || (*(v60 + 164) & 0x80000000) == 0 || (*(v60 + 168) & 0x80000000) == 0 || *(v60 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v63[0] = 0;
      v61 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Buildings,queryForBuildingsWithinDistance,semaphore timed out", v63, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)", "CoreLocation: %s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    v33 = 0;
  }

  else
  {
LABEL_87:
    v33 = 1;
  }

  _Block_object_dispose(v65, 8);
  _Block_object_dispose(v67, 8);
  *buf = v72;
  sub_19B8F0E84(buf);
  _Block_object_dispose(&v73, 8);
  objc_autoreleasePoolPop(v55);
  if ((v81 & 0x100) != 0)
  {
    if (v81)
    {
      pthread_mutex_unlock(v80);
      goto LABEL_91;
    }

    v37 = v79;
LABEL_62:
    (*(*v37 + 24))(v37);
  }

LABEL_91:
  (*(*a1 + 24))(a1);
  if (v33)
  {
LABEL_92:
    v33 = 1;
  }

LABEL_93:
  (*(*a1 + 24))(a1);
  return v33;
}

void sub_19B8EE5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  sub_19B8F0E84(&a61);
  _Block_object_dispose(&a38, 8);
  sub_19B888D7C(&a44);
  sub_19B888D7C(&a14);
  sub_19B888D7C(&a11);
  _Unwind_Resume(a1);
}

void sub_19B8EE678(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_19B8F23AC(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_19B8EE770(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v64 = a1;
  (*(*a1 + 16))(a1);
  v65 = 256;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v10 = mach_continuous_time();
  sub_19B994BF4(v10);
  sub_19B8F1EE8(__p, a3, a4, a5);
  if (*(a1 + 216) == 1 && (Current = CFAbsoluteTimeGetCurrent(), !sub_19B8ED82C(a1, 0, 0, Current, a3, a4, a5)))
  {
    v51 = 0;
  }

  else
  {
    v13 = v61;
    for (i = v62; i != v13; i -= 2)
    {
      v14 = *(i - 1);
      if (v14)
      {
        sub_19B8750F8(v14);
      }
    }

    v62 = v13;
    v15 = *(a1 + 232);
    v16 = *(a1 + 240);
    if (v15 != v16)
    {
      do
      {
        v17 = *v15;
        if (*v15)
        {
          v19 = v17 + 16;
          v18 = *(v17 + 16);
          v20 = 0x8E38E38E38E38E39 * ((*(v19 + 8) - v18) >> 3);
          if (v20 >= 1)
          {
            v21 = 0;
            do
            {
              if (v18)
              {
                if (v20 > v21)
                {
                  v22 = *(v18 + 72 * v21 + 48);
                  v23 = *(v18 + 72 * v21 + 56) - v22;
                  if ((v23 >> 4) >= 1)
                  {
                    v24 = 0;
                    v25 = v23 >> 4;
                    v26 = (v23 >> 4) & 0x7FFFFFFF;
                    do
                    {
                      if (v25 <= v24)
                      {
                        v27 = 0;
                      }

                      else
                      {
                        v27 = v22;
                      }

                      if (*__p <= *v27 && *&v58 >= *v27)
                      {
                        v29 = v27[1];
                        if (*(&v58 + 1) <= *&__p[1])
                        {
                          if (*(&v58 + 1) < *&__p[1] && (*(&v58 + 1) > v29 || *&__p[1] < v29))
                          {
LABEL_37:
                            sub_19B8EE678(&v61, v15);
                            goto LABEL_38;
                          }
                        }

                        else if (*(&v58 + 1) >= v29 && *&__p[1] <= v29)
                        {
                          goto LABEL_37;
                        }
                      }

                      ++v24;
                      v22 += 2;
                    }

                    while (v26 != v24);
                  }
                }
              }

              ++v21;
            }

            while (v21 != (v20 & 0x7FFFFFFF));
          }
        }

LABEL_38:
        ++v15;
      }

      while (v15 != v16);
      v13 = v62;
    }

    v32 = v61;
    if (v61 != v13)
    {
      v53 = v13;
      do
      {
        v33 = *v32;
        v34 = *(*v32 + 16);
        v35 = 0x8E38E38E38E38E39 * ((*(*v32 + 24) - v34) >> 3);
        if (v35 >= 1)
        {
          v36 = 0;
          do
          {
            if (v35 > v36 && v34)
            {
              v37 = v34 + 72 * v36;
              v59 = 0u;
              v60 = 0u;
              *__p = 0u;
              v58 = 0u;
              __p[0] = *(v37 + 32);
              v39 = *(v37 + 48);
              v38 = *(v37 + 56);
              v40 = v38 - v39;
              if (((v38 - v39) >> 4) < 1)
              {
                v46 = 0uLL;
                v47 = 0uLL;
              }

              else
              {
                v41 = 0;
                v42 = 0;
                v43 = 0;
                do
                {
                  if (v39 && v40 >> 4 > v43)
                  {
                    v56 = 0;
                    v55 = 0uLL;
                    sub_19BA0BE88((a1 + 16), &v55 + 1, &v55, &v56, a3, a4, 0.0, *(v39 + v41), *(v39 + v41 + 8), 0.0);
                    v44 = *(&v55 + 1);
                    v54 = v55;
                    if (v42 >= *(&v58 + 1))
                    {
                      v42 = sub_19B8F23F4(&__p[1], &v54);
                    }

                    else
                    {
                      *&v42->f64[0] = v55;
                      v42->f64[1] = v44;
                      ++v42;
                    }

                    *&v58 = v42;
                    v39 = *(v37 + 48);
                    v38 = *(v37 + 56);
                  }

                  ++v43;
                  v40 = v38 - v39;
                  v41 += 16;
                }

                while (v43 < ((v38 - v39) >> 4));
                v45 = __p[1];
                v46 = 0uLL;
                v47 = 0uLL;
                if (__p[1] != v42)
                {
                  v47 = *__p[1];
                  v46 = *__p[1];
                  do
                  {
                    v48 = *v45++;
                    v47 = vbslq_s8(vcgtq_f64(v47, v48), v48, v47);
                    v46 = vbslq_s8(vcgtq_f64(v48, v46), v48, v46);
                  }

                  while (v45 != v42);
                }
              }

              v59 = v47;
              v60 = v46;
              v49 = a2[1];
              if (v49 >= a2[2])
              {
                v50 = sub_19B8F258C(a2, __p);
              }

              else
              {
                *v49 = __p[0];
                *(v49 + 16) = 0;
                *(v49 + 24) = 0;
                *(v49 + 8) = 0;
                sub_19B8F2708((v49 + 8), __p[1], v58, (v58 - __p[1]) >> 4);
                *(v49 + 32) = v59;
                *(v49 + 48) = v60;
                v50 = v49 + 64;
                a2[1] = v49 + 64;
              }

              a2[1] = v50;
              if (__p[1])
              {
                *&v58 = __p[1];
                operator delete(__p[1]);
              }

              v33 = *v32;
            }

            ++v36;
            v34 = *(v33 + 16);
            v35 = 0x8E38E38E38E38E39 * ((*(v33 + 24) - v34) >> 3);
          }

          while (v36 < v35);
        }

        v32 += 2;
      }

      while (v32 != v53);
    }

    v51 = 1;
  }

  __p[0] = &v61;
  sub_19B8F0E84(__p);
  (*(*a1 + 24))(a1);
  return v51;
}

void sub_19B8EEBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  a10 = &a24;
  sub_19B8F0E84(&a10);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

__n128 sub_19B8EEC1C(__n128 *a1, __n128 *a2)
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

void sub_19B8EEC6C(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (a2)
    {
      operator new();
    }
  }
}

void sub_19B8EEF50(uint64_t a1, void *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  *(v4 + 224) = 0;
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v80 = objc_msgSend_code(a2, v6, v7, v8);
      v81 = 2114;
      *v82 = objc_msgSend_domain(a2, v9, v10, v11);
      *&v82[8] = 2113;
      *&v82[10] = objc_msgSend_localizedDescription(a2, v12, v13, v14);
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,Buildings,Warning,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v19 = off_1EAFE4708;
      v61 = 134349571;
      v62 = objc_msgSend_code(a2, v16, v17, v18);
      v63 = 2114;
      *v64 = objc_msgSend_domain(a2, v20, v21, v22);
      *&v64[8] = 2113;
      *&v64[10] = objc_msgSend_localizedDescription(a2, v23, v24, v25);
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v19, 0, "CLMM,CLTSP,Buildings,Warning,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", &v61, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)_block_invoke", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    *(v4 + 120) = vadd_s32(*(v4 + 120), 0x100000001);
  }

  else
  {
    v28 = *(a1 + 64);
    v27 = *(a1 + 72);
    v29 = *(a1 + 80);
    v30 = *(a1 + 88);
    if (sub_19B8E7710(v28, v27, v29, v30))
    {
      *(v4 + 56) = v28;
      *(v4 + 64) = v29;
      *(v4 + 72) = v30;
      *(v4 + 80) = v27;
    }

    *(v4 + 124) = 0;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v31 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v32 = (*(*(*(a1 + 32) + 8) + 56) - *(*(*(a1 + 32) + 8) + 48)) >> 4;
    v33 = *(*(*(a1 + 40) + 8) + 24);
    v34 = 0.0;
    if (*(a1 + 96) >= 0.0)
    {
      v35 = mach_continuous_time();
      v34 = vabdd_f64(sub_19B994BF4(v35), *(a1 + 96)) * 1000.0;
    }

    v37 = *(a1 + 80);
    v36 = *(a1 + 88);
    v38 = *(a1 + 72);
    v39 = *(a1 + 104);
    v40 = *(v4 + 116);
    v41 = *(v4 + 120);
    v42 = *(v4 + 124);
    *buf = 134351617;
    v80 = v32;
    v81 = 1026;
    *v82 = v33;
    *&v82[4] = 2050;
    *&v82[6] = v34;
    *&v82[14] = 2053;
    *&v82[16] = v37;
    v83 = 2053;
    v84 = v36;
    v85 = 2050;
    v86 = v38;
    v87 = 1026;
    v88 = a2 != 0;
    v89 = 1026;
    v90 = v40;
    v91 = 1026;
    v92 = v39;
    v93 = 1026;
    v94 = v41;
    v95 = 1026;
    v96 = v42;
    _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Buildings,bufferDataUsingMapsAPI,bldgCount,%{public}lu,sizeOfBuildings,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,bufferSynchronously,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d", buf, 0x58u);
  }

  v43 = sub_19B87DD40();
  if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v47 = off_1EAFE4708;
    v48 = (*(*(*(a1 + 32) + 8) + 56) - *(*(*(a1 + 32) + 8) + 48)) >> 4;
    v49 = *(*(*(a1 + 40) + 8) + 24);
    v50 = 0.0;
    if (*(a1 + 96) >= 0.0)
    {
      v51 = mach_continuous_time();
      v50 = vabdd_f64(sub_19B994BF4(v51), *(a1 + 96)) * 1000.0;
    }

    v53 = *(a1 + 80);
    v52 = *(a1 + 88);
    v54 = *(a1 + 72);
    v55 = *(a1 + 104);
    v56 = *(v4 + 116);
    v57 = *(v4 + 120);
    v58 = *(v4 + 124);
    v61 = 134351617;
    v62 = v48;
    v63 = 1026;
    *v64 = v49;
    *&v64[4] = 2050;
    *&v64[6] = v50;
    *&v64[14] = 2053;
    *&v64[16] = v53;
    v65 = 2053;
    v66 = v52;
    v67 = 2050;
    v68 = v54;
    v69 = 1026;
    v70 = a2 != 0;
    v71 = 1026;
    v72 = v56;
    v73 = 1026;
    v74 = v55;
    v75 = 1026;
    v76 = v57;
    v77 = 1026;
    v78 = v58;
    v59 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v47, 2, "CLMM,CLTSP,Buildings,bufferDataUsingMapsAPI,bldgCount,%{public}lu,sizeOfBuildings,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,bufferSynchronously,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d", &v61, 88);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)_block_invoke", "CoreLocation: %s\n", v59);
    if (v59 != buf)
    {
      free(v59);
    }
  }

  if (*(a1 + 105) == 1)
  {
    objc_msgSend_clearBuildingTiles(*(v4 + 88), v44, v45, v46);
  }

  v60 = *(*(a1 + 32) + 8);
  if (v4 + 232 != v60 + 48)
  {
    sub_19B8F2F00((v4 + 232), *(v60 + 48), *(v60 + 56), (*(v60 + 56) - *(v60 + 48)) >> 4);
  }

  if (*(a1 + 104) == 1)
  {
    dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_19B8EF530(uint64_t a1, void *a2)
{
  v134 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v2[28].i8[0] = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v72 = v2;
  if (a2)
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    if (sub_19B8E7710(v5, v4, v6, v7))
    {
      *&v2[7] = v5;
      *&v2[8] = v6;
      *&v2[9] = v7;
      *&v2[10] = v4;
    }

    v2[15].i32[1] = 0;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v8, &v75, v108, 16);
    if (v9)
    {
      v10 = v9;
      v73 = *v76;
      do
      {
        v11 = 0;
        do
        {
          if (*v76 != v73)
          {
            objc_enumerationMutation(a2);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            operator new();
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
          }

          v12 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            v16 = objc_msgSend_count(a2, v13, v14, v15);
            *buf = 67240192;
            *&buf[4] = v16;
            _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Buildings,conversion to building failed,%{public}d", buf, 8u);
          }

          v17 = sub_19B87DD40();
          if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
            }

            v22 = off_1EAFE4708;
            v23 = objc_msgSend_count(a2, v19, v20, v21);
            v82 = 67240192;
            v83 = v23;
            v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v22, 16, "CLMM,CLTSP,Buildings,conversion to building failed,%{public}d", &v82, 8);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v24);
            if (v24 != buf)
            {
              free(v24);
            }
          }

          ++v11;
        }

        while (v11 != v10);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v18, &v75, v108, 16);
        v10 = v25;
      }

      while (v25);
    }
  }

  else
  {
    v2[15] = vadd_s32(v2[15], 0x100000001);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v26 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_ERROR, "CLTSP,Buildings,xpcQueryForBuildingData returned error", buf, 2u);
    }

    v27 = sub_19B87DD40();
    if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      LOWORD(v82) = 0;
      v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,Buildings,xpcQueryForBuildingData returned error", &v82, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v29 = a2;
  v30 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v34 = objc_msgSend_count(a2, v31, v32, v33);
    }

    else
    {
      v34 = 0;
    }

    v36 = v79;
    v35 = v80;
    v37 = a1;
    v38 = 0.0;
    if (*(a1 + 80) >= 0.0)
    {
      v39 = mach_continuous_time();
      v40 = sub_19B994BF4(v39);
      v37 = a1;
      v38 = vabdd_f64(v40, *(a1 + 80)) * 1000.0;
    }

    v42 = v37[8];
    v41 = v37[9];
    v43 = (v35 - v36) >> 4;
    v29 = a2;
    v44 = v37[7];
    v45 = v72[27].u8[0];
    v46 = v72[14].i32[1];
    v47 = v72[15].i32[0];
    v48 = v72[15].i32[1];
    v49 = v72[24].u8[0];
    *buf = 67243265;
    *&buf[4] = v34;
    v110 = 1026;
    v111 = 0;
    v112 = 1026;
    v113 = v43;
    v114 = 2050;
    v115 = v38;
    v116 = 2053;
    v117 = v42;
    v118 = 2053;
    v119 = v41;
    v120 = 2050;
    v121 = v44;
    v122 = 1026;
    v123 = a2 == 0;
    v124 = 1026;
    v125 = v46;
    v126 = 1026;
    v127 = v45;
    v128 = 1026;
    v129 = v47;
    v130 = 1026;
    v131 = v48;
    v132 = 1026;
    v133 = v49;
    _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Buildings,MapHelperService,bldgCount,%{public}d,sizeOfBuildings,%{public}d,convertedBuildings,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,bufferSynchronously,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", buf, 0x60u);
  }

  v50 = sub_19B87DD40();
  if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v54 = off_1EAFE4708;
    if (v29)
    {
      v55 = objc_msgSend_count(v29, v51, v52, v53);
    }

    else
    {
      v55 = 0;
    }

    v57 = v79;
    v56 = v80;
    v58 = a1;
    v59 = 0.0;
    if (*(a1 + 80) >= 0.0)
    {
      v60 = mach_continuous_time();
      v61 = sub_19B994BF4(v60);
      v58 = a1;
      v59 = vabdd_f64(v61, *(a1 + 80)) * 1000.0;
    }

    v63 = v58[8];
    v62 = v58[9];
    v64 = v58[7];
    v65 = v72[27].u8[0];
    v66 = v72[14].i32[1];
    v67 = v72[15].i32[0];
    v68 = v72[15].i32[1];
    v69 = v72[24].u8[0];
    v82 = 67243265;
    v83 = v55;
    v84 = 1026;
    v85 = 0;
    v86 = 1026;
    v87 = (v56 - v57) >> 4;
    v88 = 2050;
    v89 = v59;
    v90 = 2053;
    v91 = v63;
    v92 = 2053;
    v93 = v62;
    __p_2 = 2050;
    __p_4 = v64;
    __p_12 = 1026;
    __p_14 = a2 == 0;
    v98 = 1026;
    v99 = v66;
    v100 = 1026;
    v101 = v65;
    v102 = 1026;
    v103 = v67;
    v104 = 1026;
    v105 = v68;
    v106 = 1026;
    v107 = v69;
    v70 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v54, 2, "CLMM,CLTSP,Buildings,MapHelperService,bldgCount,%{public}d,sizeOfBuildings,%{public}d,convertedBuildings,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,bufferSynchronously,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", &v82, 96);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v70);
    if (v70 != buf)
    {
      free(v70);
    }
  }

  if (&v72[29] != &v79)
  {
    sub_19B8F2F00(&v72[29], v79, v80, (v80 - v79) >> 4);
  }

  *buf = &v79;
  sub_19B8F0E84(buf);
}

void sub_19B8F0728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  a35 = &a30;
  sub_19B8F0E84(&a35);
  _Unwind_Resume(a1);
}

os_log_t sub_19B8F07B0()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B8F07E0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a2;
    v4 = a2[1];
    result = 1;
    do
    {
      v6 = v2[4];
      v7 = v2[5];
      v8 = v4 < v7;
      if (v3 != v6)
      {
        v8 = v3 < v6;
      }

      if (!v8)
      {
        v9 = v7 < v4;
        if (v3 == v6)
        {
          v10 = v9;
        }

        else
        {
          v10 = v6 < v3;
        }

        if (!v10)
        {
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_19B8F0840(uint64_t a1, unint64_t *a2, uint64_t a3, __int128 **a4)
{
  v4 = *sub_19B8F08E8(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_19B8F08E8(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        v10 = v8[5];
        v11 = v7 < v10;
        if (v6 != v9)
        {
          v11 = v6 < v9;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      v12 = v10 < v7;
      if (v6 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < v6;
      }

      if (!v13)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_15:
  *a2 = v8;
  return result;
}

uint64_t *sub_19B8F0968(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_19B8F09C0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_19B8F09C0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *sub_19B8F0B5C(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  result = *sub_19B8F08E8(a1, &v4, a2);
  if (!result)
  {
    sub_19B8F0BDC();
  }

  return result;
}

uint64_t *sub_19B8F0C74(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F0CFC(result, a4);
  }

  return result;
}

void sub_19B8F0CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_19B8F0E84(&a9);
  _Unwind_Resume(a1);
}

void sub_19B8F0CFC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_19B8F0D38(a1, a2);
  }

  sub_19B8B8A40();
}

void sub_19B8F0D38(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void *sub_19B8F0D80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_19B8F0E08(v7);
  return v4;
}

uint64_t sub_19B8F0E08(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B8F0E40(a1);
  }

  return a1;
}

void sub_19B8F0E40(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v1 -= 16;
  }
}

void sub_19B8F0E84(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B8EBC04(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_19B8F0ED8(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_19B8F0E84(&v3);
  v3 = (a1 + 24);
  sub_19B8F0E84(&v3);
  return a1;
}

uint64_t sub_19B8F0F24(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_19B8F0E84(&v3);
  v3 = (a1 + 8);
  sub_19B8F0E84(&v3);
  return a1;
}

void sub_19B8F0F70(uint64_t a1, uint64_t *a2)
{
  sub_19B8EBC04(a2);
  sub_19B8F0FC8(a2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(v3, 0, sizeof(v3));
  v4 = v3;
  sub_19B8F0E84(&v4);
}

void sub_19B8F0FC8(uint64_t *a1)
{
  if (*a1)
  {
    sub_19B8EBC04(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_19B8F1008(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      v9 += 16;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_19B8F106C(&v11, a2, v7, v6);
}

void *sub_19B8F106C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_19B8750F8(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void **sub_19B8F10D0(void **a1)
{
  sub_19B8F1104(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B8F1104(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_19B8750F8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_19B8F1158(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_19B8F1750(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *sub_19B8F1230(uint64_t **a1, void **a2)
{
  v3 = sub_19B8F128C(a1, a2);
  v5 = a2 + 10;
  sub_19B8F0E84(&v5);
  v5 = a2 + 7;
  sub_19B8F0E84(&v5);
  operator delete(a2);
  return v3;
}

uint64_t *sub_19B8F128C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_19B8F1300(v6, a2);
  return v3;
}

uint64_t *sub_19B8F1300(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

uint64_t *sub_19B8F1678(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_19B8F1750(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void **sub_19B8F1798(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_19B8F18CC(v7, v11);
    }

    sub_19B8B8A40();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void sub_19B8F18CC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_19B8F1750(a1, a2);
  }

  sub_19B8B8A40();
}

uint64_t sub_19B8F1908(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_19B8F1950(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_19B8F1230(a1, v3);
  return 1;
}

uint64_t sub_19B8F1950(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 32);
    v10 = v8 == v5;
    v9 = v8 < v5;
    if (v10)
    {
      v9 = *(v3 + 40) < v6;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 32);
  v13 = v6 < *(v7 + 40);
  v10 = v5 == v12;
  v14 = v5 < v12;
  if (v10)
  {
    v14 = v13;
  }

  if (v14)
  {
    return v2;
  }

  return v7;
}

void sub_19B8F19C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B8F19C4(a1, *a2);
    sub_19B8F19C4(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

char *sub_19B8F1A28(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_19B8F1008(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_19B8F0D80(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_19B8F1008(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      sub_19B8F1C0C(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_19B8B8A40();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      sub_19B8F0D38(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_19B8F10D0(v30);
    return v19;
  }

  return v5;
}

uint64_t *sub_19B8F1C0C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_19B8F1C84(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_19B8F0E84(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

__int128 *sub_19B8F1CF8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_19B8750F8(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_19B8F1D64(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8F1DAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_19B8F0FC8(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B8F0CFC(a1, v10);
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F1C0C(&v18, a2, a3, v7);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_19B8750F8(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = sub_19B8F1C0C(&v17, a2, (a2 + v11), v7);
    a1[1] = sub_19B8F0D80(a1, v12, a3, a1[1]);
  }
}

double *sub_19B8F1EE8(double *a1, double a2, double a3, double a4)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  sub_19B8B7B58(a1, a1 + 1, a1 + 2, a1 + 3, a2, a3, a4);
  v5 = fmod(a1[1], 360.0);
  if (v5 <= -180.0)
  {
    v5 = v5 + 360.0;
  }

  else if (v5 > 180.0)
  {
    v5 = v5 + -360.0;
  }

  a1[1] = v5;
  v6 = fmod(a1[3], 360.0);
  if (v6 <= -180.0)
  {
    v6 = v6 + 360.0;
  }

  else if (v6 > 180.0)
  {
    v6 = v6 + -360.0;
  }

  a1[3] = v6;
  return a1;
}

double sub_19B8F1FB4(int a1, int a2, int a3, uint64_t *a4, unint64_t *a5)
{
  if (a3)
  {
    v6 = 5;
  }

  else
  {
    v6 = 2;
  }

  if (a1)
  {
    v6 = 4;
  }

  if (a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v20 = 0uLL;
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  if (v9 >= 2 * v7 + 2)
  {
    v20 = *(v8 + 16 * v7);
  }

  else
  {
    v10 = 0.7;
    if (a3)
    {
      v10 = 0.9;
    }

    if (a1)
    {
      v10 = 0.775;
    }

    if (a2)
    {
      v11 = 0.825;
    }

    else
    {
      v11 = v10;
    }

    v12 = v9 > 2;
    v13 = (v8 + 16 * (v9 > 2));
    v14 = *v13;
    v15 = v13[1];
    v16 = 16;
    if (v12)
    {
      v16 = 32;
    }

    sub_19B8D9740(&v20, v14, v15, *(v8 + v16), *(v8 + v16 + 8), v11);
  }

  result = *(&v20 + 1);
  v18 = vabdd_f64(0.0, *&v20) >= 0.0000001;
  v19 = vabdd_f64(0.0, *(&v20 + 1)) >= 0.0000001 || v18;
  if (v19 == 1)
  {
    result = (*(&v20 + 1) + 180.0) * 10000000.0;
    *a5 = result | (((*&v20 + 90.0) * 10000000.0) << 32);
  }

  return result;
}

void *sub_19B8F20FC(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[3];
  result[2] = a2[2];
  result[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[5];
  result[4] = a2[4];
  result[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_19B8F2148(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8F21A0(void *result, void *a2, _OWORD *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
      a3[1] = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      a3[2] = *(v5 + 32);
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      v5 += 48;
      a3 += 3;
    }

    while (v5 != a2);
    do
    {
      sub_19B8F221C(v4);
      v4 += 6;
    }

    while (v4 != a2);
  }
}

void sub_19B8F221C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = a1[1];
  if (v4)
  {

    sub_19B8750F8(v4);
  }
}

uint64_t sub_19B8F2278(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_19B8F221C((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19B8F22C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_19B8F0E84(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B8F2328(void ***a1)
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
        v4 -= 6;
        sub_19B8F221C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_19B8F23AC(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B8F23F4(void *a1, _OWORD *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_19B8B8A40();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_19B8F1750(a1, v7);
  }

  __p = 0;
  v11 = (16 * v2);
  *v11 = *a2;
  v12 = 16 * v2 + 16;
  v13 = 0;
  sub_19B8F2510(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_19B8F24D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B8F2510(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_19B8F258C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_19B8B8A40();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_19B8F278C(a1, v7);
  }

  v15 = 0;
  v16 = v2 << 6;
  v8.n128_f64[0] = sub_19B8F26A0(a1, v2 << 6, a2);
  v17 = ((v2 << 6) + 64);
  v9 = a1[1];
  v10 = (v2 << 6) + *a1 - v9;
  sub_19B8F27D4(a1, *a1, v9, v10, v8);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_19B8F2924(&v15);
  return v14;
}

void sub_19B8F268C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B8F2924(va);
  _Unwind_Resume(a1);
}

double sub_19B8F26A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  sub_19B8F2708((a2 + 8), *(a3 + 8), *(a3 + 16), (*(a3 + 16) - *(a3 + 8)) >> 4);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 48) = *(a3 + 48);
  result = *(a3 + 56);
  *(a2 + 56) = result;
  return result;
}

uint64_t *sub_19B8F2708(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F18CC(result, a4);
  }

  return result;
}

void sub_19B8F2770(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8F278C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B8F27D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_19B8F26A0(a1, a4, v8);
      v8 += 64;
      a4 = v14 + 64;
      v14 += 64;
    }

    while (v8 != a3);
    v12 = 1;
    do
    {
      v9 = *(v6 + 8);
      if (v9)
      {
        *(v6 + 16) = v9;
        operator delete(v9);
      }

      v6 += 64;
    }

    while (v6 != a3);
  }

  return sub_19B8F28A4(v11);
}

uint64_t sub_19B8F28A4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B8F28DC(a1);
  }

  return a1;
}

void sub_19B8F28DC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 56);
    if (v3)
    {
      *(v1 - 48) = v3;
      operator delete(v3);
    }

    v1 -= 64;
  }
}

uint64_t sub_19B8F2924(uint64_t a1)
{
  sub_19B8F295C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B8F295C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 64;
    v5 = *(v2 - 56);
    if (v5)
    {
      *(v2 - 48) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }
}

uint64_t *sub_19B8F29BC(uint64_t *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      sub_19B8F2B74(a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

void sub_19B8F2A88(void *a1, double a2, double a3)
{
  v5 = a1[7];
  v4 = a1[8];
  if (v5 >= v4)
  {
    v7 = a1[6];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v11 = v4 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF0;
    v13 = 0xFFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_19B8F1750((a1 + 6), v13);
    }

    v14 = (16 * v9);
    *v14 = a2;
    v14[1] = a3;
    v6 = 16 * v9 + 16;
    memcpy(0, v7, v8);
    v15 = a1[6];
    a1[6] = 0;
    a1[7] = v6;
    a1[8] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = a2;
    v5[1] = a3;
    v6 = (v5 + 2);
  }

  a1[7] = v6;
}

void sub_19B8F2B74(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8F2BD0(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[2];
      *(a3 + 16) = v5[1];
      *(a3 + 32) = v7;
      *a3 = v6;
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 48) = 0;
      *(a3 + 48) = v5[3];
      *(a3 + 64) = *(v5 + 8);
      *(v5 + 6) = 0;
      *(v5 + 7) = 0;
      *(v5 + 8) = 0;
      v5 = (v5 + 72);
      a3 += 72;
    }

    while (v5 != a2);
    do
    {
      v8 = *(v4 + 6);
      if (v8)
      {
        *(v4 + 7) = v8;
        operator delete(v8);
      }

      v4 = (v4 + 72);
    }

    while (v4 != a2);
  }
}

uint64_t sub_19B8F2C60(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 72;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19B8F2CC4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v9 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    if (v9 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_19B8B8A40();
    }

    v10 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x1C71C71C71C71C7)
    {
      v12 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v12 = v11;
    }

    v24 = a1;
    if (v12)
    {
      sub_19B8F2B74(v12);
    }

    v13 = 72 * v9;
    v20 = 0;
    v21 = v13;
    v22 = 72 * v9;
    v23 = 0;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    *(v13 + 48) = 0;
    sub_19B8F2E64((72 * v9 + 48), *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 4);
    v8 = v22 + 72;
    v16 = *(a1 + 8);
    v17 = v21 + *a1 - v16;
    sub_19B8F2BD0(*a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    v19 = *(a1 + 16);
    *(a1 + 16) = v23;
    v22 = v18;
    v23 = v19;
    v20 = v18;
    v21 = v18;
    result = sub_19B8F2C60(&v20);
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    *(v4 + 16) = a2[1];
    *(v4 + 32) = v6;
    *v4 = v5;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 48) = 0;
    result = sub_19B8F2E64((v4 + 48), *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 4);
    v8 = v4 + 72;
    *(a1 + 8) = v8;
  }

  *(a1 + 8) = v8;
  return result;
}

void sub_19B8F2E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8F2C60(va);
  _Unwind_Resume(a1);
}