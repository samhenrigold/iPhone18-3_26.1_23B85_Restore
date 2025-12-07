id *sub_100065C5C(id *a1)
{
  if (*a1)
  {

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100065C94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 696);
  *a1 = *a2;
  v6 = *(a2 + 32);
  v5 = *(a2 + 48);
  v7 = *(a2 + 16);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 16) = v7;
  *(a1 + 80) = *(a2 + 80);
  if (v4 == 1)
  {
    if (a1 != a2)
    {
      sub_100731D80((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    }

    *(a1 + 112) = *(a2 + 112);
    v8 = *(a2 + 128);
    v9 = *(a2 + 144);
    v10 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v10;
    *(a1 + 128) = v8;
    *(a1 + 144) = v9;
    v11 = *(a2 + 192);
    v12 = *(a2 + 208);
    v13 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v13;
    *(a1 + 192) = v11;
    *(a1 + 208) = v12;
    v14 = *(a2 + 256);
    v15 = *(a2 + 272);
    v16 = *(a2 + 288);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 272) = v15;
    *(a1 + 288) = v16;
    *(a1 + 256) = v14;
    std::string::operator=((a1 + 320), (a2 + 320));
    v18 = *(a2 + 360);
    v17 = *(a2 + 376);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 360) = v18;
    *(a1 + 376) = v17;
    v19 = *(a2 + 440);
    v21 = *(a2 + 392);
    v20 = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v19;
    *(a1 + 392) = v21;
    *(a1 + 408) = v20;
    v23 = *(a2 + 472);
    v22 = *(a2 + 488);
    v24 = *(a2 + 456);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 472) = v23;
    *(a1 + 488) = v22;
    *(a1 + 456) = v24;
    v25 = *(a2 + 640);
    v26 = *(a2 + 656);
    v27 = *(a2 + 672);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 656) = v26;
    *(a1 + 672) = v27;
    *(a1 + 640) = v25;
    v28 = *(a2 + 576);
    v29 = *(a2 + 592);
    v30 = *(a2 + 624);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 624) = v30;
    *(a1 + 576) = v28;
    *(a1 + 592) = v29;
    v31 = *(a2 + 512);
    v32 = *(a2 + 528);
    v33 = *(a2 + 560);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = v33;
    *(a1 + 512) = v31;
    *(a1 + 528) = v32;
  }

  else
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    sub_10038EB38((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    *(a1 + 112) = *(a2 + 112);
    v34 = *(a2 + 128);
    v35 = *(a2 + 144);
    v36 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v36;
    *(a1 + 144) = v35;
    *(a1 + 128) = v34;
    v37 = *(a2 + 192);
    v38 = *(a2 + 208);
    v39 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 224) = v39;
    *(a1 + 208) = v38;
    *(a1 + 192) = v37;
    v40 = *(a2 + 256);
    v41 = *(a2 + 272);
    v42 = *(a2 + 288);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 288) = v42;
    *(a1 + 272) = v41;
    *(a1 + 256) = v40;
    if (*(a2 + 343) < 0)
    {
      sub_100007244((a1 + 320), *(a2 + 320), *(a2 + 328));
    }

    else
    {
      v43 = *(a2 + 320);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 320) = v43;
    }

    v44 = *(a2 + 344);
    v45 = *(a2 + 376);
    *(a1 + 360) = *(a2 + 360);
    *(a1 + 376) = v45;
    *(a1 + 344) = v44;
    v46 = *(a2 + 392);
    v47 = *(a2 + 408);
    v48 = *(a2 + 440);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v48;
    *(a1 + 392) = v46;
    *(a1 + 408) = v47;
    v49 = *(a2 + 456);
    v50 = *(a2 + 472);
    v51 = *(a2 + 488);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 472) = v50;
    *(a1 + 488) = v51;
    *(a1 + 456) = v49;
    v52 = *(a2 + 512);
    v53 = *(a2 + 528);
    v54 = *(a2 + 560);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = v54;
    *(a1 + 512) = v52;
    *(a1 + 528) = v53;
    v55 = *(a2 + 576);
    v56 = *(a2 + 592);
    v57 = *(a2 + 624);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 624) = v57;
    *(a1 + 576) = v55;
    *(a1 + 592) = v56;
    v58 = *(a2 + 640);
    v59 = *(a2 + 656);
    v60 = *(a2 + 672);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 656) = v59;
    *(a1 + 672) = v60;
    *(a1 + 640) = v58;
    *(a1 + 696) = 1;
  }

  return a1;
}

void sub_100065F04(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100065F20(uint64_t a1, int *a2, CFDictionaryRef *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssController::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000660EC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000660EC(void *a1, uint64_t a2, int *a3, CFDictionaryRef *a4)
{
  if (qword_1025D4660 != -1)
  {
    sub_1019435C4();
  }

  v7 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = v14 >= 0 ? __p : __p[0];
    *buf = 68289282;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, received CT notification:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(**a1 + 288))(*a1, a3, a4);
  v10 = a1[141];
  if (v10)
  {
    sub_100076538(v10, a3, a4);
  }

  v11 = a1[148];
  if (v11)
  {
    sub_1000783BC(v11, a3);
  }

  v12 = a1[142];
  if (v12)
  {
    sub_100075910(v12, a3, a4);
  }
}

uint64_t sub_100066280(uint64_t a1, int *a2, const __CFDictionary **a3)
{
  v6 = *(a1 + 1688);
  if (v6)
  {
    sub_1017694BC(v6, a2, a3);
  }

  result = *(a1 + 2656);
  if (result)
  {

    return sub_100068208(result, a2, a3);
  }

  return result;
}

void sub_100066308(uint64_t a1, void *a2)
{
  if (qword_1025D4660 != -1)
  {
    sub_101617000();
  }

  v4 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 2564);
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,updateCellData", v9, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10161A40C(a1);
  }

  v6 = *(a1 + 2480);
  *(a1 + 2480) = *a2;
  *a2 = v6;
  v7 = *(a1 + 2488);
  *(a1 + 2488) = a2[1];
  a2[1] = v7;
  v8 = *(a1 + 2496);
  *(a1 + 2496) = a2[2];
  a2[2] = v8;
  sub_100066424(a1);
}

void sub_100066424(uint64_t a1)
{
  sub_100065934((a1 + 2480), v13);
  if (v19 == 1 && v14 == 6)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101616C5C();
    }

    v2 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 2564);
      *buf = 67109376;
      v25 = v3;
      v26 = 1024;
      v27 = v14 == 6;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,ServingCellInfoChange,isOnLte,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101616C84(buf);
      v10 = *(a1 + 2564);
      v20 = 67109376;
      v21 = v10;
      v22 = 1024;
      v23 = v14 == 6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 0, "#ins%d,#nilr,#supl,ServingCellInfoChange,isOnLte,%d", &v20, 14);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrSupl::process_ServingCellInfoChange()", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v4 = 1;
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101616C5C();
    }

    v5 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 2564);
      *buf = 67109120;
      v25 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,ServingCellInfoChange, not on LTE", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101616C84(buf);
      v7 = *(a1 + 2564);
      v20 = 67109120;
      v21 = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 0, "#ins%d,#nilr,#supl,ServingCellInfoChange, not on LTE", &v20);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrSupl::process_ServingCellInfoChange()", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v4 = 0;
  }

  *(a1 + 371) = v4;
  sub_10006677C(a1 + 104, 22);
  if (v19 == 1)
  {
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }
}

void sub_100066758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000827E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006677C(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 88);
  v101 = *(a1 + 4);
  if (!*(a1 + 32))
  {
    sub_101618F48();
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    sub_101618870(qword_1025D4650 == -1);
    goto LABEL_183;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10023F750();
  }

  v4 = qword_1025D4658;
  v5 = *(a1 + 120);
  if (os_log_type_enabled(qword_1025D4658, v5))
  {
    v6 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v6 = *v6;
    }

    if (*(a1 + 4))
    {
      v7 = "Session";
    }

    else
    {
      v7 = "Idle";
    }

    sub_10000EC00(__p, v7);
    v8 = SHIBYTE(v105);
    v9 = *__p;
    sub_1000662F4(a2, v108);
    v10 = __p;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v111 >= 0)
    {
      v11 = v108;
    }

    else
    {
      v11 = *v108;
    }

    *buf = 136315650;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 2080;
    *&buf[24] = v11;
    _os_log_impl(dword_100000000, v4, v5, "%scurrent_state,%s,event,%s", buf, 0x20u);
    if (v111 < 0)
    {
      operator delete(*v108);
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v59 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v59 = *v59;
    }

    v60 = qword_1025D4658;
    v61 = *(a1 + 120);
    if (*(a1 + 4))
    {
      v62 = "Session";
    }

    else
    {
      v62 = "Idle";
    }

    sub_10000EC00(v108, v62);
    v63 = v111;
    v64 = *v108;
    sub_1000662F4(a2, v99);
    v65 = v108;
    if (v63 < 0)
    {
      v65 = v64;
    }

    if (v100 >= 0)
    {
      v66 = v99;
    }

    else
    {
      v66 = v99[0];
    }

    *__p = 136315650;
    *&__p[4] = v59;
    v103 = 2080;
    v104 = v65;
    v105 = 2080;
    v106 = v66;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v60, v61, "%scurrent_state,%s,event,%s", __p, 32, v97);
    v68 = v67;
    if (v100 < 0)
    {
      operator delete(v99[0]);
    }

    if (v111 < 0)
    {
      operator delete(*v108);
    }

    sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLNilrSupl>::handleEvent(Event) [T = CLNilrSupl]", "%s\n", v68);
    if (v68 != buf)
    {
      free(v68);
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1 + 8;
  v14 = *(a1 + 4);
  v15 = a1 + 16;
  do
  {
    if (*(v12 + 32) >= v14)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < v14));
  }

  while (v12);
  if (v15 == a1 + 16 || v14 < *(v15 + 32))
  {
LABEL_28:
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }
    }

    v17 = qword_1025D4658;
    if (os_signpost_enabled(qword_1025D4658))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/GPS/Core/CLStateMachine.h", 106, "handleEvent");
LABEL_183:
    __break(1u);
  }

  v19 = *(v15 + 40);
  v20 = *(v15 + 48);
  v21 = (*(a1 + 32) + (v20 >> 1));
  if (v20)
  {
    v19 = *(*v21 + v19);
  }

  v22 = v19(v21, a2);
  v23 = v22;
  v98 = v22;
  if (a2 <= 1 && v22 != v101)
  {
    sub_1016189EC();
  }

  if (*(a1 + 88) >= 2u)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v25 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315138;
      *&buf[4] = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "%sNested invocation of state machine", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101618B5C();
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101616E5C();
  }

  v26 = qword_1025D4658;
  v27 = *(a1 + 120);
  if (os_log_type_enabled(qword_1025D4658, v27))
  {
    v28 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v28 = *v28;
    }

    if (v23)
    {
      v29 = "Session";
    }

    else
    {
      v29 = "Idle";
    }

    sub_10000EC00(buf, v29);
    if (buf[23] >= 0)
    {
      v30 = buf;
    }

    else
    {
      v30 = *buf;
    }

    *__p = 136315394;
    *&__p[4] = v28;
    v103 = 2080;
    v104 = v30;
    _os_log_impl(dword_100000000, v26, v27, "%snewState,%s", __p, 0x16u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v69 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v69 = *v69;
    }

    v70 = qword_1025D4658;
    v71 = *(a1 + 120);
    if (v23)
    {
      v72 = "Session";
    }

    else
    {
      v72 = "Idle";
    }

    sub_10000EC00(__p, v72);
    if (v105 >= 0)
    {
      v73 = __p;
    }

    else
    {
      v73 = *__p;
    }

    *v108 = 136315394;
    *&v108[4] = v69;
    v109 = 2080;
    v110 = v73;
    LODWORD(v96) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v70, v71, "%snewState,%s", v108, v96);
    v75 = v74;
    if (SHIBYTE(v105) < 0)
    {
      operator delete(*__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLNilrSupl>::handleEvent(Event) [T = CLNilrSupl]", "%s\n", v75);
    if (v75 != buf)
    {
      free(v75);
    }
  }

  if (v23 != v101)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v31 = qword_1025D4658;
    v32 = *(a1 + 120);
    if (os_log_type_enabled(qword_1025D4658, v32))
    {
      v33 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v33 = *v33;
      }

      if (v101)
      {
        v34 = "Session";
      }

      else
      {
        v34 = "Idle";
      }

      sub_10000EC00(__p, v34);
      v35 = SHIBYTE(v105);
      v36 = *__p;
      sub_10000EC00(v108, "Exit");
      v37 = __p;
      if (v35 < 0)
      {
        v37 = v36;
      }

      if (v111 >= 0)
      {
        v38 = v108;
      }

      else
      {
        v38 = *v108;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = v37;
      *&buf[22] = 2080;
      *&buf[24] = v38;
      _os_log_impl(dword_100000000, v31, v32, "%soldState,%s,event,%s", buf, 0x20u);
      if (v111 < 0)
      {
        operator delete(*v108);
      }

      if (SHIBYTE(v105) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }

      v76 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v76 = *v76;
      }

      v77 = qword_1025D4658;
      v78 = *(a1 + 120);
      if (v101)
      {
        v79 = "Session";
      }

      else
      {
        v79 = "Idle";
      }

      sub_10000EC00(v108, v79);
      v80 = v111;
      v81 = *v108;
      sub_10000EC00(v99, "Exit");
      v82 = v108;
      if (v80 < 0)
      {
        v82 = v81;
      }

      if (v100 >= 0)
      {
        v83 = v99;
      }

      else
      {
        v83 = v99[0];
      }

      *__p = 136315650;
      *&__p[4] = v76;
      v103 = 2080;
      v104 = v82;
      v105 = 2080;
      v106 = v83;
      LODWORD(v96) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v77, v78, "%soldState,%s,event,%s", __p, v96, v97);
      v85 = v84;
      if (v100 < 0)
      {
        operator delete(v99[0]);
      }

      v13 = a1 + 8;
      if (v111 < 0)
      {
        operator delete(*v108);
      }

      sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLNilrSupl>::handleEvent(Event) [T = CLNilrSupl]", "%s\n", v85);
      if (v85 != buf)
      {
        free(v85);
      }
    }

    v39 = *(a1 + 32);
    *buf = &v101;
    v40 = sub_1001B58E4(v13, &v101, &unk_101C66300, buf);
    v41 = v40[5];
    v42 = v40[6];
    v43 = (v39 + (v42 >> 1));
    if (v42)
    {
      v41 = *(*v43 + v41);
    }

    v44 = v41(v43, 1);
    if (v44 != v101)
    {
      sub_101618C68();
    }

    *(a1 + 4) = v23;
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v45 = qword_1025D4658;
    v46 = *(a1 + 120);
    if (os_log_type_enabled(qword_1025D4658, v46))
    {
      v47 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v47 = *v47;
      }

      if (v23)
      {
        v48 = "Session";
      }

      else
      {
        v48 = "Idle";
      }

      sub_10000EC00(__p, v48);
      v49 = SHIBYTE(v105);
      v50 = *__p;
      sub_10000EC00(v108, "Enter");
      v51 = __p;
      if (v49 < 0)
      {
        v51 = v50;
      }

      if (v111 >= 0)
      {
        v52 = v108;
      }

      else
      {
        v52 = *v108;
      }

      *buf = 136315650;
      *&buf[4] = v47;
      *&buf[12] = 2080;
      *&buf[14] = v51;
      *&buf[22] = 2080;
      *&buf[24] = v52;
      _os_log_impl(dword_100000000, v45, v46, "%snewState,%s,event,%s", buf, 0x20u);
      if (v111 < 0)
      {
        operator delete(*v108);
      }

      if (SHIBYTE(v105) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }

      v86 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v86 = *v86;
      }

      v87 = qword_1025D4658;
      v88 = *(a1 + 120);
      if (v23)
      {
        v89 = "Session";
      }

      else
      {
        v89 = "Idle";
      }

      sub_10000EC00(v108, v89);
      v90 = v111;
      v91 = *v108;
      sub_10000EC00(v99, "Enter");
      v92 = v108;
      if (v90 < 0)
      {
        v92 = v91;
      }

      if (v100 >= 0)
      {
        v93 = v99;
      }

      else
      {
        v93 = v99[0];
      }

      *__p = 136315650;
      *&__p[4] = v86;
      v103 = 2080;
      v104 = v92;
      v105 = 2080;
      v106 = v93;
      LODWORD(v96) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v87, v88, "%snewState,%s,event,%s", __p, v96, v97);
      v95 = v94;
      if (v100 < 0)
      {
        operator delete(v99[0]);
      }

      if (v111 < 0)
      {
        operator delete(*v108);
      }

      sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLNilrSupl>::handleEvent(Event) [T = CLNilrSupl]", "%s\n", v95);
      if (v95 != buf)
      {
        free(v95);
      }
    }

    v53 = *(a1 + 32);
    *buf = &v98;
    v54 = sub_1001B58E4(v13, &v98, &unk_101C66300, buf);
    v55 = v54[5];
    v56 = v54[6];
    v57 = (v53 + (v56 >> 1));
    if (v56)
    {
      v55 = *(*v57 + v55);
    }

    v23 = v55(v57, 0);
    if (v23 != v98)
    {
      sub_101618DD8();
    }
  }

  --*(a1 + 88);
  return v23;
}

void sub_100067594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000675F4(uint64_t a1, int a2)
{
  result = 0;
  switch(a2)
  {
    case 0:
      sub_10160EF54(a1);
      sub_10160F1D0(a1);
      goto LABEL_79;
    case 2:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v20 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#supl,EmergencyModeStart", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101617888(a1);
      }

      sub_10160F0B8(a1 + 2136);
      goto LABEL_78;
    case 3:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v14 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#supl,EmergencyModeEnd", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10161779C(a1);
      }

      sub_10160F0B8(a1 + 2136);
      goto LABEL_79;
    case 4:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v24 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v25;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,isSUPLInitValid?", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016175C4(a1);
      }

      result = sub_10160F518(a1, *(a1 + 2528), a1 + 2568);
      if (result)
      {
        if (qword_1025D4660 != -1)
        {
          sub_101616C5C();
        }

        v26 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 2564);
          *buf = 67109120;
          v34 = v27;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,SUPLInit is valid", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016176B0(a1);
        }

        *(a1 + 360) = 0x4060000000000000;
        return 1;
      }

      return result;
    case 6:
    case 7:
      sub_10160F1D0(a1);
      goto LABEL_78;
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v5 = qword_1025D4668;
      result = os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      sub_1000662F4(a2, __p);
      if (v32 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 68289282;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2082;
      v38 = v6;
      v7 = "{msg%{public}.0s:#Warning,#nilr,#supl,connEvent without session, connEvent:%{public, location:escape_only}s}";
      goto LABEL_9;
    case 9:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v5 = qword_1025D4668;
      result = os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      sub_10000EC00(__p, "ConnClose");
      if (v32 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      *buf = 68289282;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2082;
      v38 = v28;
      v7 = "{msg%{public}.0s:#Warning,#nilr,#supl,event without session, possibly due to session abort, event:%{public, location:escape_only}s}";
LABEL_9:
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0x1Cu);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_79;
    case 15:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v22 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v23;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,timeout without session", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_1016173DC(a1);
      goto LABEL_79;
    case 16:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v10 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,ecid request without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_1016172E8(a1);
      goto LABEL_79;
    case 17:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v12 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,ecid response without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 2);
      if (!result)
      {
        return result;
      }

      sub_1016171FC(a1);
      goto LABEL_79;
    case 18:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v18 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,ecid request timeout without session", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_101617108(a1);
      goto LABEL_79;
    case 19:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v16 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,wlan request without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_101617014(a1);
      goto LABEL_79;
    case 20:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v29 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v30;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,wlan response without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_1016174D0(a1);
      goto LABEL_79;
    case 21:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v8 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,wlan request timeout without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_101617974(a1);
      goto LABEL_79;
    case 22:
      if (*(a1 + 371) == 1)
      {
LABEL_78:
        sub_100067E40(a1);
      }

