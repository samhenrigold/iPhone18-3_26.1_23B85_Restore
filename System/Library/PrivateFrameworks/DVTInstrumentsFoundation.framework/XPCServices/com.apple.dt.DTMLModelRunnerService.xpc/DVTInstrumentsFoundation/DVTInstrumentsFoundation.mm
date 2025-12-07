int main(int argc, const char **argv, const char **envp)
{
  v3 = os_log_create("com.apple.dt.DTMLModelRunnerService", "CoreMLPerf");
  v4 = off_1000388C8;
  off_1000388C8 = v3;

  v5 = off_1000388C8;
  if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CoreML: (XPC) Started XPC service", v6, 2u);
  }

  xpc_main(sub_100001750);
}

void sub_100001750(void *a1)
{
  v1 = a1;
  v2 = off_1000388C8;
  if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "CoreML: (XPC) creating event handler", buf, 2u);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001828;
  handler[3] = &unk_100034F20;
  v5 = v1;
  v3 = v1;
  xpc_connection_set_event_handler(v3, handler);
  xpc_connection_resume(v3);
}

void sub_100001828(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = off_1000388C8;
  if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CoreML: (XPC) event handler fired", &buf, 2u);
  }

  type = xpc_get_type(v3);
  v6 = off_1000388C8;
  if (type == &_xpc_type_error)
  {
    if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_ERROR))
    {
      sub_100026730();
    }
  }

  else
  {
    v7 = type;
    if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CoreML: (XPC) event handler no error", &buf, 2u);
    }

    if (v7 != &_xpc_type_dictionary)
    {
      sub_10002654C();
    }

    v8 = off_1000388C8;
    if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CoreML: (XPC) event handler asserted dictionary", &buf, 2u);
    }

    v9 = *(a1 + 32);
    v10 = v3;
    string = xpc_dictionary_get_string(v10, "command");
    if (!string)
    {
      if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000266B8();
      }

      exit(101);
    }

    v12 = string;
    if (!strcmp(string, "getPID"))
    {
      v32 = v10;
      v33 = v9;
      pid = xpc_connection_get_pid(v33);
      v35 = off_1000388C8;
      if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = pid;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "CoreML: (XPC) getPID - PID is %i", &buf, 8u);
        v35 = off_1000388C8;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "CoreML: (XPC) event handler creating reply", &buf, 2u);
      }

      reply = xpc_dictionary_create_reply(v32);

      xpc_dictionary_set_int64(reply, "pid", pid);
      xpc_connection_send_message(v33, reply);

      v37 = off_1000388C8;
      if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "CoreML: (XPC) about to SIGSTOP", &buf, 2u);
      }

      v38 = getpid();
      kill(v38, 17);
      v39 = off_1000388C8;
      if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "CoreML: (XPC) did SIGSTOP", &buf, 2u);
      }
    }

    else
    {
      if (strcmp(v12, "profile"))
      {
        if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_ERROR))
        {
          sub_100026578();
        }

        exit(102);
      }

      v13 = v9;
      v14 = v10;
      v15 = xpc_connection_get_pid(v13);
      v16 = off_1000388C8;
      if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CoreML: (XPC) profile command - PID is %i", &buf, 8u);
      }

      v17 = xpc_dictionary_get_string(v14, "modelFileName");
      if (v17)
      {
        v18 = v17;
        v19 = xpc_dictionary_get_string(v14, "containerGUID");
        if (v19)
        {
          v20 = v19;
          v49 = v13;
          int64 = xpc_dictionary_get_int64(v14, "computeUnit");
          v21 = off_1000388C8;
          if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = int64;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "CoreML: (XPC) received computeUnit value: %ld", &buf, 0xCu);
          }

          v54 = xpc_dictionary_get_int64(v14, "experimentIterations");
          v22 = off_1000388C8;
          if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v54;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "CoreML: (XPC) received experimentIterations value: %ld", &buf, 0xCu);
          }

          v53 = xpc_dictionary_get_int64(v14, "loadCount");
          v23 = off_1000388C8;
          if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v53;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "CoreML: (XPC) received loadCount value: %ld", &buf, 0xCu);
          }

          v52 = xpc_dictionary_get_int64(v14, "predictionCount");
          v24 = off_1000388C8;
          if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v52;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "CoreML: (XPC) received predictionCount value: %ld", &buf, 0xCu);
          }

          v51 = xpc_dictionary_get_int64(v14, "maxPredictionTime");
          v25 = off_1000388C8;
          if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v51;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "CoreML: (XPC) received maxPredictionTime value: %ld", &buf, 0xCu);
          }

          v50 = xpc_dictionary_get_int64(v14, "maxIterationTime");
          v26 = off_1000388C8;
          if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v50;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "CoreML: (XPC) received maxIterationTime value: %ld", &buf, 0xCu);
          }

          v47 = v15;
          v27 = xpc_dictionary_get_string(v14, "functionName");
          v28 = off_1000388C8;
          if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "CoreML: (XPC) received functionName value: '%s'", &buf, 0xCu);
          }

          v48 = v9;
          v29 = [NSString stringWithFormat:@"%s", v18];
          v30 = [NSString stringWithFormat:@"%s", v20];
          if (v27)
          {
            v31 = [NSString stringWithFormat:@"%s", v27];
          }

          else
          {
            v31 = 0;
          }

          v46 = v30;
          v40 = [[NSUUID alloc] initWithUUIDString:v30];
          v41 = off_1000388C8;
          if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "CoreML: (XPC) initializing PerfRunner", &buf, 2u);
          }

          v42 = [[_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig alloc] initWithExperimentIterations:v54 loadCount:v53 predictionCount:v52 maxPredictionTime:v51 maxIterationTime:v50 functionName:v31];
          v43 = v29;
          v44 = [[_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation alloc] initWithTempFolderGuid:v40 fileName:v29];
          v45 = [[_TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner alloc] initWithConfig:v42];
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v57 = sub_1000020D8;
          v58 = &unk_100034F48;
          v59 = v14;
          v61 = v47;
          v13 = v49;
          v60 = v49;
          [(PerfRunner *)v45 runWithModelLocation:v44 computeUnits:int64 perfRunConfig:v42 completionHandler:&buf];

          v9 = v48;
        }

        else if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_ERROR))
        {
          sub_1000265B8();
        }
      }

      else if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_ERROR))
      {
        sub_100026638();
      }
    }
  }
}

void sub_1000020D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = off_1000388C8;
  if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CoreML: (XPC) event handler creating reply", buf, 2u);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_string(reply, "timerData", [v3 UTF8String]);
  xpc_dictionary_set_int64(reply, "pid", *(a1 + 48));
  xpc_connection_send_message(*(a1 + 40), reply);
  v6 = off_1000388C8;
  if (os_log_type_enabled(off_1000388C8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CoreML: (XPC) event handler sent reply", v7, 2u);
  }
}

void sub_1000021EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_100026CC0();
    v4 = v3;

    qword_1000388D8 = v2;
    unk_1000388E0 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100002278()
{
  sub_100009E28(0, &qword_1000389E8, OS_os_log_ptr);
  if (qword_1000388D0 != -1)
  {
    swift_once();
  }

  result = sub_100026EA0();
  qword_100039808 = result;
  return result;
}

uint64_t sub_100002328()
{
  v0 = sub_100026910();
  sub_100008430(v0, qword_100039810);
  sub_100007EDC(v0, qword_100039810);
  if (qword_1000388D0 != -1)
  {
    swift_once();
  }

  return sub_100026900();
}

