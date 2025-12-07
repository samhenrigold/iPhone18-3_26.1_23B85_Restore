void sub_100535154(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100535170()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

id sub_100535730(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[7];
  v11[6] = a3[6];
  v11[7] = v5;
  v6 = a3[9];
  v11[8] = a3[8];
  v11[9] = v6;
  v7 = a3[3];
  v11[2] = a3[2];
  v11[3] = v7;
  v8 = a3[5];
  v11[4] = a3[4];
  v11[5] = v8;
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  return [a4 onMotionStateNotification:v4 data:v11];
}

id sub_100535CB0(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = (a3 * 100.0);
  }

  return [*(*(a1 + 32) + 24) visitEvent:*(a1 + 40) withFamiliarityIndex:v3];
}

void sub_100535CDC(id a1, NSArray *a2, NSError *a3)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (a3)
  {
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v5 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 1026;
      LODWORD(v28) = [(NSError *)a3 code];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cms mode query motion, error:%{public}d}", buf, 0x18u);
    }
  }

  else
  {
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v7 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v8 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 1026;
      LODWORD(v28) = [(NSArray *)a2 count];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode query motion, count:%{public}d}", buf, 0x18u);
    }

    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0];
      v22 = a2;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = *(8 * i);
          if (p_info[248] != -1)
          {
            sub_1018B6480();
          }

          v14 = v7[249];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v13 startDate];
            v16 = v11;
            v17 = v7;
            v18 = p_info;
            v19 = [v13 endDate];
            v20 = [v13 automotive];
            v21 = [v13 confidence];
            *buf = 68290050;
            v24 = 0;
            v25 = 2082;
            v26 = "";
            v27 = 2114;
            v28 = v15;
            a2 = v22;
            v29 = 2114;
            v30 = v19;
            p_info = v18;
            v7 = v17;
            v11 = v16;
            v31 = 1026;
            v32 = v20;
            v33 = 1026;
            v34 = v21;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode query motion, start:%{public, location:escape_only}@, end:%{public, location:escape_only}@, automotive:%{public}hhd, confidence:%{public}d}", buf, 0x32u);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      }

      while (v10);
    }
  }
}

void sub_100535FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100536054;
  v4[3] = &unk_1024473F0;
  v4[4] = a3;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100536054(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018B64A8();
    }

    v2 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2114;
      v30 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#cms mode query visit, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4610 != -1)
      {
        sub_1018B64BC();
      }
    }

    v4 = qword_1025D4618;
    if (os_signpost_enabled(qword_1025D4618))
    {
      v5 = *(a1 + 32);
      *buf = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2114;
      v30 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#cms mode query visit", "{msg%{public}.0s:#cms mode query visit, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v7 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v8 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) count];
      *buf = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 1026;
      LODWORD(v30) = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode query visit, count:%{public}d}", buf, 0x18u);
    }

    obj = *(a1 + 40);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0];
      v13 = &kCTRegistrationRadioAccessTechnologyUnknown_ptr;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [objc_alloc(v13[423]) initWithVisit:*(8 * i)];
          if (p_info[248] != -1)
          {
            sub_1018B6480();
          }

          v16 = v7[249];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = [v15 arrivalDate];
            v18 = v12;
            v19 = v13;
            v20 = v7;
            v21 = [v15 departureDate];
            v22 = [v15 detectionDate];
            v23 = [v15 hasDepartureDate];
            *buf = 68290050;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2114;
            v30 = v17;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            v31 = 2114;
            v32 = v21;
            v7 = v20;
            v13 = v19;
            v12 = v18;
            v33 = 2114;
            v34 = v22;
            v35 = 1026;
            v36 = v23 ^ 1;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cms mode query visit, arrive:%{public, location:escape_only}@, end:%{public, location:escape_only}@, detect:%{public, location:escape_only}@, entry:%{public}hhd}", buf, 0x36u);
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      }

      while (v11);
    }
  }
}

void sub_1005365FC(id a1, NSArray *a2, NSError *a3)
{
  if (a3)
  {
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v4 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1026;
      LODWORD(v17) = [(NSError *)a3 code];
      v5 = "{msg%{public}.0s:#cms mode init motion, error:%{public}d}";
LABEL_6:
      v6 = v4;
      v7 = 24;
LABEL_12:
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, v5, &v12, v7);
    }
  }

  else
  {
    v9 = [(NSArray *)a2 count];
    if (v9)
    {
      v10 = [(NSArray *)a2 lastObject];
      if (qword_1025D47C0 != -1)
      {
        sub_1018B646C();
      }

      v11 = qword_1025D47C8;
      if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68290306;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2114;
        v17 = [v10 startDate];
        v18 = 2114;
        v19 = [v10 endDate];
        v20 = 1026;
        v21 = [v10 automotive];
        v22 = 1026;
        v23 = [v10 confidence];
        v24 = 1026;
        v25 = v9;
        v5 = "{msg%{public}.0s:#cms mode init motion (skip), start:%{public, location:escape_only}@, end:%{public, location:escape_only}@, automotive:%{public}hhd, confidence:%{public}d, count:%{public}d}";
        v6 = v11;
        v7 = 56;
        goto LABEL_12;
      }
    }

    else
    {
      if (qword_1025D47C0 != -1)
      {
        sub_1018B646C();
      }

      v4 = qword_1025D47C8;
      if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68289282;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 1026;
        LODWORD(v17) = 0;
        v5 = "{msg%{public}.0s:#cms mode init motion, count:%{public}d}";
        goto LABEL_6;
      }
    }
  }
}

void sub_100536858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005368D8;
  block[3] = &unk_102447468;
  block[4] = a3;
  block[5] = a2;
  block[6] = v3;
  dispatch_async(v4, block);
}

void sub_1005368D8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018B64A8();
    }

    v2 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      *v24 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#cms mode init visit, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4610 != -1)
      {
        sub_1018B64BC();
      }
    }

    v4 = qword_1025D4618;
    if (os_signpost_enabled(qword_1025D4618))
    {
      v5 = *(a1 + 32);
      *buf = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      *v24 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#cms mode init visit", "{msg%{public}.0s:#cms mode init visit, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    v6 = [[CLVisit alloc] initWithVisit:{objc_msgSend(*(a1 + 40), "firstObject")}];
    [v6 coordinate];
    v18[6] = v7;
    v18[7] = v8;
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v9 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = LocationLogEncryptionDataSize();
      v11 = LocationLogEncryptionEncryptData();
      v12 = LocationLogEncryptionDataSize();
      v13 = LocationLogEncryptionEncryptData();
      [v6 horizontalAccuracy];
      *buf = 68291331;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 1040;
      *v24 = v10;
      *&v24[4] = 2098;
      *&v24[6] = v11;
      v25 = 1040;
      v26 = v12;
      v27 = 2098;
      v28 = v13;
      v29 = 2050;
      v30 = v14;
      v31 = 2113;
      v32 = [v6 arrivalDate];
      v33 = 2113;
      v34 = [v6 departureDate];
      v35 = 2117;
      v36 = [v6 _placeInference];
      v37 = 1026;
      v38 = [v6 hasDepartureDate] ^ 1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode init visit, visit.coordinate.latitude:%{public, location:Encrypted_latitude}.*P, visit.coordinate.longitude:%{public, location:Encrypted_longitude}.*P, visit.hAcc:%{public}f, visit.arrival:%{private, location:escape_only}@, visit.departure:%{private, location:escape_only}@, visit.placeInference:%{sensitive, location:escape_only}@, entry:%{public}hhd}", buf, 0x60u);
    }

    v15 = [v6 hasDepartureDate];
    v16 = *(a1 + 48);
    if (v15)
    {
      [*(v16 + 24) visitEvent:v6 withFamiliarityIndex:0];
    }

    else
    {
      v17 = *(v16 + 64);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100536C7C;
      v18[3] = &unk_10245C918;
      v18[4] = v16;
      v18[5] = v6;
      [v17 getFamiliarityIndexForVisit:v6 withReply:v18];
    }
  }
}

id sub_100536C7C(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = (a3 * 100.0);
  }

  return [*(*(a1 + 32) + 24) visitEvent:*(a1 + 40) withFamiliarityIndex:v3];
}

uint64_t sub_100536F78(uint64_t a1)
{
  *a1 = off_10245C9E8;
  pthread_mutex_destroy(*(a1 + 8));
  v2 = *(a1 + 8);
  v3 = *(v2 + 104);
  if (v3)
  {
    free(v3);
    v2 = *(a1 + 8);
    *(v2 + 104) = 0;
  }

  [*(v2 + 64) assertInside];

  if (*(a1 + 8))
  {
    operator delete();
  }

  return a1;
}

void sub_100537010(uint64_t a1)
{
  sub_100536F78(a1);

  operator delete();
}

BOOL sub_100537088(uint64_t a1)
{
  [*(*(a1 + 8) + 64) assertInside];
  v2 = *(*(a1 + 8) + 80);
  return v2 != pthread_self();
}

pthread_cond_t **sub_1005370D0(pthread_cond_t **a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x1000040EED21634uLL);
  *a1 = v2;
  pthread_cond_init(v2, 0);
  return a1;
}

pthread_cond_t **sub_100537118(pthread_cond_t **a1)
{
  pthread_cond_destroy(*a1);
  free(*a1);
  return a1;
}

void sub_100537154(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  *buf = 4;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 4;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    if (v6[4])
    {
      goto LABEL_6;
    }

LABEL_13:
    if (qword_1025D45A0 != -1)
    {
      sub_1018B6E88();
    }

    v14 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
    {
      v15 = *(a1 + 24);
      *buf = 67109376;
      *&buf[4] = 4;
      *&buf[8] = 1024;
      *&buf[10] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B6E44(buf);
      v53 = *(a1 + 24);
      v69 = 67109376;
      *v70 = 4;
      *&v70[4] = 1024;
      *&v70[6] = v53;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", &v69, 14);
      v55 = v54;
      sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::AccessoryFitnessDM, T = imufm::AccessoryDMInternal, Strategy = AccessoryDMConverter]", "%s\n", v54);
      if (v55 != buf)
      {
        free(v55);
      }
    }

    __src = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_74;
  }

  if (v9 != 1 || (*(v6 + 33) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (!v7)
  {
    v11 = 0;
LABEL_20:
    *&v13 = 0.0;
    goto LABEL_21;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = *(a1 + 24);
  v13 = v8;
LABEL_21:
  v17 = *(a1 + 8);
  v16 = *(a1 + 16);
  if (v16 < v17)
  {
    __src = 0;
    v67 = 0;
    v68 = 0;
    if (*&v13 != 0.0)
    {
      goto LABEL_73;
    }

    goto LABEL_74;
  }

  v18 = vabdd_f64(v16, v17);
  v19 = v18 * 1.00999999 * 50.0;
  if (v19 >= 0x200)
  {
    v20 = 512;
  }

  else
  {
    v20 = v19;
  }

  __src = 0;
  v67 = 0;
  v68 = 0;
  v64 = *&v13;
  sub_100538CD0(&__src, v20);
  if (!v11[49])
  {
    goto LABEL_72;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = (v9 ? sub_1004F7CF0(v11 + 48, v21) + 4 : sub_1004F7CF0(v11 + 48, v21));
    v27 = *v26;
    if (*v26 >= v17)
    {
      break;
    }

LABEL_54:
    if (++v21 >= v11[49])
    {
      if (!v11[49])
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }
  }

  if (v27 <= v16)
  {
    if (v27 >= v17 && v27 < v16)
    {
      if ((v22 & 1) == 0)
      {
        v23 = v21;
        v22 = 1;
      }

      v29 = sub_1004F7CF0(v11 + 48, v21);
      v30 = *(v29 + 1);
      HIDWORD(v30) = *(v29 + 2);
      v31 = *(v29 + 3);
      v32 = vextq_s8(vextq_s8(*(v29 + 2), *(v29 + 2), 0xCuLL), v31, 8uLL);
      *buf = v30;
      *&buf[16] = v32;
      v33 = vextq_s8(v31, v31, 8uLL);
      *v79 = v33.i64[0];
      sub_10011E648(&buf[24], v33);
      v34 = v67;
      if (v67 >= v68)
      {
        v38 = __src;
        v39 = v67 - __src;
        v40 = 0xCCCCCCCCCCCCCCCDLL * ((v67 - __src) >> 3);
        v41 = v40 + 1;
        if (v40 + 1 > 0x666666666666666)
        {
          sub_10028C64C();
        }

        if (0x999999999999999ALL * ((v68 - __src) >> 3) > v41)
        {
          v41 = 0x999999999999999ALL * ((v68 - __src) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v68 - __src) >> 3) >= 0x333333333333333)
        {
          v41 = 0x666666666666666;
        }

        if (v41)
        {
          sub_10045EA08(&__src, v41);
        }

        v42 = 8 * ((v67 - __src) >> 3);
        v43 = *buf;
        v44 = *&buf[16];
        *(v42 + 32) = *v79;
        *v42 = v43;
        *(v42 + 16) = v44;
        v37 = 40 * v40 + 40;
        v45 = (40 * v40 - v39);
        memcpy((v42 - v39), v38, v39);
        v46 = __src;
        __src = v45;
        v67 = v37;
        v68 = 0;
        if (v46)
        {
          operator delete(v46);
        }

        *&v13 = v64;
      }

      else
      {
        v35 = *buf;
        v36 = *&buf[16];
        *(v67 + 4) = *v79;
        *v34 = v35;
        v34[1] = v36;
        v37 = v34 + 40;
      }

      v67 = v37;
      v24 = 1;
      v25 = v21;
    }

    goto LABEL_54;
  }

  if (!v11[49])
  {
    goto LABEL_72;
  }

LABEL_58:
  v47 = (v18 * 50.0) + 858993459 * ((v67 - __src) >> 3);
  if (v47 < 0)
  {
    v47 = -v47;
  }

  if (v47 <= (v18 * 0.0500000007 * 50.0))
  {
    goto LABEL_72;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018B6E88();
    *&v13 = v64;
  }

  v48 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    if (v22)
    {
      v49 = v23;
    }

    else
    {
      v49 = 0;
    }

    v50 = *sub_1004F7CF0(v11 + 48, v49);
    if (v24)
    {
      v51 = v25;
    }

    else
    {
      v51 = 0;
    }

    v52 = *sub_1004F7CF0(v11 + 48, v51);
    *buf = 134219008;
    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    *&buf[24] = v50;
    *v79 = 2048;
    *&v79[2] = v52;
    v80 = 2048;
    v81 = 0xCCCCCCCCCCCCCCCDLL * ((v67 - __src) >> 3);
    _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEFAULT, "#Warning, accessory dm returning unexpected size, requested, start, %f, end, %f, returned, start, %f, end, %f, size, %ld", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B6E44(buf);
    v56 = qword_1025D45A8;
    if (v22)
    {
      v57 = v23;
    }

    else
    {
      v57 = 0;
    }

    v58 = *sub_1004F7CF0(v11 + 48, v57);
    if (v24)
    {
      v59 = v25;
    }

    else
    {
      v59 = 0;
    }

    v60 = *sub_1004F7CF0(v11 + 48, v59);
    v69 = 134219008;
    *v70 = v17;
    *&v70[8] = 2048;
    v71 = v16;
    v72 = 2048;
    v73 = v58;
    v74 = 2048;
    v75 = v60;
    v76 = 2048;
    v77 = 0xCCCCCCCCCCCCCCCDLL * ((v67 - __src) >> 3);
    LODWORD(v63) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v56, 0, "#Warning, accessory dm returning unexpected size, requested, start, %f, end, %f, returned, start, %f, end, %f, size, %ld", COERCE_DOUBLE(&v69), v63, v64, *&__src, v67);
    v62 = v61;
    sub_100152C7C("Generic", 1, 0, 2, "const std::vector<T> CMDataProviderFactoryAccessoryFitnessDM::getDataInRange(CFTimeInterval, CFTimeInterval, TimeBase, Strategy) const [T = imufm::AccessoryDMInternal, Strategy = AccessoryDMConverter]", "%s\n", v61);
    if (v62 != buf)
    {
      free(v62);
    }

    v13 = v65;
    if (v65)
    {
LABEL_73:
      sub_100008080(v13);
    }
  }

  else
  {
LABEL_72:
    if (*&v13 != 0.0)
    {
      goto LABEL_73;
    }
  }

LABEL_74:
  if (v8)
  {
    sub_100008080(v8);
  }

  *a2 = mach_continuous_time();
  sub_10000EC00(a2 + 1, "com.apple.fm.coremotion.imu_v1.base");
  sub_100537A24(&__src, a2 + 4);
  if (__src)
  {
    v67 = __src;
    operator delete(__src);
  }
}

void sub_10053788C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100008080(a11);
  }

  if (v24)
  {
    sub_100008080(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_100537A24(void *a1@<X0>, uint64_t **a2@<X8>)
{
  __dst.i64[0] = 0x10000000006;
  sub_100538D90(v42, &__dst, 0.0);
  v4 = a1[1] - *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
    if (v7 >= 0x100)
    {
      v7 = 256;
    }

    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = 40 * v7;
    do
    {
      v9 = *a1 + v5;
      __dst = *(v9 + 24);
      v10 = *v9;
      v11 = *(v9 + 4);
      v13 = *(v9 + 8);
      v12 = *(v9 + 12);
      v14 = *(v9 + 16);
      v15 = *(v9 + 20);
      v34 = sub_100AEA718(&__dst, __dst);
      v35 = v16;
      v36 = __PAIR64__(v18, v17);
      v19.f32[0] = sub_100AEA7D0(&v34, v10, v11, v13);
      v20 = v19.i32[0];
      v22 = v21;
      v24 = v23;
      v34 = sub_100AEA718(&__dst, v19);
      v35 = v25;
      v36 = __PAIR64__(v27, v26);
      v28 = sub_100AEA7D0(&v34, v12, v14, v15);
      v29 = v42[0];
      *(v42[0] + v6) = v20;
      v30 = v43;
      v29[(v6 + v43)] = v22;
      v29[(v6 + 2 * v30)] = v24;
      *&v29[(v6 + 3 * v30)] = v28;
      v29[(v6 + 4 * v30)] = v31;
      v29[(v6++ + 5 * v30)] = v32;
      v5 += 40;
    }

    while (v8 != v5);
  }

  sub_10000EC00(v40, "audio_accessory_device_motion");
  v44 = 1;
  v45 = v42[3];
  sub_100538E58(v33, &v44, v42);
  sub_100537D24(v33, &v34);
  sub_100538A58(&__dst, v40, &v34);
  sub_100538F7C(a2, &__dst, 1);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v47 < 0)
  {
    operator delete(__dst.i64[0]);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }
}

void sub_100537CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_100538AF4(&a38);
  sub_100538B48(&a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void *sub_100537D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_1004579D4((a2 + 8), (a1 + 24), (a1 + 36), 3uLL);
  v4 = *(a1 + 8) - *a1;
  v6 = 0;
  sub_100538EFC((a2 + 32), v4, &v6);
  return memcpy(*(a2 + 32), *a1, *(a2 + 40) - *(a2 + 32));
}