LABEL_79:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100067E40(uint64_t a1)
{
  if (*(a1 + 272) == 1 && *(a1 + 313) == 1)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101617000();
    }

    v2 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 272) == 1)
      {
        v3 = *(a1 + 313);
      }

      else
      {
        v3 = 0;
      }

      v4 = *(a1 + 2440);
      if (!v4)
      {
        sub_1000CF05C();
      }

      v5 = *(a1 + 2564);
      v6 = *(a1 + 318);
      v7 = (*(*v4 + 48))(v4);
      v8 = *(a1 + 312);
      *buf = 67110144;
      v34 = v5;
      v35 = 1024;
      v36 = v3;
      v37 = 1024;
      v38 = v6;
      v39 = 1024;
      v40 = v7;
      v41 = 1024;
      v42 = v8;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#supl,startUdpListenerOnce,isSuplAllowed,%d,fInCellularEmergency,%d,fIsServingCellOnLte,%d,fUdpListenerIsRunning,%d", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4660 != -1)
      {
        sub_101616C5C();
      }

      if (*(a1 + 272) == 1)
      {
        v14 = *(a1 + 313);
      }

      else
      {
        v14 = 0;
      }

      v15 = qword_1025D4668;
      v16 = *(a1 + 2564);
      v17 = *(a1 + 318);
      v18 = sub_101611950(a1 + 2416);
      v19 = *(a1 + 312);
      v24[0] = 67110144;
      v24[1] = v16;
      v25 = 1024;
      v26 = v14;
      v27 = 1024;
      v28 = v17;
      v29 = 1024;
      v30 = v18;
      v31 = 1024;
      v32 = v19;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 2, "#ins%d,#nilr,#supl,startUdpListenerOnce,isSuplAllowed,%d,fInCellularEmergency,%d,fIsServingCellOnLte,%d,fUdpListenerIsRunning,%d", v24, 32, LODWORD(__p[0]), LODWORD(__p[1]), v23);
      v21 = v20;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrSupl::startUdpListenerOnce()", "%s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (*(a1 + 272) == 1 && *(a1 + 313) == 1)
    {
      v9 = *(a1 + 2440);
      if (!v9)
      {
        sub_1000CF05C();
      }

      if ((*(*v9 + 48))(v9) && (*(a1 + 312) & 1) == 0)
      {
        if (qword_1025D4660 != -1)
        {
          sub_101616C5C();
        }

        v10 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 2564);
          *buf = 67109120;
          v34 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,startUdpListenerOnce,success", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101618594(a1);
        }

        v12 = *(a1 + 304);
        v13 = *(a1 + 424);
        if (*(a1 + 423) < 0)
        {
          sub_100007244(__p, *(a1 + 400), *(a1 + 408));
        }

        else
        {
          *__p = *(a1 + 400);
          v23 = *(a1 + 416);
        }

        sub_100B9F1D0(v12, v13, __p);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *(a1 + 312) = 1;
      }
    }
  }
}

void sub_1000681E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100068208(uint64_t a1, int *a2, CFDictionaryRef *a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_101798E48();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100072010(a2);
    sub_1000238CC(v7, &v132);
    v8 = v136 >= 0 ? &v132 : v132;
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,onTelephonyNotification,%s", buf, 0xCu);
    if (SHIBYTE(v136) < 0)
    {
      operator delete(v132);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101799A38(a2);
  }

  sub_100005548(v127, *a3);
  v126 = 255;
  v9 = sub_100072010(a2);
  if (!CFEqual(@"kSuplInitPayloadNotification", v9))
  {
    v21 = sub_100072010(a2);
    if (CFEqual(@"kSimStatusChangeNotification", v21))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v22 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v132 = 67109120;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v132, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v132);
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 2, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", buf);
        v94 = v93;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v93);
        if (v94 != &v132)
        {
          free(v94);
        }
      }

      if (sub_10006A33C(a1, 0))
      {
        v132 = &dword_101DBA410;
        v23 = sub_10006A3F4(a1 + 760, &dword_101DBA410, &unk_101C66300, &v132);
        sub_100064A18(v23[5], a2, a3);
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101798DDC();
        }

        v39 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v132) = 0;
          _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_FAULT, "Invalid instance", &v132, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101798E04(&v132);
          *buf = 0;
          LODWORD(v125) = 2;
          _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 17, "Invalid instance", buf, v125, v126);
          v103 = v102;
          sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v102);
          if (v103 != &v132)
          {
            free(v103);
          }
        }
      }

      if (!sub_10006A33C(a1, 1))
      {
        return sub_100005DA4();
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v40 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v132 = 0x104000100;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v132, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v132);
        *buf = 67109120;
        *&buf[4] = 1;
        _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 2, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", buf);
        v105 = v104;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v104);
        if (v105 != &v132)
        {
          free(v105);
        }
      }

      if (sub_10006A33C(a1, 1))
      {
LABEL_90:
        v132 = &dword_101DBA414;
        v35 = sub_10006A3F4(a1 + 760, &dword_101DBA414, &unk_101C66300, &v132);
        goto LABEL_111;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v43 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v132) = 0;
        _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_FAULT, "Invalid instance", &v132, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        return sub_100005DA4();
      }

LABEL_102:
      sub_101798E04(&v132);
      *buf = 0;
      LODWORD(v125) = 2;
      _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 17, "Invalid instance", buf, v125);
      v20 = v44;
      sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v44);
      goto LABEL_150;
    }

    v36 = sub_100072010(a2);
    if (CFEqual(@"kCellInfoNotification", v36))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v37 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v132 = 67109120;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v132, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v132);
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 2, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", buf);
        v107 = v106;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v106);
        if (v107 != &v132)
        {
          free(v107);
        }
      }

      if (sub_10006A33C(a1, 0))
      {
        v132 = &dword_101DBA410;
        v38 = sub_10006A3F4(a1 + 760, &dword_101DBA410, &unk_101C66300, &v132);
        sub_100064A18(v38[5], a2, a3);
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101798DDC();
        }

        v47 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v132) = 0;
          _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_FAULT, "Invalid instance", &v132, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101798E04(&v132);
          *buf = 0;
          LODWORD(v125) = 2;
          _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 17, "Invalid instance", buf, v125, v126);
          v109 = v108;
          sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v108);
          if (v109 != &v132)
          {
            free(v109);
          }
        }
      }

      v48 = sub_10006A33C(a1, 1);
      if (v48)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101798DDC();
        }

        v50 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v132 = 0x104000100;
          _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v132, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101798E04(&v132);
          *buf = 67109120;
          *&buf[4] = 1;
          _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 2, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", buf);
          v111 = v110;
          sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v110);
          if (v111 != &v132)
          {
            free(v111);
          }
        }

        if (sub_10006A33C(a1, 1))
        {
          v132 = &dword_101DBA414;
          v51 = sub_10006A3F4(a1 + 760, &dword_101DBA414, &unk_101C66300, &v132);
          v48 = sub_100064A18(v51[5], a2, a3);
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_101798DDC();
          }

          v52 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v132) = 0;
            _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_FAULT, "Invalid instance", &v132, 2u);
          }

          v48 = sub_10000A100(121, 0);
          if (v48)
          {
            sub_101798E04(&v132);
            *buf = 0;
            LODWORD(v125) = 2;
            _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 17, "Invalid instance", buf, v125);
            v115 = v114;
            v48 = sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v114);
            if (v115 != &v132)
            {
              free(v115);
            }
          }
        }
      }

      if (sub_10006FB38(v48, v49))
      {
        if (*(a1 + 1237) == 1)
        {
          v53 = *a3;
          if (*a3)
          {
            memset(__p, 0, 24);
            memset(buf, 0, sizeof(buf));
            v130 = 1065353216;
            if (sub_100065478(v53, buf))
            {
              *v128 = a1 + 1232;
              if (sub_100065670(buf, (a1 + 1232), &unk_101C66300, v128)[3])
              {
                sub_1000658D0(*(a1 + 1232), buf, __p);
                sub_100065934(__p, &v132);
                sub_1000659B0(a1, &v132);
                sub_1000827E4(&v132);
              }

              else
              {
                if (qword_1025D4650 != -1)
                {
                  sub_101798DDC();
                }

                v80 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
                {
                  v132 = 68289026;
                  v133 = 2082;
                  v134 = "";
                  _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ci,cellInfo,error fetching cell info}", &v132, 0x12u);
                }
              }
            }

            sub_100075100(buf);
            v132 = __p;
            sub_100072124(&v132);
          }
        }
      }

      return sub_100005DA4();
    }

    v45 = sub_100072010(a2);
    if (CFEqual(@"kCellRefreshNotification", v45))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v46 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v132 = 67109120;
        _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v132, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v132);
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 2, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", buf);
        v113 = v112;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v112);
        if (v113 != &v132)
        {
          free(v113);
        }
      }

      if (sub_10006A33C(a1, 0))
      {
        v132 = &dword_101DBA410;
        v35 = sub_10006A3F4(a1 + 760, &dword_101DBA410, &unk_101C66300, &v132);
        goto LABEL_111;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v57 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v132) = 0;
        _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_FAULT, "Invalid instance", &v132, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        return sub_100005DA4();
      }

      sub_101798E04(&v132);
      *buf = 0;
      LODWORD(v125) = 2;
      _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 17, "Invalid instance", buf, v125, v126);
      v20 = v58;
      sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v58);
      goto LABEL_150;
    }

    v54 = sub_100072010(a2);
    if (CFEqual(@"kCLTelephonyServiceDisconnectedNotification", v54))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v55 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v132 = 67109120;
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v132, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v132);
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 0, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", buf);
        v117 = v116;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v116);
        if (v117 != &v132)
        {
          free(v117);
        }
      }

      if (sub_10006A33C(a1, 0))
      {
        v132 = &dword_101DBA410;
        v56 = sub_10006A3F4(a1 + 760, &dword_101DBA410, &unk_101C66300, &v132);
        sub_100064A18(v56[5], a2, a3);
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101798DDC();
        }

        v70 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v132) = 0;
          _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_FAULT, "Invalid instance", &v132, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101798E04(&v132);
          *buf = 0;
          LODWORD(v125) = 2;
          _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 17, "Invalid instance", buf, v125, v126);
          v119 = v118;
          sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v118);
          if (v119 != &v132)
          {
            free(v119);
          }
        }
      }

      if (!sub_10006A33C(a1, 1))
      {
        return sub_100005DA4();
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v71 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v132 = 0x104000100;
        _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v132, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v132);
        *buf = 67109120;
        *&buf[4] = 1;
        _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 0, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", buf);
        v121 = v120;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v120);
        if (v121 != &v132)
        {
          free(v121);
        }
      }

      if (sub_10006A33C(a1, 1))
      {
        goto LABEL_90;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v82 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v132) = 0;
        _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_FAULT, "Invalid instance", &v132, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        return sub_100005DA4();
      }

      goto LABEL_102;
    }

    v59 = sub_100072010(a2);
    v60 = CFEqual(v59, @"kSubscriptionChangeNotification");
    if (v60 && sub_10006FB38(v60, v61))
    {
      v62 = *a3;
      if (*a3)
      {
        memset(buf, 0, sizeof(buf));
        v130 = 1065353216;
        if (sub_10116E14C(v62, buf))
        {
          v128[0] = 0;
          v132 = v128;
          v63 = *(sub_1009160E8(buf, v128, &unk_101C66300, &v132) + 20);
          v132 = v128;
          v64 = *(sub_1009160E8(buf, v128, &unk_101C66300, &v132) + 22);
          if (qword_1025D4650 != -1)
          {
            sub_101798DDC();
          }

          v65 = qword_1025D4658;
          v66 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
          if (v66)
          {
            v68 = v128[0];
            __p[0] = v128;
            v69 = *(sub_1009160E8(buf, v128, &unk_101C66300, __p) + 21);
            v132 = 68290050;
            v133 = 2082;
            v134 = "";
            v135 = 1026;
            v136 = v68;
            v137 = 1026;
            v138 = v63;
            v139 = 1026;
            v140 = v69;
            v141 = 1026;
            v142 = v64;
            _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#timingadvance,kSubscriptionChangeNotification for sim1, sim:%{public}d, userDataPreferred:%{public}hhd, userDefaultVoice:%{public}hhd, isSimPresent:%{public}hhd}", &v132, 0x2Au);
          }

          if (v63 && v64)
          {
            *(a1 + 1232) = 0;
          }

          else if (sub_1000649A0(v66, v67))
          {
            HIDWORD(v125) = 1;
            v132 = &v125 + 1;
            v88 = *(sub_1009160E8(buf, &v125 + 1, &unk_101C66300, &v132) + 20);
            v132 = &v125 + 1;
            v89 = *(sub_1009160E8(buf, &v125 + 1, &unk_101C66300, &v132) + 22);
            if (qword_1025D4650 != -1)
            {
              sub_101798DDC();
            }

            v90 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v91 = HIDWORD(v125);
              __p[0] = &v125 + 4;
              v92 = *(sub_1009160E8(buf, &v125 + 1, &unk_101C66300, __p) + 21);
              v132 = 68290050;
              v133 = 2082;
              v134 = "";
              v135 = 1026;
              v136 = v91;
              v137 = 1026;
              v138 = v88;
              v139 = 1026;
              v140 = v92;
              v141 = 1026;
              v142 = v89;
              _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#timingadvance,kSubscriptionChangeNotification for sim2, sim:%{public}d, userDataPreferred:%{public}hhd, userDefaultVoice:%{public}hhd, isSimPresent:%{public}hhd}", &v132, 0x2Au);
            }

            if (v88 && v89)
            {
              *(a1 + 1232) = 1;
            }
          }
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_101798DDC();
          }

          v83 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v132) = 0;
            _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_ERROR, "#timingadvance,kSubscriptionChangeNotification,error fetching context", &v132, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101798E04(&v132);
            LOWORD(__p[0]) = 0;
            LODWORD(v125) = 2;
            _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 16, "#timingadvance,kSubscriptionChangeNotification,error fetching context", __p, v125, v126);
            v85 = v84;
            sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v84);
            if (v85 != &v132)
            {
              free(v85);
            }
          }
        }

        sub_1004906DC(buf);
      }

      return sub_100005DA4();
    }

    v72 = sub_100072010(a2);
    v73 = CFEqual(v72, @"kCLCellularTransmitStateNotification");
    if (!v73 || !sub_10006FB38(v73, v74) || *(a1 + 1237) != 1 || !*a3)
    {
      return sub_100005DA4();
    }

    sub_100005548(__p, *a3);
    if (sub_10001CBC0(__p, @"kCLCellularTransmitStateNotification", (a1 + 1236)))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v75 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v76 = *(a1 + 1236);
        LODWORD(v132) = 67109120;
        HIDWORD(v132) = v76;
        _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEBUG, "#nifc #timingadvance,kTransmitStateNotification, %d", &v132, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_216;
      }

      sub_101798E04(&v132);
      v77 = *(a1 + 1236);
      *buf = 67109120;
      *&buf[4] = v77;
      _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 2, "#nifc #timingadvance,kTransmitStateNotification, %d", buf);
      v79 = v78;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v78);
      if (v79 == &v132)
      {
        goto LABEL_216;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v86 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000238CC(@"kCLCellularTransmitStateNotification", &v132);
        v87 = v136 >= 0 ? &v132 : v132;
        *buf = 136446210;
        *&buf[4] = v87;
        _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEFAULT, "#Warning,#cts,key,%{public}s,notExist", buf, 0xCu);
        if (SHIBYTE(v136) < 0)
        {
          operator delete(v132);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_216;
      }

      sub_101798E04(&v132);
      v122 = qword_1025D4658;
      sub_1000238CC(@"kCLCellularTransmitStateNotification", buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v123 = buf;
      }

      else
      {
        v123 = *buf;
      }

      v128[0] = 136446210;
      *&v128[1] = v123;
      LODWORD(v125) = 12;
      _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, v122, 0, "#Warning,#cts,key,%{public}s,notExist", v128, v125, v126);
      v79 = v124;
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v79);
      if (v79 == &v132)
      {
        goto LABEL_216;
      }
    }

    free(v79);
LABEL_216:
    sub_100005DA4();
    return sub_100005DA4();
  }

  if (sub_1000052CC(v127, @"kSlotIdKey", &v126 + 1))
  {
    v11 = sub_1000646B0(SHIDWORD(v126), v10);
    v12 = v11;
    LODWORD(v126) = v11;
    if ((*(a1 + 792) & 1) == 0 && v11)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_100072010(a2);
        sub_1000238CC(v14, buf);
        v15 = (buf[23] & 0x80u) == 0 ? buf : *buf;
        LODWORD(v132) = 67109634;
        HIDWORD(v132) = v12;
        v133 = 2080;
        v134 = v15;
        v135 = 1024;
        v136 = HIDWORD(v126);
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#nilr,#nifc,#ins%d,onTelephonyNotification,%s,invalidInstance,slot,%d", &v132, 0x18u);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_101798E04(&v132);
        v16 = qword_1025D4658;
        v17 = sub_100072010(a2);
        sub_1000238CC(v17, __p);
        if (SHIBYTE(__p[2]) >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        *buf = 67109634;
        *&buf[4] = v12;
        *&buf[8] = 2080;
        *&buf[10] = v18;
        *&buf[18] = 1024;
        *&buf[20] = HIDWORD(v126);
        LODWORD(v125) = 24;
        _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, v16, 16, "#nilr,#nifc,#ins%d,onTelephonyNotification,%s,invalidInstance,slot,%d", buf, v125, v126);
        v20 = v19;
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_52;
      }

      return sub_100005DA4();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101798DDC();
    }

    v31 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v32 = sub_100072010(a2);
      sub_1000238CC(v32, &v132);
      v33 = v136 >= 0 ? &v132 : v132;
      *buf = 67109378;
      *&buf[4] = v12;
      *&buf[8] = 2080;
      *&buf[10] = v33;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,#ins%d,onTelephonyNotification,%s", buf, 0x12u);
      if (SHIBYTE(v136) < 0)
      {
        operator delete(v132);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101798E04(&v132);
      v95 = qword_1025D4658;
      v96 = sub_100072010(a2);
      sub_1000238CC(v96, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v97 = buf;
      }

      else
      {
        v97 = *buf;
      }

      LODWORD(__p[0]) = 67109378;
      HIDWORD(__p[0]) = v12;
      LOWORD(__p[1]) = 2080;
      *(&__p[1] + 2) = v97;
      LODWORD(v125) = 18;
      _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, v95, 0, "#nilr,#nifc,#ins%d,onTelephonyNotification,%s", __p, v125);
      v99 = v98;
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v99);
      if (v99 != &v132)
      {
        free(v99);
      }
    }

    if (qword_1025D4650 != -1)
    {
      sub_101798DDC();
    }

    v34 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v132) = 67109120;
      HIDWORD(v132) = v12;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v132, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101798E04(&v132);
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 0, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", buf);
      v101 = v100;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v100);
      if (v101 != &v132)
      {
        free(v101);
      }
    }

    if (sub_10006A33C(a1, v12))
    {
      v132 = &v126;
      v35 = sub_10006A3F4(a1 + 760, &v126, &unk_101C66300, &v132);
LABEL_111:
      sub_100064A18(v35[5], a2, a3);
      return sub_100005DA4();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101798DDC();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v132) = 0;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "Invalid instance", &v132, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      return sub_100005DA4();
    }

    sub_101798E04(&v132);
    *buf = 0;
    LODWORD(v125) = 2;
    _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, qword_1025D4658, 17, "Invalid instance", buf, v125, v126);
    v20 = v42;
    sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v42);
LABEL_150:
    if (v20 != &v132)
    {
LABEL_151:
      free(v20);
      return sub_100005DA4();
    }

    return sub_100005DA4();
  }

  if (qword_1025D4650 != -1)
  {
    sub_101798DDC();
  }

  v24 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v25 = sub_100072010(a2);
    sub_1000238CC(v25, &v132);
    v26 = v136 >= 0 ? &v132 : v132;
    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "#nilr,#nifc,onTelephonyNotification,%s,slot,na", buf, 0xCu);
    if (SHIBYTE(v136) < 0)
    {
      operator delete(v132);
    }
  }

  if (sub_10000A100(121, 0))
  {
    sub_101798E04(&v132);
    v27 = qword_1025D4658;
    v28 = sub_100072010(a2);
    sub_1000238CC(v28, buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v29 = buf;
    }

    else
    {
      v29 = *buf;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v29;
    _os_log_send_and_compose_impl(2, 0, &v132, 1628, dword_100000000, v27, 16, "#nilr,#nifc,onTelephonyNotification,%s,slot,na", __p);
    v20 = v30;
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

LABEL_52:
    sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v20);
    if (v20 == &v132)
    {
      return sub_100005DA4();
    }

    goto LABEL_151;
  }

  return sub_100005DA4();
}