uint64_t sub_1000023E4()
{
  v0 = sub_100026910();
  sub_100008430(v0, qword_100038900);
  v1 = sub_100007EDC(v0, qword_100038900);
  if (qword_1000388F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EDC(v0, qword_100039810);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100002574()
{
  v1 = v0;
  v2 = sub_100026E50();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  v3 = qword_100039808;
  sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100027C10;
  v5 = sub_100027120();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100007E88();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1000268E0(v2, &_mh_execute_header, v3, "PerfRunner: %@ iterations", 25, 2, v4);

  v9 = sub_100026E50();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100027C10;
  v11 = sub_100027120();
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v8;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1000268E0(v9, &_mh_execute_header, v3, "PerfRunner: %@ loads", 20, 2, v10);

  v13 = sub_100026E50();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100027C10;
  v15 = sub_100027120();
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = v8;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  sub_1000268E0(v13, &_mh_execute_header, v3, "PerfRunner: %@ predictions", 26, 2, v14);

  v17 = sub_100026E50();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100027C10;
  v19 = sub_100027120();
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v8;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_1000268E0(v17, &_mh_execute_header, v3, "PerfRunner: %@ max prediction time", 34, 2, v18);

  v21 = sub_100026E50();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100027C10;
  v23 = sub_100027120();
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = v8;
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  sub_1000268E0(v21, &_mh_execute_header, v3, "PerfRunner: %@ max iteration time", 33, 2, v22);

  v25 = sub_100026E50();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100027C10;
  v28 = *(v1 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_functionName);
  v27 = *(v1 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_functionName + 8);
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = v8;
  v29 = 0x296C6C756E28;
  if (v27)
  {
    v29 = v28;
  }

  v30 = 0xE600000000000000;
  if (v27)
  {
    v30 = v27;
  }

  *(v26 + 32) = v29;
  *(v26 + 40) = v30;

  sub_1000268E0(v25, &_mh_execute_header, v3, "PerfRunner: %@ function name", 28, 2, v26);
}

unint64_t sub_100002970()
{
  v1 = *v0;
  v2 = 0x6E756F4364616F6CLL;
  v3 = 0xD000000000000011;
  v4 = 0x6E6F6974636E7566;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6974636964657270;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100002A50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000084E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100002A84(uint64_t a1)
{
  v2 = sub_10000A558();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002AC0(uint64_t a1)
{
  v2 = sub_10000A558();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002B4C(void *a1)
{
  v3 = sub_100006DB4(&qword_100038B10, &qword_100027ED0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006DFC(a1, a1[3]);
  sub_10000A558();
  sub_1000271E0();
  v8[15] = 0;
  sub_100027100();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_100027100();
  v8[13] = 2;
  sub_100027100();
  v8[12] = 3;
  sub_100027100();
  v8[11] = 4;
  sub_100027100();
  v8[10] = 5;
  sub_100027090();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100002DFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_100006DB4(&qword_100038B90, &qword_100028488);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100006DFC(a1, a1[3]);
  sub_10000AD8C();
  sub_1000271E0();
  v13 = 0;
  sub_1000270E0();
  if (!v4)
  {
    v12 = 1;
    sub_1000270C0();
  }

  return (*(v7 + 8))(v9, v6);
}

Swift::Int sub_100002FA8()
{
  v1 = *v0;
  sub_1000271A0();
  sub_1000271B0(v1);
  return sub_1000271C0();
}

Swift::Int sub_100002FF0(uint64_t a1)
{
  v2 = *v1;
  sub_1000271A0();
  sub_1000271B0(v2);
  return sub_1000271C0();
}

uint64_t sub_100003034()
{
  if (*v0)
  {
    return 0x73654D726F727265;
  }

  else
  {
    return 0x646F43726F727265;
  }
}

uint64_t sub_10000307C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v6 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100003170(uint64_t a1)
{
  v2 = sub_10000AD8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000031AC(uint64_t a1)
{
  v2 = sub_10000AD8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003208(void *a1)
{
  v3 = v1;
  v5 = sub_100006DB4(&qword_1000389A8, &qword_100027DE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100006DFC(a1, a1[3]);
  sub_100006E40();
  sub_1000271E0();
  *&v11 = *v3;
  v13 = 0;
  type metadata accessor for SampleTimer();
  sub_100007008(&qword_1000389B8, 255, type metadata accessor for SampleTimer, &unk_100029390);
  sub_1000270F0();
  if (!v2)
  {
    *&v11 = *(v3 + 8);
    v13 = 1;
    sub_1000270F0();
    *&v11 = *(v3 + 16);
    v13 = 2;
    sub_1000270F0();
    *&v11 = *(v3 + 24);
    v13 = 3;
    sub_100006DB4(&qword_1000389C0, &qword_100027DE8);
    sub_100006E94();
    sub_1000270F0();
    v11 = *(v3 + 32);
    v12 = *(v3 + 48);
    v13 = 4;
    sub_100006FB4();
    sub_1000270F0();
    *&v11 = *(v3 + 56);
    v13 = 5;
    type metadata accessor for PerfRunConfig();
    sub_100007008(&qword_1000389E0, v9, type metadata accessor for PerfRunConfig, &unk_100027DB4);
    sub_1000270F0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100003550()
{
  v1 = *v0;
  v2 = 0x74636964657270;
  v3 = 0xD000000000000017;
  v4 = 0x7274536C65646F6DLL;
  if (v1 != 4)
  {
    v4 = 0x436E755266726570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C69706D6F63;
  if (v1 != 1)
  {
    v5 = 1684107116;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100003620@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000088A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100003654(uint64_t a1)
{
  v2 = sub_100006E40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003690(uint64_t a1)
{
  v2 = sub_100006E40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_100026870();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100003824, 0, 0);
}

uint64_t sub_100003824()
{
  if (qword_1000388F8 != -1)
  {
    swift_once();
  }

  v1 = sub_100026910();
  sub_100007EDC(v1, qword_100038900);
  v2 = sub_100026E50();
  v3 = sub_1000268F0();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, v2, "starting PerfRunner.run with layer schedule support", v4, 2u);
  }

  sub_100002574();
  sub_100026108();
  v5 = sub_100026E50();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  v6 = v0[11];
  v7 = qword_100039808;
  v0[17] = qword_100039808;
  v0[18] = sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100027C10;
  v9 = sub_100026860();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100007E88();
  v0[19] = v12;
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1000268E0(v5, &_mh_execute_header, v7, "PerfRunner.run modelUrl is %@", 29, 2, v8);

  v13 = sub_100008ABC(v6);
  v14 = sub_100026E50();
  v15 = sub_1000268F0();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, v14, "PerfRunner.run finished unwrapping unit", v16, 2u);
  }

  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_100003AFC;
  v18 = v0[16];
  v19 = v0[12];

  return sub_100004828((v0 + 2), v18, v13, v19);
}

uint64_t sub_100003AFC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100003D90;
  }

  else
  {
    v2 = sub_100003C10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003C10()
{
  v1 = *(v0 + 168);
  v2 = sub_100009558((v0 + 16));
  if (v1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    sub_100009EBC(v0 + 16);
    sub_1000097C8(v1);
    v4 = sub_1000099C4(v1);
    v6 = v5;
  }

  else
  {
    v4 = v2;
    v6 = v3;
    v7 = *(v0 + 152);
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v12 = sub_100026E50();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100027C10;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v7;
    *(v13 + 32) = v4;
    *(v13 + 40) = v6;

    sub_1000268E0(v12, &_mh_execute_header, v8, "PerfRunner returning a result: %@", 33, 2, v13);

    sub_100009EBC(v0 + 16);
    (*(v11 + 8))(v9, v10);
  }

  v14 = *(v0 + 8);

  return v14(v4, v6);
}

uint64_t sub_100003D90()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[21];
  sub_1000097C8(v1);
  v2 = sub_1000099C4(v1);
  v4 = v3;

  v5 = v0[1];

  return v5(v2, v4);
}

uint64_t sub_100003FDC(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1000040C4;

  return sub_100003760(v10, a2, v11);
}

uint64_t sub_1000040C4(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 40);
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v10 = *v2;

  v7 = sub_100026C90();

  (v3)[2](v3, v7);

  _Block_release(v3);
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_100004264(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_100004288, 0, 0);
}

uint64_t sub_100004288()
{
  if (qword_1000388F8 != -1)
  {
    swift_once();
  }

  v1 = sub_100026910();
  v0[10] = sub_100007EDC(v1, qword_100038900);
  v2 = sub_100026E50();
  v3 = sub_1000268F0();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, v2, "Gathering MLComputePlan from model", v4, 2u);
  }

  v5 = v0[8];

  sub_100026A20();
  [v5 copy];
  sub_100026EB0();
  swift_unknownObjectRelease();
  sub_100009E28(0, &qword_100038AD8, MLModelConfiguration_ptr);
  swift_dynamicCast();
  v6 = v0[6];
  v0[11] = v6;
  [v6 setProfilingOptions:1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100004468;
  v8 = v0[7];

  return static MLComputePlan.load(contentsOf:configuration:)(v8, v6);
}

uint64_t sub_100004468(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_100004694;
  }

  else
  {

    v4 = sub_100004584;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100004584(uint64_t a1)
{
  v2 = sub_100026E50();
  v3 = sub_1000268F0();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, v2, "Building ModelStructure from MLComputePlan", v4, 2u);
  }

  v5 = v1[13];

  v6 = sub_100018930(v5);
  v8 = v7;
  v10 = v9;

  v11 = v1[9] + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  v14 = *(v11 + 48);
  *(v11 + 48) = v10;
  sub_100009E70(v12, v13, v14);
  v15 = v1[1];

  return v15();
}

uint64_t sub_100004694()
{
  v1 = sub_100026E50();
  swift_errorRetain();
  v2 = sub_1000268F0();

  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Failed to construct MLComputePlan: %@", v3, 0xCu);
    sub_10000A350(v4, &qword_100038AE0, &qword_100027E68);
  }

  else
  {
  }

  v6 = *(v0 + 72) + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers;
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  *(v6 + 32) = xmmword_100027C20;
  v9 = *(v6 + 48);
  *(v6 + 48) = 3;
  sub_100009E70(v7, v8, v9);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100004828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_100026870();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000048F0, 0, 0);
}

void sub_1000048F0()
{
  v115 = v0;
  if (qword_1000388F8 != -1)
  {
    swift_once();
  }

  v1 = sub_100026910();
  *(v0 + 216) = sub_100007EDC(v1, qword_100038900);
  v2 = sub_100026E50();
  v3 = sub_1000268F0();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, v2, "beginning first security check on model URL", v4, 2u);
  }

  if ((sub_100018F30() & 1) == 0)
  {
    v25 = sub_100026E60();
    v26 = sub_1000268F0();
    if (!os_log_type_enabled(v26, v25))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "failed first security check on model URL";
    goto LABEL_20;
  }

  v5 = sub_100026E50();
  v6 = sub_1000268F0();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, v5, "beginning second security check on model URL", v7, 2u);
  }

  if ((sub_100019380() & 1) == 0)
  {
    v25 = sub_100026E60();
    v26 = sub_1000268F0();
    if (!os_log_type_enabled(v26, v25))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "failed second security check on model URL";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v26, v25, v28, v27, 2u);

LABEL_21:

    sub_100008494();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
LABEL_22:

    v30 = *(v0 + 8);
    goto LABEL_23;
  }

  v8 = sub_100026E50();
  v9 = sub_1000268F0();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, v8, "passed security checks on model URL", v10, 2u);
  }

  v11 = sub_100026E50();
  v12 = sub_1000268F0();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, v11, "initializing random seed", v13, 2u);
  }

  type metadata accessor for SeededRNG();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v0 + 144) = v14;
  v15 = sub_100026E50();
  v16 = sub_1000268F0();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v16, v15, "trying inputGenerator", v17, 2u);
  }

  v18 = *(v0 + 176);
  v19 = *(v0 + 160);

  v21 = *(v18 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_functionName);
  v20 = *(v18 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_functionName + 8);
  v22 = sub_100008C48(_swiftEmptyArrayStorage);
  sub_100014558(v19, v21, v20, v22);
  *(v0 + 224) = v23;
  *(v0 + 232) = v24;

  v31 = sub_100026E50();
  v32 = sub_1000268F0();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v32, v31, "finished inputGenerator", v33, 2u);
  }

  v34 = *(v0 + 168);

  v35 = [objc_allocWithZone(MLModelConfiguration) init];
  *(v0 + 240) = v35;
  [v35 setComputeUnits:v34];
  if (v20)
  {
    v36 = sub_100026C90();
  }

  else
  {
    v36 = 0;
  }

  v37 = *(v0 + 176);
  [v35 setFunctionName:v36];

  v38 = *(v37 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_experimentIterations);
  *(v0 + 248) = v38;
  if (v38 < 0)
  {
    __break(1u);
    return;
  }

  if (!v38)
  {
LABEL_53:
    v94 = *(v0 + 240);
    v95 = *(v0 + 184);
    v96 = *(v0 + 152);
    v97 = sub_10000DA60();
    v98 = (v95 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers);
    *(v95 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers + 24) = v97;

    sub_100006498();

    v99 = *v98;
    v100 = v98[1];
    v101 = v98[3];
    *(v0 + 48) = v98[2];
    *(v0 + 64) = v101;
    *(v0 + 16) = v99;
    *(v0 + 32) = v100;
    sub_1000094C4(v0 + 16, v0 + 80);
    v102 = *(v0 + 64);
    v104 = *(v0 + 16);
    v103 = *(v0 + 32);
    v96[2] = *(v0 + 48);
    v96[3] = v102;
    *v96 = v104;
    v96[1] = v103;

    v30 = *(v0 + 8);
LABEL_23:

    v30();
    return;
  }

  v39 = 0;
  v40 = 0;
  v41 = *(v0 + 176);
  v42 = OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_loadCount;
  v43 = OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_maxPredictionTime;
  *(v0 + 256) = OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_predictionCount;
  *(v0 + 264) = v43;
  *(v0 + 272) = OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_maxIterationTime;
  *(v0 + 280) = *(v41 + v42);
  while (1)
  {
    *(v0 + 288) = v40;
    Current = CFAbsoluteTimeGetCurrent();
    v45 = sub_100026E50();
    v46 = sub_1000268F0();
    if (os_log_type_enabled(v46, v45))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v46, v45, "Invoking compileAndLoadModel", v47, 2u);
    }

    v48 = *(v0 + 280);
    v49 = *(v0 + 240);
    v50 = *(v0 + 208);
    v51 = *(v0 + 160);

    v52 = sub_100006680(v50, v51, v48, v49);
    *(v0 + 296) = v52;
    if (v39)
    {
      v105 = *(v0 + 240);

      goto LABEL_22;
    }

    v53 = v52;
    v54 = sub_100026E50();
    v55 = sub_1000268F0();
    if (os_log_type_enabled(v55, v54))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v55, v54, "Finished compileAndLoadModel", v56, 2u);
    }

    v57 = *(v0 + 224);

    v57(&v114, v0 + 144);
    v58 = v114;
    *(v0 + 304) = v114;
    v59 = [v53 modelDescription];
    v60 = [v59 stateDescriptionsByName];

    sub_100009E28(0, &qword_100038A10, MLFeatureDescription_ptr);
    v61 = sub_100026C80();

    v62 = *(v61 + 16);

    if (v62)
    {
      v63 = sub_100026E80();
      v64 = swift_allocObject();
      v64[2] = v53;
      v64[3] = v58;
      v64[4] = v63;
      v65 = sub_100008EA8;
    }

    else
    {
      v64 = swift_allocObject();
      v64[2] = v53;
      v64[3] = v58;
      v65 = sub_10000953C;
    }

    v66 = v65;
    *(v0 + 312) = v64;
    v67 = *(v0 + 176);
    v68 = *(v67 + *(v0 + 256));
    v69 = *(v67 + *(v0 + 264));
    v53;
    swift_unknownObjectRetain();

    sub_100006094(v68, v69, v66);
    *(v0 + 320) = 0;
    v70 = *(v0 + 272);
    v71 = *(v0 + 176);

    v72 = CFAbsoluteTimeGetCurrent();
    v73 = *(v71 + v70);
    if (!v73)
    {
      v76 = sub_1000268F0();
      v86 = sub_100026E50();
      if (!os_log_type_enabled(v76, v86))
      {
        goto LABEL_50;
      }

      v87 = swift_slowAlloc();
      *v87 = 0;
      v81 = v86;
      v82 = v76;
      v83 = "Max iteration time ignored";
      v84 = v87;
      v85 = 2;
      goto LABEL_48;
    }

    v74 = v72 - Current;
    v75 = *(v0 + 176);
    v76 = sub_1000268F0();
    if (v74 >= v73)
    {
      break;
    }

    v77 = sub_100026E50();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 176);
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 134218240;
      *(v80 + 4) = v74;
      *(v80 + 12) = 2048;
      *(v80 + 14) = v73;

      v81 = v77;
      v82 = v76;
      v83 = "Max iteration time not yet exceeded: %f < %lld";
      v84 = v80;
      v85 = 22;