void sub_100537DA4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100537DC0(uint64_t a1)
{
  sub_10003848C(v37);
  sub_100038730(&v38, "IMUFM Response | ", 17);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = sub_100038730(&v38, "FAILURE | error_msg: { ", 23);
      v6 = *(a1 + 40);
      v5 = a1 + 40;
      v4 = v6;
      v7 = *(v5 + 23);
      if (v7 >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = v4;
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 23);
      }

      else
      {
        v9 = *(v5 + 8);
      }

      v10 = sub_100038730(v3, v8, v9);
      v11 = sub_100038730(v10, " }", 2);
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  else
  {
    sub_100038730(&v38, "SUCCESS | ", 10);
    v13 = *(a1 + 16);
    if (v13 != (a1 + 24))
    {
      do
      {
        v14 = sub_100038730(&v38, "{ ", 2);
        v15 = *(v13 + 55);
        if (v15 >= 0)
        {
          v16 = (v13 + 4);
        }

        else
        {
          v16 = v13[4];
        }

        if (v15 >= 0)
        {
          v17 = *(v13 + 55);
        }

        else
        {
          v17 = v13[5];
        }

        v18 = sub_100038730(v14, v16, v17);
        sub_100038730(v18, " : [", 4);
        sub_1005392EC(&__dst, (v13 + 7));
        for (i = 0; ; i += 4)
        {
          sub_100038730(&v38, " ", 1);
          v20 = v38;
          *(&v40[-1].__locale_ + *(v38 - 24)) = *(&v40[-1].__locale_ + *(v38 - 24)) & 0xFFFFFEFB | 4;
          *(&v40[0].__locale_ + *(v20 - 24)) = 4;
          std::ostream::operator<<();
          if (i == 16)
          {
            break;
          }

          sub_100038730(&v38, ",", 1);
        }

        v21 = sub_100038730(&v38, "] }", 3);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v46, &std::ctype<char>::id);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v46);
        std::ostream::put();
        std::ostream::flush();
        if (__dst.__locale_)
        {
          locale = __dst.__locale_;
          operator delete(__dst.__locale_);
        }

        v23 = v13[1];
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
            v24 = v13[2];
            v25 = *v24 == v13;
            v13 = v24;
          }

          while (!v25);
        }

        v13 = v24;
      }

      while (v24 != (a1 + 24));
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018B6E88();
  }

  v26 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    if ((v45 & 0x10) != 0)
    {
      v28 = v44;
      if (v44 < v41)
      {
        v44 = v41;
        v28 = v41;
      }

      v29 = v40[4].__locale_;
    }

    else
    {
      if ((v45 & 8) == 0)
      {
        v27 = 0;
        v52 = 0;
LABEL_44:
        *(&__dst.__locale_ + v27) = 0;
        p_dst = &__dst;
        if (v52 < 0)
        {
          p_dst = __dst.__locale_;
        }

        *v46 = 136315138;
        *&v46[4] = p_dst;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "%s", v46, 0xCu);
        if (v52 < 0)
        {
          operator delete(__dst.__locale_);
        }

        goto LABEL_48;
      }

      v29 = v40[1].__locale_;
      v28 = v40[3].__locale_;
    }

    v27 = v28 - v29;
    if ((v28 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v27 >= 0x17)
    {
      operator new();
    }

    v52 = v28 - v29;
    if (v27)
    {
      memmove(&__dst, v29, v27);
    }

    goto LABEL_44;
  }

LABEL_48:
  if (sub_10000A100(121, 2))
  {
    sub_1018B6E44(&__dst);
    v33 = qword_1025D45A8;
    sub_10003DD04(&v39, v46);
    if (v47 >= 0)
    {
      v34 = v46;
    }

    else
    {
      v34 = *v46;
    }

    v48 = 136315138;
    v49 = v34;
    _os_log_send_and_compose_impl(2, 0, &__dst, 1628, dword_100000000, v33, 2, "%s", &v48);
    v36 = v35;
    if (v47 < 0)
    {
      operator delete(*v46);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void imufm::utils::LogModelManagerResponse(const motion::fm::ModelManagerResponse &)", "%s\n", v36);
    if (v36 != &__dst)
    {
      free(v36);
    }
  }

  v38 = v31;
  if (v43 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100538490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::locale a54, uint64_t a55)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100538514(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  *(a2 + 8) = 0;
  v5 = (a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = a3;
  sub_10000EC00(v27, "embeddings");
  v6 = sub_10045EF04(a1 + 16, v27);
  v7 = v6;
  if (a1 + 24 == v6)
  {
    goto LABEL_30;
  }

  v20 = *(v6 + 56);
  v22 = 0;
  v23 = 0;
  __p = 0;
  sub_10038EB38(&__p, *(v6 + 64), *(v6 + 72), (*(v6 + 72) - *(v6 + 64)) >> 2);
  __src = 0;
  v25 = 0;
  v26 = 0;
  sub_10001676C(&__src, *(v7 + 88), *(v7 + 96), *(v7 + 96) - *(v7 + 88));
  if (v20)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018B6E88();
    }

    v8 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "IMUFM: Expecting float embeddings", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_26;
    }

    sub_1018B6E44(buf);
    LOWORD(v29) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 16, "IMUFM: Expecting float embeddings", &v29, 2);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 0, "CMIMUFoundationModelResult imufm::utils::ResultFromModelManagerResponse(CFAbsoluteTime, CFAbsoluteTime, const motion::fm::ModelManagerResponse &)", "%s\n", v9);
  }

  else
  {
    v11 = v22 - __p;
    if (v22 - __p == 8)
    {
      v12 = *__p;
      if (*__p == 1)
      {
        v13 = motion::fm::ArrayData::NumElements(&v20);
        v14 = motion::fm::ArrayData::BytesLength(&v20);
        v29 = 0;
        sub_100538BBC(buf, v13, &v29);
        memcpy(*&buf[0], __src, v14);
        if (v5 != buf)
        {
          sub_100731D80((a2 + 8), *&buf[0], *(&buf[0] + 1), (*(&buf[0] + 1) - *&buf[0]) >> 2);
        }

        if (*&buf[0])
        {
          *(&buf[0] + 1) = *&buf[0];
          operator delete(*&buf[0]);
        }

        goto LABEL_26;
      }

      if (qword_1025D45A0 != -1)
      {
        sub_1018B6E88();
      }

      v18 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 67109120;
        DWORD1(buf[0]) = v12;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "IMUFM: Expecting a single batch in the embeddings result, received %u", buf, 8u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_26;
      }

      sub_1018B6E44(buf);
      v29 = 67109120;
      LODWORD(v30) = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 16, "IMUFM: Expecting a single batch in the embeddings result, received %u", &v29);
      v10 = v19;
      sub_100152C7C("Generic", 1, 0, 0, "CMIMUFoundationModelResult imufm::utils::ResultFromModelManagerResponse(CFAbsoluteTime, CFAbsoluteTime, const motion::fm::ModelManagerResponse &)", "%s\n", v19);
    }

    else
    {
      if (qword_1025D45A0 != -1)
      {
        sub_1018B6E88();
      }

      v15 = v11 >> 2;
      v16 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v15;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "IMUFM: Expecting two dimensions from embeddings, recevied %lu", buf, 0xCu);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_26;
      }

      sub_1018B6E44(buf);
      v29 = 134217984;
      v30 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 16, "IMUFM: Expecting two dimensions from embeddings, recevied %lu", &v29);
      v10 = v17;
      sub_100152C7C("Generic", 1, 0, 0, "CMIMUFoundationModelResult imufm::utils::ResultFromModelManagerResponse(CFAbsoluteTime, CFAbsoluteTime, const motion::fm::ModelManagerResponse &)", "%s\n", v17);
    }
  }

  if (v10 != buf)
  {
    free(v10);
  }

LABEL_26:
  if (__src)
  {
    v25 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

LABEL_30:
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_1005389B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  sub_100538B48(&a11);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v27 + 16) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

char *sub_100538A58(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 6) = *a3;
  *(__dst + 5) = 0;
  *(__dst + 6) = 0;
  *(__dst + 4) = 0;
  *(__dst + 2) = *(a3 + 8);
  *(__dst + 6) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  *(__dst + 9) = 0;
  *(__dst + 56) = *(a3 + 32);
  *(__dst + 9) = *(a3 + 48);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return __dst;
}

uint64_t sub_100538AF4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100538B48(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_100538BBC(uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10038EBB4(a1, a2);
  }

  return a1;
}

void sub_100538CB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100538CD0(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_10045EA08(a1, a2);
    }

    sub_10028C64C();
  }
}

void *sub_100538D90(void *a1, uint64_t a2, float a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100538DDC(a1, a2, a3);
  return a1;
}

void sub_100538DC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_100538DDC(uint64_t a1, uint64_t a2, float a3)
{
  v9 = a3;
  *(a1 + 24) = *a2;
  *(a1 + 32) = *(a2 + 4) | dword_100000000;
  v4 = *(a2 + 4) * *a2;
  *(a1 + 40) = v4;
  sub_100538BBC(&v7, v4, &v9);
  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_100538E58(uint64_t a1, uint64_t *a2, char **a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *a2;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 24) = v4;
  *(a1 + 36) = (*(a2 + 1) * *(a2 + 2)) | (*(a2 + 2) << 32);
  *(a1 + 44) = 1;
  *(a1 + 48) = *(a2 + 1) * *a2 * *(a2 + 2);
  if (a1 != a3)
  {
    sub_100731D80(a1, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  return a1;
}

void sub_100538EE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100538EFC(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1000166A8(a1, a2);
  }

  return a1;
}

void sub_100538F60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_100538F7C(uint64_t **a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 80 * a3;
    do
    {
      sub_100539000(a1, v4, a2, a2);
      a2 += 80;
      v6 -= 80;
    }

    while (v6);
  }

  return a1;
}

void *sub_100539000(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  result = *sub_100249FD8(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_100539084();
  }

  return result;
}

void sub_1005390FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1005391E4(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100539118(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 6);
  __dst[4] = 0;
  *(__dst + 6) = v5;
  __dst[5] = 0;
  __dst[6] = 0;
  sub_10038EB38(__dst + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  __dst[7] = 0;
  __dst[8] = 0;
  __dst[9] = 0;
  sub_10001676C(__dst + 7, *(a2 + 7), *(a2 + 8), *(a2 + 8) - *(a2 + 7));
  return __dst;
}

void sub_1005391B0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005391E4(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 11);
    if (v3)
    {
      *(__p + 12) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 8);
    if (v4)
    {
      *(__p + 9) = v4;
      operator delete(v4);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_100539268(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100539268(a1, *a2);
    sub_100539268(a1, *(a2 + 1));
    v4 = *(a2 + 11);
    if (v4)
    {
      *(a2 + 12) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      *(a2 + 9) = v5;
      operator delete(v5);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_1005392EC(uint64_t a1, motion::fm::ArrayData *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v5 != v4)
  {
    memmove((a1 + 24), v4, v5 - v4);
  }

  v6 = *(a1 + 28);
  v7 = *(a1 + 24) * v6;
  *(a1 + 32) = v6 | dword_100000000;
  *(a1 + 40) = v7;
  v13 = 0;
  sub_100538BBC(&v14, v7, &v13);
  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  v12 = v14;
  *a1 = v14;
  *(a1 + 16) = v15;
  v9 = *(a2 + 4);
  v10 = motion::fm::ArrayData::BytesLength(a2);
  memcpy(v12, v9, v10);
  return a1;
}

void sub_1005393B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005393D4()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_10053944C()
{
  v1 = 4;
  qword_102656CD8 = 0;
  unk_102656CE0 = 0;
  qword_102656CD0 = 0;
  sub_1004579D4(&qword_102656CD0, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656CD0, dword_100000000);
}

void sub_1005394C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100007244(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v6 = *(a3 + 16);
  }

  sub_100539660(v7, a4);
  motion::fm::Client::sendModelManagerRequestAsync();
  sub_1005396F8(v7);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void *sub_1005395B8(void *a1)
{
  *a1 = off_10245CAD0;
  motion::fm::Client::~Client((a1 + 1));
  return a1;
}

void sub_1005395FC(void *a1)
{
  *a1 = off_10245CAD0;
  motion::fm::Client::~Client((a1 + 1));

  operator delete();
}

uint64_t sub_100539660(uint64_t a1, uint64_t a2)
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

uint64_t sub_1005396F8(uint64_t a1)
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

void sub_100539778()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_1005397F0()
{
  v1 = 4;
  qword_102656CF0 = 0;
  unk_102656CF8 = 0;
  qword_102656CE8 = 0;
  sub_1004579D4(&qword_102656CE8, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656CE8, dword_100000000);
}

void sub_100539864(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = off_10245CB20;
  *(a1 + 8) = off_10245CB70;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  v3 = *a3;
  v4 = a3[1];
  *(a1 + 64) = *(a3 + 4);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  sub_10053A7EC((a1 + 72), &v6, &v5);
}

void sub_1005398FC(_Unwind_Exception *a1)
{
  *(v1 + 72) = off_10245CC08;
  sub_10053A3DC((v1 + 88));
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(a1);
}

atomic_uint **sub_100539968(atomic_uint **a1)
{
  *a1 = off_10245CC08;
  sub_10053A3DC(a1 + 2);
  return a1;
}

uint64_t sub_1005399B0(uint64_t a1)
{
  *a1 = off_10245CB20;
  *(a1 + 8) = off_10245CB70;

  *(a1 + 72) = off_10245CC08;
  sub_10053A3DC((a1 + 88));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100539A80(uint64_t a1)
{
  sub_1005399B0(a1);

  operator delete();
}

void sub_100539AB8(uint64_t a1)
{
  sub_1005399B0(a1 - 8);

  operator delete();
}

uint64_t sub_100539B74(uint64_t a1)
{
  sub_100539F74((a1 + 24));
  v3 = a1;
  sub_100539FC4(&v3);
  return a1;
}

atomic_uint **sub_100539BBC(uint64_t *a1)
{
  v1 = a1[1];
  v7 = 0;
  v8 = v1;
  if (v1)
  {
    v2 = v1[2];
    do
    {
      if (!v2)
      {
        v8 = 0;
        return sub_10053A3DC(&v8);
      }

      v3 = v2;
      atomic_compare_exchange_strong_explicit(v1 + 2, &v3, v2 + 1, memory_order_relaxed, memory_order_relaxed);
      v4 = v3 == v2;
      v2 = v3;
    }

    while (!v4);
    v7 = *a1;
    if (v7)
    {
      v5 = sub_10053A148(&v7);
      sub_10053A18C(v5);
    }
  }

  return sub_10053A3DC(&v8);
}

void sub_100539C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053A3DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100539C54(uint64_t result)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

uint64_t *sub_100539DD8(uint64_t *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = sub_10053B76C(result + 10);
    sub_10053DF0C(v2);
    result = v1[2];
    v1[2] = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

atomic_uint **sub_100539E54(uint64_t a1, double a2)
{
  sub_1000A69D8(*(a1 + 16), 0, &v6, a2 + -5.12, a2);
  if (qword_1025D45A0 != -1)
  {
    sub_1018B6EB0();
  }

  v3 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *&v6.__opaque[24] = 136315138;
    *&v6.__opaque[28] = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "IMUFM Composite got notified, notifying client. %s", &v6.__opaque[24], 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B6FEC();
  }

  v4 = sub_10053B76C((a1 + 80));
  return sub_10053DFF4(v4, &v6);
}

void (***sub_100539F74(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void sub_100539FC4(void ***a1)
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
        v4 -= 24;
        sub_10053A048(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

atomic_uint **sub_10053A048(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 2)
  {
    result = *(a1 + 8);
    if (result)
    {
      v4 = *(*result + 1);

      return v4();
    }
  }

  else
  {
    if (v1 > 1)
    {
      sub_10053508C();
    }

    v2 = (a1 + 16);

    return sub_10053A0E0(v2);
  }

  return result;
}

atomic_uint **sub_10053A0E0(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 24))(v2);
  }

  return a1;
}

uint64_t sub_10053A148(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

void sub_10053A18C(uint64_t a1)
{
  sub_10053A268(v2, a1);
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    sub_10053A4C4(a1, v2);
  }

  (*(*v3 + 32))(v3);
  sub_10053A2D8(v2);
}

void sub_10053A238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053A760(va);
  _Unwind_Resume(a1);
}

void *sub_10053A268(void *a1, uint64_t a2)
{
  a1[20] = 10;
  a1[21] = a1;
  a1[22] = 0;
  a1[23] = a2;
  (*(*a2 + 24))(a2);
  return a1;
}

void sub_10053A2D8(atomic_uint **result)
{
  v1 = result[21];
  if (v1)
  {
    v2 = result[20];
    if (v2 < 0xA || (v1 == result ? (v3 = v2 == 10) : (v3 = 1), !v3 || result[22] > v2))
    {
      sub_1018B70FC();
    }

    sub_10053A32C(result, &v4);
  }
}

void sub_10053A32C(atomic_uint **a1, uint64_t a2)
{
  v3 = a1[22];
  if (v3)
  {
    sub_10053A38C(a1, v3);
  }

  if (a1[20] >= 0xB)
  {
    v4 = a1[21];

    operator delete(v4);
  }
}

atomic_uint **sub_10053A38C(atomic_uint **result, uint64_t a2)
{
  if (!a2)
  {
    sub_1018B7128();
  }

  if (-a2 < 0)
  {
    v2 = &result[21][4 * result[22]];
    v3 = v2 - 16 * a2;
    do
    {
      v4 = v2 - 16;
      result = sub_10053A3DC((v2 - 8));
      v2 = v4;
    }

    while (v4 > v3);
  }

  return result;
}

atomic_uint **sub_10053A3DC(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_10053A410(v2);
  }

  return a1;
}

atomic_uint *sub_10053A410(atomic_uint *result)
{
  if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    v1 = result;
    v2 = result + 3;
    result = (*(*result + 16))(result);
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(*v1 + 24);

      return v3(v1);
    }
  }

  return result;
}

atomic_uint **sub_10053A4C4(atomic_uint **result, void *a2)
{
  v2 = *(result + 7);
  if (!v2)
  {
    sub_1018B7154();
  }

  v3 = v2 - 1;
  *(result + 7) = v3;
  if (!v3)
  {
    (*(*result + 5))(&v5);
    sub_10053A558(a2, &v5);
    return sub_10053A3DC(&v5 + 1);
  }

  return result;
}

void *sub_10053A558(void *a1, __int128 *a2)
{
  v4 = a1[22];
  if (v4 == a1[20])
  {
    sub_10053A600(a1, (v4 + 1));
  }

  return sub_10053A5B0(a1, a2);
}

void *sub_10053A5B0(void *result, __int128 *a2)
{
  v2 = result[22];
  if (v2 == result[20])
  {
    sub_1018B7180();
  }

  v3 = *a2;
  *(result[21] + 16 * v2) = *a2;
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1u, memory_order_relaxed);
    v2 = result[22];
  }

  result[22] = v2 + 1;
  return result;
}

void sub_10053A600(uint64_t result, atomic_uint *a2)
{
  v2 = *(result + 160);
  if (v2 <= 9)
  {
    sub_1018B71D8();
  }

  v3 = a2;
  if (v2 < a2)
  {
    v5 = (4 * v2);
    if (v5 > a2)
    {
      a2 = v5;
    }

    sub_10053A65C(result, a2);
    if (*(result + 160) < v3)
    {
      sub_1018B71AC();
    }
  }
}

void sub_10053A65C(atomic_uint **a1, atomic_uint *a2)
{
  sub_10053A6B8(a1, a2);
  v5 = v4;
  sub_10053A2D8(a1);
  a1[20] = a2;
  a1[21] = v5;
  if (a1[22] > a2)
  {
    sub_1018B7204();
  }
}

void sub_10053A6B8(uint64_t a1, unint64_t a2)
{
  sub_10053A718(a1, a2);
  v4 = *(a1 + 176);
  if (v4)
  {
    v5 = *(a1 + 168);
    v6 = &v5[2 * v4];
    v7 = v3;
    do
    {
      v8 = v5[1];
      *v7 = *v5;
      v7[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
      }

      v5 += 2;
      v7 += 2;
    }

    while (v5 != v6);
  }
}

void sub_10053A718(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
    if (!(a2 >> 60))
    {

      operator new();
    }

    sub_1001D0818();
  }
}

uint64_t sub_10053A760(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  sub_10053A2D8(a1);
  return a1;
}

void sub_10053A894(atomic_uint **a1)
{
  *a1 = off_10245CC08;
  sub_10053A3DC(a1 + 2);

  operator delete();
}

uint64_t sub_10053A8F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10053AA80(uint64_t a1)
{
  sub_1003C93BC(a1 + 24, *(a1 + 32));
  sub_10053AAB8(a1);
  return a1;
}

