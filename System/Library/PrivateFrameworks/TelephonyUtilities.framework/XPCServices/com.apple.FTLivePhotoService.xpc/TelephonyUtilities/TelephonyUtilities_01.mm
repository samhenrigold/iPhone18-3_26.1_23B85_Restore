id sub_1000219D0()
{
  v1 = [v0 error];

  return v1;
}

uint64_t sub_100021A2C()
{
  v1 = [v0 inputs];
  sub_10000C944(0, &unk_1000593F0, AVAssetWriterInput_ptr);
  v2 = sub_1000398FC();

  return v2;
}

id sub_100021AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  return [v3 startSessionAtSourceTime:v5];
}

uint64_t sub_100021B6C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100012CAC;
  v5[3] = &unk_100052420;
  v3 = _Block_copy(v5);

  [v2 finishWritingWithCompletionHandler:v3];
  _Block_release(v3);
}

id sub_100021C1C(uint64_t a1)
{
  v2 = sub_1000395CC();
  sub_100023CEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000C9CC();
  v8 = v7 - v6;
  sub_10000C944(0, &qword_1000593E8, AVAssetWriter_ptr);
  (*(v4 + 16))(v8, a1, v2);
  v9 = sub_10002366C(v8, AVFileTypeQuickTimeMovie);
  formatDescriptionOut = 0;
  CMFormatDescriptionCreate(kCFAllocatorDefault, 0x74657874u, 0x77767474u, 0, &formatDescriptionOut);
  v10 = formatDescriptionOut;
  objc_allocWithZone(AVAssetWriterInput);
  v11 = AVMediaTypeText;
  v12 = v10;
  v13 = sub_1000238C8(v11, 0, v10);
  [v13 setExpectsMediaDataInRealTime:1];
  CMTimeMakeWithSeconds(&v15, 10.0, 1000);
  [v9 setMovieFragmentInterval:&v15];
  [v9 addInput:v13];

  return v9;
}

uint64_t sub_100021E4C()
{
  v2 = v0;
  sub_100023E54();
  sub_1000397CC();
  sub_100023CEC();
  __chkstk_darwin(v3);
  sub_10000C9CC();
  sub_100023EB4(v4);
  v5 = sub_100023EA0();
  v6(v5);
  v7 = v1;
  sub_1000397EC();
  v8 = sub_100023E8C();
  v9(v8);
  if (v1)
  {
    if (qword_100058AA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000EAE0(&qword_100058AA0);
LABEL_3:
  v10 = sub_10003972C();
  sub_100023E60(v10, qword_10005AB20);
  v11 = sub_10003970C();
  sub_10003998C();
  sub_100023F18();
  if (sub_100023F00())
  {
    sub_10001B508();
    v22[0] = sub_100023E04();
    *v1 = 136315138;

    v12 = sub_10003989C();
    v14 = sub_10000BFDC(v12, v13, v22);

    *(v1 + 1) = v14;
    sub_100023D30(&_mh_execute_header, v15, v16, "Start writing for %s");
    sub_100023CFC();
    sub_10001B47C();
  }

  sub_10000BF68(v2 + 16, v22);
  v17 = v23;
  v18 = v24;
  sub_10000D3B0(v22, v23);
  (*(v18 + 40))(v17, v18);
  sub_10000C54C(v22);
  sub_10000BF68(v2 + 16, v22);
  v19 = v23;
  v20 = v24;
  sub_10000D3B0(v22, v23);
  (*(v20 + 32))(kCMTimeZero.value, *&kCMTimeZero.timescale, kCMTimeZero.epoch, v19, v20);
  result = sub_10000C54C(v22);
  *(v2 + 64) = 1;
  return result;
}

void sub_1000220AC(uint64_t a1)
{
  v2 = v1;
  sub_100023E54();
  v3 = sub_1000397CC();
  sub_100023CEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000C9CC();
  v9 = v8 - v7;
  v10 = *(v2 + 72);
  *(v8 - v7) = v10;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = sub_1000397EC();
  (*(v5 + 8))(v9, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_10000EAE0(&qword_100058AA0);
    goto LABEL_5;
  }

  swift_beginAccess();

  sub_1000222E0(v12);
  swift_endAccess();
  if (!*(*(v2 + 56) + 16))
  {
    return;
  }

  if ((*(v2 + 65) & 1) == 0)
  {
    sub_1000223A4();
    return;
  }

  if (qword_100058AA0 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v13 = sub_10003972C();
  sub_100023E60(v13, qword_10005AB20);
  v14 = sub_10003970C();
  sub_1000399CC();
  sub_100023F18();
  if (sub_100023F00())
  {
    sub_10001B508();
    v20[0] = sub_100023E04();
    *v9 = 136315138;

    v15 = sub_10003989C();
    v17 = sub_10000BFDC(v15, v16, v20);

    *(v9 + 4) = v17;
    sub_100023D30(&_mh_execute_header, v18, v19, "Ignoring captions update we already stopped writing %s");
    sub_100023CFC();
    sub_10001B47C();
  }
}

uint64_t sub_1000222E0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100023BE8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1000223A4()
{
  sub_100023E54();
  v120 = v1;
  v2 = sub_1000397CC();
  sub_100023CEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000C9CC();
  v8 = v7 - v6;
  v9 = *(v0 + 72);
  *(v7 - v6) = v9;
  (*(v4 + 104))(v7 - v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v9;
  v11 = sub_1000397EC();
  (*(v4 + 8))(v8, v2);
  if (v11)
  {
    if ((*(v0 + 64) & 1) == 0)
    {
      sub_100021E4C();
    }

    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v121 = v0;
    sub_10000D3B0((v0 + 16), v12);
    sub_100023CEC();
    v14 = v13;
    __chkstk_darwin(v15);
    sub_10000C9CC();
    v18 = v17 - v16;
    (*(v14 + 16))(v17 - v16);
    v19 = sub_100023E20();
    v21 = v20(v19);
    (*(v14 + 8))(v18, v12);
    if (!sub_100023974(v21))
    {

      return;
    }

    if ((v21 & 0xC000000000000001) == 0)
    {
      v22 = v121;
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v23 = *(v21 + 32);
      goto LABEL_8;
    }
  }

  else
  {
LABEL_48:
    __break(1u);
  }

  v23 = sub_100039B2C();
  v22 = v121;
LABEL_8:

  if (qword_100058AA0 != -1)
  {
    sub_10000EAE0(&qword_100058AA0);
  }

  v24 = sub_10003972C();
  v25 = sub_10000BF30(v24, qword_10005AB20);

  v26 = sub_10003970C();
  v27 = sub_10003999C();

  v28 = os_log_type_enabled(v26, v27);
  v129 = v25;
  if (v28)
  {
    sub_10001B508();
    v140 = sub_100023E38();
    *v11 = 136315138;
    v139.value = v22;

    v29 = sub_100023DE8();
    v31 = sub_10000BFDC(v29, v30, &v140);

    *(v11 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Draining captions queue... %s", v11, 0xCu);
    sub_100023CFC();
    sub_10000EB00(v11);
  }

  if ([v23 isReadyForMoreMediaData])
  {
    v32 = v121;
    swift_beginAccess();
    v33 = v32[7];
    v119 = *(v33 + 16);
    if (v119)
    {
      v113 = v23;
      v117 = objc_opt_self();
      v116 = kCFAllocatorDefault;

      v34 = 0;
      v35 = (v33 + 64);
      *&v36 = 136316162;
      v112[2] = v36;
      *&v36 = 138412290;
      v112[0] = v36;
      *&v36 = 67109378;
      v114 = v36;
      *&v36 = 136315906;
      v112[1] = v36;
      v118 = v33;
      while (1)
      {
        if (v34 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_48;
        }

        v126 = v34;
        v37 = *(v35 - 3);
        v128 = *(v35 - 4);
        v122 = *v35;
        v39 = *(v35 - 2);
        v38 = *(v35 - 1);

        CMTimeMakeWithSeconds(&v139, v39, 1000);
        value = v139.value;
        flags = v139.flags;
        timescale = v139.timescale;
        epoch = v139.epoch;
        CMTimeMakeWithSeconds(&v139, v38, 1000);
        v132 = v139.flags;
        LODWORD(v133) = v139.timescale;
        v130 = v139.value;
        v131 = v139.epoch;
        v43 = TUCaptionsLoggingEnabled();

        v44 = sub_10003970C();
        v11 = sub_10003998C();

        v123 = v11;
        v125 = v44;
        v45 = os_log_type_enabled(v44, v11);
        if (v43)
        {
          if (v45)
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v124 = value;
            v48 = v47;
            v115 = swift_slowAlloc();
            v134 = v115;
            sub_100023EC8(&v141);
            v49 = sub_100023DE8();
            v51 = v50;
            v52 = sub_10000BFDC(v49, v50, &v134);

            *(v46 + 4) = v52;
            v53 = sub_100023D50();
            sub_100023D90(v53);
            v54 = sub_10003989C();
            sub_100023F30(v54, v55);
            sub_100023EE8();
            *(v46 + 24) = v51;
            v56 = sub_100023DB4();
            *(v46 + 34) = v56;
            *(v48 + 8) = v56;
            *(v46 + 42) = 2080;
            v139.value = v128;
            *&v139.timescale = v37;

            v57 = sub_10003989C();
            sub_100023F30(v57, v58);
            sub_100023EE8();
            *(v46 + 44) = v51;
            v59 = v121;
            v60 = v125;
            _os_log_impl(&_mh_execute_header, v125, v123, "%s writing caption with timestamp %@ number: %s duration %@ text: %s", v46, 0x34u);
            sub_10000BEC0(&qword_100058DF0, &unk_10003F990);
            swift_arrayDestroy();
            v61 = v48;
            value = v124;
            sub_10000EB00(v61);
            v62 = v115;
            swift_arrayDestroy();
            v63 = v62;
            v32 = v59;
LABEL_21:
            sub_10000EB00(v63);
            sub_10000EB00(v46);

            goto LABEL_23;
          }
        }

        else if (v45)
        {
          v46 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v124 = value;
          v65 = v64;
          v115 = swift_slowAlloc();
          v134 = v115;
          sub_100023EC8(&v139.epoch);
          v66 = sub_100023DE8();
          sub_100023F30(v66, v67);
          sub_100023EE8();
          *(v46 + 4) = v32;
          v68 = sub_100023D50();
          sub_100023D90(v68);
          v69 = sub_10003989C();
          sub_100023F30(v69, v70);
          sub_100023EE8();
          *(v46 + 24) = v32;
          v32 = v121;
          v71 = sub_100023DB4();
          *(v46 + 34) = v71;
          *(v65 + 8) = v71;
          v60 = v125;
          _os_log_impl(&_mh_execute_header, v125, v123, "%s writing caption with timestamp %@ number: %s duration %@", v46, 0x2Au);
          sub_10000BEC0(&qword_100058DF0, &unk_10003F990);
          swift_arrayDestroy();
          v72 = v65;
          value = v124;
          sub_10000EB00(v72);
          v73 = v115;
          swift_arrayDestroy();
          v63 = v73;
          goto LABEL_21;
        }

        v11 = timescale;
LABEL_23:
        v74 = v133;
        v138 = 0;
        v75 = sub_10003985C();

        v139.value = v130;
        v139.timescale = v74;
        v139.flags = v132;
        v139.epoch = v131;
        v134 = value;
        v135 = v11;
        v136 = flags;
        v137 = epoch;
        v76 = [v117 createWebVTTTextSampleBuffer:v75 startTime:&v139 duration:&v134 sampleBufferOut:&v138];

        if (v76 || (v83 = v138) == 0)
        {

          v77 = sub_10003970C();
          v78 = sub_1000399AC();

          if (os_log_type_enabled(v77, v78))
          {
            swift_slowAlloc();
            v79 = sub_100023E38();
            v139.value = v79;
            *v11 = v114;
            *(v11 + 4) = v76;
            *(v11 + 8) = 2080;
            v134 = v32;

            v80 = sub_10003989C();
            v82 = sub_10000BFDC(v80, v81, &v139.value);
            v32 = v121;

            *(v11 + 10) = v82;
            _os_log_impl(&_mh_execute_header, v77, v78, "Error while creating sample buffer %d for %s", v11, 0x12u);
            sub_10000C54C(v79);
            sub_10001B47C();
            sub_10000EB00(v11);
          }
        }

        else
        {
          v84 = sub_10003970C();
          v85 = sub_10003998C();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v84, v85, "Adding text buffer", v86, 2u);
            sub_10001B47C();
          }

          v11 = [v113 appendSampleBuffer:v83];
          if ((v11 & 1) == 0)
          {

            v87 = sub_10003970C();
            v11 = sub_1000399AC();

            if (os_log_type_enabled(v87, v11))
            {
              v88 = sub_10001B508();
              v89 = swift_slowAlloc();
              *v88 = v112[0];
              v90 = v32;
              v91 = v32[5];
              v92 = v32[6];
              sub_10000D3B0(v90 + 2, v91);
              v133 = v112;
              sub_100023CEC();
              v94 = v93;
              __chkstk_darwin(v95);
              sub_10000C9CC();
              v98 = v97 - v96;
              (*(v94 + 16))(v97 - v96);
              v99 = (*(v92 + 8))(v91, v92);
              (*(v94 + 8))(v98, v91);
              if (v99)
              {
                v100 = _swift_stdlib_bridgeErrorToNSError();
                v101 = v100;
              }

              else
              {
                v100 = 0;
                v101 = 0;
              }

              *(v88 + 4) = v100;
              *v89 = v101;
              _os_log_impl(&_mh_execute_header, v87, v11, "Error while adding sample buffer %@", v88, 0xCu);
              sub_10001C2E4(v89);
              sub_10000EB00(v89);
              sub_10000EB00(v88);

              v32 = v121;
            }

            else
            {
            }
          }
        }

        v34 = v126 + 1;
        v35 += 10;
        v33 = v118;
        if (v119 == v126 + 1)
        {

          v23 = v113;
          break;
        }
      }
    }

    v32[7] = _swiftEmptyArrayStorage;

    v109 = sub_10003970C();
    v110 = sub_10003999C();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&_mh_execute_header, v109, v110, "Clearing captions queue...", v111, 2u);
      sub_10000EB00(v111);
    }
  }

  else
  {
    v102 = v121;

    v103 = sub_10003970C();
    v104 = sub_1000399AC();

    if (os_log_type_enabled(v103, v104))
    {
      sub_10001B508();
      v105 = sub_100023E38();
      v140 = v105;
      *v11 = 136315138;
      v139.value = v102;

      v106 = sub_100023DE8();
      v108 = sub_10000BFDC(v106, v107, &v140);

      *(v11 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v103, v104, "Writer input not ready for input data for %s", v11, 0xCu);
      sub_10000C54C(v105);
      sub_10001B47C();
      sub_10000EB00(v11);
    }
  }
}