void sub_10006A238(_Unwind_Exception *a1)
{
  sub_100005DA4();
  sub_100005DA4();
  _Unwind_Resume(a1);
}

BOOL sub_10006A33C(uint64_t a1, signed int a2)
{
  v2 = 0;
  v5 = a2;
  if (a2 <= 1)
  {
    if ((a2 == 0) | *(a1 + 792) & 1)
    {
      v2 = *(a1 + 768);
      if (v2)
      {
        v3 = a1 + 768;
        do
        {
          if (*(v2 + 32) >= a2)
          {
            v3 = v2;
          }

          v2 = *(v2 + 8 * (*(v2 + 32) < a2));
        }

        while (v2);
        if (v3 == a1 + 768 || *(v3 + 32) > a2)
        {
          return 0;
        }

        else
        {
          v6 = &v5;
          return sub_10006A3F4(a1 + 760, &v5, &unk_101C66300, &v6)[5] != 0;
        }
      }
    }
  }

  return v2;
}

uint64_t *sub_10006A3F4(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

id *sub_10006A4E8(id *a1, void *a2)
{
  *a1 = 0;
  v3 = [a2 valueForKey:@"kCellRefreshNotification"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *a1 = v3;
    v4 = v3;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*a1 count];
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#clct,CLCTCellInfo, received cellList size,%lu", &v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CC368(a1);
  }

  return a1;
}

BOOL sub_10006A604(uint64_t *a1, CFArrayRef theArray, int a3)
{
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v5 = *a1;
  for (i = a1[1]; i != v5; sub_1000720CC(i))
  {
    i -= 696;
  }

  a1[1] = v5;
  if (!theArray)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C6DA0();
    }

    v94 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_DEBUG, "CellService, convert, empty CellList", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C923C(buf);
      LOWORD(v124[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "CellService, convert, empty CellList", v124, 2);
      v99 = v98;
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v98);
      if (v99 != buf)
      {
        free(v99);
      }
    }

    goto LABEL_126;
  }

  Count = CFArrayGetCount(theArray);
  if (qword_1025D4620 != -1)
  {
    sub_1018C6DA0();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    *&buf[4] = Count;
    *&buf[8] = 1026;
    *&buf[10] = a3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CellService, convertCells, %{public}d, neighbors, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C923C(buf);
    LODWORD(v124[0]) = 67240448;
    HIDWORD(v124[0]) = Count;
    LOWORD(v124[1]) = 1026;
    *(&v124[1] + 2) = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "CellService, convertCells, %{public}d, neighbors, %{public}d", v124, 14);
    v97 = v96;
    sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v96);
    if (v97 != buf)
    {
      free(v97);
    }
  }

  v102 = theArray;
  if (Count >= 1)
  {
    v8 = 0;
    key = kCTCellMonitorDerivedMCC;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 == CFDictionaryGetTypeID())
      {
        v105 = ValueAtIndex;
        if (CFDictionaryContainsKey(ValueAtIndex, key))
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018C6BA0();
          }

          v11 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "CELL_LOC: derivedMCC dictionary", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018C7228(buf);
            LOWORD(v124[0]) = 0;
            LODWORD(v100) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "CELL_LOC: derivedMCC dictionary", v124, v100);
            v70 = v69;
            sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v69);
            if (v70 != buf)
            {
              free(v70);
            }
          }

          sub_100585A08(&v105, &v106);
        }

        else
        {
          sub_10006BCBC(v124, &v105);
          if (HIDWORD(v124[0]) == 1)
          {
            v14 = a3;
          }

          else
          {
            v14 = 0;
          }

          if (!HIDWORD(v124[0]) || v14)
          {
            if (qword_1025D4620 != -1)
            {
              sub_100244210();
            }

            v27 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
            {
              sub_100075160(v124, buf);
              v28 = buf[23];
              v29 = *buf;
              sub_1000753AC(v124, v113);
              v30 = buf;
              if (v28 < 0)
              {
                v30 = v29;
              }

              v31 = v113;
              if (v116 < 0)
              {
                v31 = *v113;
              }

              *__p = 136446467;
              *&__p[4] = v30;
              v121 = 2081;
              v122 = v31;
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CellService, convert, add, %{public}s, %{private}s", __p, 0x16u);
              if (SHIBYTE(v116) < 0)
              {
                operator delete(*v113);
              }

              theArray = v102;
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018C923C(buf);
              v71 = qword_1025D4628;
              sub_100075160(v124, v113);
              v72 = SHIBYTE(v116);
              v73 = *v113;
              sub_1000753AC(v124, __p);
              v74 = v113;
              if (v72 < 0)
              {
                v74 = v73;
              }

              v75 = __p;
              if (v123 < 0)
              {
                v75 = *__p;
              }

              *v109 = 136446467;
              *&v109[4] = v74;
              v110 = 2081;
              v111 = v75;
              LODWORD(v100) = 22;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v71, 2, "CellService, convert, add, %{public}s, %{private}s", v109, v100);
              v77 = v76;
              if (v123 < 0)
              {
                operator delete(*__p);
              }

              theArray = v102;
              if (SHIBYTE(v116) < 0)
              {
                operator delete(*v113);
              }

              sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v77);
              if (v77 != buf)
              {
                free(v77);
              }
            }

            *&buf[32] = v126;
            v169[0] = v127[0];
            *(v169 + 12) = *(v127 + 12);
            *buf = *v124;
            *&buf[16] = v125;
            v170 = v128;
            v172 = 0;
            v171 = 0uLL;
            sub_10038EB38(&v171, v129, v130, (v130 - v129) >> 2);
            v183 = v141;
            v184[0] = v142[0];
            *(v184 + 12) = *(v142 + 12);
            v179 = v137;
            v180 = v138;
            v181 = v139;
            v182 = v140;
            v175 = v133;
            v176 = v134;
            v177 = v135;
            v178 = v136;
            v173 = v131;
            v174 = v132;
            if (SHIBYTE(v144) < 0)
            {
              sub_100007244(&v185, __src, *(&__src + 1));
            }

            else
            {
              v185 = __src;
              v186 = v144;
            }

            v195 = v153;
            v196 = v154;
            v197 = v155;
            v191 = v149;
            v192 = v150;
            v193 = v151;
            v194 = v152;
            v187 = v145;
            v188 = v146;
            v189 = v147;
            v190 = v148;
            v206 = v164;
            v207 = v165;
            v208 = v166;
            v209 = v167;
            v202 = v160;
            v203 = v161;
            v204 = v162;
            v205 = v163;
            v198 = v156;
            v199 = v157;
            v200 = v158;
            v201 = v159;
            v32 = a1[1];
            if (v32 >= a1[2])
            {
              v63 = sub_10006F718(a1, buf);
              v64 = SHIBYTE(v186);
              a1[1] = v63;
              if (v64 < 0)
              {
                operator delete(v185);
              }
            }

            else
            {
              *v32 = *buf;
              v33 = *&buf[16];
              v34 = *&buf[32];
              v35 = v169[0];
              *(v32 + 60) = *(v169 + 12);
              *(v32 + 32) = v34;
              *(v32 + 48) = v35;
              *(v32 + 16) = v33;
              *(v32 + 80) = v170;
              *(v32 + 96) = 0;
              *(v32 + 104) = 0;
              *(v32 + 88) = 0;
              *(v32 + 88) = v171;
              *(v32 + 104) = v172;
              v171 = 0uLL;
              v172 = 0;
              *(v32 + 112) = v173;
              v36 = v174;
              v37 = v175;
              v38 = v177;
              *(v32 + 160) = v176;
              *(v32 + 176) = v38;
              *(v32 + 128) = v36;
              *(v32 + 144) = v37;
              v39 = v178;
              v40 = v179;
              v41 = v181;
              *(v32 + 224) = v180;
              *(v32 + 240) = v41;
              *(v32 + 192) = v39;
              *(v32 + 208) = v40;
              v42 = v182;
              v43 = v183;
              v44 = v184[0];
              *(v32 + 300) = *(v184 + 12);
              *(v32 + 272) = v43;
              *(v32 + 288) = v44;
              *(v32 + 256) = v42;
              v45 = v185;
              *(v32 + 336) = v186;
              *(v32 + 320) = v45;
              v186 = 0;
              v185 = 0uLL;
              v47 = v188;
              v46 = v189;
              *(v32 + 344) = v187;
              *(v32 + 360) = v47;
              *(v32 + 376) = v46;
              v48 = v193;
              v50 = v190;
              v49 = v191;
              *(v32 + 424) = v192;
              *(v32 + 440) = v48;
              *(v32 + 392) = v50;
              *(v32 + 408) = v49;
              v52 = v195;
              v51 = v196;
              v53 = v194;
              *(v32 + 504) = v197;
              *(v32 + 472) = v52;
              *(v32 + 488) = v51;
              *(v32 + 456) = v53;
              v54 = v198;
              v55 = v199;
              v56 = v201;
              *(v32 + 544) = v200;
              *(v32 + 560) = v56;
              *(v32 + 512) = v54;
              *(v32 + 528) = v55;
              v57 = v202;
              v58 = v203;
              v59 = v205;
              *(v32 + 608) = v204;
              *(v32 + 624) = v59;
              *(v32 + 576) = v57;
              *(v32 + 592) = v58;
              v60 = v206;
              v61 = v207;
              v62 = v208;
              *(v32 + 688) = v209;
              *(v32 + 656) = v61;
              *(v32 + 672) = v62;
              *(v32 + 640) = v60;
              a1[1] = v32 + 696;
            }

            if (v171)
            {
              *(&v171 + 1) = v171;
              operator delete(v171);
            }
          }

          else
          {
            if (qword_1025D4620 != -1)
            {
              sub_100244210();
            }

            v15 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
            {
              sub_100075160(v124, v113);
              v16 = SHIBYTE(v116);
              v17 = *v113;
              sub_1000753AC(v124, __p);
              v18 = v113;
              if (v16 < 0)
              {
                v18 = v17;
              }

              v19 = __p;
              if (v123 < 0)
              {
                v19 = *__p;
              }

              *buf = 136446979;
              *&buf[4] = v18;
              *&buf[12] = 2081;
              *&buf[14] = v19;
              *&buf[22] = 1026;
              *&buf[24] = HIDWORD(v124[0]) == 0;
              *&buf[28] = 1026;
              *&buf[30] = HIDWORD(v124[0]) == 1;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "CellService, convert, ignore, %{public}s, %{private}s, serving, %{public}d, neighbor, %{public}d", buf, 0x22u);
              if (v123 < 0)
              {
                operator delete(*__p);
              }

              theArray = v102;
              if (SHIBYTE(v116) < 0)
              {
                operator delete(*v113);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018C923C(buf);
              v20 = qword_1025D4628;
              sub_100075160(v124, __p);
              v21 = v123;
              v22 = *__p;
              sub_1000753AC(v124, v109);
              v23 = __p;
              if (v21 < 0)
              {
                v23 = v22;
              }

              v24 = v109;
              if (v112 < 0)
              {
                v24 = *v109;
              }

              *v113 = 136446979;
              *&v113[4] = v23;
              v114 = 2081;
              v115 = v24;
              v116 = 1026;
              v117 = HIDWORD(v124[0]) == 0;
              v118 = 1026;
              v119 = HIDWORD(v124[0]) == 1;
              LODWORD(v100) = 34;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v20, 1, "CellService, convert, ignore, %{public}s, %{private}s, serving, %{public}d, neighbor, %{public}d", v113, v100);
              v26 = v25;
              if (v112 < 0)
              {
                operator delete(*v109);
              }

              theArray = v102;
              if (v123 < 0)
              {
                operator delete(*__p);
              }

              sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v26);
              if (v26 != buf)
              {
                free(v26);
              }
            }
          }

          if (SHIBYTE(v144) < 0)
          {
            operator delete(__src);
          }

          if (v129)
          {
            v130 = v129;
            operator delete(v129);
          }
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_100244210();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          TypeID = CFDictionaryGetTypeID();
          *buf = 134349056;
          *&buf[4] = TypeID;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CellService, convert, invalid, %{public}ld", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018C923C(buf);
          v65 = qword_1025D4628;
          v66 = CFDictionaryGetTypeID();
          LODWORD(v124[0]) = 134349056;
          *(v124 + 4) = v66;
          LODWORD(v100) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v65, 16, "CellService, convert, invalid, %{public}ld", v124, v100);
          v68 = v67;
          sub_100152C7C("Generic", 1, 0, 0, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v67);
          if (v68 != buf)
          {
            free(v68);
          }
        }
      }

      ++v8;
    }

    while (Count != v8);
  }

  v78 = v106;
  if (v107 != v106)
  {
    v79 = *a1;
    if (a1[1] != *a1)
    {
      v80 = 0;
      v81 = 0;
      do
      {
        if ((*(v79 + v80 + 8) - 3) <= 2)
        {
          sub_10123F038(v79 + v80, &v106);
          if (qword_1025D4620 != -1)
          {
            sub_100244210();
          }

          v82 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            sub_100075160(*a1 + v80, buf);
            v83 = buf[23];
            v84 = *buf;
            sub_1000753AC(*a1 + v80, v124);
            v85 = buf;
            if (v83 < 0)
            {
              v85 = v84;
            }

            v86 = v124;
            if (SBYTE7(v125) < 0)
            {
              v86 = v124[0];
            }

            *v113 = 136446467;
            *&v113[4] = v85;
            v114 = 2081;
            v115 = v86;
            _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEBUG, "CellService, convert, derive, %{public}s, %{private}s", v113, 0x16u);
            if (SBYTE7(v125) < 0)
            {
              operator delete(v124[0]);
            }

            theArray = v102;
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018C923C(buf);
            v87 = qword_1025D4628;
            sub_100075160(*a1 + v80, v124);
            v88 = SBYTE7(v125);
            v89 = v124[0];
            sub_1000753AC(*a1 + v80, v113);
            v90 = v124;
            if (v88 < 0)
            {
              v90 = v89;
            }

            v91 = v113;
            if (v116 < 0)
            {
              v91 = *v113;
            }

            *__p = 136446467;
            *&__p[4] = v90;
            v121 = 2081;
            v122 = v91;
            LODWORD(v100) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v87, 2, "CellService, convert, derive, %{public}s, %{private}s", __p, v100);
            v93 = v92;
            if (SHIBYTE(v116) < 0)
            {
              operator delete(*v113);
            }

            theArray = v102;
            if (SBYTE7(v125) < 0)
            {
              operator delete(v124[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v93);
            if (v93 != buf)
            {
              free(v93);
            }
          }
        }

        ++v81;
        v79 = *a1;
        v80 += 696;
      }

      while (v81 < 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3));
    }

LABEL_126:
    v78 = v106;
  }

  if (v78)
  {
    v107 = v78;
    operator delete(v78);
  }

  return theArray != 0;
}

void sub_10006B56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10006B688(uint64_t a1, CFDictionaryRef *a2)
{
  *(a1 + 4) = 0xB00000003;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(a1 + 12) = v4;
  v5 = (a1 + 12);
  *a1 = 0;
  *(a1 + 44) = v4;
  v6 = (a1 + 44);
  *(a1 + 28) = v4;
  *(a1 + 60) = v4;
  sub_10006BB6C(a1 + 80);
  *(a1 + 536) = -1;
  *(a1 + 528) = -1;
  *(a1 + 520) = -1;
  *(a1 + 512) = -1;
  *(a1 + 544) = 0u;
  *(a1 + 560) = -1;
  *(a1 + 568) = -1;
  *(a1 + 576) = -1;
  *(a1 + 580) = xmmword_101C7F0A0;
  *(a1 + 600) = -1;
  *(a1 + 608) = -1;
  *(a1 + 616) = -1;
  *(a1 + 624) = -1;
  *(a1 + 632) = -1;
  *(a1 + 640) = 0u;
  *(a1 + 672) = -1;
  *(a1 + 664) = -1;
  *(a1 + 656) = -1;
  *(a1 + 680) = 0xFFFFFFFF00000000;
  *(a1 + 688) = 0;
  sub_100005548(v22, *a2);
  v21 = 0;
  v7 = sub_10006EB64(v22, kCTCellMonitorCellRadioAccessTechnology, &v21);
  if (!v21)
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    *(a1 + 8) = sub_10006BCC0(v21);
  }

  v20 = 0;
  v8 = sub_10006EB64(v22, kCTCellMonitorCellType, &v20);
  if (!v20)
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    *(a1 + 4) = sub_10006F020(v20);
  }

  v9 = *(a1 + 8);
  if ((v9 - 3) <= 2)
  {
    v10 = sub_100620F84(a2, a1 + 80);
LABEL_18:
    *a1 = v10;
    goto LABEL_19;
  }

  if (v9 <= 5)
  {
    if (v9 >= 3)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      v10 = sub_10006F09C(a2, a1 + 512);
      goto LABEL_18;
    }

    if (v9 != 7)
    {
      goto LABEL_31;
    }

LABEL_17:
    v10 = sub_100621F84(a2, v5);
    goto LABEL_18;
  }

  if (v9 == 9)
  {
    v10 = sub_100622668(a2, v6);
    goto LABEL_18;
  }

  if (v9 == 10)
  {
    *a1 = sub_1001558BC(a2, a1 + 600);
    if (qword_1025D4620 != -1)
    {
      sub_101B7C7CC();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "nrCell dictionary received from CT", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7C7F4(buf);
      *v23 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "nrCell dictionary received from CT", v23, 2);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 2, "CLCell::CLCell(const CFDictionaryRef &)", "%s\n", v13);
      if (v14 != buf)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_19;
  }

LABEL_31:
  if (qword_1025D48A0 != -1)
  {
    sub_101B7C838();
  }

  v15 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    sub_10123DED0(a1, buf);
    v16 = v28 >= 0 ? buf : *buf;
    *v23 = 136446210;
    *&v23[4] = v16;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "CELL_LOC: Invalid cell rat: %{public}s", v23, 0xCu);
    if (v28 < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B7C788(buf);
    v17 = qword_1025D48A8;
    sub_10123DED0(a1, v23);
    v18 = v24 >= 0 ? v23 : *v23;
    v25 = 136446210;
    v26 = v18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v17, 17, "CELL_LOC: Invalid cell rat: %{public}s", &v25, 12);
    v14 = v19;
    if (v24 < 0)
    {
      operator delete(*v23);
    }

    sub_100152C7C("Generic", 1, 0, 0, "CLCell::CLCell(const CFDictionaryRef &)", "%s\n", v14);
    if (v14 != buf)
    {
LABEL_46:
      free(v14);
    }
  }

LABEL_19:
  sub_100005DA4();
  return a1;
}

void sub_10006BB2C(_Unwind_Exception *a1)
{
  sub_100005DA4();
  sub_10064A5B4(v1 + 80);
  _Unwind_Resume(a1);
}

uint64_t sub_10006BB6C(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0xFFFF;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 104) = _Q0;
  *(a1 + 120) = _Q0;
  v8 = _Q0;
  *(a1 + 136) = _Q0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0xBFF0000000000000;
  *(a1 + 172) = 0;
  *(a1 + 164) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0xBFF0000000000000;
  *(a1 + 192) = 0x7FFFFFFF;
  *(a1 + 212) = 0;
  *(a1 + 196) = 0;
  *(a1 + 204) = 0;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0x30000000BLL;
  *(a1 + 232) = -1;
  sub_10000EC00((a1 + 240), "");
  *(a1 + 264) = 0xFFFF;
  *(a1 + 276) = 0;
  *(a1 + 268) = 0;
  *(a1 + 284) = xmmword_101C75BF0;
  *(a1 + 300) = v8;
  *(a1 + 316) = v8;
  *(a1 + 332) = v8;
  *(a1 + 348) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0xBFF0000000000000;
  *(a1 + 376) = 0;
  *(a1 + 380) = 0xBFF0000000000000;
  *(a1 + 388) = 0x7FFFFFFF;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 420) = -1;
  return a1;
}

void sub_10006BCA0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006BCC0(const void *a1)
{
  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyGSM))
  {
    return 0;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyLTE))
  {
    return 6;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyUMTS))
  {
    return 7;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyUTRAN))
  {
    return 2;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyCDMA1x))
  {
    return 3;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyCDMAEVDO))
  {
    return 4;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyCDMAHybrid))
  {
    return 5;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyUTRAN2))
  {
    return 9;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyNR))
  {
    return 10;
  }

  return 11;
}