void sub_10053AAB8(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_10053A3DC(v2 + 3);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_10053ABDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10053AD64(a1, a2);
  sub_10053AE40((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_10053AD64(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_10053ADD0(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_10053AE40(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_10053AEA8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10053AEA8(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10053AF30(v5, (v5 + 8), (v4 + 4), (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_10053AF30(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *sub_10053AFD0(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10053AFD0(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_10053B210((a1 + 3), a5, (a2 + 4)))
  {
    if (!sub_10053B210((a1 + 3), (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_10053B210((a1 + 3), a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_10053B210((a1 + 3), (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_10053B174(a1, a3, a5);
}

void *sub_10053B174(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_10053B210(a1 + 24, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_10053B210(a1 + 24, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_10053B210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2 < *a3;
  if (*a2 == *a3)
  {
    if (*a2 != 1)
    {
      return 0;
    }

    if ((*(a2 + 4) & 1) == 0)
    {
      sub_101869E1C();
    }

    if ((*(a3 + 4) & 1) == 0)
    {
      sub_101869E1C();
    }

    return *(a2 + 8) < *(a3 + 8);
  }

  return v3;
}

void sub_10053B26C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053B2D8(&v2, a2);
}

void sub_10053B348(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053B370(v1);
  __cxa_rethrow();
}

uint64_t sub_10053B370(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1003C93BC(result + 24, *(result + 32));
    sub_10053AAB8(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_10053B3E4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1003C93BC(v1 + 24, *(v1 + 32));
    sub_10053AAB8(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_10053B44C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10053B478(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053B4E4(&v2, a2);
}

void sub_10053B554(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete();
  }

  __cxa_rethrow();
}

uint64_t sub_10053B58C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10053B5A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053B614(&v2, a2);
}

void sub_10053B684(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053B6AC(v1);
  __cxa_rethrow();
}

uint64_t sub_10053B6AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10053A3DC((result + 24));
    sub_10053A3DC((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10053B708(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10053A3DC((v1 + 24));
    sub_10053A3DC((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10053B76C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

pthread_mutex_t *sub_10053B7B0(pthread_mutex_t *a1)
{
  if (pthread_mutex_init(a1, 0))
  {
    sub_1018B7230();
  }

  return a1;
}

void sub_10053B7E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053B850(&v2, a2);
}

void sub_10053B8C0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053B8E8(v1);
  __cxa_rethrow();
}

pthread_mutex_t *sub_10053B8E8(pthread_mutex_t *result)
{
  if (result)
  {
    sub_10053B96C(result);

    operator delete();
  }

  return result;
}

pthread_mutex_t *sub_10053B928(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    sub_10053B96C(result);

    operator delete();
  }

  return result;
}

pthread_mutex_t *sub_10053B96C(pthread_mutex_t *a1)
{
  if (pthread_mutex_destroy(a1))
  {
    __assert_rtn("~mutex", "lwm_pthreads.hpp", 55, "pthread_mutex_destroy(&m_) == 0");
  }

  return a1;
}

void sub_10053B9C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053BA2C(&v2, a2);
}

void sub_10053BA9C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053BAC4(v1);
  __cxa_rethrow();
}

uint64_t sub_10053BAC4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10053A3DC((result + 32));
    sub_10053A3DC((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10053BB20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10053A3DC((v1 + 32));
    sub_10053A3DC((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_10053BB84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10053B76C(a1 + 3);
  sub_10053BD58(v5, v4);
  sub_10053BC60(a1, v5);
}

void sub_10053BC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10053BD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10053A3DC(va);
  _Unwind_Resume(a1);
}

void *sub_10053BD58(void *a1, pthread_mutex_t *a2)
{
  a1[20] = 10;
  a1[21] = a1;
  a1[22] = 0;
  a1[23] = a2;
  sub_10053BDA8(a2);
  return a1;
}

uint64_t sub_10053BDA8(pthread_mutex_t *a1)
{
  result = pthread_mutex_lock(a1);
  if (result)
  {
    sub_1018B725C();
  }

  return result;
}

void sub_10053BE60(uint64_t *a1, _DWORD *a2, void *a3)
{
  v6 = a1 + 4;
  if (*a2 != 2)
  {
    for (i = *v6; i; i = *(i + v9))
    {
      v8 = sub_10053B210((a1 + 6), a2, i + 32);
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = 8;
      }

      if (v8)
      {
        v6 = i;
      }
    }
  }

  v10 = v6;
  sub_10053D3A8(a1, &v10, a2, a3);
}

void sub_10053BEF8(uint64_t *a1, _DWORD *a2, void *a3)
{
  if (*a2)
  {
    v6 = a1 + 4;
    for (i = a1[4]; i; i = i[v9])
    {
      v8 = sub_10053B210((a1 + 6), (i + 4), a2);
      v9 = v8;
      if (!v8)
      {
        v6 = i;
      }
    }
  }

  else
  {
    v6 = a1[3];
  }

  v10 = v6;
  sub_10053D3A8(a1, &v10, a2, a3);
}

atomic_uint **sub_10053BF94(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_10053C230(a1, a2, 1, 2);
}

void sub_10053C0B8(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_1018B7288();
    }
  }

  sub_10053B5A8(&v2, a2);
}

atomic_uint **sub_10053C118(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1018B72B4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_10053A148(a1);
  result = sub_10053B76C(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_10053A148(v10 + 2);
        sub_10053C368(v15, a2);
        v10 = v22;
      }

      if (*(sub_10053A148(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_10053A148(a1);
        v18 = sub_10053B76C(v17);
        v19 = sub_10053A148(v22 + 2);
        v16 = sub_10053C3D4(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_10053A148(a1);
      result = sub_10053B76C(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

atomic_uint **sub_10053C230(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1018B72E0();
  }

  v9 = sub_10053A148(a1);
  v10 = sub_10053B76C(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_10053A148(a1);
    v11 = *(sub_10053B76C(v12) + 8);
  }

  v14 = v11;
  return sub_10053C118(a1, a2, a3, &v14, a4);
}

uint64_t *sub_10053C368(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_10053B76C(result);
    result = sub_10053C520(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_10053A4C4(a1, a2);
      }
    }
  }

  return result;
}

atomic_uint **sub_10053C3D4(uint64_t *a1, void *a2, void **a3)
{
  if (*a3 == a1)
  {
    sub_1018B7364();
  }

  v4 = a1 + 4;
  v5 = a1[4];
  if (!v5)
  {
    goto LABEL_19;
  }

  v8 = (a1 + 3);
  v9 = a1 + 4;
  do
  {
    v10 = sub_10053B210((a1 + 6), v5 + 32, a2);
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v9 = v5;
    }

    v5 = *(v5 + v11);
  }

  while (v5);
  if (v9 == v4)
  {
LABEL_19:
    sub_1018B7338();
  }

  if (!sub_10053C668(a1, (v9 + 4), a2))
  {
    sub_1018B730C();
  }

  if (v9[6] == *a3)
  {
    v12 = *(*a3 + 1);
    if (v12 == sub_10053C6C0(a1, a2))
    {
      sub_10045E8A0(v8, v9);
      operator delete(v9);
    }

    else
    {
      v17 = a2;
      *(sub_10053C73C(v8, a2, &unk_101C66300, &v17) + 48) = v12;
    }
  }

  v13 = *a3;
  v14 = *v13;
  v15 = v13[1];
  *(v14 + 1) = v15;
  *v15 = v14;
  --a1[2];
  sub_10053A3DC(v13 + 3);
  operator delete(v13);
  return v15;
}

uint64_t sub_10053C520(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 == a1[1])
  {
    return 0;
  }

  do
  {
    result = sub_10053C57C(v1);
    if (result)
    {
      break;
    }

    v1 += 24;
  }

  while (v1 != a1[1]);
  return result;
}

uint64_t sub_10053C57C(uint64_t a1)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
      v1 = *(a1 + 16);
      if (v1)
      {
        result = atomic_load_explicit((v1 + 8), memory_order_acquire) == 0;
      }

      else
      {
        result = 1;
      }

      break;
    case 2:
      v3 = *(*sub_10053C624((a1 + 8)) + 24);

      result = v3();
      break;
    default:
      sub_10053508C();
  }

  return result;
}

uint64_t sub_10053C624(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "scoped_ptr.hpp", 105, "px != 0");
  }

  return result;
}

uint64_t sub_10053C6C0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 + 32;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a1 + 32;
    do
    {
      v7 = sub_10053B210(v2 + 48, a2, v4 + 32);
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 8;
      }

      if (v7)
      {
        v6 = v4;
      }

      v4 = *(v4 + v8);
    }

    while (v4);
    if (v6 != v3)
    {
      return *(v6 + 48);
    }
  }

  return v2;
}

uint64_t sub_10053C73C(uint64_t **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *sub_10053B174(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_10053C7E0(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_10245CEB8;
  operator new();
}

void sub_10053C8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100539FC4(va);
  operator delete();
}

void sub_10053C958(uint64_t a1)
{
  sub_10053CF20(a1);

  operator delete();
}

uint64_t sub_10053C990(uint64_t a1)
{
  v2 = sub_10053B76C((a1 + 48));
  sub_10053BD58(v5, v2);
  sub_10053CF98(a1, v5);
  v3 = *(a1 + 24);
  sub_10053D250(v5[23]);
  sub_10053A2D8(v5);
  return v3;
}

void sub_10053CA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053CA50(uint64_t a1)
{
  v1 = sub_10053A148((a1 + 48));

  return sub_10053BDA8(v1);
}

uint64_t sub_10053CA7C(uint64_t a1)
{
  v1 = sub_10053A148((a1 + 48));

  return sub_10053D250(v1);
}

atomic_uint **sub_10053CAA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10053A3DC(v7);
}

uint64_t *sub_10053CB00(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10053CB88(result, a4);
  }

  return result;
}

void sub_10053CB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100539FC4(&a9);
  _Unwind_Resume(a1);
}

void sub_10053CB88(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10053CBD4(a1, a2);
  }

  sub_10028C64C();
}

void sub_10053CBD4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10053CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10053CCB4(a4, v6);
      v6 += 24;
      a4 += 24;
      v7 -= 24;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_10053CC8C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 24;
    do
    {
      sub_10053A048(v4);
      v4 -= 24;
      v2 += 24;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053CCB4(uint64_t a1, uint64_t a2)
{
  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
    case 1:
      v4 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 12), 1u, memory_order_relaxed);
      }

      break;
    case 2:
      v5 = sub_10053C624((a2 + 8));
      *(a1 + 8) = (*(*v5 + 32))(v5);
      break;
    default:
      sub_10053508C();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_10053CD68(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053CDD4(&v2, a2);
}

void sub_10053CE44(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053CE6C(v1);
  __cxa_rethrow();
}

uint64_t sub_10053CE6C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100539F74((result + 24));
    v2 = v1;
    sub_100539FC4(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10053CEC8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100539F74((v1 + 24));
    v2 = v1;
    sub_100539FC4(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10053CF20(uint64_t a1)
{
  *a1 = off_10245CEB8;
  v2 = (a1 + 40);
  sub_10053A3DC((a1 + 56));
  sub_10053A3DC(v2);
  *a1 = off_10245CF20;
  sub_10053A0E0((a1 + 16));
  return a1;
}

atomic_uint **sub_10053CF98(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_10053B76C(result + 4); ; i += 6)
    {
      result = sub_10053B76C(v2);
      if (i == result[1])
      {
        break;
      }

      sub_10053D098(i, v6);
      if (sub_10053C57C(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_10053A4C4(v4, a2);
        }

        return sub_10053D1C0(v6);
      }

      sub_10053D1C0(v6);
    }
  }

  return result;
}

void sub_10053D078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10053D1C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053D098@<X0>(int *a1@<X0>, uint64_t a3@<X8>)
{
  v3 = (a1 + 2);
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v5 = 0;
      *a3 = 0;
      result = sub_10053A3DC(&v5);
      break;
    case 1:

      result = sub_10053D14C(v3, a3);
      break;
    case 2:

      result = sub_10015AB7C(v3, a3);
      break;
    default:
      sub_10053508C();
  }

  return result;
}

atomic_uint **sub_10053D14C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v8 = v2;
  if (v2)
  {
    v3 = v2[2];
    while (v3)
    {
      v4 = v3;
      atomic_compare_exchange_strong_explicit(v2 + 2, &v4, v3 + 1, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
      if (v5)
      {
        v6 = *a1;
        goto LABEL_9;
      }
    }

    v2 = 0;
  }

  v6 = 0;
LABEL_9:
  *(a2 + 8) = v6;
  *(a2 + 16) = v2;
  v8 = 0;
  *a2 = 0;
  return sub_10053A3DC(&v8);
}

atomic_uint **sub_10053D1C0(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 1)
  {
    result = *(a1 + 8);
    if (result)
    {
      v4 = *(*result + 1);

      return v4();
    }
  }

  else
  {
    if (v1)
    {
      sub_10053508C();
    }

    v2 = (a1 + 16);

    return sub_10053A3DC(v2);
  }

  return result;
}

uint64_t sub_10053D250(pthread_mutex_t *a1)
{
  result = pthread_mutex_unlock(a1);
  if (result)
  {
    sub_1018B73C8();
  }

  return result;
}

void sub_10053D270(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053D2DC(&v2, a2);
}

void sub_10053D34C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1018B73F4(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10053D378(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10053D3A8(uint64_t *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  if (*a2 == a1 + 4)
  {
    v4 = a1;
  }

  else
  {
    v4 = (*a2)[6];
  }

  sub_10053D4C8(a1, v4, a4);
}

uint64_t sub_10053D548(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *sub_10053B174(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_10053D5E4(uint64_t a1)
{
  sub_10053D250(*(a1 + 184));
  sub_10053A2D8(a1);
  return a1;
}

void sub_10053D620(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_10053D678(a1, a2);
}

void sub_10053D658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100539F74((v10 + 24));
  a10 = v10;
  sub_100539FC4(&a10);
  _Unwind_Resume(a1);
}

void sub_10053D6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

void sub_10053D790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void (**)(void, void, uint64_t));
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_100539F74(va);
  sub_10053DE8C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10053D7BC(uint64_t a1, uint64_t a2)
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

void (***sub_10053D854(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    v4[0] = 0;
    sub_10053DDD4(v4, result);
    sub_10053DDD4(v3, a2);
    sub_10053DDD4(a2, v4);
    return sub_100539F74(v4);
  }

  return result;
}

void sub_10053D944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

void sub_10053D960(uint64_t (***a1)(), uint64_t a2)
{
  *a1 = 0;
  sub_10053D7BC(v3, a2);
  sub_10053D9F4(a1, v3);
}

void sub_10053D9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

void sub_10053DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DAA4(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10053DBAC(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_10053DAC4(uint64_t a1)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_10053DB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DBAC(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_10053DE8C(result);
      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == (0x8000000101C7E074 & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x8000000101C7E074 & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10053DD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DDD4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_10053DE68(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

uint64_t sub_10053DE8C(uint64_t a1)
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

atomic_uint **sub_10053DF0C(void *a1)
{
  sub_10053DF94(a1, &v6);
  v1 = sub_10053A148(&v6);
  v2 = sub_10053B76C(v1);
  while (1)
  {
    v2 = *(v2 + 8);
    v3 = sub_10053A148(&v6);
    if (v2 == sub_10053B76C(v3))
    {
      break;
    }

    v4 = sub_10053A148((v2 + 16));
    sub_10053A18C(v4);
  }

  return sub_10053A3DC(&v7);
}

void sub_10053DF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053A3DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DF94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10053B76C(a1 + 3);
  sub_10053BDA8(v4);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  return sub_10053D250(v4);
}

atomic_uint **sub_10053DFF4(uint64_t *a1, pthread_mutex_t *a2)
{
  v24 = 0uLL;
  v4 = sub_10053B76C(a1 + 3);
  sub_10053BD58(&v27, v4);
  v5 = a1[1];
  if (v5)
  {
    if (atomic_load_explicit((v5 + 8), memory_order_acquire) == 1)
    {
      sub_10053C230(a1, &v27, 0, 1);
    }

    v6 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v6 = *a1;
  }

  v8 = v24;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  v26[0] = v8;
  sub_10053A3DC(v26 + 1);
  sub_10053D250(v28[22]);
  sub_10053A2D8(&v27);
  LOBYTE(v27) = 0;
  v28[30] = 10;
  v28[31] = v28;
  v28[32] = 0;
  v28[33] = a2;
  v28[34] = 0;
  v28[35] = 0;
  v9 = sub_10053A148(&v24);
  v23[0] = &v27;
  v23[1] = a1;
  v23[2] = sub_10053B76C(v9);
  v10 = sub_10053A148(&v24);
  v11 = sub_10053B76C((v10 + 16));
  v12 = sub_10053A148(&v24);
  v13 = *(sub_10053B76C(v12) + 8);
  v14 = sub_10053A148(&v24);
  *&v21 = v13;
  *(&v21 + 1) = sub_10053B76C(v14);
  *&v22 = &v27;
  *(&v22 + 1) = *(&v21 + 1);
  sub_10053E908(&v21);
  v15 = sub_10053A148(&v24);
  v16 = sub_10053B76C(v15);
  v17 = sub_10053A148(&v24);
  *&v19 = v16;
  *(&v19 + 1) = sub_10053B76C(v17);
  *&v20 = &v27;
  *(&v20 + 1) = *(&v19 + 1);
  sub_10053E908(&v19);
  v26[0] = v21;
  v26[1] = v22;
  v25[0] = v19;
  v25[1] = v20;
  sub_10053E224(v11, v26, v25);
  sub_10053F230(v23);
  sub_10053F3F4(&v27);
  return sub_10053A3DC(&v24 + 1);
}

void sub_10053E1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_10053D5E4(va);
  sub_10053A3DC(&a22);
  _Unwind_Resume(a1);
}

void sub_10053E224(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10053E2AC(a2);
    *a2 = *(*a2 + 8);
    sub_10053E908(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10053E2AC(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10053E34C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_10186A8B0();
  }

  return v3 + 1;
}

uint64_t sub_10053E34C(uint64_t *a1, uint64_t *a2)
{
  v2 = sub_10053A148(a2);
  v3 = (sub_10053B76C((v2 + 32)) + 24);

  return sub_10053E394(v3);
}

uint64_t sub_10053E394(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_10245D1A8;
    sub_10053E42C(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_10053E42C(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10053E488(exception, a1);
}

uint64_t sub_10053E488(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_102446EA8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_10245D130;
  *(a1 + 8) = off_10245D160;
  *(a1 + 24) = off_10245D188;
  return a1;
}

void sub_10053E704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10038C21C(&a9);
  sub_10038C21C(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10053E770(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10053E7CC(exception, a1);
}

uint64_t sub_10053E7CC(uint64_t a1, uint64_t a2)
{
  *a1 = &off_102446EA8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_10245D1A8;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_102446ED8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10245D130;
  *(a1 + 8) = off_10245D160;
  *(a1 + 24) = off_10245D188;
  return a1;
}

void sub_10053E908(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10053ECAC((result[2] + 8), *(result[2] + 264));
      v3 = sub_10053B76C((*result + 16));
      sub_10053A268(v14, v3);
      v4 = sub_10053A148((*result + 16));
      sub_10053EB30(v4, v14, (result[2] + 8));
      v5 = sub_10053A148((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 280);
      }

      else
      {
        ++*(v6 + 284);
      }

      v7 = sub_10053A148((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10053EC4C(result, v14, *result);
        v9 = 0;
      }

      (*(*v15 + 32))(v15);
      sub_10053A2D8(v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
        v13 = sub_10053B76C((v12 + 16));
        sub_10053A268(v14, v13);
        sub_10053EC4C(result, v14, result[1]);
        (*(*v15 + 32))(v15);
        sub_10053A2D8(v14);
      }
    }
  }
}

void sub_10053EAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_10053EB30(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_10053B76C(result + 4); ; i += 6)
    {
      result = sub_10053B76C(v3);
      if (i == result[1])
      {
        break;
      }

      sub_10053D098(i, v8);
      if (sub_10053C57C(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10053A4C4(v6, a2);
        }

        return sub_10053D1C0(v8);
      }

      sub_10053ED58(a3, v8);
      sub_10053D1C0(v8);
    }
  }

  return result;
}

void sub_10053EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10053D1C0(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_10053EC4C(void *a1, void *a2, uint64_t a3)
{
  a1[3] = a3;
  v3 = a1[2];
  if (a1[1] == a3)
  {
    result = *(v3 + 288);
    if (result)
    {
      result = sub_10053A4C4(result, a2);
    }

    *(v3 + 288) = 0;
  }

  else
  {
    v4 = *(a3 + 16);
    v5 = a1[2];

    return sub_10053F1E4(v5, a2, v4);
  }

  return result;
}

atomic_uint **sub_10053ECAC(atomic_uint **result, unint64_t a2)
{
  if (result[32] < a2)
  {
    sub_1018B7418();
  }

  if (a2)
  {
    v3 = result;
    result = sub_10053ED04(result, a2);
    v3[32] = (v3[32] - a2);
  }

  return result;
}

atomic_uint **sub_10053ED04(atomic_uint **result, uint64_t a2)
{
  if (!a2)
  {
    sub_1018B7128();
  }

  if (-24 * a2 < 0)
  {
    v2 = &result[31][6 * result[32]];
    v3 = v2 - 24 * a2;
    do
    {
      v2 -= 24;
      result = sub_10053D1C0(v2);
    }

    while (v2 > v3);
  }

  return result;
}

uint64_t sub_10053ED58(void *a1, uint64_t a2)
{
  v4 = a1[32];
  if (v4 == a1[30])
  {
    sub_10053EE00(a1, (v4 + 1));
  }

  return sub_10053EDB0(a1, a2);
}

uint64_t sub_10053EDB0(void *a1, uint64_t a2)
{
  v2 = a1[32];
  if (v2 == a1[30])
  {
    sub_1018B7180();
  }

  result = sub_10053EE5C(a1[31] + 24 * v2, a2);
  ++a1[32];
  return result;
}

void sub_10053EE00(uint64_t result, atomic_uint *a2)
{
  v2 = *(result + 240);
  if (v2 <= 9)
  {
    sub_1018B71D8();
  }

  v3 = a2;
  if (v2 < a2)
  {
    v5 = (4 * v2);
    if (v5 > a2)
    {
      a2 = v5;
    }

    sub_10053EF0C(result, a2);
    if (*(result + 240) < v3)
    {
      sub_1018B71AC();
    }
  }
}

uint64_t sub_10053EE5C(uint64_t a1, uint64_t a2)
{
  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      v4 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
      }

      break;
    case 1:
      *(a1 + 8) = (*(**(a2 + 8) + 16))(*(a2 + 8));
      break;
    default:
      sub_10053508C();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_10053EF0C(atomic_uint **a1, atomic_uint *a2)
{
  v4 = sub_10053EF68(a1, a2);
  sub_10053F05C(a1);
  a1[30] = a2;
  a1[31] = v4;
  if (a1[32] > a2)
  {
    sub_1018B7204();
  }
}

uint64_t sub_10053EF68(uint64_t a1, unint64_t a2)
{
  sub_10053F0B0(a1, a2);
  v5 = v4;
  v12[0] = 0;
  v13 = a1;
  v14 = sub_10053F108;
  v15 = 0;
  v16 = v4;
  v17 = a2;
  v6 = *(a1 + 256);
  if (v6)
  {
    v7 = 0;
    v8 = *(a1 + 248);
    v9 = -24 * v6;
    do
    {
      v10 = sub_10053EE5C(v4, v8);
      v8 += 24;
      v4 = v10 + 24;
      v7 -= 24;
    }

    while (v9 != v7);
  }

  v12[0] = 1;
  sub_10053F11C(v12);
  return v5;
}

void sub_10053F014(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_10053D1C0(v1);
      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void sub_10053F03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  sub_10053F11C(&a9);
  _Unwind_Resume(a1);
}

void sub_10053F05C(atomic_uint **result)
{
  v1 = result[31];
  if (v1)
  {
    v2 = result[30];
    if (v2 < 0xA || (v1 == result ? (v3 = v2 == 10) : (v3 = 1), !v3 || result[32] > v2))
    {
      sub_1018B70FC();
    }

    sub_10053F184(result);
  }
}

void sub_10053F0B0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {

      operator new();
    }

    sub_1001D0818();
  }
}

void sub_10053F108(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t sub_10053F11C(uint64_t result)
{
  if ((*result & 1) == 0)
  {
    v1 = *(result + 16);
    v2 = *(result + 24);
    v3 = (*(result + 8) + (v2 >> 1));
    if (v2)
    {
      v1 = *(*v3 + v1);
    }

    return v1(v3, *(result + 32), *(result + 40));
  }

  return result;
}

void sub_10053F168(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10053F184(atomic_uint **a1)
{
  v2 = a1[32];
  if (v2)
  {
    sub_10053ED04(a1, v2);
  }

  if (a1[30] >= 0xB)
  {
    v3 = a1[31];

    operator delete(v3);
  }
}

atomic_uint **sub_10053F1E4(uint64_t a1, void *a2, uint64_t a3)
{
  result = *(a1 + 288);
  if (result)
  {
    result = sub_10053A4C4(result, a2);
  }

  *(a1 + 288) = a3;
  if (a3)
  {
    v6 = *(a3 + 28);
    if (!v6)
    {
      sub_1018B7444();
    }

    *(a3 + 28) = v6 + 1;
  }

  return result;
}

void *sub_10053F230(void *a1)
{
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    sub_10053F274(a1[1], a1[2]);
  }

  return a1;
}

void sub_10053F274(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10053B76C(a1 + 3);
  sub_10053BD58(v9, v4);
  v5 = sub_10053A148(a1);
  if (sub_10053B76C(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_10053A148(a1);
    v8 = *(sub_10053B76C(v7) + 8);
    sub_10053C118(a1, v9, 0, &v8, 0);
  }

  sub_10053D250(v9[23]);
  sub_10053A2D8(v9);
}

uint64_t sub_10053F3F4(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    sub_10053A268(v4, v2);
    sub_10053A4C4(*(a1 + 288), v4);
    (*(*v5 + 32))(v5);
    sub_10053A2D8(v4);
  }

  sub_10053F05C((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_10053F4B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10053F4D0()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10053F548()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_10053F5C0()
{
  v1 = 4;
  qword_102656D08 = 0;
  unk_102656D10 = 0;
  qword_102656D00 = 0;
  sub_1004579D4(&qword_102656D00, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656D00, dword_100000000);
}

uint64_t sub_10053F634(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

uint64_t sub_10053F664(uint64_t result, uint64_t a2)
{
  if ((*(result + 32) & 1) == 0)
  {
    v2 = *result;
    sub_10053F864(v3, a2);
    sub_100DB4B7C(v2, v3);
  }

  return result;
}

void sub_10053F6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10053A0E0((v7 + 8));
  sub_1003E7670(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053F728(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_10053F7F0(a1, a2);
  }

  else
  {
    *a1 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v4 = 0;
    sub_10053A0E0(&v4);
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t sub_10053F790(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    sub_100DB4FB4(*a1, (a1 + 16));
    if (*(a1 + 32))
    {
      sub_10053A0E0((a1 + 24));
    }
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

__int128 *sub_10053F7F0(__int128 *a1, __int128 *a2)
{
  if (a2 != a1)
  {
    v4 = *a2;
    *a2 = 0uLL;
    v5 = *a1;
    *a1 = v4;
    *(&v8 + 1) = *(&v5 + 1);
    sub_10053A0E0(&v8 + 1);
    v6 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    *(&v8 + 1) = *(&v6 + 1);
    sub_10053A0E0(&v8 + 1);
  }

  return a1;
}

uint64_t sub_10053F864(uint64_t a1, uint64_t a2)
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

void sub_10053F8FC()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

void sub_10053F974()
{
  if ((atomic_load_explicit(&qword_1025D6A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D6A20))
  {
    __cxa_atexit(sub_10053F634, &xmmword_1025D6A10, dword_100000000);

    __cxa_guard_release(&qword_1025D6A20);
  }
}

uint64_t sub_10053F9EC()
{
  v1 = 4;
  qword_102656D20 = 0;
  unk_102656D28 = 0;
  qword_102656D18 = 0;
  sub_1004579D4(&qword_102656D18, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656D18, dword_100000000);
}

double sub_10053FA60(uint64_t a1)
{
  sub_10053FAA8(a1);
  *a1 = 0;
  *(a1 + 6152) = 0;
  *(a1 + 12304) = 0;
  result = 0.0;
  *(a1 + 12336) = 0u;
  *(a1 + 12384) = 0u;
  *(a1 + 12408) = 1;
  return result;
}

double sub_10053FAA8(uint64_t a1)
{
  if (*(a1 + 12344) <= *(a1 + 12392))
  {
    v2 = *(a1 + 12392);
  }

  else
  {
    v2 = *(a1 + 12344);
  }

  if (*(a1 + 12408))
  {
    v3 = 0;
  }

  else
  {
    v3 = 5;
  }

  if (v2 > v3)
  {
    do
    {
      sub_10053FB28(a1, v3++);
    }

    while (v2 != v3);
  }

  result = 0.0;
  *(a1 + 12336) = 0u;
  *(a1 + 12384) = 0u;
  *(a1 + 12408) = 1;
  return result;
}

void sub_10053FB28(void *a1, int a2)
{
  v4 = 0;
  v21 = 0.0;
  v22 = 0.0;
  v5 = a1[1539] + 48 * ((a1[1542] + a2) % a1[1544]);
  v6.i32[0] = *(v5 + 12);
  v7.i32[0] = *(v5 + 8);
  v7.i32[1] = *(v5 + 32);
  LODWORD(v18) = *(v5 + 36);
  v7.i64[1] = *(v5 + 36);
  v6.i32[1] = 8.0;
  v6.i32[2] = 12.0;
  v6.i32[3] = 12.0;
  if (vminv_u16(vmovn_s32(vcgtq_f32(v7, v6))))
  {
    v4 = (*(v5 + 28) * 0.013486) < 0.001;
  }

  if (v4 && (v8 = *(v5 + 20), v9 = (sqrtf(*(v5 + 8) * 0.013486) * 980.0) / ((v8 * v8) * 3.14159265 * 3.14159265), v9 > 0.00800000038) && (v10 = sub_100540D50(a1, (a1 + 1539), a2), v10 >= 2))
  {
    v20 = 1;
    v19 = *v5;
    v11 = (a1[1545] + 48 * ((a1[1548] + a2) % a1[1550]));
    if (v11[2] > v11[3] && (v12 = v11[9], v12 > 4.0) && sub_100540D50(v10, (a1 + 1545), a2) >= 2 && (v13 = log10f(v18) + -0.565, v14 = log10f(v12) + -0.325, ((((v13 * -7.8237) * v14) + ((v13 * 9.8052) * v13)) + ((v14 * 4.529) * v14)) >= 3.36))
    {
      v17 = v9;
      v21 = v17;
      v22 = v8;
    }

    else
    {
      v20 = -2;
    }
  }

  else
  {
    if ((*(v5 + 16) * 0.013486) <= 0.0001)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    v20 = v15;
    v19 = *v5;
  }

  v16 = a1[1552];
  if (v16)
  {
    v16(&v19, a1[1553]);
  }
}

void sub_10053FD80(unsigned __int16 *result, uint64_t *a2, double a3)
{
  if (a3 > 0.0)
  {
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    sub_10053FDF0(result, a3);
    v10 = *a2;
    *&v11 = a3;
    *(&v11 + 1) = v10;
    v12 = *(a2 + 2);
    sub_1000CE644(result, &v11);
    sub_1005401EC(result, a3);
  }
}

void sub_10053FDF0(unsigned __int16 *a1, double a2)
{
  if (a1[1])
  {
    v4 = a1 + 4;
    v5 = a1[1] + *a1 - 1;
    v6 = *(a1 + 1);
    if (v5 < v6)
    {
      v6 = 0;
    }

    if (*&v4[12 * (v5 - v6)] + 1.0 < a2)
    {
      if (qword_1025D4590 != -1)
      {
        sub_1018B7470();
      }

      v7 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *a1 + a1[1] - 1;
        v9 = *(a1 + 1);
        if (v8 < v9)
        {
          v9 = 0;
        }

        v10 = a2 - *&v4[12 * (v8 - v9)];
        *buf = 134217984;
        v21 = v10;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Resetting detector, %.1f seconds without an accel sample", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4590 != -1)
      {
        sub_1018B7484();
      }

      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4598, 0, "Resetting detector, %.1f seconds without an accel sample");
LABEL_31:
      v19 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "void CMTremorDetection::checkForGap(CFAbsoluteTime)", "%s\n", v11);
      if (v19 != buf)
      {
        free(v19);
      }

LABEL_26:
      sub_10053FAA8(a1);
      *a1 = 0;
      *(a1 + 1538) = 0;
      *(a1 + 1538) = 0;
      *(a1 + 771) = 0u;
      *(a1 + 774) = 0u;
      *(a1 + 12408) = 1;
      return;
    }
  }

  if (a1[3077])
  {
    v12 = a1 + 3080;
    v13 = a1[3077] + a1[3076] - 1;
    v14 = *(a1 + 1539);
    if (v13 < v14)
    {
      v14 = 0;
    }

    if (*&v12[12 * (v13 - v14)] + 1.0 < a2)
    {
      if (qword_1025D4590 != -1)
      {
        sub_1018B7470();
      }

      v15 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a1[3076] + a1[3077] - 1;
        v17 = *(a1 + 1539);
        if (v16 < v17)
        {
          v17 = 0;
        }

        v18 = a2 - *&v12[12 * (v16 - v17)];
        *buf = 134217984;
        v21 = v18;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "Resetting detector, %.1f seconds without a gyro sample", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4590 != -1)
      {
        sub_1018B7484();
      }

      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4598, 0, "Resetting detector, %.1f seconds without a gyro sample");
      goto LABEL_31;
    }
  }
}

void sub_1005401EC(uint64_t result, double a2)
{
  if (!*(result + 12304))
  {
    *(result + 12304) = 1280 * (1000 * a2 / 1280) + 1280;
  }

  if (*(result + 4) == *(result + 2))
  {
    v3 = sub_100540904(result, 0x80uLL);
    v4 = *(result + 12304);
    if (v4 >= 1)
    {
      v5 = v4 / 1000.0;
      if (*v3 >= v5)
      {
        if (*v3 < (v4 + 640) / 1000.0)
        {
          sub_1005402F8(result, v5);
          v4 = *(result + 12304);
        }

        *(result + 12304) = v4 + 1280;
      }
    }
  }
}

unsigned __int16 *sub_1005402B0(unsigned __int16 *result, uint64_t *a2, double a3)
{
  if (a3 > 0.0)
  {
    v8 = v3;
    v9 = v4;
    v5 = *a2;
    *&v6 = a3;
    *(&v6 + 1) = v5;
    v7 = *(a2 + 2);
    return sub_1000CE644(result + 3076, &v6);
  }

  return result;
}

void sub_1005402F8(uint64_t a1, double a2)
{
  if (*(a1 + 6156) == *(a1 + 6154))
  {
    v11 = v5;
    v12 = v4;
    v13 = v2;
    v14 = v3;
    if (*(a1 + 4) == *(a1 + 2))
    {
      sub_10054046C(a1, a1, 273, v10, a2);
      sub_1005403FC((a1 + 12312), v10);
      sub_10054046C(a1, (a1 + 6152), 1, v10, a2);
      sub_1005403FC((a1 + 12360), v10);
      v8 = *(a1 + 12344);
      if (v8 <= *(a1 + 12392))
      {
        v8 = *(a1 + 12392);
      }

      if (v8 >= 9)
      {
        if (*(a1 + 12408) == 1)
        {
          for (i = 0; i != 4; ++i)
          {
            sub_10053FB28(a1, i);
          }

          *(a1 + 12408) = 0;
        }

        sub_10053FB28(a1, 4);
      }
    }
  }
}

unint64_t sub_1005403FC(void *a1, __int128 *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = (*a1 + 48 * ((a1[3] + a1[4]) % v2));
    v4 = *a2;
    v5 = a2[1];
    *(v3 + 28) = *(a2 + 28);
    *v3 = v4;
    v3[1] = v5;
    v6 = a1[4];
    if (v6 == a1[5])
    {
      v2 = 0;
      a1[3] = (a1[3] + 1) % v6;
    }

    else
    {
      a1[4] = v6 + 1;
      return 1;
    }
  }

  return v2;
}

void sub_10054046C(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  sub_100540BF8(a1, v52, a2, a3);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = a5;
  v7 = dword_102656D30;
  if (dword_102656D30 + 1 < dword_102656D34)
  {
    v8 = dword_102656D30 + 1;
    v9 = ~dword_102656D30 + dword_102656D34;
    do
    {
      if (*(v52 + v8) >= *(v52 + v7))
      {
        v7 = v8;
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  v10 = (v7 / 2);
  v11 = (v10 + -0.001);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = v10 + 0.001;
  do
  {
    if (v12 <= v13 + 1)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (!v14 || *(v52 + v15) >= *(v52 + v14))
        {
          v14 = v15;
        }

        v20 = v15++ <= v13;
      }

      while (v20);
    }

    else
    {
      v14 = 0;
    }
  }

  while (!v14);
  v16 = (2 * v7) | 1;
  v17 = *(v52 + v16);
  v18 = *(v52 + 2 * v7);
  v19 = 2 * v7 - 1;
  if (v17 <= v18 || v18 <= *(v52 + v19))
  {
    v20 = *(v52 + v19) <= v18 || v18 <= v17;
    if (v20)
    {
      LODWORD(v16) = 2 * v7;
    }

    else
    {
      LODWORD(v16) = 2 * v7 - 1;
    }
  }

  v21 = 3 * v7;
  v22 = 3 * v7 + 1;
  v23 = *(v52 + v22);
  v24 = *(v52 + 3 * v7);
  v25 = 3 * v7 - 1;
  if (v23 > v24 && v24 > *(v52 + v25))
  {
    v26 = 2;
    goto LABEL_34;
  }

  if (v24 > v23 && *(v52 + v25) > v24)
  {
    v26 = -2;
    v23 = *(v52 + v25);
    LODWORD(v22) = 3 * v7 - 1;
LABEL_34:
    if (*(v52 + v21 + v26) <= v23)
    {
      v21 = v22;
    }

    else
    {
      v21 += v26;
    }
  }

  v28 = dword_102656D38;
  v29 = *&dword_102656D40;
  if (dword_102656D38 >= dword_102656D3C)
  {
    v46 = NAN;
    v47 = NAN;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = -v21;
    v33 = -v16;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    do
    {
      v40 = v28 - v7;
      if (v28 - v7 < 0)
      {
        v40 = v7 - v28;
      }

      if (v40 >= 2)
      {
        v41 = v33 + v28;
        if (v33 + v28 < 0)
        {
          v41 = -v41;
        }

        if (v41 >= 2)
        {
          v42 = v32 + v28;
          if (v32 + v28 < 0)
          {
            v42 = -v42;
          }

          if (v42 >= 2)
          {
            v43 = *(v52 + v28);
            if (v43 >= v37)
            {
              v37 = *(v52 + v28);
            }

            v39 = v39 + v43;
            ++v31;
            if (v43 < v36)
            {
              v44 = v36;
            }

            else
            {
              v44 = *(v52 + v28);
            }

            v45 = v38 + v43;
            if (v28 < dword_102656D30)
            {
              v36 = v44;
              v38 = v45;
              ++v30;
            }
          }
        }
      }

      if (*(v52 + v28) > v35)
      {
        v34 = *&dword_102656D40 * v28;
        v35 = *(v52 + v28);
      }

      ++v28;
    }

    while (dword_102656D3C != v28);
    *(a4 + 12) = v37;
    *(a4 + 16) = v35;
    *(a4 + 24) = v34;
    *(a4 + 28) = v36;
    v46 = v39 / v31;
    v47 = v38 / v30;
  }

  v48 = *(v52 + v7);
  *(a4 + 8) = v48;
  *(a4 + 20) = v29 * v7;
  v49 = v48 / v46;
  v50 = v48 / v47;
  v51 = *(v52 + v14);
  *(a4 + 32) = v49;
  *(a4 + 36) = v50;
  *(a4 + 40) = v48 / v51;
}

void sub_10054079C(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, int a4)
{
  *v16 = 0x10000000000;
  sub_1012F7D70(v15);
  v7 = 0;
  v8 = 0;
  for (i = 0; i != 256; ++i)
  {
    if (a4 == 256)
    {
      v10 = *(sub_100540904(a3, i) + 4);
    }

    else if (a4 == 16)
    {
      v10 = *(sub_100540904(a3, i) + 3);
    }

    else
    {
      v10 = 0;
      if (a4 == 1)
      {
        v10 = *(sub_100540904(a3, i) + 2);
      }
    }

    v11 = v8 + v7;
    if (v11 >= 0x100)
    {
      v12 = 0x7FFFFFFFFFFFFE04;
    }

    else
    {
      v12 = 4;
    }

    *&v16[2 * v11 + v12] = v10;
    if (v8 > 0xFF)
    {
      if (v7 >= 0xFFu)
      {
        v13 = -256;
      }

      else
      {
        v13 = 0;
      }

      v14 = v7 + v13;
      v7 = v14 + 1;
      v16[0] = v14 + 1;
    }

    else
    {
      v16[1] = ++v8;
    }
  }

  sub_100540B04(v16);
  sub_1012F7D74(v15, a2, v16);
}

unsigned __int16 *sub_100540904(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245D220);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245D220);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMTremorDetection::SensorSample>::operator[](const size_t) const [T = CMTremorDetection::SensorSample]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

float *sub_100540B04(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 255;
  do
  {
    v4 = (cosf(v2 * 0.02464) * -0.46) + 0.54;
    v5 = v4 * *sub_100457AE8(a1, v2);
    *sub_100457AE8(a1, v2) = v5;
    v6 = v4 * *sub_100457AE8(a1, v3);
    *sub_100457AE8(a1, v3) = v6;
    ++v2;
    --v3;
  }

  while (v2 != 128);
  v7 = *sub_100457AE8(a1, 0x80uLL) * 0.99997;
  result = sub_100457AE8(a1, 0x80uLL);
  *result = v7;
  return result;
}

float32x4_t sub_100540BF8(uint64_t a1, _OWORD *a2, unsigned __int16 *a3, __int16 a4)
{
  result.i64[0] = 0;
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  if (a4)
  {
    sub_10054079C(a1, v11, a3, 1);
    for (i = 0; i != 512; i += 16)
    {
      result = vmlaq_f32(a2[i / 0x10], *&v11[i / 4], *&v11[i / 4]);
      a2[i / 0x10] = result;
    }
  }

  if ((a4 & 0x10) != 0)
  {
    sub_10054079C(a1, v11, a3, 16);
    for (j = 0; j != 512; j += 16)
    {
      result = vmlaq_f32(a2[j / 0x10], *&v11[j / 4], *&v11[j / 4]);
      a2[j / 0x10] = result;
    }
  }

  if ((a4 & 0x100) != 0)
  {
    sub_10054079C(a1, v11, a3, 256);
    for (k = 0; k != 512; k += 16)
    {
      result = vmlaq_f32(a2[k / 0x10], *&v11[k / 4], *&v11[k / 4]);
      a2[k / 0x10] = result;
    }
  }

  return result;
}

uint64_t sub_100540D50(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3 - 4;
  v4 = *(a2 + 32);
  if (v4 - 9 < a3 - 4)
  {
    v3 = v4 - 9;
  }

  v5 = v3 & ~(v3 >> 31);
  if (v5 >= v4)
  {
    return 1;
  }

  LODWORD(v6) = v4 - 1;
  if (v6 >= v5 + 8)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = v6;
  }

  result = 1;
  do
  {
    if (a3 != v5 && vabds_f32(*(*a2 + 48 * ((*(a2 + 24) + v5) % *(a2 + 40)) + 24), *(*a2 + 48 * ((*(a2 + 24) + a3) % *(a2 + 40)) + 24)) < 0.5)
    {
      result = (result + 1);
    }
  }

  while (v5++ < v6);
  return result;
}

void sub_100540E2C()
{
  v0 = sub_100C71D50(0x64u, 0x80uLL, 3.0);
  dword_102656D30 = sub_100C71D00(v0);
  v1 = sub_100C71D50(0x64u, 0x80uLL, 7.25);
  dword_102656D34 = sub_100C71D00(v1);
  v2 = sub_100C71D50(0x64u, 0x80uLL, 0.75);
  dword_102656D38 = sub_100C71D00(v2);
  v3 = sub_100C71D50(0x64u, 0x80uLL, 10.0);
  dword_102656D3C = sub_100C71D00(v3);
  dword_102656D40 = sub_100C71D78(0x64u, 0x80uLL);
}

uint64_t sub_100540EC4(uint64_t a1, uint64_t a2)
{
  if (qword_102656D48 != -1)
  {
    sub_1018B74AC();
  }

  return qword_102636F08;
}

uint64_t sub_100540F64(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x300000000;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 79) = 0u;
  *(a1 + 95) = 0u;
  *(a1 + 111) = 0;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  sub_10054103C(a1);
  return a1;
}

void sub_100541000(_Unwind_Exception *a1)
{
  sub_1004906DC(v3);
  sub_1004906DC(v4);
  sub_1004906DC(v2);
  sub_1004906DC(v1 + 80);
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(a1);
}

void sub_10054103C(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a1 + 8))
  {
    BTAccessoryManagerDeregisterCustomMessageClient();
    BTAccessoryManagerRemoveCallbacks();
    *(a1 + 8) = 0;
  }

  if (*(a1 + 16))
  {
    BTLocalDeviceRemoveCallbacks();
    *(a1 + 16) = 0;
  }

  *a1 = 0;
  v2 = BTSessionAttachWithQueue();
  if (v2)
  {
    v3 = v2;
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67240192;
      v5[1] = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register BT session callback. Error: %{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B74D4(v3);
    }
  }
}

void sub_100541190(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v4);
  v5 = sub_10018D3EC();
  if (Current != v5)
  {
    v7 = sub_100011660(v5, v6);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100541EF8;
    v40[3] = &unk_102449A78;
    v40[4] = v2;
    sub_10017A794(v7, v40);
    return;
  }

  if (*v2)
  {
    if (*(v2 + 8))
    {
      if (*(v2 + 16))
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v68 = 0u;
        v69 = 0u;
        BTLocalDeviceGetConnectedDevices();
        v66 = 0;
        *__s = 0;
        v67 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          if (!BTDeviceGetAddressString() && !BTDeviceGetName() && !BTAccessoryManagerGetInEarStatus())
          {
            if (qword_1025D4320 != -1)
            {
              sub_1018B75C4();
            }

            v10 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
            {
              *buf = 136381443;
              v50 = &v57;
              v51 = 2081;
              v52 = __s;
              v53 = 1026;
              v54 = 0;
              v55 = 1026;
              v56 = 0;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[CLAudioAccessoryInterface] refreshBTDevice. Name,%{private}s, Address,%{private}s, inear,%{public}d,%{public}d", buf, 0x22u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v41 = 136381443;
              v42 = &v57;
              v43 = 2081;
              v44 = __s;
              v45 = 1026;
              v46 = 0;
              v47 = 1026;
              v48 = 0;
              LODWORD(v39) = 34;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4328, 1, "[CLAudioAccessoryInterface] refreshBTDevice. Name,%{private}s, Address,%{private}s, inear,%{public}d,%{public}d", &v41, v39);
              v14 = v13;
              sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "%s\n", v13);
              if (v14 != buf)
              {
                free(v14);
              }
            }

            if (v68[v9] == *(v2 + 24))
            {
              v8 = 1;
            }

            else
            {
              v11 = *(v2 + 79);
              v12 = v11;
              if (*(v2 + 79) < 0)
              {
                v12 = *(v2 + 64);
              }

              if (v12 >= 0x11)
              {
                if (!std::string::compare((v2 + 56), __s))
                {
                  if (qword_1025D4320 != -1)
                  {
                    sub_1018B75C4();
                  }

                  v33 = qword_1025D4328;
                  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Matched device found", buf, 2u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_1018B76D0();
                  }

LABEL_113:
                  v18 = v68[v9];
                  if (v8)
                  {
LABEL_63:
                    v21 = *(v2 + 24);
                    if (v21)
                    {
                      if (!v18 || v21 == v18)
                      {
LABEL_66:
                        v57 = 0;
                        BTAccessoryManagerGetPrimaryBudSide();
                        if (v57 == *(v2 + 36))
                        {
                          if (qword_1025D4320 != -1)
                          {
                            sub_1018B75C4();
                          }

                          v22 = qword_1025D4328;
                          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136380675;
                            v50 = __s;
                            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "[CLAudioAccessoryInterface] refreshBTDevice. Active device %{private}s unchanged.", buf, 0xCu);
                          }

                          if (sub_10000A100(121, 2))
                          {
                            sub_1018B79C0();
                          }

                          return;
                        }

                        if (qword_1025D4320 != -1)
                        {
                          sub_1018B75C4();
                        }

                        v23 = qword_1025D4328;
                        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136380931;
                          v50 = __s;
                          v51 = 1026;
                          LODWORD(v52) = v57;
                          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Active device %{private}s side changed, %{public}d", buf, 0x12u);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_1018B78B0();
                        }

                        *(v2 + 36) = v57;
LABEL_100:
                        sub_1005420E8(v2);
                        sub_100541F00(v2, 2);
                        return;
                      }

LABEL_88:
                      *(v2 + 24) = v18;
                      BTAccessoryManagerGetPrimaryBudSide();
                      v41 = 0;
                      DeviceId = BTDeviceGetDeviceId();
                      if (DeviceId)
                      {
                        v26 = DeviceId;
                        *(v2 + 32) = 0;
                        if (qword_1025D4320 != -1)
                        {
                          sub_1018B75C4();
                        }

                        v27 = qword_1025D4328;
                        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67240192;
                          LODWORD(v50) = v26;
                          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice - Failed to get the product ID. Error: %{public}d", buf, 8u);
                        }

                        if (sub_10000A100(121, 0))
                        {
                          sub_1018B7B94(v26);
                        }
                      }

                      if (qword_1025D4320 != -1)
                      {
                        sub_1018B75C4();
                      }

                      v28 = qword_1025D4328;
                      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                      {
                        v29 = *(v2 + 24);
                        v30 = *(v2 + 32);
                        v31 = *(v2 + 36);
                        *buf = 134349827;
                        v50 = v29;
                        v51 = 2081;
                        v52 = __s;
                        v53 = 1026;
                        v54 = v30;
                        v55 = 1026;
                        v56 = v31;
                        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Current active device changed to %{public}p,addr,%{private}s,PID,0x%{public}x,side,%{public}d", buf, 0x22u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1025D4320 != -1)
                        {
                          sub_1018B75C4();
                        }

                        v34 = *(v2 + 24);
                        v35 = *(v2 + 32);
                        v36 = *(v2 + 36);
                        v57 = 134349827;
                        v58 = v34;
                        v59 = 2081;
                        v60 = __s;
                        v61 = 1026;
                        v62 = v35;
                        v63 = 1026;
                        v64 = v36;
                        LODWORD(v39) = 34;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4328, 0, "[CLAudioAccessoryInterface] refreshBTDevice. Current active device changed to %{public}p,addr,%{private}s,PID,0x%{public}x,side,%{public}d", &v57, v39);
                        v38 = v37;
                        sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "%s\n", v37);
                        if (v38 != buf)
                        {
                          free(v38);
                        }
                      }

                      goto LABEL_100;
                    }

                    if (v18)
                    {
                      goto LABEL_88;
                    }

LABEL_81:
                    if (qword_1025D4320 != -1)
                    {
                      sub_1018B75C4();
                    }

                    v24 = qword_1025D4328;
                    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. No matched device. Use the first listed device.", buf, 2u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_1018B7AB0();
                    }

                    v18 = v68[0];
                    goto LABEL_88;
                  }

LABEL_55:
                  if (*(v2 + 24))
                  {
                    if (qword_1025D4320 != -1)
                    {
                      sub_1018B75C4();
                    }

                    v19 = qword_1025D4328;
                    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                    {
                      v20 = *(v2 + 24);
                      *buf = 134349056;
                      v50 = v20;
                      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Current active device %{public}p not available", buf, 0xCu);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_1018B77B4();
                    }

                    *(v2 + 48) = 0;
                    *(v2 + 24) = 0;
                    *(v2 + 32) = 0;
                  }

                  goto LABEL_63;
                }

                v11 = *(v2 + 79);
              }

              if ((v11 & 0x80) != 0)
              {
                v11 = *(v2 + 64);
              }

              if (v11 <= 0x10)
              {
                if (qword_1025D4320 != -1)
                {
                  sub_1018B75C4();
                }

                v32 = qword_1025D4328;
                if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. First InEar device selected", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1018B75EC();
                }

                goto LABEL_113;
              }
            }
          }

          if (++v9 >= 0x100)
          {
            if (v8)
            {
              if (*(v2 + 24))
              {
                goto LABEL_66;
              }

              goto LABEL_81;
            }

            v18 = 0;
            goto LABEL_55;
          }
        }
      }

      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v17 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v68[0]) = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice failed. Invalid BT Local Device", v68, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B7D68();
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v16 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v68[0]) = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice failed. Invalid BT AccessoryManager", v68, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B7E4C();
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v15 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v68[0]) = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice failed. Invalid BT Session", v68, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B7F30();
    }
  }
}