void sub_100023084()
{
  v2 = v0;
  sub_100023E54();
  sub_1000397CC();
  sub_100023CEC();
  __chkstk_darwin(v3);
  sub_10000C9CC();
  sub_100023EB4(v4);
  v5 = sub_100023EA0();
  v6(v5);
  v7 = v1;
  sub_1000397EC();
  v8 = sub_100023E8C();
  v9(v8);
  if ((v1 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    sub_10000EAE0(&qword_100058AA0);
    goto LABEL_4;
  }

  sub_1000223A4();
  if (*(v0 + 64) != 1)
  {
    if (qword_100058AA0 != -1)
    {
      sub_10000EAE0(&qword_100058AA0);
    }

    v29 = sub_10003972C();
    sub_100023E60(v29, qword_10005AB20);
    v30 = sub_10003970C();
    sub_1000399CC();
    sub_100023F18();
    if (sub_100023F00())
    {
      sub_10001B508();
      v39[0] = sub_100023E04();
      *v1 = 136315138;
      v42 = v2;

      v31 = sub_10003989C();
      v33 = sub_10000BFDC(v31, v32, v39);

      *(v1 + 1) = v33;
      sub_100023D30(&_mh_execute_header, v34, v35, "Skipping to call stop on asset writer since, it was never started %s");
      sub_100023CFC();
      sub_10001B47C();
    }

    return;
  }

  *(v0 + 65) = 1;
  if (qword_100058AA0 != -1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v10 = sub_10003972C();
  sub_100023E60(v10, qword_10005AB20);
  v11 = sub_10003970C();
  sub_1000399CC();
  sub_100023F18();
  if (sub_100023F00())
  {
    sub_10001B508();
    v39[0] = sub_100023E04();
    *v1 = 136315138;
    v42 = v2;

    v12 = sub_10003989C();
    v14 = sub_10000BFDC(v12, v13, v39);

    *(v1 + 1) = v14;
    sub_100023D30(&_mh_execute_header, v15, v16, "Marking input as finished %s");
    sub_100023CFC();
    sub_10001B47C();
  }

  v17 = *(v2 + 40);
  sub_10000D3B0((v2 + 16), v17);
  sub_100023CEC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10000C9CC();
  v23 = v22 - v21;
  (*(v19 + 16))(v22 - v21);
  v24 = sub_100023E20();
  v26 = v25(v24);
  (*(v19 + 8))(v23, v17);
  if (!sub_100023974(v26))
  {

    goto LABEL_17;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = sub_100039B2C();
    goto LABEL_10;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 32);
LABEL_10:
    v28 = v27;

    [v28 markAsFinished];

LABEL_17:
    sub_10000BF68(v2 + 16, v39);
    v36 = v40;
    v37 = v41;
    sub_10000D3B0(v39, v40);
    v38 = *(v37 + 48);

    v38(sub_100023BE0, v2, v36, v37);

    sub_10000C54C(v39);
    return;
  }

  __break(1u);
}

void sub_1000234B4(void *a1)
{
  if (qword_100058AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_10003972C();
  sub_10000BF30(v1, qword_10005AB20);

  oslog = sub_10003970C();
  v2 = sub_1000399CC();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;

    v5 = sub_10003989C();
    v7 = sub_10000BFDC(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Finished writing %s", v3, 0xCu);
    sub_10000C54C(v4);
  }

  else
  {
  }
}

id sub_10002366C(uint64_t a1, void *a2)
{
  sub_10003955C(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() assetWriterWithURL:v4 fileType:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_1000395CC();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_10003951C();

    swift_willThrow();
    v12 = sub_1000395CC();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_1000237D4()
{
  sub_10000C54C((v0 + 16));

  return v0;
}

uint64_t sub_100023804()
{
  sub_1000237D4();

  return _swift_deallocClassInstance(v0, 80, 7);
}

id sub_1000238C8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7.super.isa = sub_1000397FC().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v4 initWithMediaType:a1 outputSettings:v7.super.isa sourceFormatHint:a3];

  return v8;
}

uint64_t sub_100023974(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

char *sub_100023998(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000BEC0(&qword_100059098, qword_10003F730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000BEC0(&qword_100058DF8, &unk_10003F5D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023BB4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100023BE8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_100023998(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100023C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_10000C944(0, &qword_1000593E8, AVAssetWriter_ptr);
  v9 = &off_1000523C8;
  *&v7 = a1;
  *(a3 + 56) = _swiftEmptyArrayStorage;
  *(a3 + 64) = 0;
  *(a3 + 72) = a2;
  sub_10000C5F8(&v7, a3 + 16);
  return a3;
}

uint64_t sub_100023CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023CFC()
{
  sub_10000C54C(v0);
}

void sub_100023D30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

CFStringRef sub_100023D50()
{
  *(v0 + 12) = 2112;
  *(v1 - 160) = *(v1 - 224);
  v3 = *(v1 - 204);
  *(v1 - 152) = *(v1 - 200);
  *(v1 - 148) = v3;
  *(v1 - 144) = *(v1 - 216);
  v4 = *(v1 - 328);

  return CMTimeCopyDescription(v4, (v1 - 160));
}

uint64_t sub_100023D90(uint64_t a1)
{
  *(v1 + 14) = a1;
  *v2 = a1;
  *(v1 + 22) = 2080;
  *(v3 - 160) = *(v3 - 280);
  return v3 - 160;
}

CFStringRef sub_100023DB4()
{
  *(v2 + 32) = v3;
  *(v5 - 160) = *(v5 - 272);
  *(v5 - 152) = *(v5 - 244);
  *(v5 - 148) = v0;
  *(v5 - 144) = v4;

  return CMTimeCopyDescription(v1, (v5 - 160));
}

uint64_t sub_100023DE8()
{

  return sub_10003989C();
}

uint64_t sub_100023E04()
{

  return swift_slowAlloc();
}

uint64_t sub_100023E38()
{

  return swift_slowAlloc();
}

uint64_t sub_100023E60(uint64_t a1, uint64_t a2)
{
  sub_10000BF30(a1, a2);
}

uint64_t sub_100023EC8@<X0>(uint64_t a1@<X8>)
{
  *v1 = *(a1 - 256);
  *(v3 - 160) = v2;
}

uint64_t sub_100023EE8()
{
}

BOOL sub_100023F00()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100023F18()
{
}

unint64_t sub_100023F30(uint64_t a1, unint64_t a2)
{

  return sub_10000BFDC(a1, a2, (v2 - 192));
}

id sub_100023F48(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(IDSService);

  result = sub_1000276F8(a1, a2);
  if (result)
  {
    v7 = *(v2 + 216);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100023FF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name);

  return v1;
}

uint64_t sub_100024030(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name);
  *v3 = a1;
  v3[1] = a2;
}

id sub_100024070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class a5, uint64_t a6)
{
  v10 = *(v6 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService);
  swift_unknownObjectRetain();
  sub_10003955C(v11);
  v13 = v12;
  sub_100026784(a2);
  v14.super.isa = sub_1000397FC().super.isa;

  sub_100026A48(a3);
  v15.super.isa = sub_10003994C().super.isa;

  if (a5)
  {
    sub_100026784(a5);
    a5 = sub_1000397FC().super.isa;
  }

  v21 = 0;
  v16 = [v10 sendResourceAtURL:v13 metadata:v14.super.isa toDestinations:v15.super.isa priority:a4 options:a5 identifier:a6 error:&v21];
  swift_unknownObjectRelease();

  if (v16)
  {
    return v21;
  }

  v18 = v21;
  sub_10003951C();

  return swift_willThrow();
}

uint64_t sub_10002424C()
{
  sub_10001B470();
  *(v1 + 152) = v0;
  if (qword_100058A88 != -1)
  {
    sub_100027E20(&qword_100058A88);
  }

  v2 = qword_10005AAE8;
  *(v1 + 160) = qword_10005AAE8;

  return _swift_task_switch(sub_1000242D4, v2, 0);
}

uint64_t sub_1000242D4()
{
  sub_100021628();
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_firewall;
  v0[21] = OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_firewall;
  if (*(v1 + v2))
  {
    sub_10001B4C4();

    return v3();
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService);
    v0[22] = v5;
    v6 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_queue);
    v0[23] = v6;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10002446C;
    v7 = swift_continuation_init();
    v0[17] = sub_10000BEC0(&qword_1000595A0, &qword_10003FB70);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026F28;
    v0[13] = &unk_100052588;
    v0[14] = v7;
    swift_unknownObjectRetain();
    [v5 retrieveFTFirewallWith:v6 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10002446C()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = sub_1000245F8;
  }

  else
  {
    v6 = sub_100024580;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100024580()
{
  sub_10001B470();
  v1 = v0[23];
  *(v0[19] + v0[21]) = v0[18];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10001B4C4();

  return v2();
}

uint64_t sub_1000245F8()
{
  sub_100027E50();
  v1 = *(v0 + 184);
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_10001B4C4();

  return v2();
}

uint64_t sub_10002466C()
{
  sub_10001B470();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  if (qword_100058A88 != -1)
  {
    sub_100027E20(&qword_100058A88);
  }

  v4 = qword_10005AAE8;
  v1[26] = qword_10005AAE8;

  return _swift_task_switch(sub_1000246F8, v4, 0);
}

uint64_t sub_1000246F8()
{
  v29 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v1 = sub_10003972C();
  v0[27] = sub_10000BF30(v1, qword_10005AAF0);

  v2 = sub_10003970C();
  v3 = sub_1000399CC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[23];
    v4 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    v0[18] = v5;
    v0[19] = v4;

    v8 = sub_10003989C();
    v10 = sub_10000BFDC(v8, v9, &v28);

    *(v6 + 4) = v10;
    sub_100027ED4(&_mh_execute_header, v11, v12, "Asked to donate %s");
    sub_10000C54C(v7);
    sub_10000EB00(v7);
    sub_10000EB00(v6);
  }

  v13 = sub_10003985C();
  v14 = IDSCopyAddressDestinationForDestination();

  if (!v14 || (v15 = sub_10003986C(), v17 = v16, v14, sub_10000C944(0, &qword_100059580, IDSURI_ptr), v18 = sub_100026FBC(v15, v17), (v0[28] = v18) == 0))
  {
    sub_100027C48();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v19 = v18;
  v20 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v18];
  v0[29] = v20;
  if (!v20)
  {
    sub_100027C48();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();

LABEL_12:
    sub_10001B4C4();
    sub_100027EBC();

    __asm { BRAA            X1, X16 }
  }

  v21 = swift_task_alloc();
  v0[30] = v21;
  *v21 = v0;
  v21[1] = sub_1000249C4;
  sub_100027EBC();

  return sub_10002424C();
}

uint64_t sub_1000249C4()
{
  sub_100027E50();
  v2 = *v1;
  sub_1000215C8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_100024E94;
  }

  else
  {
    v6 = sub_100024AE8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100024AE8(uint64_t a1)
{
  v2 = *(v1[25] + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_firewall);
  v1[32] = v2;
  if (!v2)
  {
    v11 = v1[28];
    v10 = v1[29];
    sub_100027C48();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();

    sub_10001B4C4();
    sub_100027EBC();

    __asm { BRAA            X1, X16 }
  }

  v3 = v1[29];
  sub_10000BEC0(&qword_100059588, &qword_10003FB60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10003FA60;
  *(v4 + 32) = v3;
  v1[33] = sub_10000C944(0, &qword_100059590, IDSFirewallEntry_ptr);
  swift_unknownObjectRetain();
  v5 = v3;
  isa = sub_1000398EC().super.isa;
  v1[34] = isa;

  v1[2] = v1;
  v1[3] = sub_100024D04;
  v7 = swift_continuation_init();
  v1[17] = sub_10000BEC0(&qword_100059598, &qword_10003FB68);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100027030;
  v1[13] = &unk_100052560;
  v1[14] = v7;
  [v2 donateEntries:isa withCompletion:v1 + 10];
  sub_100027EBC();

  return _swift_continuation_await(v8);
}

uint64_t sub_100024D04()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  v5 = *(v3 + 208);
  if (v4)
  {
    v6 = sub_100024FF8;
  }

  else
  {
    v6 = sub_100024E18;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100024E18()
{
  sub_100027E50();
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);

  swift_unknownObjectRelease();
  sub_10001B4C4();

  return v3();
}

void sub_100024E94()
{
  swift_errorRetain();
  v1 = sub_10003970C();
  v2 = sub_1000399AC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[31];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v0[20] = v3;
    swift_errorRetain();
    sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
    v6 = sub_10003989C();
    v8 = sub_10000BFDC(v6, v7, &v15);

    *(v4 + 4) = v8;
    sub_100027ED4(&_mh_execute_header, v9, v10, "Failed to retrieve firewall with error %s");
    sub_10000C54C(v5);
    sub_10000EB00(v5);
    sub_10000EB00(v4);
  }

  v11 = v0[28];
  v12 = v0[29];
  swift_willThrow();

  sub_10001B4C4();
  sub_100027EBC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100024FF8(uint64_t a1)
{
  v24 = v1;
  v2 = v1[34];
  v3 = v1[29];
  swift_willThrow();

  v4 = v3;
  swift_errorRetain();
  v5 = sub_10003970C();
  v6 = sub_1000399AC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[35];
    v8 = v1[28];
    v9 = v1[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136315394;
    v1[21] = v9;
    v12 = v9;
    v13 = sub_10003989C();
    v15 = sub_10000BFDC(v13, v14, v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v1[22] = v7;
    swift_errorRetain();
    sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
    v16 = sub_10003989C();
    v18 = sub_10000BFDC(v16, v17, v23);

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to donate %s with error %s", v10, 0x16u);
    swift_arrayDestroy();
    sub_10000EB00(v11);
    sub_10000EB00(v10);

    swift_unknownObjectRelease();
  }

  else
  {
    v20 = v1[28];
    v19 = v1[29];

    swift_unknownObjectRelease();
  }

  sub_10001B4C4();

  return v21();
}

uint64_t sub_100025224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100027620(a3, v24 - v10);
  v12 = sub_10003993C();
  v13 = sub_10000BF08(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100027690(v11);
  }

  else
  {
    sub_10003992C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10003991C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000398AC() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100027690(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100027690(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000254C8(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_1000254E8, 0, 0);
}

uint64_t sub_1000254E8()
{
  sub_100021628();
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10002560C;
  v3 = swift_continuation_init();
  v0[17] = sub_10000BEC0(&qword_100059570, &qword_10003FB58);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100025790;
  v0[13] = &unk_100052538;
  v0[14] = v3;
  [v1 retrieveFirewallWithQueue:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002560C()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_10002572C;
  }

  else
  {
    v5 = sub_100025710;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002572C()
{
  sub_100027E50();
  swift_willThrow();
  sub_10001B4C4();

  return v0();
}

uint64_t *sub_100025790(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000D3B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_10002C5B0();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_10002C5B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100025840(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100025904;

  return sub_1000254C8(v6);
}

uint64_t sub_100025904()
{
  sub_100021628();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;
  sub_10001B460();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v2)
  {
    v11 = sub_10003950C();

    v12 = sub_100027E40();
    v13(v12, 0, v11);

    _Block_release(v10);
  }

  else
  {
    v14 = sub_100027E40();
    v15(v14, v4, 0);
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  v16 = *(v8 + 8);

  return v16();
}

uint64_t sub_100025AA4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100025B20()
{
  type metadata accessor for FirewallActor.ActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_10005AAE8 = v0;
  return result;
}

uint64_t *sub_100025B5C()
{
  if (qword_100058A88 != -1)
  {
    sub_100027E20(&qword_100058A88);
  }

  return &qword_10005AAE8;
}

uint64_t sub_100025C18()
{
  swift_getObjectType();
  v2._countAndFlagsBits = sub_100039C4C();
  v3._countAndFlagsBits = 40;
  v3._object = 0xE100000000000000;
  sub_1000398CC(v3);
  countAndFlagsBits = v2._countAndFlagsBits;
  strcpy(&v2, "IDSService=");
  HIDWORD(v2._object) = -352321536;
  swift_unknownObjectRetain();
  sub_10000BEC0(&qword_100059568, &qword_10003FB38);
  v4._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  sub_1000398CC(v5);

  sub_1000398CC(v2);

  strcpy(&v2, "Service Name=");
  HIWORD(v2._object) = -4864;

  v6._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v6);

  sub_1000398CC(v2);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_1000398CC(v7);

  return countAndFlagsBits;
}

char *sub_100025FC0(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a1;
  v6 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v26 = sub_1000399FC();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  sub_10000C9CC();
  v11 = v10 - v9;
  v12 = sub_1000399DC();
  __chkstk_darwin(v12);
  sub_10000C9CC();
  v13 = sub_10003976C();
  __chkstk_darwin(v13 - 8);
  sub_10000C9CC();
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_firewall] = 0;
  v14 = &v3[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name];
  *v14 = a2;
  *(v14 + 1) = a3;
  v25 = sub_10000C944(0, &unk_100059550, OS_dispatch_queue_ptr);
  v30 = 0xD000000000000023;
  v31 = 0x800000010003E7A0;
  v32._countAndFlagsBits = a2;
  v32._object = a3;
  sub_1000398CC(v32);
  sub_10003974C();
  v30 = _swiftEmptyArrayStorage;
  sub_10000C610();
  sub_10000BEC0(&qword_100059560, &unk_10003F800);
  sub_10000C668();
  sub_100039A7C();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_queue] = sub_100039A1C();
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService] = v27;
  v15 = type metadata accessor for FTIDSService();
  v29.receiver = v3;
  v29.super_class = v15;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v29, "init");
  v17 = *&v16[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_queue];
  v18 = *&v16[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService];
  v19 = v16;
  [v18 addDelegate:v19 queue:v17];
  v20 = sub_10003993C();
  v21 = v28;
  sub_10000E998(v28, 1, 1, v20);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  sub_100025224(0, 0, v21, &unk_10003FB00, v23);
  swift_unknownObjectRelease();

  return v19;
}

uint64_t sub_10002638C()
{
  sub_10001B470();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_10002646C;

    return sub_10002424C();
  }

  else
  {
    sub_10001B4C4();

    return v4();
  }
}

uint64_t sub_10002646C()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v3 = v2;
  v4 = *v1;
  sub_10001B460();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1000265C4;
  }

  else
  {
    v7 = sub_10002656C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002656C()
{
  sub_10001B470();

  sub_10001B4C4();

  return v1();
}

uint64_t sub_1000265C4()
{
  v15 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v1 = sub_10003972C();
  sub_10000BF30(v1, qword_10005AAF0);
  swift_errorRetain();
  v2 = sub_10003970C();
  v3 = sub_1000399AC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  v6 = v0[7];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v0[5] = v5;
    swift_errorRetain();
    sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
    v9 = sub_10003989C();
    v11 = sub_10000BFDC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve firewall with error %s", v7, 0xCu);
    sub_10000C54C(v8);
    sub_10000EB00(v8);
    sub_10000EB00(v7);
  }

  else
  {
  }

  sub_10001B4C4();

  return v12();
}

void sub_100026784(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000BEC0(&qword_1000595B0, &unk_10003FB80);
    v2 = sub_100039B7C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_10000C598(*(a1 + 56) + 32 * v10, v35);
    *&v34 = v13;
    *(&v34 + 1) = v12;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100027C9C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100027C9C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100027C9C(v31, v32);
    v14 = sub_100039ACC(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_100027C9C(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_100026A48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000BEC0(&qword_1000595A8, &qword_10003FB78);
    v2 = sub_100039AEC();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:

    swift_dynamicCast();
    v10 = sub_100039ACC(v2[5]);
    v11 = -1 << *(v2 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*&v7[8 * (v12 >> 6)]) == 0)
    {
      v15 = 0;
      v16 = (63 - v11) >> 6;
      while (++v13 != v16 || (v15 & 1) == 0)
      {
        v17 = v13 == v16;
        if (v13 == v16)
        {
          v13 = 0;
        }

        v15 |= v17;
        v18 = *&v7[8 * v13];
        if (v18 != -1)
        {
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*&v7[8 * (v12 >> 6)])) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v7[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
    v5 &= v5 - 1;
    v19 = v2[6] + 40 * v14;
    *(v19 + 32) = v22;
    *v19 = v20;
    *(v19 + 16) = v21;
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t *sub_100026F28(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_10000D3B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_10002C5B0();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_10002C5B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100026FBC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_10003985C();

  v4 = [v2 initWithPrefixedURI:v3];

  return v4;
}

uint64_t sub_100027030(uint64_t a1, void *a2)
{
  v3 = sub_10000D3B0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_10002C5B0();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t sub_1000270C0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  sub_100027EAC();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_1000297CC(a6, v10);
}

uint64_t sub_10002716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100025B5C();
  v4 = qword_10005AAE8;

  return _swift_task_switch(sub_1000271DC, v4, 0);
}

uint64_t sub_1000271DC()
{
  sub_100021628();
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_10003986C();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000272AC;

  return sub_10002466C();
}

uint64_t sub_1000272AC()
{
  sub_100021628();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001B460();
  *v5 = v4;
  v6 = *(v3 + 32);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = sub_10003950C();

    v9 = sub_100027E40();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_100027E40();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 40));
  v13 = *(v7 + 8);

  return v13();
}

id sub_100027440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100027508()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100027540()
{
  swift_unknownObjectRelease();

  v0 = sub_100027EAC();

  return _swift_deallocObject(v0);
}

uint64_t sub_100027578()
{
  sub_100027E50();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_100027E9C(v6);
  *v7 = v8;
  v7[1] = sub_100019F78;

  return sub_10002636C(v2, v3, v4, v5);
}

uint64_t sub_100027620(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027690(uint64_t a1)
{
  v2 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000276F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10003985C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService:v3];

  return v4;
}

uint64_t sub_10002775C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027854;

  return v6(a1);
}

uint64_t sub_100027854()
{
  sub_10001B470();
  sub_10001B58C();
  v1 = *v0;
  sub_10001B460();
  *v2 = v1;

  sub_10001B4C4();

  return v3();
}

uint64_t sub_100027938()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100027970()
{
  sub_100027E50();
  v0 = swift_task_alloc();
  v1 = sub_100027E9C(v0);
  *v1 = v2;
  v3 = sub_100027E7C(v1);

  return v4(v3);
}

uint64_t sub_100027A04()
{
  sub_100027E50();
  v0 = swift_task_alloc();
  v1 = sub_100027E9C(v0);
  *v1 = v2;
  v3 = sub_100027E7C(v1);

  return v4(v3);
}

uint64_t sub_100027A9C()
{
  sub_100027E50();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100027E5C(v1);

  return v3(v2);
}

uint64_t sub_100027B58()
{
  _Block_release(*(v0 + 24));

  v1 = sub_100027EAC();

  return _swift_deallocObject(v1);
}

uint64_t sub_100027B98()
{
  sub_100027E50();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100027E5C(v1);

  return v3(v2);
}

unint64_t sub_100027C48()
{
  result = qword_100059578;
  if (!qword_100059578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059578);
  }

  return result;
}

_OWORD *sub_100027C9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FTIDSServiceDonationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100027D78);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100027DB4()
{
  result = qword_1000595B8;
  if (!qword_1000595B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000595B8);
  }

  return result;
}

uint64_t sub_100027E20(uint64_t a1)
{

  return swift_once();
}

void sub_100027ED4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_100027F48()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100027F70()
{
  sub_100027F48();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100027FE4(uint64_t a1)
{
  result = sub_1000293AC(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1000293EC(result, v3, 0, a1);
  }
}

double sub_100028260(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_10002832C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1000283E8()
{
  swift_getObjectType();
  v14 = sub_100039C4C();
  v16._countAndFlagsBits = 40;
  v16._object = 0xE100000000000000;
  sub_1000398CC(v16);
  v1 = v14;
  v14 = 0x3D73746E656D6F6DLL;
  v15 = 0xE800000000000000;
  v2 = *(v0 + OBJC_IVAR___FTMomentsControllerSession_moments);
  sub_10000BEC0(&qword_100059700, &qword_10003FD28);
  v17._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v17);

  sub_100029468();

  v18._countAndFlagsBits = 0x3D73746E656D6F6DLL;
  v18._object = 0xE800000000000000;
  sub_1000398CC(v18);

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_100039B0C(25);

  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x800000010003EB00;
  swift_beginAccess();

  isa = sub_1000397FC().super.isa;

  v4 = TULoggableStringForObject();

  if (v4)
  {
    v5 = sub_10003986C();
    v7 = v6;

    v12 = v5;
    v13 = v7;
    v8._countAndFlagsBits = sub_10003989C();
    object = v8._object;
  }

  else
  {
    object = 0xE300000000000000;
    v8._countAndFlagsBits = 7104878;
  }

  v8._object = object;
  sub_1000398CC(v8);

  sub_100029468();

  sub_1000398CC(v11);

  sub_100039B0C(16);

  strcpy(&v11, "isRegistered=");
  HIWORD(v11._object) = -4864;
  v19._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v19);

  sub_100029468();

  sub_1000398CC(v11);

  sub_100039B0C(33);

  swift_beginAccess();

  sub_10000BEC0(&qword_100059708, &unk_10003FD30);
  v20._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v20);

  sub_100029468();

  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v21._object = 0x800000010003EB20;
  sub_1000398CC(v21);

  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  sub_1000398CC(v22);

  return v1;
}

id sub_1000287B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR___FTMomentsControllerSession_isRegistered] = 1;
  *&v3[OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID] = &_swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR___FTMomentsControllerSession_moments] = a1;
  *&v3[OBJC_IVAR___FTMomentsControllerSession_remoteIDSDestinations] = a2;
  *&v3[OBJC_IVAR___FTMomentsControllerSession_callCenter] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1000288C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR___FTMomentsControllerSession_callCenter);
  aBlock[4] = sub_100028E84;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028E88;
  aBlock[3] = &unk_1000526F8;
  v7 = _Block_copy(aBlock);

  v47 = v6;
  v8 = [v6 callsPassingTest:v7];
  _Block_release(v7);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v45 = a1;
  sub_100029368();
  v9 = sub_1000398FC();

  v10 = sub_100023970(v9);
  if (!v10)
  {
LABEL_19:

    if (qword_100058A90 == -1)
    {
LABEL_20:
      v28 = sub_10003972C();
      sub_10000BF30(v28, qword_10005AAF0);
      v29 = sub_10003970C();
      v30 = sub_1000399CC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "MomentsControllerSession: no streamtoken found", v31, 2u);
      }

      return 0;
    }