BOOL sub_10006BDFC(uint64_t a1)
{
  v4 = 0;
  v2 = 1;
  if (!sub_10000608C(a1, &v4, 1))
  {
    v5 = 3;
    v2 = 1;
    if (!sub_10000608C(a1, &v5, 1))
    {
      v6 = 4;
      return sub_10000608C(a1, &v6, 1) != 0;
    }
  }

  return v2;
}

const void **sub_10006BE80(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10006E914(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_10006BEC4(float *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_10006C0F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100028030(a3);
  result = 0;
  if (v6 && *(a3 + 136))
  {
    v8 = *(a1 + 40);
    if (0x8E38E38E38E38E39 * ((*(a1 + 48) - v8) >> 4) <= a2)
    {
      sub_10046F324();
    }

    v9 = v8 + 144 * a2;
    v26 = off_1024DE5F8;
    v10 = *(v9 + 8);
    v11 = *(v9 + 24);
    v12 = *(v9 + 40);
    v30 = *(v9 + 56);
    v29 = v12;
    v28 = v11;
    v27 = v10;
    v13 = *(v9 + 72);
    v14 = *(v9 + 88);
    v15 = *(v9 + 104);
    v34 = *(v9 + 120);
    v33 = v15;
    v32 = v14;
    v31 = v13;
    v35 = *(v9 + 128);
    v16 = sub_100028030(&v26);
    result = 1;
    if (v16 && BYTE8(v35))
    {
      if (*(a3 + 40) >= *&v29)
      {
        return 0;
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_101907EB4();
        }

        v17 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v18 = (a1 + 16);
          if (*(a1 + 39) < 0)
          {
            v18 = *v18;
          }

          v19 = *(a3 + 40);
          v20 = vcvtpd_s64_f64(*(a3 + 16) / *(a1 + 8));
          *buf = 136446978;
          v45 = v18;
          v46 = 2050;
          v47 = v29;
          v48 = 2050;
          v49 = v19;
          v50 = 1026;
          v51 = v20;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "%{public}s,replace old location based on hunc: old hunc %{public}.1f new hunc %{public}.1f,time_bin,%{public}d", buf, 0x26u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101907EB4();
          }

          v21 = (a1 + 16);
          if (*(a1 + 39) < 0)
          {
            v21 = *v21;
          }

          v22 = *(a3 + 40);
          v23 = vcvtpd_s64_f64(*(a3 + 16) / *(a1 + 8));
          v36 = 136446978;
          v37 = v21;
          v38 = 2050;
          v39 = v29;
          v40 = 2050;
          v41 = v22;
          v42 = 1026;
          v43 = v23;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "%{public}s,replace old location based on hunc: old hunc %{public}.1f new hunc %{public}.1f,time_bin,%{public}d", &v36, 38);
          v25 = v24;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTimeBinBuffer::shouldReplaceExistingLocation(const size_t, const CLLocationBufferBase::LCBufferLocation &)", "%s\n", v24);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        return 1;
      }
    }
  }

  return result;
}

id sub_10006C414(uint64_t a1, uint64_t a2)
{
  result = sub_10006BDFC(a1);
  if (result && *(a1 + 2797) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A60CCC();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136446210;
      v7 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@CellFlow, requestTimingAdvanceInfo, reason, %{public}s", &v6, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A60E74();
    }

    return [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  }

  return result;
}

void sub_10006C530(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 256) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101955644();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLSubHarvesterTraceExternal::onPressure", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101955658();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSubHarvesterTraceExternal::onPressure, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  (*(**(a2 + 304) + 24))(*(a2 + 304), a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10006C714(uint64_t a1, uint64_t a2)
{
  result = sub_100062F64(a1 - 352);
  if ((result & 1) == 0)
  {

    return sub_10006C768(a1 + 256, a2);
  }

  return result;
}

uint64_t sub_10006C768(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 288);
  v5 = *(a2 + 8);
  if (v4 == 1.79769313e308 || v5 - v4 >= 0.899999976)
  {
    *(result + 288) = v5;
    v6 = objc_alloc_init(CLPIndoorEvent);
    [v6 setType:5];
    [v6 setPressure:objc_alloc_init(CLPIndoorPressure)];
    [objc_msgSend(v6 "pressure")];
    v7 = *a2 / 1000.0;
    v8 = [v6 pressure];
    *&v9 = v7;
    [v8 setPressure:v9];
    v10 = *(a2 + 40);
    v11 = [v6 pressure];
    LODWORD(v12) = v10;
    [v11 setTemperature:v12];
    [*(v3 + 48) addObject:v6];

    return sub_100063090(v3);
  }

  return result;
}

void sub_10006C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018C9738();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLTelephonyService::ctServerConnectionCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018C974C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTelephonyService::ctServerConnectionCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  v10 = [*(a4 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006CAAC;
  v11[3] = &unk_1024605D8;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  [v10 sync:v11];
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

const void *sub_10006CABC(uint64_t a1, const void **a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      v22 = 0;
      v23 = 2082;
      *v24 = "";
      *&v24[8] = 1026;
      *&v24[10] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v6 = _CTServerConnectionCellMonitorCopyCellInfo();
    v7 = v6;
    v8 = HIDWORD(v6);
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a2;
      *buf = 67109888;
      v22 = v7;
      v23 = 1024;
      *v24 = v8;
      *&v24[4] = 2048;
      *&v24[6] = v10;
      v25 = 1024;
      v26 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: _CTServerConnectionCellMonitorCopyCellInfo failed err(%d,%d) cellsArray(%p) valid(%d)", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v13 = *a2;
      LOWORD(v17) = 1024;
      HIWORD(v17) = v8;
      v18 = v13;
      v19 = 1024;
      v20 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning CELL_LOC: _CTServerConnectionCellMonitorCopyCellInfo failed err(%d,%d) cellsArray(%p) valid(%d)", &v16, 30, __PAIR64__(v7, 67109888), v17);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::createCTCellArray(CFArrayRef *)", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    result = *a2;
    if (*a2)
    {
      CFRelease(result);
      result = 0;
      *a2 = 0;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v12 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018CA460();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006CDF8(float *a1, uint64_t a2, const __CFString *a3, const __CFDictionary *a4)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000238CC(a3, __p);
    v8 = __p[23] >= 0 ? __p : *__p;
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CTService: received notification %s", buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9F38(a3);
  }

  if (CFEqual(kCTRegistrationCellChangedNotification, a3) || CFEqual(kCTRegistrationStatusChangedNotification, a3))
  {
    v9 = sub_100005548(values, a4);
    if ((sub_10001CBC0(v9, kCTRegistrationInHomeCountry, a1 + 161) & 1) == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018C79A0();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "couldn't get kCTRegistrationInHomeCountry, keeping current value", __p, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CA050(__p);
        *buf = 0;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4608, 16, "couldn't get kCTRegistrationInHomeCountry, keeping current value", buf, 2);
        v35 = v34;
        sub_100152C7C("Generic", 1, 0, 0, "void CLTelephonyService::ctServerConnectionCallback(CTServerConnectionRef, CFStringRef, CFDictionaryRef)", "%s\n", v34);
        if (v35 != __p)
        {
          free(v35);
        }
      }
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018C79A0();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000238CC(a3, buf);
      v12 = v48 >= 0 ? buf : *buf;
      v13 = *(a1 + 161);
      *__p = 68289538;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2082;
      *&__p[20] = v12;
      v50 = 1026;
      v51 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updated kCTRegistrationInHomeCountry from, notification:%{public, location:escape_only}s, fInHomeCountry:%{public}hhd}", __p, 0x22u);
      if (v48 < 0)
      {
        operator delete(*buf);
      }
    }

    sub_1005849E0(a1);
    sub_100005DA4();
  }

  if (CFEqual(kCTIndicatorRadioTransmitNotification, a3))
  {
    LOBYTE(v44) = 0;
    sub_100005548(buf, a4);
    if (sub_10001CBC0(buf, kCTRadioTransmitDCHStatus, &v44))
    {
      v14 = v44;
      if (v44 != 1)
      {
        a1[34] = 0.0;
LABEL_42:
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }

        v16 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 34);
          *__p = 67109120;
          *&__p[4] = v17;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CTService: cell transmit status is %d", __p, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C7228(__p);
          v31 = *(a1 + 34);
          LODWORD(values[0]) = 67109120;
          HIDWORD(values[0]) = v31;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D48A8, 2, "CTService: cell transmit status is %d", values);
          v33 = v32;
          sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::ctServerConnectionCallback(CTServerConnectionRef, CFStringRef, CFDictionaryRef)", "%s\n", v32);
          if (v33 != __p)
          {
            free(v33);
          }
        }

LABEL_47:
        sub_100005DA4();
        return (*(*a1 + 256))(a1, a3, a4);
      }
    }

    else
    {
      v14 = -1;
    }

    *(a1 + 34) = v14;
    goto LABEL_42;
  }

  if (CFEqual(kCTConnectionInvalidatedNotification, a3))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v15 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CTService: CommCenter server connection invalidated", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CA094();
    }

    *(a1 + 160) = 0;
    sub_10090C1C4((a1 + 44));
    sub_100583E04(a1, 1);
  }

  else if (CFEqual(kCTDaemonReadyNotification, a3))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v19 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CTService: CommCenter server connection ready", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CA180();
    }

    *(a1 + 160) = 1;
    sub_10090C264(a1 + 176);
    sub_100583A88(a1);
  }

  else if (CFEqual(kCTCellMonitorUpdateNotification, a3))
  {
    *buf = 0;
    if (sub_10006CABC(a1, buf))
    {
      if (qword_1025D4620 != -1)
      {
        sub_100244210();
      }

      v20 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        Count = CFArrayGetCount(*buf);
        *__p = 134217984;
        *&__p[4] = Count;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "@CellService, ctupdate, list, %lu", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CA358(buf);
      }

      *__p = @"kCellRefreshNotification";
      values[0] = *buf;
      v22 = CFDictionaryCreate(0, __p, values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v23 = v22;
      CFRelease(*buf);
      (*(*a1 + 256))(a1, @"kCellRefreshNotification", v22);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_100244210();
      }

      v29 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CellService, outcome, emptylist, CTService", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CA26C();
      }
    }
  }

  else
  {
    if (CFEqual(kCTRadioModuleUplinkChangedNotification, a3))
    {
      v24 = sub_100005548(values, a4);
      v44 = -1;
      v43 = -1;
      if (sub_10016B550(v24, kCTRadioModuleUplinkFrequencyValue, &v44) && (sub_1004FB850(values, kCTRadioModuleUplinkBandwidthValue, &v43) & 1) != 0)
      {
        v25 = v43;
        a1[41] = v44;
        a1[42] = v25;
        if (qword_1025D4600 != -1)
        {
          sub_1018C79A0();
        }

        v26 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v27 = a1[41];
          v28 = a1[42];
          *__p = 134349312;
          *&__p[4] = v27;
          *&__p[12] = 2050;
          *&__p[14] = v28;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#imd,kCTRadioModuleUplinkChangedNotification,freq(Hz),%{public}f,bw(Hz),%{public}f", __p, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CA050(__p);
          v38 = a1[41];
          v39 = a1[42];
          *buf = 134349312;
          *&buf[4] = v38;
          v46 = 2050;
          v47 = v39;
          LODWORD(v42) = 22;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4608, 2, "#imd,kCTRadioModuleUplinkChangedNotification,freq(Hz),%{public}f,bw(Hz),%{public}f", buf, v42);
          v41 = v40;
          sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::ctServerConnectionCallback(CTServerConnectionRef, CFStringRef, CFDictionaryRef)", "%s\n", v40);
          if (v41 != __p)
          {
            free(v41);
          }
        }

        sub_100583F74(a1, a1[41], a1[42]);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018C79A0();
        }

        v30 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_ERROR, "#imd,#cterror,couldn't get kCTRadioModuleUplinkChangedNotification values", __p, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018CA050(__p);
          *buf = 0;
          LODWORD(v42) = 2;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4608, 16, "#imd,#cterror,couldn't get kCTRadioModuleUplinkChangedNotification values", buf, v42);
          v37 = v36;
          sub_100152C7C("Generic", 1, 0, 0, "void CLTelephonyService::ctServerConnectionCallback(CTServerConnectionRef, CFStringRef, CFDictionaryRef)", "%s\n", v36);
          if (v37 != __p)
          {
            free(v37);
          }
        }
      }

      goto LABEL_47;
    }

    if (CFEqual(kCTCellularTransmitStateNotification, a3))
    {
      sub_10058415C(a1, a4);
    }
  }

  return (*(*a1 + 256))(a1, a3, a4);
}

const void **sub_10006D908(uint64_t a1, uint64_t a2, const void *a3)
{
  sub_10006E850(&v7, a2);
  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  sub_10006DE24(a1, &v7, &v6, 0, -1);
  return sub_10006E914(&v6);
}

void sub_10006DA60(void *a1, unsigned int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v6 = sub_10006E830(a2, a2);
    v8 = a1 + 8;
    v7 = a1[8];
    if (v7)
    {
      v9 = (a1 + 8);
      do
      {
        if (*(v7 + 32) >= v6)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v6));
      }

      while (v7);
      if (v9 != v8 && v6 >= *(v9 + 32))
      {
        v40 = v9;
        v10 = sub_10006E308(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v39 = v16;
              sub_10006E368(a1, &v39, &v40, a3);
              v22 = sub_10006E830(a2, v21);
              v23 = a1[8];
              if (!v23)
              {
                return;
              }

              v24 = (a1 + 8);
              do
              {
                if (*(v23 + 32) >= v22)
                {
                  v24 = v23;
                }

                v23 = *(v23 + 8 * (*(v23 + 32) < v22));
              }

              while (v23);
              if (v24 == v8 || v22 < *(v24 + 32))
              {
                return;
              }

              v40 = v24;
              v26 = *(v24 + 48);
              v11 = (v24 + 48);
              v25 = v26;
              if (v26)
              {
                v27 = v11;
                v28 = v25;
                do
                {
                  if (*(v28 + 28) >= v17)
                  {
                    v27 = v28;
                  }

                  v28 = *(v28 + 8 * (*(v28 + 28) < v17));
                }

                while (v28);
                if (v27 == v11 || v17 < *(v27 + 7))
                {
                  do
                  {
                    v29 = *(v25 + 28);
                    v30 = v17 < v29;
                    v31 = v17 >= v29;
                    if (v30)
                    {
                      v11 = v25;
                    }

                    v25 = *(v25 + 8 * v31);
                  }

                  while (v25);
                }

                else
                {
                  v32 = v27[1];
                  if (v32)
                  {
                    do
                    {
                      v11 = v32;
                      v32 = *v32;
                    }

                    while (v32);
                  }

                  else
                  {
                    do
                    {
                      v11 = v27[2];
                      v33 = *v11 == v27;
                      v27 = v11;
                    }

                    while (!v33);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v39 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1018C974C();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v46 = v19;
                v47 = 1026;
                v48 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018C974C();
                }

                v34 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v34 = *v13;
                }

                v35 = *(v11 + 7);
                v41 = 136446466;
                v42 = v34;
                v43 = 1026;
                v44 = v35;
                LODWORD(v38) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v41, v38);
                v37 = v36;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLTelephonyService_Type::Notification, CLTelephonyService_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLTelephonyService_Type::Notification, NotificationData_T = CLTelephonyService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v36);
                if (v37 != buf)
                {
                  free(v37);
                }
              }
            }
          }

          while (v11 != (v40 + 48));
        }
      }
    }
  }
}

void sub_10006DE24(uint64_t a1, unsigned int *a2, const void **a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v9 = sub_10006E830(a2, a2);
    v10 = *(a1 + 64);
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = a1 + 64;
    do
    {
      if (*(v10 + 32) >= v9)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 32) < v9));
    }

    while (v10);
    if (v11 == a1 + 64 || v9 < *(v11 + 32))
    {
LABEL_9:
      v14 = v15;
      memset(v15, 0, 32);
      sub_100248B84(buf, a2, &v14);
      sub_10058AEA8(a1 + 56);
    }

    if (a4)
    {
      sub_10007245C();
    }

    v12 = *(v11 + 72);
    *(v11 + 64) = 0;
    *(v11 + 72) = 0;
    if (v12)
    {
      sub_100008080(v12);
    }

    if (*(v11 + 56))
    {
      sub_10006D984(a3);
    }
  }
}

void sub_10006E2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

id sub_10006E308(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10006E474(a1);
}

_BYTE *sub_10006E368(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v15) = *(*a3 + 32);
    v9 = sub_10006E308(a4);
    v10 = *a3;
    v16 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v16, &unk_101C66300, &v16);
    result = (*(*v7 + 192))(v7, v8, &v15, v9, v10 + 80, v11 + 4);
    if (result)
    {
      LODWORD(v16) = *(*a3 + 32);
      v13 = *(*a2 + 64);
      v14 = sub_10006E830(&v16, v12);
      return [v13 onNotification:v14 withData:{a4, v15}];
    }
  }

  return result;
}

id sub_10006E474(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018CCAD8();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7F412 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CCAEC();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018CCAD8();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7F412 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CCBF4();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_10006E678(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = (v2 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = v2 + 16;
  do
  {
    v6 = CFStringCompare(*(v3 + 32), *(a1 + 40), 0);
    if (v6 != kCFCompareLessThan)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (v6 == kCFCompareLessThan));
  }

  while (v3);
  if (v5 != v4 && CFStringCompare(*(a1 + 40), *(v5 + 32), 0) != kCFCompareLessThan)
  {
    return *(v5 + 40);
  }

  v8 = *(v2 + 4);
  v9 = *(v2 + 16);
  if (!v9)
  {
    goto LABEL_15;
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      if (CFStringCompare(*(a1 + 40), v9[4], 0) != kCFCompareLessThan)
      {
        break;
      }

      v9 = *v10;
      v4 = v10;
      if (!*v10)
      {
        goto LABEL_15;
      }
    }

    if (CFStringCompare(v10[4], *(a1 + 40), 0) != kCFCompareLessThan)
    {
      break;
    }

    v4 = v10 + 1;
    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (!*v4)
  {
LABEL_15:
    operator new();
  }

  *(*v4 + 40) = v8;
  v11 = *(a1 + 40);
  v12 = (v2 + 4);
  sub_10058A94C(v2 + 32, (v2 + 4), &unk_101C66300, &v12)[5] = v11;
  result = *(v2 + 4);
  *(v2 + 4) = result + 1;
  return result;
}

uint64_t sub_10006E830(unsigned int *a1, uint64_t a2)
{
  result = *a1;
  if (result == -1)
  {
    sub_1018C7E3C();
  }

  return result;
}

_DWORD *sub_10006E850(_DWORD *a1, uint64_t a2)
{
  if (qword_102656F20 != -1)
  {
    sub_100248B70();
  }

  v4 = qword_102656F28;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006E678;
  v7[3] = &unk_102460538;
  v7[4] = qword_102656F28;
  v7[5] = a2;
  os_unfair_lock_lock(qword_102656F28);
  v5 = sub_10006E678(v7);
  os_unfair_lock_unlock(v4);
  *a1 = v5;
  return a1;
}

const void **sub_10006E914(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10006E948(uint64_t a1, void *a2, void *a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_10196EBB8();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    *&buf[4] = a2;
    v14 = 2113;
    v15 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#ctcl,#ci,onCellInfoChanged context %{private}@, info %{private}@", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196FF38();
  }

  sub_100063EEC(a1, a2);
  if (sub_100064028(a2))
  {
    sub_1000641A0(&v12, a3);
    v7 = [a2 slotID];
    v11 = sub_1000646B0(v7, v8);
    *buf = &v11;
    v9 = sub_1000646F8((a1 + 368), &v11, &unk_101C66300, buf);
    sub_100064958(v9 + 3, &v12);
    sub_10006499C(&v12);
    [*(a1 + 112) sendNotificationToClients:@"kCellInfoNotification" notificationData:sub_10006454C((a1 + 368))];
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196F27C();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,#ci,isCellInfoValid failed", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101970030();
    }
  }
}