void *sub_100541CC0(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v2 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] getBTAddress failed. Invalid BT Device.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B8208();
    }

    return 0;
  }

  *v9 = 0;
  v10 = 0;
  v11 = 0;
  if (BTDeviceGetAddressString())
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v1 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] getBTAddress failed. Can't get BT address string from BT Device.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B8014();
    }

    return 0;
  }

  *buf = 0;
  if (sscanf(v9, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", buf, &buf[1], &buf[2], &buf[3], &buf[4], &buf[5]) == 6)
  {
    v3 = *buf;
  }

  else
  {
    v3 = 0;
  }

  if (qword_1025D4320 != -1)
  {
    sub_1018B75C4();
  }

  v4 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283779;
    *&buf[4] = v3;
    v7 = 2081;
    v8 = v9;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] getBTAddress returned %{private}llu from address %{private}s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B80F8(v9, v3);
  }

  return v3;
}

uint64_t sub_100541F00(uint64_t result, uint64_t a2)
{
  for (i = *(result + 176); i; i = *i)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
    {
      v5 = i[2];
      *buf = 134218240;
      v14 = v5;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Notify client %p with event %u", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4320 != -1)
      {
        sub_1018B75C4();
      }

      v6 = i[2];
      v9 = 134218240;
      v10 = v6;
      v11 = 1024;
      v12 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4328, 0, "[CLAudioAccessoryInterface] Notify client %p with event %u", &v9, 18);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::notifyClients(Event)", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    result = (i[3])(a2, i[2]);
  }

  return result;
}