LABEL_38:
    swift_once();
    goto LABEL_20;
  }

  v11 = v10;
  v12 = 0;
  v13 = OBJC_IVAR___FTMomentsControllerSession_moments;
  v49 = v9 & 0xC000000000000001;
  v46 = v9 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v49)
    {
      v14 = sub_100039B2C();
    }

    else
    {
      if (v12 >= *(v46 + 16))
      {
        goto LABEL_36;
      }

      v14 = *(v9 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!a2)
    {
      break;
    }

    v16 = [v47 activeConversationForCall:v14];
    if (v16)
    {
      v17 = v16;
      v48 = [v16 avcSessionToken];
      v18 = [*(v3 + v13) streamToken];
      v19 = v9;
      v20 = v11;
      v21 = v13;
      v22 = a2;
      v23 = v3;
      v24 = v18;

      v25 = v48 == v24;
      v3 = v23;
      a2 = v22;
      v13 = v21;
      v11 = v20;
      v9 = v19;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_17:
    if (v12 + 1 == v11)
    {
      goto LABEL_19;
    }

    ++v12;
  }

  v26 = [v14 videoStreamToken];
  v27 = [*(v3 + v13) streamToken];

  if (v26 != v27)
  {
    goto LABEL_17;
  }

LABEL_24:

  if (a2)
  {
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v34 = a2;
    v35 = sub_10003972C();
    sub_10000BF30(v35, qword_10005AAF0);
    v36 = sub_10003970C();
    v37 = sub_1000399CC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "MomentsControllerSession: GroupFaceTime", v38, 2u);
    }

    v39 = OBJC_IVAR___FTMomentsControllerSession_remoteIDSDestinations;
    swift_beginAccess();
    v32 = sub_10002CAA4(v45, v34, *(v3 + v39));
    swift_endAccess();
  }

  else
  {
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v40 = sub_10003972C();
    sub_10000BF30(v40, qword_10005AAF0);
    v41 = sub_10003970C();
    v42 = sub_1000399CC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "MomentsControllerSession: FaceTime 1:1", v43, 2u);
    }

    swift_beginAccess();

    v32 = sub_100027FE4(v44);
  }

  return v32;
}

id sub_100028E20(void *a1)
{
  result = [a1 isVideo];
  if (result)
  {
    if ([a1 status] == 1)
    {
      return ([a1 isVideoPaused] ^ 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100028E88(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_100028ED8(void *a1, SEL *a2)
{
  if (a1 && (v2 = [a1 *a2]) != 0)
  {
    v3 = v2;
    v4 = sub_10003986C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = sub_1000288C4(v4, v6);

  return v7;
}

id sub_100028F64(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a1;
  v7 = a3;
  sub_100028ED8(a3, a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_10003985C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_100028FF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v9 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v8);
  sub_100030D2C(v9, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v8) = v12;
  return swift_endAccess();
}

uint64_t sub_100029110(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v6 = sub_1000303B4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + v5);
    v10 = *(v13 + 24);
    sub_10000BEC0(&qword_1000596F0, &qword_10003FD20);
    sub_100039B4C(isUniquelyReferenced_nonNull_native, v10);

    v11 = *(*(v13 + 56) + 8 * v8);
    type metadata accessor for LivePhotosMomentsRequest();
    sub_100039B5C();
    *(v2 + v5) = v13;
  }

  return swift_endAccess();
}

uint64_t sub_100029350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100029368()
{
  result = qword_1000596F8;
  if (!qword_1000596F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000596F8);
  }

  return result;
}

uint64_t sub_1000293EC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100029468()
{
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;

  sub_1000398CC(v1);
}

Swift::Int sub_100029480(uint64_t a1)
{
  v1 = a1;
  sub_100039C1C();
  v2 = sub_10000D65C(v1);
  sub_10002C648(v2, v3, v4);

  return sub_100039C3C();
}

Swift::Int sub_1000294DC()
{
  sub_100039C1C();
  sub_1000398BC();
  return sub_100039C3C();
}

uint64_t sub_100029534(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10002C5B8();
  }

  else
  {
    sub_10002C618();
  }

  sub_1000398BC();
}

uint64_t sub_10002958C(void *a1, char a2)
{
  switch(a2)
  {
    case 4:
    case 5:
      sub_10002C678();
      break;
    default:
      break;
  }

  sub_1000398BC();
}

Swift::Int sub_1000296C0()
{
  sub_100039C1C();
  sub_1000398BC();
  return sub_100039C3C();
}

Swift::Int sub_100029714(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_100039C1C();
  v3 = sub_10000D65C(v2);
  sub_10002C648(v3, v4, v5);

  return sub_100039C3C();
}

Swift::Int sub_100029760(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_100039C1C();
  if (v2)
  {
    sub_10002C5B8();
  }

  else
  {
    sub_10002C618();
  }

  sub_1000398BC();

  return sub_100039C3C();
}

uint64_t sub_1000297CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10003993C();
  sub_10000E998(v6, 1, 1, v7);
  sub_10002C66C();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  sub_10002C66C();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_10003FD88;
  v9[5] = v8;
  sub_10002BA9C(0, 0, v6, &unk_10003FD98, v9);
}

uint64_t sub_1000298D8(uint64_t a1, uint64_t a2)
{
  sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_100029964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

BOOL sub_1000299AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000515B8;
  v6._object = a2;
  v4 = sub_100039B8C(v3, v6);

  return v4 != 0;
}

BOOL sub_100029A20@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000299AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100029A54@<X0>(void *a1@<X8>)
{
  result = sub_1000299F4();
  *a1 = 0xD00000000000001BLL;
  a1[1] = v3;
  return result;
}

id sub_100029A84(uint64_t a1)
{
  v1 = type metadata accessor for MediaAssetManager();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider];
  *v3 = sub_100029B0C;
  v3[1] = 0;
  v6.receiver = v2;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id sub_100029B0C()
{
  v0 = [objc_opt_self() sharedPhotoLibrary];

  return v0;
}

uint64_t sub_100029B70()
{
  sub_10001B470();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_1000395CC();
  v1[30] = v4;
  sub_10002153C(v4);
  v1[31] = v5;
  v1[32] = *(v6 + 64);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_100029C54, 0, 0);
}

uint64_t sub_100029C54()
{
  v53 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v7 = sub_10003972C();
  v0[37] = sub_10000BF30(v7, qword_10005AAF0);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v51 = v8;
  v8(v1, v5, v3);
  v9 = sub_10003970C();
  v10 = sub_1000399CC();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[35];
  v12 = v0[36];
  v15 = v0[30];
  v14 = v0[31];
  if (v11)
  {
    v48 = v10;
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136315394;
    sub_10002BD38();
    v17 = sub_100039B9C();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_10000BFDC(v17, v19, &v52);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_100039B9C();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_10000BFDC(v22, v24, &v52);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v48, "photoURL: %s videoURL: %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_10000EB00(v49);
    sub_10000EB00(v16);
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[33];
  v28 = v0[34];
  v45 = v28;
  v29 = v0[31];
  v30 = v0[29];
  v31 = v0[30];
  v46 = v0[32];
  v47 = v30;
  v32 = v0[27];
  v33 = v0[28];
  v34 = swift_allocObject();
  v0[38] = v34;
  *(v34 + 16) = 0;
  v50 = (*&v30[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider])();
  v0[39] = v50;
  v51(v28, v32, v31);
  v51(v27, v33, v31);
  v35 = *(v29 + 80);
  v36 = (v35 + 16) & ~v35;
  v37 = (v36 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v35 + v37 + 8) & ~v35;
  v39 = swift_allocObject();
  v40 = *(v29 + 32);
  v40(v39 + v36, v45, v31);
  *(v39 + v37) = v47;
  v40(v39 + v38, v27, v31);
  *(v39 + ((v38 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v0[22] = sub_10002BE70;
  v0[23] = v39;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100012CAC;
  v0[21] = &unk_1000527C0;
  v41 = _Block_copy(v0 + 18);
  v0[40] = v41;
  v42 = v47;

  v0[2] = v0;
  v0[3] = sub_10002A13C;
  v43 = swift_continuation_init();
  v0[17] = sub_10000BEC0(&qword_100059598, &qword_10003FB68);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002A6D8;
  v0[13] = &unk_1000527E8;
  v0[14] = v43;
  [v50 performChanges:v41 completionHandler:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002A13C()
{
  sub_10001B470();
  sub_10001B58C();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 328) = v2;
  if (v2)
  {
    v3 = sub_10002A4D4;
  }

  else
  {
    v3 = sub_10002A244;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A244()
{
  v22 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);

  _Block_release(v1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10003970C();
    v6 = sub_1000399CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      v9 = [v4 localIdentifier];
      v10 = sub_10003986C();
      v12 = v11;

      v13 = sub_10000BFDC(v10, v12, &v21);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Saved live photo with identifier %s", v7, 0xCu);
      sub_10000C54C(v8);
      sub_10000EB00(v8);
      sub_10000EB00(v7);
    }

    v14 = [v4 localIdentifier];
    v15 = sub_10003986C();
    v17 = v16;

    v18 = *(v0 + 8);

    return v18(v15, v17);
  }

  else
  {
    sub_10002B878();
    swift_allocError();
    swift_willThrow();

    sub_10001B4C4();

    return v20();
  }
}

uint64_t sub_10002A4D4()
{
  sub_100021628();
  v1 = *(v0 + 320);
  v2 = *(v0 + 312);
  swift_willThrow();

  _Block_release(v1);

  sub_10001B4C4();

  return v3();
}

void sub_10002A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() creationRequestForAsset];
  sub_10003955C(v6);
  v8 = v7;
  v9 = [objc_allocWithZone(PHAssetResourceCreationOptions) init];
  [v9 setShouldMoveFile:1];
  [v5 addResourceWithType:1 fileURL:v8 options:v9];

  sub_10003955C(v10);
  v12 = v11;
  v13 = [objc_allocWithZone(PHAssetResourceCreationOptions) init];
  [v13 setShouldMoveFile:1];
  [v5 addResourceWithType:9 fileURL:v12 options:v13];

  v14 = [v5 placeholderForCreatedAsset];
  swift_beginAccess();
  v15 = *(a4 + 16);
  *(a4 + 16) = v14;
}

uint64_t *sub_10002A6D8(uint64_t a1, int a2, void *a3)
{
  result = sub_10000D3B0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v6 = *result;

    return j__swift_continuation_throwingResume(v6);
  }

  else if (a3)
  {
    return sub_1000298D8(*result, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002A7EC(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_1000395CC();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_10003958C();
  sub_10003958C();
  a4;
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_10002A944;

  return sub_100029B70();
}

uint64_t sub_10002A944()
{
  sub_10002C630();
  v3 = v2;
  sub_10001B460();
  *v4 = v2;
  v5 = v2[2];
  v6 = *v1;
  *v4 = *v1;

  v7 = v2[6];
  v8 = v2[3];
  v9 = *(v2[4] + 8);
  v9(v2[5], v8);
  v9(v7, v8);
  if (v0)
  {
    v10 = sub_10003950C();

    v11 = 0;
    v12 = v10;
  }

  else
  {
    v11 = sub_10003985C();

    v10 = 0;
    v12 = v11;
  }

  v13 = v3[7];
  (v13)[2](v13, v11, v10);

  _Block_release(v13);

  v14 = *(v6 + 8);

  return v14();
}

uint64_t sub_10002AB54()
{
  sub_10001B470();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1000395CC();
  v1[14] = v3;
  sub_10002153C(v3);
  v1[15] = v4;
  v1[16] = *(v5 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10002AC48, 0, 0);
}

uint64_t sub_10002AC48()
{
  v55 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = sub_10003972C();
  sub_10000BF30(v5, qword_10005AAF0);
  v53 = *(v3 + 16);
  v53(v1, v4, v2);
  v6 = sub_10003970C();
  v7 = sub_1000399CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v12 = 136315138;
    sub_10002BD38();
    v14 = sub_100039B9C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000BFDC(v14, v16, &v54);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "MediaAssetManager saving video with URL %s", v12, 0xCu);
    sub_10000C54C(v13);
    sub_10000EB00(v13);
    sub_10000EB00(v12);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[16];
  v19 = v0[17];
  v20 = v0[14];
  v21 = v0[15];
  v22 = v0[12];
  v23 = v0[13];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v51 = (v24 + 16);
  v52 = (*&v23[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider])();
  v53(v19, v22, v20);
  v25 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v26 = (v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v21 + 32))(v27 + v25, v19, v20);
  *(v27 + v26) = v23;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v0[6] = sub_10002B7D0;
  v0[7] = v27;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100012CAC;
  v0[5] = &unk_100052770;
  v28 = _Block_copy(v0 + 2);
  v29 = v23;

  v0[11] = 0;
  LODWORD(v26) = [v52 performChangesAndWait:v28 error:v0 + 11];
  _Block_release(v28);

  v30 = v0[11];
  if (v26)
  {
    swift_beginAccess();
    if (*v51)
    {
      v31 = *v51;
      v32 = v30;
      v33 = sub_10003970C();
      v34 = sub_1000399CC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v54 = v36;
        *v35 = 136315138;
        v37 = [v31 localIdentifier];
        v38 = sub_10003986C();
        v40 = v39;

        v41 = sub_10000BFDC(v38, v40, &v54);

        *(v35 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v33, v34, "Saved video with identifier %s", v35, 0xCu);
        sub_10000C54C(v36);
        sub_10000EB00(v36);
        sub_10000EB00(v35);
      }

      v42 = [v31 localIdentifier];
      v43 = sub_10003986C();
      v45 = v44;

      v46 = v0[1];

      return v46(v43, v45);
    }

    sub_10002B878();
    swift_allocError();
    swift_willThrow();
    v49 = v30;
  }

  else
  {
    v48 = v30;
    sub_10003951C();

    swift_willThrow();
  }

  sub_10001B4C4();

  return v50();
}

void sub_10002B210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() creationRequestForAsset];
  sub_10003955C(v5);
  v7 = v6;
  v8 = [objc_allocWithZone(PHAssetResourceCreationOptions) init];
  [v8 setShouldMoveFile:0];
  [v4 addResourceWithType:2 fileURL:v7 options:v8];

  v9 = [v4 placeholderForCreatedAsset];
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = v9;
}

uint64_t sub_10002B388(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1000395CC();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_10003958C();
  a3;
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_10002B4B4;

  return sub_10002AB54();
}

uint64_t sub_10002B4B4()
{
  sub_100021628();
  sub_10002C630();
  sub_10001B460();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;

  v5 = v2[2];
  (*(v2[4] + 8))(v2[5], v2[3]);

  if (v0)
  {
    v6 = sub_10003950C();

    v7 = 0;
    v8 = v6;
  }

  else
  {
    v7 = sub_10003985C();

    v6 = 0;
    v8 = v7;
  }

  v9 = v2[6];
  (v9)[2](v9, v7, v6);

  _Block_release(v9);

  v10 = *(v4 + 8);

  return v10();
}

id sub_10002B680(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MediaAssetManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002B6EC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10002B724()
{
  v1 = sub_1000395CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0);
}