LABEL_48:
      _os_log_impl(&_mh_execute_header, v82, v81, v83, v84, v85);

      goto LABEL_50;
    }

LABEL_50:
    if (v40 == *(v0 + 248) - 1)
    {
      v106 = swift_task_alloc();
      *(v0 + 336) = v106;
      *v106 = v0;
      v107 = sub_100005720;
      goto LABEL_60;
    }

    swift_unknownObjectRelease();
    v88 = *(v0 + 296);
    v89 = *(v0 + 248);
    v91 = *(v0 + 200);
    v90 = *(v0 + 208);
    v92 = *(v0 + 192);
    v93 = *(v0 + 288) + 1;
    sub_100008FB4();

    (*(v91 + 8))(v90, v92);
    if (v93 == v89)
    {
      goto LABEL_53;
    }

    v39 = *(v0 + 320);
    v40 = *(v0 + 288) + 1;
  }

  v108 = sub_100026E40();
  v109 = os_log_type_enabled(v76, v108);
  v110 = *(v0 + 176);
  if (v109)
  {
    v111 = swift_slowAlloc();
    *v111 = 134218240;
    *(v111 + 4) = v74;
    *(v111 + 12) = 2048;
    *(v111 + 14) = v73;

    _os_log_impl(&_mh_execute_header, v76, v108, "Max iteration time exceeded: %f >= %lld", v111, 0x16u);
  }

  else
  {
  }

  v106 = swift_task_alloc();
  *(v0 + 328) = v106;
  *v106 = v0;
  v107 = sub_1000054FC;
LABEL_60:
  v106[1] = v107;
  v112 = *(v0 + 240);
  v113 = *(v0 + 208);

  sub_100004264(v113, v112);
}

uint64_t sub_1000054FC()
{

  return _swift_task_switch(sub_1000055F8, 0, 0);
}

uint64_t sub_1000055F8()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);

  swift_unknownObjectRelease();
  sub_100008FB4();

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 240);
  v6 = *(v0 + 184);
  v7 = *(v0 + 152);
  v8 = sub_10000DA60();
  v9 = (v6 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers);
  *(v6 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers + 24) = v8;

  sub_100006498();

  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  *(v0 + 48) = v9[2];
  *(v0 + 64) = v12;
  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  sub_1000094C4(v0 + 16, v0 + 80);
  v13 = *(v0 + 64);
  v15 = *(v0 + 16);
  v14 = *(v0 + 32);
  v7[2] = *(v0 + 48);
  v7[3] = v13;
  *v7 = v15;
  v7[1] = v14;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100005720()
{

  return _swift_task_switch(sub_10000581C, 0, 0);
}

uint64_t sub_10000581C()
{
  v76 = v0;

  swift_unknownObjectRelease();
  while (1)
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 248);
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v5 = *(v0 + 192);
    v6 = *(v0 + 288) + 1;
    sub_100008FB4();

    (*(v4 + 8))(v3, v5);
    if (v6 == v2)
    {
      break;
    }

    v7 = *(v0 + 320);
    v8 = *(v0 + 288);
    *(v0 + 288) = v8 + 1;
    Current = CFAbsoluteTimeGetCurrent();
    v10 = sub_100026E50();
    v11 = sub_1000268F0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, v10, "Invoking compileAndLoadModel", v12, 2u);
    }

    v13 = *(v0 + 280);
    v14 = *(v0 + 240);
    v15 = *(v0 + 208);
    v16 = *(v0 + 160);

    v17 = sub_100006680(v15, v16, v13, v14);
    *(v0 + 296) = v17;
    if (v7)
    {
      v65 = *(v0 + 240);

      v64 = *(v0 + 8);
      goto LABEL_23;
    }

    v18 = v17;
    v19 = sub_100026E50();
    v20 = sub_1000268F0();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v20, v19, "Finished compileAndLoadModel", v21, 2u);
    }

    v22 = *(v0 + 224);

    v22(&v75, v0 + 144);
    v23 = v75;
    *(v0 + 304) = v75;
    v24 = [v18 modelDescription];
    v25 = [v24 stateDescriptionsByName];

    sub_100009E28(0, &qword_100038A10, MLFeatureDescription_ptr);
    v26 = sub_100026C80();

    v27 = *(v26 + 16);

    if (v27)
    {
      v28 = sub_100026E80();
      v29 = swift_allocObject();
      v29[2] = v18;
      v29[3] = v23;
      v29[4] = v28;
      v30 = sub_100008EA8;
    }

    else
    {
      v29 = swift_allocObject();
      v29[2] = v18;
      v29[3] = v23;
      v30 = sub_10000953C;
    }

    v31 = v30;
    *(v0 + 312) = v29;
    v32 = *(v0 + 176);
    v33 = *(v32 + *(v0 + 256));
    v34 = *(v32 + *(v0 + 264));
    v18;
    swift_unknownObjectRetain();

    sub_100006094(v33, v34, v31);
    *(v0 + 320) = 0;
    v35 = *(v0 + 272);
    v36 = *(v0 + 176);

    v37 = CFAbsoluteTimeGetCurrent();
    v38 = *(v36 + v35);
    if (!v38)
    {
      v41 = sub_1000268F0();
      v51 = sub_100026E50();
      if (!os_log_type_enabled(v41, v51))
      {
        goto LABEL_19;
      }

      v52 = swift_slowAlloc();
      *v52 = 0;
      v46 = v51;
      v47 = v41;
      v48 = "Max iteration time ignored";
      v49 = v52;
      v50 = 2;
      goto LABEL_17;
    }

    v39 = v37 - Current;
    v40 = *(v0 + 176);
    v41 = sub_1000268F0();
    if (v39 >= v38)
    {
      v69 = sub_100026E40();
      v70 = os_log_type_enabled(v41, v69);
      v71 = *(v0 + 176);
      if (v70)
      {
        v72 = swift_slowAlloc();
        *v72 = 134218240;
        *(v72 + 4) = v39;
        *(v72 + 12) = 2048;
        *(v72 + 14) = v38;

        _os_log_impl(&_mh_execute_header, v41, v69, "Max iteration time exceeded: %f >= %lld", v72, 0x16u);
      }

      else
      {
      }

      v67 = swift_task_alloc();
      *(v0 + 328) = v67;
      *v67 = v0;
      v68 = sub_1000054FC;
      goto LABEL_31;
    }

    v42 = sub_100026E50();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 176);
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      *(v45 + 4) = v39;
      *(v45 + 12) = 2048;
      *(v45 + 14) = v38;

      v46 = v42;
      v47 = v41;
      v48 = "Max iteration time not yet exceeded: %f < %lld";
      v49 = v45;
      v50 = 22;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v47, v46, v48, v49, v50);

      goto LABEL_19;
    }

LABEL_19:
    if (v8 == *(v0 + 248) - 2)
    {
      v67 = swift_task_alloc();
      *(v0 + 336) = v67;
      *v67 = v0;
      v68 = sub_100005720;
LABEL_31:
      v67[1] = v68;
      v73 = *(v0 + 240);
      v74 = *(v0 + 208);

      return sub_100004264(v74, v73);
    }

    swift_unknownObjectRelease();
  }

  v53 = *(v0 + 240);
  v54 = *(v0 + 184);
  v55 = *(v0 + 152);
  v56 = sub_10000DA60();
  v57 = (v54 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers);
  *(v54 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers + 24) = v56;

  sub_100006498();

  v58 = *v57;
  v59 = v57[1];
  v60 = v57[3];
  *(v0 + 48) = v57[2];
  *(v0 + 64) = v60;
  *(v0 + 16) = v58;
  *(v0 + 32) = v59;
  sub_1000094C4(v0 + 16, v0 + 80);
  v61 = *(v0 + 64);
  v63 = *(v0 + 16);
  v62 = *(v0 + 32);
  v55[2] = *(v0 + 48);
  v55[3] = v61;
  *v55 = v63;
  v55[1] = v62;

  v64 = *(v0 + 8);
LABEL_23:

  return v64();
}

void sub_100005F18(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  if ([a1 predictionFromFeatures:a2 usingState:a3 error:&v5])
  {
    v3 = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = v5;
    sub_1000267D0();

    swift_willThrow();
  }
}

void sub_100005FD8(void *a1, uint64_t a2)
{
  v4 = 0;
  if ([a1 predictionFromFeatures:a2 error:&v4])
  {
    v2 = v4;
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = v4;
    sub_1000267D0();

    swift_willThrow();
  }
}

void sub_100006094(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = v3;
  Current = CFAbsoluteTimeGetCurrent();
  v43 = a1;
  if (a1 < 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = Current;
  v11 = OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers;
  v12 = a2;
  v13 = 1;
  v41 = 134218240;
  v42 = a2;
  while (1)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(v6 + v11);

    *(v15 + 16) = CFAbsoluteTimeGetCurrent();
    *(v15 + 24) = 0;

    a3(v16);
    if (v4)
    {
      objc_autoreleasePoolPop(v14);
      return;
    }

    v17 = *(v6 + v11);
    if ((*(v17 + 24) & 1) == 0)
    {
      v18 = *(v17 + 16);

      v5 = CFAbsoluteTimeGetCurrent();
      v19 = *(v17 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 32) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_100007D80(0, *(v19 + 2) + 1, 1, v19);
        *(v17 + 32) = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100007D80((v21 > 1), v22 + 1, 1, v19);
      }

      *(v19 + 2) = v22 + 1;
      *&v19[8 * v22 + 32] = v5 - v18;
      *(v17 + 32) = v19;

      a2 = v42;
    }

    objc_autoreleasePoolPop(v14);
    v23 = CFAbsoluteTimeGetCurrent();
    if (!a2)
    {
      if (qword_1000388F8 != -1)
      {
        swift_once();
      }

      v33 = sub_100026910();
      sub_100007EDC(v33, qword_100038900);
      v25 = sub_1000268F0();
      v34 = sub_100026E50();
      if (!os_log_type_enabled(v25, v34))
      {
        goto LABEL_21;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v28 = v34;
      v29 = v25;
      v30 = "Max prediction time ignored";
      v31 = v35;
      v32 = 2;
      goto LABEL_20;
    }

    v5 = v23 - v10;
    if (v23 - v10 >= v12)
    {
      break;
    }

    if (qword_1000388F8 != -1)
    {
      swift_once();
    }

    v24 = sub_100026910();
    sub_100007EDC(v24, qword_100038900);
    v25 = sub_1000268F0();
    v26 = sub_100026E50();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = v5;
    *(v27 + 12) = 2048;
    *(v27 + 14) = a2;
    v28 = v26;
    v29 = v25;
    v30 = "Max prediction time not yet exceeded: %f < %lld";
    v31 = v27;
    v32 = 22;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v29, v28, v30, v31, v32);

LABEL_21:

    if (v43 == v13)
    {
      return;
    }

    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  if (qword_1000388F8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v37 = sub_100026910();
  sub_100007EDC(v37, qword_100038900);
  v38 = sub_1000268F0();
  v39 = sub_100026E40();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = v41;
    *(v40 + 4) = v5;
    *(v40 + 12) = 2048;
    *(v40 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v38, v39, "Max prediction time exceeded: %f >= %lld", v40, 0x16u);
  }
}