void sub_1005420E8(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v3);
  v4 = sub_10018D3EC();
  if (Current != v4)
  {
    v6 = sub_100011660(v4, v5);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100542708;
    v19[3] = &unk_102449A78;
    v19[4] = a1;
    sub_10017A794(v6, v19);
    return;
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 24))
    {
      v7 = *(a1 + 104);
      v8 = *(a1 + 144);
      v9 = BTAccessoryManagerRemoteTimeSyncEnable();
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v10 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "disable";
        if (v7)
        {
          v11 = "enable";
        }

        *buf = 136446722;
        v21 = v11;
        if (v9)
        {
          v12 = "failed";
        }

        else
        {
          v12 = "succeeded";
        }

        v22 = 2082;
        v23 = v12;
        v24 = 1026;
        v25 = v9;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] %{public}s high precision TimeSync %{public}s. Status: %{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B82EC((v7 != 0), v9);
        if (v7)
        {
          return;
        }
      }

      else if (v7)
      {
        return;
      }

      v13 = BTAccessoryManagerSensorStreamTimeSyncEnable();
      if (qword_1025D4320 != -1)
      {
        sub_1018B75C4();
      }

      v14 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "disable";
        if (v8)
        {
          v15 = "enable";
        }

        *buf = 136446722;
        v21 = v15;
        if (v13)
        {
          v16 = "failed";
        }

        else
        {
          v16 = "succeeded";
        }

        v22 = 2082;
        v23 = v16;
        v24 = 1026;
        v25 = v13;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] %{public}s low precision TimeSync %{public}s. Status: %{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B840C((v8 != 0), v13);
        if (!v8)
        {
          goto LABEL_28;
        }
      }

      else if (!v8)
      {
LABEL_28:

        *(a1 + 48) = 0;
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v18 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] update TimeSync failed due to invalid BT device", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B852C();
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v17 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] update TimeSync failed due to invalid BT AccessoryManager", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B8610();
    }
  }
}

uint64_t sub_100542498(uint64_t a1)
{
  if (*(a1 + 24))
  {
    BTAccessoryManagerGetSpatialAudioPlatformSupport();
  }

  return 0;
}

void sub_1005424EC(uint64_t a1, uint64_t a2, int a3)
{
  v15 = a2;
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v7);
  v8 = sub_10018D3EC();
  if (Current == v8)
  {
    if (a3)
    {
      v11 = 120;
    }

    else
    {
      v11 = 80;
    }

    if (a3)
    {
      v12 = 80;
    }

    else
    {
      v12 = 120;
    }

    sub_100114860((a1 + v11), &v15);
    sub_100546764((a1 + v12), &v15, &v15);
    sub_1005420E8(a1);
  }

  else
  {
    v10 = sub_100011660(v8, v9);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1005425D4;
    v13[3] = &unk_10245D288;
    v13[4] = a1;
    v13[5] = a2;
    v14 = a3;
    sub_10017A794(v10, v13);
  }
}

void sub_1005425E4(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v5);
  v6 = sub_10018D3EC();
  if (Current == v6)
  {
    sub_100114860((a1 + 80), &v10);
    sub_100114860((a1 + 120), &v10);
    sub_1005420E8(a1);
  }

  else
  {
    v8 = sub_100011660(v6, v7);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005426AC;
    v9[3] = &unk_10245D2A8;
    v9[4] = a1;
    v9[5] = a2;
    sub_10017A794(v8, v9);
  }
}

void sub_1005426CC(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, unint64_t a5, uint64_t a6)
{
  if (a3 == 1024)
  {
    sub_100543E68(a6, a2, a4, a5);
  }
}

id sub_100542710(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3 && [v3 lockState] == 2)
  {
    v11 = 0;
    return [*(a1 + 48) convertFromDomainToMachAbsoluteTime:a2 withFlags:&v11];
  }

  else
  {
    v6 = sub_1000081AC();
    if (v6 - *&qword_102656D50 <= 1.0)
    {
      return 0;
    }

    else
    {
      if (*(a1 + 48))
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v7 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] TimeSync error! Clock not locked", v9, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B86F4();
        }
      }

      else
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v8 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] TimeSync error! No TimeSync clock", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B87D8();
        }
      }

      result = 0;
      qword_102656D50 = *&v6;
    }
  }

  return result;
}

void sub_10054287C(uint64_t a1, _DWORD *a2, _DWORD *a3, _BYTE *a4)
{
  *a3 = 3;
  *a2 = 3;
  *a4 = 1;
  if (*(a1 + 8))
  {
    if (*(a1 + 24))
    {
      v7 = BTAccessoryManagerGetInEarDetectionEnable();
      if (v7)
      {
        v8 = v7;
        if (qword_1025D4320 != -1)
        {
          sub_1018B75C4();
        }

        v9 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v22) = v8;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - failed to get IED setting. Error: %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B88BC(v8);
        }
      }

      else
      {
        v12 = BTAccessoryManagerGetInEarStatus();
        if (v12)
        {
          v13 = v12;
          if (qword_1025D4320 != -1)
          {
            sub_1018B75C4();
          }

          v14 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240192;
            LODWORD(v22) = v13;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - failed to get inear status. Error: %{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018B89AC(v13);
          }

          *a3 = 3;
          *a2 = 3;
        }

        else
        {
          if (qword_1025D4320 != -1)
          {
            sub_1018B75C4();
          }

          v15 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *a2;
            if (v16 > 3)
            {
              v17 = @"?";
            }

            else
            {
              v17 = *(&off_10245D330 + v16);
            }

            v18 = *a3;
            if (v18 > 3)
            {
              v19 = @"?";
            }

            else
            {
              v19 = *(&off_10245D330 + v18);
            }

            *buf = 138543618;
            v22 = v17;
            v23 = 2114;
            v24 = v19;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] in ear status - Primary:%{public}@, Secondary:%{public}@", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018B8A9C();
          }

          if (!*a2)
          {
            v20 = *(a1 + 32) - 8202;
            if (v20 <= 0x15 && ((1 << v20) & 0x202001) != 0)
            {
              *a3 = 0;
            }
          }
        }
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v11 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - invalid BT device", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B8CCC();
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v10 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - invalid BT AccessoryManager", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B8DB0();
    }
  }
}