void sub_10002B7D0()
{
  v1 = sub_1000395CC();
  sub_10002153C(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);
  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10002B210(v0 + v6, v8, v9);
}

uint64_t sub_10002B860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002B878()
{
  result = qword_100059740;
  if (!qword_100059740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059740);
  }

  return result;
}

uint64_t sub_10002B8CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001B3BC;

  return v6();
}

uint64_t sub_10002B9B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100019F78;

  return v7();
}

uint64_t sub_10002BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_100027620(a3, v22 - v10);
  v12 = sub_10003993C();
  if (sub_10000BF08(v11, 1, v12) == 1)
  {
    sub_100027690(v11);
  }

  else
  {
    sub_10003992C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_10003991C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1000398AC() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100027690(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100027690(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

unint64_t sub_10002BD38()
{
  result = qword_1000592D0;
  if (!qword_1000592D0)
  {
    sub_1000395CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000592D0);
  }

  return result;
}

uint64_t sub_10002BD90()
{
  v1 = sub_1000395CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + 7 + v5) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);

  v3(v0 + ((v4 + v6 + 8) & ~v4), v1);

  return _swift_deallocObject(v0);
}

void sub_10002BE70()
{
  v1 = sub_1000395CC();
  sub_10002153C(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v0 + v9);
  v12 = *(v0 + ((v8 + v10) & 0xFFFFFFFFFFFFFFF8));

  sub_10002A580(v0 + v7, v11, v0 + v10, v12);
}

uint64_t sub_10002BF28()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_10002BF70()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10002C60C(v4);
  *v5 = v6;
  v5[1] = sub_10001B3BC;

  return sub_10002B388(v1, v2, v3);
}

uint64_t sub_10002C024()
{
  sub_100021628();
  v0 = swift_task_alloc();
  v1 = sub_10002C60C(v0);
  *v1 = v2;
  v3 = sub_10002C5E8(v1);

  return v4(v3);
}

uint64_t sub_10002C0C0()
{
  swift_unknownObjectRelease();

  sub_10002C66C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10002C0FC()
{
  sub_100021628();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_10002C60C(v6);
  *v7 = v8;
  v7[1] = sub_10001B3BC;

  return sub_10002B9B4(v2, v3, v4, v5);
}

uint64_t sub_10002C1C0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10002C1F8()
{
  v0 = swift_task_alloc();
  v1 = sub_10002C60C(v0);
  *v1 = v2;
  v3 = sub_100027E7C(v1);

  return v4(v3);
}

uint64_t sub_10002C294()
{
  v0 = swift_task_alloc();
  v1 = sub_10002C60C(v0);
  *v1 = v2;
  v3 = sub_100027E7C(v1);

  return v4(v3);
}

uint64_t sub_10002C330()
{
  _Block_release(*(v0 + 32));

  sub_10002C66C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10002C37C()
{
  sub_100021628();
  v0 = swift_task_alloc();
  v1 = sub_10002C60C(v0);
  *v1 = v2;
  v3 = sub_10002C5E8(v1);

  return v4(v3);
}

uint64_t getEnumTagSinglePayload for MediaAssetManagerError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MediaAssetManagerError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10002C508);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10002C54C()
{
  result = qword_100059748;
  if (!qword_100059748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059748);
  }

  return result;
}

uint64_t sub_10002C648(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1000398BC();
}

id FTServerBag.isMomentsDisabled.getter()
{
  if (sub_10002C890(0xD000000000000010, 0x800000010003EB90, v0))
  {
    sub_100039A6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_10002C8F4(v7);
    return 0;
  }

  v1 = sub_10002C95C();
  if ((sub_10002C9A0(v1) & 1) == 0)
  {
    return 0;
  }

  v2 = [v4 BOOLValue];

  return v2;
}

double FTServerBag.momentsRequestTimeout.getter()
{
  if (sub_10002C890(0xD000000000000017, 0x800000010003EBB0, v0))
  {
    sub_100039A6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002C8F4(v8);
    return 300.0;
  }

  v1 = sub_10002C95C();
  if ((sub_10002C9A0(v1) & 1) == 0)
  {
    return 300.0;
  }

  [v5 doubleValue];
  v3 = v2;

  return v3;
}

id sub_10002C890(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10003985C();

  v5 = [a3 objectForKey:v4];

  return v5;
}

uint64_t sub_10002C8F4(uint64_t a1)
{
  v2 = sub_10000BEC0(&qword_100059750, &qword_10003FED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002C95C()
{
  result = qword_100059210;
  if (!qword_100059210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100059210);
  }

  return result;
}

uint64_t sub_10002C9A0(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_10002C9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_10003042C(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for MessageRequest(0);
    sub_10000C9A8();
    sub_10000C7CC(v8 + *(v10 + 72) * v7, a3);
    v11 = a3;
    v12 = 0;
    v13 = 1;
    v14 = v9;
  }

  else
  {
    type metadata accessor for MessageRequest(0);
    v11 = sub_10003286C();
  }

  return sub_10000E998(v11, v12, v13, v14);
}

void *sub_10002CA5C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10003042C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_10002CAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000303B4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

void *sub_10002CAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000303B4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

id sub_10002CB44(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_10003962C();
  __chkstk_darwin(v8);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  sub_10000BF68(a2, v16);
  v12 = [objc_allocWithZone(TUFeatureFlags) init];
  v13 = objc_allocWithZone(type metadata accessor for MediaRequest(0));
  return sub_100031240(v10, v16, a3, a4, v12, v13);
}

void sub_10002CC78(void *a1)
{
  v3 = v1;
  v5 = sub_1000395CC();
  v6 = sub_10000CA0C(v5);
  __chkstk_darwin(v6);
  sub_10000C9CC();
  v9 = v8 - v7;
  v10 = sub_10003962C();
  v11 = sub_10000CA0C(v10);
  __chkstk_darwin(v11);
  sub_10000C9CC();
  v14 = v13 - v12;
  v15 = [a1 callUUID];
  sub_10003960C();

  v16 = [a1 sandboxURL];
  v17 = [v16 URL];

  sub_10003958C();
  v18 = [a1 mediaTokens];
  v19 = objc_allocWithZone(type metadata accessor for MediaMoments(0));
  v20 = sub_10000A684(v14, v9, v18);
  if (!v2)
  {
    v21 = *(v3 + 32);
    *(v3 + 32) = v20;
    v22 = v20;

    v23 = &v22[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestFinishedProcessing];
    v24 = *&v22[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestFinishedProcessing];
    v25 = *&v22[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestFinishedProcessing + 8];
    *v23 = sub_100030E54;
    v23[1] = v3;

    sub_10000BFCC(v24, v25);

    v26 = *(v3 + 32);
    if (v26)
    {
      v27 = &v26[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError];
      v28 = *&v26[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError];
      v29 = *&v26[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError + 8];
      *v27 = sub_100030E58;
      v27[1] = v3;

      v30 = v26;
      sub_10000BFCC(v28, v29);
    }
  }
}

void sub_10002CE90()
{
  sub_100012C88();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10003978C();
  sub_10000C9B8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10002152C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = v94 - v14;
  v103 = sub_10003973C();
  sub_10000C9A8();
  __chkstk_darwin(v16);
  sub_10000C9CC();
  v19 = v18 - v17;
  sub_1000395CC();
  sub_10000C9B8();
  v104 = v20;
  v105 = v21;
  __chkstk_darwin(v20);
  v101 = v22;
  v102 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v24 = sub_10000CA0C(v23);
  __chkstk_darwin(v24);
  v26 = v94 - v25;
  v27 = v1[3];
  if (!v27)
  {
    goto LABEL_8;
  }

  v100 = v3;
  v99 = v19;
  v95 = v12;
  v96 = v15;
  v97 = v8;
  v98 = v6;
  sub_10000BF68(v27 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_request, v106);
  v28 = v107;
  v29 = v108;
  sub_10000D3B0(v106, v107);
  v30 = *(v29 + 1);
  v31 = v27;
  v32 = v30(v28, v29);
  v34 = v33;
  v35 = v5[3];
  v36 = v5[4];
  sub_10000D3B0(v5, v35);
  sub_10003282C();
  if (v32 == v37(v35, v36) && v34 == v38)
  {

    sub_10000C54C(v106);
    goto LABEL_11;
  }

  v40 = sub_100039BAC();

  sub_10000C54C(v106);
  if (v40)
  {
LABEL_11:
    if (qword_100058AA0 != -1)
    {
      sub_10000C994();
      swift_once();
    }

    v56 = sub_10003972C();
    v57 = sub_10000BF30(v56, qword_10005AB20);
    v58 = v31;
    v59 = sub_10003970C();
    v60 = sub_10003998C();

    v61 = os_log_type_enabled(v59, v60);
    v62 = v100;
    if (v61)
    {
      sub_10002154C();
      v63 = swift_slowAlloc();
      sub_100021598();
      v64 = swift_slowAlloc();
      v94[1] = v57;
      v65 = v64;
      v106[0] = v64;
      *v63 = 136315138;
      v110[0] = v58;
      type metadata accessor for MediaRequest(0);
      v66 = v58;
      v67 = sub_10003989C();
      v69 = sub_10000BFDC(v67, v68, v106);

      *(v63 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v59, v60, "Current request finished processing, but we did't ask to end. Delaying finished processing callback until the client requests it to end or until timeout expires %s", v63, 0xCu);
      sub_10000C54C(v65);
      sub_10000C9F4();

      sub_10000C9F4();
    }

    v70 = v104;
    v71 = v105;
    *(v58 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state) = 3;
    v72 = *(v71 + 16);
    v72(v26, v62, v70);
    sub_10000E998(v26, 0, 1, v70);
    v73 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_videoURL;
    swift_beginAccess();
    sub_100030E60(v26, v58 + v73);
    swift_endAccess();
    sub_10000CE34();
    v74 = v102;
    v72(v102, v62, v70);
    v75 = v105;
    v76 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v1;
    (*(v75 + 32))(v77 + v76, v74, v70);
    v108 = sub_100030F88;
    v109 = v77;
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 1107296256;
    v106[2] = sub_100012CAC;
    v107 = &unk_1000529B8;
    _Block_copy(v106);
    v110[0] = _swiftEmptyArrayStorage;
    sub_1000326F8(&qword_100059080, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    sub_10000BEC0(&qword_100059088, &unk_10003FF50);
    sub_100012884();
    sub_100039A7C();
    sub_1000397BC();
    swift_allocObject();
    v78 = sub_10003979C();

    v1[5] = v78;

    v79 = v1[3];
    if (v79)
    {
      v80 = *(v79 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_queue);
      v81 = v95;
      sub_10003977C();
      v82 = v96;
      sub_1000397DC();
      v83 = *(v97 + 8);
      v84 = v81;
      v85 = v98;
      v83(v84, v98);
      sub_1000399EC();

      v83(v82, v85);
    }

    else
    {
    }

    goto LABEL_24;
  }

  v3 = v100;
LABEL_8:
  v41 = v5[3];
  v42 = v5[4];
  sub_10000D3B0(v5, v41);
  sub_10003282C();
  v44 = v43(v41, v42);
  v46 = v45;
  swift_beginAccess();
  v47 = v1[6];

  v48 = sub_10002CAFC(v44, v46, v47);

  if (v48)
  {
    sub_10002F414(v48, v3);
    v49 = v5[3];
    v50 = v5[4];
    sub_10000D3B0(v5, v49);
    sub_10003282C();
    v52 = v51(v49, v50);
    v54 = v53;
    swift_beginAccess();
    v55 = sub_100030724(v52, v54);
    swift_endAccess();
  }

  else
  {
    if (qword_100058AA0 != -1)
    {
      sub_10000C994();
      swift_once();
    }

    v86 = sub_10003972C();
    sub_10000BF30(v86, qword_10005AB20);
    sub_10000BF68(v5, v106);
    v55 = sub_10003970C();
    v87 = sub_10003998C();
    if (!os_log_type_enabled(v55, v87))
    {

      sub_10000C54C(v106);
      goto LABEL_24;
    }

    sub_10002154C();
    v88 = swift_slowAlloc();
    sub_100021598();
    v89 = swift_slowAlloc();
    v111 = v89;
    *v88 = 136315138;
    sub_10000BF68(v106, v110);
    v90 = sub_10000B0B4(v110);
    v92 = v91;
    sub_10000C8EC(v110, &qword_100058C70, qword_10003F690);
    sub_10000C54C(v106);
    v93 = sub_10000BFDC(v90, v92, &v111);

    *(v88 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v55, v87, "MediaRecordingController did not finish processing request because it isn't being tracked %s", v88, 0xCu);
    sub_10000C54C(v89);
    sub_10000C9F4();

    sub_10000C9F4();
  }

LABEL_24:
  sub_100012C70();
}

void sub_10002D83C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[9];
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = a3[10];
      v6 = a3[3];
      sub_10000C984(a3[9], v5);
      v8 = v6;
      v4(v6, a2);
      sub_10000BFCC(v4, v5);
    }
  }

  else if (v4)
  {
    v7 = a3[10];

    v4(0, a2);

    sub_10000BFCC(v4, v7);
  }
}

void sub_10002D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000328F4();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = v20;
  v27 = v26;
  v28 = sub_10003962C();
  sub_10000C9B8();
  v167 = v29;
  __chkstk_darwin(v30);
  sub_10002152C();
  v159 = v31 - v32;
  sub_1000215A4();
  __chkstk_darwin(v33);
  v161 = &v156 - v34;
  v166 = sub_10000BEC0(&qword_1000592B0, &qword_10003F980);
  sub_10000C9A8();
  __chkstk_darwin(v35);
  sub_10002152C();
  v162 = v36 - v37;
  sub_1000215A4();
  __chkstk_darwin(v38);
  v40 = &v156 - v39;
  v41 = sub_10000BEC0(&unk_100059160, &unk_10003F780);
  v42 = sub_10000CA0C(v41);
  __chkstk_darwin(v42);
  sub_10002152C();
  v160 = v43 - v44;
  sub_1000215A4();
  __chkstk_darwin(v45);
  v164 = &v156 - v46;
  sub_1000215A4();
  __chkstk_darwin(v47);
  v163 = &v156 - v48;
  sub_1000215A4();
  v50 = __chkstk_darwin(v49);
  v52 = &v156 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = &v156 - v54;
  __chkstk_darwin(v53);
  v57 = &v156 - v56;
  v58 = v20[4];
  v168 = v27;
  if (!v58)
  {
    goto LABEL_11;
  }

  v165 = v20;
  (*(v167 + 16))(&v156 - v56, v58 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_uuid, v28);
  sub_100032784();
  sub_10000E998(v59, v60, v61, v62);
  v63 = [v27 callUUID];
  sub_10003960C();

  sub_100032784();
  sub_10000E998(v64, v65, v66, v67);
  v25 = *(v166 + 48);
  v27 = &unk_10003F780;
  sub_10000C88C(v57, v40, &unk_100059160, &unk_10003F780);
  sub_10000C88C(v55, v25 + v40, &unk_100059160, &unk_10003F780);
  sub_100032758(v40);
  if (v68)
  {
    sub_1000327F0(v55);
    sub_1000327F0(v57);
    sub_100032758(v25 + v40);
    if (v68)
    {
      sub_10000C8EC(v40, &unk_100059160, &unk_10003F780);
      sub_10003284C();
      goto LABEL_20;
    }

LABEL_10:
    sub_10000C8EC(v40, &qword_1000592B0, &qword_10003F980);
    sub_10003284C();
    goto LABEL_11;
  }

  sub_10000C88C(v40, v52, &unk_100059160, &unk_10003F780);
  sub_100032758(v25 + v40);
  if (v68)
  {
    sub_1000327F0(v55);
    sub_1000327F0(v57);
    (*(v167 + 8))(v52, v28);
    goto LABEL_10;
  }

  v83 = v167;
  v84 = v25 + v40;
  v85 = v161;
  (*(v167 + 32))(v161, v84, v28);
  sub_100032740();
  sub_1000326F8(v86, v87, &protocol conformance descriptor for UUID);
  LODWORD(v157) = sub_10003984C();
  v158 = v21;
  v88 = *(v83 + 8);
  v88(v85, v28);
  v27 = &unk_100059160;
  v25 = &unk_10003F780;
  sub_100032778();
  sub_10000C8EC(v89, v90, v91);
  sub_100032778();
  sub_10000C8EC(v92, v93, v94);
  v88(v52, v28);
  v24 = v158;
  sub_100032778();
  sub_10000C8EC(v95, v96, v97);
  sub_10003284C();
  if ((v157 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  v98 = *(v25 + 4);
  if (v98)
  {
    v99 = *(v98 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_mediaTokens);
    v100 = v99;
  }

  else
  {
    v99 = 0;
  }

  v101 = [v27 mediaTokens];
  v102 = v101;
  if (v99)
  {
    if (v101)
    {
      sub_10000C944(0, &qword_100059930, TUMediaTokens_ptr);
      v103 = sub_100039A2C();

      if (v103)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_11:
    sub_10002CC78(v27);
    if (v24)
    {
      goto LABEL_56;
    }

    goto LABEL_12;
  }

  if (v101)
  {

    goto LABEL_11;
  }

LABEL_12:
  v69 = *(v25 + 3);
  v71 = v163;
  v70 = v164;
  if (!v69)
  {
    goto LABEL_18;
  }

  v158 = v24;
  sub_10000C944(0, &qword_100059928, NSObject_ptr);
  v72 = *&v69[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_tuMediaRecordRequest];
  v73 = v69;
  v74 = v72;
  v75 = sub_100039A2C();

  if ((v75 & 1) == 0 || v73[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state])
  {

    v76 = *(v25 + 3);
    v77 = v158;
    if (v76)
    {
      v78 = *(v25 + 4);
      v79 = v168;
      v165 = v25;
      if (v78)
      {
        v80 = v167;
        (*(v167 + 16))(v71, v78 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_uuid, v28);
        v81 = 0;
      }

      else
      {
        v81 = 1;
        v80 = v167;
      }

      sub_10000E998(v71, v81, 1, v28);
      v157 = v76;
      v104 = [v79 callUUID];
      sub_10003960C();

      sub_100032784();
      sub_10000E998(v105, v106, v107, v108);
      v109 = *(v166 + 48);
      v110 = v162;
      sub_10000C88C(v71, v162, &unk_100059160, &unk_10003F780);
      sub_10000C88C(v70, v110 + v109, &unk_100059160, &unk_10003F780);
      sub_100032758(v110);
      if (v68)
      {
        sub_1000327F0(v70);
        sub_1000328B4();
        sub_100032758(&unk_100059160 + v109);
        v111 = v157;
        if (v68)
        {
          sub_10000C8EC(&unk_100059160, &unk_100059160, &unk_10003F780);
          v82 = v168;
          goto LABEL_46;
        }
      }

      else
      {
        v112 = v160;
        sub_10000C88C(v110, v160, &unk_100059160, &unk_10003F780);
        sub_100032758(v110 + v109);
        if (!v113)
        {
          v125 = v161;
          (*(v80 + 32))(v161, v110 + v109, v28);
          sub_100032740();
          sub_1000326F8(v126, v127, &protocol conformance descriptor for UUID);
          v128 = sub_10003984C();
          v129 = *(v80 + 8);
          v129(v125, v28);
          v82 = &unk_100059160;
          sub_100032778();
          sub_10000C8EC(v130, v131, v132);
          sub_100032778();
          sub_10000C8EC(v133, v134, v135);
          v129(v112, v28);
          v77 = v158;
          sub_100032778();
          sub_10000C8EC(v136, v137, v138);
          sub_10003284C();
          v111 = v157;
          if (v128)
          {
LABEL_46:
            if (*(v111 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state))
            {
              if (qword_100058AA0 != -1)
              {
                sub_10000C994();
                swift_once();
              }

              v139 = sub_10003972C();
              sub_10000BF30(v139, qword_10005AB20);
              v140 = v111;
              v141 = sub_10003970C();
              v142 = sub_1000399AC();

              if (os_log_type_enabled(v141, v142))
              {
                sub_10002154C();
                v143 = swift_slowAlloc();
                sub_100021598();
                v144 = swift_slowAlloc();
                a10 = v144;
                *v143 = 136446210;
                v169 = v140;
                type metadata accessor for MediaRequest(0);
                v145 = v140;
                v146 = sub_10003989C();
                v148 = sub_10000BFDC(v146, v147, &a10);
                v82 = v168;

                *(v143 + 4) = v148;
                sub_1000328D4(&_mh_execute_header, v149, v150, "Ending existing moments request before starting the next %{public}s");
                sub_10000C54C(v144);
                v111 = v157;
                sub_10000C9F4();

                sub_10000C9F4();
              }

              v151 = v159;
              (*(v167 + 16))(v159, v140 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid, v28);
              sub_10002EBD4(v151);
              if (v77)
              {
                v152 = sub_1000327C8();
                v153(v152);

                goto LABEL_56;
              }

              v154 = sub_1000327C8();
              v155(v154);
            }
          }

LABEL_54:

          goto LABEL_55;
        }

        sub_1000327F0(v164);
        sub_1000328B4();
        v114 = sub_1000327C8();
        v115(v114);
        v111 = v157;
      }

      sub_10000C8EC(&unk_100059160, &qword_1000592B0, &qword_10003F980);
      v82 = v168;
      goto LABEL_54;
    }

LABEL_18:
    v82 = v168;
LABEL_55:
    sub_10002E440(v82);
    goto LABEL_56;
  }

  if (qword_100058AA0 != -1)
  {
    sub_10000C994();
    swift_once();
  }

  v116 = sub_10003972C();
  sub_10000BF30(v116, qword_10005AB20);
  v117 = v73;
  v118 = sub_10003970C();
  v119 = sub_10003998C();

  if (os_log_type_enabled(v118, v119))
  {
    sub_10002154C();
    v120 = swift_slowAlloc();
    sub_100021598();
    v121 = swift_slowAlloc();
    a10 = v121;
    *v120 = 136446210;
    v169 = v117;
    type metadata accessor for MediaRequest(0);
    v117;
    v122 = sub_10003989C();
    v124 = sub_10000BFDC(v122, v123, &a10);

    *(v120 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v118, v119, "Using pre-warmed request %{public}s", v120, 0xCu);
    sub_10000C54C(v121);
    sub_10000C9F4();

    sub_10000C9F4();
  }

LABEL_56:
  sub_10003290C();
}

uint64_t sub_10002E440(void *a1)
{
  v3 = v1;
  v5 = sub_10003962C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 32);
  if (v9)
  {
    v10 = v9;
    sub_10003961C();
    v1 = v10;
    sub_10000AC84(a1, v16);
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v17 = *(v3 + 88);
      v12 = *&v10[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_queue];

      v13 = v12;
      v1 = v17(v8, v16, a1, v13);

      sub_10000C54C(v16);
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_100021228();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
  }

  return v1;
}

void sub_10002E610(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  if (qword_100058AA0 != -1)
  {
    sub_10000C994();
    swift_once();
  }

  v7 = sub_10003972C();
  sub_10000BF30(v7, qword_10005AB20);
  v8 = a1;
  v9 = sub_10003970C();
  v10 = sub_10003998C();

  if (os_log_type_enabled(v9, v10))
  {
    sub_10002154C();
    v31 = a2;
    v11 = swift_slowAlloc();
    sub_100021598();
    v12 = swift_slowAlloc();
    v34[0] = v12;
    *v11 = 136446210;
    v32 = v8;
    sub_10000C944(0, &qword_100059920, TUMomentsMediaRecordRequest_ptr);
    v13 = v8;
    v14 = sub_10003989C();
    v16 = sub_10000BFDC(v14, v15, v34);

    *(v11 + 4) = v16;
    sub_1000328D4(&_mh_execute_header, v17, v18, "MediaRecordingController prewarm using %{public}s");
    sub_10000C54C(v12);
    sub_10000C9F4();

    a2 = v31;
    sub_10000C9F4();
  }

  sub_10002D930(v8, v19, v20, v21, v22, v23, v24, v25, v31, v32, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8]);
  if (!v3)
  {
    v27 = *(v4 + 24);
    *(v4 + 24) = v26;
    v28 = v26;

    v29 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid;
    sub_10003962C();
    sub_10000C9A8();
    (*(v30 + 16))(a2, &v28[v29]);
  }
}