void sub_100006498()
{
  v1 = *(v0 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers + 24);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      v7 = *(v1 + v3);
      v8 = sub_100026E40();
      if (qword_1000388E8 != -1)
      {
        swift_once();
      }

      v9 = qword_100039808;
      sub_100006DB4(&qword_1000389F8, &unk_10002B960);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100027C10;
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v4 = 0x45206C617275654ELL;
          v5 = 0xED0000656E69676ELL;
        }

        else
        {
          v5 = 0xE700000000000000;
          v4 = 0x6E776F6E6B6E55;
        }
      }

      else if (v7)
      {
        v4 = 5591111;
        v5 = 0xE300000000000000;
      }

      else
      {
        v5 = 0xE300000000000000;
        v4 = 5591107;
      }

      *(v10 + 56) = &type metadata for String;
      v6 = v10;
      *(v10 + 64) = sub_100007E88();
      *(v6 + 32) = v4;
      *(v6 + 40) = v5;
      sub_1000268E0(v8, &_mh_execute_header, v9, "Supported compute unit: %@", 26, 2, v6);

      ++v3;
      --v2;
    }

    while (v2);
  }
}

char *sub_100006680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000069BC();
  if (!v5)
  {
    swift_unknownObjectWeakInit();
    if (a3 < 1)
    {
      goto LABEL_22;
    }

    v31 = 0;
    v34 = objc_opt_self();
    v9 = &v4[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers];
    v10 = 1;
    swift_beginAccess();
    v32 = a3;
    v33 = a4;
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(v9 + 2);

      *(v13 + 16) = CFAbsoluteTimeGetCurrent();
      *(v13 + 24) = 0;

      sub_100026830(v14);
      v16 = v15;
      v35 = 0;
      v4 = [v34 modelWithContentsOfURL:v15 configuration:a4 error:&v35];

      if (!v4)
      {
        break;
      }

      v17 = *(v9 + 2);
      if (*(v17 + 24))
      {
        v18 = v35;
      }

      else
      {
        v19 = *(v17 + 16);
        v20 = v35;

        Current = CFAbsoluteTimeGetCurrent();
        v22 = *(v17 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v17 + 32) = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_100007D80(0, *(v22 + 2) + 1, 1, v22);
          *(v17 + 32) = v22;
        }

        v25 = *(v22 + 2);
        v24 = *(v22 + 3);
        if (v25 >= v24 >> 1)
        {
          v22 = sub_100007D80((v24 > 1), v25 + 1, 1, v22);
        }

        *(v22 + 2) = v25 + 1;
        *&v22[8 * v25 + 32] = Current - v19;
        *(v17 + 32) = v22;

        a3 = v32;
        a4 = v33;
      }

      swift_unknownObjectWeakAssign();
      if (a3 == v10)
      {
        objc_autoreleasePoolPop(v12);
        swift_unknownObjectWeakDestroy();
        return v4;
      }

      objc_autoreleasePoolPop(v12);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        v27 = sub_100026E60();
        if (qword_1000388E8 != -1)
        {
          v28 = v27;
          swift_once();
          v27 = v28;
        }

        sub_1000268E0(v27, &_mh_execute_header, qword_100039808, "After setting the model instance to nil, it was not deallocated. Model load times may be innacurate due to cached resources!", 124, 2, _swiftEmptyArrayStorage, v31);
      }

      if (__OFADD__(v10++, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
      }
    }

    v4 = v35;
    sub_1000267D0();

    swift_willThrow();
    objc_autoreleasePoolPop(v12);
    swift_unknownObjectWeakDestroy();
    v29 = sub_100026870();
    (*(*(v29 - 8) + 8))(a1, v29);
  }

  return v4;
}

void sub_1000069BC()
{
  v1 = v0 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers;
  v2 = *(v0 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers + 8);

  *(v2 + 16) = CFAbsoluteTimeGetCurrent();
  *(v2 + 24) = 0;

  v3 = objc_opt_self();
  sub_100026830(v4);
  v6 = v5;
  v19 = 0;
  v7 = [v3 compileModelAtURL:v5 error:&v19];

  v8 = v19;
  if (v7)
  {
    sub_100026850();
    v9 = v8;

    v10 = *(v1 + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      v11 = *(v10 + 16);

      Current = CFAbsoluteTimeGetCurrent();
      v13 = *(v10 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 32) = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_100007D80(0, *(v13 + 2) + 1, 1, v13);
        *(v10 + 32) = v13;
      }

      v15 = Current - v11;
      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_100007D80((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      *&v13[8 * v17 + 32] = v15;
      *(v10 + 32) = v13;
    }
  }

  else
  {
    v18 = v19;
    sub_1000267D0();

    swift_willThrow();
  }
}

id sub_100006BD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100006CC8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100006CE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006CF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006D40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006DB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100006DFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006E40()
{
  result = qword_1000389B0;
  if (!qword_1000389B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000389B0);
  }

  return result;
}

unint64_t sub_100006E94()
{
  result = qword_1000389C8;
  if (!qword_1000389C8)
  {
    sub_100006F18(&qword_1000389C0, &qword_100027DE8);
    sub_100006F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000389C8);
  }

  return result;
}

uint64_t sub_100006F18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100006F60()
{
  result = qword_1000389D0;
  if (!qword_1000389D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000389D0);
  }

  return result;
}

unint64_t sub_100006FB4()
{
  result = qword_1000389D8;
  if (!qword_1000389D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000389D8);
  }

  return result;
}

uint64_t sub_100007008(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_1000070F4(uint64_t a1, uint64_t a2)
{
  sub_1000271A0();
  swift_getWitnessTable();
  sub_1000268C0();
  return sub_1000271C0();
}

uint64_t sub_100007164(uint64_t a1, id *a2)
{
  result = sub_100026CA0();
  *a2 = 0;
  return result;
}

uint64_t sub_1000071DC(uint64_t a1, id *a2)
{
  v3 = sub_100026CB0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000725C@<X0>(uint64_t *a2@<X8>)
{
  sub_100026CC0();
  v3 = sub_100026C90();

  *a2 = v3;
  return result;
}

uint64_t sub_1000072A0()
{
  sub_100026CC0();
  v0 = sub_100026D80();

  return v0;
}

uint64_t sub_1000072DC(uint64_t a1)
{
  sub_100026CC0();
  sub_100026D30();
}

Swift::Int sub_100007330(uint64_t a1)
{
  sub_100026CC0();
  sub_1000271A0();
  sub_100026D30();
  v1 = sub_1000271C0();

  return v1;
}

uint64_t sub_1000073A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1000268B0();
}

uint64_t sub_100007410(void *a1, uint64_t *a2)
{
  v2 = sub_100026CC0();
  v4 = v3;
  if (v2 == sub_100026CC0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100027130();
  }

  return v7 & 1;
}

uint64_t sub_100007498@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100026C90();

  *a2 = v3;
  return result;
}

uint64_t sub_1000074E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026CC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000750C(uint64_t a1)
{
  v2 = sub_100007008(&qword_100038BA0, 255, type metadata accessor for URLResourceKey, &unk_1000281C8);
  v3 = sub_100007008(&qword_100038BA8, 255, type metadata accessor for URLResourceKey, &unk_100028168);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000075D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000B054;

  return v6();
}

uint64_t sub_1000076B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000077A0;

  return v7();
}

uint64_t sub_1000077A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006DB4(&qword_100038B08, &qword_100027E80);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000A2E8(a3, v23 - v10, &qword_100038B08, &qword_100027E80);
  v12 = sub_100026E00();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000A350(v11, &qword_100038B08, &qword_100027E80);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100026DF0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100026DE0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100026D20() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000A350(a3, &qword_100038B08, &qword_100027E80);

    return v21;
  }

LABEL_8:
  sub_10000A350(a3, &qword_100038B08, &qword_100027E80);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100007B90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100007C88;

  return v6(a1);
}

uint64_t sub_100007C88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_100007D80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_1000389F0, qword_100027DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_100007E88()
{
  result = qword_100038A00;
  if (!qword_100038A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038A00);
  }

  return result;
}

uint64_t sub_100007EDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_100007F14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038A78, &unk_100029100);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100008018(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038AA0, &qword_100027E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10000811C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038AA8, &qword_100027E38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100008220(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038AC8, &qword_100027E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100008324(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038AC0, &qword_100027E50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_100008430(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100008494()
{
  result = qword_100038A08;
  if (!qword_100038A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038A08);
  }

  return result;
}

uint64_t sub_1000084E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000010002BAD0 == a2;
  if (v3 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F4364616F6CLL && a2 == 0xE900000000000074 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974636964657270 && a2 == 0xEF746E756F436E6FLL || (sub_100027130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010002BB00 == a2 || (sub_100027130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010002BB20 == a2 || (sub_100027130() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xEC000000656D614ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_100027130();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

double sub_100008704@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for PerfRunConfig();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_experimentIterations] = 0;
  *&v5[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_loadCount] = 0;
  *&v5[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_predictionCount] = 0;
  *&v5[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_maxPredictionTime] = 0;
  *&v5[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_maxIterationTime] = 0;
  v6 = &v5[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_functionName];
  *v6 = 0;
  *(v6 + 1) = 0;
  v19.receiver = v5;
  v19.super_class = v4;
  v7 = objc_msgSendSuper2(&v19, "init");
  v8 = a1;

  v9 = *&v8[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_predictionCount];
  type metadata accessor for SampleTimer();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  *(v10 + 32) = _swiftEmptyArrayStorage;
  *(v10 + 40) = v9;
  v11 = *&v8[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_experimentIterations];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 1;
  *(v12 + 32) = _swiftEmptyArrayStorage;
  *(v12 + 40) = v11;
  v13 = *&v8[OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_loadCount];

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 1;
  *(v14 + 32) = _swiftEmptyArrayStorage;
  *(v14 + 40) = v13;
  *&v20 = v10;
  *(&v20 + 1) = v12;
  *&v21 = v14;
  *(&v21 + 1) = _swiftEmptyArrayStorage;
  v22 = 0uLL;
  LOBYTE(v23) = 3;
  *(&v23 + 1) = v8;
  v24[0] = v10;
  v24[1] = v12;
  v24[2] = v14;
  v24[3] = _swiftEmptyArrayStorage;
  v24[4] = 0;
  v24[5] = 0;
  v25 = 3;
  v26 = v8;
  sub_1000094C4(&v20, &v18);
  sub_100009EBC(v24);
  v15 = v21;
  *a2 = v20;
  a2[1] = v15;
  result = *&v22;
  v17 = v23;
  a2[2] = v22;
  a2[3] = v17;
  return result;
}

uint64_t sub_1000088A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74636964657270 && a2 == 0xE700000000000000;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C69706D6F63 && a2 == 0xE700000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_100027130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010002C010 == a2 || (sub_100027130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7274536C65646F6DLL && a2 == 0xEE00657275746375 || (sub_100027130() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x436E755266726570 && a2 == 0xED00006769666E6FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_100027130();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100008ABC(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v3 = 0xD000000000000013;
        v2 = 0x800000010002BEA0;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v2 = 0xE400000000000000;
    v3 = 1819042094;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v2 = 0xEA00000000005550;
        v3 = 0x47646E417570632ELL;
        goto LABEL_11;
      }

LABEL_8:
      v2 = 0x800000010002BE50;
      v3 = 0xD000000000000015;
      goto LABEL_11;
    }

    v2 = 0xE800000000000000;
    v3 = 0x796C6E4F7570632ELL;
  }

LABEL_11:
  v4 = sub_100026E50();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  v5 = qword_100039808;
  sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100027C10;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100007E88();
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  sub_1000268E0(v4, &_mh_execute_header, v5, "PerfRunner.run using computeUnit: %@", 36, 2, v6);

  return a1;
}

unint64_t sub_100008C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006DB4(&qword_100038AD0, &qword_100027E60);
    v3 = sub_100026FE0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_100010C04(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v9 = (*(v3 + 48) + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = *(v3 + 16);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100008D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006DB4(&qword_100038AB0, &qword_100027E40);
    v3 = sub_100026FE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A2E8(v4, v13, &qword_100038AB8, &qword_100027E48);
      result = sub_100010D00(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100008E60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100008EC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006DB4(&qword_100038AE8, &qword_100027E70);
    v3 = sub_100026FE0();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_100010D44(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100008FB4()
{
  if (sub_100018F30())
  {
    if (qword_1000388F8 != -1)
    {
      swift_once();
    }

    v0 = sub_100026910();
    sub_100007EDC(v0, qword_100038900);
    v1 = sub_100026E50();
    v2 = sub_1000268F0();
    if (os_log_type_enabled(v2, v1))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, v1, "About to purge ANE binary for compiled model", v3, 2u);
    }

    v4 = objc_opt_self();
    sub_100026830(v5);
    v7 = v6;
    v38 = 0;
    LODWORD(v4) = [v4 purgeANEBinaryForModelAtURL:v6 error:&v38];

    v8 = v38;
    if (!v4)
    {
      goto LABEL_20;
    }

    v9 = v38;
    v10 = sub_100026E50();
    v11 = sub_1000268F0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, v10, "Successfully purged ANE binary for compiled model", v12, 2u);
    }

    v13 = sub_100026E50();
    v14 = sub_1000268F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, v13, "About to purge compiled model", v15, 2u);
    }

    v16 = [objc_opt_self() defaultManager];
    sub_100026830(v17);
    v19 = v18;
    v38 = 0;
    v20 = [v16 removeItemAtURL:v18 error:&v38];

    v8 = v38;
    if (v20)
    {
      v21 = v38;
      v22 = sub_100026E50();
      v23 = sub_1000268F0();
      if (os_log_type_enabled(v23, v22))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v23, v22, "Successfully purged compiled model", v24, 2u);
      }
    }

    else
    {
LABEL_20:
      v31 = v8;
      sub_1000267D0();

      swift_willThrow();
      v32 = sub_100026E60();
      if (qword_1000388E8 != -1)
      {
        swift_once();
      }

      v33 = qword_100039808;
      sub_100006DB4(&qword_1000389F8, &unk_10002B960);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100027C10;
      v35 = sub_100026860();
      v37 = v36;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_100007E88();
      *(v34 + 32) = v35;
      *(v34 + 40) = v37;
      sub_1000268E0(v32, &_mh_execute_header, v33, "Failed to purge ANE binary for compiled model at %@", 51, 2, v34);
    }
  }

  else
  {
    v25 = sub_100026E60();
    if (qword_1000388E8 != -1)
    {
      swift_once();
    }

    v26 = qword_100039808;
    sub_100006DB4(&qword_1000389F8, &unk_10002B960);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100027C10;
    v28 = sub_100026860();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100007E88();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    sub_1000268E0(v25, &_mh_execute_header, v26, "Compiled model URL failed security check when attempting to cleanup: %@", 71, 2, v27);
  }
}

