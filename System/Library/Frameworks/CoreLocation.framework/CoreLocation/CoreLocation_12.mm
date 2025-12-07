uint64_t sub_19BA0445C(uint64_t a1, CLConnectionMessage **a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received response message for disconnecting to a service}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) != 0)
  {
    v13 = DictionaryOfClasses;
    v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, 0x1F0E73DA0, v12);
    if ((objc_msgSend_isEqualToNumber_(v14, v15, &unk_1F0E8CD90, v16) & 1) == 0)
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v19 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v39 = 0;
        v40 = 2082;
        v41 = "";
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:disconnect to service failed, recover connectedServiceIdentifier}", buf, 0x12u);
      }

      *(*(a1 + 32) + 48) = objc_msgSend_copy(*(a1 + 40), v20, v21, v22);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v23 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v39 = 0;
        v40 = 2082;
        v41 = "";
        _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:disconnect to service failed, set handler for prediction updates}", buf, 0x12u);
      }

      objc_msgSend__setHandlerForMiLoPredictionEvents(*(a1 + 32), v24, v25, v26);
    }

    return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v17, v13, v18);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v28 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v39 = 0;
      v40 = 2082;
      v41 = "";
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to disconnect service with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v29 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v39 = 0;
      v40 = 2082;
      v41 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to disconnect service with empty response", "{msg%{public}.0s:SPI request, failed to disconnect service with empty response}", buf, 0x12u);
    }

    v31 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37 = @"Internal error";
    v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, &v37, &v36, 1);
    v34 = objc_msgSend_errorWithDomain_code_userInfo_(v31, v33, @"kCLErrorDomainPrivate", 0, v32);
    return objc_msgSend__notifyClientDisconnectServiceDidFailWithError_serviceIdentifier_(*(a1 + 32), v35, v34, *(a1 + 40));
  }
}

void sub_19BA04D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA04DA4(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for requesting a MiLo prediction}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request a single shot prediction with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request a single shot prediction with empty response", "{msg%{public}.0s:SPI request, failed to request a single shot prediction with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA05584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA055D8(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for requesting an observation}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request observation with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request observation with empty response", "{msg%{public}.0s:SPI request, failed to request observation with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA05DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA05E00(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for labeling an observation}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label an observation with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label an observation with empty response", "{msg%{public}.0s:SPI request, failed to label an observation with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA065E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA0663C(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for labeling observations between dates}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label observations between dates with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label observations between dates with empty response", "{msg%{public}.0s:SPI request, failed to label observations between dates with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA06E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA06E5C(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for removing labels}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to  remove labels with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to  remove labels with empty response", "{msg%{public}.0s:SPI request, failed to  remove labels with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA075D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 104);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA07604(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for removing a custom LOI}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to  remove a custom LOI with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to  remove a custom LOI with empty response", "{msg%{public}.0s:SPI request, failed to  remove a custom LOI with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA07D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 104);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA07DAC(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for start updating MicroLocation}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to tart updating MicroLocation with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to tart updating MicroLocation with empty response", "{msg%{public}.0s:SPI request, failed to tart updating MicroLocation with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA08514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  if (v17)
  {
    sub_19B8750F8(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA08540(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for stop updating MicroLocation}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to stop updating MicroLocation with empty response", "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA08CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 104);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA08CD8(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for MicroLocation learning}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request MicroLocation learning with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request MicroLocation learning with empty response", "{msg%{public}.0s:SPI request, failed to request MicroLocation learning with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA092A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 88);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA092D4(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for MicroLocation purge data}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request Purge MiLo Data with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request Purge MiLo Data with empty response", "{msg%{public}.0s:SPI request, failed to request Purge MiLo Data with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA09A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  if (v17)
  {
    sub_19B8750F8(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA09A68(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for Export MiLo Database}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request Export MiLo Database with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request Export MiLo Database with empty response", "{msg%{public}.0s:SPI request, failed to request Export MiLo Database with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA0A1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  if (v17)
  {
    sub_19B8750F8(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA0A1FC(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for enable MiLo at current location}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to enable MiLo at current location with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to enable MiLo at current location with empty response", "{msg%{public}.0s:SPI request, failed to enable MiLo at current location with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDidCompleteClientRequest_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

uint64_t sub_19BA0A574(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend__registerForMiLoServiceEvents(*(*(a1 + 32) + 8), a2, a3, a4);
  objc_msgSend__registerForMiLoDebugResponseEvents(*(*(a1 + 32) + 8), v5, v6, v7);
  objc_msgSend__registerForMiLoConnectionStatusEvents(*(*(a1 + 32) + 8), v8, v9, v10);
  v13 = *(*(a1 + 32) + 8);

  return MEMORY[0x1EEE66B58](v13, sel__registerForMiLoGenericEvents, v11, v12);
}

os_log_t sub_19BA0B584()
{
  result = os_log_create("com.apple.locationd.Position", "Microlocation");
  qword_1EAFE4730 = result;
  return result;
}

void sub_19BA0B65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19BA0B734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19BA0B80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19BA0B8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19BA0B914(double a1, double a2, double a3, double a4)
{
  v4 = a3;
  v5 = a1;
  if (a3 > 90.0)
  {
    return;
  }

  v6 = fabs(a1);
  if (v6 > 90.0 || a3 < -90.0)
  {
    return;
  }

  v7 = 360.0;
  v8 = a4 + 360.0;
  if (a4 >= 0.0)
  {
    v8 = a4;
  }

  v9 = a2 + 360.0;
  if (a2 >= 0.0)
  {
    v9 = a2;
  }

  v10 = v9 - v8;
  if (v10 <= 180.0)
  {
    if (v10 >= -180.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = -360.0;
  }

  v10 = v10 + v7;
LABEL_12:
  if (fabs(v5 + a3) >= 0.0001)
  {
    v37 = a2;
    v39 = a4;
LABEL_17:
    v11 = v10;
    goto LABEL_18;
  }

  if (v6 < 0.0001 && 180.0 - fabs(v10) < 0.0001)
  {
    return;
  }

  v35 = fabs(v6 + -90.0) < 0.0001;
  if (v35)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  v39 = a4;
  v37 = a2;
  if (!v35 && 180.0 - fabs(v10) >= 0.0001)
  {
    goto LABEL_17;
  }

  if (v5 <= a3)
  {
    v4 = a3 + -0.0001;
  }

  else
  {
    v5 = v5 + -0.0001;
  }

LABEL_18:
  v12 = v11 * 0.0174532925;
  v36 = v5;
  v13 = tan(v5 * 0.0174532925);
  v38 = v4;
  v14 = tan(v4 * 0.0174532925);
  v15 = v13 * 0.996647189;
  v16 = v14 * 0.996647189;
  v17 = atan(v15);
  v18 = atan(v16);
  v19 = __sincos_stret(v17);
  v20 = __sincos_stret(v18);
  v21 = 0;
  v22 = v20.__cosval * v19.__cosval;
  v40 = v12;
  while (1)
  {
    v23 = __sincos_stret(v12);
    v24 = sqrt((-(v19.__sinval * v20.__cosval) * v23.__cosval + v19.__cosval * v20.__sinval) * (-(v19.__sinval * v20.__cosval) * v23.__cosval + v19.__cosval * v20.__sinval) + v20.__cosval * v23.__sinval * (v20.__cosval * v23.__sinval));
    if (v24 < 2.22044605e-15)
    {
      break;
    }

    v25 = v22 * v23.__cosval + v19.__sinval * v20.__sinval;
    v26 = fabs(v25);
    if (fabs(v24) > 1.0 || v26 > 1.0)
    {
      break;
    }

    v28 = atan2(v24, v25);
    v29 = v22 * v23.__sinval / v24;
    if (v29 > 1.0)
    {
      break;
    }

    v30 = 1.0 - v29 * v29;
    if (fabs(v30) >= 2.22044605e-15)
    {
      v31 = v25 - v20.__sinval * (v19.__sinval + v19.__sinval) / v30;
      v32 = v30 * 0.000209550667 * ((v30 * -3.0 + 4.0) * 0.00335281066 + 4.0);
    }

    else
    {
      v31 = -1.0;
      v32 = 0.0;
    }

    v33 = v40 + v29 * ((1.0 - v32) * 0.00335281066) * (v28 + v24 * v32 * (v31 + v25 * v32 * (v31 * v31 * 2.0 + -1.0)));
    if (vabdd_f64(v33, v12) > 0.000000001)
    {
      v12 = v33;
      if (v21++ < 0x31)
      {
        continue;
      }
    }

    return;
  }

  sub_19BA0BD60(v36, v37, v38, v39);
}

double sub_19BA0BD60(double a1, double a2, double a3, double a4)
{
  v5 = 360.0;
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v6 = a4 - a2;
  if (v6 <= 180.0)
  {
    if (v6 >= -180.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = -360.0;
  }

  v6 = v6 + v5;
LABEL_9:
  v7 = a1 * 0.0174532925;
  v8 = v6 * 0.0174532925;
  v9 = sin((a3 - a1) * 0.0174532925 * 0.5);
  v10 = v9 * v9;
  v11 = __sincos_stret(v7);
  v12 = v11.__cosval * cos(a3 * 0.0174532925);
  v13 = sin(v8 * 0.5);
  v14 = v10 + v12 * (v13 * v13);
  v15 = 1.0 - v14;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = atan2(sqrt(v14), sqrt(v15));
  return (fabs(v11.__sinval) * -21000.0 + 6378160.0) * (v16 + v16);
}

BOOL sub_19BA0BE88(float64x2_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = vabdd_f64(a5, a8);
  if (v10 <= 2.0)
  {
    v21 = a1[1].f64[1];
    if (v21 == 0.0 || vabdd_f64(a5, v21) > 0.005)
    {
      v22 = (a5 + a8) * 0.5;
      a1[1].f64[0] = v22 * 0.0174532925;
      a1[1].f64[1] = v22;
      v23 = __sincos_stret(v22 * 0.0174532925);
      v24 = v23.__sinval * -0.00669437999 * v23.__sinval + 1.0;
      v25 = sqrt(v24);
      v26.f64[0] = v24 * v25;
      v26.f64[1] = v25;
      *a1 = vdivq_f64(xmmword_19BA89490, v26);
      a1[2].f64[0] = v23.__cosval;
    }

    v27 = 360.0;
    v28 = a6 + 360.0;
    if (a6 >= 0.0)
    {
      v28 = a6;
    }

    v29 = a9 + 360.0;
    if (a9 >= 0.0)
    {
      v29 = a9;
    }

    v30 = v29 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
LABEL_13:
        *a2 = (a8 - a5) * 0.0174532925 * (a1->f64[0] + a7);
        *a3 = v30 * 0.0174532925 * ((a1->f64[1] + a7) * a1[2].f64[0]);
        *a4 = a10 - a7;
        return v10 <= 2.0;
      }
    }

    else
    {
      v27 = -360.0;
    }

    v30 = v30 + v27;
    goto LABEL_13;
  }

  return v10 <= 2.0;
}

void sub_19BA0C01C(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = 0;
  v14 = 0;
  if (sub_19B87E218(a2, a3, a4, a5) || !sub_19BA0BE88(a1, &v14, &v13, &v12, a2, a3, a6, a4, a5, a6))
  {

    sub_19BA0B914(a2, a3, a4, a5);
  }
}

BOOL sub_19BA0C0F8(float64_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (a7 >= 0.0 && a8 <= 50000.0)
  {
    v15 = fabs(a8);
    v16 = __sincos_stret((dbl_19BA8D400[a8 < 0.0] + a7) * 0.0174532925);
    return sub_19BA0C1C0(a1, a2, a3, &v17, a4, a5, a6, v15 * v16.__cosval, v15 * v16.__sinval, 0.0);
  }

  return result;
}

BOOL sub_19BA0C1C0(float64_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = sqrt(a9 * a9 + a8 * a8);
  if (v11 <= 70000.0)
  {
    if (vabdd_f64(a5, a1[3]) <= 0.005)
    {
      v26.f64[0] = *a1;
      cosval = a1[4];
    }

    else
    {
      a1[2] = a5 * 0.0174532925;
      a1[3] = a5;
      v22 = __sincos_stret(a5 * 0.0174532925);
      cosval = v22.__cosval;
      v23 = v22.__sinval * -0.00669437999 * v22.__sinval + 1.0;
      v24 = sqrt(v23);
      v25.f64[0] = v23 * v24;
      v25.f64[1] = v24;
      v26 = vdivq_f64(xmmword_19BA89490, v25);
      *a1 = v26;
      a1[4] = v22.__cosval;
    }

    v27 = v26.f64[0] + a7;
    v28 = 0.0;
    v29 = a8 / v27;
    if (fabs(cosval) >= 0.0001)
    {
      v28 = a9 / (cosval * (a1[1] + a7));
    }

    *a2 = a5 + v29 * 57.2957795;
    *a3 = a6 + v28 * 57.2957795;
    *a4 = a7 + a10;
    v30 = *a2;
    if (*a2 > 90.0)
    {
      *a2 = 180.0 - v30;
      *a3 = *a3 + 180.0;
      v30 = *a2;
    }

    if (v30 >= -90.0)
    {
      v31 = *a3;
    }

    else
    {
      *a2 = -180.0 - v30;
      v31 = *a3 + 180.0;
      *a3 = v31;
    }

    if (v31 > -180.0)
    {
      if (v31 <= 180.0)
      {
        return v11 <= 70000.0;
      }
    }

    else
    {
      v31 = v31 + 360.0;
    }

    if (v31 > 180.0)
    {
      v31 = v31 + -360.0;
    }

    *a3 = v31;
  }

  return v11 <= 70000.0;
}

double sub_19BA0C3BC(float64x2_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = 0.0;
  v18 = 0.0;
  sub_19BA0BE88(a1, &v18, &v17, &v16, a4, a5, a6, a8, a9, a6);
  v12 = sqrt(v17 * v17 + v18 * v18);
  v13 = atan2(v17, v18);
  v14 = __sincos_stret(v13 + a7 * -0.0174532925);
  *a3 = v12 * v14.__cosval;
  result = v12 * v14.__sinval;
  *a2 = v12 * v14.__sinval;
  return result;
}

double sub_19BA0C44C(float64x2_t *a1, double a2, double a3, double a4, double a5)
{
  if (vabdd_f64(a2, a4) >= 0.00000001 || (v9 = -1.0, vabdd_f64(a3, a5) >= 0.00000001))
  {
    v15[1] = v5;
    v15[2] = v6;
    v15[0] = 0.0;
    __y = 0.0;
    v10 = sub_19BA0BE88(a1, v15, &__y, &v13, a2, a3, 0.0, a4, a5, 0.0);
    v9 = -1.0;
    if (v10)
    {
      v11 = atan2(__y, v15[0]);
      if (v11 < 0.0)
      {
        v11 = v11 + 6.28318531;
      }

      return v11 * 57.2957795;
    }
  }

  return v9;
}

BOOL sub_19BA0CB14(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 120);
  if (!v2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 248);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 134349056;
      *(buf[0].__r_.__value_.__r.__words + 4) = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid bestParticle road", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) != 0 && (*(v8 + 164) & 0x80000000) != 0 && (*(v8 + 168) & 0x80000000) != 0 && !*(v8 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v9 = *(a1 + 248);
    v36 = 134349056;
    v37 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid bestParticle road", &v36, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMSnapData::fillCrumb()", "CoreLocation: %s\n", v10);
    goto LABEL_31;
  }

  *(a1 + 520) = 1;
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);
  *(a1 + 392) = v3;
  *(a1 + 400) = v4;
  v5 = *(a1 + 144);
  *(a1 + 408) = v5;
  *(a1 + 528) = v3;
  *(a1 + 536) = v4;
  *(a1 + 544) = v5;
  *(a1 + 360) = *(v2 + 20);
  if (*(v2 + 71) < 0)
  {
    sub_19B874C9C(buf, *(v2 + 48), *(v2 + 56));
  }

  else
  {
    buf[0] = *(v2 + 48);
  }

  std::string::operator=((a1 + 368), buf);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  v11 = *(a1 + 120);
  *(a1 + 352) = *v11;
  *(a1 + 601) = *(v11 + 19);
  LOBYTE(v11) = *(v11 + 18);
  v12 = *(a1 + 168);
  v13 = *(a1 + 176);
  *(a1 + 416) = v13;
  *(a1 + 602) = v11;
  *(a1 + 512) = v12;
  for (i = *(a1 + 208); i != *(a1 + 216); i += 72)
  {
    if (*(i + 64) == 1)
    {
      *(a1 + 472) = *(i + 16);
      *(a1 + 480) = *(i + 56);
      if (*(a1 + 712))
      {
        *(a1 + 408) = *(a1 + 344);
      }

      *(a1 + 505) = *(a1 + 745);
      v34 = 0;
      v35 = 0.0;
      sub_19BA0C3BC((a1 + 672), &v35, &v34, *(a1 + 152), *(a1 + 160), *(a1 + 312), *(a1 + 144), *(a1 + 296), *(a1 + 304));
      v21 = *(a1 + 120);
      v19 = v21 != 0;
      if (v21)
      {
        v22 = *(v21 + 20);
        v23 = 0.5;
        if (v22 == 9 || (v24 = *(v21 + 72), v24 == 6))
        {
          v25 = 1.0;
        }

        else
        {
          v25 = 1.0;
          if (v24 != 255)
          {
            v26 = *(v21 + 96);
            if (v26 < 0.000001)
            {
              v26 = 1.0;
              if ((v22 & 0xFFFFFFFE) != 8)
              {
                v26 = sub_19B988DA8(v22, *(v21 + 16));
              }
            }

            v25 = v26 + 1.0;
            v23 = v26 * 0.5 + 1.0;
          }
        }

        *(a1 + 664) = v25;
        v27 = -1.0;
        if (v35 < 0.0)
        {
          v27 = 1.0;
        }

        v28 = v35 + v27 * v23;
        *(a1 + 488) = v34;
        *(a1 + 496) = v28;
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v29 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          v30 = *(a1 + 248);
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 134349056;
          *(buf[0].__r_.__value_.__r.__words + 4) = v30;
          _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,unable to determine roadWidth when filling crumb", buf, 0xCu);
        }

        v31 = sub_19B87DD40();
        if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v32 = *(a1 + 248);
          v36 = 134349056;
          v37 = v32;
          v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,unable to determine roadWidth when filling crumb", &v36, 12);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMSnapData::fillCrumb()", "CoreLocation: %s\n", v33);
          if (v33 != buf)
          {
            free(v33);
          }
        }
      }

      return v19;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v15 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 248);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 134349056;
    *(buf[0].__r_.__value_.__r.__words + 4) = v16;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,RawGPSScore not available", buf, 0xCu);
  }

  v17 = sub_19B87DD40();
  if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v18 = *(a1 + 248);
    v36 = 134349056;
    v37 = v18;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,RawGPSScore not available", &v36, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMSnapData::fillCrumb()", "CoreLocation: %s\n", v10);
LABEL_31:
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return 0;
}

void sub_19BA0D170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA0D194(uint64_t a1, double *a2, double *a3)
{
  if (a1)
  {
    v5 = *(a1 + 20);
    if (v5 == 9 || ((v6 = *(a1 + 72), v6 != 255) ? (v7 = v6 == 6) : (v7 = 1), v7))
    {
      *a2 = 1.0;
      v8 = 0.5;
    }

    else
    {
      v9 = *(a1 + 96);
      *a2 = v9;
      if (v9 < 0.000001)
      {
        v9 = 1.0;
        if ((v5 & 0xFFFFFFFE) != 8)
        {
          v9 = sub_19B988DA8(v5, *(a1 + 16));
        }

        *a2 = v9;
      }

      *a3 = v9 * 0.5;
      *a2 = *a2 + 1.0;
      v8 = *a3 + 1.0;
    }
  }

  else
  {
    *a2 = 0.0;
    v8 = 0.0;
  }

  *a3 = v8;
}

BOOL sub_19BA0D258(double *a1, double *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    if (!*(a1 + 136))
    {
      v5 = *(a2 + 1);
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a1[136] = v3;
      v6 = *(a1 + 137);
      *(a1 + 137) = v5;
      if (v6)
      {
        sub_19B8750F8(v6);
      }
    }

    sub_19B973C04(a1 + 133, a2);
    v7 = a2[6];
    if (v7 < a1[129])
    {
      a1[129] = v7;
    }

    if (v7 > a1[20])
    {
      a1[20] = v7;
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v8 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 134349056;
      v17 = v9;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, null road when trying to add particles into candidate", buf, 0xCu);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v11 = *a1;
      v14 = 134349056;
      v15 = v11;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected, null road when trying to add particles into candidate", &v14, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMCandidate::addParticle(const CLParticleMapMatcherCommon::Particle &)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return *&v3 != 0;
}

uint64_t sub_19BA0D49C(uint64_t a1, int *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  LOBYTE(v2) = *(a1 + 152) ^ 1;
  if (*(a1 + 153) != 1 || (*(a1 + 152) & 1) == 0)
  {
    return v2 & 1;
  }

  if (*(a1 + 124) == *(a1 + 1104))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 176);
      v7 = *(a1 + 124);
      v8 = *(a1 + 1104);
      v9 = *a2;
      *buf = 134349824;
      v106 = v6;
      v107 = 1026;
      *v108 = v7;
      *&v108[4] = 1026;
      *&v108[6] = v8;
      LOWORD(v109) = 1026;
      *(&v109 + 2) = v9;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,ambiguityCase,combined,%{public}d,secondBestCombined,%{public}d,sigEnv,%{public}d", buf, 0x1Eu);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v11 = *(a1 + 176);
      v12 = *(a1 + 124);
      v13 = *(a1 + 1104);
      v14 = *a2;
      v89 = 134349824;
      v90 = v11;
      v91 = 1026;
      *v92 = v12;
      *&v92[4] = 1026;
      *&v92[6] = v13;
      LOWORD(v93) = 1026;
      *(&v93 + 2) = v14;
      v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,ambiguityCase,combined,%{public}d,secondBestCombined,%{public}d,sigEnv,%{public}d", &v89, 30);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    goto LABEL_84;
  }

  if (*(a1 + 1044) <= (-1227133513 * ((*(a1 + 1072) - *(a1 + 1064)) >> 4)))
  {
    if (*(a1 + 360) <= 0.0 || (v25 = *(a1 + 272), v25 < 0.0) || (*a2 - 1) > 1)
    {
LABEL_84:
      LOBYTE(v2) = 0;
      return v2 & 1;
    }

    v26 = *(a1 + 768);
    v27 = *(a1 + 336);
    v28 = fmod(v26 - v27, 360.0);
    if (v28 < 0.0)
    {
      v28 = v28 + 360.0;
    }

    if (v28 > 180.0)
    {
      v28 = v28 + -360.0;
    }

    if (v28 > 75.0)
    {
      v29 = fmod(v27 + v28 * 0.5, 360.0);
      if (v29 >= 0.0)
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 + 360.0;
      }

      v31 = fmod(v25 - v30, 360.0);
      if (v31 < 0.0)
      {
        v31 = v31 + 360.0;
      }

      if (v31 <= 180.0)
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 + -360.0;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v33 = fabs(v32);
      v34 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a1 + 176);
        v36 = *(a1 + 272);
        v37 = *(a1 + 336);
        v38 = *(a1 + 768);
        *buf = 134350592;
        v106 = v35;
        v107 = 2050;
        *v108 = v36;
        *&v108[8] = 2050;
        v109 = v37;
        v110 = 2050;
        v111 = v38;
        v112 = 2050;
        *v113 = v30;
        *&v113[8] = 2050;
        *v114 = v33;
        *&v114[8] = 1026;
        *&v114[10] = v33 < 10.0;
        _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,lowerOutgoingCountCase,course,%{public}.2lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf,approxCourseOfTurningRoad,%{public}.2lf,turningCourseDiff,%{public}.2lf,outgoingCondition,%{public}d", buf, 0x44u);
      }

      v39 = sub_19B87DD40();
      if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v40 = *(a1 + 176);
        v41 = *(a1 + 272);
        v42 = *(a1 + 336);
        v43 = *(a1 + 768);
        v89 = 134350592;
        v90 = v40;
        v91 = 2050;
        *v92 = v41;
        *&v92[8] = 2050;
        v93 = v42;
        v94 = 2050;
        v95 = v43;
        v96 = 2050;
        *v97 = v30;
        *&v97[8] = 2050;
        *v98 = v33;
        *&v98[8] = 1026;
        *&v98[10] = v33 < 10.0;
        v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,lowerOutgoingCountCase,course,%{public}.2lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf,approxCourseOfTurningRoad,%{public}.2lf,turningCourseDiff,%{public}.2lf,outgoingCondition,%{public}d", &v89, 68);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }
      }

      if (v33 < 10.0)
      {
LABEL_83:
        LOBYTE(v2) = 1;
        return v2 & 1;
      }

      v25 = *(a1 + 272);
      v26 = *(a1 + 768);
      v27 = *(a1 + 336);
    }

    v45 = fmod(v25 - v26, 360.0);
    if (v45 < 0.0)
    {
      v45 = v45 + 360.0;
    }

    if (v45 > 180.0)
    {
      v45 = v45 + -360.0;
    }

    v46 = fabs(v45);
    v47 = fmod(v25 - v27, 360.0);
    if (v47 < 0.0)
    {
      v47 = v47 + 360.0;
    }

    if (v47 > 180.0)
    {
      v47 = v47 + -360.0;
    }

    v48 = fabs(v47);
    v49 = v48 >= 15.0 && v46 < 15.0;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v50 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v51 = *(a1 + 176);
      v52 = *(a1 + 272);
      v53 = *(a1 + 336);
      v54 = *(a1 + 768);
      v55 = *a2;
      *buf = 134350848;
      v106 = v51;
      v107 = 2050;
      *v108 = v52;
      *&v108[8] = 2050;
      v109 = v53;
      v110 = 2050;
      v111 = v54;
      v112 = 1026;
      *v113 = v46 < 15.0;
      *&v113[4] = 1026;
      *&v113[6] = v48 < 15.0;
      *v114 = 1026;
      *&v114[2] = v55;
      *&v114[6] = 1026;
      *&v114[8] = v49;
      _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,lowerOutgoingCountCase,course,%{public}.2lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf,isCrumbCourseAlignedWithOutgoing,%{public}d,isCrumbCourseAlignedWithIncoming,%{public}d,sigEnv,%{public}d,outgoingCondition,%{public}d", buf, 0x42u);
    }

    v56 = sub_19B87DD40();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v57 = *(a1 + 176);
      v58 = *(a1 + 272);
      v59 = *(a1 + 336);
      v60 = *(a1 + 768);
      v61 = *a2;
      v89 = 134350848;
      v90 = v57;
      v91 = 2050;
      *v92 = v58;
      *&v92[8] = 2050;
      v93 = v59;
      v94 = 2050;
      v95 = v60;
      v96 = 1026;
      *v97 = v46 < 15.0;
      *&v97[4] = 1026;
      *&v97[6] = v48 < 15.0;
      *v98 = 1026;
      *&v98[2] = v61;
      *&v98[6] = 1026;
      *&v98[8] = v49;
      v62 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,lowerOutgoingCountCase,course,%{public}.2lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf,isCrumbCourseAlignedWithOutgoing,%{public}d,isCrumbCourseAlignedWithIncoming,%{public}d,sigEnv,%{public}d,outgoingCondition,%{public}d", &v89, 66);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v62);
      if (v62 != buf)
      {
        free(v62);
      }
    }

    if (!v49)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v16 = *(a1 + 336);
  v17 = *(a1 + 768);
  v18 = fmod(v16 - v17, 360.0);
  if (v18 < 0.0)
  {
    v18 = v18 + 360.0;
  }

  if (v18 > 180.0)
  {
    v18 = v18 + -360.0;
  }

  v19 = fabs(v18);
  v20 = *(a1 + 360);
  if (v20 <= 0.0 || (v21 = *(a1 + 272), v21 < 0.0))
  {
    v22 = 0;
    goto LABEL_24;
  }

  v64 = fmod(v21 - v17, 360.0);
  if (v64 < 0.0)
  {
    v64 = v64 + 360.0;
  }

  if (v64 > 180.0)
  {
    v64 = v64 + -360.0;
  }

  v65 = fabs(v64);
  v22 = v65 < 25.0;
  v66 = *(a1 + 1048) >= 7.5 || v22;
  if ((*(a1 + 1048) >= 7.5 || v65 < 25.0) && v19 >= 45.0 && v65 >= 25.0)
  {
    if (v20 < 20.0)
    {
      v68 = fmod(v21 - v16, 360.0);
      v22 = 0;
      if (v68 < 0.0)
      {
        v68 = v68 + 360.0;
      }

      if (v68 > 180.0)
      {
        v68 = v68 + -360.0;
      }

      if (fabs(v68) < 10.0)
      {
        v24 = 1;
        goto LABEL_105;
      }

      goto LABEL_24;
    }

    v22 = 0;
  }

  if (!v66)
  {
LABEL_104:
    v24 = 0;
    goto LABEL_105;
  }