BOOL sub_100542CC0(uint64_t a1, uint64_t a2)
{
  if (qword_102656D48 != -1)
  {
    sub_1018B74AC();
  }

  v5 = 0;
  v4 = 0;
  sub_10054287C(qword_102636F08, &v5, &v4, &v3);
  return v5 == 0;
}

void sub_100542D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a3;
  if (qword_1025D4320 != -1)
  {
    sub_1018B74C0();
  }

  v6 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Client %p subscribes", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B8E94();
  }

  *buf = &v11;
  v7 = sub_1005469C8((a1 + 160), &v11, &unk_101C66300, buf);
  v7[3] = a2;
  if (*(a1 + 24))
  {
    v9 = sub_100011660(v7, v8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100542E90;
    v10[3] = &unk_10245D2A8;
    v10[4] = v11;
    v10[5] = a2;
    sub_10017A794(v9, v10);
  }
}

uint64_t sub_100542E90(uint64_t a1)
{
  if (qword_1025D4320 != -1)
  {
    sub_1018B74C0();
  }

  v2 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Sending kActivitDeviceUpdated to client %p", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B8F84();
  }

  return (*(a1 + 40))(2, *(a1 + 32));
}

void *sub_100542F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = &v5;
  result = sub_1005469C8((a1 + 200), &v5, &unk_101C66300, &v6);
  result[3] = a2;
  return result;
}

uint64_t sub_100542FC8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  sub_100114860((a1 + 200), &v4);
  return sub_100114860((a1 + 160), &v4);
}

uint64_t sub_10054300C(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = *(result + 216); i; i = *i)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v6 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
    {
      v7 = i[2];
      *buf = 67109378;
      v16 = a2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] notifyClientsWithData,event %d,client %@", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4320 != -1)
      {
        sub_1018B75C4();
      }

      v8 = i[2];
      v12[0] = 67109378;
      v12[1] = a2;
      v13 = 2112;
      v14 = v8;
      LODWORD(v11) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4328, 2, "[HeadphoneUsage] notifyClientsWithData,event %d,client %@", v12, v11);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::notifyClientsWithData(Event, NSDictionary *)", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    result = (i[3])(a2, a3, i[2]);
  }

  return result;
}

void sub_1005431F8(void *a1, uint64_t a2, int a3, int *a4)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v9);
  v10 = sub_10018D3EC();
  if (Current == v10)
  {
    if ((a3 & 0xFFFFFFFD) == 0)
    {
      if (a3 == 2 || !a3 && a4)
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v13 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
        {
          v14 = "attaching BT session failed";
          if (a4 == 2)
          {
            v14 = "BT session terminated";
          }

          *buf = 136446210;
          v35 = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] %{public}s. Re-attaching......", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B9614(a4);
        }

        sub_10054103C(a1);
      }

      else
      {
        *a1 = a2;
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v15 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] BT session attached", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B9080();
        }

        Default = BTAccessoryManagerGetDefault();
        if (Default)
        {
          v17 = Default;
          a1[1] = 0;
          if (qword_1025D4320 != -1)
          {
            sub_1018B75C4();
          }

          v18 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240192;
            LODWORD(v35) = v17;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Accessory Mananger unavailable. Status %{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018B9164(v17);
          }
        }

        else
        {
          v19 = BTLocalDeviceGetDefault();
          if (v19)
          {
            v20 = v19;
            a1[2] = 0;
            if (qword_1025D4320 != -1)
            {
              sub_1018B75C4();
            }

            v21 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
            {
              *buf = 67240192;
              LODWORD(v35) = v20;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Local device unavailable. Status %{public}d", buf, 8u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018B9254(v20);
            }
          }

          else
          {
            sub_100541190(a1);
            v22 = BTAccessoryManagerAddCallbacks();
            if (v22)
            {
              v23 = v22;
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v24 = qword_1025D4328;
              if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
              {
                *buf = 67240192;
                LODWORD(v35) = v23;
                _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register BT accessory callback.  Status %{public}d", buf, 8u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_1018B9344(v23);
              }
            }

            v25 = BTAccessoryManagerRegisterCustomMessageClient();
            if (v25)
            {
              v26 = v25;
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v27 = qword_1025D4328;
              if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
              {
                *buf = 67240192;
                LODWORD(v35) = v26;
                _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register for custom callback. BTResult: %{public}d", buf, 8u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_1018B9434(v26);
              }
            }

            else
            {
              v28 = BTLocalDeviceAddCallbacks();
              if (v28)
              {
                v29 = v28;
                if (qword_1025D4320 != -1)
                {
                  sub_1018B75C4();
                }

                v30 = qword_1025D4328;
                if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67240192;
                  LODWORD(v35) = v29;
                  _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register BT local device event callback.  Status %{public}d", buf, 8u);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_1018B9524(v29);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v12 = sub_100011660(v10, v11);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1005436F0;
    v31[3] = &unk_10245D2F0;
    v31[4] = a1;
    v31[5] = a2;
    v32 = a3;
    v33 = a4;
    sub_10017A794(v12, v31);
  }
}

void sub_100543700(uint64_t a1, int a2)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v5);
  v6 = sub_10018D3EC();
  if (Current == v6)
  {
    if (a2 == 5)
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v9 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Received BT_LOCAL_DEVICE_CONNECTION_STATUS_CHANGED", v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B9728();
      }

      sub_100541190(a1);
    }
  }

  else
  {
    v8 = sub_100011660(v6, v7);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100543828;
    v11[3] = &unk_102455A60;
    v11[4] = a1;
    v12 = a2;
    sub_10017A794(v8, v11);
  }
}

void sub_100543838(uint64_t a1, uint64_t a2, int a3, int a4)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v9);
  v10 = sub_10018D3EC();
  if (Current != v10)
  {
    v12 = sub_100011660(v10, v11);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100543E58;
    v29[3] = &unk_10245D2F0;
    v29[4] = a1;
    v29[5] = a2;
    v30 = a3;
    v31 = a4;
    sub_10017A794(v12, v29);
    return;
  }

  if (*(a1 + 8))
  {
    if (a3 <= 7)
    {
      if ((a3 - 5) >= 2)
      {
        if (a3 == 7)
        {
          if (qword_1025D4320 != -1)
          {
            sub_1018B74C0();
          }

          v13 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134283521;
            v39 = a2;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] TIMESYNC_AVAILABLE device:%{private}p", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018B99EC();
          }

          if (+[TSClockManager sharedClockManager])
          {
            TimeSyncId = BTAccessoryManagerGetTimeSyncId();
            if (TimeSyncId)
            {
              v15 = TimeSyncId;
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v16 = qword_1025D4328;
              if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
              {
                *buf = 67240192;
                LODWORD(v39) = v15;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Get TimeSync ID failed result:%{public}d", buf, 8u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_1018B9ADC(v15);
              }
            }

            else
            {

              v22 = [+[TSClockManager sharedClockManager](TSClockManager "sharedClockManager")];
              *(a1 + 48) = v22;
              if (v22)
              {
                if (qword_1025D4320 != -1)
                {
                  sub_1018B75C4();
                }

                v23 = qword_1025D4328;
                if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = *(a1 + 48);
                  *buf = 134284033;
                  v39 = a2;
                  v40 = 2049;
                  v41 = 0;
                  v42 = 2049;
                  v43 = v24;
                  _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Got TimeSync ID device:%{private}p tsID:0x%{private}llx clock:%{private}p", buf, 0x20u);
                }

                if (sub_10000A100(121, 2))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1025D4320 != -1)
                  {
                    sub_1018B75C4();
                  }

                  v25 = *(a1 + 48);
                  v32 = 134284033;
                  v33 = a2;
                  v34 = 2049;
                  v35 = 0;
                  v36 = 2049;
                  v37 = v25;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4328, 0, "[CLAudioAccessoryInterface] Got TimeSync ID device:%{private}p tsID:0x%{private}llx clock:%{private}p", &v32, 32);
                  v27 = v26;
                  sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::accessoryEventHandler(BTDevice, BTAccessoryEvent, BTAccessoryState)", "%s\n", v26);
                  if (v27 != buf)
                  {
                    free(v27);
                  }
                }
              }

              else
              {
                if (qword_1025D4320 != -1)
                {
                  sub_1018B75C4();
                }

                v28 = qword_1025D4328;
                if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_ERROR, "[CLAuDioAccessoryInterface] Failed to get the TimeSync clock", buf, 2u);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_1018B9BCC();
                }
              }
            }
          }

          else
          {
            if (qword_1025D4320 != -1)
            {
              sub_1018B75C4();
            }

            v21 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to get the TimeSync clock manager", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018B9CB0();
            }
          }
        }

        return;
      }

      goto LABEL_30;
    }

    if (a3 != 8)
    {
      if (a3 != 12)
      {
        return;
      }

LABEL_30:
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v18 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134283521;
        v39 = a2;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] BT_ACCESSORY_IN_EAR_STATUS_CHANGED device:%{private}p", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B980C();
      }

      sub_100541190(a1);
      sub_100541F00(a1, 0);
      return;
    }

    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v19 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v39 = a2;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] TIMESYNC_NOT_AVAILABLE device:%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B98FC();
    }

    v20 = *(a1 + 48);
    if (v20)
    {

      *(a1 + 48) = 0;
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v17 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] accessoryEventHandler failed. Invalid BT AccessoryManager", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B9D94();
    }
  }
}

void sub_100543E68(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  if (*(a1 + 8))
  {
    v4 = a4;
    if (sub_10054415C(a3, a4))
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v8 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] Interface: Bluetooth daily usage event received. Parsing data.", &v15, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B9E78();
      }

      v9 = sub_1005445D4(a3, v4);
      if (v9)
      {
        v10 = v9;
        if ((sub_100545D80(*(a1 + 8), a2, v9) & 1) == 0)
        {
          if (qword_1025D4320 != -1)
          {
            sub_1018B75C4();
          }

          v11 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v15) = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error retrieving serial numbers, will omit from message.", &v15, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018B9F5C();
          }
        }

        if (qword_1025D4320 != -1)
        {
          sub_1018B75C4();
        }

        v12 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
        {
          v15 = 138477827;
          v16 = v10;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "[HeadphoneUsage] Interface: Parsed metrics: %{private}@", &v15, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018BA040();
        }

        sub_10054300C(a1, 1, v10);
      }

      else
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B75C4();
        }

        v14 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v15) = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error forming metric dictionary, aborting.", &v15, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018BA130();
        }
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v13 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Invalid BT AccessoryManager", &v15, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BA214();
    }
  }
}

uint64_t sub_10054415C(_BYTE *a1, unint64_t a2)
{
  if (a2 > 5)
  {
    if (*a1 == 4)
    {
      v4 = (a1[3] & 0x3F);
      if (v4 == 1)
      {
        v5 = a1[5];
        if ((v5 - 7) > 1)
        {
          if (qword_1025D4320 != -1)
          {
            sub_1018B74C0();
          }

          v11 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v19 = v5;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "[HeadphoneUsage] Unexpected AWD version %d", buf, 8u);
          }

          result = sub_10000A100(121, 2);
          if (result)
          {
            sub_1018BA4CC(v5);
            return 0;
          }
        }

        else
        {
          v6 = word_101C7E280[15 * a1[5] + 1];
          v7 = (a2 - 4);
          if (v7 == v6)
          {
            if (qword_1025D4320 != -1)
            {
              sub_1018B74C0();
            }

            v8 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] Bluetooth message passed sanity checks.", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018BA5BC();
            }

            return 1;
          }

          else
          {
            if (qword_1025D4320 != -1)
            {
              sub_1018B74C0();
            }

            v12 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109888;
              v19 = v5;
              v20 = 1024;
              v21 = 1;
              v22 = 1024;
              v23 = v6;
              v24 = 1024;
              v25 = v7;
              _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "[HeadphoneUsage] Unexpected AWD data length for AWDVersion %d: type %d expected len %d actual %d. Header mismatch with Bluetooth likely.", buf, 0x1Au);
            }

            result = sub_10000A100(121, 0);
            if (result)
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v15[4] = v6;
              v16 = 1024;
              v17 = v7;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4328, 17, "[HeadphoneUsage] Unexpected AWD data length for AWDVersion %d: type %d expected len %d actual %d. Header mismatch with Bluetooth likely.", v15, 26, 67109888, 66560);
              v14 = v13;
              sub_100152C7C("Generic", 1, 0, 0, "static BOOL BT::CLAudioAccessoryHelper::isValidDailyUsageMessage(BTData _Nonnull, size_t)", "%s\n", v13);
              if (v14 != buf)
              {
                free(v14);
              }

              return 0;
            }
          }
        }
      }

      else
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v10 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v19 = v4;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] isValidDailyUsageMessage: Ignoring message type (%d) that is not DailyUsage", buf, 8u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_1018BA3DC(v4);
          return 0;
        }
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v9 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] Ignoring, not an AACP Log Message ", buf, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1018BA2F8();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v2 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] isValidDailyUsageMessage: Invalid header size", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_1018BA6A0();
      return 0;
    }
  }

  return result;
}