uint64_t sub_1000094FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100009558(_OWORD *a1)
{
  v3 = sub_100026D00();
  __chkstk_darwin(v3 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026790();
  swift_allocObject();
  sub_100026780();
  if (qword_1000388F8 != -1)
  {
    swift_once();
  }

  v6 = sub_100026910();
  sub_100007EDC(v6, qword_100038900);
  v7 = sub_100026E50();
  v8 = sub_1000268F0();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, v7, "attempting to encode JSON", v9, 2u);
  }

  v10 = a1[1];
  v22[0] = *a1;
  v22[1] = v10;
  v11 = a1[3];
  v22[2] = a1[2];
  v22[3] = v11;
  sub_100009EEC();
  v12 = sub_100026770();
  if (v1)
  {
  }

  else
  {
    v14 = v13;
    v15 = v12;
    v16 = sub_100026E50();
    v17 = sub_1000268F0();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, v16, "successfully encoded JSON", v18, 2u);
    }

    sub_100026CF0();
    v19 = sub_100026CE0();
    if (v20)
    {
      v5 = v19;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    sub_100009F40(v15, v14);
  }

  return v5;
}

uint64_t sub_1000097C8(uint64_t a1)
{
  v1 = sub_100026E60();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  v2 = qword_100039808;
  sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100027C10;
  swift_getErrorValue();
  v4 = sub_100027150();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100007E88();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_1000268E0(v1, &_mh_execute_header, v2, "PerfRunner error: %@", 20, 2, v3);

  swift_errorRetain();
  sub_100006DB4(&qword_100038B00, &qword_100027E78);
  result = swift_dynamicCast();
  if (result)
  {
    v9 = sub_100026E60();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100027C10;
    v11 = sub_10000F170(v14, v15, v16);
    v13 = v12;
    sub_100009FE8(v14, v15, v16);
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = v7;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_1000268E0(v9, &_mh_execute_header, v2, "PerfRunner generation error: %@", 31, 2, v10);
  }

  return result;
}

uint64_t sub_1000099C4(uint64_t a1)
{
  v1 = sub_100026D00();
  __chkstk_darwin(v1);
  sub_100026790();
  swift_allocObject();
  sub_100026780();
  swift_getErrorValue();
  sub_100027150();
  sub_100009F94();
  v2 = sub_100026770();
  v4 = v3;

  sub_100026CF0();
  v5 = sub_100026CE0();
  v7 = v6;
  sub_100009F40(v2, v4);

  if (v7)
  {
    return v5;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

unint64_t sub_100009BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006DB4(&qword_100038A90, &qword_100027E20);
    v3 = sub_100026FE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A2E8(v4, v13, &qword_100038A98, &qword_100027E28);
      result = sub_100010D00(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100009E18(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100009CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006DB4(&qword_100038A80, &unk_100027E10);
    v3 = sub_100026FE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A2E8(v4, &v11, &qword_100038A88, qword_100028870);
      v5 = v11;
      result = sub_100010C7C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100009E18(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_100009E18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100009E28(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100009E70(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return v4;
    }
  }
}

unint64_t sub_100009EEC()
{
  result = qword_100038AF0;
  if (!qword_100038AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038AF0);
  }

  return result;
}

uint64_t sub_100009F40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100009F94()
{
  result = qword_100038AF8;
  if (!qword_100038AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038AF8);
  }

  return result;
}

uint64_t sub_100009FE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_10000A000()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000A050()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000077A0;

  return sub_100003FDC(v2, v3, v4, v5, v6);
}

uint64_t sub_10000A11C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000B054;

  return sub_1000075D0(v2, v3, v4);
}

uint64_t sub_10000A1DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A21C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B054;

  return sub_1000076B8(a1, v4, v5, v6);
}

uint64_t sub_10000A2E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006DB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A350(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006DB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A3B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A3E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B054;

  return sub_100007B90(a1, v4);
}

uint64_t sub_10000A4A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000077A0;

  return sub_100007B90(a1, v4);
}

unint64_t sub_10000A558()
{
  result = qword_100038B18;
  if (!qword_100038B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B18);
  }

  return result;
}

__n128 sub_10000A5D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000A5E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000A62C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10000A6A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PerfRunner.PerfRunError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PerfRunner.PerfRunError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14ModelStructureO7ProgramV9OperationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14ModelStructureO7ProgramV9OperationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A9AC()
{
  result = qword_100038B30;
  if (!qword_100038B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B30);
  }

  return result;
}

unint64_t sub_10000AA04()
{
  result = qword_100038B38;
  if (!qword_100038B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B38);
  }

  return result;
}

unint64_t sub_10000AB40()
{
  result = qword_100038B58;
  if (!qword_100038B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B58);
  }

  return result;
}

unint64_t sub_10000AB98()
{
  result = qword_100038B60;
  if (!qword_100038B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B60);
  }

  return result;
}

unint64_t sub_10000ABF0()
{
  result = qword_100038B68;
  if (!qword_100038B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B68);
  }

  return result;
}

unint64_t sub_10000ACE0()
{
  result = qword_100038B80;
  if (!qword_100038B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B80);
  }

  return result;
}

unint64_t sub_10000AD38()
{
  result = qword_100038B88;
  if (!qword_100038B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B88);
  }

  return result;
}

unint64_t sub_10000AD8C()
{
  result = qword_100038B98;
  if (!qword_100038B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerfRunner.ErrorResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PerfRunner.ErrorResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000AF40()
{
  result = qword_100038BB0;
  if (!qword_100038BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038BB0);
  }

  return result;
}

unint64_t sub_10000AF98()
{
  result = qword_100038BB8;
  if (!qword_100038BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038BB8);
  }

  return result;
}

unint64_t sub_10000AFF0()
{
  result = qword_100038BC0;
  if (!qword_100038BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038BC0);
  }

  return result;
}

unint64_t sub_10000B0A8()
{
  v1 = *(*v0 + 16) - 0x61C8864680B583EBLL;
  *(*v0 + 16) = v1;
  v2 = (0xBF58476D1CE4E5B9 * (v1 ^ (v1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v1 ^ (v1 >> 30))) >> 27);
  return (0x94D049BB133111EBLL * v2) ^ ((0x94D049BB133111EBLL * v2) >> 31);
}

unint64_t sub_10000B100(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 - a2 == -1)
  {
    v8 = *(*a1 + 16) - 0x61C8864680B583EBLL;
    *(*a1 + 16) = v8;
    v9 = (0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27);
    v7 = (0x94D049BB133111EBLL * v9) ^ ((0x94D049BB133111EBLL * v9) >> 31);
  }

  else
  {
    v7 = sub_10001107C(a3 - a2 + 1) + a2;
  }

  if (v7 < 1)
  {
LABEL_21:
    sub_100006DB4(&qword_100038C88, &qword_100028608);
    sub_10000B3CC();
    return sub_100026DA0();
  }

  else
  {

    v30 = v7 & ~(v7 >> 63);
    result = sub_10000CEC0(0, v30, 0);
    v11 = 0;
    v12 = *a1;
    v13 = HIBYTE(a5) & 0xF;
    if ((a5 & 0x2000000000000000) == 0)
    {
      v13 = a4 & 0xFFFFFFFFFFFFLL;
    }

    v29 = v13;
    while (v11 != v30)
    {
      if (!v29)
      {
        goto LABEL_23;
      }

      result = sub_100026D40();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (!result)
      {
        goto LABEL_25;
      }

      v14 = *(v12 + 16);
      v15 = v14 - 0x61C8864680B583EBLL;
      *(v12 + 16) = v14 - 0x61C8864680B583EBLL;
      v16 = 0xBF58476D1CE4E5B9 * ((v14 - 0x61C8864680B583EBLL) ^ ((v14 - 0x61C8864680B583EBLL) >> 30));
      v17 = (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31);
      v18 = v17 * result;
      if (result > v17 * result)
      {
        v19 = -result % result;
        if (v19 > v18)
        {
          v20 = v14 + 0x3C6EF372FE94F82ALL;
          do
          {
            v15 -= 0x61C8864680B583EBLL;
            v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) >> 27));
            v20 -= 0x61C8864680B583EBLL;
          }

          while (v19 > (v21 ^ (v21 >> 31)) * result);
          *(v12 + 16) = v15;
        }
      }

      v22 = v7;
      sub_100026D50();
      result = sub_100026D90();
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        v27 = v23;
        v28 = result;
        sub_10000CEC0((v24 > 1), v25 + 1, 1);
        v23 = v27;
        result = v28;
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v25 + 1;
      v26 = &_swiftEmptyArrayStorage[2 * v25];
      v26[4] = result;
      v26[5] = v23;
      v7 = v22;
      if (v22 == v11)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_10000B3CC()
{
  result = qword_100038C90[0];
  if (!qword_100038C90[0])
  {
    sub_100006F18(&qword_100038C88, &qword_100028608);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100038C90);
  }

  return result;
}