LABEL_24:
  if (*(a1 + 352) > 0.0)
  {
    v23 = *(a1 + 264);
    if (v23 >= 0.0 && v23 < 0.001)
    {
      goto LABEL_104;
    }
  }

  v24 = 0;
  if (*(a1 + 396) != 1)
  {
LABEL_122:
    v2 = 1;
    goto LABEL_123;
  }

LABEL_105:
  if (*(a1 + 264) == 0.0 && (*(a1 + 396) & 1) == 0 && (v20 <= 0.0 || *(a1 + 272) < 0.0))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v69 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v70 = *(a1 + 176);
      *buf = 134349056;
      v106 = v70;
      _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,position dependent", buf, 0xCu);
    }

    v71 = sub_19B87DD40();
    if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v72 = *(a1 + 176);
      v89 = 134349056;
      v90 = v72;
      v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,position dependent", &v89, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v73);
      if (v73 != buf)
      {
        free(v73);
      }
    }

    goto LABEL_122;
  }

  v2 = 0;
LABEL_123:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v74 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v75 = *(a1 + 176);
    v76 = *(a1 + 336);
    v77 = *(a1 + 768);
    v78 = *(a1 + 272);
    v79 = *(a1 + 1048);
    v80 = *(a1 + 360);
    *buf = 134351360;
    v106 = v75;
    v107 = 2050;
    *v108 = v76;
    *&v108[8] = 2050;
    v109 = v77;
    v110 = 2050;
    v111 = v78;
    v112 = 2050;
    *v113 = v79;
    *&v113[8] = 1026;
    *v114 = v2;
    *&v114[4] = 2050;
    *&v114[6] = v80;
    v115 = 1026;
    v116 = v19 >= 45.0;
    v117 = 1026;
    v118 = v22;
    v119 = 1026;
    v120 = v24;
    _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf, crumbCourse,%{public}.2lf, outgoingDistanceFromIntersection,%{public}.2lf,outgoingCondition,%{public}d,crumbCourseUnc,%{public}.2lf,significantCourseChange,%{public}d,isCrumbCourseAlignedWithOutgoing,%{public}d, isCrumbCourseAlignedWithIncoming,%{public}d", buf, 0x56u);
  }

  v81 = sub_19B87DD40();
  if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v82 = *(a1 + 176);
    v83 = *(a1 + 336);
    v84 = *(a1 + 768);
    v85 = *(a1 + 272);
    v86 = *(a1 + 1048);
    v87 = *(a1 + 360);
    v89 = 134351360;
    v90 = v82;
    v91 = 2050;
    *v92 = v83;
    *&v92[8] = 2050;
    v93 = v84;
    v94 = 2050;
    v95 = v85;
    v96 = 2050;
    *v97 = v86;
    *&v97[8] = 1026;
    *v98 = v2;
    *&v98[4] = 2050;
    *&v98[6] = v87;
    v99 = 1026;
    v100 = v19 >= 45.0;
    v101 = 1026;
    v102 = v22;
    v103 = 1026;
    v104 = v24;
    v88 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf, crumbCourse,%{public}.2lf, outgoingDistanceFromIntersection,%{public}.2lf,outgoingCondition,%{public}d,crumbCourseUnc,%{public}.2lf,significantCourseChange,%{public}d,isCrumbCourseAlignedWithOutgoing,%{public}d, isCrumbCourseAlignedWithIncoming,%{public}d", &v89, 86);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v88);
    if (v88 != buf)
    {
      free(v88);
    }
  }

  return v2 & 1;
}

void *sub_19BA0E204(uint64_t *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v28 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v29 = *a1;
      *buf = 134349056;
      *&buf[4] = v29;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpectedly zero candidates,getAlternateBestCandidate", buf, 0xCu);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v31 = *a1;
      v48 = 134349056;
      v49 = v31;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unexpectedly zero candidates,getAlternateBestCandidate", &v48, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMCandidateVector::getBestAndAlternateBestCandidate(const MMCandidate *&, const MMCandidate *&) const", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    goto LABEL_65;
  }

  v2 = a1[1];
  v3 = a1 + 2;
  if (v2 == a1 + 2)
  {
    goto LABEL_65;
  }

  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  do
  {
    if (*(v6 + 180) > v5)
    {
      v5 = *(v6 + 180);
      v4 = v6 + 56;
    }

    v7 = *(v6 + 8);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v6 + 16);
        v9 = *v8 == v6;
        v6 = v8;
      }

      while (!v9);
    }

    v6 = v8;
  }

  while (v8 != v3);
  if (!v4 || !*(v4 + 8))
  {
LABEL_65:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v33 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v34 = *a1;
      *buf = 134349056;
      *&buf[4] = v34;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpectedly unable to find candidates,getSolutionCandidate", buf, 0xCu);
    }

    v35 = sub_19B87DD40();
    if ((*(v35 + 160) & 0x80000000) != 0 && (*(v35 + 164) & 0x80000000) != 0 && (*(v35 + 168) & 0x80000000) != 0 && !*(v35 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v36 = *a1;
    v48 = 134349056;
    v49 = v36;
    v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unexpectedly unable to find candidates,getSolutionCandidate", &v48, 12);
    goto LABEL_75;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    sub_19B97106C(v4 + 8, buf);
    if ((*(v2 + 32) != *buf || *(v2 + 48) != buf[16] || *(v2 + 40) != *&buf[8]) && *(v2 + 180) > v11)
    {
      v10 = v2 + 56;
      v11 = *(v2 + 180);
    }

    v12 = *(v2 + 8);
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = *(v2 + 16);
        v9 = *v13 == v2;
        v2 = v13;
      }

      while (!v9);
    }

    v2 = v13;
  }

  while (v13 != v3);
  if (!*(v4 + 8))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v40 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v41 = *a1;
      *buf = 134349056;
      *&buf[4] = v41;
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpectedly, best candidate is nullptr", buf, 0xCu);
    }

    v42 = sub_19B87DD40();
    if ((*(v42 + 160) & 0x80000000) != 0 && (*(v42 + 164) & 0x80000000) != 0 && (*(v42 + 168) & 0x80000000) != 0 && !*(v42 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v43 = *a1;
    v48 = 134349056;
    v49 = v43;
    v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unexpectedly, best candidate is nullptr", &v48, 12);
LABEL_75:
    v38 = v37;
    sub_19B885924("Generic", 1, 0, 0, "const MMCandidate *const CLParticleMM::MMCandidateVector::getSolutionCandidate() const", "CoreLocation: %s\n", v37);
    if (v38 != buf)
    {
      free(v38);
    }

    return 0;
  }

  if (v10)
  {
    if (*(v10 + 8))
    {
      sub_19B97106C(v4 + 8, v46);
      sub_19B97106C(v10 + 8, v44);
      if (v44[0] == v46[0] && v45 != v47 && *(v10 + 153) == 1 && *(v4 + 153) == 1 && *(v10 + 124) == *(v4 + 124) && *(v10 + 128) == v44[0] && *(v10 + 144) == v47 && *(v10 + 136) == v46[1] && *(v4 + 128) == v44[0] && *(v4 + 144) == v45 && *(v4 + 136) == v44[1] && *(v10 + 1072) - *(v10 + 1064) > *(v4 + 1072) - *(v4 + 1064))
      {
        v14 = sub_19B8E3CB0();
        *buf = -1227133513 * ((*(v4 + 1072) - *(v4 + 1064)) >> 4);
        v48 = -1227133513 * ((*(v10 + 1072) - *(v10 + 1064)) >> 4);
        sub_19BA0EAE8(v14, a1, v46, buf, &v48, (v4 + 124), (v10 + 124));
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v15 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v16 = *a1;
          v17 = -1227133513 * ((*(v4 + 1072) - *(v4 + 1064)) >> 4);
          v18 = -1227133513 * ((*(v10 + 1072) - *(v10 + 1064)) >> 4);
          v19 = *(v4 + 124);
          v20 = *(v10 + 124);
          *buf = 134350336;
          *&buf[4] = v16;
          *&buf[12] = 2050;
          *&buf[14] = v46[0];
          v61 = 1026;
          v62 = v17;
          v63 = 1026;
          v64 = v18;
          v65 = 1026;
          v66 = v19;
          v67 = 1026;
          v68 = v20;
          _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,overrode bestCandidate with alternate,roadID,%{public}lld,bestIncoming,%{public}d,altBestIncoming,%{public}d,bestCombined,%{public}d,altBestCombined,%{public}d", buf, 0x2Eu);
        }

        v21 = sub_19B87DD40();
        if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v22 = *a1;
          v23 = -1227133513 * ((*(v4 + 1072) - *(v4 + 1064)) >> 4);
          v24 = -1227133513 * ((*(v10 + 1072) - *(v10 + 1064)) >> 4);
          v25 = *(v4 + 124);
          v26 = *(v10 + 124);
          v48 = 134350336;
          v49 = v22;
          v50 = 2050;
          v51 = v46[0];
          v52 = 1026;
          v53 = v23;
          v54 = 1026;
          v55 = v24;
          v56 = 1026;
          v57 = v25;
          v58 = 1026;
          v59 = v26;
          v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,overrode bestCandidate with alternate,roadID,%{public}lld,bestIncoming,%{public}d,altBestIncoming,%{public}d,bestCombined,%{public}d,altBestCombined,%{public}d", &v48, 46);
          sub_19B885924("Generic", 1, 0, 2, "const MMCandidate *const CLParticleMM::MMCandidateVector::getSolutionCandidate() const", "CoreLocation: %s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        return v10;
      }
    }
  }

  return v4;
}

void sub_19BA0EAE8(_BYTE *a1, void *a2, void *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  if (*a1 == 1)
  {
    sub_19B8759E8(&v19, "CLMMPED,%{public}.1lf,overrode bestCandidate with alternate,roadID,%{public}lld,bestIncoming,%{public}d,altBestIncoming,%{public}d,bestCombined,%{public}d,altBestCombined,%{public}d");
    sub_19BA2FBB8(&v19);
    bzero(a1 + 56, 0x800uLL);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      snprintf(a1 + 56, 0x800uLL, &v19, *a2, *a3, *a4, *a5, *a6, *a7);
    }

    else
    {
      snprintf(a1 + 56, 0x800uLL, v19.__r_.__value_.__l.__data_, *a2, *a3, *a4, *a5, *a6, *a7);
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_19B8759E8(__p, a1 + 56);
    sub_19B8E3D48(a1, __p, Current, v15, v16);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }
}

double sub_19BA0EC08(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1[3])
  {
    v2 = sub_19BA0E204(a1);
    v3 = 0.0;
    if (v2)
    {
      v4 = (v2 + 1);
      if (v2[1])
      {
        v5 = a1[1];
        v6 = a1 + 2;
        if (v5 != v6)
        {
          do
          {
            sub_19B97106C(v4, &buf);
            if (*(v5 + 32) == buf && *(v5 + 48) == v20)
            {
              v7 = *(v5 + 120);
              if (v7 <= v3)
              {
                v7 = v3;
              }

              if (*(v5 + 40) != *(&buf + 1))
              {
                v3 = v7;
              }
            }

            else if (*(v5 + 120) > v3)
            {
              v3 = *(v5 + 120);
            }

            v8 = *(v5 + 8);
            if (v8)
            {
              do
              {
                v9 = v8;
                v8 = *v8;
              }

              while (v8);
            }

            else
            {
              do
              {
                v9 = *(v5 + 16);
                v10 = *v9 == v5;
                v5 = v9;
              }

              while (!v10);
            }

            v5 = v9;
          }

          while (v9 != v6);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v11 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v12 = *a1;
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpectedly zero candidates,getSecondBestCandidate", &buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || (v3 = 0.0, *(v13 + 152)))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v14 = *a1;
      v17 = 134349056;
      v18 = v14;
      v15 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unexpectedly zero candidates,getSecondBestCandidate", &v17, 12);
      sub_19B885924("Generic", 1, 0, 0, "double CLParticleMM::MMCandidateVector::getBestParticleScoreForAlternateCandidate() const", "CoreLocation: %s\n", v15);
      if (v15 != &buf)
      {
        free(v15);
      }

      return 0.0;
    }
  }

  return v3;
}

void sub_19BA0EEA8(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v2 = (a1 + 16);
  sub_19BA2E9A8(*(a1 + 16));
  v3 = v5;
  *(v2 - 1) = &v5;
  *v2 = v3;
  v4 = v6;
  v2[1] = v6;
  if (v4)
  {
    *(v3 + 16) = v2;
    v5 = 0;
    v6 = 0;
    v3 = 0;
  }

  else
  {
    *(a1 + 8) = v2;
  }

  sub_19BA2E9A8(v3);
}

uint64_t sub_19BA0EF24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  v9 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 64) = v9;
  if (a1 != a2)
  {
    sub_19B967884((a1 + 96), *(a2 + 96), *(a2 + 104), 0x8E38E38E38E38E39 * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  }

  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  v12 = *(a2 + 248);
  v13 = *(a2 + 264);
  v14 = *(a2 + 280);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 264) = v13;
  *(a1 + 280) = v14;
  *(a1 + 248) = v12;
  v15 = *(a2 + 168);
  v16 = *(a2 + 184);
  v17 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v17;
  *(a1 + 184) = v16;
  *(a1 + 168) = v15;
  std::string::operator=((a1 + 296), (a2 + 296));
  memcpy((a1 + 320), (a2 + 320), 0x118uLL);
  v18 = *(a2 + 648);
  v20 = *(a2 + 600);
  v19 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 648) = v18;
  *(a1 + 600) = v20;
  *(a1 + 616) = v19;
  v21 = *(a2 + 712);
  v23 = *(a2 + 664);
  v22 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = v21;
  *(a1 + 664) = v23;
  *(a1 + 680) = v22;
  std::string::operator=((a1 + 728), (a2 + 728));
  memcpy((a1 + 752), (a2 + 752), 0x118uLL);
  v24 = *(a2 + 1048);
  *(a1 + 1032) = *(a2 + 1032);
  *(a1 + 1048) = v24;
  if (a1 != a2)
  {
    sub_19BA2EB5C((a1 + 1064), *(a2 + 1064), *(a2 + 1072), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1072) - *(a2 + 1064)) >> 4));
  }

  v25 = *(a2 + 1088);
  v26 = *(a2 + 1096);
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1088) = v25;
  v27 = *(a1 + 1096);
  *(a1 + 1096) = v26;
  if (v27)
  {
    sub_19B8750F8(v27);
  }

  v28 = *(a2 + 1104);
  v29 = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1120) = v29;
  *(a1 + 1104) = v28;
  return a1;
}

void sub_19BA0F110(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 88) = 0;
  v3 = (a1 + 88);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  if (a2 != a3)
  {
    v5 = a2;
    v7 = 0.0;
    do
    {
      v8 = *(v5 + 7);
      if (v8 > v7)
      {
        v10 = *v5;
        v9 = v5[1];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = *(a1 + 8);
        *a1 = v10;
        *(a1 + 8) = v9;
        if (v11)
        {
          sub_19B8750F8(v11);
        }

        v12 = *(v5 + 2);
        *(a1 + 16) = *(v5 + 1);
        *(a1 + 32) = v12;
        *(a1 + 48) = v5[6];
        *(a1 + 56) = *(v5 + 7);
        *(a1 + 65) = *(v5 + 65);
        if (v5 != a1)
        {
          sub_19B967884(v3, v5[11], v5[12], 0x8E38E38E38E38E39 * ((v5[12] - v5[11]) >> 3));
        }

        v7 = v8;
      }

      v5 += 14;
    }

    while (v5 != a3);
  }
}

uint64_t sub_19BA0F244(uint64_t *a1, uint64_t a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v15 = *a1;
  v16 = v4;
  if (*a1 != v4)
  {
    do
    {
      while (*v5)
      {
        sub_19B97106C(v5, &buf);
        if (buf == *a2 && v20 == *(a2 + 16) && *(&buf + 1) == *(a2 + 8))
        {
          v4 = sub_19BA2EACC((v5 + 112), a1[1], v5);
          for (i = a1[1]; i != v4; sub_19B988BB4(i))
          {
            i -= 14;
          }

          a1[1] = v4;
        }

        else
        {
          v5 += 112;
          v4 = a1[1];
        }

        if (v5 == v4)
        {
          return -1227133513 * ((v16 - v15) >> 4) + 1227133513 * ((v4 - *a1) >> 4);
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v7 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134349056;
        *(&buf + 4) = a3;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,particle road is null while eliminateParticlesWithRoadKey", &buf, 0xCu);
      }

      v8 = sub_19B87DD40();
      if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v17 = 134349056;
        v18 = a3;
        v9 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,particle road is null while eliminateParticlesWithRoadKey", &v17, 12);
        sub_19B885924("Generic", 1, 0, 0, "int CLParticleMM::MMParticleVector::eliminateParticlesWithRoadKey(const CFAbsoluteTime, const CLParticleMapMatcherCommon::RoadKey)", "CoreLocation: %s\n", v9);
        if (v9 != &buf)
        {
          free(v9);
        }
      }

      v10 = sub_19BA2EACC((v5 + 112), a1[1], v5);
      for (j = a1[1]; j != v10; sub_19B988BB4(j))
      {
        j -= 14;
      }

      a1[1] = v10;
    }

    while (v5 != v10);
    v4 = v5;
  }

  return -1227133513 * ((v16 - v15) >> 4) + 1227133513 * ((v4 - *a1) >> 4);
}

uint64_t sub_19BA0F554(double **a1, double a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v6 = 0.0;
LABEL_46:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v34 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      v42 = a2;
      v43 = 2050;
      v44 = v6;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to normalizeLikelihoods, negative/zero totalScore after regular update,%{public}.8lf", buf, 0x16u);
    }

    v35 = sub_19B87DD40();
    if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v37 = 134349312;
      v38 = a2;
      v39 = 2050;
      v40 = v6;
      v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unable to normalizeLikelihoods, negative/zero totalScore after regular update,%{public}.8lf", &v37, 22);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::computeLikelihoods(const CFAbsoluteTime, BOOL)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    return 0;
  }

  v6 = 0.0;
  do
  {
    v3[7] = 0.0;
    v3[8] = 0.0;
    v3[9] = 0.0;
    v7 = *(v3 + 11);
    v8 = *(v3 + 12);
    v9 = 0.0;
    if (v7 != v8)
    {
      v10 = 0.0;
      do
      {
        if (*(v7 + 64) != 2)
        {
          v11 = *(v7 + 24);
          v12 = *v7 * v11;
          if (v9 > 0.0)
          {
            v13 = log(v9);
            v14 = log(v12);
            v12 = exp(v13 + v14);
          }

          v3[7] = v12;
          v10 = v10 + *(v7 + 16) * v11;
          v3[9] = v10;
          v9 = v12;
        }

        v7 += 72;
      }

      while (v7 != v8);
    }

    v6 = v6 + v9;
    v3 += 14;
  }

  while (v3 != v4);
  if (v6 <= 0.0)
  {
    goto LABEL_46;
  }

  v16 = *a1;
  v15 = a1[1];
  if (v16 == v15)
  {
    return 0;
  }

  v17 = v16;
  do
  {
    v17[8] = v17[7] / v6;
    v17 += 14;
  }

  while (v17 != v15);
  v18 = 0.0;
  v19 = v16;
  do
  {
    v20 = *(v19 + 12);
    v21 = *(v19 + 11);
    if (v21 == v20)
    {
      goto LABEL_40;
    }

    v22 = 0.0;
    v23 = *(v19 + 11);
    do
    {
      if (*(v23 + 64) == 2)
      {
        v22 = v22 + *(v23 + 24);
      }

      v23 += 72;
    }

    while (v23 != v20);
    if (*&v22 > -1 && ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v22 - 1) < 0xFFFFFFFFFFFFFLL)
    {
      v26 = *(v19 + 11);
      do
      {
        if (*(v26 + 64) == 2)
        {
          *(v26 + 24) = *(v26 + 24) / v22;
        }

        v26 += 72;
      }

      while (v26 != v20);
    }

    v27 = 0.0;
    v28 = 0.0;
    do
    {
      if (*(v21 + 64) == 2)
      {
        v29 = *(v21 + 24);
        v28 = v28 + *v21 * v29;
        v27 = v27 + *(v21 + 16) * v29;
      }

      v21 += 72;
    }

    while (v21 != v20);
    if (v28 <= 0.0)
    {
LABEL_40:
      v28 = v19[7];
    }

    else
    {
      v30 = v19[7];
      if (v30 > 0.0)
      {
        v31 = log(v30);
        v32 = log(v28);
        v28 = exp(v32 + v31);
      }

      v19[7] = v28;
      v19[9] = v27 + v19[9];
    }

    v18 = v18 + v28;
    v19 += 14;
  }

  while (v19 != v15);
  if (v18 <= 0.0)
  {
    return 0;
  }

  do
  {
    v16[8] = v16[7] / v18;
    v16 += 14;
  }

  while (v16 != v15);
  return 1;
}