void sub_10006EB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10006499C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006EB64(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  result = (*(*a1 + 904))(a1, a2, &cf);
  if (result)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      v8 = cf;
      *a3 = cf;
      CFAutorelease(v8);
      return 1;
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(a2, __p);
        v10 = v32 >= 0 ? __p : *__p;
        v11 = CFGetTypeID(cf);
        TypeID = CFStringGetTypeID();
        *buf = 136446722;
        v35 = v10;
        v36 = 2050;
        v37 = v11;
        v38 = 2050;
        v39 = TypeID;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AA53C(buf);
        v15 = qword_1025D48A8;
        sub_1000238CC(a2, v26);
        if (v27 >= 0)
        {
          v16 = v26;
        }

        else
        {
          v16 = v26[0];
        }

        v17 = CFGetTypeID(cf);
        v18 = CFStringGetTypeID();
        *__p = 136446722;
        *&__p[4] = v16;
        v30 = 2050;
        v31 = v17;
        v32 = 2050;
        v33 = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
        v20 = v19;
        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "%s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v13 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v35 = v14;
        v36 = 2112;
        v37 = a2;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_1018AA1FC();
        }

        v21 = qword_1025D48A8;
        v22 = (*(*a1 + 840))(a1);
        *__p = 138412546;
        *&__p[4] = v22;
        v30 = 2112;
        v31 = a2;
        LODWORD(v25) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v21, 17, "Unsupported type at %@:%@ (domain:key)", __p, v25);
        v24 = v23;
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "%s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

void sub_10006EF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006EFD4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10006499C(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10006F020(const void *a1)
{
  if (CFEqual(a1, kCTCellMonitorCellTypeServing))
  {
    return 0;
  }

  if (CFEqual(a1, kCTCellMonitorCellTypeNeighbor))
  {
    return 1;
  }

  if (CFEqual(a1, kCTCellMonitorCellTypeDetected))
  {
    return 2;
  }

  return 3;
}

BOOL sub_10006F09C(CFDictionaryRef *a1, uint64_t a2)
{
  sub_100005548(v19, *a1);
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v19, "lteCellFromCellMonitorDict");
  }

  *&__p[12] = 0;
  *&__p[4] = 0;
  *(a2 + 8) = -1;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *a2 = -1;
  *(a2 + 28) = *__p;
  v3 = *&__p[16];
  *(a2 + 48) = -1;
  *(a2 + 56) = -1;
  *(a2 + 44) = v3;
  *(a2 + 64) = -1;
  *(a2 + 68) = xmmword_101C7F0A0;
  sub_1000052CC(v19, kCTCellMonitorMCC, a2);
  sub_1000052CC(v19, kCTCellMonitorMNC, (a2 + 4));
  sub_1000052CC(v19, kCTCellMonitorTAC, (a2 + 8));
  sub_1000052CC(v19, kCTCellMonitorCellId, (a2 + 12));
  sub_1000052CC(v19, kCTCellMonitorUARFCN, (a2 + 16));
  cf1 = 0;
  sub_10006EB64(v19, kCTCellMonitorCellType, &cf1);
  if (CFEqual(cf1, kCTCellMonitorCellTypeServing))
  {
    sub_1000052CC(v19, kCTCellMonitorPID, (a2 + 20));
  }

  if (CFEqual(cf1, kCTCellMonitorCellTypeNeighbor))
  {
    sub_1000052CC(v19, kCTCellMonitorPCI, (a2 + 20));
  }

  sub_1000052CC(v19, kCTCellMonitorRSRP, (a2 + 48));
  sub_1000052CC(v19, kCTCellMonitorRSRQ, (a2 + 52));
  sub_1000052CC(v19, kCTCellMonitorBandInfo, (a2 + 24));
  sub_1000052CC(v19, kCTCellMonitorDeploymentType, (a2 + 56));
  sub_1000052CC(v19, kCTCellMonitorBandwidth, (a2 + 60));
  sub_1000052CC(v19, kCTCellMonitorNeighborType, (a2 + 80));
  sub_1000052CC(v19, kCTCellMonitorPMax, (a2 + 64));
  sub_1000052CC(v19, kCTCellMonitorThroughput, (a2 + 68));
  sub_1000052CC(v19, kCTCellMonitorCsgId, (a2 + 76));
  sub_1000052CC(v19, kCTCellMonitorCSGIndication, (a2 + 72));
  v17 = 0;
  if (sub_1000052CC(v19, kCTCellMonitorSectorLat, &v17 + 1))
  {
    if (sub_1000052CC(v19, kCTCellMonitorSectorLong, &v17))
    {
      v4 = v17;
      if (v17)
      {
        *(a2 + 32) = SHIDWORD(v17) * 0.0000694444444;
        *(a2 + 40) = v4 * 0.0000694444444;
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_100161554();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_100081198(__p);
    v6 = v25 >= 0 ? __p : *__p;
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "lteCell populated from CT: %s", buf, 0xCu);
    if (v25 < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D80(__p);
    v11 = qword_1025D4628;
    sub_100081198(buf);
    if (v21 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    v22 = 136315138;
    v23 = v12;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v11, 2, "lteCell populated from CT: %s", &v22);
    v14 = v13;
    if (v21 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::lteCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::LteCell &)", "%s\n", v14);
    if (v14 != __p)
    {
      free(v14);
    }
  }

  v8 = *a2 > 0 && *(a2 + 4) >= 0;
  if (qword_1025D4620 != -1)
  {
    sub_100161554();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *__p = 67109120;
    *&__p[4] = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "lteCell is valid from CT: %d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D80(__p);
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 2, "lteCell is valid from CT: %d", buf);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::lteCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::LteCell &)", "%s\n", v15);
    if (v16 != __p)
    {
      free(v16);
    }
  }

  sub_100005DA4();
  return v8;
}

uint64_t sub_10006F718(uint64_t *a1, uint64_t a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_10028C64C();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v6 = 0x5E293205E29320;
  }

  else
  {
    v6 = v3;
  }

  v47 = a1;
  if (v6)
  {
    sub_100071EDC(a1, v6);
  }

  v7 = 696 * v2;
  v44 = 0;
  v45 = v7;
  *(&v46 + 1) = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 88) = 0;
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 104) = *(a2 + 104);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  v11 = *(a2 + 176);
  v13 = *(a2 + 128);
  v12 = *(a2 + 144);
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = v11;
  *(v7 + 128) = v13;
  *(v7 + 144) = v12;
  v14 = *(a2 + 240);
  v16 = *(a2 + 192);
  v15 = *(a2 + 208);
  *(v7 + 224) = *(a2 + 224);
  *(v7 + 240) = v14;
  *(v7 + 192) = v16;
  *(v7 + 208) = v15;
  v18 = *(a2 + 272);
  v17 = *(a2 + 288);
  v19 = *(a2 + 256);
  *(v7 + 300) = *(a2 + 300);
  *(v7 + 272) = v18;
  *(v7 + 288) = v17;
  *(v7 + 256) = v19;
  *(v7 + 112) = *(a2 + 112);
  v20 = *(a2 + 320);
  *(v7 + 336) = *(a2 + 336);
  *(v7 + 320) = v20;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 320) = 0;
  v21 = *(a2 + 440);
  v23 = *(a2 + 392);
  v22 = *(a2 + 408);
  *(v7 + 424) = *(a2 + 424);
  *(v7 + 440) = v21;
  *(v7 + 392) = v23;
  *(v7 + 408) = v22;
  v24 = *(a2 + 344);
  v25 = *(a2 + 376);
  *(v7 + 360) = *(a2 + 360);
  *(v7 + 376) = v25;
  *(v7 + 344) = v24;
  v27 = *(a2 + 472);
  v26 = *(a2 + 488);
  v28 = *(a2 + 456);
  *(v7 + 504) = *(a2 + 504);
  *(v7 + 472) = v27;
  *(v7 + 488) = v26;
  *(v7 + 456) = v28;
  v29 = *(a2 + 512);
  v30 = *(a2 + 528);
  v31 = *(a2 + 560);
  *(v7 + 544) = *(a2 + 544);
  *(v7 + 560) = v31;
  *(v7 + 512) = v29;
  *(v7 + 528) = v30;
  v32 = *(a2 + 576);
  v33 = *(a2 + 592);
  v34 = *(a2 + 624);
  *(v7 + 608) = *(a2 + 608);
  *(v7 + 624) = v34;
  *(v7 + 576) = v32;
  *(v7 + 592) = v33;
  v35 = *(a2 + 640);
  v36 = *(a2 + 656);
  v37 = *(a2 + 672);
  *(v7 + 688) = *(a2 + 688);
  *(v7 + 656) = v36;
  *(v7 + 672) = v37;
  *(v7 + 640) = v35;
  *&v46 = 696 * v2 + 696;
  v38 = a1[1];
  v39 = 696 * v2 + *a1 - v38;
  sub_10006F96C(a1, *a1, v38, v39);
  v40 = *a1;
  *a1 = v39;
  v41 = a1[2];
  v43 = v46;
  *(a1 + 1) = v46;
  *&v46 = v40;
  *(&v46 + 1) = v41;
  v44 = v40;
  v45 = v40;
  sub_10006FAE8(&v44);
  return v43;
}

void sub_10006F958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10006FAE8(va);
  _Unwind_Resume(a1);
}

void sub_10006F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 104) = *(v6 + 104);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 88) = 0;
      v10 = *(v6 + 176);
      v12 = *(v6 + 128);
      v11 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 176) = v10;
      *(a4 + 128) = v12;
      *(a4 + 144) = v11;
      v13 = *(v6 + 240);
      v15 = *(v6 + 192);
      v14 = *(v6 + 208);
      *(a4 + 224) = *(v6 + 224);
      *(a4 + 240) = v13;
      *(a4 + 192) = v15;
      *(a4 + 208) = v14;
      v17 = *(v6 + 272);
      v16 = *(v6 + 288);
      v18 = *(v6 + 256);
      *(a4 + 300) = *(v6 + 300);
      *(a4 + 272) = v17;
      *(a4 + 288) = v16;
      *(a4 + 256) = v18;
      *(a4 + 112) = *(v6 + 112);
      v19 = *(v6 + 320);
      *(a4 + 336) = *(v6 + 336);
      *(a4 + 320) = v19;
      *(v6 + 328) = 0;
      *(v6 + 336) = 0;
      *(v6 + 320) = 0;
      v20 = *(v6 + 440);
      v22 = *(v6 + 392);
      v21 = *(v6 + 408);
      *(a4 + 424) = *(v6 + 424);
      *(a4 + 440) = v20;
      *(a4 + 392) = v22;
      *(a4 + 408) = v21;
      v23 = *(v6 + 344);
      v24 = *(v6 + 376);
      *(a4 + 360) = *(v6 + 360);
      *(a4 + 376) = v24;
      *(a4 + 344) = v23;
      v26 = *(v6 + 472);
      v25 = *(v6 + 488);
      v27 = *(v6 + 456);
      *(a4 + 504) = *(v6 + 504);
      *(a4 + 472) = v26;
      *(a4 + 488) = v25;
      *(a4 + 456) = v27;
      v28 = *(v6 + 512);
      v29 = *(v6 + 528);
      v30 = *(v6 + 560);
      *(a4 + 544) = *(v6 + 544);
      *(a4 + 560) = v30;
      *(a4 + 512) = v28;
      *(a4 + 528) = v29;
      v31 = *(v6 + 576);
      v32 = *(v6 + 592);
      v33 = *(v6 + 624);
      *(a4 + 608) = *(v6 + 608);
      *(a4 + 624) = v33;
      *(a4 + 576) = v31;
      *(a4 + 592) = v32;
      v34 = *(v6 + 640);
      v35 = *(v6 + 656);
      v36 = *(v6 + 672);
      *(a4 + 688) = *(v6 + 688);
      *(a4 + 656) = v35;
      *(a4 + 672) = v36;
      *(a4 + 640) = v34;
      v6 += 696;
      a4 += 696;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1000720CC(v5);
      v5 += 696;
    }
  }
}

uint64_t sub_10006FAE8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 696;
    sub_1000720CC(i - 696);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10006FB38(uint64_t a1, uint64_t a2)
{
  if (qword_1026592B8 != -1)
  {
    sub_10191D460();
  }

  return byte_1026592B0;
}

uint64_t sub_10006FB70(uint64_t a1, uint64_t a2)
{
  result = sub_10006FDD0(a1, a2);
  if (result)
  {
    v4 = sub_10006FC6C(result, v3);
    if (v4)
    {
      return 0;
    }

    v6 = sub_10006FC00(v4, v5);
    return (v6 & 1) == 0 && !sub_10006FBAC(v6, v7);
  }

  return result;
}

BOOL sub_10006FBAC(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return dword_1026592D0 == 233;
}

uint64_t sub_10006FC00(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 172) < 0x2F) & (0x440001000033uLL >> (dword_1026592D0 + 84));
}

uint64_t sub_10006FC6C(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 168) < 0x29) & (0x1400000000FuLL >> (dword_1026592D0 + 88));
}

BOOL sub_10006FCD4(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 234) > 0xB || ((1 << (dword_1026592D0 + 22)) & 0xA03) == 0)
  {
    return (dword_1026592D0 - 178) < 2;
  }

  return result;
}

BOOL sub_10006FD4C(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 216) > 0x2A || ((1 << (dword_1026592D0 + 40)) & 0x58280304441) == 0)
  {
    return (dword_1026592D0 - 180) < 2;
  }

  return result;
}

uint64_t sub_10006FDD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FC6C(a1, a2);
  if (v2)
  {
    return 1;
  }

  v4 = sub_10006FC00(v2, v3);
  if (v4)
  {
    return 1;
  }

  v6 = sub_10006FCD4(v4, v5);
  if (v6)
  {
    return 1;
  }

  v8 = sub_10006FBAC(v6, v7);
  if (v8)
  {
    return 1;
  }

  v10 = sub_10006FD4C(v8, v9);
  if (v10)
  {
    return 1;
  }

  v11 = sub_1007191C4(v10);
  if (v11)
  {
    return 1;
  }

  return sub_1001B3D90(v11);
}

BOOL sub_10006FE30(uint64_t a1, uint64_t a2)
{
  result = sub_10006FE64(a1, a2);
  if (result)
  {
    v4 = sub_10006FF1C(result, v3);
    return !v4 && !sub_10006FF98(v4, v5);
  }

  return result;
}

BOOL sub_10006FE64(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FF1C(a1, a2);
  if (v2)
  {
    return 1;
  }

  v4 = sub_10006FF98(v2, v3);
  if (v4)
  {
    return 1;
  }

  v6 = sub_10006FEAC(v4, v5);
  if (v6)
  {
    return 1;
  }

  return sub_100718D58(v6);
}

BOOL sub_10006FEAC(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v2 = dword_1026592D0 == 280;
  if ((dword_1026592D0 - 178) < 8)
  {
    v2 = 1;
  }

  return (dword_1026592D0 - 107) < 0x1B || v2;
}

BOOL sub_10006FF1C(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 82) > 0x14 || ((1 << (dword_1026592D0 - 82)) & 0x1FFFD5) == 0)
  {
    return (dword_1026592D0 - 150) < 4;
  }

  return result;
}

BOOL sub_10006FF98(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 - 103) < 4;
}

uint64_t sub_10006FFF0(uint64_t result, uint64_t a2)
{
  if (byte_102632518 == 1)
  {
    v3 = result;
    v4 = [NSString stringWithCString:a2 encoding:4];

    return _PLLogTimeSensitiveRegisteredEvent(4, v4, v3, 0);
  }

  return result;
}

uint64_t sub_1000700DC(const void *a1, BOOL *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID() && v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  *a2 = CFBooleanGetValue(a1) != 0;
  return 1;
}

uint64_t sub_100070148(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void sub_1000701D4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1001D0818();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_100070338(void *a1)
{
  *a1 = off_10245A978;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  a1[1] = Mutable;
  if (!Mutable)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A9E30();
    }
  }

  return a1;
}

uint64_t sub_10007041C(CFMutableDictionaryRef *a1, const void *a2, const void *a3)
{
  CFDictionarySetValue(a1[1], a2, a3);
  v4 = *(*a1 + 106);

  return v4(a1);
}

void sub_10007048C(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      sub_1000701D4(a1, prime);
    }
  }
}

__n128 sub_10007057C(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_1000705D0(uint64_t a1, int *a2, CFDictionaryRef *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A60E38();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLUnifiedCellLocationProvider::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A60E4C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLUnifiedCellLocationProvider::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10007079C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10007079C(uint64_t a1, uint64_t a2, int *a3, CFDictionaryRef *a4)
{
  v7 = *a4;
  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100072010(a3);
    sub_1000238CC(v9, __p);
    v10 = v78 >= 0 ? __p : *__p;
    *buf = 136446466;
    *&buf[4] = v10;
    *&buf[12] = 1026;
    *&buf[14] = v7 != 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "@CellFlow, ctnotify, %{public}s, havedata, %{public}d", buf, 0x12u);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101A60DCC();
    }

    v55 = qword_1025D4628;
    v56 = sub_100072010(a3);
    sub_1000238CC(v56, buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v57 = buf;
    }

    else
    {
      v57 = *buf;
    }

    LODWORD(v75[0]) = 136446466;
    *(v75 + 4) = v57;
    WORD2(v75[1]) = 1026;
    *(&v75[1] + 6) = v7 != 0;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v55, 0, "@CellFlow, ctnotify, %{public}s, havedata, %{public}d", v75, 18);
    v59 = v58;
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLUnifiedCellLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v59);
    if (v59 != __p)
    {
      free(v59);
    }
  }

  if (sub_100071CA0())
  {
    sub_10004FD18();
    v11 = sub_100072010(a3);
    sub_1000717E0(__p, "telNotification", v11);
    sub_100071CAC(__p, "telNotification");
    sub_100005DA4();
  }

  if (v7)
  {
    v12 = sub_100072010(a3);
    if (CFEqual(v12, @"kCellInfoNotification"))
    {
      ++*(a1 + 3488);
    }

    v13 = sub_100072010(a3);
    if (CFEqual(v13, @"kCellMonitorRefreshResultNotification"))
    {
      ++*(a1 + 3492);
    }

    v14 = sub_100072010(a3);
    if (CFEqual(v14, @"kTimingAdvanceInfoNotification"))
    {
      sub_100005548(v75, *a4);
      sub_1000052CC(v75, @"kTimingAdvanceLTEKey", (a1 + 2560));
      sub_1000052CC(v75, @"kTimingAdvanceNRKey", (a1 + 2564));
      sub_100023B78(v75, @"kTimingAdvanceTimeStampKey", (a1 + 2568));
      sub_10001CBC0(v75, @"kTimingAdvanceisLTEKey", (a1 + 2576));
      sub_1000052CC(v75, @"kTimingAdvanceLTE_MCC_Key", (a1 + 2584));
      sub_1000052CC(v75, @"kTimingAdvanceLTE_MNC_Key", (a1 + 2588));
      sub_1000052CC(v75, @"kTimingAdvanceLTE_TAC_Key", (a1 + 2592));
      sub_1000052CC(v75, @"kTimingAdvanceLTE_CI_Key", (a1 + 2596));
      sub_1000052CC(v75, @"kTimingAdvanceNR_MCC_Key", (a1 + 2672));
      sub_1000052CC(v75, @"kTimingAdvanceNR_MNC_Key", (a1 + 2676));
      sub_1000052CC(v75, @"kTimingAdvanceNR_TAC_Key", (a1 + 2680));
      sub_10016B550(v75, @"kTimingAdvanceNR_CI_Key", (a1 + 2688));
      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v15 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        sub_100681EA4(__p);
        v16 = v78 >= 0 ? __p : *__p;
        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#timingadvanceforcell, notification, %{public}s", buf, 0xCu);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_27;
      }

      sub_101A60DF4(__p);
      v60 = qword_1025D4628;
      sub_100681EA4(buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v61 = buf;
      }

      else
      {
        v61 = *buf;
      }

      *v70 = 136446210;
      *&v70[4] = v61;
      LODWORD(v67) = 12;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v60, 1, "#timingadvanceforcell, notification, %{public}s", v70, v67);
      v25 = v62;
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