uint64_t sub_10000B430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10000B478(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000B484(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000B4CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10000B550(uint64_t a1, void (*a2)(vImage_Buffer *__return_ptr), char *a3, uint64_t a4, uint64_t inited)
{
  a2(&src);
  data = src.data;
  v10 = *(src.data + 2);
  if (v10)
  {
    v11 = (src.data + 32);
    v12 = 1;
    v13 = *(src.data + 2);
    while (1)
    {
      v14 = *v11++;
      v15 = v12 * v14;
      if ((v12 * v14) >> 64 != (v12 * v14) >> 63)
      {
        break;
      }

      v12 = v15;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = 1;
LABEL_7:
  a3 = sub_10000F2BC(v15, a1, a4);
  sub_100006DB4(&qword_100038D30, &qword_100028860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100027C10;
  v16 = kCVPixelBufferIOSurfacePropertiesKey;
  *(inited + 32) = kCVPixelBufferIOSurfacePropertiesKey;
  a4 = inited + 32;
  v17 = v16;
  v18 = sub_100009BB4(_swiftEmptyArrayStorage);
  *(inited + 64) = sub_100006DB4(&qword_100038D38, &qword_100028868);
  *(inited + 40) = v18;
  sub_100009CF0(inited);
  swift_setDeallocating();
  sub_10000C224(inited + 32);
  if (!v10)
  {
    goto LABEL_19;
  }

  if (v10 > data[2])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  inited = data[v10 + 3];
  if (!inited)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v15 == 0x8000000000000000 && inited == -1)
  {
LABEL_25:
    __break(1u);
  }

  pixelBufferOut = 0;
  a4 = v15 / inited;
  type metadata accessor for CFString(0);
  sub_10000C28C();
  isa = sub_100026C70().super.isa;
  v20 = CVPixelBufferCreate(kCFAllocatorDefault, inited, v15 / inited, 0x4C303068u, isa, &pixelBufferOut);

  if (!pixelBufferOut)
  {
    v26 = sub_100026E60();
    if (qword_1000388E8 != -1)
    {
      swift_once();
    }

    v27 = qword_100039808;
    if (os_log_type_enabled(qword_100039808, v26))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v27, v26, "Failed to create backing PB while generating F16 Multiarray input with err %d", v28, 8u);
    }

    src.data = 0;
    src.height = 0xE000000000000000;
    sub_100026F00(77);
    v36._countAndFlagsBits = 0xD00000000000004BLL;
    v36._object = 0x800000010002C130;
    sub_100026D60(v36);
    LODWORD(dest.data) = v20;
    v37._countAndFlagsBits = sub_100027120();
    sub_100026D60(v37);

    goto LABEL_36;
  }

  v15 = pixelBufferOut;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a4 | inited) < 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    goto LABEL_15;
  }

LABEL_22:
  a3 = sub_10000BBE4(a3);
  if ((a4 | inited) < 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((inited - 0x2000000000000000) >> 62 != 3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  src.data = a3 + 32;
  src.height = a4;
  src.width = inited;
  src.rowBytes = 4 * inited;
  CVPixelBufferLockBaseAddress(v15, 0);
  dest.data = CVPixelBufferGetBaseAddress(v15);
  dest.height = a4;
  dest.width = inited;
  dest.rowBytes = CVPixelBufferGetBytesPerRow(v15);
  v21 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
  if (!v21)
  {
    CVPixelBufferUnlockBaseAddress(v15, 0);

    sub_10000BB34(data, &Int._bridgeToObjectiveC());

    v22 = objc_allocWithZone(MLMultiArray);
    sub_10000C2E4();
    v23 = sub_100026DB0().super.isa;

    v24 = [v22 initWithPixelBuffer:v15 shape:v23];

    return v24;
  }

  v29 = v21;
  v30 = sub_100026E60();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  v31 = qword_100039808;
  if (os_log_type_enabled(qword_100039808, v30))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v31, v30, "Failed to convert FToF16 for multiarray generation with err %ld", v32, 0xCu);
  }

  sub_100026F00(62);
  v38._object = 0x800000010002C180;
  v38._countAndFlagsBits = 0xD00000000000003CLL;
  sub_100026D60(v38);
  v39._countAndFlagsBits = sub_100027120();
  sub_100026D60(v39);

LABEL_36:
  result = sub_100026FA0();
  __break(1u);
  return result;
}