void sub_10002EBD4(uint64_t a1)
{
  sub_1000328F4();
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v7 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v8 = sub_10000CA0C(v7);
  __chkstk_darwin(v8);
  v100 = &v88 - v9;
  v99 = sub_1000395CC();
  sub_10000C9B8();
  v93 = v10;
  __chkstk_darwin(v11);
  sub_10000C9CC();
  v92 = v13 - v12;
  v14 = sub_10003962C();
  sub_10000C9B8();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_10002152C();
  v94 = v18 - v19;
  sub_1000215A4();
  __chkstk_darwin(v20);
  v101 = &v88 - v21;
  sub_1000215A4();
  __chkstk_darwin(v22);
  if (qword_100058AA0 != -1)
  {
    sub_10000C994();
    swift_once();
  }

  v23 = sub_10003972C();
  v24 = sub_10000BF30(v23, qword_10005AB20);
  sub_100032778();
  v95 = v26;
  v96 = v25;
  v26();
  v97 = v24;
  v27 = sub_10003970C();
  v28 = sub_1000399CC();
  if (os_log_type_enabled(v27, v28))
  {
    sub_10002154C();
    v29 = swift_slowAlloc();
    v91 = v2;
    v30 = v29;
    sub_100021598();
    v89 = swift_slowAlloc();
    v102[0] = v89;
    *v30 = 136446210;
    sub_100032740();
    sub_1000326F8(v31, v32, &protocol conformance descriptor for UUID);
    v33 = sub_100039B9C();
    v90 = v4;
    v35 = v34;
    v36 = sub_1000327D8();
    v37(v36);
    v38 = sub_10000BFDC(v33, v35, v102);
    v4 = v90;

    *(v30 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "MediaRecordingController will end recording with UUID %{public}s", v30, 0xCu);
    sub_10000C54C(v89);
    sub_10000C9F4();

    v3 = v91;
    sub_10000C9F4();
  }

  else
  {

    v39 = sub_1000327D8();
    v40(v39);
  }

  v41 = v4[3];
  v43 = v100;
  v42 = v101;
  if (v41)
  {
    if (*(v41 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state) == 3)
    {
      v44 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_videoURL;
      swift_beginAccess();
      sub_10000C88C(v41 + v44, v43, &unk_100058FA0, &unk_10003F260);
      v45 = v99;
      if (sub_10000BF08(v43, 1, v99) != 1)
      {
        v65 = v92;
        v64 = v93;
        (*(v93 + 32))(v92, v43, v45);
        if (v4[5])
        {
          v66 = v41;

          sub_1000397AC();
        }

        else
        {
          v82 = v41;
        }

        v4[5] = 0;

        sub_10002F414(v41, v65);

        (*(v64 + 8))(v65, v99);
        goto LABEL_26;
      }

      v46 = v41;
      sub_10000C8EC(v43, &unk_100058FA0, &unk_10003F260);
    }

    else
    {
      v60 = v41;
    }

    sub_10002FBA4(v6);
    if (!v3)
    {
      sub_10000CD58();
      v100 = v16;
      sub_100032778();
      v95();
      v67 = sub_10003970C();
      v68 = v42;
      v69 = sub_10003998C();
      if (os_log_type_enabled(v67, v69))
      {
        sub_10002154C();
        v71 = swift_slowAlloc();
        sub_100021598();
        v72 = swift_slowAlloc();
        v91 = 0;
        v73 = v72;
        v102[0] = v72;
        *v71 = 136446210;
        sub_100032740();
        sub_1000326F8(v74, v75, &protocol conformance descriptor for UUID);
        v76 = sub_100039B9C();
        v77 = v14;
        v78 = v4;
        v80 = v79;
        v98(v68, v77);
        v81 = sub_10000BFDC(v76, v80, v102);
        v4 = v78;

        *(v71 + 4) = v81;
        _os_log_impl(&_mh_execute_header, v67, v69, "MediaRecordingController ended recording with UUID %{public}s", v71, 0xCu);
        sub_10000C54C(v73);
        sub_10000C9F4();

        sub_10000C9F4();
      }

      else
      {

        v98(v68, v14);
      }

      sub_10000BF68(v41 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_request, v102);
      v83 = v103;
      v84 = v104;
      sub_10000D3B0(v102, v103);
      sub_10003282C();
      v85(v83, v84);
      swift_beginAccess();
      v86 = v41;
      swift_isUniquelyReferenced_nonNull_native();
      v105 = v4[6];
      sub_100030D40();
      v4[6] = v105;

      swift_endAccess();

      sub_10000C54C(v102);
LABEL_26:
      v87 = v4[3];
      v4[3] = 0;

      goto LABEL_27;
    }
  }

  else
  {
    sub_100032778();
    v47();
    v48 = sub_10003970C();
    v49 = sub_1000399AC();
    if (os_log_type_enabled(v48, v49))
    {
      sub_10002154C();
      v50 = swift_slowAlloc();
      sub_100021598();
      v51 = swift_slowAlloc();
      v102[0] = v51;
      *v50 = 136446210;
      sub_100032740();
      sub_1000326F8(v52, v53, &protocol conformance descriptor for UUID);
      v54 = sub_100039B9C();
      v56 = v55;
      v57 = sub_100032858();
      v58(v57);
      v59 = sub_10000BFDC(v54, v56, v102);

      *(v50 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v48, v49, "Invalid state, no current request %{public}s", v50, 0xCu);
      sub_10000C54C(v51);
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      v61 = sub_100032858();
      v62(v61);
    }

    sub_100021228();
    swift_allocError();
    *v63 = 0;
    swift_willThrow();
  }

LABEL_27:
  sub_10003290C();
}

void sub_10002F414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10003962C();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v65 - v13;
  v15 = sub_1000395CC();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v65 - v21;
  __chkstk_darwin(v20);
  v74 = &v65 - v23;
  *(v3 + 40) = 0;

  if ([*(v3 + 16) transcriptionEvaluationEnabled])
  {
    v73 = a2;
    v24 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_evalDirectoryURL;
    swift_beginAccess();
    sub_10000C88C(a1 + v24, v14, &unk_100058FA0, &unk_10003F260);
    if (sub_10000BF08(v14, 1, v15) == 1)
    {
      sub_10000C8EC(v14, &unk_100058FA0, &unk_10003F260);
      a2 = v73;
    }

    else
    {
      v69 = a1;
      v70 = v8;
      v25 = v74;
      (*(v16 + 32))(v74, v14, v15);
      if (qword_100058AA0 != -1)
      {
        swift_once();
      }

      v26 = sub_10003972C();
      v27 = sub_10000BF30(v26, qword_10005AB20);
      v28 = *(v16 + 16);
      v28(v22, v25, v15);
      v68 = v27;
      v29 = sub_10003970C();
      LODWORD(v67) = sub_10003998C();
      if (os_log_type_enabled(v29, v67))
      {
        v30 = swift_slowAlloc();
        v65 = v29;
        v31 = v30;
        v66 = swift_slowAlloc();
        v78 = v66;
        *v31 = 136315138;
        v28(v12, v22, v15);
        sub_10000E998(v12, 0, 1, v15);
        v32 = sub_10000B198(v12);
        v34 = v33;
        sub_10000C8EC(v12, &unk_100058FA0, &unk_10003F260);
        v35 = *(v16 + 8);
        v71 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v72 = v35;
        v35(v22, v15);
        v36 = sub_10000BFDC(v32, v34, &v78);

        v37 = v31;
        *(v31 + 4) = v36;
        v38 = v65;
        _os_log_impl(&_mh_execute_header, v65, v67, "Copying audio to temp directory for automation evaluation %s", v37, 0xCu);
        sub_10000C54C(v66);
      }

      else
      {

        v39 = *(v16 + 8);
        v71 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v72 = v39;
        v39(v22, v15);
      }

      v40 = [objc_opt_self() defaultManager];
      a2 = v73;
      sub_10003955C(v41);
      v43 = v42;
      sub_10003953C();
      v44 = v74;
      sub_10003956C();

      sub_10003955C(v45);
      v47 = v46;
      v72(v19, v15);
      v78 = 0;
      v48 = [v40 copyItemAtURL:v43 toURL:v47 error:&v78];

      if (v48)
      {
        v49 = v78;
        v50 = v44;
      }

      else
      {
        v51 = v78;
        v52 = sub_10003951C();

        swift_willThrow();
        swift_errorRetain();
        v53 = sub_10003970C();
        v54 = sub_10003998C();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v78 = v68;
          *v55 = 136315138;
          v77 = v52;
          swift_errorRetain();
          sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
          v56 = sub_10003989C();
          v67 = v53;
          v58 = sub_10000BFDC(v56, v57, &v78);

          *(v55 + 4) = v58;
          v59 = v67;
          _os_log_impl(&_mh_execute_header, v67, v54, "Error copying audio to temp directory %s", v55, 0xCu);
          sub_10000C54C(v68);
        }

        else
        {
        }

        v50 = v74;
      }

      v72(v50, v15);
      a1 = v69;
      v8 = v70;
    }
  }

  (*(v75 + 16))(v8, a1 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid, v76);
  sub_10000C944(0, &qword_100059910, TUSandboxExtendedURL_ptr);
  (*(v16 + 16))(v19, a2, v15);
  v60 = sub_100030288(v19);
  v61 = objc_allocWithZone(TUMomentsRawVideoMessageDescriptor);
  v62 = sub_100030324(v8, v60);
  v63 = *(v3 + 56);
  if (v63)
  {
    v64 = *(v3 + 64);

    v63(v62);
    sub_10000BFCC(v63, v64);
  }
}

void sub_10002FBA4(uint64_t a1)
{
  v2 = sub_10003962C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid, v2);
    v7 = v6;
    v8 = sub_1000395FC();
    (*(v3 + 8))(v5, v2);
    if ((v8 & 1) == 0)
    {
      sub_100021228();
      swift_allocError();
      *v9 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_100021228();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }
}

void sub_10002FD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000328F4();
  a19 = v22;
  a20 = v23;
  v24 = sub_10003962C();
  sub_10000C9B8();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_10002152C();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &v49 - v32;
  if (qword_100058AA0 != -1)
  {
    sub_10000C994();
    swift_once();
  }

  v34 = sub_10003972C();
  sub_10000BF30(v34, qword_10005AB20);

  v35 = sub_10003970C();
  v36 = sub_1000399AC();

  if (os_log_type_enabled(v35, v36))
  {
    v50 = v30;
    v51 = v26;
    v52 = v24;
    v53 = v21;
    sub_10002154C();
    v37 = swift_slowAlloc();
    sub_100021598();
    v38 = swift_slowAlloc();
    a10 = v38;
    *v37 = 136315138;
    v39 = *(v20 + 24);
    if (v39)
    {
      v54 = *(v20 + 24);
      type metadata accessor for MediaRequest(0);
      v40 = v39;
      v41 = sub_10003989C();
      v43 = v42;
    }

    else
    {
      v43 = 0xE300000000000000;
      v41 = 7104878;
    }

    v44 = sub_10000BFDC(v41, v43, &a10);

    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "MediaRecordingController connection invalidated. Ending the current request %s", v37, 0xCu);
    sub_10000C54C(v38);
    sub_10000C9F4();

    sub_10000C9F4();

    v24 = v52;
    v30 = v50;
    v26 = v51;
  }

  else
  {
  }

  v45 = *(v20 + 24);
  if (v45)
  {
    (*(v26 + 16))(v30, v45 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid, v24);
    (*(v26 + 32))(v33, v30, v24);
    sub_10002EBD4(v33);
    (*(v26 + 8))(v33, v24);
  }

  else
  {
    v46 = sub_10003970C();
    v47 = sub_1000399AC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "MediaRecordingController current request does not exist", v48, 2u);
      sub_10000C9F4();
    }
  }

  sub_10003290C();
}