LABEL_138:
      sub_100152C7C("Generic", 1, 0, 2, "void CLUnifiedCellLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v25);
      if (v25 != __p)
      {
        free(v25);
      }

LABEL_27:
      sub_100005DA4();
      return;
    }

    v17 = sub_100072010(a3);
    v18 = CFEqual(v17, @"kCLCellularTransmitStateNotification");
    if (v18 && sub_10006FB38(v18, v19))
    {
      sub_100005548(v75, *a4);
      if (sub_10001CBC0(v75, @"kCLCellularTransmitStateNotification", (a1 + 2797)))
      {
        goto LABEL_27;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v20 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000238CC(@"kCLCellularTransmitStateNotification", __p);
        v21 = v78 >= 0 ? __p : *__p;
        *buf = 136446210;
        *&buf[4] = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#Warning,#cts,key,%{public}s,does not exist", buf, 0xCu);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_27;
      }

      sub_101A60DF4(__p);
      v22 = qword_1025D4628;
      sub_1000238CC(@"kCLCellularTransmitStateNotification", buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      *v70 = 136446210;
      *&v70[4] = v23;
      LODWORD(v67) = 12;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v22, 0, "#Warning,#cts,key,%{public}s,does not exist", v70, v67);
      v25 = v24;
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_138;
    }
  }

  if (sub_10003845C() == 1)
  {
    v26 = sub_100072010(a3);
    if (CFEqual(v26, @"kCLTelephonyServiceDisconnectedNotification"))
    {
      sub_1001CBF60(a1, "disconnect");
      (*(*a1 + 400))(a1, "disconnect");
      goto LABEL_49;
    }

    v31 = sub_100072010(a3);
    if (!CFEqual(v31, @"kCellInfoNotification"))
    {
      v41 = sub_100072010(a3);
      if (CFEqual(v41, @"kCellMonitorRefreshResultNotification"))
      {
        v27 = "x";
        if (v7)
        {
          __p[0] = 0;
          v42 = sub_1001CCB30(*a4, __p);
          v43 = (__p[0] & 1) != 0 ? "x" : "monitorrefresh";
          if (v42)
          {
            v27 = v43;
          }
        }

        goto LABEL_50;
      }

      v51 = sub_100072010(a3);
      if (CFEqual(v51, @"kCLTelephonyServiceResetNotification"))
      {
        sub_1001CBF60(a1, "reset");
        v27 = "reset";
        goto LABEL_50;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v52 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v53 = sub_100072010(a3);
        sub_1000238CC(v53, __p);
        v54 = v78 >= 0 ? __p : *__p;
        *buf = 136446210;
        *&buf[4] = v54;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "CellService, unknown, %{public}s", buf, 0xCu);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A622FC(a3);
      }

LABEL_49:
      v27 = "x";
LABEL_50:
      if (sub_10006BDFC(a1) && strlen(v27) >= 2)
      {
        sub_10007B4D8(a1, v27);
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101A60DCC();
        }

        v29 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v30 = sub_10006BDFC(a1);
          *__p = 67240450;
          *&__p[4] = v30;
          *&__p[8] = 2082;
          *&__p[10] = v27;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "@CellFlow, skipcalc, clients, %{public}d, get, %{public}s", __p, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A62448(a1, v27);
        }
      }

      return;
    }

    if (v7)
    {
      memset(v75, 0, 24);
      memset(buf, 0, sizeof(buf));
      v74 = 1065353216;
      v27 = "x";
      if (sub_100065478(*a4, buf))
      {
        *__p = 0;
        *v70 = __p;
        v32 = sub_1000646F8(buf, __p, &unk_101C66300, v70)[3];
        sub_1000658D0(0, buf, v75);
        if (qword_1025D4620 != -1)
        {
          sub_101A60DCC();
        }

        v33 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0x104020300;
          *&__p[8] = 2050;
          *&__p[10] = 0x66FD0EB66FD0EB67 * ((v75[1] - v75[0]) >> 3);
          v77 = 1026;
          v78 = v32 == 0;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "@CellFlow, infonotify, inst, %{public}d, cells, %{public}lu, empty, %{public}d", __p, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A60DF4(__p);
          *v70 = 0x104020300;
          *&v70[8] = 2050;
          *&v70[10] = 0x66FD0EB66FD0EB67 * ((v75[1] - v75[0]) >> 3);
          v71 = 1026;
          v72 = v32 == 0;
          LODWORD(v67) = 24;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "@CellFlow, infonotify, inst, %{public}d, cells, %{public}lu, empty, %{public}d", v70, v67);
          v64 = v63;
          sub_100152C7C("Generic", 1, 0, 2, "void CLUnifiedCellLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v63);
          if (v64 != __p)
          {
            free(v64);
          }
        }

        v34 = *(a1 + 2512);
        v35 = *(a1 + 2504);
        memset(v69, 0, sizeof(v69));
        sub_100071F88(v69, v75[0], v75[1], 0x66FD0EB66FD0EB67 * ((v75[1] - v75[0]) >> 3));
        sub_100079D4C(v69, 0, (a1 + 2480), (a1 + 2504));
        *__p = v69;
        sub_100072124(__p);
        if (v32)
        {
          v38 = 0;
        }

        else
        {
          v38 = v34 == v35;
        }

        if (!v38)
        {
          v27 = "cellinfo";
        }

        v40 = v75[0];
        for (i = v75[1]; i != v40; sub_1000720CC(i))
        {
          i -= 696;
        }

        v75[1] = v40;
        if (sub_1000649A0(v36, v37))
        {
          *__p = 1;
          *v70 = __p;
          v45 = sub_1000646F8(buf, __p, &unk_101C66300, v70)[3];
          sub_1000658D0(1, buf, v75);
          if (qword_1025D4620 != -1)
          {
            sub_101A60DCC();
          }

          v46 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0x204020300;
            *&__p[8] = 2050;
            *&__p[10] = 0x66FD0EB66FD0EB67 * ((v75[1] - v75[0]) >> 3);
            v77 = 1026;
            v78 = v45 == 0;
            _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "@CellFlow, infonotify, inst, %{public}d, cells, %{public}lu, empty, %{public}d", __p, 0x18u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A60DF4(__p);
            *v70 = 0x204020300;
            *&v70[8] = 2050;
            *&v70[10] = 0x66FD0EB66FD0EB67 * ((v75[1] - v75[0]) >> 3);
            v71 = 1026;
            v72 = v45 == 0;
            LODWORD(v67) = 24;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "@CellFlow, infonotify, inst, %{public}d, cells, %{public}lu, empty, %{public}d", v70, v67);
            v66 = v65;
            sub_100152C7C("Generic", 1, 0, 2, "void CLUnifiedCellLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v65);
            if (v66 != __p)
            {
              free(v66);
            }
          }

          v47 = *(a1 + 2536);
          v48 = *(a1 + 2528);
          memset(v68, 0, sizeof(v68));
          sub_100071F88(v68, v75[0], v75[1], 0x66FD0EB66FD0EB67 * ((v75[1] - v75[0]) >> 3));
          sub_100079D4C(v68, 1, (a1 + 2480), (a1 + 2504));
          *__p = v68;
          sub_100072124(__p);
          if (v45)
          {
            v49 = 0;
          }

          else
          {
            v49 = v47 == v48;
          }

          if (!v49)
          {
            v27 = "cellinfo";
          }
        }

        v44 = "x";
      }

      else
      {
        v44 = "fetchfail";
      }

      sub_100075100(buf);
      *__p = v75;
      sub_100072124(__p);
    }

    else
    {
      v27 = "x";
      v44 = "nulldata";
    }

    if (strlen(v44) < 2)
    {
      goto LABEL_50;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101A60DCC();
    }

    v50 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *__p = 136446210;
      *&__p[4] = v44;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_ERROR, "CellFlow, infonotify, error, %{public}s", __p, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A62204();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A60DCC();
    }

    v28 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "CellFlow, outcome, LS Off", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A62120();
    }
  }
}

void sub_100071744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33)
{
  sub_100075100(&a23);
  a33 = &a29;
  sub_100072124(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_1000717E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

uint64_t sub_100071870(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 40);
  v3 = (v1 + 40);
  v2 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 40);
  v6 = v3;
  do
  {
    if (*(v2 + 32) >= v5)
    {
      v6 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v5));
  }

  while (v2);
  if (v6 == v3 || v5 < *(v6 + 8))
  {
LABEL_9:
    v23 = *(a1 + 32);
    v8 = *(v23 + 32);
    if (v8 != v3)
    {
      goto LABEL_27;
    }

    while (1)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(v23 + 4);
        *buf = 67109376;
        v25 = v10;
        v26 = 1024;
        LODWORD(v27) = v11;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Request to decode unknown integer %d is a programmer error. fSize %d", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CC9C4((a1 + 40), v23);
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v12 = qword_1025D48A8;
      v3 = "0";
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        *v29 = "assert";
        *&v29[8] = 2081;
        *&v29[10] = "0";
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }
      }

      v13 = qword_1025D48A8;
      if (os_signpost_enabled(qword_1025D48A8))
      {
        *buf = 68289539;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        *v29 = "assert";
        *&v29[8] = 2081;
        *&v29[10] = "0";
        _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        *v29 = "assert";
        *&v29[8] = 2081;
        *&v29[10] = "0";
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/TelephonyService/CLTelephonyService.mm", 569, "notificationFromInt_block_invoke");
LABEL_27:
      v15 = qword_1025D4650;
      do
      {
        if (v15 != -1)
        {
          sub_1018C9ECC();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v8 + 8);
          v18 = *(v8 + 5);
          *buf = 68289794;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 1026;
          *v29 = v17;
          *&v29[4] = 2050;
          *&v29[6] = v18;
          *&v29[14] = 2114;
          *&v29[16] = v18;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Int2NotifMap, Key:%{public}d, NotifPtr:%{public}p, NotifVal:%{public, location:escape_only}@}", buf, 0x2Cu);
          v15 = qword_1025D4650;
        }

        else
        {
          v15 = -1;
        }

        v19 = *(v8 + 1);
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = *(v8 + 2);
            v21 = *v20 == v8;
            v8 = v20;
          }

          while (!v21);
        }

        v8 = v20;
      }

      while (v20 != v3);
    }
  }

  return *(v6 + 5);
}

uint64_t sub_100071CAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007005C(a1);

  return sub_10006FFF0(v3, a2);
}

void sub_100071CE4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = *(a1 + 88) + 40 * a2 + 16;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v15 = (v5 + 16);
    v6 = sub_100071E08(a1 + 64, (v5 + 16), &unk_101C66300, &v15);
    sub_1005729E8(&v12, (v6 + 5));
  }

  v7 = v12;
  for (i = v13; v7 != i; v7 += 2)
  {
    v9 = v7[1];
    v10 = *v7;
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(a3 + 16))(a3, &v10);
    if (v11)
    {
      sub_100008080(v11);
    }
  }

  v16 = &v12;
  sub_1004CA974(&v16);
}

void sub_100071DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  a16 = &a11;
  sub_1004CA974(&a16);
  _Unwind_Resume(a1);
}

uint64_t *sub_100071E08(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

void sub_100071EDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5E293205E29321)
  {
    operator new();
  }

  sub_1001D0818();
}

id sub_100071F38(uint64_t a1, int a2, void *a3)
{
  result = sub_10006E308(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t *sub_100071F88(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000721A8(result, a4);
  }

  return result;
}

void sub_100071FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_100072124(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100072010(int *a1)
{
  if (qword_102656F20 != -1)
  {
    sub_100248B70();
  }

  v2 = qword_102656F28;
  v3 = *a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100071870;
  v6[3] = &unk_102460558;
  v6[4] = qword_102656F28;
  v7 = v3;
  os_unfair_lock_lock(qword_102656F28);
  v4 = sub_100071870(v6);
  os_unfair_lock_unlock(v2);
  return v4;
}

void sub_1000720CC(uint64_t a1)
{
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;

    operator delete(v2);
  }
}

void sub_100072124(void ***a1)
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
        v4 -= 696;
        sub_1000720CC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1000721A8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x5E293205E29321)
  {
    sub_100071EDC(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1000721F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      v10 = *(a2 + v7 + 16);
      v11 = *(a2 + v7 + 32);
      v12 = *(a2 + v7 + 48);
      *(v9 + 60) = *(a2 + v7 + 60);
      *(v9 + 32) = v11;
      *(v9 + 48) = v12;
      *(v9 + 16) = v10;
      v13 = *(a2 + v7 + 80);
      *(a4 + v7 + 88) = 0;
      v14 = (a4 + v7 + 88);
      *(v14 - 2) = v13;
      v14[1] = 0;
      v14[2] = 0;
      sub_10038EB38(v14, *(a2 + v7 + 88), *(a2 + v7 + 96), (*(a2 + v7 + 96) - *(a2 + v7 + 88)) >> 2);
      *(v9 + 112) = *(a2 + v7 + 112);
      v15 = *(a2 + v7 + 128);
      v16 = *(a2 + v7 + 144);
      v17 = *(a2 + v7 + 176);
      *(v9 + 160) = *(a2 + v7 + 160);
      *(v9 + 176) = v17;
      *(v9 + 128) = v15;
      *(v9 + 144) = v16;
      v18 = *(a2 + v7 + 192);
      v19 = *(a2 + v7 + 208);
      v20 = *(a2 + v7 + 240);
      *(v9 + 224) = *(a2 + v7 + 224);
      *(v9 + 240) = v20;
      *(v9 + 192) = v18;
      *(v9 + 208) = v19;
      v21 = *(a2 + v7 + 256);
      v22 = *(a2 + v7 + 272);
      v23 = *(a2 + v7 + 288);
      *(v9 + 300) = *(a2 + v7 + 300);
      *(v9 + 272) = v22;
      *(v9 + 288) = v23;
      *(v9 + 256) = v21;
      if (*(a2 + v7 + 343) < 0)
      {
        sub_100007244((v9 + 320), *(v8 + 320), *(a2 + v7 + 328));
      }

      else
      {
        v24 = *(v8 + 320);
        *(v9 + 336) = *(v8 + 336);
        *(v9 + 320) = v24;
      }

      v25 = a4 + v7;
      v26 = (a4 + v7 + 344);
      v27 = *(v8 + 344);
      v28 = *(v8 + 376);
      v26[1] = *(v8 + 360);
      v26[2] = v28;
      *v26 = v27;
      v29 = *(v8 + 392);
      v30 = *(v8 + 408);
      v31 = *(v8 + 440);
      v26[5] = *(v8 + 424);
      v26[6] = v31;
      v26[3] = v29;
      v26[4] = v30;
      v32 = *(v8 + 456);
      v33 = *(v8 + 472);
      v34 = *(v8 + 488);
      *(v25 + 504) = *(v8 + 504);
      v26[8] = v33;
      v26[9] = v34;
      v26[7] = v32;
      v35 = *(v8 + 512);
      v36 = *(v8 + 528);
      v37 = *(v8 + 560);
      *(v25 + 544) = *(v8 + 544);
      *(v25 + 560) = v37;
      *(v25 + 512) = v35;
      *(v25 + 528) = v36;
      v38 = *(v8 + 576);
      v39 = *(v8 + 592);
      v40 = *(v8 + 624);
      *(v25 + 608) = *(v8 + 608);
      *(v25 + 624) = v40;
      *(v25 + 576) = v38;
      *(v25 + 592) = v39;
      v41 = *(v8 + 640);
      v42 = *(v8 + 656);
      v43 = *(v8 + 672);
      *(v25 + 688) = *(v8 + 688);
      *(v25 + 656) = v42;
      *(v25 + 672) = v43;
      *(v25 + 640) = v41;
      v7 += 696;
    }

    while (v8 + 696 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100072394(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + v2 + 88);
  if (v4)
  {
    *(v1 + v2 + 96) = v4;
    operator delete(v4);
  }

  if (v2)
  {
    v5 = v1 + v2 - 696;
    v6 = -v2;
    do
    {
      sub_1000720CC(v5);
      v5 -= 696;
      v6 += 696;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1000723E0(uint64_t a1, uint64_t a2, const void *a3)
{
  sub_10006E850(&v7, a2);
  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  sub_10006DE24(a1, &v7, &v6, 1, -1);
  return sub_10006E914(&v6);
}

void *sub_1000724C8(void *a1, const void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102460728;
  v3 = *a2;
  a1[3] = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t sub_10007253C(void *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 0xD)
  {
    sub_101B46600();
  }

  if (a2 >= ((a1[1] - *a1) >> 3))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101B465C4();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      v6 = (a1[1] - *a1) >> 3;
      *buf = 68290051;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1025;
      v16 = v2;
      v17 = 2049;
      v18 = v6;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "index < fTileSets.size()";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Index out of bounds, index:%{private}d, size:%{private}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
      if (qword_1025D4600 != -1)
      {
        sub_101B465D8();
      }
    }

    v7 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      v8 = (a1[1] - *a1) >> 3;
      *buf = 68290051;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1025;
      v16 = v2;
      v17 = 2049;
      v18 = v8;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "index < fTileSets.size()";
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Index out of bounds", "{msg%{public}.0s:Index out of bounds, index:%{private}d, size:%{private}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
      if (qword_1025D4600 != -1)
      {
        sub_101B465D8();
      }
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v10 = (a1[1] - *a1) >> 3;
      *buf = 68290051;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1025;
      v16 = v2;
      v17 = 2049;
      v18 = v10;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "index < fTileSets.size()";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Index out of bounds, index:%{private}d, size:%{private}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Tiles/CLTilesSet.mm", 122, "getTilesSet");
  }

  return *(*a1 + 8 * a2);
}

BOOL sub_100072814(uint64_t a1)
{
  result = 0;
  if (*(a1 + 20) > 0.0)
  {
    v3 = fabs(*(a1 + 4));
    if (v3 <= 90.0)
    {
      v4 = fabs(*(a1 + 12));
      if (v4 <= 180.0)
      {
        return v4 >= 0.0000001 || v3 >= 0.0000001;
      }
    }
  }

  return result;
}

BOOL sub_1000728E4(sqlite3_stmt *a1, int a2, sqlite3_int64 a3)
{
  v6 = sqlite3_bind_int64(a1, a2, a3);
  v11 = v6;
  if (v6)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2049;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private}lld, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v9 = sqlite3_sql(a1);
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2049;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private}lld, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
    }
  }

  return v6 == 0;
}

uint64_t sub_100072AFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10003848C(v23);
  sub_100038730(&v24, "CLTypeLocation, ", 16);
  sub_100038730(&v24, ", type, ", 8);
  v4 = std::ostream::operator<<();
  v5 = sub_100038730(v4, ", ", 2);
  v6 = *(a1 + 96);
  if (v6 <= 0xD)
  {
    v7 = off_102493E10[v6];
  }

  else
  {
    v7 = "<error>";
  }

  v8 = strlen(v7);
  sub_100038730(v5, v7, v8);
  v9 = sub_100038730(&v24, ", latitude, ", 12);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 24) = 12;
  *(v9 + *(v10 - 24) + 16) = 8;
  *(v9 + *(v10 - 24) + 8) = *(v9 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v11 = sub_100038730(&v24, ", longitude, ", 13);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 24) = 12;
  *(v11 + *(v12 - 24) + 16) = 8;
  *(v11 + *(v12 - 24) + 8) = *(v11 + *(v12 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  sub_100038730(&v24, ", altitude, ", 12);
  v13 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v13 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", hAcc, ", 8);
  v14 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v14 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", vAcc, ", 8);
  v15 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v15 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", course, ", 10);
  v16 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v16 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", speed, ", 9);
  v17 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v17 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", timstamp, ", 12);
  v18 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v18 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", lifespan, ", 12);
  v19 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v19 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", confidence, ", 14);
  v20 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v20 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100073518(v23, a2);
  v24 = v21;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100073240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000733FC(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if (dword_1026592D0 <= 134)
  {
    if ((dword_1026592D0 - 34) <= 0x2E && ((1 << (dword_1026592D0 - 34)) & 0x700000008001) != 0)
    {
      return result;
    }

    return 0;
  }

  v4 = (dword_1026592D0 - 135) > 0xA || ((1 << (dword_1026592D0 + 121)) & 0x405) == 0;
  if (v4 && dword_1026592D0 != 210 && dword_1026592D0 != 212)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000734AC(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 139) < 0x3B) & (0x48000000005001DuLL >> (dword_1026592D0 + 117));
}

const void *sub_100073518@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000389F0(a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t *sub_1000735F4(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1000736A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v3 = objc_alloc_init(CLCallbackDropNullDelegate);
    *(a1 + 24) = v3;
    [(CLCallbackDropNullDelegate *)v3 setValid:1];
    v1 = *(a1 + 24);
  }

  v4 = v1;

  return v4;
}

BOOL sub_100073700(sqlite3_stmt *a1, int a2, int a3)
{
  v6 = sqlite3_bind_int(a1, a2, a3);
  v11 = v6;
  if (v6)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1025;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private}d, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x38u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v9 = sqlite3_sql(a1);
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1025;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private}d, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x38u);
    }
  }

  return v6 == 0;
}