void *sub_10000BB34(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_100026F60();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      a2(v7);
      sub_100026F40();
      sub_100026F70();
      sub_100026F80();
      sub_100026F50();
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

__CVBuffer *sub_10000BBF8(size_t a1, size_t a2, OSType a3)
{
  pixelBufferOut = 0;
  sub_100006DB4(&qword_100038D30, &qword_100028860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100027C10;
  v7 = kCVPixelBufferIOSurfacePropertiesKey;
  *(inited + 32) = kCVPixelBufferIOSurfacePropertiesKey;
  v8 = v7;
  v9 = sub_100009BB4(_swiftEmptyArrayStorage);
  *(inited + 64) = sub_100006DB4(&qword_100038D38, &qword_100028868);
  *(inited + 40) = v9;
  sub_100009CF0(inited);
  swift_setDeallocating();
  sub_10000C224(inited + 32);
  type metadata accessor for CFString(0);
  sub_10000C28C();
  isa = sub_100026C70().super.isa;
  CVPixelBufferCreate(kCFAllocatorDefault, a1, a2, a3, isa, &pixelBufferOut);

  if (!pixelBufferOut)
  {
    __break(1u);
  }

  v11 = pixelBufferOut;

  return v11;
}

_BYTE *sub_10000BD78(__CVBuffer *a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  if (CVPixelBufferGetPixelFormatType(a1) == 1278226488)
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  result = CVPixelBufferGetBaseAddress(a1);
  v18 = result;
  if (!result)
  {
    goto LABEL_25;
  }

  if ((Height & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  pixelBuffer = a1;
  if (Height)
  {
    if ((Width & 0x8000000000000000) != 0)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v12 = 0;
    while ((v12 * BytesPerRow) >> 64 == (v12 * BytesPerRow) >> 63)
    {
      if (Width)
      {
        v13 = 0;
        v14 = &v18[v12 * BytesPerRow];
        while (1)
        {
          a2(&v19, a4);
          result = v19;
          if (v7 > *(v19 + 16))
          {
            break;
          }

          ++v13;
          v15 = 32;
          v16 = v7;
          do
          {
            *v14++ = result[v15++];
            --v16;
          }

          while (v16);

          if (v13 == Width)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }

LABEL_9:
      if (++v12 == Height)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  return CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
}

__CVBuffer *sub_10000BEE4(__CVBuffer *a1, size_t a2, size_t a3)
{
  pixelTransferSessionOut = 0;
  v6 = VTPixelTransferSessionCreate(kCFAllocatorDefault, &pixelTransferSessionOut);
  if (pixelTransferSessionOut)
  {
    v7 = pixelTransferSessionOut;
    v8 = sub_10000BBF8(a2, a3, 0x4C303068u);
    v9 = VTPixelTransferSessionTransferImage(v7, a1, v8);
    if (v9 == sub_100026C60())
    {
      VTPixelTransferSessionInvalidate(v7);

      return v8;
    }

    v15 = sub_100026E60();
    if (qword_1000388E8 != -1)
    {
      swift_once();
    }

    v16 = qword_100039808;
    if (os_log_type_enabled(qword_100039808, v15))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v16, v15, "Failed to convert U8 PB to F16 with err %d", v17, 8u);
    }

    sub_100026F00(42);

    v21._countAndFlagsBits = sub_100027120();
    sub_100026D60(v21);
  }

  else
  {
    v11 = v6;
    v12 = sub_100026E60();
    if (qword_1000388E8 != -1)
    {
      swift_once();
    }

    v13 = qword_100039808;
    if (os_log_type_enabled(qword_100039808, v12))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v13, v12, "Failed to create VTPixelTransferSession with err %d", v14, 8u);
    }

    sub_100026F00(51);
    v19._countAndFlagsBits = 0xD000000000000031;
    v19._object = 0x800000010002C0C0;
    sub_100026D60(v19);
    v20._countAndFlagsBits = sub_100027120();
    sub_100026D60(v20);
  }

  result = sub_100026FA0();
  __break(1u);
  return result;
}

uint64_t sub_10000C224(uint64_t a1)
{
  v2 = sub_100006DB4(&qword_100038A88, qword_100028870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000C28C()
{
  result = qword_100038B70;
  if (!qword_100038B70)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038B70);
  }

  return result;
}

unint64_t sub_10000C2E4()
{
  result = qword_100038D40;
  if (!qword_100038D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100038D40);
  }

  return result;
}

uint64_t sub_10000C330(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_100006DB4(&qword_100038DF0, &qword_100028C60);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v20 - v4;
  v5 = sub_100006DB4(&qword_100038DF8, &qword_100028C68);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v23 = &v20 - v6;
  v7 = sub_100006DB4(&qword_100038E00, &qword_100028C70);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_100006DB4(&qword_100038E08, &qword_100028C78);
  v20 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_100006DB4(&qword_100038E10, &qword_100028C80);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - v15;
  sub_100006DFC(a1, a1[3]);
  sub_10000EA64();
  sub_1000271E0();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_10000EB0C();
      v9 = v23;
      sub_100027080();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_10000EAB8();
      v9 = v26;
      sub_100027080();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_10000EB60();
    sub_100027080();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_10000EBB4();
  sub_100027080();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10000C76C()
{
  v1 = 7696483;
  v2 = 0x6E456C617275656ELL;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 7696487;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000C7DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000DE50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000C810(uint64_t a1)
{
  v2 = sub_10000EA64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000C84C(uint64_t a1)
{
  v2 = sub_10000EA64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000C894@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10000C8D0(uint64_t a1)
{
  v2 = sub_10000EBB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000C90C(uint64_t a1)
{
  v2 = sub_10000EBB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000C948(uint64_t a1)
{
  v2 = sub_10000EB60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000C984(uint64_t a1)
{
  v2 = sub_10000EB60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000C9C0(uint64_t a1)
{
  v2 = sub_10000EB0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000C9FC(uint64_t a1)
{
  v2 = sub_10000EB0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000CA38(uint64_t a1)
{
  v2 = sub_10000EAB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000CA74(uint64_t a1)
{
  v2 = sub_10000EAB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000CAB0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10000DFB4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CAF8(void *a1, char a2)
{
  v4 = sub_100006DB4(&qword_100038DA8, &qword_100028A78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_100006DFC(a1, a1[3]);
  sub_10000DDA8();
  sub_1000271E0();
  v9[15] = a2;
  sub_10000DDFC();
  sub_1000270F0();
  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_10000CC48()
{
  sub_1000271A0();
  sub_1000271B0(0);
  return sub_1000271C0();
}

Swift::Int sub_10000CCB4(uint64_t a1)
{
  sub_1000271A0();
  sub_1000271B0(0);
  return sub_1000271C0();
}

uint64_t sub_10000CD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000CDA0(uint64_t a1)
{
  v2 = sub_10000DDA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000CDDC(uint64_t a1)
{
  v2 = sub_10000DDA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000CE18@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10000E5F4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_10000CE60(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000CFD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000CE80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D0F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000CEA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000CEC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D834(a1, a2, a3, *v3, &qword_100038D58, &qword_100028950, &type metadata for Character);
  *v3 = result;
  return result;
}

char *sub_10000CEF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000CF18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000CF38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000CF58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000CF78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D834(a1, a2, a3, *v3, &qword_100038D98, &qword_100028990, &_s14ModelStructureO7ProgramV14NamedValueTypeVN);
  *v3 = result;
  return result;
}

char *sub_10000CFB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000CFD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038D70, &qword_100028968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000D0F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038D78, &qword_100028970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000D214(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038D50, &unk_100028940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10000D308(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038AC0, &qword_100027E50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000D414(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038D60, &qword_100028958);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10000D508(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038D68, &qword_100028960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10000D60C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038D88, &qword_100028980);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000D718(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038D90, &qword_100028988);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000D834(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_100006DB4(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000D940(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006DB4(&qword_100038D80, &qword_100028978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000DA60()
{
  v0 = sub_100026A50();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v30 = v22 - v5;
  sub_10000DCF4();
  v6 = sub_100026E70();
  v7 = *(v6 + 16);
  if (v7)
  {
    v31 = _swiftEmptyArrayStorage;
    sub_10000CEA0(0, v7, 0);
    v8 = v31;
    v10 = *(v1 + 16);
    v9 = v1 + 16;
    v11 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v22[1] = v6;
    v12 = v6 + v11;
    v28 = *(v9 + 56);
    v29 = v10;
    v26 = (v9 + 72);
    v27 = (v9 + 16);
    v25 = enum case for MLComputeDevice.cpu(_:);
    v24 = enum case for MLComputeDevice.gpu(_:);
    v23 = enum case for MLComputeDevice.neuralEngine(_:);
    v13 = (v9 - 8);
    do
    {
      v14 = v30;
      v15 = v9;
      v29(v30, v12, v0);
      (*v27)(v4, v14, v0);
      v16 = (*v26)(v4, v0);
      if (v16 == v23)
      {
        v17 = 2;
      }

      else
      {
        v17 = 3;
      }

      if (v16 == v24)
      {
        v17 = 1;
      }

      if (v16 == v25)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      (*v13)(v4, v0);
      v31 = v8;
      v20 = v8[2];
      v19 = v8[3];
      if (v20 >= v19 >> 1)
      {
        sub_10000CEA0((v19 > 1), v20 + 1, 1);
        v8 = v31;
      }

      v8[2] = v20 + 1;
      *(v8 + v20 + 32) = v18;
      v12 += v28;
      --v7;
      v9 = v15;
    }

    while (v7);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

unint64_t sub_10000DCF4()
{
  result = qword_100038D48;
  if (!qword_100038D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100038D48);
  }

  return result;
}

unint64_t sub_10000DD54()
{
  result = qword_100038DA0;
  if (!qword_100038DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038DA0);
  }

  return result;
}

unint64_t sub_10000DDA8()
{
  result = qword_100038DB0;
  if (!qword_100038DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038DB0);
  }

  return result;
}

unint64_t sub_10000DDFC()
{
  result = qword_100038DB8;
  if (!qword_100038DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038DB8);
  }

  return result;
}

uint64_t sub_10000DE50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7696483 && a2 == 0xE300000000000000;
  if (v3 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7696487 && a2 == 0xE300000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E456C617275656ELL && a2 == 0xEC000000656E6967 || (sub_100027130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100027130();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_10000DFB4(void *a1)
{
  v39 = sub_100006DB4(&qword_100038E40, &qword_100028C88);
  v34 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v31 - v2;
  v40 = sub_100006DB4(&qword_100038E48, &qword_100028C90);
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v31 - v3;
  v4 = sub_100006DB4(&qword_100038E50, &qword_100028C98);
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_100006DB4(&qword_100038E58, &qword_100028CA0);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_100006DB4(&qword_100038E60, &qword_100028CA8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  sub_100006DFC(a1, v14);
  sub_10000EA64();
  v15 = v43;
  sub_1000271D0();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_100027070();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_10001F094();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_10000EB60();
        v29 = v33;
        sub_100027000();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_10000EBB4();
        v23 = v33;
        sub_100027000();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          sub_10000E764(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_10000EB0C();
      v28 = v33;
      sub_100027000();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_10000EAB8();
      v30 = v33;
      sub_100027000();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_100026F30();
  swift_allocError();
  v11 = v25;
  sub_100006DB4(&qword_100038E68, &qword_100028CB0);
  *v11 = &_s13ComputeDeviceV10DeviceTypeON;
  sub_100027010();
  sub_100026F20();
  (*(*(v24 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_10000E764(v44);
  return v11;
}

void *sub_10000E5F4(void *a1)
{
  v3 = sub_100006DB4(&qword_100038DC0, &qword_100028A80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_100006DFC(a1, a1[3]);
  sub_10000DDA8();
  sub_1000271D0();
  if (v1)
  {
    sub_10000E764(a1);
  }

  else
  {
    sub_10000E7B0();
    sub_100027060();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_10000E764(a1);
  }

  return v7;
}

uint64_t sub_10000E764(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10000E7B0()
{
  result = qword_100038DC8;
  if (!qword_100038DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038DC8);
  }

  return result;
}

uint64_t _s13ComputeDeviceV10CodingKeysOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s13ComputeDeviceV10CodingKeysOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000E908()
{
  result = qword_100038DD0;
  if (!qword_100038DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038DD0);
  }

  return result;
}

unint64_t sub_10000E960()
{
  result = qword_100038DD8;
  if (!qword_100038DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038DD8);
  }

  return result;
}

unint64_t sub_10000E9B8()
{
  result = qword_100038DE0;
  if (!qword_100038DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038DE0);
  }

  return result;
}

unint64_t sub_10000EA10()
{
  result = qword_100038DE8;
  if (!qword_100038DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038DE8);
  }

  return result;
}

unint64_t sub_10000EA64()
{
  result = qword_100038E18;
  if (!qword_100038E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E18);
  }

  return result;
}

unint64_t sub_10000EAB8()
{
  result = qword_100038E20;
  if (!qword_100038E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E20);
  }

  return result;
}

unint64_t sub_10000EB0C()
{
  result = qword_100038E28;
  if (!qword_100038E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E28);
  }

  return result;
}

unint64_t sub_10000EB60()
{
  result = qword_100038E30;
  if (!qword_100038E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E30);
  }

  return result;
}

unint64_t sub_10000EBB4()
{
  result = qword_100038E38;
  if (!qword_100038E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E38);
  }

  return result;
}

uint64_t sub_10000EC08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10000EC98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000ED9C()
{
  result = qword_100038E70;
  if (!qword_100038E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E70);
  }

  return result;
}

unint64_t sub_10000EDF4()
{
  result = qword_100038E78;
  if (!qword_100038E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E78);
  }

  return result;
}

unint64_t sub_10000EE4C()
{
  result = qword_100038E80;
  if (!qword_100038E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E80);
  }

  return result;
}

unint64_t sub_10000EEA4()
{
  result = qword_100038E88;
  if (!qword_100038E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E88);
  }

  return result;
}

unint64_t sub_10000EEFC()
{
  result = qword_100038E90;
  if (!qword_100038E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E90);
  }

  return result;
}

unint64_t sub_10000EF54()
{
  result = qword_100038E98;
  if (!qword_100038E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038E98);
  }

  return result;
}

unint64_t sub_10000EFAC()
{
  result = qword_100038EA0;
  if (!qword_100038EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038EA0);
  }

  return result;
}

unint64_t sub_10000F004()
{
  result = qword_100038EA8;
  if (!qword_100038EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038EA8);
  }

  return result;
}

unint64_t sub_10000F05C()
{
  result = qword_100038EB0;
  if (!qword_100038EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038EB0);
  }

  return result;
}

unint64_t sub_10000F0B4()
{
  result = qword_100038EB8;
  if (!qword_100038EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038EB8);
  }

  return result;
}

unint64_t sub_10000F10C()
{
  result = qword_100038EC0;
  if (!qword_100038EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038EC0);
  }

  return result;
}

unint64_t sub_10000F170(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_100026F00(31);

      v5 = 0xD00000000000001DLL;
    }

    else
    {
      sub_100026F00(20);

      v5 = 0xD000000000000012;
    }
  }

  else if (a3)
  {
    sub_100026F00(23);

    v5 = 0xD000000000000015;
  }

  else
  {
    sub_100026F00(24);

    v5 = 0xD000000000000016;
  }

  v7 = v5;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_100026D60(v8);
  return v7;
}

char *sub_10000F2BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v5 = a1;
  result = sub_100008018(0, a1 & ~(a1 >> 63), 0, _swiftEmptyArrayStorage);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    for (i = result; v5; --v5)
    {
      a3(&v11, a2);
      v8 = v11;
      v10 = *(i + 2);
      v9 = *(i + 3);
      if (v10 >= v9 >> 1)
      {
        i = sub_100008018((v9 > 1), v10 + 1, 1, i);
      }

      *(i + 2) = v10 + 1;
      *&i[4 * v10 + 32] = v8;
    }

    return i;
  }

  return result;
}

char *sub_10000F398(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v5 = a1;
  result = sub_10000811C(0, a1 & ~(a1 >> 63), 0, _swiftEmptyArrayStorage);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    for (i = result; v5; --v5)
    {
      a3(&v11, a2);
      v8 = v11;
      v10 = *(i + 2);
      v9 = *(i + 3);
      if (v10 >= v9 >> 1)
      {
        i = sub_10000811C((v9 > 1), v10 + 1, 1, i);
      }

      *(i + 2) = v10 + 1;
      *&i[4 * v10 + 32] = v8;
    }

    return i;
  }

  return result;
}

char *sub_10000F46C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v5 = a1;
  result = sub_100007D80(0, a1 & ~(a1 >> 63), 0, _swiftEmptyArrayStorage);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    for (i = result; v5; --v5)
    {
      a3(&v11, a2);
      v8 = v11;
      v10 = *(i + 2);
      v9 = *(i + 3);
      if (v10 >= v9 >> 1)
      {
        i = sub_100007D80((v9 > 1), v10 + 1, 1, i);
      }

      *(i + 2) = v10 + 1;
      *&i[8 * v10 + 32] = v8;
    }

    return i;
  }

  return result;
}

char *sub_10000F548(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v5 = a1;
  result = sub_100008220(0, a1 & ~(a1 >> 63), 0, _swiftEmptyArrayStorage);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    for (i = result; v5; --v5)
    {
      a3(&v11, a2);
      v8 = v11;
      v10 = *(i + 2);
      v9 = *(i + 3);
      if (v10 >= v9 >> 1)
      {
        i = sub_100008220((v9 > 1), v10 + 1, 1, i);
      }

      *(i + 2) = v10 + 1;
      *&i[8 * v10 + 32] = v8;
    }

    return i;
  }

  return result;
}

char *sub_10000F61C(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = a1;
  result = sub_100008324(0, a1 & ~(a1 >> 63), 0, _swiftEmptyArrayStorage);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    for (i = result; v5; --v5)
    {
      a3(v13, a2);
      v8 = v13[0];
      v9 = v13[1];
      v11 = *(i + 2);
      v10 = *(i + 3);
      if (v11 >= v10 >> 1)
      {
        i = sub_100008324((v10 > 1), v11 + 1, 1, i);
      }

      *(i + 2) = v11 + 1;
      v12 = &i[16 * v11];
      *(v12 + 4) = v8;
      *(v12 + 5) = v9;
    }

    return i;
  }

  return result;
}

void *sub_10000F6F8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    v28 = v3;
    sub_10000CEF8(0, v3, 0);
    v6 = v28;
    v5 = a2;
    v7 = 0;
    result = _swiftEmptyArrayStorage;
    do
    {
      v8 = (a1 + 32 + 2 * v7);
      v9 = *v8;
      v10 = v8[1] - *v8;
      if (v10 == 0xFF)
      {
        v23 = *(*v5 + 16) - 0x61C8864680B583EBLL;
        *(*v5 + 16) = v23;
        v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
        v22 = (v24 >> 31) ^ v24;
      }

      else
      {
        v11 = *v5;
        v12 = *(*v5 + 16);
        v13 = v12 - 0x61C8864680B583EBLL;
        *(*v5 + 16) = v12 - 0x61C8864680B583EBLL;
        v14 = 0xBF58476D1CE4E5B9 * ((v12 - 0x61C8864680B583EBLL) ^ ((v12 - 0x61C8864680B583EBLL) >> 30));
        v15 = (v10 + 1);
        v16 = (((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31) ^ (-21 * (v14 ^ (v14 >> 27)))) * v15;
        v17 = v16 >> 8;
        if (v10 >= v16)
        {
          v18 = ~v10 % v15;
          if (v18 > v16)
          {
            v19 = v12 + 0x3C6EF372FE94F82ALL;
            do
            {
              v13 -= 0x61C8864680B583EBLL;
              v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
              v21 = ((v20 >> 31) ^ v20) * v15;
              v19 -= 0x61C8864680B583EBLL;
            }

            while (v18 > v21);
            v17 = v21 >> 8;
            *(v11 + 16) = v13;
          }
        }

        v22 = v17 + v9;
      }

      if ((v22 & 0xFE) != 0)
      {
        v25 = v22;
      }

      else
      {
        v25 = 1;
      }

      v30 = result;
      v27 = result[2];
      v26 = result[3];
      if (v27 >= v26 >> 1)
      {
        sub_10000CEF8((v26 > 1), v27 + 1, 1);
        v6 = v28;
        v5 = a2;
        result = v30;
      }

      ++v7;
      result[2] = v27 + 1;
      *(result + v27 + 32) = v25;
    }

    while (v7 != v6);
  }

  return result;
}

unint64_t sub_10000F920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 - a2 != -1)
  {
    return sub_100011080(a3 - a2 + 1) + a2;
  }

  v4 = *(*a1 + 16) - 0x61C8864680B583EBLL;
  *(*a1 + 16) = v4;
  v5 = (0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27);
  return (0x94D049BB133111EBLL * v5) ^ ((0x94D049BB133111EBLL * v5) >> 31);
}