NSMutableDictionary *sub_1005445D4(uint64_t a1, __int16 a2)
{
  v3 = a2 - 4;
  bzero(__dst, 0x2D5uLL);
  memcpy(__dst, (a1 + 4), v3);
  v181[0] = @"bud_type";
  v182[0] = [NSNumber numberWithUnsignedChar:__dst[0]];
  v181[1] = @"awd_length";
  v182[1] = [NSNumber numberWithUnsignedShort:v10];
  v181[2] = @"awd_version";
  v182[2] = [NSNumber numberWithUnsignedChar:__dst[1]];
  v181[3] = @"status";
  v182[3] = [NSNumber numberWithUnsignedChar:__dst[2]];
  v181[4] = @"signature";
  v182[4] = [NSNumber numberWithUnsignedShort:v11];
  v181[5] = @"product_id";
  v182[5] = [NSNumber numberWithUnsignedShort:v12];
  v181[6] = @"sw_version";
  v182[6] = [NSNumber numberWithUnsignedShort:v13];
  v181[7] = @"case_hw_version";
  v182[7] = [NSNumber numberWithUnsignedShort:v14];
  v181[8] = @"case_sw_version";
  v182[8] = [NSNumber numberWithUnsignedShort:v15];
  v181[9] = @"a2dp_time_mode_off_l";
  v182[9] = [NSNumber numberWithUnsignedShort:v16];
  v181[10] = @"a2dp_time_mode_anc_l";
  v182[10] = [NSNumber numberWithUnsignedShort:v17];
  v181[11] = @"a2dp_time_mode_trcy_l";
  v182[11] = [NSNumber numberWithUnsignedShort:v18];
  v181[12] = @"a2dp_time_mode_unused_l";
  v182[12] = [NSNumber numberWithUnsignedShort:v19];
  v181[13] = @"hfp_time_off_l";
  v182[13] = [NSNumber numberWithUnsignedShort:v20];
  v181[14] = @"hfp_time_anc_l";
  v182[14] = [NSNumber numberWithUnsignedShort:v21];
  v181[15] = @"hfp_time_trcy_l";
  v182[15] = [NSNumber numberWithUnsignedShort:v22];
  v181[16] = @"hfp_time_unused_l";
  v182[16] = [NSNumber numberWithUnsignedShort:v23];
  v181[17] = @"idle_time_off_l";
  v182[17] = [NSNumber numberWithUnsignedShort:v24];
  v181[18] = @"idle_time_anc_l";
  v182[18] = [NSNumber numberWithUnsignedShort:v25];
  v181[19] = @"idle_time_trcy_l";
  v182[19] = [NSNumber numberWithUnsignedShort:v26];
  v181[20] = @"idle_time_unused_l";
  v182[20] = [NSNumber numberWithUnsignedShort:v27];
  v181[21] = @"a2dp_battery_usage_l";
  v182[21] = [NSNumber numberWithUnsignedChar:v28];
  v181[22] = @"hfp_battery_usage_l";
  v182[22] = [NSNumber numberWithUnsignedChar:v29];
  v181[23] = @"idle_battery_usage_l";
  v182[23] = [NSNumber numberWithUnsignedChar:v30];
  v181[24] = @"a2dp_bud_temp_max_l";
  v182[24] = [NSNumber numberWithChar:v31];
  v181[25] = @"hfp_bud_temp_max_l";
  v182[25] = [NSNumber numberWithChar:v32];
  v181[26] = @"a2dp_bud_temp_avg_l";
  v182[26] = [NSNumber numberWithChar:v33];
  v181[27] = @"hfp_bud_temp_avg_l";
  v182[27] = [NSNumber numberWithChar:v34];
  v181[28] = @"time_out_of_ear_idle_l";
  v182[28] = [NSNumber numberWithUnsignedInt:v35];
  v181[29] = @"time_out_of_ear_incase_l";
  v182[29] = [NSNumber numberWithUnsignedInt:v36];
  v181[30] = @"ied_activated_count_l";
  v182[30] = [NSNumber numberWithUnsignedShort:v37];
  v181[31] = @"fw_update_retry_count_l";
  v182[31] = [NSNumber numberWithUnsignedChar:v38];
  v181[32] = @"bud_charging_cycle_l";
  v182[32] = [NSNumber numberWithUnsignedInt:v39];
  v181[33] = @"a2dp_time_mode_off_r";
  v182[33] = [NSNumber numberWithUnsignedShort:v40];
  v181[34] = @"a2dp_time_mode_anc_r";
  v182[34] = [NSNumber numberWithUnsignedShort:v41];
  v181[35] = @"a2dp_time_mode_trcy_r";
  v182[35] = [NSNumber numberWithUnsignedShort:v42];
  v181[36] = @"a2dp_time_mode_unused_r";
  v182[36] = [NSNumber numberWithUnsignedShort:v43];
  v181[37] = @"hfp_time_off_r";
  v182[37] = [NSNumber numberWithUnsignedShort:v44];
  v181[38] = @"hfp_time_anc_r";
  v182[38] = [NSNumber numberWithUnsignedShort:v45];
  v181[39] = @"hfp_time_trcy_r";
  v182[39] = [NSNumber numberWithUnsignedShort:v46];
  v181[40] = @"hfp_time_unused_r";
  v182[40] = [NSNumber numberWithUnsignedShort:v47];
  v181[41] = @"idle_time_off_r";
  v182[41] = [NSNumber numberWithUnsignedShort:v48];
  v181[42] = @"idle_time_anc_r";
  v182[42] = [NSNumber numberWithUnsignedShort:v49];
  v181[43] = @"idle_time_trcy_r";
  v182[43] = [NSNumber numberWithUnsignedShort:v50];
  v181[44] = @"idle_time_unused_r";
  v182[44] = [NSNumber numberWithUnsignedShort:v51];
  v181[45] = @"a2dp_battery_usage_r";
  v182[45] = [NSNumber numberWithUnsignedChar:v52];
  v181[46] = @"hfp_battery_usage_r";
  v182[46] = [NSNumber numberWithUnsignedChar:v53];
  v181[47] = @"idle_battery_usage_r";
  v182[47] = [NSNumber numberWithUnsignedChar:v54];
  v181[48] = @"a2dp_bud_temp_max_r";
  v182[48] = [NSNumber numberWithChar:v55];
  v181[49] = @"hfp_bud_temp_max_r";
  v182[49] = [NSNumber numberWithChar:v56];
  v181[50] = @"a2dp_bud_temp_avg_r";
  v182[50] = [NSNumber numberWithChar:v57];
  v181[51] = @"hfp_bud_temp_avg_r";
  v182[51] = [NSNumber numberWithChar:v58];
  v181[52] = @"time_out_of_ear_idle_r";
  v182[52] = [NSNumber numberWithUnsignedInt:v59];
  v181[53] = @"time_out_of_ear_incase_r";
  v182[53] = [NSNumber numberWithUnsignedInt:v60];
  v181[54] = @"ied_activated_count_r";
  v182[54] = [NSNumber numberWithUnsignedShort:v61];
  v181[55] = @"fw_update_retry_count_r";
  v182[55] = [NSNumber numberWithUnsignedChar:v62];
  v181[56] = @"bud_charging_cycle_r";
  v182[56] = [NSNumber numberWithUnsignedInt:v63];
  v181[57] = @"a2dp_time_both_in_ear_off";
  v182[57] = [NSNumber numberWithUnsignedShort:v64];
  v181[58] = @"a2dp_time_both_in_ear_anc";
  v182[58] = [NSNumber numberWithUnsignedShort:v65];
  v181[59] = @"a2dp_time_both_in_ear_trcy";
  v182[59] = [NSNumber numberWithUnsignedShort:v66];
  v181[60] = @"a2dp_time_both_in_ear_unused";
  v182[60] = [NSNumber numberWithUnsignedShort:v67];
  v181[61] = @"hfp_time_both_in_ear_off";
  v182[61] = [NSNumber numberWithUnsignedShort:v68];
  v181[62] = @"hfp_time_both_in_ear_anc";
  v182[62] = [NSNumber numberWithUnsignedShort:v69];
  v181[63] = @"hfp_time_both_in_ear_trcy";
  v182[63] = [NSNumber numberWithUnsignedShort:v70];
  v181[64] = @"hfp_time_both_in_ear_unused";
  v182[64] = [NSNumber numberWithUnsignedShort:v71];
  v181[65] = @"idle_time_both_in_ear_off";
  v182[65] = [NSNumber numberWithUnsignedShort:v72];
  v181[66] = @"idle_time_both_in_ear_anc";
  v182[66] = [NSNumber numberWithUnsignedShort:v73];
  v181[67] = @"idle_time_both_in_ear_trcy";
  v182[67] = [NSNumber numberWithUnsignedShort:v74];
  v181[68] = @"idle_time_both_in_ear_unused";
  v182[68] = [NSNumber numberWithUnsignedShort:v75];
  v181[69] = @"time_both_out_of_ear_idle";
  v182[69] = [NSNumber numberWithUnsignedShort:v76];
  v181[70] = @"time_out_of_ear_both_incase";
  v182[70] = [NSNumber numberWithUnsignedShort:v77];
  v181[71] = @"hs_on_acc_cnt";
  v182[71] = [NSNumber numberWithUnsignedShort:v78];
  v181[72] = @"siri_on_source_cnt";
  v182[72] = [NSNumber numberWithUnsignedShort:v79];
  v181[73] = @"siri_on_accessory_cnt";
  v182[73] = [NSNumber numberWithUnsignedShort:v80];
  v181[74] = @"total_time_in_connect_session";
  v182[74] = [NSNumber numberWithUnsignedInt:v81];
  v181[75] = @"bud_swap_count";
  v182[75] = [NSNumber numberWithUnsignedShort:v82];
  v181[76] = @"bud_daily_charging_soc_delta_l";
  v182[76] = [NSNumber numberWithUnsignedShort:v84];
  v181[77] = @"bud_daily_charging_soc_delta_r";
  v182[77] = [NSNumber numberWithUnsignedShort:v85];
  v181[78] = @"bud_max_daily_temp_during_chr_l";
  v182[78] = [NSNumber numberWithChar:v86];
  v181[79] = @"bud_max_daily_temp_during_chr_r";
  v182[79] = [NSNumber numberWithChar:v87];
  v181[80] = @"bud_avg_daily_temp_during_chr_l";
  v182[80] = [NSNumber numberWithChar:v88];
  v181[81] = @"bud_avg_daily_temp_during_chr_r";
  v182[81] = [NSNumber numberWithChar:v89];
  v181[82] = @"case_soc_delta_bud_chr";
  v182[82] = [NSNumber numberWithUnsignedShort:v90];
  v181[83] = @"case_temp_max_while_discharging";
  v182[83] = [NSNumber numberWithChar:v91];
  v181[84] = @"case_temp_avg_daily";
  v182[84] = [NSNumber numberWithChar:v92];
  v181[85] = @"case_at_maxchr_time_in_day";
  v182[85] = [NSNumber numberWithUnsignedInt:v93];
  v181[86] = @"case_charging_cycle";
  v182[86] = [NSNumber numberWithUnsignedShort:v94];
  v181[87] = @"source_conn_productid_1";
  v182[87] = [NSNumber numberWithUnsignedShort:v95];
  v181[88] = @"source_conn_productid_2";
  v182[88] = [NSNumber numberWithUnsignedShort:v96];
  v181[89] = @"source_conn_productid_3";
  v182[89] = [NSNumber numberWithUnsignedShort:v97];
  v181[90] = @"source_conn_productid_4";
  v182[90] = [NSNumber numberWithUnsignedShort:v98];
  v181[91] = @"source_conn_productid_5";
  v182[91] = [NSNumber numberWithUnsignedShort:v99];
  v181[92] = @"source_conn_time_1";
  v182[92] = [NSNumber numberWithUnsignedShort:v100];
  v181[93] = @"source_conn_time_2";
  v182[93] = [NSNumber numberWithUnsignedShort:v101];
  v181[94] = @"source_conn_time_3";
  v182[94] = [NSNumber numberWithUnsignedShort:v102];
  v181[95] = @"source_conn_time_4";
  v182[95] = [NSNumber numberWithUnsignedShort:v103];
  v181[96] = @"source_conn_time_5";
  v182[96] = [NSNumber numberWithUnsignedShort:v104];
  v181[97] = @"sw_version_ext";
  v182[97] = [NSNumber numberWithUnsignedInt:v105[5]];
  v181[98] = @"triangle_conn_time";
  v182[98] = [NSNumber numberWithUnsignedShort:v106];
  v181[99] = @"hw_version";
  v182[99] = [NSNumber numberWithUnsignedShort:v107];
  v181[100] = @"double_tap_cnt_l";
  v182[100] = [NSNumber numberWithUnsignedShort:v108];
  v181[101] = @"single_tap_cnt_l";
  v182[101] = [NSNumber numberWithUnsignedShort:v109];
  v181[102] = @"press_hold_l";
  v182[102] = [NSNumber numberWithUnsignedShort:v110];
  v181[103] = @"ied_detect_l";
  v182[103] = [NSNumber numberWithUnsignedShort:v111];
  v181[104] = @"crash_cnt_l";
  v182[104] = [NSNumber numberWithUnsignedShort:v112[2]];
  v181[105] = @"bud_mileage_l";
  v182[105] = [NSNumber numberWithUnsignedInt:*&v120[14]];
  v181[106] = @"first_time_use_l";
  v182[106] = [NSNumber numberWithUnsignedInt:v121];
  v181[107] = @"double_tap_cnt_r";
  v182[107] = [NSNumber numberWithUnsignedShort:v122];
  v181[108] = @"single_tap_cnt_r";
  v182[108] = [NSNumber numberWithUnsignedShort:v123];
  v181[109] = @"press_hold_r";
  v182[109] = [NSNumber numberWithUnsignedShort:v124];
  v181[110] = @"ied_detect_r";
  v182[110] = [NSNumber numberWithUnsignedShort:v125];
  v181[111] = @"crash_cnt_r";
  v182[111] = [NSNumber numberWithUnsignedShort:v126[2]];
  v181[112] = @"bud_mileage_r";
  v182[112] = [NSNumber numberWithUnsignedInt:*&v134[14]];
  v181[113] = @"first_time_use_r";
  v182[113] = [NSNumber numberWithUnsignedInt:v135];
  v181[114] = @"scp_active_time";
  v182[114] = [NSNumber numberWithUnsignedInt:v136];
  v181[115] = @"scp_ohd_time";
  v182[115] = [NSNumber numberWithUnsignedInt:v137];
  v181[116] = @"scp_fwup_time";
  v182[116] = [NSNumber numberWithUnsignedInt:v138];
  v181[117] = @"scp_idle_time";
  v182[117] = [NSNumber numberWithUnsignedInt:v139];
  v181[118] = @"scp_ttop_time";
  v182[118] = [NSNumber numberWithUnsignedInt:v140];
  v181[119] = @"scp_prioff_time";
  v182[119] = [NSNumber numberWithUnsignedInt:v141];
  v181[120] = @"scp_up_to_active";
  v182[120] = [NSNumber numberWithUnsignedShort:v142];
  v181[121] = @"scp_up_to_ohd";
  v182[121] = [NSNumber numberWithUnsignedShort:v143];
  v181[122] = @"scp_up_to_fwup";
  v182[122] = [NSNumber numberWithUnsignedShort:v144];
  v181[123] = @"scp_up_to_idle";
  v182[123] = [NSNumber numberWithUnsignedShort:v145];
  v181[124] = @"scp_up_to_ttop";
  v182[124] = [NSNumber numberWithUnsignedShort:v146];
  v181[125] = @"scp_down_to_ohd";
  v182[125] = [NSNumber numberWithUnsignedShort:v147];
  v181[126] = @"scp_down_to_fwup";
  v182[126] = [NSNumber numberWithUnsignedShort:v148];
  v181[127] = @"scp_down_to_idle";
  v182[127] = [NSNumber numberWithUnsignedShort:v149];
  v181[128] = @"scp_down_to_ttop";
  v182[128] = [NSNumber numberWithUnsignedShort:v150];
  v181[129] = @"scp_down_to_prioff";
  v182[129] = [NSNumber numberWithUnsignedShort:v151];
  v181[130] = @"scp_bt_disc";
  v182[130] = [NSNumber numberWithUnsignedShort:v152];
  v181[131] = @"scp_bt_conn";
  v182[131] = [NSNumber numberWithUnsignedShort:v153];
  v181[132] = @"scp_bt_a2dp";
  v182[132] = [NSNumber numberWithUnsignedShort:v154];
  v181[133] = @"scp_bt_call";
  v182[133] = [NSNumber numberWithUnsignedShort:v155];
  v181[134] = @"scp_scp_b2p_timeout";
  v182[134] = [NSNumber numberWithUnsignedInt:v156];
  v181[135] = @"scp_scp_b2p_tx_retry";
  v182[135] = [NSNumber numberWithUnsignedInt:v157];
  v181[136] = @"scp_scp_b2p_rx_error";
  v182[136] = [NSNumber numberWithUnsignedInt:v158];
  v181[137] = @"scp_scp_b2p_tx_raw";
  v182[137] = [NSNumber numberWithUnsignedInt:v159];
  v181[138] = @"scp_scp_b2p_rx_raw";
  v182[138] = [NSNumber numberWithUnsignedInt:v160];
  v181[139] = @"scp_pri_b2p_timeout";
  v182[139] = [NSNumber numberWithUnsignedInt:v161];
  v181[140] = @"scp_pri_b2p_tx_retry";
  v182[140] = [NSNumber numberWithUnsignedInt:v162];
  v181[141] = @"scp_pri_b2p_rx_error";
  v182[141] = [NSNumber numberWithUnsignedInt:v163];
  v181[142] = @"scp_pri_b2p_tx_raw";
  v182[142] = [NSNumber numberWithUnsignedInt:v164];
  v181[143] = @"scp_pri_b2p_rx_raw";
  v182[143] = [NSNumber numberWithUnsignedInt:v165];
  v181[144] = @"scp_chun_tx_error";
  v182[144] = [NSNumber numberWithUnsignedInt:v166];
  v181[145] = @"scp_chun_rx_error";
  v182[145] = [NSNumber numberWithUnsignedInt:v167];
  v181[146] = @"scp_chun_unlock";
  v182[146] = [NSNumber numberWithUnsignedInt:v168];
  v181[147] = @"scp_chun_missed_frame";
  v182[147] = [NSNumber numberWithUnsignedInt:v169];
  v181[148] = @"appleID_paired_count";
  v182[148] = [NSNumber numberWithUnsignedChar:v170];
  v181[149] = @"uvlo_count_l";
  v182[149] = [NSNumber numberWithUnsignedChar:v171];
  v181[150] = @"time_since_last_uvlo_l";
  v182[150] = [NSNumber numberWithUnsignedInt:v172];
  v181[151] = @"low_batt_signal_count_l";
  v182[151] = [NSNumber numberWithUnsignedChar:v173];
  v181[152] = @"num_sessions_l";
  v182[152] = [NSNumber numberWithUnsignedChar:v174];
  v181[153] = @"flash_pe_count_l";
  v182[153] = [NSNumber numberWithUnsignedChar:v175];
  v181[154] = @"bud_color_l";
  v182[154] = [NSNumber numberWithUnsignedChar:v176];
  v181[155] = @"uvlo_count_r";
  v182[155] = [NSNumber numberWithUnsignedChar:v177];
  v181[156] = @"time_since_last_uvlo_r";
  v182[156] = [NSNumber numberWithUnsignedInt:v178];
  v181[157] = @"low_batt_signal_count_r";
  v182[157] = [NSNumber numberWithUnsignedChar:v179];
  v181[158] = @"num_sessions_r";
  v182[158] = [NSNumber numberWithUnsignedChar:v180[58]];
  v181[159] = @"flash_pe_count_r";
  v182[159] = [NSNumber numberWithUnsignedChar:v180[59]];
  v181[160] = @"bud_color_r";
  v182[160] = [NSNumber numberWithUnsignedChar:v180[60]];
  v181[161] = @"case_charge_event_count";
  v182[161] = [NSNumber numberWithUnsignedChar:v83];
  v181[162] = @"system_color";
  v182[162] = [NSNumber numberWithUnsignedChar:v180[61]];
  v4 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v182 forKeys:v181 count:163]];
  sub_100546228(@"array_rfu", 5, 4, v105, v4, 0);
  sub_100546228(@"ied_histogram_l", 2, 2, v112, v4, 0);
  sub_100546228(@"a2dp_time_ext_l", 4, 2, &v113, v4, 0);
  sub_100546228(@"hfp_time_ext_l", 4, 2, &v114, v4, 0);
  sub_100546228(@"idle_time_ext_l", 4, 2, &v115, v4, 0);
  sub_100546228(@"a2dp_battery_usage_ext_l", 8, 2, &v116, v4, 0);
  sub_100546228(@"hfp_battery_usage_ext_l", 8, 2, &v117, v4, 0);
  sub_100546228(@"idle_battery_usage_ext_l", 8, 2, &v118, v4, 0);
  sub_100546228(@"array_rfu_l", 5, 4, &v119, v4, 0);
  sub_100546228(@"volume_his_l", 7, 2, v120, v4, 0);
  sub_100546228(@"ied_histogram_r", 2, 2, v126, v4, 0);
  sub_100546228(@"a2dp_time_ext_r", 4, 2, &v127, v4, 0);
  sub_100546228(@"hfp_time_ext_r", 4, 2, &v128, v4, 0);
  sub_100546228(@"idle_time_ext_r", 4, 2, &v129, v4, 0);
  sub_100546228(@"a2dp_battery_usage_ext_r", 8, 2, &v130, v4, 0);
  sub_100546228(@"hfp_battery_usage_ext_r", 8, 2, &v131, v4, 0);
  sub_100546228(@"idle_battery_usage_ext_r", 8, 2, &v132, v4, 0);
  sub_100546228(@"array_rfu_r", 5, 4, &v133, v4, 0);
  sub_100546228(@"volume_his_r", 7, 2, v134, v4, 0);
  v5 = 0;
  v6 = v180;
  do
  {
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], [NSString stringWithFormat:@"bud_start_soc_at_undock_l_%u", v5]];
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], [NSString stringWithFormat:@"bud_end_soc_at_dock_l_%u", v5]];
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedShort:" numberWithUnsignedShort:?], [NSString stringWithFormat:@"length_of_session_l_%u", v5]];
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], [NSString stringWithFormat:@"bud_start_soc_at_undock_r_%u", v5]];
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], [NSString stringWithFormat:@"bud_end_soc_at_dock_r_%u", v5]];
    v7 = *v6;
    v6 += 2;
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedShort:" numberWithUnsignedShort:v7], [NSString stringWithFormat:@"length_of_session_r_%u", v5++]];
  }

  while (v5 != 15);
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_hw_version_maj"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_hw_version_min"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_hw_version_rev"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_sw_version_maj"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_sw_version_min"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_sw_version_rev"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"appleID_hijack_cnt"];
  return v4;
}

uint64_t sub_100545D80(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v11 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23[0] = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] BT Accessory Manager no longer exists, cannot retrieve serial numbers,device:%@", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_1018BAB44();
    return 0;
  }

  v5 = [[NSMutableData alloc] initWithLength:1000];
  v21 = 0;
  [v5 mutableBytes];
  [v5 length];
  AccessoryInfo = BTAccessoryManagerGetAccessoryInfo();
  if (AccessoryInfo)
  {
    v7 = 1;
  }

  else
  {
    v7 = v21 == 0;
  }

  if (v7)
  {
    v8 = AccessoryInfo;

    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v9 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      LODWORD(v23[0]) = v8;
      WORD2(v23[0]) = 2048;
      *(v23 + 6) = v21;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: Unable to retrieve data,status:%d,infoLen:%zu", buf, 0x12u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018BA784(&v21, v8);
    return 0;
  }

  [v5 setLength:?];
  v12 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:0];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v18 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: Accessory info dictionary is of unexpected class.", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018BA898();
    return 0;
  }

  v14 = [v12 objectForKeyedSubscript:@"AACPVersionInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 count] < 0xA)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v19 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: AACPVersionInfo array of unexpected type or size.", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018BA97C();
    return 0;
  }

  v15 = [v14 objectAtIndex:3];
  v16 = [v14 objectAtIndex:8];
  v17 = [v14 objectAtIndex:9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 setObject:v15 forKeyedSubscript:@"serial_number_system"];
        [a3 setObject:v16 forKeyedSubscript:@"serial_number_left"];
        [a3 setObject:v17 forKeyedSubscript:@"serial_number_right"];
        return 1;
      }
    }
  }

  if (qword_1025D4320 != -1)
  {
    sub_1018B75C4();
  }

  v20 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: Expected serial number as NSString*, got different type.", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018BAA60();
    return 0;
  }

  return result;
}