BOOL sub_19BA0F96C(float64x2_t *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    *buf = 0;
    sub_19BA0C3BC(a1, buf, &v26, a3[4], a3[5], *(a2 + 96), *(a3 + 6), *(a2 + 80), *(a2 + 88));
    v8 = *a3;
    v9 = *a3 != 0;
    if (*a3)
    {
      v10 = *(v8 + 20);
      v11 = 0.5;
      if (v10 != 9)
      {
        v12 = *(v8 + 72);
        if (v12 != 6 && v12 != 255)
        {
          v13 = *(v8 + 96);
          if (v13 < 0.000001)
          {
            v13 = 1.0;
            if ((v10 & 0xFFFFFFFE) != 8)
            {
              v13 = sub_19B988DA8(v10, *(v8 + 16));
            }
          }

          v11 = v13 * 0.5 + 1.0;
        }
      }

      v14 = a3[4];
      v15 = a3[5];
      v24 = v15;
      v25 = v14;
      if (*buf < 0.0)
      {
        v11 = -v11;
      }

      sub_19BA0C0F8(a1->f64, &v25, &v24, v14, v15, *(a2 + 96), *(a3 + 6), v11);
      sub_19BA0BE88(a1, (a4 + 40), (a4 + 32), (a4 + 48), v25, v24, *(a2 + 96), *(a2 + 80), *(a2 + 88), *(a2 + 96));
      if (*(a2 + 40) == 1)
      {
        v16 = *(a2 + 104);
        if (v16 >= 0.0 && *(a2 + 120) > 0.0)
        {
          v17 = fmod(v16 - *(a3 + 6), 360.0);
          if (v17 < 0.0)
          {
            v17 = v17 + 360.0;
          }

          if (v17 > 180.0)
          {
            v17 = v17 + -360.0;
          }

          *(a4 + 56) = fabs(v17);
        }
      }

      sub_19B9C1C60(a2, a4);
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v18 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a2 + 200);
      *buf = 134349056;
      *&buf[4] = v19;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,NULL road when computing score", buf, 0xCu);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v21 = *(a2 + 200);
      v26 = 134349056;
      v27 = v21;
      v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,NULL road when computing score", &v26, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::calculateScoreAndVarFactor(const CLParticleMapMatcherCommon::CLMMMeasurementData &, const CLMapGeometry::DistanceQueryResult &, CLMapDataUtil::MapMatcherScore &)", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    return 0;
  }

  return v9;
}

BOOL sub_19BA0FCCC(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    memset(v9, 0, sizeof(v9));
    v10 = 0x3FF0000000000000;
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    result = sub_19BA0F96C(a1, a3, v4, v9);
    if (!result)
    {
      break;
    }

    v13 = a2;
    v10 = *(a3 + 128);
    sub_19B973D80((v4 + 11), v9);
    sub_19B988454(v4);
    v4 += 14;
    if (v4 == v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_19BA0FD94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v367 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 384);
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
      *(buf.__r_.__value_.__r.__words + 4) = v3;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, geometry is null", &buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *__p = 134349056;
      *&__p[4] = v3;
      v19 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected, geometry is null", __p, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v19);
      if (v19 != &buf)
      {
        free(v19);
      }
    }

    return 0;
  }

  v5 = a1;
  v258 = 0;
  v259 = 0;
  v260 = 0;
  sub_19B973FA0(&v258, 0x60uLL);
  if (*(a3 + 264) > 0.0)
  {
    if (*(v5 + 604))
    {
LABEL_4:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v6 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(v5 + 384);
        v8 = *(v5 + 472);
        v9 = *(v5 + 604);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
        *(buf.__r_.__value_.__r.__words + 4) = v7;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1026;
        v294 = v9;
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Reducing particles to half,speed,%{public}.1lf,static,%{public}d", &buf, 0x1Cu);
      }

      v10 = sub_19B87DD40();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v11 = *(v5 + 384);
        v12 = *(v5 + 472);
        v13 = *(v5 + 604);
        *__p = 134349568;
        *&__p[4] = v11;
        *&__p[12] = 2050;
        *&__p[14] = v12;
        v264 = 1026;
        v265 = v13;
        v14 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,Reducing particles to half,speed,%{public}.1lf,static,%{public}d", __p, 28);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v14);
        if (v14 != &buf)
        {
          free(v14);
        }
      }

      v15 = 48;
      v16 = 5;
      goto LABEL_41;
    }

    if (*(v5 + 560) <= 0.0)
    {
      v15 = 96;
      v16 = 10;
    }

    else
    {
      v24 = *(v5 + 472);
      v15 = 96;
      v16 = 10;
      if (v24 >= 0.0 && v24 < 0.001)
      {
        if (*(a3 + 424) > 0.0)
        {
          v25 = *(a3 + 336);
          if (v25 >= 0.0 && v25 < 0.001)
          {
            goto LABEL_4;
          }
        }

        if (*(a3 + 468) == 1)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_41:
    if (*(a3 + 504) == 1 && *(a3 + 232) == 1 && *(a3 + 120) && *(a3 + 761) == *(v5 + 897))
    {
      do
      {
        sub_19B973C04(&v258, a3 + 120);
        --v16;
      }

      while (v16);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v26 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v27 = *(v5 + 384);
        v28 = *(a3 + 176);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
        *(buf.__r_.__value_.__r.__words + 4) = v27;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v28;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Added prior particle,score,%{public}.8lf", &buf, 0x16u);
      }

      v29 = sub_19B87DD40();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v30 = *(v5 + 384);
        v31 = *(a3 + 176);
        *__p = 134349312;
        *&__p[4] = v30;
        *&__p[12] = 2050;
        *&__p[14] = v31;
        v32 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,Added prior particle,score,%{public}.8lf", __p, 22);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v32);
        if (v32 != &buf)
        {
          free(v32);
        }
      }
    }

    goto LABEL_58;
  }

  v21 = *(v5 + 40);
  v15 = 96;
  if (&v258 != (v5 + 40))
  {
    v22 = *(v5 + 48);
    v23 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 4);
    if (v23 <= 0x5F)
    {
      sub_19BA2EB5C(&v258, v21, v22, v23);
    }
  }

LABEL_58:
  v33 = *(v5 + 40);
  *(v5 + 88) = 0;
  v34 = *(v5 + 48) - v33;
  if (!v34)
  {
    goto LABEL_167;
  }

  v35 = 0x6DB6DB6DB6DB6DB7 * (v34 >> 4);
  v37 = (v5 + 64);
  v36 = *(v5 + 64);
  v38 = v35;
  if (v36)
  {
    *(v5 + 72) = v36;
    operator delete(v36);
    v38 = 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 48) - *(v5 + 40)) >> 4);
  }

  *v37 = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  sub_19B97AB8C((v5 + 64), v38);
  *(v5 + 96) = 0xBFF0000000000000;
  if ((sub_19BA0F554((v5 + 40), *&v3) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v77 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
      *(buf.__r_.__value_.__r.__words + 4) = v3;
      _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to computeLikelihoods", &buf, 0xCu);
    }

    v78 = sub_19B87DD40();
    if ((*(v78 + 160) & 0x80000000) != 0 && (*(v78 + 164) & 0x80000000) != 0 && (*(v78 + 168) & 0x80000000) != 0 && !*(v78 + 152))
    {
      goto LABEL_129;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *__p = 134349056;
    *&__p[4] = v3;
    v79 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unable to computeLikelihoods", __p, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::computeLikelihoodsAndCSWVector(const CFAbsoluteTime)", "CoreLocation: %s\n", v79);
    goto LABEL_127;
  }

  v39 = *(v5 + 40);
  v40 = *(v5 + 48);
  if (v39 == v40)
  {
    v43 = 0.0;
LABEL_117:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v80 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
      *(buf.__r_.__value_.__r.__words + 4) = v3;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v43;
      _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,invalid Neffsum,%{public}.3lf", &buf, 0x16u);
    }

    v81 = sub_19B87DD40();
    if ((*(v81 + 160) & 0x80000000) != 0 && (*(v81 + 164) & 0x80000000) != 0 && (*(v81 + 168) & 0x80000000) != 0 && !*(v81 + 152))
    {
      goto LABEL_129;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *__p = 134349312;
    *&__p[4] = v3;
    *&__p[12] = 2050;
    *&__p[14] = v43;
    v79 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,invalid Neffsum,%{public}.3lf", __p, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::computeLikelihoodsAndCSWVector(const CFAbsoluteTime)", "CoreLocation: %s\n", v79);
LABEL_127:
    if (v79 != &buf)
    {
      free(v79);
    }

LABEL_129:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v82 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
      *(buf.__r_.__value_.__r.__words + 4) = v3;
      _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to compute likelihoods and csw vector", &buf, 0xCu);
    }

    v83 = sub_19B87DD40();
    if ((*(v83 + 160) & 0x80000000) == 0 || (*(v83 + 164) & 0x80000000) == 0 || (*(v83 + 168) & 0x80000000) == 0 || *(v83 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *__p = 134349056;
      *&__p[4] = v3;
      v84 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unable to compute likelihoods and csw vector", __p, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::resample(const CFAbsoluteTime, const int, CLParticleMapMatcherCommon::ParticleVector &)", "CoreLocation: %s\n", v84);
      if (v84 != &buf)
      {
        free(v84);
      }
    }

    goto LABEL_140;
  }

  v247 = a3;
  v41 = *(v5 + 72);
  v42 = 0.0;
  v43 = 0.0;
  do
  {
    v44 = *(v39 + 64);
    v42 = v42 + v44;
    v45 = v42;
    v46 = *(v5 + 80);
    if (v41 >= v46)
    {
      v47 = *v37;
      v48 = v41 - *v37;
      v49 = v48 >> 2;
      v50 = (v48 >> 2) + 1;
      if (v50 >> 62)
      {
        sub_19B8B8A40();
      }

      v51 = v46 - v47;
      if (v51 >> 1 > v50)
      {
        v50 = v51 >> 1;
      }

      if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v52 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v52 = v50;
      }

      if (v52)
      {
        sub_19B8F1D64(v5 + 64, v52);
      }

      *(4 * v49) = v45;
      v41 = (4 * v49 + 4);
      memcpy(0, v47, v48);
      v53 = *(v5 + 64);
      *(v5 + 64) = 0;
      *(v5 + 72) = v41;
      *(v5 + 80) = 0;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      *v41++ = v45;
    }

    v43 = v43 + v44 * v44;
    *(v5 + 72) = v41;
    v39 += 112;
  }

  while (v39 != v40);
  if (v43 <= 0.0)
  {
    goto LABEL_117;
  }

  *(v5 + 96) = 1.0 / v43;
  v55 = v258;
  v54 = v259;
  LODWORD(buf.__r_.__value_.__l.__data_) = 0;
  sub_19B988C58(__p, v35, &buf);
  a3 = v247;
  v56 = 0x9249249249249249 * ((v54 - v55) >> 4) + v15;
  if (v56)
  {
    for (i = 0; i != v56; ++i)
    {
      v58 = random();
      v59 = *(v5 + 64);
      v60 = *(v5 + 72);
      if (v60 != v59)
      {
        v61 = vcvts_n_f32_s64(v58, 0x1FuLL);
        v62 = v60 - v59;
        v60 = *(v5 + 64);
        do
        {
          v63 = v62 >> 1;
          v64 = &v60[v62 >> 1];
          v66 = *v64;
          v65 = v64 + 1;
          v62 += ~(v62 >> 1);
          if (v66 < v61)
          {
            v60 = v65;
          }

          else
          {
            v62 = v63;
          }
        }

        while (v62);
      }

      ++*(*__p + ((v60 - v59) << 30 >> 30));
    }
  }

  v68 = *(v5 + 40);
  v67 = *(v5 + 48);
  if (v68 != v67)
  {
    v69 = 0;
    v70 = *__p;
    do
    {
      if (v69 >= (*&__p[8] - v70) >> 2)
      {
        break;
      }

      if (*(v70 + 4 * v69) >= 1)
      {
        v71 = 0;
        do
        {
          sub_19B973C04(&v258, v68);
          ++v71;
          v70 = *__p;
        }

        while (v71 < *(*__p + 4 * v69));
        v67 = *(v5 + 48);
      }

      v68 += 112;
      ++v69;
    }

    while (v68 != v67);
  }

  v72 = v259;
  v73 = 0x6DB6DB6DB6DB6DB7 * ((v259 - v258) >> 4);
  if (v73 <= v15)
  {
    v88 = *(v5 + 40);
    *(v5 + 40) = v258;
    *(v5 + 48) = v72;
    v258 = v88;
    v259 = v67;
    v89 = *(v5 + 56);
    *(v5 + 56) = v260;
    v260 = v89;
    *(v5 + 88) = 1;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v90 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v91 = *(v5 + 96);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
      *(buf.__r_.__value_.__r.__words + 4) = v3;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v91;
      _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Resampled,Neff,%{public}lf", &buf, 0x16u);
    }

    v92 = sub_19B87DD40();
    if (*(v92 + 160) > 1 || *(v92 + 164) > 1 || *(v92 + 168) > 1 || *(v92 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v93 = *(v5 + 96);
      *v292 = 134349312;
      *&v292[4] = v3;
      *&v292[12] = 2050;
      *&v292[14] = v93;
      v76 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,Resampled,Neff,%{public}lf", v292, 22);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMParticleVector::resample(const CFAbsoluteTime, const int, CLParticleMapMatcherCommon::ParticleVector &)", "CoreLocation: %s\n", v76);
      goto LABEL_162;
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v74 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
      *(buf.__r_.__value_.__r.__words + 4) = v3;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v73;
      _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected number of particles after resampling,%{public}d", &buf, 0x12u);
    }

    v75 = sub_19B87DD40();
    if ((*(v75 + 160) & 0x80000000) == 0 || (*(v75 + 164) & 0x80000000) == 0 || (*(v75 + 168) & 0x80000000) == 0 || *(v75 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v292 = 134349312;
      *&v292[4] = v3;
      *&v292[12] = 1026;
      *&v292[14] = v73;
      v76 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected number of particles after resampling,%{public}d", v292, 18);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::resample(const CFAbsoluteTime, const int, CLParticleMapMatcherCommon::ParticleVector &)", "CoreLocation: %s\n", v76);
LABEL_162:
      if (v76 != &buf)
      {
        free(v76);
      }
    }
  }

  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if (v73 > v15)
  {
LABEL_140:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v85 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
      *(buf.__r_.__value_.__r.__words + 4) = v3;
      _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,resample failed", &buf, 0xCu);
    }

    v86 = sub_19B87DD40();
    if (*(v86 + 160) <= 1 && *(v86 + 164) <= 1 && *(v86 + 168) <= 1 && !*(v86 + 152))
    {
      goto LABEL_400;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *__p = 134349056;
    *&__p[4] = v3;
    v87 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,resample failed", __p, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v87);
    goto LABEL_398;
  }