__CVBuffer *sub_10000F9B4(uint64_t a1, uint64_t a2)
{
  v12 = *(a2 + 8);
  (v12)(&v11);
  v4 = v11;
  if (*a2 == 1278226536)
  {
    v5 = sub_10000BBF8(v11, *(&v11 + 1), 0x4C303038u);
    v11 = *(a2 + 24);
    v6 = v11;
    sub_10000A2E8(&v12, v10, &qword_100038EF8, &qword_100029120);
    sub_10000A2E8(&v11, v10, &qword_100038F00, &qword_100029128);
    sub_10000BD78(v5, v6, *(&v6 + 1), a1);
    sub_10000A350(&v12, &qword_100038EF8, &qword_100029120);
    sub_10000A350(&v11, &qword_100038F00, &qword_100029128);
    v7 = sub_10000BEE4(v5, v4, *(&v4 + 1));
  }

  else
  {
    v7 = sub_10000BBF8(v11, *(&v11 + 1), *a2);
    v11 = *(a2 + 24);
    v8 = v11;
    sub_10000A2E8(&v12, v10, &qword_100038EF8, &qword_100029120);
    sub_10000A2E8(&v11, v10, &qword_100038F00, &qword_100029128);
    sub_10000BD78(v7, v8, *(&v8 + 1), a1);
    sub_10000A350(&v12, &qword_100038EF8, &qword_100029120);
    sub_10000A350(&v11, &qword_100038F00, &qword_100029128);
  }

  return v7;
}

uint64_t sub_10000FB8C(uint64_t a1, uint64_t a2)
{
  if (HIDWORD(a2) - a2 != -1)
  {
    return sub_10001114C((HIDWORD(a2) - a2 + 1)) + a2;
  }

  v3 = *(*a1 + 16) - 0x61C8864680B583EBLL;
  *(*a1 + 16) = v3;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  return (v4 >> 31) ^ v4;
}

uint64_t sub_10000FC28(uint64_t a1, void (*a2)(char **__return_ptr, uint64_t), uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v7 = sub_100006DB4(&qword_100038F58, &qword_100029150);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  a2(&v21, a1);
  v14 = *(v21 + 2);
  if (v14)
  {
    v15 = (v21 + 32);
    v16 = 1;
    while (1)
    {
      v17 = *v15++;
      result = v16 * v17;
      if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
      {
        break;
      }

      v16 = result;
      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    result = 1;
LABEL_7:
    v21 = sub_10000F398(result, a1, a4);
    sub_100006DB4(&qword_100038F60, &qword_100029158);
    sub_100014E10(&qword_100038F68, &qword_100038F60, &qword_100029158, &protocol conformance descriptor for [A]);
    sub_100026A30();
    sub_100009E28(0, &qword_100038F28, MLMultiArray_ptr);
    (*(v8 + 16))(v11, v13, v7);
    sub_100014E10(&qword_100038F70, &qword_100038F58, &qword_100029150, &protocol conformance descriptor for MLShapedArray<A>);
    v19 = sub_100026E10();
    (*(v8 + 8))(v13, v7);
    return v19;
  }

  return result;
}

uint64_t sub_10000FE94(uint64_t a1, void (*a2)(char **__return_ptr, uint64_t), uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v7 = sub_100006DB4(&qword_100038F38, &qword_100029140);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  a2(&v21, a1);
  v14 = *(v21 + 2);
  if (v14)
  {
    v15 = (v21 + 32);
    v16 = 1;
    while (1)
    {
      v17 = *v15++;
      result = v16 * v17;
      if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
      {
        break;
      }

      v16 = result;
      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    result = 1;
LABEL_7:
    v21 = sub_10000F2BC(result, a1, a4);
    sub_100006DB4(&qword_100038F40, &qword_100029148);
    sub_100014E10(&qword_100038F48, &qword_100038F40, &qword_100029148, &protocol conformance descriptor for [A]);
    sub_100026A30();
    sub_100009E28(0, &qword_100038F28, MLMultiArray_ptr);
    (*(v8 + 16))(v11, v13, v7);
    sub_100014E10(&qword_100038F50, &qword_100038F38, &qword_100029140, &protocol conformance descriptor for MLShapedArray<A>);
    v19 = sub_100026E10();
    (*(v8 + 8))(v13, v7);
    return v19;
  }

  return result;
}

uint64_t sub_100010100(uint64_t a1, void (*a2)(char **__return_ptr, uint64_t), uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v7 = sub_100006DB4(&qword_100038F10, &unk_100029130);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  a2(&v21, a1);
  v14 = *(v21 + 2);
  if (v14)
  {
    v15 = (v21 + 32);
    v16 = 1;
    while (1)
    {
      v17 = *v15++;
      result = v16 * v17;
      if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
      {
        break;
      }

      v16 = result;
      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    result = 1;
LABEL_7:
    v21 = sub_10000F46C(result, a1, a4);
    sub_100006DB4(&qword_100038F18, &qword_1000293C0);
    sub_100014E10(&qword_100038F20, &qword_100038F18, &qword_1000293C0, &protocol conformance descriptor for [A]);
    sub_100026A30();
    sub_100009E28(0, &qword_100038F28, MLMultiArray_ptr);
    (*(v8 + 16))(v11, v13, v7);
    sub_100014E10(&qword_100038F30, &qword_100038F10, &unk_100029130, &protocol conformance descriptor for MLShapedArray<A>);
    v19 = sub_100026E10();
    (*(v8 + 8))(v13, v7);
    return v19;
  }

  return result;
}

id sub_10001036C(uint64_t a1)
{
  sub_100009E28(0, &qword_100038D40, NSNumber_ptr);
  isa = sub_100026C70().super.isa;

  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() featureValueWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_1000267D0();

    swift_willThrow();
  }

  return v2;
}

id sub_100010474(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_100010B80(*(a2 + 16), 0);
  v6 = sub_100012930(&v13, v5 + 4, v4, a2);
  v7 = v13;

  sub_10001473C(v7);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = _swiftEmptyArrayStorage;
  }

  v13 = v5;
  sub_10001121C(&v13);
  v8 = v13;

  v9 = sub_100014744(&_swiftEmptyDictionarySingleton, v8, a2, a1);

  v10 = sub_1000105E0(v9);

  v11 = objc_allocWithZone(MLDictionaryFeatureProvider);
  return sub_10001094C(v10);
}

unint64_t sub_1000105E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006DB4(&qword_100038EC8, &qword_1000290F0);
    v2 = sub_100026FE0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_100009E28(0, &qword_100038ED0, MLFeatureValue_ptr);

        v19 = v18;
        swift_dynamicCast();
        sub_100009E18(&v25, v27);
        sub_100009E18(v27, v28);
        sub_100009E18(v28, &v26);
        result = sub_100010C04(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_10000E764(v11);
          result = sub_100009E18(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_100009E18(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10001084C(void *a2@<X8>)
{
  isa = sub_100026DB0().super.isa;
  v4 = [objc_opt_self() sequenceWithStringArray:isa];

  *a2 = v4;
}

void sub_1000108B8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_10000BB1C(*a1);
  sub_100009E28(0, &qword_100038D40, NSNumber_ptr);
  isa = sub_100026DB0().super.isa;

  v4 = [objc_opt_self() sequenceWithInt64Array:isa];

  *a2 = v4;
}

id sub_10001094C(uint64_t a1)
{
  isa = sub_100026C70().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    sub_1000267D0();

    swift_willThrow();
  }

  return v3;
}

id sub_100010A34(uint64_t a1)
{
  v2 = v1;
  sub_100026830(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_100026870();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_1000267D0();

    swift_willThrow();
    v12 = sub_100026870();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void *sub_100010B80(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100006DB4(&qword_100038AC0, &qword_100027E50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_100010C04(uint64_t a1, uint64_t a2)
{
  sub_1000271A0();
  sub_100026D30();
  v4 = sub_1000271C0();

  return sub_100010DB0(a1, a2, v4);
}

unint64_t sub_100010C7C(uint64_t a1)
{
  sub_1000271A0();
  type metadata accessor for CFString(0);
  sub_100014BF8();
  sub_1000268C0();
  v2 = sub_1000271C0();

  return sub_100010E68(a1, v2);
}

unint64_t sub_100010D00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100026EC0(*(v2 + 40));

  return sub_100010F44(a1, v4);
}

unint64_t sub_100010D44(uint64_t a1)
{
  v1 = a1;
  sub_1000271A0();
  sub_1000271B0(v1);
  v2 = sub_1000271C0();

  return sub_10001100C(v1, v2);
}

unint64_t sub_100010DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100027130())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100010E68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100014BF8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000268B0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100010F44(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100014C50(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100026ED0();
      sub_100014CAC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001100C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100011080(unint64_t result)
{
  if (result)
  {
    v2 = *v1;
    v3 = *(*v1 + 16);
    v4 = v3 - 0x61C8864680B583EBLL;
    *(*v1 + 16) = v3 - 0x61C8864680B583EBLL;
    v5 = 0xBF58476D1CE4E5B9 * ((v3 - 0x61C8864680B583EBLL) ^ ((v3 - 0x61C8864680B583EBLL) >> 30));
    v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
    v7 = v6 * result;
    v8 = (v6 * result) >> 64;
    if (v7 < result)
    {
      v9 = -result % result;
      if (v9 > v7)
      {
        v10 = v3 + 0x3C6EF372FE94F82ALL;
        do
        {
          v4 -= 0x61C8864680B583EBLL;
          v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
          v12 = v11 ^ (v11 >> 31);
          v10 -= 0x61C8864680B583EBLL;
        }

        while (v9 > v12 * result);
        v8 = (v12 * result) >> 64;
        *(v2 + 16) = v4;
      }
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10001114C(unint64_t result)
{
  if (result)
  {
    v2 = *v1;
    v3 = *(*v1 + 16);
    v4 = v3 - 0x61C8864680B583EBLL;
    *(*v1 + 16) = v3 - 0x61C8864680B583EBLL;
    v5 = 0xBF58476D1CE4E5B9 * ((v3 - 0x61C8864680B583EBLL) ^ ((v3 - 0x61C8864680B583EBLL) >> 30));
    v6 = result * (((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31) ^ (321982955 * (v5 ^ (v5 >> 27))));
    if (v6 < result)
    {
      v7 = -result % result;
      if (v7 > v6)
      {
        v8 = v3 + 0x3C6EF372FE94F82ALL;
        do
        {
          v4 -= 0x61C8864680B583EBLL;
          v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
          v6 = result * ((v9 >> 31) ^ v9);
          v8 -= 0x61C8864680B583EBLL;
        }

        while (v7 > v6);
        *(v2 + 16) = v4;
      }
    }

    return HIDWORD(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_10001121C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100012A88(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100011288(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100011288(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100027110(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_100026DD0();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100011450(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100011380(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100011380(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_100027130(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100011450(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100011CE0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100011A2C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_100027130();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_100027130();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100007F14(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100007F14((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100011A2C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100011CE0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100011C54(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_100027130(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_100011A2C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_100027130() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_100027130() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100011C54(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100011CE0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100011CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100006DB4(&qword_100038EE0, &qword_100029110);
  v33 = v4;
  result = sub_100026FD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1000271A0();
      sub_100026D30();
      result = sub_1000271C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100011FAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100006DB4(&qword_100038ED8, &qword_1000290F8);
  v35 = v4;
  result = sub_100026FD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1000271A0();
      sub_100026D30();
      result = sub_1000271C0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100012250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100006DB4(&qword_100038AE8, &qword_100027E70);
  result = sub_100026FD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 16 * v20;
      v22 = *(*(v5 + 48) + v20);
      v23 = *(v21 + 8);
      v24 = *v21;
      sub_1000271A0();
      sub_1000271B0(v22);
      result = sub_1000271C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

void *sub_1000124E4()
{
  v1 = v0;
  sub_100006DB4(&qword_100038EE0, &qword_100029110);
  v2 = *v0;
  v3 = sub_100026FC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100012664()
{
  v1 = v0;
  sub_100006DB4(&qword_100038ED8, &qword_1000290F8);
  v2 = *v0;
  v3 = sub_100026FC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}