void sub_100546228(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, int a6)
{
  if ((a3 - 9) > 0xFFFFFFF7)
  {
    if (a1 && a4 && a5)
    {
      v11 = a3 * a2;
      if (a3 * a2)
      {
        v13 = 0;
        do
        {
          v14 = 0;
          if (a3 > 4)
          {
            if (a3 > 6)
            {
              if (a3 == 7)
              {
                v14 = *(a4 + v13) | (*(a4 + v13 + 4) << 32) | (*(a4 + v13 + 5) << 40) | (*(a4 + v13 + 6) << 48);
              }

              else if (a3 == 8)
              {
                v14 = *(a4 + v13);
              }
            }

            else if (a3 == 5)
            {
              v14 = *(a4 + v13) | (*(a4 + v13 + 4) << 32);
            }

            else
            {
              v14 = *(a4 + v13) | (*(a4 + v13 + 4) << 32) | (*(a4 + v13 + 5) << 40);
            }
          }

          else if (a3 > 2)
          {
            if (a3 == 3)
            {
              v14 = *(a4 + v13) | (*(a4 + v13 + 2) << 16);
            }

            else
            {
              v14 = *(a4 + v13);
            }
          }

          else if (a3 == 1)
          {
            v14 = *(a4 + v13);
          }

          else if (a3 == 2)
          {
            v14 = *(a4 + v13);
          }

          if (a6)
          {
            v15 = [NSNumber numberWithLongLong:v14];
          }

          else
          {
            v15 = [NSNumber numberWithUnsignedLongLong:v14];
          }

          [a5 setObject:v15 forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%u", a1, v13 / a3)}];
          v13 += a3;
        }

        while (v13 < v11);
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v16 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v26 = a1;
        v27 = 2048;
        v28 = a4;
        v29 = 2112;
        v30 = a5;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] addExpandedArrayToDictionary: Invalid parameters. arrayName: %@, array: %p, dict: %@", buf, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4320 != -1)
        {
          sub_1018B75C4();
        }

        v19 = 138412802;
        v20 = a1;
        v21 = 2048;
        v22 = a4;
        v23 = 2112;
        v24 = a5;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4328, 16, "[HeadphoneUsage] addExpandedArrayToDictionary: Invalid parameters. arrayName: %@, array: %p, dict: %@", &v19, 32);
        v18 = v17;
        sub_100152C7C("Generic", 1, 0, 0, "static void BT::CLAudioAccessoryHelper::addExpandedArrayToDictionary(NSString * _Nonnull, uint32_t, uint8_t, uint8_t * _Nonnull, NSMutableDictionary * _Nonnull, BOOL)", "%s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v7 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v26) = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] addExpandedArrayToDictionary: Invalid value for bytesPerEntry: %u", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BAC34(a3);
    }
  }
}

uint64_t sub_1005465E4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_100546628@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *sub_100546764(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void *sub_1005469C8(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100546C30(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v6 - 80) = a2;
  *(v5 + 4) = a1;
  if (v4)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  *(v6 - 68) = 2082;
  *(v5 + 14) = v7;
  *(v6 - 58) = 1026;
  *(v6 - 56) = v4;
}

void sub_100546DB0(id a1)
{
  v1 = objc_opt_class();
  if (v1)
  {
    v3 = sub_10001A3E8(v1, v2);
    v4 = (**v3)(v3);
    if ((v4 & 1) != 0 || (sub_10001A3E8(v4, v5), sub_10001CF3C()))
    {
      byte_102656D68 = 1;
    }
  }
}

void sub_1005473F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 68289282;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2114;
      v8 = a2;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:failed to activate #Rapport link, Error:%{public, location:escape_only}@}", v4, 0x1Cu);
    }
  }

  else
  {
    *(*(a1 + 32) + 8) = 1;
  }
}

id sub_1005474EC(uint64_t a1, void *a2)
{
  if ([a2 model])
  {
    v4 = [objc_msgSend(a2 "model")];
  }

  else
  {
    v4 = "Unknown Model";
  }

  if ([a2 name])
  {
    v5 = [objc_msgSend(a2 "name")];
  }

  else
  {
    v5 = "Unknown Name";
  }

  if (qword_1025D47B0 != -1)
  {
    sub_1018BAD4C();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 68289795;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v4;
    v13 = 2081;
    v14 = v5;
    v15 = 2082;
    v16 = [objc_msgSend(a2 "effectiveIdentifier")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Rapport discovered nearby device, model:%{public, location:escape_only}s, name:%{private, location:escape_only}s, effectiveID:%{public, location:escape_only}s}", &v8, 0x30u);
  }

  return [*(a1 + 32) updateNearbyStatusWithCompanionLinkDevice:a2 didConnect:1];
}

id sub_100547650(uint64_t a1, void *a2)
{
  if ([a2 model])
  {
    v4 = [objc_msgSend(a2 "model")];
  }

  else
  {
    v4 = "Unknown Model";
  }

  if ([a2 name])
  {
    v5 = [objc_msgSend(a2 "name")];
  }

  else
  {
    v5 = "Unknown Name";
  }

  if (qword_1025D47B0 != -1)
  {
    sub_1018BAD4C();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 68289795;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v4;
    v13 = 2081;
    v14 = v5;
    v15 = 2082;
    v16 = [objc_msgSend(a2 "effectiveIdentifier")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Rapport lost nearby device, model:%{public, location:escape_only}s, name:%{private, location:escape_only}s, effectiveID:%{public, location:escape_only}s}", &v8, 0x30u);
  }

  return [*(a1 + 32) updateNearbyStatusWithCompanionLinkDevice:a2 didConnect:0];
}

void sub_100547988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289282;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v8, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD60();
      }
    }

    v5 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v8 = 68289282;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IDS service failed to initialize", "{msg%{public}.0s:IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v8, 0x1Cu);
    }
  }

  else
  {
    [*(a1 + 32) setService:a2];
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 2082;
      v10 = "";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:IDS became available so resuming silo}", &v8, 0x12u);
    }

    [*(a1 + 40) resume];
  }
}

id sub_1005485A4(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 40) = a2;
  if (a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v4 = [objc_msgSend(*(a1 + 32) "messageType")];
      *buf = 68289282;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      *v20 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Rapport Send success, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100548828;
    v13[3] = &unk_10245D398;
    v5 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v6 = v13;
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 56) + 8) + 24);
      v9 = *(*(*(a1 + 48) + 8) + 40);
      v10 = [objc_msgSend(*(a1 + 32) "messageType")];
      *buf = 68289794;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      *v20 = v8;
      *&v20[4] = 2114;
      *&v20[6] = v9;
      v21 = 2082;
      v22 = v10;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #Rapport failed to send event, writtenToNetworkStack:%{public}d, error:%{public, location:escape_only}@, type:%{public, location:escape_only}s}", buf, 0x2Cu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100548810;
    v14[3] = &unk_10245D4B0;
    v5 = *(a1 + 40);
    v11 = *(a1 + 48);
    v14[4] = *(a1 + 32);
    v14[5] = v11;
    v6 = v14;
  }

  return [v5 withClients:v6];
}

void sub_100548E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10054963C(id a1)
{
  v2 = sub_10001A3E8(a1, v1);
  v3 = (**v2)(v2);
  if (v3)
  {
    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeRequestLocation" UTF8String]);
    v7 = __p;
    *(sub_10054987C(&qword_102656D88, __p, &unk_101C66300, &v7) + 56) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeSetMotionAlarm" UTF8String]);
    v7 = __p;
    v3 = sub_10054987C(&qword_102656D88, __p, &unk_101C66300, &v7);
    *(v3 + 56) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10001A3E8(v3, v4);
  if (sub_10001CF3C())
  {
    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeLocation" UTF8String]);
    v7 = __p;
    *(sub_10054987C(&qword_102656D88, __p, &unk_101C66300, &v7) + 56) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeAliveAgain" UTF8String]);
    v7 = __p;
    *(sub_10054987C(&qword_102656D88, __p, &unk_101C66300, &v7) + 56) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeMotionAlarmUpdate" UTF8String]);
    v7 = __p;
    *(sub_10054987C(&qword_102656D88, __p, &unk_101C66300, &v7) + 56) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100549850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10054987C(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_1000F2B3C(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_100549928(uint64_t a1)
{
  sub_10018D404(a1);
  *(v2 + 40) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v2 + 48) = _Q0;
  *(v2 + 64) = xmmword_101CE6CD8;
  *(v2 + 80) = xmmword_101CE6CE8;
  *(v2 + 96) = xmmword_101CE6CF8;
  *(v2 + 112) = xmmword_101CE6D08;
  *(v2 + 128) = xmmword_101CE6D18;
  *(v2 + 144) = xmmword_101CE6D28;
  *(v2 + 160) = xmmword_101CE6D38;
  *(v2 + 176) = xmmword_101CE6D48;
  *(v2 + 192) = xmmword_101CE6D58;
  *(v2 + 204) = *(&xmmword_101CE6D58 + 12);
  *(v2 + 332) = xmmword_101CE6D48;
  *(v2 + 348) = xmmword_101CE6D58;
  *(v2 + 360) = *(&xmmword_101CE6D58 + 12);
  *(v2 + 252) = xmmword_101CE6CF8;
  *(v2 + 268) = xmmword_101CE6D08;
  *(v2 + 284) = xmmword_101CE6D18;
  *(v2 + 300) = xmmword_101CE6D28;
  *(v2 + 316) = xmmword_101CE6D38;
  *(v2 + 220) = xmmword_101CE6CD8;
  *(v2 + 236) = xmmword_101CE6CE8;
  *(v2 + 472) = xmmword_101CE6D38;
  *(v2 + 488) = xmmword_101CE6D48;
  *(v2 + 504) = xmmword_101CE6D58;
  *(v2 + 516) = *(&xmmword_101CE6D58 + 12);
  *(v2 + 408) = xmmword_101CE6CF8;
  *(v2 + 424) = xmmword_101CE6D08;
  *(v2 + 440) = xmmword_101CE6D18;
  *(v2 + 456) = xmmword_101CE6D28;
  *(v2 + 376) = xmmword_101CE6CD8;
  *(v2 + 392) = xmmword_101CE6CE8;
  *(v2 + 628) = xmmword_101CE6D38;
  *(v2 + 644) = xmmword_101CE6D48;
  *(v2 + 660) = xmmword_101CE6D58;
  *(v2 + 564) = xmmword_101CE6CF8;
  *(v2 + 580) = xmmword_101CE6D08;
  *(v2 + 596) = xmmword_101CE6D18;
  *(v2 + 612) = xmmword_101CE6D28;
  *(v2 + 532) = xmmword_101CE6CD8;
  *(v2 + 548) = xmmword_101CE6CE8;
  *(v2 + 672) = *(&xmmword_101CE6D58 + 12);
  *(v2 + 688) = _Q0;
  *(v2 + 704) = _Q0;
  *(v2 + 720) = 0xBFF0000000000000;
  *(v2 + 728) = 0;
  *(v2 + 736) = _Q0;
  *(v2 + 752) = xmmword_101C75BF0;
  *(v2 + 768) = 1;
  *(v2 + 784) = _Q0;
  *(v2 + 800) = _Q0;
  *(v2 + 816) = _Q0;
  *(v2 + 832) = _Q0;
  *(v2 + 848) = _Q0;
  *(v2 + 864) = _Q0;
  *(v2 + 880) = _Q0;
  *(v2 + 896) = 0;
  *(a1 + 776) = +[NSMutableDictionary dictionary];
  sub_100549A88(a1);
  return a1;
}

__n128 sub_100549A88(uint64_t a1)
{
  *(a1 + 40) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 48) = result;
  *(a1 + 64) = xmmword_101CE6CD8;
  *(a1 + 80) = xmmword_101CE6CE8;
  *(a1 + 160) = xmmword_101CE6D38;
  *(a1 + 176) = xmmword_101CE6D48;
  *(a1 + 192) = xmmword_101CE6D58;
  *(a1 + 204) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 96) = xmmword_101CE6CF8;
  *(a1 + 112) = xmmword_101CE6D08;
  *(a1 + 128) = xmmword_101CE6D18;
  *(a1 + 144) = xmmword_101CE6D28;
  *(a1 + 720) = 0xBFF0000000000000;
  *(a1 + 728) = 0;
  *(a1 + 768) = 1;
  *(a1 + 736) = result;
  *(a1 + 752) = xmmword_101C75BF0;
  *(a1 + 784) = result;
  *(a1 + 800) = result;
  *(a1 + 816) = result;
  *(a1 + 832) = result;
  *(a1 + 848) = result;
  *(a1 + 864) = result;
  *(a1 + 880) = result;
  *(a1 + 896) = 0;
  return result;
}

uint64_t sub_100549B38(uint64_t result, double a2)
{
  if (*(result + 768) == 1)
  {
    v2 = *(result + 752);
    if (v2 > 0.0)
    {
      v3 = a2 - v2;
      v4 = *(result + 872);
      if (v4 < v3)
      {
        v4 = v3;
      }

      *(result + 872) = v4;
      v5 = *(result + 880);
      if (v3 < v5 || v5 < 0.0)
      {
        v5 = v3;
      }

      *(result + 880) = v5;
      if (v3 > 2.0)
      {
        *(result + 760) = 0;
      }
    }
  }

  *(result + 768) = 0;
  *(result + 752) = a2;
  return result;
}

void sub_100549B98(uint64_t a1, void *a2)
{
  if ([a2 arrivalDate] && objc_msgSend(a2, "departureDate"))
  {
    [+[NSDate now](NSDate timeIntervalSinceReferenceDate];
    v5 = v4;
    [objc_msgSend(a2 "arrivalDate")];
    v7 = v6;
    [objc_msgSend(a2 "departureDate")];
    if (v7 <= v5)
    {
      v9 = v8;
      v10 = [a2 departureDate];
      if (v10 == +[NSDate distantFuture])
      {

        sub_100549CBC(a1, v7);
      }

      else if (v9 <= v5)
      {
        sub_100549A88(a1);
        *(a1 + 40) = 1;
        *(a1 + 48) = v9;
      }
    }
  }

  else
  {

    sub_100549A88(a1);
  }
}

double sub_100549CBC(uint64_t a1, double a2)
{
  if (*(a1 + 40) == 1)
  {
    *(a1 + 56) = a2;
    if (sub_100549D60(a1))
    {
      AnalyticsSendEventLazy();
    }
  }

  *&result = sub_100549A88(a1).n128_u64[0];
  return result;
}

BOOL sub_100549D60(uint64_t a1)
{
  v2 = *(a1 + 56) - *(a1 + 48);
  *(a1 + 888) = v2;
  if (v2 <= 0.0)
  {
    sub_100549A88(a1);
    return v2 > 0.0;
  }

  v3 = *(a1 + 744) / v2;
  v4 = *(a1 + 736);
  *(a1 + 896) = 0;
  if (v3 <= 0.75)
  {
    v4 = v4 / v2;
    if (v4 <= 0.75)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 896) = v5;
LABEL_9:
  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v5, v4), @"DominantMotionActivity"}];
  v6 = *(a1 + 816);
  if (v6 <= 0.0)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v6 <= 20.0)
    {
      v7 = &dword_101C7E398;
    }

    else
    {
      v7 = &dword_101C7E39C;
      v8 = 30;
      while (v6 > v7[1])
      {
        ++v7;
        if (!--v8)
        {
          v7 = &dword_101C7E414;
          break;
        }
      }
    }

    v9 = *v7;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v9), @"MaxDistanceBetweenLocations"}];
  v10 = *(a1 + 824);
  if (v10 <= 0.0)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v10 <= 20.0)
    {
      v11 = &dword_101C7E398;
    }

    else
    {
      v11 = &dword_101C7E39C;
      v12 = 30;
      while (v10 > v11[1])
      {
        ++v11;
        if (!--v12)
        {
          v11 = &dword_101C7E414;
          break;
        }
      }
    }

    v13 = *v11;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v13), @"MaxDistanceBetweenGPSLocations"}];
  v14 = *(a1 + 832);
  if (v14 <= 0.0)
  {
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v14 <= 20.0)
    {
      v15 = &dword_101C7E398;
    }

    else
    {
      v15 = &dword_101C7E39C;
      v16 = 30;
      while (v14 > v15[1])
      {
        ++v15;
        if (!--v16)
        {
          v15 = &dword_101C7E414;
          break;
        }
      }
    }

    v17 = *v15;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v17), @"MaxDistanceBetweenWifiLocations"}];
  v18 = *(a1 + 840);
  if (v18 <= 0.0)
  {
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v18 <= 20.0)
    {
      v19 = &dword_101C7E398;
    }

    else
    {
      v19 = &dword_101C7E39C;
      v20 = 30;
      while (v18 > v19[1])
      {
        ++v19;
        if (!--v20)
        {
          v19 = &dword_101C7E414;
          break;
        }
      }
    }

    v21 = *v19;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v21), @"MaxDistanceBetweenWSBLocations"}];
  v22 = *(a1 + 808);
  if (v22 <= 0.0)
  {
    v25 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v22 <= 2.0)
    {
      v23 = &dword_101C7E418;
    }

    else
    {
      v23 = &dword_101C7E41C;
      v24 = 45;
      while (v22 > v23[1])
      {
        ++v23;
        if (!--v24)
        {
          v23 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v25 = *v23;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v25), @"MaxIntervalBetweenLocation"}];
  v26 = *(a1 + 784);
  if (v26 <= 0.0)
  {
    v29 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v26 <= 2.0)
    {
      v27 = &dword_101C7E418;
    }

    else
    {
      v27 = &dword_101C7E41C;
      v28 = 45;
      while (v26 > v27[1])
      {
        ++v27;
        if (!--v28)
        {
          v27 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v29 = *v27;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v29), @"MaxIntervalBetweenGPS"}];
  v30 = *(a1 + 792);
  if (v30 <= 0.0)
  {
    v33 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v30 <= 2.0)
    {
      v31 = &dword_101C7E418;
    }

    else
    {
      v31 = &dword_101C7E41C;
      v32 = 45;
      while (v30 > v31[1])
      {
        ++v31;
        if (!--v32)
        {
          v31 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v33 = *v31;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v33), @"MaxIntervalBetweenWiFi"}];
  v34 = *(a1 + 800);
  if (v34 <= 0.0)
  {
    v37 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v34 <= 2.0)
    {
      v35 = &dword_101C7E418;
    }

    else
    {
      v35 = &dword_101C7E41C;
      v36 = 45;
      while (v34 > v35[1])
      {
        ++v35;
        if (!--v36)
        {
          v35 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v37 = *v35;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v37), @"MaxIntervalBetweenWSB"}];
  v38 = *(a1 + 848);
  if (v38 <= 0.0)
  {
    v41 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v38 <= 2.0)
    {
      v39 = &dword_101C7E418;
    }

    else
    {
      v39 = &dword_101C7E41C;
      v40 = 45;
      while (v38 > v39[1])
      {
        ++v39;
        if (!--v40)
        {
          v39 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v41 = *v39;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v41), @"MaxSleepDuration"}];
  v42 = *(a1 + 856);
  if (v42 <= 0.0)
  {
    v45 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v42 <= 2.0)
    {
      v43 = &dword_101C7E418;
    }

    else
    {
      v43 = &dword_101C7E41C;
      v44 = 45;
      while (v42 > v43[1])
      {
        ++v43;
        if (!--v44)
        {
          v43 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v45 = *v43;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v45), @"MaxEffectiveSleepDuration"}];
  v46 = *(a1 + 872);
  if (v46 <= 0.0)
  {
    v49 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v46 <= 2.0)
    {
      v47 = &dword_101C7E418;
    }

    else
    {
      v47 = &dword_101C7E41C;
      v48 = 45;
      while (v46 > v47[1])
      {
        ++v47;
        if (!--v48)
        {
          v47 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v49 = *v47;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v49), @"MaxWakeDuration"}];
  v50 = *(a1 + 864);
  if (v50 <= 0.0)
  {
    v53 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v50 <= 2.0)
    {
      v51 = &dword_101C7E418;
    }

    else
    {
      v51 = &dword_101C7E41C;
      v52 = 45;
      while (v50 > v51[1])
      {
        ++v51;
        if (!--v52)
        {
          v51 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v53 = *v51;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v53), @"MinSleepDuration"}];
  v54 = *(a1 + 880);
  if (v54 <= 0.0)
  {
    v57 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v54 <= 2.0)
    {
      v55 = &dword_101C7E418;
    }

    else
    {
      v55 = &dword_101C7E41C;
      v56 = 45;
      while (v54 > v55[1])
      {
        ++v55;
        if (!--v56)
        {
          v55 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v57 = *v55;
  }

  v58 = (a1 + 776);
  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v57), @"MinWakeDuration"}];
  v59 = *(a1 + 888) / 60.0;
  if (v59 <= 0.0)
  {
    v62 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v59 <= 2.0)
    {
      v60 = &dword_101C7E418;
    }

    else
    {
      v60 = &dword_101C7E41C;
      v61 = 45;
      while (v59 > v60[1])
      {
        ++v60;
        if (!--v61)
        {
          v60 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v62 = *v60;
  }

  [*v58 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v62), @"TransitionDuration"}];
  if (qword_1025D4600 != -1)
  {
    sub_1018BAE58();
  }

  v63 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *v58;
    v66 = 138543362;
    v67 = v64;
    _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEFAULT, "#CLTBC, CLTransitionBreadcrumbMetrics, fMetrics, %{public}@", &v66, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BAE6C(v58);
  }

  return v2 > 0.0;
}