void sub_100073BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100073BF8(id *a1, double a2)
{
  [a1[3] assertInside];
  if (qword_1025D4870 != -1)
  {
    sub_10197ABFC();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1 + 4;
    if (*(a1 + 55) < 0)
    {
      v5 = *v5;
    }

    v6 = -1.0;
    if (a2 != 1.79769313e308)
    {
      v6 = a2;
    }

    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "setNextFireDate, %s, %.1lf", &v8, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197B698(a1);
  }

  return [*a1 setNextFireTime:a2];
}

char *sub_100073D20(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100007244(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

id sub_100073D4C(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_10197ABFC();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v3 = *v3;
    }

    v4 = *(a1 + 32);
    v6 = 136315394;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "invalidate, %s, %p", &v6, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197B594(a1);
  }

  return [*(a1 + 32) invalidate];
}

void sub_100073E48(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_100073E5C(uint64_t a1, int *a2, void **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 48) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A53FFC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLConfigAsset::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A54010();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLConfigAsset::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100074028(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100074028(uint64_t result, uint64_t a2, int *a3, void **a4)
{
  if (!*a4)
  {
    return;
  }

  v7 = sub_100072010(a3);
  if (CFEqual(v7, @"kBundleChangeNotification"))
  {
    if (qword_1025D4870 != -1)
    {
      sub_101A54038();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kBundleChangeNotification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A54A30();
    }

    sub_100CCA978(result, *a4);
    return;
  }

  v9 = sub_100072010(a3);
  if (CFEqual(v9, @"kDefaultBundleChangeNotification"))
  {
    if (qword_1025D4870 != -1)
    {
      sub_101A54038();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kDefaultBundleChangeNotification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A54B1C();
    }

    sub_100CCAAD4(result, *a4);
    return;
  }

  v11 = sub_100072010(a3);
  if (!CFEqual(v11, @"kCellInfoNotification"))
  {
    v15 = sub_100072010(a3);
    if (CFEqual(v15, @"kSubscriberMccAndMncNotification"))
    {
      if (qword_1025D4870 != -1)
      {
        sub_101A54038();
      }

      v16 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kSubscriberMccAndMncNotification", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A54CF4();
      }

      v32 = 0u;
      v33 = 0u;
      v34 = 1065353216;
      if (sub_10009404C(*a4, &v32))
      {
        v31[0] = 0;
        *buf = v31;
        v17 = sub_10009422C(&v32, v31, &unk_101C66300, buf);
        sub_100CCAC30(result, 0, *(v17 + 20), *(v17 + 7));
        if (*(result + 296) == 1)
        {
          v31[0] = 1;
          *buf = v31;
          v18 = sub_10009422C(&v32, v31, &unk_101C66300, buf);
          sub_100CCAC30(result, 1, *(v18 + 20), *(v18 + 7));
        }

LABEL_65:
        sub_1004906DC(&v32);
        return;
      }

      if (qword_1025D4870 != -1)
      {
        sub_100248578();
      }

      v24 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "#CLConfig,kSubscriberMccAndMncNotification,error fetching MCC and MNC", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_65;
      }

      sub_101A53FB8(buf);
      LOWORD(v31[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#CLConfig,kSubscriberMccAndMncNotification,error fetching MCC and MNC", v31, 2);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 0, "void CLConfigAsset::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v25);
    }

    else
    {
      v20 = sub_100072010(a3);
      if (!CFEqual(v20, @"kServingMccAndMncNotification"))
      {
        return;
      }

      if (qword_1025D4870 != -1)
      {
        sub_101A54038();
      }

      v21 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kServingMccAndMncNotification", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A54DE0();
      }

      v32 = 0u;
      v33 = 0u;
      v34 = 1065353216;
      if (sub_10009404C(*a4, &v32))
      {
        v31[0] = 0;
        *buf = v31;
        v22 = sub_10009422C(&v32, v31, &unk_101C66300, buf);
        sub_100094834(result, 0, *(v22 + 20), *(v22 + 7));
        if (*(result + 296) == 1)
        {
          v31[0] = 1;
          *buf = v31;
          v23 = sub_10009422C(&v32, v31, &unk_101C66300, buf);
          sub_100094834(result, 1, *(v23 + 20), *(v23 + 7));
        }

        goto LABEL_65;
      }

      if (qword_1025D4870 != -1)
      {
        sub_100248578();
      }

      v27 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "#CLConfig,kServingMccAndMncNotification,error fetching MCC and MNC", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_65;
      }

      sub_101A53FB8(buf);
      LOWORD(v31[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#CLConfig,kServingMccAndMncNotification,error fetching MCC and MNC", v31, 2);
      v26 = v30;
      sub_100152C7C("Generic", 1, 0, 0, "void CLConfigAsset::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v30);
    }

    if (v26 != buf)
    {
      free(v26);
    }

    goto LABEL_65;
  }

  if (qword_1025D4870 != -1)
  {
    sub_101A54038();
  }

  v12 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kCellInfoNotification", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A54C08();
  }

  v32 = 0u;
  v33 = 0u;
  v34 = 1065353216;
  if (sub_100065478(*a4, &v32))
  {
    sub_100074834(result, 0, &v32);
    if (sub_1000649A0(v13, v14))
    {
      sub_100074834(result, 1, &v32);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_100248578();
    }

    v19 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#CLConfig,handleCellInfoChange,error fetching cell info", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A53FB8(buf);
      LOWORD(v31[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#CLConfig,handleCellInfoChange,error fetching cell info", v31, 2);
      v29 = v28;
      sub_100152C7C("Generic", 1, 0, 0, "void CLConfigAsset::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v28);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  sub_100075100(&v32);
}

void sub_1000747E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1004906DC(va);
  _Unwind_Resume(a1);
}

void sub_100074834(uint64_t a1, uint64_t a2, float *a3)
{
  v47 = a2;
  v45 = 0;
  v44 = 0;
  v46 = 0;
  v37[0] = 0;
  v43 = 0;
  v5 = sub_100075080(a2, 1);
  *v48 = &v47;
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (!sub_100065670(a3, &v47, &unk_101C66300, v48)[3])
  {
    if (qword_1025D4870 != -1)
    {
      sub_100248578();
    }

    v14 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v47;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#CLConfig,handleCellInfoChange,received nil CellInfo from CT for inst %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_29;
    }

    sub_101A53FB8(buf);
    *v48 = 67109120;
    *&v48[4] = v47;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "#CLConfig,handleCellInfoChange,received nil CellInfo from CT for inst %d", v48);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLConfigAsset::handleCellInfoChange(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v15);
LABEL_64:
    if (v16 != buf)
    {
      free(v16);
    }

    goto LABEL_29;
  }

  sub_1000658D0(v47, a3, &v44);
  sub_100065934(&v44, buf);
  sub_1000659B0(v37, buf);
  if (v66 == 1)
  {
    if (v65 < 0)
    {
      operator delete(__p);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }
  }

  if ((v43 & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_100248578();
    }

    v17 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#CLConfig,handleCellInfoChange,serving cell missing", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_29;
    }

    sub_101A53FB8(buf);
    *v48 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "#CLConfig,handleCellInfoChange,serving cell missing", v48, 2);
    v16 = v35;
    sub_100152C7C("Generic", 1, 0, 2, "void CLConfigAsset::handleCellInfoChange(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v35);
    goto LABEL_64;
  }

  if (qword_1025D4870 != -1)
  {
    sub_100248578();
  }

  v7 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = 0x66FD0EB66FD0EB67 * ((v45 - v44) >> 3);
    *&buf[12] = 1024;
    *&buf[14] = v47;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#CLConfig,handleCellInfoChange,cellcount,%lu,inst,%d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A53FB8(buf);
    *v48 = 134218240;
    *&v48[4] = 0x66FD0EB66FD0EB67 * ((v45 - v44) >> 3);
    v49 = 1024;
    v50 = v47;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "#CLConfig,handleCellInfoChange,cellcount,%lu,inst,%d", v48, 18);
    v34 = v33;
    sub_100152C7C("Generic", 1, 0, 2, "void CLConfigAsset::handleCellInfoChange(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v33);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  if (v38 < 3)
  {
    goto LABEL_16;
  }

  if (v38 == 9)
  {
    v9 = *sub_1006CCAA0(v37, v8);
    v10 = sub_1006CCAA0(v37, v29);
    goto LABEL_17;
  }

  if (v38 == 7)
  {
LABEL_16:
    v9 = *sub_1006CBCE4(v37);
    v10 = sub_1006CBCE4(v37);
LABEL_17:
    v11 = *(v10 + 4);
    v12 = 0xFFFFFFFFLL;
    v13 = 0xFFFFFFFFLL;
    goto LABEL_31;
  }

  if (v38 - 3 <= 2)
  {
    v13 = *(sub_1006CB140(v37, v8) + 32);
    v12 = *(sub_1006CB140(v37, v30) + 36);
    goto LABEL_30;
  }

  if (v38 == 10)
  {
    v9 = *sub_100681E80(v37, v8);
    v10 = sub_100681E80(v37, v32);
    goto LABEL_17;
  }

  if (v38 == 6)
  {
    v9 = *sub_10007513C(v37, v8);
    v10 = sub_10007513C(v37, v31);
    goto LABEL_17;
  }

LABEL_29:
  v12 = 0xFFFFFFFFLL;
  v13 = 0xFFFFFFFFLL;
LABEL_30:
  v11 = 0xFFFFFFFFLL;
  v9 = 0xFFFFFFFFLL;
LABEL_31:
  if (qword_1025D4870 != -1)
  {
    sub_100248578();
  }

  v18 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290307;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v52 = 1026;
    v53 = v47;
    v54 = 1025;
    v55 = v9;
    v56 = 1025;
    v57 = v11;
    v58 = 1025;
    v59 = v13;
    v60 = 1025;
    v61 = v12;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLConfig,handleCellInfoChange,operator mcc and mnc updated, inst:%{public}d, MCC:%{private}d, MNC:%{private}d, SID:%{private}d, NID:%{private}d}", buf, 0x30u);
  }

  for (i = *(a1 + 272); i; i = *i)
  {
    v20 = i[3];
    if (v20)
    {
      (*(*v20 + 56))(v20, v5, v9, v11, v13, v12);
    }

    else
    {
      if (p_info[270] != -1)
      {
        sub_100248578();
      }

      v21 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v23 = [(__CFString *)sub_100CCA5D4(*(i + 4) UTF8String];
        *buf = 136446210;
        *&buf[4] = v23;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#CLConfig,%{public}s,handleCellInfoChange,pointer for component was null", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A53FB8(buf);
        v24 = qword_1025D4878;
        v26 = [(__CFString *)sub_100CCA5D4(*(i + 4) UTF8String];
        *v48 = 136446210;
        *&v48[4] = v26;
        LODWORD(v36) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v24, 16, "#CLConfig,%{public}s,handleCellInfoChange,pointer for component was null", v48, v36);
        v28 = v27;
        sub_100152C7C("Generic", 1, 0, 0, "void CLConfigAsset::handleCellInfoChange(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v27);
        if (v28 != buf)
        {
          free(v28);
        }

        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }
    }
  }

  if (v43 == 1)
  {
    if (v42 < 0)
    {
      operator delete(v41);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }
  }

  *buf = &v44;
  sub_100072124(buf);
}

void sub_100075024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000827E4(va);
  STACK[0x320] = &STACK[0x2E0];
  sub_100072124(&STACK[0x320]);
  _Unwind_Resume(a1);
}

uint64_t sub_100075080(int a1, int a2)
{
  if (a2 == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 255)
  {
    v2 = 255;
  }

  v3 = a2 == 1;
  if (a2 == 255)
  {
    v3 = 255;
  }

  if (a1)
  {
    v4 = 255;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 1)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

void sub_1000750BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10006499C((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100075100(uint64_t a1)
{
  sub_1000750BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10007513C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 6)
  {
    sub_1018FEBC0(a1, a2);
  }

  return a1 + 512;
}

uint64_t sub_100075160@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10003848C(v12);
  v4 = *(a1 + 8);
  if (v4 < 0xA && ((0x287u >> v4) & 1) != 0)
  {
    v5 = off_1024D8928[v4];
    v6 = qword_101D786B8[v4];
  }

  else if ((v4 - 3) >= 3)
  {
    if (v4 == 10)
    {
      v5 = "NR";
      v6 = 2;
    }

    else
    {
      if (v4 == 6)
      {
        v7 = *(a1 + 568);
        if ((v7 & 4) == 0 || v7 < 1)
        {
          v9 = "LTE";
        }

        else
        {
          v9 = "NSA";
        }

        sub_100038730(&v13, v9, 3);
        goto LABEL_18;
      }

      v5 = "Unknown";
      v6 = 7;
    }
  }

  else
  {
    v5 = "CDMA";
    v6 = 4;
  }

  sub_100038730(&v13, v5, v6);
LABEL_18:
  sub_100073518(v12, a2);
  v13 = v10;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100075394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

void *sub_1000753AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2 < 3 || v2 == 9 || v2 == 7)
  {
    return sub_100075418(a2);
  }

  if (v2 - 3 <= 2)
  {
    return sub_100641C10(a2);
  }

  if (v2 == 10)
  {
    return sub_100642C8C(a2);
  }

  if (v2 == 6)
  {
    return sub_100075418(a2);
  }

  return sub_10000EC00(a2, "bad-key");
}

uint64_t sub_100075418@<X0>(void *a2@<X8>)
{
  sub_10003848C(v8);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, ".", 1);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ".", 1);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, ".", 1);
  std::ostream::operator<<();
  sub_100073518(v8, a2);
  v8[2] = v6;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1000755E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

void sub_1000755FC(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_101600338(a1);
    if (a4 <= 0x5E293205E29320)
    {
      v9 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
      {
        v10 = 0x5E293205E29320;
      }

      else
      {
        v10 = v9;
      }

      sub_1000721A8(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = a1[1] - v8;
  if (0x66FD0EB66FD0EB67 * (v11 >> 3) >= a4)
  {
    sub_100075778(&v16, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 696;
        sub_1000720CC(v14);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_100075778(&v15, a2, a2 + v11, v8);
    a1[1] = sub_1000721F8(a1, a2 + v11, a3, a1[1]);
  }
}

uint64_t sub_100075778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 96;
  do
  {
    v7 = v6 - 96;
    *a4 = *(v6 - 96);
    v8 = *(v6 - 80);
    v9 = *(v6 - 64);
    v10 = *(v6 - 48);
    *(a4 + 60) = *(v6 - 36);
    *(a4 + 32) = v9;
    *(a4 + 48) = v10;
    *(a4 + 16) = v8;
    *(a4 + 80) = *(v6 - 16);
    if (a4 != v6 - 96)
    {
      sub_100731D80((a4 + 88), *(v6 - 8), *v6, (*v6 - *(v6 - 8)) >> 2);
    }

    *(a4 + 112) = *(v6 + 16);
    v11 = *(v6 + 32);
    v12 = *(v6 + 48);
    v13 = *(v6 + 80);
    *(a4 + 160) = *(v6 + 64);
    *(a4 + 176) = v13;
    *(a4 + 128) = v11;
    *(a4 + 144) = v12;
    v14 = *(v6 + 96);
    v15 = *(v6 + 112);
    v16 = *(v6 + 144);
    *(a4 + 224) = *(v6 + 128);
    *(a4 + 240) = v16;
    *(a4 + 192) = v14;
    *(a4 + 208) = v15;
    v17 = *(v6 + 160);
    v18 = *(v6 + 176);
    v19 = *(v6 + 192);
    *(a4 + 300) = *(v6 + 204);
    *(a4 + 272) = v18;
    *(a4 + 288) = v19;
    *(a4 + 256) = v17;
    std::string::operator=((a4 + 320), (v6 + 224));
    v20 = *(v6 + 280);
    v21 = *(v6 + 264);
    *(a4 + 344) = *(v6 + 248);
    *(a4 + 360) = v21;
    *(a4 + 376) = v20;
    v22 = *(v6 + 312);
    v23 = *(v6 + 328);
    v24 = *(v6 + 344);
    *(a4 + 392) = *(v6 + 296);
    *(a4 + 440) = v24;
    *(a4 + 424) = v23;
    *(a4 + 408) = v22;
    v25 = *(v6 + 376);
    v26 = *(v6 + 392);
    v27 = *(v6 + 408);
    *(a4 + 456) = *(v6 + 360);
    *(a4 + 504) = v27;
    *(a4 + 488) = v26;
    *(a4 + 472) = v25;
    v28 = *(v6 + 544);
    v29 = *(v6 + 560);
    v30 = *(v6 + 576);
    *(a4 + 688) = *(v6 + 592);
    *(a4 + 656) = v29;
    *(a4 + 672) = v30;
    *(a4 + 640) = v28;
    v31 = *(v6 + 480);
    v32 = *(v6 + 496);
    v33 = *(v6 + 528);
    *(a4 + 608) = *(v6 + 512);
    *(a4 + 624) = v33;
    *(a4 + 576) = v31;
    *(a4 + 592) = v32;
    v34 = *(v6 + 416);
    v35 = *(v6 + 432);
    v36 = *(v6 + 464);
    *(a4 + 544) = *(v6 + 448);
    *(a4 + 560) = v36;
    *(a4 + 512) = v34;
    *(a4 + 528) = v35;
    a4 += 696;
    v6 += 696;
  }

  while (v7 + 696 != v5);
  return v5;
}

void sub_100075910(uint64_t a1, int *a2, CFDictionaryRef *a3)
{
  if (*a3 || (v6 = sub_100072010(a2), CFEqual(@"kCLTelephonyServiceConnectedNotification", v6)) || (v7 = sub_100072010(a2), CFEqual(@"kCLTelephonyServiceDisconnectedNotification", v7)) || (v8 = sub_100072010(a2), CFEqual(@"kCLTelephonyServiceResetNotification", v8)) || (v9 = sub_100072010(a2), CFEqual(@"kCallStatusChangeNotification", v9)) || (v10 = sub_100072010(a2), CFEqual(@"kAtLeastOneVoiceCallInProgress", v10)) || (v11 = sub_100072010(a2), CFEqual(@"kNoVoiceCallInProgress", v11)))
  {
    v12 = sub_100072010(a2);
    if (CFEqual(@"kUplinkFreqBwNotification", v12))
    {
      if (*a3)
      {
        sub_100005548(v55, *a3);
        LODWORD(v51) = -1082130432;
        LODWORD(v69) = -1082130432;
        v54 = 0;
        v13 = sub_10001CBC0(v55, @"kUplinkFreqBwValid", &v54);
        sub_1004FBECC(v55, @"kUplinkFreqKey", &v51);
        v15 = v14;
        sub_1004FBECC(v55, @"kUplinkBwKey", &v69);
        if ((v13 & v15 & v16) == 1 && v54)
        {
          *(a1 + 2628) = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(__PAIR64__(v69, v51)), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL)));
          sub_10001CAF4(buf);
          LOBYTE(v50[0]) = 0;
          v17 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v50, 0xFFFFFFFFLL);
          v18 = (v17 & v50[0]);
          if (*v59)
          {
            sub_100008080(*v59);
          }

          if (v18)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v19 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v20 = *(a1 + 2628);
              v21 = *(a1 + 2632);
              *buf = 68289538;
              *&buf[4] = 0;
              *v59 = 2082;
              *&v59[2] = "";
              v60 = 2050;
              v61 = v20;
              v62 = 2050;
              v63 = v21;
              _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssawd,Cellular-AWD,kUplinkFreqBwNotification, freq(MHz):%{public}f, bw(MHz):%{public}f}", buf, 0x26u);
            }
          }

          *(a1 + 2464) = *(a1 + 2456);
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v31 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,kUplinkFreqBwNotification,error fetching cellular bandwidth and frequency", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016C8DD8(buf);
            LOWORD(v50[0]) = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#warning,#gnssawd,Cellular-AWD,kUplinkFreqBwNotification,error fetching cellular bandwidth and frequency", v50, 2);
            v45 = v44;
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v44);
            if (v45 != buf)
            {
              free(v45);
            }
          }
        }

        sub_100005DA4();
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8A14();
        }

        v32 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,kUplinkFreqBwNotification,data is nil", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016CAC3C();
        }
      }
    }

    else
    {
      v22 = sub_100072010(a2);
      if (CFEqual(@"kCellInfoNotification", v22))
      {
        if (*a3)
        {
          *v55 = 0u;
          v56 = 0u;
          v57 = 1065353216;
          sub_10008289C(a1 + 2720);
          if (sub_100065478(*a3, v55))
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *buf = 0;
            v69 = buf;
            v23 = sub_1000646F8(v55, buf, &unk_101C66300, &v69);
            if (v23[3])
            {
              sub_10001CAF4(buf);
              LOBYTE(v69) = 0;
              v25 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v69, 0xFFFFFFFFLL);
              v26 = (v25 & v69);
              if (*v59)
              {
                sub_100008080(*v59);
              }

              if (v26)
              {
                if (qword_1025D4650 != -1)
                {
                  sub_1016C8BF0();
                }

                v27 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  *&buf[4] = 0;
                  _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification,serving cell found for sim,%d", buf, 8u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1016C8DD8(buf);
                  v69 = 67109120;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,kCellInfoNotification,serving cell found for sim,%d", &v69);
                  v47 = v46;
                  sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v46);
                  if (v47 != buf)
                  {
                    free(v47);
                  }
                }
              }

              sub_1000658D0(0, v55, &v51);
              sub_100065934(&v51, buf);
              v50[0] = 0;
              v69 = v50;
              v28 = sub_100084258((a1 + 2720), v50, &unk_101C66300, &v69);
              sub_1000659B0((v28 + 3), buf);
              if (v68 == 1)
              {
                if (v67 < 0)
                {
                  operator delete(__p);
                }

                v23 = v64;
                if (v64)
                {
                  v65 = v64;
                  operator delete(v64);
                }
              }
            }

            v30 = v51;
            for (i = v52; i != v30; sub_1000720CC(i))
            {
              i -= 696;
            }

            v52 = v30;
            if (sub_1000649A0(v23, v24))
            {
              v50[0] = 1;
              v69 = v50;
              if (sub_1000646F8(v55, v50, &unk_101C66300, &v69)[3])
              {
                sub_10001CAF4(buf);
                LOBYTE(v69) = 0;
                v37 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v69, 0xFFFFFFFFLL);
                v38 = (v37 & v69);
                if (*v59)
                {
                  sub_100008080(*v59);
                }

                if (v38)
                {
                  if (qword_1025D4650 != -1)
                  {
                    sub_1016C8BF0();
                  }

                  v39 = qword_1025D4658;
                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 67109120;
                    *&buf[4] = 1;
                    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification,serving cell found for sim,%d", buf, 8u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_1016C8DD8(buf);
                    v69 = 0x104000100;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,kCellInfoNotification,serving cell found for sim,%d", &v69);
                    v49 = v48;
                    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v48);
                    if (v49 != buf)
                    {
                      free(v49);
                    }
                  }
                }

                sub_1000658D0(1, v55, &v51);
                sub_100065934(&v51, buf);
                v50[0] = 1;
                v69 = v50;
                v40 = sub_100084258((a1 + 2720), v50, &unk_101C66300, &v69);
                sub_1000659B0((v40 + 3), buf);
                if (v68 == 1)
                {
                  if (v67 < 0)
                  {
                    operator delete(__p);
                  }

                  if (v64)
                  {
                    v65 = v64;
                    operator delete(v64);
                  }
                }
              }
            }

            if (*(a1 + 2744))
            {
              sub_1000828F8(a1);
            }

            *buf = &v51;
            sub_100072124(buf);
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v34 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "#warning,#gnssawd,error fetching cell info", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1016C8DD8(buf);
              LOWORD(v51) = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#warning,#gnssawd,error fetching cell info", &v51, 2);
              v36 = v35;
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v35);
              if (v36 != buf)
              {
                free(v36);
              }
            }
          }

          sub_100075100(v55);
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8A14();
          }

          v33 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,kCellInfoNotification,data is nil", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016CAD20();
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v42 = sub_100072010(a2);
      sub_1000238CC(v42, buf);
      v43 = (SBYTE3(v61) & 0x80u) == 0 ? buf : *buf;
      *v55 = 136446210;
      *&v55[4] = v43;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_INFO, "#warning,#gnssawd,dropping %{public}s,empty data", v55, 0xCu);
      if (SBYTE3(v61) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CAE04(a2);
    }
  }
}