LABEL_167:
  v248 = a3;
  sub_19BA0EEA8(v5 + 104);
  v94 = *(v5 + 40);
  v255 = *(v5 + 48);
  v257 = v5;
  if (v94 == v255)
  {
LABEL_187:
    *(v5 + 104) = v3;
    v105 = a2[1];
    v254 = *a2;
    if (v105)
    {
      atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v106 = *(v5 + 384);
    if (v254)
    {
      if (*(v5 + 128))
      {
        v107 = *(v5 + 112);
        v108 = 1;
        v256 = (v5 + 120);
        if (v107 == (v5 + 120))
        {
          v225 = v248;
          if (!v105)
          {
LABEL_373:
            if (v108)
            {
              if (sub_19BA12B84(v5, v225))
              {
                v20 = 1;
                goto LABEL_401;
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v239 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                *(buf.__r_.__value_.__r.__words + 4) = v3;
                _os_log_impl(&dword_19B873000, v239, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,extractSolution failed", &buf, 0xCu);
              }

              v240 = sub_19B87DD40();
              if (*(v240 + 160) <= 1 && *(v240 + 164) <= 1 && *(v240 + 168) <= 1 && !*(v240 + 152))
              {
                goto LABEL_400;
              }

              bzero(&buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              *__p = 134349056;
              *&__p[4] = v3;
              v87 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,extractSolution failed", __p, 12);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v87);
            }

            else
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v237 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                *(buf.__r_.__value_.__r.__words + 4) = v3;
                _os_log_impl(&dword_19B873000, v237, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,assessCandidates failed", &buf, 0xCu);
              }

              v238 = sub_19B87DD40();
              if (*(v238 + 160) <= 1 && *(v238 + 164) <= 1 && *(v238 + 168) <= 1 && !*(v238 + 152))
              {
                goto LABEL_400;
              }

              bzero(&buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              *__p = 134349056;
              *&__p[4] = v3;
              v87 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,assessCandidates failed", __p, 12);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v87);
            }

LABEL_398:
            if (v87 != &buf)
            {
              free(v87);
            }

            goto LABEL_400;
          }

LABEL_372:
          sub_19B8750F8(v105);
          goto LABEL_373;
        }

        v251 = v105;
        v253 = (v5 + 376);
        while (v107[141] != v107[140])
        {
          v109 = v107[143];
          sub_19B9F5AA8(v109);
          v110 = (v107 + 143);
          if (v109[5] <= 0.0)
          {
            v116 = 0.0;
            v117 = 1.0;
          }

          else
          {
            v111 = v107[141];
            v112 = v107[140];
            if (v111 == v112)
            {
              v115 = 0.0;
            }

            else
            {
              v113 = 0x6DB6DB6DB6DB6DB7 * ((v111 - v112) >> 4);
              v114 = 0.0;
              do
              {
                v114 = v114 + *(v112 + 48);
                v112 += 112;
              }

              while (v112 != v111);
              v115 = v114 / v113;
            }

            v118 = *v110;
            sub_19B9F5AA8(*v110);
            v119 = 40.0 / v118[5];
            if (v119 > 1.0)
            {
              v119 = 1.0;
            }

            if (v115 - v119 >= 0.0)
            {
              v116 = v115 - v119;
            }

            else
            {
              v116 = 0.0;
            }

            v120 = v115 + v119;
            if (v120 <= 1.0)
            {
              v117 = v120;
            }

            else
            {
              v117 = 1.0;
            }
          }

          v121 = v107[140];
          v122 = v107[141];
          if (v121 == v122)
          {
            v131 = v107[140];
          }

          else
          {
            do
            {
              v123 = *(v121 + 48);
              if (v123 >= v116 && v123 <= v117)
              {
                ++*(v107 + 44);
                if (*(v121 + 56) > *(v107 + 15))
                {
                  v126 = *v121;
                  v125 = *(v121 + 8);
                  if (v125)
                  {
                    atomic_fetch_add_explicit((v125 + 8), 1uLL, memory_order_relaxed);
                  }

                  v127 = v107[9];
                  v107[8] = v126;
                  v107[9] = v125;
                  if (v127)
                  {
                    sub_19B8750F8(v127);
                  }

                  v128 = *(v121 + 16);
                  v129 = *(v121 + 32);
                  v107[14] = *(v121 + 48);
                  *(v107 + 5) = v128;
                  *(v107 + 6) = v129;
                  v130 = *(v121 + 56);
                  *(v107 + 129) = *(v121 + 65);
                  *(v107 + 15) = v130;
                  if (v121 != v107 + 8)
                  {
                    sub_19B967884(v107 + 19, *(v121 + 88), *(v121 + 96), 0x8E38E38E38E38E39 * ((*(v121 + 96) - *(v121 + 88)) >> 3));
                  }
                }
              }

              v121 += 112;
            }

            while (v121 != v122);
            v131 = v107[141];
            v121 = v107[140];
          }

          *(v107 + 45) = -1227133513 * ((v131 - v121) >> 4);
          v132 = *v253;
          v133 = *(v257 + 392);
          v134 = *(v257 + 424);
          *(v107 + 16) = *(v257 + 408);
          *(v107 + 17) = v134;
          *(v107 + 14) = v132;
          *(v107 + 15) = v133;
          v135 = *(v257 + 440);
          v136 = *(v257 + 456);
          v137 = *(v257 + 488);
          *(v107 + 20) = *(v257 + 472);
          *(v107 + 21) = v137;
          *(v107 + 18) = v135;
          *(v107 + 19) = v136;
          std::string::operator=((v107 + 44), (v5 + 504));
          memcpy(v107 + 47, (v5 + 528), 0x118uLL);
          v138 = v107[141];
          v139 = v107[140];
          if (v138 == v139)
          {
            v142 = 0.0;
          }

          else
          {
            v140 = 0x6DB6DB6DB6DB6DB7 * ((v138 - v139) >> 4);
            v141 = 0.0;
            do
            {
              v141 = v141 + *(v139 + 48);
              v139 += 112;
            }

            while (v139 != v138);
            v142 = v141 / v140;
          }

          v262 = v142;
          if ((sub_19B9DF3F8(v254, (v107 + 28), v107 + 143, *(v107 + 48), &v262, 1) & 1) == 0)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v225 = v248;
            v105 = v251;
            v235 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
              *(buf.__r_.__value_.__r.__words + 4) = v106;
              _os_log_impl(&dword_19B873000, v235, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,interpolateOnRoad returned false, determining mean road position", &buf, 0xCu);
            }

            v236 = sub_19B87DD40();
            if (*(v236 + 160) > 1 || *(v236 + 164) > 1 || *(v236 + 168) > 1 || *(v236 + 152))
            {
              bzero(&buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              *__p = 134349056;
              *&__p[4] = v106;
              v228 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,interpolateOnRoad returned false, determining mean road position", __p, 12);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v228);
              goto LABEL_369;
            }

            goto LABEL_371;
          }

          v143 = *(v107 + 136);
          v144 = *(v107 + 48);
          v145 = v107[143];
          sub_19B9F5AA8(v145);
          v146 = 1.0 - v143;
          if (!v144)
          {
            v146 = v143;
          }

          v147 = v146 * v145[5];
          *v292 = v292;
          *&v292[8] = v292;
          *&v292[16] = 0;
          if (v147 <= 40.0)
          {
            if (((*(*v254 + 72))(v254, v292, v107 + 143, *(v107 + 48), 1, v143, v147 + 1.0) & 1) == 0)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v225 = v248;
              v105 = v251;
              v245 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                *(buf.__r_.__value_.__r.__words + 4) = v106;
                _os_log_impl(&dword_19B873000, v245, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,roadsConnected returned false, searching for connected candidates", &buf, 0xCu);
              }

              v246 = sub_19B87DD40();
              if (*(v246 + 160) > 1 || *(v246 + 164) > 1 || *(v246 + 168) > 1 || *(v246 + 152))
              {
                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                *__p = 134349056;
                *&__p[4] = v106;
                v244 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,roadsConnected returned false, searching for connected candidates", __p, 12);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v244);
LABEL_431:
                if (v244 != &buf)
                {
                  free(v244);
                }
              }

LABEL_433:
              sub_19B941414(v292);
              goto LABEL_371;
            }

            v148 = *&v292[8];
            if (*&v292[8] != v292)
            {
              v149 = 0;
              v150 = 0;
              v252 = v107 + 146;
              while (1)
              {
                v151 = *(v148 + 32);
                v152 = *(v148 + 40);
                if (v152)
                {
                  atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
                  v153 = *(v148 + 24);
                  *__p = 0;
                  *&__p[8] = 0;
                  __p[16] = 1;
                  atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
                  *__p = *v151;
                  __p[16] = v153;
                  sub_19B8750F8(v152);
                  sub_19B8750F8(v152);
                  v154 = *__p;
                  v155 = __p[16];
                }

                else
                {
                  v155 = *(v148 + 24);
                  *__p = 0;
                  *&__p[8] = 0;
                  *__p = *v151;
                  __p[16] = v155;
                  v154 = *__p;
                }

                v156 = v107[4];
                v157 = *(v107 + 48);
                if (v154 != v156 || v155 != v157 || *&__p[8] != v107[5])
                {
                  _ZF = v156 != v154 || v155 == v157;
                  if (_ZF)
                  {
                    ++v150;
                  }

                  if (sub_19BA2F92C(*v256, __p))
                  {
                    buf.__r_.__value_.__r.__words[0] = __p;
                    v159 = sub_19BA2F99C(v5 + 112, __p, &buf);
                    v160 = v159[143];
                    sub_19B9F5AA8(v160);
                    v161 = (v159 + 143);
                    if (v160[5] >= 40.0)
                    {
                      v164 = *v161;
                      sub_19B9F5AA8(*v161);
                      v162 = 1.0 - 40.0 / v164[5];
                      if (__p[16])
                      {
                        v162 = 0.0;
                        v163 = 40.0 / v164[5];
                      }

                      else
                      {
                        v163 = 1.0;
                      }
                    }

                    else
                    {
                      v162 = 0.0;
                      v163 = 1.0;
                    }

                    v165 = v159[140];
                    v166 = v159[141];
                    v5 = v257;
                    if (v165 != v166)
                    {
                      v167 = 0;
                      v168 = 0.0;
                      do
                      {
                        v169 = *(v165 + 6);
                        v170 = v169 >= v162;
                        v171 = v169 <= v163;
                        v172 = v168 + v169;
                        v173 = v170 && v171;
                        if (v173)
                        {
                          v168 = v172;
                        }

                        v167 += v173;
                        v165 += 14;
                      }

                      while (v165 != v166);
                      if (v167)
                      {
                        ++*(v107 + 274);
                        *(v107 + 209) = 1;
                        v174 = v167 - 1227133513 * ((v107[141] - v107[140]) >> 4);
                        if (v174 <= v149)
                        {
                          if (v174 == v149 || v174 > *(v107 + 290))
                          {
                            *v252 = *__p;
                            *(v107 + 1184) = __p[16];
                            *(v107 + 290) = v174;
                          }

                          v174 = v149;
                        }

                        else
                        {
                          v175 = v168 / v167;
                          v261 = v175;
                          *v252 = *(v107 + 23);
                          *(v107 + 1184) = *(v107 + 200);
                          *(v107 + 23) = *__p;
                          v176 = __p[16];
                          *(v107 + 200) = __p[16];
                          *(v107 + 275) = v167;
                          *(v107 + 290) = *(v107 + 45);
                          *(v107 + 45) = v174;
                          *(v107 + 139) = v175;
                          v177 = *v161;
                          sub_19B9F5AA8(*v161);
                          v178 = 1.0 - v175;
                          if (v176)
                          {
                            v178 = v175;
                          }

                          *(v107 + 138) = v178 * v177[5];
                          v179 = *(v257 + 488);
                          v181 = *(v257 + 440);
                          v180 = *(v257 + 456);
                          *(v107 + 47) = *(v257 + 472);
                          *(v107 + 48) = v179;
                          *(v107 + 45) = v181;
                          *(v107 + 46) = v180;
                          v182 = *v253;
                          v183 = *(v257 + 392);
                          v184 = *(v257 + 424);
                          *(v107 + 43) = *(v257 + 408);
                          *(v107 + 44) = v184;
                          *(v107 + 41) = v182;
                          *(v107 + 42) = v183;
                          std::string::operator=((v107 + 98), (v257 + 504));
                          memcpy(v107 + 101, (v257 + 528), 0x118uLL);
                          if ((sub_19B9DF3F8(v254, (v107 + 82), v161, __p[16], &v261, 1) & 1) == 0)
                          {
                            if (qword_1EAFE46D0 != -1)
                            {
                              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                            }

                            v225 = v248;
                            v105 = v251;
                            v242 = off_1EAFE4708;
                            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                            {
                              LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                              *(buf.__r_.__value_.__r.__words + 4) = v106;
                              _os_log_impl(&dword_19B873000, v242, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,interpolateOnRoad returned false, determining outgoing road position", &buf, 0xCu);
                            }

                            v243 = sub_19B87DD40();
                            if (*(v243 + 160) > 1 || *(v243 + 164) > 1 || *(v243 + 168) > 1 || *(v243 + 152))
                            {
                              bzero(&buf, 0x65CuLL);
                              if (qword_1EAFE46D0 != -1)
                              {
                                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                              }

                              v290 = 134349056;
                              v291 = v106;
                              v244 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,interpolateOnRoad returned false, determining outgoing road position", &v290, 12);
                              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v244);
                              goto LABEL_431;
                            }

                            goto LABEL_433;
                          }
                        }

                        v149 = v174;
                      }
                    }
                  }
                }

                v148 = *(v148 + 8);
                if (v148 == v292)
                {
                  v186 = v150 > 1;
                  goto LABEL_274;
                }
              }
            }
          }

          v149 = 0;
          v186 = 0;
LABEL_274:
          *(v107 + 208) = v186;
          v187 = sub_19B8E3CB0();
          if (*v187 == 1)
          {
            v188 = v107[141];
            v189 = v107[140];
            sub_19B8759E8(&buf, "CLMMPED,%{public}.1lf,candidate,ID,%{private}llu,fwd,%{public}d,countArndMean,%{public}d,bestParticleScore,%{public}.9lf,isCombined,%{public}d,isMulti,%{public}d,combinedWith,%{private}llu,fwd,%{public}d,incomingCnt,%{public}lu,outgoingCnt,%{public}d,combinedCnt,%{public}d,bestCombinedCnt,%{public}d,secondBestCombinedCnt,%{public}d,secondCombinedWith,%{private}llu");
            v190 = 0x6DB6DB6DB6DB6DB7 * ((v188 - v189) >> 4);
            sub_19BA2FBB8(&buf);
            bzero(v187 + 56, 0x800uLL);
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              snprintf(v187 + 56, 0x800uLL, &buf, v106, v107[4], *(v107 + 48), *(v107 + 44), v107[15], *(v107 + 209), *(v107 + 208), v107[23], *(v107 + 200), v190, *(v107 + 275), *(v107 + 45), v149, *(v107 + 290), v107[146]);
            }

            else
            {
              snprintf(v187 + 56, 0x800uLL, buf.__r_.__value_.__l.__data_, v106, v107[4], *(v107 + 48), *(v107 + 44), v107[15], *(v107 + 209), *(v107 + 208), v107[23], *(v107 + 200), v190, *(v107 + 275), *(v107 + 45), v149, *(v107 + 290), v107[146]);
            }

            Current = CFAbsoluteTimeGetCurrent();
            sub_19B8759E8(__p, v187 + 56);
            sub_19B8E3D48(v187, __p, Current, v192, v193);
            if (SHIBYTE(v264) < 0)
            {
              operator delete(*__p);
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v194 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v195 = v107[4];
            v196 = *(v107 + 48);
            v197 = v107[15];
            v198 = *(v107 + 209);
            v199 = *(v107 + 208);
            v200 = v107[23];
            v201 = *(v107 + 200);
            v202 = 0x6DB6DB6DB6DB6DB7 * ((v107[141] - v107[140]) >> 4);
            v203 = *(v107 + 275);
            v205 = *(v107 + 44);
            v204 = *(v107 + 45);
            v206 = *(v107 + 290);
            v207 = v107[146];
            LODWORD(buf.__r_.__value_.__l.__data_) = 134352641;
            *(buf.__r_.__value_.__r.__words + 4) = v106;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2049;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v195;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 1026;
            v294 = v196;
            v295 = 1026;
            *v296 = v205;
            *&v296[4] = 2050;
            *v297 = v197;
            *&v297[8] = 1026;
            *&v297[10] = v198;
            *&v297[14] = 1026;
            *&v297[16] = v199;
            LOWORD(v298) = 2049;
            *(&v298 + 2) = v200;
            WORD5(v298) = 1026;
            HIDWORD(v298) = v201;
            LOWORD(v299) = 2050;
            *(&v299 + 2) = v202;
            WORD5(v299) = 1026;
            HIDWORD(v299) = v203;
            v300 = 1026;
            v301 = v204;
            v302 = 1026;
            LODWORD(v303[0]) = v149;
            WORD2(v303[0]) = 1026;
            *(v303 + 6) = v206;
            WORD1(v303[1]) = 2049;
            *(&v303[1] + 4) = v207;
            _os_log_impl(&dword_19B873000, v194, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,candidate,ID,%{private}llu,fwd,%{public}d,countArndMean,%{public}d,bestParticleScore,%{public}.9lf,isCombined,%{public}d,isMulti,%{public}d,combinedWith,%{private}llu,fwd,%{public}d,incomingCnt,%{public}lu,outgoingCnt,%{public}d,combinedCnt,%{public}d,bestCombinedCnt,%{public}d,secondBestCombinedCnt,%{public}d,secondCombinedWith,%{private}llu", &buf, 0x74u);
          }

          v208 = sub_19B87DD40();
          if (*(v208 + 160) > 1 || *(v208 + 164) > 1 || *(v208 + 168) > 1 || *(v208 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v209 = v107[4];
            v210 = *(v107 + 48);
            v211 = v107[15];
            v212 = *(v107 + 209);
            v213 = *(v107 + 208);
            v214 = v107[23];
            v215 = *(v107 + 200);
            v216 = 0x6DB6DB6DB6DB6DB7 * ((v107[141] - v107[140]) >> 4);
            v217 = *(v107 + 275);
            v219 = *(v107 + 44);
            v218 = *(v107 + 45);
            v220 = *(v107 + 290);
            v221 = v107[146];
            *__p = 134352641;
            *&__p[4] = v106;
            *&__p[12] = 2049;
            *&__p[14] = v209;
            v264 = 1026;
            v265 = v210;
            v266 = 1026;
            v267 = v219;
            v268 = 2050;
            v269 = v211;
            v270 = 1026;
            v271 = v212;
            v272 = 1026;
            v273 = v213;
            v274 = 2049;
            v275 = v214;
            v276 = 1026;
            v277 = v215;
            v278 = 2050;
            v279 = v216;
            v280 = 1026;
            v281 = v217;
            v282 = 1026;
            v283 = v218;
            v284 = 1026;
            v285 = v149;
            v286 = 1026;
            v287 = v220;
            v288 = 2049;
            v289 = v221;
            v222 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,candidate,ID,%{private}llu,fwd,%{public}d,countArndMean,%{public}d,bestParticleScore,%{public}.9lf,isCombined,%{public}d,isMulti,%{public}d,combinedWith,%{private}llu,fwd,%{public}d,incomingCnt,%{public}lu,outgoingCnt,%{public}d,combinedCnt,%{public}d,bestCombinedCnt,%{public}d,secondBestCombinedCnt,%{public}d,secondCombinedWith,%{private}llu", __p, 116);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v222);
            if (v222 != &buf)
            {
              free(v222);
            }
          }

          sub_19B941414(v292);
          v223 = v107[1];
          if (v223)
          {
            do
            {
              v224 = v223;
              v223 = *v223;
            }

            while (v223);
          }

          else
          {
            do
            {
              v224 = v107[2];
              _ZF = *v224 == v107;
              v107 = v224;
            }

            while (!_ZF);
          }

          v107 = v224;
          if (v224 == v256)
          {
            v108 = 1;
            v225 = v248;
            v105 = v251;
            if (v251)
            {
              goto LABEL_372;
            }

            goto LABEL_373;
          }
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v225 = v248;
        v105 = v251;
        v233 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
          *(buf.__r_.__value_.__r.__words + 4) = v106;
          _os_log_impl(&dword_19B873000, v233, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to determine best particle", &buf, 0xCu);
        }

        v234 = sub_19B87DD40();
        if ((*(v234 + 160) & 0x80000000) == 0 || (*(v234 + 164) & 0x80000000) == 0 || (*(v234 + 168) & 0x80000000) == 0 || *(v234 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *__p = 134349056;
          *&__p[4] = v106;
          v228 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unable to determine best particle", __p, 12);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v228);
          goto LABEL_369;
        }

LABEL_371:
        v108 = 0;
        if (!v105)
        {
          goto LABEL_373;
        }

        goto LABEL_372;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v225 = v248;
      v229 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
        *(buf.__r_.__value_.__r.__words + 4) = v106;
        _os_log_impl(&dword_19B873000, v229, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, zero candidates,assessCandidates", &buf, 0xCu);
      }

      v230 = sub_19B87DD40();
      if ((*(v230 + 160) & 0x80000000) != 0 && (*(v230 + 164) & 0x80000000) != 0 && (*(v230 + 168) & 0x80000000) != 0 && !*(v230 + 152))
      {
        goto LABEL_371;
      }

      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *__p = 134349056;
      *&__p[4] = v106;
      v228 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected, zero candidates,assessCandidates", __p, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v228);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v225 = v248;
      v226 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
        *(buf.__r_.__value_.__r.__words + 4) = v106;
        _os_log_impl(&dword_19B873000, v226, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, geometry is null", &buf, 0xCu);
      }

      v227 = sub_19B87DD40();
      if ((*(v227 + 160) & 0x80000000) != 0 && (*(v227 + 164) & 0x80000000) != 0 && (*(v227 + 168) & 0x80000000) != 0 && !*(v227 + 152))
      {
        goto LABEL_371;
      }

      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *__p = 134349056;
      *&__p[4] = v106;
      v228 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected, geometry is null", __p, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v228);
    }

LABEL_369:
    if (v228 != &buf)
    {
      free(v228);
    }

    goto LABEL_371;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  v250 = _Q0;
  while (1)
  {
    v99 = *v94;
    v100 = *(v94 + 8);
    if (v100)
    {
      atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
      v101 = *(v94 + 20);
      *__p = 0;
      *&__p[8] = 0;
      __p[16] = 1;
      atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
      *__p = *v99;
      __p[16] = v101;
      sub_19B8750F8(v100);
      sub_19B8750F8(v100);
    }

    else
    {
      v102 = *(v94 + 20);
      *__p = 0;
      *&__p[8] = 0;
      *__p = *v99;
      __p[16] = v102;
    }

    if (!sub_19BA2F92C(*(v5 + 120), __p))
    {
      break;
    }

    buf.__r_.__value_.__r.__words[0] = __p;
    v103 = sub_19BA2F99C(v5 + 112, __p, &buf);
    if (!sub_19BA0D258(v103 + 7, v94))
    {
      goto LABEL_331;
    }

LABEL_186:
    v94 += 112;
    if (v94 == v255)
    {
      goto LABEL_187;
    }
  }

  *&buf.__r_.__value_.__l.__data_ = 0xBFF0000000000000;
  buf.__r_.__value_.__r.__words[2] = 0;
  v294 = 0;
  v295 = 1;
  *&v296[2] = 0;
  *&v297[4] = 0u;
  v298 = 0u;
  v299 = 0u;
  LOBYTE(v300) = 0;
  memset(v303, 0, sizeof(v303));
  v304 = 0u;
  v305 = 1;
  v306 = 0;
  v308 = 0;
  v309 = 0;
  v307 = 0;
  v310 = v250;
  v311 = 0;
  v312 = 0;
  v313 = 0xBFF0000000000000;
  v325 = 0;
  v326 = 0;
  memset(&v323[32], 0, 32);
  v324 = 0;
  v327 = 0u;
  v328 = 0u;
  v329 = 0u;
  memset(v330, 0, 27);
  memset(&v330[32], 0, 48);
  v322 = 0u;
  memset(v323, 0, 30);
  v320 = 0u;
  v321 = 0u;
  v318 = 0u;
  v319 = 0u;
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v332 = 0xBFF0000000000000;
  v331 = 0;
  v333 = 0;
  v334 = 0;
  v335 = 0xBFF0000000000000;
  v336 = 0xBFF0000000000000;
  v337 = 0;
  v338 = 0;
  v339 = 0xBFF0000000000000;
  v351 = 0;
  v352 = 0;
  v350 = 0;
  memset(&v349[32], 0, 32);
  v355 = 0u;
  memset(v356, 0, 27);
  v353 = 0u;
  v354 = 0u;
  memset(&v356[32], 0, 48);
  v348 = 0u;
  memset(v349, 0, 30);
  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v357 = 0;
  v358 = xmmword_19BA8CF00;
  v363 = 0;
  v364 = 0;
  v362 = 0;
  v361 = 0u;
  v359 = 0u;
  memset(v360, 0, sizeof(v360));
  v365 = 1;
  v366 = -1;
  if (sub_19BA0D258(&buf, v94))
  {
    buf.__r_.__value_.__r.__words[0] = v3;
    *v292 = __p;
    v104 = sub_19BA2F99C(v5 + 112, __p, v292);
    sub_19BA0EF24((v104 + 7), &buf);
    if (*(&v361 + 1))
    {
      sub_19B8750F8(*(&v361 + 1));
    }

    *v292 = &v360[8];
    sub_19B988734(v292);
    if (SHIBYTE(v345) < 0)
    {
      operator delete(*(&v344 + 1));
    }

    if (SHIBYTE(v319) < 0)
    {
      operator delete(*(&v318 + 1));
    }

    if (v303[0])
    {
      v303[1] = v303[0];
      operator delete(v303[0]);
    }

    if (buf.__r_.__value_.__r.__words[2])
    {
      sub_19B8750F8(buf.__r_.__value_.__r.__words[2]);
    }

    goto LABEL_186;
  }

  if (*(&v361 + 1))
  {
    sub_19B8750F8(*(&v361 + 1));
  }

  *v292 = &v360[8];
  sub_19B988734(v292);
  if (SHIBYTE(v345) < 0)
  {
    operator delete(*(&v344 + 1));
  }

  if (SHIBYTE(v319) < 0)
  {
    operator delete(*(&v318 + 1));
  }

  if (v303[0])
  {
    v303[1] = v303[0];
    operator delete(v303[0]);
  }

  if (buf.__r_.__value_.__r.__words[2])
  {
    sub_19B8750F8(buf.__r_.__value_.__r.__words[2]);
  }

LABEL_331:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v231 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    _os_log_impl(&dword_19B873000, v231, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,candidate update failed", &buf, 0xCu);
  }

  v232 = sub_19B87DD40();
  if (*(v232 + 160) > 1 || *(v232 + 164) > 1 || *(v232 + 168) > 1 || *(v232 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *__p = 134349056;
    *&__p[4] = v3;
    v87 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,candidate update failed", __p, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v87);
    goto LABEL_398;
  }

LABEL_400:
  v20 = 0;
LABEL_401:
  buf.__r_.__value_.__r.__words[0] = &v258;
  sub_19B988734(&buf);
  return v20;
}

void sub_19BA12A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char *a61, uint64_t a62, uint64_t a63)
{
  sub_19B941414(&a63);
  if (a32)
  {
    sub_19B8750F8(a32);
  }

  a61 = &a40;
  sub_19B988734(&a61);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA12B84(uint64_t a1, uint64_t a2)
{
  v270 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 384);
  if (*(a1 + 48) == *(a1 + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v10 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,particle count,0", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v249 = 134349056;
    *&v249[4] = v2;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,particle count,0", v249, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v12);
    goto LABEL_68;
  }

  if (!*(a1 + 128))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v13 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,candidate count,0", buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v249 = 134349056;
    *&v249[4] = v2;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,candidate count,0", v249, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v12);
    goto LABEL_68;
  }

  v5 = sub_19BA0E204((a1 + 104));
  if (!v5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,bestCandidate is nullptr", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v249 = 134349056;
    *&v249[4] = v2;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,bestCandidate is nullptr", v249, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v12);
    goto LABEL_68;
  }

  v6 = v5;
  if (*(v5 + 31) <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,particles in candidate,0", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v249 = 134349056;
    *&v249[4] = v2;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,particles in candidate,0", v249, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v12);
    goto LABEL_68;
  }

  v7 = v5 + 1;
  if (!v5[1])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,best particle road in best candidate is nullptr", buf, 0xCu);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v249 = 134349056;
    *&v249[4] = v2;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,best particle road in best candidate is nullptr", v249, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v12);
LABEL_68:
    if (v12 != buf)
    {
      free(v12);
    }

    return 0;
  }

  if (*(a1 + 864))
  {
    v8 = *(a1 + 872);
    *(a1 + 864) = 0u;
    if (v8)
    {
      sub_19B8750F8(v8);
    }

    *(a1 + 880) = 0;
  }

  v229 = 0;
  v228 = 0u;
  memset(v227, 0, sizeof(v227));
  v230 = 0xBFF0000000000000;
  if (v227 != (v6 + 1064))
  {
    sub_19BA2EB5C(v227, *(v6 + 1064), *(v6 + 1072), 0x6DB6DB6DB6DB6DB7 * ((*(v6 + 1072) - *(v6 + 1064)) >> 4));
  }

  if (*(v6 + 153) == 1)
  {
    if (*(a2 + 120))
    {
      v9 = *(a2 + 504) == 1 && (sub_19B97106C(a2 + 120, buf), *buf == *(v6 + 128)) && buf[16] == *(v6 + 144) && *&buf[8] == *(v6 + 136);
      v23 = (v6 + 128);
      if (!sub_19BA2F92C(*(a1 + 120), (v6 + 128)))
      {
        goto LABEL_119;
      }

      if (v9)
      {
        v24 = 1;
LABEL_81:
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v25 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          *&buf[4] = v2;
          *&buf[12] = 1026;
          *&buf[14] = v24;
          _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,extractSolution,using outgoing particles,previous,%{public}d", buf, 0x12u);
        }

        v26 = sub_19B87DD40();
        if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v249 = 134349312;
          *&v249[4] = v2;
          *&v249[12] = 1026;
          *&v249[14] = v24;
          v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,extractSolution,using outgoing particles,previous,%{public}d", v249, 18);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        *(a1 + 896) = 1;
        *buf = v23;
        v28 = sub_19BA2F99C(a1 + 112, v23, buf);
        v29 = v28[140];
        v30 = v28[141];
        v31 = v30 - v29;
        if (v30 - v29 >= 1)
        {
          v32 = *(&v227[0] + 1);
          if (*&v227[1] - *(&v227[0] + 1) >= v31)
          {
            if (v29 != v30)
            {
              v37 = 0;
              do
              {
                sub_19BA2E904(&v32[v37 / 8], v29 + v37);
                v37 += 112;
              }

              while ((v29 + v37) != v30);
              v32 = (v32 + v37);
            }

            *(&v227[0] + 1) = v32;
          }

          else
          {
            v33 = 0x6DB6DB6DB6DB6DB7 * ((*(&v227[0] + 1) - *&v227[0]) >> 4);
            v34 = v33 + 0x6DB6DB6DB6DB6DB7 * (v31 >> 4);
            if (v34 > 0x249249249249249)
            {
              sub_19B8B8A40();
            }

            v35 = 0xDB6DB6DB6DB6DB6ELL * ((*&v227[1] - *&v227[0]) >> 4);
            if (v35 <= v34)
            {
              v35 = v33 + 0x6DB6DB6DB6DB6DB7 * (v31 >> 4);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((*&v227[1] - *&v227[0]) >> 4)) >= 0x124924924924924)
            {
              v36 = 0x249249249249249;
            }

            else
            {
              v36 = v35;
            }

            *&buf[32] = v227;
            if (v36)
            {
              sub_19B988AB4(v227, v36);
            }

            v38 = 16 * ((*(&v227[0] + 1) - *&v227[0]) >> 4);
            *buf = 0;
            *&buf[8] = v38;
            *&buf[16] = v38;
            v39 = v38 + v31;
            do
            {
              sub_19BA2E904(v38, v29);
              v38 += 112;
              v29 += 112;
              v31 -= 112;
            }

            while (v31);
            *&buf[16] = v39;
            sub_19B988B10(v227, v32, *(&v227[0] + 1), v39);
            *&buf[16] += *(&v227[0] + 1) - v32;
            *(&v227[0] + 1) = v32;
            v40 = *&buf[8] + *&v227[0] - v32;
            sub_19B988B10(v227, *&v227[0], v32, v40);
            v41 = *&v227[0];
            v42 = *&v227[1];
            *&v227[0] = v40;
            *(v227 + 8) = *&buf[16];
            *&buf[16] = v41;
            *&buf[24] = v42;
            *&buf[8] = v41;
            *buf = v41;
            sub_19B988C08(buf);
          }
        }

        goto LABEL_119;
      }
    }

    else
    {
      v23 = (v6 + 128);
      if (!sub_19BA2F92C(*(a1 + 120), (v6 + 128)))
      {
        goto LABEL_119;
      }
    }

    if (!sub_19BA0D49C(v6, (a1 + 792)))
    {
      goto LABEL_119;
    }

    v24 = 0;
    goto LABEL_81;
  }

LABEL_119:
  if (*(&v227[0] + 1) == *&v227[0])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v47 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,solutionParticleVector has zero particles", buf, 0xCu);
    }

    v48 = sub_19B87DD40();
    if ((*(v48 + 160) & 0x80000000) == 0 || (*(v48 + 164) & 0x80000000) == 0 || (*(v48 + 168) & 0x80000000) == 0 || *(v48 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v249 = 134349056;
      *&v249[4] = v2;
      v49 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,solutionParticleVector has zero particles", v249, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    v21 = 0;
    goto LABEL_366;
  }

  v43 = *(v6 + 248);
  v252 = *(v6 + 232);
  v253 = v43;
  v44 = *(v6 + 184);
  *v249 = *(v6 + 168);
  *&v249[16] = v44;
  v45 = *(v6 + 216);
  v250 = *(v6 + 200);
  v251 = v45;
  v46 = *(v6 + 280);
  v254 = *(v6 + 264);
  v255 = v46;
  if (*(v6 + 319) < 0)
  {
    sub_19B874C9C(&v256, *(v6 + 296), *(v6 + 304));
  }

  else
  {
    v256 = *(v6 + 296);
    v257 = *(v6 + 312);
  }

  memcpy(v258, (v6 + 320), sizeof(v258));
  v50 = *(v6 + 360);
  v51 = v50 < 19.0 && v50 > 0.0;
  if (v51)
  {
    v258[5] = 0x4033000000000000;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v52 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(v6 + 360);
      *buf = 134349568;
      *&buf[4] = v2;
      *&buf[12] = 2050;
      *&buf[14] = v53;
      *&buf[22] = 2050;
      *&buf[24] = 0x4033000000000000;
      _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,deweightCourse,courseUnc,%{public}.1lf,deweightUnc,%{public}.1lf", buf, 0x20u);
    }

    v54 = sub_19B87DD40();
    if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v55 = *(v6 + 360);
      LODWORD(v234[0]) = 134349568;
      *(v234 + 4) = v2;
      WORD2(v234[1]) = 2050;
      *(&v234[1] + 6) = v55;
      HIWORD(v234[2]) = 2050;
      *v235 = 0x4033000000000000;
      v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,deweightCourse,courseUnc,%{public}.1lf,deweightUnc,%{public}.1lf", v234, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }
  }

  if (sub_19B9F5E90(*(v6 + 8), 0, *(v6 + 56), 7.5))
  {
    goto LABEL_152;
  }

  if ((*(*v7 + 20) & 0xFFFFFFFE) != 8)
  {
    goto LABEL_191;
  }

  if (*(a2 + 120) && ((sub_19B97106C(v6 + 8, buf), sub_19B97106C(a2 + 120, v234), *buf == v234[0]) && buf[16] == LOBYTE(v234[2]) && *&buf[8] == v234[1] || (*(a1 + 896) & 1) != 0 && (sub_19B97106C(a2 + 120, &v219), *(v6 + 128) == v219) && *(v6 + 144) == v221 && *(v6 + 136) == v220))
  {
    v72 = 1;
    v73 = sub_19B9F5E90(*(v6 + 8), 1, *(v6 + 56), 3.75);
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v74 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349568;
    *&buf[4] = v2;
    *&buf[12] = 1026;
    *&buf[14] = v73;
    *&buf[18] = 1026;
    *&buf[20] = v72;
    _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,invalidateCourse,particleIsOnSegmentsThatHasSmallCurves,%{public}d,particleInOnSameRoadAsPriorSnap,%{public}d", buf, 0x18u);
  }

  v75 = sub_19B87DD40();
  v76 = v72 & v73;
  if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v234[0]) = 134349568;
    *(v234 + 4) = v2;
    WORD2(v234[1]) = 1026;
    *(&v234[1] + 6) = v73;
    WORD1(v234[2]) = 1026;
    HIDWORD(v234[2]) = v72;
    v77 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,invalidateCourse,particleIsOnSegmentsThatHasSmallCurves,%{public}d,particleInOnSameRoadAsPriorSnap,%{public}d", v234, 24);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v77);
    v7 = (v6 + 8);
    if (v77 != buf)
    {
      free(v77);
    }

    if (v76)
    {
      goto LABEL_152;
    }

LABEL_191:
    v71 = 0;
    if (!v51)
    {
      goto LABEL_194;
    }

    goto LABEL_192;
  }

  v7 = (v6 + 8);
  if (!v76)
  {
    goto LABEL_191;
  }

LABEL_152:
  *(&v254 + 1) = 0xBFF0000000000000;
  v258[5] = 0xBFF0000000000000;
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v57 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v58 = *(v6 + 1088);
    v59 = *v58;
    v60 = *(v6 + 56);
    sub_19B9F5AA8(v58);
    v61 = v58[5];
    v62 = sub_19B9F5D9C(*(v6 + 1088));
    *buf = 134349825;
    *&buf[4] = v2;
    *&buf[12] = 2049;
    *&buf[14] = v59;
    *&buf[22] = 2050;
    *&buf[24] = v60 * v61;
    *&buf[32] = 1026;
    *&buf[34] = v62;
    _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Particle is on a curved section of road,%{private}lld,projection,%{public}.2lf,deweightCourse,%{public}d", buf, 0x26u);
  }

  v63 = sub_19B87DD40();
  if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v64 = off_1EAFE4708;
    v65 = *(v6 + 1088);
    v66 = *v65;
    v67 = *(v6 + 56);
    sub_19B9F5AA8(v65);
    v68 = v65[5];
    v69 = sub_19B9F5D9C(*(v6 + 1088));
    LODWORD(v234[0]) = 134349825;
    *(v234 + 4) = v2;
    WORD2(v234[1]) = 2049;
    *(&v234[1] + 6) = v66;
    HIWORD(v234[2]) = 2050;
    *v235 = v67 * v68;
    *&v235[8] = 1026;
    *&v235[10] = v69;
    v70 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v64, 2, "CLMMPED,%{public}.1lf,Particle is on a curved section of road,%{private}lld,projection,%{public}.2lf,deweightCourse,%{public}d", v234, 38);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v70);
    if (v70 != buf)
    {
      free(v70);
    }
  }

  v71 = 1;