uint64_t sub_100030028()
{

  sub_10000BFCC(*(v0 + 56), *(v0 + 64));
  sub_10000BFCC(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t sub_100030080()
{
  sub_100030028();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_1000300D8()
{
  *(v0 + 16) = [objc_allocWithZone(TUFeatureFlags) init];
  type metadata accessor for MediaRequest(0);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = sub_10003981C();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = sub_10002CB44;
  *(v0 + 96) = 0;
  return v0;
}

void sub_100030160(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v5 = qword_100058AA0;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_10003972C();
    sub_10000BF30(v7, qword_10005AB20);
    v8 = sub_10003970C();
    v9 = sub_10003998C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Hit timeout for ending request!", v10, 2u);
    }

    sub_10002F414(v6, a2);
    v11 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

id sub_100030288(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10003955C(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = sub_1000395CC();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

id sub_100030324(uint64_t a1, void *a2)
{
  v3 = v2;
  isa = sub_1000395EC().super.isa;
  v7 = [v3 initWithUUID:isa videoURL:a2];

  sub_10003962C();
  sub_10000C9A8();
  (*(v8 + 8))(a1);
  return v7;
}

unint64_t sub_1000303B4(uint64_t a1, uint64_t a2)
{
  sub_100039C1C();
  sub_1000398BC();
  v4 = sub_100039C3C();

  return sub_1000304B4(a1, a2, v4);
}

unint64_t sub_10003042C(uint64_t a1)
{
  sub_10003962C();
  sub_100032740();
  sub_1000326F8(v2, v3, &protocol conformance descriptor for UUID);
  v4 = sub_10003983C();

  return sub_100030568(a1, v4);
}

unint64_t sub_1000304B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100039BAC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100030568(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_10003962C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1000326F8(&qword_1000592C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = sub_10003984C();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100030724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000303B4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  sub_10000BEC0(&qword_100059918, &unk_10003FF40);
  sub_100039B4C(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 8 * v6);
  type metadata accessor for MediaRequest(0);
  sub_100039B5C();
  *v3 = v11;
  return v9;
}

uint64_t sub_100030800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003042C(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    v8 = *(*v2 + 24);
    sub_10000BEC0(&qword_100059938, &qword_10003FF60);
    sub_100039B4C(isUniquelyReferenced_nonNull_native, v8);
    v9 = *(v21 + 48);
    v10 = sub_10003962C();
    sub_10000C9A8();
    (*(v11 + 8))(v9 + *(v11 + 72) * v6, v10);
    v12 = *(v21 + 56);
    type metadata accessor for MessageRequest(0);
    sub_10000C9A8();
    sub_10000C768(v12 + *(v13 + 72) * v6, a2);
    sub_100032740();
    sub_1000326F8(v14, v15, &protocol conformance descriptor for UUID);
    sub_100039B5C();
    *v2 = v21;
    sub_100032784();
  }

  else
  {
    type metadata accessor for MessageRequest(0);
    v16 = sub_10003286C();
  }

  return sub_10000E998(v16, v17, v18, v19);
}

uint64_t sub_100030968(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10003042C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v7 = *(*v1 + 24);
  sub_10000BEC0(&qword_100059940, &qword_10003FF68);
  sub_100039B4C(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(v15 + 48);
  v9 = sub_10003962C();
  sub_10000C9A8();
  (*(v10 + 8))(v8 + *(v10 + 72) * v5, v9);
  v11 = *(*(v15 + 56) + 8 * v5);
  sub_10000C944(0, &qword_100059198, TUMomentsRawVideoMessageDescriptor_ptr);
  sub_100032740();
  sub_1000326F8(v12, v13, &protocol conformance descriptor for UUID);
  sub_100032778();
  sub_100039B5C();
  *v2 = v15;
  return v11;
}

void sub_100030A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100012C88();
  sub_100032808();
  sub_10000C9B8();
  __chkstk_darwin(v13);
  sub_10000C9CC();
  sub_100032894();
  sub_100032794();
  if (v15)
  {
    __break(1u);
LABEL_10:
    sub_100039BBC();
    __break(1u);
    return;
  }

  v16 = v14;
  v17 = sub_10000BEC0(&qword_100059938, &qword_10003FF60);
  if (sub_1000327A8(v17))
  {
    sub_10003042C(v12);
    if ((v16 & 1) != (v18 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v16)
  {
    v19 = type metadata accessor for MessageRequest(0);
    sub_10000CA0C(v19);
    sub_100012C70();

    sub_1000311DC(v20, v21);
  }

  else
  {
    v23 = sub_100032880();
    v24(v23);
    v25 = sub_100032838();
    sub_100031000(v25, v26, v27, v28);
    sub_100012C70();
  }
}

void sub_100030BF0()
{
  sub_100012C88();
  sub_100032808();
  sub_10000C9B8();
  __chkstk_darwin(v3);
  sub_10000C9CC();
  sub_100032894();
  sub_100032794();
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v4;
  v8 = v5;
  v9 = sub_10000BEC0(&qword_100059940, &qword_10003FF68);
  if (!sub_1000327A8(v9))
  {
    goto LABEL_5;
  }

  v10 = sub_10003042C(v1);
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_11:
    sub_100039BBC();
    __break(1u);
    return;
  }

  v7 = v10;
LABEL_5:
  if (v8)
  {
    *(*(*v2 + 56) + 8 * v7) = v0;
    sub_100012C70();
  }

  else
  {
    v14 = sub_100032880();
    v15(v14);
    v16 = sub_100032838();
    sub_1000310DC(v16, v17, v18, v19);
    sub_100012C70();
  }
}

void sub_100030D40()
{
  sub_100012C88();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1000303B4(v7, v5);
  sub_100032794();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  v16 = sub_10000BEC0(v4, v2);
  if (!sub_1000327A8(v16))
  {
    goto LABEL_5;
  }

  v17 = sub_1000303B4(v8, v6);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_100039BBC();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v0;
  if (v15)
  {
    *(v19[7] + 8 * v14) = v10;
    sub_100012C70();
  }

  else
  {
    sub_100031194(v14, v8, v6, v10, v19);
    sub_100012C70();
  }
}

uint64_t sub_100030E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030ED0()
{
  v1 = sub_1000395CC();
  sub_10000C9B8();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

void sub_100030F88()
{
  v1 = sub_1000395CC();
  sub_10000CA0C(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_100030160(v3, v4);
}

uint64_t sub_100030FE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031000(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10003962C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for MessageRequest(0);
  result = sub_10000C768(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1000310DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10003962C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100031194(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000311DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100031240(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char *a6)
{
  v196 = a5;
  v11 = sub_10003966C();
  __chkstk_darwin(v11 - 8);
  v180 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  __chkstk_darwin(v13 - 8);
  v175 = &v173 - v14;
  v200 = sub_10003952C();
  v15 = *(v200 - 8);
  __chkstk_darwin(v200);
  v199 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000395CC();
  v202 = v17;
  v195 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v176 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v198 = &v173 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v173 - v23;
  v25 = __chkstk_darwin(v22);
  v187 = &v173 - v26;
  __chkstk_darwin(v25);
  v201 = &v173 - v27;
  sub_10000E998(&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_videoURL], 1, 1, v17);
  v178 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_localCaptionsMachine;
  *&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_localCaptionsMachine] = 0;
  v179 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_remoteCaptionsMachine;
  *&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_remoteCaptionsMachine] = 0;
  v174 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_evalDirectoryURL;
  sub_10000E998(&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_evalDirectoryURL], 1, 1, v17);
  v28 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid;
  v29 = sub_10003962C();
  v183 = *(v29 - 8);
  v30 = *(v183 + 16);
  v186 = a1;
  v184 = v29;
  v30(&a6[v28], a1);
  v185 = a2;
  sub_10000BF68(a2, &a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_request]);
  *&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_tuMediaRecordRequest] = a3;
  *&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_queue] = a4;
  v189 = a6;
  a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state] = 0;
  v31 = a3;
  v192 = a4;
  v32 = [v31 sandboxURL];
  v33 = [v32 URL];

  sub_10003958C();
  v34 = [v31 localCaptionsFileName];
  v35 = sub_10003986C();
  v37 = v36;

  v205 = v35;
  v206 = v37;
  v194 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v38 = v15 + 104;
  v191 = *(v15 + 104);
  v39 = v199;
  v40 = v200;
  v191(v199);
  v193 = sub_10000E944();
  v41 = v187;
  sub_1000395AC();
  v42 = *(v15 + 8);
  v190 = v15 + 8;
  v42(v39, v40);

  v44 = v195 + 8;
  v43 = *(v195 + 8);
  v45 = v24;
  v46 = v202;
  v43(v24, v202);
  sub_10003957C();
  v47 = v41;
  v43(v41, v46);
  v48 = [v31 sandboxURL];
  v49 = [v48 URL];

  sub_10003958C();
  v197 = v31;
  v50 = [v31 remoteCaptionsFileName];
  v51 = sub_10003986C();
  v53 = v52;

  v205 = v51;
  v206 = v53;
  v54 = v199;
  v55 = v200;
  v181 = v38;
  v56 = v191;
  (v191)(v199, v194, v200);
  sub_1000395AC();
  v177 = v42;
  v42(v54, v55);
  v57 = v202;

  v43(v45, v57);
  sub_10003957C();
  v58 = v196;
  v43(v47, v57);
  v59 = TUCallTranscriptionSupported();
  v188 = v43;
  if (v59 && (![v58 offlineTranscriptionEnabled] || objc_msgSend(v58, "transcriptionEvaluationEnabled")))
  {
    v60 = v56;
    v61 = [v58 transcriptionEvaluationEnabled];
    v62 = v197;
    v182 = v44;
    if (!v61)
    {
LABEL_7:
      if (qword_100058AA0 != -1)
      {
        swift_once();
      }

      v105 = sub_10003972C();
      sub_10000BF30(v105, qword_10005AB20);
      v106 = sub_10003970C();
      v107 = sub_1000399CC();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        *v108 = 136315394;
        swift_beginAccess();
        sub_1000326F8(&qword_1000592D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v109 = sub_100039B9C();
        v111 = sub_10000BFDC(v109, v110, &v205);

        *(v108 + 4) = v111;
        *(v108 + 12) = 2080;
        v112 = v198;
        swift_beginAccess();
        v113 = sub_100039B9C();
        v115 = sub_10000BFDC(v113, v114, &v205);

        *(v108 + 14) = v115;
        _os_log_impl(&_mh_execute_header, v106, v107, "Captions URLs: localCaptionsDestinationURL: %s remoteCaptionsDestinationURL: %s", v108, 0x16u);
        swift_arrayDestroy();

        v116 = v189;
      }

      else
      {

        v116 = v189;
        v112 = v198;
      }

      type metadata accessor for MediaRequest(0);
      swift_beginAccess();
      v141 = v192;
      sub_10000CAF8(v192, &v205);
      v142 = v197;
      v143 = [v197 mediaTokens];
      v144 = [v143 uplinkStreamToken];

      v145 = [v142 localeIdentifier];
      sub_10003986C();

      v146 = v180;
      sub_10003963C();
      v147 = type metadata accessor for CaptionsMachine();
      v148 = objc_allocWithZone(v147);
      v149 = v141;
      v150 = sub_10000FD0C(&v205, v144, v146, v149);
      v151 = *&v116[v178];
      *&v116[v178] = v150;

      swift_beginAccess();
      sub_10000CAF8(v149, &v205);
      v152 = [v142 mediaTokens];
      v153 = [v152 downlinkStreamToken];

      v154 = [v142 localeIdentifier];
      sub_10003986C();

      sub_10003963C();
      v155 = v147;
      v122 = v142;
      v156 = objc_allocWithZone(v155);
      v157 = sub_10000FD0C(&v205, v153, v146, v149);
      v158 = *&v116[v179];
      *&v116[v179] = v157;

      v159 = v202;
      v160 = v188;
      v188(v112, v202);
      v160(v201, v159);
      v117 = v196;
      goto LABEL_25;
    }

    sub_10003954C();
    v63 = [v62 sandboxURL];
    v64 = v47;
    v65 = [v63 URL];

    sub_10003958C();
    v66 = sub_10003953C();
    v68 = v67;
    v69 = v202;
    v43(v45, v202);
    v205 = v66;
    v206 = v68;
    v70 = v199;
    v173 = v45;
    v71 = v200;
    (v60)(v199, v194, v200);
    v72 = v176;
    sub_1000395AC();
    v73 = v71;
    v74 = v177;
    v177(v70, v73);
    v75 = v72;

    v43(v64, v69);
    v76 = [objc_opt_self() defaultManager];
    sub_10003955C(v77);
    v79 = v78;
    v205 = 0;
    v80 = [v76 createDirectoryAtURL:v78 withIntermediateDirectories:1 attributes:0 error:&v205];

    v81 = v205;
    if (v80)
    {
      v82 = v175;
      v83 = v202;
      (*(v195 + 16))(v175, v75, v202);
      v84 = v83;
      sub_10000E998(v82, 0, 1, v83);
      v85 = v189;
      v86 = v174;
      swift_beginAccess();
      v87 = v81;
      sub_100030E60(v82, &v85[v86]);
      swift_endAccess();
      v88 = [v197 localCaptionsFileName];
      v89 = sub_10003986C();
      v91 = v90;

      v205 = v89;
      v206 = v91;
      v92 = v199;
      v93 = v75;
      v94 = v200;
      (v191)(v199, v194, v200);
      v95 = v173;
      sub_1000395AC();
      v74(v92, v94);

      v96 = v187;
      sub_10003957C();
      v97 = v188;
      v188(v95, v84);
      v98 = *(v195 + 40);
      v195 += 40;
      v175 = v98;
      (v98)(v201, v96, v84);
      v99 = [v197 remoteCaptionsFileName];
      v100 = sub_10003986C();
      v102 = v101;

      v205 = v100;
      v206 = v102;
      (v191)(v92, v194, v94);
      sub_1000395AC();
      v177(v92, v94);
      v103 = v198;

      sub_10003957C();
      v104 = v202;
      v97(v95, v202);
      v97(v93, v104);
      (v175)(v103, v96, v104);
      goto LABEL_7;
    }

    v161 = v205;
    sub_10003951C();

    swift_willThrow();
    v162 = v188;
    v188(v75, v202);
    if (qword_100058AA0 != -1)
    {
      swift_once();
    }

    v163 = sub_10003972C();
    sub_10000BF30(v163, qword_10005AB20);
    v164 = sub_10003970C();
    v165 = sub_1000399AC();
    v166 = os_log_type_enabled(v164, v165);
    v117 = v196;
    v116 = v189;
    if (v166)
    {
      v167 = swift_slowAlloc();
      v168 = v202;
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v164, v165, "Error while creating captions machine", v167, 2u);

      v162(v198, v168);
      v162(v201, v168);
    }

    else
    {

      v169 = v202;
      v162(v198, v202);
      v162(v201, v169);
    }

    v122 = v197;
  }

  else
  {
    v117 = v58;
    if (qword_100058AA0 != -1)
    {
      swift_once();
    }

    v118 = sub_10003972C();
    sub_10000BF30(v118, qword_10005AB20);
    swift_unknownObjectRetain();
    v119 = sub_10003970C();
    v120 = sub_1000399CC();

    v121 = os_log_type_enabled(v119, v120);
    v122 = v197;
    if (v121)
    {
      v123 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      *v123 = 136315650;
      v124 = TUCallTranscriptionSupportedLocales();
      v182 = v44;
      sub_1000398FC();

      v125 = sub_10003990C();
      v127 = v126;

      v128 = sub_10000BFDC(v125, v127, &v205);

      *(v123 + 4) = v128;
      v129 = v202;
      *(v123 + 12) = 2080;
      v130 = TUCurrentLocaleIdentifier();
      v131 = sub_10003986C();
      v133 = v132;

      v134 = sub_10000BFDC(v131, v133, &v205);

      *(v123 + 14) = v134;
      *(v123 + 22) = 2080;
      v204[0] = [v117 offlineTranscriptionEnabled];
      v135 = sub_10003989C();
      v137 = sub_10000BFDC(v135, v136, &v205);

      *(v123 + 24) = v137;
      _os_log_impl(&_mh_execute_header, v119, v120, "Not creating captions machines since we're only transcribing calls for %s, current locale is %s. Or feature flag for offline transcription is turned on %s", v123, 0x20u);
      swift_arrayDestroy();

      v122 = v197;

      v138 = v188;
      v188(v198, v129);
      v138(v201, v129);
    }

    else
    {

      v139 = v202;
      v140 = v188;
      v188(v198, v202);
      v140(v201, v139);
    }

    v116 = v189;
  }

LABEL_25:
  v170 = type metadata accessor for MediaRequest(0);
  v203.receiver = v116;
  v203.super_class = v170;
  v171 = objc_msgSendSuper2(&v203, "init");

  sub_10000C54C(v185);
  (*(v183 + 8))(v186, v184);
  return v171;
}

uint64_t sub_1000326F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1000327A8(uint64_t a1)
{

  return sub_100039B4C(v2 & 1, v1);
}

uint64_t sub_1000327D8()
{
  result = v1;
  *(v2 - 208) = *(v0 + 8);
  return result;
}

uint64_t sub_1000327F0(uint64_t a1)
{

  return sub_10000C8EC(a1, v1, v2);
}

uint64_t sub_100032808()
{

  return sub_10003962C();
}

unint64_t sub_100032894()
{

  return sub_10003042C(v0);
}

uint64_t sub_1000328B4()
{

  return sub_10000C8EC(v2, v0, v1);
}

void sub_1000328D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_10003293C(uint64_t a1, int a2)
{
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v2 = sub_10003972C();
  sub_10000BF30(v2, qword_10005AAF0);
  oslog = sub_10003970C();
  v3 = sub_1000399CC();
  if (os_log_type_enabled(oslog, v3))
  {
    sub_10002154C();
    v4 = swift_slowAlloc();
    sub_100021598();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    type metadata accessor for AVCMomentsCapabilities(0);
    v6 = sub_10003989C();
    v8 = sub_10000BFDC(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Moments capabilities changed %{public}s", v4, 0xCu);
    sub_10000C54C(v5);
    sub_10000C9F4();

    sub_10000C9F4();
  }

  else
  {
  }
}

void sub_100032AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7, ...)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_100058A90 != -1)
    {
      sub_10001B3E0(&qword_100058A90);
    }

    v12 = sub_10003972C();
    sub_10000BF30(v12, qword_10005AAF0);
    sub_10000C88C(a2, v39, &qword_100058C70, qword_10003F690);
    swift_errorRetain();
    v13 = sub_10003970C();
    v14 = sub_1000399AC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v15 = 136446466;
      v37 = a4;
      v16 = sub_10000B0B4(v39);
      v18 = v17;
      sub_10000C8EC(v39, &qword_100058C70, qword_10003F690);
      v19 = sub_10000BFDC(v16, v18, &v38);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      swift_errorRetain();
      sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
      v20 = sub_10003989C();
      v22 = sub_10000BFDC(v20, v21, &v38);

      *(v15 + 14) = v22;
      a4 = v37;
      _os_log_impl(&_mh_execute_header, v13, v14, a6, v15, 0x16u);
      swift_arrayDestroy();
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      sub_10000C8EC(v39, &qword_100058C70, qword_10003F690);
    }

    v33 = (*(a5 + 72))(a4, a5);
    if (v33)
    {
      v35 = v33;
      v36 = v34;
      v33(a2, a3);

      sub_10000BFCC(v35, v36);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100058A90 != -1)
    {
      sub_10001B3E0(&qword_100058A90);
    }

    v24 = sub_10003972C();
    sub_10000BF30(v24, qword_10005AAF0);
    sub_10000C88C(a2, v39, &qword_100058C70, qword_10003F690);
    v25 = sub_10003970C();
    v26 = sub_1000399CC();
    if (os_log_type_enabled(v25, v26))
    {
      sub_10002154C();
      v27 = swift_slowAlloc();
      sub_100021598();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136446210;
      v29 = sub_10000B0B4(v39);
      v31 = v30;
      sub_10000C8EC(v39, &qword_100058C70, qword_10003F690);
      v32 = sub_10000BFDC(v29, v31, &v38);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, a7, v27, 0xCu);
      sub_10000C54C(v28);
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      sub_10000C8EC(v39, &qword_100058C70, qword_10003F690);
    }
  }
}