void sub_10007646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a13;
  sub_100072124(&a23);
  sub_100075100(&a17);
  _Unwind_Resume(a1);
}

void sub_100076538(float32x2_t *a1, int *a2, CFDictionaryRef *a3)
{
  if (qword_1025D4660 != -1)
  {
    sub_1002FA4DC();
  }

  v6 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_100072010(a2);
    sub_1000238CC(v7, v108);
    v8 = v110[3] >= 0 ? v108 : *v108;
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#awd,onTelephonyNotification,%s", buf, 0xCu);
    if ((v110[3] & 0x80000000) != 0)
    {
      operator delete(*v108);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016ABB34(a2);
  }

  v9 = sub_100072010(a2);
  if (CFEqual(@"kUplinkFreqBwNotification", v9))
  {
    if (*a3)
    {
      sub_100005548(buf, *a3);
      LODWORD(v97[0]) = -1082130432;
      LODWORD(v99) = -1082130432;
      LOBYTE(v102) = 0;
      v10 = sub_10001CBC0(buf, @"kUplinkFreqBwValid", &v102);
      sub_1004FBECC(buf, @"kUplinkFreqKey", v97);
      v12 = v11;
      sub_1004FBECC(buf, @"kUplinkBwKey", &v99);
      if ((v10 & v12 & v13) == 1 && v102 == 1)
      {
        a1[81] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(__PAIR64__(v99, v97[0])), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL)));
        if (qword_1025D4650 != -1)
        {
          sub_1016ABC90();
        }

        v14 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v15 = a1[81].f32[0];
          v16 = a1[81].f32[1];
          *v108 = 68289538;
          *&v108[4] = 0;
          *&v108[8] = 2082;
          *&v108[10] = "";
          v109 = 2050;
          *v110 = v15;
          *&v110[8] = 2050;
          v111 = v16;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd,kUplinkFreqBwNotification, freq(MHz):%{public}f, bw(MHz):%{public}f}", v108, 0x26u);
        }
      }

      sub_100005DA4();
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v21 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *v108 = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#awd,kUplinkFreqBwNotification,error fetching info", v108, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016ABCB8();
      }
    }

    return;
  }

  v17 = sub_100072010(a2);
  if (CFEqual(v17, @"kSubscriptionChangeNotification"))
  {
    v18 = *a3;
    if (*a3)
    {
      *buf = 0u;
      v105 = 0u;
      v106 = 1065353216;
      if (sub_10116E14C(v18, buf))
      {
        sub_1016AA6E0(a1, 0, buf);
        if (sub_1000649A0(v19, v20))
        {
          sub_1016AA6E0(a1, 1u, buf);
        }

        goto LABEL_52;
      }

      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v28 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *v108 = 0;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_ERROR, "#awd,kSubscriptionChangeNotification,error fetching context", v108, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_52;
      }

      sub_1016AB5D4(v108);
      LOWORD(v97[0]) = 0;
      LODWORD(v96) = 2;
      _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 16, "#awd,kSubscriptionChangeNotification,error fetching context", v97, v96);
      v84 = v83;
      sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v83);
      if (v84 == v108)
      {
        goto LABEL_52;
      }

LABEL_190:
      free(v84);
LABEL_52:
      sub_1004906DC(buf);
      return;
    }

    if (qword_1025D4660 != -1)
    {
      sub_1016AB5AC();
    }

    v27 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *v108 = 0;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "#awd,kSubscriptionChangeNotification,error fetching info", v108, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1016ABDA4();
    }

    return;
  }

  v22 = sub_100072010(a2);
  if (CFEqual(@"kPrefDataSimChangedNotification", v22))
  {
    v23 = *a3;
    if (*a3)
    {
      *buf = 0;
      if (sub_10116DE14(v23, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v24 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          *v108 = 138477827;
          *&v108[4] = *buf;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#awd,kPrefDSChangedNotification,context,%{private}@", v108, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016ABF7C(buf);
        }

        v25 = [*buf slotID];
        a1[80].i32[0] = sub_1000646B0(v25, v26);
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v32 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *v108 = 0;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "#awd,kPrefDSChangedNotification,error fetching info", v108, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1016ABE90();
        }
      }
    }

    return;
  }

  v29 = sub_100072010(a2);
  if (CFEqual(@"kCellInfoNotification", v29))
  {
    v30 = *a3;
    if (!*a3)
    {
      return;
    }

    v99 = 0;
    v100 = 0;
    v101 = 0;
    memset(v97, 0, sizeof(v97));
    v98 = 1065353216;
    if (sub_100065478(v30, v97))
    {
      *v108 = 0;
      *buf = v108;
      if (sub_1000646F8(v97, v108, &unk_101C66300, buf)[3])
      {
        sub_1000658D0(0, v97, &v99);
        sub_100065934(&v99, buf);
        if (v107)
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v31 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *v108 = 67109120;
            *&v108[4] = 0;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,serving cell found for sim,%d", v108, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016AB5D4(v108);
            v102 = 67109120;
            v103 = 0;
            _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 2, "#awd,kCellInfoNotification,serving cell found for sim,%d", &v102);
            v88 = v87;
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v87);
            if (v88 != v108)
            {
              free(v88);
            }
          }

          sub_100084C14(a1, 0, buf);
        }

        else
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v66 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *v108 = 0;
            _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,serving cell missing", v108, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016AB5D4(v108);
            LOWORD(v102) = 0;
            LODWORD(v96) = 2;
            _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 2, "#awd,kCellInfoNotification,serving cell missing", &v102, v96);
            v90 = v89;
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v89);
            if (v90 != v108)
            {
              free(v90);
            }
          }
        }

        v61 = sub_1000827E4(buf);
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v60 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          *v108 = 67109120;
          *&v108[4] = 0;
          _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,received nil CellInfo from CT for sim %d", v108, 8u);
        }

        v61 = sub_10000A100(121, 2);
        if (v61)
        {
          sub_1016AB5D4(v108);
          *buf = 67109120;
          *&buf[4] = 0;
          _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 2, "#awd,kCellInfoNotification,received nil CellInfo from CT for sim %d", buf);
          v64 = v63;
          v61 = sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v63);
          if (v64 != v108)
          {
            free(v64);
          }
        }
      }

      v68 = v99;
      for (i = v100; i != v68; sub_1000720CC(i))
      {
        i -= 696;
      }

      v100 = v68;
      if (!sub_1000649A0(v61, v62))
      {
        goto LABEL_157;
      }

      *v108 = 1;
      *buf = v108;
      if (sub_1000646F8(v97, v108, &unk_101C66300, buf)[3])
      {
        sub_1000658D0(1, v97, &v99);
        sub_100065934(&v99, buf);
        if (v107)
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v69 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *v108 = 67109120;
            *&v108[4] = 1;
            _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,serving cell found for sim,%d", v108, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016AB5D4(v108);
            v102 = 67109120;
            v103 = 1;
            _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 2, "#awd,kCellInfoNotification,serving cell found for sim,%d", &v102);
            v92 = v91;
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v91);
            if (v92 != v108)
            {
              free(v92);
            }
          }

          sub_100084C14(a1, 1, buf);
        }

        else
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v75 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *v108 = 0;
            _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,serving cell missing", v108, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016AB5D4(v108);
            LOWORD(v102) = 0;
            LODWORD(v96) = 2;
            _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 2, "#awd,kCellInfoNotification,serving cell missing", &v102, v96);
            v94 = v93;
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v93);
            if (v94 != v108)
            {
              free(v94);
            }
          }
        }

        sub_1000827E4(buf);
LABEL_157:
        sub_100075100(v97);
        *v108 = &v99;
        sub_100072124(v108);
        return;
      }

      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v72 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        *v108 = 67109120;
        *&v108[4] = 1;
        _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,received nil CellInfo from CT for sim %d", v108, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_157;
      }

      sub_1016AB5D4(v108);
      *buf = 67109120;
      *&buf[4] = 1;
      _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 2, "#awd,kCellInfoNotification,received nil CellInfo from CT for sim %d", buf);
      v51 = v73;
      sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v73);
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v49 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *v108 = 0;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_ERROR, "#awd,kCellInfoNotification,error fetching cell info", v108, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_157;
      }

      sub_1016AB5D4(v108);
      *buf = 0;
      LODWORD(v96) = 2;
      _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 16, "#awd,kCellInfoNotification,error fetching cell info", buf, v96);
      v51 = v50;
      sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v50);
    }

    if (v51 != v108)
    {
      free(v51);
    }

    goto LABEL_157;
  }

  v33 = sub_100072010(a2);
  if (CFEqual(@"kSubscriberMccAndMncNotification", v33))
  {
    v34 = *a3;
    if (*a3)
    {
      *buf = 0u;
      v105 = 0u;
      v106 = 1065353216;
      if (sub_10009404C(v34, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v35 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v99) = 0;
          *&v97[0] = &v99;
          v36 = *(sub_10009422C(buf, &v99, &unk_101C66300, v97) + 5);
          v102 = 0;
          *&v97[0] = &v102;
          v37 = *(sub_10009422C(buf, &v102, &unk_101C66300, v97) + 6);
          HIDWORD(v96) = 0;
          *&v97[0] = &v96 + 4;
          v38 = *(sub_10009422C(buf, &v96 + 1, &unk_101C66300, v97) + 28);
          *v108 = 68290050;
          *&v108[4] = 0;
          *&v108[8] = 2082;
          *&v108[10] = "";
          v109 = 1026;
          *v110 = 0;
          *&v110[4] = 1026;
          *&v110[6] = v36;
          LOWORD(v111) = 1026;
          *(&v111 + 2) = v37;
          HIWORD(v111) = 1026;
          v112 = v38;
          _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd,kSubscriberMccAndMncNotification, sim:%{public}d, mcc:%{public}d, mnc:%{public}d, is3DigitMnc:%{public}hhd}", v108, 0x2Au);
        }

        LODWORD(v97[0]) = 0;
        *v108 = v97;
        v39 = *(sub_10009422C(buf, v97, &unk_101C66300, v108) + 5);
        LODWORD(v99) = 0;
        *v108 = &v99;
        v40 = sub_10009422C(buf, &v99, &unk_101C66300, v108);
        sub_1016AA974(a1, 0, v39, *(v40 + 6));
        if (sub_1000649A0(v41, v42))
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v43 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v99) = 1;
            *&v97[0] = &v99;
            v44 = *(sub_10009422C(buf, &v99, &unk_101C66300, v97) + 5);
            v102 = 1;
            *&v97[0] = &v102;
            v45 = *(sub_10009422C(buf, &v102, &unk_101C66300, v97) + 6);
            HIDWORD(v96) = 1;
            *&v97[0] = &v96 + 4;
            v46 = *(sub_10009422C(buf, &v96 + 1, &unk_101C66300, v97) + 28);
            *v108 = 68290050;
            *&v108[4] = 0;
            *&v108[8] = 2082;
            *&v108[10] = "";
            v109 = 1026;
            *v110 = 1;
            *&v110[4] = 1026;
            *&v110[6] = v44;
            LOWORD(v111) = 1026;
            *(&v111 + 2) = v45;
            HIWORD(v111) = 1026;
            v112 = v46;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd,kSubscriberMccAndMncNotification, sim:%{public}d, mcc:%{public}d, mnc:%{public}d, is3DigitMnc:%{public}hhd}", v108, 0x2Au);
          }

          LODWORD(v97[0]) = 1;
          *v108 = v97;
          v47 = *(sub_10009422C(buf, v97, &unk_101C66300, v108) + 5);
          LODWORD(v99) = 1;
          *v108 = &v99;
          v48 = sub_10009422C(buf, &v99, &unk_101C66300, v108);
          sub_1016AA974(a1, 1, v47, *(v48 + 6));
        }
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v65 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *v108 = 0;
          _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_ERROR, "#awd,kSubscriberMccAndMncNotification,error fetching MCC/MNC", v108, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1016AB5D4(v108);
          LOWORD(v97[0]) = 0;
          LODWORD(v96) = 2;
          _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 16, "#awd,kSubscriberMccAndMncNotification,error fetching MCC/MNC", v97, v96);
          v86 = v85;
          sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v85);
          if (v86 != v108)
          {
            free(v86);
          }
        }
      }

      sub_1004906DC(buf);
    }
  }

  else
  {
    v52 = sub_100072010(a2);
    if (CFEqual(@"kDataStatusNotification", v52))
    {
      v53 = *a3;
      if (*a3)
      {
        *buf = 0u;
        v105 = 0u;
        v106 = 1065353216;
        if (sub_10116D15C(v53, buf))
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v54 = qword_1025D4668;
          v55 = os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT);
          if (v55)
          {
            LODWORD(v99) = 0;
            *&v97[0] = &v99;
            v57 = *(sub_1006E20E0(buf, &v99, &unk_101C66300, v97) + 9);
            *v108 = 68289538;
            *&v108[4] = 0;
            *&v108[8] = 2082;
            *&v108[10] = "";
            v109 = 1026;
            *v110 = 0;
            *&v110[4] = 1026;
            *&v110[6] = v57;
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#awd,kDataStatusNotification, sim:%{public}d, RAT:%{public}d}", v108, 0x1Eu);
          }

          if (sub_1000649A0(v55, v56))
          {
            if (qword_1025D4660 != -1)
            {
              sub_1016AB5AC();
            }

            v58 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v99) = 1;
              *&v97[0] = &v99;
              v59 = *(sub_1006E20E0(buf, &v99, &unk_101C66300, v97) + 9);
              *v108 = 68289538;
              *&v108[4] = 0;
              *&v108[8] = 2082;
              *&v108[10] = "";
              v109 = 1026;
              *v110 = 1;
              *&v110[4] = 1026;
              *&v110[6] = v59;
              _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#awd,kDataStatusNotification, sim:%{public}d, RAT:%{public}d}", v108, 0x1Eu);
            }
          }

          goto LABEL_52;
        }

        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v76 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *v108 = 0;
          _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_ERROR, "#awd,copyValuesFromDataStatusDictionary,failed", v108, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_52;
        }

        sub_1016AB5D4(v108);
        LOWORD(v97[0]) = 0;
        LODWORD(v96) = 2;
        _os_log_send_and_compose_impl(2, 0, v108, 1628, dword_100000000, qword_1025D4668, 16, "#awd,copyValuesFromDataStatusDictionary,failed", v97, v96);
        v84 = v95;
        sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v95);
        if (v84 == v108)
        {
          goto LABEL_52;
        }

        goto LABEL_190;
      }

      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v74 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *v108 = 0;
        _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_ERROR, "#awd,kDataStatusNotification,error fetching info", v108, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016AC07C();
      }
    }

    else
    {
      v70 = sub_100072010(a2);
      if (CFEqual(v70, @"kAltAccountConfiguredNotification"))
      {
        v71 = *a3;
        if (*a3)
        {
          buf[0] = 0;
          if (sub_10116E980(v71, buf))
          {
            a1[96].i32[0] = buf[0];
          }

          else
          {
            if (qword_1025D4660 != -1)
            {
              sub_1016AB5AC();
            }

            v81 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
            {
              *v108 = 0;
              _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_ERROR, "#awd,kAltAccountConfiguredNotification,error fetching alt account configuration", v108, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1016AC168();
            }
          }
        }
      }

      else
      {
        v77 = sub_100072010(a2);
        if (CFEqual(@"kTandemCapabilityNotification", v77))
        {
          v78 = *a3;
          if (*a3)
          {
            *buf = 0;
            if (sub_10116EBC8(v78, buf))
            {
              if (qword_1025D4660 != -1)
              {
                sub_1016AB5AC();
              }

              v79 = qword_1025D4668;
              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
              {
                *v108 = 134217984;
                *&v108[4] = *buf;
                _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_DEBUG, "#awd,kTandemCapabilityNotification,tandemCapability,%ld", v108, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1016AC340(buf);
              }

              if ((*buf - 1) < 4)
              {
                v80 = *buf;
              }

              else
              {
                v80 = 0;
              }

              a1[80].i32[1] = v80;
            }

            else
            {
              if (qword_1025D4660 != -1)
              {
                sub_1016AB5AC();
              }

              v82 = qword_1025D4668;
              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
              {
                *v108 = 0;
                _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_ERROR, "#awd,kTandemCapabilityNotification,error fetching context", v108, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_1016AC254();
              }
            }
          }
        }
      }
    }
  }
}