LABEL_192:
  memset(buf, 0, 24);
  *&buf[24] = xmmword_19BA89720;
  buf[40] = 0;
  *&buf[48] = 0u;
  v260 = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  v261 = _Q0;
  v262 = _Q0;
  v263 = _Q0;
  v264 = _Q0;
  v265 = 0xBFF0000000000000;
  v266 = 0;
  v267 = _Q0;
  v268 = _Q0;
  v269 = _Q0;
  sub_19BA16424(buf, v249, 0);
  v83 = *(&v227[0] + 1);
  for (i = *&v227[0]; i != v83; i += 14)
  {
    memset(v234, 0, sizeof(v234));
    *v235 = 0x3FF0000000000000;
    memset(&v235[8], 0, 32);
    LODWORD(v236) = 0;
    sub_19BA0F96C(a1, buf, i, v234);
    LODWORD(v236) = 1;
    *v235 = 0x3FF0000000000000;
    sub_19BA1647C(i, v234);
    sub_19B988454(i);
  }

LABEL_194:
  sub_19BA0F554(v227, v2);
  sub_19BA0F110(&v219, *&v227[0], *(&v227[0] + 1));
  if ((v71 & 1) == 0)
  {
    if (v219)
    {
      if (*(a2 + 504) == 1)
      {
        if (*(a2 + 120))
        {
          sub_19B97106C(a2 + 120, buf);
          sub_19B97106C(&v219, v234);
          if (*buf == v234[0] && buf[16] == LOBYTE(v234[2]) && *&buf[8] == v234[1])
          {
            v85 = v223;
            v86 = *(a2 + 168);
            v87 = v219;
            sub_19B9F5AA8(v219);
            v88 = v87[5];
            v89 = *(a1 + 856);
            sub_19BA164CC(v246, v227);
            v90 = (v85 - v86) * v88;
            v91 = v89 * 5.0;
            if (v90 > v91)
            {
              memset(v234, 0, sizeof(v234));
              *v235 = xmmword_19BA89720;
              v235[16] = 0;
              *&v235[24] = 0u;
              v236 = 0u;
              __asm { FMOV            V0.2D, #-1.0 }

              v237 = _Q0;
              v238 = _Q0;
              v239 = _Q0;
              v240 = _Q0;
              v241 = 0xBFF0000000000000;
              v242 = 0;
              v243 = _Q0;
              v244 = _Q0;
              v245 = _Q0;
              sub_19BA16424(v234, v249, 0);
              *(&v238 + 1) = 0xBFF0000000000000;
              *(&v239 + 1) = 0xBFF0000000000000;
              v93 = *v246;
              v94 = *&v246[8];
              if (*v246 != *&v246[8])
              {
                do
                {
                  memset(buf, 0, 24);
                  *&buf[24] = 0x3FF0000000000000;
                  memset(&buf[32], 0, 32);
                  LODWORD(v260) = 0;
                  sub_19BA0F96C(a1, v234, v93, buf);
                  LODWORD(v260) = 1;
                  *&buf[24] = 0x3FF0000000000000;
                  sub_19BA1647C(v93, buf);
                  sub_19B988454(v93);
                  v93 += 14;
                }

                while (v93 != v94);
                v93 = *v246;
                v94 = *&v246[8];
              }

              sub_19BA0F110(&v212, v93, v94);
              v95 = v212;
              if (v212)
              {
                v96 = *&v217;
                v97 = *(a2 + 168);
                sub_19B9F5AA8(v212);
                v98 = (v96 - v97) * *(v95 + 5);
                if (v98 < v91)
                {
                  sub_19BA165AC(v227, v246);
                  sub_19B9710EC(&v219, &v212);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v99 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134349568;
                    *&buf[4] = v2;
                    *&buf[12] = 2050;
                    *&buf[14] = v90;
                    *&buf[22] = 2050;
                    *&buf[24] = v98;
                    _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,invalidated course and recomputed solution,changeInDistance,%{public}.2lf,newChangeInDistance,%{public}.2lf", buf, 0x20u);
                  }

                  v100 = sub_19B87DD40();
                  if (*(v100 + 160) > 1 || *(v100 + 164) > 1 || *(v100 + 168) > 1 || *(v100 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    *v231 = 134349568;
                    *&v231[4] = v2;
                    *&v231[12] = 2050;
                    *&v231[14] = v90;
                    v232 = 2050;
                    v233 = v98;
                    v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,invalidated course and recomputed solution,changeInDistance,%{public}.2lf,newChangeInDistance,%{public}.2lf", v231, 32);
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v101);
                    if (v101 != buf)
                    {
                      free(v101);
                    }
                  }
                }
              }

              else
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v102 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134349056;
                  *&buf[4] = v2;
                  _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,newParticle road is nullptr,1", buf, 0xCu);
                }

                v103 = sub_19B87DD40();
                if ((*(v103 + 160) & 0x80000000) == 0 || (*(v103 + 164) & 0x80000000) == 0 || (*(v103 + 168) & 0x80000000) == 0 || *(v103 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  *v231 = 134349056;
                  *&v231[4] = v2;
                  v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,newParticle road is nullptr,1", v231, 12);
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v104);
                  if (v104 != buf)
                  {
                    free(v104);
                  }
                }
              }

              sub_19B966FCC(&v212);
            }

            sub_19BA16620(v246);
          }
        }
      }
    }
  }

  if (*(a2 + 504) != 1 || *(v6 + 152) != 1 || *(v6 + 153) != 1 || !v219 || !*v7 || !*(a2 + 120) || (sub_19B97106C(a2 + 120, buf), sub_19B97106C(&v219, v234), *buf == v234[0]) && buf[16] == LOBYTE(v234[2]) && *&buf[8] == v234[1] || (sub_19B97106C(&v219, &v212), v212 != *(v6 + 128)) || v214 != *(v6 + 144) || v213 != *(v6 + 136) || (sub_19B97106C(v7, v246), sub_19B97106C(a2 + 120, v231), *v246 != *v231) || v246[16] != v231[16])
  {
    v211 = 0;
    goto LABEL_280;
  }

  if (*&v246[8] != *&v231[8] || sub_19BA16668(&v219, a1, a2 + 120) <= *(a1 + 856) * 5.0)
  {
    v211 = 0;
    goto LABEL_280;
  }

  sub_19BA164CC(&v212, v227);
  sub_19B97106C(&v219, buf);
  v210 = sub_19BA0F244(&v212, buf, v2);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v105 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349312;
    *&buf[4] = v2;
    *&buf[12] = 1026;
    *&buf[14] = v210;
    _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,eliminated outgoing roadKey for local solution,%{public}d", buf, 0x12u);
  }

  v106 = sub_19B87DD40();
  if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v234[0]) = 134349312;
    *(v234 + 4) = v2;
    WORD2(v234[1]) = 1026;
    *(&v234[1] + 6) = v210;
    v107 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,eliminated outgoing roadKey for local solution,%{public}d", v234, 18);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v107);
    if (v107 != buf)
    {
      free(v107);
    }
  }

  if (v213 == v212)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v194 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v2;
      *&buf[12] = 1026;
      *&buf[14] = v210;
      _os_log_impl(&dword_19B873000, v194, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Number of particles 0 after eliminating particles on combined road,%{public}d", buf, 0x12u);
    }

    v195 = sub_19B87DD40();
    if (*(v195 + 160) > 1 || *(v195 + 164) > 1 || *(v195 + 168) > 1 || *(v195 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LODWORD(v234[0]) = 134349312;
      *(v234 + 4) = v2;
      WORD2(v234[1]) = 1026;
      *(&v234[1] + 6) = v210;
      v196 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,Number of particles 0 after eliminating particles on combined road,%{public}d", v234, 18);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v196);
      if (v196 != buf)
      {
        free(v196);
      }
    }

    v211 = 0;
    goto LABEL_493;
  }

  sub_19BA0F110(v234, v212, v213);
  if (!v234[0])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v197 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v197, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,newParticle road is nullptr,2", buf, 0xCu);
    }

    v198 = sub_19B87DD40();
    if ((*(v198 + 160) & 0x80000000) != 0 && (*(v198 + 164) & 0x80000000) != 0 && (*(v198 + 168) & 0x80000000) != 0 && !*(v198 + 152))
    {
      goto LABEL_491;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v246 = 134349056;
    *&v246[4] = v2;
    v199 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,newParticle road is nullptr,2", v246, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v199);
    goto LABEL_489;
  }

  v108 = sub_19BA16668(v234, a1, a2 + 120);
  if (*(a1 + 472) < 0.75)
  {
    goto LABEL_267;
  }

  v109 = *(a1 + 856);
  if (v108 > v109 * 0.8)
  {
    goto LABEL_267;
  }

  if (v108 < v109 && (*(a1 + 897) & 1) == 0)
  {
    v202 = *(a1 + 480);
    v203 = *v235;
    v204 = *(&v221 + 2);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v205 = vabdd_f64(v202, v203);
    v206 = vabdd_f64(v202, v204);
    v207 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349568;
      *&buf[4] = v2;
      *&buf[12] = 2050;
      *&buf[14] = v205;
      *&buf[22] = 2050;
      *&buf[24] = v206;
      _os_log_impl(&dword_19B873000, v207, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,use new particle, course check, crumbCourseDiffWithNewParticle,%{public}.1lf,crumbCourseDiffWithPreviousParticle,%{public}.1lf", buf, 0x20u);
    }

    v208 = sub_19B87DD40();
    if (*(v208 + 160) > 1 || *(v208 + 164) > 1 || *(v208 + 168) > 1 || *(v208 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v246 = 134349568;
      *&v246[4] = v2;
      *&v246[12] = 2050;
      *&v246[14] = v205;
      v247 = 2050;
      v248 = v206;
      v209 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,use new particle, course check, crumbCourseDiffWithNewParticle,%{public}.1lf,crumbCourseDiffWithPreviousParticle,%{public}.1lf", v246, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v209);
      if (v209 != buf)
      {
        free(v209);
      }
    }

    if (v205 < 35.0 && v206 > 60.0)
    {
LABEL_267:
      v110 = vabdd_f64(*(a1 + 480), *(&v221 + 2));
      v211 = v110 < 30.0;
      sub_19B9710EC(&v219, v234);
      sub_19BA165AC(v227, &v212);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v111 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v2;
        *&buf[12] = 1026;
        *&buf[14] = v110 < 30.0;
        _os_log_impl(&dword_19B873000, v111, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,new particle without the outgoing road accepted,courseIsUnreliable,%{public}d", buf, 0x12u);
      }

      v112 = sub_19B87DD40();
      if (*(v112 + 160) > 1 || *(v112 + 164) > 1 || *(v112 + 168) > 1 || *(v112 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v246 = 134349312;
        *&v246[4] = v2;
        *&v246[12] = 1026;
        *&v246[14] = v110 < 30.0;
        v113 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,new particle without the outgoing road accepted,courseIsUnreliable,%{public}d", v246, 18);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v113);
        if (v113 != buf)
        {
          free(v113);
        }
      }

      goto LABEL_492;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v200 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349312;
    *&buf[4] = v2;
    *&buf[12] = 1026;
    *&buf[14] = v210;
    _os_log_impl(&dword_19B873000, v200, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,not using local solution without outgoing road,%{public}d", buf, 0x12u);
  }

  v201 = sub_19B87DD40();
  if (*(v201 + 160) > 1 || *(v201 + 164) > 1 || *(v201 + 168) > 1 || *(v201 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v246 = 134349312;
    *&v246[4] = v2;
    *&v246[12] = 1026;
    *&v246[14] = v210;
    v199 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,not using local solution without outgoing road,%{public}d", v246, 18);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v199);
LABEL_489:
    if (v199 != buf)
    {
      free(v199);
    }
  }

LABEL_491:
  v211 = 0;
LABEL_492:
  sub_19B966FCC(v234);
LABEL_493:
  sub_19BA16620(&v212);
LABEL_280:
  v115 = v219;
  v114 = v220;
  if (v220)
  {
    atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v116 = (a1 + 256);
  v117 = *(a1 + 264);
  *(a1 + 256) = v115;
  *(a1 + 264) = v114;
  if (v117)
  {
    sub_19B8750F8(v117);
  }

  v118 = v222;
  *(a1 + 272) = v221;
  *(a1 + 288) = v118;
  *(a1 + 304) = v223;
  v119 = (a1 + 312);
  *(a1 + 312) = v224[0];
  *(a1 + 321) = *(v224 + 9);
  if (v116 != &v219)
  {
    sub_19B967884((a1 + 344), __p, v226, 0x8E38E38E38E38E39 * ((v226 - __p) >> 3));
  }

  *(a1 + 882) = 1;
  v120 = *(v6 + 152) == 1 && *(v6 + 153) == 1 && *(v6 + 1044) > (-1227133513 * ((*(v6 + 1072) - *(v6 + 1064)) >> 4));
  *(a1 + 368) = v120;
  if (!*(a1 + 256))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v151 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v151, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,best particle road is nullptr", buf, 0xCu);
    }

    v152 = sub_19B87DD40();
    if ((*(v152 + 160) & 0x80000000) != 0 && (*(v152 + 164) & 0x80000000) != 0 && (*(v152 + 168) & 0x80000000) != 0 && !*(v152 + 152))
    {
      goto LABEL_359;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v234[0]) = 134349056;
    *(v234 + 4) = v2;
    v153 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,best particle road is nullptr", v234, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v153);
    goto LABEL_357;
  }

  v121 = (a1 + 376);
  if (*(a1 + 896) == 1 && (sub_19B97106C(a1 + 256, buf), *(v6 + 128) == *buf) && *(v6 + 144) == buf[16] && *(v6 + 136) == *&buf[8])
  {
    v122 = *(v6 + 600);
    v123 = *(v6 + 616);
    v124 = *(v6 + 648);
    *(a1 + 408) = *(v6 + 632);
    *(a1 + 424) = v124;
    *v121 = v122;
    *(a1 + 392) = v123;
    v125 = *(v6 + 664);
    v126 = *(v6 + 680);
    v127 = *(v6 + 712);
    *(a1 + 472) = *(v6 + 696);
    *(a1 + 488) = v127;
    *(a1 + 440) = v125;
    *(a1 + 456) = v126;
    std::string::operator=((a1 + 504), (v6 + 728));
    v128 = (a1 + 864);
    memcpy((a1 + 528), (v6 + 752), 0x118uLL);
    if (*(v6 + 8))
    {
      sub_19B911784((a1 + 864), v7);
      *(a1 + 880) = *(v6 + 28);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v182 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v2;
      }

      v183 = sub_19B87DD40();
      if ((*(v183 + 160) & 0x80000000) == 0 || (*(v183 + 164) & 0x80000000) == 0 || (*(v183 + 168) & 0x80000000) == 0 || *(v183 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        LODWORD(v234[0]) = 134349056;
        *(v234 + 4) = v2;
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v184);
        if (v184 != buf)
        {
          free(v184);
        }
      }
    }

    if (*v128)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v185 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v186 = **v128;
        v187 = *(v6 + 128);
        v188 = *v119;
        *buf = 134349825;
        *&buf[4] = v2;
        *&buf[12] = 2049;
        *&buf[14] = v186;
        *&buf[22] = 2049;
        *&buf[24] = v187;
        *&buf[32] = 2050;
        *&buf[34] = v188;
        _os_log_impl(&dword_19B873000, v185, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Using outgoing,incomingID,%{private}lld,outgoingID,%{private}lld,score,%{public}.8lf", buf, 0x2Au);
      }

      v189 = sub_19B87DD40();
      if (*(v189 + 160) > 1 || *(v189 + 164) > 1 || *(v189 + 168) > 1 || *(v189 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v190 = **v128;
        v191 = *(v6 + 128);
        v192 = *v119;
        LODWORD(v234[0]) = 134349825;
        *(v234 + 4) = v2;
        WORD2(v234[1]) = 2049;
        *(&v234[1] + 6) = v190;
        HIWORD(v234[2]) = 2049;
        *v235 = v191;
        *&v235[8] = 2050;
        *&v235[10] = v192;
        v193 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,Using outgoing,incomingID,%{private}lld,outgoingID,%{private}lld,score,%{public}.8lf", v234, 42);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v193);
        if (v193 != buf)
        {
          free(v193);
        }
      }
    }
  }

  else
  {
    v129 = *(v6 + 168);
    v130 = *(v6 + 184);
    v131 = *(v6 + 216);
    *(a1 + 408) = *(v6 + 200);
    *(a1 + 424) = v131;
    *v121 = v129;
    *(a1 + 392) = v130;
    v132 = *(v6 + 232);
    v133 = *(v6 + 248);
    v134 = *(v6 + 280);
    *(a1 + 472) = *(v6 + 264);
    *(a1 + 488) = v134;
    *(a1 + 440) = v132;
    *(a1 + 456) = v133;
    std::string::operator=((a1 + 504), (v6 + 296));
    memcpy((a1 + 528), (v6 + 320), 0x118uLL);
  }

  *(a1 + 881) = 0;
  v135 = 0uLL;
  memset(buf, 0, 53);
  v136 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (v136)
  {
    sub_19B8750F8(v136);
    v135 = 0uLL;
  }

  v138 = (a1 + 224);
  v137 = *(a1 + 224);
  *(a1 + 152) = 0;
  *(a1 + 156) = 1;
  *(a1 + 157) = v135;
  *(a1 + 173) = v135;
  *(a1 + 188) = 0;
  *(a1 + 192) = *&buf[28];
  *(a1 + 201) = *&buf[37];
  if (v137)
  {
    *(a1 + 232) = v137;
    operator delete(v137);
    *v138 = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
  }

  *v138 = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0xBFF0000000000000;
  if (*(a1 + 368) != 1 || *(a1 + 568) <= 0.0 || *(a1 + 480) < 0.0)
  {
    v139 = 1;
    goto LABEL_306;
  }

  v158 = *(a1 + 384);
  v159 = *(a1 + 276);
  v160 = *(a1 + 304);
  v161 = *(a1 + 256);
  sub_19B9F5AA8(v161);
  if (v159)
  {
    v162 = 1.0 - v160;
  }

  else
  {
    v162 = v160;
  }

  v163 = v161[5];
  sub_19BA0C01C(a1, *(a1 + 432), *(a1 + 440), *(a2 + 296), *(a2 + 304), *(a1 + 448));
  v165 = v164;
  v166 = *(a2 + 544);
  v167 = *(a1 + 480);
  v168 = -1.0;
  if (v166 >= 0.0)
  {
    v169 = fmod(v167 - v166, 360.0);
    if (v169 < 0.0)
    {
      v169 = v169 + 360.0;
    }

    if (v169 > 180.0)
    {
      v169 = v169 + -360.0;
    }

    v168 = fabs(v169);
  }

  v170 = v162 * v163;
  v171 = fmod(v167 - *(a1 + 280), 360.0);
  if (v171 < 0.0)
  {
    v171 = v171 + 360.0;
  }

  if (v171 > 180.0)
  {
    v171 = v171 + -360.0;
  }

  v172 = fabs(v171);
  v173 = *(a1 + 568);
  if (v173 > 0.0 && v173 < 45.0 && v172 > 30.0)
  {
    v174 = 0;
LABEL_389:
    v139 = 1;
    if (v170 >= 0.0 && v170 < 35.0 && !v174)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v176 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v158;
        *&buf[12] = 2050;
        *&buf[14] = v170;
        _os_log_impl(&dword_19B873000, v176, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,not snapping course,reason,distanceToIntersection,%{public}.1lf", buf, 0x16u);
      }

      v177 = sub_19B87DD40();
      if (*(v177 + 160) > 1 || *(v177 + 164) > 1 || *(v177 + 168) > 1 || *(v177 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        LODWORD(v234[0]) = 134349312;
        *(v234 + 4) = v158;
        WORD2(v234[1]) = 2050;
        *(&v234[1] + 6) = v170;
        v178 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,not snapping course,reason,distanceToIntersection,%{public}.1lf", v234, 22);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::shallUseSnapCourse(const MMSnapData &)", "CoreLocation: %s\n", v178);
        if (v178 != buf)
        {
          free(v178);
        }
      }

      v139 = 0;
    }

    goto LABEL_405;
  }

  v175 = *(a2 + 432);
  v139 = 1;
  if (v175 > 0.0 && v175 < 45.0)
  {
    v174 = v168 <= 30.0;
    goto LABEL_389;
  }

LABEL_405:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v179 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134350080;
    *&buf[4] = v158;
    *&buf[12] = 2050;
    *&buf[14] = v170;
    *&buf[22] = 2050;
    *&buf[24] = v165;
    *&buf[32] = 2050;
    *&buf[34] = v172;
    *&buf[42] = 2050;
    *&buf[44] = v168;
    _os_log_impl(&dword_19B873000, v179, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,distToNextMulti,%{public}.1lf,distFromPriorCrumb,%{public}.1lf,fabsCourseDiffWithSnap,%{public}.1lf,fabsCourseDiffWithPriorFullSnap,%{public}.1lf", buf, 0x34u);
  }

  v180 = sub_19B87DD40();
  if (*(v180 + 160) > 1 || *(v180 + 164) > 1 || *(v180 + 168) > 1 || *(v180 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v234[0]) = 134350080;
    *(v234 + 4) = v158;
    WORD2(v234[1]) = 2050;
    *(&v234[1] + 6) = v170;
    HIWORD(v234[2]) = 2050;
    *v235 = v165;
    *&v235[8] = 2050;
    *&v235[10] = v172;
    *&v235[18] = 2050;
    *&v235[20] = v168;
    v181 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,distToNextMulti,%{public}.1lf,distFromPriorCrumb,%{public}.1lf,fabsCourseDiffWithSnap,%{public}.1lf,fabsCourseDiffWithPriorFullSnap,%{public}.1lf", v234, 52);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::shallUseSnapCourse(const MMSnapData &)", "CoreLocation: %s\n", v181);
    if (v181 != buf)
    {
      free(v181);
    }
  }

LABEL_306:
  *(a1 + 848) = v139 ^ 1;
  *(a1 + 888) = *(a1 + 96);
  memset(v234, 0, sizeof(v234));
  *v235 = xmmword_19BA89720;
  v235[16] = 0;
  *&v235[24] = 0u;
  v236 = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  v237 = _Q0;
  v238 = _Q0;
  v239 = _Q0;
  v240 = _Q0;
  v241 = 0xBFF0000000000000;
  v242 = 0;
  v243 = _Q0;
  v244 = _Q0;
  v245 = _Q0;
  sub_19BA16424(v234, a1 + 376, *(a1 + 904));
  if (v211)
  {
    *(&v238 + 1) = 0xBFF0000000000000;
    *(&v239 + 1) = 0xBFF0000000000000;
  }

  v212 = 0;
  v213 = 0;
  v214 = 0;
  v215 = 0x3FF0000000000000;
  v216 = 0u;
  v217 = 0u;
  v218 = 0;
  if (!sub_19BA0F96C(a1, v234, (a1 + 256), &v212))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v154 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v154, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,unable to calculate score", buf, 0xCu);
    }

    v155 = sub_19B87DD40();
    if ((*(v155 + 160) & 0x80000000) != 0 && (*(v155 + 164) & 0x80000000) != 0 && (*(v155 + 168) & 0x80000000) != 0 && !*(v155 + 152))
    {
      goto LABEL_359;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v246 = 134349056;
    *&v246[4] = v2;
    v153 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,unable to calculate score", v246, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v153);
    goto LABEL_357;
  }

  v218 = 1;
  v215 = 0x3FF0000000000000;
  sub_19BA1647C(a1 + 256, &v212);
  sub_19B988454((a1 + 256));
  if (sub_19BA0CB14(a1 + 136))
  {
    *(a1 + 556) = 0;
    v141 = sub_19BA0EC08((a1 + 104));
    if (v141 > 0.0)
    {
      v142 = *(a1 + 312) / v141;
      if (v142 > 1000000.0)
      {
        v142 = 1000000.0;
      }

      v143 = v142;
      *(a1 + 556) = v143;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v144 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v145 = **v116;
      v146 = *v119;
      *buf = 134349569;
      *&buf[4] = v2;
      *&buf[12] = 2049;
      *&buf[14] = v145;
      *&buf[22] = 2050;
      *&buf[24] = v146;
      _os_log_impl(&dword_19B873000, v144, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,bestParticleRoadID,%{private}lld,score,%{public}.8lf", buf, 0x20u);
    }

    v147 = sub_19B87DD40();
    if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v148 = **v116;
      v149 = *v119;
      *v246 = 134349569;
      *&v246[4] = v2;
      *&v246[12] = 2049;
      *&v246[14] = v148;
      v247 = 2050;
      v248 = v149;
      v150 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,bestParticleRoadID,%{private}lld,score,%{public}.8lf", v246, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v150);
      if (v150 != buf)
      {
        free(v150);
      }
    }

    v21 = 1;
    goto LABEL_360;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v156 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    *&buf[4] = v2;
    _os_log_impl(&dword_19B873000, v156, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,unable to fill crumb", buf, 0xCu);
  }

  v157 = sub_19B87DD40();
  if ((*(v157 + 160) & 0x80000000) == 0 || (*(v157 + 164) & 0x80000000) == 0 || (*(v157 + 168) & 0x80000000) == 0 || *(v157 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v246 = 134349056;
    *&v246[4] = v2;
    v153 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,unable to fill crumb", v246, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v153);
LABEL_357:
    if (v153 != buf)
    {
      free(v153);
    }
  }

LABEL_359:
  v21 = 0;
LABEL_360:
  if (__p)
  {
    v226 = __p;
    operator delete(__p);
  }

  if (v220)
  {
    sub_19B8750F8(v220);
  }

  if (SHIBYTE(v257) < 0)
  {
    operator delete(v256);
  }

LABEL_366:
  if (*(&v227[1] + 1))
  {
    *&v228 = *(&v227[1] + 1);
    operator delete(*(&v227[1] + 1));
  }

  *buf = v227;
  sub_19B988734(buf);
  return v21;
}

void sub_19BA16280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_19B966FCC(&a55);
  sub_19BA16620(&a15);
  sub_19B966FCC(&a29);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  sub_19BA16620(&a43);
  _Unwind_Resume(a1);
}