uint64_t sub_100032EE8()
{
  sub_10000BEC0(&qword_100059A98, &qword_10003FFD8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10003F6C0;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD00000000000001BLL;
  *(v0 + 40) = 0x800000010003ED00;
  sub_100039C0C();
}

uint64_t sub_100032F84(unsigned __int8 a1, char a2)
{
  v2 = 0x676E6974696177;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x64657472617473;
    }

    if (v3 == 1)
    {
      v5 = 0x800000010003D4E0;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x676E6974696177;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0x64657472617473;
    }

    if (a2 == 1)
    {
      v6 = 0x800000010003D4E0;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100039BAC();
  }

  return v8 & 1;
}

uint64_t sub_100033080(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065746174;
  v3 = 0x5364696C61766E69;
  v4 = a1;
  v5 = 0x5364696C61766E69;
  v6 = 0xEC00000065746174;
  switch(v4)
  {
    case 1:
      v5 = 0x556E776F6E6B6E75;
      v6 = 0xEB00000000444955;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x800000010003D470;
      break;
    case 3:
      v5 = 0x6575716552637661;
      v6 = 0xEF726F7272457473;
      break;
    case 4:
      v6 = 0x800000010003D4A0;
      v5 = 0xD000000000000014;
      break;
    case 5:
      v6 = 0x800000010003D4C0;
      v5 = 0xD000000000000012;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x556E776F6E6B6E75;
      v2 = 0xEB00000000444955;
      break;
    case 2:
      v3 = 0xD000000000000010;
      v2 = 0x800000010003D470;
      break;
    case 3:
      v3 = 0x6575716552637661;
      v2 = 0xEF726F7272457473;
      break;
    case 4:
      v2 = 0x800000010003D4A0;
      v3 = 0xD000000000000014;
      break;
    case 5:
      v2 = 0x800000010003D4C0;
      v3 = 0xD000000000000012;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100039BAC();
  }

  return v8 & 1;
}

uint64_t sub_1000332A4()
{
  v10 = sub_1000399FC();
  sub_10000C9B8();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000C9CC();
  v6 = v5 - v4;
  sub_1000399DC();
  sub_10000C9A8();
  __chkstk_darwin(v7);
  sub_10000C9CC();
  v8 = sub_10003976C();
  __chkstk_darwin(v8 - 8);
  sub_10000C9CC();
  *(v0 + 24) = 0;
  sub_10000C944(0, &unk_100059550, OS_dispatch_queue_ptr);
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  sub_10003974C();
  sub_10000C610();
  sub_10000BEC0(&qword_100059560, &unk_10003F800);
  sub_10000C668();
  sub_100039A7C();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *(v0 + 32) = sub_100039A1C();
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for MessageMomentsAVCDelegate()) init];
  return v0;
}

void sub_1000334C0(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = [objc_allocWithZone(AVCMediaRecorderConfiguration) init];
  [v6 setMediaAvailability:3];
  v7 = [objc_allocWithZone(AVCMoments) initWithConfiguration:v6 delegate:*(v2 + 16) dispatchQueue:*(v2 + 32)];

  if (v7)
  {
    v8 = *(v3 + 24);
    *(v3 + 24) = v7;
    v9 = v7;

    *(*(v3 + 16) + OBJC_IVAR____TtC18FTLivePhotoService25MessageMomentsAVCDelegate_owner + 8) = &off_1000529E0;
    swift_unknownObjectWeakAssign();
    if (qword_100058A98 != -1)
    {
      sub_1000214D0();
      swift_once();
    }

    v10 = sub_10003972C();
    sub_10000BF30(v10, qword_10005AB08);
    v11 = sub_10003970C();
    v12 = sub_1000399CC();
    if (os_log_type_enabled(v11, v12))
    {
      sub_10002154C();
      v23 = a2;
      v13 = swift_slowAlloc();
      sub_100021598();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      type metadata accessor for AVCMomentsMediaType(0);
      v15 = sub_10003989C();
      v17 = sub_10000BFDC(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Generating new request for AVCMomentsMediaType %{public}s", v13, 0xCu);
      sub_10000C54C(v14);
      sub_10000C9F4();

      a2 = v23;
      sub_10000C9F4();
    }

    v18 = *(v3 + 24);
    if (v18 && (v19 = [v18 newRequestWithMediaType:a1 mode:1 requesteeID:0]) != 0)
    {
      v20 = v19;
      a2[3] = sub_10000C944(0, &qword_100058F90, AVCMomentsRequest_ptr);
      a2[4] = &off_1000515F0;

      *a2 = v20;
    }

    else
    {
      sub_10000C714();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_10000C714();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }
}

uint64_t sub_10003378C()
{
  sub_10000BFCC(*(v0 + 40), *(v0 + 48));
  sub_10000BFCC(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t sub_1000337CC()
{
  sub_10003378C();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_100033824(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 48);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return sub_10000BFCC(v4, v5);
}

uint64_t sub_10003383C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 64);
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return sub_10000BFCC(v4, v5);
}

void sub_100033878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  __chkstk_darwin(v10 - 8);
  v12 = &v49[-1] - v11;
  v13 = sub_1000395CC();
  sub_10000C9B8();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000C9CC();
  v19 = v18 - v17;
  if (a5)
  {
    swift_errorRetain();
    if (qword_100058A98 != -1)
    {
      sub_1000214D0();
      swift_once();
    }

    v20 = sub_10003972C();
    sub_10000BF30(v20, qword_10005AB08);
    sub_10000BF68(a2, v51);
    swift_errorRetain();
    v21 = sub_10003970C();
    v22 = sub_1000399AC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v23 = 136446466;
      sub_10000BF68(v51, v49);
      v24 = sub_10000B0B4(v49);
      v26 = v25;
      sub_10000C8EC(v49, &qword_100058C70, qword_10003F690);
      sub_10000C54C(v51);
      v27 = sub_10000BFDC(v24, v26, &v50);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v49[0] = a5;
      swift_errorRetain();
      sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
      v28 = sub_10003989C();
      v30 = sub_10000BFDC(v28, v29, &v50);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Moments finished processing request %{public}s with error %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      sub_10000C54C(v51);
    }

    v35 = v6[7];
    if (v35)
    {
      v36 = v6[8];
      sub_10000BF68(a2, v51);

      v35(v51, a5);
      sub_10000BFCC(v35, v36);

      sub_10000C8EC(v51, &qword_100058C70, qword_10003F690);
    }

    else
    {
    }
  }

  else
  {
    sub_10000C88C(a4, v12, &unk_100058FA0, &unk_10003F260);
    if (sub_10000BF08(v12, 1, v13) == 1)
    {
      sub_10000C8EC(v12, &unk_100058FA0, &unk_10003F260);
      if (qword_100058A98 != -1)
      {
        sub_1000214D0();
        swift_once();
      }

      v31 = sub_10003972C();
      sub_10000BF30(v31, qword_10005AB08);
      v32 = sub_10003970C();
      v33 = sub_1000399AC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Moments finished without an error or a videoURL", v34, 2u);
        sub_10000C9F4();
      }
    }

    else
    {
      (*(v15 + 32))(v19, v12, v13);
      if (qword_100058A98 != -1)
      {
        sub_1000214D0();
        swift_once();
      }

      v37 = sub_10003972C();
      sub_10000BF30(v37, qword_10005AB08);
      sub_10000BF68(a2, v51);
      v38 = sub_10003970C();
      v39 = sub_1000399CC();
      if (os_log_type_enabled(v38, v39))
      {
        sub_10002154C();
        v40 = swift_slowAlloc();
        sub_100021598();
        v48 = swift_slowAlloc();
        v50 = v48;
        *v40 = 136446210;
        sub_10000BF68(v51, v49);
        v41 = sub_10000B0B4(v49);
        v43 = v42;
        sub_10000C8EC(v49, &qword_100058C70, qword_10003F690);
        sub_10000C54C(v51);
        v44 = sub_10000BFDC(v41, v43, &v50);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "Moments finished processing request %{public}s", v40, 0xCu);
        sub_10000C54C(v48);
        sub_10000C9F4();

        sub_10000C9F4();
      }

      else
      {

        sub_10000C54C(v51);
      }

      v45 = v6[5];
      if (v45)
      {
        v46 = v6[6];

        v45(a2, v19);
        sub_10000BFCC(v45, v46);
      }

      (*(v15 + 8))(v19, v13);
    }
  }

  v47 = v6[3];
  v6[3] = 0;
}

uint64_t sub_100033E64()
{
  v1 = *(v0 + 56);
  sub_10000C984(v1, *(v0 + 64));
  return v1;
}

_BYTE *storeEnumTagSinglePayload for MessageMomentsError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100033F64);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100033FA0()
{
  result = qword_100059AA0;
  if (!qword_100059AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059AA0);
  }

  return result;
}

void sub_1000340A4(void *a1)
{
  swift_unknownObjectWeakAssign();
}

char *sub_1000340EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments;
  *&v5[OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments] = 0;
  swift_unknownObjectWeakInit();
  v13 = *&v5[v12];
  *&v5[v12] = 0;

  swift_unknownObjectWeakAssign();
  v18.receiver = v5;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "init");
  v15 = sub_100034D08(a1, a2, a3, v14, a5);

  if (v15)
  {
    v16 = *&v14[OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments];
    *&v14[OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments] = v15;
  }

  else
  {

    return 0;
  }

  return v14;
}

id sub_10003429C()
{
  result = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments);
  if (result)
  {
    return [result streamToken];
  }

  __break(1u);
  return result;
}

SEL *sub_100034370(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments))
  {
    return [*(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments) *result];
  }

  __break(1u);
  return result;
}

id sub_100034390(id result, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments);
  if (v5)
  {
    v6 = a4;
    v8 = result;
    if (a4)
    {
      v9 = v5;
      v6 = sub_10003985C();
    }

    else
    {
      v10 = v5;
    }

    v11 = [v5 newRequestWithMediaType:v8 mode:a2 requesteeID:v6];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100034568(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong moments:v2 capabilitiesDidChange:a2];
  }
}

void sub_100034654(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a3)
    {
      a3 = sub_10003950C();
    }

    [v9 *a4];
  }
}

void sub_100034704(void *a1, uint64_t a2, void *a3, void *a4, void *a5, SEL *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  sub_100034654(v13, a4, a5, a6);
}

void sub_100034854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_100034C98(a3, v16);
    v19 = sub_1000395CC();
    v21 = 0;
    if (sub_10000BF08(v16, 1, v19) != 1)
    {
      sub_10003955C(v20);
      v21 = v22;
      (*(*(v19 - 8) + 8))(v16, v19);
    }

    sub_100034C98(a4, v14);
    if (sub_10000BF08(v14, 1, v19) == 1)
    {
      v24 = 0;
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_10003955C(v23);
      v24 = v25;
      (*(*(v19 - 8) + 8))(v14, v19);
      if (!a5)
      {
LABEL_9:
        [v18 moments:v6 didEndProcessingRequest:a2 stillImageURL:v21 movieURL:v24 error:a5];

        return;
      }
    }

    a5 = sub_10003950C();
    goto LABEL_9;
  }
}

void sub_100034BD4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong momentsServerDidDisconnect:v0];
  }
}

uint64_t sub_100034C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100034D08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a3)
  {
    v8 = sub_10003985C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(AVCMoments) initWithStreamToken:a1 requesterID:v8 delegate:a4 dispatchQueue:a5];

  return v9;
}

uint64_t sub_100034E0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10003972C();
  sub_100034E84(v5, a2);
  sub_10000BF30(v5, a2);
  return sub_10003971C();
}

