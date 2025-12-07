void sub_19BA44FC8(uint64_t a1, uint64_t a2)
{
  v110 = *MEMORY[0x1E69E9840];
  ++*(a1 + 88);
  v100 = *(a1 + 4);
  if (*(a1 + 32))
  {
    v6 = a1;
    v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    v3 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    if (*(a1 + 48))
    {
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v5 = &v107;
      v8 = qword_1EAFE4780;
      LODWORD(v9) = *(v6 + 120);
      if (os_log_type_enabled(qword_1EAFE4780, *(v6 + 120)))
      {
        v2 = v6 + 96;
        if (*(v6 + 119) < 0)
        {
          v2 = *v2;
        }

        sub_19BA46990(__p, *(v6 + 4));
        v10 = SHIBYTE(v104);
        v11 = *__p;
        sub_19BA46980(&v107, a2);
        v12 = __p;
        if (v10 < 0)
        {
          v12 = v11;
        }

        if (v109 >= 0)
        {
          v13 = &v107;
        }

        else
        {
          v13 = v107;
        }

        *buf = 136315650;
        *&buf[4] = v2;
        *&buf[12] = 2080;
        *&buf[14] = v12;
        *&buf[22] = 2080;
        *&buf[24] = v13;
        _os_log_impl(&dword_19B873000, v8, v9, "%scurrent_state,%s,event,%s", buf, 0x20u);
        if (v109 < 0)
        {
          operator delete(v107);
        }

        v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (SHIBYTE(v104) < 0)
        {
          operator delete(*__p);
        }
      }

      v14 = sub_19B87DD40();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4778 != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }

        v2 = v6 + 96;
        if (*(v6 + 119) < 0)
        {
          v2 = *v2;
        }

        v15 = qword_1EAFE4780;
        v9 = *(v6 + 120);
        sub_19BA46990(&v107, *(v6 + 4));
        v16 = v109;
        v17 = v107;
        sub_19BA46980(v98, a2);
        v18 = &v107;
        if (v16 < 0)
        {
          v18 = v17;
        }

        if (v99 >= 0)
        {
          v19 = v98;
        }

        else
        {
          v19 = v98[0];
        }

        *__p = 136315650;
        *&__p[4] = v2;
        v102 = 2080;
        v103 = v18;
        v104 = 2080;
        v105 = v19;
        v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v15, v9, "%scurrent_state,%s,event,%s", __p, 32);
        if (v99 < 0)
        {
          operator delete(v98[0]);
        }

        v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (v109 < 0)
        {
          operator delete(v107);
        }

        sub_19B885924("Generic", 1, 0, 2, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      v21 = *(v6 + 16);
      if (!v21)
      {
        goto LABEL_43;
      }

      v22 = *(v6 + 4);
      v23 = v6 + 16;
      do
      {
        if (*(v21 + 32) >= v22)
        {
          v23 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < v22));
      }

      while (v21);
      if (v23 != v6 + 16 && v22 >= *(v23 + 32))
      {
        v96 = (v6 + 8);
        v26 = *(v23 + 40);
        v27 = *(v23 + 48);
        v28 = (*(v6 + 32) + (v27 >> 1));
        if (v27)
        {
          v26 = *(*v28 + v26);
        }

        v29 = v26(v28, a2);
        LODWORD(v9) = v29;
        v97 = v29;
        if (a2 > 1 || v29 == v100)
        {
          if (*(v6 + 88) >= 2u)
          {
            if (qword_1EAFE4778 != -1)
            {
              dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
            }

            v30 = qword_1EAFE4780;
            v2 = &off_19BA89000;
            if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_ERROR))
            {
              v31 = (v6 + 96);
              if (*(v6 + 119) < 0)
              {
                v31 = *v31;
              }

              *buf = 136315138;
              *&buf[4] = v31;
              _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "%sNested invocation of state machine", buf, 0xCu);
            }

            v32 = sub_19B87DD40();
            if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4778 == -1)
              {
                goto LABEL_69;
              }

              goto LABEL_230;
            }
          }

          goto LABEL_73;
        }

        if (qword_1EAFE4778 != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }

        v90 = qword_1EAFE4780;
        if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = "assert";
          *&buf[28] = 2081;
          *&buf[30] = "newState == oldState";
          _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE4778 != -1)
          {
            dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
          }
        }

        v91 = qword_1EAFE4780;
        if (os_signpost_enabled(qword_1EAFE4780))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = "assert";
          *&buf[28] = 2081;
          *&buf[30] = "newState == oldState";
          _os_signpost_emit_with_name_impl(&dword_19B873000, v91, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE4778 != -1)
          {
            dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
          }
        }

        v6 = qword_1EAFE4780;
        if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = "assert";
          *&buf[28] = 2081;
          *&buf[30] = "newState == oldState";
          _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/GPS/Core/CLStateMachine.h", 111, "handleEvent");
      }

      else
      {
LABEL_43:
        if (qword_1EAFE4778 != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }

        v24 = qword_1EAFE4780;
        if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = "assert";
          *&buf[28] = 2081;
          *&buf[30] = "handlerFn != std::end(state_handlers)";
          _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE4778 != -1)
          {
            dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
          }
        }

        v25 = qword_1EAFE4780;
        if (os_signpost_enabled(qword_1EAFE4780))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = "assert";
          *&buf[28] = 2081;
          *&buf[30] = "handlerFn != std::end(state_handlers)";
          _os_signpost_emit_with_name_impl(&dword_19B873000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE4778 != -1)
          {
            dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
          }
        }

        v6 = qword_1EAFE4780;
        if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = "assert";
          *&buf[28] = 2081;
          *&buf[30] = "handlerFn != std::end(state_handlers)";
          _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/GPS/Core/CLStateMachine.h", 106, "handleEvent");
      }
    }

    else
    {
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v88 = qword_1EAFE4780;
      v2 = &off_19BA89000;
      v9 = "assert";
      if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "fIniitalized && must call initialize(state) first";
        _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE4778 != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v89 = qword_1EAFE4780;
      if (os_signpost_enabled(qword_1EAFE4780))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "fIniitalized && must call initialize(state) first";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v89, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE4778 != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v6 = qword_1EAFE4780;
      if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "fIniitalized && must call initialize(state) first";
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/GPS/Core/CLStateMachine.h", 101, "handleEvent");
    }
  }

  else
  {
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v9 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    v86 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handler && invalid handler";
      _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v87 = qword_1EAFE4780;
    if (os_signpost_enabled(qword_1EAFE4780))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handler && invalid handler";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v87, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v6 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handler && invalid handler";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/GPS/Core/CLStateMachine.h", 100, "handleEvent");
  }

  while (1)
  {
    __break(1u);
LABEL_230:
    dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
LABEL_69:
    v33 = *(v3 + 240);
    v34 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v34 = *v34;
    }

    *__p = *(v2 + 328);
    *&__p[4] = v34;
    v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v33, 16, "%sNested invocation of state machine", __p, 12);
    sub_19B885924("Generic", 1, 0, 0, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v35);
    if (v35 != buf)
    {
      free(v35);
    }

LABEL_73:
    if (*(v4 + 239) != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v36 = *(v3 + 240);
    v37 = *(v6 + 120);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v38 = *v38;
      }

      sub_19BA46990(buf, v9);
      if (buf[23] >= 0)
      {
        v39 = buf;
      }

      else
      {
        v39 = *buf;
      }

      *__p = 136315394;
      *&__p[4] = v38;
      v102 = 2080;
      v103 = v39;
      _os_log_impl(&dword_19B873000, v36, v37, "%snewState,%s", __p, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v40 = sub_19B87DD40();
    if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v41 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v41 = *v41;
      }

      v42 = *(v3 + 240);
      v43 = *(v6 + 120);
      sub_19BA46990(__p, v9);
      if (v104 >= 0)
      {
        v44 = __p;
      }

      else
      {
        v44 = *__p;
      }

      LODWORD(v107) = 136315394;
      *(v5 + 4) = v41;
      v108 = 2080;
      *(v5 + 14) = v44;
      v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v42, v43, "%snewState,%s", &v107, 22);
      if (SHIBYTE(v104) < 0)
      {
        operator delete(*__p);
      }

      sub_19B885924("Generic", 1, 0, 2, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    if (v9 == v100)
    {
      break;
    }

    if (*(v4 + 239) != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v46 = *(v3 + 240);
    v2 = *(v6 + 120);
    if (os_log_type_enabled(v46, *(v6 + 120)))
    {
      v47 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v47 = *v47;
      }

      sub_19BA46990(__p, v100);
      v48 = SHIBYTE(v104);
      v49 = *__p;
      sub_19B8759E8(&v107, "Exit");
      v50 = __p;
      if (v48 < 0)
      {
        v50 = v49;
      }

      if (v109 >= 0)
      {
        v51 = &v107;
      }

      else
      {
        v51 = *v5;
      }

      *buf = 136315650;
      *&buf[4] = v47;
      *&buf[12] = 2080;
      *&buf[14] = v50;
      *&buf[22] = 2080;
      *&buf[24] = v51;
      _os_log_impl(&dword_19B873000, v46, v2, "%soldState,%s,event,%s", buf, 0x20u);
      if (v109 < 0)
      {
        operator delete(*v5);
      }

      v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      if (SHIBYTE(v104) < 0)
      {
        operator delete(*__p);
      }
    }

    v52 = sub_19B87DD40();
    if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v53 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v53 = *v53;
      }

      v54 = *(v3 + 240);
      v2 = *(v6 + 120);
      sub_19BA46990(&v107, v100);
      v55 = v109;
      v56 = *v5;
      sub_19B8759E8(v98, "Exit");
      v57 = &v107;
      if (v55 < 0)
      {
        v57 = v56;
      }

      if (v99 >= 0)
      {
        v58 = v98;
      }

      else
      {
        v58 = v98[0];
      }

      *__p = 136315650;
      *&__p[4] = v53;
      v102 = 2080;
      v103 = v57;
      v104 = 2080;
      v105 = v58;
      v59 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v54, v2, "%soldState,%s,event,%s", __p, 32);
      if (v99 < 0)
      {
        operator delete(v98[0]);
      }

      v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      if (v109 < 0)
      {
        operator delete(*v5);
      }

      sub_19B885924("Generic", 1, 0, 2, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v59);
      if (v59 != buf)
      {
        free(v59);
      }
    }

    v60 = *(v6 + 32);
    *buf = &v100;
    v61 = sub_19BA4BCDC(v96, v100, buf);
    v62 = v61[5];
    v63 = v61[6];
    v64 = (v60 + (v63 >> 1));
    if (v63)
    {
      v62 = *(*v64 + v62);
    }

    v65 = v62(v64, 1);
    if (v65 == v100)
    {
      *(v6 + 4) = v9;
      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v66 = *(v3 + 240);
      v2 = *(v6 + 120);
      if (os_log_type_enabled(v66, *(v6 + 120)))
      {
        v67 = (v6 + 96);
        if (*(v6 + 119) < 0)
        {
          v67 = *v67;
        }

        sub_19BA46990(__p, v9);
        v68 = SHIBYTE(v104);
        v69 = *__p;
        sub_19B8759E8(&v107, "Enter");
        v70 = __p;
        if (v68 < 0)
        {
          v70 = v69;
        }

        if (v109 >= 0)
        {
          v71 = &v107;
        }

        else
        {
          v71 = *v5;
        }

        *buf = 136315650;
        *&buf[4] = v67;
        *&buf[12] = 2080;
        *&buf[14] = v70;
        *&buf[22] = 2080;
        *&buf[24] = v71;
        _os_log_impl(&dword_19B873000, v66, v2, "%snewState,%s,event,%s", buf, 0x20u);
        if (v109 < 0)
        {
          operator delete(*v5);
        }

        v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (SHIBYTE(v104) < 0)
        {
          operator delete(*__p);
        }
      }

      v72 = sub_19B87DD40();
      if (*(v72 + 160) > 1 || *(v72 + 164) > 1 || *(v72 + 168) > 1 || *(v72 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }

        v73 = (v6 + 96);
        if (*(v6 + 119) < 0)
        {
          v73 = *v73;
        }

        v74 = *(v3 + 240);
        v2 = *(v6 + 120);
        sub_19BA46990(&v107, v9);
        v75 = v109;
        v76 = *v5;
        sub_19B8759E8(v98, "Enter");
        v77 = &v107;
        if (v75 < 0)
        {
          v77 = v76;
        }

        if (v99 >= 0)
        {
          v78 = v98;
        }

        else
        {
          v78 = v98[0];
        }

        *__p = 136315650;
        *&__p[4] = v73;
        v102 = 2080;
        v103 = v77;
        v104 = 2080;
        v105 = v78;
        v79 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v74, v2, "%snewState,%s,event,%s", __p, 32);
        if (v99 < 0)
        {
          operator delete(v98[0]);
        }

        v4 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (v109 < 0)
        {
          operator delete(*v5);
        }

        sub_19B885924("Generic", 1, 0, 2, "State CLStateMachine<CLEmergencyLocationSelectorInternal>::handleEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v79);
        if (v79 != buf)
        {
          free(v79);
        }
      }

      v80 = *(v6 + 32);
      *buf = &v97;
      v81 = sub_19BA4BCDC(v96, v9, buf);
      v82 = v81[5];
      v83 = v81[6];
      v84 = (v80 + (v83 >> 1));
      if (v83)
      {
        v82 = *(*v84 + v82);
      }

      v85 = v82(v84, 0);
      if (v85 == v97)
      {
        break;
      }

      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v94 = *(v3 + 240);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == newState";
        _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v95 = *(v3 + 240);
      if (os_signpost_enabled(v95))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == newState";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v95, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v6 = *(v3 + 240);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == newState";
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/GPS/Core/CLStateMachine.h", 129, "handleEvent");
    }

    else
    {
      if (*(v4 + 239) != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v92 = *(v3 + 240);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == oldState";
        _os_log_impl(&dword_19B873000, v92, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v93 = *(v3 + 240);
      if (os_signpost_enabled(v93))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == oldState";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v93, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (*(v4 + 239) != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }
      }

      v6 = *(v3 + 240);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "retState == oldState";
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/GPS/Core/CLStateMachine.h", 125, "handleEvent");
    }
  }

  --*(v6 + 88);
}

void sub_19BA46938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA469A0(uint64_t a1, double a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  if (!v3)
  {
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v38 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_ERROR))
    {
      v39 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v39 = *v39;
      }

      *buf = 136315138;
      *&buf[4] = v39;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "%sInvoking timers without callback queue set", buf, 0xCu);
    }

    v40 = sub_19B87DD40();
    if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v41 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v41 = *v41;
      }

      *__p = 136315138;
      *&__p[4] = v41;
      v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4780, 16, "%sInvoking timers without callback queue set", __p, 12);
      sub_19B885924("Generic", 1, 0, 0, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::setTimeoutEvent(Event, double) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v43 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v44 = qword_1EAFE4780;
    if (os_signpost_enabled(qword_1EAFE4780))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v45 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/GPS/Core/CLStateMachine.h", 174, "setTimeoutEvent");
    __break(1u);
  }

  if (a2 < 0.0)
  {
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v5 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      v6 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v6 = *v6;
      }

      sub_19B8759E8(__p, "SendLocationTimeout");
      if (v55 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = *__p;
      }

      *buf = 136315650;
      *&buf[4] = v6;
      *&buf[12] = 2082;
      *&buf[14] = v7;
      *&buf[22] = 2050;
      *&buf[24] = a2;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "%sCannot start timer, event, %{public}s, timeOutSec, %{public}.2f", buf, 0x20u);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(*__p);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v9 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v9 = *v9;
      }

      v10 = qword_1EAFE4780;
      sub_19B8759E8(v48, "SendLocationTimeout");
      if (v51 >= 0)
      {
        v11 = v48;
      }

      else
      {
        v11 = *v48;
      }

      *__p = 136315650;
      *&__p[4] = v9;
      v53 = 2082;
      v54 = v11;
      v55 = 2050;
      v56 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v10, 17, "%sCannot start timer, event, %{public}s, timeOutSec, %{public}.2f", __p, 32);
      if (v51 < 0)
      {
        operator delete(*v48);
      }

LABEL_89:
      sub_19B885924("Generic", 1, 0, 0, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::setTimeoutEvent(Event, double) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v12);
LABEL_90:
      if (v12 != buf)
      {
        free(v12);
      }

      return;
    }

    return;
  }

  v14 = (a1 + 64);
  v13 = *(a1 + 64);
  if (v13)
  {
    v15 = a1 + 64;
    do
    {
      if (*(v13 + 32) >= 4)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 32) < 4));
    }

    while (v13);
    if (v15 != v14 && *(v15 + 32) <= 4)
    {
      v16 = *(v15 + 40);
      if (v16)
      {
LABEL_43:
        v21 = dispatch_time(0, (a2 * 1000000000.0));
        dispatch_source_set_timer(v16, v21, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
        if (qword_1EAFE4778 != -1)
        {
          dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
        }

        v22 = qword_1EAFE4780;
        v23 = *(a1 + 120);
        if (os_log_type_enabled(qword_1EAFE4780, v23))
        {
          v24 = (a1 + 96);
          if (*(a1 + 119) < 0)
          {
            v24 = *v24;
          }

          sub_19BA46980(__p, 4);
          if (v55 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = *__p;
          }

          *buf = 136315650;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = v25;
          *&buf[22] = 2048;
          *&buf[24] = a2;
          _os_log_impl(&dword_19B873000, v22, v23, "%sevent,%s,timeout,%.2f", buf, 0x20u);
          if (SHIBYTE(v55) < 0)
          {
            operator delete(*__p);
          }
        }

        v26 = sub_19B87DD40();
        if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4778 != -1)
          {
            dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
          }

          v27 = (a1 + 96);
          if (*(a1 + 119) < 0)
          {
            v27 = *v27;
          }

          v28 = qword_1EAFE4780;
          v29 = *(a1 + 120);
          sub_19BA46980(v48, 4);
          if (v51 >= 0)
          {
            v30 = v48;
          }

          else
          {
            v30 = *v48;
          }

          *__p = 136315650;
          *&__p[4] = v27;
          v53 = 2080;
          v54 = v30;
          v55 = 2048;
          v56 = a2;
          v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v28, v29, "%sevent,%s,timeout,%.2f", __p, 32);
          if (v51 < 0)
          {
            operator delete(*v48);
          }

          sub_19B885924("Generic", 1, 0, 2, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::setTimeoutEvent(Event, double) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v12);
          goto LABEL_90;
        }

        return;
      }
    }
  }

  v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
  if (v17)
  {
    v16 = v17;
    v18 = *v14;
    if (!*v14)
    {
LABEL_41:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 32);
        if (v20 < 5)
        {
          break;
        }

        v18 = *v19;
        if (!*v19)
        {
          goto LABEL_41;
        }
      }

      if (v20 == 4)
      {
        break;
      }

      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_41;
      }
    }

    v19[5] = v17;
    dispatch_source_set_timer(v17, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_19BA4BDC0;
    handler[3] = &unk_1E753CC40;
    handler[4] = a1;
    v47 = 4;
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(v16);
    goto LABEL_43;
  }

  if (qword_1EAFE4778 != -1)
  {
    dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
  }

  v31 = qword_1EAFE4780;
  if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
  {
    v32 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v32 = *v32;
    }

    sub_19B8759E8(buf, "SendLocationTimeout");
    if (buf[23] >= 0)
    {
      v33 = buf;
    }

    else
    {
      v33 = *buf;
    }

    *__p = 136315394;
    *&__p[4] = v32;
    v53 = 2082;
    v54 = v33;
    _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_FAULT, "%scannot create timer, event, %{public}s", __p, 0x16u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v34 = sub_19B87DD40();
  if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v35 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v35 = *v35;
    }

    v36 = qword_1EAFE4780;
    sub_19B8759E8(__p, "SendLocationTimeout");
    if (v55 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = *__p;
    }

    *v48 = 136315394;
    *&v48[4] = v35;
    v49 = 2082;
    v50 = v37;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v36, 17, "%scannot create timer, event, %{public}s", v48, 22);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(*__p);
    }

    goto LABEL_89;
  }
}

void sub_19BA4759C(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 64);
  if (!v4)
  {
    goto LABEL_33;
  }

  v5 = a1 + 64;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 != a1 + 64 && *(v5 + 32) <= a2 && (v6 = *(v5 + 40)) != 0)
  {
    dispatch_source_set_timer(v6, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v7 = qword_1EAFE4780;
    v8 = *(a1 + 120);
    if (os_log_type_enabled(qword_1EAFE4780, v8))
    {
      v9 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v9 = *v9;
      }

      sub_19BA46980(__p, a2);
      if (v33 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v9;
      v25 = 2080;
      v26 = v10;
      _os_log_impl(&dword_19B873000, v7, v8, "%scancel timer,event,%s", buf, 0x16u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v12 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v12 = *v12;
      }

      v13 = qword_1EAFE4780;
      v14 = *(a1 + 120);
      sub_19BA46980(buf, a2);
      if (v27 >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      v28 = 136315394;
      v29 = v12;
      v30 = 2080;
      v31 = v15;
      v16 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v13, v14, "%scancel timer,event,%s", &v28, 22);
      if (v27 < 0)
      {
        operator delete(*buf);
      }

LABEL_56:
      sub_19B885924("Generic", 1, 0, 2, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::cancelTimeoutEvent(Event) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v16);
      if (v16 != __p)
      {
        free(v16);
      }
    }
  }

  else
  {
LABEL_33:
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v17 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v18 = *v18;
      }

      sub_19BA46980(__p, a2);
      if (v33 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v18;
      v25 = 2080;
      v26 = v19;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#Warning,%s,cancel timer,notFound, event,%s", buf, 0x16u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = sub_19B87DD40();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }

      v21 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v21 = *v21;
      }

      v22 = qword_1EAFE4780;
      sub_19BA46980(buf, a2);
      if (v27 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      v28 = 136315394;
      v29 = v21;
      v30 = 2080;
      v31 = v23;
      v16 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v22, 0, "#Warning,%s,cancel timer,notFound, event,%s", &v28, 22);
      if (v27 < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_56;
    }
  }
}

uint64_t sub_19BA47A64(id *a1, char *a2, void *a3, uint64_t a4)
{
  v158 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v33 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v155 = a1;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isLocationUsable,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v150 = 134283521;
    v151 = a1;
    v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,isLocationUsable,this:%{private}p,nil fConfig,early return", &v150, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
LABEL_27:
    if (v35 == buf)
    {
      return 0;
    }

    goto LABEL_52;
  }

  if (!a2 || !a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v36 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_msgSend_feature(*a1, v37, v38, v39);
      *buf = 138543362;
      v155 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v41, v40, v42);
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,invalid parameters", buf, 0xCu);
    }

    v43 = sub_19B87DD40();
    if (*(v43 + 160) <= 1 && *(v43 + 164) <= 1 && *(v43 + 168) <= 1 && !*(v43 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v47 = qword_1ED519090;
    v48 = objc_msgSend_feature(*a1, v44, v45, v46);
    v150 = 138543362;
    v151 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v49, v48, v50);
    v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v47, 0, "#CLELS,%{public}@,isLocationUsable,invalid parameters", &v150, 12);
    goto LABEL_51;
  }

  objc_msgSend_coordinate(a3, a2, a3, a4);
  if (!CLLocationCoordinate2DIsValid(v159))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v51 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v55 = objc_msgSend_feature(*a1, v52, v53, v54);
      *buf = 138543362;
      v155 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v56, v55, v57);
      _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,invalid coordinates", buf, 0xCu);
    }

    v58 = sub_19B87DD40();
    if (*(v58 + 160) <= 1 && *(v58 + 164) <= 1 && *(v58 + 168) <= 1 && !*(v58 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v62 = qword_1ED519090;
    v63 = objc_msgSend_feature(*a1, v59, v60, v61);
    v150 = 138543362;
    v151 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v64, v63, v65);
    v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v62, 0, "#CLELS,%{public}@,isLocationUsable,invalid coordinates", &v150, 12);
    goto LABEL_51;
  }

  v9 = sub_19BA4A7E8(a1, a3, v7, v8);
  objc_msgSend_maxUsableAge(a2, v10, v11, v12);
  if (fabs(v9) > v16)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_msgSend_feature(*a1, v18, v19, v20);
      *buf = 138543618;
      v155 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v22, v21, v23);
      v156 = 2050;
      v157 = v9;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,location too old. Age:%{public}f", buf, 0x16u);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v28 = qword_1ED519090;
    v29 = objc_msgSend_feature(*a1, v25, v26, v27);
    v150 = 138543618;
    v151 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v30, v29, v31);
    v152 = 2050;
    v153 = v9;
    v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v28, 0, "#CLELS,%{public}@,isLocationUsable,location too old. Age:%{public}f", &v150, 22);
LABEL_51:
    v35 = v32;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v32);
    if (v35 == buf)
    {
      return 0;
    }

LABEL_52:
    free(v35);
    return 0;
  }

  objc_msgSend_horizontalAccuracy(a3, v13, v14, v15);
  if (v70 <= 0.0 || (objc_msgSend_horizontalAccuracy(a3, v67, v68, v69), v72 = v71, objc_msgSend_maxUsableHunc(a2, v73, v74, v75), v72 > v79))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v80 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v84 = objc_msgSend_feature(*a1, v81, v82, v83);
      v87 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v85, v84, v86);
      objc_msgSend_horizontalAccuracy(a3, v88, v89, v90);
      *buf = 138543618;
      v155 = v87;
      v156 = 2050;
      v157 = v91;
      _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,horizontal accuracy too low. Hunc:%{public}f", buf, 0x16u);
    }

    v92 = sub_19B87DD40();
    if (*(v92 + 160) <= 1 && *(v92 + 164) <= 1 && *(v92 + 168) <= 1 && !*(v92 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v96 = qword_1ED519090;
    v97 = objc_msgSend_feature(*a1, v93, v94, v95);
    v100 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v98, v97, v99);
    objc_msgSend_horizontalAccuracy(a3, v101, v102, v103);
    v150 = 138543618;
    v151 = v100;
    v152 = 2050;
    v153 = v104;
    v105 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v96, 0, "#CLELS,%{public}@,isLocationUsable,horizontal accuracy too low. Hunc:%{public}f", &v150, 22);
    goto LABEL_67;
  }

  v106 = objc_msgSend_integrity(a3, v76, v77, v78);
  if (v106 < objc_msgSend_minUsableIntegrity(a2, v107, v108, v109))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v113 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v117 = objc_msgSend_feature(*a1, v114, v115, v116);
      *buf = 138543618;
      v155 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v118, v117, v119);
      v156 = 1026;
      LODWORD(v157) = objc_msgSend_integrity(a3, v120, v121, v122);
      _os_log_impl(&dword_19B873000, v113, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,integrity too low. Integrity:%{public}d", buf, 0x12u);
    }

    v123 = sub_19B87DD40();
    if (*(v123 + 160) <= 1 && *(v123 + 164) <= 1 && *(v123 + 168) <= 1 && !*(v123 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v127 = qword_1ED519090;
    v128 = objc_msgSend_feature(*a1, v124, v125, v126);
    v150 = 138543618;
    v151 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v129, v128, v130);
    v152 = 1026;
    LODWORD(v153) = objc_msgSend_integrity(a3, v131, v132, v133);
    v105 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v127, 0, "#CLELS,%{public}@,isLocationUsable,integrity too low. Integrity:%{public}d", &v150, 18);
LABEL_67:
    v35 = v105;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
    goto LABEL_27;
  }

  if (objc_msgSend_vuncCheckRequiredForUsability(a2, v110, v111, v112) && (sub_19BA48598(a1, a2, a3, v134) & 1) == 0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v135 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v139 = objc_msgSend_feature(*a1, v136, v137, v138);
      *buf = 138543362;
      v155 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v140, v139, v141);
      _os_log_impl(&dword_19B873000, v135, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsable,unusable altitude", buf, 0xCu);
    }

    v142 = sub_19B87DD40();
    if (*(v142 + 160) <= 1 && *(v142 + 164) <= 1 && *(v142 + 168) <= 1 && !*(v142 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v146 = qword_1ED519090;
    v147 = objc_msgSend_feature(*a1, v143, v144, v145);
    v150 = 138543362;
    v151 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v148, v147, v149);
    v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v146, 0, "#CLELS,%{public}@,isLocationUsable,unusable altitude", &v150, 12);
    goto LABEL_51;
  }

  return 1;
}

uint64_t sub_19BA48598(id *a1, char *a2, void *a3, uint64_t a4)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v47 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v100 = a1;
      _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isAltitudeUsable,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v48 = sub_19B87DD40();
    if ((*(v48 + 160) & 0x80000000) != 0 && (*(v48 + 164) & 0x80000000) != 0 && (*(v48 + 168) & 0x80000000) != 0 && !*(v48 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v95 = 134283521;
    v96 = a1;
    v46 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,isAltitudeUsable,this:%{private}p,nil fConfig,early return", &v95, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
LABEL_28:
    if (v46 == buf)
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (!a2 || !a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v49 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v53 = objc_msgSend_feature(*a1, v50, v51, v52);
      *buf = 138543362;
      v100 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v54, v53, v55);
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsable,NO,invalid parameters", buf, 0xCu);
    }

    v56 = sub_19B87DD40();
    if (*(v56 + 160) <= 1 && *(v56 + 164) <= 1 && *(v56 + 168) <= 1 && !*(v56 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v60 = qword_1ED519090;
    v61 = objc_msgSend_feature(*a1, v57, v58, v59);
    v95 = 138543362;
    v96 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v62, v61, v63);
    v46 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v60, 0, "#CLELS,%{public}@,isAltitudeUsable,NO,invalid parameters", &v95, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v46);
    if (v46 == buf)
    {
      return 0;
    }

LABEL_41:
    free(v46);
    return 0;
  }

  objc_msgSend_verticalAccuracy(a3, a2, a3, a4);
  if (v10 <= 0.0 || (objc_msgSend_verticalAccuracy(a3, v7, v8, v9), v12 = v11, objc_msgSend_maxUsableVunc(a2, v13, v14, v15), v12 > v19))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v20 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_msgSend_feature(*a1, v21, v22, v23);
      v27 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v25, v24, v26);
      objc_msgSend_verticalAccuracy(a3, v28, v29, v30);
      *buf = 138543618;
      v100 = v27;
      v101 = 2050;
      v102 = v31;
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsable,NO,vertical accuracy too low,%{public}.2f", buf, 0x16u);
    }

    v32 = sub_19B87DD40();
    if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v36 = qword_1ED519090;
    v37 = objc_msgSend_feature(*a1, v33, v34, v35);
    v40 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v38, v37, v39);
    objc_msgSend_verticalAccuracy(a3, v41, v42, v43);
    v95 = 138543618;
    v96 = v40;
    v97 = 2050;
    v98 = v44;
    v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v36, 0, "#CLELS,%{public}@,isAltitudeUsable,NO,vertical accuracy too low,%{public}.2f", &v95, 22);
    goto LABEL_17;
  }

  objc_msgSend_ellipsoidalAltitude(a3, v16, v17, v18);
  if (v68 < -450.0 || (objc_msgSend_ellipsoidalAltitude(a3, v65, v66, v67), v69 > 8850.0))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v70 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v74 = objc_msgSend_feature(*a1, v71, v72, v73);
      v77 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v75, v74, v76);
      objc_msgSend_ellipsoidalAltitude(a3, v78, v79, v80);
      *buf = 138543619;
      v100 = v77;
      v101 = 2049;
      v102 = v81;
      _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsable,NO,received altitude is not valid,%{private}.2f", buf, 0x16u);
    }

    v82 = sub_19B87DD40();
    if (*(v82 + 160) <= 1 && *(v82 + 164) <= 1 && *(v82 + 168) <= 1 && !*(v82 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v86 = qword_1ED519090;
    v87 = objc_msgSend_feature(*a1, v83, v84, v85);
    v90 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v88, v87, v89);
    objc_msgSend_ellipsoidalAltitude(a3, v91, v92, v93);
    v95 = 138543619;
    v96 = v90;
    v97 = 2049;
    v98 = v94;
    v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v86, 0, "#CLELS,%{public}@,isAltitudeUsable,NO,received altitude is not valid,%{private}.2f", &v95, 22);
LABEL_17:
    v46 = v45;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsable(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
    goto LABEL_28;
  }

  return 1;
}

void sub_19BA48CA4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v103 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (a2)
    {
      v6 = a3;
      v7 = *(a1 + 176);
      if (v7)
      {
        if (sub_19BA48598(a1, a2, v7, a4))
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v11 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_msgSend_feature(*a1, v12, v13, v14);
            *buf = 138543362;
            *&buf[4] = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v16, v15, v17);
            _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendCachedLocation,location sent to client without altitude stitching", buf, 0xCu);
          }

          v18 = sub_19B87DD40();
          if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
            }

            v22 = qword_1ED519090;
            v23 = objc_msgSend_feature(*a1, v19, v20, v21);
            LODWORD(v92[0]) = 138543362;
            *(v92 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v24, v23, v25);
            v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v22, 0, "#CLELS,%{public}@,sendCachedLocation,location sent to client without altitude stitching", v92, 12);
            sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendCachedLocation(CLEmergencyLocationUsabilityCriteria *, BOOL)", "CoreLocation: %s\n", v26);
            if (v26 != buf)
            {
              free(v26);
            }
          }

          sub_19BA4B368(a1, *(a1 + 176));
          sub_19BA4AC60(a1, *(a1 + 176), v6);
          if ((v6 & 1) == 0)
          {
            ++*(a1 + 256);
          }

          return;
        }

        objc_msgSend_trustedTimestamp(*(a1 + 176), v8, v9, v10);
        v34 = v33;
        v97 = 0u;
        memset(v98, 0, 28);
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        memset(v92, 0, sizeof(v92));
        v35 = *(a1 + 176);
        if (v35)
        {
          objc_msgSend_clientLocation(v35, v30, v31, v32);
        }

        *&v98[1] = 0;
        *(&v92[1] + 12) = xmmword_19BA896C0;
        if (objc_msgSend_altitudeStitchingEnabled(a2, v30, v31, v32) && (v37 = *(a1 + 184)) != 0 && sub_19BA4962C(a1, a2, v37, v36))
        {
          objc_msgSend_altitude(*(a1 + 184), v38, v39, v40);
          *(&v92[1] + 12) = v41;
          objc_msgSend_ellipsoidalAltitude(*(a1 + 184), v42, v43, v44);
          *&v98[1] = v45;
          objc_msgSend_verticalAccuracy(*(a1 + 184), v46, v47, v48);
          *(&v92[2] + 4) = v49;
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v50 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v54 = objc_msgSend_feature(*a1, v51, v52, v53);
            v57 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v55, v54, v56);
            *buf = 138543362;
            *&buf[4] = v57;
            _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendCachedLocation,location sent to client with altitude stitching", buf, 0xCu);
          }

          v58 = sub_19B87DD40();
          if (*(v58 + 160) <= 1 && *(v58 + 164) <= 1 && *(v58 + 168) <= 1 && !*(v58 + 152))
          {
            goto LABEL_62;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v62 = qword_1ED519090;
          v63 = objc_msgSend_feature(*a1, v59, v60, v61);
          LODWORD(v90[0]) = 138543362;
          *(v90 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v64, v63, v65);
          v66 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v62, 0, "#CLELS,%{public}@,sendCachedLocation,location sent to client with altitude stitching", v90, 12);
        }

        else
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v67 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v71 = objc_msgSend_feature(*a1, v68, v69, v70);
            v74 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v72, v71, v73);
            *buf = 138543362;
            *&buf[4] = v74;
            _os_log_impl(&dword_19B873000, v67, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendCachedLocation,location sent to client with altitude cleared", buf, 0xCu);
          }

          v75 = sub_19B87DD40();
          if (*(v75 + 160) <= 1 && *(v75 + 164) <= 1 && *(v75 + 168) <= 1 && !*(v75 + 152))
          {
            goto LABEL_62;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v79 = qword_1ED519090;
          v80 = objc_msgSend_feature(*a1, v76, v77, v78);
          LODWORD(v90[0]) = 138543362;
          *(v90 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v81, v80, v82);
          v66 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v79, 0, "#CLELS,%{public}@,sendCachedLocation,location sent to client with altitude cleared", v90, 12);
        }

        v83 = v66;
        sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendCachedLocation(CLEmergencyLocationUsabilityCriteria *, BOOL)", "CoreLocation: %s\n", v66);
        if (v83 != buf)
        {
          free(v83);
        }

LABEL_62:
        v84 = objc_alloc(MEMORY[0x1E6985C40]);
        v90[6] = v96;
        v90[7] = v97;
        v91[0] = v98[0];
        *(v91 + 12) = *(v98 + 12);
        v90[2] = v92[2];
        v90[3] = v93;
        v90[4] = v94;
        v90[5] = v95;
        v90[0] = v92[0];
        v90[1] = v92[1];
        *buf = xmmword_19BA8A740;
        v100 = 0xBFF0000000000000;
        v101 = v34;
        memcpy(v102, &unk_19BA8A760, sizeof(v102));
        v86 = objc_msgSend_initWithClientLocation_clientLocationPrivate_(v84, v85, v90, buf);
        sub_19BA4B368(a1, v86);
        if (v86)
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v87 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_DEFAULT, "#CLELS,sendCachedLocation,updating metrics", buf, 2u);
          }

          v88 = sub_19B87DD40();
          if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
            }

            LOWORD(v90[0]) = 0;
            v89 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,sendCachedLocation,updating metrics", v90, 2);
            sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendCachedLocation(CLEmergencyLocationUsabilityCriteria *, BOOL)", "CoreLocation: %s\n", v89);
            if (v89 != buf)
            {
              free(v89);
            }
          }

          sub_19BA4AC60(a1, *(a1 + 176), v6);
        }

        if ((v6 & 1) == 0)
        {
          ++*(a1 + 256);
        }

        return;
      }
    }

    sub_19BA4B368(a1, 0);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v27 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = a1;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,sendCachedLocation,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v92[0]) = 134283521;
      *(v92 + 4) = a1;
      v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,sendCachedLocation,this:%{private}p,nil fConfig,early return", v92, 12);
      sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::sendCachedLocation(CLEmergencyLocationUsabilityCriteria *, BOOL)", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }
}

uint64_t sub_19BA4962C(id *a1, void *a2, char *a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v51 = a1;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isLocationRecentEnough,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v46 = 134283521;
    v47 = a1;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,isLocationRecentEnough,this:%{private}p,nil fConfig,early return", &v46, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isLocationRecentEnough(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v14);
    if (v14 == buf)
    {
      return 0;
    }

    goto LABEL_40;
  }

  if (a2 && a3)
  {
    v6 = sub_19BA4A7E8(a1, a3, a3, a4);
    objc_msgSend_maxUsableAge(a2, v7, v8, v9);
    if (fabs(v6) <= v10)
    {
      return 1;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v31 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_msgSend_feature(*a1, v32, v33, v34);
      *buf = 138543618;
      v51 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v36, v35, v37);
      v52 = 2050;
      v53 = v6;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,canSendLocationAtTimeout,not sending,location too old. Age:%{public}f", buf, 0x16u);
    }

    v38 = sub_19B87DD40();
    if (*(v38 + 160) <= 1 && *(v38 + 164) <= 1 && *(v38 + 168) <= 1 && !*(v38 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v42 = qword_1ED519090;
    v43 = objc_msgSend_feature(*a1, v39, v40, v41);
    v46 = 138543618;
    v47 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v44, v43, v45);
    v48 = 2050;
    v49 = v6;
    v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v42, 0, "#CLELS,%{public}@,canSendLocationAtTimeout,not sending,location too old. Age:%{public}f", &v46, 22);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_msgSend_feature(*a1, v16, v17, v18);
      *buf = 138543362;
      v51 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v20, v19, v21);
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,canSendLocationAtTimeout,will send nil location", buf, 0xCu);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) <= 1 && *(v22 + 164) <= 1 && *(v22 + 168) <= 1 && !*(v22 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v26 = qword_1ED519090;
    v27 = objc_msgSend_feature(*a1, v23, v24, v25);
    v46 = 138543362;
    v47 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v28, v27, v29);
    v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v26, 0, "#CLELS,%{public}@,canSendLocationAtTimeout,will send nil location", &v46, 12);
  }

  v14 = v30;
  sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationRecentEnough(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v30);
  if (v14 != buf)
  {
LABEL_40:
    free(v14);
  }

  return 0;
}

uint64_t sub_19BA49B28(id *a1, char *a2, void *a3, uint64_t a4)
{
  v179 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v40 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v176 = a1;
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isLocationUsableForFirstUpdate,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v41 = sub_19B87DD40();
    if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v171 = 134283521;
    v172 = a1;
    v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,isLocationUsableForFirstUpdate,this:%{private}p,nil fConfig,early return", &v171, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
    goto LABEL_27;
  }

  if (!a2 || !a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v42 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v46 = objc_msgSend_feature(*a1, v43, v44, v45);
      *buf = 138543362;
      v176 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v47, v46, v48);
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving,invalid parameters", buf, 0xCu);
    }

    v49 = sub_19B87DD40();
    if (*(v49 + 160) <= 1 && *(v49 + 164) <= 1 && *(v49 + 168) <= 1 && !*(v49 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v53 = qword_1ED519090;
    v54 = objc_msgSend_feature(*a1, v50, v51, v52);
    v171 = 138543362;
    v172 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v55, v54, v56);
    v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v53, 0, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving,invalid parameters", &v171, 12);
    goto LABEL_51;
  }

  objc_msgSend_horizontalAccuracy(a3, a2, a3, a4);
  if (v10 <= 0.0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v58 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v62 = objc_msgSend_feature(*a1, v59, v60, v61);
      *buf = 138543362;
      v176 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v63, v62, v64);
      _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving,invalid hunc", buf, 0xCu);
    }

    v65 = sub_19B87DD40();
    if (*(v65 + 160) <= 1 && *(v65 + 164) <= 1 && *(v65 + 168) <= 1 && !*(v65 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v69 = qword_1ED519090;
    v70 = objc_msgSend_feature(*a1, v66, v67, v68);
    v171 = 138543362;
    v172 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v71, v70, v72);
    v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v69, 0, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving,invalid hunc", &v171, 12);
    goto LABEL_51;
  }

  v11 = objc_msgSend_integrity(a3, v7, v8, v9);
  if (v11 < objc_msgSend_minUsableIntegrity(a2, v12, v13, v14))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_feature(*a1, v19, v20, v21);
      *buf = 138543618;
      v176 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v23, v22, v24);
      v177 = 1026;
      LODWORD(v178) = objc_msgSend_integrity(a3, v25, v26, v27);
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving,integrity too low. Integrity:%{public}d", buf, 0x12u);
    }

    v28 = sub_19B87DD40();
    if (*(v28 + 160) <= 1 && *(v28 + 164) <= 1 && *(v28 + 168) <= 1 && !*(v28 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v32 = qword_1ED519090;
    v33 = objc_msgSend_feature(*a1, v29, v30, v31);
    v171 = 138543618;
    v172 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v34, v33, v35);
    v173 = 1026;
    LODWORD(v174) = objc_msgSend_integrity(a3, v36, v37, v38);
    v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v32, 0, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving,integrity too low. Integrity:%{public}d", &v171, 18);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
LABEL_27:
    if (v39 == buf)
    {
      return 0;
    }

    goto LABEL_52;
  }

  v74 = a1[24];
  if (!v74)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v124 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v128 = objc_msgSend_feature(*a1, v125, v126, v127);
      *buf = 138543362;
      v176 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v129, v128, v130);
      _os_log_impl(&dword_19B873000, v124, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,saving,haven't save first update before.", buf, 0xCu);
    }

    v131 = sub_19B87DD40();
    if (*(v131 + 160) <= 1 && *(v131 + 164) <= 1 && *(v131 + 168) <= 1 && !*(v131 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v135 = qword_1ED519090;
    v136 = objc_msgSend_feature(*a1, v132, v133, v134);
    v171 = 138543362;
    v172 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v137, v136, v138);
    v139 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v135, 0, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,saving,haven't save first update before.", &v171, 12);
    goto LABEL_91;
  }

  objc_msgSend_horizontalAccuracy(v74, v15, v16, v17);
  v76 = v75;
  objc_msgSend_horizontalAccuracy(a3, v77, v78, v79);
  if (v76 >= v83)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v140 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v144 = objc_msgSend_feature(*a1, v141, v142, v143);
      *buf = 138543362;
      v176 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v145, v144, v146);
      _os_log_impl(&dword_19B873000, v140, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,saving,better Hunc", buf, 0xCu);
    }

    v147 = sub_19B87DD40();
    if (*(v147 + 160) <= 1 && *(v147 + 164) <= 1 && *(v147 + 168) <= 1 && !*(v147 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v151 = qword_1ED519090;
    v152 = objc_msgSend_feature(*a1, v148, v149, v150);
    v171 = 138543362;
    v172 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v153, v152, v154);
    v139 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v151, 0, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,saving,better Hunc", &v171, 12);
    goto LABEL_91;
  }

  objc_msgSend_coordinate(a1[24], v80, v81, v82);
  v85 = v84;
  objc_msgSend_coordinate(a1[24], v86, v87, v88);
  v90 = v89;
  objc_msgSend_coordinate(a3, v91, v92, v93);
  v95 = v94;
  objc_msgSend_coordinate(a3, v96, v97, v98);
  v100 = sub_19B87E164(v85, v90, v95, v99);
  objc_msgSend_locationUpdateDistanceMovedToSendEarly(*a1, v101, v102, v103);
  if (v100 < v107 || (objc_msgSend_horizontalAccuracy(a3, v104, v105, v106), v100 < v108))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v109 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v113 = objc_msgSend_feature(*a1, v110, v111, v112);
      *buf = 138543362;
      v176 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v114, v113, v115);
      _os_log_impl(&dword_19B873000, v109, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving", buf, 0xCu);
    }

    v116 = sub_19B87DD40();
    if (*(v116 + 160) <= 1 && *(v116 + 164) <= 1 && *(v116 + 168) <= 1 && !*(v116 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v120 = qword_1ED519090;
    v121 = objc_msgSend_feature(*a1, v117, v118, v119);
    v171 = 138543362;
    v172 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v122, v121, v123);
    v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v120, 0, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,not saving", &v171, 12);
LABEL_51:
    v39 = v57;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v57);
    if (v39 == buf)
    {
      return 0;
    }

LABEL_52:
    free(v39);
    return 0;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
  }

  v156 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    v160 = objc_msgSend_feature(*a1, v157, v158, v159);
    *buf = 138543618;
    v176 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v161, v160, v162);
    v177 = 2050;
    v178 = v100;
    _os_log_impl(&dword_19B873000, v156, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,saving,location changed significantly,dist,%{public}f", buf, 0x16u);
  }

  v163 = sub_19B87DD40();
  if (*(v163 + 160) > 1 || *(v163 + 164) > 1 || *(v163 + 168) > 1 || *(v163 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
    }

    v167 = qword_1EAFE4718;
    v168 = objc_msgSend_feature(*a1, v164, v165, v166);
    v171 = 138543618;
    v172 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v169, v168, v170);
    v173 = 2050;
    v174 = v100;
    v139 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v167, 0, "#CLELS,%{public}@,isLocationUsableForFirstUpdate,saving,location changed significantly,dist,%{public}f", &v171, 22);
LABEL_91:
    v155 = v139;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isLocationUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v139);
    if (v155 != buf)
    {
      free(v155);
    }
  }

  return 1;
}

double sub_19BA4A7E8(id *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v35 = a1;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,getAge,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      return 1.79769313e308;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v32 = 134283521;
    v33 = a1;
    v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,getAge,this:%{private}p,nil fConfig,early return", &v32, 12);
    sub_19B885924("Generic", 1, 0, 0, "CFTimeInterval CLEmergencyLocationSelectorInternal::getAge(CLLocation *)", "CoreLocation: %s\n", v16);
    if (v16 == buf)
    {
      return 1.79769313e308;
    }

LABEL_28:
    free(v16);
    return 1.79769313e308;
  }

  if (!a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_msgSend_feature(*a1, v18, v19, v20);
      *buf = 138543362;
      v35 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v22, v21, v23);
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,getAge,invalid parameters", buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
    {
      return 1.79769313e308;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v28 = qword_1ED519090;
    v29 = objc_msgSend_feature(*a1, v25, v26, v27);
    v32 = 138543362;
    v33 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v30, v29, v31);
    v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v28, 0, "#CLELS,%{public}@,getAge,invalid parameters", &v32, 12);
    sub_19B885924("Generic", 1, 0, 2, "CFTimeInterval CLEmergencyLocationSelectorInternal::getAge(CLLocation *)", "CoreLocation: %s\n", v16);
    if (v16 == buf)
    {
      return 1.79769313e308;
    }

    goto LABEL_28;
  }

  v6 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3, a4);
  v11 = objc_msgSend_timestamp(a2, v7, v8, v9);

  objc_msgSend_timeIntervalSinceDate_(v6, v10, v11, v12);
  return result;
}

void *sub_19BA4ABBC(void *result, double *a2, double *a3)
{
  if (result)
  {
    v5 = result;
    v21 = 0.0;
    v22 = 0.0;
    CLGetUncertaintyScaleFactors(95, &v22, &v21);
    v6 = v22;
    objc_msgSend_horizontalAccuracy(v5, v7, v8, v9);
    *a2 = v6 * v10;
    result = objc_msgSend_verticalAccuracy(v5, v11, v12, v13);
    v17 = -1.0;
    if (v18 > 0.0)
    {
      v19 = v21;
      result = objc_msgSend_verticalAccuracy(v5, v14, v15, v16);
      v17 = v19 * v20;
    }

    *a3 = v17;
  }

  else
  {
    *a2 = -1.0;
    *a3 = -1.0;
  }

  return result;
}

void sub_19BA4AC60(uint64_t a1, void *a2, int a3)
{
  v91 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#CLELS,updateSessionStats,updating metrics for first location", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LOWORD(v83) = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,updateSessionStats,updating metrics for first location", &v83, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateSessionStats(CLLocation *, BOOL)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    *(a1 + 208) = 1;
    *(a1 + 224) = objc_msgSend_integrity(a2, v7, v8, v9);
    *(a1 + 212) = objc_msgSend_type(a2, v11, v12, v13);
    objc_msgSend_horizontalAccuracy(a2, v14, v15, v16);
    *(a1 + 216) = v17;
    objc_msgSend_verticalAccuracy(a2, v18, v19, v20);
    *(a1 + 220) = v21;
    *(a1 + 228) = sub_19BA4A7E8(a1, a2, v22, v23);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v24 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "#CLELS,updateSessionStats,updating metrics for periodic update", buf, 2u);
    }

    v25 = sub_19B87DD40();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LOWORD(v83) = 0;
      v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,updateSessionStats,updating metrics for periodic update", &v83, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateSessionStats(CLLocation *, BOOL)", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    v30 = *(a1 + 264);
    if (v30 < 1 || (v31 = v30, objc_msgSend_horizontalAccuracy(a2, v26, v27, v28), v35 < v31))
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v36 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 264);
        objc_msgSend_horizontalAccuracy(a2, v37, v38, v39);
        *buf = 67109376;
        v88 = v40;
        v89 = 2048;
        v90 = v41;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "#CLELS,updateSessionStats,updating HACC for periodic update,horizontalAccOfLocInBestPeriodicUpdate,%d,horizontalAccuracy,%f", buf, 0x12u);
      }

      v42 = sub_19B87DD40();
      if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v49 = qword_1ED519090;
        v50 = *(a1 + 264);
        objc_msgSend_horizontalAccuracy(a2, v46, v47, v48);
        v83 = 67109376;
        v84 = v50;
        v85 = 2048;
        v86 = v51;
        v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v49, 0, "#CLELS,updateSessionStats,updating HACC for periodic update,horizontalAccOfLocInBestPeriodicUpdate,%d,horizontalAccuracy,%f", &v83, 18);
        sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateSessionStats(CLLocation *, BOOL)", "CoreLocation: %s\n", v52);
        if (v52 != buf)
        {
          free(v52);
        }
      }

      *(a1 + 272) = objc_msgSend_integrity(a2, v43, v44, v45);
      *(a1 + 280) = objc_msgSend_type(a2, v53, v54, v55);
      objc_msgSend_horizontalAccuracy(a2, v56, v57, v58);
      *(a1 + 264) = v59;
      *(a1 + 276) = sub_19BA4A7E8(a1, a2, v60, v61);
    }

    v62 = *(a1 + 268);
    if (v62 < 1 || (v63 = v62, objc_msgSend_verticalAccuracy(a2, v32, v33, v34), v64 < v63))
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v65 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v69 = *(a1 + 268);
        objc_msgSend_verticalAccuracy(a2, v66, v67, v68);
        *buf = 67109376;
        v88 = v69;
        v89 = 2048;
        v90 = v70;
        _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_DEFAULT, "#CLELS,updateSessionStats,updating VACC for periodic update,verticalAccOfLocInBestPeriodicUpdate,%d,verticalAccuracy,%f", buf, 0x12u);
      }

      v71 = sub_19B87DD40();
      if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v78 = qword_1ED519090;
        v79 = *(a1 + 268);
        objc_msgSend_verticalAccuracy(a2, v75, v76, v77);
        v83 = 67109376;
        v84 = v79;
        v85 = 2048;
        v86 = v80;
        v81 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v78, 0, "#CLELS,updateSessionStats,updating VACC for periodic update,verticalAccOfLocInBestPeriodicUpdate,%d,verticalAccuracy,%f", &v83, 18);
        sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateSessionStats(CLLocation *, BOOL)", "CoreLocation: %s\n", v81);
        if (v81 != buf)
        {
          free(v81);
        }
      }

      objc_msgSend_verticalAccuracy(a2, v72, v73, v74);
      *(a1 + 268) = v82;
    }

    ++*(a1 + 260);
  }
}

void sub_19BA4B368(uint64_t a1, void *a2)
{
  v163 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v56 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = a1;
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,sendLocation,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v57 = sub_19B87DD40();
    if ((*(v57 + 160) & 0x80000000) != 0 && (*(v57 + 164) & 0x80000000) != 0 && (*(v57 + 168) & 0x80000000) != 0 && !*(v57 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LODWORD(v130[0]) = 134283521;
    *(v130 + 4) = a1;
    v58 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,sendLocation,this:%{private}p,nil fConfig,early return", v130, 12);
LABEL_29:
    v61 = v58;
    sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::sendLocation(CLLocation *)", "CoreLocation: %s\n", v58);
    if (v61 == buf)
    {
      return;
    }

LABEL_55:
    free(v61);
    return;
  }

  if (!*(a1 + 16))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v59 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = a1;
      _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,sendLocation,this:%{private}p,nil fSendLocationCb,early return", buf, 0xCu);
    }

    v60 = sub_19B87DD40();
    if ((*(v60 + 160) & 0x80000000) != 0 && (*(v60 + 164) & 0x80000000) != 0 && (*(v60 + 168) & 0x80000000) != 0 && !*(v60 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LODWORD(v130[0]) = 134283521;
    *(v130 + 4) = a1;
    v58 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,sendLocation,this:%{private}p,nil fSendLocationCb,early return", v130, 12);
    goto LABEL_29;
  }

  *(a1 + 160) = a2;
  v4 = mach_continuous_time();
  *(a1 + 168) = sub_19B994BF4(v4);
  (*(*(a1 + 16) + 16))();
  if (*(a1 + 160))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_msgSend_feature(*a1, v6, v7, v8);
      v12 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v10, v9, v11);
      objc_msgSend_coordinate(*(a1 + 160), v13, v14, v15);
      v17 = v16;
      objc_msgSend_coordinate(*(a1 + 160), v18, v19, v20);
      v22 = v21;
      objc_msgSend_horizontalAccuracy(*(a1 + 160), v23, v24, v25);
      v27 = v26;
      objc_msgSend_altitude(*(a1 + 160), v28, v29, v30);
      v32 = v31;
      objc_msgSend_ellipsoidalAltitude(*(a1 + 160), v33, v34, v35);
      v37 = v36;
      objc_msgSend_verticalAccuracy(*(a1 + 160), v38, v39, v40);
      v42 = v41;
      v49 = objc_msgSend_timestamp(*(a1 + 160), v43, v44, v45);
      v50 = *(a1 + 160);
      if (v50)
      {
        objc_msgSend_clientLocation(v50, v46, v47, v48);
        v51 = v160;
        v55 = objc_msgSend_integrity(*(a1 + 160), v52, v53, v54);
      }

      else
      {
        v51 = 0;
        v161 = 0u;
        memset(v162, 0, sizeof(v162));
        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        *buf = 0u;
        v55 = objc_msgSend_integrity(0, v46, v47, v48);
      }

      LODWORD(v130[0]) = 138545667;
      *(v130 + 4) = v12;
      WORD6(v130[0]) = 2053;
      *(v130 + 14) = v17;
      WORD3(v130[1]) = 2053;
      *(&v130[1] + 1) = v22;
      LOWORD(v130[2]) = 2050;
      *(&v130[2] + 2) = v27;
      WORD5(v130[2]) = 2053;
      *(&v130[2] + 12) = v32;
      WORD2(v130[3]) = 2053;
      *(&v130[3] + 6) = v37;
      HIWORD(v130[3]) = 2050;
      *&v130[4] = v42;
      WORD4(v130[4]) = 2114;
      *(&v130[4] + 10) = v49;
      WORD1(v130[5]) = 1026;
      DWORD1(v130[5]) = v51;
      WORD4(v130[5]) = 1026;
      *(&v130[5] + 10) = v55;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendLocation,lat,%{sensitive}.7f,lon,%{sensitive}.7f,hunc,%{public}f,alt,%{sensitive}f,ellipsoidalAlt,%{sensitive}f,vunc,%{public}f,timestamp,%{public}@,locationType,%{public}d,integrity,%{public}d", v130, 0x5Eu);
    }

    v78 = sub_19B87DD40();
    if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v82 = qword_1ED519090;
      v83 = objc_msgSend_feature(*a1, v79, v80, v81);
      v86 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v84, v83, v85);
      objc_msgSend_coordinate(*(a1 + 160), v87, v88, v89);
      v91 = v90;
      objc_msgSend_coordinate(*(a1 + 160), v92, v93, v94);
      v96 = v95;
      objc_msgSend_horizontalAccuracy(*(a1 + 160), v97, v98, v99);
      v101 = v100;
      objc_msgSend_altitude(*(a1 + 160), v102, v103, v104);
      v106 = v105;
      objc_msgSend_ellipsoidalAltitude(*(a1 + 160), v107, v108, v109);
      v111 = v110;
      objc_msgSend_verticalAccuracy(*(a1 + 160), v112, v113, v114);
      v116 = v115;
      v123 = objc_msgSend_timestamp(*(a1 + 160), v117, v118, v119);
      v124 = *(a1 + 160);
      if (v124)
      {
        objc_msgSend_clientLocation(v124, v120, v121, v122);
        v125 = v131;
        v129 = objc_msgSend_integrity(*(a1 + 160), v126, v127, v128);
      }

      else
      {
        v125 = 0;
        v132 = 0u;
        memset(v133, 0, sizeof(v133));
        v131 = 0u;
        memset(v130, 0, sizeof(v130));
        v129 = objc_msgSend_integrity(0, v120, v121, v122);
      }

      v134 = 138545667;
      v135 = v86;
      v136 = 2053;
      v137 = v91;
      v138 = 2053;
      v139 = v96;
      v140 = 2050;
      v141 = v101;
      v142 = 2053;
      v143 = v106;
      v144 = 2053;
      v145 = v111;
      v146 = 2050;
      v147 = v116;
      v148 = 2114;
      v149 = v123;
      v150 = 1026;
      v151 = v125;
      v152 = 1026;
      v153 = v129;
      v77 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v82, 0, "#CLELS,%{public}@,sendLocation,lat,%{sensitive}.7f,lon,%{sensitive}.7f,hunc,%{public}f,alt,%{sensitive}f,ellipsoidalAlt,%{sensitive}f,vunc,%{public}f,timestamp,%{public}@,locationType,%{public}d,integrity,%{public}d", &v134, 94);
      goto LABEL_54;
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v62 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v66 = objc_msgSend_feature(*a1, v63, v64, v65);
      *buf = 138543362;
      *&buf[4] = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v67, v66, v68);
      _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendLocation,nil location sent to client", buf, 0xCu);
    }

    v69 = sub_19B87DD40();
    if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v73 = qword_1ED519090;
      v74 = objc_msgSend_feature(*a1, v70, v71, v72);
      LODWORD(v130[0]) = 138543362;
      *(v130 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v75, v74, v76);
      v77 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v73, 0, "#CLELS,%{public}@,sendLocation,nil location sent to client", v130, 12);
LABEL_54:
      v61 = v77;
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendLocation(CLLocation *)", "CoreLocation: %s\n", v77);
      if (v61 == buf)
      {
        return;
      }

      goto LABEL_55;
    }
  }
}

os_log_t sub_19BA4BB4C()
{
  result = os_log_create("com.apple.locationd.Position", "Emergency");
  qword_1EAFE4718 = result;
  return result;
}

void sub_19BA4BB80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19BA4BBBC(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6EDC0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

os_log_t sub_19BA4BBFC()
{
  result = os_log_create("com.apple.locationd.Position", "Gnss");
  qword_1EAFE4780 = result;
  return result;
}

uint64_t sub_19BA4BC2C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = (a1 + 64);
  if (v2 != (a1 + 64))
  {
    do
    {
      sub_19BA4759C(a1, *(v2 + 8));
      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_19B9D8CB0(*(a1 + 64));
  v7 = *(a1 + 40);
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  sub_19B9D8CB0(*(a1 + 16));
  return a1;
}

uint64_t *sub_19BA4BCDC(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_19BA4C198(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  MEMORY[0x19EAE98C0](v19, v20, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

os_log_t sub_19BA4CE24()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

void *sub_19BA4EBD8(void *a1)
{
  *a1 = &unk_1F0E6EE40;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, a1);
  if (*(a1 + 151) < 0)
  {
    operator delete(a1[16]);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(a1[13]);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(a1[10]);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(a1[7]);
  }

  sub_19B93466C((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

uint64_t sub_19BA4EC84()
{
  v0 = objc_opt_new();
  qword_1ED519D88 = v0;

  return objc_msgSend_setDateFormat_(v0, v1, @"yyyy-MM-dd_HH-mm-ss", v2);
}

void sub_19BA4ECC4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED519D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519D98))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519DC8, &dword_19B873000);
    __cxa_guard_release(&qword_1ED519D98);
  }

  if (qword_1ED519DA0 != -1)
  {
    dispatch_once(&qword_1ED519DA0, &unk_1F0E6EE80);
  }

  if (byte_1ED519DDF < 0)
  {
    v2 = xmmword_1ED519DC8;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519DC8;
    *(a1 + 16) = unk_1ED519DD8;
  }
}

void sub_19BA4EDC4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED519DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519DA8))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519DE0, &dword_19B873000);
    __cxa_guard_release(&qword_1ED519DA8);
  }

  if (qword_1ED519DB0 != -1)
  {
    dispatch_once(&qword_1ED519DB0, &unk_1F0E6EEA0);
  }

  if (byte_1ED519DF7 < 0)
  {
    v2 = xmmword_1ED519DE0;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519DE0;
    *(a1 + 16) = unk_1ED519DF0;
  }
}

void sub_19BA4EEAC()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_19B8759E8(v15, "mobile");
  sub_19B953254(v15, __p);
  if (v18 >= 0)
  {
    v3 = objc_msgSend_stringWithUTF8String_(v0, v1, __p, v2);
  }

  else
  {
    v3 = objc_msgSend_stringWithUTF8String_(v0, v1, __p[0], v2);
  }

  v6 = v3;
  v7 = objc_msgSend_componentsJoinedByString_(&unk_1F0E8CCB8, v4, @"/", v5);
  v10 = objc_msgSend_stringByAppendingPathComponent_(v6, v8, v7, v9);
  v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
  sub_19B8D7878(&xmmword_1ED519DE0, v14);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_19BA4EF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA4EF9C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED519DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519DB8))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519DF8, &dword_19B873000);
    __cxa_guard_release(&qword_1ED519DB8);
  }

  if (qword_1ED519DC0 != -1)
  {
    dispatch_once(&qword_1ED519DC0, &unk_1F0E6EEC0);
  }

  if (byte_1ED519E0F < 0)
  {
    v2 = xmmword_1ED519DF8;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519DF8;
    *(a1 + 16) = unk_1ED519E08;
  }
}

void sub_19BA4F084()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_19B8759E8(v15, "mobile");
  sub_19B953254(v15, __p);
  if (v18 >= 0)
  {
    v3 = objc_msgSend_stringWithUTF8String_(v0, v1, __p, v2);
  }

  else
  {
    v3 = objc_msgSend_stringWithUTF8String_(v0, v1, __p[0], v2);
  }

  v6 = v3;
  v7 = objc_msgSend_componentsJoinedByString_(&unk_1F0E8CCD0, v4, @"/", v5);
  v10 = objc_msgSend_stringByAppendingPathComponent_(v6, v8, v7, v9);
  v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
  sub_19B8D7878(&xmmword_1ED519DF8, v14);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_19BA4F140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA4F174(const void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, std::string *a5@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = &v37;
  sub_19B8D78C0(&v37, v10 + 1);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v37.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a1 + 23) >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v37, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, "_", 1uLL);
  v21 = *&v18->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v21;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (qword_1ED519D90 != -1)
  {
    dispatch_once(&qword_1ED519D90, &unk_1F0E6EE60);
  }

  v22 = objc_msgSend_stringFromDate_(qword_1ED519D88, v19, a4, v20);
  v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
  sub_19B8759E8(__p, v26);
  if ((v36 & 0x80u) == 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v28 = v36;
  }

  else
  {
    v28 = __p[1];
  }

  v29 = std::string::append(&v39, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = *(a3 + 23);
  if (v31 >= 0)
  {
    v32 = a3;
  }

  else
  {
    v32 = *a3;
  }

  if (v31 >= 0)
  {
    v33 = *(a3 + 23);
  }

  else
  {
    v33 = *(a3 + 8);
  }

  v34 = std::string::append(&v40, v32, v33);
  *a5 = *v34;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void sub_19BA4F394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA4F410(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_19BA4EF9C(v9);
  if (v10 >= 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = v9[0];
  }

  sub_19B8759E8(__p, v4);
  v8 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6, v7);
  sub_19BA4F174(__p, a1 + 80, a1 + 104, v8, a2);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_19BA4F4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19BA4F4EC(uint64_t a1, char **a2, char *a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  v5 = a3[23];
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = a3[23];
  }

  else
  {
    v7 = *(a3 + 1);
  }

  if (!v7)
  {
    return 1;
  }

  v8 = &v3[v4];
  if (v3 >= v7)
  {
    v12 = *v6;
    v13 = v4;
    do
    {
      v14 = &v3[-v7];
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v12, (v14 + 1));
      if (!v15)
      {
        break;
      }

      v9 = v15;
      if (!memcmp(v15, v6, v7))
      {
        return v9 != v8 && v9 == v4;
      }

      v13 = (v9 + 1);
      v3 = (v8 - (v9 + 1));
    }

    while (v3 >= v7);
  }

  v9 = v8;
  return v9 != v8 && v9 == v4;
}

BOOL sub_19BA4F5B8(uint64_t a1, uint64_t *a2, char *a3)
{
  v3 = *(a2 + 23);
  v4 = a3[23];
  if (v4 >= 0)
  {
    v5 = a3[23];
  }

  else
  {
    v5 = *(a3 + 1);
  }

  if (v4 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v3 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v3 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = v7 == v5;
  v10 = v7 - v9;
  if (v7 < v9)
  {
    return 1;
  }

  if (v5)
  {
    if (v10 >= v5)
    {
      v12 = v8 + v7;
      v13 = v8 + v9;
      v14 = *v6;
      while (1)
      {
        v15 = v10 - v5;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        if (!memcmp(v16, v6, v5))
        {
          if (v17 == v12)
          {
            return 1;
          }

          v9 = v17 - v8;
          return v9 != 0;
        }

        v13 = v17 + 1;
        v10 = v12 - (v17 + 1);
        if (v10 < v5)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  return v9 != 0;
}

uint64_t sub_19BA51D50(uint64_t a1, CLTripSegmentInputData *a2, void *a3, uint64_t a4)
{
  v1056 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v118 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v118, OS_LOG_TYPE_ERROR, "CLTSP,null tripData", buf, 2u);
    }

    v119 = sub_19B87DD40();
    if ((*(v119 + 160) & 0x80000000) != 0 && (*(v119 + 164) & 0x80000000) != 0 && (*(v119 + 168) & 0x80000000) != 0 && !*(v119 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v1016 = 0;
    v120 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,null tripData", v1016, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v120);
    goto LABEL_48;
  }

  if (!objc_msgSend_tripLocations(a2, a2, a3, a4))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v121 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v121, OS_LOG_TYPE_ERROR, "CLTSP,nil tripLocations", buf, 2u);
    }

    v122 = sub_19B87DD40();
    if ((*(v122 + 160) & 0x80000000) != 0 && (*(v122 + 164) & 0x80000000) != 0 && (*(v122 + 168) & 0x80000000) != 0 && !*(v122 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v1016 = 0;
    v120 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,nil tripLocations", v1016, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v120);
LABEL_48:
    if (v120 != buf)
    {
      free(v120);
    }

    return 0;
  }

  *(a1 + 40) = objc_msgSend_shouldRecordDataInFileForReplay(a3, v4, v5, v6);
  v984 = (a1 + 40);
  *(a1 + 48) = objc_msgSend_tripSegmentRecorderLoggingDirectory(a3, v7, v8, v9);
  v13 = objc_msgSend_tripSegmentRecorderLoggingDirectory(a3, v10, v11, v12);
  if (objc_msgSend_containsString_(v13, v14, @"routesmoother", v15))
  {
    *(a1 + 41) = 1;
  }

  v22 = a2;
  if (objc_msgSend_modeOfTransport(a2, v16, v17, v18) == 1)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = [CLTripSegmentInputData alloc];
    v28 = objc_msgSend_commuteID(a2, v25, v26, v27);
    v32 = objc_msgSend_tripSegmentID(a2, v29, v30, v31);
    isFinalPart = objc_msgSend_isFinalPart(a2, v33, v34, v35);
    v40 = objc_msgSend_modeOfTransport(a2, v37, v38, v39);
    v44 = objc_msgSend_tripLocations(a2, v41, v42, v43);
    started = objc_msgSend_startTripLocation(a2, v45, v46, v47);
    v52 = objc_msgSend_stopTripLocation(a2, v49, v50, v51);
    v22 = objc_msgSend_initWithCommuteID_tripSegmentID_isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialOdometryData_(v24, v53, v28, v32, isFinalPart, v40, v44, started, v52, v23);
  }

  v54 = objc_msgSend_tripLocations(a2, v19, v20, v21);
  v57 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, 0, v56);
  v61 = objc_msgSend_timestamp(v57, v58, v59, v60);
  sub_19B98FD58(v984, v22, v61, 0);
  v65 = objc_msgSend_tripSegmentID(a2, v62, v63, v64);
  v69 = objc_msgSend_UUIDString(v65, v66, v67, v68);
  v73 = objc_msgSend_UTF8String(v69, v70, v71, v72);
  sub_19B8759E8(v1010, v73);
  v77 = objc_msgSend_tripLocations(a2, v74, v75, v76);
  v80 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, 0, v79);
  v84 = objc_msgSend_timestamp(v80, v81, v82, v83);
  v85 = sub_19B98FCA8(v84);
  v89 = objc_msgSend_UTF8String(v85, v86, v87, v88);
  sub_19B8759E8(v1008, v89);
  v93 = objc_msgSend_tripLocations(a2, v90, v91, v92);
  v96 = objc_msgSend_objectAtIndexedSubscript_(v93, v94, 0, v95);
  v100 = objc_msgSend_timestamp(v96, v97, v98, v99);
  v101 = sub_19B98FD00(v100);
  v105 = objc_msgSend_UTF8String(v101, v102, v103, v104);
  sub_19B8759E8(__p, v105);
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if ((sub_19BA55AB8(qword_1EAFE5B10, v1010) & 1) == 0)
  {
    sub_19BA70F8C(buf);
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  sub_19B9F2000(qword_1EAFE5B10, v1010, &v1004);
  v109 = v1004;
  if (!v1004)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v124 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v125 = v1010;
      if (v1011 < 0)
      {
        v125 = v1010[0];
      }

      *buf = 136446210;
      *v1036 = v125;
      _os_log_impl(&dword_19B873000, v124, OS_LOG_TYPE_ERROR, "CLTSP,tripSegmentID,%{public}s should exist in CLTripSegmentSharedData", buf, 0xCu);
    }

    v126 = sub_19B87DD40();
    if ((*(v126 + 160) & 0x80000000) != 0 && (*(v126 + 164) & 0x80000000) != 0 && (*(v126 + 168) & 0x80000000) != 0 && !*(v126 + 152))
    {
      goto LABEL_122;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v127 = v1010;
    if (v1011 < 0)
    {
      v127 = v1010[0];
    }

    *v1016 = 136446210;
    *&v1016[4] = v127;
    v117 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,tripSegmentID,%{public}s should exist in CLTripSegmentSharedData", v1016, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v117);
LABEL_120:
    if (v117 != buf)
    {
      free(v117);
    }

    goto LABEL_122;
  }

  v109->__r_.__value_.__s.__data_[0] = objc_msgSend_isSimulatedSparseProcessing(a3, v106, v107, v108) ^ 1;
  sub_19BA3A10C(v1004, v1010);
  sub_19BA3A614(v1004, a2, v110, v111);
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B99F500(qword_1EAFE5B10, v1010))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v115 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v115, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,at the start of the processing in processData", buf, 2u);
    }

    v116 = sub_19B87DD40();
    if (*(v116 + 160) <= 1 && *(v116 + 164) <= 1 && *(v116 + 168) <= 1 && !*(v116 + 152))
    {
      goto LABEL_122;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v1016 = 0;
    v117 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,at the start of the processing in processData", v1016, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v117);
    goto LABEL_120;
  }

  v128 = objc_msgSend_tripSegmentID(a2, v112, v113, v114);
  v132 = objc_msgSend_tripLocations(a2, v129, v130, v131);
  v136 = objc_msgSend_modeOfTransport(a2, v133, v134, v135);
  if (!objc_msgSend_count(v132, v137, v138, v139))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v152 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v152, OS_LOG_TYPE_ERROR, "CLTSP,tripLocations count zero", buf, 2u);
    }

    v153 = sub_19B87DD40();
    if ((*(v153 + 160) & 0x80000000) != 0 && (*(v153 + 164) & 0x80000000) != 0 && (*(v153 + 168) & 0x80000000) != 0 && !*(v153 + 152))
    {
      goto LABEL_108;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v1016 = 0;
    v154 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,tripLocations count zero", v1016, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v154);
    goto LABEL_106;
  }

  if (objc_msgSend_isSimulatedSparseProcessing(a3, v140, v141, v142))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v146 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v146, OS_LOG_TYPE_ERROR, "CLTSP,not validating crumbs for simulated data", buf, 2u);
    }

    v147 = sub_19B87DD40();
    if ((*(v147 + 160) & 0x80000000) == 0 || (*(v147 + 164) & 0x80000000) == 0 || (*(v147 + 168) & 0x80000000) == 0 || *(v147 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      *v1016 = 0;
      v151 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,not validating crumbs for simulated data", v1016, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v151);
      if (v151 != buf)
      {
        free(v151);
      }
    }

    goto LABEL_151;
  }

  if (v136 == 1)
  {
    objc_msgSend_minDistanceBetweenODVisitsToGenerateTripSegmentMeters(a3, v143, v144, v145);
    if (v155 >= 0.0)
    {
      if (objc_msgSend_startTripLocation(a2, v143, v144, v145))
      {
        if (objc_msgSend_stopTripLocation(a2, v143, v144, v145))
        {
          v156 = objc_msgSend_startTripLocation(a2, v143, v144, v145);
          v160 = objc_msgSend_stopTripLocation(a2, v157, v158, v159);
          objc_msgSend_distanceFromLocation_(v156, v161, v160, v162);
          v164 = v163;
          objc_msgSend_minDistanceBetweenODVisitsToGenerateTripSegmentMeters(a3, v165, v166, v167);
          if (v164 < v168)
          {
            if (qword_1EAFE5B00 != -1)
            {
              dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
            }

            sub_19BA56BA8(qword_1EAFE5B10, v128, 12, v145);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v929 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              objc_msgSend_minDistanceBetweenODVisitsToGenerateTripSegmentMeters(a3, v930, v931, v932);
              *buf = 134349312;
              *v1036 = v164;
              *&v1036[8] = 2050;
              *&v1036[10] = v933;
              _os_log_impl(&dword_19B873000, v929, OS_LOG_TYPE_ERROR, "CLTSP,origin and destination visit are same, distance check failed,distance,%{public}.1lf,threshold,%{public}.1lf", buf, 0x16u);
            }

            v934 = sub_19B87DD40();
            if ((*(v934 + 160) & 0x80000000) != 0 && (*(v934 + 164) & 0x80000000) != 0 && (*(v934 + 168) & 0x80000000) != 0 && !*(v934 + 152))
            {
              goto LABEL_108;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v938 = qword_1EAFE46E8;
            objc_msgSend_minDistanceBetweenODVisitsToGenerateTripSegmentMeters(a3, v935, v936, v937);
            *v1016 = 134349312;
            *&v1016[4] = v164;
            *&v1016[12] = 2050;
            *&v1016[14] = v939;
            v154 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v938, 16, "CLTSP,origin and destination visit are same, distance check failed,distance,%{public}.1lf,threshold,%{public}.1lf", v1016, 22);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v154);
            goto LABEL_106;
          }
        }
      }
    }
  }

  Object = objc_msgSend_lastObject(v132, v143, v144, v145);
  v173 = objc_msgSend_timestamp(Object, v170, v171, v172);
  v177 = objc_msgSend_firstObject(v132, v174, v175, v176);
  v181 = objc_msgSend_timestamp(v177, v178, v179, v180);
  objc_msgSend_timeIntervalSinceDate_(v173, v182, v181, v183);
  v185 = v184;
  objc_msgSend_maxTripSegmentDurationSeconds(a3, v186, v187, v188);
  v190 = v189;
  v191 = fabs(v185);
  if (v191 > v189)
  {
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19BA56BA8(qword_1EAFE5B10, v128, 6, v150);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v192 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      *v1036 = v191;
      *&v1036[8] = 2050;
      *&v1036[10] = v190;
      _os_log_impl(&dword_19B873000, v192, OS_LOG_TYPE_ERROR, "CLTSP,too long trip segment,%{public}.lf,seconds,maxDuration,%{public}.lf", buf, 0x16u);
    }

    v193 = sub_19B87DD40();
    if ((*(v193 + 160) & 0x80000000) != 0 && (*(v193 + 164) & 0x80000000) != 0 && (*(v193 + 168) & 0x80000000) != 0 && !*(v193 + 152))
    {
      goto LABEL_108;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v1016 = 134349312;
    *&v1016[4] = v191;
    *&v1016[12] = 2050;
    *&v1016[14] = v190;
    v154 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,too long trip segment,%{public}.lf,seconds,maxDuration,%{public}.lf", v1016, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v154);
LABEL_106:
    if (v154 != buf)
    {
      free(v154);
    }

LABEL_108:
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    v194 = sub_19B95D0F0(qword_1EAFE5B10, v1010);
    sub_19BA566AC(a1, a2, v194);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v195 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v195, OS_LOG_TYPE_ERROR, "CLTSP,triplocations validation failed", buf, 2u);
    }

    v196 = sub_19B87DD40();
    if ((*(v196 + 160) & 0x80000000) != 0 && (*(v196 + 164) & 0x80000000) != 0 && (*(v196 + 168) & 0x80000000) != 0 && !*(v196 + 152))
    {
      goto LABEL_122;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v1016 = 0;
    v117 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,triplocations validation failed", v1016, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v117);
    goto LABEL_120;
  }

  if (v136 != 1)
  {
    goto LABEL_151;
  }

  if (objc_msgSend_useNonGNSSFixesForRouteReconstruction(a3, v148, v149, v150))
  {
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9EDE20(qword_1EAFE5B10, v128, v199, v200, &v1012);
    if (!v1012)
    {
      goto LABEL_431;
    }

    v201 = v1012[10];
    if (v201 < 1)
    {
      v202 = 0.0;
    }

    else
    {
      v202 = v1012[138] * 100.0 / v201;
      if (v202 >= 90.0)
      {
LABEL_431:
        if (v1013)
        {
          sub_19B8750F8(v1013);
        }

        goto LABEL_433;
      }
    }

    if (v1012[94] <= 0)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19BA56BA8(qword_1EAFE5B10, v128, 11, v200);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v979 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v980 = v1012[94];
        *buf = 67240448;
        *v1036 = v980;
        *&v1036[4] = 2050;
        *&v1036[6] = v202;
        _os_log_impl(&dword_19B873000, v979, OS_LOG_TYPE_ERROR, "CLTSP,wifi location availability check failed,wiFiCount,%{public}d,gpsPercentage,%{public}.1lf", buf, 0x12u);
      }

      v981 = sub_19B87DD40();
      if ((*(v981 + 160) & 0x80000000) == 0 || (*(v981 + 164) & 0x80000000) == 0 || (*(v981 + 168) & 0x80000000) == 0 || *(v981 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v982 = v1012[94];
        *v1016 = 67240448;
        *&v1016[4] = v982;
        *&v1016[8] = 2050;
        *&v1016[10] = v202;
        v983 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,wifi location availability check failed,wiFiCount,%{public}d,gpsPercentage,%{public}.1lf", v1016, 18);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v983);
        if (v983 != buf)
        {
          free(v983);
        }
      }

      if (v1013)
      {
        sub_19B8750F8(v1013);
      }

      goto LABEL_108;
    }

    goto LABEL_431;
  }

LABEL_433:
  v940 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v198, v199, v200);
  if (objc_msgSend_valueForKey_(v940, v941, @"MaxCrumbSeparationInMetersForTripReconstruction", v942))
  {
    v946 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v943, v944, v945);
    v949 = objc_msgSend_integerForKey_(v946, v947, @"MaxCrumbSeparationInMetersForTripReconstruction", v948);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v950 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *v1036 = @"MaxCrumbSeparationInMetersForTripReconstruction";
      *&v1036[8] = 1026;
      *&v1036[10] = 7000;
      *&v1036[14] = 1026;
      *&v1036[16] = v949 != 0;
      _os_log_impl(&dword_19B873000, v950, OS_LOG_TYPE_DEFAULT, "CLTSP,userDefaults read for key,%{public}@,defaultValue,%{public}d,readValue,%{public}d", buf, 0x18u);
    }

    v951 = sub_19B87DD40();
    if (*(v951 + 160) > 1 || *(v951 + 164) > 1 || *(v951 + 168) > 1 || (*(v951 + 152) & 1) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v955 = v949 != 0;
      *v1016 = 138543874;
      *&v1016[4] = @"MaxCrumbSeparationInMetersForTripReconstruction";
      *&v1016[12] = 1026;
      *&v1016[14] = 7000;
      *&v1016[18] = 1026;
      *&v1016[20] = v955;
      v956 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,userDefaults read for key,%{public}@,defaultValue,%{public}d,readValue,%{public}d", v1016, 24);
      sub_19B885924("Generic", 1, 0, 2, "static int CLTripSegmentUtilities::getUserDefaultsIntForKey(NSString * _Nonnull, const int)", "CoreLocation: %s\n", v956);
      if (v956 != buf)
      {
        free(v956);
      }
    }

    else
    {
      v955 = v949 != 0;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v957 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v1036 = @"MaxCrumbSeparationInMetersForTripReconstruction";
      *&v1036[8] = 1026;
      *&v1036[10] = 7000;
      _os_log_impl(&dword_19B873000, v957, OS_LOG_TYPE_DEFAULT, "CLTSP,userDefaults not found for key,%{public}@,defaultValue,%{public}d", buf, 0x12u);
    }

    v958 = sub_19B87DD40();
    if (*(v958 + 160) > 1 || *(v958 + 164) > 1 || *(v958 + 168) > 1 || *(v958 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      *v1016 = 138543618;
      *&v1016[4] = @"MaxCrumbSeparationInMetersForTripReconstruction";
      *&v1016[12] = 1026;
      *&v1016[14] = 7000;
      v959 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,userDefaults not found for key,%{public}@,defaultValue,%{public}d", v1016, 18);
      sub_19B885924("Generic", 1, 0, 2, "static int CLTripSegmentUtilities::getUserDefaultsIntForKey(NSString * _Nonnull, const int)", "CoreLocation: %s\n", v959);
      if (v959 != buf)
      {
        free(v959);
      }
    }

    v955 = 7000;
  }

  v960 = 0;
  while (objc_msgSend_count(v132, v952, v953, v954) - 1 > v960)
  {
    v961 = objc_msgSend_objectAtIndexedSubscript_(v132, v148, v960, v150);
    v964 = objc_msgSend_objectAtIndexedSubscript_(v132, v962, v960 + 1, v963);
    objc_msgSend_distanceFromLocation_(v964, v965, v961, v966);
    v968 = v967;
    if (v955 == 7000)
    {
      v969 = objc_msgSend_timestamp(v964, v952, v953, v954);
      v973 = objc_msgSend_timestamp(v961, v970, v971, v972);
      objc_msgSend_timeIntervalSinceDate_(v969, v974, v973, v975);
      v955 = 7000;
      if (v976 != 0.0)
      {
        if (v968 / fabs(v976) <= 22.0)
        {
          v955 = 7000;
        }

        else
        {
          v955 = 18000;
        }
      }
    }

    ++v960;
    if (v968 > v955)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19BA56BA8(qword_1EAFE5B10, v128, 10, v954);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v977 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349312;
        *v1036 = v968;
        *&v1036[8] = 1026;
        *&v1036[10] = v955;
        _os_log_impl(&dword_19B873000, v977, OS_LOG_TYPE_ERROR, "CLTSP,max distance between crumbs check failed,distance,%{public}.2lf,maxCrumbSeparation,%{public}d", buf, 0x12u);
      }

      v978 = sub_19B87DD40();
      if ((*(v978 + 160) & 0x80000000) == 0 || (*(v978 + 164) & 0x80000000) == 0 || (*(v978 + 168) & 0x80000000) == 0 || *(v978 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        *v1016 = 134349312;
        *&v1016[4] = v968;
        *&v1016[12] = 1026;
        *&v1016[14] = v955;
        v154 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,max distance between crumbs check failed,distance,%{public}.2lf,maxCrumbSeparation,%{public}d", v1016, 18);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::validateIncomingTripLocationData(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v154);
        goto LABEL_106;
      }

      goto LABEL_108;
    }
  }

LABEL_151:
  v203 = objc_msgSend_tripLocations(a2, v148, v149, v150);
  v207 = objc_msgSend_lastObject(v203, v204, v205, v206);
  v211 = objc_msgSend_timestamp(v207, v208, v209, v210);
  v215 = objc_msgSend_tripLocations(a2, v212, v213, v214);
  v219 = objc_msgSend_firstObject(v215, v216, v217, v218);
  v223 = objc_msgSend_timestamp(v219, v220, v221, v222);
  objc_msgSend_timeIntervalSinceDate_(v211, v224, v223, v225);
  v227 = v226;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v228 = fabs(v227);
  v229 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    if (v1011 >= 0)
    {
      v233 = v1010;
    }

    else
    {
      v233 = v1010[0];
    }

    v234 = objc_msgSend_modeOfTransport(a2, v230, v231, v232);
    v238 = objc_msgSend_isFinalPart(a2, v235, v236, v237);
    v242 = objc_msgSend_tripLocations(a2, v239, v240, v241);
    v246 = objc_msgSend_count(v242, v243, v244, v245);
    v250 = objc_msgSend_tripLocations(a2, v247, v248, v249);
    if (objc_msgSend_count(v250, v251, v252, v253))
    {
      v257 = objc_msgSend_tripLocations(a2, v254, v255, v256);
      v261 = objc_msgSend_firstObject(v257, v258, v259, v260);
      v265 = objc_msgSend_timestamp(v261, v262, v263, v264);
      objc_msgSend_timeIntervalSinceReferenceDate(v265, v266, v267, v268);
      v270 = v269;
    }

    else
    {
      v270 = -1.0;
    }

    v271 = objc_msgSend_tripLocations(a2, v254, v255, v256);
    if (objc_msgSend_count(v271, v272, v273, v274))
    {
      v278 = objc_msgSend_tripLocations(a2, v275, v276, v277);
      v282 = objc_msgSend_lastObject(v278, v279, v280, v281);
      v286 = objc_msgSend_timestamp(v282, v283, v284, v285);
      objc_msgSend_timeIntervalSinceReferenceDate(v286, v287, v288, v289);
      v291 = v290;
    }

    else
    {
      v291 = -1.0;
    }

    isSimulatedSparseProcessing = objc_msgSend_isSimulatedSparseProcessing(a3, v275, v276, v277);
    v293 = v1008;
    if (v1009 < 0)
    {
      v293 = v1008[0];
    }

    v294 = __p;
    if (v1007 < 0)
    {
      v294 = __p[0];
    }

    *buf = 136448514;
    *v1036 = v233;
    *&v1036[8] = 1026;
    *&v1036[10] = v234;
    *&v1036[14] = 1026;
    *&v1036[16] = v238;
    *&v1036[20] = 1026;
    *v1037 = v246;
    *&v1037[4] = 2050;
    *&v1037[6] = v270;
    *&v1037[14] = 2050;
    *&v1037[16] = v291;
    *&v1037[24] = 1026;
    *&v1037[26] = isSimulatedSparseProcessing;
    *&v1037[30] = 2082;
    *&v1037[32] = v293;
    *&v1037[40] = 2082;
    *&v1037[42] = v294;
    *&v1037[50] = 2050;
    *&v1037[52] = v228;
    _os_log_impl(&dword_19B873000, v229, OS_LOG_TYPE_DEFAULT, "CLTSP,processData,input,tripSegmentID,%{public}s,modeOfTransport,%{public}d,isFinalPart,%{public}d,sparseLocationsCount,%{public}d,startTime,%{public}.1lf,endTime,%{public}.1lf,simulated,%{public}d,date,%{public}s,time,%{public}s,crumbDuration,%{public}.lf", buf, 0x56u);
  }

  v295 = sub_19B87DD40();
  if (*(v295 + 160) > 1 || *(v295 + 164) > 1 || *(v295 + 168) > 1 || *(v295 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v302 = qword_1EAFE46E8;
    if (v1011 >= 0)
    {
      v303 = v1010;
    }

    else
    {
      v303 = v1010[0];
    }

    v304 = objc_msgSend_modeOfTransport(a2, v299, v300, v301);
    v308 = objc_msgSend_isFinalPart(a2, v305, v306, v307);
    v312 = objc_msgSend_tripLocations(a2, v309, v310, v311);
    v316 = objc_msgSend_count(v312, v313, v314, v315);
    v320 = objc_msgSend_tripLocations(a2, v317, v318, v319);
    if (objc_msgSend_count(v320, v321, v322, v323))
    {
      v327 = objc_msgSend_tripLocations(a2, v324, v325, v326);
      v331 = objc_msgSend_firstObject(v327, v328, v329, v330);
      v335 = objc_msgSend_timestamp(v331, v332, v333, v334);
      objc_msgSend_timeIntervalSinceReferenceDate(v335, v336, v337, v338);
      v340 = v339;
    }

    else
    {
      v340 = -1.0;
    }

    v341 = objc_msgSend_tripLocations(a2, v324, v325, v326);
    if (objc_msgSend_count(v341, v342, v343, v344))
    {
      v348 = objc_msgSend_tripLocations(a2, v345, v346, v347);
      v352 = objc_msgSend_lastObject(v348, v349, v350, v351);
      v356 = objc_msgSend_timestamp(v352, v353, v354, v355);
      objc_msgSend_timeIntervalSinceReferenceDate(v356, v357, v358, v359);
      v361 = v360;
    }

    else
    {
      v361 = -1.0;
    }

    v362 = objc_msgSend_isSimulatedSparseProcessing(a3, v345, v346, v347);
    v363 = v1008;
    if (v1009 < 0)
    {
      v363 = v1008[0];
    }

    v364 = __p;
    if (v1007 < 0)
    {
      v364 = __p[0];
    }

    *v1016 = 136448514;
    *&v1016[4] = v303;
    *&v1016[12] = 1026;
    *&v1016[14] = v304;
    *&v1016[18] = 1026;
    *&v1016[20] = v308;
    *&v1016[24] = 1026;
    *&v1016[26] = v316;
    *&v1016[30] = 2050;
    *&v1016[32] = v340;
    *&v1016[40] = 2050;
    *&v1016[42] = v361;
    *&v1016[50] = 1026;
    *&v1016[52] = v362;
    *&v1016[56] = 2082;
    *&v1016[58] = v363;
    *&v1016[66] = 2082;
    *&v1016[68] = v364;
    *&v1016[76] = 2050;
    *&v1016[78] = v228;
    v365 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v302, 0, "CLTSP,processData,input,tripSegmentID,%{public}s,modeOfTransport,%{public}d,isFinalPart,%{public}d,sparseLocationsCount,%{public}d,startTime,%{public}.1lf,endTime,%{public}.1lf,simulated,%{public}d,date,%{public}s,time,%{public}s,crumbDuration,%{public}.lf", v1016, 86);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v365);
    if (v365 != buf)
    {
      free(v365);
    }
  }

  if (objc_msgSend_runMapIntegrator(a3, v296, v297, v298))
  {
    v369 = objc_msgSend_tripLocations(a2, v366, v367, v368);
    LODWORD(v1012) = 0;
    v1014 = 0;
    sub_19BA70474(v369, &v1012, &v1014);
    v370 = v1014;
    if (v1014 >= 1)
    {
      v371 = 0;
      do
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v372 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
        {
          v376 = objc_msgSend_count(v369, v373, v374, v375);
          *buf = 67240960;
          *v1036 = v376;
          *&v1036[4] = 1026;
          *&v1036[6] = v1012;
          *&v1036[10] = 1026;
          *&v1036[12] = v370;
          *&v1036[16] = 1026;
          *&v1036[18] = v371;
          _os_log_impl(&dword_19B873000, v372, OS_LOG_TYPE_INFO, "CLTSP,china shift,second try,locCount,%{public}d,applied,%{public}d,failed,%{public}d,iteration,%{public}d,", buf, 0x1Au);
        }

        v377 = sub_19B87DD40();
        if (*(v377 + 160) > 1 || *(v377 + 164) > 1 || *(v377 + 168) > 1 || *(v377 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v381 = qword_1EAFE46E8;
          v382 = objc_msgSend_count(v369, v378, v379, v380);
          *v1016 = 67240960;
          *&v1016[4] = v382;
          *&v1016[8] = 1026;
          *&v1016[10] = v1012;
          *&v1016[14] = 1026;
          *&v1016[16] = v370;
          *&v1016[20] = 1026;
          *&v1016[22] = v371;
          v383 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v381, 1, "CLTSP,china shift,second try,locCount,%{public}d,applied,%{public}d,failed,%{public}d,iteration,%{public}d,", v1016, 26);
          sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::applyChinaShiftIfRequired(NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v383);
          if (v383 != buf)
          {
            free(v383);
          }
        }

        sub_19BA70474(v369, &v1012, &v1014);
        v370 = v1014;
        if (v1014 < 1)
        {
          break;
        }
      }

      while (v371++ < 9);
    }

    v385 = v1012;
    if (v1012 >= 1)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v386 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v390 = objc_msgSend_count(v369, v387, v388, v389);
        *buf = 67240704;
        *v1036 = v390;
        *&v1036[4] = 1026;
        *&v1036[6] = v385;
        *&v1036[10] = 1026;
        *&v1036[12] = v370;
        _os_log_impl(&dword_19B873000, v386, OS_LOG_TYPE_INFO, "CLTSP,china shift,locCount,%{public}d,shiftCount,%{public}d,failed,%{public}d", buf, 0x14u);
      }

      v391 = sub_19B87DD40();
      if (*(v391 + 160) > 1 || *(v391 + 164) > 1 || *(v391 + 168) > 1 || *(v391 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v395 = qword_1EAFE46E8;
        v396 = objc_msgSend_count(v369, v392, v393, v394);
        *v1016 = 67240704;
        *&v1016[4] = v396;
        *&v1016[8] = 1026;
        *&v1016[10] = v385;
        *&v1016[14] = 1026;
        *&v1016[16] = v370;
        v397 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v395, 1, "CLTSP,china shift,locCount,%{public}d,shiftCount,%{public}d,failed,%{public}d", v1016, 20);
        sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::applyChinaShiftIfRequired(NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v397);
        if (v397 != buf)
        {
          free(v397);
        }
      }
    }

    if (v370)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      v398 = qword_1EAFE5B10;
      v399 = objc_msgSend_tripSegmentID(a2, v366, v367, v368);
      sub_19BA56BA8(v398, v399, 5, v400);
      goto LABEL_122;
    }
  }

  v1002 = 0u;
  v1003 = 0u;
  v1000 = 0u;
  v1001 = 0u;
  v401 = objc_msgSend_tripLocations(a2, v366, v367, v368);
  v403 = objc_msgSend_countByEnumeratingWithState_objects_count_(v401, v402, &v1000, v1015, 16);
  if (v403)
  {
    v989 = *v1001;
    obj = v401;
    do
    {
      v406 = 0;
      v990 = v403;
      do
      {
        if (*v1001 != v989)
        {
          objc_enumerationMutation(obj);
        }

        v407 = *(*(&v1000 + 1) + 8 * v406);
        objc_msgSend_setLocationReconstructionType_(v407, v404, 1, v405);
        sub_19B8759E8(v998, "SparseInput");
        v414 = objc_msgSend_modeOfTransport(a2, v408, v409, v410);
        if (SHIBYTE(v1011) < 0)
        {
          sub_19B874C9C(__dst, v1010[0], v1010[1]);
        }

        else
        {
          *__dst = *v1010;
          v997 = v1011;
        }

        v415 = objc_msgSend_isFinalPart(a2, v411, v412, v413);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v416 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
        {
          if (v999 >= 0)
          {
            v420 = v998;
          }

          else
          {
            v420 = v998[0];
          }

          v421 = objc_msgSend_timestamp(v407, v417, v418, v419);
          objc_msgSend_timeIntervalSinceReferenceDate(v421, v422, v423, v424);
          v993 = v425;
          objc_msgSend_latitude(v407, v426, v427, v428);
          v991 = v429;
          objc_msgSend_longitude(v407, v430, v431, v432);
          v434 = v433;
          objc_msgSend_altitude(v407, v435, v436, v437);
          v439 = v438;
          objc_msgSend_speed(v407, v440, v441, v442);
          v444 = v443;
          objc_msgSend_course(v407, v445, v446, v447);
          v449 = v448;
          objc_msgSend_horizontalAccuracy(v407, v450, v451, v452);
          v454 = v453;
          objc_msgSend_altitudeAccuracy(v407, v455, v456, v457);
          v459 = v458;
          objc_msgSend_speedAccuracy(v407, v460, v461, v462);
          v464 = v463;
          objc_msgSend_courseAccuracy(v407, v465, v466, v467);
          v469 = v468;
          v473 = objc_msgSend_locType(v407, v470, v471, v472);
          v477 = objc_msgSend_locTypeStart(v407, v474, v475, v476);
          v481 = objc_msgSend_locTypeStop(v407, v478, v479, v480);
          v485 = objc_msgSend_reconstructionType(v407, v482, v483, v484);
          v489 = objc_msgSend_signalEnvironmentType(v407, v486, v487, v488);
          v490 = __dst;
          if (v997 < 0)
          {
            v490 = __dst[0];
          }

          *buf = 136319747;
          *v1036 = v420;
          *&v1036[8] = 1026;
          *&v1036[10] = v414;
          *&v1036[14] = 1026;
          *&v1036[16] = v415;
          *&v1036[20] = 2050;
          *v1037 = v993;
          *&v1037[8] = 2053;
          *&v1037[10] = v991;
          *&v1037[18] = 2053;
          *&v1037[20] = v434;
          *&v1037[28] = 2050;
          *&v1037[30] = v439;
          *&v1037[38] = 2050;
          *&v1037[40] = v444;
          *&v1037[48] = 2050;
          *&v1037[50] = v449;
          *&v1037[58] = 2050;
          *&v1037[60] = v454;
          v1038 = 2050;
          v1039 = v459;
          v1040 = 2050;
          v1041 = v464;
          v1042 = 2050;
          v1043 = v469;
          v1044 = 1026;
          v1045 = v473;
          v1046 = 1026;
          v1047 = v477;
          v1048 = 1026;
          v1049 = v481;
          v1050 = 1026;
          v1051 = v485;
          v1052 = 1026;
          v1053 = v489;
          v1054 = 2082;
          v1055 = v490;
          _os_log_impl(&dword_19B873000, v416, OS_LOG_TYPE_DEBUG, "CLTSP,%s,mode,%{public}d,final,%{public}d,time,%{public}.3lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,sunc,%{public}.7lf,cunc,%{public}.7lf,type,%{public}d,startLocType,%{public}d,endLocType,%{public}d,reconstructionType,%{public}d,sigEnv,%{public}d,id,%{public}s", buf, 0xA4u);
        }

        v491 = sub_19B87DD40();
        if (*(v491 + 160) > 1 || *(v491 + 164) > 1 || *(v491 + 168) > 1 || *(v491 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v495 = qword_1EAFE46E8;
          if (v999 >= 0)
          {
            v496 = v998;
          }

          else
          {
            v496 = v998[0];
          }

          v497 = objc_msgSend_timestamp(v407, v492, v493, v494);
          objc_msgSend_timeIntervalSinceReferenceDate(v497, v498, v499, v500);
          v994 = v501;
          objc_msgSend_latitude(v407, v502, v503, v504);
          v992 = v505;
          objc_msgSend_longitude(v407, v506, v507, v508);
          v510 = v509;
          objc_msgSend_altitude(v407, v511, v512, v513);
          v515 = v514;
          objc_msgSend_speed(v407, v516, v517, v518);
          v520 = v519;
          objc_msgSend_course(v407, v521, v522, v523);
          v525 = v524;
          objc_msgSend_horizontalAccuracy(v407, v526, v527, v528);
          v530 = v529;
          objc_msgSend_altitudeAccuracy(v407, v531, v532, v533);
          v535 = v534;
          objc_msgSend_speedAccuracy(v407, v536, v537, v538);
          v540 = v539;
          objc_msgSend_courseAccuracy(v407, v541, v542, v543);
          v545 = v544;
          v549 = objc_msgSend_locType(v407, v546, v547, v548);
          v553 = objc_msgSend_locTypeStart(v407, v550, v551, v552);
          v557 = objc_msgSend_locTypeStop(v407, v554, v555, v556);
          v561 = objc_msgSend_reconstructionType(v407, v558, v559, v560);
          v565 = objc_msgSend_signalEnvironmentType(v407, v562, v563, v564);
          v566 = __dst;
          if (v997 < 0)
          {
            v566 = __dst[0];
          }

          *v1016 = 136319747;
          *&v1016[4] = v496;
          *&v1016[12] = 1026;
          *&v1016[14] = v414;
          *&v1016[18] = 1026;
          *&v1016[20] = v415;
          *&v1016[24] = 2050;
          *&v1016[26] = v994;
          *&v1016[34] = 2053;
          *&v1016[36] = v992;
          *&v1016[44] = 2053;
          *&v1016[46] = v510;
          *&v1016[54] = 2050;
          *&v1016[56] = v515;
          *&v1016[64] = 2050;
          *&v1016[66] = v520;
          *&v1016[74] = 2050;
          *&v1016[76] = v525;
          *&v1016[84] = 2050;
          *&v1016[86] = v530;
          v1017 = 2050;
          v1018 = v535;
          v1019 = 2050;
          v1020 = v540;
          v1021 = 2050;
          v1022 = v545;
          v1023 = 1026;
          v1024 = v549;
          v1025 = 1026;
          v1026 = v553;
          v1027 = 1026;
          v1028 = v557;
          v1029 = 1026;
          v1030 = v561;
          v1031 = 1026;
          v1032 = v565;
          v1033 = 2082;
          v1034 = v566;
          v567 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v495, 2, "CLTSP,%s,mode,%{public}d,final,%{public}d,time,%{public}.3lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,sunc,%{public}.7lf,cunc,%{public}.7lf,type,%{public}d,startLocType,%{public}d,endLocType,%{public}d,reconstructionType,%{public}d,sigEnv,%{public}d,id,%{public}s", v1016, 164);
          sub_19B885924("Generic", 1, 0, 2, "static void CLTripSegmentUtilities::logCLTripSegmentLocation(std::string, CLTripSegmentLocation * _Nonnull, CLTripSegmentModeOfTransport, std::string, BOOL)", "CoreLocation: %s\n", v567);
          if (v567 != buf)
          {
            free(v567);
          }
        }

        if (SHIBYTE(v997) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v999 < 0)
        {
          operator delete(v998[0]);
        }

        ++v406;
      }

      while (v990 != v406);
      v403 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v404, &v1000, v1015, 16);
    }

    while (v403);
  }

  sub_19B87BBB4();
  v571 = 0x1E695D000;
  if (sub_19B93CCA4())
  {
    v572 = objc_msgSend_inertialOdometryData(a2, v568, v569, v570);
    memset(v1016, 0, 64);
    v577 = objc_msgSend_countByEnumeratingWithState_objects_count_(v572, v573, v1016, buf, 16);
    if (v577)
    {
      v578 = 0;
      v579 = **&v1016[16];
      do
      {
        for (i = 0; i != v577; ++i)
        {
          v581 = v578;
          if (**&v1016[16] != v579)
          {
            objc_enumerationMutation(v572);
          }

          v578 = *(*&v1016[8] + 8 * i);
          if (v581)
          {
            v582 = objc_msgSend_cfAbsTimestamp(*(*&v1016[8] + 8 * i), v574, v575, v576);
            objc_msgSend_timeIntervalSinceReferenceDate(v582, v583, v584, v585);
            v587 = v586;
            v591 = objc_msgSend_cfAbsTimestamp(v581, v588, v589, v590);
            objc_msgSend_timeIntervalSinceReferenceDate(v591, v592, v593, v594);
            if (vabdd_f64(v587, v595) > 3.0)
            {
              operator new();
            }
          }
        }

        v577 = objc_msgSend_countByEnumeratingWithState_objects_count_(v572, v574, v1016, buf, 16);
      }

      while (v577);
    }

    v596 = objc_autoreleasePoolPush();
    v571 = 0x1E695D000uLL;
    v600 = objc_msgSend_array(MEMORY[0x1E695DF70], v597, v598, v599);
    v604 = objc_msgSend_tripLocations(a2, v601, v602, v603);
    memset(v1016, 0, 64);
    v609 = objc_msgSend_countByEnumeratingWithState_objects_count_(v604, v605, v1016, buf, 16);
    if (v609)
    {
      v610 = **&v1016[16];
      do
      {
        for (j = 0; j != v609; ++j)
        {
          if (**&v1016[16] != v610)
          {
            objc_enumerationMutation(v604);
          }

          v612 = objc_msgSend_timestamp(*(*&v1016[8] + 8 * j), v606, v607, v608);
          objc_msgSend_timeIntervalSinceReferenceDate(v612, v613, v614, v615);
        }

        v609 = objc_msgSend_countByEnumeratingWithState_objects_count_(v604, v606, v1016, buf, 16);
      }

      while (v609);
    }

    v616 = objc_msgSend_tripLocations(a2, v606, v607, v608);
    v619 = objc_msgSend_objectAtIndexedSubscript_(v616, v617, 0, v618);
    v623 = objc_msgSend_timestamp(v619, v620, v621, v622);
    sub_19B98FD58(v984, v600, v623, 10);
    objc_autoreleasePoolPop(v596);
  }

  v624 = os_transaction_create();
  v625 = objc_alloc_init(*(v571 + 3952));
  v626 = objc_alloc_init(*(v571 + 3952));
  v630 = objc_msgSend_modeOfTransport(a2, v627, v628, v629);
  if (v630 != 1)
  {
    if (v630 == 2)
    {
      v653 = objc_msgSend_tripSegmentID(a2, v631, v632, v633);
      v657 = objc_msgSend_isFinalPart(a2, v654, v655, v656);
      v661 = objc_msgSend_modeOfTransport(a2, v658, v659, v660);
      v662 = objc_alloc(*(v571 + 3952));
      v666 = objc_msgSend_tripLocations(a2, v663, v664, v665);
      v668 = objc_msgSend_initWithArray_copyItems_(v662, v667, v666, 1);
      v672 = objc_msgSend_inertialOdometryData(a2, v669, v670, v671);
      if (sub_19BA58B88(a1, a3, v653, v657, v661, v668, v672, v625, v626))
      {
        goto LABEL_313;
      }

      if (qword_1EAFE5B00 == -1)
      {
        goto LABEL_329;
      }
    }

    else
    {
      if (v630 != 3)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v730 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          v734 = objc_msgSend_modeOfTransport(a2, v731, v732, v733);
          *buf = 67240192;
          *v1036 = v734;
          _os_log_impl(&dword_19B873000, v730, OS_LOG_TYPE_ERROR, "CLTSP,processData,unknown modeOfTransport,%{public}d", buf, 8u);
        }

        v735 = sub_19B87DD40();
        if ((*(v735 + 160) & 0x80000000) != 0 && (*(v735 + 164) & 0x80000000) != 0 && (*(v735 + 168) & 0x80000000) != 0 && !*(v735 + 152))
        {
          goto LABEL_416;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v739 = qword_1EAFE46E8;
        v740 = objc_msgSend_modeOfTransport(a2, v736, v737, v738);
        *v1016 = 67240192;
        *&v1016[4] = v740;
        v741 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v739, 16, "CLTSP,processData,unknown modeOfTransport,%{public}d", v1016, 8);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v741);
        if (v741 == buf)
        {
          goto LABEL_416;
        }

        goto LABEL_415;
      }

      v634 = objc_msgSend_tripSegmentID(a2, v631, v632, v633);
      v638 = objc_msgSend_isFinalPart(a2, v635, v636, v637);
      v642 = objc_msgSend_modeOfTransport(a2, v639, v640, v641);
      v646 = objc_msgSend_tripLocations(a2, v643, v644, v645);
      if (sub_19BA59C3C(a3, v634, v638, v642, v646, v625))
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v650 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v650, OS_LOG_TYPE_INFO, "CLTSP,processPedestrianOrCycling,success", buf, 2u);
        }

        v651 = sub_19B87DD40();
        if (*(v651 + 160) > 1 || *(v651 + 164) > 1 || *(v651 + 168) > 1 || *(v651 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          *v1016 = 0;
          v652 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,processPedestrianOrCycling,success", v1016, 2);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v652);
          if (v652 != buf)
          {
            free(v652);
          }
        }

        goto LABEL_313;
      }

      if (qword_1EAFE5B00 == -1)
      {
LABEL_329:
        v742 = qword_1EAFE5B10;
        v743 = objc_msgSend_tripSegmentID(a2, v647, v648, v649);
        sub_19BA56BA8(v742, v743, 2, v744);
        goto LABEL_416;
      }
    }

    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    goto LABEL_329;
  }

  v673 = sub_19B99F158(@"UseInertialOdometryInTSP", 0, v632, v633);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v674 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    *v1036 = v673;
    _os_log_impl(&dword_19B873000, v674, OS_LOG_TYPE_INFO, "CLTSP,UseInertialOdometryInTSP,%{public}d", buf, 8u);
  }

  v675 = sub_19B87DD40();
  if (*(v675 + 160) > 1 || *(v675 + 164) > 1 || *(v675 + 168) > 1 || *(v675 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v1016 = 67240192;
    *&v1016[4] = v673;
    v676 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,UseInertialOdometryInTSP,%{public}d", v1016, 8);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v676);
    if (v676 != buf)
    {
      free(v676);
    }
  }

  v680 = objc_alloc_init(*(v571 + 3952));
  if (v673)
  {
    v681 = objc_msgSend_tripLocations(a2, v677, v678, v679);
    v685 = objc_msgSend_inertialOdometryData(a2, v682, v683, v684);
    if ((sub_19BA56C48(v681, v685, v680, v686) & 1) == 0)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v925 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v925, OS_LOG_TYPE_ERROR, "CLTSP,CLTripSegmentUtilities::convertInertialOdometryDataToInertialData failed", buf, 2u);
      }

      v926 = sub_19B87DD40();
      if ((*(v926 + 160) & 0x80000000) != 0 && (*(v926 + 164) & 0x80000000) != 0 && (*(v926 + 168) & 0x80000000) != 0 && !*(v926 + 152))
      {
        goto LABEL_122;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      *v1016 = 0;
      v117 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,CLTripSegmentUtilities::convertInertialOdometryDataToInertialData failed", v1016, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v117);
      goto LABEL_120;
    }
  }

  v687 = objc_msgSend_tripSegmentID(a2, v677, v678, v679);
  v691 = objc_msgSend_isFinalPart(a2, v688, v689, v690);
  v695 = objc_msgSend_modeOfTransport(a2, v692, v693, v694);
  v696 = objc_alloc(*(v571 + 3952));
  v700 = objc_msgSend_tripLocations(a2, v697, v698, v699);
  v702 = objc_msgSend_initWithArray_copyItems_(v696, v701, v700, 1);
  if ((sub_19BA57A90(a1, a3, v687, v691, v695, v702, v680, v625, v626) & 1) == 0)
  {
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    v922 = qword_1EAFE5B10;
    v923 = objc_msgSend_tripSegmentID(a2, v647, v648, v649);
    sub_19BA56BA8(v922, v923, 2, v924);

    goto LABEL_122;
  }

LABEL_313:
  if (!a4)
  {
LABEL_385:
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    v910 = sub_19BA5A7F4(qword_1EAFE5B10, v1010);
    v911 = v1004;
    *&v1004[5].__r_.__value_.__l.__data_ = v910 + *&v1004[5].__r_.__value_.__l.__data_;
    sub_19BA3BD08(v911);
    sub_19BA566AC(a1, a2, 3);
    if (objc_msgSend_isFinalPart(a2, v912, v913, v914))
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      v918 = qword_1EAFE5B10;
      v919 = objc_msgSend_tripSegmentID(a2, v915, v916, v917);
      sub_19B9545AC(v918, v919, v920, v921);
    }

    v123 = 1;
    goto LABEL_123;
  }

  v703 = objc_msgSend_tripLocations(a2, v647, v648, v649);
  v707 = objc_msgSend_firstObject(v703, v704, v705, v706);
  v711 = objc_msgSend_timestamp(v707, v708, v709, v710);
  v715 = objc_msgSend_tripLocations(a2, v712, v713, v714);
  v719 = objc_msgSend_lastObject(v715, v716, v717, v718);
  v723 = objc_msgSend_timestamp(v719, v720, v721, v722);
  v726 = v723;
  if (v711 && v723)
  {
    objc_msgSend_timeIntervalSinceDate_(v723, v724, v711, v725);
    v729 = v728;
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v745 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v749 = objc_msgSend_tripLocations(a2, v746, v747, v748);
      v753 = objc_msgSend_count(v749, v750, v751, v752);
      *buf = 67240704;
      *v1036 = v711 == 0;
      *&v1036[4] = 1026;
      *&v1036[6] = v726 == 0;
      *&v1036[10] = 2050;
      *&v1036[12] = v753;
      _os_log_impl(&dword_19B873000, v745, OS_LOG_TYPE_ERROR, "CLTSP,processData,CLTripSegmentOutputData,duration cannot be set,startDate is nil,%{public}d,endDate is nil,%{public}d,tripSegmentData.tripLocations,count,%{public}lu", buf, 0x18u);
    }

    v754 = sub_19B87DD40();
    if ((*(v754 + 160) & 0x80000000) == 0 || (*(v754 + 164) & 0x80000000) == 0 || (*(v754 + 168) & 0x80000000) == 0 || (v729 = -1.0, *(v754 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v758 = qword_1EAFE46E8;
      v759 = objc_msgSend_tripLocations(a2, v755, v756, v757);
      v763 = objc_msgSend_count(v759, v760, v761, v762);
      *v1016 = 67240704;
      *&v1016[4] = v711 == 0;
      *&v1016[8] = 1026;
      *&v1016[10] = v726 == 0;
      *&v1016[14] = 2050;
      *&v1016[16] = v763;
      v764 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v758, 16, "CLTSP,processData,CLTripSegmentOutputData,duration cannot be set,startDate is nil,%{public}d,endDate is nil,%{public}d,tripSegmentData.tripLocations,count,%{public}lu", v1016, 24);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v764);
      if (v764 != buf)
      {
        free(v764);
      }

      v729 = -1.0;
    }
  }

  v765 = sub_19BA59EC0(v625, v727);
  if (!objc_msgSend_runMapIntegrator(a3, v766, v767, v768) || (v772 = objc_msgSend_tripLocations(a2, v769, v770, v771), (sub_19BA5A02C(v772, v625, v773, v774) & 1) != 0))
  {
    v775 = [CLTripSegmentOutputData alloc];
    v779 = objc_msgSend_tripSegmentID(a2, v776, v777, v778);
    v783 = objc_msgSend_isFinalPart(a2, v780, v781, v782);
    v787 = objc_msgSend_modeOfTransport(a2, v784, v785, v786);
    v789 = objc_msgSend_initWithTripSegmentID_isFinalPart_startDate_endDate_duration_modeOfTransport_distance_distanceUnc_tripLocations_routeRoads_(v775, v788, v779, v783, v711, v726, v787, v625, v729, v765, v765 * 0.05, v626);
    v793 = objc_msgSend_tripLocations(a2, v790, v791, v792);
    if (objc_msgSend_count(v793, v794, v795, v796) && *v984 == 1)
    {
      v800 = objc_msgSend_tripLocations(a2, v797, v798, v799);
      v803 = objc_msgSend_objectAtIndexedSubscript_(v800, v801, 0, v802);
      v807 = objc_msgSend_timestamp(v803, v804, v805, v806);
      sub_19B98FD58(v984, v789, v807, 4);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v808 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1011 >= 0)
      {
        v812 = v1010;
      }

      else
      {
        v812 = v1010[0];
      }

      v813 = objc_msgSend_modeOfTransport(v789, v809, v810, v811);
      v817 = objc_msgSend_isFinalPart(v789, v814, v815, v816);
      v821 = objc_msgSend_tripLocations(a2, v818, v819, v820);
      v825 = objc_msgSend_count(v821, v822, v823, v824);
      v829 = objc_msgSend_tripLocations(v789, v826, v827, v828);
      v833 = objc_msgSend_count(v829, v830, v831, v832);
      v837 = objc_msgSend_routeRoads(v789, v834, v835, v836);
      v841 = objc_msgSend_count(v837, v838, v839, v840);
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      v842 = sub_19BA5A7F4(qword_1EAFE5B10, v1010);
      v846 = objc_msgSend_isSimulatedSparseProcessing(a3, v843, v844, v845);
      v847 = v1008;
      if (v1009 < 0)
      {
        v847 = v1008[0];
      }

      v848 = __p;
      if (v1007 < 0)
      {
        v848 = __p[0];
      }

      *buf = 136448770;
      *v1036 = v812;
      *&v1036[8] = 1026;
      *&v1036[10] = v813;
      *&v1036[14] = 1026;
      *&v1036[16] = v817;
      *&v1036[20] = 1026;
      *v1037 = v825;
      *&v1037[4] = 1026;
      *&v1037[6] = v833;
      *&v1037[10] = 1026;
      *&v1037[12] = v841;
      *&v1037[16] = 2050;
      *&v1037[18] = v765;
      *&v1037[26] = 2050;
      *&v1037[28] = v842;
      *&v1037[36] = 1026;
      *&v1037[38] = v846;
      *&v1037[42] = 2082;
      *&v1037[44] = v847;
      *&v1037[52] = 2082;
      *&v1037[54] = v848;
      _os_log_impl(&dword_19B873000, v808, OS_LOG_TYPE_DEFAULT, "CLTSP,processData,output,tripSegmentID,%{public}s,modeOfTransport,%{public}d,isFinalPart,%{public}d,sparseLocationsCount,%{public}d,reconstructedLocCount,%{public}d,routeRoadsCount,%{public}d,totalDistance,%{public}.2lf,processingTimeMSec,%{public}.1lf,simulated,%{public}d,date,%{public}s,time,%{public}s", buf, 0x58u);
    }

    v849 = sub_19B87DD40();
    if (*(v849 + 160) > 1 || *(v849 + 164) > 1 || *(v849 + 168) > 1 || *(v849 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v855 = qword_1EAFE46E8;
      if (v1011 >= 0)
      {
        v856 = v1010;
      }

      else
      {
        v856 = v1010[0];
      }

      v857 = objc_msgSend_modeOfTransport(v789, v852, v853, v854);
      v861 = objc_msgSend_isFinalPart(v789, v858, v859, v860);
      v865 = objc_msgSend_tripLocations(a2, v862, v863, v864);
      v869 = objc_msgSend_count(v865, v866, v867, v868);
      v873 = objc_msgSend_tripLocations(v789, v870, v871, v872);
      v877 = objc_msgSend_count(v873, v874, v875, v876);
      v881 = objc_msgSend_routeRoads(v789, v878, v879, v880);
      v885 = objc_msgSend_count(v881, v882, v883, v884);
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      v886 = sub_19BA5A7F4(qword_1EAFE5B10, v1010);
      v890 = objc_msgSend_isSimulatedSparseProcessing(a3, v887, v888, v889);
      v891 = v1008;
      if (v1009 < 0)
      {
        v891 = v1008[0];
      }

      v892 = __p;
      if (v1007 < 0)
      {
        v892 = __p[0];
      }

      *v1016 = 136448770;
      *&v1016[4] = v856;
      *&v1016[12] = 1026;
      *&v1016[14] = v857;
      *&v1016[18] = 1026;
      *&v1016[20] = v861;
      *&v1016[24] = 1026;
      *&v1016[26] = v869;
      *&v1016[30] = 1026;
      *&v1016[32] = v877;
      *&v1016[36] = 1026;
      *&v1016[38] = v885;
      *&v1016[42] = 2050;
      *&v1016[44] = v765;
      *&v1016[52] = 2050;
      *&v1016[54] = v886;
      *&v1016[62] = 1026;
      *&v1016[64] = v890;
      *&v1016[68] = 2082;
      *&v1016[70] = v891;
      *&v1016[78] = 2082;
      *&v1016[80] = v892;
      v893 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v855, 0, "CLTSP,processData,output,tripSegmentID,%{public}s,modeOfTransport,%{public}d,isFinalPart,%{public}d,sparseLocationsCount,%{public}d,reconstructedLocCount,%{public}d,routeRoadsCount,%{public}d,totalDistance,%{public}.2lf,processingTimeMSec,%{public}.1lf,simulated,%{public}d,date,%{public}s,time,%{public}s", v1016, 88);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v893);
      if (v893 != buf)
      {
        free(v893);
      }
    }

    sub_19BA3AE04(v1004, v789, v850, v851);
    if (objc_msgSend_isFinalPart(a2, v894, v895, v896))
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      v900 = qword_1EAFE5B10;
      v901 = objc_msgSend_tripSegmentID(a2, v897, v898, v899);
      sub_19BA56BA8(v900, v901, 3, v902);
    }

    (*(a4 + 16))(a4, v789);
    if ((objc_msgSend_isSimulatedSparseProcessing(a3, v903, v904, v905) & 1) == 0 && objc_msgSend_createSparseDataFromOneHzData(a3, v906, v907, v908))
    {
      v909 = v789;
      sub_19BA5A8B0();
    }

    goto LABEL_385;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v927 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v927, OS_LOG_TYPE_ERROR, "CLTSP,CLTripSegmentUtilities::getCorrectedCoordinates failed", buf, 2u);
  }

  v928 = sub_19B87DD40();
  if ((*(v928 + 160) & 0x80000000) == 0 || (*(v928 + 164) & 0x80000000) == 0 || (*(v928 + 168) & 0x80000000) == 0 || *(v928 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v1016 = 0;
    v741 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,CLTripSegmentUtilities::getCorrectedCoordinates failed", v1016, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processData(CLTripSegmentInputData * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v741);
    if (v741 != buf)
    {
LABEL_415:
      free(v741);
    }
  }

LABEL_416:

LABEL_122:
  v123 = 0;
LABEL_123:
  if (v1005)
  {
    sub_19B8750F8(v1005);
  }

  if (v1007 < 0)
  {
    operator delete(__p[0]);
  }

  if (v1009 < 0)
  {
    operator delete(v1008[0]);
  }

  if (SHIBYTE(v1011) < 0)
  {
    operator delete(v1010[0]);
  }

  return v123;
}

void sub_19BA5593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, std::__shared_weak_count *a62)
{
  if (a62)
  {
    sub_19B8750F8(a62);
  }

  if (a42)
  {
    sub_19B8750F8(a42);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA55AB8(std::mutex *a1, char *a2)
{
  std::mutex::lock(a1);
  v4 = sub_19B95D1AC(a1, a2);
  std::mutex::unlock(a1);
  return v4;
}

void sub_19BA55B10(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v65 = *MEMORY[0x1E69E9840];
  std::mutex::lock(a1);
  if (*a3)
  {
    if (sub_19B95D1AC(a1, a2))
    {
      *buf = a2;
      if (sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, buf, v59)[7])
      {
        goto LABEL_83;
      }

      v8 = *a3;
      if (*(*a3 + 24) <= 0.0)
      {
        goto LABEL_8;
      }

      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        v9 = *(v8 + 8);
      }

      if (!v9)
      {
LABEL_8:
        sub_19BA7034C(v8, a2);
      }

      *buf = a2;
      v10 = sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, buf, v59);
      v12 = *a3;
      v11 = a3[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = v10[8];
      v10[7] = v12;
      v10[8] = v11;
      if (v13)
      {
        sub_19B8750F8(v13);
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
      }

      v14 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        if (*(a2 + 23) >= 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = *a2;
        }

        v16 = *(a1 + 80);
        *buf = 136446466;
        *&buf[4] = v15;
        *&buf[12] = 2050;
        *&buf[14] = v16;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_INFO, "CLTSP,sharedData,tripData element updated pointer,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
      }

      v17 = sub_19B87DD40();
      if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
      {
        goto LABEL_83;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
      }

      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v19 = *(a1 + 80);
      v59[0] = 136446466;
      *&v59[1] = v18;
      v60 = 2050;
      v61 = v19;
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,sharedData,tripData element updated pointer,tripID,%{public}s,count,%{public}lu", v59, 22);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::addTrip(const std::string &, std::shared_ptr<CLTripSegmentStaticData> &, double)", "CoreLocation: %s\n", v20);
LABEL_81:
      if (v20 != buf)
      {
        free(v20);
      }

LABEL_83:
      v57 = a2;
      v36 = *(a1 + 64);
      if (v36 != (a1 + 72))
      {
        do
        {
          v37 = v36[7];
          if (v37 && vabdd_f64(CFAbsoluteTimeGetCurrent(), *(v37 + 24)) > 86400.0)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
            }

            v38 = (v36 + 4);
            v39 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
            {
              v40 = v36 + 4;
              if (*(v36 + 55) < 0)
              {
                v40 = *v38;
              }

              v41 = *(a1 + 80) - 1;
              *buf = 136446466;
              *&buf[4] = v40;
              *&buf[12] = 2050;
              *&buf[14] = v41;
              _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_INFO, "CLTSP,sharedData,tripData element erased due to timeout,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
            }

            v42 = sub_19B87DD40();
            if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
              }

              v43 = v36 + 4;
              if (*(v36 + 55) < 0)
              {
                v43 = *v38;
              }

              v44 = *(a1 + 80) - 1;
              v59[0] = 136446466;
              *&v59[1] = v43;
              v60 = 2050;
              v61 = v44;
              v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,sharedData,tripData element erased due to timeout,tripID,%{public}s,count,%{public}lu", v59, 22);
              sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::addTrip(const std::string &, std::shared_ptr<CLTripSegmentStaticData> &, double)", "CoreLocation: %s\n", v45);
              if (v45 != buf)
              {
                free(v45);
              }
            }

            v46 = sub_19B8F128C((a1 + 64), v36);
            sub_19B95D52C((v36 + 4));
            operator delete(v36);
          }

          else
          {
            v47 = v36[1];
            if (v47)
            {
              do
              {
                v46 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v46 = v36[2];
                v48 = *v46 == v36;
                v36 = v46;
              }

              while (!v48);
            }
          }

          v36 = v46;
        }

        while (v46 != (a1 + 72));
      }

      if (sub_19B95D1AC(a1, v57))
      {
        *buf = v57;
        v49 = sub_19B95D310((a1 + 64), v57, &unk_19BA897F0, buf, v59)[7];
        *(v49 + 32) = 0xBFF0000000000000;
        v50 = mach_continuous_time();
        v51 = sub_19B994BF4(v50);
        *(v49 + 32) = a4;
        *(v49 + 40) = v51;
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
        }

        v52 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v53 = *(v49 + 32);
          *buf = 134349056;
          *&buf[4] = v53;
          _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,processing time tracker started,maxAllowed,%{public}.1lf", buf, 0xCu);
        }

        v54 = sub_19B87DD40();
        if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
          }

          v55 = *(v49 + 32);
          v59[0] = 134349056;
          *&v59[1] = v55;
          v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,CLTSP,processing time tracker started,maxAllowed,%{public}.1lf", v59, 12);
          sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker::start(const double)", "CoreLocation: %s\n", v56);
          if (v56 != buf)
          {
            free(v56);
          }
        }
      }

      sub_19B95D910(a1, v57, 0);
      goto LABEL_123;
    }

    v28 = *a3;
    if (*(*a3 + 24) <= 0.0)
    {
      goto LABEL_52;
    }

    if ((*(v28 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v28 + 8))
      {
LABEL_52:
        sub_19BA7034C(v28, a2);
      }
    }

    else if (!*(v28 + 23))
    {
      goto LABEL_52;
    }

    if (*(a2 + 23) < 0)
    {
      sub_19B874C9C(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    v29 = a3[1];
    v63 = *a3;
    v64 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*sub_19B95D3B8(a1 + 64, &v58, buf))
    {
      operator new();
    }

    if (v64)
    {
      sub_19B8750F8(v64);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v31 = a2;
      }

      else
      {
        v31 = *a2;
      }

      v32 = *(a1 + 80);
      *buf = 136446466;
      *&buf[4] = v31;
      *&buf[12] = 2050;
      *&buf[14] = v32;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_INFO, "CLTSP,sharedData,tripData element added,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
    }

    v33 = sub_19B87DD40();
    if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
    {
      goto LABEL_83;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    if (*(a2 + 23) >= 0)
    {
      v34 = a2;
    }

    else
    {
      v34 = *a2;
    }

    v35 = *(a1 + 80);
    v59[0] = 136446466;
    *&v59[1] = v34;
    v60 = 2050;
    v61 = v35;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,sharedData,tripData element added,tripID,%{public}s,count,%{public}lu", v59, 22);
    sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::addTrip(const std::string &, std::shared_ptr<CLTripSegmentStaticData> &, double)", "CoreLocation: %s\n", v20);
    goto LABEL_81;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
  }

  v21 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    v23 = *(a1 + 80);
    *buf = 136446466;
    *&buf[4] = v22;
    *&buf[12] = 2050;
    *&buf[14] = v23;
    _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripData add failed, static data pointer is null,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
  }

  v24 = sub_19B87DD40();
  if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    if (*(a2 + 23) >= 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = *a2;
    }

    v26 = *(a1 + 80);
    v59[0] = 136446466;
    *&v59[1] = v25;
    v60 = 2050;
    v61 = v26;
    v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,sharedData,tripData add failed, static data pointer is null,tripID,%{public}s,count,%{public}lu", v59, 22);
    sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentSharedData::addTrip(const std::string &, std::shared_ptr<CLTripSegmentStaticData> &, double)", "CoreLocation: %s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }
  }

LABEL_123:
  std::mutex::unlock(a1);
}

void sub_19BA566AC(uint64_t a1, void *a2, uint64_t a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a1 + 40;
  if (*(a1 + 40) == 1)
  {
    v6 = objc_autoreleasePoolPush();
    v10 = objc_msgSend_tripSegmentID(a2, v7, v8, v9);
    v14 = objc_msgSend_UUIDString(v10, v11, v12, v13);
    v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
    sub_19B8759E8(__p, v18);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9F2000(qword_1EAFE5B10, __p, &v91);
    if (v91)
    {
      if (*v91 == 1)
      {
        if (qword_1EAFE5B00 != -1)
        {
          dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
        }

        v19 = qword_1EAFE5B10;
        std::mutex::lock(qword_1EAFE5B10);
        v20 = sub_19B95D1AC(v19, __p);
        v24 = MEMORY[0x1E695DF00];
        if (v20)
        {
          *buf = __p;
          v25 = sub_19B95D310((v19 + 64), __p, &unk_19BA897F0, buf, &v95);
          v29 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v24, v26, v27, v28, *(v25[7] + 24));
        }

        else
        {
          v29 = objc_msgSend_now(MEMORY[0x1E695DF00], v21, v22, v23);
        }

        v35 = v29;
        std::mutex::unlock(v19);
        v39 = objc_msgSend_now(MEMORY[0x1E695DF00], v36, v37, v38);
        v43 = sub_19BA3B2C4(v91, v40, v41, v42);
        v49 = objc_msgSend_mutableCopy(v43, v44, v45, v46);
        v50 = __p;
        if (v94 < 0)
        {
          v50 = __p[0];
        }

        v51 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v47, @"%s", v48, v50);
        objc_msgSend_setValue_forKey_(v49, v52, v51, @"tripID");
        v53 = MEMORY[0x1E696AEC0];
        isFinalPart = objc_msgSend_isFinalPart(a2, v54, v55, v56);
        v60 = objc_msgSend_stringWithFormat_(v53, v58, @"%d", v59, isFinalPart);
        objc_msgSend_setValue_forKey_(v49, v61, v60, @"isFinalPart");
        v62 = MEMORY[0x1E696AEC0];
        v63 = sub_19B98FCA8(v35);
        v64 = sub_19B98FD00(v35);
        v67 = objc_msgSend_stringWithFormat_(v62, v65, @"%@ %@", v66, v63, v64);
        objc_msgSend_setValue_forKey_(v49, v68, v67, @"processingStartTime");
        v69 = MEMORY[0x1E696AEC0];
        v70 = sub_19B98FCA8(v39);
        v71 = sub_19B98FD00(v39);
        v74 = objc_msgSend_stringWithFormat_(v69, v72, @"%@ %@", v73, v70, v71);
        objc_msgSend_setValue_forKey_(v49, v75, v74, @"processingEndTime");
        v78 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v76, @"%d", v77, a3);
        objc_msgSend_setValue_forKey_(v49, v79, v78, @"status");
        v83 = objc_msgSend_tripLocations(a2, v80, v81, v82);
        v86 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, 0, v85);
        v90 = objc_msgSend_timestamp(v86, v87, v88, v89);
        sub_19B98FD58(v3, v49, v90, 17);
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v30 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v31 = __p;
        if (v94 < 0)
        {
          v31 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v31;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEFAULT, "CLTSP,recordAnalyticsInCLTSPFile,tripID,%{public}s is not in CLTripSegmentSharedData", buf, 0xCu);
      }

      v32 = sub_19B87DD40();
      if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v33 = __p;
        if (v94 < 0)
        {
          v33 = __p[0];
        }

        v95 = 136446210;
        v96 = v33;
        v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,recordAnalyticsInCLTSPFile,tripID,%{public}s is not in CLTripSegmentSharedData", &v95, 12);
        sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentProcessor::recordAnalyticsInCLTSPFile(CLTripSegmentInputData * _Nonnull, const CLTripSegmentProcessorStatus)", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    if (v92)
    {
      sub_19B8750F8(v92);
    }

    if (v94 < 0)
    {
      operator delete(__p[0]);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_19BA56B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    sub_19B8750F8(a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA56BA8(std::mutex *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_UUIDString(a2, a2, a3, a4);
  v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
  sub_19B8759E8(__p, v10);
  std::mutex::lock(a1);
  sub_19B95E280(a1, __p, a3);
  std::mutex::unlock(a1);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19BA56C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA56C48(void *a1, char *a2, void *a3, uint64_t a4)
{
  v481 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v299 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v299, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,null tripLocations", buf, 2u);
    }

    v300 = sub_19B87DD40();
    if ((*(v300 + 160) & 0x80000000) != 0 && (*(v300 + 164) & 0x80000000) != 0 && (*(v300 + 168) & 0x80000000) != 0 && !*(v300 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v475) = 0;
    v301 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,convertInertialOdometryDataToInertialData,null tripLocations", &v475, 2);
    goto LABEL_107;
  }

  if (!objc_msgSend_count(a1, a2, a3, a4))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v302 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v302, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,empty tripLocations", buf, 2u);
    }

    v303 = sub_19B87DD40();
    if ((*(v303 + 160) & 0x80000000) != 0 && (*(v303 + 164) & 0x80000000) != 0 && (*(v303 + 168) & 0x80000000) != 0 && !*(v303 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v475) = 0;
    v301 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,convertInertialOdometryDataToInertialData,empty tripLocations", &v475, 2);
    goto LABEL_107;
  }

  if (!a2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v304 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v304, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,null inertialOdometryDataArray", buf, 2u);
    }

    v305 = sub_19B87DD40();
    if ((*(v305 + 160) & 0x80000000) != 0 && (*(v305 + 164) & 0x80000000) != 0 && (*(v305 + 168) & 0x80000000) != 0 && !*(v305 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v475) = 0;
    v301 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,convertInertialOdometryDataToInertialData,null inertialOdometryDataArray", &v475, 2);
    goto LABEL_107;
  }

  if (!objc_msgSend_count(a2, v7, v8, v9))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v306 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v306, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,empty inertialOdometryDataArray", buf, 2u);
    }

    v307 = sub_19B87DD40();
    if ((*(v307 + 160) & 0x80000000) != 0 && (*(v307 + 164) & 0x80000000) != 0 && (*(v307 + 168) & 0x80000000) != 0 && !*(v307 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v475) = 0;
    v301 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,convertInertialOdometryDataToInertialData,empty inertialOdometryDataArray", &v475, 2);
    goto LABEL_107;
  }

  if (!a3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v308 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v308, OS_LOG_TYPE_ERROR, "CLTSP,convertInertialOdometryDataToInertialData,null inertialDataArray", buf, 2u);
    }

    v309 = sub_19B87DD40();
    if ((*(v309 + 160) & 0x80000000) != 0 && (*(v309 + 164) & 0x80000000) != 0 && (*(v309 + 168) & 0x80000000) != 0 && !*(v309 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v475) = 0;
    v301 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,convertInertialOdometryDataToInertialData,null inertialDataArray", &v475, 2);
LABEL_107:
    v310 = v301;
    sub_19B885924("Generic", 1, 0, 0, "static BOOL CLTripSegmentUtilities::convertInertialOdometryDataToInertialData(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentInertialData *> * _Nonnull)", "CoreLocation: %s\n", v301);
    if (v310 != buf)
    {
      free(v310);
    }

    return 0;
  }

  v466 = a1;
  Object = objc_msgSend_firstObject(a2, v10, v11, v12);
  v17 = objc_msgSend_deltaVelocity_mps(Object, v14, v15, v16);
  objc_msgSend_X(v17, v18, v19, v20);
  v470 = v21;
  objc_msgSend_X(v17, v22, v23, v24);
  v469 = v25;
  objc_msgSend_Y(v17, v26, v27, v28);
  v468 = v29;
  objc_msgSend_Y(v17, v30, v31, v32);
  v467 = v33;
  v37 = objc_msgSend_firstObject(a2, v34, v35, v36);
  v41 = objc_msgSend_quaternion(v37, v38, v39, v40);
  objc_msgSend_Y(v41, v42, v43, v44);
  v46 = v45;
  objc_msgSend_Y(v41, v47, v48, v49);
  v51 = v50;
  objc_msgSend_Z(v41, v52, v53, v54);
  v56 = v55;
  objc_msgSend_Z(v41, v57, v58, v59);
  v61 = v60;
  objc_msgSend_X(v41, v62, v63, v64);
  v66 = v65;
  objc_msgSend_Y(v41, v67, v68, v69);
  v71 = v70;
  objc_msgSend_W(v41, v72, v73, v74);
  v76 = v75;
  objc_msgSend_Z(v41, v77, v78, v79);
  v81 = v80;
  v471 = 0u;
  v472 = 0u;
  v473 = 0u;
  v474 = 0u;
  v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v82, &v471, v479, 16);
  if (v83)
  {
    v85 = v83;
    v88 = atan2(v76 * v81 + v66 * v71 + v76 * v81 + v66 * v71, (v56 * v61 + v46 * v51) * -2.0 + 1.0);
    v89 = sqrt(v468 * v467 + v470 * v469);
    v90 = *v472;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        v92 = v88;
        if (*v472 != v90)
        {
          objc_enumerationMutation(a2);
        }

        v93 = *(*(&v471 + 1) + 8 * i);
        v94 = objc_msgSend_deltaVelocity_mps(v93, v84, v86, v87);
        objc_msgSend_X(v94, v95, v96, v97);
        v99 = v98;
        v103 = objc_msgSend_deltaVelocity_mps(v93, v100, v101, v102);
        objc_msgSend_X(v103, v104, v105, v106);
        v108 = v107;
        v112 = objc_msgSend_deltaVelocity_mps(v93, v109, v110, v111);
        objc_msgSend_Y(v112, v113, v114, v115);
        v117 = v116;
        v121 = objc_msgSend_deltaVelocity_mps(v93, v118, v119, v120);
        objc_msgSend_Y(v121, v122, v123, v124);
        v126 = sqrt(v117 * v125 + v99 * v108);
        v130 = objc_msgSend_deltaVelocity_mps(v93, v127, v128, v129);
        objc_msgSend_X(v130, v131, v132, v133);
        v135 = v134;
        objc_msgSend_X(v17, v136, v137, v138);
        v140 = v139;
        v144 = objc_msgSend_deltaVelocity_mps(v93, v141, v142, v143);
        objc_msgSend_Y(v144, v145, v146, v147);
        v149 = v148;
        objc_msgSend_Y(v17, v150, v151, v152);
        v157 = v149 * v156 + v135 * v140;
        if (v89 > 0.0 && v157 < 0.0)
        {
          v89 = -v126;
        }

        else
        {
          v89 = v126;
        }

        v17 = objc_msgSend_deltaVelocity_mps(v93, v153, v154, v155);
        v162 = objc_msgSend_quaternion(v93, v159, v160, v161);
        objc_msgSend_Y(v162, v163, v164, v165);
        v167 = v166;
        v171 = objc_msgSend_quaternion(v93, v168, v169, v170);
        objc_msgSend_Y(v171, v172, v173, v174);
        v176 = v175;
        v180 = objc_msgSend_quaternion(v93, v177, v178, v179);
        objc_msgSend_Z(v180, v181, v182, v183);
        v185 = v184;
        v189 = objc_msgSend_quaternion(v93, v186, v187, v188);
        objc_msgSend_Z(v189, v190, v191, v192);
        v194 = (v185 * v193 + v167 * v176) * -2.0 + 1.0;
        v198 = objc_msgSend_quaternion(v93, v195, v196, v197);
        objc_msgSend_X(v198, v199, v200, v201);
        v203 = v202;
        v207 = objc_msgSend_quaternion(v93, v204, v205, v206);
        objc_msgSend_Y(v207, v208, v209, v210);
        v212 = v211;
        v216 = objc_msgSend_quaternion(v93, v213, v214, v215);
        objc_msgSend_W(v216, v217, v218, v219);
        v221 = v220;
        v225 = objc_msgSend_quaternion(v93, v222, v223, v224);
        objc_msgSend_Z(v225, v226, v227, v228);
        v88 = atan2(v221 * v229 + v203 * v212 + v221 * v229 + v203 * v212, v194);
        fmod((v88 - v92) * -57.2957795, 360.0);
        v230 = [CLTripSegmentInertialData alloc];
        v234 = objc_msgSend_cfAbsTimestamp(v93, v231, v232, v233);
        objc_msgSend_sampleInterval_s(v93, v235, v236, v237);
        v240 = objc_msgSend_initWithTime_dataPeriodSec_deltaCourseRad_deltaSpeedMps_deltaCourseVarRad2_deltaSpeedVarMps2_deltaCourseSpeedCovarRadMps_(v230, v238, v234, v239);
        objc_msgSend_addObject_(a3, v241, v240, v242);
      }

      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v84, &v471, v479, 16);
    }

    while (v85);
  }

  v475 = 0u;
  v476 = 0u;
  v477 = 0u;
  v478 = 0u;
  v243 = objc_msgSend_countByEnumeratingWithState_objects_count_(v466, v84, &v475, buf, 16);
  if (v243)
  {
    v247 = v243;
    v248 = 0;
    v249 = *v476;
LABEL_21:
    v250 = 0;
    while (1)
    {
      if (*v476 != v249)
      {
        objc_enumerationMutation(v466);
      }

      v251 = *(*(&v475 + 1) + 8 * v250);
      if (!objc_msgSend_isGPSLocationType(v251, v244, v245, v246))
      {
        goto LABEL_32;
      }

      if (!objc_msgSend_isSpeedValid(v251, v244, v245, v246))
      {
        goto LABEL_32;
      }

      objc_msgSend_speed(v251, v244, v245, v246);
      if (fabs(v252) <= 0.001)
      {
        goto LABEL_32;
      }

      if (!v248)
      {
        goto LABEL_31;
      }

      v253 = objc_msgSend_timestamp(v248, v244, v245, v246);
      objc_msgSend_timeIntervalSinceReferenceDate(v253, v254, v255, v256);
      v258 = v257;
      v262 = objc_msgSend_timestamp(v251, v259, v260, v261);
      objc_msgSend_timeIntervalSinceReferenceDate(v262, v263, v264, v265);
      v267 = v266;
      v268 = v266 - v258;
      if (v268 > 4.0)
      {
        break;
      }

LABEL_32:
      if (v247 == ++v250)
      {
        v247 = objc_msgSend_countByEnumeratingWithState_objects_count_(v466, v244, &v475, buf, 16);
        if (v247)
        {
          goto LABEL_21;
        }

        goto LABEL_34;
      }
    }

    if (v268 < 10.0)
    {
      objc_msgSend_speed(v251, v244, v245, v246);
      v270 = v269;
      objc_msgSend_speed(v248, v271, v272, v273);
      if (vabdd_f64(v270, v274) > 0.001)
      {
        objc_msgSend_speed(v248, v244, v245, v246);
        v389 = v388;
        objc_msgSend_speed(v251, v390, v391, v392);
        v394 = v393;
        if (objc_msgSend_count(a3, v395, v396, v397))
        {
          v401 = 0;
          v402 = v389;
          do
          {
            v403 = objc_msgSend_objectAtIndexedSubscript_(a3, v398, v401, v400);
            v407 = objc_msgSend_timestamp(v403, v404, v405, v406);
            objc_msgSend_timeIntervalSinceReferenceDate(v407, v408, v409, v410);
            if (v414 >= v258)
            {
              v415 = objc_msgSend_objectAtIndexedSubscript_(a3, v411, v401, v413);
              v419 = objc_msgSend_timestamp(v415, v416, v417, v418);
              objc_msgSend_timeIntervalSinceReferenceDate(v419, v420, v421, v422);
              if (v423 <= v267)
              {
                v424 = objc_msgSend_objectAtIndexedSubscript_(a3, v411, v401, v413);
                objc_msgSend_deltaSpeed_mps(v424, v425, v426, v427);
                v389 = v389 + v428;
                v431 = objc_msgSend_objectAtIndexedSubscript_(a3, v429, v401, v430);
                objc_msgSend_deltaSpeed_mps(v431, v432, v433, v434);
                v402 = v402 - v435;
              }
            }

            ++v401;
          }

          while (objc_msgSend_count(a3, v411, v412, v413) > v401);
        }

        else
        {
          v402 = v389;
        }

        v441 = vabdd_f64(v402, v394);
        if (v441 < 4.0 && v441 < vabdd_f64(v389, v394))
        {
          goto LABEL_143;
        }

        return 1;
      }
    }

LABEL_31:
    v248 = v251;
    goto LABEL_32;
  }

LABEL_34:
  v475 = 0u;
  v476 = 0u;
  v477 = 0u;
  v478 = 0u;
  v275 = objc_msgSend_countByEnumeratingWithState_objects_count_(v466, v244, &v475, buf, 16);
  if (!v275)
  {
LABEL_47:
    v475 = 0u;
    v476 = 0u;
    v477 = 0u;
    v478 = 0u;
    v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v466, v276, &v475, buf, 16);
    if (v290)
    {
      v294 = v290;
      v295 = *v476;
LABEL_49:
      v296 = 0;
      while (1)
      {
        if (*v476 != v295)
        {
          objc_enumerationMutation(v466);
        }

        v297 = *(*(&v475 + 1) + 8 * v296);
        if (objc_msgSend_isSpeedValid(v297, v291, v292, v293))
        {
          objc_msgSend_speed(v297, v291, v292, v293);
          if (fabs(v298) <= 0.001)
          {
            break;
          }
        }

        if (v294 == ++v296)
        {
          v294 = objc_msgSend_countByEnumeratingWithState_objects_count_(v466, v291, &v475, buf, 16);
          if (v294)
          {
            goto LABEL_49;
          }

          return 1;
        }
      }

      v312 = objc_msgSend_timestamp(v297, v291, v292, v293);
      objc_msgSend_timeIntervalSinceReferenceDate(v312, v313, v314, v315);
      v317 = v316;
      if (objc_msgSend_count(a3, v318, v319, v320))
      {
        v323 = 0;
        while (1)
        {
          v324 = objc_msgSend_objectAtIndexedSubscript_(a3, v321, v323, v322);
          v328 = objc_msgSend_timestamp(v324, v325, v326, v327);
          objc_msgSend_timeIntervalSinceReferenceDate(v328, v329, v330, v331);
          if (v333 >= v317)
          {
            break;
          }

          if (objc_msgSend_count(a3, v321, v332, v322) <= ++v323)
          {
            goto LABEL_114;
          }
        }

        if (!v323)
        {
          return 1;
        }

        v334 = v323 - 1;
      }

      else
      {
LABEL_114:
        v334 = 0;
      }

      v436 = objc_msgSend_objectAtIndexedSubscript_(a3, v321, v334, v322);
      objc_msgSend_deltaSpeed_mps(v436, v437, v438, v439);
      if (v440 > 0.0)
      {
        goto LABEL_143;
      }
    }

    return 1;
  }

  v279 = v275;
  v280 = 0;
  v281 = *v476;
LABEL_36:
  v282 = 0;
  while (1)
  {
    v283 = v280;
    if (*v476 != v281)
    {
      objc_enumerationMutation(v466);
    }

    v280 = *(*(&v475 + 1) + 8 * v282);
    if (v283)
    {
      if (objc_msgSend_isGPSLocationType(v283, v276, v277, v278))
      {
        if (objc_msgSend_isGPSLocationType(v280, v276, v277, v278))
        {
          if (objc_msgSend_isSpeedValid(v283, v276, v277, v278))
          {
            if (objc_msgSend_isSpeedValid(v280, v276, v277, v278))
            {
              objc_msgSend_speed(v283, v276, v277, v278);
              v285 = v284;
              objc_msgSend_speed(v280, v286, v287, v288);
              if (vabdd_f64(v285, v289) >= 2.0)
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v279 == ++v282)
    {
      v279 = objc_msgSend_countByEnumeratingWithState_objects_count_(v466, v276, &v475, buf, 16);
      if (v279)
      {
        goto LABEL_36;
      }

      goto LABEL_47;
    }
  }

  v335 = objc_msgSend_timestamp(v283, v276, v277, v278);
  objc_msgSend_timeIntervalSinceReferenceDate(v335, v336, v337, v338);
  v340 = v339;
  v344 = objc_msgSend_timestamp(v280, v341, v342, v343);
  objc_msgSend_timeIntervalSinceReferenceDate(v344, v345, v346, v347);
  v349 = v348;
  objc_msgSend_speed(v283, v350, v351, v352);
  v354 = v353;
  objc_msgSend_speed(v280, v355, v356, v357);
  v359 = v358;
  if (!objc_msgSend_count(a3, v360, v361, v362))
  {
    return 1;
  }

  v365 = 0;
  while (1)
  {
    v366 = objc_msgSend_objectAtIndexedSubscript_(a3, v363, v365, v364);
    v370 = objc_msgSend_timestamp(v366, v367, v368, v369);
    objc_msgSend_timeIntervalSinceReferenceDate(v370, v371, v372, v373);
    if (v377 >= v340)
    {
      v378 = objc_msgSend_objectAtIndexedSubscript_(a3, v374, v365, v376);
      v382 = objc_msgSend_timestamp(v378, v379, v380, v381);
      objc_msgSend_timeIntervalSinceReferenceDate(v382, v383, v384, v385);
      if (v386 <= v349)
      {
        break;
      }
    }

    ++v365;
    v387 = objc_msgSend_count(a3, v374, v375, v376);
    result = 1;
    if (v387 <= v365)
    {
      return result;
    }
  }

  v442 = objc_msgSend_objectAtIndexedSubscript_(a3, v374, v365, v376);
  objc_msgSend_deltaSpeed_mps(v442, v443, v444, v445);
  if (v354 < v359 != v446 <= 0.0)
  {
    return 1;
  }

LABEL_143:
  if (!objc_msgSend_count(a3, v398, v399, v400))
  {
    return 1;
  }

  v449 = 0;
  do
  {
    v450 = objc_msgSend_objectAtIndexedSubscript_(a3, v447, v449, v448);
    objc_msgSend_deltaSpeed_mps(v450, v451, v452, v453);
    v455 = -v454;
    v458 = objc_msgSend_objectAtIndexedSubscript_(a3, v456, v449, v457);
    objc_msgSend_setDeltaSpeed_mps_(v458, v459, v460, v461, v455);
    ++v449;
    v465 = objc_msgSend_count(a3, v462, v463, v464);
    result = 1;
  }

  while (v465 > v449);
  return result;
}

uint64_t sub_19BA57A90(uint64_t a1, void *a2, void *a3, unsigned int a4, unint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v225 = *MEMORY[0x1E69E9840];
  v202[0] = 0xBFF0000000000000;
  v202[1] = 0;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(a6, v15, v16, v17))
  {
    v21 = 0;
    do
    {
      if (sub_19B99F5B0(v202, a6, v21, 1, 1.5, 45.0, 25.0))
      {
        v25 = objc_msgSend_objectAtIndexedSubscript_(a6, v22, v21, v24);
        objc_msgSend_addObject_(v14, v26, v25, v27);
      }

      ++v21;
    }

    while (objc_msgSend_count(a6, v22, v23, v24) > v21);
  }

  if (!objc_msgSend_count(v14, v18, v19, v20))
  {
    return 0;
  }

  v30 = objc_msgSend_objectAtIndexedSubscript_(v14, v28, 0, v29);
  v193 = objc_msgSend_timestamp(v30, v31, v32, v33);
  if (a8 && v14)
  {
    objc_msgSend_removeAllObjects(a8, v34, v35, v36);
    objc_msgSend_addObjectsFromArray_(a8, v37, v14, v38);
  }

  if (!objc_msgSend_runInertialIntegrator(a2, v34, v35, v36))
  {
    goto LABEL_42;
  }

  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!objc_msgSend_count(a7, v42, v43, v44))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v52 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v56 = objc_msgSend_UUIDString(a3, v53, v54, v55);
      v60 = objc_msgSend_UTF8String(v56, v57, v58, v59);
      *buf = 136446210;
      *&v206 = v60;
      _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLTSP,II,inertial integrator failed as there is no inertial data available,%{public}s", buf, 0xCu);
    }

    v61 = sub_19B87DD40();
    if (*(v61 + 160) <= 1 && *(v61 + 164) <= 1 && *(v61 + 168) <= 1 && !*(v61 + 152))
    {
      goto LABEL_42;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v65 = qword_1EAFE46E8;
    v66 = objc_msgSend_UUIDString(a3, v62, v63, v64);
    v70 = objc_msgSend_UTF8String(v66, v67, v68, v69);
    v215 = 136446210;
    *&v216 = v70;
    v71 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v65, 2, "CLTSP,II,inertial integrator failed as there is no inertial data available,%{public}s", &v215, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::runInertialIntegrator(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v71);
    goto LABEL_40;
  }

  objc_msgSend_removeAllObjects(v41, v45, v46, v47);
  LOBYTE(v203) = 0;
  if (!sub_19B8F5DAC(&v203, a3, a4, a5, v14, a7, v41))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v72 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v76 = objc_msgSend_count(v41, v73, v74, v75);
      v80 = objc_msgSend_UUIDString(a3, v77, v78, v79);
      v84 = objc_msgSend_UTF8String(v80, v81, v82, v83);
      *buf = 67240450;
      LODWORD(v206) = v76;
      WORD2(v206) = 2082;
      *(&v206 + 6) = v84;
      _os_log_impl(&dword_19B873000, v72, OS_LOG_TYPE_DEBUG, "CLTSP,II,inertial integrator failed to compute locations,count,%{public}d,tripSegmentID,%{public}s,fallback to input location array", buf, 0x12u);
    }

    v85 = sub_19B87DD40();
    if (*(v85 + 160) <= 1 && *(v85 + 164) <= 1 && *(v85 + 168) <= 1 && !*(v85 + 152))
    {
      goto LABEL_42;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v89 = qword_1EAFE46E8;
    v90 = objc_msgSend_count(v41, v86, v87, v88);
    v94 = objc_msgSend_UUIDString(a3, v91, v92, v93);
    v98 = objc_msgSend_UTF8String(v94, v95, v96, v97);
    v215 = 67240450;
    LODWORD(v216) = v90;
    WORD2(v216) = 2082;
    *(&v216 + 6) = v98;
    v71 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v89, 2, "CLTSP,II,inertial integrator failed to compute locations,count,%{public}d,tripSegmentID,%{public}s,fallback to input location array", &v215, 18);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::runInertialIntegrator(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v71);
LABEL_40:
    if (v71 != buf)
    {
      free(v71);
    }

LABEL_42:
    v194 = 0;
    goto LABEL_43;
  }

  sub_19B98FD58(a1 + 40, v41, v193, 1);
  v49 = a8 == 0;
  if (!v41)
  {
    v49 = 1;
  }

  if (!v49)
  {
    objc_msgSend_removeAllObjects(a8, v48, v39, v40);
    objc_msgSend_addObjectsFromArray_(a8, v50, v41, v51);
  }

  v194 = 1;
LABEL_43:
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B9EDDA0(qword_1EAFE5B10, a3, v39, v40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v102 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after runInertialIntegrator", buf, 2u);
    }

    v103 = sub_19B87DD40();
    if (*(v103 + 160) <= 1 && *(v103 + 164) <= 1 && *(v103 + 168) <= 1 && !*(v103 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(v215) = 0;
    v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after runInertialIntegrator", &v215, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processVehicularData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v104);
LABEL_57:
    if (v104 != buf)
    {
      free(v104);
    }

    return 0;
  }

  if (!objc_msgSend_runLinearInterpolator(a2, v99, v100, v101))
  {
    v159 = 0;
    v116 = a8;
    goto LABEL_95;
  }

  if (!objc_msgSend_count(v14, v107, v108, v109))
  {
    goto LABEL_75;
  }

  v116 = v14;
  if (objc_msgSend_count(a8, v110, v111, v112))
  {
    Object = objc_msgSend_firstObject(a8, v113, v114, v115);
    v121 = objc_msgSend_timestamp(Object, v118, v119, v120);
    objc_msgSend_timeIntervalSinceReferenceDate(v121, v122, v123, v124);
    v126 = v125;
    v130 = objc_msgSend_lastObject(a8, v127, v128, v129);
    v134 = objc_msgSend_timestamp(v130, v131, v132, v133);
    objc_msgSend_timeIntervalSinceReferenceDate(v134, v135, v136, v137);
    v139 = v138;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v140, &v198, v204, 16);
    if (v144)
    {
      v145 = 0;
      v146 = v126 + -0.5;
      v147 = v139 + 0.5;
      v148 = *v199;
      do
      {
        for (i = 0; i != v144; ++i)
        {
          if (*v199 != v148)
          {
            objc_enumerationMutation(v14);
          }

          v150 = *(*(&v198 + 1) + 8 * i);
          v151 = objc_msgSend_timestamp(v150, v141, v142, v143);
          objc_msgSend_timeIntervalSinceReferenceDate(v151, v152, v153, v154);
          if (v155 >= v146)
          {
            if (v155 > v147)
            {
              objc_msgSend_addObject_(a8, v141, v150, v143);
            }
          }

          else
          {
            objc_msgSend_insertObject_atIndex_(a8, v141, v150, v145++);
          }
        }

        v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v141, &v198, v204, 16);
      }

      while (v144);
    }

LABEL_75:
    v116 = a8;
  }

  v156 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v159 = sub_19BA59C3C(a2, a3, a4, a5, v116, v156);
  if (v159)
  {
    sub_19B98FD58(a1 + 40, v156, v193, 2);
    if (v116)
    {
      if (v156)
      {
        objc_msgSend_removeAllObjects(v116, v160, v157, v158);
        objc_msgSend_addObjectsFromArray_(v116, v161, v156, v162);
      }
    }
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B9EDDA0(qword_1EAFE5B10, a3, v157, v158))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v163 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v163, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after runLinearInterpolator", buf, 2u);
    }

    v164 = sub_19B87DD40();
    if (*(v164 + 160) <= 1 && *(v164 + 164) <= 1 && *(v164 + 168) <= 1 && !*(v164 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(v215) = 0;
    v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after runLinearInterpolator", &v215, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processVehicularData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v104);
    goto LABEL_57;
  }

LABEL_95:
  if (objc_msgSend_runMapIntegrator(a2, v107, v108, v109))
  {
    sub_19BA5BA90(a1, a2, a3, a5, a4, v14, v116, objc_alloc_init(MEMORY[0x1E695DF70]), a9);
  }

  v105 = v194 | v159;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v165 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    v169 = objc_msgSend_runLinearInterpolator(a2, v166, v167, v168);
    v173 = objc_msgSend_runInertialIntegrator(a2, v170, v171, v172);
    v177 = objc_msgSend_runMapIntegrator(a2, v174, v175, v176);
    *buf = 67241728;
    LODWORD(v206) = v194 | v159;
    WORD2(v206) = 1026;
    *(&v206 + 6) = v169;
    WORD5(v206) = 1026;
    HIDWORD(v206) = v173;
    v207 = 1026;
    v208 = v177;
    v209 = 1026;
    v210 = v159;
    v211 = 1026;
    v212 = v194;
    v213 = 1026;
    v214 = 0;
    _os_log_impl(&dword_19B873000, v165, OS_LOG_TYPE_INFO, "CLTSP,processVehicularData,success,%{public}d,liEnabled,%{public}d,iiEnabled,%{public}d,miEnabled,%{public}d,liSuccess,%{public}d,iiSuccess,%{public}d,miSuccess,%{public}d", buf, 0x2Cu);
  }

  v178 = sub_19B87DD40();
  if (*(v178 + 160) > 1 || *(v178 + 164) > 1 || *(v178 + 168) > 1 || *(v178 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v182 = qword_1EAFE46E8;
    v183 = objc_msgSend_runLinearInterpolator(a2, v179, v180, v181);
    v187 = objc_msgSend_runInertialIntegrator(a2, v184, v185, v186);
    v191 = objc_msgSend_runMapIntegrator(a2, v188, v189, v190);
    v215 = 67241728;
    LODWORD(v216) = v194 | v159;
    WORD2(v216) = 1026;
    *(&v216 + 6) = v183;
    WORD5(v216) = 1026;
    HIDWORD(v216) = v187;
    v217 = 1026;
    v218 = v191;
    v219 = 1026;
    v220 = v159;
    v221 = 1026;
    v222 = v194;
    v223 = 1026;
    v224 = 0;
    v192 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v182, 1, "CLTSP,processVehicularData,success,%{public}d,liEnabled,%{public}d,iiEnabled,%{public}d,miEnabled,%{public}d,liSuccess,%{public}d,iiSuccess,%{public}d,miSuccess,%{public}d", &v215, 44);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processVehicularData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v192);
    if (v192 != buf)
    {
      free(v192);
    }
  }

  return v105;
}

uint64_t sub_19BA58B88(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v13 = a4;
  v257 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_count(a6, a2, a3, a4))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v99 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_ERROR, "CLTSP,processPedestrianData,empty tripLocations", buf, 2u);
    }

    v100 = sub_19B87DD40();
    if ((*(v100 + 160) & 0x80000000) != 0 && (*(v100 + 164) & 0x80000000) != 0 && (*(v100 + 168) & 0x80000000) != 0 && !*(v100 + 152))
    {
      goto LABEL_115;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v209) = 0;
    v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,processPedestrianData,empty tripLocations", &v209, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v101);
    goto LABEL_113;
  }

  v196 = a5;
  v197 = v13;
  v198 = a1;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, v17, &v205, v217, 16);
  if (v21)
  {
    v22 = *v206;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v206 != v22)
        {
          objc_enumerationMutation(a6);
        }

        v24 = *(*(&v205 + 1) + 8 * i);
        if (objc_msgSend_useNonGNSSFixesForRouteReconstruction(a2, v18, v19, v20) & 1) != 0 || (objc_msgSend_isGPSLocationType(v24, v25, v26, v27))
        {
          if (!objc_msgSend_runLocationOutlierRejector(a2, v25, v26, v27) || (objc_msgSend_horizontalAccuracy(v24, v18, v28, v20), v29 >= 0.0) && (objc_msgSend_horizontalAccuracy(v24, v18, v19, v20), v30 <= 100.0))
          {
            objc_msgSend_addObject_(v16, v18, v24, v20);
          }
        }

        else
        {
          objc_msgSend_isWiFiLocationType(v24, v25, v26, v27);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, v18, &v205, v217, 16);
    }

    while (v21);
  }

  if (!objc_msgSend_count(v16, v18, v19, v20))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v102 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_ERROR, "CLTSP,processPedestrianData,GPS crumbs not available", buf, 2u);
    }

    v103 = sub_19B87DD40();
    if ((*(v103 + 160) & 0x80000000) != 0 && (*(v103 + 164) & 0x80000000) != 0 && (*(v103 + 168) & 0x80000000) != 0 && !*(v103 + 152))
    {
      goto LABEL_115;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v209) = 0;
    v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,processPedestrianData,GPS crumbs not available", &v209, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v101);
    goto LABEL_113;
  }

  v33 = objc_msgSend_objectAtIndexedSubscript_(v16, v31, 0, v32);
  v195 = objc_msgSend_timestamp(v33, v34, v35, v36);
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v204 = -1.0;
  if (!objc_msgSend_runInertialIntegrator(a2, v38, v39, v40))
  {
    v81 = 0;
    v98 = v16;
    if (!a8)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v210 = 0uLL;
  v209 = xmmword_19BA89490;
  v211 = 0x3FF0000000000000;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v215 = 0x3FE8000000000000;
  v216 = 240;
  if (objc_msgSend_windowSizeForLocationOutlierRejector(a2, v41, v42, v43) && objc_msgSend_stepSizeForLocationOutlierRejector(a2, v44, v45, v46))
  {
    v47 = objc_msgSend_windowSizeForLocationOutlierRejector(a2, v44, v45, v46);
    v216 = v47;
    v51 = objc_msgSend_stepSizeForLocationOutlierRejector(a2, v48, v49, v50);
    v52 = 1.0;
    if (v51 <= v47)
    {
      v53 = v216;
      v52 = (v53 / objc_msgSend_stepSizeForLocationOutlierRejector(a2, v44, v45, v46, 1.0));
    }

    v215 = *&v52;
  }

  v54 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v44, v45, v46);
  memset(v202, 0, sizeof(v202));
  v203 = 1065353216;
  memset(v200, 0, sizeof(v200));
  v201 = 1065353216;
  if (!objc_msgSend_runLocationOutlierRejector(a2, v55, v56, v57) || (isWatch = objc_msgSend_isWatch(a2, v58, v59, v60), (sub_19BA73D60(&v209, v16, a7, v54, v202, v200, isWatch) & 1) == 0))
  {
    objc_msgSend_removeAllIndexes(v54, v58, v59, v60);
    v65 = objc_msgSend_count(v16, v62, v63, v64);
    objc_msgSend_addIndexesInRange_(v54, v66, 0, v65);
    sub_19BA71388(v202);
    sub_19BA71388(v200);
  }

  *buf = 0;
  buf[2] = 1;
  *&v220[16] = 0u;
  *v220 = xmmword_19BA89490;
  v221 = 0x3FF0000000000000;
  v222 = 0u;
  v223 = 0;
  v224 = 0xBFF0000000000000;
  v225 = 0u;
  v226 = 0x100000000;
  __asm { FMOV            V1.2D, #-1.0 }

  v227 = _Q1;
  v228 = 0;
  v232 = 0;
  v233 = 0;
  v234 = 0;
  v238[32] = 0;
  v238[40] = 0;
  v238[48] = 0;
  v238[56] = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  memset(v238, 0, 26);
  v239 = 0x3FF0000000000000;
  v243 = 0;
  v244 = 0u;
  v240 = 0u;
  v241 = 0u;
  v242 = 0;
  v245 = 0;
  v246 = 0x10000000000000;
  v247 = 0u;
  v248 = 0;
  v249 = xmmword_19BA89490;
  v250 = 0u;
  v251 = 0x3FF0000000000000;
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v255 = 5;
  v256 = 1000;
  v72 = objc_msgSend_objectsAtIndexes_(v16, v58, v54, v60);
  v76 = objc_msgSend_runLocationOutlierRejector(a2, v73, v74, v75);
  v80 = objc_msgSend_enableUseWifiInPTS(a2, v77, v78, v79);
  v81 = sub_19B9D3938(buf, v72, a7, v37, &v204, v76, v80, v202, v200);
  if (v81)
  {
    sub_19B98FD58(v198 + 40, v37, v195, 1);
    if (objc_msgSend_count(v37, v82, v83, v84))
    {
      v87 = objc_msgSend_objectAtIndexedSubscript_(v37, v85, 0, v86);
      objc_msgSend_horizontalAccuracy(v87, v88, v89, v90);
      if (v93 == -1.0)
      {
        v94 = objc_msgSend_objectAtIndexedSubscript_(v37, v91, 0, v92);
        objc_msgSend_setHorizontalAccuracy_(v94, v95, v96, v97, 100.0);
      }
    }
  }

  if (*(&v253 + 1))
  {
    *&v254 = *(&v253 + 1);
    operator delete(*(&v253 + 1));
  }

  if (v252)
  {
    *(&v252 + 1) = v252;
    operator delete(v252);
  }

  if (v247)
  {
    *(&v247 + 1) = v247;
    operator delete(v247);
  }

  if (v229)
  {
    *(&v229 + 1) = v229;
    operator delete(v229);
  }

  sub_19B94FA90(v200);
  sub_19B94FA90(v202);
  if (v81)
  {
    v98 = v37;
  }

  else
  {
    v98 = v16;
  }

  if (a8)
  {
LABEL_64:
    if (v98)
    {
      objc_msgSend_removeAllObjects(a8, v41, v42, v43);
      objc_msgSend_addObjectsFromArray_(a8, v104, v98, v105);
    }
  }

LABEL_66:
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B9EDDA0(qword_1EAFE5B10, a3, v42, v43))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v109 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v109, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after PTS", buf, 2u);
    }

    v110 = sub_19B87DD40();
    if (*(v110 + 160) <= 1 && *(v110 + 164) <= 1 && *(v110 + 168) <= 1 && !*(v110 + 152))
    {
      goto LABEL_115;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(v209) = 0;
    v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after PTS", &v209, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v101);
LABEL_113:
    if (v101 != buf)
    {
      free(v101);
    }

LABEL_115:
    v127 = 0;
    return v127 & 1;
  }

  if (objc_msgSend_runLinearInterpolator(a2, v106, v107, v108) && (v114 = objc_alloc_init(MEMORY[0x1E695DF70]), sub_19BA59C3C(a2, a3, v197, v196, a8, v114)))
  {
    sub_19B98FD58(v198 + 40, v114, v195, 2);
    v115 = a8 == 0;
    if (!v114)
    {
      v115 = 1;
    }

    if (!v115)
    {
      objc_msgSend_removeAllObjects(a8, v111, v112, v113);
      objc_msgSend_addObjectsFromArray_(a8, v116, v114, v117);
    }

    v194 = 1;
  }

  else
  {
    v194 = 0;
  }

  if (!objc_msgSend_count(a8, v111, v112, v113))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v125 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      v219 = v194;
      *v220 = 1026;
      *&v220[2] = v81;
      _os_log_impl(&dword_19B873000, v125, OS_LOG_TYPE_ERROR, "CLTSP,processPedestrianData,empty reconstructed locations,liSuccess,%{public}d,iiSuccess,%{public}d", buf, 0xEu);
    }

    v126 = sub_19B87DD40();
    if ((*(v126 + 160) & 0x80000000) != 0 && (*(v126 + 164) & 0x80000000) != 0 && (*(v126 + 168) & 0x80000000) != 0 && !*(v126 + 152))
    {
      goto LABEL_115;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LODWORD(v209) = 67240448;
    DWORD1(v209) = v194;
    WORD4(v209) = 1026;
    *(&v209 + 10) = v81;
    v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,processPedestrianData,empty reconstructed locations,liSuccess,%{public}d,iiSuccess,%{public}d", &v209, 14);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v101);
    goto LABEL_113;
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if (sub_19B9EDDA0(qword_1EAFE5B10, a3, v118, v119))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v123 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v123, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after LI", buf, 2u);
    }

    v124 = sub_19B87DD40();
    if (*(v124 + 160) <= 1 && *(v124 + 164) <= 1 && *(v124 + 168) <= 1 && !*(v124 + 152))
    {
      goto LABEL_115;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(v209) = 0;
    v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,CLTripSegmentProcessor,processingTime exceeded max allowed,after LI", &v209, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v101);
    goto LABEL_113;
  }

  if (objc_msgSend_runMapIntegrator(a2, v120, v121, v122))
  {
    sub_19BA5BA90(v198, a2, a3, v196, v197, v16, a8, objc_alloc_init(MEMORY[0x1E695DF70]), a9);
  }

  if (v81)
  {
    LOBYTE(v132) = 1;
  }

  else
  {
    v132 = objc_msgSend_runInertialIntegrator(a2, v129, v130, v131) ^ 1;
  }

  if (v194)
  {
    LOBYTE(v133) = 1;
  }

  else
  {
    v133 = objc_msgSend_runLinearInterpolator(a2, v129, v130, v131) ^ 1;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v127 = v132 | v133;
  v134 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    v138 = objc_msgSend_runInertialIntegrator(a2, v135, v136, v137);
    v142 = objc_msgSend_runLinearInterpolator(a2, v139, v140, v141);
    v146 = objc_msgSend_runMapIntegrator(a2, v143, v144, v145);
    *buf = 67241728;
    v219 = v127 & 1;
    *v220 = 1026;
    *&v220[2] = v138;
    *&v220[6] = 1026;
    *&v220[8] = v142;
    *&v220[12] = 1026;
    *&v220[14] = v146;
    *&v220[18] = 1026;
    *&v220[20] = v194;
    *&v220[24] = 1026;
    *&v220[26] = v81;
    *&v220[30] = 1026;
    LODWORD(v221) = 0;
    _os_log_impl(&dword_19B873000, v134, OS_LOG_TYPE_INFO, "CLTSP,processPedestrianData,success,%{public}d,iiEnabled,%{public}d,liEnabled,%{public}d,miEnabled,%{public}d,liSuccess,%{public}d,iiSuccess,%{public}d,miSuccess,%{public}d", buf, 0x2Cu);
  }

  v147 = sub_19B87DD40();
  if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v154 = qword_1EAFE46E8;
    v155 = objc_msgSend_runInertialIntegrator(a2, v151, v152, v153);
    v159 = objc_msgSend_runLinearInterpolator(a2, v156, v157, v158);
    v163 = objc_msgSend_runMapIntegrator(a2, v160, v161, v162);
    LODWORD(v209) = 67241728;
    DWORD1(v209) = v127 & 1;
    WORD4(v209) = 1026;
    *(&v209 + 10) = v155;
    HIWORD(v209) = 1026;
    LODWORD(v210) = v159;
    WORD2(v210) = 1026;
    *(&v210 + 6) = v163;
    WORD5(v210) = 1026;
    HIDWORD(v210) = v194;
    LOWORD(v211) = 1026;
    *(&v211 + 2) = v81;
    HIWORD(v211) = 1026;
    LODWORD(v212) = 0;
    v164 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v154, 1, "CLTSP,processPedestrianData,success,%{public}d,iiEnabled,%{public}d,liEnabled,%{public}d,miEnabled,%{public}d,liSuccess,%{public}d,iiSuccess,%{public}d,miSuccess,%{public}d", &v209, 44);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::processPedestrianData(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v164);
    if (v164 != buf)
    {
      free(v164);
    }
  }

  if (objc_msgSend_count(a8, v148, v149, v150))
  {
    v167 = 0;
    while (1)
    {
      v168 = objc_msgSend_objectAtIndexedSubscript_(a8, v165, v167, v166);
      v172 = objc_msgSend_timestamp(v168, v169, v170, v171);
      objc_msgSend_timeIntervalSinceReferenceDate(v172, v173, v174, v175);
      if (v179 >= v204 + -0.5)
      {
        break;
      }

      if (++v167 >= objc_msgSend_count(a8, v176, v177, v178))
      {
        return v127 & 1;
      }
    }

    LODWORD(v180) = v167 - 1;
    if (v167 - 1 < 0 || (v180 = v180, objc_msgSend_count(a8, v176, v177, v178) - 1 < v180) || (v182 = objc_msgSend_objectAtIndexedSubscript_(a8, v176, v180, v181), !objc_msgSend_isMapMatched(v182, v183, v184, v185)))
    {
LABEL_151:
      v180 = v167;
      if (v167)
      {
LABEL_152:
        objc_msgSend_removeObjectsInRange_(a8, v176, 0, v180);
      }
    }

    else
    {
      while (v180 > 0)
      {
        v189 = v180 - 1;
        if (objc_msgSend_count(a8, v176, v186, v187) - 1 < (v180 - 1))
        {
          goto LABEL_152;
        }

        v190 = objc_msgSend_objectAtIndexedSubscript_(a8, v176, --v180, v188);
        if (!objc_msgSend_isMapMatched(v190, v191, v192, v193))
        {
          v167 = v189 + 1;
          goto LABEL_151;
        }
      }
    }
  }

  return v127 & 1;
}

void sub_19BA59C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  sub_19B94FA90(va);
  sub_19B94FA90(va1);
  _Unwind_Resume(a1);
}

BOOL sub_19BA59C3C(void *a1, char *a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v57 = *MEMORY[0x1E69E9840];
  objc_msgSend_removeAllObjects(a6, a2, a3, a4);
  v47 = 0;
  v48 = 0;
  v46 = xmmword_19BA89490;
  v49 = 0x3FF0000000000000;
  objc_msgSend_timeBetweenReconstructedPointsSeconds(a1, v12, v13, v14);
  v16 = sub_19B9E0A5C(v15, &v46, a2, v9, a4, a5, a6);
  if (!v16)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v17 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_msgSend_count(a6, v18, v19, v20);
      v25 = objc_msgSend_UUIDString(a2, v22, v23, v24);
      v29 = objc_msgSend_UTF8String(v25, v26, v27, v28);
      *buf = 67240450;
      v54 = v21;
      v55 = 2082;
      v56 = v29;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLTSP,LI,linear interpolator failed to compute locations,count,%{public}d,tripSegmentID,%{public}s,fallback to location array before interpolation", buf, 0x12u);
    }

    v30 = sub_19B87DD40();
    if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v34 = qword_1EAFE46E8;
      v35 = objc_msgSend_count(a6, v31, v32, v33);
      v39 = objc_msgSend_UUIDString(a2, v36, v37, v38);
      v43 = objc_msgSend_UTF8String(v39, v40, v41, v42);
      v50[0] = 67240450;
      v50[1] = v35;
      v51 = 2082;
      v52 = v43;
      v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v34, 2, "CLTSP,LI,linear interpolator failed to compute locations,count,%{public}d,tripSegmentID,%{public}s,fallback to location array before interpolation", v50, 18);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::runLinearInterpolator(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }
  }

  return v16;
}

double sub_19BA59EC0(void *a1, const char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v29, v33, 16);
  if (!v3)
  {
    return 0.0;
  }

  v7 = v3;
  v8 = 0;
  v9 = *v30;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      v12 = v8;
      if (*v30 != v9)
      {
        objc_enumerationMutation(a1);
      }

      v8 = *(*(&v29 + 1) + 8 * i);
      if (v12)
      {
        if (v8)
        {
          objc_msgSend_latitude(v12, v4, v5, v6);
          v28 = v13;
          objc_msgSend_longitude(v12, v14, v15, v16);
          v27 = v17;
          if (sub_19B8FCE64(&v28, &v27))
          {
            objc_msgSend_latitude(v8, v4, v5, v6);
            v26 = v18;
            objc_msgSend_longitude(v8, v19, v20, v21);
            v25 = v22;
            if (sub_19B8FCE64(&v26, &v25))
            {
              objc_msgSend_distanceFromLocation_(v8, v4, v12, v6);
              v10 = v10 + v23;
            }
          }
        }
      }
    }

    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v4, &v29, v33, 16);
  }

  while (v7);
  return v10;
}

uint64_t sub_19BA5A02C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v123 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(a1, a2, a3, a4))
  {
    v115 = 0;
    v116 = 0;
    v117 = 0x3FF0000000000000;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = xmmword_19BA89490;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v6, &v110, v120, 16);
    if (!v7)
    {
      goto LABEL_23;
    }

    v12 = v7;
    v13 = *v111;
    v14 = -1;
LABEL_4:
    v15 = 0;
    while (1)
    {
      if (*v111 != v13)
      {
        objc_enumerationMutation(a2);
      }

      v16 = *(*(&v110 + 1) + 8 * v15);
      if (v16)
      {
        if (objc_msgSend_referenceFrame(*(*(&v110 + 1) + 8 * v15), v8, v9, v10) != 1)
        {
          break;
        }
      }

LABEL_21:
      if (++v15 == v12)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v8, &v110, v120, 16);
        if (!v12)
        {
LABEL_23:
          v93 = 1;
          goto LABEL_75;
        }

        goto LABEL_4;
      }
    }

    v17 = objc_msgSend_timestamp(v16, v8, v9, v10);
    objc_msgSend_timeIntervalSinceReferenceDate(v17, v18, v19, v20);
    v25 = v24;
    for (i = v14 & ~(v14 >> 31); objc_msgSend_count(a1, v21, v22, v23) > i; ++i)
    {
      if (objc_msgSend_objectAtIndexedSubscript_(a1, v21, i, v23))
      {
        if ((v14 & 0x80000000) == 0)
        {
          v27 = objc_msgSend_objectAtIndexedSubscript_(a1, v21, i, v23);
          v31 = objc_msgSend_timestamp(v27, v28, v29, v30);
          objc_msgSend_timeIntervalSinceReferenceDate(v31, v32, v33, v34);
          if (v35 > v25)
          {
            goto LABEL_18;
          }
        }

        v36 = objc_msgSend_objectAtIndexedSubscript_(a1, v21, i, v23);
        if (objc_msgSend_rawReferenceFrame(v36, v37, v38, v39) == 1)
        {
          v14 = i;
        }
      }
    }

    if (v14 != -1)
    {
LABEL_18:
      v40 = objc_msgSend_objectAtIndexedSubscript_(a1, v21, v14, v23);
      if (v40)
      {
        v44 = v40;
        objc_msgSend_latitude(v16, v41, v42, v43);
        v109 = v45;
        objc_msgSend_longitude(v16, v46, v47, v48);
        v108 = v49;
        objc_msgSend_rawLatitude(v44, v50, v51, v52);
        v54 = v53;
        objc_msgSend_rawLongitude(v44, v55, v56, v57);
        v59 = v58;
        objc_msgSend_latitude(v44, v60, v61, v62);
        v64 = v63;
        objc_msgSend_longitude(v44, v65, v66, v67);
        v69 = v68;
        objc_msgSend_latitude(v16, v70, v71, v72);
        v74 = v73;
        objc_msgSend_longitude(v16, v75, v76, v77);
        sub_19B949720(&v114, &v109, &v108, v54, v59, v64, v69, v74, v78);
        if (v82)
        {
          v84 = v108;
          v83 = v109;
          objc_msgSend_horizontalAccuracy(v16, v79, v80, v81);
          v86 = v85;
          v90 = objc_msgSend_rawReferenceFrame(v44, v87, v88, v89);
          objc_msgSend_updateLatitude_longitude_horizontalAccuracy_referenceFrame_(v16, v91, v90, v92, v83, v84, v86);
          goto LABEL_21;
        }

        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v101 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v122 = v25;
          _os_log_impl(&dword_19B873000, v101, OS_LOG_TYPE_ERROR, "CLTSP,getCorrectedCoordinates,corrected computation failed for time,%{public}.1lf", buf, 0xCu);
        }

        v102 = sub_19B87DD40();
        if ((*(v102 + 160) & 0x80000000) != 0 && (*(v102 + 164) & 0x80000000) != 0 && (*(v102 + 168) & 0x80000000) != 0 && !*(v102 + 152))
        {
          goto LABEL_59;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v118 = 134349056;
        v119 = v25;
        v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getCorrectedCoordinates,corrected computation failed for time,%{public}.1lf", &v118, 12);
      }

      else
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v98 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v122 = v25;
          _os_log_impl(&dword_19B873000, v98, OS_LOG_TYPE_ERROR, "CLTSP,getCorrectedCoordinates,tripLoc is nil,%{public}.1lf", buf, 0xCu);
        }

        v99 = sub_19B87DD40();
        if ((*(v99 + 160) & 0x80000000) != 0 && (*(v99 + 164) & 0x80000000) != 0 && (*(v99 + 168) & 0x80000000) != 0)
        {
          v93 = *(v99 + 152);
          if (!v93)
          {
            goto LABEL_60;
          }
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v118 = 134349056;
        v119 = v25;
        v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getCorrectedCoordinates,tripLoc is nil,%{public}.1lf", &v118, 12);
      }

      v103 = v100;
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLTripSegmentUtilities::getCorrectedCoordinates(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v100);
      if (v103 != buf)
      {
        free(v103);
      }

LABEL_59:
      v93 = 0;
LABEL_60:
      v11 = 0;
      goto LABEL_75;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v104 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v122 = v25;
      _os_log_impl(&dword_19B873000, v104, OS_LOG_TYPE_INFO, "CLTSP,getCorrectedCoordinates,raw coordinate not available,%{public}.1lf", buf, 0xCu);
    }

    v105 = sub_19B87DD40();
    if (*(v105 + 160) > 1 || *(v105 + 164) > 1 || *(v105 + 168) > 1 || (v93 = *(v105 + 152)) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v118 = 134349056;
      v119 = v25;
      v106 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,getCorrectedCoordinates,raw coordinate not available,%{public}.1lf", &v118, 12);
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::getCorrectedCoordinates(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v106);
      if (v106 != buf)
      {
        free(v106);
      }

      v93 = 0;
    }

    v11 = 1;
LABEL_75:
    v96 = v93 | v11;
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v94 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_INFO, "CLTSP,getCorrectedCoordinates,empty locations", buf, 2u);
    }

    v95 = sub_19B87DD40();
    if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || (v96 = *(v95 + 152)) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v114) = 0;
      v97 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,getCorrectedCoordinates,empty locations", &v114, 2);
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::getCorrectedCoordinates(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v97);
      if (v97 != buf)
      {
        free(v97);
      }

      v96 = 0;
    }
  }

  return v96 & 1;
}

double sub_19BA5A7F4(uint64_t a1, uint64_t ***a2)
{
  std::mutex::lock(a1);
  v4 = -1.0;
  if (sub_19B95D1AC(a1, a2))
  {
    v9 = a2;
    v5 = sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, &v9, &v8)[7];
    v4 = 0.0;
    if (*(v5 + 40) >= 0.0)
    {
      v6 = mach_continuous_time();
      v4 = vabdd_f64(sub_19B994BF4(v6), *(v5 + 40)) * 1000.0;
    }
  }

  std::mutex::unlock(a1);
  return v4;
}

void sub_19BA5A8B0()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v305 = *MEMORY[0x1E69E9840];
  sub_19B87BBB4();
  if (sub_19B93CCA4() && (objc_msgSend_isSimulatedSparseProcessing(v5, v6, v7, v8) & 1) == 0 && objc_msgSend_createSparseDataFromOneHzData(v5, v9, v10, v11) && objc_msgSend_modeOfTransport(v4, v12, v13, v14) == 1)
  {
    v272 = xmmword_19BA8D9D0;
    v273 = 0x4014000000000000;
    v274 = 6;
    v275 = xmmword_19BA8D9E0;
    v276 = xmmword_19BA8D9F0;
    v277 = xmmword_19BA8DA00;
    v278 = 0x40A4DBA81D58E98ELL;
    v279 = 0x500000001;
    v280 = xmmword_19BA8DA10;
    v281 = xmmword_19BA8DA20;
    v282 = 0x3EE2DC32341A0960;
    v283 = 0u;
    v284 = 0u;
    v286 = 0u;
    v287 = 0u;
    v285 = 0;
    v288 = 0;
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    v18 = qword_1EAFE5B10;
    v19 = objc_msgSend_tripSegmentID(v4, v15, v16, v17);
    sub_19B9EDE20(v18, v19, v20, v21, &v270);
    v22 = v270;
    if (!v270)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v40 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v44 = objc_msgSend_tripSegmentID(v4, v41, v42, v43);
        v48 = objc_msgSend_UUIDString(v44, v45, v46, v47);
        v52 = objc_msgSend_UTF8String(v48, v49, v50, v51);
        sub_19B8759E8(buf, v52);
        v53 = buf[5] >= 0 ? buf : *buf;
        *v293 = 136446210;
        *&v293[4] = v53;
        _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s is not in CLTripSegmentSharedData", v293, 0xCu);
        if (SHIBYTE(buf[5]) < 0)
        {
          operator delete(*buf);
        }
      }

      v54 = sub_19B87DD40();
      if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v58 = qword_1EAFE46E8;
        v59 = objc_msgSend_tripSegmentID(v4, v55, v56, v57);
        v63 = objc_msgSend_UUIDString(v59, v60, v61, v62);
        v67 = objc_msgSend_UTF8String(v63, v64, v65, v66);
        sub_19B8759E8(v293, v67);
        if (v294[9] >= 0)
        {
          v68 = v293;
        }

        else
        {
          v68 = *v293;
        }

        *v301 = 136446210;
        *&v301[4] = v68;
        v69 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v58, 0, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s is not in CLTripSegmentSharedData", v301, 12);
        if ((v294[9] & 0x80000000) != 0)
        {
          operator delete(*v293);
        }

        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v69);
        if (v69 != buf)
        {
          free(v69);
        }
      }

      goto LABEL_128;
    }

    *(v270 + 304) = -1;
    v23 = *(v22 + 40);
    if (v23 < 1)
    {
      goto LABEL_128;
    }

    v24 = *(v22 + 552) * 100.0;
    v25 = v23;
    if (qword_1EAFE46B8 != -1)
    {
      v262 = v23;
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      v25 = v262;
    }

    v26 = qword_1EAFE46E8;
    v27 = v24 / v25;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v28 = *(v270 + 40);
      v29 = *(v270 + 552);
      buf[0] = 67240704;
      buf[1] = v28;
      LOWORD(buf[2]) = 1026;
      *(&buf[2] + 2) = v29;
      HIWORD(buf[3]) = 2050;
      *&buf[4] = v27;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_INFO, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,1,duration,%{public}d,numberOfGPSLocations,%{public}d,gpsPercentage,%{public}.2lf", buf, 0x18u);
    }

    v30 = sub_19B87DD40();
    if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v34 = *(v270 + 40);
      v35 = *(v270 + 552);
      *v293 = 67240704;
      *&v293[4] = v34;
      *&v293[8] = 1026;
      *&v293[10] = v35;
      *v294 = 2050;
      *&v294[2] = v27;
      v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,1,duration,%{public}d,numberOfGPSLocations,%{public}d,gpsPercentage,%{public}.2lf", v293, 24);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    if (v27 < 75.0)
    {
LABEL_128:
      if (v271)
      {
        sub_19B8750F8(v271);
      }

      return;
    }

    v37 = *(v270 + 40);
    v38 = *(v270 + 288);
    if (v38 == 1)
    {
      isFinalPart = 1;
    }

    else if (v38 == 2)
    {
      isFinalPart = objc_msgSend_isFinalPart(v4, v31, v32, v33);
    }

    else
    {
      isFinalPart = 0;
    }

    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    v70 = qword_1EAFE5B10;
    v71 = objc_msgSend_tripSegmentID(v4, v31, v32, v33);
    sub_19BA5DBE4(&v268, v70, v71, v72);
    v73 = v268;
    if (((v37 < 1800) & isFinalPart) != 0)
    {
      if (!v268 || *v268 <= 0)
      {
        if (*(v270 + 288) >= 2)
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v74 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
          {
            v78 = objc_msgSend_tripSegmentID(v4, v75, v76, v77);
            v82 = objc_msgSend_UUIDString(v78, v79, v80, v81);
            v86 = objc_msgSend_UTF8String(v82, v83, v84, v85);
            sub_19B8759E8(v293, v86);
            v87 = v294[9] >= 0 ? v293 : *v293;
            v88 = *(v270 + 40);
            v89 = *(v270 + 288);
            buf[0] = 136446722;
            *&buf[1] = v87;
            LOWORD(buf[3]) = 1026;
            *(&buf[3] + 2) = v88;
            HIWORD(buf[4]) = 1026;
            buf[5] = v89;
            _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s,chunk of previously skipped trip,duration,%{public}d,chunks,%{public}d", buf, 0x18u);
            if ((v294[9] & 0x80000000) != 0)
            {
              operator delete(*v293);
            }
          }

          v90 = sub_19B87DD40();
          if (*(v90 + 160) <= 1 && *(v90 + 164) <= 1 && *(v90 + 168) <= 1 && !*(v90 + 152))
          {
            goto LABEL_126;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v94 = qword_1EAFE46E8;
          v95 = objc_msgSend_tripSegmentID(v4, v91, v92, v93);
          v99 = objc_msgSend_UUIDString(v95, v96, v97, v98);
          v103 = objc_msgSend_UTF8String(v99, v100, v101, v102);
          sub_19B8759E8(v301, v103);
          if (v304 >= 0)
          {
            v104 = v301;
          }

          else
          {
            v104 = *v301;
          }

          v105 = *(v270 + 40);
          v106 = *(v270 + 288);
          *v293 = 136446722;
          *&v293[4] = v104;
          *&v293[12] = 1026;
          *v294 = v105;
          *&v294[4] = 1026;
          *&v294[6] = v106;
          v107 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v94, 0, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s,chunk of previously skipped trip,duration,%{public}d,chunks,%{public}d", v293, 24);
          if (v304 < 0)
          {
            operator delete(*v301);
          }

          goto LABEL_93;
        }

        sub_19BA32500(v293);
        v142 = MEMORY[0x19EAE97B0](v293);
        buf[0] = v142;
        for (i = 1; i != 624; ++i)
        {
          v142 = i + 1812433253 * (v142 ^ (v142 >> 30));
          buf[i] = v142;
        }

        v300 = 0;
        std::random_device::~random_device(v293);
        v267 = 0xA00000001;
        v144 = sub_19BA714F0(buf, &v267);
        if (v144 != 1)
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v233 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
          {
            v237 = objc_msgSend_tripSegmentID(v4, v234, v235, v236);
            v241 = objc_msgSend_UUIDString(v237, v238, v239, v240);
            v245 = objc_msgSend_UTF8String(v241, v242, v243, v244);
            sub_19B8759E8(v293, v245);
            v246 = v294[9] >= 0 ? v293 : *v293;
            *v301 = 136446466;
            *&v301[4] = v246;
            v302 = 1026;
            v303 = v144;
            _os_log_impl(&dword_19B873000, v233, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s,processing rate limited,generatedNumber,%{public}d", v301, 0x12u);
            if ((v294[9] & 0x80000000) != 0)
            {
              operator delete(*v293);
            }
          }

          v247 = sub_19B87DD40();
          if (*(v247 + 160) <= 1 && *(v247 + 164) <= 1 && *(v247 + 168) <= 1 && !*(v247 + 152))
          {
            goto LABEL_126;
          }

          bzero(v293, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v251 = qword_1EAFE46E8;
          v252 = objc_msgSend_tripSegmentID(v4, v248, v249, v250);
          v256 = objc_msgSend_UUIDString(v252, v253, v254, v255);
          v260 = objc_msgSend_UTF8String(v256, v257, v258, v259);
          sub_19B8759E8(v301, v260);
          if (v304 >= 0)
          {
            v261 = v301;
          }

          else
          {
            v261 = *v301;
          }

          v289 = 136446466;
          v290 = v261;
          v291 = 1026;
          v292 = v144;
          v107 = _os_log_send_and_compose_impl(2, 0, v293, 1628, &dword_19B873000, v251, 0, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s,processing rate limited,generatedNumber,%{public}d", &v289, 18);
          if (v304 < 0)
          {
            operator delete(*v301);
          }

          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v107);
          v141 = v293;
          goto LABEL_94;
        }
      }

      v263[0] = MEMORY[0x1E69E9820];
      v263[1] = 3321888768;
      v263[2] = sub_19BA5DEE4;
      v263[3] = &unk_1F0E6EF10;
      v263[6] = v73;
      v264 = v269;
      if (v269)
      {
        atomic_fetch_add_explicit(&v269->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v263[4] = v4;
      v263[5] = v2;
      v265 = v270;
      v266 = v271;
      if (v271)
      {
        atomic_fetch_add_explicit(&v271->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v145 = objc_autoreleasePoolPush();
      v149 = objc_msgSend_copy(v5, v146, v147, v148);
      objc_msgSend_setSimulatedSparseProcessing_(v149, v150, 1, v151);
      objc_msgSend_setCreateSparseDataFromOneHzData_(v149, v152, 0, v153);
      v157 = objc_msgSend_tripSegmentID(v4, v154, v155, v156);
      v161 = objc_msgSend_UUIDString(v157, v158, v159, v160);
      v164 = objc_msgSend_componentsSeparatedByString_(v161, v162, @"-", v163);
      v168 = objc_msgSend_mutableCopy(v164, v165, v166, v167);
      if (objc_msgSend_count(v168, v169, v170, v171) < 3)
      {
        v194 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      }

      else
      {
        v174 = objc_msgSend_objectAtIndexedSubscript_(v168, v172, 1, v173);
        if (objc_msgSend_length(v174, v175, v176, v177) == 4)
        {
          v180 = objc_msgSend_objectAtIndexedSubscript_(v168, v178, 1, v179);
          v183 = objc_msgSend_substringFromIndex_(v180, v181, 2, v182);
          v186 = objc_msgSend_stringByAppendingString_(@"00", v184, v183, v185);
          objc_msgSend_setObject_atIndexedSubscript_(v168, v187, v186, 1);
        }

        v188 = objc_alloc(MEMORY[0x1E696AFB0]);
        v191 = objc_msgSend_componentsJoinedByString_(v168, v189, @"-", v190);
        v194 = objc_msgSend_initWithUUIDString_(v188, v192, v191, v193);
      }

      v195 = v194;
      *v293 = objc_msgSend_array(MEMORY[0x1E695DF70], v196, v197, v198);
      v202 = objc_msgSend_tripLocations(v4, v199, v200, v201);
      sub_19BA31B74(&v272, v202, v293, 1);
      if (objc_msgSend_count(*v293, v203, v204, v205))
      {
        v206 = [CLTripSegmentInputData alloc];
        v210 = objc_msgSend_isFinalPart(v4, v207, v208, v209);
        v214 = objc_msgSend_modeOfTransport(v4, v211, v212, v213);
        v215 = *v293;
        started = objc_msgSend_startTripLocation(v4, v216, v217, v218);
        v223 = objc_msgSend_stopTripLocation(v4, v220, v221, v222);
        v227 = objc_msgSend_inertialOdometryData(v4, v224, v225, v226);
        v229 = objc_msgSend_initWithTripSegmentID_isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialOdometryData_(v206, v228, v195, v210, v214, v215, started, v223, v227);
        v296 = 0;
        *&buf[4] = 0;
        *buf = xmmword_19BA89490;
        v297 = 0x3FF0000000000000;
        v298 = 1;
        v299 = @"/var/mobile/Library/Caches/com.apple.routined/tripSegments/";
        sub_19BA51D50(buf, v229, v149, v263);
      }

      else
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v230 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_19B873000, v230, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,zero crumbs simulated", buf, 2u);
        }

        v231 = sub_19B87DD40();
        if (*(v231 + 160) > 1 || *(v231 + 164) > 1 || *(v231 + 168) > 1 || *(v231 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          *v301 = 0;
          v232 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,zero crumbs simulated", v301, 2);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v232);
          if (v232 != buf)
          {
            free(v232);
          }
        }
      }

      objc_autoreleasePoolPop(v145);
      if (v266)
      {
        sub_19B8750F8(v266);
      }

      if (v264)
      {
        sub_19B8750F8(v264);
      }

      goto LABEL_126;
    }

    *(v268 + 80) = 0;
    v73[3] = 0u;
    v73[4] = 0u;
    v73[1] = 0u;
    v73[2] = 0u;
    *v73 = 0u;
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v108 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v112 = objc_msgSend_tripSegmentID(v4, v109, v110, v111);
      v116 = objc_msgSend_UUIDString(v112, v113, v114, v115);
      v120 = objc_msgSend_UTF8String(v116, v117, v118, v119);
      sub_19B8759E8(v293, v120);
      v121 = v294[9] >= 0 ? v293 : *v293;
      v122 = *(v270 + 40);
      v123 = *(v270 + 288);
      buf[0] = 136446722;
      *&buf[1] = v121;
      LOWORD(buf[3]) = 1026;
      *(&buf[3] + 2) = v122;
      HIWORD(buf[4]) = 1026;
      buf[5] = v123;
      _os_log_impl(&dword_19B873000, v108, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s,trip duration check failed,duration,%{public}d,chunkCount,%{public}d", buf, 0x18u);
      if ((v294[9] & 0x80000000) != 0)
      {
        operator delete(*v293);
      }
    }

    v124 = sub_19B87DD40();
    if (*(v124 + 160) <= 1 && *(v124 + 164) <= 1 && *(v124 + 168) <= 1 && !*(v124 + 152))
    {
      goto LABEL_126;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v128 = qword_1EAFE46E8;
    v129 = objc_msgSend_tripSegmentID(v4, v125, v126, v127);
    v133 = objc_msgSend_UUIDString(v129, v130, v131, v132);
    v137 = objc_msgSend_UTF8String(v133, v134, v135, v136);
    sub_19B8759E8(v301, v137);
    if (v304 >= 0)
    {
      v138 = v301;
    }

    else
    {
      v138 = *v301;
    }

    v139 = *(v270 + 40);
    v140 = *(v270 + 288);
    *v293 = 136446722;
    *&v293[4] = v138;
    *&v293[12] = 1026;
    *v294 = v139;
    *&v294[4] = 1026;
    *&v294[6] = v140;
    v107 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v128, 0, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s,trip duration check failed,duration,%{public}d,chunkCount,%{public}d", v293, 24);
    if (v304 < 0)
    {
      operator delete(*v301);
    }

LABEL_93:
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)", "CoreLocation: %s\n", v107);
    v141 = buf;
LABEL_94:
    if (v107 != v141)
    {
      free(v107);
    }

LABEL_126:
    if (v269)
    {
      sub_19B8750F8(v269);
    }

    goto LABEL_128;
  }
}

void sub_19BA5B9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::random_device a59)
{
  if (a24)
  {
    sub_19B8750F8(a24);
  }

  if (a26)
  {
    sub_19B8750F8(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA5BA90(uint64_t a1, char *a2, void *a3, uint64_t a4, int a5, void *a6, void *a7, void *a8, void *a9)
{
  v265 = *MEMORY[0x1E69E9840];
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, a2, &v229, &__p, 16);
  if (v13)
  {
    v14 = *v230;
    do
    {
      v15 = 0;
      do
      {
        if (*v230 != v14)
        {
          objc_enumerationMutation(a6);
        }

        v16 = *(*(&v229 + 1) + 8 * v15);
        if (objc_msgSend_isWiFiLocationType(v16, v10, v11, v12))
        {
          v227 = 0u;
          v228 = 0u;
          v225 = 0u;
          v226 = 0u;
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v10, &v225, &v245, 16);
          if (v17)
          {
            v18 = *v226;
            v19 = -1.0;
            v20 = -1.0;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v226 != v18)
                {
                  objc_enumerationMutation(a7);
                }

                v22 = *(*(&v225 + 1) + 8 * i);
                v23 = objc_msgSend_timestamp(v22, v10, v11, v12);
                v27 = objc_msgSend_timestamp(v16, v24, v25, v26);
                objc_msgSend_timeIntervalSinceDate_(v23, v28, v27, v29);
                v31 = fabs(v30);
                if (v20 < 0.0 || v31 < v20 && v19 >= 0.0)
                {
                  objc_msgSend_course(v22, v10, v11, v12);
                  v19 = v32;
                  objc_msgSend_courseAccuracy(v22, v33, v34, v35);
                  v20 = v31;
                }

                if (v20 == 0.0 || v20 > 0.0 && v31 > v20)
                {
                  if (v20 < 2.0 && v19 >= 0.0)
                  {
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
                    }

                    v36 = qword_1EAFE46E8;
                    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                    {
                      v40 = objc_msgSend_timestamp(v22, v37, v38, v39);
                      objc_msgSend_timeIntervalSinceReferenceDate(v40, v41, v42, v43);
                      v45 = v44;
                      objc_msgSend_latitude(v22, v46, v47, v48);
                      v50 = v49;
                      objc_msgSend_longitude(v22, v51, v52, v53);
                      v55 = v54;
                      objc_msgSend_horizontalAccuracy(v22, v56, v57, v58);
                      v60 = v59;
                      objc_msgSend_speed(v22, v61, v62, v63);
                      v65 = v64;
                      objc_msgSend_course(v22, v66, v67, v68);
                      LODWORD(buf.__r_.__value_.__l.__data_) = 134350593;
                      *(buf.__r_.__value_.__r.__words + 4) = v45;
                      WORD2(buf.__r_.__value_.__r.__words[1]) = 2053;
                      *(&buf.__r_.__value_.__r.__words[1] + 6) = v50;
                      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2053;
                      v256 = v55;
                      v257 = 2050;
                      v258 = v60;
                      v259 = 2050;
                      v260 = v65;
                      v261 = 2050;
                      v262 = v69;
                      v263 = 2050;
                      v264 = v19;
                      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLTSP,wifiCourseFromInertial,course updated using inertial,time,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.3lf,speed,%{public}.3lf,prevCourse,%{public}.3lf,newCourse,%{public}.3lf", &buf, 0x48u);
                    }

                    v70 = sub_19B87DD40();
                    if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
                    {
                      bzero(&buf, 0x65CuLL);
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
                      }

                      v77 = qword_1EAFE46E8;
                      v78 = objc_msgSend_timestamp(v22, v74, v75, v76);
                      objc_msgSend_timeIntervalSinceReferenceDate(v78, v79, v80, v81);
                      v83 = v82;
                      objc_msgSend_latitude(v22, v84, v85, v86);
                      v88 = v87;
                      objc_msgSend_longitude(v22, v89, v90, v91);
                      v93 = v92;
                      objc_msgSend_horizontalAccuracy(v22, v94, v95, v96);
                      v98 = v97;
                      objc_msgSend_speed(v22, v99, v100, v101);
                      v103 = v102;
                      objc_msgSend_course(v22, v104, v105, v106);
                      *v234 = 134350593;
                      *&v234[4] = v83;
                      *&v234[12] = 2053;
                      *&v234[14] = v88;
                      v235 = 2053;
                      v236 = v93;
                      v237 = 2050;
                      v238 = v98;
                      v239 = 2050;
                      v240 = v103;
                      v241 = 2050;
                      v242 = v107;
                      v243 = 2050;
                      v244 = v19;
                      v108 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, v77, 2, "CLTSP,wifiCourseFromInertial,course updated using inertial,time,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.3lf,speed,%{public}.3lf,prevCourse,%{public}.3lf,newCourse,%{public}.3lf", v234, 72);
                      sub_19B885924("Generic", 1, 0, 2, "static void CLTripSegmentUtilities::setCourseForWiFiLocationsUsingInertialReconstructedLocations(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v108);
                      if (v108 != &buf)
                      {
                        free(v108);
                      }
                    }

                    objc_msgSend_updateCourse_andCourseAccuracy_(v16, v71, v72, v73, v19, 10.0);
                  }

                  goto LABEL_37;
                }
              }

              v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v10, &v225, &v245, 16);
            }

            while (v17);
          }
        }

LABEL_37:
        ++v15;
      }

      while (v15 != v13);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, v10, &v229, &__p, 16);
    }

    while (v13);
  }

  *&v234[8] = 0;
  *v234 = 0;
  if (a4 != 1)
  {
LABEL_62:
    sub_19B87BBB4();
    if (sub_19B93CCA4())
    {
      v131 = sub_19B99F158(@"DeriveCrumbsFromUpsampledLocationsForCLTSP", 1, v129, v130);
      objc_msgSend_useXPCServiceForVehicularAStarSearch(a2, v132, v133, v134);
      v138 = sub_19B99F158(@"UseXPCServiceForVehicularAStarSearch", (v135 != 0.0), v136, v137);
      objc_msgSend_setUseXPCServiceForVehicularAStarSearch_(a2, v139, v138, v140);
    }

    else
    {
      v131 = 1;
    }

    v141 = objc_msgSend_array(MEMORY[0x1E695DF70], v128, v129, v130);
    if (objc_msgSend_count(a7, v142, v143, v144))
    {
      v147 = objc_msgSend_objectAtIndexedSubscript_(a7, v145, 0, v146);
      v151 = objc_msgSend_timestamp(v147, v148, v149, v150);
      objc_msgSend_timeIntervalSinceReferenceDate(v151, v152, v153, v154);
      if (*v234)
      {
        v157 = v156;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v158 = *(*v234 + 120);
        v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v155, &v221, v233, 16);
        if (v162)
        {
          v163 = *v222;
          do
          {
            for (j = 0; j != v162; ++j)
            {
              if (*v222 != v163)
              {
                objc_enumerationMutation(v158);
              }

              v165 = *(*(&v221 + 1) + 8 * j);
              v166 = objc_msgSend_timestamp(v165, v159, v160, v161);
              objc_msgSend_timeIntervalSinceReferenceDate(v166, v167, v168, v169);
              if (v170 < v157)
              {
                objc_msgSend_addObject_(v141, v159, v165, v161);
              }
            }

            v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v159, &v221, v233, 16);
          }

          while (v162);
        }
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v171 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        v175 = objc_msgSend_count(v141, v172, v173, v174);
        v179 = objc_msgSend_count(v141, v176, v177, v178);
        v183 = objc_msgSend_count(a7, v180, v181, v182);
        v187 = objc_msgSend_UUIDString(a3, v184, v185, v186);
        v191 = objc_msgSend_UTF8String(v187, v188, v189, v190);
        LODWORD(buf.__r_.__value_.__l.__data_) = 67240962;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v175;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1026;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v183 + v179;
        HIWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
        buf.__r_.__value_.__r.__words[2] = v191;
        LOWORD(v256) = 1026;
        *(&v256 + 2) = v131;
        _os_log_impl(&dword_19B873000, v171, OS_LOG_TYPE_DEBUG, "CLTSP,MI,upsampledLocationsSet created,prevLocation,%{public}d,newTotalLocation,%{public}d,tripSegmentID,%{public}s,deriveCrumbsFromUpsampledLocations,%{public}d", &buf, 0x1Eu);
      }

      v192 = sub_19B87DD40();
      if (*(v192 + 160) > 1 || *(v192 + 164) > 1 || *(v192 + 168) > 1 || *(v192 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v198 = qword_1EAFE46E8;
        v199 = objc_msgSend_count(v141, v195, v196, v197);
        v203 = objc_msgSend_count(v141, v200, v201, v202);
        v207 = objc_msgSend_count(a7, v204, v205, v206);
        v211 = objc_msgSend_UUIDString(a3, v208, v209, v210);
        v215 = objc_msgSend_UTF8String(v211, v212, v213, v214);
        LODWORD(__p.__r_.__value_.__l.__data_) = 67240962;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v199;
        LOWORD(__p.__r_.__value_.__r.__words[1]) = 1026;
        *(&__p.__r_.__value_.__r.__words[1] + 2) = v207 + v203;
        HIWORD(__p.__r_.__value_.__r.__words[1]) = 2082;
        __p.__r_.__value_.__r.__words[2] = v215;
        LOWORD(v247[0]) = 1026;
        *(v247 + 2) = v131;
        v216 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, v198, 2, "CLTSP,MI,upsampledLocationsSet created,prevLocation,%{public}d,newTotalLocation,%{public}d,tripSegmentID,%{public}s,deriveCrumbsFromUpsampledLocations,%{public}d", &__p, 30);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::runMapIntegrator(CLTripSegmentProcessorOptions * _Nonnull, NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v216);
        if (v216 != &buf)
        {
          free(v216);
        }
      }

      objc_msgSend_addObjectsFromArray_(v141, v193, a7, v194);
    }

    memset(&__p, 0, sizeof(__p));
    v247[0] = 0;
    v248 = 0x3FE0000000000000;
    v249 = 0;
    v250 = xmmword_19BA89700;
    v251 = 1;
    v252 = xmmword_19BA89710;
    v253 = 1;
    v254 = 0;
    sub_19B8759E8(&buf, "CLMapIntegrationSparse");
    sub_19BA5D180(&buf, a2, &__p, a4);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  v109 = qword_1EAFE5B10;
  v110 = objc_msgSend_UUIDString(a3, v10, v11, v12);
  v114 = objc_msgSend_UTF8String(v110, v111, v112, v113);
  sub_19B8759E8(&buf, v114);
  std::mutex::lock(v109);
  if (sub_19B95D1AC(v109, &buf))
  {
    __p.__r_.__value_.__r.__words[0] = &buf;
    v115 = sub_19B95D310((v109 + 64), &buf, &unk_19BA897F0, &__p, &v245);
    v117 = v115[7];
    v116 = v115[8];
    if (v116)
    {
      atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v117)
      {
        v118 = 0;
LABEL_52:
        sub_19B8750F8(v116);
        goto LABEL_55;
      }

LABEL_49:
      v118 = v117[62].__vftable;
      if (!v118)
      {
        operator new();
      }

      if (!v116)
      {
        v117 = 0;
        goto LABEL_55;
      }

      atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
      v117 = v116;
      goto LABEL_52;
    }

    if (v117)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v117 = 0;
  }

  v118 = 0;
LABEL_55:
  std::mutex::unlock(v109);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v122 = *&v234[8];
  *v234 = v118;
  *&v234[8] = v117;
  if (v122)
  {
    sub_19B8750F8(v122);
    v118 = *v234;
  }

  if (v118)
  {
    v123 = objc_msgSend_UUIDString(a3, v119, v120, v121);
    v127 = objc_msgSend_UTF8String(v123, v124, v125, v126);
    sub_19B8759E8(&buf, v127);
    sub_19B99EE80(v118, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  goto LABEL_62;
}

void sub_19BA5CF64(_Unwind_Exception *a1)
{
  sub_19B8750F8(v3);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  std::mutex::unlock(v1);
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (STACK[0x298])
  {
    sub_19B8750F8(STACK[0x298]);
  }

  _Unwind_Resume(a1);
}

void sub_19BA5D180(std::string *__str, void *a2, std::string *this, uint64_t a4)
{
  v90 = *MEMORY[0x1E69E9840];
  std::string::operator=(this, __str);
  if (a4 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = v10;
  this[1].__r_.__value_.__l.__size_ = 0x3FE0000000000000;
  this[1].__r_.__value_.__s.__data_[17] = objc_msgSend_useXPCServiceForMapQuery(a2, v7, v8, v9);
  this[2].__r_.__value_.__s.__data_[16] = objc_msgSend_isNetworkAccessAllowed(a2, v11, v12, v13);
  this[1].__r_.__value_.__s.__data_[16] = 1;
  this[2].__r_.__value_.__r.__words[0] = 0x4072C00000000000;
  this[3].__r_.__value_.__s.__data_[16] = 1;
  v16 = sub_19B99F158(@"PreferPrecachedTilesInTripSegmentProcessor", 1, v14, v15);
  this[2].__r_.__value_.__s.__data_[17] = v16;
  if (a4 != 1)
  {
    *&this[3].__r_.__value_.__l.__data_ = xmmword_19BA8DA30;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v17 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = this;
    }

    else
    {
      v18 = this->__r_.__value_.__r.__words[0];
    }

    data = this[1].__r_.__value_.__l.__data_;
    size = this[1].__r_.__value_.__l.__size_;
    v21 = this[1].__r_.__value_.__s.__data_[17];
    v22 = this[2].__r_.__value_.__s.__data_[16];
    v23 = this[1].__r_.__value_.__s.__data_[16];
    v24 = this[2].__r_.__value_.__l.__data_;
    v25 = this[3].__r_.__value_.__s.__data_[16];
    v27 = this[3].__r_.__value_.__l.__data_;
    v26 = this[3].__r_.__value_.__l.__size_;
    v28 = this[2].__r_.__value_.__s.__data_[17];
    *buf = 136317954;
    v67 = v18;
    v68 = 1026;
    v69 = data;
    v70 = 2050;
    v71 = size;
    v72 = 1026;
    v73 = v21;
    v74 = 1026;
    v75 = v22;
    v76 = 1026;
    v77 = v23;
    v78 = 2050;
    v79 = v24;
    v80 = 1026;
    v81 = v25;
    v82 = 2050;
    v83 = v27;
    v84 = 2050;
    v85 = v26;
    v86 = 1026;
    v87 = v16;
    v88 = 1026;
    v89 = v28;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_INFO, "CLTSP,getGeoMapGeometrySettingsForRouteReconstruction,fTypeName,%s,fGeometryType,%{public}d,fIntersectionRoadSearchDistance,%{public}.1lf,fUseXPCServiceForDataQuery,%{public}d,fAllowNetworkTileDownload,%{public}d,fStoringRoadConnectionEnabled,%{public}d,fMinimumRadiusForMapDataBuffer_m,%{public}.1lf,fWaitForMapDataQueryToComplete,%{public}d,fMinSnapRadiusM,%{public}.1lf,fMaxSnapRadiusM,%{public}.1lf,preferPrecachedTilesDefaults,%{public}d,preferCachedTilesSetting,%{public}d", buf, 0x5Eu);
  }

  v29 = sub_19B87DD40();
  if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = this;
    }

    else
    {
      v30 = this->__r_.__value_.__r.__words[0];
    }

    v31 = this[1].__r_.__value_.__l.__data_;
    v32 = this[1].__r_.__value_.__l.__size_;
    v33 = this[1].__r_.__value_.__s.__data_[17];
    v34 = this[2].__r_.__value_.__s.__data_[16];
    v35 = this[1].__r_.__value_.__s.__data_[16];
    v36 = this[2].__r_.__value_.__l.__data_;
    v37 = this[3].__r_.__value_.__s.__data_[16];
    v38 = this[3].__r_.__value_.__l.__data_;
    v39 = this[3].__r_.__value_.__l.__size_;
    v40 = this[2].__r_.__value_.__s.__data_[17];
    v42 = 136317954;
    v43 = v30;
    v44 = 1026;
    v45 = v31;
    v46 = 2050;
    v47 = v32;
    v48 = 1026;
    v49 = v33;
    v50 = 1026;
    v51 = v34;
    v52 = 1026;
    v53 = v35;
    v54 = 2050;
    v55 = v36;
    v56 = 1026;
    v57 = v37;
    v58 = 2050;
    v59 = v38;
    v60 = 2050;
    v61 = v39;
    v62 = 1026;
    v63 = v16;
    v64 = 1026;
    v65 = v40;
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,getGeoMapGeometrySettingsForRouteReconstruction,fTypeName,%s,fGeometryType,%{public}d,fIntersectionRoadSearchDistance,%{public}.1lf,fUseXPCServiceForDataQuery,%{public}d,fAllowNetworkTileDownload,%{public}d,fStoringRoadConnectionEnabled,%{public}d,fMinimumRadiusForMapDataBuffer_m,%{public}.1lf,fWaitForMapDataQueryToComplete,%{public}d,fMinSnapRadiusM,%{public}.1lf,fMaxSnapRadiusM,%{public}.1lf,preferPrecachedTilesDefaults,%{public}d,preferCachedTilesSetting,%{public}d", &v42, 94);
    sub_19B885924("Generic", 1, 0, 2, "void getGeoMapGeometrySettingsForRouteReconstruction(const std::string &, CLTripSegmentProcessorOptions * _Nonnull, CLGeoMapFeatureGeometrySettings &, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }
}

void sub_19BA5D4FC(uint64_t *a1, double **a2, void *a3)
{
  v119 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    do
    {
      if (*v9)
      {
        v11 = *(v9 + 8);
        v116[0] = *v9;
        v116[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = sub_19BA69760(v116, v6, v7, v8);
        if (v11)
        {
          sub_19B8750F8(v11);
        }

        if (*a2)
        {
          **a2 = **a2 + 1.0;
          objc_msgSend_setSequenceNumber_(v15, v12, v13, v14);
        }

        else
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v19 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "CLTSP,null sequenceNumber,skip sequenceNumber update.", buf, 2u);
          }

          v20 = sub_19B87DD40();
          if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v115[0] = 0;
            v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,null sequenceNumber,skip sequenceNumber update.", v115, 2);
            sub_19B885924("Generic", 1, 0, 2, "static void CLRoadTypeConversionUtilities::getCLMapRoadVectorAsCLTripSegmentRoadDataArray(const std::vector<CLMapRoadPtr> &, std::shared_ptr<double>, NSMutableArray<CLTripSegmentRoadData *> * _Nonnull)", "CoreLocation: %s\n", v21);
            if (v21 != buf)
            {
              free(v21);
            }
          }
        }

        if (objc_msgSend_count(a3, v16, v17, v18))
        {
          Object = objc_msgSend_lastObject(a3, v22, v23, v24);
          v29 = objc_msgSend_coordinates(Object, v26, v27, v28);
          if (objc_msgSend_count(v29, v30, v31, v32))
          {
            v34 = objc_msgSend_coordinates(v15, v22, v33, v24);
            if (objc_msgSend_count(v34, v35, v36, v37))
            {
              v39 = objc_msgSend_lastObject(a3, v22, v38, v24);
              v43 = objc_msgSend_coordinates(v39, v40, v41, v42);
              v47 = objc_msgSend_lastObject(v43, v44, v45, v46);
              v51 = objc_msgSend_coordinates(v15, v48, v49, v50);
              v55 = objc_msgSend_firstObject(v51, v52, v53, v54);
              if (objc_msgSend_isEqualCoordinate_(v47, v56, v55, v57))
              {
                v59 = objc_msgSend_lastObject(a3, v22, v58, v24);
                v63 = objc_msgSend_clRoadID(v15, v60, v61, v62);
                objc_msgSend_setConnectingCLRoadID_(v59, v64, v63, v65);
                v69 = objc_msgSend_coordinates(v15, v66, v67, v68);
                if (objc_msgSend_count(v69, v70, v71, v72))
                {
                  v74 = objc_msgSend_lastObject(a3, v22, v73, v24);
                  v78 = objc_msgSend_coordinates(v15, v75, v76, v77);
                  v82 = objc_msgSend_firstObject(v78, v79, v80, v81);
                  v86 = objc_msgSend_coordinates(v15, v83, v84, v85);
                  v90 = objc_msgSend_lastObject(v86, v87, v88, v89);
                  objc_msgSend_setConnectingRoadStartCoordinate_endCoordinate_(v74, v91, v82, v90);
                }
              }
            }
          }
        }

        objc_msgSend_addObject_(a3, v22, v15, v24);
      }

      v9 += 16;
    }

    while (v9 != v10);
  }

  v92 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v93, &v111, v117, 16);
  if (v97)
  {
    v98 = 0;
    v99 = *v112;
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v112 != v99)
        {
          objc_enumerationMutation(a3);
        }

        v101 = *(*(&v111 + 1) + 8 * i);
        if (v98 && (v102 = objc_msgSend_clRoadID(*(*(&v111 + 1) + 8 * i), v94, v95, v96), v102 == objc_msgSend_clRoadID(v98, v103, v104, v105)) && (v106 = objc_msgSend_connectingCLRoadID(v101, v94, v95, v96), v106 == objc_msgSend_connectingCLRoadID(v98, v107, v108, v109)))
        {
          objc_msgSend_addObject_(v92, v94, v101, v96);
        }

        else
        {
          v98 = v101;
        }
      }

      v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v94, &v111, v117, 16);
    }

    while (v97);
  }

  objc_msgSend_removeObjectsInArray_(a3, v94, v92, v96);
  objc_autoreleasePoolPop(context);
}

void sub_19BA5D914(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA5D934(void *a1, std::mutex *this, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  std::mutex::lock(this);
  if (sub_19B95D1AC(this, a3))
  {
    *buf = a3;
    v6 = sub_19B95D310(&this[1], a3, &unk_19BA897F0, buf, &v16);
    v8 = v6[7];
    v7 = v6[8];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v8)
      {
        *a1 = v8 + 1392;
        a1[1] = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_19B8750F8(v7);
        goto LABEL_26;
      }

      sub_19B8750F8(v7);
    }

    else if (v8)
    {
      *a1 = v8 + 1392;
      a1[1] = 0;
      goto LABEL_26;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
  }

  v9 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    v11 = *&this[1].__m_.__opaque[8];
    *buf = 136446466;
    *&buf[4] = v10;
    v21 = 1026;
    v22 = v11;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getRoadSequenceNumber,%{public}s,arraySize,%{public}d", buf, 0x12u);
  }

  v12 = sub_19B87DD40();
  if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = *&this[1].__m_.__opaque[8];
    v16 = 136446466;
    v17 = v13;
    v18 = 1026;
    v19 = v14;
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getRoadSequenceNumber,%{public}s,arraySize,%{public}d", &v16, 18);
    sub_19B885924("Generic", 1, 0, 0, "std::shared_ptr<double> CLTripSegmentSharedData::getRoadSequenceNumber(const std::string &)", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_26:
  std::mutex::unlock(this);
}

void sub_19BA5DBE4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_UUIDString(a3, a2, a3, a4);
  v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
  sub_19B8759E8(__p, v10);
  std::mutex::lock(a2);
  if (sub_19B95D1AC(a2, __p))
  {
    *buf = __p;
    v11 = sub_19B95D310((a2 + 64), __p, &unk_19BA897F0, buf, &v23);
    v13 = v11[7];
    v12 = v11[8];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v13)
      {
        *a1 = v13 + 1400;
        a1[1] = v12;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_19B8750F8(v12);
        goto LABEL_24;
      }

      sub_19B8750F8(v12);
    }

    else if (v13)
    {
      *a1 = v13 + 1400;
      a1[1] = 0;
      goto LABEL_24;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
  }

  v14 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v15 = __p;
    if (v22 < 0)
    {
      v15 = __p[0];
    }

    v16 = *(a2 + 80);
    *buf = 136446466;
    *&buf[4] = v15;
    v28 = 1026;
    v29 = v16;
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getRouteMatchKPIComputer,%{public}s,arraySize,%{public}d", buf, 0x12u);
  }

  v17 = sub_19B87DD40();
  if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v18 = __p;
    if (v22 < 0)
    {
      v18 = __p[0];
    }

    v19 = *(a2 + 80);
    v23 = 136446466;
    v24 = v18;
    v25 = 1026;
    v26 = v19;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getRouteMatchKPIComputer,%{public}s,arraySize,%{public}d", &v23, 18);
    sub_19B885924("Generic", 1, 0, 0, "std::shared_ptr<CLTripSegmentRouteMatchKPI> CLTripSegmentSharedData::getRouteMatchKPIComputer(const std::string &)", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_24:
  std::mutex::unlock(a2);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19BA5DEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::mutex::unlock(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19BA5DEE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v425 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = objc_msgSend_tripSegmentID(a2, a2, a3, a4);
    v10 = objc_msgSend_UUIDString(v6, v7, v8, v9);
    v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
    sub_19B8759E8(v345, v14);
    v344 = *(a1 + 48);
    if (v344)
    {
      v18 = objc_msgSend_routeRoads(*(a1 + 40), v15, v16, v17);
      v22 = objc_msgSend_routeRoads(a2, v19, v20, v21);
      *(v344 + 12) = 0;
      v25 = sub_19BA708AC(v18, 1, v23, v24);
      v28 = sub_19BA708AC(v22, 0, v26, v27);
      *(v344 + 16) += objc_msgSend_count(v28, v29, v30, v31);
      v35 = objc_msgSend_array(MEMORY[0x1E695DF70], v32, v33, v34);
      if (objc_msgSend_count(v28, v36, v37, v38))
      {
        v41 = 0;
        v42 = -1;
        do
        {
          v43 = objc_msgSend_objectAtIndexedSubscript_(v28, v39, v41, v40);
          v44 = *(v344 + 72);
          if (v44 != objc_msgSend_clRoadID(v43, v45, v46, v47))
          {
            *(v344 + 72) = objc_msgSend_clRoadID(v43, v48, v49, v50);
            ++*v344;
            v53 = objc_msgSend_objectAtIndexedSubscript_(v28, v51, v41, v52);
            v57 = objc_msgSend_coordinates(v53, v54, v55, v56);
            *(v344 + 20) += objc_msgSend_count(v57, v58, v59, v60);
            objc_msgSend_getLength(v43, v61, v62, v63);
            v68 = v67;
            *(v344 + 48) = v67 + *(v344 + 48);
            if (v42 == -1)
            {
              v42 = sub_19BA70CD8(v43, v25, v65, v66);
              if (v42 == -1)
              {
                v74 = v344;
                if (*(v344 + 4) >= 1)
                {
                  goto LABEL_18;
                }

                *(v344 + 40) = v68 + *(v344 + 40);
                ++*(v344 + 12);
LABEL_20:
                v42 = -1;
                goto LABEL_21;
              }

              v73 = v344;
              ++*(v344 + 80);
              goto LABEL_12;
            }

            if (objc_msgSend_count(v25, v64, v65, v66) <= ++v42)
            {
              break;
            }

            v70 = objc_msgSend_objectAtIndexedSubscript_(v25, v39, v42, v69);
            if (sub_19BA70D4C(v43, v70, v71, v72))
            {
              v73 = v344;
LABEL_12:
              ++*(v73 + 4);
              *(v73 + 24) = v68 + *(v73 + 24);
              goto LABEL_21;
            }

            v42 = sub_19BA70CD8(v43, v25, v49, v50);
            if (v42 == -1)
            {
              v74 = v344;
              if (*(v344 + 4) <= 0)
              {
                ++*(v344 + 12);
                *(v344 + 40) = v68 + *(v344 + 40);
              }

              else
              {
LABEL_18:
                *(v74 + 32) = v68 + *(v74 + 32);
                ++*(v74 + 8);
                objc_msgSend_addObject_(v35, v48, v43, v50);
              }

              goto LABEL_20;
            }

            ++*(v344 + 80);
            *(v344 + 32) = v68 + *(v344 + 32);
            ++*(v344 + 8);
            objc_msgSend_addObject_(v35, v48, v43, v50);
          }

LABEL_21:
          ++v41;
        }

        while (objc_msgSend_count(v28, v48, v49, v50) > v41);
      }

      v338 = a2;
      v339 = a1;
      *v344 -= *(v344 + 12);
      __p = 0;
      v369 = 0;
      v370 = 0;
      v364 = 0u;
      v365 = 0u;
      v366 = 0u;
      v367 = 0u;
      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v39, &v364, v402, 16);
      v343 = v35;
      if (v78)
      {
        v79 = *v365;
        do
        {
          for (i = 0; i != v78; ++i)
          {
            if (*v365 != v79)
            {
              objc_enumerationMutation(v18);
            }

            v81 = *(*(&v364 + 1) + 8 * i);
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
            v82 = objc_msgSend_coordinates(v81, v75, v76, v77);
            v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v360, &v400, 16);
            if (v84)
            {
              v85 = *v361;
              do
              {
                for (j = 0; j != v84; ++j)
                {
                  if (*v361 != v85)
                  {
                    objc_enumerationMutation(v82);
                  }

                  v87 = *(*(&v360 + 1) + 8 * j);
                  objc_msgSend_latitude(v87, v75, v76, v77);
                  v89 = v88;
                  objc_msgSend_longitude(v87, v90, v91, v92);
                  *buf = CLLocationCoordinate2DMake(v89, v93);
                  sub_19B8F1158(&__p, buf);
                }

                v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v75, &v360, &v400, 16);
              }

              while (v84);
            }

            v35 = v343;
          }

          v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v75, &v364, v402, 16);
        }

        while (v78);
      }

      v357 = 0;
      v358 = 0;
      v356 = xmmword_19BA89490;
      v359 = 0x3FF0000000000000;
      v340 = objc_msgSend_array(MEMORY[0x1E695DF70], v75, v76, v77);
      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v94, &v352, v399, 16);
      if (v95)
      {
        v341 = *v353;
        do
        {
          v99 = 0;
          v342 = v95;
          do
          {
            if (*v353 != v341)
            {
              objc_enumerationMutation(v35);
            }

            v100 = 0;
            v101 = 0;
            v102 = *(*(&v352 + 1) + 8 * v99);
            while (1)
            {
              v103 = objc_msgSend_coordinates(v102, v96, v97, v98);
              if (objc_msgSend_count(v103, v104, v105, v106) <= v100)
              {
                break;
              }

              v108 = objc_msgSend_coordinates(v102, v96, v97, v98);
              v111 = objc_msgSend_objectAtIndexedSubscript_(v108, v109, v100, v110);
              objc_msgSend_latitude(v111, v112, v113, v114);
              v116 = v115;
              v120 = objc_msgSend_coordinates(v102, v117, v118, v119);
              v123 = objc_msgSend_objectAtIndexedSubscript_(v120, v121, v100, v122);
              objc_msgSend_longitude(v123, v124, v125, v126);
              v347 = CLLocationCoordinate2DMake(v116, v127);
              v371[0] = -1.0;
              if (sub_19BA68324(&v356, (v369 - __p) >> 4, &__p, &v347.latitude, v371, v351))
              {
                v107 = v371[0];
                if (v371[0] >= 2.5)
                {
                  break;
                }

                ++v101;
              }

              else
              {
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
                }

                v128 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
                {
                  v132 = objc_msgSend_clRoadID(v102, v129, v130, v131);
                  *buf = 134283777;
                  *&buf[4] = v132;
                  *&buf[12] = 1026;
                  *&buf[14] = 0;
                  _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_ERROR, "CLTSP,%{private}llu,KPIComputer,findClosestPointOnRoad returned false,isRouteWithSkippedPart,%{public}d", buf, 0x12u);
                }

                v133 = sub_19B87DD40();
                if ((*(v133 + 160) & 0x80000000) == 0 || (*(v133 + 164) & 0x80000000) == 0 || (*(v133 + 168) & 0x80000000) == 0 || *(v133 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
                  }

                  v137 = qword_1EAFE46E8;
                  v138 = objc_msgSend_clRoadID(v102, v134, v135, v136);
                  v374 = 134283777;
                  v375 = v138;
                  v376 = 1026;
                  v377 = 0;
                  v139 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v137, 16, "CLTSP,%{private}llu,KPIComputer,findClosestPointOnRoad returned false,isRouteWithSkippedPart,%{public}d", &v374, 18);
                  sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRouteMatchKPI::computeKPI(NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, BOOL)", "CoreLocation: %s\n", v139);
                  if (v139 != buf)
                  {
                    free(v139);
                  }
                }
              }

              ++v100;
            }

            v140 = objc_msgSend_coordinates(v102, v96, v97, v98, v107);
            if (objc_msgSend_count(v140, v141, v142, v143) == v101)
            {
              ++*(v344 + 64);
              objc_msgSend_addObject_(v340, v96, v102, v98);
              objc_msgSend_getLength(v102, v144, v145, v146);
              *(v344 + 56) = v147 + *(v344 + 56);
              v148 = *(v344 + 32) - v147;
              *(v344 + 24) = v147 + *(v344 + 24);
              *(v344 + 32) = v148;
              *(v344 + 4) = vadd_s32(*(v344 + 4), 0xFFFFFFFF00000001);
            }

            ++v99;
            v35 = v343;
          }

          while (v99 != v342);
          v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v343, v96, &v352, v399, 16);
        }

        while (v95);
      }

      objc_msgSend_removeObjectsInArray_(v35, v96, v340, v98);
      v349 = 0u;
      v350 = 0u;
      v347 = 0;
      v348 = 0u;
      v153 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v149, &v347, &v374, 16);
      if (v153)
      {
        v154 = *v348;
        v155 = 0.0;
        do
        {
          for (k = 0; k != v153; ++k)
          {
            if (*v348 != v154)
            {
              objc_enumerationMutation(v35);
            }

            objc_msgSend_getLength(*(*&v347.longitude + 8 * k), v150, v151, v152);
            v155 = v155 + v157;
          }

          v153 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v150, &v347, &v374, 16);
        }

        while (v153);
      }

      else
      {
        v155 = 0.0;
      }

      if (vabdd_f64(*(v344 + 32), v155) > 0.5)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v188 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
        {
          v189 = *(v344 + 32);
          *buf = 134349568;
          *&buf[4] = v189;
          *&buf[12] = 2050;
          *&buf[14] = v155;
          v379 = 1026;
          LODWORD(v380) = 0;
          _os_log_impl(&dword_19B873000, v188, OS_LOG_TYPE_DEFAULT, "CLTSP,KPIComputer,fMisMatchedLength,%{public}.3lf,misMatchLength,%{public}.2lf,isRouteWithSkippedPart,%{public}d", buf, 0x1Cu);
        }

        v190 = sub_19B87DD40();
        if (*(v190 + 160) > 1 || *(v190 + 164) > 1 || *(v190 + 168) > 1 || *(v190 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          v191 = *(v344 + 32);
          LODWORD(v371[0]) = 134349568;
          *(v371 + 4) = v191;
          WORD2(v371[1]) = 2050;
          *(&v371[1] + 6) = v155;
          HIWORD(v371[2]) = 1026;
          LODWORD(v371[3]) = 0;
          v192 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,KPIComputer,fMisMatchedLength,%{public}.3lf,misMatchLength,%{public}.2lf,isRouteWithSkippedPart,%{public}d", v371, 28);
          sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteMatchKPI::computeKPI(NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, BOOL)", "CoreLocation: %s\n", v192);
          if (v192 != buf)
          {
            free(v192);
          }
        }
      }

      *(v344 + 84) = 0;
      memset(v371, 0, sizeof(v371));
      v372 = 0u;
      v373 = 0u;
      v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v150, v371, buf, 16);
      if (v196)
      {
        v197 = 0;
        v198 = **&v371[2];
        do
        {
          v199 = 0;
          v200 = v197;
          do
          {
            if (**&v371[2] != v198)
            {
              objc_enumerationMutation(v35);
            }

            v197 = *(*&v371[1] + 8 * v199);
            if (v200)
            {
              v201 = objc_msgSend_coordinates(v200, v193, v194, v195);
              Object = objc_msgSend_lastObject(v201, v202, v203, v204);
              v209 = objc_msgSend_coordinates(v197, v206, v207, v208);
              v213 = objc_msgSend_firstObject(v209, v210, v211, v212);
              if (objc_msgSend_isEqualCoordinate_(Object, v214, v213, v215))
              {
                goto LABEL_117;
              }

              v216 = v344;
              v217 = *(v344 + 84) + 1;
            }

            else
            {
              v217 = 1;
              v216 = v344;
            }

            *(v216 + 84) = v217;
LABEL_117:
            ++v199;
            v200 = v197;
          }

          while (v196 != v199);
          v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v193, v371, buf, 16);
        }

        while (v196);
      }

      if (__p)
      {
        v369 = __p;
        operator delete(__p);
      }

      v218 = *(v339 + 48);
      v219 = *(v218 + 48);
      v220 = v219 - *(v218 + 40);
      if (v220 <= 0.0)
      {
        v221 = 0;
      }

      else
      {
        v221 = (*(v218 + 24) * 100.0 / v220);
      }

      v222 = *(v339 + 64);
      *(v222 + 304) = v221;
      v223 = *(v218 + 84);
      *(v222 + 308) = v223;
      v224 = v223;
      v225 = 0.0;
      if (v219 > 0.0)
      {
        v225 = v224 * 1000.0 / v219;
      }

      v226 = v224 * 3600.0 / *(v222 + 40);
      *(v222 + 312) = v225;
      *(v222 + 320) = v226;
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v227 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        if (v346 >= 0)
        {
          v231 = v345;
        }

        else
        {
          v231 = v345[0];
        }

        objc_msgSend_distance_m(v338, v228, v229, v230);
        v233 = v232;
        objc_msgSend_distanceUnc_m(v338, v234, v235, v236);
        v238 = v237;
        started = objc_msgSend_startDate(v338, v239, v240, v241);
        objc_msgSend_timeIntervalSinceReferenceDate(started, v243, v244, v245);
        v247 = v246;
        v251 = objc_msgSend_endDate(v338, v248, v249, v250);
        objc_msgSend_timeIntervalSinceReferenceDate(v251, v252, v253, v254);
        v256 = v255;
        v260 = objc_msgSend_modeOfTransport(v338, v257, v258, v259);
        v264 = objc_msgSend_tripLocations(v338, v261, v262, v263);
        v268 = objc_msgSend_count(v264, v265, v266, v267);
        v272 = objc_msgSend_routeRoads(v338, v269, v270, v271);
        v276 = objc_msgSend_count(v272, v273, v274, v275);
        v277 = *(v339 + 64);
        v278 = *(v277 + 304);
        v279 = *(v277 + 308);
        v281 = *(v277 + 312);
        v280 = *(v277 + 320);
        *buf = 136449026;
        *&buf[4] = v231;
        *&buf[12] = 2050;
        *&buf[14] = v233;
        v379 = 2050;
        v380 = v238;
        v381 = 2050;
        v382 = v247;
        v383 = 2050;
        v384 = v256;
        v385 = 1026;
        v386 = v260;
        v387 = 1026;
        v388 = v268;
        v389 = 1026;
        v390 = v276;
        v391 = 1026;
        v392 = v278;
        v393 = 1026;
        v394 = v279;
        v395 = 2050;
        v396 = v281;
        v397 = 2050;
        v398 = v280;
        _os_log_impl(&dword_19B873000, v227, OS_LOG_TYPE_DEFAULT, "CLTSP,Received Simulated Sparse trip output Data,ID,%{public}s,distance,%{public}.2lf,distanceUnc,%{public}.2lf,startTime,%{public}.2lf,endTime, %{public}.2lf,modeOfTransport,%{public}d,locationCount,%{public}d,routeRoads,%{public}d,routeLengthMatch,%{public}d,routeDeviationCount,%{public}d,routeDeviationPerKm,%{public}.2lf,routeDeviationPerHr,%{public}.2lf", buf, 0x66u);
      }

      v282 = sub_19B87DD40();
      if (*(v282 + 160) <= 1 && *(v282 + 164) <= 1 && *(v282 + 168) <= 1 && !*(v282 + 152))
      {
        goto LABEL_144;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v286 = qword_1EAFE46E8;
      v287 = v346 >= 0 ? v345 : v345[0];
      objc_msgSend_distance_m(v338, v283, v284, v285);
      v289 = v288;
      objc_msgSend_distanceUnc_m(v338, v290, v291, v292);
      v294 = v293;
      v298 = objc_msgSend_startDate(v338, v295, v296, v297);
      objc_msgSend_timeIntervalSinceReferenceDate(v298, v299, v300, v301);
      v303 = v302;
      v307 = objc_msgSend_endDate(v338, v304, v305, v306);
      objc_msgSend_timeIntervalSinceReferenceDate(v307, v308, v309, v310);
      v312 = v311;
      v316 = objc_msgSend_modeOfTransport(v338, v313, v314, v315);
      v320 = objc_msgSend_tripLocations(v338, v317, v318, v319);
      v324 = objc_msgSend_count(v320, v321, v322, v323);
      v328 = objc_msgSend_routeRoads(v338, v325, v326, v327);
      v332 = objc_msgSend_count(v328, v329, v330, v331);
      v333 = *(v339 + 64);
      v334 = *(v333 + 304);
      v335 = *(v333 + 308);
      v337 = *(v333 + 312);
      v336 = *(v333 + 320);
      *v402 = 136449026;
      *&v402[4] = v287;
      v403 = 2050;
      v404 = v289;
      v405 = 2050;
      v406 = v294;
      v407 = 2050;
      v408 = v303;
      v409 = 2050;
      v410 = v312;
      v411 = 1026;
      v412 = v316;
      v413 = 1026;
      v414 = v324;
      v415 = 1026;
      v416 = v332;
      v417 = 1026;
      v418 = v334;
      v419 = 1026;
      v420 = v335;
      v421 = 2050;
      v422 = v337;
      v423 = 2050;
      v424 = v336;
      v187 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v286, 0, "CLTSP,Received Simulated Sparse trip output Data,ID,%{public}s,distance,%{public}.2lf,distanceUnc,%{public}.2lf,startTime,%{public}.2lf,endTime, %{public}.2lf,modeOfTransport,%{public}d,locationCount,%{public}d,routeRoads,%{public}d,routeLengthMatch,%{public}d,routeDeviationCount,%{public}d,routeDeviationPerKm,%{public}.2lf,routeDeviationPerHr,%{public}.2lf", v402, 102);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)_block_invoke", "CoreLocation: %s\n", v187);
      if (v187 == buf)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v158 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v162 = objc_msgSend_tripSegmentID(*(a1 + 32), v159, v160, v161);
        v166 = objc_msgSend_UUIDString(v162, v163, v164, v165);
        v170 = objc_msgSend_UTF8String(v166, v167, v168, v169);
        sub_19B8759E8(buf, v170);
        v171 = v379 >= 0 ? buf : *buf;
        *v402 = 136446210;
        *&v402[4] = v171;
        _os_log_impl(&dword_19B873000, v158, OS_LOG_TYPE_DEFAULT, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s is not in CLTripSegmentSharedData", v402, 0xCu);
        if (SHIBYTE(v379) < 0)
        {
          operator delete(*buf);
        }
      }

      v172 = sub_19B87DD40();
      if (*(v172 + 160) <= 1 && *(v172 + 164) <= 1 && *(v172 + 168) <= 1 && !*(v172 + 152))
      {
        goto LABEL_144;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v176 = qword_1EAFE46E8;
      v177 = objc_msgSend_tripSegmentID(*(a1 + 32), v173, v174, v175);
      v181 = objc_msgSend_UUIDString(v177, v178, v179, v180);
      v185 = objc_msgSend_UTF8String(v181, v182, v183, v184);
      sub_19B8759E8(v402, v185);
      if (v405 >= 0)
      {
        v186 = v402;
      }

      else
      {
        v186 = *v402;
      }

      v400 = 136446210;
      v401 = v186;
      v187 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v176, 0, "CLTSP,convert1HzDataToSparseAndComputeRouteMatchKPI,tripID,%{public}s is not in CLTripSegmentSharedData", &v400, 12);
      if (SHIBYTE(v405) < 0)
      {
        operator delete(*v402);
      }

      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::convert1HzDataToSparseAndComputeRouteMatchKPI(CLTripSegmentProcessorOptions * _Nonnull, CLTripSegmentInputData * _Nonnull, CLTripSegmentOutputData * _Nonnull)_block_invoke", "CoreLocation: %s\n", v187);
      if (v187 == buf)
      {
        goto LABEL_144;
      }
    }

    free(v187);
LABEL_144:
    if (v346 < 0)
    {
      operator delete(v345[0]);
    }
  }
}

void sub_19BA5EF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void *sub_19BA5F05C(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_19BA5F090(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    sub_19B8750F8(v3);
  }
}

uint64_t sub_19BA5F0E0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v81 = *MEMORY[0x1E69E9840];
  v12 = objc_msgSend_UUIDString(a2, a2, a3, a4);
  v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
  sub_19B8759E8(&__p, v16);
  sub_19BA60818(v68, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v17 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v69;
    v22 = v68[0];
    v23 = objc_msgSend_count(a3, v18, v19, v20);
    v24 = v68;
    if (v21 < 0)
    {
      v24 = v22;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136446978;
    *(__p.__r_.__value_.__r.__words + 4) = v24;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1026;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = a4;
    WORD1(__p.__r_.__value_.__r.__words[2]) = 1026;
    HIDWORD(__p.__r_.__value_.__r.__words[2]) = v23;
    v79 = 2050;
    v80 = a7;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "CLTSP,simulateLocationOnRoute,input,routeID,%{public}s,modeOfTransport,%{public}d,,routeRoadsCount,%{public}d,speed,%{public}.1lf", &__p, 0x22u);
  }

  v25 = sub_19B87DD40();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v29 = qword_1EAFE46E8;
    v30 = v69;
    v31 = v68[0];
    v32 = objc_msgSend_count(a3, v26, v27, v28);
    v33 = v68;
    if (v30 < 0)
    {
      v33 = v31;
    }

    LODWORD(v70.__r_.__value_.__l.__data_) = 136446978;
    *(v70.__r_.__value_.__r.__words + 4) = v33;
    WORD2(v70.__r_.__value_.__r.__words[1]) = 1026;
    *(&v70.__r_.__value_.__r.__words[1] + 6) = a4;
    WORD1(v70.__r_.__value_.__r.__words[2]) = 1026;
    HIDWORD(v70.__r_.__value_.__r.__words[2]) = v32;
    LOWORD(v71) = 2050;
    *(&v71 + 2) = a7;
    v34 = _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B873000, v29, 0, "CLTSP,simulateLocationOnRoute,input,routeID,%{public}s,modeOfTransport,%{public}d,,routeRoadsCount,%{public}d,speed,%{public}.1lf", &v70, 34);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::simulateLocationOnRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, const CLTripSegmentModeOfTransport, double, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v34);
    if (v34 != &__p)
    {
      free(v34);
    }
  }

  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_shouldRecordDataInFileForReplay(a5, v35, v36, v37))
  {
    objc_msgSend_addObject_(v64, v38, a2, v40);
    objc_msgSend_addObject_(v64, v41, a3, v42);
  }

  v43 = objc_msgSend_UUIDString(a2, v38, v39, v40);
  v47 = objc_msgSend_UTF8String(v43, v44, v45, v46);
  sub_19B8759E8(v66, v47);
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if ((sub_19BA55AB8(qword_1EAFE5B10, v66) & 1) == 0)
  {
    sub_19BA70F8C(&__p);
  }

  *(a1 + 40) = objc_msgSend_shouldRecordDataInFileForReplay(a5, v48, v49, v50);
  *(a1 + 48) = objc_msgSend_tripSegmentRecorderLoggingDirectory(a5, v51, v52, v53);
  if (a7 > 0.0)
  {
    memset(&v70, 0, sizeof(v70));
    LODWORD(v71) = 0;
    *(&v71 + 1) = 0x3FE0000000000000;
    v72 = 0;
    v73 = xmmword_19BA89700;
    v74 = 1;
    v75 = xmmword_19BA89710;
    v76 = 1;
    v77 = 0;
    sub_19B8759E8(&__p, "SimulateLocationOnRoute");
    sub_19BA5D180(&__p, a5, &v70, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_19B9E080C();
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v54 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    v55 = v68;
    if (v69 < 0)
    {
      v55 = v68[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136446466;
    *(__p.__r_.__value_.__r.__words + 4) = v55;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = a7;
    _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_DEBUG, "CLTSP,invalid speed input,trip,%{public}s,speed,%{public}.2lf", &__p, 0x16u);
  }

  v56 = sub_19B87DD40();
  if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v60 = v68;
    if (v69 < 0)
    {
      v60 = v68[0];
    }

    LODWORD(v70.__r_.__value_.__l.__data_) = 136446466;
    *(v70.__r_.__value_.__r.__words + 4) = v60;
    WORD2(v70.__r_.__value_.__r.__words[1]) = 2050;
    *(&v70.__r_.__value_.__r.__words[1] + 6) = a7;
    v61 = _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,invalid speed input,trip,%{public}s,speed,%{public}.2lf", &v70, 22);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::simulateLocationOnRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, const CLTripSegmentModeOfTransport, double, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v61);
    if (v61 != &__p)
    {
      free(v61);
    }
  }

  shouldRecordDataInFileForReplay = objc_msgSend_shouldRecordDataInFileForReplay(a5, v57, v58, v59);
  sub_19BA60970(a1, shouldRecordDataInFileForReplay, 12, v64);
  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  return 0;
}

void sub_19BA60674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a22)
  {
    sub_19B8750F8(a22);
  }

  if (a24)
  {
    sub_19B8750F8(a24);
  }

  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

std::string *sub_19BA60818(uint64_t a1, const std::string *__s)
{
  v13[2] = *MEMORY[0x1E69E9840];
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    size = __s->__r_.__value_.__l.__size_;
    if (size < 1)
    {
      goto LABEL_14;
    }

    v6 = __s->__r_.__value_.__r.__words[0];
    v5 = (__s->__r_.__value_.__r.__words[0] + size);
  }

  else
  {
    if (!*(&__s->__r_.__value_.__s + 23))
    {
      goto LABEL_14;
    }

    v5 = __s + size;
    v6 = __s;
  }

  v7 = v6;
  do
  {
    v8 = memchr(v7, 45, size);
    if (!v8)
    {
      break;
    }

    if (*v8 == 45)
    {
      if (v8 != v5 && v8 - v6 != -1)
      {
        result = std::string::basic_string(&v12, __s, 0, v8 - v6, v13);
        *(v13 + 7) = *(&v12.__r_.__value_.__r.__words[1] + 7);
        v13[0] = v12.__r_.__value_.__l.__size_;
        v10 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
        v11 = v12.__r_.__value_.__l.__size_;
        *a1 = v12.__r_.__value_.__r.__words[0];
        *(a1 + 8) = v11;
        *(a1 + 15) = *(v13 + 7);
        *(a1 + 23) = v10;
        return result;
      }

      break;
    }

    v7 = (v8 + 1);
    size = v5 - v7;
  }

  while (v5 - v7 >= 1);
LABEL_14:

  return sub_19B8759E8(a1, "");
}

void sub_19BA60970(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_19B87BBB4();
    if (sub_19B93CCA4())
    {
      v10 = objc_msgSend_now(MEMORY[0x1E695DF00], v7, v8, v9);

      sub_19B98FD58(a1 + 40, a4, v10, a3);
    }
  }
}

uint64_t sub_19BA609EC(float64x2_t *a1, double **a2, double *a3, double *a4, double a5)
{
  v66 = *MEMORY[0x1E69E9840];
  *a3 = 0.0;
  a3[1] = 0.0;
  *a4 = 0.0;
  v5 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(__y[0]) = 0;
    v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM, NULL road", __y, 2);
LABEL_17:
    v22 = v21;
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
    goto LABEL_41;
  }

  v6 = (*(v5 + 18) - *(v5 + 17)) >> 4;
  if (v6 <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(__y[0]) = 0;
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,CoordinateCount is 0", __y, 2);
    goto LABEL_40;
  }

  if (v6 != 1)
  {
    sub_19B9F5AA8(*a2);
    v12 = (*(v5 + 21) - *(v5 + 20)) >> 3;
    if (v12 == v6 - 1)
    {
      v13 = *a2;
      sub_19B9F5AA8(v13);
      if (a5 < 0.000001)
      {
        *a3 = **(v13 + 17);
        v14 = *a3;
        v15 = a3[1];
        v16 = *(v13 + 17);
        v17 = *(v16 + 16);
        v18 = *(v16 + 24);
LABEL_62:
        *buf = 0;
        __y[0] = 0.0;
        sub_19BA0BE88(a1, buf, __y, &v63, v14, v15, 0.0, v17, v18, 0.0);
        v38 = atan2(__y[0], *buf);
        if (v38 < 0.0)
        {
          v38 = v38 + 6.28318531;
        }

        v39 = v38 * 57.2957795;
LABEL_65:
        *a4 = v39;
        return 1;
      }

      if (a5 >= 0.999999)
      {
        *a3 = *(*(v13 + 17) + 16 * v12);
        v37 = *(v13 + 17) + 16 * v12;
        v14 = *(v37 - 16);
        v15 = *(v37 - 8);
        v17 = *a3;
        v18 = a3[1];
        goto LABEL_62;
      }

      v29 = *(v5 + 20);
      v30 = *(v5 + 21);
      if (v29 != v30)
      {
        v31 = 0.0;
        v32 = 2;
        v33 = 24;
        while (1)
        {
          v34 = *v29 / v13[5];
          if (vabdd_f64(a5, v31 + v34) < 0.000001)
          {
            break;
          }

          if (v31 + v34 > a5)
          {
            v53 = (a5 - v31) / v34;
            v54 = (*(v13 + 17) + v33);
            v55 = *(v54 - 2);
            v56 = *v54;
            *a3 = *(v54 - 3) + (*(v54 - 1) - *(v54 - 3)) * v53;
            v57 = v55 + 360.0;
            if (v55 >= 0.0)
            {
              v57 = v55;
            }

            v58 = v56 + 360.0;
            if (v56 >= 0.0)
            {
              v58 = v56;
            }

            v59 = v58 - v57;
            if (v59 <= 180.0)
            {
              if (v59 < -180.0)
              {
                v59 = v59 + 360.0;
              }
            }

            else
            {
              v59 = v59 + -360.0;
            }

            v62 = fmod(v55 + v59 * v53, 360.0);
            if (v62 <= -180.0)
            {
              v62 = v62 + 360.0;
            }

            else if (v62 > 180.0)
            {
              v62 = v62 + -360.0;
            }

            a3[1] = v62;
            v14 = *(v54 - 3);
            v15 = *(v54 - 2);
            v17 = *(v54 - 1);
            v18 = *v54;
            goto LABEL_62;
          }

          ++v29;
          v33 += 16;
          ++v32;
          v31 = v31 + v34;
          if (v29 == v30)
          {
            goto LABEL_50;
          }
        }

        if (v32 < v6)
        {
          *a3 = *(*(v13 + 17) + v33 - 8);
          v40 = *(v13 + 17) + v33;
          v41 = *(v40 - 24);
          v42 = *(v40 - 16);
          v43 = *a3;
          v44 = a3[1];
          *buf = 0;
          __y[0] = 0.0;
          sub_19BA0BE88(a1, buf, __y, &v63, v41, v42, 0.0, v43, v44, 0.0);
          v45 = atan2(__y[0], *buf);
          if (v45 < 0.0)
          {
            v45 = v45 + 6.28318531;
          }

          v46 = v45 * 57.2957795;
          v47 = *a3;
          v48 = a3[1];
          v49 = *(v13 + 17) + v33;
          v50 = *(v49 + 8);
          v51 = *(v49 + 16);
          *buf = 0;
          __y[0] = 0.0;
          sub_19BA0BE88(a1, buf, __y, &v63, v47, v48, 0.0, v50, v51, 0.0);
          v52 = atan2(__y[0], *buf);
          if (v52 < 0.0)
          {
            v52 = v52 + 6.28318531;
          }

          sub_19B8B646C(v46, v52 * 57.2957795);
          goto LABEL_65;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
        }

        v60 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
        }

        v61 = sub_19B87DD40();
        if ((*(v61 + 160) & 0x80000000) != 0 && (*(v61 + 164) & 0x80000000) != 0 && (*(v61 + 168) & 0x80000000) != 0 && !*(v61 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
        }

        LOWORD(__y[0]) = 0;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", __y, 2);
        goto LABEL_17;
      }

LABEL_50:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
      }

      v35 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
      }

      v36 = sub_19B87DD40();
      if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
      }

      LOWORD(__y[0]) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,Could not interpolate to intended projection", __y, 2);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
      }

      v26 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
      }

      v27 = sub_19B87DD40();
      if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
      }

      LOWORD(__y[0]) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,inconsistent array size", __y, 2);
    }

LABEL_40:
    v22 = v25;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
LABEL_41:
    if (v22 != buf)
    {
      free(v22);
    }

    return 0;
  }

  return 1;
}

void *sub_19BA612C4(void *result, void *a2, void *a3, void *a4, void *a5)
{
  *result = 0;
  result[1] = 0;
  if (a4 != a5)
  {
    v34 = v14;
    v35 = v13;
    v36 = v10;
    v37 = v9;
    v38 = v8;
    v39 = v7;
    v40 = v6;
    v41 = v5;
    v42 = v11;
    v43 = v12;
    v16 = a4;
    v19 = result;
    while (1)
    {
      result = objc_msgSend_latitude(a2, a2, a3, a4, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
      v21 = *(*v16 + 136);
      v22 = *(*v16 + 144) == v21 ? 0.0 : *v21;
      if (vabdd_f64(v20, v22) < 0.0000001)
      {
        result = objc_msgSend_longitude(a2, a2, a3, a4);
        v24 = *(*v16 + 136);
        v25 = *(*v16 + 144) == v24 ? 0.0 : *(v24 + 8);
        if (vabdd_f64(v23, v25) < 0.0000001)
        {
          result = objc_msgSend_latitude(a3, a2, a3, a4);
          v27 = *(*v16 + 144);
          v28 = v27 == *(*v16 + 136) ? 0.0 : *(v27 - 16);
          if (vabdd_f64(v26, v28) < 0.0000001)
          {
            result = objc_msgSend_longitude(a3, a2, a3, a4);
            v30 = *v16;
            v31 = *(*v16 + 144);
            v32 = v31 == *(*v16 + 136) ? 0.0 : *(v31 - 8);
            if (vabdd_f64(v29, v32) < 0.0000001)
            {
              break;
            }
          }
        }
      }

      v16 += 2;
      if (v16 == a5)
      {
        return result;
      }
    }

    v33 = v16[1];
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    *v19 = v30;
    v19[1] = v33;
  }

  return result;
}

void sub_19BA6140C(void *a1, const char *a2, uint64_t *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v14[0] = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v14, 1);
  v6 = *a3;
  v7 = a3[1];
  v9[0] = v6;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_19BA6152C(v5, &v10, v9);
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  if (v11 - v10 == 16 && *v10)
  {
    v8 = v10[1];
    *a1 = *v10;
    a1[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  v13 = &v10;
  sub_19B8F0E84(&v13);
}

void sub_19BA614FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (v14)
  {
    sub_19B8750F8(v14);
  }

  a14 = &a11;
  sub_19B8F0E84(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA6152C(void *a1, const void **a2, _BYTE **a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v79, v85, 16);
    if (v8)
    {
      v9 = *v80;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v80 != v9)
          {
            objc_enumerationMutation(a1);
          }

          v11 = *(*(&v79 + 1) + 8 * i);
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v12 = *a3;
          v13 = objc_msgSend_coordinates(v11, v5, v6, v7);
          Object = objc_msgSend_firstObject(v13, v14, v15, v16);
          objc_msgSend_latitude(Object, v18, v19, v20);
          v22 = v21;
          v26 = objc_msgSend_coordinates(v11, v23, v24, v25);
          v30 = objc_msgSend_firstObject(v26, v27, v28, v29);
          objc_msgSend_longitude(v30, v31, v32, v33);
          if ((sub_19B8E77AC(v12, &v76, 1, 0, v22, v34, 2.0) & 1) == 0)
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v60 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              v64 = objc_msgSend_clRoadID(v11, v61, v62, v63);
              *buf = 134349056;
              *&buf[4] = v64;
              _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_ERROR, "CLTSP,getCLTripSegmentRoadDataArrayAsCLMapRoadVector,findRoadsNear call failed,roadID,%{public}lld", buf, 0xCu);
            }

            v65 = sub_19B87DD40();
            if ((*(v65 + 160) & 0x80000000) == 0 || (*(v65 + 164) & 0x80000000) == 0 || (*(v65 + 168) & 0x80000000) == 0 || *(v65 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
              }

              v69 = qword_1EAFE46E8;
              v70 = objc_msgSend_clRoadID(v11, v66, v67, v68);
              v83 = 134349056;
              v84 = v70;
              v71 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v69, 16, "CLTSP,getCLTripSegmentRoadDataArrayAsCLMapRoadVector,findRoadsNear call failed,roadID,%{public}lld", &v83, 12);
              sub_19B885924("Generic", 1, 0, 0, "static BOOL CLRoadTypeConversionUtilities::getCLTripSegmentRoadDataArrayAsCLMapRoadVector(NSArray<CLTripSegmentRoadData *> * _Nonnull, std::vector<CLMapRoadPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v71);
              if (v71 != buf)
              {
                free(v71);
              }
            }

            *buf = &v76;
            sub_19B8F0E84(buf);
            return 0;
          }

          if (v76 == v77)
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v38 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
            {
              v42 = objc_msgSend_clRoadID(v11, v39, v40, v41);
              *buf = 134349056;
              *&buf[4] = v42;
              _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLTSP,getCLTripSegmentRoadDataArrayAsCLMapRoadVector,road data query failed,roadID,%{public}lld", buf, 0xCu);
            }

            v43 = sub_19B87DD40();
            if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
              }

              v47 = qword_1EAFE46E8;
              v48 = objc_msgSend_clRoadID(v11, v44, v45, v46);
              v83 = 134349056;
              v84 = v48;
              v49 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v47, 2, "CLTSP,getCLTripSegmentRoadDataArrayAsCLMapRoadVector,road data query failed,roadID,%{public}lld", &v83, 12);
              sub_19B885924("Generic", 1, 0, 2, "static BOOL CLRoadTypeConversionUtilities::getCLTripSegmentRoadDataArrayAsCLMapRoadVector(NSArray<CLTripSegmentRoadData *> * _Nonnull, std::vector<CLMapRoadPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v49);
              if (v49 != buf)
              {
                free(v49);
              }
            }
          }

          v50 = v76;
          v51 = v77;
          while (v50 != v51)
          {
            v52 = *(*v50 + 8);
            if (v52 == objc_msgSend_clRoadID(v11, v35, v36, v37) && objc_msgSend_clRoadID(v11, v53, v54, v55) || ((v57 = *(*v50 + 136), v56 = *(*v50 + 144), v56 == v57) ? (isEqualStartLatitude_startLongitude_endLatitude_endlongitude = objc_msgSend_isEqualStartLatitude_startLongitude_endLatitude_endlongitude_(v11, v53, v54, v55, 0.0, 0.0, 0.0, 0.0)) : (isEqualStartLatitude_startLongitude_endLatitude_endlongitude = objc_msgSend_isEqualStartLatitude_startLongitude_endLatitude_endlongitude_(v11, v53, v54, v55, *v57, v57[1], *(v56 - 2), *(v56 - 1))), (isEqualStartLatitude_startLongitude_endLatitude_endlongitude & 1) != 0))
            {
              sub_19B8EAB68(a2, v50);
              break;
            }

            ++v50;
          }

          *buf = &v76;
          sub_19B8F0E84(buf);
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v5, &v79, v85, 16);
        result = 1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v72 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v72, OS_LOG_TYPE_ERROR, "CLTSP,getCLTripSegmentRoadDataArrayAsCLMapRoadVector,null geometry", buf, 2u);
    }

    v73 = sub_19B87DD40();
    if ((*(v73 + 160) & 0x80000000) == 0 || (*(v73 + 164) & 0x80000000) == 0 || (*(v73 + 168) & 0x80000000) == 0 || *(v73 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v76) = 0;
      v74 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getCLTripSegmentRoadDataArrayAsCLMapRoadVector,null geometry", &v76, 2);
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLRoadTypeConversionUtilities::getCLTripSegmentRoadDataArrayAsCLMapRoadVector(NSArray<CLTripSegmentRoadData *> * _Nonnull, std::vector<CLMapRoadPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v74);
      if (v74 != buf)
      {
        free(v74);
      }
    }

    return 0;
  }

  return result;
}

void sub_19BA61B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45)
{
  a45 = &a15;
  sub_19B8F0E84(&a45);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA61BD0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a4 && (v13 = objc_msgSend_coordinates(a4, a2, a3, a4), objc_msgSend_count(v13, v14, v15, v16)))
  {
    if (a5)
    {
      v20 = objc_msgSend_coordinates(a5, v17, v18, v19);
      if (objc_msgSend_count(v20, v21, v22, v23))
      {
        v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (objc_msgSend_shouldRecordDataInFileForReplay(a7, v24, v25, v26))
        {
          objc_msgSend_addObject_(v60, v27, a2, v29);
          objc_msgSend_addObject_(v60, v30, a4, v31);
          objc_msgSend_addObject_(v60, v32, a5, v33);
          objc_msgSend_addObject_(v60, v34, a3, v35);
        }

        v59 = objc_msgSend_now(MEMORY[0x1E695DF00], v27, v28, v29);
        objc_msgSend_timeIntervalSinceReferenceDate(v59, v36, v37, v38);
        v42 = objc_msgSend_UUIDString(a2, v39, v40, v41);
        v46 = objc_msgSend_UTF8String(v42, v43, v44, v45);
        sub_19B8759E8(&__s, v46);
        sub_19BA60818(&v72, &__s);
        if (qword_1EAFE5B00 != -1)
        {
          dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
        }

        if ((sub_19BA55AB8(qword_1EAFE5B10, &__s) & 1) == 0)
        {
          sub_19BA70F8C(&__p);
        }

        *(a1 + 40) = objc_msgSend_shouldRecordDataInFileForReplay(a7, v47, v48, v49);
        *(a1 + 48) = objc_msgSend_tripSegmentRecorderLoggingDirectory(a7, v50, v51, v52);
        memset(&v63, 0, sizeof(v63));
        v64 = 0;
        v65 = 0x3FE0000000000000;
        v66 = 0;
        v67 = xmmword_19BA89700;
        v68 = 1;
        v69 = xmmword_19BA89710;
        v70 = 1;
        v71 = 0;
        sub_19B8759E8(&__p, "ConstructRouteUsingFamiliarRoads");
        sub_19BA5D180(&__p, a7, &v63, a6);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_19B9E080C();
      }
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v56 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteUsingFamiliarRoads,end location is invalid", &__p, 2u);
    }

    v57 = sub_19B87DD40();
    if ((*(v57 + 160) & 0x80000000) == 0 || (*(v57 + 164) & 0x80000000) == 0 || (*(v57 + 168) & 0x80000000) == 0 || *(v57 + 152))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v63.__r_.__value_.__l.__data_) = 0;
      v55 = _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,constructRouteUsingFamiliarRoads,end location is invalid", &v63, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::constructRouteUsingFamiliarRoads(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, CLTripSegmentRoadData * _Nonnull, CLTripSegmentRoadData * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v55);
LABEL_34:
      if (v55 != &__p)
      {
        free(v55);
      }
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v53 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteUsingFamiliarRoads,start location is invalid", &__p, 2u);
    }

    v54 = sub_19B87DD40();
    if ((*(v54 + 160) & 0x80000000) == 0 || (*(v54 + 164) & 0x80000000) == 0 || (*(v54 + 168) & 0x80000000) == 0 || *(v54 + 152))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v63.__r_.__value_.__l.__data_) = 0;
      v55 = _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,constructRouteUsingFamiliarRoads,start location is invalid", &v63, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::constructRouteUsingFamiliarRoads(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, CLTripSegmentRoadData * _Nonnull, CLTripSegmentRoadData * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v55);
      goto LABEL_34;
    }
  }

  return 0;
}

void sub_19BA64378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x590] = &a49;
  sub_19B8F0E84(&STACK[0x590]);
  sub_19B8750F8(a16);
  if (a65)
  {
    sub_19B8750F8(a65);
  }

  if (STACK[0x200])
  {
    sub_19B8750F8(STACK[0x200]);
  }

  STACK[0x590] = &STACK[0x218];
  sub_19B8F0E84(&STACK[0x590]);
  if (STACK[0x238])
  {
    sub_19B8750F8(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  _Unwind_Resume(a1);
}

void sub_19BA645F0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v8 = objc_msgSend_coordinates(a2, a2, a3, a4);
  v12 = objc_msgSend_count(v8, v9, v10, v11);
  v17 = *a3;
  v16 = a3[1];
  if (v17 == v16)
  {
LABEL_34:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v18 = v12;
  while (1)
  {
    v19 = *v17;
    if (!*v17)
    {
      goto LABEL_30;
    }

    v22 = v19 + 136;
    v20 = *(v19 + 136);
    v21 = *(v22 + 8);
    if (v18 > 1)
    {
      break;
    }

    if (v4)
    {
      if (v21 != v20)
      {
        v24 = v20 + 1;
LABEL_12:
        v25 = *v20;
        v26 = *v24;
        goto LABEL_18;
      }
    }

    else if (v21 != v20)
    {
      v20 = v21 - 2;
      v24 = v21 - 1;
      goto LABEL_12;
    }

    v25 = 0.0;
    v26 = 0.0;
LABEL_18:
    v38 = objc_msgSend_coordinates(a2, v13, v14, v15);
    Object = objc_msgSend_firstObject(v38, v39, v40, v41);
    objc_msgSend_latitude(Object, v43, v44, v45);
    if (vabdd_f64(v25, v46) < 0.0000001)
    {
      v47 = objc_msgSend_coordinates(a2, v13, v14, v15);
      v51 = objc_msgSend_firstObject(v47, v48, v49, v50);
      goto LABEL_20;
    }

LABEL_30:
    v17 += 2;
    if (v17 == v16)
    {
      goto LABEL_34;
    }
  }

  if (v21 == v20)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = *v20;
  }

  v27 = objc_msgSend_coordinates(a2, v13, v14, v15);
  v31 = objc_msgSend_firstObject(v27, v28, v29, v30);
  objc_msgSend_latitude(v31, v32, v33, v34);
  if (vabdd_f64(v23, v35) >= 0.0000001)
  {
    goto LABEL_30;
  }

  v36 = *(*v17 + 136);
  v37 = *(*v17 + 144) == v36 ? 0.0 : *(v36 + 8);
  v56 = objc_msgSend_coordinates(a2, v13, v14, v15);
  v60 = objc_msgSend_firstObject(v56, v57, v58, v59);
  objc_msgSend_longitude(v60, v61, v62, v63);
  if (vabdd_f64(v37, v64) >= 0.0000001)
  {
    goto LABEL_30;
  }

  v65 = *(*v17 + 144);
  v66 = v65 == *(*v17 + 136) ? 0.0 : *(v65 - 16);
  v67 = objc_msgSend_coordinates(a2, v13, v14, v15);
  v71 = objc_msgSend_lastObject(v67, v68, v69, v70);
  objc_msgSend_latitude(v71, v72, v73, v74);
  if (vabdd_f64(v66, v75) >= 0.0000001)
  {
    goto LABEL_30;
  }

  v76 = *(*v17 + 144);
  if (v76 == *(*v17 + 136))
  {
    v26 = 0.0;
  }

  else
  {
    v26 = *(v76 - 8);
  }

  v77 = objc_msgSend_coordinates(a2, v13, v14, v15);
  v51 = objc_msgSend_lastObject(v77, v78, v79, v80);
LABEL_20:
  objc_msgSend_longitude(v51, v52, v53, v54);
  if (vabdd_f64(v26, v55) >= 0.0000001)
  {
    goto LABEL_30;
  }

  v82 = *v17;
  v81 = v17[1];
  if (v81)
  {
    atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = 0;
  a1[1] = 0;
  if (v82)
  {
    if (v4)
    {
      sub_19B9F5C98(v82, 0);
    }

    else
    {
      v83 = (v82[18] - v82[17]) >> 4;
      if (v83 >= 2)
      {
        sub_19B9F5C98(v82, v83 - 2);
      }
    }

    CFAbsoluteTimeGetCurrent();
    operator new();
  }

  if (v81)
  {
    sub_19B8750F8(v81);
  }
}

void sub_19BA64948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    sub_19B8750F8(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA64988(float64x2_t *a1, void *a2, uint64_t *a3, void *a4, void *a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_UUIDString(a2, a2, a3, a4);
  v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
  sub_19B8759E8(&__p, v12);
  sub_19BA60818(v52, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!*a3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v19 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v20 = v52;
      if (v53 < 0)
      {
        v20 = v52[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
      *(__p.__r_.__value_.__r.__words + 4) = v20;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLTSP,generateWayPointsOnTheRoute,null geometry,trip,%{public}s", &__p, 0xCu);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
    {
      goto LABEL_38;
    }

    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v22 = v52;
    if (v53 < 0)
    {
      v22 = v52[0];
    }

    v54 = 136446210;
    v55 = v22;
    v23 = _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,generateWayPointsOnTheRoute,null geometry,trip,%{public}s", &v54, 12);
    sub_19B885924("Generic", 1, 0, 0, "static BOOL CLTripSegmentUtilities::generateWayPointsOnTheRoute(CLDistanceCalc &, NSUUID * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer> &, const std::vector<CLMapRoadPtr> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v23);
    goto LABEL_36;
  }

  if (*a4 == a4[1])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v24 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v25 = v52;
      if (v53 < 0)
      {
        v25 = v52[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
      *(__p.__r_.__value_.__r.__words + 4) = v25;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLTSP,generateWayPointsOnTheRoute,empty road vector,trip,%{public}s", &__p, 0xCu);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      goto LABEL_38;
    }

    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v27 = v52;
    if (v53 < 0)
    {
      v27 = v52[0];
    }

    v54 = 136446210;
    v55 = v27;
    v23 = _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,generateWayPointsOnTheRoute,empty road vector,trip,%{public}s", &v54, 12);
    sub_19B885924("Generic", 1, 0, 0, "static BOOL CLTripSegmentUtilities::generateWayPointsOnTheRoute(CLDistanceCalc &, NSUUID * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer> &, const std::vector<CLMapRoadPtr> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v23);
LABEL_36:
    if (v23 != &__p)
    {
      free(v23);
    }

LABEL_38:
    v28 = 0;
    goto LABEL_79;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v14 = *a4;
  v15 = **a4;
  if (v15)
  {
    v16 = v15[17];
    if (v15[18] == v16)
    {
      v17 = 0.0;
      v18 = 0.0;
    }

    else
    {
      v17 = *v16;
      v18 = v16[1];
    }

    v29 = sub_19B9F5C98(v15, 0);
    sub_19BA70ED0(a5, Current, v17, v18, v29);
    v14 = *a4;
  }

  memset(v51, 0, sizeof(v51));
  v49 = 0;
  v50 = 0;
  v30 = a4[1];
  if (v30 != v14)
  {
    v31 = 0;
    v32 = 1;
    do
    {
      v33 = *&v14[v31];
      v48 = v33;
      if (*(&v33 + 1))
      {
        atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (v33)
      {
        sub_19B8F30F0();
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v34 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v35 = v52;
        if (v53 < 0)
        {
          v35 = v52[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
        *(__p.__r_.__value_.__r.__words + 4) = v35;
        _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "CLTSP,generateWayPointsOnTheRoute,null road,trip,%{public}s", &__p, 0xCu);
      }

      v36 = sub_19B87DD40();
      if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
      {
        bzero(&__p, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v37 = v52;
        if (v53 < 0)
        {
          v37 = v52[0];
        }

        v54 = 136446210;
        v55 = v37;
        v38 = _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,generateWayPointsOnTheRoute,null road,trip,%{public}s", &v54, 12);
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLTripSegmentUtilities::generateWayPointsOnTheRoute(CLDistanceCalc &, NSUUID * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer> &, const std::vector<CLMapRoadPtr> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v38);
        if (v38 != &__p)
        {
          free(v38);
        }
      }

      if (*(&v48 + 1))
      {
        sub_19B8750F8(*(&v48 + 1));
      }

      v14 = *a4;
      v30 = a4[1];
      v39 = v32++ >= (v30 - *a4) >> 4;
      v31 += 2;
    }

    while (!v39);
  }

  v40 = *(v30 - 2);
  if (v40)
  {
    v41 = v40[18];
    v42 = v41 - v40[17];
    if (v42)
    {
      v43 = *(v41 - 16);
      v44 = *(v41 - 8);
    }

    else
    {
      v43 = 0.0;
      v44 = 0.0;
    }

    v45 = v42 >> 4;
    v46 = -1.0;
    if (v45 >= 2)
    {
      v46 = sub_19B9F5C98(v40, v45 - 2);
    }

    sub_19BA70ED0(a5, Current + 1.0, v43, v44, v46);
  }

  v28 = 1;
  if (v50)
  {
    sub_19B8750F8(v50);
  }

  __p.__r_.__value_.__r.__words[0] = v51;
  sub_19BA39F60(&__p);
LABEL_79:
  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  return v28;
}

void sub_19BA65B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA65C7C(uint64_t *a1, float64x2_t *a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 20.0;
  if (a7 >= 0.0)
  {
    v9 = a7;
  }

  memset(buf + 7, 0, 32);
  v13 = buf[0];
  v11[2] = 0.0;
  v11[4] = 0.0;
  v12 = 0;
  *v14 = buf[1];
  *&v14[15] = 0;
  v11[0] = v9 * v9 * 0.5;
  v11[1] = v11[0];
  v10 = a9 * a9;
  if (a9 <= 0.0)
  {
    v10 = -1.0;
  }

  v11[3] = v10;
  sub_19B9C1640(v11);
  sub_19B9F27E0();
}

uint64_t sub_19BA66898(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  buf[205] = *MEMORY[0x1E69E9840];
  if (a3 && objc_msgSend_count(a3, a2, a3, a4, a5))
  {
    if (a6 && objc_msgSend_count(a6, v14, v15, v16))
    {
      if (a4 && objc_msgSend_count(a4, v17, v18, v19))
      {
        v23 = objc_msgSend_now(MEMORY[0x1E695DF00], v20, v21, v22);
        v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (objc_msgSend_shouldRecordDataInFileForReplay(a7, v24, v25, v26))
        {
          objc_msgSend_addObject_(v103, v27, v23, v29);
          objc_msgSend_addObject_(v103, v30, a2, v31);
          objc_msgSend_addObject_(v103, v32, a3, v33);
          objc_msgSend_addObject_(v103, v34, a6, v35);
          objc_msgSend_addObject_(v103, v36, a4, v37);
        }

        v38 = objc_msgSend_UUIDString(a2, v27, v28, v29);
        v42 = objc_msgSend_UTF8String(v38, v39, v40, v41);
        sub_19B8759E8(&__s, v42);
        sub_19BA60818(&__p, &__s);
        if (qword_1EAFE5B00 != -1)
        {
          dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
        }

        if ((sub_19BA55AB8(qword_1EAFE5B10, &__s) & 1) == 0)
        {
          sub_19BA70F8C(buf);
        }

        *(a1 + 40) = objc_msgSend_shouldRecordDataInFileForReplay(a7, v43, v44, v45);
        *(a1 + 48) = objc_msgSend_tripSegmentRecorderLoggingDirectory(a7, v46, v47, v48);
        Object = objc_msgSend_firstObject(a6, v49, v50, v51);
        objc_msgSend_latitude(Object, v53, v54, v55);
        v57 = v56;
        objc_msgSend_longitude(Object, v58, v59, v60);
        sub_19B8F1EE8(&v109, v57, v61, 500.0);
        v107 = 0;
        v106 = 0;
        v108 = 0;
        memset(v105, 0, sizeof(v105));
        if (objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v62, v105, v114, 16))
        {
          sub_19B8F30F0();
        }

        if (v106 != v107)
        {
          objc_msgSend_iOSTime(Object, v63, v64, v65);
          v67 = v66;
          objc_msgSend_latitude(Object, v68, v69, v70);
          v72 = v71;
          objc_msgSend_longitude(Object, v73, v74, v75);
          v77 = v76;
          objc_msgSend_horizontalAccuracy(Object, v78, v79, v80);
          v82 = v81;
          objc_msgSend_course(Object, v83, v84, v85);
          v87 = v86;
          objc_msgSend_courseAccuracy(Object, v88, v89, v90);
          sub_19BA65C7C(&v104, a1, &v106, v67, v72, v77, v82, v87, v91);
        }

        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v100 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_DEBUG, "CLTSP,matchLocationsToRoute,no roads found within search radius", buf, 2u);
        }

        v101 = sub_19B87DD40();
        if (*(v101 + 160) > 1 || *(v101 + 164) > 1 || *(v101 + 168) > 1 || *(v101 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
          }

          LOWORD(v113) = 0;
          v102 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,matchLocationsToRoute,no roads found within search radius", &v113, 2);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v102);
          if (v102 != buf)
          {
            free(v102);
          }
        }

        buf[0] = &v106;
        sub_19B8F0E84(buf);
        if (v111 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        return 0;
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v97 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_19B873000, v97, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,waypoints is invalid", buf, 2u);
      }

      v98 = sub_19B87DD40();
      if ((*(v98 + 160) & 0x80000000) == 0 || (*(v98 + 164) & 0x80000000) == 0 || (*(v98 + 168) & 0x80000000) == 0 || *(v98 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        LOWORD(v113) = 0;
        v94 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,matchLocationsToRoute,waypoints is invalid", &v113, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v94);
LABEL_47:
        if (v94 != buf)
        {
          free(v94);
        }
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v95 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_19B873000, v95, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,tripLocations is invalid", buf, 2u);
      }

      v96 = sub_19B87DD40();
      if ((*(v96 + 160) & 0x80000000) == 0 || (*(v96 + 164) & 0x80000000) == 0 || (*(v96 + 168) & 0x80000000) == 0 || *(v96 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        LOWORD(v113) = 0;
        v94 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,matchLocationsToRoute,tripLocations is invalid", &v113, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v94);
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v92 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19B873000, v92, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,routeRoads is invalid", buf, 2u);
    }

    v93 = sub_19B87DD40();
    if ((*(v93 + 160) & 0x80000000) == 0 || (*(v93 + 164) & 0x80000000) == 0 || (*(v93 + 168) & 0x80000000) == 0 || *(v93 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v113) = 0;
      v94 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,matchLocationsToRoute,routeRoads is invalid", &v113, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v94);
      goto LABEL_47;
    }
  }

  return 0;
}

void sub_19BA681CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a65)
  {
    sub_19B8750F8(a65);
  }

  STACK[0x2D0] = &STACK[0x268];
  sub_19B8F0E84(&STACK[0x2D0]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  _Unwind_Resume(a1);
}

BOOL sub_19BA68324(float64x2_t *a1, int a2, double **a3, double *a4, double *a5, double *a6)
{
  v45[204] = *MEMORY[0x1E69E9840];
  *a5 = -1.0;
  *a6 = -1.0;
  if (a2 > 1)
  {
    v12 = *a4;
    v13 = a4[1];
    v14 = **a3;
    v15 = (*a3)[1];
    *buf = 0.0;
    v45[0] = 0.0;
    sub_19BA0BE88(a1, buf, v45, &v41, v12, v13, 0.0, v14, v15, 0.0);
    v16 = 0;
    v18 = *buf;
    v17 = v45[0];
    v19 = 0.0;
    v20 = 0.0;
    while (1)
    {
      v21 = *a4;
      v22 = a4[1];
      v23 = &(*a3)[v16 / 8];
      v24 = v23[2];
      v25 = v23[3];
      v41 = 0.0;
      v42[0] = 0.0;
      sub_19BA0BE88(a1, &v41, v42, &v43, v21, v22, 0.0, v24, v25, 0.0);
      v26 = v41;
      v27 = v42[0];
      v28 = (v18 - v41) * (v18 - v41) + (v17 - v42[0]) * (v17 - v42[0]);
      v29 = 0.0 - v18;
      if (v28 < 0.001)
      {
        break;
      }

      v31 = ((0.0 - v17) * (v42[0] - v17) + v29 * (v41 - v18)) / v28;
      if (v31 >= 0.0)
      {
        if (v31 <= 1.0)
        {
          v30 = (0.0 - (v18 + (v41 - v18) * v31)) * (0.0 - (v18 + (v41 - v18) * v31));
          v32 = 0.0 - (v17 + (v42[0] - v17) * v31);
          goto LABEL_5;
        }

        v33 = (0.0 - v41) * (0.0 - v41) + (0.0 - v42[0]) * (0.0 - v42[0]);
        v31 = 1.0;
      }

      else
      {
        v33 = v29 * v29 + (0.0 - v17) * (0.0 - v17);
        v31 = 0.0;
      }

LABEL_10:
      v34 = sqrt(v28);
      v35 = sqrt(v33);
      if (*a5 < 0.0 || v35 < *a5)
      {
        *a5 = v35;
        v20 = v19 + v34 * v31;
      }

      v19 = v19 + v34;
      v16 += 16;
      v17 = v27;
      v18 = v26;
      if (16 * a2 - 16 == v16)
      {
        v39 = v20 / v19;
        if (v19 < 0.001)
        {
          v39 = 0.0;
        }

        *a6 = v39;
        return a2 > 1;
      }
    }

    v30 = v29 * v29;
    v31 = 0.0;
    v32 = 0.0 - v17;
LABEL_5:
    v33 = v30 + v32 * v32;
    goto LABEL_10;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
  }

  v36 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
  }

  v37 = sub_19B87DD40();
  if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EF60);
    }

    LOWORD(v41) = 0;
    v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", &v41, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = CLLocationCoordinate2D]", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  return a2 > 1;
}

uint64_t sub_19BA686C4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  buf[205] = *MEMORY[0x1E69E9840];
  if (a3 && objc_msgSend_count(a3, a2, a3, a4))
  {
    if (a5 && objc_msgSend_count(a5, v10, v11, v12))
    {
      v16 = objc_msgSend_now(MEMORY[0x1E695DF00], v13, v14, v15);
      v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (objc_msgSend_shouldRecordDataInFileForReplay(a6, v17, v18, v19))
      {
        objc_msgSend_addObject_(v92, v20, v16, v22);
        objc_msgSend_addObject_(v92, v23, a2, v24);
        objc_msgSend_addObject_(v92, v25, a3, v26);
        objc_msgSend_addObject_(v92, v27, a5, v28);
      }

      v29 = objc_msgSend_UUIDString(a2, v20, v21, v22);
      v33 = objc_msgSend_UTF8String(v29, v30, v31, v32);
      sub_19B8759E8(&__s, v33);
      sub_19BA60818(&__p, &__s);
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      if ((sub_19BA55AB8(qword_1EAFE5B10, &__s) & 1) == 0)
      {
        sub_19BA70F8C(buf);
      }

      *(a1 + 40) = objc_msgSend_shouldRecordDataInFileForReplay(a6, v34, v35, v36);
      *(a1 + 48) = objc_msgSend_tripSegmentRecorderLoggingDirectory(a6, v37, v38, v39);
      Object = objc_msgSend_firstObject(a5, v40, v41, v42);
      objc_msgSend_latitude(Object, v44, v45, v46);
      v48 = v47;
      objc_msgSend_longitude(Object, v49, v50, v51);
      sub_19B8F1EE8(&v100, v48, v52, 500.0);
      v97 = 0;
      v98 = 0;
      v99 = 0;
      memset(v96, 0, sizeof(v96));
      if (objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v53, v96, v105, 16))
      {
        sub_19B8F30F0();
      }

      if (v97 != v98)
      {
        objc_msgSend_iOSTime(Object, v54, v55, v56);
        v58 = v57;
        objc_msgSend_latitude(Object, v59, v60, v61);
        v63 = v62;
        objc_msgSend_longitude(Object, v64, v65, v66);
        v68 = v67;
        objc_msgSend_horizontalAccuracy(Object, v69, v70, v71);
        v73 = v72;
        objc_msgSend_course(Object, v74, v75, v76);
        v78 = v77;
        objc_msgSend_courseAccuracy(Object, v79, v80, v81);
        sub_19BA65C7C(&v95, a1, &v97, v58, v63, v68, v73, v78, v82);
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v89 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_DEBUG, "CLTSP,matchLocationsToRoute,no roads found within search radius", buf, 2u);
      }

      v90 = sub_19B87DD40();
      if (*(v90 + 160) > 1 || *(v90 + 164) > 1 || *(v90 + 168) > 1 || *(v90 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        LOWORD(v104) = 0;
        v91 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,matchLocationsToRoute,no roads found within search radius", &v104, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v91);
        if (v91 != buf)
        {
          free(v91);
        }
      }

      buf[0] = &v97;
      sub_19B8F0E84(buf);
      if (v102 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v86 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,tripLocations is invalid", buf, 2u);
    }

    v87 = sub_19B87DD40();
    if ((*(v87 + 160) & 0x80000000) == 0 || (*(v87 + 164) & 0x80000000) == 0 || (*(v87 + 168) & 0x80000000) == 0 || *(v87 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v104) = 0;
      v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,matchLocationsToRoute,tripLocations is invalid", &v104, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v85);
LABEL_35:
      if (v85 != buf)
      {
        free(v85);
      }
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v83 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,routeRoads is invalid", buf, 2u);
    }

    v84 = sub_19B87DD40();
    if ((*(v84 + 160) & 0x80000000) == 0 || (*(v84 + 164) & 0x80000000) == 0 || (*(v84 + 168) & 0x80000000) == 0 || *(v84 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      LOWORD(v104) = 0;
      v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,matchLocationsToRoute,routeRoads is invalid", &v104, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::matchLocationsToRoute(NSUUID * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v85);
      goto LABEL_35;
    }
  }

  return 0;
}

void sub_19BA69670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, char *a61)
{
  if (a24)
  {
    sub_19B8750F8(a24);
  }

  a61 = &a42;
  sub_19B8F0E84(&a61);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

CLTripSegmentRoadData *sub_19BA69760(uint64_t **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v6 = *a1;
  v7 = (*a1)[17];
  v8 = (*a1)[18];
  if (((v8 - v7) >> 4) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v7 && v10 < ((v8 - v7) >> 4))
      {
        v11 = (v7 + v9);
        v12 = [CLLocationCoordinate alloc];
        v16 = objc_msgSend_initWithLatitude_longitude_(v12, v13, v14, v15, *v11, v11[1]);
        objc_msgSend_addObject_(v5, v17, v16, v18);
        v6 = *a1;
      }

      ++v10;
      v7 = v6[17];
      v8 = v6[18];
      v9 += 16;
    }

    while (v10 < ((v8 - v7) >> 4));
  }

  v19 = [CLTripSegmentRoadData alloc];
  v21 = objc_msgSend_initWithRoadID_clRoadID_roadClass_formOfWay_coordinates_(v19, v20, **a1, (*a1)[1], *(*a1 + 5), *(*a1 + 6), v5);

  return v21;
}

uint64_t sub_19BA6984C(float64x2_t *a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v279 = *MEMORY[0x1E69E9840];
  if (!a6 || !objc_msgSend_count(a6, a2, a3, a4))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v54 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "CLTSP,getWaypointsSubsetFromSnapPoint,routeRoads is invalid", buf, 2u);
    }

    v55 = sub_19B87DD40();
    if ((*(v55 + 160) & 0x80000000) != 0 && (*(v55 + 164) & 0x80000000) != 0 && (*(v55 + 168) & 0x80000000) != 0 && !*(v55 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v258 = 0;
    v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getWaypointsSubsetFromSnapPoint,routeRoads is invalid", v258, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v56);
    goto LABEL_49;
  }

  if (!a4 || !a5)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v57 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_ERROR, "CLTSP,getWaypointsSubsetFromSnapPoint,snap information is nil", buf, 2u);
    }

    v58 = sub_19B87DD40();
    if ((*(v58 + 160) & 0x80000000) != 0 && (*(v58 + 164) & 0x80000000) != 0 && (*(v58 + 168) & 0x80000000) != 0 && !*(v58 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v258 = 0;
    v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getWaypointsSubsetFromSnapPoint,snap information is nil", v258, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v56);
    goto LABEL_49;
  }

  if (!a7 || !objc_msgSend_count(a7, v15, v16, v17))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v59 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "CLTSP,getWaypointsSubsetFromSnapPoint,waypoint is nil or zero", buf, 2u);
    }

    v60 = sub_19B87DD40();
    if ((*(v60 + 160) & 0x80000000) != 0 && (*(v60 + 164) & 0x80000000) != 0 && (*(v60 + 168) & 0x80000000) != 0 && !*(v60 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    *v258 = 0;
    v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getWaypointsSubsetFromSnapPoint,waypoint is nil or zero", v258, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v56);
LABEL_49:
    if (v56 != buf)
    {
      free(v56);
    }

    return 0;
  }

  v227 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_shouldRecordDataInFileForReplay(a8, v18, v19, v20))
  {
    objc_msgSend_addObject_(v227, v21, a2, v23);
    objc_msgSend_addObject_(v227, v24, a6, v25);
    objc_msgSend_addObject_(v227, v26, a7, v27);
  }

  v222 = objc_msgSend_now(MEMORY[0x1E695DF00], v21, v22, v23);
  v31 = objc_msgSend_UUIDString(a2, v28, v29, v30);
  v35 = objc_msgSend_UTF8String(v31, v32, v33, v34);
  sub_19B8759E8(&__s, v35);
  v226 = a8;
  sub_19BA60818(v255, &__s);
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, v36, &v251, v271, 16);
  obj = a7;
  v224 = a4;
  v225 = a2;
  v41 = 0;
  if (v40)
  {
    v42 = *v252;
    while (2)
    {
      v43 = 0;
      v44 = v41;
      v41 += v40;
      do
      {
        if (*v252 != v42)
        {
          objc_enumerationMutation(a6);
        }

        v45 = *(*(&v251 + 1) + 8 * v43);
        v46 = objc_msgSend_roadID(v45, v37, v38, v39);
        if (v46 == objc_msgSend_roadID(a5, v47, v48, v49))
        {
          v50 = objc_msgSend_clRoadID(v45, v37, v38, v39);
          if (v50 == objc_msgSend_clRoadID(a5, v51, v52, v53))
          {
            v41 = v44;
            goto LABEL_54;
          }
        }

        ++v44;
        ++v43;
      }

      while (v40 != v43);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, v37, &v251, v271, 16);
      if (v40)
      {
        continue;
      }

      break;
    }
  }

LABEL_54:
  if (objc_msgSend_count(a6, v37, v38, v39) <= v41)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v118 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v118, OS_LOG_TYPE_DEBUG, "CLTSP,getWaypointsSubsetFromSnapPoint,matched on a road not in route", buf, 2u);
    }

    v119 = sub_19B87DD40();
    if (*(v119 + 160) > 1 || *(v119 + 164) > 1 || *(v119 + 168) > 1 || *(v119 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      *v258 = 0;
      v123 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,getWaypointsSubsetFromSnapPoint,matched on a road not in route", v258, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v123);
      if (v123 != buf)
      {
        free(v123);
      }
    }

    shouldRecordDataInFileForReplay = objc_msgSend_shouldRecordDataInFileForReplay(v226, v120, v121, v122);
    sub_19BA60970(a1, shouldRecordDataInFileForReplay, 18, v227);
    v61 = 0;
  }

  else
  {
    v66 = objc_msgSend_count(a6, v63, v64, v65);
    v68 = objc_msgSend_subarrayWithRange_(a6, v67, v41, v66 - v41);
    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v247, v270, 16);
    if (v73)
    {
      v74 = *v248;
      v75 = 1;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v248 != v74)
          {
            objc_enumerationMutation(v68);
          }

          objc_msgSend_setSequenceNumber_(*(*(&v247 + 1) + 8 * i), v70, v71, v72, ++v75);
        }

        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v247, v270, 16);
      }

      while (v73);
    }

    __p = 0;
    v245 = 0;
    v246 = 0;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v240, v269, 16);
    if (v80)
    {
      v81 = *v241;
      do
      {
        for (j = 0; j != v80; ++j)
        {
          if (*v241 != v81)
          {
            objc_enumerationMutation(v68);
          }

          v83 = *(*(&v240 + 1) + 8 * j);
          v236 = 0u;
          v237 = 0u;
          v238 = 0u;
          v239 = 0u;
          v84 = objc_msgSend_coordinates(v83, v77, v78, v79);
          v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v236, v268, 16);
          if (v86)
          {
            v87 = *v237;
LABEL_69:
            v88 = 0;
            while (1)
            {
              if (*v237 != v87)
              {
                objc_enumerationMutation(v84);
              }

              v89 = *(*(&v236 + 1) + 8 * v88);
              objc_msgSend_latitude(v89, v77, v78, v79);
              v91 = v90;
              objc_msgSend_longitude(v89, v92, v93, v94);
              *buf = CLLocationCoordinate2DMake(v91, v95);
              sub_19B8F1158(&__p, buf);
              if ((v245 - __p) > 0x2580)
              {
                break;
              }

              if (v86 == ++v88)
              {
                v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v77, &v236, v268, 16);
                if (v86)
                {
                  goto LABEL_69;
                }

                break;
              }
            }
          }
        }

        v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v77, &v240, v269, 16);
      }

      while (v80);
    }

    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    v96 = 0;
    v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v77, &v232, v267, 16);
    if (v100)
    {
      v101 = *v233;
      do
      {
        v102 = 0;
        v103 = v96 + 1;
        v223 = v96 + v100;
        do
        {
          if (*v233 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v104 = *(*(&v232 + 1) + 8 * v102);
          *v258 = 0xBFF0000000000000;
          v105 = __p;
          v106 = v245;
          objc_msgSend_latitude(v104, v97, v98, v99);
          v108 = v107;
          objc_msgSend_longitude(v104, v109, v110, v111);
          *buf = CLLocationCoordinate2DMake(v108, v112);
          if (sub_19BA68324(a1, (v106 - v105) >> 4, &__p, buf, v258, &v231))
          {
            v113 = *v258;
            if (*v258 < 0.0000001)
            {
              v96 = v103;
              goto LABEL_117;
            }
          }

          else
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
            }

            v114 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v114, OS_LOG_TYPE_ERROR, "CLTSP,getWaypointsSubsetFromSnapPoint,findClosestPointOnRoad returned false", buf, 2u);
            }

            v115 = sub_19B87DD40();
            if ((*(v115 + 160) & 0x80000000) == 0 || (*(v115 + 164) & 0x80000000) == 0 || (*(v115 + 168) & 0x80000000) == 0 || *(v115 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
              }

              v230 = 0;
              v116 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getWaypointsSubsetFromSnapPoint,findClosestPointOnRoad returned false", &v230, 2);
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v116);
              if (v116 != buf)
              {
                free(v116);
              }
            }
          }

          ++v102;
          ++v103;
        }

        while (v100 != v102);
        v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v97, &v232, v267, 16, v113);
        v100 = v117;
        v96 = v223;
      }

      while (v117);
    }

LABEL_117:
    if (objc_msgSend_count(obj, v97, v98, v99) > v96 && (v128 = objc_msgSend_count(obj, v125, v126, v127), v130 = objc_msgSend_subarrayWithRange_(obj, v129, v96, v128 - v96), (v134 = objc_msgSend_mutableCopy(v130, v131, v132, v133)) != 0))
    {
      v135 = [CLTripSegmentLocation alloc];
      objc_msgSend_latitude(v224, v136, v137, v138);
      v140 = v139;
      objc_msgSend_longitude(v224, v141, v142, v143);
      v148 = objc_msgSend_initWithLatitude_longitude_altitude_(v135, v144, v145, v146, v140, v147, 0.0);
      objc_msgSend_course(v224, v149, v150, v151);
      objc_msgSend_updateCourse_andCourseAccuracy_(v148, v152, v153, v154);
      objc_msgSend_insertObject_atIndex_(v134, v155, v148, 0);
      v156 = [CLTripSegmentOutputData alloc];
      v158 = objc_msgSend_initWithTripSegmentID_isFinalPart_startDate_endDate_duration_modeOfTransport_distance_distanceUnc_tripLocations_routeRoads_(v156, v157, v225, 1, v222, v222, 1, v134, -1.0, 0.0, 10.0, v68);
      (*(a9 + 16))(a9, v158);
      if (objc_msgSend_shouldRecordDataInFileForReplay(v226, v159, v160, v161))
      {
        objc_msgSend_addObject_(v227, v162, v158, v164);
        v168 = objc_msgSend_shouldRecordDataInFileForReplay(v226, v165, v166, v167);
        sub_19BA60970(a1, v168, 18, v227);
      }

      v169 = objc_msgSend_now(MEMORY[0x1E695DF00], v162, v163, v164);
      objc_msgSend_timeIntervalSinceDate_(v169, v170, v222, v171);
      v173 = v172;
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v174 = v173 * 1000.0;
      v175 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        if (v256 >= 0)
        {
          v179 = v255;
        }

        else
        {
          v179 = v255[0];
        }

        v180 = objc_msgSend_modeOfTransport(v158, v176, v177, v178);
        v184 = objc_msgSend_routeRoads(v158, v181, v182, v183);
        v188 = objc_msgSend_count(v184, v185, v186, v187);
        v192 = objc_msgSend_count(v134, v189, v190, v191);
        *buf = 136447234;
        *&buf[4] = v179;
        *&buf[12] = 1026;
        *&buf[14] = v180;
        v273 = 1026;
        v274 = v188;
        v275 = 1026;
        v276 = v192;
        v277 = 2050;
        v278 = v174;
        _os_log_impl(&dword_19B873000, v175, OS_LOG_TYPE_DEFAULT, "CLTSP,getWaypointsSubsetFromSnapPoint,output,routeID,%{public}s,modeOfTransport,%{public}d,routeRoadsCount,%{public}d,wpCounts,%{public}d,processingTimeMSec,%{public}.1lf", buf, 0x28u);
      }

      v193 = sub_19B87DD40();
      if (*(v193 + 160) > 1 || *(v193 + 164) > 1 || *(v193 + 168) > 1 || *(v193 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        v199 = qword_1EAFE46E8;
        if (v256 >= 0)
        {
          v200 = v255;
        }

        else
        {
          v200 = v255[0];
        }

        v201 = objc_msgSend_modeOfTransport(v158, v196, v197, v198);
        v205 = objc_msgSend_routeRoads(v158, v202, v203, v204);
        v209 = objc_msgSend_count(v205, v206, v207, v208);
        v213 = objc_msgSend_count(v134, v210, v211, v212);
        *v258 = 136447234;
        *&v258[4] = v200;
        v259 = 1026;
        v260 = v201;
        v261 = 1026;
        v262 = v209;
        v263 = 1026;
        v264 = v213;
        v265 = 2050;
        v266 = v174;
        v214 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v199, 0, "CLTSP,getWaypointsSubsetFromSnapPoint,output,routeID,%{public}s,modeOfTransport,%{public}d,routeRoadsCount,%{public}d,wpCounts,%{public}d,processingTimeMSec,%{public}.1lf", v258, 40);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v214);
        if (v214 != buf)
        {
          free(v214);
        }
      }

      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19B9545AC(qword_1EAFE5B10, v225, v194, v195);

      v61 = 1;
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
      }

      v215 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v215, OS_LOG_TYPE_DEBUG, "CLTSP,getWaypointsSubsetFromSnapPoint,waypoint subset is nil", buf, 2u);
      }

      v216 = sub_19B87DD40();
      if (*(v216 + 160) > 1 || *(v216 + 164) > 1 || *(v216 + 168) > 1 || *(v216 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
        }

        *v258 = 0;
        v220 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,getWaypointsSubsetFromSnapPoint,waypoint subset is nil", v258, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentProcessor::getWaypointsSubsetFromSnapPoint(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, CLTripSegmentLocation * _Nonnull, CLTripSegmentRoadData * _Nonnull, NSArray<CLTripSegmentRoadData *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v220);
        if (v220 != buf)
        {
          free(v220);
        }
      }

      v221 = objc_msgSend_shouldRecordDataInFileForReplay(v226, v217, v218, v219);
      sub_19BA60970(a1, v221, 13, v227);
      v61 = 0;
    }

    if (__p)
    {
      v245 = __p;
      operator delete(__p);
    }
  }

  if (v256 < 0)
  {
    operator delete(v255[0]);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  return v61;
}

void sub_19BA6A944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA6AA10(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, double a8)
{
  v64 = *MEMORY[0x1E69E9840];
  v13 = objc_msgSend_UUIDString(a2, a2, a3, a4);
  v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
  sub_19B8759E8(&__s, v17);
  sub_19BA60818(v51, &__s);
  if (*&a8 > -1 && ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a8 - 1) < 0xFFFFFFFFFFFFFLL)
  {
    v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (objc_msgSend_shouldRecordDataInFileForReplay(a6, v20, v21, v22))
    {
      objc_msgSend_addObject_(v48, v23, a2, v25);
      if (a4 && objc_msgSend_count(a4, v26, v27, v28))
      {
        objc_msgSend_addObject_(v48, v26, a4, v28);
      }

      if (a5 && objc_msgSend_count(a5, v26, v27, v28))
      {
        objc_msgSend_addObject_(v48, v26, a5, v28);
      }

      v29 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v26, v27, v28, a8);
      objc_msgSend_addObject_(v48, v30, v29, v31);
    }

    Object = objc_msgSend_firstObject(a4, v23, v24, v25);
    objc_msgSend_iOSTime(Object, v33, v34, v35);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if ((sub_19BA55AB8(qword_1EAFE5B10, &__s) & 1) == 0)
    {
      sub_19BA70F8C(&__p);
    }

    *(a1 + 40) = objc_msgSend_shouldRecordDataInFileForReplay(a6, v36, v37, v38);
    *(a1 + 48) = objc_msgSend_tripSegmentRecorderLoggingDirectory(a6, v39, v40, v41);
    memset(&v54, 0, sizeof(v54));
    v55 = 0;
    v56 = 0x3FE0000000000000;
    v57 = 0;
    v58 = xmmword_19BA89700;
    v59 = 1;
    v60 = xmmword_19BA89710;
    v61 = 1;
    v62 = 0;
    sub_19B8759E8(&__p, "PropagateLocations");
    sub_19BA5D180(&__p, a6, &v54, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_19B9E080C();
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v42 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v43 = v51;
    if (v52 < 0)
    {
      v43 = v51[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136446466;
    *(__p.__r_.__value_.__r.__words + 4) = v43;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = a8;
    _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocationForward,tripID,%{public}s,invalid distance,%{public}.2lf", &__p, 0x16u);
  }

  v44 = sub_19B87DD40();
  if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    v45 = v51;
    if (v52 < 0)
    {
      v45 = v51[0];
    }

    LODWORD(v54.__r_.__value_.__l.__data_) = 136446466;
    *(v54.__r_.__value_.__r.__words + 4) = v45;
    WORD2(v54.__r_.__value_.__r.__words[1]) = 2050;
    *(&v54.__r_.__value_.__r.__words[1] + 6) = a8;
    v46 = _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,propagateLocationForward,tripID,%{public}s,invalid distance,%{public}.2lf", &v54, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::propagateLocationForward(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nullable, NSArray<CLTripSegmentRoadData *> * _Nullable, const double, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v46);
    if (v46 != &__p)
    {
      free(v46);
    }
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_19BA6C7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a65 = &STACK[0x270];
  sub_19B8F0E84(&a65);
  a65 = &a40;
  sub_19B8F0E84(&a65);
  a65 = &a43;
  sub_19B8F0E84(&a65);
  if (a47)
  {
    sub_19B8750F8(a47);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  _Unwind_Resume(a1);
}

void sub_19BA6C9AC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_shouldRecordDataInFileForReplay(a5, v12, v13, v14))
  {
    objc_msgSend_addObject_(v11, v15, a2, v17);
    if (a3)
    {
      if (objc_msgSend_count(a3, v15, v16, v17))
      {
        objc_msgSend_addObject_(v11, v15, a3, v17);
      }
    }
  }

  v18 = objc_msgSend_UUIDString(a2, v15, v16, v17);
  v22 = objc_msgSend_UTF8String(v18, v19, v20, v21);
  sub_19B8759E8(&__s, v22);
  sub_19BA60818(&v38, &__s);
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  if ((sub_19BA55AB8(qword_1EAFE5B10, &__s) & 1) == 0)
  {
    sub_19BA70F8C(&__p);
  }

  *(a1 + 40) = objc_msgSend_shouldRecordDataInFileForReplay(a5, v23, v24, v25);
  *(a1 + 48) = objc_msgSend_tripSegmentRecorderLoggingDirectory(a5, v26, v27, v28);
  memset(&v29, 0, sizeof(v29));
  v30 = 0;
  v31 = 0x3FE0000000000000;
  v32 = 0;
  v33 = xmmword_19BA89700;
  v34 = 1;
  v35 = xmmword_19BA89710;
  v36 = 1;
  v37 = 0;
  sub_19B8759E8(&__p, "generateWaypointsOnTheRoute");
  sub_19BA5D180(&__p, a5, &v29, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_19B9E080C();
}

void sub_19BA6D2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  a52 = &a14;
  sub_19B8F0E84(&a52);
  if (a18)
  {
    sub_19B8750F8(a18);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA6D394(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a4 && objc_msgSend_count(a4, a2, a3, a4))
  {
    v44 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13);
    if (objc_msgSend_shouldRecordDataInFileForReplay(a5, v14, v15, v16))
    {
      objc_msgSend_addObject_(v44, v17, a2, v19);
      objc_msgSend_addObject_(v44, v20, a4, v21);
    }

    Object = objc_msgSend_firstObject(a4, v17, v18, v19);
    objc_msgSend_iOSTime(Object, v23, v24, v25);
    v29 = objc_msgSend_UUIDString(a2, v26, v27, v28);
    v33 = objc_msgSend_UTF8String(v29, v30, v31, v32);
    sub_19B8759E8(&__s, v33);
    sub_19BA60818(&v54, &__s);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if ((sub_19BA55AB8(qword_1EAFE5B10, &__s) & 1) == 0)
    {
      sub_19BA70F8C(&__p);
    }

    *(a1 + 40) = objc_msgSend_shouldRecordDataInFileForReplay(a5, v34, v35, v36);
    *(a1 + 48) = objc_msgSend_tripSegmentRecorderLoggingDirectory(a5, v37, v38, v39);
    memset(&v45, 0, sizeof(v45));
    v46 = 0;
    v47 = 0x3FE0000000000000;
    v48 = 0;
    v49 = xmmword_19BA89700;
    v50 = 1;
    v51 = xmmword_19BA89710;
    v52 = 1;
    v53 = 0;
    sub_19B8759E8(&__p, "getMatchedLocationCandidates");
    sub_19BA5D180(&__p, a5, &v45, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_19B9E080C();
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v40 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute,tripLocations is invalid", &__p, 2u);
  }

  v41 = sub_19B87DD40();
  if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(v45.__r_.__value_.__l.__data_) = 0;
    v42 = _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,matchLocationsToRoute,tripLocations is invalid", &v45, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::getMatchedLocationCandidates(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nullable, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v42);
    if (v42 != &__p)
    {
      free(v42);
    }
  }

  return 0;
}

void sub_19BA6DFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA6E0B0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a3 && objc_msgSend_count(a3, a2, a3, a4) > 1)
  {
    if (objc_msgSend_shouldRecordDataInFileForReplay(a4, v8, v9, v10))
    {
      sub_19B87BBB4();
      v14 = sub_19B93CCA4();
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = v15;
    if (v14)
    {
      objc_msgSend_setValue_forKey_(v15, v16, a2, @"ConstructRouteFromWaypoints_RouteID");
      objc_msgSend_setValue_forKey_(v19, v20, a3, @"ConstructRouteFromWaypoints_InputWaypoints");
    }

    v36 = objc_msgSend_now(MEMORY[0x1E695DF00], v16, v17, v18);
    objc_msgSend_timeIntervalSinceReferenceDate(v36, v21, v22, v23);
    v27 = objc_msgSend_UUIDString(a2, v24, v25, v26);
    v31 = objc_msgSend_UTF8String(v27, v28, v29, v30);
    sub_19B8759E8(&__s, v31);
    sub_19BA60818(&v47, &__s);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if ((sub_19BA55AB8(qword_1EAFE5B10, &__s) & 1) == 0)
    {
      sub_19BA70F8C(&buf);
    }

    *(a1 + 40) = v14;
    *(a1 + 48) = objc_msgSend_tripSegmentRecorderLoggingDirectory(a4, v32, v33, v34);
    memset(&__p, 0, sizeof(__p));
    v39 = 0;
    v40 = 0x3FE0000000000000;
    v41 = 0;
    v42 = xmmword_19BA89700;
    v43 = 1;
    v44 = xmmword_19BA89710;
    v45 = 1;
    v46 = 0;
    sub_19B8759E8(&buf, "ConstructRouteFromWaypoints");
    sub_19BA5D180(&buf, a4, &__p, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_19B9E080C();
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
  }

  v11 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteFromWaypoints,insufficient waypoints data", &buf, 2u);
  }

  v12 = sub_19B87DD40();
  if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6EF40);
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v13 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,constructRouteFromWaypoints,insufficient waypoints data", &__p, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentProcessor::constructRouteFromWaypoints(NSUUID * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentProcessorOptions * _Nonnull, TripSegmentOutputDataHandler _Nonnull)", "CoreLocation: %s\n", v13);
    if (v13 != &buf)
    {
      free(v13);
    }
  }

  return 0;
}

void sub_19BA700E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, std::__shared_weak_count *a62, void *__p)
{
  STACK[0x3A0] = &a45;
  sub_19B8F0E84(&STACK[0x3A0]);
  STACK[0x3A0] = &a58;
  sub_19B8F0E84(&STACK[0x3A0]);
  if (a62)
  {
    sub_19B8750F8(a62);
  }

  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

os_log_t sub_19BA7031C()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

std::string *sub_19BA7034C(void *a1, const std::string *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    if (!a1[1])
    {
      goto LABEL_16;
    }
  }

  else if (!*(a1 + 23))
  {
LABEL_16:
    *(v3 + 3) = CFAbsoluteTimeGetCurrent();
    v3[4] = 0xBFF0000000000000;
    v9 = mach_continuous_time();
    *(v3 + 5) = sub_19B994BF4(v9);
    sub_19BA3A418((v3 + 6));
    v3[185] = 0;
    *(v3 + 181) = 0u;
    *(v3 + 183) = 0u;
    *(v3 + 177) = 0u;
    *(v3 + 179) = 0u;
    *(v3 + 173) = 0u;
    *(v3 + 175) = 0u;
    result = v3[186];
    if (result)
    {

      return sub_19B99EE80(result, v2);
    }

    return result;
  }

  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v5 != size)
  {
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  if (v7 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  result = memcmp(a1, a2, v5);
  if (result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_19BA70434(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

id *sub_19BA70474(void *a1, const char *a2, const char *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *a3 = 0;
  v51 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v47, v52, 16);
  if (v9)
  {
    v10 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(a1);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        if (objc_msgSend_referenceFrame(v12, v6, v7, v8) == 2)
        {
          ++*a2;
          continue;
        }

        objc_msgSend_latitude(v12, v6, v7, v8);
        v14 = v13;
        objc_msgSend_longitude(v12, v15, v16, v17);
        v19 = v18;
        objc_msgSend_horizontalAccuracy(v12, v20, v21, v22);
        v24 = v23;
        objc_msgSend_latitude(v12, v25, v26, v27);
        v46 = v28;
        objc_msgSend_longitude(v12, v29, v30, v31);
        v45 = v32;
        objc_msgSend_horizontalAccuracy(v12, v33, v34, v35);
        v44 = v36;
        v40 = objc_msgSend_referenceFrame(v12, v37, v38, v39);
        v41 = sub_19B94960C(&v51, v40, &v46, &v45, &v44, 5, v14, v19, v24);
        v42 = a3;
        if (v41 != 1)
        {
          if (v41 != 2)
          {
            continue;
          }

          objc_msgSend_updateLatitude_longitude_horizontalAccuracy_referenceFrame_(v12, v6, 2, v8, v46, v45, v44);
          v42 = a2;
        }

        ++*v42;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v6, &v47, v52, 16);
    }

    while (v9);
  }

  return sub_19B9495D4(&v51);
}

void sub_19BA70654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_19B9495D4(va);
  _Unwind_Resume(a1);
}

void *sub_19BA7068C(void *a1)
{
  v2 = a1[74];
  if (v2)
  {
    a1[75] = v2;
    operator delete(v2);
  }

  v3 = a1[71];
  if (v3)
  {
    a1[72] = v3;
    operator delete(v3);
  }

  v4 = a1[63];
  if (v4)
  {
    a1[64] = v4;
    operator delete(v4);
  }

  v5 = a1[19];
  if (v5)
  {
    a1[20] = v5;
    operator delete(v5);
  }

  return a1;
}

os_log_t sub_19BA706F0()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19BA70740(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6EF90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19BA70794(uint64_t a1)
{
  v2 = (a1 + 72);
  sub_19B9A3E4C(&v2);
  v2 = (a1 + 48);
  sub_19B8F1C84(&v2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

id sub_19BA707FC(uint64_t ***a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = *v3;
    v9 = v3[1];
    while (v8 != v9)
    {
      if (*v8)
      {
        v10 = sub_19B94934C(*v8, 1);
        objc_msgSend_addObject_(v7, v11, v10, v12);
      }

      v8 += 2;
    }

    objc_msgSend_addObjectsFromArray_(v2, v5, v7, v6);
    v3 += 3;
  }

  return v2;
}

void *sub_19BA708AC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v112 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_count(a1, a2, a3, a4))
  {
    return 0;
  }

  v108[0] = 0;
  v108[1] = 0;
  v107 = v108;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v9, &v103, v111, 16);
  if (v13)
  {
    v95 = *v104;
    do
    {
      v14 = 0;
      v96 = v13;
      do
      {
        if (*v104 != v95)
        {
          objc_enumerationMutation(a1);
        }

        v15 = *(*(&v103 + 1) + 8 * v14);
        objc_msgSend_getLength(v15, v10, v11, v12);
        v97 = v14;
        if (v16 > 0.0)
        {
          for (i = 0; ; ++i)
          {
            v18 = objc_msgSend_coordinates(v15, v10, v11, v12);
            if (objc_msgSend_count(v18, v19, v20, v21) - 1 <= i)
            {
              break;
            }

            __p = 0;
            v101 = 0;
            v102 = 0;
            v99 = 0uLL;
            v22 = objc_msgSend_coordinates(v15, v10, v11, v12);
            v25 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, i, v24);
            objc_msgSend_latitude(v25, v26, v27, v28);
            *&v99 = v29;
            v33 = objc_msgSend_coordinates(v15, v30, v31, v32);
            v36 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, i, v35);
            objc_msgSend_longitude(v36, v37, v38, v39);
            *(&v99 + 1) = v40;
            v98 = 0uLL;
            v44 = objc_msgSend_coordinates(v15, v41, v42, v43);
            v47 = objc_msgSend_objectAtIndexedSubscript_(v44, v45, i + 1, v46);
            objc_msgSend_latitude(v47, v48, v49, v50);
            *&v98 = v51;
            v55 = objc_msgSend_coordinates(v15, v52, v53, v54);
            v58 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, i + 1, v57);
            objc_msgSend_longitude(v58, v59, v60, v61);
            *(&v98 + 1) = v62;
            sub_19B8F1158(&__p, &v99);
            sub_19B8F1158(&__p, &v98);
            if (vabdd_f64(*&v99, *&v98) >= 0.0000001 || vabdd_f64(*(&v99 + 1), *(&v98 + 1)) >= 0.0000001)
            {
              v63 = objc_msgSend_roadID(v15, v10, v11, v12);
              v64 = v63;
              if ((v101 - __p) >= 0x11)
              {
                v109 = v63;
                sub_19B8F1FB4(0, 0, 0, &__p, &v109);
                v64 = v109;
              }

              v65 = v108[0];
              if (v4 && v108[0])
              {
                v66 = v108[0];
                do
                {
                  v67 = v66[4];
                  if (v64 >= v67)
                  {
                    if (v67 >= v64)
                    {
                      goto LABEL_29;
                    }

                    ++v66;
                  }

                  v66 = *v66;
                }

                while (v66);
              }

              if (!v108[0])
              {
LABEL_27:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v68 = v65;
                  v69 = v65[4];
                  if (v69 <= v64)
                  {
                    break;
                  }

                  v65 = *v68;
                  if (!*v68)
                  {
                    goto LABEL_27;
                  }
                }

                if (v69 >= v64)
                {
                  break;
                }

                v65 = v68[1];
                if (!v65)
                {
                  goto LABEL_27;
                }
              }

              *(v68 + 40) = 1;
              v70 = [CLTripSegmentRoadData alloc];
              v74 = objc_msgSend_roadID(v15, v71, v72, v73);
              v78 = objc_msgSend_coordinates(v15, v75, v76, v77);
              v110[0] = objc_msgSend_objectAtIndexedSubscript_(v78, v79, i, v80);
              v84 = objc_msgSend_coordinates(v15, v81, v82, v83);
              v110[1] = objc_msgSend_objectAtIndexedSubscript_(v84, v85, i + 1, v86);
              v88 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v87, v110, 2);
              v90 = objc_msgSend_initWithRoadID_clRoadID_roadClass_formOfWay_coordinates_(v70, v89, v74, v64, 0, 0, v88);
              objc_msgSend_addObject_(v8, v91, v90, v92);
            }

LABEL_29:
            if (__p)
            {
              v101 = __p;
              operator delete(__p);
            }
          }
        }

        ++v14;
      }

      while (v97 + 1 != v96);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v10, &v103, v111, 16);
    }

    while (v13);
  }

  sub_19B9D8CB0(v108[0]);
  return v8;
}

uint64_t sub_19BA70CD8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!objc_msgSend_count(a2, a2, a3, a4))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  while (1)
  {
    v9 = objc_msgSend_objectAtIndexedSubscript_(a2, v6, v8, v7);
    if (sub_19BA70D4C(a1, v9, v10, v11))
    {
      break;
    }

    if (objc_msgSend_count(a2, v12, v13, v14) <= ++v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v8;
}

BOOL sub_19BA70D4C(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_clRoadID(a1, a2, a3, a4);
  if (v6 == objc_msgSend_clRoadID(a2, v7, v8, v9))
  {
    return 1;
  }

  v14 = objc_msgSend_coordinates(a1, v10, v11, v12);
  v18 = objc_msgSend_count(v14, v15, v16, v17);
  v22 = objc_msgSend_coordinates(a2, v19, v20, v21);
  v26 = objc_msgSend_count(v22, v23, v24, v25);
  v30 = objc_msgSend_coordinates(a1, v27, v28, v29);
  Object = objc_msgSend_firstObject(v30, v31, v32, v33);
  v38 = objc_msgSend_coordinates(a2, v35, v36, v37);
  v42 = objc_msgSend_firstObject(v38, v39, v40, v41);
  objc_msgSend_distanceFrom_(Object, v43, v42, v44);
  v46 = v45;
  v50 = objc_msgSend_coordinates(a1, v47, v48, v49);
  v54 = objc_msgSend_lastObject(v50, v51, v52, v53);
  v58 = objc_msgSend_coordinates(a2, v55, v56, v57);
  v62 = objc_msgSend_lastObject(v58, v59, v60, v61);
  objc_msgSend_distanceFrom_(v54, v63, v62, v64);
  v65 = v46 < 0.5;
  if (v66 >= 0.5)
  {
    v65 = 0;
  }

  return v18 == v26 && v65;
}

void sub_19BA70E38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  v4 = *(*a1 + 144);
  if (((v4 - v3) >> 4) >= 1)
  {
    v7 = 0;
    do
    {
      if (v3)
      {
        if (v7 < ((v4 - v3) >> 4))
        {
          v8 = *a2;
          v9 = *(v3 + 16 * v7);
          sub_19B9F5A50(v8, &v9, 1);
          v2 = *a1;
        }
      }

      ++v7;
      v3 = *(v2 + 136);
      v4 = *(v2 + 144);
    }

    while (v7 < ((v4 - v3) >> 4));
  }
}

uint64_t sub_19BA70ED0(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [CLTripSegmentLocation alloc];
  v14 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v11, v12, v13, a2);
  v17 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_(v10, v15, v14, 1, a3, a4, 10.0, a5, 10.0, 0.0, -1.0, 0.0, 0xBFF0000000000000);

  return objc_msgSend_addObject_(a1, v16, v17, v18);
}

void sub_19BA711D4(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_19BA7121C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6EFE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19BA71270(uint64_t a1)
{
  v2 = *(a1 + 1520);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = *(a1 + 1384);
  if (v3)
  {
    *(a1 + 1392) = v3;
    operator delete(v3);
  }

  sub_19BA71330((a1 + 1152));
  sub_19BA71330((a1 + 976));
  sub_19BA71330((a1 + 800));
  sub_19BA71330((a1 + 624));
  sub_19BA71330((a1 + 448));
  v4 = *(a1 + 336);
  if (v4)
  {
    *(a1 + 344) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 256);
  if (v5)
  {
    *(a1 + 264) = v5;
    operator delete(v5);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 47) < 0)
  {
    v6 = *(a1 + 24);

    operator delete(v6);
  }
}

void *sub_19BA71330(void *a1)
{
  v2 = a1[21];
  if (v2)
  {

    a1[21] = 0;
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_19BA71388(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void sub_19BA71414(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6F030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19BA71468(uint64_t a1)
{
  v7 = (a1 + 248);
  sub_19B8F1C84(&v7);
  v5 = *(a1 + 64);
  if (v5)
  {
    objc_msgSend_dealloc(v5, v2, v3, v4);
  }

  v7 = (a1 + 176);
  sub_19B8F0E84(&v7);
  v6 = *(a1 + 168);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  v7 = (a1 + 136);
  sub_19B8F0E84(&v7);
  v7 = (a1 + 72);
  sub_19B8F0E84(&v7);
}

uint64_t sub_19BA714F0(uint64_t a1, _DWORD *a2)
{
  result = a2[1];
  v4 = result - *a2;
  if (result != *a2)
  {
    v5 = v4 + 1;
    if (v4 == -1)
    {

      return sub_19B91408C(a1);
    }

    else
    {
      v7 = __clz(v5);
      v8 = 31;
      if (((v5 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      v9 = v8 - v7;
      v10 = v9 >> 5;
      if ((v9 & 0x1F) != 0)
      {
        ++v10;
      }

      if (v10 <= v9)
      {
        v11 = 0xFFFFFFFF >> -(v9 / v10);
      }

      else
      {
        v11 = 0;
      }

      do
      {
        v12 = sub_19B91408C(a1) & v11;
      }

      while (v12 >= v5);
      return *a2 + v12;
    }
  }

  return result;
}

void sub_19BA715CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6F080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19BA73D60(uint64_t a1, void *a2, uint64_t a3, void *a4, float *a5, float *a6, char a7)
{
  v8 = a3;
  v804 = *MEMORY[0x1E69E9840];
  Object = objc_msgSend_lastObject(a2, a2, a3, a4);
  v14 = objc_msgSend_timestamp(Object, v11, v12, v13);
  v18 = objc_msgSend_firstObject(v8, v15, v16, v17);
  v22 = objc_msgSend_cfAbsTimestamp(v18, v19, v20, v21);
  v28 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  if (objc_msgSend_compare_(v14, v23, v22, v24) == -1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v87 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] no overlap, last location is earlier than first IO.", buf, 2u);
    }

    v88 = sub_19B87DD40();
    if ((*(v88 + 160) & 0x80000000) != 0 && (*(v88 + 164) & 0x80000000) != 0 && (*(v88 + 168) & 0x80000000) != 0 && !*(v88 + 152))
    {
      goto LABEL_104;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    LOWORD(v775[0]) = 0;
    v89 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] no overlap, last location is earlier than first IO.", v775, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::setHeadAndTailIndicesForLocationArray(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable)", "CoreLocation: %s\n", v89);
    goto LABEL_102;
  }

  v29 = objc_msgSend_lastObject(v8, v25, v26, v27);
  v33 = objc_msgSend_cfAbsTimestamp(v29, v30, v31, v32);
  v37 = objc_msgSend_firstObject(a2, v34, v35, v36);
  v41 = objc_msgSend_timestamp(v37, v38, v39, v40);
  if (objc_msgSend_compare_(v33, v42, v41, v43) == -1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v90 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] no overlap, last IO is earlier than first location.", buf, 2u);
    }

    v91 = sub_19B87DD40();
    if ((*(v91 + 160) & 0x80000000) != 0 && (*(v91 + 164) & 0x80000000) != 0 && (*(v91 + 168) & 0x80000000) != 0 && !*(v91 + 152))
    {
      goto LABEL_104;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    LOWORD(v775[0]) = 0;
    v89 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] no overlap, last IO is earlier than first location.", v775, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::setHeadAndTailIndicesForLocationArray(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable)", "CoreLocation: %s\n", v89);
    goto LABEL_102;
  }

  v47 = objc_msgSend_lastObject(a2, v44, v45, v46);
  v51 = objc_msgSend_timestamp(v47, v48, v49, v50);
  v55 = objc_msgSend_lastObject(v8, v52, v53, v54);
  v59 = objc_msgSend_cfAbsTimestamp(v55, v56, v57, v58);
  v62 = objc_msgSend_compare_(v51, v60, v59, v61);
  v66 = objc_msgSend_count(a2, v63, v64, v65);
  if (v62 != -1)
  {
    v70 = v66 - 1;
    while (v70)
    {
      v71 = objc_msgSend_objectAtIndexedSubscript_(a2, v67, v70, v69);
      v75 = objc_msgSend_timestamp(v71, v72, v73, v74);
      v79 = objc_msgSend_lastObject(v8, v76, v77, v78);
      v83 = objc_msgSend_cfAbsTimestamp(v79, v80, v81, v82);
      --v70;
      if (objc_msgSend_compare_(v75, v84, v83, v85) != 1)
      {
        v86 = v70 + 1;
        goto LABEL_29;
      }
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v201 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v201, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] there is no location sample earlier than last IO sample.", buf, 2u);
    }

    v202 = sub_19B87DD40();
    if ((*(v202 + 160) & 0x80000000) != 0 && (*(v202 + 164) & 0x80000000) != 0 && (*(v202 + 168) & 0x80000000) != 0 && !*(v202 + 152))
    {
      goto LABEL_104;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    LOWORD(v775[0]) = 0;
    v89 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] there is no location sample earlier than last IO sample.", v775, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::setHeadAndTailIndicesForLocationArray(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable)", "CoreLocation: %s\n", v89);
    goto LABEL_102;
  }

  v86 = v66 - 1;
LABEL_29:
  *(a1 + 48) = v86;
  v92 = objc_msgSend_firstObject(a2, v67, v68, v69);
  v96 = objc_msgSend_timestamp(v92, v93, v94, v95);
  v100 = objc_msgSend_firstObject(v8, v97, v98, v99);
  v104 = objc_msgSend_cfAbsTimestamp(v100, v101, v102, v103);
  if (objc_msgSend_compare_(v96, v105, v104, v106) == 1)
  {
    v110 = 0;
  }

  else
  {
    v110 = 0;
    if (objc_msgSend_count(a2, v107, v108, v109))
    {
      do
      {
        v114 = objc_msgSend_objectAtIndexedSubscript_(a2, v111, v110, v113);
        v118 = objc_msgSend_timestamp(v114, v115, v116, v117);
        v122 = objc_msgSend_firstObject(v8, v119, v120, v121);
        v126 = objc_msgSend_cfAbsTimestamp(v122, v123, v124, v125);
        if (objc_msgSend_compare_(v118, v127, v126, v128) != -1)
        {
          break;
        }

        ++v110;
      }

      while (v110 < objc_msgSend_count(a2, v111, v112, v113));
    }

    if (v110 >= objc_msgSend_count(a2, v111, v112, v113))
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v205 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v205, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] there is no location sample later than first IO sample.", buf, 2u);
      }

      v206 = sub_19B87DD40();
      if ((*(v206 + 160) & 0x80000000) != 0 && (*(v206 + 164) & 0x80000000) != 0 && (*(v206 + 168) & 0x80000000) != 0 && !*(v206 + 152))
      {
        goto LABEL_104;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      LOWORD(v775[0]) = 0;
      v89 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] there is no location sample later than first IO sample.", v775, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::setHeadAndTailIndicesForLocationArray(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable)", "CoreLocation: %s\n", v89);
      goto LABEL_102;
    }
  }

  *(a1 + 40) = v110;
  if (v110 >= *(a1 + 48))
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v203 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v203, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] head index can not be larger than or equal to tail index.", buf, 2u);
    }

    v204 = sub_19B87DD40();
    if ((*(v204 + 160) & 0x80000000) != 0 && (*(v204 + 164) & 0x80000000) != 0 && (*(v204 + 168) & 0x80000000) != 0 && !*(v204 + 152))
    {
      goto LABEL_104;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    LOWORD(v775[0]) = 0;
    v89 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[setHeadAndTailIndicesForLocationArray] head index can not be larger than or equal to tail index.", v775, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::setHeadAndTailIndicesForLocationArray(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable)", "CoreLocation: %s\n", v89);
LABEL_102:
    if (v89 != buf)
    {
      free(v89);
    }

LABEL_104:
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v207 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v207, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[runRejector] No overlap time period between location and IO samples.", buf, 2u);
    }

    v208 = sub_19B87DD40();
    if ((*(v208 + 160) & 0x80000000) != 0 && (*(v208 + 164) & 0x80000000) != 0 && (*(v208 + 168) & 0x80000000) != 0 && !*(v208 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    LOWORD(v775[0]) = 0;
    v209 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[runRejector] No overlap time period between location and IO samples.", v775, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::runRejector(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableIndexSet * _Nullable, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &, const BOOL)", "CoreLocation: %s\n", v209);
    goto LABEL_114;
  }

  v757 = v8;
  v758 = a2;
  v747 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v107, v108, v109);
  if ((a7 & 1) == 0)
  {
    memset(__src, 0, 24);
    memset(v775, 0, sizeof(v775));
    v776 = 0u;
    v777 = 0u;
    RouteCorners = objc_msgSend_extractRouteCorners_(CLRouteAnalyzer, v129, a2, v131);
    v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(RouteCorners, v133, v775, buf, 16);
    if (v137)
    {
      v138 = *v775[2];
      do
      {
        for (i = 0; i != v137; ++i)
        {
          if (*v775[2] != v138)
          {
            objc_enumerationMutation(RouteCorners);
          }

          v140 = *(v775[1] + i);
          v141 = objc_msgSend_objectForKey_(v140, v134, @"timestamp", v136);
          objc_msgSend_doubleValue(v141, v142, v143, v144);
          v146 = v145;
          v149 = objc_msgSend_objectForKey_(v140, v147, @"signedAngleDeg", v148);
          objc_msgSend_doubleValue(v149, v150, v151, v152);
          v154 = v153;
          v157 = objc_msgSend_objectForKey_(v140, v155, @"latitude", v156);
          objc_msgSend_doubleValue(v157, v158, v159, v160);
          v162 = v161;
          v165 = objc_msgSend_objectForKey_(v140, v163, @"longitude", v164);
          objc_msgSend_doubleValue(v165, v166, v167, v168);
          v170 = v169;
          v173 = objc_msgSend_objectForKey_(v140, v171, @"locationIndex", v172);
          v177 = objc_msgSend_unsignedLongValue(v173, v174, v175, v176);
          v178 = __src[1];
          if (__src[1] >= __src[2])
          {
            v180 = __src[0];
            v181 = __src[1] - __src[0];
            v182 = 0xCCCCCCCCCCCCCCCDLL * ((__src[1] - __src[0]) >> 3);
            v183 = v182 + 1;
            if (v182 + 1 > 0x666666666666666)
            {
              sub_19B8B8A40();
            }

            if (0x999999999999999ALL * ((__src[2] - __src[0]) >> 3) > v183)
            {
              v183 = 0x999999999999999ALL * ((__src[2] - __src[0]) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((__src[2] - __src[0]) >> 3) >= 0x333333333333333)
            {
              v183 = 0x666666666666666;
            }

            if (v183)
            {
              sub_19B8B9C30(__src, v183);
            }

            v184 = (8 * ((__src[1] - __src[0]) >> 3));
            *v184 = v146;
            v184[1] = v154;
            v184[2] = v162;
            v184[3] = v170;
            v184[4] = v177;
            v179 = (40 * v182 + 40);
            v185 = v184 - v181;
            memcpy(v184 - v181, v180, v181);
            v186 = __src[0];
            __src[0] = v185;
            __src[1] = v179;
            __src[2] = 0;
            if (v186)
            {
              operator delete(v186);
            }
          }

          else
          {
            *__src[1] = v146;
            v178[1] = v154;
            v178[2] = v162;
            v178[3] = v170;
            v179 = v178 + 5;
            v178[4] = v177;
          }

          __src[1] = v179;
        }

        v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(RouteCorners, v134, v775, buf, 16);
      }

      while (v137);
    }

    v187 = 0;
    memset(__p, 0, 24);
    v8 = v757;
    while (v187 < objc_msgSend_count(v757, v134, v135, v136))
    {
      v188 = objc_msgSend_objectAtIndexedSubscript_(v757, v129, v187, v131);
      if (objc_msgSend_dotBiasChange(v188, v189, v190, v191) == 2)
      {
        v192 = __p[1];
        if (__p[1] >= __p[2])
        {
          v194 = __p[0];
          v195 = __p[1] - __p[0];
          v196 = (__p[1] - __p[0]) >> 3;
          v197 = v196 + 1;
          if ((v196 + 1) >> 61)
          {
            sub_19B8B8A40();
          }

          v198 = __p[2] - __p[0];
          if ((__p[2] - __p[0]) >> 2 > v197)
          {
            v197 = v198 >> 2;
          }

          if (v198 >= 0x7FFFFFFFFFFFFFF8)
          {
            v199 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v199 = v197;
          }

          if (v199)
          {
            sub_19B8D9954(__p, v199);
          }

          *(8 * v196) = v187;
          v193 = (8 * v196 + 8);
          memcpy(0, v194, v195);
          v200 = __p[0];
          __p[0] = 0;
          __p[1] = v193;
          __p[2] = 0;
          if (v200)
          {
            operator delete(v200);
          }
        }

        else
        {
          *__p[1] = v187;
          v193 = v192 + 8;
        }

        __p[1] = v193;
      }

      ++v187;
    }

    v211 = __p[0];
    if (__p[1] != __p[0])
    {
      v212 = 0;
      v213 = (__p[1] - __p[0]) >> 3;
      while (1)
      {
        v214 = &v211[8 * v212];
        if (v212)
        {
          v215 = *(v214 - 1);
        }

        else
        {
          v215 = 0;
        }

        v216 = *v214;
        if (v212 == v213 - 1)
        {
          v217 = (objc_msgSend_count(v757, v129, v130, v131) - 1);
        }

        else
        {
          v217 = v214[1];
        }

        v218 = sub_19BA77F94(v757, v215, v216, v131);
        v220 = sub_19BA77F94(v757, v216, v217, v219);
        if (v218 < 25.0 || v220 < 25.0)
        {
          goto LABEL_136;
        }

        v222 = sub_19BA77890(v757, v216, v216, v131);
        v225 = objc_msgSend_objectAtIndexedSubscript_(v757, v223, v216, v224);
        v229 = objc_msgSend_cfAbsTimestamp(v225, v226, v227, v228);
        objc_msgSend_timeIntervalSinceReferenceDate(v229, v230, v231, v232);
        for (j = __src[0]; j != __src[1]; j += 5)
        {
          if (vabdd_f64(*j, v233) <= 5.0 && fabs(j[1]) >= 45.0)
          {
            goto LABEL_136;
          }
        }

        if ((v222 & 1) == 0)
        {
LABEL_136:
          v237 = sub_19BA77F94(v757, v216, v217, v131);
          v238 = v237 <= 7.0 && v237 >= 0.0;
          if (!v238)
          {
            v235 = v212;
LABEL_143:
            objc_msgSend_addIndex_(v747, v129, v216, v131);
            if (v238)
            {
              objc_msgSend_addIndex_(v747, v129, v217, v131);
            }

            goto LABEL_158;
          }

          v235 = v212 + 1;
          if (v212 + 1 >= (((__p[1] - __p[0]) >> 3) - 1))
          {
            v239 = (objc_msgSend_count(v757, v129, v236, v131) - 1);
          }

          else
          {
            v239 = *(__p[0] + v212 + 2);
          }

          v240 = sub_19BA77F94(v757, v215, v216, v131);
          v242 = sub_19BA77F94(v757, v217, v239, v241);
          if (v216 == v217)
          {
            v243 = 25.0;
          }

          else
          {
            v243 = 15.0;
          }

          if (v240 < v243 || v242 < v243)
          {
            goto LABEL_143;
          }

          v244 = sub_19BA77890(v757, v216, v217, v131);
          v764 = v216;
          if (sub_19BA78234(v757, v216, &v764, v245) && (v761 = v217, sub_19BA78320(v757, v217, &v761, v131)) && sub_19BA786A8(v757, v764, v216, &v770) && sub_19BA786A8(v757, v217, v761, &v767))
          {
            v246 = sub_19BA7841C(*&v770, *(&v770 + 1), *&v771, *&v767, *(&v767 + 1), *&v768);
            if (!((*&v246 * 57.2957802 < 5.0) | v244 & 1))
            {
              goto LABEL_143;
            }
          }

          else if ((v244 & 1) == 0)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v235 = v212;
        }

LABEL_158:
        v212 = v235 + 1;
        v211 = __p[0];
        v213 = (__p[1] - __p[0]) >> 3;
        v247 = v235 + 1 >= v213;
        v28 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (v247)
        {
          goto LABEL_166;
        }
      }
    }

    v28 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
LABEL_166:
    if (v211)
    {
      __p[1] = v211;
      operator delete(v211);
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }
  }

  if (objc_msgSend_count(v8, v129, v130, v131))
  {
    v251 = 0;
    v252 = 0;
    v253 = -1;
    do
    {
      v254 = objc_msgSend_objectAtIndexedSubscript_(v757, v248, v253 + 1, v250);
      v258 = objc_msgSend_cfAbsTimestamp(v254, v255, v256, v257);
      v261 = objc_msgSend_objectAtIndexedSubscript_(a2, v259, *(a1 + 40), v260);
      v265 = objc_msgSend_timestamp(v261, v262, v263, v264);
      v268 = v251;
      if (objc_msgSend_compare_(v258, v266, v265, v267) != -1)
      {
        break;
      }

      v269 = objc_msgSend_count(v757, v248, v249, v250);
      v251 = v252++;
      v268 = v253 + 1;
      v270 = v253 + 2;
      ++v253;
    }

    while (v270 < v269);
  }

  else
  {
    v268 = 0;
  }

  v271 = *(a1 + 40);
  v745 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v248, v249, v250);
  if (v268 < objc_msgSend_count(v757, v272, v273, v274))
  {
    v755 = v268;
    while (1)
    {
      v278 = objc_msgSend_objectAtIndexedSubscript_(v757, v275, v268, v277);
      v282 = objc_msgSend_cfAbsTimestamp(v278, v279, v280, v281);
      v285 = objc_msgSend_objectAtIndexedSubscript_(v757, v283, v755, v284);
      v289 = objc_msgSend_cfAbsTimestamp(v285, v286, v287, v288);
      objc_msgSend_timeIntervalSinceDate_(v282, v290, v289, v291);
      v752 = v292;
      v749 = *(a1 + 72);
      if (!(objc_msgSend_containsIndex_(v747, v293, v268, v294) & 1 | (v292 >= v749)) && v268 != objc_msgSend_count(v757, v275, v276, v277) - 1)
      {
        goto LABEL_350;
      }

      ++*(a1 + 56);
      v295 = objc_msgSend_count(v758, v275, v276, v277);
      while (v271 < v295)
      {
        v299 = objc_msgSend_objectAtIndexedSubscript_(v758, v296, v271, v298);
        v303 = objc_msgSend_timestamp(v299, v300, v301, v302);
        v306 = objc_msgSend_objectAtIndexedSubscript_(v757, v304, v755, v305);
        v310 = objc_msgSend_cfAbsTimestamp(v306, v307, v308, v309);
        if (objc_msgSend_compare_(v303, v311, v310, v312) != -1)
        {
          break;
        }

        v295 = objc_msgSend_count(v758, v296, v297, v298);
        ++v271;
      }

      if (v271 >= objc_msgSend_count(v758, v296, v297, v298))
      {
        break;
      }

      v316 = v271;
      v317 = v271;
      if (v271 <= *(a1 + 48))
      {
        while (1)
        {
          v318 = objc_msgSend_objectAtIndexedSubscript_(v757, v313, v268, v315);
          v322 = objc_msgSend_cfAbsTimestamp(v318, v319, v320, v321);
          v325 = objc_msgSend_objectAtIndexedSubscript_(v758, v323, v317, v324);
          v329 = objc_msgSend_timestamp(v325, v326, v327, v328);
          if (objc_msgSend_compare_(v322, v330, v329, v331) != 1)
          {
            break;
          }

          v332 = v317 + 1;
          v316 = v317;
          v317 = v332;
          if (v332 > *(a1 + 48))
          {
            v316 = (v332 - 1);
            break;
          }
        }
      }

      v750 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v313, v314, v315);
      obj = objc_msgSend_subarrayWithRange_(v758, v333, v271, v316 - v271 + 1);
      v748 = objc_msgSend_subarrayWithRange_(v757, v334, v755, v268 - v755 + 1);
      v746 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v335, v336, v337);
      v770 = 0;
      v771 = 0;
      v772 = 0;
      v341 = objc_msgSend_count(obj, v338, v339, v340);
      sub_19BA7767C(&v770, v341);
      v767 = 0;
      v768 = 0;
      v769 = 0;
      v345 = objc_msgSend_count(obj, v342, v343, v344);
      sub_19B9CA9C0(&v767, v345);
      v764 = 0;
      v765 = 0;
      v766 = 0;
      v349 = objc_msgSend_count(obj, v346, v347, v348);
      sub_19B9CA9C0(&v764, v349);
      v353 = objc_msgSend_firstObject(obj, v350, v351, v352);
      objc_msgSend_latitude(v353, v354, v355, v356);
      v358 = v357;
      v362 = objc_msgSend_firstObject(obj, v359, v360, v361);
      objc_msgSend_longitude(v362, v363, v364, v365);
      v367 = v366;
      v371 = objc_msgSend_firstObject(obj, v368, v369, v370);
      objc_msgSend_altitude(v371, v372, v373, v374);
      v376 = v375;
      v795 = 0u;
      v796 = 0u;
      memset(__src, 0, sizeof(__src));
      v381 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v377, __src, v775, 16);
      if (!v381)
      {
        v383 = -1.0;
LABEL_313:
        if (*(v28 + 235) != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v612 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v383;
          _os_log_impl(&dword_19B873000, v612, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[constructLocationTrajectory] not enough displacement along the location horizon, %{public}.2f.", buf, 0xCu);
        }

        v613 = sub_19B87DD40();
        if ((*(v613 + 160) & 0x80000000) == 0 || (*(v613 + 164) & 0x80000000) == 0 || (*(v613 + 168) & 0x80000000) == 0 || *(v613 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (*(v28 + 235) != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(__p[0]) = 134349056;
          *(__p + 4) = *&v383;
          v611 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[constructLocationTrajectory] not enough displacement along the location horizon, %{public}.2f.", __p, 12);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::constructLocationTrajectory(NSArray<CLTripSegmentLocation *> * _Nonnull, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<double> &, std::vector<double> &)", "CoreLocation: %s\n", v611);
          goto LABEL_323;
        }

        goto LABEL_325;
      }

      v382 = *__src[2];
      v383 = -1.0;
      do
      {
        for (k = 0; k != v381; ++k)
        {
          if (*__src[2] != v382)
          {
            objc_enumerationMutation(obj);
          }

          v385 = *(__src[1] + k);
          objc_msgSend_latitude(v385, v378, v379, v380);
          v387 = v386;
          objc_msgSend_longitude(v385, v388, v389, v390);
          sub_19BA0C01C(a1, *&v358, v367, v387, v391, 0.0);
          v761 = 0;
          if (v395 >= v383)
          {
            v383 = v395;
          }

          v773 = 0;
          v774 = 0.0;
          objc_msgSend_latitude(v385, v392, v393, v394);
          v397 = v396;
          objc_msgSend_longitude(v385, v398, v399, v400);
          v402 = v401;
          objc_msgSend_altitude(v385, v403, v404, v405);
          if (!sub_19BA0BE88(a1, &v761, &v774, &v773, *&v358, v367, v376, v397, v402, v406))
          {
            if (*(v28 + 235) != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            v590 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              objc_msgSend_latitude(v385, v591, v592, v593);
              v595 = v594;
              objc_msgSend_longitude(v385, v596, v597, v598);
              *buf = 134546433;
              *&buf[4] = v595;
              v798 = 2053;
              *&v799 = v599;
              v800 = 2053;
              v801 = v358;
              v802 = 2053;
              v803 = v367;
              _os_log_impl(&dword_19B873000, v590, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[constructLocationTrajectory] Failed to convert from lat/lon to NWU failed. location sample,latitude,%{sensitive}.7f, longitude,%{sensitive}.7f,selected origin,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f.", buf, 0x2Au);
            }

            v600 = sub_19B87DD40();
            if ((*(v600 + 160) & 0x80000000) == 0 || (*(v600 + 164) & 0x80000000) == 0 || (*(v600 + 168) & 0x80000000) == 0 || *(v600 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (*(v28 + 235) != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
              }

              v604 = qword_1EAFE4760;
              objc_msgSend_latitude(v385, v601, v602, v603);
              v606 = v605;
              objc_msgSend_longitude(v385, v607, v608, v609);
              LODWORD(__p[0]) = 134546433;
              *(__p + 4) = v606;
              WORD2(__p[1]) = 2053;
              *(&__p[1] + 6) = v610;
              HIWORD(__p[2]) = 2053;
              __p[3] = v358;
              v792 = 2053;
              v793 = v367;
              v611 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v604, 16, "[CLLocationOutlierRejector]:[constructLocationTrajectory] Failed to convert from lat/lon to NWU failed. location sample,latitude,%{sensitive}.7f, longitude,%{sensitive}.7f,selected origin,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f.", __p, 42);
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::constructLocationTrajectory(NSArray<CLTripSegmentLocation *> * _Nonnull, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<double> &, std::vector<double> &)", "CoreLocation: %s\n", v611);
LABEL_323:
              if (v611 != buf)
              {
                free(v611);
              }
            }

LABEL_325:
            if (*(v28 + 235) != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            v614 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v614, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[selectInliers] contruct location trajectory failed.", buf, 2u);
            }

            v615 = sub_19B87DD40();
            if ((*(v615 + 160) & 0x80000000) != 0 && (*(v615 + 164) & 0x80000000) != 0 && (*(v615 + 168) & 0x80000000) != 0 && !*(v615 + 152))
            {
              v617 = 0;
              v618 = 1.0;
              v619 = 0.0;
            }

            else
            {
              bzero(buf, 0x65CuLL);
              if (*(v28 + 235) != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
              }

              LOWORD(v775[0]) = 0;
              v616 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[selectInliers] contruct location trajectory failed.", v775, 2);
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v616);
              if (v616 != buf)
              {
                free(v616);
              }

              v617 = 0;
              v618 = 1.0;
              v619 = 0.0;
            }

            goto LABEL_337;
          }

          v410 = -v774;
          v411 = v771;
          if (v771 >= v772)
          {
            v413 = (v771 - v770) >> 4;
            v414 = v413 + 1;
            if ((v413 + 1) >> 60)
            {
              sub_19B8B8A40();
            }

            v415 = v772 - v770;
            if ((v772 - v770) >> 3 > v414)
            {
              v414 = v415 >> 3;
            }

            if (v415 >= 0x7FFFFFFFFFFFFFF0)
            {
              v416 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v416 = v414;
            }

            if (v416)
            {
              sub_19B9CACF4(v416);
            }

            v417 = 16 * v413;
            *v417 = v761;
            *(v417 + 8) = v410;
            v412 = 16 * v413 + 16;
            v418 = (16 * v413 - (v771 - v770));
            memcpy((v417 - (v771 - v770)), v770, v771 - v770);
            v419 = v770;
            v770 = v418;
            v771 = v412;
            v772 = 0;
            if (v419)
            {
              operator delete(v419);
            }
          }

          else
          {
            *v771 = v761;
            *(v411 + 1) = v410;
            v412 = (v411 + 16);
          }

          v771 = v412;
          v420 = objc_msgSend_timestamp(v385, v407, v408, v409);
          v28 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
          objc_msgSend_timeIntervalSinceReferenceDate(v420, v421, v422, v423);
          *buf = v424;
          sub_19B8F518C(&v767, buf);
          objc_msgSend_horizontalAccuracy(v385, v425, v426, v427);
          if (v431 > 0.0 && (objc_msgSend_horizontalAccuracy(v385, v428, v429, v430), v435 <= 150.0))
          {
            objc_msgSend_horizontalAccuracy(v385, v432, v433, v434);
            v436 = 1.0 / v437;
          }

          else
          {
            v436 = 2.22507386e-308;
          }

          *buf = v436;
          sub_19B8F518C(&v764, buf);
        }

        v381 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v378, __src, v775, 16);
      }

      while (v381);
      if (v383 < 50.0)
      {
        goto LABEL_313;
      }

      memset(__p, 0, 24);
      sub_19BA7767C(__p, (v768 - v767) >> 3);
      v761 = 0;
      v762 = 0;
      v763 = 0;
      sub_19BA77720(&v761, (v768 - v767) >> 3);
      v440 = objc_msgSend_objectAtIndexedSubscript_(v748, v438, 0, v439);
      v444 = objc_msgSend_cfAbsTimestamp(v440, v441, v442, v443);
      objc_msgSend_timeIntervalSinceReferenceDate(v444, v445, v446, v447);
      v743 = v768;
      if (v767 == v768)
      {
        v554 = -1.0;
LABEL_359:
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v632 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          *&buf[4] = v554;
          _os_log_impl(&dword_19B873000, v632, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[constructIOTrajecotry] not enough displacement in IO horizon, %{public}.2f.", buf, 0xCu);
        }

        v633 = sub_19B87DD40();
        if (*(v633 + 160) > 1 || *(v633 + 164) > 1 || *(v633 + 168) > 1 || *(v633 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(v775[0]) = 134349056;
          *(v775 + 4) = *&v554;
          v634 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLLocationOutlierRejector]:[constructIOTrajecotry] not enough displacement in IO horizon, %{public}.2f.", v775, 12);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::constructIOTrajectory(NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, const std::vector<double> &, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<BOOL> &)", "CoreLocation: %s\n", v634);
          goto LABEL_380;
        }

LABEL_382:
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v637 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v637, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[selectInliers] contruct IO trajectory failed.", buf, 2u);
        }

        v638 = sub_19B87DD40();
        if ((*(v638 + 160) & 0x80000000) == 0 || (*(v638 + 164) & 0x80000000) == 0 || (*(v638 + 168) & 0x80000000) == 0 || *(v638 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LOWORD(v775[0]) = 0;
          v639 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[selectInliers] contruct IO trajectory failed.", v775, 2);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v639);
LABEL_392:
          if (v639 != buf)
          {
            free(v639);
          }
        }

LABEL_394:
        v617 = 0;
        v618 = 1.0;
        v619 = 0.0;
        goto LABEL_395;
      }

      v452 = v451;
      v453 = v767;
      v454 = 0;
      v455 = 0;
      v744 = -1.0;
      v456 = 0.0;
      v457 = 0.0;
      v458 = 0.0;
      v459 = 0.0;
      do
      {
        if (v454 < objc_msgSend_count(v748, v448, v449, v450) - 1 && (v463 = objc_msgSend_cfAbsTimestamp(v440, v460, v461, v462), objc_msgSend_timeIntervalSinceReferenceDate(v463, v464, v465, v466), v470 <= *v453))
        {
          v471 = 0;
          v492 = v454 + 1;
          do
          {
            v454 = v492;
            v493 = objc_msgSend_cfAbsTimestamp(v440, v467, v468, v469);
            objc_msgSend_timeIntervalSinceReferenceDate(v493, v494, v495, v496);
            v452 = v497;
            v440 = objc_msgSend_objectAtIndexedSubscript_(v748, v498, v454, v499);
            v503 = objc_msgSend_deltaPosition_m(v440, v500, v501, v502);
            isValid = objc_msgSend_isValid(v503, v504, v505, v506);
            v511 = objc_msgSend_deltaPosition_m(v440, v508, v509, v510);
            v458 = 0.0;
            if (objc_msgSend_isValid(v511, v512, v513, v514))
            {
              v518 = objc_msgSend_deltaPosition_m(v440, v515, v516, v517);
              objc_msgSend_X(v518, v519, v520, v521);
              v458 = v522;
            }

            v523 = objc_msgSend_deltaPosition_m(v440, v515, v516, v517);
            v459 = 0.0;
            if (objc_msgSend_isValid(v523, v524, v525, v526))
            {
              v530 = objc_msgSend_deltaPosition_m(v440, v527, v528, v529);
              objc_msgSend_Y(v530, v531, v532, v533);
              v459 = v534;
            }

            v455 += isValid ^ 1u;
            v456 = v456 + v458;
            v457 = v457 + v459;
            v471 |= objc_msgSend_dotBiasChange(v440, v527, v528, v529) == 2;
            if (v454 >= objc_msgSend_count(v748, v535, v536, v537) - 1)
            {
              break;
            }

            v541 = objc_msgSend_cfAbsTimestamp(v440, v538, v539, v540);
            objc_msgSend_timeIntervalSinceReferenceDate(v541, v542, v543, v544);
            v492 = v454 + 1;
          }

          while (v545 <= *v453);
        }

        else
        {
          v471 = 0;
        }

        v475 = hypot(v456, v457);
        v476 = v744;
        if (v475 >= v744)
        {
          v476 = v475;
        }

        v744 = v476;
        v477 = objc_msgSend_cfAbsTimestamp(v440, v472, v473, v474);
        v28 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        objc_msgSend_timeIntervalSinceReferenceDate(v477, v478, v479, v480);
        v482 = v481;
        if (*&v452 >= v481)
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v635 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349312;
            *&buf[4] = v452;
            v798 = 2050;
            *&v799 = v482;
            _os_log_impl(&dword_19B873000, v635, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[constructIOTrajectory] IO time is not monotonically increasing,prevIOTime,%{public}.1f,currentIOTime,%{public}.1f", buf, 0x16u);
          }

          v636 = sub_19B87DD40();
          if ((*(v636 + 160) & 0x80000000) == 0 || (*(v636 + 164) & 0x80000000) == 0 || (*(v636 + 168) & 0x80000000) == 0 || *(v636 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            LODWORD(v775[0]) = 134349312;
            *(v775 + 4) = v452;
            WORD2(v775[1]) = 2050;
            *(&v775[1] + 6) = *&v482;
            v634 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[constructIOTrajectory] IO time is not monotonically increasing,prevIOTime,%{public}.1f,currentIOTime,%{public}.1f", v775, 22);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::constructIOTrajectory(NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, const std::vector<double> &, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<BOOL> &)", "CoreLocation: %s\n", v634);
LABEL_380:
            if (v634 != buf)
            {
              free(v634);
            }
          }

          goto LABEL_382;
        }

        v483 = *v453 - *&v452;
        v484 = v456 - v458 + v458 * v483 / (v481 - *&v452);
        v485 = v457 - v459 + v459 * v483 / (v481 - *&v452);
        v486 = __p[1];
        if (__p[1] >= __p[2])
        {
          v488 = (__p[1] - __p[0]) >> 4;
          v489 = v488 + 1;
          if ((v488 + 1) >> 60)
          {
            sub_19B8B8A40();
          }

          v490 = __p[2] - __p[0];
          if ((__p[2] - __p[0]) >> 3 > v489)
          {
            v489 = v490 >> 3;
          }

          if (v490 >= 0x7FFFFFFFFFFFFFF0)
          {
            v491 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v491 = v489;
          }

          if (v491)
          {
            sub_19B9CACF4(v491);
          }

          v546 = (16 * v488);
          *v546 = v484;
          v546[1] = v485;
          v487 = (16 * v488 + 16);
          v547 = (16 * v488 - (__p[1] - __p[0]));
          memcpy(v546 - (__p[1] - __p[0]), __p[0], __p[1] - __p[0]);
          v548 = __p[0];
          __p[0] = v547;
          __p[1] = v487;
          __p[2] = 0;
          if (v548)
          {
            operator delete(v548);
          }
        }

        else
        {
          *__p[1] = v484;
          v486[1] = v485;
          v487 = v486 + 2;
        }

        __p[1] = v487;
        v549 = v762;
        v28 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if (v762 == v763 << 6)
        {
          if ((v762 + 1) < 0)
          {
            sub_19B8B8A40();
          }

          if (v762 > 0x3FFFFFFFFFFFFFFELL)
          {
            v550 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v763 << 7 <= (v762 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v550 = (v762 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v550 = v763 << 7;
          }

          sub_19BA77720(&v761, v550);
          v549 = v762;
        }

        v762 = v549 + 1;
        v551 = v549 >> 6;
        v552 = 1 << v549;
        if (v471)
        {
          v553 = *(v761 + v551) | v552;
        }

        else
        {
          v553 = *(v761 + v551) & ~v552;
        }

        *(v761 + v551) = v553;
        ++v453;
      }

      while (v453 != v743);
      v554 = v744;
      if (v744 < 50.0)
      {
        goto LABEL_359;
      }

      if (!objc_msgSend_count(v748, v448, v449, v450))
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v640 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v640, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[constructIOTrajecotry] empty inertial odometry data batch.", buf, 2u);
        }

        v641 = sub_19B87DD40();
        if ((*(v641 + 160) & 0x80000000) == 0 || (*(v641 + 164) & 0x80000000) == 0 || (*(v641 + 168) & 0x80000000) == 0 || *(v641 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LOWORD(v775[0]) = 0;
          v634 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[constructIOTrajecotry] empty inertial odometry data batch.", v775, 2);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::constructIOTrajectory(NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, const std::vector<double> &, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<BOOL> &)", "CoreLocation: %s\n", v634);
          goto LABEL_380;
        }

        goto LABEL_382;
      }

      v558 = v455 / objc_msgSend_count(v748, v555, v556, v557);
      if (v558 > 0.6)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v642 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          *&buf[4] = v558;
          _os_log_impl(&dword_19B873000, v642, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[constructIOTrajecotry] high invalid IO sample ratio, %{public}.2f.", buf, 0xCu);
        }

        v643 = sub_19B87DD40();
        if (*(v643 + 160) > 1 || *(v643 + 164) > 1 || *(v643 + 168) > 1 || *(v643 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(v775[0]) = 134349056;
          *(v775 + 4) = *&v558;
          v634 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLLocationOutlierRejector]:[constructIOTrajecotry] high invalid IO sample ratio, %{public}.2f.", v775, 12);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::constructIOTrajectory(NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, const std::vector<double> &, std::vector<CMVector<double, kNumberOfDimensions>> &, std::vector<BOOL> &)", "CoreLocation: %s\n", v634);
          goto LABEL_380;
        }

        goto LABEL_382;
      }

      if (__p[1] - __p[0] != v771 - v770 || (__p[1] - __p[0]) >> 4 != (v768 - v767) >> 3)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v644 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349568;
          *&buf[4] = (__p[1] - __p[0]) >> 4;
          v798 = 2050;
          v799 = (v771 - v770) >> 4;
          v800 = 2050;
          v801 = (v768 - v767) >> 3;
          _os_log_impl(&dword_19B873000, v644, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[selectInliers] vector sizes are not equal: io,%{public}zu,location,%{public}zu,timestamp,%{public}zu", buf, 0x20u);
        }

        v645 = sub_19B87DD40();
        if ((*(v645 + 160) & 0x80000000) == 0 || (*(v645 + 164) & 0x80000000) == 0 || (*(v645 + 168) & 0x80000000) == 0 || *(v645 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(v775[0]) = 134349568;
          *(v775 + 4) = ((__p[1] - __p[0]) >> 4);
          WORD2(v775[1]) = 2050;
          *(&v775[1] + 6) = ((v771 - v770) >> 4);
          HIWORD(v775[2]) = 2050;
          v775[3] = ((v768 - v767) >> 3);
          v639 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[selectInliers] vector sizes are not equal: io,%{public}zu,location,%{public}zu,timestamp,%{public}zu", v775, 32);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v639);
          goto LABEL_392;
        }

        goto LABEL_394;
      }

      memset(v775, 0, 24);
      *(&v777 + 1) = 0;
      v778 = 0u;
      v779 = 0u;
      v780 = 0u;
      v781 = 0u;
      v782 = 0u;
      v783 = 0u;
      v784 = 0u;
      v785 = 0u;
      v786 = 0u;
      *&v787 = 100;
      v788 = 1.0e-10;
      v559 = 5;
      v790 = 0;
      while (2)
      {
        v789 = v559;
        if (!sub_19BA78CE0(v775, &v770, __p, &v764))
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v652 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v652, OS_LOG_TYPE_ERROR, "[RobustUmeyama]: initialization failed.", buf, 2u);
          }

          v653 = sub_19B87DD40();
          if ((*(v653 + 160) & 0x80000000) == 0 || (*(v653 + 164) & 0x80000000) == 0 || (*(v653 + 168) & 0x80000000) == 0 || *(v653 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            LOWORD(__src[0]) = 0;
            v648 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[RobustUmeyama]: initialization failed.", __src, 2);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CMRobustUmeyama<double, 2>::runMEstimator(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v648);
LABEL_444:
            if (v648 != buf)
            {
              free(v648);
            }
          }

LABEL_446:
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v649 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            *&buf[4] = v559;
            _os_log_impl(&dword_19B873000, v649, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[selectInliers] robust umeyama failed, residual threshold, %{public}.1f .", buf, 0xCu);
          }

          v650 = sub_19B87DD40();
          if ((*(v650 + 160) & 0x80000000) == 0 || (*(v650 + 164) & 0x80000000) == 0 || (*(v650 + 168) & 0x80000000) == 0 || *(v650 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            LODWORD(__src[0]) = 134349056;
            *(__src + 4) = v559;
            v651 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLLocationOutlierRejector]:[selectInliers] robust umeyama failed, residual threshold, %{public}.1f .", __src, 12);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v651);
LABEL_456:
            if (v651 != buf)
            {
              free(v651);
            }
          }

LABEL_458:
          v617 = 0;
          v618 = 1.0;
          v619 = 0.0;
          goto LABEL_459;
        }

        sub_19BA7BF70(&v784, v775[0], v775[1], (v775[1] - v775[0]) >> 4);
        sub_19B9CA9C0(&v785 + 1, v779);
        if (v787 != 0.0)
        {
          v560 = 0;
          while (1)
          {
            v790 = v560;
            *&v786 = *(&v785 + 1);
            if (v779)
            {
              v561 = 0;
              do
              {
                v562 = vsubq_f64(*(v770 + v561), *(v784 + 16 * v561));
                v563 = sqrt(vaddvq_f64(vmulq_f64(v562, v562)));
                if (v563 <= v789)
                {
                  sub_19B8F518C(&v785 + 1, &qword_19BA8DBB8);
                }

                else
                {
                  *buf = v789 / v563;
                  sub_19B8F518C(&v785 + 1, buf);
                }

                ++v561;
              }

              while (v561 < v779);
            }

            if (!sub_19BA78CE0(v775, &v770, __p, &v785 + 1))
            {
              break;
            }

            if (v779)
            {
              v564 = 0.0;
              v565 = v775[0];
              v566 = v784;
              v567 = v779;
              do
              {
                v568 = *v565++;
                v569 = v568;
                v570 = *v566++;
                v571 = vsubq_f64(v569, v570);
                v571.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v571, v571)));
                v564 = v564 + v571.f64[0] * v571.f64[0];
                --v567;
              }

              while (v567);
            }

            else
            {
              v564 = 0.0;
            }

            if (v564 / v779 >= v788)
            {
              sub_19BA7BF70(&v784, v775[0], v775[1], (v775[1] - v775[0]) >> 4);
              if (++v560 < *&v787)
              {
                continue;
              }
            }

            goto LABEL_279;
          }

          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v646 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v646, OS_LOG_TYPE_ERROR, "[RobustUmeyama]: iteration failed.", buf, 2u);
          }

          v647 = sub_19B87DD40();
          if ((*(v647 + 160) & 0x80000000) == 0 || (*(v647 + 164) & 0x80000000) == 0 || (*(v647 + 168) & 0x80000000) == 0 || *(v647 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            LOWORD(__src[0]) = 0;
            v648 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[RobustUmeyama]: iteration failed.", __src, 2);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CMRobustUmeyama<double, 2>::runMEstimator(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v648);
            goto LABEL_444;
          }

          goto LABEL_446;
        }

LABEL_279:
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v572 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_INFO))
        {
          *buf = 134349312;
          *&buf[4] = v790;
          v798 = 2050;
          *&v799 = v787;
          _os_log_impl(&dword_19B873000, v572, OS_LOG_TYPE_INFO, "[RobustUmeyama]:number of iterations, %{public}zu, maximum allowed, %{public}zu.", buf, 0x16u);
        }

        v573 = sub_19B87DD40();
        if (*(v573 + 160) > 1 || *(v573 + 164) > 1 || *(v573 + 168) > 1 || *(v573 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          LODWORD(__src[0]) = 134349312;
          *(__src + 4) = v790;
          WORD2(__src[1]) = 2050;
          *(&__src[1] + 6) = *&v787;
          v577 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 1, "[RobustUmeyama]:number of iterations, %{public}zu, maximum allowed, %{public}zu.", __src, 22);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CMRobustUmeyama<double, 2>::runMEstimator(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v577);
          if (v577 != buf)
          {
            free(v577);
          }
        }

        v578 = v786;
        v579 = *(&v785 + 1);
        if (v786 != *(&v785 + 1))
        {
          v580 = 0;
          do
          {
            if (*(v579 + 8 * v580) >= 1.0)
            {
              objc_msgSend_addIndex_(v746, v574, v580, v576);
              v578 = v786;
              v579 = *(&v785 + 1);
            }

            ++v580;
          }

          while (v580 < (v578 - v579) >> 3);
        }

        v581 = objc_msgSend_count(v746, v574, v575, v576);
        v585 = *(&v777 + 1);
        if (*(&v777 + 1) <= 0.1 || *(&v777 + 1) >= 4.5 || (v586 = v581 / ((v771 - v770) >> 4), v585 = 0.15, v586 < 0.15))
        {
          objc_msgSend_removeAllIndexes(v746, v582, v583, v584, v585);
          v247 = v559 >= 0x10;
          v559 += 5;
          if (v247)
          {
            goto LABEL_500;
          }

          continue;
        }

        break;
      }

      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v654 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
      {
        v655 = *(a1 + 56);
        *buf = 134349568;
        *&buf[4] = v655;
        v798 = 2050;
        *&v799 = v559;
        v800 = 2050;
        v801 = *&v586;
        _os_log_impl(&dword_19B873000, v654, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[selectInliers] inliers are selected for batch count, %{public}zu, with residual threshold, %{public}.1f and inlier ratio, %{public}.2f", buf, 0x20u);
      }

      v656 = sub_19B87DD40();
      if (*(v656 + 160) > 1 || *(v656 + 164) > 1 || *(v656 + 168) > 1 || *(v656 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v657 = *(a1 + 56);
        LODWORD(__src[0]) = 134349568;
        *(__src + 4) = v657;
        WORD2(__src[1]) = 2050;
        *(&__src[1] + 6) = v559;
        HIWORD(__src[2]) = 2050;
        __src[3] = *&v586;
        v658 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLLocationOutlierRejector]:[selectInliers] inliers are selected for batch count, %{public}zu, with residual threshold, %{public}.1f and inlier ratio, %{public}.2f", __src, 32);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v658);
        if (v658 != buf)
        {
          free(v658);
        }
      }

LABEL_500:
      if (!objc_msgSend_count(v746, v587, v588, v589))
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v659 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
        {
          v660 = *(a1 + 56);
          *buf = 134349056;
          *&buf[4] = v660;
          _os_log_impl(&dword_19B873000, v659, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[selectInliers] no inlier is selected for batch count, %{public}zu", buf, 0xCu);
        }

        v661 = sub_19B87DD40();
        if (*(v661 + 160) > 1 || *(v661 + 164) > 1 || *(v661 + 168) > 1 || *(v661 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
          }

          v662 = *(a1 + 56);
          LODWORD(__src[0]) = 134349056;
          *(__src + 4) = v662;
          v651 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLLocationOutlierRejector]:[selectInliers] no inlier is selected for batch count, %{public}zu", __src, 12);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::selectInliers(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nonnull, NSMutableIndexSet * _Nonnull, double &, double &)", "CoreLocation: %s\n", v651);
          goto LABEL_456;
        }

        goto LABEL_458;
      }

      v619 = atan2(*&v776, *&v775[3]);
      v617 = 1;
      v618 = *(&v777 + 1);
LABEL_459:
      if (*(&v785 + 1))
      {
        *&v786 = *(&v785 + 1);
        operator delete(*(&v785 + 1));
      }

      if (v784)
      {
        *(&v784 + 1) = v784;
        operator delete(v784);
      }

      if (*(&v782 + 1))
      {
        *&v783 = *(&v782 + 1);
        operator delete(*(&v782 + 1));
      }

      if (v781)
      {
        *(&v781 + 1) = v781;
        operator delete(v781);
      }

      if (*(&v779 + 1))
      {
        *&v780 = *(&v779 + 1);
        operator delete(*(&v779 + 1));
      }

      if (v775[0])
      {
        v775[1] = v775[0];
        operator delete(v775[0]);
      }

      v28 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
LABEL_395:
      if (v761)
      {
        operator delete(v761);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

LABEL_337:
      if (v764)
      {
        v765 = v764;
        operator delete(v764);
      }

      if (v767)
      {
        v768 = v767;
        operator delete(v767);
      }

      if (v770)
      {
        v771 = v770;
        operator delete(v770);
      }

      if (v617)
      {
        objc_msgSend_removeAllIndexes(v750, v275, v276, v277);
        v623 = objc_msgSend_count(obj, v620, v621, v622);
        objc_msgSend_addIndexesInRange_(v750, v624, 0, v623);
        objc_msgSend_removeIndexes_(v750, v625, v746, v626);
        v760[0] = MEMORY[0x1E69E9820];
        v760[1] = 3221225472;
        v760[2] = sub_19BA77670;
        v760[3] = &unk_1E753ED90;
        v760[4] = v745;
        v760[5] = v271;
        objc_msgSend_enumerateIndexesUsingBlock_(v750, v627, v760, v628);
        if (v268 >= v755)
        {
          v629 = v755;
          do
          {
            v775[0] = v629;
            *buf = v775;
            *(sub_19BA788D8(a5, v629, buf) + 3) = v619;
            v775[0] = v629;
            *buf = v775;
            *(sub_19BA788D8(a6, v629++, buf) + 3) = v618;
          }

          while ((v268 + 1) != v629);
        }
      }

      v630 = v316;
      v631 = v268;
      if (v752 >= v749)
      {
        v631 = v755 + (fmin(*(a1 + 64), 1.0) * (v268 - v755));
        v630 = v271;
      }

      v755 = v631;
      v271 = v630;
      if (v316 == *(a1 + 48))
      {
        goto LABEL_528;
      }

LABEL_350:
      if (++v268 >= objc_msgSend_count(v757, v275, v276, v277))
      {
        goto LABEL_528;
      }
    }

    if (*(v28 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v663 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *&v667 = COERCE_DOUBLE(objc_msgSend_count(v758, v664, v665, v666));
      *buf = 134349312;
      *&buf[4] = v271;
      v798 = 2050;
      v799 = v667;
      _os_log_impl(&dword_19B873000, v663, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[runRejector] first location index,%{public}zu, higher than location size,%{public}zu.", buf, 0x16u);
    }

    v668 = sub_19B87DD40();
    if ((*(v668 + 160) & 0x80000000) == 0 || (*(v668 + 164) & 0x80000000) == 0 || (*(v668 + 168) & 0x80000000) == 0 || *(v668 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (*(v28 + 235) != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v672 = qword_1EAFE4760;
      v673 = objc_msgSend_count(v758, v669, v670, v671);
      LODWORD(v775[0]) = 134349312;
      *(v775 + 4) = v271;
      WORD2(v775[1]) = 2050;
      *(&v775[1] + 6) = v673;
      v674 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v672, 16, "[CLLocationOutlierRejector]:[runRejector] first location index,%{public}zu, higher than location size,%{public}zu.", v775, 22);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLLocationOutlierRejector::runRejector(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableIndexSet * _Nullable, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &, const BOOL)", "CoreLocation: %s\n", v674);
      if (v674 != buf)
      {
        free(v674);
      }
    }
  }

LABEL_528:
  objc_msgSend_removeAllIndexes(a4, v275, v276, v277);
  v678 = objc_msgSend_count(v758, v675, v676, v677);
  objc_msgSend_addIndexesInRange_(a4, v679, 0, v678);
  objc_msgSend_removeIndexes_(a4, v680, v745, v681);
  if (objc_msgSend_count(a4, v682, v683, v684) <= 1)
  {
    if (*(v28 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v688 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      v692 = objc_msgSend_count(a4, v689, v690, v691);
      *buf = 134349056;
      *&buf[4] = v692;
      _os_log_impl(&dword_19B873000, v688, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[runRejector] count of set of inliers is too few, %{public}zu.", buf, 0xCu);
    }

    v693 = sub_19B87DD40();
    if (*(v693 + 160) <= 1 && *(v693 + 164) <= 1 && *(v693 + 168) <= 1 && !*(v693 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (*(v28 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v697 = qword_1EAFE4760;
    v698 = objc_msgSend_count(a4, v694, v695, v696);
    LODWORD(v775[0]) = 134349056;
    *(v775 + 4) = v698;
    v209 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v697, 0, "[CLLocationOutlierRejector]:[runRejector] count of set of inliers is too few, %{public}zu.", v775, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::runRejector(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableIndexSet * _Nullable, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &, const BOOL)", "CoreLocation: %s\n", v209);
LABEL_114:
    if (v209 != buf)
    {
      free(v209);
    }

    return 0;
  }

  v699 = sub_19B8D9388(v758, 10.0, v685, v686, v687);
  v702 = objc_msgSend_objectsAtIndexes_(v758, v700, a4, v701);
  if (!(v699 | ((sub_19B8D9444(v702, v703, v704, v705) & 1) == 0)))
  {
    if (*(v28 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v741 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v741, OS_LOG_TYPE_DEFAULT, "[CLLocationOutlierRejector]:[runRejector] selected inliers are too sparse in space.", buf, 2u);
    }

    v742 = sub_19B87DD40();
    if (*(v742 + 160) <= 1 && *(v742 + 164) <= 1 && *(v742 + 168) <= 1 && !*(v742 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (*(v28 + 235) != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    LOWORD(v775[0]) = 0;
    v209 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLLocationOutlierRejector]:[runRejector] selected inliers are too sparse in space.", v775, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLLocationOutlierRejector::runRejector(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableIndexSet * _Nullable, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &, const BOOL)", "CoreLocation: %s\n", v209);
    goto LABEL_114;
  }

  v709 = objc_msgSend_firstObject(v758, v706, v707, v708);
  objc_msgSend_horizontalAccuracy(v709, v710, v711, v712);
  if (v716 > 0.0)
  {
    v717 = objc_msgSend_firstObject(v758, v713, v714, v715);
    objc_msgSend_horizontalAccuracy(v717, v718, v719, v720);
    if (v721 < 30.0)
    {
      objc_msgSend_addIndex_(a4, v713, 0, v715);
    }
  }

  v722 = objc_msgSend_lastObject(v758, v713, v714, v715);
  objc_msgSend_horizontalAccuracy(v722, v723, v724, v725);
  if (v729 > 0.0)
  {
    v730 = objc_msgSend_lastObject(v758, v726, v727, v728);
    objc_msgSend_horizontalAccuracy(v730, v731, v732, v733);
    if (v737 < 30.0)
    {
      v738 = objc_msgSend_count(v758, v734, v735, v736);
      objc_msgSend_addIndex_(a4, v739, v738 - 1, v740);
    }
  }

  return 1;
}

void sub_19BA77524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_19BA78854(&a53);
  if (__p)
  {
    operator delete(__p);
  }

  v54 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v54;
    operator delete(v54);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  _Unwind_Resume(a1);
}

void sub_19BA7767C(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_19B9CACF4(a2);
    }

    sub_19B8B8A40();
  }
}

void sub_19BA77720(uint64_t a1, unint64_t a2)
{
  if (a2 > *(a1 + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_19B8D9954(&v2, ((a2 - 1) >> 6) + 1);
    }

    sub_19B8B8A40();
  }
}

void sub_19BA77848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19BA77860()
{
  result = os_log_create("com.apple.locationd.Motion", "PedTrajectorySmoothing");
  qword_1EAFE4760 = result;
  return result;
}

uint64_t sub_19BA77890(void *a1, const char *a2, const char *a3, uint64_t a4)
{
  v130 = *MEMORY[0x1E69E9840];
  v117 = a2;
  result = sub_19BA78234(a1, a2, &v117, a4);
  if (!result)
  {
    return result;
  }

  v116 = a3;
  result = sub_19BA78320(a1, a3, &v116, v8);
  if (!result)
  {
    return result;
  }

  v12 = v116;
  v11 = v117;
  if (v117 >= v116)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v79 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v83 = objc_msgSend_count(a1, v80, v81, v82);
      *buf = 134218496;
      v125 = v11;
      v126 = 2048;
      v127 = v12;
      v128 = 2048;
      v129 = v83;
      _os_log_impl(&dword_19B873000, v79, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[isTrajectoryStraightBeforeAndAfterFlag] start idx equal or greater than end idx.startIdx,%zu,endIdx,%zu,ioCount,%zu", buf, 0x20u);
    }

    v84 = sub_19B87DD40();
    if ((*(v84 + 160) & 0x80000000) != 0 && (*(v84 + 164) & 0x80000000) != 0 && (*(v84 + 168) & 0x80000000) != 0 && !*(v84 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v88 = qword_1EAFE4760;
    v89 = objc_msgSend_count(a1, v85, v86, v87);
    v118 = 134218496;
    v119 = v11;
    v120 = 2048;
    v121 = v12;
    v122 = 2048;
    v123 = v89;
    v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v88, 16, "[CLLocationOutlierRejector]:[isTrajectoryStraightBeforeAndAfterFlag] start idx equal or greater than end idx.startIdx,%zu,endIdx,%zu,ioCount,%zu", &v118, 32);
    sub_19B885924("Generic", 1, 0, 0, "BOOL (anonymous namespace)::isTrajectoryStraightBeforeAndAfterFlag(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, size_t, size_t)", "CoreLocation: %s\n", v90);
    if (v90 == buf)
    {
      return 0;
    }

    goto LABEL_44;
  }

  v13 = (v117 + 1);
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(a1, v9, v13, v10);
    v23 = objc_msgSend_deltaPosition_m(v19, v20, v21, v22);
    if (objc_msgSend_isValid(v23, v24, v25, v26))
    {
      v28 = objc_msgSend_deltaPosition_m(v19, v9, v27, v10);
      objc_msgSend_X(v28, v29, v30, v31);
      v16 = v16 + v32;
      v36 = objc_msgSend_deltaPosition_m(v19, v33, v34, v35);
      objc_msgSend_Y(v36, v37, v38, v39);
      v17 = v17 + v40;
      v44 = objc_msgSend_deltaPosition_m(v19, v41, v42, v43);
      objc_msgSend_X(v44, v45, v46, v47);
      v52 = v51;
      if (v13 >= a2)
      {
        v58 = objc_msgSend_deltaPosition_m(v19, v48, v49, v50);
        objc_msgSend_Y(v58, v59, v60, v61);
        v18 = v18 + hypot(v52, v62);
      }

      else
      {
        v14 = v14 + v51;
        v53 = objc_msgSend_deltaPosition_m(v19, v48, v49, v50);
        objc_msgSend_Y(v53, v54, v55, v56);
        v15 = v15 + v57;
      }
    }

    ++v13;
  }

  while (v13 <= v12);
  v63 = 0;
  v64 = v14;
  v65 = v15;
  *v115 = v64;
  *&v115[1] = v65;
  v115[2] = 0;
  v66 = v16;
  v67 = v17;
  *v114 = v66;
  *&v114[1] = v67;
  v114[2] = 0;
  v68 = 0.0;
  do
  {
    v68 = v68 + (*&v114[v63] * *&v114[v63]);
    ++v63;
  }

  while (v63 != 3);
  v69 = 0;
  v70 = 0.0;
  do
  {
    v70 = v70 + (*&v115[v69] * *&v115[v69]);
    ++v69;
  }

  while (v69 != 3);
  if (sqrtf(v68) <= sqrtf(v70))
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v91 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEBUG))
    {
      v95 = objc_msgSend_count(a1, v92, v93, v94);
      *buf = 134218496;
      v125 = a2;
      v126 = 2048;
      v127 = a3;
      v128 = 2048;
      v129 = v95;
      _os_log_impl(&dword_19B873000, v91, OS_LOG_TYPE_DEBUG, "[CLLocationOutlierRejector]:[isTrajectoryStraightBeforeAndAfterFlag] trajecotry does not go straight.firstFlagIdx,%zu,secondFlagIdx,%zu,ioCount,%zu", buf, 0x20u);
    }

    v96 = sub_19B87DD40();
    if (*(v96 + 160) <= 1 && *(v96 + 164) <= 1 && *(v96 + 168) <= 1 && !*(v96 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v100 = qword_1EAFE4760;
    v101 = objc_msgSend_count(a1, v97, v98, v99);
    v118 = 134218496;
    v119 = a2;
    v120 = 2048;
    v121 = a3;
    v122 = 2048;
    v123 = v101;
    v102 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v100, 2, "[CLLocationOutlierRejector]:[isTrajectoryStraightBeforeAndAfterFlag] trajecotry does not go straight.firstFlagIdx,%zu,secondFlagIdx,%zu,ioCount,%zu", &v118, 32);
    goto LABEL_43;
  }

  if (a2 == a3 && v18 > 5.0)
  {
    v71 = v16 - v14;
    v72 = v15;
    v73 = hypot(v71, v17 - v15);
    v65 = v72;
    v74 = v73 / v18;
    if (v73 / v18 < 0.65)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v103 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEBUG))
      {
        v107 = objc_msgSend_count(a1, v104, v105, v106);
        *buf = 134218496;
        v125 = a2;
        v126 = 2048;
        v127 = *&v74;
        v128 = 2048;
        v129 = v107;
        _os_log_impl(&dword_19B873000, v103, OS_LOG_TYPE_DEBUG, "[CLLocationOutlierRejector]:[isTrajectoryStraightBeforeAndAfterFlag] trajectory is not straight after the flag.flagIdx,%zu,straightness,%.2f,ioCount,%zu", buf, 0x20u);
      }

      v108 = sub_19B87DD40();
      if (*(v108 + 160) <= 1 && *(v108 + 164) <= 1 && *(v108 + 168) <= 1 && !*(v108 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v112 = qword_1EAFE4760;
      v113 = objc_msgSend_count(a1, v109, v110, v111);
      v118 = 134218496;
      v119 = a2;
      v120 = 2048;
      v121 = *&v74;
      v122 = 2048;
      v123 = v113;
      v102 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v112, 2, "[CLLocationOutlierRejector]:[isTrajectoryStraightBeforeAndAfterFlag] trajectory is not straight after the flag.flagIdx,%zu,straightness,%.2f,ioCount,%zu", &v118, 32);
LABEL_43:
      v90 = v102;
      sub_19B885924("Generic", 1, 0, 2, "BOOL (anonymous namespace)::isTrajectoryStraightBeforeAndAfterFlag(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, size_t, size_t)", "CoreLocation: %s\n", v102);
      if (v90 == buf)
      {
        return 0;
      }

LABEL_44:
      free(v90);
      return 0;
    }
  }

  v75 = v14;
  v76 = v17;
  v77 = fabsf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(sub_19BA7841C(v75, v65, 0.0, v66, v76, 0.0))));
  v78 = 20.0;
  if (a2 == a3)
  {
    v78 = 7.0;
  }

  return v77 * 57.2957802 < v78;
}

double sub_19BA77F94(void *a1, const char *a2, char *a3, uint64_t a4)
{
  v5 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (a2 <= a3 && objc_msgSend_count(a1, a2, a3, a4) - 1 >= a3)
  {
    v19 = 0.0;
    if (v5 != a3)
    {
      while (++v5 <= a3)
      {
        v20 = objc_msgSend_objectAtIndexedSubscript_(a1, v7, v5, v8);
        v24 = objc_msgSend_deltaPosition_m(v20, v21, v22, v23);
        if (objc_msgSend_isValid(v24, v25, v26, v27))
        {
          v29 = objc_msgSend_deltaPosition_m(v20, v7, v28, v8);
          objc_msgSend_X(v29, v30, v31, v32);
          v34 = v33;
          v38 = objc_msgSend_deltaPosition_m(v20, v35, v36, v37);
          objc_msgSend_Y(v38, v39, v40, v41);
          v19 = v19 + hypot(v34, v42);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v9 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v51 = v5;
      v52 = 2048;
      v53 = a3;
      v54 = 2048;
      v55 = objc_msgSend_count(a1, v10, v11, v12);
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "[CLLocationOutlierRejector]:[computDistanceBetweenTwoIOSamples] computation failed.startIdx,%zu,endIdx,%zu,ioCount,%zu", buf, 0x20u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || (v19 = -1.0, *(v13 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v17 = qword_1EAFE4760;
      v44 = 134218496;
      v45 = v5;
      v46 = 2048;
      v47 = a3;
      v48 = 2048;
      v49 = objc_msgSend_count(a1, v14, v15, v16);
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 16, "[CLLocationOutlierRejector]:[computDistanceBetweenTwoIOSamples] computation failed.startIdx,%zu,endIdx,%zu,ioCount,%zu", &v44, 32);
      sub_19B885924("Generic", 1, 0, 0, "double (anonymous namespace)::computDistanceBetweenTwoIOSamples(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, size_t, size_t)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }

      return -1.0;
    }
  }

  return v19;
}

uint64_t sub_19BA78234(void *a1, const char *a2, uint64_t *a3, uint64_t a4)
{
  *a3 = a2;
  if (!a2)
  {
    return 0;
  }

  v7 = 0.0;
  v8 = a2;
  do
  {
    v9 = v7 >= 8.0 && &a2[-v8] > 9;
    v10 = v9;
    if (v9)
    {
      break;
    }

    v11 = objc_msgSend_objectAtIndexedSubscript_(a1, a2, v8, a4);
    v15 = objc_msgSend_deltaPosition_m(v11, v12, v13, v14);
    v22 = 0.0;
    v23 = 0.0;
    if (objc_msgSend_isValid(v15, v16, v17, v18))
    {
      v24 = objc_msgSend_deltaPosition_m(v11, v19, v20, v21);
      objc_msgSend_X(v24, v25, v26, v27);
      v23 = v28;
    }

    v29 = objc_msgSend_deltaPosition_m(v11, v19, v20, v21);
    if (objc_msgSend_isValid(v29, v30, v31, v32))
    {
      v36 = objc_msgSend_deltaPosition_m(v11, v33, v34, v35);
      objc_msgSend_Y(v36, v37, v38, v39);
      v22 = v40;
    }

    v7 = v7 + hypot(v23, v22);
    v8 = *a3 - 1;
    v41 = *a3 == 1;
    *a3 = v8;
  }

  while (!v41);
  return v10;
}

BOOL sub_19BA78320(void *a1, const char *a2, unint64_t *a3, uint64_t a4)
{
  *a3 = a2;
  if (objc_msgSend_count(a1, a2, a3, a4) > a2)
  {
    v10 = 0.0;
    do
    {
      v8 = *a3;
      if (v10 >= 8.0 && *a3 - a2 > 9)
      {
        break;
      }

      v12 = objc_msgSend_objectAtIndexedSubscript_(a1, v7, v8, v9);
      v16 = objc_msgSend_deltaPosition_m(v12, v13, v14, v15);
      v23 = 0.0;
      v24 = 0.0;
      if (objc_msgSend_isValid(v16, v17, v18, v19))
      {
        v25 = objc_msgSend_deltaPosition_m(v12, v20, v21, v22);
        objc_msgSend_X(v25, v26, v27, v28);
        v24 = v29;
      }

      v30 = objc_msgSend_deltaPosition_m(v12, v20, v21, v22);
      if (objc_msgSend_isValid(v30, v31, v32, v33))
      {
        v37 = objc_msgSend_deltaPosition_m(v12, v34, v35, v36);
        objc_msgSend_Y(v37, v38, v39, v40);
        v23 = v41;
      }

      v10 = v10 + hypot(v24, v23);
      v42 = *a3 + 1;
      *a3 = v42;
    }

    while (v42 < objc_msgSend_count(a1, v43, v44, v45));
  }

  v46 = *a3;
  return v46 < objc_msgSend_count(a1, v7, v8, v9);
}

double sub_19BA7841C(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = 0;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v13 = 0.0;
  do
  {
    v13 = v13 + (*(&v39 + v12) * *(&v39 + v12));
    v12 += 4;
  }

  while (v12 != 12);
  if (sqrtf(v13) > 0.00000011921)
  {
    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = v15 + (*(&v39 + v14) * *(&v39 + v14));
      v14 += 4;
    }

    while (v14 != 12);
    v16 = sqrtf(v15);
    v11 = v11 / v16;
    v10 = a2 / v16;
    v9 = a3 / v16;
  }

  v17 = 0;
  v39 = a4;
  v40 = a5;
  v18 = 0.0;
  v41 = a6;
  do
  {
    v18 = v18 + (*(&v39 + v17) * *(&v39 + v17));
    v17 += 4;
  }

  while (v17 != 12);
  if (sqrtf(v18) > 0.00000011921)
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v39 + v19) * *(&v39 + v19));
      v19 += 4;
    }

    while (v19 != 12);
    v21 = sqrtf(v20);
    v8 = a4 / v21;
    v7 = a5 / v21;
    v6 = a6 / v21;
  }

  v22 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
  v23 = 1.0;
  if (v22 < 1.0)
  {
    v23 = -1.0;
    if (v22 > -1.0)
    {
      v23 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
    }
  }

  *&result = acosf(v23);
  if (*&result < 0.7854)
  {
    v25 = 0;
    v39 = (v10 * v6) - (v9 * v7);
    v40 = (v9 * v8) - (v11 * v6);
    v41 = (v11 * v7) - (v10 * v8);
    v26 = 0.0;
    do
    {
      v26 = v26 + (*(&v39 + v25) * *(&v39 + v25));
      v25 += 4;
    }

    while (v25 != 12);
    if (sqrtf(v26) >= 1.0)
    {
      goto LABEL_34;
    }

    v27 = 0;
    v38[0] = (v10 * v6) - (v9 * v7);
    v38[1] = (v9 * v8) - (v11 * v6);
    v28 = 0.0;
    v38[2] = (v11 * v7) - (v10 * v8);
    do
    {
      v28 = v28 + (v38[v27] * v38[v27]);
      ++v27;
    }

    while (v27 != 3);
    v29 = sqrtf(v28);
    v30 = -1.0;
    if (v29 > -1.0)
    {
LABEL_34:
      v31 = 0;
      v37[0] = (v10 * v6) - (v9 * v7);
      v37[1] = (v9 * v8) - (v11 * v6);
      v32 = 0.0;
      v37[2] = (v11 * v7) - (v10 * v8);
      do
      {
        v32 = v32 + (v37[v31] * v37[v31]);
        ++v31;
      }

      while (v31 != 3);
      v33 = sqrtf(v32);
      v30 = 1.0;
      if (v33 < 1.0)
      {
        v34 = 0;
        v36[0] = (v10 * v6) - (v9 * v7);
        v36[1] = (v9 * v8) - (v11 * v6);
        v35 = 0.0;
        v36[2] = (v11 * v7) - (v10 * v8);
        do
        {
          v35 = v35 + (v36[v34] * v36[v34]);
          ++v34;
        }

        while (v34 != 3);
        v30 = sqrtf(v35);
      }
    }

    *&result = asinf(v30);
  }

  return result;
}

BOOL sub_19BA786A8(void *a1, const char *a2, unint64_t a3, float *a4)
{
  v6 = a3 - a2;
  if (a3 > a2)
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = a2;
    do
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(a1, a2, v12, a4);
      v17 = objc_msgSend_quaternion(v13, v14, v15, v16);
      objc_msgSend_X(v17, v18, v19, v20);
      *&v22 = v21;
      v25 = objc_msgSend_objectAtIndexedSubscript_(a1, v23, v12, v24);
      v29 = objc_msgSend_quaternion(v25, v26, v27, v28);
      objc_msgSend_Y(v29, v30, v31, v32);
      *&v34 = v33;
      v37 = objc_msgSend_objectAtIndexedSubscript_(a1, v35, v12, v36);
      v41 = objc_msgSend_quaternion(v37, v38, v39, v40);
      objc_msgSend_Z(v41, v42, v43, v44);
      *&v46 = v45;
      v49 = objc_msgSend_objectAtIndexedSubscript_(a1, v47, v12, v48);
      v53 = objc_msgSend_quaternion(v49, v50, v51, v52);
      objc_msgSend_W(v53, v54, v55, v56);
      v57.f32[0] = *v57.i64;
      v69.i64[0] = __PAIR64__(v34, v22);
      v69.i64[1] = __PAIR64__(v57.u32[0], v46);
      sub_19B9CC28C(&v69, v57);
      v9 = v9 + sub_19B9CC1DC(v69.f32);
      v10 = v10 + v58;
      v11 = v11 + v59;
      ++v12;
    }

    while (a3 != v12);
    v60 = 0;
    v61 = v9 / v6;
    v62 = v10 / v6;
    v63 = v11 / v6;
    v69.i64[0] = __PAIR64__(LODWORD(v62), LODWORD(v61));
    v69.f32[2] = v63;
    v64 = 0.0;
    do
    {
      v64 = v64 + (v69.f32[v60] * v69.f32[v60]);
      ++v60;
    }

    while (v60 != 3);
    if (sqrtf(v64) > 0.00000011921)
    {
      v65 = 0;
      v66 = 0.0;
      do
      {
        v66 = v66 + (v69.f32[v65] * v69.f32[v65]);
        ++v65;
      }

      while (v65 != 3);
      v67 = sqrtf(v66);
      v61 = v61 / v67;
      v62 = v62 / v67;
      v63 = v63 / v67;
    }

    *a4 = v61;
    a4[1] = v62;
    a4[2] = v63;
  }

  return a3 > a2;
}

uint64_t sub_19BA78854(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    *(a1 + 240) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    *(a1 + 192) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    *(a1 + 168) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    *(a1 + 112) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_19BA788D8(float *a1, unint64_t a2, void **a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
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
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
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

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

BOOL sub_19BA78CE0(uint64_t a1, float64x2_t **a2, void **a3, double **a4)
{
  v191 = *MEMORY[0x1E69E9840];
  v6 = a2[1] - *a2;
  if (v6 != a3[1] - *a3)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v12 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v13 = a2[1] - *a2;
      v14 = (a3[1] - *a3) >> 4;
      *buf = 134349312;
      *&buf[4] = v13;
      *&buf[12] = 2050;
      *&buf[14] = v14;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "[Umeyama]: reference size, %{public}zu !=  toBeAligned size %{public}zu.", buf, 0x16u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v16 = a2[1] - *a2;
    v17 = (a3[1] - *a3) >> 4;
    *v188 = 134349312;
    *&v188[4] = v16;
    *&v188[12] = 2050;
    *&v188[14] = v17;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]: reference size, %{public}zu !=  toBeAligned size %{public}zu.", v188, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::runAlgorithm(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
LABEL_167:
    if (v11 != buf)
    {
      free(v11);
    }

    return 0;
  }

  v8 = v6 >> 4;
  *(a1 + 96) = v6 >> 4;
  if (v6 >> 4 == 1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v18 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 96);
      *buf = 134349312;
      *&buf[4] = v19;
      *&buf[12] = 2050;
      *&buf[14] = 2;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "[Umeyama]: number of observations, %{public}zu < dimension %{public}zu.", buf, 0x16u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v21 = *(a1 + 96);
    *v188 = 134349312;
    *&v188[4] = v21;
    *&v188[12] = 2050;
    *&v188[14] = 2;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]: number of observations, %{public}zu < dimension %{public}zu.", v188, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::runAlgorithm(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
    goto LABEL_167;
  }

  if (!v8)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v9 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "[Umeyama]: number of observations is 0.", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    *v188 = 0;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]: number of observations is 0.", v188, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::runAlgorithm(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
    goto LABEL_167;
  }

  sub_19BA7767C(a1, v8);
  v23 = *a4;
  v24 = a4[1];
  v25 = 0.0;
  if (*a4 == v24)
  {
LABEL_50:
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v35 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = v25;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_INFO, "[Umeyama]:sum of weights are not positive, %{public}.2f", buf, 0xCu);
    }

    v36 = sub_19B87DD40();
    if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    *v188 = 134349056;
    *&v188[4] = v25;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 1, "[Umeyama]:sum of weights are not positive, %{public}.2f", v188, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CMUmeyama<double, 2>::checkAndNormalizeWeights(const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
    goto LABEL_167;
  }

  v26 = *a4;
  while (1)
  {
    v27 = *v26;
    if (*v26 <= 0.0)
    {
      break;
    }

    v25 = v25 + v27;
    if (++v26 == v24)
    {
      if (v25 <= 0.000001)
      {
        goto LABEL_50;
      }

      v28 = (a1 + 104);
      if ((a1 + 104) == a4)
      {
        v39 = *(a1 + 112);
      }

      else
      {
        v29 = v24 - v23;
        v30 = *(a1 + 120);
        v31 = *(a1 + 104);
        if (v30 - v31 < (v24 - v23))
        {
          v32 = v29 >> 3;
          if (v31)
          {
            *(a1 + 112) = v31;
            operator delete(v31);
            v30 = 0;
            *v28 = 0;
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
          }

          if (!(v32 >> 61))
          {
            v33 = v30 >> 2;
            if (v30 >> 2 <= v32)
            {
              v33 = v29 >> 3;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v33;
            }

            sub_19B8FD05C((a1 + 104), v34);
          }

          sub_19B8F3F74();
        }

        v40 = *(a1 + 112);
        v41 = v40 - v31;
        if (v40 - v31 >= v29)
        {
          memmove(v31, v23, v24 - v23);
          v39 = &v31[v29];
        }

        else
        {
          if (v40 != v31)
          {
            memmove(*(a1 + 104), v23, v40 - v31);
            v40 = *(a1 + 112);
          }

          v42 = v23 + v41;
          v43 = v24 - (v23 + v41);
          if (v43)
          {
            memmove(v40, v42, v43);
          }

          v39 = &v40[v43];
        }

        *(a1 + 112) = v39;
      }

      v44 = *v28;
      if (*v28 != v39)
      {
        v45 = *v28;
        do
        {
          *v45 = 1.0 / v25 * *v45;
          ++v45;
        }

        while (v45 != v39);
      }

      v46 = *(a1 + 96);
      *(a1 + 128) = *&sub_19BA7AED4(v46, v44, *a2);
      *(a1 + 136) = v47;
      *(a1 + 144) = *&sub_19BA7AED4(v46, v44, *a3);
      *(a1 + 152) = v48;
      v49 = (a1 + 160);
      if ((a1 + 160) != a2)
      {
        sub_19BA7BF70((a1 + 160), *a2, a2[1], a2[1] - *a2);
      }

      v50 = (a1 + 184);
      if ((a1 + 184) != a3)
      {
        sub_19BA7BF70((a1 + 184), *a3, a3[1], (a3[1] - *a3) >> 4);
      }

      if (!*(a1 + 96))
      {
        goto LABEL_105;
      }

      v51 = 0;
      do
      {
        v52 = 0;
        v53 = 1;
        do
        {
          v54 = v53;
          v55 = *sub_19B94F084(a1 + 128, v52);
          v56 = sub_19B94F084(*v49 + 16 * v51, v52);
          *v56 = *v56 - v55;
          v57 = *sub_19B94F084(a1 + 144, v52);
          v58 = sub_19B94F084(*v50 + 16 * v51, v52);
          v53 = 0;
          *v58 = *v58 - v57;
          v52 = 1;
        }

        while ((v54 & 1) != 0);
        ++v51;
        v59 = *(a1 + 96);
      }

      while (v51 < v59);
      memset(buf, 0, 32);
      if (v59)
      {
        v60 = 0;
        do
        {
          v61 = 0;
          v62 = (*v50 + 16 * v60);
          *v188 = vmulq_n_f64(*(*v49 + 16 * v60), *(*(a1 + 104) + 8 * v60));
          v63 = 1;
          do
          {
            v64 = v63;
            v65 = sub_19B950834(v188, v61);
            v66 = *v62;
            v67 = sub_19B8D7BD0(buf, v61, 0);
            *v67 = *v67 + v65 * v66;
            v68 = sub_19B950834(v188, v61);
            v69 = v62[1];
            v70 = sub_19B8D7BD0(buf, v61, 1uLL);
            v63 = 0;
            *v70 = *v70 + v68 * v69;
            v61 = 1;
          }

          while ((v64 & 1) != 0);
          ++v60;
        }

        while (v60 < *(a1 + 96));
        v72 = *buf;
        v71 = *&buf[8];
        v73 = *&buf[24];
        v74 = *&buf[16];
      }

      else
      {
LABEL_105:
        v73 = 0;
        v74 = 0;
        v71 = 0;
        v72 = 0;
      }

      v181[0] = v72;
      v181[1] = v71;
      v181[2] = v74;
      v181[3] = v73;
      *v188 = v72;
      *&v188[8] = v74;
      *&v188[16] = v71;
      v189 = v73;
      v75 = 0;
      *buf = sub_19B94F70C(v188, v181);
      *&buf[8] = v76;
      *&buf[16] = v77;
      *&buf[24] = v78;
      memset(v178, 0, sizeof(v178));
      v79 = 1;
      do
      {
        v80 = v79;
        *sub_19B8D7BD0(v178, v75, v75) = 0x3FF0000000000000;
        v81 = *sub_19B8D7BD0(buf, v75, v75);
        *sub_19B94F084(&v186, v75) = v81;
        v82 = *sub_19B8D7BD0(buf, v75, v75);
        *sub_19B94F084(&v179, v75) = v82;
        v83 = sub_19B94F084(&v183, v75);
        v79 = 0;
        *v83 = 0;
        v75 = 1;
      }

      while ((v80 & 1) != 0);
      v84 = 0;
      do
      {
        if (*&buf[16] == 0.0)
        {
          break;
        }

        v85 = *&buf[16] >= 0.0 ? *&buf[16] : -*&buf[16];
        v86 = v84 >= 3 ? 0.0 : v85 * 0.200000003 * 0.25;
        v87 = v85 * 100.0;
        if (v84 < 4)
        {
          goto LABEL_286;
        }

        v88 = *&v186;
        v89 = v87 + *&v186;
        if (v87 + *&v186 < 0.0)
        {
          v89 = -(v87 + *&v186);
        }

        if (*&v186 < 0.0)
        {
          v88 = -*&v186;
        }

        if (v89 != v88)
        {
          goto LABEL_286;
        }

        v90 = *(&v186 + 1);
        v91 = v87 + *(&v186 + 1);
        if (v87 + *(&v186 + 1) < 0.0)
        {
          v91 = -(v87 + *(&v186 + 1));
        }

        if (*(&v186 + 1) < 0.0)
        {
          v90 = -*(&v186 + 1);
        }

        if (v91 == v90)
        {
          *&buf[16] = 0;
        }

        else
        {
LABEL_286:
          if (v85 > v86)
          {
            v92 = 0;
            v93 = *(&v186 + 1) - *&v186;
            v94 = v87 + *(&v186 + 1) - *&v186;
            if (v94 < 0.0)
            {
              v94 = -v94;
            }

            v95 = -v93;
            if (v93 >= 0.0)
            {
              v95 = *(&v186 + 1) - *&v186;
            }

            v96 = v93 * 0.5 / *&buf[16];
            v97 = -v96;
            v98 = v96 < 0.0;
            if (v96 >= 0.0)
            {
              v97 = v93 * 0.5 / *&buf[16];
            }

            v99 = 1.0 / (v97 + sqrt(v96 * v96 + 1.0));
            if (v98)
            {
              v99 = -v99;
            }

            v100 = *&buf[16] / v93;
            if (v94 == v95)
            {
              v101 = v100;
            }

            else
            {
              v101 = v99;
            }

            v102 = 1.0 / sqrt(v101 * v101 + 1.0);
            v103 = v101 * v102;
            v104 = v101 * v102 / (v102 + 1.0);
            v183.f64[0] = v183.f64[0] - *&buf[16] * v101;
            v183.f64[1] = *&buf[16] * v101 + v183.f64[1];
            *&v186 = *&v186 - *&buf[16] * v101;
            *(&v186 + 1) = *(&v186 + 1) + *&buf[16] * v101;
            *&buf[16] = 0;
            v105 = -(v101 * v102);
            v106 = 1;
            do
            {
              v107 = v106;
              v108 = *sub_19B8D7BD0(v178, v92, 0);
              v109 = *sub_19B8D7BD0(v178, v92, 1uLL);
              *sub_19B8D7BD0(v178, v92, 0) = v108 + v105 * (v109 + v108 * v104);
              v110 = sub_19B8D7BD0(v178, v92, 1uLL);
              v106 = 0;
              *v110 = v109 + v103 * (v108 - v109 * v104);
              v92 = 1;
            }

            while ((v107 & 1) != 0);
          }
        }

        ++v84;
        v179 = vaddq_f64(v183, v179);
        v186 = v179;
        v183 = 0uLL;
      }

      while (v84 != 10);
      *buf = v186;
      v186 = xmmword_19BA8C830;
      *&v179.f64[0] = buf;
      sub_19BA7B000(&v186, v187, &v179, 2, 1);
      v111 = *sub_19B94F084(buf, v186);
      v112 = *sub_19B94F084(buf, *(&v186 + 1));
      v113 = v186;
      v114 = *sub_19B8D7BD0(v178, 0, v186);
      v115 = *sub_19B8D7BD0(v178, 1uLL, v113);
      v116 = *(&v186 + 1);
      v117 = *sub_19B8D7BD0(v178, 0, *(&v186 + 1));
      v118 = sub_19B8D7BD0(v178, 1uLL, v116);
      v119 = 0;
      v120 = 0;
      v121 = *v118;
      v178[0].i64[0] = v114;
      v178[0].i64[1] = v115;
      v178[1].i64[0] = v117;
      v178[1].i64[1] = v121;
      v182[0] = v111;
      v182[1] = v112;
      while (1)
      {
        v122 = v119;
        v123 = *sub_19B94F084(v182, v120);
        *sub_19B94F084(&v183, v120) = sqrt(v123);
        if (*sub_19B94F084(&v183, v120) < 0.000001)
        {
          break;
        }

        v119 = 1;
        v120 = 1;
        if (v122)
        {
          if (v183.f64[1] == v183.f64[0])
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
            }

            v124 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v124, OS_LOG_TYPE_ERROR, "[Umeyama]:repeated singular value", buf, 2u);
            }

            v125 = sub_19B87DD40();
            if ((*(v125 + 160) & 0x80000000) == 0 || (*(v125 + 164) & 0x80000000) == 0 || (*(v125 + 168) & 0x80000000) == 0 || *(v125 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
              }

              LOWORD(v186) = 0;
              v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]:repeated singular value", &v186, 2);
              sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
              goto LABEL_167;
            }
          }

          else
          {
            sub_19BA7A9A4(v178);
            v133 = v132;
            v134 = -v132;
            if (v133 >= 0.0)
            {
              v134 = v133;
            }

            v135 = v134 + -1.0;
            if (v135 < 0.0)
            {
              v135 = -v135;
            }

            if (v135 <= 0.000001)
            {
              if (sub_19BA7AF14(v178[0].i64))
              {
                v138 = 0;
                *&v186 = sub_19B94F70C(v181, v178);
                *(&v186 + 1) = v139;
                v140 = 1;
                v187[0] = v141;
                v187[1] = v142;
                do
                {
                  v143 = v140;
                  v144 = *sub_19B94F084(&v183, v138);
                  v145 = *sub_19B8D7BD0(&v186, 0, v138);
                  v146 = 1.0 / v144;
                  *sub_19B8D7BD0(&v179, 0, v138) = v146 * v145;
                  v147 = *sub_19B8D7BD0(&v186, 1uLL, v138);
                  v148 = sub_19B8D7BD0(&v179, 1uLL, v138);
                  v140 = 0;
                  *v148 = v146 * v147;
                  v138 = 1;
                }

                while ((v143 & 1) != 0);
                sub_19BA7A9A4(&v179);
                v150 = v149;
                v151 = -v149;
                if (v150 >= 0.0)
                {
                  v151 = v150;
                }

                v152 = v151 + -1.0;
                if (v152 < 0.0)
                {
                  v152 = -v152;
                }

                if (v152 <= 0.000001)
                {
                  if (sub_19BA7AF14(&v179))
                  {
                    v157 = 0;
                    v158 = 1;
                    while (1)
                    {
                      v159 = v158;
                      if (*sub_19B94F084(&v183, v157) < 0.000001)
                      {
                        break;
                      }

                      v158 = 0;
                      v157 = 1;
                      if ((v159 & 1) == 0)
                      {
                        sub_19BA7A9A4(&v179);
                        v161 = v160;
                        sub_19BA7A9A4(v178);
                        if (v161 * v162 < 0.0)
                        {
                          v180 = vnegq_f64(v180);
                          v183.f64[1] = -v183.f64[1];
                        }

                        *&v188[8] = vextq_s8(*(v178 + 8), *(v178 + 8), 8uLL);
                        *v188 = v178[0].i64[0];
                        v189 = v178[1].i64[1];
                        *(a1 + 24) = sub_19B94F70C(&v179, v188);
                        *(a1 + 32) = v163;
                        *(a1 + 40) = v164;
                        *(a1 + 48) = v165;
                        if (sub_19BA7AF14((a1 + 24)))
                        {
                          sub_19BA7A9A4((a1 + 24));
                          v167 = v166;
                          v168 = v166 + -1.0;
                          if (v168 < 0.0)
                          {
                            v168 = -v168;
                          }

                          if (v168 < 0.000001)
                          {
                            result = sub_19BA7AAA0(a1, v183.f64[0], v183.f64[1]);
                            if (result)
                            {
                              sub_19BA7ACD8(a1);
                              sub_19BA7AD1C(a1, a3);
                              sub_19BA7AE78(a1, a2, v169);
                              return 1;
                            }

                            return result;
                          }

                          if (qword_1EAFE4758 != -1)
                          {
                            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                          }

                          v176 = qword_1EAFE4760;
                          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 134349056;
                            *&buf[4] = v167;
                            _os_log_impl(&dword_19B873000, v176, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of rotation matrix is not correct, %{public}.2f", buf, 0xCu);
                          }

                          v177 = sub_19B87DD40();
                          if ((*(v177 + 160) & 0x80000000) == 0 || (*(v177 + 164) & 0x80000000) == 0 || (*(v177 + 168) & 0x80000000) == 0 || *(v177 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE4758 != -1)
                            {
                              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                            }

                            LODWORD(v186) = 134349056;
                            *(&v186 + 4) = v167;
                            v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]:determinant of rotation matrix is not correct, %{public}.2f", &v186, 12);
                            sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::isRotationMatrixValid() [T = double, N = 2]", "CoreLocation: %s\n", v11);
                            goto LABEL_167;
                          }
                        }

                        else
                        {
                          if (qword_1EAFE4758 != -1)
                          {
                            dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                          }

                          v174 = qword_1EAFE4760;
                          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B873000, v174, OS_LOG_TYPE_ERROR, "[Umeyama]:rotation matrix is not orthogonal", buf, 2u);
                          }

                          v175 = sub_19B87DD40();
                          if ((*(v175 + 160) & 0x80000000) == 0 || (*(v175 + 164) & 0x80000000) == 0 || (*(v175 + 168) & 0x80000000) == 0 || *(v175 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE4758 != -1)
                            {
                              dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                            }

                            LOWORD(v186) = 0;
                            v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]:rotation matrix is not orthogonal", &v186, 2);
                            sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::isRotationMatrixValid() [T = double, N = 2]", "CoreLocation: %s\n", v11);
                            goto LABEL_167;
                          }
                        }

                        return 0;
                      }
                    }

                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                    }

                    v172 = qword_1EAFE4760;
                    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B873000, v172, OS_LOG_TYPE_INFO, "[Umeyama]:problem is infeasible", buf, 2u);
                    }

                    v173 = sub_19B87DD40();
                    if (*(v173 + 160) > 1 || *(v173 + 164) > 1 || *(v173 + 168) > 1 || *(v173 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE4758 != -1)
                      {
                        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                      }

                      *v188 = 0;
                      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 1, "[Umeyama]:problem is infeasible", v188, 2);
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CMUmeyama<double, 2>::runAlgorithm(const std::vector<CMVector<T, N>> &, const std::vector<CMVector<T, N>> &, const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
                      goto LABEL_167;
                    }
                  }

                  else
                  {
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                    }

                    v170 = qword_1EAFE4760;
                    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B873000, v170, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of U is not orthogonal", buf, 2u);
                    }

                    v171 = sub_19B87DD40();
                    if ((*(v171 + 160) & 0x80000000) == 0 || (*(v171 + 164) & 0x80000000) == 0 || (*(v171 + 168) & 0x80000000) == 0 || *(v171 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE4758 != -1)
                      {
                        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                      }

                      LOWORD(v184) = 0;
                      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]:determinant of U is not orthogonal", &v184, 2);
                      sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
                      goto LABEL_167;
                    }
                  }
                }

                else
                {
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                  }

                  v153 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134349056;
                    *&buf[4] = v150;
                    _os_log_impl(&dword_19B873000, v153, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of U is not correct, %{public}.2f", buf, 0xCu);
                  }

                  v154 = sub_19B87DD40();
                  if ((*(v154 + 160) & 0x80000000) == 0 || (*(v154 + 164) & 0x80000000) == 0 || (*(v154 + 168) & 0x80000000) == 0 || *(v154 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                    }

                    v184 = 134349056;
                    v185 = v150;
                    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]:determinant of U is not correct, %{public}.2f", &v184, 12);
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
                    goto LABEL_167;
                  }
                }
              }

              else
              {
                if (qword_1EAFE4758 != -1)
                {
                  dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                }

                v155 = qword_1EAFE4760;
                if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B873000, v155, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of V is not orthogonal", buf, 2u);
                }

                v156 = sub_19B87DD40();
                if ((*(v156 + 160) & 0x80000000) == 0 || (*(v156 + 164) & 0x80000000) == 0 || (*(v156 + 168) & 0x80000000) == 0 || *(v156 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                  }

                  LOWORD(v186) = 0;
                  v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]:determinant of V is not orthogonal", &v186, 2);
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
                  goto LABEL_167;
                }
              }
            }

            else
            {
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
              }

              v136 = qword_1EAFE4760;
              if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
              {
                *buf = 134349056;
                *&buf[4] = v133;
                _os_log_impl(&dword_19B873000, v136, OS_LOG_TYPE_ERROR, "[Umeyama]:determinant of V is not correct, %{public}.2f", buf, 0xCu);
              }

              v137 = sub_19B87DD40();
              if ((*(v137 + 160) & 0x80000000) == 0 || (*(v137 + 164) & 0x80000000) == 0 || (*(v137 + 168) & 0x80000000) == 0 || *(v137 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4758 != -1)
                {
                  dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
                }

                LODWORD(v186) = 134349056;
                *(&v186 + 4) = v133;
                v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]:determinant of V is not correct, %{public}.2f", &v186, 12);
                sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
                goto LABEL_167;
              }
            }
          }

          return 0;
        }
      }

      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v126 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        v127 = *sub_19B94F084(&v183, v120);
        *buf = 134349056;
        *&buf[4] = v127;
        _os_log_impl(&dword_19B873000, v126, OS_LOG_TYPE_ERROR, "[Umeyama]:negative singular value, %{public}.2f", buf, 0xCu);
      }

      v128 = sub_19B87DD40();
      if ((*(v128 + 160) & 0x80000000) == 0 || (*(v128 + 164) & 0x80000000) == 0 || (*(v128 + 168) & 0x80000000) == 0 || *(v128 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
        }

        v129 = qword_1EAFE4760;
        v130 = *sub_19B94F084(&v183, v120);
        LODWORD(v186) = 134349056;
        *(&v186 + 4) = v130;
        v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v129, 16, "[Umeyama]:negative singular value, %{public}.2f", &v186, 12);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::performSingularValueDecomposition(const CMMatrix<T, N> &, CMMatrix<T, N> &, CMVector<T, N> &, CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v11);
        goto LABEL_167;
      }

      return 0;
    }
  }

  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
  }

  v37 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = v27;
    _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_INFO, "[Umeyama]:non-positive weight, %{public}.2f", buf, 0xCu);
  }

  v38 = sub_19B87DD40();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    *v188 = 134349056;
    *&v188[4] = v27;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 1, "[Umeyama]:non-positive weight, %{public}.2f", v188, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CMUmeyama<double, 2>::checkAndNormalizeWeights(const std::vector<T> &) [T = double, N = 2]", "CoreLocation: %s\n", v11);
    goto LABEL_167;
  }

  return 0;
}

double *sub_19BA7A9A4(int8x16_t *a1)
{
  v1 = 0;
  v2 = a1[1];
  v8 = *a1;
  v9 = v2;
  v3 = 1;
  v4 = 1.0;
  while (1)
  {
    result = sub_19B8D7BD0(&v8, v1, v1);
    if (*result == 0.0)
    {
      break;
    }

    result = sub_19B8D7BD0(&v8, v1, v1);
    v4 = v4 * *result;
    if ((v3 & 1) == 0)
    {
      return result;
    }

LABEL_7:
    v3 = 0;
    v7 = *(&v8 + 1);
    v1 = 1;
    if (*(&v8 + 1) != 0.0)
    {
      v3 = 0;
      *(&v8 + 1) = 0;
      *&v9.i64[1] = *&v9.i64[1] + -v7 / *&v8 * *v9.i64;
      v1 = 1;
    }
  }

  if ((v3 & 1) != 0 && *(&v8 + 1) != 0.0)
  {
    v6 = v8;
    *&v8 = *(&v8 + 1);
    *(&v8 + 1) = v6;
    v9 = vextq_s8(v9, v9, 8uLL);
    v4 = -(v4 * *sub_19B8D7BD0(&v8, v1, v1));
    goto LABEL_7;
  }

  return result;
}

BOOL sub_19BA7AAA0(uint64_t a1, double a2, double a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  v4 = a3 + 0.0 + a2;
  if (v4 >= 0.0)
  {
    v5 = a3 + 0.0 + a2;
  }

  else
  {
    v5 = -v4;
  }

  if (v5 < 0.000001)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
    }

    v11 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v18 = v4;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "[Umeyama]:sum of singular values is, %{public}.2f", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6F0C0);
      }

      v15 = 134349056;
      v16 = v4;
      v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[Umeyama]:sum of singular values is, %{public}.2f", &v15, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CMUmeyama<double, 2>::computeScaling(const CMVector<T, N> &) [T = double, N = 2]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      v7 = *(a1 + 160);
      v8 = *(a1 + 104);
      do
      {
        v9 = *v7++;
        v10 = sqrt(vaddvq_f64(vmulq_f64(v9, v9)));
        v9.f64[0] = *v8++;
        v3 = v3 + v9.f64[0] * v10 * v10;
        --v6;
      }

      while (v6);
    }

    *(a1 + 56) = v3 / v4;
  }

  return v5 >= 0.000001;
}

float64x2_t sub_19BA7ACD8(float64x2_t *a1)
{
  v2.f64[0] = sub_19B94F874(&a1[1].f64[1], a1[9].f64);
  v2.f64[1] = v3;
  result = vsubq_f64(a1[8], vmulq_n_f64(v2, a1[3].f64[1]));
  a1[4] = result;
  return result;
}

void sub_19BA7AD1C(uint64_t a1, void *a2)
{
  *(a1 + 8) = *a1;
  v2 = *(a1 + 56);
  v3 = vmulq_n_f64(*(a1 + 24), v2);
  v4 = vmulq_n_f64(*(a1 + 40), v2);
  v24[0] = v3;
  v24[1] = v4;
  if (*(a1 + 96))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v23 = *(*a2 + v7);
      v9 = *(a1 + 64) + sub_19B94F874(v24, &v23);
      v11 = v10 + *(a1 + 72);
      v13 = *(a1 + 8);
      v12 = *(a1 + 16);
      if (v13 >= v12)
      {
        v15 = (v13 - *a1) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          sub_19B8B8A40();
        }

        v17 = v12 - *a1;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          sub_19B9CACF4(v18);
        }

        v19 = (16 * v15);
        *v19 = v9;
        v19[1] = v11;
        v14 = 16 * v15 + 16;
        v20 = *(a1 + 8) - *a1;
        v21 = 16 * v15 - v20;
        memcpy(v19 - v20, *a1, v20);
        v22 = *a1;
        *a1 = v21;
        *(a1 + 8) = v14;
        *(a1 + 16) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v9;
        v13[1] = v11;
        v14 = (v13 + 2);
      }

      *(a1 + 8) = v14;
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a1 + 96));
  }
}

double sub_19BA7AE78(double *a1, float64x2_t **a2, double result)
{
  a1[10] = 0.0;
  a1[11] = 0.0;
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a2;
    v5 = *a1;
    result = 0.0;
    v6 = 0.0;
    v7 = *(a1 + 13);
    do
    {
      v8 = *v4++;
      v9 = v8;
      v10 = *v5++;
      v11 = vsubq_f64(v9, v10);
      v11.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v11, v11)));
      v10.f64[0] = *v7++;
      v6 = v6 + v10.f64[0] * v11.f64[0];
      result = result + v11.f64[0] * (v10.f64[0] * v11.f64[0]);
      a1[10] = result;
      a1[11] = v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

float64x2_t sub_19BA7AED4(unint64_t a1, double *a2, float64x2_t *a3)
{
  result = vmulq_n_f64(*a3, *a2);
  if (a1 >= 2)
  {
    v4 = a1 - 1;
    v5 = a2 + 1;
    v6 = a3 + 1;
    do
    {
      v7 = *v5++;
      v8 = v7;
      v9 = *v6++;
      result = vaddq_f64(result, vmulq_n_f64(v9, v8));
      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL sub_19BA7AF14(uint64_t *a1)
{
  v21[0] = 0x3FF0000000000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0x3FF0000000000000;
  v18 = *a1;
  v19 = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
  v20 = a1[3];
  v1 = sub_19B94F70C(a1, &v18);
  v5 = 0;
  v17[0] = sub_19B94F808(v21, v1, v2, v3, v4);
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v9 = 1;
LABEL_2:
  v10 = 0;
  v11 = v9;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = sub_19B94FF2C(v17, v5, v10);
    v15 = sub_19B94FF2C(v17, v5, v10);
    if (v14 < 0.0)
    {
      v15 = -v15;
    }

    if (v15 > 0.000001)
    {
      return v15 <= 0.000001;
    }

    v12 = 0;
    v10 = 1;
    if ((v13 & 1) == 0)
    {
      v9 = 0;
      v5 = 1;
      if (v11)
      {
        goto LABEL_2;
      }

      return v15 <= 0.000001;
    }
  }
}

uint64_t sub_19BA7B000(uint64_t result, unint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v117 = a2 - 2;
    v120 = a2 - 1;
    v116 = a2 - 3;
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                return sub_19BA7B9C4(v10, v10 + 1, v120, a3);
              case 4:

                return sub_19BA7BB18(v10, v10 + 1, v10 + 2, v120, a3);
              case 5:

                return sub_19BA7BC1C(v10, v10 + 1, v10 + 2, v10 + 3, v120, a3);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v53 = *v10;
              v54 = *sub_19B94F084(*a3, *(a2 - 1));
              result = sub_19B94F084(*a3, v53);
              if (v54 > *result)
              {
                v55 = *v10;
                *v10 = *(a2 - 1);
                *(a2 - 1) = v55;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v56 = v10 + 1;
            v58 = v10 == a2 || v56 == a2;
            if (a5)
            {
              if (!v58)
              {
                v59 = 0;
                v60 = v10;
                do
                {
                  v62 = *v60;
                  v61 = v60[1];
                  v60 = v56;
                  v63 = *sub_19B94F084(*a3, v61);
                  result = sub_19B94F084(*a3, v62);
                  if (v63 > *result)
                  {
                    v64 = a2;
                    v65 = *v60;
                    v66 = v59;
                    while (1)
                    {
                      *(v10 + v66 + 8) = *(v10 + v66);
                      if (!v66)
                      {
                        break;
                      }

                      v67 = *(v10 + v66 - 8);
                      v68 = *sub_19B94F084(*a3, v65);
                      result = sub_19B94F084(*a3, v67);
                      v66 -= 8;
                      if (v68 <= *result)
                      {
                        v69 = (v10 + v66 + 8);
                        goto LABEL_85;
                      }
                    }

                    v69 = v10;
LABEL_85:
                    *v69 = v65;
                    a2 = v64;
                  }

                  v56 = v60 + 1;
                  v59 += 8;
                }

                while (v60 + 1 != a2);
              }
            }

            else if (!v58)
            {
              do
              {
                v108 = *v9;
                v107 = v9[1];
                v9 = v56;
                v109 = *sub_19B94F084(*a3, v107);
                result = sub_19B94F084(*a3, v108);
                if (v109 > *result)
                {
                  v110 = *v9;
                  v111 = v9;
                  do
                  {
                    v112 = v111;
                    v113 = *--v111;
                    *v112 = v113;
                    v114 = *(v112 - 2);
                    v115 = *sub_19B94F084(*a3, v110);
                    result = sub_19B94F084(*a3, v114);
                  }

                  while (v115 > *result);
                  *v111 = v110;
                }

                v56 = v9 + 1;
              }

              while (v9 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v70 = (v11 - 2) >> 1;
              v118 = a2;
              v121 = v70;
              do
              {
                v71 = v70;
                if (v121 >= v70)
                {
                  v72 = (2 * v70) | 1;
                  v73 = &v9[v72];
                  if (2 * v70 + 2 < v11)
                  {
                    v74 = v73[1];
                    v75 = *sub_19B94F084(*a3, *v73);
                    if (v75 > *sub_19B94F084(*a3, v74))
                    {
                      ++v73;
                      v72 = 2 * v71 + 2;
                    }
                  }

                  v76 = &v9[v71];
                  v77 = *v76;
                  v78 = *sub_19B94F084(*a3, *v73);
                  result = sub_19B94F084(*a3, v77);
                  if (v78 <= *result)
                  {
                    v79 = *v76;
                    do
                    {
                      v80 = v73;
                      *v76 = *v73;
                      if (v121 < v72)
                      {
                        break;
                      }

                      v81 = 2 * v72;
                      v72 = (2 * v72) | 1;
                      v73 = &v9[v72];
                      v82 = v81 + 2;
                      if (v81 + 2 < v11)
                      {
                        v83 = v73[1];
                        v84 = *sub_19B94F084(*a3, *v73);
                        if (v84 > *sub_19B94F084(*a3, v83))
                        {
                          ++v73;
                          v72 = v82;
                        }
                      }

                      v85 = *sub_19B94F084(*a3, *v73);
                      result = sub_19B94F084(*a3, v79);
                      v76 = v80;
                    }

                    while (v85 <= *result);
                    *v80 = v79;
                  }
                }

                v70 = v71 - 1;
              }

              while (v71);
              v86 = v118;
              do
              {
                v87 = 0;
                v119 = v86;
                v122 = *v9;
                v88 = v9;
                do
                {
                  v89 = v88;
                  v90 = &v88[v87];
                  v88 = v90 + 1;
                  v91 = 2 * v87;
                  v87 = (2 * v87) | 1;
                  v92 = v91 + 2;
                  if (v91 + 2 < v11)
                  {
                    v94 = v90[2];
                    v93 = v90 + 2;
                    v95 = *sub_19B94F084(*a3, *(v93 - 1));
                    result = sub_19B94F084(*a3, v94);
                    if (v95 > *result)
                    {
                      v88 = v93;
                      v87 = v92;
                    }
                  }

                  *v89 = *v88;
                }

                while (v87 <= ((v11 - 2) >> 1));
                v96 = v119 - 1;
                if (v88 == v119 - 1)
                {
                  v86 = v119 - 1;
                  *v88 = v122;
                }

                else
                {
                  *v88 = *v96;
                  v86 = v119 - 1;
                  *v96 = v122;
                  v97 = (v88 - v9 + 8) >> 3;
                  v98 = v97 < 2;
                  v99 = v97 - 2;
                  if (!v98)
                  {
                    v100 = v99 >> 1;
                    v101 = &v9[v99 >> 1];
                    v102 = *v88;
                    v103 = *sub_19B94F084(*a3, *v101);
                    result = sub_19B94F084(*a3, v102);
                    if (v103 > *result)
                    {
                      v104 = *v88;
                      do
                      {
                        v105 = v101;
                        *v88 = *v101;
                        if (!v100)
                        {
                          break;
                        }

                        v100 = (v100 - 1) >> 1;
                        v101 = &v9[v100];
                        v106 = *sub_19B94F084(*a3, *v101);
                        result = sub_19B94F084(*a3, v104);
                        v88 = v105;
                      }

                      while (v106 > *result);
                      *v105 = v104;
                    }
                  }
                }

                v98 = v11-- <= 2;
              }

              while (!v98);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = &v10[v11 >> 1];
          if (v11 < 0x81)
          {
            sub_19BA7B9C4(&v9[v11 >> 1], v9, v120, a3);
          }

          else
          {
            sub_19BA7B9C4(v9, &v9[v11 >> 1], v120, a3);
            sub_19BA7B9C4(v9 + 1, v13 - 1, v117, a3);
            sub_19BA7B9C4(v9 + 2, &v9[v12 + 1], v116, a3);
            sub_19BA7B9C4(v13 - 1, &v9[v11 >> 1], &v9[v12 + 1], a3);
            v14 = *v9;
            *v9 = *v13;
            *v13 = v14;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v15 = *v9;
          v16 = *sub_19B94F084(*a3, *(v9 - 1));
          if (v16 > *sub_19B94F084(*a3, v15))
          {
            break;
          }

          v36 = *v9;
          v37 = *v120;
          v38 = *sub_19B94F084(*a3, *v9);
          result = sub_19B94F084(*a3, v37);
          if (v38 <= *result)
          {
            v41 = (v9 + 1);
            do
            {
              v10 = v41;
              if (v41 >= a2)
              {
                break;
              }

              v41 += 8;
              v42 = *v10;
              v43 = *sub_19B94F084(*a3, v36);
              result = sub_19B94F084(*a3, v42);
            }

            while (v43 <= *result);
          }

          else
          {
            v10 = v9;
            do
            {
              v39 = v10[1];
              ++v10;
              v40 = *sub_19B94F084(*a3, v36);
              result = sub_19B94F084(*a3, v39);
            }

            while (v40 <= *result);
          }

          v44 = a2;
          if (v10 < a2)
          {
            v44 = a2;
            do
            {
              v45 = *--v44;
              v46 = *sub_19B94F084(*a3, v36);
              result = sub_19B94F084(*a3, v45);
            }

            while (v46 > *result);
          }

          while (v10 < v44)
          {
            v47 = *v10;
            *v10 = *v44;
            *v44 = v47;
            do
            {
              v48 = v10[1];
              ++v10;
              v49 = *sub_19B94F084(*a3, v36);
            }

            while (v49 <= *sub_19B94F084(*a3, v48));
            do
            {
              v50 = *--v44;
              v51 = *sub_19B94F084(*a3, v36);
              result = sub_19B94F084(*a3, v50);
            }

            while (v51 > *result);
          }

          v52 = v10 - 1;
          if (v10 - 1 != v9)
          {
            *v9 = *v52;
          }

          a5 = 0;
          *v52 = v36;
        }

        v17 = 0;
        v18 = *v9;
        do
        {
          v19 = *sub_19B94F084(*a3, v9[++v17]);
        }

        while (v19 > *sub_19B94F084(*a3, v18));
        v20 = &v9[v17];
        v21 = a2;
        if (v17 == 1)
        {
          do
          {
            if (v20 >= a2)
            {
              break;
            }

            v24 = *--a2;
            v25 = *sub_19B94F084(*a3, v24);
          }

          while (v25 <= *sub_19B94F084(*a3, v18));
        }

        else
        {
          do
          {
            v22 = *--a2;
            v23 = *sub_19B94F084(*a3, v22);
          }

          while (v23 <= *sub_19B94F084(*a3, v18));
        }

        if (v20 >= a2)
        {
          v33 = (v20 - 8);
        }

        else
        {
          v26 = &v9[v17];
          v27 = a2;
          do
          {
            v28 = *v26;
            *v26 = *v27;
            *v27 = v28;
            do
            {
              v29 = v26[1];
              ++v26;
              v30 = *sub_19B94F084(*a3, v29);
            }

            while (v30 > *sub_19B94F084(*a3, v18));
            do
            {
              v31 = *--v27;
              v32 = *sub_19B94F084(*a3, v31);
            }

            while (v32 <= *sub_19B94F084(*a3, v18));
          }

          while (v26 < v27);
          v33 = v26 - 1;
        }

        if (v33 != v9)
        {
          *v9 = *v33;
        }

        *v33 = v18;
        v34 = v20 >= a2;
        a2 = v21;
        if (v34)
        {
          break;
        }

LABEL_38:
        result = sub_19BA7B000(v9, v33, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v33 + 1;
      }

      v35 = sub_19BA7BD68(v9, v33, a3);
      v10 = v33 + 1;
      result = sub_19BA7BD68(v33 + 1, v21, a3);
      if (result)
      {
        break;
      }

      if (!v35)
      {
        goto LABEL_38;
      }
    }

    a2 = v33;
    if (!v35)
    {
      continue;
    }

    return result;
  }
}

double *sub_19BA7B9C4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = *sub_19B94F084(*a4, *a2);
  v10 = *sub_19B94F084(*a4, v8);
  v11 = *a2;
  v12 = *sub_19B94F084(*a4, *a3);
  result = sub_19B94F084(*a4, v11);
  v14 = *result;
  if (v9 <= v10)
  {
    if (v12 > v14)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a1;
      v18 = *sub_19B94F084(*a4, *a2);
      result = sub_19B94F084(*a4, v17);
      if (v18 > *result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  else
  {
    v15 = *a1;
    if (v12 <= v14)
    {
      *a1 = *a2;
      *a2 = v15;
      v20 = *sub_19B94F084(*a4, *a3);
      result = sub_19B94F084(*a4, v15);
      if (v20 > *result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v15;
    }
  }

  return result;
}

double *sub_19BA7BB18(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  sub_19BA7B9C4(a1, a2, a3, a5);
  v10 = *a3;
  v11 = *sub_19B94F084(*a5, *a4);
  result = sub_19B94F084(*a5, v10);
  if (v11 > *result)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a2;
    v15 = *sub_19B94F084(*a5, *a3);
    result = sub_19B94F084(*a5, v14);
    if (v15 > *result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a1;
      v18 = *sub_19B94F084(*a5, *a2);
      result = sub_19B94F084(*a5, v17);
      if (v18 > *result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

double *sub_19BA7BC1C(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_19BA7BB18(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = *sub_19B94F084(*a6, *a5);
  result = sub_19B94F084(*a6, v12);
  if (v13 > *result)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    v17 = *sub_19B94F084(*a6, *a4);
    result = sub_19B94F084(*a6, v16);
    if (v17 > *result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a2;
      v20 = *sub_19B94F084(*a6, *a3);
      result = sub_19B94F084(*a6, v19);
      if (v20 > *result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a1;
        v23 = *sub_19B94F084(*a6, *a2);
        result = sub_19B94F084(*a6, v22);
        if (v23 > *result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_19BA7BD68(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a1;
        v8 = *sub_19B94F084(*a3, *(a2 - 1));
        if (v8 > *sub_19B94F084(*a3, v7))
        {
          v9 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_19BA7B9C4(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      sub_19BA7BB18(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_19BA7BC1C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v10 = a1 + 2;
  sub_19BA7B9C4(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = *sub_19B94F084(*a3, *v11);
    if (v15 > *sub_19B94F084(*a3, v14))
    {
      v16 = *v11;
      v17 = v12;
      while (1)
      {
        *(a1 + v17 + 24) = *(a1 + v17 + 16);
        if (v17 == -16)
        {
          break;
        }

        v18 = *(a1 + v17 + 8);
        v19 = *sub_19B94F084(*a3, v16);
        v17 -= 8;
        if (v19 <= *sub_19B94F084(*a3, v18))
        {
          v20 = (a1 + v17 + 24);
          goto LABEL_19;
        }
      }

      v20 = a1;
LABEL_19:
      *v20 = v16;
      if (++v13 == 8)
      {
        return v11 + 1 == a2;
      }
    }

    v10 = v11;
    v12 += 8;
    if (++v11 == a2)
    {
      return 1;
    }
  }
}

void **sub_19BA7BF70(void **result, char *__src, char *a3, unint64_t a4)
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

      if (!(v11 >> 60))
      {
        sub_19B9CACF4(v11);
      }
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

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

uint64_t CLConnectionClient::sendMessage()
{
  return MEMORY[0x1EEE19100]();
}

{
  return MEMORY[0x1EEE19108]();
}

uint64_t CLConnectionMessage::CLConnectionMessage()
{
  return MEMORY[0x1EEE19158]();
}

{
  return MEMORY[0x1EEE19160]();
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

void operator delete()
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}