double sub_19BA16424(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 80) = *(a2 + 56);
  v3 = *(a2 + 80);
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 72);
  *(a1 + 104) = v4;
  v7 = *(a2 + 184);
  v6 = *(a2 + 192);
  *(a1 + 112) = v3;
  *(a1 + 120) = v6;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = v5;
  *(a1 + 144) = v7;
  *(a1 + 152) = *(a2 + 228);
  *(a1 + 160) = *(a2 + 200);
  *(a1 + 176) = *(a2 + 216);
  *(a1 + 184) = vextq_s8(*(a2 + 16), *(a2 + 16), 8uLL);
  *(a1 + 200) = *(a2 + 8);
  return sub_19B9C138C(a1, a2, a3);
}

__n128 sub_19BA1647C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v2 = a1 + 88;
  if (v3 == v4)
  {
LABEL_4:
    sub_19B973D80(v2, a2);
  }

  else
  {
    while (*(v3 + 64) != *(a2 + 64))
    {
      v3 += 72;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    *v3 = *a2;
    result = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    *(v3 + 16) = result;
  }

  return result;
}

uint64_t sub_19BA164CC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_19BA2EF54(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4 != v5)
  {
    sub_19B988D6C((a1 + 24), (v4 - v5) >> 2);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_19BA16584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  a10 = v10;
  sub_19B988734(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA165AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_19BA2EB5C(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4));
    sub_19BA2EFD8((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_19BA16620(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_19B988734(&v4);
  return a1;
}

double sub_19BA16668(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  if (!*a3 || !*a1)
  {
    return -1.0;
  }

  sub_19BA0C01C(a2, *(a1 + 32), *(a1 + 40), *(a3 + 32), *(a3 + 40), 0.0);
  return result;
}

uint64_t sub_19BA16694(uint64_t a1, void *a2)
{
  *a1 = &unk_1F0E6E168;
  *(a1 + 8) = 257;
  *(a1 + 12) = 0;
  *(a1 + 16) = xmmword_19BA8D470;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = xmmword_19BA89490;
  *(a1 + 200) = 0x3FF0000000000000;
  *(a1 + 208) = *a2;
  v3 = a2[1];
  *(a1 + 216) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 224) = _Q1;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 376) = 0xBFF0000000000000;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 404) = 1;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 496) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0xBFF0000000000000;
  *(a1 + 528) = 0xBFF0000000000000;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0xBFF0000000000000;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 851) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 718) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 928) = xmmword_19BA8C810;
  *(a1 + 944) = 0x415854A640000000;
  *(a1 + 968) = 0x3FF0000000000000;
  *(a1 + 976) = 0;
  *(a1 + 1007) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 1023) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1040) = a1 + 1040;
  *(a1 + 1048) = a1 + 1040;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1108) = 1;
  *(a1 + 1112) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1200) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1208) = 0;
  *(a1 + 1212) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1257) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = _Q1;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0xBFF0000000000000;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1627) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1494) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1704) = 0xBFF0000000000000;
  *(a1 + 1696) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = xmmword_19BA89490;
  *(a1 + 1744) = 0x3FF0000000000000;
  *(a1 + 1752) = -1;
  *(a1 + 1776) = 0;
  *(a1 + 1760) = 0u;
  *(a1 + 1784) = a1 + 1784;
  *(a1 + 1792) = a1 + 1784;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = a1 + 1808;
  *(a1 + 1816) = a1 + 1808;
  *(a1 + 1824) = 0;
  *(a1 + 1832) = 0x600000006;
  *(a1 + 1856) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1864) = 0xBFF0000000000000;
  *(a1 + 1872) = 0xBFF0000000000000;
  *(a1 + 1944) = 0;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1952) = _Q1;
  *(a1 + 2072) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2112) = 0x3FF0000000000000;
  *(a1 + 2120) = 180;
  *(a1 + 2144) = 0;
  *(a1 + 2128) = 0u;
  *(a1 + 2200) = 0;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2152) = 0u;
  sub_19BA16AD8(a1);
  return a1;
}

void sub_19BA16A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v9 = *(v3 + 2176);
  if (v9)
  {
    *(v3 + 2184) = v9;
    operator delete(v9);
  }

  v10 = *(v3 + 2088);
  *(v3 + 2088) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10, a2);
  }

  sub_19BA2F160((v3 + 2080));
  sub_19B98868C(va);
  sub_19B98868C(va);
  sub_19B9886E0(va);
  v11 = *v7;
  if (*v7)
  {
    *(v3 + 1848) = v11;
    operator delete(v11);
  }

  sub_19B916DC0(v6);
  sub_19B916DC0(v5);
  if (*(v3 + 1431) < 0)
  {
    operator delete(*(v3 + 1408));
  }

  sub_19B96FBE4((v3 + 1064));
  sub_19B9679F8(v4);
  sub_19BA2F1BC(v3 + 264);
  sub_19B988734(va);
  v12 = *(v3 + 216);
  if (v12)
  {
    sub_19B8750F8(v12);
  }

  _Unwind_Resume(a1);
}

double sub_19BA16AD8(uint64_t a1)
{
  v52[2] = *MEMORY[0x1E69E9840];
  *(a1 + 224) = 0xBFF0000000000000;
  sub_19BA2ECC0((a1 + 240));
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  memset(v12, 0, 24);
  *v11 = v12;
  sub_19B988734(v11);
  bzero(v12, 0x300uLL);
  v12[20] = 1;
  v14 = 0;
  v15 = 0u;
  memset(&v12[32], 0, 48);
  v13 = 0;
  v16 = 0xBFF0000000000000;
  v17 = 0u;
  v18 = 0;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  v27 = 0u;
  v28 = _Q0;
  v29 = 0u;
  v30 = 0xBFF0000000000000;
  memset(&v40[32], 0, 32);
  v41 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v45, 0, 27);
  memset(&v45[32], 0, 48);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  memset(v40, 0, 30);
  v46 = 0xBFF0000000000000;
  v47 = xmmword_19BA89490;
  v48 = 0u;
  v49 = 0x3FF0000000000000;
  *(v51 + 7) = 0;
  v51[0] = 0;
  v50 = 0u;
  *(v52 + 7) = 0;
  v52[0] = 0;
  sub_19BA20B88(a1 + 264, v12);
  if (v51[0])
  {
    sub_19B8750F8(v51[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(*(&v35 + 1));
  }

  if (v24)
  {
    operator delete(v24);
  }

  if (*(&v17 + 1))
  {
    sub_19B8750F8(*(&v17 + 1));
  }

  if (v14)
  {
    operator delete(v14);
  }

  if (*&v12[8])
  {
    sub_19B8750F8(*&v12[8]);
  }

  *(a1 + 1032) = 0;
  sub_19B9679F8((a1 + 1040));
  *(a1 + 1208) = 0;
  *&v11[7] = 0u;
  memset(&v12[4], 0, 49);
  *(a1 + 1064) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1065) = *v11;
  v7 = *(a1 + 1096);
  *(a1 + 1088) = 0u;
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  *(a1 + 1104) = 0;
  *(a1 + 1108) = 1;
  *(a1 + 1112) = 0;
  *(a1 + 1116) = *v12;
  *(a1 + 1128) = *&v12[12];
  *(a1 + 1144) = *&v12[28];
  *(a1 + 1153) = *&v12[37];
  v8 = *(a1 + 1176);
  if (v8)
  {
    *(a1 + 1184) = v8;
    operator delete(v8);
  }

  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1212) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1257) = 0u;
  sub_19B967A5C(a1 + 1280);
  *(a1 + 1752) = -1;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  *v12 = v12;
  *&v12[8] = v12;
  *&v12[16] = 0;
  sub_19BA30054((a1 + 1784), v12);
  sub_19B916DC0(v12);
  *v12 = v12;
  *&v12[8] = v12;
  *&v12[16] = 0;
  sub_19BA30054((a1 + 1808), v12);
  sub_19B916DC0(v12);
  *(a1 + 1832) = 0x600000006;
  v9 = *(a1 + 1840);
  if (v9)
  {
    *(a1 + 1848) = v9;
    operator delete(v9);
  }

  *(a1 + 1856) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1864) = 0xBFF0000000000000;
  *(a1 + 1872) = 0xBFF0000000000000;
  sub_19B9866E4((a1 + 1880));
  sub_19B9899D0((a1 + 1904));
  *(a1 + 1920) = 0;
  *(a1 + 1904) = 0u;
  memset(v12, 0, 24);
  *v11 = v12;
  sub_19B98868C(v11);
  sub_19B9899D0((a1 + 1928));
  *(a1 + 1944) = 0;
  *(a1 + 1928) = 0u;
  memset(v12, 0, 24);
  *v11 = v12;
  sub_19B98868C(v11);
  *(a1 + 2072) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 1968) = 0xBFF0000000000000;
  *(a1 + 2048) = 0;
  result = 0.0;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2037) = 0;
  *(a1 + 2056) = 0xBFF0000000000000;
  *(a1 + 2064) = 0xBFF0000000000000;
  return result;
}

uint64_t sub_19BA16E84(uint64_t *a1, uint64_t a2)
{
  v352[111] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  a1[246] = 0xBFF0000000000000;
  *(a1 + 512) = 0;
  *(a1 + 247) = 0u;
  *(a1 + 249) = 0u;
  *(a1 + 251) = 0u;
  *(a1 + 253) = 0u;
  *(a1 + 2037) = 0;
  a1[257] = 0xBFF0000000000000;
  a1[258] = 0xBFF0000000000000;
  v6 = a1[26];
  v5 = a1[27];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a2 + 8);
      *buf = 134349056;
      *&buf[4] = v18;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v20 = *(a2 + 8);
      *v297 = 134349056;
      *&v297[4] = v20;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", v297, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v16);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  sub_19B9DEBC4(v6);
  v6[1] = *(a2 + 8);
  (*(*v6 + 96))(v6);
  v7 = *(a2 + 56);
  *(a2 + 152) = v7;
  v8 = *(&v7 + 1);
  v9 = *(a2 + 104);
  *(a2 + 168) = v9;
  *(a2 + 320) = *(&v7 + 1);
  *&v10 = v9;
  *(&v10 + 1) = v7;
  *(a2 + 288) = v7;
  *(a2 + 304) = v10;
  *(a2 + 328) = v7;
  *(a2 + 280) = 0;
  v11 = 0.0;
  if (*(a1 + 64) <= 0.0)
  {
LABEL_58:
    *(a2 + 152) = v7;
    *(a2 + 160) = v8;
    *(a2 + 168) = v9;
    *(a2 + 288) = v7;
    *(a2 + 296) = v8;
    *(a2 + 304) = v9;
    *(a2 + 312) = v7;
    *(a2 + 320) = v8;
    *(a2 + 328) = v7;
    *(a2 + 336) = v8;
    *(a2 + 280) = 0;
    if (((*(*a1 + 48))(a1, a2, a1 + 33) & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v31 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = v4;
        _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,not matching", buf, 0xCu);
      }

      v32 = sub_19B87DD40();
      if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v297 = 134349056;
        *&v297[4] = v4;
        v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,not matching", v297, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }

      v21 = 1;
      if (v5)
      {
        goto LABEL_30;
      }

      return v21;
    }

    v28 = (*(*a1 + 56))(a1, a2);
    (*(*v6 + 32))(v6, v28);
    (*(*v6 + 48))(v6, a2, 450.0);
    (*(*a1 + 32))(a1, a2, a1 + 33);
    sub_19B9866E4(a1 + 235);
    if (*(a1 + 9) == 1)
    {
      v29 = a1[26];
      v30 = a1[27];
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        *&buf[8] = v30;
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        *&buf[8] = 0;
      }

      *buf = v29;
      sub_19B986730(a2, buf, (a1 + 21), (a1 + 229), a1 + 235, 0, 100.0);
      if (*&buf[8])
      {
        sub_19B8750F8(*&buf[8]);
      }

      if (v30)
      {
        sub_19B8750F8(v30);
      }
    }

    v230[0] = xmmword_19BA89490;
    v230[1] = 0u;
    v231 = 0x3FF0000000000000;
    memset(v232, 0, sizeof(v232));
    v233 = 0;
    __asm { FMOV            V1.2D, #-1.0 }

    v234 = _Q1;
    v236 = 0u;
    v235 = &v236;
    v237 = 0u;
    v238 = 0;
    v239 = 1;
    v240 = 0;
    *v245 = 0u;
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0;
    v246 = 0;
    v247 = 0xBFF0000000000000;
    v249 = 0;
    v248 = 0u;
    v250 = 1;
    v251 = 0.0;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v255 = 0;
    v256 = 0u;
    v257 = 0;
    v258 = 0;
    v259 = 0u;
    v225 = _Q1;
    v260 = _Q1;
    v261 = 0u;
    *v262 = 0xBFF0000000000000;
    *&v264[120] = 0;
    *&v264[128] = 0;
    memset(&v264[80], 0, 34);
    memset(&v264[136], 0, 75);
    memset(&v264[216], 0, 56);
    memset(v264, 0, 78);
    v263 = 0u;
    memset(&v262[8], 0, 80);
    v266 = 0u;
    *&v264[272] = xmmword_19BA8C810;
    v265 = 0x415854A640000000;
    v267 = 0x3FF0000000000000;
    v268 = 0;
    v269 = 0u;
    memset(v270, 0, 11);
    memset(&v270[2], 0, 11);
    v271 = 0;
    v227 = (a1 + 30);
    if (sub_19BA1B8A8(a1, a1 + 30, (a1 + 33), a2, 1, 0, v230))
    {
      goto LABEL_82;
    }

    v37 = a1[26];
    if (v37 && (*(*v37 + 104))(v37) && BYTE1(v270[3]) == 1 && a1[239] != a1[238] && BYTE2(v270[1]) == 1 && v248 && *(a1 + 768) == 1 && a1[48])
    {
      v38 = *(a2 + 192);
      if (v38 > 25.0 || v38 <= 0.0 || *(a2 + 104) < 0.0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v41 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(a2 + 8);
          v43 = *(a2 + 192);
          *buf = 134349312;
          *&buf[4] = v42;
          *&buf[12] = 2050;
          *&buf[14] = v43;
          _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,checkForUserDeviationFromRoute skipped,courseUnc,%{public}.2lf", buf, 0x16u);
        }

        v44 = sub_19B87DD40();
        if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v45 = *(a2 + 8);
          v46 = *(a2 + 192);
          *v297 = 134349312;
          *&v297[4] = v45;
          *&v297[12] = 2050;
          *&v297[14] = v46;
          v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,checkForUserDeviationFromRoute skipped,courseUnc,%{public}.2lf", v297, 22);
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForUserDeviationFromRoute(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v47);
          if (v47 != buf)
          {
            free(v47);
          }
        }
      }

      else
      {
        v39 = *(a2 + 8);
        sub_19BA1B758(v297);
        if ((sub_19BA1B8A8(a1, v227, (a1 + 33), a2, 0, 0, v297) & 1) == 0 && v311 == 1 && v304[0])
        {
          for (i = v256; i != *(&v256 + 1); i += 72)
          {
            if (*(i + 64) == 1)
            {
              goto LABEL_118;
            }
          }

          i = 0;
LABEL_118:
          v48 = v308;
          if (v308 != v309)
          {
            while (*(v48 + 64) != 1)
            {
              v48 += 72;
              if (v48 == v309)
              {
                goto LABEL_158;
              }
            }

            if (i && *i > 0.0)
            {
              v49 = *v48 / *i;
              v229 = sub_19BA16668(&v248, (a1 + 21), (a1 + 48));
              v50 = sub_19BA16668(v304, (a1 + 21), (a1 + 48));
              v51 = fmod(*(a2 + 104) - v305, 360.0);
              if (v51 < 0.0)
              {
                v51 = v51 + 360.0;
              }

              if (v51 <= 180.0)
              {
                v52 = v51;
              }

              else
              {
                v52 = v51 + -360.0;
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v53 = fabs(v49);
              v54 = fabs(v52);
              v55 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v56 = *v248;
                v57 = *v304[0];
                *buf = 134352129;
                *&buf[4] = v39;
                *&buf[12] = 2050;
                *&buf[14] = v229;
                *&buf[22] = 2050;
                *&buf[24] = v50;
                *&buf[32] = 2050;
                *&buf[34] = v54;
                *&buf[42] = 2050;
                *&buf[44] = v53;
                *&buf[52] = 2053;
                *&buf[54] = v252;
                *&buf[62] = 2053;
                *&buf[64] = *(&v252 + 1);
                *&buf[72] = 2050;
                *&buf[74] = v251;
                v315 = 2049;
                *v316 = v56;
                *&v316[8] = 2053;
                *&v316[10] = v306;
                *&v316[18] = 2053;
                *&v316[20] = v307;
                *v317 = 2050;
                *&v317[2] = v305;
                *&v317[10] = 2049;
                *&v317[12] = v57;
                _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,solutionDiff,%{public}.2lf,newSolutionDiff,%{public}.2lf,courseDiffNewAndRawSolution,%{public}.2lf,factor,%{public}.5lf,bestParticle,%{sensitive}.8lf,%{sensitive}.8lf,%{public}.3lf,%{private}lld,newBestParticle,%{sensitive}.8lf,%{sensitive}.8lf,%{public}.3lf,%{private}lld", buf, 0x84u);
              }

              v58 = sub_19B87DD40();
              if (*(v58 + 160) > 1 || *(v58 + 164) > 1 || *(v58 + 168) > 1 || *(v58 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v59 = *v248;
                v60 = *v304[0];
                *v275 = 134352129;
                *&v275[4] = v39;
                *&v275[12] = 2050;
                *&v275[14] = v229;
                *&v275[22] = 2050;
                v276 = v50;
                v277 = 2050;
                v278 = v54;
                v279 = 2050;
                v280 = v53;
                v281 = 2053;
                v282 = v252;
                v283 = 2053;
                v284 = *(&v252 + 1);
                v285 = 2050;
                v286 = v251;
                v287 = 2049;
                v288 = v59;
                v289 = 2053;
                v290 = v306;
                v291 = 2053;
                v292 = v307;
                v293 = 2050;
                v294 = v305;
                v295 = 2049;
                v296 = v60;
                v61 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,solutionDiff,%{public}.2lf,newSolutionDiff,%{public}.2lf,courseDiffNewAndRawSolution,%{public}.2lf,factor,%{public}.5lf,bestParticle,%{sensitive}.8lf,%{sensitive}.8lf,%{public}.3lf,%{private}lld,newBestParticle,%{sensitive}.8lf,%{sensitive}.8lf,%{public}.3lf,%{private}lld", v275, 132);
                sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForUserDeviationFromRoute(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v61);
                if (v61 != buf)
                {
                  free(v61);
                }
              }

              v62 = v54 >= 25.0 || v53 < 2.0;
              if (!v62)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v63 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134349568;
                  *&buf[4] = v39;
                  *&buf[12] = 2050;
                  *&buf[14] = v53;
                  *&buf[22] = 2050;
                  *&buf[24] = v54;
                  _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter swapped with local filter without routeHints,local,factor,%{public}.5lf,courseDiffNewAndRawSolution,%{public}.2lf", buf, 0x20u);
                }

                v64 = sub_19B87DD40();
                if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  *v275 = 134349568;
                  *&v275[4] = v39;
                  *&v275[12] = 2050;
                  *&v275[14] = v53;
                  *&v275[22] = 2050;
                  v276 = v54;
                  v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filter swapped with local filter without routeHints,local,factor,%{public}.5lf,courseDiffNewAndRawSolution,%{public}.2lf", v275, 32);
                  sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForUserDeviationFromRoute(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v65);
                  if (v65 != buf)
                  {
                    free(v65);
                  }
                }

                sub_19BA1F4E0(v230, v297);
              }
            }
          }
        }