uint64_t *sub_100034E84(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100034F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000395CC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000BF08(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100034FC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000395CC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000E998(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MessageStore(uint64_t a1)
{
  result = qword_100059B40;
  if (!qword_100059B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000350BC(uint64_t a1)
{
  sub_1000395CC();
  if (v1 <= 0x3F)
  {
    sub_100035158(319);
    if (v2 <= 0x3F)
    {
      sub_100035204(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100035158(uint64_t a1)
{
  if (!qword_100059B50)
  {
    sub_10003962C();
    type metadata accessor for MessageRequest(255);
    sub_100037308(&qword_1000591D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = sub_10003982C();
    if (!v2)
    {
      atomic_store(v1, &qword_100059B50);
    }
  }
}

void sub_100035204(uint64_t a1)
{
  if (!qword_100059B58)
  {
    sub_10003962C();
    sub_10000C944(255, &qword_100059198, TUMomentsRawVideoMessageDescriptor_ptr);
    sub_100037308(&qword_1000591D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = sub_10003982C();
    if (!v2)
    {
      atomic_store(v1, &qword_100059B58);
    }
  }
}

uint64_t sub_1000352C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v34 = a3;
  v38 = type metadata accessor for MessageRequest(0);
  sub_10000C9B8();
  v36 = v5;
  v7 = __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v35 = &v33 - v10;
  v11 = sub_1000375D8();
  v12 = *(v3 + *(type metadata accessor for MessageStore(v11) + 24));
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      v21 = v12;
      v22 = v35;
      sub_10000C7CC(*(v12 + 56) + *(v36 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v35);
      sub_10000C768(v22, v9);
      v23 = &v9[*(v38 + 20)];
      v25 = *(v23 + 3);
      v24 = *(v23 + 4);
      sub_10000D3B0(v23, v25);
      v26 = (*(v24 + 8))(v25, v24);
      if (v26 == v37 && v27 == a2)
      {

        goto LABEL_18;
      }

      v29 = sub_100039BAC();

      if (v29)
      {
        break;
      }

      v16 &= v16 - 1;
      result = sub_10000C830(v9);
      v19 = v20;
      v12 = v21;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    v32 = v34;
    sub_10000C768(v9, v34);
    v30 = v32;
    v31 = 0;
LABEL_19:
    sub_10000E998(v30, v31, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v30 = v34;
        v31 = 1;
        goto LABEL_19;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10003553C()
{
  if (qword_100058A98 != -1)
  {
    sub_10001C35C(&qword_100058A98);
  }

  v0 = sub_10003972C();
  sub_10000BF30(v0, qword_10005AB08);
  v1 = sub_10003970C();
  v2 = sub_1000399CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_1000216D8();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating video message folder", v3, 2u);
    sub_10000EB00(v3);
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  type metadata accessor for MessageStore(0);
  sub_10003959C(1);
  v6 = sub_10003985C();

  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = sub_10003970C();
    v9 = sub_1000399CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_1000216D8();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "VideoMessage folder already exists - removing", v10, 2u);
      sub_10000EB00(v10);
    }

    v11 = [v4 defaultManager];
    sub_10003955C(v12);
    v14 = v13;
    v29 = 0;
    v15 = [v11 removeItemAtURL:v13 error:&v29];

    if (!v15)
    {
      v24 = v29;
      sub_10003951C();
      goto LABEL_15;
    }

    v16 = v29;
  }

  v17 = [v4 defaultManager];
  sub_10003955C(v18);
  v20 = v19;
  v29 = 0;
  v21 = [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v29];

  if (v21)
  {
    return v29;
  }

  v23 = v29;
  sub_10003951C();

  swift_willThrow();
  swift_errorRetain();
  v24 = sub_10003970C();
  v25 = sub_1000399AC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = sub_10001B508();
    v27 = swift_slowAlloc();
    *v26 = 138543362;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to create video message folder %{public}@", v26, 0xCu);
    sub_10000C8EC(v27, &qword_100058DF0, &unk_10003F990);
    sub_10000EB00(v27);
    sub_10000EB00(v26);
  }

LABEL_15:

  return swift_willThrow();
}

uint64_t sub_1000358E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003962C();
  sub_10000C9B8();
  v69 = v5;
  __chkstk_darwin(v6);
  sub_10000C9CC();
  v70 = v8 - v7;
  v9 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  __chkstk_darwin(v9 - 8);
  sub_100037558();
  v68 = v10;
  sub_1000215A4();
  __chkstk_darwin(v11);
  v73 = &v65 - v12;
  v13 = sub_1000375D8();
  v14 = type metadata accessor for MessageRequest(v13);
  sub_10000C9A8();
  v16 = __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v67 = &v65 - v19;
  sub_1000215A4();
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  if (qword_100058A98 != -1)
  {
    sub_10001C35C(&qword_100058A98);
  }

  v23 = sub_10003972C();
  v24 = sub_10000BF30(v23, qword_10005AB08);
  sub_10000C7CC(a1, v22);
  v72 = v24;
  v25 = sub_10003970C();
  v26 = sub_1000399CC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_10001B508();
    v66 = a1;
    v28 = v27;
    v29 = swift_slowAlloc();
    v71 = v2;
    v65 = v29;
    v74 = v29;
    *v28 = 136315138;
    sub_100037540();
    sub_100037308(v30, v31, &protocol conformance descriptor for UUID);
    sub_100039B9C();
    v32 = sub_10000C830(v22);
    v34 = sub_100037610(v32, v33, &v74);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Started processing message %s", v28, 0xCu);
    v35 = v65;
    sub_10000C54C(v65);
    v2 = v71;
    sub_10000EB00(v35);
    v36 = v28;
    a1 = v66;
    sub_10000EB00(v36);
  }

  else
  {

    sub_10000C830(v22);
  }

  v37 = *(type metadata accessor for MessageStore(0) + 24);
  v38 = v73;
  sub_10002C9C0(a1, *(v2 + v37), v73);
  v39 = sub_10000BF08(v38, 1, v14);
  sub_10000C8EC(v38, &qword_100058C90, &unk_10003F290);
  if (v39 == 1)
  {
    v73 = v14;
    v40 = v67;
    sub_10000C7CC(a1, v67);
    v41 = sub_10003970C();
    v42 = sub_1000399CC();
    if (os_log_type_enabled(v41, v42))
    {
      sub_10001B508();
      v72 = v37;
      v43 = sub_100023E38();
      v71 = v2;
      v44 = v43;
      v74 = v43;
      *v40 = 136446210;
      sub_100037540();
      sub_100037308(v45, v46, &protocol conformance descriptor for UUID);
      sub_1000375E4();
      sub_100039B9C();
      v47 = sub_10000C830(v40);
      v49 = sub_100037610(v47, v48, &v74);

      *(v40 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Started processing message with UUID %{public}s", v40, 0xCu);
      sub_10000C54C(v44);
      sub_10000EB00(v44);
      sub_10003756C();
    }

    else
    {

      sub_10000C830(v40);
    }

    v61 = v70;
    (*(v69 + 16))(v70, a1, v4);
    v62 = v68;
    sub_10000C7CC(a1, v68);
    sub_10000E998(v62, 0, 1, v73);
    return sub_100036E38(v62, v61);
  }

  else
  {
    sub_10000C7CC(a1, v18);
    v50 = sub_10003970C();
    v51 = sub_1000399AC();
    if (sub_1000375A8(v51))
    {
      sub_10001B508();
      v52 = sub_100023E38();
      v74 = v52;
      *v18 = 136446210;
      sub_100037540();
      sub_100037308(v53, v54, &protocol conformance descriptor for UUID);
      sub_1000375E4();
      v55 = sub_100039B9C();
      v57 = v56;
      sub_10000C830(v18);
      v58 = sub_10000BFDC(v55, v57, &v74);

      *(v18 + 4) = v58;
      sub_100037588(&_mh_execute_header, v59, v60, "Already processing message with UUID %{public}s");
      sub_10000C54C(v52);
      sub_10000EB00(v52);
      sub_10003756C();
    }

    else
    {

      sub_10000C830(v18);
    }

    sub_1000372B4();
    swift_allocError();
    *v64 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100035ED0(uint64_t a1)
{
  sub_1000395CC();
  sub_10000C9B8();
  v72 = v5;
  v73 = v4;
  __chkstk_darwin(v4);
  sub_10000C9CC();
  v8 = v7 - v6;
  v9 = sub_10003962C();
  sub_10000C9B8();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100037558();
  v70 = v13;
  sub_1000215A4();
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  if (qword_100058A98 != -1)
  {
    sub_10001C35C(&qword_100058A98);
  }

  v17 = sub_10003972C();
  v18 = sub_10000BF30(v17, qword_10005AB08);
  v19 = *(v11 + 16);
  v75 = a1;
  v69 = v19;
  v19(v16, a1, v9);
  v74 = v18;
  v20 = sub_10003970C();
  v21 = sub_1000399CC();
  v22 = sub_1000375A8(v21);
  v71 = v11;
  if (v22)
  {
    v23 = sub_10001B508();
    v67 = v8;
    v24 = v23;
    v25 = swift_slowAlloc();
    v68 = v1;
    v66 = v25;
    v77 = v25;
    *v24 = 136446210;
    sub_100037540();
    sub_100037308(v26, v27, &protocol conformance descriptor for UUID);
    v28 = sub_100039B9C();
    v29 = v9;
    v31 = v30;
    v32 = *(v11 + 8);
    (v32)(v16, v29);
    v33 = sub_10000BFDC(v28, v31, &v77);
    v9 = v29;

    *(v24 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v20, v2, "Discarding message %{public}s", v24, 0xCu);
    v34 = v66;
    sub_10000C54C(v66);
    sub_10000EB00(v34);
    v35 = v24;
    v8 = v67;
    sub_10000EB00(v35);
  }

  else
  {

    v32 = *(v11 + 8);
    (v32)(v16, v9);
  }

  v36 = type metadata accessor for MessageStore(0);
  v37 = v75;
  v38 = sub_10002CA5C(v75, *(v76 + *(v36 + 28)));
  if (v38)
  {

    v39 = sub_10003970C();
    v40 = sub_1000399CC();
    if (os_log_type_enabled(v39, v40))
    {
      *sub_1000216D8() = 0;
      sub_1000375F0(&_mh_execute_header, v41, v42, "Deleting message from disk");
      sub_10003756C();
    }

    sub_1000370AC();
    v43 = [objc_opt_self() defaultManager];
    sub_10003955C(v44);
    v46 = v45;
    v77 = 0;
    v47 = [v43 removeItemAtURL:v45 error:&v77];

    if (v47)
    {
      v48 = v77;
    }

    else
    {
      v61 = v77;
      sub_10003951C();

      swift_willThrow();
    }

    return (*(v72 + 8))(v8, v73);
  }

  else
  {
    v69(v70, v37, v9);
    v49 = sub_10003970C();
    v50 = sub_1000399AC();
    if (sub_1000375A8(v50))
    {
      sub_10001B508();
      v51 = sub_100023E38();
      v77 = v51;
      *v32 = 136446210;
      sub_100037540();
      sub_100037308(v52, v53, &protocol conformance descriptor for UUID);
      sub_1000375E4();
      v54 = sub_100039B9C();
      v56 = v55;
      v57 = sub_1000375C4();
      (v32)(v57);
      v58 = sub_10000BFDC(v54, v56, &v77);

      *(v32 + 4) = v58;
      sub_100037588(&_mh_execute_header, v59, v60, "Unable to find message %{public}s in processed store");
      sub_10000C54C(v51);
      sub_10000EB00(v51);
      sub_10003756C();
    }

    else
    {

      v63 = sub_1000375C4();
      (v32)(v63);
    }

    sub_1000372B4();
    swift_allocError();
    *v64 = 0;
    return swift_willThrow();
  }
}

id sub_100036430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v118 = a2;
  v120 = sub_10003962C();
  sub_10000C9B8();
  v112 = v5;
  __chkstk_darwin(v6);
  sub_10000C9CC();
  v111 = v8 - v7;
  sub_1000375D8();
  v9 = sub_1000395CC();
  sub_10000C9B8();
  v121 = v10;
  __chkstk_darwin(v11);
  sub_100037558();
  v110 = v12;
  sub_1000215A4();
  v14 = __chkstk_darwin(v13);
  v16 = &v102[-v15];
  __chkstk_darwin(v14);
  v117 = &v102[-v17];
  sub_1000215A4();
  __chkstk_darwin(v18);
  v20 = &v102[-v19];
  v21 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  __chkstk_darwin(v21 - 8);
  sub_100037558();
  v109 = v22;
  sub_1000215A4();
  __chkstk_darwin(v23);
  v116 = &v102[-v24];
  v25 = sub_1000375D8();
  v115 = type metadata accessor for MessageRequest(v25);
  sub_10000C9A8();
  __chkstk_darwin(v26);
  sub_100037558();
  v113 = v27;
  sub_1000215A4();
  __chkstk_darwin(v28);
  v30 = &v102[-v29];
  if (qword_100058A98 != -1)
  {
    sub_10001C35C(&qword_100058A98);
  }

  v114 = v16;
  v31 = sub_10003972C();
  v32 = sub_10000BF30(v31, qword_10005AB08);
  sub_10000C7CC(a1, v30);
  v119 = v32;
  v33 = sub_10003970C();
  v34 = sub_1000399CC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = sub_10001B508();
    v107 = swift_slowAlloc();
    v108 = v9;
    v122 = v107;
    *v35 = 136446210;
    sub_100037540();
    sub_100037308(v36, v37, &protocol conformance descriptor for UUID);
    sub_100039B9C();
    v38 = sub_10000C830(v30);
    v40 = sub_100037610(v38, v39, &v122);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Finished processing message %{public}s", v35, 0xCu);
    v41 = v107;
    sub_10000C54C(v107);
    v9 = v108;
    sub_10000EB00(v41);
    sub_10000EB00(v35);
  }

  else
  {

    sub_10000C830(v30);
  }

  v42 = type metadata accessor for MessageStore(0);
  v43 = *(v42 + 24);
  v44 = v116;
  sub_10002C9C0(a1, *&v3[v43], v116);
  v45 = sub_10000BF08(v44, 1, v115);
  sub_10000C8EC(v44, &qword_100058C90, &unk_10003F290);
  v46 = v117;
  if (v45 == 1)
  {
    v47 = v113;
    sub_10000C7CC(a1, v113);
    v48 = sub_10003970C();
    v49 = sub_1000399CC();
    if (sub_1000375A8(v49))
    {
      sub_10001B508();
      v50 = sub_100023E38();
      v122 = v50;
      *v43 = 136446210;
      sub_100037540();
      sub_100037308(v51, v52, &protocol conformance descriptor for UUID);
      sub_1000375E4();
      sub_100039B9C();
      v53 = sub_10000C830(v47);
      v55 = sub_100037610(v53, v54, &v122);

      *(v43 + 4) = v55;
      sub_100037588(&_mh_execute_header, v56, v57, "Unable to find message %{public}s in processing store");
      sub_10000C54C(v50);
      sub_10000EB00(v50);
      sub_10003756C();
    }

    else
    {

      sub_10000C830(v47);
    }

    sub_1000372B4();
    swift_allocError();
    *v77 = 0;
    swift_willThrow();
  }

  else
  {
    v115 = v42;
    v116 = v3;
    sub_1000370AC();
    v58 = v121 + 16;
    v59 = *(v121 + 16);
    (v59)(v46, v118, v9);
    v60 = v114;
    v113 = v58;
    v107 = v59;
    (v59)(v114, v20, v9);
    v61 = sub_10003970C();
    v62 = sub_1000399CC();
    v63 = os_log_type_enabled(v61, v62);
    v106 = a1;
    v108 = v43;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v105 = v20;
      v65 = v64;
      v104 = swift_slowAlloc();
      v122 = v104;
      *v65 = 136446466;
      sub_100037308(&qword_1000592D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v103 = v62;
      v66 = sub_100039B9C();
      v68 = v67;
      v69 = *(v121 + 8);
      (v69)(v46, v9);
      v70 = sub_10000BFDC(v66, v68, &v122);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2082;
      v71 = sub_100039B9C();
      v73 = v72;
      v117 = v69;
      (v69)(v60, v9);
      v74 = sub_10000BFDC(v71, v73, &v122);

      *(v65 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v61, v103, "Found message, moving video from %{public}s to %{public}s", v65, 0x16u);
      v75 = v104;
      swift_arrayDestroy();
      sub_10000EB00(v75);
      v76 = v65;
      v20 = v105;
      sub_10000EB00(v76);
    }

    else
    {

      v78 = *(v121 + 8);
      (v78)(v60, v9);
      v117 = v78;
      (v78)(v46, v9);
    }

    v79 = [objc_opt_self() defaultManager];
    sub_10003959C(1);
    v80 = sub_10003985C();

    sub_10003959C(1);
    v81 = sub_10003985C();

    v122 = 0;
    v82 = [v79 copyItemAtPath:v80 toPath:v81 error:&v122];

    v48 = v122;
    v83 = v116;
    if (v82)
    {
      v84 = v20;
      v85 = v122;
      v86 = sub_10003970C();
      v87 = sub_1000399CC();
      if (os_log_type_enabled(v86, v87))
      {
        *sub_1000216D8() = 0;
        sub_1000375F0(&_mh_execute_header, v88, v89, "Finished processing and moved video");
        sub_10003756C();
      }

      v91 = v111;
      v90 = v112;
      v92 = v106;
      (*(v112 + 16))(v111, v106, v120);
      sub_10000C944(0, &qword_100059910, TUSandboxExtendedURL_ptr);
      v93 = v110;
      (v107)(v110, v84, v9);
      v94 = sub_100037210(v93, 0);
      v95 = objc_allocWithZone(TUMomentsRawVideoMessageDescriptor);
      v96 = sub_100030324(v91, v94);
      v97 = v109;
      sub_100030800(v92, v109);
      sub_10000C8EC(v97, &qword_100058C90, &unk_10003F290);
      v98 = [v96 uuid];
      sub_10003960C();

      v99 = *(v115 + 28);
      v48 = v96;
      swift_isUniquelyReferenced_nonNull_native();
      v122 = *&v83[v99];
      sub_100030BF0();
      *&v83[v99] = v122;
      (*(v90 + 8))(v91, v120);
      (v117)(v84, v9);
    }

    else
    {
      v100 = v122;
      sub_10003951C();

      swift_willThrow();
      (v117)(v20, v9);
    }
  }

  return v48;
}

uint64_t sub_100036E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for MessageRequest(0);
  __chkstk_darwin(v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000BF08(a1, 1, v12) == 1)
  {
    sub_10000C8EC(a1, &qword_100058C90, &unk_10003F290);
    sub_100030800(a2, v8);
    v13 = sub_10003962C();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_10000C8EC(v8, &qword_100058C90, &unk_10003F290);
  }

  else
  {
    sub_10000C768(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100030A9C(v11, a2, isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v22[0], *v3, v22[2], v22[3]);
    *v3 = v22[1];
    v21 = sub_10003962C();
    return (*(*(v21 - 8) + 8))(a2, v21);
  }
}

Swift::Int sub_100037048(char a1)
{
  sub_100039C1C();
  sub_100039C2C(a1 & 1);
  return sub_100039C3C();
}

uint64_t sub_1000370AC()
{
  v0 = sub_10003952C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MessageStore(0);
  v6[0] = sub_1000395DC();
  v6[1] = v4;
  v7._countAndFlagsBits = 0x766F6D2E7761725FLL;
  v7._object = 0xE800000000000000;
  sub_1000398CC(v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  sub_10000E944();
  sub_1000395BC();
  (*(v1 + 8))(v3, v0);
}

id sub_100037210(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10003955C(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 withExtensionType:a2];

  v9 = sub_1000395CC();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

unint64_t sub_1000372B4()
{
  result = qword_100059B90;
  if (!qword_100059B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059B90);
  }

  return result;
}

uint64_t sub_100037308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageStoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000374A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000374EC()
{
  result = qword_100059B98;
  if (!qword_100059B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059B98);
  }

  return result;
}

uint64_t sub_10003756C()
{
}

void sub_100037588(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

BOOL sub_1000375A8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1000375F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t sub_100037610(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_10000BFDC(v3, v4, a3);
}

id sub_100037628()
{
  type metadata accessor for FTLivePhotoIDSService();
  result = sub_100023F48(0xD000000000000023, 0x800000010003EED0);
  qword_100059BA0 = result;
  return result;
}

id sub_100037698()
{
  if (qword_100058AA8 != -1)
  {
    swift_once();
  }

  v1 = qword_100059BA0;

  return v1;
}

id sub_1000376F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTLivePhotoIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100037810()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

_BYTE *storeEnumTagSinglePayload for MessageControllerStateMachine(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003795CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_100037994()
{
  if (*v0)
  {
    sub_100021228();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
  }

  else
  {
    *v0 = 1;
  }
}

void sub_1000379F8()
{
  v1 = *v0;
  sub_100037A5C("start()", 7, 2, *v0);
  if (v1 == 1)
  {
    sub_100037C58(2);
  }

  else
  {
    sub_100037E80(1, v1);
  }
}

void sub_100037A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_100058A98 != -1)
  {
    swift_once();
  }

  v5 = sub_10003972C();
  sub_10000BF30(v5, qword_10005AB08);
  oslog = sub_10003970C();
  v6 = sub_1000399CC();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = sub_100039B1C();
    v10 = sub_10000BFDC(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    if (a4)
    {
      if (a4 == 1)
      {
        v11 = 0xD000000000000014;
      }

      else
      {
        v11 = 0x64657472617473;
      }

      if (a4 == 1)
      {
        v12 = 0x800000010003D4E0;
      }

      else
      {
        v12 = 0xE700000000000000;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      v11 = 0x676E6974696177;
    }

    v13 = sub_10000BFDC(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Called %{public}s with state %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100037C58(char a1)
{
  v3 = *v1;
  *v1 = a1;
  if (qword_100058A98 != -1)
  {
    swift_once();
  }

  v4 = sub_10003972C();
  sub_10000BF30(v4, qword_10005AB08);
  oslog = sub_10003970C();
  v5 = sub_1000399CC();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = 0x676E6974696177;
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = 0xD000000000000014;
    v9 = 0x800000010003D4E0;
    if (v3 != 1)
    {
      v8 = 0x64657472617473;
      v9 = 0xE700000000000000;
    }

    if (v3)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x676E6974696177;
    }

    if (v3)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = sub_10000BFDC(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = 0xD000000000000014;
      }

      else
      {
        v6 = 0x64657472617473;
      }

      if (a1 == 1)
      {
        v13 = 0x800000010003D4E0;
      }

      else
      {
        v13 = 0xE700000000000000;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = sub_10000BFDC(v6, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v5, "State transform from '%{public}s' to '%{public}s' succeeded", v7, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100037E80(char a1, char a2)
{
  if (qword_100058A98 != -1)
  {
    swift_once();
  }

  v4 = sub_10003972C();
  sub_10000BF30(v4, qword_10005AB08);
  v5 = sub_10003970C();
  v6 = sub_1000399AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0x676E6974696177;
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 0xD000000000000014;
      }

      else
      {
        v9 = 0x64657472617473;
      }

      if (a2 == 1)
      {
        v10 = 0x800000010003D4E0;
      }

      else
      {
        v10 = 0xE700000000000000;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      v9 = 0x676E6974696177;
    }

    v11 = sub_10000BFDC(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    if (a1)
    {
      if (a1 == 1)
      {
        v7 = 0xD000000000000014;
      }

      else
      {
        v7 = 0x64657472617473;
      }

      if (a1 == 1)
      {
        v12 = 0x800000010003D4E0;
      }

      else
      {
        v12 = 0xE700000000000000;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_10000BFDC(v7, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Invalid state '%{public}s' expected '%{public}s'", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_100021228();
  swift_allocError();
  *v14 = 0;
  return swift_willThrow();
}

void sub_1000380CC()
{
  v1 = *v0;
  sub_100037A5C("end()", 5, 2, *v0);
  if (v1 == 2)
  {
    sub_100037C58(0);
  }

  else
  {
    sub_100037E80(2, v1);
  }
}

void sub_100038130()
{
  sub_100037A5C("reset()", 7, 2, *v0);

  sub_100037C58(0);
}

void sub_1000381D0(uint64_t a1, char a2, os_log_t log)
{
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Rejecting the connection since it is not entitled %@, lockdownModeEnabled: %@", &v4, 0x16u);
}

void sub_100038270()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_10000289C();
  sub_1000028B4(&_mh_execute_header, v1, v2, "failed to resolve temporary directory (%d): %s", v3, v4, v5, v6);
}

void sub_1000382F8()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_10000289C();
  sub_1000028B4(&_mh_execute_header, v1, v2, "failed to initialize temporary directory (%d): %s", v3, v4, v5, v6);
}

void sub_1000384B8()
{
  sub_100007AA0();
  sub_100007A94();
  sub_100007A74(&_mh_execute_header, v0, v1, "Failed to donate %@ to firewall with error %@");
}

void sub_1000385FC(uint64_t a1, id *a2)
{
  v2 = [*a2 sessionsByToken];
  sub_100007A94();
  sub_100007A4C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000386A4(uint64_t a1, void *a2)
{
  v2 = [a2 remoteIDSDestinations];
  sub_100007A94();
  sub_100007A4C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100038AD8()
{
  sub_100007AA0();
  sub_100007A94();
  sub_100007A5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100038F00(void *a1)
{
  v1 = [a1 transactionID];
  sub_100007A68();
  sub_100007A4C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100038F8C(uint64_t a1, void *a2)
{
  v2 = [a2 remoteIDSDestinations];
  sub_100007A94();
  sub_100007A4C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003909C(void *a1)
{
  [a1 streamToken];
  sub_100007A68();
  sub_100007A4C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100039408()
{
  sub_10000A11C();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error zipping directory at URL %@ to output URL %@", v2, 0x16u);
}

void sub_100039484()
{
  sub_10000A11C();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error occurred during IMFileCopierOperation type %ld on inputURL %@ and outputURL %@", v4, 0x20u);
}