LABEL_158:
        sub_19BA1F438(v297);
      }
    }

    if (BYTE2(v270[1]) != 1 || *(a1 + 768) != 1 || !a1[48])
    {
      goto LABEL_430;
    }

    v66 = a1[26];
    if (v66)
    {
      if ((*(*v66 + 104))(v66))
      {
        v67 = 6.0;
      }

      else
      {
        v67 = 10.0;
      }
    }

    else
    {
      v67 = 10.0;
    }

    v68 = *(a2 + 24);
    if (v68 >= 0.0)
    {
      v70 = *(a1 + 66);
      v71 = vabdd_f64(v68, v70) > 3.0;
      v69 = v70 >= 0.0 && v71;
    }

    else
    {
      v69 = 0;
    }

    v72 = *(a2 + 8);
    v73 = sub_19BA16668(&v248, (a1 + 21), (a1 + 48));
    v74 = *&v269 * 0.2;
    if (*&v269 * 0.2 < 0.1)
    {
      v74 = 0.1;
    }

    if (v74 > 0.4)
    {
      v74 = 0.4;
    }

    if (v73 < v74)
    {
      goto LABEL_430;
    }

    v75 = *(a1 + 234);
    if (v75 >= 0.0 && vabdd_f64(*(&v260 + 1), v75) <= 6.0 || ((v76 = *&v269 * 3.0, v73 > *&v269 * 3.0) ? (_ZF = v248 == 0) : (_ZF = 1), _ZF || (BYTE1(v270[1]) & 1) != 0))
    {
LABEL_210:
      if (v73 < 0.0)
      {
        goto LABEL_430;
      }

      v88 = fmax(v67 * *&v269, 15.0) > v73 ? 1 : v69;
      if (v88)
      {
        goto LABEL_430;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v89 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v72;
        *&buf[12] = 2050;
        *&buf[14] = v73;
        _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected, recomputing without course,solutionDiff,%{public}.2lf", buf, 0x16u);
      }

      v90 = sub_19B87DD40();
      if (*(v90 + 160) > 1 || *(v90 + 164) > 1 || *(v90 + 168) > 1 || *(v90 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v297 = 134349312;
        *&v297[4] = v72;
        *&v297[12] = 2050;
        *&v297[14] = v73;
        v91 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,solution jump detected, recomputing without course,solutionDiff,%{public}.2lf", v297, 22);
        sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v91);
        if (v91 != buf)
        {
          free(v91);
        }
      }

      sub_19BA1B758(v297);
      if ((sub_19BA1B8A8(a1, v227, (a1 + 33), a2, 1, 1, v297) & 1) == 0 && v311 == 1)
      {
        v92 = sub_19BA16668(v304, (a1 + 21), (a1 + 48));
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v93 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349568;
          *&buf[4] = v72;
          *&buf[12] = 2050;
          *&buf[14] = v73;
          *&buf[22] = 2050;
          *&buf[24] = v92;
          _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,course,solutionDiff,%{public}.2lf,newSolutionDiff,%{public}.2lf", buf, 0x20u);
        }

        v94 = sub_19B87DD40();
        if (*(v94 + 160) > 1 || *(v94 + 164) > 1 || *(v94 + 168) > 1 || *(v94 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v275 = 134349568;
          *&v275[4] = v72;
          *&v275[12] = 2050;
          *&v275[14] = v73;
          *&v275[22] = 2050;
          v276 = v92;
          v95 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,course,solutionDiff,%{public}.2lf,newSolutionDiff,%{public}.2lf", v275, 32);
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v95);
          if (v95 != buf)
          {
            free(v95);
          }
        }

        if (v92 < v73 * 0.6)
        {
          sub_19BA1F4E0(v230, v297);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v102 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            *&buf[4] = v72;
            _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter swapped with local filter without course, solutionDiffCheck", buf, 0xCu);
          }

          v103 = sub_19B87DD40();
          if (*(v103 + 160) <= 1 && *(v103 + 164) <= 1 && *(v103 + 168) <= 1 && !*(v103 + 152))
          {
            goto LABEL_429;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v275 = 134349056;
          *&v275[4] = v72;
          v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filter swapped with local filter without course, solutionDiffCheck", v275, 12);
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v104);
          if (v104 == buf)
          {
            goto LABEL_429;
          }

LABEL_428:
          free(v104);
LABEL_429:
          sub_19BA1F438(v297);
          goto LABEL_430;
        }

        if (vabdd_f64(v92, v73) < 2.0)
        {
          v96 = v72;
          sub_19B97106C(&v248, buf);
          sub_19B97106C(v304, v275);
          if (*buf != *v275 || buf[16] != v275[16] || *&buf[8] != *&v275[8])
          {
            v111 = *(a1 + 102);
            v112 = fmod((v111 - v251), 360.0);
            if (v112 < 0.0)
            {
              v112 = v112 + 360.0;
            }

            if (v112 > 180.0)
            {
              v112 = v112 + -360.0;
            }

            v113 = fabs(v112);
            v114 = fmod((v111 - v305), 360.0);
            if (v114 < 0.0)
            {
              v114 = v114 + 360.0;
            }

            if (v114 > 180.0)
            {
              v114 = v114 + -360.0;
            }

            v62 = v113 <= 60.0;
            v72 = v96;
            if (!v62 && fabs(v114) < 10.0)
            {
              sub_19BA1F4E0(v230, v297);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v115 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134349056;
                *&buf[4] = v96;
                _os_log_impl(&dword_19B873000, v115, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter swapped with local filter without course, courseDiffCheck", buf, 0xCu);
              }

              v116 = sub_19B87DD40();
              if (*(v116 + 160) > 1 || *(v116 + 164) > 1 || *(v116 + 168) > 1 || (v72 = v96, *(v116 + 152)))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                *v275 = 134349056;
                *&v275[4] = v96;
                v117 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filter swapped with local filter without course, courseDiffCheck", v275, 12);
                sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v117);
                if (v117 != buf)
                {
                  free(v117);
                }

                v72 = v96;
              }
            }
          }
        }
      }

      sub_19BA1F438(v297);
      if (BYTE1(v270[3]))
      {
        v118 = a1[238];
        v119 = a1[239];
        if (v118 == v119)
        {
          v121 = -1.0;
          v120 = -1.0;
        }

        else
        {
          v120 = -1.0;
          v121 = -1.0;
          do
          {
            sub_19BA0C01C((a1 + 21), *(a1 + 52), *(a1 + 53), v118[10], v118[11], 0.0);
            if (v122 < v121 || v121 < 0.0)
            {
              v121 = v122;
            }

            v124 = fmod(v118[13] - *(a1 + 102), 360.0);
            if (v124 < 0.0)
            {
              v124 = v124 + 360.0;
            }

            if (v124 > 180.0)
            {
              v124 = v124 + -360.0;
            }

            v125 = fabs(v124);
            if (v125 < v120 || v120 < 0.0)
            {
              v120 = v125;
            }

            v118 += 33;
          }

          while (v118 != v119);
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v130 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349568;
          *&buf[4] = v72;
          *&buf[12] = 2050;
          *&buf[14] = v120;
          *&buf[22] = 2050;
          *&buf[24] = v121;
          _os_log_impl(&dword_19B873000, v130, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected,verifying routeHints,courseDiffBetweenPriorSolution,%{public}.2lf,distanceDiffBetweenPriorSolution,%{public}.2lf", buf, 0x20u);
        }

        v131 = sub_19B87DD40();
        if (*(v131 + 160) > 1 || *(v131 + 164) > 1 || *(v131 + 168) > 1 || *(v131 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v297 = 134349568;
          *&v297[4] = v72;
          *&v297[12] = 2050;
          *&v297[14] = v120;
          *&v297[22] = 2050;
          *&v297[24] = v121;
          v132 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,solution jump detected,verifying routeHints,courseDiffBetweenPriorSolution,%{public}.2lf,distanceDiffBetweenPriorSolution,%{public}.2lf", v297, 32);
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v132);
          if (v132 != buf)
          {
            free(v132);
          }
        }

        if (v120 >= 30.0 || (v121 >= 4.0 ? (v133 = v121 < *&v269 + *&v269) : (v133 = 1), !v133))
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v136 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349312;
            *&buf[4] = v72;
            *&buf[12] = 2050;
            *&buf[14] = v73;
            _os_log_impl(&dword_19B873000, v136, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected, recomputing without routeHints,solutionDiff,%{public}.2lf", buf, 0x16u);
          }

          v137 = sub_19B87DD40();
          if (*(v137 + 160) > 1 || *(v137 + 164) > 1 || *(v137 + 168) > 1 || *(v137 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v297 = 134349312;
            *&v297[4] = v72;
            *&v297[12] = 2050;
            *&v297[14] = v73;
            v138 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,solution jump detected, recomputing without routeHints,solutionDiff,%{public}.2lf", v297, 22);
            sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v138);
            if (v138 != buf)
            {
              free(v138);
            }
          }

          sub_19BA1B758(v297);
          if ((sub_19BA1B8A8(a1, v227, (a1 + 33), a2, 0, 1, v297) & 1) != 0 || v311 != 1)
          {
            goto LABEL_429;
          }

          v139 = sub_19BA16668(v304, (a1 + 21), (a1 + 48));
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v140 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349568;
            *&buf[4] = v72;
            *&buf[12] = 2050;
            *&buf[14] = v73;
            *&buf[22] = 2050;
            *&buf[24] = v139;
            _os_log_impl(&dword_19B873000, v140, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,solutionDiff,%{public}.2lf,newSolutionDiff,%{public}.2lf", buf, 0x20u);
          }

          v141 = sub_19B87DD40();
          if (*(v141 + 160) > 1 || *(v141 + 164) > 1 || *(v141 + 168) > 1 || *(v141 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v275 = 134349568;
            *&v275[4] = v72;
            *&v275[12] = 2050;
            *&v275[14] = v73;
            *&v275[22] = 2050;
            v276 = v139;
            v142 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,solutionDiff,%{public}.2lf,newSolutionDiff,%{public}.2lf", v275, 32);
            sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v142);
            if (v142 != buf)
            {
              free(v142);
            }
          }

          if (v139 >= v310 * 1.5 || v139 <= v310 * 0.1)
          {
            goto LABEL_429;
          }

          sub_19BA1F4E0(v230, v297);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v143 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            *&buf[4] = v72;
            _os_log_impl(&dword_19B873000, v143, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter swapped with local filter without routeHints", buf, 0xCu);
          }

          v144 = sub_19B87DD40();
          if (*(v144 + 160) <= 1 && *(v144 + 164) <= 1 && *(v144 + 168) <= 1 && !*(v144 + 152))
          {
            goto LABEL_429;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v275 = 134349056;
          *&v275[4] = v72;
          v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filter swapped with local filter without routeHints", v275, 12);
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v104);
          if (v104 == buf)
          {
            goto LABEL_429;
          }

          goto LABEL_428;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v134 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v72;
          _os_log_impl(&dword_19B873000, v134, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected,routeHints are OK, skipping recomputation", buf, 0xCu);
        }

        v135 = sub_19B87DD40();
        if (*(v135 + 160) > 1 || *(v135 + 164) > 1 || *(v135 + 168) > 1 || *(v135 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v297 = 134349056;
          *&v297[4] = v72;
          v129 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,solution jump detected,routeHints are OK, skipping recomputation", v297, 12);
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v129);
LABEL_357:
          if (v129 != buf)
          {
            free(v129);
          }
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v127 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v72;
          _os_log_impl(&dword_19B873000, v127, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected,routeHints are not used", buf, 0xCu);
        }

        v128 = sub_19B87DD40();
        if (*(v128 + 160) > 1 || *(v128 + 164) > 1 || *(v128 + 168) > 1 || *(v128 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v297 = 134349056;
          *&v297[4] = v72;
          v129 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,solution jump detected,routeHints are not used", v297, 12);
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v129);
          goto LABEL_357;
        }
      }

LABEL_430:
      if ((*(*a1 + 72))(a1, v230, a1 + 33))
      {
        if ((*(*a1 + 16))(a1, v230))
        {
          v228 = 0;
          goto LABEL_458;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v148 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v4;
          _os_log_impl(&dword_19B873000, v148, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, adjustSolutionforRoadWidth failed", buf, 0xCu);
        }

        v149 = sub_19B87DD40();
        if (*(v149 + 160) > 1 || *(v149 + 164) > 1 || *(v149 + 168) > 1 || *(v149 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v297 = 134349056;
          *&v297[4] = v4;
          v147 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filterReset, adjustSolutionforRoadWidth failed", v297, 12);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v147);
LABEL_455:
          if (v147 != buf)
          {
            free(v147);
          }

          v228 = 1;
LABEL_458:
          v150 = *(a1 + 234);
          v151 = v150 < 0.0;
          if (vabdd_f64(*(&v260 + 1), v150) > 6.0)
          {
            v151 = 1;
          }

          v226 = v151;
          if (!v151)
          {
LABEL_508:
            if ((v228 & 1) != 0 || (*(*a1 + 80))(a1, v230, a1 + 33))
            {
              v178 = a1[30];
              v177 = a1[31];
              sub_19BA16AD8(a1);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v179 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134349312;
                *&buf[4] = v4;
                *&buf[12] = 1026;
                *&buf[14] = v178 != v177;
                _os_log_impl(&dword_19B873000, v179, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset,shallReset,wasInitialized,%{public}d", buf, 0x12u);
              }

              v180 = sub_19B87DD40();
              if (*(v180 + 160) > 1 || *(v180 + 164) > 1 || *(v180 + 168) > 1 || *(v180 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                *v297 = 134349312;
                *&v297[4] = v4;
                *&v297[12] = 1026;
                *&v297[14] = v178 != v177;
                v181 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filterReset,shallReset,wasInitialized,%{public}d", v297, 18);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v181);
                if (v181 != buf)
                {
                  free(v181);
                }
              }

              v233 = 0;
              sub_19BA2ECC0(v232);
              memset(v232, 0, 24);
              memset(buf, 0, 24);
              *v297 = buf;
              sub_19B988734(v297);
              if (*(&v232[1] + 1))
              {
                *&v232[2] = *(&v232[1] + 1);
                operator delete(*(&v232[1] + 1));
              }

              memset(&v232[1] + 8, 0, 24);
              *&v234 = 0xBFF0000000000000;
              sub_19BA0EEA8(&v234 + 8);
              bzero(buf, 0x300uLL);
              buf[20] = 1;
              memset(&v316[4], 0, 24);
              memset(&buf[32], 0, 49);
              *v317 = 0xBFF0000000000000;
              *&v317[8] = 0u;
              v318 = 0;
              v319 = 1;
              v320 = 0u;
              v321 = 0u;
              v322 = 0u;
              v323 = 0;
              v325 = 0;
              v326 = 0;
              *v324 = 0u;
              v327 = 0u;
              v328 = v225;
              v329 = 0u;
              v330 = 0xBFF0000000000000;
              memset(&v340[32], 0, 32);
              v341 = 0;
              v342 = 0u;
              v343 = 0u;
              v344 = 0u;
              memset(v345, 0, 27);
              memset(&v345[32], 0, 48);
              v331 = 0u;
              v332 = 0u;
              v333 = 0u;
              v334 = 0u;
              v335 = 0u;
              v336 = 0u;
              v337 = 0u;
              v338 = 0u;
              v339 = 0u;
              memset(v340, 0, 30);
              v346 = 0xBFF0000000000000;
              v348 = 0u;
              v347 = xmmword_19BA89490;
              v349 = 0x3FF0000000000000;
              *(v351 + 7) = 0;
              v351[0] = 0;
              v350 = 0u;
              *(v352 + 7) = 0;
              v352[0] = 0;
              sub_19BA20B88(&v237, buf);
              if (v351[0])
              {
                sub_19B8750F8(v351[0]);
              }

              if (SHIBYTE(v336) < 0)
              {
                operator delete(*(&v335 + 1));
              }

              if (v324[0])
              {
                operator delete(v324[0]);
              }

              if (*&v317[16])
              {
                sub_19B8750F8(*&v317[16]);
              }

              if (*&v316[4])
              {
                operator delete(*&v316[4]);
              }

              if (*&buf[8])
              {
                sub_19B8750F8(*&buf[8]);
              }

              v182 = *(a2 + 80);
              *&v262[16] = *(a2 + 64);
              *&v262[32] = v182;
              v183 = *(a2 + 112);
              *&v262[48] = *(a2 + 96);
              *&v262[64] = v183;
              v184 = *(a2 + 16);
              v259 = *a2;
              v260 = v184;
              v185 = *(a2 + 48);
              v261 = *(a2 + 32);
              *v262 = v185;
              std::string::operator=(&v262[80], (a2 + 128));
              memcpy(v264, (a2 + 152), 0x118uLL);
              if (v178 != v177 && ((*(*a1 + 24))(a1, v230) & 1) == 0)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v214 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134349056;
                  *&buf[4] = v4;
                  _os_log_impl(&dword_19B873000, v214, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to re-initialize filter", buf, 0xCu);
                }

                v215 = sub_19B87DD40();
                if ((*(v215 + 160) & 0x80000000) == 0 || (*(v215 + 164) & 0x80000000) == 0 || (*(v215 + 168) & 0x80000000) == 0 || *(v215 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  *v297 = 134349056;
                  *&v297[4] = v4;
                  v216 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unable to re-initialize filter", v297, 12);
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v216);
                  if (v216 != buf)
                  {
                    free(v216);
                  }
                }

                v21 = 0;
LABEL_621:
                if (v270[0])
                {
                  sub_19B8750F8(v270[0]);
                }

                if (SHIBYTE(v263) < 0)
                {
                  operator delete(*&v262[80]);
                }

                if (v256)
                {
                  *(&v256 + 1) = v256;
                  operator delete(v256);
                }

                if (*(&v248 + 1))
                {
                  sub_19B8750F8(*(&v248 + 1));
                }

                if (v245[0])
                {
                  v245[1] = v245[0];
                  operator delete(v245[0]);
                }

                if (*(&v237 + 1))
                {
                  sub_19B8750F8(*(&v237 + 1));
                }

                sub_19BA2E9A8(v236);
                if (*(&v232[1] + 1))
                {
                  *&v232[2] = *(&v232[1] + 1);
                  operator delete(*(&v232[1] + 1));
                }

                *buf = v232;
                sub_19B988734(buf);
                if (v5)
                {
                  goto LABEL_30;
                }

                return v21;
              }
            }

            if (BYTE2(v270[1]) == 1)
            {
              if (v248)
              {
                if (!a1[132] || (v186 = a1[131], *v248 != *(v186 + 16)) || v250 != *(v186 + 24))
                {
                  operator new();
                }
              }
            }

            if (*(a1 + 1010) == 1 && !a1[48])
            {
              goto LABEL_546;
            }

            if (BYTE2(v270[1]) == 1)
            {
              if (!v248)
              {
LABEL_546:
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v187 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134349056;
                  *&buf[4] = *(&v259 + 1);
                  _os_log_impl(&dword_19B873000, v187, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, prior or current snap is valid but bestparticle road is null", buf, 0xCu);
                }

                v188 = sub_19B87DD40();
                if ((*(v188 + 160) & 0x80000000) == 0 || (*(v188 + 164) & 0x80000000) == 0 || (*(v188 + 168) & 0x80000000) == 0 || *(v188 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  *v297 = 134349056;
                  *&v297[4] = *(&v259 + 1);
                  v189 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected, prior or current snap is valid but bestparticle road is null", v297, 12);
                  sub_19B885924("Generic", 1, 0, 0, "void CLParticleMM::CLParticleMapMatcherFilterBase::updateIntersectionInfo(const MMFilterData &, const MMSnapData &, CLParticleMapMatcherCommon::IntersectionInfo &)", "CoreLocation: %s\n", v189);
                  if (v189 != buf)
                  {
                    free(v189);
                  }
                }

LABEL_591:
                if (!v226 && v264[112] == 1 && (v264[113] & 1) == 0)
                {
                  v217 = *&v262[32];
                  if (*&v262[32] < 400.0 && *&v262[32] > 0.0 && (v258 != 1 || LOBYTE(v270[3]) == 1))
                  {
                    sub_19BA0C01C((a1 + 21), *&v262[8], *&v262[16], *v264, *&v264[8], 0.0);
                    v219 = v218;
                    v220 = v218 / v217;
                    if (v220 > 1.5)
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v221 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 134351617;
                        *&buf[4] = *(&v259 + 1);
                        *&buf[12] = 2053;
                        *&buf[14] = *&v262[8];
                        *&buf[22] = 2053;
                        *&buf[24] = *&v262[16];
                        *&buf[32] = 2050;
                        *&buf[34] = *&v262[24];
                        *&buf[42] = 2050;
                        *&buf[44] = *&v262[56];
                        *&buf[52] = 2053;
                        *&buf[54] = *v264;
                        *&buf[62] = 2053;
                        *&buf[64] = *&v264[8];
                        *&buf[72] = 2050;
                        *&buf[74] = *&v264[16];
                        v315 = 2050;
                        *v316 = v219;
                        *&v316[8] = 2050;
                        *&v316[10] = *&v262[32];
                        *&v316[18] = 2050;
                        *&v316[20] = v220;
                        _os_log_impl(&dword_19B873000, v221, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,alt,%{public}.2lf,course,%{public}.1lf,snapLat,%{sensitive}.8lf,snapLon,%{sensitive}.8lf,snapCourse,%{public}.1lf,horizontalError,%{public}.2lf,hunc,%{public}.2lf,ratio,%{public}.2lf", buf, 0x70u);
                      }

                      v222 = sub_19B87DD40();
                      if (*(v222 + 160) > 1 || *(v222 + 164) > 1 || *(v222 + 168) > 1 || *(v222 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                        }

                        *v297 = 134351617;
                        *&v297[4] = *(&v259 + 1);
                        *&v297[12] = 2053;
                        *&v297[14] = *&v262[8];
                        *&v297[22] = 2053;
                        *&v297[24] = *&v262[16];
                        *&v297[32] = 2050;
                        *&v297[34] = *&v262[24];
                        *&v297[42] = 2050;
                        *&v297[44] = *&v262[56];
                        *&v297[52] = 2053;
                        *&v297[54] = *v264;
                        *&v297[62] = 2053;
                        *&v297[64] = *&v264[8];
                        *&v297[72] = 2050;
                        *&v297[74] = *&v264[16];
                        v298 = 2050;
                        v299 = v219;
                        v300 = 2050;
                        v301 = *&v262[32];
                        v302 = 2050;
                        v303 = v220;
                        v223 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,alt,%{public}.2lf,course,%{public}.1lf,snapLat,%{sensitive}.8lf,snapLon,%{sensitive}.8lf,snapCourse,%{public}.1lf,horizontalError,%{public}.2lf,hunc,%{public}.2lf,ratio,%{public}.2lf", v297, 112);
                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::modifyHorizontalUncertainty(MMFilterData &)", "CoreLocation: %s\n", v223);
                        if (v223 != buf)
                        {
                          free(v223);
                        }
                      }

                      v224 = v219 * 1.05;
                      if (v219 * 1.05 > 400.0)
                      {
                        v224 = 400.0;
                      }

                      *&v262[32] = v224;
                    }
                  }
                }

                if (v264[112] == 1)
                {
                  v208 = *(&v260 + 1);
                  a1[29] = *(&v260 + 1);
                  if (*(a1 + 10) == 1 && (BYTE1(v270[1]) & 1) == 0)
                  {
                    if (((*&v264[264] < 7u) & (0x58u >> v264[264]) & *(a1 + 11)) != 0 || (v209 = *(a1 + 234), v209 >= 0.0) && vabdd_f64(v208, v209) <= 6.0)
                    {
                      (*(*a1 + 96))(a1, v230, a1 + 33);
                    }
                  }
                }

                if (v227 != v232)
                {
                  sub_19BA2EB5C(v227, *&v232[0], *(&v232[0] + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v232[0] + 1) - *&v232[0]) >> 4));
                }

                sub_19BA1F280((a1 + 33), &v237);
                v210 = *&v262[32];
                *(a2 + 64) = *&v262[16];
                *(a2 + 80) = v210;
                v211 = *&v262[64];
                *(a2 + 96) = *&v262[48];
                *(a2 + 112) = v211;
                v212 = v260;
                *a2 = v259;
                *(a2 + 16) = v212;
                v213 = *v262;
                *(a2 + 32) = v261;
                *(a2 + 48) = v213;
                std::string::operator=((a2 + 128), &v262[80]);
                memcpy((a2 + 152), v264, 0x118uLL);
                if (*(a2 + 264) == 1 && *(a2 + 265) == 1 && *(a2 + 280) == 3 && (*(a1 + 12) & 1) == 0)
                {
                  *(a2 + 265) = 0;
                }

                v21 = v228 ^ 1u;
                goto LABEL_621;
              }

              if (*(a1 + 1010))
              {
                sub_19BA0C01C((a1 + 21), *(a1 + 52), *(a1 + 53), *&v252, *(&v252 + 1), *&v262[24]);
                v191 = v190;
                v192 = a1[49];
                *buf = a1[48];
                *&buf[8] = v192;
                if (v192)
                {
                  atomic_fetch_add_explicit((v192 + 8), 1uLL, memory_order_relaxed);
                }

                v193 = *(a1 + 26);
                *&buf[16] = *(a1 + 25);
                *&buf[32] = v193;
                v194 = a1[54];
                *&buf[56] = *(a1 + 55);
                *&buf[65] = *(a1 + 449);
                *&buf[48] = v194;
                memset(&v316[4], 0, 24);
                sub_19B96775C(&v316[4], a1[59], a1[60], 0x8E38E38E38E38E39 * ((a1[60] - a1[59]) >> 3));
                *&v297[16] = 0;
                v297[21] = 0;
                *&v297[24] = 0;
                *&v297[40] = 0;
                *&v297[32] = 0;
                v195 = *buf;
                v196 = *&buf[8];
                if (*&buf[8])
                {
                  atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                }

                *v297 = v195;
                *&v297[8] = v196;
                v197 = *a1;
                v297[20] = buf[20];
                *&v297[48] = *&buf[48];
                v274 = 0.0;
                v273 = 0;
                *v275 = v275;
                *&v275[8] = v275;
                *&v275[16] = 0;
                *&v312 = &v312;
                *(&v312 + 1) = &v312;
                v313 = 0;
                v272 = 0;
                v198 = (*(v197 + 88))(a1, v297, &v272, v275, &v312, &v274, &v273, v191);
                if (v272 > 1)
                {
                  v199 = v198;
                }

                else
                {
                  v199 = 0;
                }

                if (v199)
                {
                  v200 = *v297;
                  v201 = *&v297[8];
                  if (*&v297[8])
                  {
                    atomic_fetch_add_explicit((*&v297[8] + 8), 1uLL, memory_order_relaxed);
                  }

                  v202 = *&buf[8];
                  *buf = v200;
                  *&buf[8] = v201;
                  if (v202)
                  {
                    sub_19B8750F8(v202);
                  }

                  *&buf[48] = *&v297[48];
                  *&buf[16] = *&v297[16];
                  *&buf[32] = v274;
                  *&buf[40] = v273;
                }

                sub_19B916DC0(&v312);
                sub_19B916DC0(v275);
                if (*&v297[8])
                {
                  sub_19B8750F8(*&v297[8]);
                }

                if (v199)
                {
                  *(a1 + 1064) = 1;
                  *(a1 + 300) = v272;
                  v203 = *buf;
                  v204 = *&buf[8];
                  if (*&buf[8])
                  {
                    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                  }

                  a1[136] = v203;
                  v205 = a1[137];
                  a1[137] = v204;
                  if (v205)
                  {
                    sub_19B8750F8(v205);
                  }

                  v206 = *&buf[32];
                  *(a1 + 69) = *&buf[16];
                  *(a1 + 70) = v206;
                  a1[142] = *&buf[48];
                  *(a1 + 143) = *&buf[56];
                  *(a1 + 1153) = *&buf[65];
                  if (a1 + 136 != buf)
                  {
                    sub_19B967884(a1 + 147, *&v316[4], *&v316[12], 0x8E38E38E38E38E39 * ((*&v316[12] - *&v316[4]) >> 3));
                  }

                  a1[135] = a1[64];
                }

                if (*&v316[4])
                {
                  *&v316[12] = *&v316[4];
                  operator delete(*&v316[4]);
                }

                if (*&buf[8])
                {
                  sub_19B8750F8(*&buf[8]);
                }
              }
            }

            if (*(a1 + 1064) == 1)
            {
              if (BYTE2(v270[1]) != 1 || (sub_19BA0C01C((a1 + 21), *(a1 + 140), *(a1 + 141), *v264, *&v264[8], *&v262[24]), *(a1 + 134) = v207, v207 > 450.0))
              {
                *(a1 + 1064) = 0;
              }
            }

            goto LABEL_591;
          }

          if ((v228 & 1) == 0)
          {
            v152 = sub_19BA1C484(a1, v230, (a1 + 33));
            v153 = v152;
            if (v152)
            {
              v154 = 1.0;
              if (*(a1 + 64) > 0.0)
              {
                v154 = v11;
              }

              *(a1 + 275) = *(a1 + 275) + v154;
              v268 = 1;
              *&v264[16] = *&v262[56];
            }

            else
            {
              a1[275] = 0;
            }

            v264[113] = v152;
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v155 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v156 = a1[275];
              *buf = 134349568;
              *&buf[4] = v4;
              *&buf[12] = 1026;
              *&buf[14] = v153;
              *&buf[18] = 2050;
              *&buf[20] = v156;
              _os_log_impl(&dword_19B873000, v155, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,%{public}d,consecutiveAmbCount,%{public}.1lf", buf, 0x1Cu);
            }

            v157 = sub_19B87DD40();
            if (*(v157 + 160) > 1 || *(v157 + 164) > 1 || *(v157 + 168) > 1 || *(v157 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v158 = a1[275];
              *v297 = 134349568;
              *&v297[4] = v4;
              *&v297[12] = 1026;
              *&v297[14] = v153;
              *&v297[18] = 2050;
              *&v297[20] = v158;
              v159 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,%{public}d,consecutiveAmbCount,%{public}.1lf", v297, 28);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v159);
              if (v159 != buf)
              {
                free(v159);
              }
            }
          }

          v160 = v264[112];
          if (v264[112] == 1)
          {
            if ((a1[96] & 1) == 0)
            {
              a1[262] = 0;
              a1[263] = 0;
              a1[264] = 0x3FF0000000000000;
            }
          }

          else if (*(a1 + 768))
          {
            *(a1 + 131) = xmmword_19BA8BCB0;
            a1[264] = 0;
          }

          v161 = -0.1;
          if (*(&v260 + 1) >= 0.0)
          {
            v162 = *(a1 + 66);
            if (v162 >= 0.0)
            {
              v161 = vabdd_f64(*(&v260 + 1), v162) * 0.1;
            }
          }

          if (v160 && (v264[113] & 1) == 0)
          {
            v163 = *(a1 + 264) - v161;
            v164 = v161 + *(a1 + 263);
          }

          else
          {
            v163 = v161 + *(a1 + 264);
            v164 = *(a1 + 263) - v161;
          }

          v165 = fmin(fmax(v163, 0.0), 1.0);
          *(a1 + 264) = v165;
          v166 = fmin(fmax(v164, 0.0), 1.0);
          *(a1 + 263) = v166;
          *(a1 + 262) = *(a1 + 262) + 1.0;
          *v264 = vmlaq_n_f64(vmulq_n_f64(*&v262[8], v165), *v264, v166);
          *&v264[176] = *v264;
          *&v264[128] = 3;
          if (v165 >= 1.0)
          {
            v167 = 0;
          }

          else
          {
            if (v166 < 1.0)
            {
LABEL_496:
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v168 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v169 = a1[264];
                v170 = a1[263];
                v171 = a1[262];
                *buf = 134350080;
                *&buf[4] = *(&v259 + 1);
                *&buf[12] = 2050;
                *&buf[14] = v169;
                *&buf[22] = 2050;
                *&buf[24] = v170;
                *&buf[32] = 2050;
                *&buf[34] = v171;
                *&buf[42] = 1026;
                *&buf[44] = *&v264[128];
                _os_log_impl(&dword_19B873000, v168, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,fRawWeight,%{public}.2lf,fSnapWeight,%{public}.2lf,fTimeInMode,%{public}.2lf,snapType,%{public}d", buf, 0x30u);
              }

              v172 = sub_19B87DD40();
              if (*(v172 + 160) > 1 || *(v172 + 164) > 1 || *(v172 + 168) > 1 || *(v172 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v173 = a1[264];
                v174 = a1[263];
                v175 = a1[262];
                *v297 = 134350080;
                *&v297[4] = *(&v259 + 1);
                *&v297[12] = 2050;
                *&v297[14] = v173;
                *&v297[22] = 2050;
                *&v297[24] = v174;
                *&v297[32] = 2050;
                *&v297[34] = v175;
                *&v297[42] = 1026;
                *&v297[44] = *&v264[128];
                v176 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,fRawWeight,%{public}.2lf,fSnapWeight,%{public}.2lf,fTimeInMode,%{public}.2lf,snapType,%{public}d", v297, 48);
                sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::MMPartialMatcher::getPartialMatchedSolution(MMSnapData &, const MMSnapData &)", "CoreLocation: %s\n", v176);
                if (v176 != buf)
                {
                  free(v176);
                }
              }

              goto LABEL_508;
            }

            v167 = 1;
          }

          *&v264[128] = v167;
          goto LABEL_496;
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v145 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v4;
          _os_log_impl(&dword_19B873000, v145, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, assessMatch failed", buf, 0xCu);
        }

        v146 = sub_19B87DD40();
        if (*(v146 + 160) > 1 || *(v146 + 164) > 1 || *(v146 + 168) > 1 || *(v146 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v297 = 134349056;
          *&v297[4] = v4;
          v147 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filterReset, assessMatch failed", v297, 12);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v147);
          goto LABEL_455;
        }
      }

LABEL_82:
      v228 = 1;
      goto LABEL_458;
    }

    v78 = *(a1 + 102);
    v79 = fmod((v78 - v251), 360.0);
    if (v79 < 0.0)
    {
      v79 = v79 + 360.0;
    }

    if (v79 > 180.0)
    {
      v79 = v79 + -360.0;
    }

    v80 = fabs(v79);
    v274 = 0.0;
    v273 = 0;
    sub_19BA0C3BC((a1 + 21), &v274, &v273, *&v252, *(&v252 + 1), 0.0, v78, *(a1 + 52), *(a1 + 53));
    v81 = *(a1 + 275);
    if (v81 <= 5.0)
    {
      if (v81 >= 10.0)
      {
        v82 = 1;
        goto LABEL_197;
      }
    }

    else
    {
      v82 = 1;
      if (v81 >= 10.0 || fabs(*&v264[88]) < 7.0)
      {
LABEL_197:
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v83 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v84 = a1[275];
          *buf = 134350849;
          *&buf[4] = v72;
          *&buf[12] = 1026;
          *&buf[14] = v82;
          *&buf[18] = 2050;
          *&buf[20] = v84;
          *&buf[28] = 2050;
          *&buf[30] = fabs(*&v264[88]);
          *&buf[38] = 2050;
          *&buf[40] = v80;
          *&buf[48] = 2050;
          *&buf[50] = v274;
          *&buf[58] = 2053;
          *&buf[60] = v252;
          *&buf[68] = 2053;
          *&buf[70] = *(&v252 + 1);
          _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solutionJumpCheck,shouldNotPropagateFromLastSnap,%{public}d,consecutiveAmbiguityEpochCount,%{public}.1lf,deltaAz,%{public}.2lf,courseDiffWithPriorSolution,%{public}.2lf,acrossTrack,%{public}.2lf,bestLL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x4Eu);
        }

        v85 = sub_19B87DD40();
        if (*(v85 + 160) > 1 || *(v85 + 164) > 1 || *(v85 + 168) > 1 || *(v85 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v86 = a1[275];
          *v297 = 134350849;
          *&v297[4] = v72;
          *&v297[12] = 1026;
          *&v297[14] = v82;
          *&v297[18] = 2050;
          *&v297[20] = v86;
          *&v297[28] = 2050;
          *&v297[30] = fabs(*&v264[88]);
          *&v297[38] = 2050;
          *&v297[40] = v80;
          *&v297[48] = 2050;
          *&v297[50] = v274;
          *&v297[58] = 2053;
          *&v297[60] = v252;
          *&v297[68] = 2053;
          *&v297[70] = *(&v252 + 1);
          v87 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,solutionJumpCheck,shouldNotPropagateFromLastSnap,%{public}d,consecutiveAmbiguityEpochCount,%{public}.1lf,deltaAz,%{public}.2lf,courseDiffWithPriorSolution,%{public}.2lf,acrossTrack,%{public}.2lf,bestLL,%{sensitive}.7lf,%{sensitive}.7lf", v297, 78);
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v87);
          if (v87 != buf)
          {
            free(v87);
          }
        }

        if (!v82)
        {
          sub_19B973CD8(v297, (a1 + 48));
          v97 = a1[26];
          v98 = a1[27];
          if (v98)
          {
            atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v97)
          {
            *v275 = 0;
            *buf = buf;
            *&buf[8] = buf;
            *&buf[16] = 0;
            (*(*v97 + 56))(v97, v297, buf, v275, *&v297[48], *&v269);
            sub_19B916DC0(buf);
          }

          if (*v297)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v99 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134350337;
              *&buf[4] = v72;
              *&buf[12] = 2050;
              *&buf[14] = v73;
              *&buf[22] = 2053;
              *&buf[24] = v252;
              *&buf[32] = 2053;
              *&buf[34] = *(&v252 + 1);
              *&buf[42] = 2053;
              *&buf[44] = *&v297[32];
              *&buf[52] = 2053;
              *&buf[54] = *&v297[40];
              _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solutionJumpCheck,solution replaced with previous propagated solution,%{public}.2lf,bestLL,%{sensitive}.7lf,%{sensitive}.7lf,newLL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x3Eu);
            }

            v100 = sub_19B87DD40();
            if (*(v100 + 160) > 1 || *(v100 + 164) > 1 || *(v100 + 168) > 1 || *(v100 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              *v275 = 134350337;
              *&v275[4] = v72;
              *&v275[12] = 2050;
              *&v275[14] = v73;
              *&v275[22] = 2053;
              v276 = *&v252;
              v277 = 2053;
              v278 = *(&v252 + 1);
              v279 = 2053;
              v280 = *&v297[32];
              v281 = 2053;
              v282 = *&v297[40];
              v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,solutionJumpCheck,solution replaced with previous propagated solution,%{public}.2lf,bestLL,%{sensitive}.7lf,%{sensitive}.7lf,newLL,%{sensitive}.7lf,%{sensitive}.7lf", v275, 62);
              sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v101);
              if (v101 != buf)
              {
                free(v101);
              }
            }

            sub_19B973CD8(v275, &v248);
            sub_19B9710EC(&v248, v297);
            if (sub_19BA0CB14(&v237))
            {
              BYTE1(v270[1]) = 1;
              v268 = 1;
            }

            else
            {
              sub_19B9710EC(&v248, v275);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v108 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
              {
                *buf = 134349056;
                *&buf[4] = v72;
                _os_log_impl(&dword_19B873000, v108, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,solutionJumpCheck,solution replacement failed as unable to fillCrumb", buf, 0xCu);
              }

              v109 = sub_19B87DD40();
              if ((*(v109 + 160) & 0x80000000) == 0 || (*(v109 + 164) & 0x80000000) == 0 || (*(v109 + 168) & 0x80000000) == 0 || *(v109 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                LODWORD(v312) = 134349056;
                *(&v312 + 4) = v72;
                v110 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,solutionJumpCheck,solution replacement failed as unable to fillCrumb", &v312, 12);
                sub_19B885924("Generic", 1, 0, 0, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v110);
                if (v110 != buf)
                {
                  free(v110);
                }
              }
            }

            sub_19B966FCC(v275);
          }

          else
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v105 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349056;
              *&buf[4] = v72;
              _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,solutionJumpCheck,solution replacement failed as returned particle has invalid road", buf, 0xCu);
            }

            v106 = sub_19B87DD40();
            if ((*(v106 + 160) & 0x80000000) == 0 || (*(v106 + 164) & 0x80000000) == 0 || (*(v106 + 168) & 0x80000000) == 0 || *(v106 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              *v275 = 134349056;
              *&v275[4] = v72;
              v107 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,solutionJumpCheck,solution replacement failed as returned particle has invalid road", v275, 12);
              sub_19B885924("Generic", 1, 0, 0, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v107);
              if (v107 != buf)
              {
                free(v107);
              }
            }
          }

          if (v98)
          {
            sub_19B8750F8(v98);
          }

          sub_19B966FCC(v297);
          goto LABEL_430;
        }

        goto LABEL_210;
      }
    }

    v82 = fabs(v274) < v76 && v80 < 30.0;
    goto LABEL_197;
  }

  v12 = *(a2 + 24);
  if (v12 < 0.0 || (v13 = *(a1 + 66), v13 < 0.0))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to compute timeDiff", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v297 = 134349056;
      *&v297[4] = v4;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unable to compute timeDiff", v297, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v16);
LABEL_27:
      if (v16 != buf)
      {
        free(v16);
      }

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v12 - v13 != 0.0)
  {
    v11 = vabdd_f64(v12, v13);
    if (v11 > 5.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v25 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v4;
        *&buf[12] = 2050;
        *&buf[14] = v11;
        _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, dT, %{public}.1lf", buf, 0x16u);
      }

      v26 = sub_19B87DD40();
      if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v297 = 134349312;
        *&v297[4] = v4;
        *&v297[12] = 2050;
        *&v297[14] = v11;
        v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filterReset, dT, %{public}.1lf", v297, 22);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      sub_19BA16AD8(a1);
      *(a1 + 536) = 0;
      *(a1 + 133) = 0u;
      a1[269] = 0;
      *(a1 + 135) = 0u;
      *&v7 = *(a2 + 56);
      v8 = *(a2 + 64);
      v9 = *(a2 + 104);
    }

    goto LABEL_58;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v23 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    *&buf[4] = v4;
    _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,not matching, time betwen updates is 0.0", buf, 0xCu);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v297 = 134349056;
    *&v297[4] = v4;
    v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,not matching, time betwen updates is 0.0", v297, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v16);
    goto LABEL_27;
  }

LABEL_29:
  v21 = 0;
  if (v5)
  {
LABEL_30:
    sub_19B8750F8(v5);
  }

  return v21;
}

void sub_19BA1B5C8(_Unwind_Exception *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_19BA1F438(&STACK[0x4B0]);
  sub_19BA1F438(va);
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(a1);
}

double sub_19BA1B758(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_19BA89490;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 96) = _Q1;
  *(a1 + 120) = 0u;
  *(a1 + 112) = a1 + 120;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 156) = 1;
  *(a1 + 160) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0xBFF0000000000000;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 276) = 1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0xBFF0000000000000;
  *(a1 + 400) = 0xBFF0000000000000;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0xBFF0000000000000;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
  *(a1 + 640) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 723) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 590) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 800) = xmmword_19BA8C810;
  *(a1 + 816) = 0x415854A640000000;
  *(a1 + 840) = 0x3FF0000000000000;
  *(a1 + 848) = 0;
  *(a1 + 879) = 0;
  *(a1 + 872) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 895) = 0;
  *(a1 + 888) = 0;
  *(a1 + 904) = 0;
  return result;
}

uint64_t sub_19BA1B8A8(uint64_t a1, char ***a2, uint64_t a3, __int128 *a4, int a5, int a6, uint64_t a7)
{
  v74 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 208);
  v13 = *(a1 + 216);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    v15 = *(a4 + 1);
    if ((a7 + 40) != a2)
    {
      sub_19BA2EB5C((a7 + 40), *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    }

    v16 = *a4;
    v17 = a4[1];
    v18 = a4[3];
    *(a7 + 408) = a4[2];
    *(a7 + 424) = v18;
    *(a7 + 376) = v16;
    *(a7 + 392) = v17;
    v19 = a4[4];
    v20 = a4[5];
    v21 = a4[7];
    *(a7 + 472) = a4[6];
    *(a7 + 488) = v21;
    *(a7 + 440) = v19;
    *(a7 + 456) = v20;
    std::string::operator=((a7 + 504), (a4 + 8));
    memcpy((a7 + 528), a4 + 152, 0x118uLL);
    if (*(a7 + 48) != *(a7 + 40) || ((*(*a1 + 24))(a1, a7) & 1) != 0)
    {
      v22 = *(a1 + 1032);
      v58 = 0;
      v57 = 0uLL;
      v59 = xmmword_19BA89720;
      v60 = 0;
      v61 = 0u;
      v62 = 0u;
      __asm { FMOV            V0.2D, #-1.0 }

      v63 = _Q0;
      v64 = _Q0;
      v65 = _Q0;
      v66 = _Q0;
      v67 = 0xBFF0000000000000;
      v68 = 0;
      v69 = _Q0;
      v70 = _Q0;
      v71 = _Q0;
      v28.n128_f64[0] = sub_19BA16424(&v57, a4, v22);
      *(a7 + 904) = *(a1 + 1032);
      if (a6)
      {
        *(&v64 + 1) = 0xBFF0000000000000;
        *(&v65 + 1) = 0xBFF0000000000000;
      }

      if ((*(*a1 + 40))(a1, a4, a7, a3, v28))
      {
        if (sub_19BA0FCCC(a7, 1, &v57))
        {
          v29 = 0;
          goto LABEL_48;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v38 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v73 = v15;
          _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, update failed", buf, 0xCu);
        }

        v39 = sub_19B87DD40();
        if (*(v39 + 160) <= 1 && *(v39 + 164) <= 1 && *(v39 + 168) <= 1 && !*(v39 + 152))
        {
LABEL_47:
          v29 = 1;
LABEL_48:
          *(a7 + 897) = 0;
          if (!a5)
          {
            goto LABEL_70;
          }

          if (*(a1 + 9) == 1)
          {
            if ((*(*a1 + 104))(a1, a7, a3))
            {
              v40 = *(a1 + 1904);
              v41 = *(a1 + 1912);
              if (v40 != v41)
              {
                v42 = 0;
                while (vabdd_f64(*(v40 + 184), *(a7 + 400)) <= 0.01)
                {
                  v42 |= sub_19BA0FCCC(a7, 2, v40);
                  v40 += 264;
                  if (v40 == v41)
                  {
                    goto LABEL_94;
                  }
                }

                sub_19B9882F8((a1 + 1904));
LABEL_94:
                *(a7 + 897) = v42 & 1;
                if (v42)
                {
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v51 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134349056;
                    v73 = v15;
                    _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,using route hints", buf, 0xCu);
                  }

                  v52 = sub_19B87DD40();
                  if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v55 = 134349056;
                    v56 = v15;
                    v53 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,using route hints", &v55, 12);
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v53);
                    if (v53 != buf)
                    {
                      free(v53);
                    }
                  }
                }

LABEL_70:
                if ((v29 & 1) == 0)
                {
                  v54[0] = v14;
                  v54[1] = v13;
                  if (v13)
                  {
                    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v45 = sub_19BA0FD94(a7, v54, a3);
                  if (v13)
                  {
                    sub_19B8750F8(v13);
                  }

                  if (v45)
                  {
                    goto LABEL_76;
                  }

                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v48 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134349056;
                    v73 = v15;
                    _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, prepareCandidates failed", buf, 0xCu);
                  }

                  v49 = sub_19B87DD40();
                  if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v55 = 134349056;
                    v56 = v15;
                    v50 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filterReset, prepareCandidates failed", &v55, 12);
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v50);
                    if (v50 != buf)
                    {
                      free(v50);
                    }
                  }
                }

                v46 = 1;
                if (!v13)
                {
                  return v46;
                }

                goto LABEL_77;
              }
            }

            else
            {
              sub_19B9882F8((a1 + 1904));
            }
          }

          *(a7 + 897) = 0;
          goto LABEL_70;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v55 = 134349056;
        v56 = v15;
        v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filterReset, update failed", &v55, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v37);
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v35 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v73 = v15;
          _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, prediction failed", buf, 0xCu);
        }

        v36 = sub_19B87DD40();
        if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
        {
          goto LABEL_47;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v55 = 134349056;
        v56 = v15;
        v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filterReset, prediction failed", &v55, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v37);
      }

      if (v37 != buf)
      {
        free(v37);
      }

      goto LABEL_47;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v43 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v73 = v15;
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to initialize filter", buf, 0xCu);
    }

    v44 = sub_19B87DD40();
    if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LODWORD(v57) = 134349056;
      *(&v57 + 4) = v15;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unable to initialize filter", &v57, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v34);
LABEL_66:
      if (v34 != buf)
      {
        free(v34);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a4 + 1);
      *buf = 134349056;
      v73 = v31;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, prepareSolution", buf, 0xCu);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v33 = *(a4 + 1);
      LODWORD(v57) = 134349056;
      *(&v57 + 4) = v33;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, prepareSolution", &v57, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v34);
      goto LABEL_66;
    }
  }

LABEL_76:
  v46 = 0;
  if (v13)
  {
LABEL_77:
    sub_19B8750F8(v13);
  }

  return v46;
}