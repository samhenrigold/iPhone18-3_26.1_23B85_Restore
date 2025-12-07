double sub_1000F1008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __IOSurface *a5)
{
  if (swift_weakLoadStrong())
  {
    sub_1000C4270(a2, *(a3 + 24), *(a3 + 32), *(a3 + 40), a4, a5);
  }

  if (*(a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_debugPreviewLayer))
  {

    sub_1000B9F04(a2, a3, a4, a5);
  }

  return result;
}

void sub_1000F10D4(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v102 = a8;
  v95 = a7;
  v92 = a6;
  v101 = a5;
  v94 = a4;
  v93 = a3;
  v96 = a1;
  v99 = type metadata accessor for CameraSourceFrameMetadata();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DetectionRequest();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v90 - v18;
  v100 = a2;
  v91 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamRequests;
  v20 = *(a2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamRequests);
  v21 = *(v20 + 16);

  v22 = _swiftEmptyArrayStorage;
  v109 = v21;
  if (!v21)
  {
LABEL_12:

    *v96 = v22;

    v32 = v100;
    sub_1000EE954(a9);
    if (v33)
    {
      v35 = v34;
      sub_1000EC20C(v33, sub_100095654, &type metadata accessor for DetectionResult);
      v36 = v94;
      *v94 = v35;
      *(v36 + 4) = BYTE4(v35) & 1;
    }

    v37 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamMetadata;
    swift_beginAccess();

    v39 = sub_1000F241C(v38, a9);

    *(v32 + v37) = v39;

    v40 = v97;
    dispatch thunk of CameraSourceFrame.metadata.getter();
    v41 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
    (*(v98 + 8))(v40, v99);
    if (v41)
    {
      v42 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest;
      if (*(v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest))
      {
        return;
      }

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v110[0] = v46;
        *v45 = 134218242;
        *(v45 + 4) = a9;
        *(v45 + 12) = 2080;
        if (*(v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp + 8))
        {
          v47 = 7104878;
          v48 = 0xE300000000000000;
        }

        else
        {
          v47 = Double.description.getter();
          v48 = v53;
        }

        v54 = sub_1000E0FE0(v47, v48, v110);

        *(v45 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v43, v44, "Still image processing: currentFrameTime=%f, plausibleFinalFrameTimestamp=%s", v45, 0x16u);
        sub_100006B44(v46);

        v32 = v100;
      }

      else
      {
      }

      v55 = (v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp);
      if ((*(v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp + 8) & 1) != 0 || (v56 = *v55, *v55 <= a9))
      {
        v57 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v57, v60))
        {
          v56 = a9;
          goto LABEL_35;
        }

        v61 = swift_slowAlloc();
        *v61 = 134217984;
        *(v61 + 4) = a9;
        _os_log_impl(&_mh_execute_header, v57, v60, "Using original still image timestamp %f (no override needed)", v61, 0xCu);
        v56 = a9;
      }

      else
      {
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v57, v58))
        {
LABEL_35:

          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 134217984;
            *(v64 + 4) = v56;
            _os_log_impl(&_mh_execute_header, v62, v63, "Creating StillImageMediaManifest with final timestamp: %f", v64, 0xCu);
          }

          v65 = CameraSourceFrame.createStillImageMediaManifest(cvCoordinator:overrideTimestamp:)();
          *(v32 + v42) = v65;

          *v92 = v65;

          *(v32 + v37) = sub_100097C40(_swiftEmptyArrayStorage);

          *(v32 + v91) = _swiftEmptyArrayStorage;

          v49 = v95;
          v50 = *(v95 + 40);
          goto LABEL_38;
        }

        v59 = swift_slowAlloc();
        *v59 = 134218240;
        *(v59 + 4) = a9;
        *(v59 + 12) = 2048;
        *(v59 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v57, v58, "Still image timestamp %f is too far in the past; overriding it with %f", v59, 0x16u);
      }

      goto LABEL_35;
    }

    v49 = v95;
    v50 = *(v95 + 40);
    if (v50 != 1)
    {
      if (v50 != 3)
      {
LABEL_38:
        v52 = *(v49 + 24);
        v51 = *(v49 + 32);
        if (v50 < 2)
        {
          goto LABEL_48;
        }

        if (v50 == 2)
        {

          LOBYTE(v50) = 2;
          goto LABEL_48;
        }

LABEL_41:
        if (v52 | v51)
        {
          if (v52 ^ 1 | v51)
          {
            v79 = v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp;
            v80 = *v79;
            if (*(v79 + 8))
            {
              v80 = -INFINITY;
            }

            if (v80 > a9)
            {
              v81 = v80;
            }

            else
            {
              v81 = a9;
            }

            v82 = Logger.logObject.getter();
            v83 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v110[0] = v85;
              *v84 = 136315650;
              if (*(v79 + 8))
              {
                v86 = 7104878;
                v87 = 0xE300000000000000;
              }

              else
              {
                v86 = Double.description.getter();
                v87 = v88;
              }

              v89 = sub_1000E0FE0(v86, v87, v110);

              *(v84 + 4) = v89;
              *(v84 + 12) = 2048;
              *(v84 + 14) = v81;
              *(v84 + 22) = 2048;
              *(v84 + 24) = a9;
              _os_log_impl(&_mh_execute_header, v82, v83, "pauseRequested: updating plausibleFinalFrameTimestamp from %s to %f (currentFrameTime: %f)", v84, 0x20u);
              sub_100006B44(v85);
            }

            *v79 = v81;
            *(v79 + 8) = 0;
          }

          else
          {
            v66 = v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp;
            if (*(v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp + 8) == 1)
            {
              v67 = Logger.logObject.getter();
              v68 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                *v69 = 134217984;
                *(v69 + 4) = a9;
                _os_log_impl(&_mh_execute_header, v67, v68, "pausing fallback: setting plausibleFinalFrameTimestamp to %f", v69, 0xCu);
              }

              *v66 = a9;
              *(v66 + 8) = 0;
            }
          }

          return;
        }

        LOBYTE(v50) = 3;
LABEL_48:
        v70 = v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp;
        if (*(v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp + 8) == 1)
        {
          sub_1000616E4(v52, v51, v50);
        }

        else
        {
          v114[0] = *v49;

          sub_100060424(v52, v51, v50);
          sub_1000C5274(v114, v110);
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.debug.getter();

          sub_1000F2F48(v114);
          sub_1000616E4(v52, v51, v50);
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v112 = v74;
            *v73 = 134218242;
            v75 = *v70;
            if (*(v70 + 8))
            {
              v75 = -INFINITY;
            }

            *(v73 + 4) = v75;
            *(v73 + 12) = 2080;
            v110[0] = v52;
            v110[1] = v51;
            v111 = v50;
            v76 = String.init<A>(describing:)();
            v78 = sub_1000E0FE0(v76, v77, &v112);

            *(v73 + 14) = v78;
            _os_log_impl(&_mh_execute_header, v71, v72, "Clearing plausibleFinalFrameTimestamp (was %f) due to state %s", v73, 0x16u);
            sub_100006B44(v74);
          }

          else
          {
            sub_1000616E4(v52, v51, v50);
          }
        }

        *v70 = 0;
        *(v70 + 8) = 1;
        return;
      }

      v52 = *(v95 + 24);
      v51 = *(v95 + 32);
      if (v51 || v52 != 2)
      {
        goto LABEL_41;
      }
    }

    *(v32 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest) = 0;

    goto LABEL_38;
  }

  v23 = 0;
  v107 = (v14 + 32);
  v108 = v14 + 16;
  v103 = (v14 + 8);
  v104 = v17;
  v105 = v20;
  v106 = v13;
  while (v23 < *(v20 + 16))
  {
    v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v25 = *(v14 + 72);
    (*(v14 + 16))(v19, v20 + v24 + v25 * v23, v13);
    DetectionRequest.timestamp.getter();
    if (v26 > a9)
    {
      (*v103)(v19, v13);
    }

    else
    {
      v27 = *v107;
      (*v107)(v17, v19, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10005973C(0, v22[2] + 1, 1);
        v22 = v113;
      }

      v30 = v22[2];
      v29 = v22[3];
      if (v30 >= v29 >> 1)
      {
        sub_10005973C((v29 > 1), v30 + 1, 1);
        v22 = v113;
      }

      v22[2] = v30 + 1;
      v31 = v22 + v24 + v30 * v25;
      v17 = v104;
      v13 = v106;
      v27(v31, v104, v106);
      v20 = v105;
    }

    if (v109 == ++v23)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1000F1C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000F1CB4, 0, 0);
}

uint64_t sub_1000F1CB4()
{
  v0[4] = *(v0[2] + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_actionPredictor);
  v0[5] = sub_100013608(&qword_1001DB510, &qword_1001DB518, &qword_10017B468, &protocol conformance descriptor for StillImageMediaManifest<A>);
  type metadata accessor for ActionPredictor();
  sub_1000F46BC(&qword_1001DA748, &type metadata accessor for ActionPredictor, &protocol conformance descriptor for ActionPredictor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F1DB0, v2, v1);
}

uint64_t sub_1000F1DB0()
{
  dispatch thunk of ActionPredictor.setVisionProvider(_:)();
  v3 = (&async function pointer to dispatch thunk of StillImageMediaManifest.ingest() + async function pointer to dispatch thunk of StillImageMediaManifest.ingest());
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000E7F68;

  return v3();
}

uint64_t sub_1000F1E60(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 160) = v18;
  *(v12 + 144) = v17;
  *(v12 + 128) = a11;
  *(v12 + 136) = a12;
  *(v12 + 112) = a3;
  *(v12 + 120) = a4;
  *(v12 + 96) = a1;
  *(v12 + 104) = a2;
  *(v12 + 80) = a9;
  *(v12 + 88) = a10;
  *(v12 + 72) = a8;
  v13 = sub_1000033A8(&qword_1001DB520, &qword_10017B470);
  *(v12 + 168) = v13;
  *(v12 + 176) = *(v13 - 8);
  *(v12 + 184) = swift_task_alloc();
  v14 = type metadata accessor for Angle();
  *(v12 + 192) = v14;
  *(v12 + 200) = *(v14 - 8);
  *(v12 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_1000F1FD8, 0, 0);
}

uint64_t sub_1000F1FD8()
{
  *(v0 + 64) = 0;
  v1 = (v0 + 64);
  v2 = sub_1000ED6C8();
  if (v2 && (v3 = v2, v4 = [v2 executeWithColor:*(v0 + 80) outDisparity:v0 + 64], v3, !v4) && (v13 = *v1) != 0)
  {
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v34 = *(v0 + 192);
    v16 = *(v0 + 136);
    type metadata accessor for CVCoordinator();
    CVPixelBufferGetWidth(v13);
    CVPixelBufferGetHeight(v13);
    static CVCoordinator.denormalizeCropRect(cropRect:width:height:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    CameraSourceFrame.rotationAngle.getter();
    v25 = sub_1000210D4(v18, v20, v22, v24, v14, v16);
    (*(v15 + 8))(v14, v34);
    v27 = *(v0 + 176);
    v26 = *(v0 + 184);
    v28 = *(v0 + 168);
    v29 = *(v0 + 88);
    if (v25)
    {
      *(v0 + 48) = v29;
      *(v0 + 56) = v25;
      v30 = v29;
      v31 = v25;
      sub_1000033A8(&qword_1001DB528, &unk_10017B478);
      AsyncStream.Continuation.yield(_:)();
    }

    else
    {
      v32 = [objc_allocWithZone(CIImage) init];
      *(v0 + 32) = v29;
      *(v0 + 40) = v32;
      v33 = v29;
      sub_1000033A8(&qword_1001DB528, &unk_10017B478);
      AsyncStream.Continuation.yield(_:)();
    }

    (*(v27 + 8))(v26, v28);
    sub_100006AAC(*(v0 + 144), *(*(v0 + 144) + 24));
    dispatch thunk of LoggingSignposter.Interval.end()();
  }

  else
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 168);
    v8 = *(v0 + 88);
    v9 = [objc_allocWithZone(CIImage) init];
    *(v0 + 16) = v8;
    *(v0 + 24) = v9;
    v10 = v8;
    sub_1000033A8(&qword_1001DB528, &unk_10017B478);
    AsyncStream.Continuation.yield(_:)();
    (*(v6 + 8))(v5, v7);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000F2314(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewStartedCallback);
  v4 = *(v2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewStartedCallback);
  v5 = *(v2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewStartedCallback + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_100005640(v4, v5);
}

void sub_1000F235C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t *sub_1000F2394(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000F2590(result, a4, a2, a3);

    return v8;
  }

  return result;
}

unint64_t *sub_1000F241C(uint64_t a1, double a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1000F2590(v8, a2, v6, v4);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1000F2394(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_1000F2590(unint64_t *result, double a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a4 + 48) + 8 * v12) > a2)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1000F267C(result, a3, v5, a4);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_1000F267C(result, a3, v5, a4);
    }

    v14 = *(a4 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F267C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000033A8(&qword_1001D9CA0, &qword_100178A30);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v32 = *(v18 + 20);
    result = static Hasher._hash(seed:_:)();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v17;
    v30 = *(v9 + 56) + 24 * v25;
    *v30 = v19;
    *(v30 + 8) = v20;
    *(v30 + 16) = v21;
    *(v30 + 20) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000F28D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 8) >= 5uLL)
  {
  }

  sub_1000616E4(*(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40));

  return swift_deallocObject();
}

double sub_1000F2A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000F2A54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 8) >= 5uLL)
  {
  }

  sub_1000616E4(*(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40));

  return swift_deallocObject();
}

void sub_1000F2B44()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 72) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1000F10D4(*(v0 + 32), *(v0 + 40), *(v0 + 56), *(v0 + 64), v0 + v1, *(v0 + v2), v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8), *(v0 + 16), *(v0 + 48), *(v0 + 24));
}

uint64_t sub_1000F2BE4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  sub_100006B44((v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1000F2CE4(uint64_t a1)
{
  v3 = (*(*(*(v1 + 4) - 8) + 80) + 104) & ~*(*(*(v1 + 4) - 8) + 80);
  v14 = *(v1 + 3);
  v15 = *(v1 + 2);
  v4 = *(v1 + 6);
  v5 = *(v1 + 7);
  v6 = *(v1 + 8);
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  v11 = *(v1 + ((*(*(*(v1 + 4) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100019340;

  return sub_1000F1E60(v7, v8, v9, v10, a1, v15, v14, v4, v5, v6, v1 + v3, v11);
}

void sub_1000F2E68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer__previewRunningInternal;
  **(v0 + 16) = *(v1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer__previewRunningInternal);
  *(v1 + v3) = v2;
}

uint64_t sub_1000F2E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_1000F1C94(a1, v4, v5, v7, v6);
}

void *sub_1000F2F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a1;
  v53 = a3;
  v54 = *v3;
  v55 = a2;
  v5 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v5 - 8);
  v51 = v39 - v6;
  v49 = sub_1000033A8(&qword_1001DB550, &unk_10017B4E8);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = v39 - v7;
  v50 = sub_1000033A8(&qword_1001DB528, &unk_10017B478);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44 = v39 - v8;
  v45 = sub_1000033A8(&qword_1001DA780, &qword_10017A0F0);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = v39 - v9;
  v56 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v56 - 8);
  __chkstk_darwin(v56);
  v41 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for Logger();
  __chkstk_darwin(v14 - 8);
  static Log.cameraSource.getter();
  static Log.cameraSource.getter();
  LoggingSignposter.init(logger:)();
  v15 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer__previewRunningInternal;
  type metadata accessor for RellenoGlobalSettings();
  static RellenoGlobalSettings.shared.getter();
  v16 = dispatch thunk of RellenoGlobalSettings.isUnitTest.getter();

  *(v3 + v15) = v16 & 1;
  v40 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewLayerCallbackQueue;
  v17 = sub_100014FBC();
  v39[5] = "ception on frame queue: ";
  v39[6] = v17;
  static DispatchQoS.unspecified.getter();
  v57 = _swiftEmptyArrayStorage;
  v39[3] = sub_1000F46BC(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v39[2] = sub_1000033A8(&unk_1001D6B50, &unk_100175C40);
  v39[4] = sub_100013608(&unk_1001D8050, &unk_1001D6B50, &unk_100175C40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v19 = *(v10 + 104);
  v39[1] = v10 + 104;
  v20 = v41;
  v19(v41, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v56);
  *(v4 + v40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_weakInit();
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_debugPreviewLayer) = 0;
  v21 = (v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewStartedCallback);
  *v21 = 0;
  v21[1] = 0;
  v40 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue;
  static DispatchQoS.unspecified.getter();
  v57 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19(v20, v18, v56);
  *(v4 + v40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataProducerInternal;
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingProcessorTask) = 0;
  v23 = v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataConsumer;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamMetadata) = &_swiftEmptyDictionarySingleton;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamRequests) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest) = 0;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_cvcPrepared) = 0;
  v24 = v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp;
  *v24 = 0;
  v24[8] = 1;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_awaitingCaptureEffects) = 1;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___captureEffectsContext) = 1;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_monocularDepthAspectRatio) = 4;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___monocularDepthExecutor) = 1;
  v25 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_captureEffectsStreamInternal;
  v26 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_captureEffectsStreamContinuation;
  v28 = v46;
  v27 = v47;
  v29 = v49;
  (*(v47 + 104))(v46, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v49);
  v30 = v42;
  v31 = v44;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v27 + 8))(v28, v29);
  (*(v43 + 32))(v4 + v25, v30, v45);
  (*(v48 + 32))(v4 + v26, v31, v50);
  v32 = v53;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_coordinator) = v52;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_actionPredictor) = v32;
  v33 = type metadata accessor for TaskPriority();
  v34 = v51;
  (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v37 = v54;
  v36[4] = v55;
  v36[5] = v35;
  v36[6] = v37;

  sub_100044AB8(0, 0, v34, &unk_10017B500, v36);

  return v4;
}

uint64_t sub_1000F387C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019774;

  return sub_1000EF4B4(v7, v8, a1, v4, v5, v6);
}

uint64_t sub_1000F394C()
{

  return swift_deallocObject();
}

uint64_t sub_1000F3984()
{

  return swift_deallocObject();
}

uint64_t sub_1000F39D4()
{

  return swift_deallocObject();
}

uint64_t sub_1000F3A0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000F3A58()
{

  return swift_deallocObject();
}

uint64_t sub_1000F3AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DB530, &qword_10017B4A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F3B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_1000ECD84(a1, v4, v5, v7, v6);
}

uint64_t sub_1000F3C5C(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000F3CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019340;

  return sub_1000ED74C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000F3DA8(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return swift_deallocObject();
}

void sub_1000F3E18(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DetectionRequest();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v91 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v91 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v91 - v11;
  v13 = __chkstk_darwin(v10);
  v114 = &v91 - v14;
  __chkstk_darwin(v13);
  v94 = &v91 - v15;
  v16 = type metadata accessor for CVDetection.DetectionType();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v105 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v111 = &v91 - v21;
  __chkstk_darwin(v20);
  v99 = &v91 - v22;
  v118 = a2;

  sub_1000EC20C(v23, sub_10009562C, &type metadata accessor for DetectionRequest);
  v24 = sub_100091708(v118);

  v103 = v24;
  v26 = sub_1000EE478(v25);
  sub_1000033A8(&qword_1001DB568, &unk_10017B518);
  v27 = static _DictionaryStorage.copy(original:)();
  v28 = v3;
  v29 = v27;
  v30 = 0;
  v31 = v26[8];
  v93 = v26 + 8;
  v101 = v26;
  v32 = 1 << *(v26 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v92 = (v32 + 63) >> 6;
  v98 = v17 + 16;
  v102 = v17;
  v110 = v17 + 32;
  v115 = (v4 + 8);
  v116 = v4 + 16;
  v117 = v4;
  v112 = (v4 + 32);
  v35 = v16;
  v36 = v9;
  v97 = v27 + 64;
  v104 = v28;
  v96 = v9;
  v109 = v27;
  v95 = v16;
  if (v34)
  {
LABEL_4:
    v37 = __clz(__rbit64(v34));
    v106 = (v34 - 1) & v34;
    goto LABEL_10;
  }

  while (1)
  {
    v38 = v30;
    do
    {
      v30 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_45;
      }

      if (v30 >= v92)
      {

        v66 = 0;
        v67 = v103 + 56;
        v68 = 1 << *(v103 + 32);
        v69 = -1;
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        v70 = v69 & *(v103 + 56);
        v71 = (v68 + 63) >> 6;
        v72 = (v102 + 8);
        v114 = _swiftEmptyArrayStorage;
        if (!v70)
        {
LABEL_30:
          while (1)
          {
            v74 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
              goto LABEL_46;
            }

            if (v74 >= v71)
            {

              return;
            }

            v70 = *(v67 + 8 * v74);
            ++v66;
            if (v70)
            {
              v66 = v74;
              goto LABEL_34;
            }
          }
        }

        while (1)
        {
LABEL_34:
          while (1)
          {
            v75 = __clz(__rbit64(v70));
            v70 &= v70 - 1;
            v76 = *(v117 + 72);
            (*(v117 + 16))(v36, *(v103 + 48) + v76 * (v75 | (v66 << 6)), v28);
            DetectionRequest.timestamp.getter();
            v78 = v77;
            v79 = v105;
            DetectionRequest.detectionType.getter();
            v80 = v109;
            if (v109[2])
            {
              break;
            }

            v73 = *v72;
LABEL_28:
            v28 = v104;
            v73(v105, v35);
LABEL_29:
            (*v115)(v36, v28);
            if (!v70)
            {
              goto LABEL_30;
            }
          }

          v81 = sub_100095CDC(v79);
          v73 = *v72;
          if ((v82 & 1) == 0)
          {
            goto LABEL_28;
          }

          v83 = *(v80[7] + 8 * v81);
          v73(v79, v35);
          v28 = v104;
          if (v78 != v83)
          {
            goto LABEL_29;
          }

          v84 = *v112;
          (*v112)(v91, v36, v104);
          v85 = v114;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v118 = v85;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10005973C(0, *(v85 + 16) + 1, 1);
            v28 = v104;
            v85 = v118;
          }

          v88 = *(v85 + 16);
          v87 = *(v85 + 24);
          v89 = v88 + 1;
          if (v88 >= v87 >> 1)
          {
            sub_10005973C((v87 > 1), v88 + 1, 1);
            v89 = v88 + 1;
            v28 = v104;
            v85 = v118;
          }

          *(v85 + 16) = v89;
          v90 = *(v117 + 80);
          v114 = v85;
          v84((v85 + ((v90 + 32) & ~v90) + v88 * v76), v91, v28);
          v36 = v96;
          v35 = v95;
          if (!v70)
          {
            goto LABEL_30;
          }
        }
      }

      v39 = v93[v30];
      ++v38;
    }

    while (!v39);
    v37 = __clz(__rbit64(v39));
    v106 = (v39 - 1) & v39;
LABEL_10:
    v40 = v37 | (v30 << 6);
    v42 = v101;
    v41 = v102;
    v43 = v101[6];
    v44 = *(v102 + 16);
    v107 = *(v102 + 72) * v40;
    v45 = v99;
    v44(v99, v43 + v107, v35);
    v46 = v42[7];
    v108 = v40;
    v47 = *(v46 + 8 * v40);
    v48 = *(v41 + 32);
    v49 = v47;
    v48(v111, v45, v35);
    v50 = *(v49 + 16);
    if (v50)
    {
      break;
    }

    v54 = 0;
LABEL_14:
    v55 = v108;
    *(v97 + ((v108 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v108;
    v48((v29[6] + v107), v111, v35);
    *(v29[7] + 8 * v55) = v54;
    v56 = v29[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_47;
    }

    v29[2] = v58;
    v34 = v106;
    if (v106)
    {
      goto LABEL_4;
    }
  }

  v100 = v48;
  v51 = *(v117 + 16);
  v113 = v49 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
  v51(v114);

  if (v50 == 1)
  {
LABEL_12:
    v52 = v94;
    (*v112)(v94, v114, v28);
    DetectionRequest.timestamp.getter();
    v28 = v104;
    v54 = v53;

    (*v115)(v52, v28);
    v36 = v96;
    v35 = v95;
    v29 = v109;
    v48 = v100;
    goto LABEL_14;
  }

  v59 = 1;
  while (v59 < *(v49 + 16))
  {
    v60 = v117;
    (v51)(v12, v113 + *(v117 + 72) * v59, v28);
    v61 = v114;
    DetectionRequest.timestamp.getter();
    v63 = v62;
    DetectionRequest.timestamp.getter();
    v64 = *(v60 + 8);
    if (v63 >= v65)
    {
      v64(v12, v28);
    }

    else
    {
      v64(v61, v28);
      (*v112)(v61, v12, v28);
    }

    if (v50 == ++v59)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_1000F46BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F47C8()
{
  v1 = v0;
  *(v0 + 16) = 0;
  v2 = type metadata accessor for FileWriter();
  default argument 0 of FileWriter.init(prefix:)();
  v8[3] = v2;
  v8[4] = &protocol witness table for FileWriter;
  v8[0] = FileWriter.__allocating_init(prefix:)();
  v3 = type metadata accessor for ImageDataConfiguration();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC6Tamale22ImageDataConfiguration_shouldPersistContext] = 0;
  sub_10002A860(v8, &v4[OBJC_IVAR____TtC6Tamale22ImageDataConfiguration_fileWriter]);
  *&v4[OBJC_IVAR____TtC6Tamale22ImageDataConfiguration_itemProvidersForActivityItemsConfiguration] = _swiftEmptyArrayStorage;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_100006B44(v8);
  *(v1 + 24) = v5;
  return v1;
}

__n128 sub_1000F4898(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F48AC(uint64_t *a1, int a2)
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

uint64_t sub_1000F48F4(uint64_t result, int a2, int a3)
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

uint64_t sub_1000F4970@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for ScrollBounceBehavior();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000033A8(&qword_1001DB670, &qword_10017B698);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v31 - v5;
  v39 = sub_1000033A8(&qword_1001DB678, &qword_10017B6A0);
  v35 = *(v39 - 8);
  __chkstk_darwin(v39);
  v34 = &v31 - v7;
  v33 = sub_1000033A8(&qword_1001DB680, &qword_10017B6A8);
  __chkstk_darwin(v33);
  v9 = &v31 - v8;
  v36 = sub_1000033A8(&qword_1001DB688, &qword_10017B6B0);
  __chkstk_darwin(v36);
  v32 = &v31 - v10;
  v38 = sub_1000033A8(&qword_1001DB690, &qword_10017B6B8);
  __chkstk_darwin(v38);
  v12 = &v31 - v11;
  v37 = sub_1000033A8(&qword_1001DB698, &qword_10017B6C0);
  __chkstk_darwin(v37);
  v14 = &v31 - v13;
  v45 = v1;
  static Axis.Set.vertical.getter();
  sub_1000033A8(&qword_1001DB6A0, &qword_10017B6C8);
  sub_100013608(&qword_1001DB6A8, &qword_1001DB6A0, &qword_10017B6C8, &protocol conformance descriptor for ZStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v15 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_100013608(&qword_1001DB6B0, &qword_1001DB670, &qword_10017B698, &protocol conformance descriptor for ScrollView<A>);
  v16 = v34;
  v17 = v41;
  View.scrollBounceBehavior(_:axes:)();
  (*(v42 + 8))(v4, v43);
  (*(v40 + 8))(v6, v17);
  v18 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  (*(v35 + 32))(v9, v16, v39);
  v20 = &v9[*(v33 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v32;
  sub_10002091C(v9, v32, &qword_1001DB680, &qword_10017B6A8);
  v22 = (v21 + *(v36 + 36));
  v23 = v51;
  v22[4] = v50;
  v22[5] = v23;
  v22[6] = v52;
  v24 = v47;
  *v22 = v46;
  v22[1] = v24;
  v25 = v49;
  v22[2] = v48;
  v22[3] = v25;
  sub_10002091C(v21, v12, &qword_1001DB688, &qword_10017B6B0);
  *&v12[*(v38 + 36)] = 0;
  v26 = static SafeAreaRegions.all.getter();
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  sub_10002091C(v12, v14, &qword_1001DB690, &qword_10017B6B8);
  v27 = &v14[*(v37 + 36)];
  *v27 = v26;
  v27[8] = KeyPath;
  v28 = v44;
  sub_10002091C(v14, v44, &qword_1001DB698, &qword_10017B6C0);
  result = sub_1000033A8(&qword_1001DB6B8, &qword_10017B700);
  v30 = (v28 + *(result + 36));
  *v30 = sub_1000F5220;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = 0;
  return result;
}

uint64_t sub_1000F4FCC@<X0>(char *a1@<X8>)
{
  v2 = sub_1000033A8(&qword_1001D50B0, &unk_100172760);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  *a1 = static Alignment.center.getter();
  *(a1 + 1) = v9;
  v17[6] = 0;
  v18 = 1;
  sub_1000033A8(&qword_1001D50B8, &qword_100179550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100170800;
  v11 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v11;
  v12 = static Axis.Set.vertical.getter();
  *(inited + 33) = v12;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v11)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v12)
  {
    Axis.Set.init(rawValue:)();
  }

  v13 = *(sub_1000033A8(&qword_1001DB6C0, &qword_10017B708) + 44);
  static Alignment.center.getter();
  View.containerRelativeFrame(_:alignment:)();
  v14 = *(v3 + 16);
  v14(v6, v8, v2);
  v14(&a1[v13], v6, v2);
  v15 = *(v3 + 8);
  v15(v8, v2);
  return (v15)(v6, v2);
}

uint64_t sub_1000F5220()
{
  v0 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  AccessibilityNotification.ScreenChanged.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000F5344@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000F5370@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000F53F8()
{
  result = qword_1001DB6C8;
  if (!qword_1001DB6C8)
  {
    sub_10001276C(&qword_1001DB6B8, &qword_10017B700);
    sub_1000F5484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6C8);
  }

  return result;
}

unint64_t sub_1000F5484()
{
  result = qword_1001DB6D0;
  if (!qword_1001DB6D0)
  {
    sub_10001276C(&qword_1001DB698, &qword_10017B6C0);
    sub_1000F5510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6D0);
  }

  return result;
}

unint64_t sub_1000F5510()
{
  result = qword_1001DB6D8;
  if (!qword_1001DB6D8)
  {
    sub_10001276C(&qword_1001DB690, &qword_10017B6B8);
    v3 = sub_1000F559C();
    sub_1000CF0C0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6D8);
  }

  return result;
}

unint64_t sub_1000F559C()
{
  result = qword_1001DB6E0;
  if (!qword_1001DB6E0)
  {
    sub_10001276C(&qword_1001DB688, &qword_10017B6B0);
    sub_1000F5628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6E0);
  }

  return result;
}

unint64_t sub_1000F5628()
{
  result = qword_1001DB6E8;
  if (!qword_1001DB6E8)
  {
    sub_10001276C(&qword_1001DB680, &qword_10017B6A8);
    sub_10001276C(&qword_1001DB670, &qword_10017B698);
    sub_100013608(&qword_1001DB6B0, &qword_1001DB670, &qword_10017B698, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8, &unk_10017B710, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6E8);
  }

  return result;
}

char *sub_1000F5750()
{
  result = sub_1001522CC();
  v1 = *(result + 2);
  if (v1)
  {
    v2 = 0;
    v3 = result + 64;
    v4 = -v1;
    do
    {
      v5 = *(result + 2);
      if (v2 > v5)
      {
        v5 = v2;
      }

      v6 = -v5;
      v7 = &v3[5 * v2++];
      while (1)
      {
        if (v6 + v2 == 1)
        {
          __break(1u);
          return result;
        }

        v8 = *v7;
        if (*v7 && v8 != 2)
        {
          v10 = *(v7 - 4);
          v11 = *(v7 - 3);
          v12 = *(v7 - 2);
          v13 = *(v7 - 1);
          if (v8 != 3)
          {
            break;
          }

          if (v12 | v11 | v10 | v13)
          {
            v14 = v10 == 5 || v10 == 2;
            if (!v14 || (v12 | v11 | v13) != 0)
            {
              break;
            }
          }
        }

        ++v2;
        v7 += 40;
        if (v4 + v2 == 1)
        {
          goto LABEL_26;
        }
      }

      v20 = result;
      sub_100007F40(v10, v11, v12, v13, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000594A0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      v18 = v17 + 1;
      result = v20;
      if (v17 >= v16 >> 1)
      {
        sub_1000594A0((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
        result = v20;
      }

      _swiftEmptyArrayStorage[2] = v18;
      v19 = &_swiftEmptyArrayStorage[5 * v17];
      v19[4] = v10;
      v19[5] = v11;
      v19[6] = v12;
      v19[7] = v13;
      *(v19 + 64) = v8;
    }

    while (v4 + v2);
  }

LABEL_26:

  return _swiftEmptyArrayStorage;
}

double sub_1000F5908@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a2;
  v176 = a1;
  v4 = type metadata accessor for EnvironmentValues();
  v174 = *(v4 - 8);
  v175 = v4;
  __chkstk_darwin(v4);
  v173 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1000033A8(&qword_1001DB740, &qword_10017B788);
  v6 = __chkstk_darwin(v170);
  v169 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v168 = &v160 - v8;
  v167 = type metadata accessor for ActionPin.PermanentPill();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1000033A8(&qword_1001DB748, &qword_10017B790);
  v10 = __chkstk_darwin(v163);
  v162 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v161 = &v160 - v12;
  v13 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v13 - 8);
  *(&v164 + 1) = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v164 = sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  v15 = __chkstk_darwin(v164);
  v17 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v160 - v18;
  v20 = type metadata accessor for AppConfiguration(0);
  v21 = __chkstk_darwin(v20);
  v23 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v160 - v24;
  KeyPath = swift_getKeyPath();
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  type metadata accessor for LaunchOptions(0);
  sub_10013FB34(&qword_1001D41D0, type metadata accessor for LaunchOptions, &unk_100170620);
  v172 = KeyPath;

  *(a3 + 32) = Environment.init<A>(_:)();
  *(a3 + 40) = v27 & 1;
  type metadata accessor for SiriRequestStateResponder(0);
  sub_10013FB34(&qword_1001D4218, type metadata accessor for SiriRequestStateResponder, &unk_10017A484);
  *(a3 + 48) = Environment.init<A>(_:)();
  *(a3 + 56) = v28 & 1;
  *(a3 + 64) = swift_getKeyPath();
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  v29 = type metadata accessor for ContentView(0);
  v30 = v29[9];
  *(a3 + v30) = swift_getKeyPath();
  sub_1000033A8(&qword_1001D6230, &qword_100175138);
  swift_storeEnumTagMultiPayload();
  if (qword_1001D31E8 != -1)
  {
    swift_once();
  }

  v31 = sub_10002769C(v20, qword_1001DB728);
  sub_10013DAC8(v31, v25, type metadata accessor for AppConfiguration);
  sub_10013DAC8(v25, v23, type metadata accessor for AppConfiguration);
  State.init(wrappedValue:)();
  sub_10013E658(v25, type metadata accessor for AppConfiguration);
  v32 = type metadata accessor for ResultLookupState();
  (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
  sub_1000138BC(v19, v17, &qword_1001DB750, &qword_10017B798);
  State.init(wrappedValue:)();
  sub_10001370C(v19, &qword_1001DB750, &qword_10017B798);
  v33 = a3 + v29[12];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v34 = *(&v179 + 1);
  *v33 = v179;
  *(v33 + 8) = v34;
  v35 = (a3 + v29[13]);
  v36 = *(&v164 + 1);
  sub_10013DAC8(v31 + *(v20 + 20), *(&v164 + 1), type metadata accessor for CameraControllerConfiguration);
  type metadata accessor for CameraController(0);
  swift_allocObject();
  sub_10014AFFC(v36);
  *&v177 = v37;
  State.init(wrappedValue:)();
  v39 = v179;
  *(&v164 + 1) = v39 >> 64;
  v38 = v39;
  *v35 = v179;
  *&v164 = v38;
  v40 = a3 + v29[14];
  *&v177 = 0;
  *(&v177 + 1) = 0xE000000000000000;

  State.init(wrappedValue:)();
  v41 = v180;
  *v40 = v179;
  *(v40 + 16) = v41;
  v42 = a3 + v29[15];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v43 = *(&v179 + 1);
  *v42 = v179;
  *(v42 + 8) = v43;
  v44 = a3 + v29[16];
  *v44 = FocusState.init<>()() & 1;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46 & 1;
  v47 = a3 + v29[17];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v48 = *(&v179 + 1);
  *v47 = v179;
  *(v47 + 8) = v48;
  v49 = a3 + v29[18];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v50 = *(&v179 + 1);
  *v49 = v179;
  *(v49 + 8) = v50;
  v51 = a3 + v29[19];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v52 = *(&v179 + 1);
  *v51 = v179;
  *(v51 + 8) = v52;
  v53 = a3 + v29[20];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v54 = *(&v179 + 1);
  *v53 = v179;
  *(v53 + 8) = v54;
  v55 = a3 + v29[21];
  v177 = xmmword_100176B40;
  v178 = 2;
  State.init(wrappedValue:)();
  v56 = v180;
  v57 = *(&v180 + 1);
  *v55 = v179;
  *(v55 + 16) = v56;
  *(v55 + 24) = v57;
  v58 = v29[22];
  *&v177 = 0;
  sub_1000033A8(&qword_1001DB758, &qword_10017B860);
  State.init(wrappedValue:)();
  *(a3 + v58) = v179;
  v59 = type metadata accessor for FocusSelection();
  v60 = v161;
  (*(*(v59 - 8) + 56))(v161, 1, 1, v59);
  sub_1000138BC(v60, v162, &qword_1001DB748, &qword_10017B790);
  State.init(wrappedValue:)();
  sub_10001370C(v60, &qword_1001DB748, &qword_10017B790);
  v61 = v29[24];
  *&v177 = 0;
  sub_1000033A8(&qword_1001DB760, &qword_10017B868);
  State.init(wrappedValue:)();
  *(a3 + v61) = v179;
  v62 = a3 + v29[25];
  *&v177 = 0x3FF0000000000000;
  GestureState.init(wrappedValue:)();
  v63 = *(&v179 + 1);
  v64 = v180;
  *v62 = v179;
  *(v62 + 8) = v63;
  *(v62 + 16) = v64;
  v65 = (a3 + v29[26]);
  *&v177 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v66 = *(&v179 + 1);
  *v65 = v179;
  v65[1] = v66;
  v67 = a3 + v29[27];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v68 = *(&v179 + 1);
  *v67 = v179;
  *(v67 + 8) = v68;
  v69 = (a3 + v29[28]);
  *&v177 = &_swiftEmptySetSingleton;
  sub_1000033A8(&qword_1001DB768, &qword_10017B870);
  State.init(wrappedValue:)();
  v70 = *(&v179 + 1);
  *v69 = v179;
  v69[1] = v70;
  v71 = a3 + v29[29];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v72 = *(&v179 + 1);
  v162 = *(&v179 + 1);
  v163 = v71;
  *v71 = v179;
  *(v71 + 8) = v72;
  v73 = a3 + v29[30];
  v177 = 0uLL;
  sub_1000033A8(&qword_1001D6CA0, &qword_100175F20);
  State.init(wrappedValue:)();
  v74 = v180;
  *v73 = v179;
  *(v73 + 16) = v74;
  v75 = a3 + v29[31];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v76 = *(&v179 + 1);
  *v75 = v179;
  *(v75 + 8) = v76;
  v77 = a3 + v29[32];
  LOBYTE(v177) = 1;
  State.init(wrappedValue:)();
  v78 = *(&v179 + 1);
  *v77 = v179;
  *(v77 + 8) = v78;
  v79 = a3 + v29[33];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v80 = *(&v179 + 1);
  *v79 = v179;
  *(v79 + 8) = v80;
  v81 = a3 + v29[34];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v82 = *(&v179 + 1);
  *v81 = v179;
  *(v81 + 8) = v82;
  v83 = a3 + v29[35];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v84 = *(&v179 + 1);
  *v83 = v179;
  *(v83 + 8) = v84;
  v85 = a3 + v29[36];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v86 = *(&v179 + 1);
  *v85 = v179;
  *(v85 + 8) = v86;
  v87 = a3 + v29[37];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v88 = *(&v179 + 1);
  *v87 = v179;
  *(v87 + 8) = v88;
  v89 = a3 + v29[38];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v90 = *(&v179 + 1);
  *v89 = v179;
  *(v89 + 8) = v90;
  v91 = a3 + v29[39];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v92 = *(&v179 + 1);
  *v91 = v179;
  *(v91 + 8) = v92;
  v93 = (a3 + v29[40]);
  *&v177 = _swiftEmptyArrayStorage;
  sub_1000033A8(&qword_1001DA510, qword_100179990);
  State.init(wrappedValue:)();
  v94 = *(&v179 + 1);
  *v93 = v179;
  v93[1] = v94;
  v95 = (a3 + v29[41]);
  *&v177 = _swiftEmptyArrayStorage;
  State.init(wrappedValue:)();
  v96 = *(&v179 + 1);
  *v95 = v179;
  v95[1] = v96;
  v97 = (a3 + v29[42]);
  *&v177 = _swiftEmptyArrayStorage;
  State.init(wrappedValue:)();
  v98 = *(&v179 + 1);
  *v97 = v179;
  v97[1] = v98;
  v99 = (a3 + v29[43]);
  *&v177 = _swiftEmptyArrayStorage;
  State.init(wrappedValue:)();
  v100 = *(&v179 + 1);
  *v99 = v179;
  v99[1] = v100;
  v101 = a3 + v29[44];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v102 = *(&v179 + 1);
  *v101 = v179;
  *(v101 + 8) = v102;
  v103 = a3 + v29[45];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v104 = *(&v179 + 1);
  *v103 = v179;
  *(v103 + 8) = v104;
  v105 = a3 + v29[46];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v106 = *(&v179 + 1);
  *v105 = v179;
  *(v105 + 8) = v106;
  *(a3 + v29[47]) = 1;
  v107 = a3 + v29[48];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v108 = *(&v179 + 1);
  *v107 = v179;
  *(v107 + 8) = v108;
  v109 = a3 + v29[49];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v110 = *(&v179 + 1);
  *v109 = v179;
  *(v109 + 8) = v110;
  v111 = a3 + v29[50];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v112 = *(&v179 + 1);
  *v111 = v179;
  *(v111 + 8) = v112;
  v113 = a3 + v29[51];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v114 = *(&v179 + 1);
  *v113 = v179;
  *(v113 + 8) = v114;
  v115 = a3 + v29[52];
  LOBYTE(v177) = 1;
  State.init(wrappedValue:)();
  v116 = *(&v179 + 1);
  *v115 = v179;
  *(v115 + 8) = v116;
  v117 = a3 + v29[53];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v118 = *(&v179 + 1);
  *v117 = v179;
  *(v117 + 8) = v118;
  v119 = v29[54];
  v120 = [objc_allocWithZone(VKCImageAnalyzer) init];
  *(a3 + v119) = v120;
  v121 = v29[55];
  type metadata accessor for SiriVoiceAvailabilityUtility();
  v161 = v120;
  *(a3 + v121) = static SiriVoiceAvailabilityUtility.shared.getter();
  v122 = v29[56];
  type metadata accessor for UserDefaultsUtility();
  v123 = UserDefaultsUtility.__allocating_init()();
  *(a3 + v122) = v123;
  v160 = v123;
  v124 = v29[57];
  type metadata accessor for PromptScheduler(0);
  v125 = swift_allocObject();
  *(v125 + 16) = _swiftEmptyArrayStorage;
  *(v125 + 24) = 0;

  ObservationRegistrar.init()();
  sub_1000E9AAC();
  *(a3 + v124) = v125;
  v126 = v29[58];
  type metadata accessor for ConnectivityUtility();
  *(a3 + v126) = static ConnectivityUtility.shared.getter();
  v127 = v29[59];
  type metadata accessor for ImageContextCoordinator();
  swift_allocObject();
  *(a3 + v127) = sub_1000F47C8();
  v128 = v29[60];
  type metadata accessor for AppEntitiesProvider();
  *(a3 + v128) = static AppEntitiesProvider.shared.getter();
  v129 = v29[61];
  type metadata accessor for SubjectLiftViewModel(0);
  swift_allocObject();
  *(a3 + v129) = sub_1000A0BAC();
  v130 = v29[62];
  type metadata accessor for LiveTextViewModel();
  v131 = swift_allocObject();
  type metadata accessor for HitTestUIView();
  v131[2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v131[3] = [objc_allocWithZone(type metadata accessor for LiveTextImageAnalysisViewDelegate()) init];
  v131[4] = [objc_allocWithZone(VKCImageAnalysisInteraction) init];
  *(a3 + v130) = v131;
  v132 = v29[64];
  type metadata accessor for SiriStreamingVoicePlayer();
  *(a3 + v132) = static SiriStreamingVoicePlayer.shared.getter();
  v133 = v29[65];
  type metadata accessor for GoogleImageSearchRateLimiter();
  *(a3 + v133) = static GoogleImageSearchRateLimiter.shared.getter();
  v134 = v166;
  v135 = *(v166 + 104);
  v136 = v165;
  v137 = v167;
  v135(v165, enum case for ActionPin.PermanentPill.askAcme(_:), v167);
  ActionPin.PermanentPill.pill.getter();
  v138 = *(v134 + 8);
  v138(v136, v137);
  v135(v136, enum case for ActionPin.PermanentPill.imageSearch(_:), v137);
  ActionPin.PermanentPill.pill.getter();
  v138(v136, v137);
  v139 = type metadata accessor for VisualIntelligenceFrameEntity();
  v140 = v168;
  (*(*(v139 - 8) + 56))(v168, 1, 1, v139);
  sub_1000138BC(v140, v169, &qword_1001DB740, &qword_10017B788);
  State.init(wrappedValue:)();
  sub_10001370C(v140, &qword_1001DB740, &qword_10017B788);
  v141 = (a3 + v29[69]);
  type metadata accessor for FeedbackController();
  *&v177 = FeedbackController.__allocating_init(saliencyModel:)();
  State.init(wrappedValue:)();
  v142 = v179;
  *v141 = v179;

  AccessibilityFocusState.init<>()();
  *(a3 + v29[71]) = 0;
  v143 = a3 + v29[74];
  LOBYTE(v177) = 1;
  State.init(wrappedValue:)();
  v144 = *(&v179 + 1);
  *v143 = v179;
  *(v143 + 8) = v144;
  v145 = a3 + v29[75];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v146 = *(&v179 + 1);
  *v145 = v179;
  *(v145 + 8) = v146;
  v147 = (a3 + v29[76]);
  *&v177 = 0;
  State.init(wrappedValue:)();
  v148 = *(&v179 + 1);
  v169 = *(&v179 + 1);
  v170 = v147;
  *v147 = v179;
  *(v147 + 1) = v148;
  v149 = a3 + v29[77];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v150 = *(&v179 + 1);
  *v149 = v179;
  *(v149 + 8) = v150;
  v151 = v29[78];
  type metadata accessor for SharedSuppressPostShutterAction();
  *(a3 + v151) = SharedSuppressPostShutterAction.__allocating_init()();
  v152 = v171;
  *(a3 + v29[73]) = v171;
  type metadata accessor for NewSaliencyModel();
  sub_10013FB34(&qword_1001DB770, &type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  v171 = v152;

  Bindable<A>.init(wrappedValue:)();
  type metadata accessor for OverlayViewModel();

  *(a3 + v29[63]) = OverlayViewModel.__allocating_init(saliencyModel:)();
  sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  Bindable.wrappedValue.getter();
  v179 = v164;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();

  sub_10013FB34(&qword_1001DB788, type metadata accessor for CameraController, &unk_10017CB18);
  NewSaliencyModel.stream.setter();

  Bindable.wrappedValue.getter();
  type metadata accessor for FocusSelectionModel();
  FocusSelectionModel.__allocating_init(active:)();
  NewSaliencyModel.userSelection.setter();

  v179 = v142;
  sub_1000033A8(&qword_1001DB790, &qword_10017B888);
  State.wrappedValue.getter();

  dispatch thunk of FeedbackController.saliencyModel.setter();

  sub_100097F1C();

  LOBYTE(v149) = dispatch thunk of UserDefaultsUtility.showEngineeringUIControls.getter();

  v153 = v163;
  *v163 = v149 & 1;
  *(v153 + 1) = 0;

  static os_log_type_t.fault.getter();
  v154 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v155 = v173;
  EnvironmentValues.init()();
  EnvironmentValues.pixelLength.getter();
  v157 = v156;

  (*(v174 + 8))(v155, v175);

  result = v157 + 26.0;
  v159 = v170;
  *v170 = v157 + 26.0;
  v159[1] = 0.0;
  return result;
}

BOOL sub_1000F6EA0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for VisualDomain();
    ++v2;
    sub_10013FB34(&qword_1001DBBF8, &type metadata accessor for VisualDomain, &protocol conformance descriptor for VisualDomain);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1000F6FAC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return EnvironmentValues.openSensitiveURL.setter();
}

uint64_t sub_1000F7040()
{
  v0 = type metadata accessor for UUID();
  sub_1000276D4(v0, qword_1001DB6F0);
  sub_10002769C(v0, qword_1001DB6F0);
  return UUID.init()();
}

uint64_t sub_1000F708C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for UUID();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v76 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v75 = &v68 - v13;
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v16 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v16);
  v80 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppConfiguration(0);
  __chkstk_darwin(v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  sub_10013DAC8(a1, v20, type metadata accessor for AppConfiguration);
  v21 = objc_allocWithZone(NSUserDefaults);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 initWithSuiteName:v22];

  if (!v23)
  {
    return sub_100136D64(v20, v81, type metadata accessor for AppConfiguration);
  }

  if ((static SystemVariantSupport.isInternalBuild.getter() & 1) == 0)
  {

    return sub_100136D64(v20, v81, type metadata accessor for AppConfiguration);
  }

  v69 = v9;
  v71 = v16;
  v70 = *(v18 + 20);
  sub_10013DAC8(&v20[v70], v80, type metadata accessor for CameraControllerConfiguration);
  v24 = [objc_opt_self() defaultManager];
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 stringForKey:v25];

  if (!v26)
  {
    v46 = String._bridgeToObjectiveC()();
    v47 = [v23 stringForKey:v46];

    v27 = v23;
    v34 = v71;
    if (v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v75;
      URL.init(fileURLWithPath:)();

      v49 = [v24 fileExistsAtPath:v47];

      if (v49)
      {
        *&v85[0] = 0x5F646C6F5FLL;
        *(&v85[0] + 1) = 0xE500000000000000;
        UUID.init()();
        v50 = UUID.uuidString.getter();
        v52 = v51;
        (*(v72 + 8))(v5, v73);
        v53._countAndFlagsBits = v50;
        v53._object = v52;
        String.append(_:)(v53);

        URL.appendingPathExtension(_:)();

        URL._bridgeToObjectiveC()(v54);
        v56 = v55;
        URL._bridgeToObjectiveC()(v57);
        v59 = v58;
        *&v85[0] = 0;
        v60 = v24;
        LODWORD(v52) = [v24 moveItemAtURL:v56 toURL:v58 error:v85];

        v61 = v69;
        if (v52)
        {
          v62 = *&v85[0];
        }

        else
        {
          v64 = *&v85[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v65 = *(v76 + 8);
        v65(v74, v61);
        v65(v75, v61);
        v24 = v60;
      }

      else
      {
        (*(v76 + 8))(v48, v69);
      }
    }

    goto LABEL_19;
  }

  v27 = v23;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  v31 = [v24 fileExistsAtPath:v26];

  if (v31)
  {
    String.lowercased()();
    v32._countAndFlagsBits = 1987013934;
    v32._object = 0xE400000000000000;
    v33 = String.hasSuffix(_:)(v32);

    if (v33)
    {
      URL.init(fileURLWithPath:)();

      v34 = v71;
      v35 = *(v71 + 68);
      v36 = v80;
      sub_10001370C(v80 + v35, &qword_1001D8020, &qword_1001728D0);
      v37 = v76;
      v38 = v69;
      (*(v76 + 32))(v36 + v35, v15, v69);
      (*(v37 + 56))(v36 + v35, 0, 1, v38);
      *(v36 + *(v34 + 60)) = 0;
LABEL_19:
      v66 = String._bridgeToObjectiveC()();
      v67 = [v27 objectForKey:v66];

      if (v67)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v83 = 0u;
        v84 = 0u;
      }

      v85[0] = v83;
      v85[1] = v84;
      if (*(&v84 + 1))
      {
        if (swift_dynamicCast())
        {
          *(v80 + *(v34 + 24)) = v82;
        }
      }

      else
      {
        sub_10001370C(v85, &unk_1001D8060, &qword_1001732E0);
      }

      sub_100006BEC(v80, &v20[v70]);
      return sub_100136D64(v20, v81, type metadata accessor for AppConfiguration);
    }
  }

  static Log.ui.getter();

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v85[0] = v42;
    *v41 = 136315138;
    v43 = sub_1000E0FE0(v28, v30, v85);
    v44 = v24;
    v45 = v43;

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "Invalid input file %s. Expected .mov file. Ignoring default VisualIntelligenceCameraReplayInput", v41, 0xCu);
    sub_100006B44(v42);
  }

  else
  {
  }

  (*(v77 + 8))(v8, v78);
  sub_10013DAC8(v79, v81, type metadata accessor for AppConfiguration);
  sub_10013E658(v80, type metadata accessor for CameraControllerConfiguration);
  return sub_10013E658(v20, type metadata accessor for AppConfiguration);
}

id sub_1000F79EC()
{
  result = sub_1000F7A10();
  *&xmmword_1001DB708 = result;
  *(&xmmword_1001DB708 + 1) = v1;
  return result;
}

id sub_1000F7A10()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    v2 = MobileGestalt_copy_hwModelStr_obj();
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v6 = 0xE200000000000000;
      v4 = 16718;
    }

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    String.append(_:)(v7);

    sub_1000F7AC0(v8);

    return v8[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000F7AC0(uint64_t *a1)
{
  v25 = type metadata accessor for CharacterSet();
  __chkstk_darwin(v25);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v23 = 0;
  v24 = 0xE000000000000000;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_25;
  }

  v19[0] = a1;
  v19[1] = v1;
  v9 = 0;
  v20 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v21 = v6 & 0xFFFFFFFFFFFFFFLL;
  v10 = (v3 + 8);
  do
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v14 = v13;
      goto LABEL_16;
    }

    if ((v6 & 0x2000000000000000) != 0)
    {
      v22[0] = v7;
      v22[1] = v21;
      v12 = v22 + v9;
    }

    else
    {
      v11 = v20;
      if ((v7 & 0x1000000000000000) == 0)
      {
        v11 = _StringObject.sharedUTF8.getter();
      }

      v12 = (v11 + v9);
    }

    if ((*v12 & 0x80000000) == 0)
    {
LABEL_15:
      v14 = 1;
      goto LABEL_16;
    }

    v16 = (__clz(*v12 ^ 0xFF) - 24);
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }
    }

    else
    {
      if (v16 == 1)
      {
        goto LABEL_15;
      }

      v14 = 2;
    }

LABEL_16:
    static CharacterSet.alphanumerics.getter();
    v15 = CharacterSet.contains(_:)();
    (*v10)(v5, v25);
    if (v15)
    {
      String.UnicodeScalarView.append(_:)();
    }

    v9 += v14;
  }

  while (v9 < v8);

  v17 = v23;
  v18 = v24;
  a1 = v19[0];
LABEL_25:
  *a1 = v17;
  a1[1] = v18;
}

uint64_t sub_1000F7D2C()
{
  result = sub_1000F7D50();
  qword_1001DB718 = result;
  unk_1001DB720 = v1;
  return result;
}

uint64_t sub_1000F7D50()
{
  v0 = sub_1000033A8(&qword_1001DC310, &qword_10017C388);
  __chkstk_darwin(v0 - 8);
  v21 = &v19 - v1;
  v2 = sub_1000033A8(&qword_1001DC318, &qword_10017C390);
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v20 = &v19 - v3;
  v4 = sub_1000033A8(&qword_1001DC320, &qword_10017C398);
  v22 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  sub_1000033A8(&qword_1001DC328, &qword_10017C3A0);
  sub_100013608(&qword_1001DC330, &qword_1001DC320, &qword_10017C398, &protocol conformance descriptor for Regex<A>);
  Regex.init<A>(_:)();
  v10 = [objc_opt_self() processInfo];
  v11 = [v10 operatingSystemVersionString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.subscript.getter();
  v12 = v21;

  v23 = v9;
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  v13 = v20;
  v14 = *(v22 + 8);
  v14(v7, v4);

  v16 = v24;
  v15 = v25;
  if ((*(v24 + 48))(v12, 1, v25) == 1)
  {
    sub_10001370C(v12, &qword_1001DC310, &qword_10017C388);
    v14(v23, v4);
    return 16718;
  }

  else
  {
    (*(v16 + 32))(v13, v12, v15);
    Regex.Match.output.getter();

    v18 = static String._fromSubstring(_:)();

    (*(v16 + 8))(v13, v15);
    v14(v23, v4);
    return v18;
  }
}

uint64_t sub_1000F81DC@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v90 = sub_1000033A8(&qword_1001DC320, &qword_10017C398);
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v98 = &v75 - v1;
  v2 = sub_1000033A8(&qword_1001DC338, &qword_10017C3A8);
  v3 = *(v2 - 8);
  v100 = v2;
  v101 = v3;
  v4 = __chkstk_darwin(v2);
  v87 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v103 = &v75 - v6;
  v85 = sub_1000033A8(&qword_1001DC340, &qword_10017C3B0);
  v86 = *(v85 - 8);
  v7 = __chkstk_darwin(v85);
  v89 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v88 = &v75 - v10;
  v11 = __chkstk_darwin(v9);
  v99 = &v75 - v12;
  v13 = __chkstk_darwin(v11);
  v97 = &v75 - v14;
  __chkstk_darwin(v13);
  v104 = &v75 - v15;
  v16 = type metadata accessor for _RegexFactory();
  v17 = *(v16 - 8);
  v108 = v16;
  v109 = v17;
  v18 = __chkstk_darwin(v16);
  v94 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v75 - v20;
  v22 = sub_1000033A8(&qword_1001DC348, &qword_10017C3B8);
  __chkstk_darwin(v22 - 8);
  v24 = &v75 - v23;
  v25 = type metadata accessor for CharacterClass();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v75 - v30;
  v32 = sub_1000033A8(&qword_1001DC350, &qword_10017C3C0);
  v33 = *(v32 - 8);
  v106 = v32;
  v107 = v33;
  v34 = __chkstk_darwin(v32);
  v84 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v75 - v37;
  v39 = __chkstk_darwin(v36);
  v102 = &v75 - v40;
  v114 = 0x206E6F6973726556;
  v115 = 0xE800000000000000;
  v105 = sub_10013F55C(v39, v41, v42);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v77 = v31;
  static RegexComponent<>.whitespace.getter();
  CharacterClass.inverted.getter();
  v43 = *(v26 + 8);
  v43(v31, v25);
  v78 = v43;
  v79 = v26 + 8;
  v82 = type metadata accessor for RegexRepetitionBehavior();
  v44 = *(v82 - 1);
  v81 = *(v44 + 56);
  v83 = v44 + 56;
  v81(v24, 1, 1, v82);
  makeFactory()();
  v80 = sub_10013FB34(&qword_1001DC360, &type metadata accessor for CharacterClass, &protocol conformance descriptor for CharacterClass);
  v76 = v25;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v45 = *(v109 + 8);
  v109 += 8;
  v96 = v45;
  v46 = v108;
  v45(v21, v108);
  sub_10001370C(v24, &qword_1001DC348, &qword_10017C3B8);
  v43(v29, v25);
  OneOrMore.init(_:)();
  v93 = sub_100013608(&qword_1001DC368, &qword_1001DC350, &qword_10017C3C0, &protocol conformance descriptor for OneOrMore<A>);
  v47 = v106;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v95 = *(v107 + 8);
  v107 += 8;
  v95(v38, v47);
  v112 = 0x20646C6975422820;
  v113 = 0xE800000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  makeFactory()();
  v48 = v77;
  static RegexComponent<>.word.getter();
  v81(v24, 1, 1, v82);
  v49 = v94;
  makeFactory()();
  v50 = v76;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v51 = v96;
  v96(v49, v46);
  sub_10001370C(v24, &qword_1001DC348, &qword_10017C3B8);
  v78(v48, v50);
  v52 = v84;
  OneOrMore.init(_:)();
  v53 = v106;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v54 = v95;
  v95(v52, v53);
  v55 = v104;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v54(v38, v53);
  v56 = sub_1000033A8(&qword_1001DC328, &qword_10017C3A0);
  v84 = &protocol conformance descriptor for Regex<A>;
  v57 = sub_100013608(&qword_1001DC370, &qword_1001DC340, &qword_10017C3B0, &protocol conformance descriptor for Regex<A>);
  v94 = v56;
  v58 = v85;
  _RegexFactory.capture<A, B>(_:)();
  v82 = *(v86 + 1);
  v82(v55, v58);
  v51(v21, v108);
  v59 = v87;
  Capture.init(_:)();
  v83 = sub_100013608(&qword_1001DC378, &qword_1001DC338, &qword_10017C3A8, &protocol conformance descriptor for Capture<A>);
  v60 = v100;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v61 = *(v101 + 8);
  v101 += 8;
  v86 = v61;
  v61(v59, v60);
  v110 = 41;
  v111 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v110 = v116;
  v111 = v117;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  makeFactory()();
  v62 = v99;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v63 = v88;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v64 = v82;
  v82(v63, v58);
  v64(v62, v58);
  v96(v21, v108);
  v65 = v114;
  v66 = v115;
  makeFactory()();
  v110 = v65;
  v111 = v66;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v67 = v89;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();

  v81 = v57;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v64(v67, v58);
  v64(v63, v58);
  v68 = v108;
  v69 = v96;
  v96(v21, v108);
  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v64(v63, v58);
  v69(v21, v68);
  v71 = v112;
  v70 = v113;
  makeFactory()();
  v110 = v71;
  v111 = v70;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();

  sub_100013608(&qword_1001DC330, &qword_1001DC320, &qword_10017C398, v84);
  v72 = v98;
  v73 = v90;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v64(v63, v58);
  v69(v21, v108);
  (*(v92 + 8))(v72, v73);
  v64(v99, v58);
  v64(v97, v58);
  v64(v104, v58);
  v86(v103, v100);
  return (v95)(v102, v106);
}

uint64_t sub_1000F8FA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41._countAndFlagsBits = a1;
  v41._object = a2;
  v44 = a5;
  v45 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(NSDateFormatter) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setDateFormat:v18];

  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v14 + 8))(v16, v13);
  v20 = [v17 stringFromDate:isa];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v23 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v46 = 95;
    v47 = 0xE100000000000000;
    v24._countAndFlagsBits = a3;
    v24._object = a4;
    String.append(_:)(v24);
    v26 = v46;
    v25 = v47;
  }

  else
  {
    v26 = 0;
    v25 = 0xE000000000000000;
  }

  static URL.temporaryDirectory.getter();
  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  if (qword_1001D31E0 != -1)
  {
    swift_once();
  }

  v28 = qword_1001DB718;
  v27 = unk_1001DB720;

  v46 = v28;
  v47 = v27;
  v29._countAndFlagsBits = 95;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  if (qword_1001D31D8 != -1)
  {
    swift_once();
  }

  String.append(_:)(xmmword_1001DB708);
  v30._object = 0x800000010016F120;
  v30._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v30);
  v31._countAndFlagsBits = v40;
  v31._object = v22;
  String.append(_:)(v31);

  v32._countAndFlagsBits = v26;
  v32._object = v25;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  String.append(_:)(v41);
  v34 = v45;
  v35 = (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v45);
  sub_10002EC9C(v35, v36, v37);
  URL.appending<A>(path:directoryHint:)();

  (*(v7 + 8))(v9, v34);

  return (*(v42 + 8))(v12, v43);
}

double sub_1000F9408()
{
  v0 = sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001DB7A8, &qword_10017B8B0);
  State.wrappedValue.getter();
  v3 = type metadata accessor for ResultLookupState();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10001370C(v2, &qword_1001DB750, &qword_10017B798);
  }

  else
  {
    v6 = (*(v4 + 88))(v2, v3);
    v7 = enum case for ResultLookupState.error(_:);
    (*(v4 + 8))(v2, v3);
    if (v6 == v7)
    {
      sub_1000033A8(&qword_1001DB778, &qword_10017B878);
      Bindable.wrappedValue.getter();
      NewSaliencyModel.analytics.getter();

      dispatch thunk of SessionAnalytics.didEncounterError()();
    }
  }

  return result;
}

uint64_t sub_1000F95D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_1000F966C, v6, v5);
}

uint64_t sub_1000F966C()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for ContentView(0);
  v3 = (v1 + *(v2 + 52));
  v5 = *v3;
  v4 = v3[1];
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  *(v0 + 96) = *(v0 + 48);
  v6 = (v1 + *(v2 + 152));
  v7 = *v6;
  v8 = *(v6 + 1);
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  *(v0 + 137) = *(v0 + 136);
  *(v0 + 104) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 112) = v10;
  *(v0 + 120) = v9;

  return _swift_task_switch(sub_1000F9788, v10, v9);
}

uint64_t sub_1000F9788()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9824;
  v2 = *(v0 + 137);

  return sub_1000E738C(v2);
}

uint64_t sub_1000F9824()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1000F9944, v3, v2);
}

uint64_t sub_1000F9944()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1000F99B0, v1, v2);
}

uint64_t sub_1000F99B0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1000F9A10(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContentView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  v12 = v2 + *(v5 + 160);
  v13 = *v12;
  v14 = *(v12 + 8);
  v20[16] = v13;
  v21 = v14;
  v20[15] = a1;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_10013DAC8(v2, v8, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_100136D64(v8, v18 + v17, type metadata accessor for ContentView);
  sub_1000154EC(0, 0, v11, &unk_10017BC20, v18);

  return result;
}

uint64_t sub_1000F9C44()
{
  v1 = sub_1000033A8(&qword_1001D6DC0, &unk_100176230);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  v5 = type metadata accessor for ContentView(0);
  v6 = v0 + *(v5 + 184);
  v8 = *(v6 + 8);
  LOBYTE(v15) = *v6;
  v7 = v15;
  v16 = v8;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  sub_1000F9A10(v14);
  v9 = (v0 + *(v5 + 52));
  v11 = *v9;
  v10 = v9[1];
  v15 = v11;
  v16 = v10;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  LOBYTE(v15) = v7;
  v16 = v8;
  State.wrappedValue.getter();
  v15 = v14;
  LOBYTE(v16) = 1;
  sub_1000033A8(&qword_1001D6DC8, &unk_10017CB90);
  AsyncStream.Continuation.yield(_:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000F9E08()
{
  v0 = type metadata accessor for AppConfiguration(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000276D4(v1, qword_1001DB728);
  v4 = sub_10002769C(v0, qword_1001DB728);
  static AnnotationViewConfiguration.factorySettings.getter();
  sub_100038468(&v3[v0[5]]);
  v5 = v0[6];
  if (qword_1001D31C0 != -1)
  {
    swift_once();
  }

  v6 = &v3[v5];
  *v6 = byte_1001EB600;
  v6[1] = 0;
  static MapsConfiguration.factorySettings.getter();
  v7 = &v3[v0[8]];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v8 = v0[10];
  type metadata accessor for UserDefaultsUtility();
  UserDefaultsUtility.__allocating_init()();
  v9 = dispatch thunk of UserDefaultsUtility.enableStickers.getter();

  v3[v8] = v9 & 1;
  v10 = &v3[v0[11]];
  UserDefaultsUtility.__allocating_init()();
  v11 = dispatch thunk of UserDefaultsUtility.enableCopyPhoto.getter();

  UserDefaultsUtility.__allocating_init()();
  v12 = dispatch thunk of UserDefaultsUtility.enableSavePhoto.getter();

  *v10 = v11 & 1;
  v10[1] = v12 & 1;
  sub_1000F708C(v3, v4);
  return sub_10013E658(v3, type metadata accessor for AppConfiguration);
}

uint64_t sub_1000F9FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v177 = a1;
  v176 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v176);
  v175 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for AppConfiguration(0);
  __chkstk_darwin(v173);
  v174 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v164 = *(v5 - 8);
  v165 = v5;
  __chkstk_darwin(v5);
  v162 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentView(0);
  v186 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v137 - v13;
  __chkstk_darwin(v12);
  v16 = &v137 - v15;
  v179 = sub_1000033A8(&qword_1001DBA48, &qword_10017B998);
  __chkstk_darwin(v179);
  v185 = (&v137 - v17);
  v18 = sub_1000033A8(&qword_1001DBA50, &qword_10017B9A0);
  v145 = *(v18 - 8);
  v146 = v18;
  __chkstk_darwin(v18);
  v180 = &v137 - v19;
  v150 = sub_1000033A8(&qword_1001DBA58, &qword_10017B9A8);
  __chkstk_darwin(v150);
  v149 = &v137 - v20;
  v21 = sub_1000033A8(&qword_1001DBA60, &qword_10017B9B0);
  v152 = *(v21 - 8);
  v153 = v21;
  __chkstk_darwin(v21);
  v151 = &v137 - v22;
  v156 = sub_1000033A8(&qword_1001DBA68, &qword_10017B9B8);
  v154 = *(v156 - 8);
  __chkstk_darwin(v156);
  v182 = (&v137 - v23);
  v24 = sub_1000033A8(&qword_1001DBA70, &qword_10017B9C0);
  v157 = *(v24 - 8);
  v158 = v24;
  __chkstk_darwin(v24);
  v155 = &v137 - v25;
  v26 = sub_1000033A8(&qword_1001DBA78, &qword_10017B9C8);
  v159 = *(v26 - 8);
  v160 = v26;
  __chkstk_darwin(v26);
  v183 = &v137 - v27;
  v167 = sub_1000033A8(&qword_1001DBA80, &qword_10017B9D0);
  v163 = *(v167 - 8);
  __chkstk_darwin(v167);
  v161 = &v137 - v28;
  v29 = sub_1000033A8(&qword_1001DBA88, &qword_10017B9D8);
  v169 = *(v29 - 8);
  v170 = v29;
  __chkstk_darwin(v29);
  v184 = &v137 - v30;
  v31 = sub_1000033A8(&qword_1001DBA90, &qword_10017B9E0);
  v171 = *(v31 - 8);
  v172 = v31;
  v32 = __chkstk_darwin(v31);
  v166 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v168 = &v137 - v34;
  v35 = (v2 + *(v7 + 116));
  v36 = *v35;
  v37 = *(v35 + 1);
  v147 = v36;
  LOBYTE(v195) = v36;
  v148 = v37;
  *(&v195 + 1) = v37;
  v181 = sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.projectedValue.getter();
  v142 = *(&v204 + 1);
  v143 = v204;
  v141 = v205;
  v38 = v16;
  sub_10013DAC8(v2, v16, type metadata accessor for ContentView);
  v39 = ((*(v8 + 80) + 16) & ~*(v8 + 80)) + v9;
  v40 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v41 = *(v8 + 80);
  v140 = swift_allocObject();
  sub_100136D64(v38, v140 + v40, type metadata accessor for ContentView);
  v187 = v38;
  sub_10013DAC8(v2, v38, type metadata accessor for ContentView);
  v139 = swift_allocObject();
  sub_100136D64(v38, v139 + v40, type metadata accessor for ContentView);
  sub_10013DAC8(v2, v14, type metadata accessor for ContentView);
  v138 = swift_allocObject();
  sub_100136D64(v14, v138 + v40, type metadata accessor for ContentView);
  v188 = v2;
  v144 = type metadata accessor for ContentView;
  sub_10013DAC8(v2, v11, type metadata accessor for ContentView);
  v190 = v39;
  v42 = swift_allocObject();
  v191 = v40;
  v178 = type metadata accessor for ContentView;
  sub_100136D64(v11, v42 + v40, type metadata accessor for ContentView);
  LOBYTE(v195) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v11) = v204;
  v43 = *(&v204 + 1);
  v44 = v187;
  sub_10013DAC8(v2, v187, type metadata accessor for ContentView);
  v189 = v41;
  v45 = swift_allocObject();
  sub_100136D64(v44, v45 + v40, type metadata accessor for ContentView);
  *&v195 = v143;
  *(&v195 + 1) = v142;
  LOBYTE(v196) = v141;
  *(&v196 + 1) = sub_100133E1C;
  *&v197 = v140;
  *(&v197 + 1) = sub_100133E34;
  *&v198 = v139;
  *(&v198 + 1) = sub_100133E4C;
  *&v199 = v138;
  *(&v199 + 1) = sub_100133E64;
  *&v200 = v42;
  BYTE8(v200) = v11;
  *&v201 = v43;
  *(&v201 + 1) = sub_100133E7C;
  *&v202[0] = v45;
  *(v202 + 8) = 0u;
  *(&v202[1] + 8) = 0u;
  *(&v202[2] + 1) = sub_10010890C;
  v203 = 0;
  v46 = v188;
  sub_1000033A8(&qword_1001DBA98, &qword_10017B9E8);
  type metadata accessor for SharedSuppressPostShutterAction();
  sub_100133E94();
  sub_10013FB34(&qword_1001DBAC8, &type metadata accessor for SharedSuppressPostShutterAction, &protocol conformance descriptor for SharedSuppressPostShutterAction);
  v47 = v179;
  View.environment<A>(_:)();
  v212 = v202[1];
  v213 = v202[2];
  v214 = v203;
  v208 = v199;
  v209 = v200;
  v210 = v201;
  v211 = v202[0];
  v204 = v195;
  v205 = v196;
  v206 = v197;
  v207 = v198;
  sub_10001370C(&v204, &qword_1001DBA98, &qword_10017B9E8);
  LODWORD(v143) = dispatch thunk of SharedSuppressPostShutterAction.shouldSuppressAddEvent.getter();
  v48 = v44;
  v49 = v144;
  sub_10013DAC8(v46, v44, v144);
  v50 = swift_allocObject();
  v51 = v191;
  v52 = v178;
  sub_100136D64(v44, v50 + v191, v178);
  v53 = v185;
  v54 = v185 + *(v47 + 36);
  *v54 = v143 & 1;
  *(v54 + 1) = sub_100133FD8;
  *(v54 + 2) = v50;
  v55 = v46;
  sub_10013DAC8(v46, v48, v49);
  v56 = swift_allocObject();
  sub_100136D64(v48, v56 + v51, v52);
  v57 = sub_100134008();
  View.onSceneStateChange(_:)();

  sub_10001370C(v53, &qword_1001DBA48, &qword_10017B998);
  v58 = *(v55 + 48);
  LOBYTE(v53) = *(v55 + 56);

  if ((v53 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v60 = v162;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v164 + 8))(v60, v165);
    v58 = v195;
  }

  swift_getKeyPath();
  *&v195 = v58;
  sub_10013FB34(&qword_1001D4218, type metadata accessor for SiriRequestStateResponder, &unk_10017A484);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v61 = *(v58 + 16);

  LOBYTE(v193) = v61;
  v62 = v187;
  v63 = v188;
  v178 = type metadata accessor for ContentView;
  sub_10013DAC8(v188, v187, type metadata accessor for ContentView);
  v64 = swift_allocObject();
  v185 = type metadata accessor for ContentView;
  sub_100136D64(v62, v64 + v191, type metadata accessor for ContentView);
  *&v195 = v179;
  *(&v195 + 1) = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000E0F08(OpaqueTypeConformance2, v66, v67);
  v68 = v149;
  v69 = v146;
  v70 = v180;
  View.onChange<A>(of:initial:_:)();

  (*(v145 + 8))(v70, v69);
  v71 = v186;
  v72 = v63 + *(v186 + 148);
  v73 = *v72;
  v74 = *(v72 + 8);
  LOBYTE(v195) = v73;
  *(&v195 + 1) = v74;
  State.wrappedValue.getter();
  LOBYTE(v69) = v193;
  sub_10013DAC8(v63, v62, type metadata accessor for ContentView);
  v75 = swift_allocObject();
  sub_100136D64(v62, v75 + v191, v185);
  v76 = v150;
  v77 = v68 + *(v150 + 36);
  *v77 = v69;
  *(v77 + 8) = sub_10013416C;
  *(v77 + 16) = v75;
  v78 = (v63 + *(v71 + 52));
  v80 = *v78;
  v79 = v78[1];
  v179 = v80;
  v146 = v79;
  *&v195 = v80;
  *(&v195 + 1) = v79;
  v145 = sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v81 = type metadata accessor for CameraController(0);
  v82 = sub_100134208();
  v83 = sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  v84 = v151;
  View.environment<A>(_:)();

  sub_10001370C(v68, &qword_1001DBA58, &qword_10017B9A8);
  v85 = v188;
  v149 = type metadata accessor for SiriStreamingVoicePlayer();
  *&v195 = v76;
  *(&v195 + 1) = v81;
  *&v196 = v82;
  *(&v196 + 1) = v83;
  v180 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = sub_10013FB34(&qword_1001D6E90, &type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  v88 = v153;
  View.environment<A>(_:)();
  (*(v152 + 8))(v84, v88);
  *&v195 = v179;
  *(&v195 + 1) = v146;
  State.wrappedValue.getter();
  v89 = v193;
  swift_getKeyPath();
  *&v195 = v89;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v90 = *(v89 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v91 = *(v89 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  LOBYTE(v81) = *(v89 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v90, v91, v81);

  *&v193 = v90;
  *(&v193 + 1) = v91;
  LOBYTE(v194) = v81;
  v92 = v187;
  sub_10013DAC8(v85, v187, v178);
  v93 = swift_allocObject();
  sub_100136D64(v92, v93 + v191, v185);
  *&v195 = v88;
  *(&v195 + 1) = v149;
  *&v196 = v86;
  *(&v196 + 1) = v87;
  v94 = swift_getOpaqueTypeConformance2();
  v97 = sub_1000A45F4(v94, v95, v96);
  v99 = v155;
  v98 = v156;
  v100 = v182;
  View.onChange<A>(of:initial:_:)();

  v101 = sub_1000616E4(v90, v91, v81);
  (*(v154 + 8))(v100, v98, v101);
  LOBYTE(v195) = v147;
  *(&v195 + 1) = v148;
  State.wrappedValue.getter();
  v102 = v187;
  v103 = v188;
  sub_10013DAC8(v188, v187, v178);
  v104 = swift_allocObject();
  sub_100136D64(v102, v104 + v191, v185);
  *&v195 = v98;
  *(&v195 + 1) = &type metadata for CameraSourceRunState;
  *&v196 = v94;
  *(&v196 + 1) = v97;
  v105 = swift_getOpaqueTypeConformance2();
  v106 = v158;
  v185 = v105;
  View.onChange<A>(of:initial:_:)();

  (*(v157 + 8))(v99, v106);
  v107 = *(v103 + 32);
  LOBYTE(v102) = *(v103 + 40);

  if ((v102 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v108 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v109 = v162;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v164 + 8))(v109, v165);
    v107 = v195;
  }

  swift_getKeyPath();
  *&v195 = v107;
  sub_10013FB34(&qword_1001D41D0, type metadata accessor for LaunchOptions, &unk_100170620);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v110 = *(v107 + 16);

  LOBYTE(v193) = v110;
  v182 = type metadata accessor for ContentView;
  v111 = v187;
  v112 = v188;
  sub_10013DAC8(v188, v187, type metadata accessor for ContentView);
  v113 = swift_allocObject();
  v181 = type metadata accessor for ContentView;
  sub_100136D64(v111, v113 + v191, type metadata accessor for ContentView);
  *&v195 = v106;
  *(&v195 + 1) = &type metadata for Bool;
  *&v196 = v185;
  *(&v196 + 1) = &protocol witness table for Bool;
  v185 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v114 = swift_getOpaqueTypeConformance2();
  v115 = v160;
  v116 = v161;
  v117 = v183;
  View.onChange<A>(of:initial:_:)();

  (*(v159 + 8))(v117, v115);
  sub_1000033A8(&qword_1001DB7A0, &qword_10017B8A8);
  v118 = v174;
  State.wrappedValue.getter();
  v119 = v175;
  sub_10013DAC8(v118 + *(v173 + 20), v175, type metadata accessor for CameraControllerConfiguration);
  sub_10013E658(v118, type metadata accessor for AppConfiguration);
  sub_10013DAC8(v112, v111, v182);
  v120 = swift_allocObject();
  sub_100136D64(v111, v120 + v191, v181);
  *&v195 = v115;
  *(&v195 + 1) = &type metadata for Bool;
  *&v196 = v114;
  *(&v196 + 1) = &protocol witness table for Bool;
  v191 = swift_getOpaqueTypeConformance2();
  v190 = sub_10013FB34(&qword_1001D5470, type metadata accessor for CameraControllerConfiguration, &unk_100172ED8);
  v121 = v167;
  v122 = v176;
  View.onChange<A>(of:initial:_:)();

  sub_10013E658(v119, type metadata accessor for CameraControllerConfiguration);
  (*(v163 + 8))(v116, v121);
  v123 = (v112 + *(v186 + 276));
  v125 = *v123;
  v124 = v123[1];
  *&v193 = v125;
  *(&v193 + 1) = v124;
  sub_1000033A8(&qword_1001DB790, &qword_10017B888);
  State.projectedValue.getter();
  v126 = v195;
  v127 = v196;
  swift_getKeyPath();
  v193 = v126;
  v194 = v127;
  sub_1000033A8(&qword_1001DBAF0, &qword_10017BAB0);
  Binding.subscript.getter();

  v128 = v192;

  *&v195 = v121;
  *(&v195 + 1) = v122;
  *&v196 = v191;
  *(&v196 + 1) = v190;
  v129 = swift_getOpaqueTypeConformance2();
  v130 = v166;
  v131 = v170;
  v132 = v184;
  View.inlineFeedback(controller:completion:)();

  (*(v169 + 8))(v132, v131);
  *&v195 = v131;
  *(&v195 + 1) = v129;
  swift_getOpaqueTypeConformance2();
  v133 = v168;
  v134 = v172;
  sub_100071210();
  v135 = *(v171 + 8);
  v135(v130, v134);
  sub_100071210();
  return (v135)(v133, v134);
}

void sub_1000FB7F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001DB7A0, &qword_10017B8A8);
  State.projectedValue.getter();
  v12 = (a1 + *(v11 + 52));
  v14 = *v12;
  v13 = v12[1];
  v25 = v14;
  v26 = v13;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v21 = *(v22 + OBJC_IVAR____TtC6Tamale16CameraController_configStorage);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v15 = type metadata accessor for ConfigList(0);
  Bindable<A>.subscript.getter();

  v16 = *(v5 + 8);
  v16(v10, v4);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v16(v8, v4);
  v17 = v25;
  v18 = v26;
  v19 = v27;
  swift_getKeyPath();
  v22 = v17;
  v23 = v18;
  v24 = v19;
  sub_1000033A8(&qword_1001DC518, &qword_10017C5C8);
  Binding.subscript.getter();

  *(a2 + *(v15 + 20)) = v21;
}

uint64_t sub_1000FBA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000FBB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000033A8(&qword_1001D3200, &qword_10016F778);
  __chkstk_darwin(v4 - 8);
  v6 = (&v28 - v5);
  *v6 = static Alignment.center.getter();
  v6[1] = v7;
  v8 = sub_1000033A8(&qword_1001DBCB8, &qword_10017BE48);
  sub_1000FC010(a1, v6 + *(v8 + 44));
  v9 = type metadata accessor for ContentView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_10013DAC8(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_100136D64(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ContentView);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v28 - v18;
  static TaskPriority.userInitiated.getter();
  if (sub_10015CB14(2, 26, 4, 0))
  {
    v31 = type metadata accessor for _TaskModifier2();
    v32 = &v28;
    v30 = *(v31 - 8);
    __chkstk_darwin(v31);
    v29 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v34 = 0xD000000000000025;
    v35 = 0x800000010016EE20;
    v33 = 352;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v28 = v6;
    __chkstk_darwin(v22);
    (*(v16 + 16))(&v28 - v18, &v28 - v18, v15);
    v23 = v29;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v16 + 8))(v19, v15);
    sub_10002091C(v28, a2, &qword_1001D3200, &qword_10016F778);
    v24 = sub_1000033A8(&qword_1001D3208, &qword_10016F780);
    return (*(v30 + 32))(a2 + *(v24 + 36), v23, v31);
  }

  else
  {
    v26 = (a2 + *(sub_1000033A8(&qword_1001D3210, &qword_10016F788) + 36));
    v27 = type metadata accessor for _TaskModifier();
    (*(v16 + 32))(&v26[*(v27 + 20)], &v28 - v18, v15);
    *v26 = &unk_10017BE58;
    *(v26 + 1) = v14;
    return sub_10002091C(v6, a2, &qword_1001D3200, &qword_10016F778);
  }
}

double sub_1000FC010@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = sub_1000033A8(&qword_1001D5FF0, &qword_100174D18);
  v4 = __chkstk_darwin(v3 - 8);
  v91 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v89 = &v76 - v6;
  v88 = type metadata accessor for AccessibilityTraits();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000033A8(&qword_1001DBCC0, &qword_10017BE60);
  __chkstk_darwin(v86);
  v84 = &v76 - v8;
  v9 = sub_1000033A8(&qword_1001D5FE8, &qword_100174D10);
  v10 = __chkstk_darwin(v9 - 8);
  v90 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v76 - v12;
  v13 = sub_1000033A8(&qword_1001D5FE0, &qword_100174D08);
  v14 = __chkstk_darwin(v13 - 8);
  v105 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v76 - v16;
  v17 = sub_1000033A8(&qword_1001D5FD8, &qword_100174D00);
  v18 = __chkstk_darwin(v17 - 8);
  v102 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v99 = &v76 - v20;
  v21 = sub_1000033A8(&qword_1001D5FD0, &qword_100174CF8);
  v22 = __chkstk_darwin(v21 - 8);
  v101 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v76 - v24;
  v26 = sub_1000033A8(&qword_1001D5FC8, &qword_100174CF0);
  v103 = *(v26 - 8);
  v104 = v26;
  v27 = __chkstk_darwin(v26);
  v100 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = &v76 - v29;
  v30 = sub_1000033A8(&qword_1001D5FC0, &qword_100174CE8);
  v31 = __chkstk_darwin(v30 - 8);
  v98 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v76 - v33;
  v35 = sub_1000033A8(&qword_1001DBCC8, &qword_10017BE68);
  __chkstk_darwin(v35);
  v37 = &v76 - v36;
  v38 = sub_1000033A8(&qword_1001D5FB8, &qword_100174CE0);
  v39 = __chkstk_darwin(v38 - 8);
  v97 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v93 = &v76 - v41;
  v42 = sub_1000033A8(&qword_1001D5FB0, &qword_100174CD8);
  v43 = __chkstk_darwin(v42 - 8);
  v94 = &v76 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = (&v76 - v45);
  v81 = static Color.clear.getter();
  v80 = static SafeAreaRegions.keyboard.getter();
  v79 = static Edge.Set.all.getter();
  v47 = (a1 + *(type metadata accessor for ContentView(0) + 152));
  v48 = *v47;
  v49 = *(v47 + 1);
  LOBYTE(v112) = v48;
  v113 = v49;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  v78 = v108;
  *v46 = static Alignment.center.getter();
  v46[1] = v50;
  v96 = v46;
  v51 = sub_1000033A8(&qword_1001DBCD0, &qword_10017BE70);
  sub_10011C148(a1, v46 + *(v51 + 44));
  sub_1000FCBD0(v37);
  sub_10013B024();
  View.accessibilityHidden(_:)();
  sub_10001370C(v37, &qword_1001DBCC8, &qword_10017BE68);
  v52 = v34;
  v77 = v34;
  sub_1000FE040(v34);
  v53 = v95;
  sub_1000FED80(v95);
  v54 = v25;
  *v25 = static HorizontalAlignment.center.getter();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v55 = &v25[*(sub_1000033A8(&qword_1001DBDC0, &qword_10017BEE8) + 44)];
  v76 = v25;
  sub_1001121A0(a1, v55);
  v56 = v99;
  sub_1000FF33C(v99);
  v57 = v82;
  sub_10010043C(v82);
  v58 = v84;
  sub_1001014EC(v84);
  v59 = v85;
  static AccessibilityTraits.isModal.getter();
  sub_10013B888();
  v60 = v83;
  View.accessibilityAddTraits(_:)();
  (*(v87 + 8))(v59, v88);
  sub_10001370C(v58, &qword_1001DBCC0, &qword_10017BE60);
  v61 = v89;
  sub_1001039C8(v89);
  v108 = v81;
  v109 = 256;
  v110 = v80;
  v111 = v79;
  v106 = 256;
  v107 = v78;
  v112 = &v108;
  v113 = &v106;
  v62 = v94;
  sub_1000138BC(v96, v94, &qword_1001D5FB0, &qword_100174CD8);
  v114 = v62;
  v63 = v97;
  sub_1000138BC(v93, v97, &qword_1001D5FB8, &qword_100174CE0);
  v115 = v63;
  v64 = v98;
  sub_1000138BC(v52, v98, &qword_1001D5FC0, &qword_100174CE8);
  v116 = v64;
  v65 = v100;
  (*(v103 + 16))(v100, v53, v104);
  v117 = v65;
  v66 = v101;
  sub_1000138BC(v54, v101, &qword_1001D5FD0, &qword_100174CF8);
  v118 = v66;
  v67 = v102;
  sub_1000138BC(v56, v102, &qword_1001D5FD8, &qword_100174D00);
  v119 = v67;
  v68 = v105;
  sub_1000138BC(v57, v105, &qword_1001D5FE0, &qword_100174D08);
  v120 = v68;
  v69 = v90;
  sub_1000138BC(v60, v90, &qword_1001D5FE8, &qword_100174D10);
  v121 = v69;
  v70 = v61;
  v71 = v61;
  v72 = v91;
  sub_1000138BC(v70, v91, &qword_1001D5FF0, &qword_100174D18);
  v122 = v72;
  sub_10003826C(&v112, v92);
  sub_10001370C(v71, &qword_1001D5FF0, &qword_100174D18);
  sub_10001370C(v60, &qword_1001D5FE8, &qword_100174D10);
  sub_10001370C(v57, &qword_1001D5FE0, &qword_100174D08);
  sub_10001370C(v99, &qword_1001D5FD8, &qword_100174D00);
  sub_10001370C(v76, &qword_1001D5FD0, &qword_100174CF8);
  v73 = v104;
  v74 = *(v103 + 8);
  v74(v95, v104);
  sub_10001370C(v77, &qword_1001D5FC0, &qword_100174CE8);
  sub_10001370C(v93, &qword_1001D5FB8, &qword_100174CE0);
  sub_10001370C(v96, &qword_1001D5FB0, &qword_100174CD8);
  sub_10001370C(v72, &qword_1001D5FF0, &qword_100174D18);
  sub_10001370C(v69, &qword_1001D5FE8, &qword_100174D10);
  sub_10001370C(v105, &qword_1001D5FE0, &qword_100174D08);
  sub_10001370C(v102, &qword_1001D5FD8, &qword_100174D00);
  sub_10001370C(v101, &qword_1001D5FD0, &qword_100174CF8);
  v74(v100, v73);
  sub_10001370C(v98, &qword_1001D5FC0, &qword_100174CE8);
  sub_10001370C(v97, &qword_1001D5FB8, &qword_100174CE0);
  sub_10001370C(v94, &qword_1001D5FB0, &qword_100174CD8);

  return result;
}

uint64_t sub_1000FCBD0@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v108 = sub_1000033A8(&qword_1001DBD88, &qword_10017BEC8);
  v2 = __chkstk_darwin(v108);
  v110 = v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v109 = v99 - v4;
  v120 = sub_1000033A8(&qword_1001DBD78, &qword_10017BEC0);
  v5 = __chkstk_darwin(v120);
  v107 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v111 = v99 - v7;
  v118 = sub_1000033A8(&qword_1001DC420, &qword_10017C450);
  __chkstk_darwin(v118);
  v119 = v99 - v8;
  v130 = sub_1000033A8(&qword_1001DBD18, &qword_10017BE90);
  __chkstk_darwin(v130);
  v121 = v99 - v9;
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v114 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1000033A8(&qword_1001DBD38, &qword_10017BEA8);
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v116 = v99 - v12;
  v106 = sub_1000033A8(&qword_1001DC428, &qword_10017C458);
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = v99 - v13;
  v117 = sub_1000033A8(&qword_1001DBD28, &qword_10017BE98);
  v14 = __chkstk_darwin(v117);
  v105 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v112 = v99 - v17;
  v18 = __chkstk_darwin(v16);
  v113 = v99 - v19;
  __chkstk_darwin(v18);
  v115 = v99 - v20;
  v127 = sub_1000033A8(&qword_1001DC430, &qword_10017C460);
  __chkstk_darwin(v127);
  v129 = v99 - v21;
  v125 = sub_1000033A8(&qword_1001DC438, &qword_10017C468);
  __chkstk_darwin(v125);
  v124 = v99 - v22;
  v128 = sub_1000033A8(&qword_1001DBCE8, &qword_10017BE78);
  __chkstk_darwin(v128);
  v126 = v99 - v23;
  v24 = type metadata accessor for ContentView(0);
  v122 = *(v24 - 8);
  v25 = *(v122 + 64);
  __chkstk_darwin(v24);
  v26 = sub_1000033A8(&qword_1001DBCF8, &qword_10017BE80);
  __chkstk_darwin(v26);
  v123 = v99 - v27;
  v28 = sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  __chkstk_darwin(v28 - 8);
  v30 = v99 - v29;
  sub_1000033A8(&qword_1001DB7A8, &qword_10017B8B0);
  v31 = v1;
  State.wrappedValue.getter();
  v32 = type metadata accessor for ResultLookupState();
  v33 = (*(*(v32 - 8) + 48))(v30, 1, v32);
  sub_10001370C(v30, &qword_1001DB750, &qword_10017B798);
  if (v33 != 1)
  {
    sub_10013DAC8(v31, v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
    v48 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v49 = swift_allocObject();
    sub_100136D64(v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48, type metadata accessor for ContentView);
    v50 = static Edge.Set.all.getter();
    v132 = COERCE_DOUBLE(sub_100140730);
    v133 = v49;
    LOBYTE(v134) = v50;
    sub_1000033A8(&qword_1001DBD08, &qword_10017BE88);
    sub_10013B1F0();
    v44 = v123;
    View.accessibilityIdentifier(_:)();

    v45 = &qword_1001DBCF8;
    v46 = &qword_10017BE80;
    sub_1000138BC(v44, v124, &qword_1001DBCF8, &qword_10017BE80);
    swift_storeEnumTagMultiPayload();
    sub_10013B134();
    v51 = v126;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v51, v129, &qword_1001DBCE8, &qword_10017BE78);
    swift_storeEnumTagMultiPayload();
    sub_10013B0B0();
    sub_10013B27C();
    _ConditionalContent<>.init(storage:)();
    v47 = v51;
    goto LABEL_5;
  }

  v99[1] = v26;
  v34 = v124;
  v35 = v123;
  v36 = v126;
  v99[2] = v25;
  v100 = v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v31 + *(v24 + 196);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v132) = v38;
  v133 = v39;
  sub_1000033A8(&qword_1001DBB80, &qword_10017BBC8);
  State.wrappedValue.getter();
  if (LOBYTE(v137) == 1)
  {
    v40 = v100;
    sub_10013DAC8(v31, v100, type metadata accessor for ContentView);
    v41 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v42 = swift_allocObject();
    sub_100136D64(v40, v42 + v41, type metadata accessor for ContentView);
    v43 = static Edge.Set.all.getter();
    v132 = COERCE_DOUBLE(sub_100140718);
    v133 = v42;
    LOBYTE(v134) = v43;
    sub_1000033A8(&qword_1001DBD08, &qword_10017BE88);
    sub_10013B1F0();
    v44 = v35;
    View.accessibilityIdentifier(_:)();

    v45 = &qword_1001DBCF8;
    v46 = &qword_10017BE80;
    sub_1000138BC(v35, v34, &qword_1001DBCF8, &qword_10017BE80);
    swift_storeEnumTagMultiPayload();
    sub_10013B134();
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v36, v129, &qword_1001DBCE8, &qword_10017BE78);
    swift_storeEnumTagMultiPayload();
    sub_10013B0B0();
    sub_10013B27C();
    _ConditionalContent<>.init(storage:)();
    v47 = v36;
LABEL_5:
    sub_10001370C(v47, &qword_1001DBCE8, &qword_10017BE78);
    return sub_10001370C(v44, v45, v46);
  }

  v125 = v24;
  v53 = *(v24 + 52);
  v126 = v31;
  v54 = (v31 + v53);
  v56 = *v54;
  v55 = v54[1];
  v132 = *v54;
  v133 = v55;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v57 = v137;
  swift_getKeyPath();
  v132 = v57;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v59 = *(*&v57 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v58 = *(*&v57 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v60 = *(*&v57 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v59, v58, *(*&v57 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v60 != 1 && (v60 != 3 || v59 != 2 || v58))
  {
    sub_1000616E4(v59, v58, v60);
    v68 = static Alignment.center.getter();
    v70 = v69;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v132 = *&v68;
    v133 = v70;
    v136 = 0;
    sub_1000033A8(&qword_1001DBD98, &qword_10017BED0);
    sub_10013B718();
    v71 = v110;
    View.accessibilityIdentifier(_:)();
    LocalizedStringKey.init(stringLiteral:)();
    v72 = v109;
    ModifiedContent<>.accessibilityLabel(_:)();

    sub_10001370C(v71, &qword_1001DBD88, &qword_10017BEC8);
    v73 = v107;
    sub_10002091C(v72, v107, &qword_1001DBD88, &qword_10017BEC8);
    *(v73 + *(v120 + 36)) = 0;
    v45 = &qword_1001DBD78;
    v46 = &qword_10017BEC0;
    v44 = v111;
    sub_10002091C(v73, v111, &qword_1001DBD78, &qword_10017BEC0);
    sub_1000138BC(v44, v119, &qword_1001DBD78, &qword_10017BEC0);
    swift_storeEnumTagMultiPayload();
    sub_10013B308();
    sub_10013B5D0();
    v74 = v121;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v74, v129, &qword_1001DBD18, &qword_10017BE90);
    swift_storeEnumTagMultiPayload();
    sub_10013B0B0();
    sub_10013B27C();
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v74, &qword_1001DBD18, &qword_10017BE90);
    return sub_10001370C(v44, v45, v46);
  }

  v61 = static Alignment.center.getter();
  v63 = v62;
  LODWORD(v124) = static Edge.Set.all.getter();
  sub_1001138D8(v116);
  v132 = *&v56;
  v133 = v55;
  State.wrappedValue.getter();
  v64 = v137;
  swift_getKeyPath();
  v132 = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = *(*&v64 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v65 = *(*&v64 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v67 = *(*&v64 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v66, v65, *(*&v64 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v67 == 1)
  {
    v132 = *&v61;
    v133 = v63;
    v134 = 0;
    LOWORD(v135) = 1;
    BYTE2(v135) = v124;
    static GestureMask.all.getter();
  }

  else
  {
    sub_1000616E4(v66, v65, v67);
    v132 = *&v61;
    v133 = v63;
    v134 = 0;
    LOWORD(v135) = 1;
    BYTE2(v135) = v124;
    if (v67 == 3 && v66 == 2 && !v65)
    {
      static GestureMask.all.getter();
    }

    else
    {
      static GestureMask.subviews.getter();
    }
  }

  v75 = sub_1000033A8(&qword_1001DBD30, &qword_10017BEA0);
  v76 = sub_10013B460();
  v77 = sub_100013608(&qword_1001DBD68, &qword_1001DBD38, &qword_10017BEA8, &protocol conformance descriptor for _EndedGesture<A>);
  v78 = v101;
  v79 = v116;
  v80 = v104;
  View.gesture<A>(_:including:)();
  (*(v102 + 8))(v79, v80);
  v132 = *&v75;
  v133 = v80;
  v134 = v76;
  v135 = v77;
  swift_getOpaqueTypeConformance2();
  v81 = v105;
  v82 = v106;
  View.accessibilityIdentifier(_:)();
  (*(v103 + 8))(v78, v82);
  LocalizedStringKey.init(stringLiteral:)();
  v83 = v112;
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001370C(v81, &qword_1001DBD28, &qword_10017BE98);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v84);
  sub_1000033A8(&qword_1001D58A0, &qword_1001771C0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_100171DA0;
  v86 = v126;
  v87 = &v126[*(v125 + 104)];
  v88 = *v87;
  v89 = v87[1];
  v132 = *&v88;
  v133 = v89;
  sub_1000033A8(&qword_1001D48E0, &qword_1001718F0);
  State.wrappedValue.getter();
  v90 = v137 + v137;
  *(v85 + 56) = &type metadata for Double;
  *(v85 + 64) = &protocol witness table for Double;
  *(v85 + 32) = v90;
  v91._countAndFlagsBits = String.init(format:_:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v91);

  v92._countAndFlagsBits = 0x5A2073656D695420;
  v92._object = 0xEB000000006D6F6FLL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v92);
  LocalizedStringKey.init(stringInterpolation:)();
  v93 = v113;
  ModifiedContent<>.accessibilityValue(_:)();

  sub_10001370C(v83, &qword_1001DBD28, &qword_10017BE98);
  v94 = v100;
  sub_10013DAC8(v86, v100, type metadata accessor for ContentView);
  v95 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v96 = swift_allocObject();
  sub_100136D64(v94, v96 + v95, type metadata accessor for ContentView);
  v97 = v115;
  ModifiedContent<>.accessibilityAdjustableAction(_:)();

  sub_10001370C(v93, &qword_1001DBD28, &qword_10017BE98);
  sub_1000138BC(v97, v119, &qword_1001DBD28, &qword_10017BE98);
  swift_storeEnumTagMultiPayload();
  sub_10013B308();
  sub_10013B5D0();
  v98 = v121;
  _ConditionalContent<>.init(storage:)();
  sub_1000138BC(v98, v129, &qword_1001DBD18, &qword_10017BE90);
  swift_storeEnumTagMultiPayload();
  sub_10013B0B0();
  sub_10013B27C();
  _ConditionalContent<>.init(storage:)();
  sub_10001370C(v98, &qword_1001DBD18, &qword_10017BE90);
  return sub_10001370C(v97, &qword_1001DBD28, &qword_10017BE98);
}

uint64_t sub_1000FE040@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v90 = sub_1000033A8(&qword_1001DC3E8, &qword_10017C430);
  __chkstk_darwin(v90);
  v91 = &v68[-v2];
  v72 = type metadata accessor for EnvironmentValues();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v68[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_1000033A8(&qword_1001DC3F0, &qword_10017C438);
  __chkstk_darwin(v89);
  v81 = &v68[-v4];
  v5 = type metadata accessor for ContentView(0);
  v76 = *(v5 - 8);
  __chkstk_darwin(v5);
  v78 = v6;
  v79 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for FeatureOnboardingOverlayExperience();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v82 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000033A8(&qword_1001DC3F8, &qword_10017C440);
  v11 = __chkstk_darwin(v10);
  v88 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v68[-v13];
  v15 = sub_1000033A8(&qword_1001DC400, &qword_10017C448);
  v16 = __chkstk_darwin(v15 - 8);
  v87 = &v68[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v86 = &v68[-v19];
  v20 = __chkstk_darwin(v18);
  v94 = &v68[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v68[-v23];
  __chkstk_darwin(v22);
  v26 = &v68[-v25];
  v77 = v5;
  v27 = *(v5 + 288);
  v28 = sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  v80 = v1;
  v75 = v27;
  v74 = v28;
  Bindable.wrappedValue.getter();
  NewSaliencyModel.fullscreenEntity.getter();

  NewEntityModel.cardModel.getter();
  v29 = v26;

  CardModel.onboardingExperience.getter();

  v84 = *(v8 + 104);
  v84(v24, enum case for FeatureOnboardingOverlayExperience.siri(_:), v7);
  v83 = *(v8 + 56);
  v83(v24, 0, 1, v7);
  v85 = v10;
  v30 = *(v10 + 48);
  sub_1000138BC(v26, v14, &qword_1001DC400, &qword_10017C448);
  sub_1000138BC(v24, &v14[v30], &qword_1001DC400, &qword_10017C448);
  v93 = v8;
  v31 = *(v8 + 48);
  if (v31(v14, 1, v7) == 1)
  {
    sub_10001370C(v24, &qword_1001DC400, &qword_10017C448);
    if (v31(&v14[v30], 1, v7) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1000138BC(v14, v94, &qword_1001DC400, &qword_10017C448);
  if (v31(&v14[v30], 1, v7) == 1)
  {
    sub_10001370C(v24, &qword_1001DC400, &qword_10017C448);
    (*(v93 + 1))(v94, v7);
LABEL_6:
    sub_10001370C(v14, &qword_1001DC3F8, &qword_10017C440);
    goto LABEL_7;
  }

  v51 = v82;
  (*(v93 + 4))(v82, &v14[v30], v7);
  sub_10013FB34(&qword_1001DC418, &type metadata accessor for FeatureOnboardingOverlayExperience, &protocol conformance descriptor for FeatureOnboardingOverlayExperience);
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();
  v73 = v26;
  v52 = *(v93 + 1);
  v52(v51, v7);
  sub_10001370C(v24, &qword_1001DC400, &qword_10017C448);
  v52(v94, v7);
  v29 = v73;
  sub_10001370C(v14, &qword_1001DC400, &qword_10017C448);
  if (v69)
  {
    goto LABEL_21;
  }

LABEL_7:
  v32 = v86;
  v84(v86, enum case for FeatureOnboardingOverlayExperience.montara(_:), v7);
  v83(v32, 0, 1, v7);
  v33 = *(v85 + 48);
  v34 = v88;
  sub_1000138BC(v29, v88, &qword_1001DC400, &qword_10017C448);
  sub_1000138BC(v32, &v34[v33], &qword_1001DC400, &qword_10017C448);
  if (v31(v34, 1, v7) == 1)
  {
    sub_10001370C(v32, &qword_1001DC400, &qword_10017C448);
    if (v31(&v34[v33], 1, v7) == 1)
    {
      v14 = v34;
LABEL_10:
      sub_10001370C(v14, &qword_1001DC400, &qword_10017C448);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      sub_10013FA78();
      _ConditionalContent<>.init(storage:)();
      return sub_10001370C(v29, &qword_1001DC400, &qword_10017C448);
    }

    goto LABEL_13;
  }

  sub_1000138BC(v34, v87, &qword_1001DC400, &qword_10017C448);
  if (v31(&v34[v33], 1, v7) == 1)
  {
    sub_10001370C(v32, &qword_1001DC400, &qword_10017C448);
    (*(v93 + 1))(v87, v7);
LABEL_13:
    sub_10001370C(v34, &qword_1001DC3F8, &qword_10017C440);
    goto LABEL_14;
  }

  v61 = v32;
  v62 = v93;
  v63 = v82;
  (*(v93 + 4))(v82, &v34[v33], v7);
  sub_10013FB34(&qword_1001DC418, &type metadata accessor for FeatureOnboardingOverlayExperience, &protocol conformance descriptor for FeatureOnboardingOverlayExperience);
  v64 = v87;
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v62 + 1);
  v66(v63, v7);
  sub_10001370C(v61, &qword_1001DC400, &qword_10017C448);
  v66(v64, v7);
  sub_10001370C(v34, &qword_1001DC400, &qword_10017C448);
  if (v65)
  {
    goto LABEL_21;
  }

LABEL_14:
  v73 = v29;
  v94 = type metadata accessor for ContentView;
  v35 = v80;
  v36 = v79;
  sub_10013DAC8(v80, v79, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v37 = static MainActor.shared.getter();
  v38 = *(v76 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = &protocol witness table for MainActor;
  v93 = type metadata accessor for ContentView;
  sub_100136D64(v36, v39 + ((v38 + 32) & ~v38), type metadata accessor for ContentView);
  v40 = static MainActor.shared.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  LODWORD(v88) = v96;
  Bindable.wrappedValue.getter();
  v87 = v95;
  v42 = *(v35 + *(v77 + 292));
  v43 = (v35 + *(v77 + 304));
  v44 = *v43;
  v45 = v43[1];
  v97 = v44;
  v98 = v45;
  v46 = v42;
  sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
  State.projectedValue.getter();
  sub_10013DAC8(v35, v36, v94);
  v47 = swift_allocObject();
  sub_100136D64(v36, v47 + ((v38 + 16) & ~v38), v93);

  v48 = v81;
  OmnibarContainer.init(model:sheetAssistant:additionalPartnerHorizontalPadding:isUnified:handler:)();
  v49 = static Edge.Set.bottom.getter();
  v50 = *v35;
  if (*(v35 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v53 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v54 = v70;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v55 = sub_100133E10(v50, 0);
    (*(v71 + 8))(v54, v72, v55);
  }

  EdgeInsets.init(_all:)();
  v56 = v48 + *(v89 + 36);
  *v56 = v49;
  *(v56 + 8) = v57;
  *(v56 + 16) = v58;
  *(v56 + 24) = v59;
  *(v56 + 32) = v60;
  *(v56 + 40) = 0;
  sub_1000138BC(v48, v91, &qword_1001DC3F0, &qword_10017C438);
  swift_storeEnumTagMultiPayload();
  sub_10013FA78();
  _ConditionalContent<>.init(storage:)();

  sub_10001370C(v48, &qword_1001DC3F0, &qword_10017C438);
  v29 = v73;
  return sub_10001370C(v29, &qword_1001DC400, &qword_10017C448);
}

uint64_t sub_1000FED80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for ContentView(0);
  v4 = *(v3 - 8);
  v63 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v59 = v5;
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000033A8(&qword_1001DC080, &qword_10017C138);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = sub_1000033A8(&qword_1001DC088, &qword_10017C140);
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  __chkstk_darwin(v10);
  v61 = &v48 - v12;
  v13 = sub_1000033A8(&qword_1001DC090, &qword_10017C148);
  v14 = *(v13 - 8);
  v54 = v13;
  v55 = v14;
  __chkstk_darwin(v13);
  v62 = &v48 - v15;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v16 = sub_1000033A8(&qword_1001DC098, &qword_10017C150);
  sub_10010F938(v1, &v9[*(v16 + 44)]);
  v17 = *(v7 + 36);
  v49 = v7;
  v9[v17] = 1;
  v64 = sub_1001112C8();
  v60 = type metadata accessor for ContentView;
  v18 = v6;
  v57 = v6;
  sub_10013DAC8(v2, v6, type metadata accessor for ContentView);
  v51 = *(v4 + 80);
  v19 = (v51 + 16) & ~v51;
  v20 = swift_allocObject();
  v58 = type metadata accessor for ContentView;
  sub_100136D64(v18, v20 + v19, type metadata accessor for ContentView);
  v21 = sub_1000033A8(&qword_1001DC0A0, &qword_10017C158);
  v22 = sub_10013CAA8();
  v23 = sub_10013CB60();
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v9, &qword_1001DC080, &qword_10017C138);
  v24 = *(v63 + 168);
  v50 = v2;
  v25 = (v2 + v24);
  v27 = *v25;
  v26 = v25[1];
  v64 = v27;
  v65 = v26;
  sub_1000033A8(&qword_1001DBB90, &qword_10017BBD8);
  State.wrappedValue.getter();
  v28 = v2;
  v29 = v57;
  sub_10013DAC8(v28, v57, v60);
  v30 = swift_allocObject();
  sub_100136D64(v29, v30 + v19, v58);
  v31 = sub_1000033A8(&qword_1001DA510, qword_100179990);
  v64 = v49;
  v65 = v21;
  v66 = v22;
  v67 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_10013CC68();
  v34 = v61;
  v35 = v52;
  View.onChange<A>(of:initial:_:)();

  (*(v53 + 8))(v34, v35);
  v36 = v50;
  v37 = v50 + *(v63 + 164);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v64) = v38;
  v65 = v39;
  sub_1000033A8(&qword_1001DBB98, &qword_10017BBE0);
  State.wrappedValue.getter();
  v40 = v57;
  sub_10013DAC8(v36, v57, v60);
  v41 = swift_allocObject();
  sub_100136D64(v40, v41 + v19, v58);
  v64 = v35;
  v65 = v31;
  v66 = OpaqueTypeConformance2;
  v67 = v33;
  v42 = swift_getOpaqueTypeConformance2();
  sub_1000D4810(v42, v43, v44);
  v45 = v54;
  v46 = v62;
  View.onChange<A>(of:initial:_:)();

  return (*(v55 + 8))(v46, v45);
}

uint64_t sub_1000FF33C@<X0>(uint64_t a1@<X8>)
{
  v134 = a1;
  v126 = type metadata accessor for UUID();
  v125 = *(v126 - 8);
  v2 = __chkstk_darwin(v126);
  v123 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v124 = &v96 - v4;
  v5 = type metadata accessor for ContentView(0);
  v117 = *(v5 - 8);
  __chkstk_darwin(v5);
  v130 = v6;
  v122 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResultLookupState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v103 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for MorphingContainerMode();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v127 = (&v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = sub_1000033A8(&qword_1001DBFC8, &qword_10017C0A8);
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v96 - v11;
  v107 = sub_1000033A8(&qword_1001DBFD0, &qword_10017C0B0);
  __chkstk_darwin(v107);
  v113 = &v96 - v12;
  v13 = sub_1000033A8(&qword_1001DBFD8, &qword_10017C0B8);
  __chkstk_darwin(v13);
  v112 = &v96 - v14;
  v110 = sub_1000033A8(&qword_1001DBFE0, &qword_10017C0C0);
  __chkstk_darwin(v110);
  v115 = &v96 - v15;
  v114 = sub_1000033A8(&qword_1001DBFE8, &qword_10017C0C8);
  __chkstk_darwin(v114);
  v118 = &v96 - v16;
  v116 = sub_1000033A8(&qword_1001DBFF0, &qword_10017C0D0);
  __chkstk_darwin(v116);
  v121 = &v96 - v17;
  v135 = sub_1000033A8(&qword_1001DBFF8, &qword_10017C0D8);
  v133 = *(v135 - 8);
  v18 = __chkstk_darwin(v135);
  v120 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v96 - v20;
  v21 = sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v96 - v25;
  v129 = type metadata accessor for ImageSearchState();
  v27 = *(v129 - 8);
  v28 = __chkstk_darwin(v129);
  v128 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v132 = &v96 - v30;
  v106 = v5;
  sub_1000033A8(&qword_1001DB7A8, &qword_10017B8B0);
  v131 = v1;
  State.wrappedValue.getter();
  v31 = *(v8 + 48);
  if (v31(v26, 1, v7) == 1)
  {
    sub_10001370C(v26, &qword_1001DB750, &qword_10017B798);
    return (*(v133 + 56))(v134, 1, 1, v135);
  }

  if ((*(v8 + 88))(v26, v7) != enum case for ResultLookupState.imageSearch(_:))
  {
    (*(v8 + 8))(v26, v7);
    return (*(v133 + 56))(v134, 1, 1, v135);
  }

  v100 = v13;
  v96 = v8;
  (*(v8 + 96))(v26, v7);
  v32 = v26;
  v33 = v129;
  (*(v27 + 32))(v132, v32, v129);
  v34 = *(v27 + 104);
  v35 = v128;
  v99 = enum case for ImageSearchState.started(_:);
  v98 = v27 + 104;
  v97 = v34;
  v34(v128);
  v36 = static ImageSearchState.== infix(_:_:)();
  v37 = *(v27 + 8);
  v102 = v27 + 8;
  v101 = v37;
  v37(v35, v33);
  v38 = &enum case for MorphingContainerMode.pill(_:);
  if ((v36 & 1) == 0)
  {
    v38 = &enum case for MorphingContainerMode.platter(_:);
  }

  (*(v104 + 104))(v127, *v38, v105);
  v39 = v131 + *(v106 + 80);
  v40 = *v39;
  v41 = *(v39 + 8);
  LOBYTE(v139) = v40;
  *(&v139 + 1) = v41;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  if (v31(v24, 1, v7))
  {
    v42 = sub_10001370C(v24, &qword_1001DB750, &qword_10017B798);
  }

  else
  {
    v44 = v96;
    v45 = v103;
    (*(v96 + 16))(v103, v24, v7);
    sub_10001370C(v24, &qword_1001DB750, &qword_10017B798);
    sub_100157940();
    v42 = (*(v44 + 8))(v45, v7);
  }

  __chkstk_darwin(v42);
  v46 = v131;
  sub_1000033A8(&qword_1001DA828, &qword_10017A220);
  type metadata accessor for ImageSearchResultView();
  sub_1000DED2C();
  sub_10013FB34(&qword_1001DC000, &type metadata accessor for ImageSearchResultView, &protocol conformance descriptor for ImageSearchResultView);
  v47 = v108;
  MorphingContainer.init(mode:showLatencyEffects:showRestingEffects:showContentEffects:ViewBuilder:platterContent:)();
  v127 = type metadata accessor for ContentView;
  v48 = v122;
  sub_10013DAC8(v46, v122, type metadata accessor for ContentView);
  v49 = (*(v117 + 80) + 16) & ~*(v117 + 80);
  v50 = swift_allocObject();
  v117 = type metadata accessor for ContentView;
  sub_100136D64(v48, v50 + v49, type metadata accessor for ContentView);
  v51 = v113;
  (*(v109 + 32))(v113, v47, v111);
  v52 = (v51 + *(v107 + 36));
  *v52 = sub_10013C888;
  v52[1] = v50;
  v52[2] = 0;
  v52[3] = 0;
  v53 = static Alignment.center.getter();
  v55 = v54;
  v56 = v112;
  v57 = &v112[*(v100 + 36)];
  sub_10010DFE8(v46, v132, v57);
  v58 = (v57 + *(sub_1000033A8(&qword_1001DC008, &qword_10017C0E0) + 36));
  *v58 = v53;
  v58[1] = v55;
  v59 = sub_10002091C(v51, v56, &qword_1001DBFD0, &qword_10017C0B0);
  sub_10013C54C(v59, v60, v61);
  v62 = AnyTransition.init<A>(_:)();
  v63 = v115;
  sub_10002091C(v56, v115, &qword_1001DBFD8, &qword_10017C0B8);
  *(v63 + *(v110 + 36)) = v62;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v64 = v63;
  v65 = v118;
  sub_10002091C(v64, v118, &qword_1001DBFE0, &qword_10017C0C0);
  v66 = (v65 + *(v114 + 36));
  v67 = v144;
  v66[4] = v143;
  v66[5] = v67;
  v66[6] = v145;
  v68 = v140;
  *v66 = v139;
  v66[1] = v68;
  v69 = v142;
  v66[2] = v141;
  v66[3] = v69;
  LOBYTE(v62) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v121;
  sub_10002091C(v65, v121, &qword_1001DBFE8, &qword_10017C0C8);
  v79 = v78 + *(v116 + 36);
  *v79 = v62;
  *(v79 + 8) = v71;
  *(v79 + 16) = v73;
  *(v79 + 24) = v75;
  *(v79 + 32) = v77;
  *(v79 + 40) = 0;
  v80 = v128;
  v81 = v129;
  v97(v128, v99, v129);
  sub_10013FB34(&qword_1001DC010, &type metadata accessor for ImageSearchState, &protocol conformance descriptor for ImageSearchState);
  LOBYTE(v65) = dispatch thunk of static Equatable.== infix(_:_:)();
  v101(v80, v81);
  sub_10013DAC8(v46, v48, v127);
  v82 = swift_allocObject();
  sub_100136D64(v48, v82 + v49, v117);
  v83 = v120;
  v84 = &v120[*(v135 + 36)];
  *v84 = (v65 & 1) == 0;
  v84[1] = 1;
  *(v84 + 1) = sub_10013C8A0;
  *(v84 + 2) = v82;
  v136 = 0;

  State.init(wrappedValue:)();
  v85 = v138;
  *(v84 + 3) = v137;
  *(v84 + 4) = v85;
  LOBYTE(v136) = 0;
  State.init(wrappedValue:)();
  v86 = v138;
  v84[40] = v137;
  *(v84 + 6) = v86;
  v136 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v87 = v138;
  *(v84 + 7) = v137;
  *(v84 + 8) = v87;
  v136 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v88 = v138;
  *(v84 + 9) = v137;
  *(v84 + 10) = v88;
  v136 = 0;
  State.init(wrappedValue:)();
  v89 = v138;
  *(v84 + 11) = v137;
  *(v84 + 12) = v89;
  type metadata accessor for SwipeToDismissModifier(0);
  v90 = v124;
  UUID.init()();
  v91 = v125;
  v92 = v126;
  (*(v125 + 16))(v123, v90, v126);
  State.init(wrappedValue:)();

  (*(v91 + 8))(v90, v92);
  sub_10002091C(v78, v83, &qword_1001DBFF0, &qword_10017C0D0);
  v93 = v119;
  sub_10002091C(v83, v119, &qword_1001DBFF8, &qword_10017C0D8);
  v94 = v93;
  v95 = v134;
  sub_10002091C(v94, v134, &qword_1001DBFF8, &qword_10017C0D8);
  (*(v133 + 56))(v95, 0, 1, v135);
  return (v101)(v132, v81);
}

uint64_t sub_10010043C@<X0>(uint64_t a1@<X8>)
{
  v113 = type metadata accessor for AccessibilityChildBehavior();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for UUID();
  v109 = *(v110 - 8);
  v4 = __chkstk_darwin(v110);
  v107 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v108 = &v86 - v6;
  v7 = type metadata accessor for ContentView(0);
  v100 = *(v7 - 8);
  __chkstk_darwin(v7);
  v101 = v8;
  v102 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MorphingContainerMode();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v92 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1000033A8(&qword_1001DBF48, &qword_10017C068);
  v94 = *(v97 - 8);
  __chkstk_darwin(v97);
  v93 = &v86 - v10;
  v91 = sub_1000033A8(&qword_1001DBF50, &qword_10017C070);
  __chkstk_darwin(v91);
  v96 = &v86 - v11;
  v95 = sub_1000033A8(&qword_1001DBF58, &qword_10017C078);
  __chkstk_darwin(v95);
  v99 = &v86 - v12;
  v98 = sub_1000033A8(&qword_1001DBF60, &qword_10017C080);
  __chkstk_darwin(v98);
  v104 = &v86 - v13;
  v105 = sub_1000033A8(&qword_1001DBF68, &qword_10017C088);
  __chkstk_darwin(v105);
  v106 = &v86 - v14;
  v118 = sub_1000033A8(&qword_1001DBF70, &qword_10017C090);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v103 = &v86 - v15;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  __chkstk_darwin(v18 - 8);
  v20 = &v86 - v19;
  v114 = type metadata accessor for AcmeState();
  v115 = *(v114 - 8);
  v21 = __chkstk_darwin(v114);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v86 - v24;
  v120 = sub_1000033A8(&qword_1001DBF78, &qword_10017C098);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v86 - v26;
  v27 = (v1 + *(v7 + 60));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v124) = v28;
  *(&v124 + 1) = v29;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (v122 == 1)
  {
    v88 = a1;
    sub_1000033A8(&qword_1001DB7A8, &qword_10017B8B0);
    v87 = v1;
    State.wrappedValue.getter();
    v30 = type metadata accessor for ResultLookupState();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v20, 1, v30) == 1)
    {
      sub_10001370C(v20, &qword_1001DB750, &qword_10017B798);
    }

    else
    {
      if ((*(v31 + 88))(v20, v30) == enum case for ResultLookupState.acme(_:))
      {
        (*(v31 + 96))(v20, v30);
        v33 = v115;
        v34 = v114;
        (*(v115 + 32))(v25, v20, v114);
        String.LocalizationValue.init(stringLiteral:)();
        sub_10005BBC4(0, &qword_1001D42C8, NSBundle_ptr);
        if (!NSBundle.init(__dsoHandle:)())
        {
          v35 = [objc_opt_self() mainBundle];
        }

        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        (*(v33 + 104))(v23, enum case for AcmeState.running(_:), v34);
        v36 = static AcmeState.== infix(_:_:)();
        v37 = *(v33 + 8);
        v115 = v33 + 8;
        v86 = v37;
        v37(v23, v34);
        v38 = &enum case for MorphingContainerMode.pill(_:);
        if ((v36 & 1) == 0)
        {
          v38 = &enum case for MorphingContainerMode.platter(_:);
        }

        (v89[13])(v92, *v38, v90);
        v39 = v87;
        v40 = v87 + *(v7 + 80);
        v41 = *v40;
        v42 = *(v40 + 8);
        LOBYTE(v124) = v41;
        *(&v124 + 1) = v42;
        v43 = State.wrappedValue.getter();
        v89 = &v86;
        v44 = __chkstk_darwin(v43);
        __chkstk_darwin(v44);
        sub_1000033A8(&qword_1001DA828, &qword_10017A220);
        type metadata accessor for ACMEResultView(0);
        sub_1000DED2C();
        sub_10013FB34(&qword_1001DBF80, type metadata accessor for ACMEResultView, &unk_10017A1C0);
        v90 = v25;
        v45 = v93;
        MorphingContainer.init(mode:showLatencyEffects:showRestingEffects:showContentEffects:ViewBuilder:platterContent:)();

        sub_10013C54C(v46, v47, v48);
        v49 = AnyTransition.init<A>(_:)();
        v50 = v96;
        (*(v94 + 32))(v96, v45, v97);
        *&v50[*(v91 + 36)] = v49;
        static Alignment.top.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v51 = v50;
        v52 = v99;
        sub_10002091C(v51, v99, &qword_1001DBF50, &qword_10017C070);
        v53 = (v52 + *(v95 + 36));
        v54 = v129;
        v53[4] = v128;
        v53[5] = v54;
        v53[6] = v130;
        v55 = v125;
        *v53 = v124;
        v53[1] = v55;
        v56 = v127;
        v53[2] = v126;
        v53[3] = v56;
        LOBYTE(v49) = static Edge.Set.horizontal.getter();
        EdgeInsets.init(_all:)();
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v65 = v104;
        sub_10002091C(v52, v104, &qword_1001DBF58, &qword_10017C078);
        v66 = v65 + *(v98 + 36);
        *v66 = v49;
        *(v66 + 8) = v58;
        *(v66 + 16) = v60;
        *(v66 + 24) = v62;
        *(v66 + 32) = v64;
        *(v66 + 40) = 0;
        v67 = v102;
        sub_10013DAC8(v39, v102, type metadata accessor for ContentView);
        v68 = (*(v100 + 80) + 16) & ~*(v100 + 80);
        v69 = swift_allocObject();
        sub_100136D64(v67, v69 + v68, type metadata accessor for ContentView);
        v70 = v106;
        v71 = &v106[*(v105 + 36)];
        *v71 = 257;
        *(v71 + 1) = sub_10013C5A0;
        *(v71 + 2) = v69;
        v121 = 0;

        State.init(wrappedValue:)();
        v72 = v123;
        *(v71 + 3) = v122;
        *(v71 + 4) = v72;
        LOBYTE(v121) = 0;
        State.init(wrappedValue:)();
        v73 = v123;
        v71[40] = v122;
        *(v71 + 6) = v73;
        v121 = 0x3FF0000000000000;
        State.init(wrappedValue:)();
        v74 = v123;
        *(v71 + 7) = v122;
        *(v71 + 8) = v74;
        v121 = 0x3FF0000000000000;
        State.init(wrappedValue:)();
        v75 = v123;
        *(v71 + 9) = v122;
        *(v71 + 10) = v75;
        v121 = 0;
        State.init(wrappedValue:)();
        v76 = v123;
        *(v71 + 11) = v122;
        *(v71 + 12) = v76;
        type metadata accessor for SwipeToDismissModifier(0);
        v77 = v108;
        UUID.init()();
        v78 = v109;
        v79 = v110;
        (*(v109 + 16))(v107, v77, v110);
        State.init(wrappedValue:)();

        (*(v78 + 8))(v77, v79);
        sub_10002091C(v65, v70, &qword_1001DBF60, &qword_10017C080);
        v80 = v111;
        static AccessibilityChildBehavior.combine.getter();
        sub_10013C5AC();
        v81 = v103;
        View.accessibilityElement(children:)();
        (*(v112 + 8))(v80, v113);
        sub_10001370C(v70, &qword_1001DBF68, &qword_10017C088);
        v82 = v117;
        v83 = v116;
        v84 = v118;
        (*(v117 + 32))(v116, v81, v118);
        (*(v82 + 56))(v83, 0, 1, v84);
        v86(v90, v114);
        goto LABEL_13;
      }

      (*(v31 + 8))(v20, v30);
    }

    v83 = v116;
    (*(v117 + 56))(v116, 1, 1, v118);
LABEL_13:
    a1 = v88;
    sub_10002091C(v83, v88, &qword_1001DBF78, &qword_10017C098);
    v32 = 0;
    return (*(v119 + 56))(a1, v32, 1, v120);
  }

  v32 = 1;
  return (*(v119 + 56))(a1, v32, 1, v120);
}

uint64_t sub_1001014EC@<X0>(uint64_t a1@<X8>)
{
  v220 = a1;
  v164 = sub_1000033A8(&qword_1001DBF20, &qword_10017BFE8);
  __chkstk_darwin(v164);
  v165 = (&v162 - v2);
  v211 = sub_1000033A8(&qword_1001DBE58, &qword_10017BF20);
  __chkstk_darwin(v211);
  v166 = &v162 - v3;
  v168 = type metadata accessor for FeatureOnboardingOverlayExperience();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v169 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for FeatureOnboardingOverlay();
  v171 = *(v181 - 8);
  __chkstk_darwin(v181);
  v170 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1000033A8(&qword_1001DBF28, &qword_10017BFF0);
  __chkstk_darwin(v175);
  v176 = &v162 - v6;
  v209 = sub_1000033A8(&qword_1001DBE38, &qword_10017BF18);
  __chkstk_darwin(v209);
  v177 = &v162 - v7;
  v8 = type metadata accessor for ContentView(0);
  v178 = *(v8 - 1);
  v9 = __chkstk_darwin(v8);
  v172 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v10;
  __chkstk_darwin(v9);
  v179 = &v162 - v11;
  v174 = type metadata accessor for OnboardingOverlay(0);
  __chkstk_darwin(v174);
  v173 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v183 = *(v185 - 8);
  __chkstk_darwin(v185);
  v184 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v188 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v187 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for LocalizedStringResource();
  v186 = *(v199 - 8);
  v18 = __chkstk_darwin(v199);
  v182 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v198 = &v162 - v20;
  v219 = sub_1000033A8(&qword_1001DBF30, &qword_10017BFF8);
  __chkstk_darwin(v219);
  v218 = &v162 - v21;
  v206 = sub_1000033A8(&qword_1001DBF38, &qword_10017C000);
  __chkstk_darwin(v206);
  v208 = &v162 - v22;
  v204 = sub_1000033A8(&qword_1001DBF40, &qword_10017C008);
  __chkstk_darwin(v204);
  v203 = &v162 - v23;
  v207 = sub_1000033A8(&qword_1001DBDF8, &qword_10017BF00);
  __chkstk_darwin(v207);
  v205 = &v162 - v24;
  v210 = sub_1000033A8(&qword_1001DBDE8, &qword_10017BEF8);
  __chkstk_darwin(v210);
  v217 = &v162 - v25;
  v216 = type metadata accessor for OpacityTransition();
  v214 = *(v216 - 8);
  __chkstk_darwin(v216);
  v212 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1000033A8(&qword_1001DBE88, &qword_10017BF48);
  v215 = *(v202 - 8);
  v27 = __chkstk_darwin(v202);
  v201 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v213 = &v162 - v29;
  v197 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v194 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for GreymatterAvailability.UseCaseIdentifier();
  v193 = *(v195 - 8);
  __chkstk_darwin(v195);
  v32 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for GreymatterAvailability();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v34 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000033A8(&qword_1001D50F0, &qword_1001727A0);
  __chkstk_darwin(v35 - 8);
  v189 = &v162 - v36;
  v37 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v190 = *(v37 - 8);
  v38 = __chkstk_darwin(v37);
  v40 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v162 - v41;
  v200 = sub_1000033A8(&qword_1001DBE08, &qword_10017BF08);
  __chkstk_darwin(v200);
  v44 = (&v162 - v43);
  v45 = v1;
  v46 = v1 + v8[37];
  v47 = *v46;
  v48 = *(v46 + 8);
  LOBYTE(v222) = v47;
  *(&v222 + 1) = v48;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (v221 == 1)
  {
    *v44 = swift_getKeyPath();
    v163 = v44;
    sub_1000033A8(&qword_1001D50E0, &qword_100172790);
    swift_storeEnumTagMultiPayload();
    v49 = type metadata accessor for MissingIntelligenceView(0);
    v50 = v44 + *(v49 + 20);
    *v50 = swift_getKeyPath();
    *(v50 + 1) = 0;
    v50[16] = 0;
    v199 = *(v49 + 24);
    static GreymatterAvailability.shared.getter();
    v51 = v193;
    v52 = v195;
    (*(v193 + 104))(v32, enum case for GreymatterAvailability.UseCaseIdentifier.settings(_:), v195);
    v53 = v194;
    default argument 1 of GreymatterAvailability.availability(_:languageOption:)();
    v54 = v189;
    GreymatterAvailability.availability(_:languageOption:)();
    (*(v196 + 8))(v53, v197);
    (*(v51 + 8))(v32, v52);
    (*(v191 + 8))(v34, v192);
    sub_10001370C(v54, &qword_1001D50F0, &qword_1001727A0);
    v55 = v190;
    (*(v190 + 16))(v40, v42, v37);
    v56 = v163;
    State.init(wrappedValue:)();
    (*(v55 + 8))(v42, v37);
    v57 = v212;
    OpacityTransition.init()();
    static Animation.linear(duration:)();
    v58 = sub_10013FB34(&qword_1001D4E70, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v59 = v213;
    v60 = v216;
    Transition.animation(_:)();

    (*(v214 + 8))(v57, v60);
    v61 = v215;
    v62 = v202;
    (*(v215 + 16))(v201, v59, v202);
    *&v222 = v60;
    *(&v222 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v63 = AnyTransition.init<A>(_:)();
    (*(v61 + 8))(v59, v62);
    *(v56 + *(v200 + 36)) = v63;
    sub_1000138BC(v56, v203, &qword_1001DBE08, &qword_10017BF08);
    swift_storeEnumTagMultiPayload();
    sub_1000033A8(&qword_1001DBE20, &qword_10017BF10);
    sub_10013BAB0();
    sub_10013BB98();
    v64 = v205;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v64, v208, &qword_1001DBDF8, &qword_10017BF00);
    swift_storeEnumTagMultiPayload();
    sub_10013BA24();
    sub_10013BCA4();
    v65 = v217;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v64, &qword_1001DBDF8, &qword_10017BF00);
    sub_1000138BC(v65, v218, &qword_1001DBDE8, &qword_10017BEF8);
    swift_storeEnumTagMultiPayload();
    sub_10013B998();
    sub_10013BD90();
    v66 = v220;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v65, &qword_1001DBDE8, &qword_10017BEF8);
    sub_10001370C(v56, &qword_1001DBE08, &qword_10017BF08);
    v67 = sub_1000033A8(&qword_1001DBDD8, &qword_10017BEF0);
    return (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  }

  else
  {
    v69 = v212;
    v70 = v214;
    v71 = v213;
    v72 = v216;
    v73 = v215;
    if (sub_1001151BC())
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v183 + 104))(v184, enum case for LocalizedStringResource.BundleDescription.main(_:), v185);
      v74 = v198;
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v197 = String.init(localized:table:bundle:locale:comment:)();
      v196 = v75;
      v76 = v186;
      (*(v186 + 16))(v182, v74, v199);
      v195 = String.init(localized:)();
      v194 = v77;
      v193 = 0x800000010016EFE0;
      v221 = 0;
      State.init(wrappedValue:)();
      v78 = v222;
      OpacityTransition.init()();
      static Animation.linear(duration:)();
      v79 = sub_10013FB34(&qword_1001D4E70, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
      Transition.animation(_:)();

      (*(v70 + 8))(v69, v72);
      v80 = v202;
      (*(v73 + 16))(v201, v71, v202);
      *&v222 = v72;
      *(&v222 + 1) = v79;
      swift_getOpaqueTypeConformance2();
      v81 = AnyTransition.init<A>(_:)();
      (*(v73 + 8))(v71, v80);
      *&v222 = v197;
      *(&v222 + 1) = v196;
      *&v223 = v195;
      *(&v223 + 1) = v194;
      *&v224 = 0xD000000000000010;
      *(&v224 + 1) = v193;
      v225 = 0uLL;
      v226 = v78;
      v227 = v81;
      v82 = v203;
      *(v203 + 80) = v81;
      v83 = v225;
      v82[2] = v224;
      v82[3] = v83;
      v82[4] = v226;
      v84 = v223;
      *v82 = v222;
      v82[1] = v84;
      swift_storeEnumTagMultiPayload();
      sub_1000138BC(&v222, &v221, &qword_1001DBE20, &qword_10017BF10);
      sub_1000033A8(&qword_1001DBE20, &qword_10017BF10);
      sub_10013BAB0();
      sub_10013BB98();
      v85 = v205;
      _ConditionalContent<>.init(storage:)();
      sub_1000138BC(v85, v208, &qword_1001DBDF8, &qword_10017BF00);
      swift_storeEnumTagMultiPayload();
      sub_10013BA24();
      sub_10013BCA4();
      v86 = v217;
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(v85, &qword_1001DBDF8, &qword_10017BF00);
      sub_1000138BC(v86, v218, &qword_1001DBDE8, &qword_10017BEF8);
      swift_storeEnumTagMultiPayload();
      sub_10013B998();
      sub_10013BD90();
      v87 = v220;
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(&v222, &qword_1001DBE20, &qword_10017BF10);
      sub_10001370C(v86, &qword_1001DBDE8, &qword_10017BEF8);
      (*(v76 + 8))(v198, v199);
      v88 = sub_1000033A8(&qword_1001DBDD8, &qword_10017BEF0);
      return (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    }

    else
    {
      v89 = v1 + v8[46];
      v90 = *v89;
      v91 = *(v89 + 8);
      LOBYTE(v222) = v90;
      *(&v222 + 1) = v91;
      State.wrappedValue.getter();
      if (v221 == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v92 = String.init(localized:table:bundle:locale:comment:)();
        v94 = v93;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v95 = String.init(localized:table:bundle:locale:comment:)();
        v97 = v96;
        v98 = v45;
        v99 = v179;
        sub_10013DAC8(v98, v179, type metadata accessor for ContentView);
        v100 = (*(v178 + 80) + 16) & ~*(v178 + 80);
        v101 = swift_allocObject();
        sub_100136D64(v99, v101 + v100, type metadata accessor for ContentView);
        v221 = 0;
        State.init(wrappedValue:)();
        v102 = *(&v222 + 1);
        v103 = v173;
        *(v173 + 6) = v222;
        *(v103 + 56) = v102;
        v221 = 0;
        State.init(wrappedValue:)();
        v104 = *(&v222 + 1);
        *(v103 + 64) = v222;
        *(v103 + 72) = v104;
        LOBYTE(v221) = 0;
        State.init(wrappedValue:)();
        v105 = *(&v222 + 1);
        *(v103 + 80) = v222;
        *(v103 + 88) = v105;
        AccessibilityFocusState.init<>()();
        *v103 = v92;
        *(v103 + 8) = v94;
        *(v103 + 16) = v95;
        *(v103 + 24) = v97;
        *(v103 + 32) = sub_10013C224;
        *(v103 + 40) = v101;
        sub_10013DAC8(v103, v176, type metadata accessor for OnboardingOverlay);
        swift_storeEnumTagMultiPayload();
        sub_10013FB34(&qword_1001DBE40, type metadata accessor for OnboardingOverlay, &unk_100179474);
        sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay, &protocol conformance descriptor for FeatureOnboardingOverlay);
        v106 = v177;
        _ConditionalContent<>.init(storage:)();
        sub_1000138BC(v106, v208, &qword_1001DBE38, &qword_10017BF18);
        swift_storeEnumTagMultiPayload();
        sub_10013BA24();
        sub_10013BCA4();
        v107 = v217;
        _ConditionalContent<>.init(storage:)();
        sub_10001370C(v106, &qword_1001DBE38, &qword_10017BF18);
        sub_1000138BC(v107, v218, &qword_1001DBDE8, &qword_10017BEF8);
        swift_storeEnumTagMultiPayload();
        sub_10013B998();
        sub_10013BD90();
        v108 = v220;
        _ConditionalContent<>.init(storage:)();
        sub_10001370C(v107, &qword_1001DBDE8, &qword_10017BEF8);
        sub_10013E658(v103, type metadata accessor for OnboardingOverlay);
        v109 = sub_1000033A8(&qword_1001DBDD8, &qword_10017BEF0);
        return (*(*(v109 - 8) + 56))(v108, 0, 1, v109);
      }

      else
      {
        v110 = v1 + v8[45];
        v111 = *v110;
        v112 = *(v110 + 8);
        LOBYTE(v222) = v111;
        *(&v222 + 1) = v112;
        State.wrappedValue.getter();
        v113 = v220;
        v114 = v218;
        v115 = v217;
        if (v221 == 1)
        {
          (*(v167 + 104))(v169, enum case for FeatureOnboardingOverlayExperience.askAcme(_:), v168);
          v116 = v179;
          sub_10013DAC8(v1, v179, type metadata accessor for ContentView);
          v117 = (*(v178 + 80) + 16) & ~*(v178 + 80);
          v118 = swift_allocObject();
          sub_100136D64(v116, v118 + v117, type metadata accessor for ContentView);
          v119 = v172;
          sub_10013DAC8(v1, v172, type metadata accessor for ContentView);
          v120 = swift_allocObject();
          sub_100136D64(v119, v120 + v117, type metadata accessor for ContentView);
          v121 = v170;
          FeatureOnboardingOverlay.init(experience:fullScreenRequested:continueAction:cancellationAction:)();
          v122 = v171;
          v123 = v181;
          (*(v171 + 16))(v176, v121, v181);
          swift_storeEnumTagMultiPayload();
          sub_10013FB34(&qword_1001DBE40, type metadata accessor for OnboardingOverlay, &unk_100179474);
          sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay, &protocol conformance descriptor for FeatureOnboardingOverlay);
          v124 = v177;
          _ConditionalContent<>.init(storage:)();
          sub_1000138BC(v124, v208, &qword_1001DBE38, &qword_10017BF18);
          swift_storeEnumTagMultiPayload();
          sub_10013BA24();
          sub_10013BCA4();
          _ConditionalContent<>.init(storage:)();
          sub_10001370C(v124, &qword_1001DBE38, &qword_10017BF18);
          sub_1000138BC(v115, v218, &qword_1001DBDE8, &qword_10017BEF8);
          swift_storeEnumTagMultiPayload();
          sub_10013B998();
          sub_10013BD90();
          v125 = v220;
          _ConditionalContent<>.init(storage:)();
          sub_10001370C(v115, &qword_1001DBDE8, &qword_10017BEF8);
          (*(v122 + 8))(v121, v123);
          v126 = sub_1000033A8(&qword_1001DBDD8, &qword_10017BEF0);
          return (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
        }

        else
        {
          v127 = v1 + v8[44];
          v128 = *v127;
          v129 = *(v127 + 8);
          LOBYTE(v222) = v128;
          *(&v222 + 1) = v129;
          State.wrappedValue.getter();
          if (v221 == 1)
          {
            (*(v167 + 104))(v169, enum case for FeatureOnboardingOverlayExperience.imageSearch(_:), v168);
            v130 = v179;
            sub_10013DAC8(v1, v179, type metadata accessor for ContentView);
            v131 = v114;
            v132 = (*(v178 + 80) + 16) & ~*(v178 + 80);
            v133 = swift_allocObject();
            sub_100136D64(v130, v133 + v132, type metadata accessor for ContentView);
            v134 = v172;
            sub_10013DAC8(v1, v172, type metadata accessor for ContentView);
            v135 = swift_allocObject();
            sub_100136D64(v134, v135 + v132, type metadata accessor for ContentView);
            default argument 1 of FeatureOnboardingOverlay.init(experience:fullScreenRequested:continueAction:cancellationAction:)();
            v136 = v170;
            FeatureOnboardingOverlay.init(experience:fullScreenRequested:continueAction:cancellationAction:)();
            v137 = v171;
            v138 = v181;
            (*(v171 + 16))(v165, v136, v181);
            swift_storeEnumTagMultiPayload();
            v139 = sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay, &protocol conformance descriptor for FeatureOnboardingOverlay);
            sub_10013BE4C(v139, v140, v141);
            v142 = v166;
            _ConditionalContent<>.init(storage:)();
            sub_1000138BC(v142, v131, &qword_1001DBE58, &qword_10017BF20);
            swift_storeEnumTagMultiPayload();
            sub_10013B998();
            sub_10013BD90();
            v143 = v220;
            _ConditionalContent<>.init(storage:)();
            sub_10001370C(v142, &qword_1001DBE58, &qword_10017BF20);
            (*(v137 + 8))(v136, v138);
            v144 = sub_1000033A8(&qword_1001DBDD8, &qword_10017BEF0);
            return (*(*(v144 - 8) + 56))(v143, 0, 1, v144);
          }

          else
          {
            v145 = v1 + v8[48];
            v146 = *v145;
            v147 = *(v145 + 8);
            LOBYTE(v222) = v146;
            *(&v222 + 1) = v147;
            State.wrappedValue.getter();
            if (v221 == 1)
            {
              v148 = v179;
              sub_10013DAC8(v1, v179, type metadata accessor for ContentView);
              v149 = (*(v178 + 80) + 16) & ~*(v178 + 80);
              v150 = swift_allocObject();
              sub_100136D64(v148, v150 + v149, type metadata accessor for ContentView);
              v151 = v172;
              sub_10013DAC8(v1, v172, type metadata accessor for ContentView);
              v152 = swift_allocObject();
              sub_100136D64(v151, v152 + v149, type metadata accessor for ContentView);
              v221 = 0;
              State.init(wrappedValue:)();
              v153 = v222;
              v221 = 0;
              State.init(wrappedValue:)();
              v154 = v222;
              v155 = v165;
              *v165 = sub_10013C130;
              v155[1] = v150;
              v155[2] = sub_10013C148;
              v155[3] = v152;
              *(v155 + 2) = v153;
              *(v155 + 3) = v154;
              swift_storeEnumTagMultiPayload();
              v156 = sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay, &protocol conformance descriptor for FeatureOnboardingOverlay);
              sub_10013BE4C(v156, v157, v158);

              v159 = v166;
              _ConditionalContent<>.init(storage:)();
              sub_1000138BC(v159, v218, &qword_1001DBE58, &qword_10017BF20);
              swift_storeEnumTagMultiPayload();
              sub_10013B998();
              sub_10013BD90();
              _ConditionalContent<>.init(storage:)();

              sub_10001370C(v159, &qword_1001DBE58, &qword_10017BF20);
              v160 = sub_1000033A8(&qword_1001DBDD8, &qword_10017BEF0);
              return (*(*(v160 - 8) + 56))(v113, 0, 1, v160);
            }

            else
            {
              v161 = sub_1000033A8(&qword_1001DBDD8, &qword_10017BEF0);
              return (*(*(v161 - 8) + 56))(v113, 1, 1, v161);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001039C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000033A8(&qword_1001DBE68, &qword_10017BF28);
  v205 = *(v3 - 8);
  __chkstk_darwin(v3);
  v204 = &v156 - v4;
  v201 = sub_1000033A8(&qword_1001DBE70, &qword_10017BF30);
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v186 = (&v156 - v5);
  v6 = sub_1000033A8(&qword_1001DBE78, &qword_10017BF38);
  v7 = __chkstk_darwin(v6 - 8);
  v203 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v156 - v9;
  v197 = sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  v11 = __chkstk_darwin(v197);
  v196 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v195 = &v156 - v13;
  v194 = type metadata accessor for ToastView(0);
  v14 = __chkstk_darwin(v194);
  v202 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v199 = (&v156 - v16);
  v179 = type metadata accessor for BundleTextDetailView();
  v178 = *(v179 - 8);
  v17 = __chkstk_darwin(v179);
  v177 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v175 = &v156 - v19;
  v184 = sub_1000033A8(&qword_1001DBB38, &qword_10017BB30);
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v176 = (&v156 - v20);
  v21 = sub_1000033A8(&qword_1001D4530, &qword_100171048);
  __chkstk_darwin(v21 - 8);
  v180 = &v156 - v22;
  v188 = type metadata accessor for CVBundle();
  v187 = *(v188 - 8);
  v23 = __chkstk_darwin(v188);
  v174 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v181 = &v156 - v25;
  v192 = sub_1000033A8(&qword_1001DBB40, &qword_10017BB38);
  v26 = *(v192 - 8);
  __chkstk_darwin(v192);
  v182 = &v156 - v27;
  v28 = type metadata accessor for AppConfiguration(0);
  __chkstk_darwin(v28 - 8);
  v30 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000033A8(&qword_1001DBE80, &qword_10017BF40);
  v32 = __chkstk_darwin(v31 - 8);
  v198 = &v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v206 = &v156 - v34;
  v35 = type metadata accessor for OpacityTransition();
  v171 = *(v35 - 8);
  __chkstk_darwin(v35);
  v168 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1000033A8(&qword_1001DBE88, &qword_10017BF48);
  v172 = *(v173 - 8);
  v37 = __chkstk_darwin(v173);
  v169 = &v156 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v170 = &v156 - v39;
  v40 = sub_1000033A8(&qword_1001DBE90, &qword_10017BF50);
  __chkstk_darwin(v40);
  v42 = (&v156 - v41);
  v43 = sub_1000033A8(&qword_1001DBE98, &qword_10017BF58);
  __chkstk_darwin(v43);
  v167 = &v156 - v44;
  v165 = sub_1000033A8(&qword_1001DBEA0, &qword_10017BF60);
  __chkstk_darwin(v165);
  v163 = &v156 - v45;
  v166 = sub_1000033A8(&qword_1001DBEA8, &qword_10017BF68);
  __chkstk_darwin(v166);
  v164 = &v156 - v46;
  v190 = sub_1000033A8(&qword_1001DBEB0, &qword_10017BF70);
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v162 = &v156 - v47;
  v48 = sub_1000033A8(&qword_1001DBEB8, &qword_10017BF78);
  v49 = __chkstk_darwin(v48 - 8);
  v193 = &v156 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v207 = &v156 - v51;
  if (static SystemVariantSupport.isInternalBuild.getter())
  {
    v156 = v35;
    v158 = v30;
    v159 = v10;
    v161 = a1;
    v52 = v1;
    v53 = type metadata accessor for ContentView(0);
    v54 = v1 + *(v53 + 116);
    v55 = *v54;
    v56 = *(v54 + 8);
    LOBYTE(v210) = v55;
    *(&v210 + 1) = v56;
    sub_1000033A8(&qword_1001D3E88, &unk_100171900);
    State.wrappedValue.getter();
    v185 = v1;
    v191 = v53;
    v160 = v3;
    if (v209 != 1)
    {
      v86 = 1;
      v87 = &qword_1001DC000;
LABEL_13:
      v88 = 1;
      (*(v189 + 56))(v207, v86, 1, v190);
      v89 = v191;
      sub_1000033A8(&qword_1001DB7A0, &qword_10017B8A8);
      v90 = v158;
      State.wrappedValue.getter();
      v91 = AnnotationViewConfiguration.showText.getter();
      sub_10013E658(v90, type metadata accessor for AppConfiguration);
      v92 = v199;
      v93 = v206;
      v94 = v194;
      if (v91)
      {
        v95 = (v52 + *(v89 + 52));
        v97 = *v95;
        v96 = v95[1];
        *&v209 = v97;
        *(&v209 + 1) = v96;
        sub_1000033A8(&qword_1001DB780, &qword_10017B880);
        State.wrappedValue.getter();
        v98 = sub_100149908();

        __chkstk_darwin(v99);
        v100 = v180;
        sub_100071B7C(sub_100143968, v98, v180);

        v101 = v187;
        v102 = v188;
        if ((*(v187 + 48))(v100, 1, v188) == 1)
        {
          sub_10001370C(v100, &qword_1001D4530, &qword_100171048);
          v103 = v182;
          (*(v183 + 56))(v182, 1, 1, v184);
        }

        else
        {
          v104 = v181;
          (*(v101 + 32))(v181, v100, v102);
          v105 = static HorizontalAlignment.center.getter();
          v157 = v26;
          v106 = v176;
          *v176 = v105;
          v106[1] = 0;
          *(v106 + 16) = 1;
          v107 = sub_1000033A8(&qword_1001DBB50, &qword_10017BB48);
          v108 = v102;
          v109 = v106 + *(v107 + 44);
          (*(v101 + 16))(v174, v104, v108);
          default argument 1 of BundleTextDetailView.init(bundle:renderOnly:)();
          v110 = v175;
          BundleTextDetailView.init(bundle:renderOnly:)();
          LOBYTE(v209) = 1;
          v111 = v178;
          v112 = *(v178 + 16);
          v113 = v177;
          v114 = v179;
          v112(v177, v110, v179);
          v115 = v209;
          *v109 = 0;
          v109[8] = v115;
          v116 = sub_1000033A8(&qword_1001DBB58, &qword_10017BB50);
          v112(&v109[*(v116 + 48)], v113, v114);
          v117 = *(v111 + 8);
          v118 = v110;
          v87 = &qword_1001DC000;
          v117(v118, v114);
          v117(v113, v114);
          v93 = v206;
          LOBYTE(v117) = static Edge.Set.bottom.getter();
          EdgeInsets.init(_all:)();
          v119 = v184;
          v120 = v106 + *(v184 + 36);
          *v120 = v117;
          *(v120 + 1) = v121;
          *(v120 + 2) = v122;
          *(v120 + 3) = v123;
          *(v120 + 4) = v124;
          v120[40] = 0;
          v125 = v106;
          v26 = v157;
          v103 = v182;
          sub_10002091C(v125, v182, &qword_1001DBB38, &qword_10017BB30);
          (*(v183 + 56))(v103, 0, 1, v119);
          (*(v187 + 8))(v181, v188);
        }

        sub_10002091C(v103, v93, &qword_1001DBB40, &qword_10017BB38);
        v88 = 0;
      }

      (*(v26 + 56))(v93, v88, 1, v192);
      *v92 = swift_getKeyPath();
      sub_1000033A8(&qword_1001D4DC0, &qword_100172370);
      swift_storeEnumTagMultiPayload();
      v126 = *(v94 + 20);
      if (qword_1001D3190 != -1)
      {
        swift_once();
      }

      *(v92 + v126) = qword_1001EB560;
      v127 = type metadata accessor for Toast(0);
      v128 = v195;
      (*(*(v127 - 8) + 56))(v195, 1, 1, v127);
      sub_1000138BC(v128, v196, &qword_1001D4D58, &qword_100172250);

      State.init(wrappedValue:)();
      sub_10001370C(v128, &qword_1001D4D58, &qword_100172250);
      v129 = *(v94 + 28);
      v208 = 0;
      sub_1000033A8(&unk_1001D4D68, qword_100172258);
      State.init(wrappedValue:)();
      *(v92 + v129) = v209;
      v130 = (v185 + *(v191 + 52));
      v132 = *v130;
      v131 = v130[1];
      *&v209 = v132;
      *(&v209 + 1) = v131;
      sub_1000033A8(&qword_1001DB780, &qword_10017B880);
      State.wrappedValue.getter();
      v133 = v208;
      swift_getKeyPath();
      *&v209 = v133;
      sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v134 = v133 + v87[239];
      v135 = *v134;
      v136 = *(v134 + 8);
      v137 = *(v134 + 16);
      sub_100060424(*v134, v136, *(v134 + 16));

      if (v137 == 2)
      {
        KeyPath = swift_getKeyPath();
        v139 = v186;
        *v186 = KeyPath;
        swift_storeEnumTagMultiPayload();
        v140 = (v139 + *(type metadata accessor for CameraErrorView(0) + 20));
        *v140 = v135;
        v140[1] = v136;
        v141 = static Edge.Set.all.getter();
        v142 = v201;
        v143 = v139 + *(v201 + 36);
        *v143 = v141;
        *(v143 + 8) = 0u;
        *(v143 + 24) = 0u;
        *(v143 + 40) = 1;
        v144 = v159;
        sub_10002091C(v139, v159, &qword_1001DBE70, &qword_10017BF30);
        v145 = 0;
      }

      else
      {
        sub_1000616E4(v135, v136, v137);
        v145 = 1;
        v142 = v201;
        v144 = v159;
      }

      (*(v200 + 56))(v144, v145, 1, v142);
      v146 = v193;
      sub_1000138BC(v207, v193, &qword_1001DBEB8, &qword_10017BF78);
      v147 = v206;
      v148 = v198;
      sub_1000138BC(v206, v198, &qword_1001DBE80, &qword_10017BF40);
      v149 = v144;
      v150 = v92;
      v151 = v202;
      sub_10013DAC8(v92, v202, type metadata accessor for ToastView);
      v152 = v203;
      sub_1000138BC(v149, v203, &qword_1001DBE78, &qword_10017BF38);
      v153 = v204;
      sub_1000138BC(v146, v204, &qword_1001DBEB8, &qword_10017BF78);
      v154 = sub_1000033A8(&qword_1001DBEC0, &qword_10017BFB0);
      sub_1000138BC(v148, v153 + v154[12], &qword_1001DBE80, &qword_10017BF40);
      sub_10013DAC8(v151, v153 + v154[16], type metadata accessor for ToastView);
      sub_1000138BC(v152, v153 + v154[20], &qword_1001DBE78, &qword_10017BF38);
      sub_10001370C(v149, &qword_1001DBE78, &qword_10017BF38);
      sub_10013E658(v150, type metadata accessor for ToastView);
      sub_10001370C(v147, &qword_1001DBE80, &qword_10017BF40);
      sub_10001370C(v207, &qword_1001DBEB8, &qword_10017BF78);
      sub_10001370C(v152, &qword_1001DBE78, &qword_10017BF38);
      sub_10013E658(v151, type metadata accessor for ToastView);
      sub_10001370C(v148, &qword_1001DBE80, &qword_10017BF40);
      sub_10001370C(v146, &qword_1001DBEB8, &qword_10017BF78);
      v155 = v161;
      sub_10002091C(v153, v161, &qword_1001DBE68, &qword_10017BF28);
      return (*(v205 + 56))(v155, 0, 1, v160);
    }

    v157 = v26;
    v57 = (v1 + *(v53 + 52));
    v59 = *v57;
    v58 = v57[1];
    *&v210 = v59;
    *(&v210 + 1) = v58;
    sub_1000033A8(&qword_1001DB780, &qword_10017B880);
    State.wrappedValue.getter();
    v60 = v209;
    swift_getKeyPath();
    *&v210 = v60;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v62 = *(v60 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v61 = *(v60 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
    v63 = *(v60 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    sub_100060424(v62, v61, *(v60 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

    if (v63 == 1)
    {
      v86 = 1;
      if (v62)
      {
        *v42 = static Alignment.center.getter();
        v42[1] = v64;
        v65 = sub_1000033A8(&qword_1001DBEC8, &qword_10017BFB8);
        v52 = v185;
        sub_10010EE0C(v185, v42 + *(v65 + 44));
        v66 = static SafeAreaRegions.all.getter();
        v67 = static Edge.Set.all.getter();
        v68 = v42 + *(v40 + 36);
        *v68 = v66;
        v68[8] = v67;
        static Alignment.topTrailing.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v69 = v167;
        sub_10002091C(v42, v167, &qword_1001DBE90, &qword_10017BF50);
        v70 = (v69 + *(v43 + 36));
        v71 = v215;
        v70[4] = v214;
        v70[5] = v71;
        v70[6] = v216;
        v72 = v211;
        *v70 = v210;
        v70[1] = v72;
        v73 = v213;
        v70[2] = v212;
        v70[3] = v73;
        v74 = v168;
        OpacityTransition.init()();
        static Animation.linear.getter();
        v75 = sub_10013FB34(&qword_1001D4E70, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
        v76 = v170;
        v77 = v156;
        Transition.animation(_:)();

        (*(v171 + 8))(v74, v77);
        v78 = v172;
        v79 = v173;
        (*(v172 + 16))(v169, v76, v173);
        *&v209 = v77;
        *(&v209 + 1) = v75;
        swift_getOpaqueTypeConformance2();
        v80 = AnyTransition.init<A>(_:)();
        (*(v78 + 8))(v76, v79);
        v81 = v163;
        sub_10002091C(v69, v163, &qword_1001DBE98, &qword_10017BF58);
        *(v81 + *(v165 + 36)) = v80;
        v82 = v164;
        sub_10002091C(v81, v164, &qword_1001DBEA0, &qword_10017BF60);
        *(v82 + *(v166 + 36)) = 0;
        sub_10013BEA8();
        v83 = v162;
        View.accessibilityIdentifier(_:)();
        sub_10001370C(v82, &qword_1001DBEA8, &qword_10017BF68);
        sub_10002091C(v83, v207, &qword_1001DBEB0, &qword_10017BF70);
        v86 = 0;
LABEL_12:
        v26 = v157;
        v87 = &qword_1001DC000;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1000616E4(v62, v61, v63);
      v86 = 1;
    }

    v52 = v185;
    goto LABEL_12;
  }

  v84 = *(v205 + 56);

  return v84(a1, 1, 1, v3);
}

uint64_t sub_10010525C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001052F4, v5, v4);
}

uint64_t sub_1001052F4()
{
  v1 = v0[5];

  v2 = (v1 + *(type metadata accessor for ContentView(0) + 52));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v5 = v0[4];
  swift_getKeyPath();
  v0[2] = v5;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v6 != 1)
  {
    if (v6 != 3 || (!*(v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8) ? (v7 = *(v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState) == 2) : (v7 = 0), !v7))
    {
      sub_10014FC70();
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100105448(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DBC18, &qword_10017BDF8);
  __chkstk_darwin(v2);
  v4 = &v12 - v3;
  sub_10010D774(&v12 - v3);
  v5 = static SafeAreaRegions.all.getter();
  v6 = static Edge.Set.all.getter();
  v7 = &v4[*(v2 + 36)];
  *v7 = v5;
  v7[8] = v6;
  v8 = type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  Bindable.wrappedValue.getter();
  v9 = *(a1 + *(v8 + 292));
  sub_10013A950();
  v10 = v9;
  return SalientBackgroundViewRepresentable.init(contentView:saliencyModel:sheetAssistant:)();
}

uint64_t sub_100105564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1001056D8();
  sub_10013DAC8(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100136D64(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ContentView);
  VIUITapToRadarButton.init(displayedActions:width:onAction:)();
  v9 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_1000033A8(&qword_1001DBC00, &qword_10017BD98);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t sub_1001056D8()
{
  v1 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  v2 = __chkstk_darwin(v1 - 8);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v62 = &v58 - v5;
  v6 = __chkstk_darwin(v4);
  v61 = &v58 - v7;
  __chkstk_darwin(v6);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CameraControllerConfiguration(0);
  v11 = __chkstk_darwin(v10);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v58 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v58 - v17;
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v21 = (v0 + *(type metadata accessor for ContentView(0) + 52));
  v22 = *v21;
  v66 = v21[1];
  v67 = v22;
  v73 = v22;
  v74 = v66;
  v65 = sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v23 = v71;
  swift_getKeyPath();
  v73 = v23;
  v64 = sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  sub_10013DAC8(v23 + v24, v20, type metadata accessor for CameraControllerConfiguration);
  v25 = v10;

  sub_1000138BC(&v20[*(v10 + 68)], v9, &qword_1001D8020, &qword_1001728D0);
  sub_10013E658(v20, type metadata accessor for CameraControllerConfiguration);
  v26 = type metadata accessor for URL();
  v27 = *(*(v26 - 8) + 48);
  v63 = v26;
  LODWORD(v24) = v27(v9, 1);
  sub_10001370C(v9, &qword_1001D8020, &qword_1001728D0);
  if (v24 == 1 && (v71 = v67, v72 = v66, State.wrappedValue.getter(), v28 = v68, swift_getKeyPath(), v71 = v28, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v29 = OBJC_IVAR____TtC6Tamale16CameraController__configuration, swift_beginAccess(), sub_10013DAC8(v28 + v29, v18, type metadata accessor for CameraControllerConfiguration), , v30 = v61, sub_1000138BC(&v18[*(v25 + 84)], v61, &qword_1001D8020, &qword_1001728D0), sub_10013E658(v18, type metadata accessor for CameraControllerConfiguration), v31 = (v27)(v30, 1, v63), sub_10001370C(v30, &qword_1001D8020, &qword_1001728D0), v31 != 1))
  {
    sub_1000033A8(&qword_1001DBC10, &qword_10017BDF0);
    v51 = type metadata accessor for VITapToRadarInvocation.ActionType();
    v52 = *(v51 - 8);
    v53 = *(v52 + 72);
    v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100170800;
    v55 = v45 + v54;
    v56 = *(v52 + 104);
    v56(v55, enum case for VITapToRadarInvocation.ActionType.sysdiagnose(_:), v51);
    v56(v55 + v53, enum case for VITapToRadarInvocation.ActionType.attachVideo(_:), v51);
  }

  else
  {
    v71 = v67;
    v72 = v66;
    State.wrappedValue.getter();
    v32 = v68;
    swift_getKeyPath();
    v71 = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
    swift_beginAccess();
    sub_10013DAC8(v32 + v33, v15, type metadata accessor for CameraControllerConfiguration);

    v34 = v62;
    sub_1000138BC(&v15[*(v25 + 68)], v62, &qword_1001D8020, &qword_1001728D0);
    sub_10013E658(v15, type metadata accessor for CameraControllerConfiguration);
    v35 = (v27)(v34, 1, v63);
    sub_10001370C(v34, &qword_1001D8020, &qword_1001728D0);
    if (v35 == 1 && (v68 = v67, v69 = v66, State.wrappedValue.getter(), v36 = v70, swift_getKeyPath(), v68 = v36, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v37 = OBJC_IVAR____TtC6Tamale16CameraController__configuration, swift_beginAccess(), v38 = v59, sub_10013DAC8(v36 + v37, v59, type metadata accessor for CameraControllerConfiguration), , v39 = v38 + *(v25 + 84), v40 = v60, sub_1000138BC(v39, v60, &qword_1001D8020, &qword_1001728D0), sub_10013E658(v38, type metadata accessor for CameraControllerConfiguration), LODWORD(v38) = (v27)(v40, 1, v63), sub_10001370C(v40, &qword_1001D8020, &qword_1001728D0), v38 == 1))
    {
      sub_1000033A8(&qword_1001DBC10, &qword_10017BDF0);
      v41 = type metadata accessor for VITapToRadarInvocation.ActionType();
      v42 = *(v41 - 8);
      v43 = *(v42 + 72);
      v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100178490;
      v46 = v45 + v44;
      v47 = *(v42 + 104);
      v47(v46, enum case for VITapToRadarInvocation.ActionType.sysdiagnose(_:), v41);
      v47(v46 + v43, enum case for VITapToRadarInvocation.ActionType.recordVideo(_:), v41);
      v47(v46 + 2 * v43, enum case for VITapToRadarInvocation.ActionType.dataCollection(_:), v41);
    }

    else
    {
      sub_1000033A8(&qword_1001DBC10, &qword_10017BDF0);
      v48 = type metadata accessor for VITapToRadarInvocation.ActionType();
      v49 = *(v48 - 8);
      v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100171DA0;
      (*(v49 + 104))(v45 + v50, enum case for VITapToRadarInvocation.ActionType.sysdiagnose(_:), v48);
    }
  }

  return v45;
}

double sub_100106004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VITapToRadarInvocation.ActionType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_10013DAC8(a2, v7, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  (*(v9 + 32))(v18 + v16, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_100136D64(v7, v18 + v17, type metadata accessor for ContentView);
  sub_1000154EC(0, 0, v13, &unk_10017BDA8, v18);

  return result;
}

uint64_t sub_1001062C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for Toast(0);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for ContentView(0);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for VITapToRadarInvocation.ActionType();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[22] = v10;
  *v10 = v5;
  v10[1] = sub_100106540;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5 + 24, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_100106540()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100106AEC;
  }

  else
  {
    v2 = sub_100106654;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100106654()
{
  *(v0 + 195) = *(v0 + 192);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001066D4, v2, v1);
}

uint64_t sub_1001066D4()
{
  if ((*(v0 + 195) & 1) == 0)
  {

    if (qword_1001D3190 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    UUID.init()();
    v7 = (v5 + *(v6 + 20));
    *v7 = 0xD00000000000002BLL;
    v7[1] = 0x800000010016ED70;
    *(v5 + *(v6 + 24)) = 0x3FF0000000000000;
    if (("ble in iOS 26.0" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v8 = *(v0 + 80);
      v10 = *(v0 + 64);
      v9 = *(v0 + 72);
      sub_10013DAC8(*(v0 + 88), v10, type metadata accessor for Toast);
      (*(v8 + 56))(v10, 0, 1, v9);
      sub_10002AFFC(v10);
    }

    sub_10013E658(*(v0 + 88), type metadata accessor for Toast);
    goto LABEL_9;
  }

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  (*(v2 + 16))(v1, *(v0 + 48), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for VITapToRadarInvocation.ActionType.attachScreenshot(_:))
  {

LABEL_9:

    v11 = *(v0 + 8);

    return v11();
  }

  if (v4 == enum case for VITapToRadarInvocation.ActionType.attachVideo(_:))
  {
    v13 = *(v0 + 96);
    v14 = *(v0 + 56);

    v15 = (v14 + *(v13 + 204));
    v16 = *v15;
    v17 = *(v15 + 1);
    *(v0 + 16) = v16;
    *(v0 + 24) = v17;
    *(v0 + 193) = 1;
    sub_1000033A8(&qword_1001D3E88, &unk_100171900);
    State.wrappedValue.setter();
    v18 = (v14 + *(v13 + 208));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v0 + 32) = v19;
    *(v0 + 40) = v20;
    *(v0 + 194) = 0;
    State.wrappedValue.setter();
    goto LABEL_9;
  }

  if (v4 == enum case for VITapToRadarInvocation.ActionType.dataCollection(_:) || v4 == enum case for VITapToRadarInvocation.ActionType.recordVideo(_:))
  {

    sub_100107B80();
    goto LABEL_9;
  }

  if (v4 == enum case for VITapToRadarInvocation.ActionType.sysdiagnose(_:))
  {
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v24 = *(v0 + 104);
    v25 = *(v0 + 56);

    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
    sub_10013DAC8(v25, v23, type metadata accessor for ContentView);
    v27 = static MainActor.shared.getter();
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = &protocol witness table for MainActor;
    sub_100136D64(v23, v29 + v28, type metadata accessor for ContentView);
    sub_1000154EC(0, 0, v22, &unk_10017BDB8, v29);

    goto LABEL_9;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_100106AEC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100106B70, v1, v0);
}

uint64_t sub_100106B70()
{

  if (qword_1001D3190 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[9];
  UUID.init()();
  v3 = (v1 + *(v2 + 20));
  *v3 = 0xD00000000000002BLL;
  v3[1] = 0x800000010016ED70;
  *(v1 + *(v2 + 24)) = 0x3FF0000000000000;
  if (("ble in iOS 26.0" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v4 = v0[10];
    v6 = v0[8];
    v5 = v0[9];
    sub_10013DAC8(v0[11], v6, type metadata accessor for Toast);
    (*(v4 + 56))(v6, 0, 1, v5);
    sub_10002AFFC(v6);
  }

  sub_10013E658(v0[11], type metadata accessor for Toast);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100106D08()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100106DB4;

  return sub_100106EF0();
}

uint64_t sub_100106DB4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001439E4, v1, v0);
}

uint64_t sub_100106EF0()
{
  v1[19] = v0;
  v2 = type metadata accessor for Logger();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_1000033A8(&qword_1001D4D58, &qword_100172250);
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for Toast(0);
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = type metadata accessor for MainActor();
  v1[28] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[29] = v5;
  v1[30] = v4;

  return _swift_task_switch(sub_10010707C, v5, v4);
}

uint64_t sub_10010707C()
{
  v1 = v0[19];
  v2 = (v1 + *(type metadata accessor for ContentView(0) + 52));
  v4 = *v2;
  v3 = v2[1];
  v0[15] = v4;
  v0[16] = v3;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v0[31] = v0[17];
  v0[32] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_100107178;

  return sub_10015134C((v0 + 7), 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_100107178()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100107594;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1001072FC;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_1001072FC()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_100107368, v1, v2);
}

uint64_t sub_100107368()
{
  sub_10002AAA4((v0 + 56), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_10010740C;

  return sub_1001226C4(v0 + 16);
}

uint64_t sub_10010740C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v6 = v4[29];
    v7 = v4[30];

    return _swift_task_switch(sub_100107970, v6, v7);
  }

  else
  {
    v4[36] = a1;
    v8 = swift_task_alloc();
    v4[37] = v8;
    *v8 = v5;
    v8[1] = sub_1001077A8;

    return sub_10012F570(a1, 0);
  }
}

uint64_t sub_100107594()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_100107600, v1, v2);
}

uint64_t sub_100107600()
{

  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  sub_10001370C(v0 + 56, &qword_1001D3948, qword_100178B40);
  if (qword_1001D3190 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  UUID.init()();
  v3 = (v1 + *(v2 + 20));
  *v3 = 0xD000000000000058;
  v3[1] = 0x800000010016EDA0;
  *(v1 + *(v2 + 24)) = 0x4014000000000000;
  if ((" Radar from the Lock Screen" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v4 = *(v0 + 200);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    sub_10013DAC8(*(v0 + 208), v6, type metadata accessor for Toast);
    (*(v4 + 56))(v6, 0, 1, v5);
    sub_10002AFFC(v6);
  }

  sub_10013E658(*(v0 + 208), type metadata accessor for Toast);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001077A8()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1001078EC, v3, v2);
}

uint64_t sub_1001078EC()
{

  sub_100006B44((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100107970()
{
  v17 = v0;
  static Log.tapToRadar.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1000E0FE0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Radar will not have frame attachments, due to encountered error: %s", v6, 0xCu);
    sub_100006B44(v7);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[20];

    (*(v12 + 8))(v11, v13);
  }

  v0[36] = _swiftEmptyArrayStorage;
  v14 = swift_task_alloc();
  v0[37] = v14;
  *v14 = v0;
  v14[1] = sub_1001077A8;

  return sub_10012F570(_swiftEmptyArrayStorage, 0);
}

uint64_t sub_100107B80()
{
  v1 = type metadata accessor for VITapToRadarInvocation.ActionType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContentView(0);
  v6 = (v0 + v5[50]);
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v18) = v7;
  v19 = v8;
  v9 = 1;
  LOBYTE(v17[0]) = 1;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  v10 = (v0 + v5[51]);
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v18) = v11;
  v19 = v12;
  LOBYTE(v17[0]) = 1;
  State.wrappedValue.setter();
  (*(v2 + 104))(v4, enum case for VITapToRadarInvocation.ActionType.dataCollection(_:), v1);
  sub_10013FB34(&qword_1001DBC08, &type metadata accessor for VITapToRadarInvocation.ActionType, &protocol conformance descriptor for VITapToRadarInvocation.ActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v18 != v17[0] || v19 != v17[1])
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v2 + 8))(v4, v1);

  v13 = (v0 + v5[52]);
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v18) = v14;
  v19 = v15;
  LOBYTE(v17[0]) = v9 & 1;
  return State.wrappedValue.setter();
}

double sub_100107DCC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Launch-related: Tamale onAppear", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_100107F14();
}

double sub_100107F14()
{
  v1 = v0;
  v2 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v2 - 8);
  v74 = &v60 - v3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchTime();
  v67 = *(v75 - 8);
  v7 = __chkstk_darwin(v75);
  v65 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v66 = (&v60 - v9);
  v10 = type metadata accessor for ContentView(0);
  v64 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v76 = v12;
  v77 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v60 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  static Log.ui.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Launch-related: Bringing Tamale contents to foreground", v24, 2u);
  }

  v27 = *(v16 + 8);
  v26 = (v16 + 8);
  v25 = v27;
  v27(v21, v15);
  sub_100124A6C();
  v28 = v1 + *(v10 + 140);
  v29 = *v28;
  v30 = *(v28 + 8);
  LOBYTE(aBlock) = v29;
  v80 = v30;
  LOBYTE(v78) = 1;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  static Log.ui.getter();
  sub_10013DAC8(v1, v14, type metadata accessor for ContentView);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v62 = v26;
    v34 = v33;
    v35 = swift_slowAlloc();
    v61 = v25;
    v36 = v35;
    aBlock = v35;
    *v34 = 136315138;
    sub_1000033A8(&qword_1001DB778, &qword_10017B878);
    Bindable.wrappedValue.getter();
    v37 = NewSaliencyModel.shouldShowAskAcmeUI.getter();
    v60 = v15;
    v38 = v1;
    v39 = v37;

    if (v39)
    {
      v40 = 1702195828;
    }

    else
    {
      v40 = 0x65736C6166;
    }

    if (v39)
    {
      v41 = 0xE400000000000000;
    }

    else
    {
      v41 = 0xE500000000000000;
    }

    sub_10013E658(v14, type metadata accessor for ContentView);
    v42 = sub_1000E0FE0(v40, v41, &aBlock);
    v1 = v38;

    *(v34 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "Setting shouldShowAskAcmeUI for saliency model to: %s", v34, 0xCu);
    sub_100006B44(v36);

    v61(v19, v60);
  }

  else
  {

    sub_10013E658(v14, type metadata accessor for ContentView);
    v25(v19, v15);
  }

  v63 = v1;
  sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  Bindable.wrappedValue.getter();
  type metadata accessor for AskAcmeRequirementManager();
  static AskAcmeRequirementManager.shouldShowAskAcmeUI.getter();
  NewSaliencyModel.shouldShowAskAcmeUI.setter();

  sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
  v61 = static OS_dispatch_queue.main.getter();
  v43 = v65;
  static DispatchTime.now()();
  v44 = v66;
  + infix(_:_:)();
  v62 = *(v67 + 1);
  v62(v43, v75);
  v65 = type metadata accessor for ContentView;
  v45 = v1;
  v46 = v77;
  sub_10013DAC8(v45, v77, type metadata accessor for ContentView);
  v47 = *(v64 + 80);
  v48 = swift_allocObject();
  v67 = type metadata accessor for ContentView;
  sub_100136D64(v46, v48 + ((v47 + 16) & ~v47), type metadata accessor for ContentView);
  v83 = sub_1001399F4;
  v84 = v48;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_1000B5F04;
  v82 = &unk_1001C5F48;
  v49 = _Block_copy(&aBlock);
  v50 = v68;
  static DispatchQoS.unspecified.getter();
  v78 = _swiftEmptyArrayStorage;
  sub_10013FB34(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  v51 = v70;
  v52 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = v61;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v49);

  (*(v72 + 8))(v51, v52);
  (*(v69 + 8))(v50, v71);
  v62(v44, v75);

  v54 = type metadata accessor for TaskPriority();
  v55 = v74;
  (*(*(v54 - 8) + 56))(v74, 1, 1, v54);
  v56 = v77;
  sub_10013DAC8(v63, v77, v65);
  type metadata accessor for MainActor();
  v57 = static MainActor.shared.getter();
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  *(v58 + 24) = &protocol witness table for MainActor;
  sub_100136D64(v56, v58 + ((v47 + 32) & ~v47), v67);
  sub_1000154EC(0, 0, v55, &unk_10017BD58, v58);

  return sub_100109318();
}

uint64_t sub_10010890C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Launch-related: Tamale onDisappear", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_100108A40(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (v34 == 1 && v2 != 0)
  {

    sub_1000033A8(&qword_1001DBBE8, &qword_10017BC90);
    State.wrappedValue.getter();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(7uLL);
    v4 = Hasher._finalize()();
    v5 = -1 << *(v35 + 32);
    v6 = v4 & ~v5;
    if ((*(v35 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = *(v35 + 48) + 40 * v6;
        if (*(v8 + 32) >= 3u)
        {
          v9 = *(v8 + 24);
          v10 = *v8;
          v11 = *(v8 + 16) | *(v8 + 8);
          if (v11 | v10 | v9)
          {
            v12 = v11 | v9;
            v13 = (v10 - 1) <= 3 && v12 == 0;
            v14 = !v13 && v10 == 5;
            if (v14 && v12 == 0)
            {
              break;
            }
          }
        }

        v6 = (v6 + 1) & v7;
        if (((*(v35 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v35;
      v18 = *(v35 + 16);
      if (*(v35 + 24) <= v18)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_1000B0574(v18 + 1);
        }

        else
        {
          sub_1000B273C(v18 + 1);
        }

        v17 = v35;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(7uLL);
        v19 = Hasher._finalize()();
        v20 = -1 << *(v35 + 32);
        v6 = v19 & ~v20;
        if ((*(v35 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          v21 = ~v20;
          while (1)
          {
            v22 = *(v35 + 48) + 40 * v6;
            if (*(v22 + 32) >= 3u)
            {
              v23 = *(v22 + 24);
              v24 = *v22;
              v25 = *(v22 + 16) | *(v22 + 8);
              if (v25 | v24 | v23)
              {
                v26 = v25 | v23;
                v27 = (v24 - 1) <= 3 && v26 == 0;
                v28 = !v27 && v24 == 5;
                if (v28 && v26 == 0)
                {
                  break;
                }
              }
            }

            v6 = (v6 + 1) & v21;
            if (((*(v35 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
        }
      }

      else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B1948();
        v17 = v35;
      }

LABEL_45:
      *(v17 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
      v30 = *(v17 + 48) + 40 * v6;
      *v30 = 5;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = 3;
      v31 = *(v17 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        __break(1u);
        return;
      }

      *(v17 + 16) = v33;
    }

    State.wrappedValue.setter();
  }
}

void sub_100108D6C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v26 - v8;
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for SceneState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for SceneState.didEnterBackground(_:))
  {
    static Log.ui.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Launch-related: Tamale didEnterBackground", v19, 2u);
    }

    (*(v3 + 8))(v11, v2);
    sub_100109134();
  }

  else if (v16 == enum case for SceneState.didBecomeActive(_:))
  {
    static Log.ui.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Launch-related: Tamale didBecomeActive", v22, 2u);
    }

    (*(v3 + 8))(v9, v2);
    sub_100109318();
  }

  else if (v16 == enum case for SceneState.willEnterForeground(_:))
  {
    static Log.ui.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Launch-related: Tamale willEnterForeground", v25, 2u);
    }

    (*(v3 + 8))(v6, v2);
    sub_100107F14();
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t sub_100109134()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Launch-related: Sending Tamale contents to background", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for ContentView(0);
  sub_1000EA020();
  v10 = (v1 + *(v9 + 140));
  v11 = *v10;
  v12 = *(v10 + 1);
  v19 = v11;
  v20 = v12;
  v18 = 0;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  result = dispatch thunk of UserDefaultsUtility.hasOnboardedApp.getter();
  if ((result & 1) == 0)
  {
    v14 = (v1 + *(v9 + 184));
    v15 = *v14;
    v16 = *(v14 + 1);
    v19 = v15;
    v20 = v16;
    v18 = 0;
    State.wrappedValue.setter();
    return sub_1000F9C44();
  }

  return result;
}

double sub_100109318()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  sub_10013DAC8(v0, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_100136D64(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ContentView);
  aBlock[4] = sub_1001399C4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C5EF8;
  v13 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10013FB34(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);

  return result;
}

double sub_1001096C0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = *a2;
  if (*a1 != v14)
  {
    v15 = v14;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_10013DAC8(a3, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
    type metadata accessor for MainActor();
    v17 = static MainActor.shared.getter();
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = *(&off_1001C6898 + v15);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = &protocol witness table for MainActor;
    sub_100136D64(v9, v20 + v18, type metadata accessor for ContentView);
    sub_1000154EC(0, 0, v13, v19, v20);
  }

  return result;
}

double sub_1001098C4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if (*a1 == 1)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v9 = (a2 + *(type metadata accessor for ContentView(0) + 52));
    v11 = *v9;
    v10 = v9[1];
    v19 = v11;
    v20 = v10;
    sub_1000033A8(&qword_1001DB780, &qword_10017B880);
    State.wrappedValue.getter();
    swift_weakInit();

    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v8;

    sub_1000154EC(0, 0, v6, &unk_10017BD18, v13);
  }

  else
  {
    v14 = (a2 + *(type metadata accessor for ContentView(0) + 52));
    v16 = *v14;
    v15 = v14[1];
    v19 = v16;
    v20 = v15;
    sub_1000033A8(&qword_1001DB780, &qword_10017B880);
    State.wrappedValue.getter();
    sub_10014FC70();
  }

  return result;
}

uint64_t sub_100109ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1000033A8(&qword_1001D6DC0, &unk_100176230);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v8;
  v4[16] = v7;

  return _swift_task_switch(sub_100109C18, v8, v7);
}

uint64_t sub_100109C18()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_100109CE4;

  return sub_1000A9BE0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100109CE4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_100143820;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_100109E78;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100109E78()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = *(v0 + 64);
    static LoggingSignposter.cameraControllerStop.getter();
    default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
    LoggingSignposter.emitEvent(_:shouldLog:)();
    *(v0 + 40) = 1;
    *(v0 + 48) = 2;
    sub_1000033A8(&qword_1001D6DC8, &unk_10017CB90);
    AsyncStream.Continuation.yield(_:)();

    (*(v2 + 8))(v1, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

double sub_100109FCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  v14 = *a1;
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      if (v17 <= 1)
      {
        if (v17)
        {
          if (v15 == v14)
          {
            return result;
          }

          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else if (v17 <= 1)
    {
      if (!v17)
      {
        if (v15 == v14)
        {
          return result;
        }

        goto LABEL_33;
      }

LABEL_34:
      v29 = v16;
      sub_1000033A8(&qword_1001DB778, &qword_10017B878);
      v30 = v7;
      Bindable.wrappedValue.getter();
      NewSaliencyModel.stream.setter();

      v16 = v29;
      Bindable.wrappedValue.getter();
      v19 = (a3 + *(v6 + 52));
      v21 = *v19;
      v20 = v19[1];
      v31 = v21;
      v32 = v20;
      sub_1000033A8(&qword_1001DB780, &qword_10017B880);
      State.wrappedValue.getter();
      sub_10013FB34(&qword_1001DB788, type metadata accessor for CameraController, &unk_10017CB18);
      NewSaliencyModel.stream.setter();
      v7 = v30;

      sub_10010A43C(0);
      sub_10010A6A8();
      type metadata accessor for LocationsHandler();
      static LocationsHandler.shared.getter();
      dispatch thunk of LocationsHandler.startLocationUpdates()();
      goto LABEL_35;
    }

    if (v17 != 2)
    {
      goto LABEL_25;
    }

LABEL_33:
    type metadata accessor for LocationsHandler();
    static LocationsHandler.shared.getter();
    dispatch thunk of LocationsHandler.stopLocationUpdates()();
LABEL_35:

    goto LABEL_36;
  }

  v18 = a1[1];
  if (*(a1 + 16) != 2)
  {
    if (v14 | v18)
    {
      if (v14 ^ 1 | v18)
      {
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            goto LABEL_33;
          }

          if (v15 != 2)
          {
            goto LABEL_25;
          }

LABEL_40:
          if (!v16)
          {
            return result;
          }

LABEL_25:
          if (v15 | v16)
          {
LABEL_36:
            v22 = type metadata accessor for TaskPriority();
            (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
            sub_10013DAC8(a3, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
            type metadata accessor for MainActor();
            sub_100060424(v15, v16, v17);
            v23 = static MainActor.shared.getter();
            v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
            v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
            v26 = swift_allocObject();
            *(v26 + 16) = v23;
            *(v26 + 24) = &protocol witness table for MainActor;
            sub_100136D64(v9, v26 + v24, type metadata accessor for ContentView);
            v27 = v26 + v25;
            *v27 = v15;
            *(v27 + 8) = v16;
            *(v27 + 16) = v17;
            sub_1000154EC(0, 0, v13, &unk_10017BBC0, v26);

            return result;
          }

          goto LABEL_33;
        }
      }

      else if (v17 > 1)
      {
        if (v17 == 2)
        {
          goto LABEL_33;
        }

        if (v15 != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_40;
      }
    }

    else if (v17 > 1)
    {
      if (v17 == 2)
      {
        goto LABEL_33;
      }

      if (!(v16 | v15))
      {
        return result;
      }

      goto LABEL_25;
    }

LABEL_32:
    if (v17)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v17 <= 1)
  {
    goto LABEL_32;
  }

  if (v17 != 2)
  {
    goto LABEL_25;
  }

  if ((v14 != v15 || v18 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_33;
  }

  return result;
}

void *sub_10010A43C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContentView(0);
  v9 = (v1 + *(v8 + 136));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v18) = *v9;
  *(&v18 + 1) = v11;
  sub_1000033A8(&qword_1001DBB70, &qword_10017BBA8);
  result = State.wrappedValue.getter();
  if (v17 || (a1 & 1) != 0)
  {
    static Log.ui.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      HIDWORD(v16) = v10;
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Hiding capture effects", v15, 2u);
      LOBYTE(v10) = BYTE4(v16);
    }

    (*(v5 + 8))(v7, v4);
    sub_1000033A8(&qword_1001DB778, &qword_10017B878);
    Bindable.wrappedValue.getter();
    NewSaliencyModel.userSelection.getter();

    FocusSelectionModel.active.setter();

    Bindable.wrappedValue.getter();
    NewSaliencyModel.reset()();

    LOBYTE(v18) = v10;
    *(&v18 + 1) = v11;
    LOBYTE(v17) = 0;
    State.wrappedValue.setter();
    v18 = *(v2 + *(v8 + 88));
    v17 = 0;
    sub_1000033A8(&qword_1001DBB78, &qword_10017BBB0);
    return State.wrappedValue.setter();
  }

  return result;
}

double sub_10010A6A8()
{
  type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001DBB80, &qword_10017BBC8);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001DBB88, &qword_10017BBD0);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.barItemsDisappeared()();

  Bindable.wrappedValue.getter();
  NewSaliencyModel.analytics.getter();

  dispatch thunk of SessionAnalytics.pillQueryReset()();

  return result;
}

uint64_t sub_10010A814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 179) = a7;
  *(v7 + 112) = a5;
  *(v7 + 120) = a6;
  *(v7 + 104) = a4;
  sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v8 = type metadata accessor for EnvironmentValues();
  *(v7 + 144) = v8;
  *(v7 + 152) = *(v8 - 8);
  *(v7 + 160) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 168) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010A954, v10, v9);
}

uint64_t sub_10010A954()
{
  v1 = *(v0 + 179);

  if (v1 == 1 || v1 == 3 && !*(v0 + 120) && *(v0 + 112) == 2 || (type metadata accessor for ContentView(0), sub_1000033A8(&qword_1001DB778, &qword_10017B878), Bindable.wrappedValue.getter(), v2 = NewSaliencyModel.isAskingMontara.getter(), , (v2 & 1) != 0))
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);

    if ((v6 & 1) == 0)
    {
      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = *(v0 + 144);
      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v8 + 8))(v7, v9);
      v5 = *(v0 + 72);
    }

    swift_getKeyPath();
    *(v0 + 80) = v5;
    sub_10013FB34(&qword_1001D4218, type metadata accessor for SiriRequestStateResponder, &unk_10017A484);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v5 + 16);

    v3 = v11 == 2;
  }

  v12 = *(v0 + 104);
  v13 = type metadata accessor for ContentView(0);
  v14 = (v12 + *(v13 + 108));
  v15 = *v14;
  v16 = *(v14 + 1);
  *(v0 + 16) = *v14;
  *(v0 + 24) = v16;
  *(v0 + 176) = v3;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  Bindable.wrappedValue.getter();
  v17 = NewSaliencyModel.isAskingMontara.getter();

  if (v17)
  {
    Bindable.wrappedValue.getter();
    NewSaliencyModel.isAskingMontara.setter();
  }

  *(v0 + 32) = v15;
  *(v0 + 40) = v16;
  State.wrappedValue.getter();
  if ((*(v0 + 177) & 1) == 0)
  {
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 104);
    v21 = type metadata accessor for ResultLookupState();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    sub_1000138BC(v18, v19, &qword_1001DB750, &qword_10017B798);
    sub_1000033A8(&qword_1001DB7A8, &qword_10017B8B0);
    State.wrappedValue.setter();
    sub_1000F9408();
    sub_10001370C(v18, &qword_1001DB750, &qword_10017B798);
    v22 = (v20 + *(v13 + 124));
    v23 = *v22;
    v24 = *(v22 + 1);
    *(v0 + 48) = v23;
    *(v0 + 56) = v24;
    *(v0 + 178) = 0;
    State.wrappedValue.setter();
    sub_10010AD70();
  }

  sub_10010B268();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10010AD70()
{
  v1 = type metadata accessor for LoggingSignposter();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContentView(0);
  v5 = *(v0 + v4[61]);
  [*(*(v5 + 24) + 32) setActiveInteractionTypes:0];
  if (*(v5 + 32))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v26 - 2) = v5;
    *(&v26 - 1) = 0;
    v30 = v5;
    sub_10013FB34(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v5 + 48))
  {
    *(v5 + 40) = 0;
    *(v5 + 48) = 1;
    if (!*(v5 + 56))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = swift_getKeyPath();
  __chkstk_darwin(v7);
  *(&v26 - 4) = v5;
  *(&v26 - 3) = 0;
  *(&v26 - 16) = 1;
  v30 = v5;
  sub_10013FB34(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v5 + 56))
  {
LABEL_7:
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    *(&v26 - 2) = v5;
    *(&v26 - 1) = 0;
    v30 = v5;
    sub_10013FB34(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_8:
  v9 = *(v0 + v4[62]);
  static LoggingSignposter.liveText.getter();
  static LoggingSignposter.visionKitImageTextAnalysis.getter();
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  (*(v27 + 8))(v3, v28);
  [*(v9 + 32) setActiveInteractionTypes:0];
  [*(v9 + 32) resetSelection];
  [*(v9 + 32) updateContentsRect];
  v10 = (*(v9 + 16) + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_isPointInside);
  v11 = *v10;
  v12 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  sub_100005640(v11, v12);
  sub_100006AAC(&v30, v32);
  dispatch thunk of LoggingSignposter.Interval.end()();
  sub_100006B44(&v30);
  OverlayViewModel.reset()();
  v13 = (v0 + v4[41]);
  v15 = *v13;
  v14 = v13[1];
  v30 = v15;
  v31 = v14;
  v29 = _swiftEmptyArrayStorage;
  sub_1000033A8(&qword_1001DBB90, &qword_10017BBD8);
  State.wrappedValue.setter();
  v16 = (v0 + v4[42]);
  v18 = *v16;
  v17 = v16[1];
  v30 = v18;
  v31 = v17;
  v29 = _swiftEmptyArrayStorage;
  State.wrappedValue.setter();
  v19 = (v0 + v4[43]);
  v21 = *v19;
  v20 = v19[1];
  v30 = v21;
  v31 = v20;
  v29 = _swiftEmptyArrayStorage;
  State.wrappedValue.setter();
  v22 = (v0 + v4[28]);
  v24 = *v22;
  v23 = v22[1];
  v30 = v24;
  v31 = v23;
  v29 = &_swiftEmptySetSingleton;
  sub_1000033A8(&qword_1001DBBE8, &qword_10017BC90);
  return State.wrappedValue.setter();
}

double sub_10010B268()
{
  v1 = v0;
  v169 = type metadata accessor for UUID();
  v157 = *(v169 - 1);
  __chkstk_darwin(v169);
  v3 = &v138 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1000033A8(&qword_1001DA458, &qword_1001797D8);
  __chkstk_darwin(v167);
  v5 = (&v138 - v4);
  v6 = type metadata accessor for ContentView(0);
  v145 = *(v6 - 1);
  __chkstk_darwin(v6);
  v153 = v7;
  v148 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = (&v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v166 = (&v138 - v13);
  v14 = __chkstk_darwin(v12);
  v165 = &v138 - v15;
  __chkstk_darwin(v14);
  v154 = &v138 - v16;
  v162 = type metadata accessor for ActionAnalytics.ActionType();
  v163 = *(v162 - 8);
  __chkstk_darwin(v162);
  v161 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ActionPin.Pill();
  v160 = *(v152 - 8);
  __chkstk_darwin(v152);
  v159 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for BuiltInAction();
  v156 = *(v151 - 8);
  __chkstk_darwin(v151);
  v146 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for ActionBarItem(0);
  v170 = *(v168 - 8);
  v20 = __chkstk_darwin(v168);
  v164 = (&v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v172 = (&v138 - v23);
  v24 = __chkstk_darwin(v22);
  v150 = &v138 - v25;
  v26 = __chkstk_darwin(v24);
  v147 = &v138 - v27;
  v28 = __chkstk_darwin(v26);
  v149 = (&v138 - v29);
  __chkstk_darwin(v28);
  v155 = (&v138 - v30);
  v31 = sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  __chkstk_darwin(v31 - 8);
  v171 = &v138 - v32;
  v33 = v0 + v6[35];
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v176) = *v33;
  v177 = v35;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if ((v173 & 1) != 0 || (v36 = v0 + v6[49], v37 = *v36, v38 = *(v36 + 8), LOBYTE(v176) = v37, v177 = v38, sub_1000033A8(&qword_1001DBB80, &qword_10017BBC8), State.wrappedValue.getter(), v173))
  {
    v39 = (v0 + v6[43]);
    v41 = *v39;
    v40 = v39[1];
    v176 = v41;
    v177 = v40;
    *&v173 = _swiftEmptyArrayStorage;
    sub_1000033A8(&qword_1001DBB90, &qword_10017BBD8);
    State.wrappedValue.setter();
    return result;
  }

  v158 = v11;
  v43 = sub_10012560C();
  v180 = v43;
  v44 = v0 + v6[39];
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v176) = v45;
  v177 = v46;
  sub_1000033A8(&qword_1001DBB98, &qword_10017BBE0);
  v47 = State.wrappedValue.getter();
  v144 = v3;
  if (!v173 || v173 == 1)
  {
    v176 = v43;

    sub_1000033A8(&qword_1001DA510, qword_100179990);
    sub_100013608(&qword_1001DBBA0, &qword_1001DA510, qword_100179990, &protocol conformance descriptor for [A]);
    v48 = RandomAccessCollection.stableSorted(by:)();
    v47 = swift_bridgeObjectRelease_n();
    v180 = v48;
    v43 = v48;
  }

  if (!v43[2])
  {
    v49 = (v1 + v6[13]);
    v51 = *v49;
    v50 = v49[1];
    v176 = v51;
    v177 = v50;
    sub_1000033A8(&qword_1001DB780, &qword_10017B880);
    State.wrappedValue.getter();
    v52 = v173;
    swift_getKeyPath();
    v176 = v52;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = (v52 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v54 = *(v52 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    if (v54 == 1)
    {
    }

    else
    {
      v56 = *v53;
      v55 = v53[1];
      sub_100060424(*v53, v55, *(v52 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

      v47 = v56;
      if (v54 != 3 || v56 != 2 || v55)
      {
        sub_1000616E4(v56, v55, v54);
        LOBYTE(v176) = v34;
        v177 = v35;
        v47 = State.wrappedValue.getter();
        if ((v173 & 1) == 0)
        {
          sub_1000033A8(&qword_1001DB778, &qword_10017B878);
          Bindable.wrappedValue.getter();
          v57 = NewSaliencyModel.isAskingMontara.getter();

          if (v57)
          {
            __chkstk_darwin(v47);
            *(&v138 - 2) = v1;
            static Animation.default.getter();
            goto LABEL_17;
          }
        }
      }
    }
  }

  __chkstk_darwin(v47);
  *(&v138 - 2) = v1;
  *(&v138 - 1) = &v180;
  static Animation.default.getter();
LABEL_17:
  withAnimation<A>(_:_:)();
  v143 = 0;

  v58 = (v1 + v6[13]);
  v59 = *v58;
  v60 = v58[1];
  v176 = *v58;
  v177 = v60;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v61 = v173;
  swift_getKeyPath();
  v176 = v61;
  v142 = sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = (v61 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v63 = *(v61 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v63 == 1)
  {
  }

  else
  {
    v65 = *v62;
    v64 = v62[1];
    sub_100060424(*v62, v64, *(v61 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

    if (v63 != 3 || v65 != 2 || v64)
    {
      sub_1000616E4(v65, v64, v63);
      v66 = v1 + v6[34];
      v67 = *v66;
      v68 = *(v66 + 8);
      LOBYTE(v176) = v67;
      v177 = v68;
      sub_1000033A8(&qword_1001DBB70, &qword_10017BBA8);
      State.wrappedValue.getter();
      if (v173 != 1)
      {
        sub_1000033A8(&qword_1001DB778, &qword_10017B878);
        Bindable.wrappedValue.getter();
        v61 = NewSaliencyModel.isAskingMontara.getter();

        if ((v61 & 1) == 0)
        {
          sub_1000033A8(&qword_1001DB7A8, &qword_10017B8B0);
          v93 = v171;
          State.wrappedValue.getter();
          v94 = type metadata accessor for ResultLookupState();
          v95 = (*(*(v94 - 8) + 48))(v93, 1, v94);
          v96 = sub_10001370C(v93, &qword_1001DB750, &qword_10017B798);
          if (v95 == 1)
          {
            v176 = v59;
            v177 = v60;
            State.wrappedValue.getter();
            v97 = v173;
            swift_getKeyPath();
            v176 = v97;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v99 = *(v97 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
            v98 = *(v97 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
            v100 = *(v97 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
            sub_100060424(v99, v98, *(v97 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

            if (v100)
            {
              v101 = sub_1000616E4(v99, v98, v100);
              v5 = v180;
              if (!v180[2])
              {
                v102 = v156;
                v103 = *(v156 + 104);
                v171 = (v156 + 104);
                v172 = v103;
                v104 = v146;
                v105 = v151;
                (v103)(v146, enum case for BuiltInAction.askAcme(_:), v151, v101);
                BuiltInAction.pill.getter();
                v106 = *(v102 + 8);
                v156 = v102 + 8;
                v167 = v106;
                v106(v104, v105);
                v107 = *(v163 + 104);
                v165 = v163 + 104;
                v166 = v107;
                (v107)(v161, enum case for ActionAnalytics.ActionType.askAcme(_:), v162);
                v108 = *(v157 + 56);
                v157 += 56;
                v164 = v108;
                v108(v154, 1, 1, v169);
                v109 = v148;
                v158 = type metadata accessor for ContentView;
                sub_10013DAC8(v1, v148, type metadata accessor for ContentView);
                v110 = (*(v145 + 80) + 16) & ~*(v145 + 80);
                v144 = *(v145 + 80);
                v139 = swift_allocObject();
                v142 = type metadata accessor for ContentView;
                sub_100136D64(v109, v139 + v110, type metadata accessor for ContentView);
                sub_10013DAC8(v1, v109, type metadata accessor for ContentView);
                v111 = swift_allocObject();
                v145 = v1;
                v112 = v111;
                sub_100136D64(v109, v111 + v110, type metadata accessor for ContentView);
                v113 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
                v114 = v113[19];
                v141 = *(v160 + 32);
                v160 += 32;
                v115 = v155;
                v141(v155, v159, v152);
                v116 = v113[9];
                v117 = *(v163 + 32);
                v163 += 32;
                v140 = v117;
                v117(v115 + v116, v161, v162);
                *(v115 + v113[10]) = 0;
                *(v115 + v113[11]) = 2;
                *(v115 + v113[12]) = 1;
                *(v115 + v113[13]) = 0;
                *(v115 + v113[18]) = 0;
                v118 = (v115 + v113[15]);
                v119 = v139;
                *v118 = sub_100136CB8;
                v118[1] = v119;
                v120 = (v115 + v113[16]);
                *v120 = sub_100136CD0;
                v120[1] = v112;
                v121 = (v115 + v113[17]);
                *v121 = 0;
                v121[1] = 0;
                *(v115 + v114) = 0;
                v122 = v154;
                sub_10002091C(v154, v115 + v113[14], &qword_1001D44B0, &qword_100178660);
                swift_storeEnumTagMultiPayload();
                v123 = v151;
                (v172)(v104, enum case for BuiltInAction.imageSearch(_:), v151);
                BuiltInAction.pill.getter();
                (v167)(v104, v123);
                v124 = v161;
                v125 = v162;
                (v166)(v161, enum case for ActionAnalytics.ActionType.imageSearch(_:), v162);
                v164(v122, 1, 1, v169);
                sub_10013DAC8(v145, v109, v158);
                v126 = swift_allocObject();
                sub_100136D64(v109, v126 + v110, v142);
                v127 = v113[19];
                v6 = v149;
                v141(v149, v159, v152);
                v140(v6 + v113[9], v124, v125);
                *(v6 + v113[10]) = 0;
                *(v6 + v113[11]) = 2;
                *(v6 + v113[12]) = 1;
                *(v6 + v113[13]) = 0;
                *(v6 + v113[18]) = 0;
                v128 = (v6 + v113[15]);
                *v128 = sub_100019CC8;
                v128[1] = 0;
                v129 = (v6 + v113[16]);
                *v129 = sub_100136CE8;
                v129[1] = v126;
                v130 = (v6 + v113[17]);
                *v130 = 0;
                v130[1] = 0;
                *(v6 + v127) = 0;
                sub_10002091C(v122, v6 + v113[14], &qword_1001D44B0, &qword_100178660);
                swift_storeEnumTagMultiPayload();
                v61 = v147;
                sub_10013DAC8(v115, v147, type metadata accessor for ActionBarItem);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_56;
                }

                goto LABEL_47;
              }
            }
          }

LABEL_52:
          __chkstk_darwin(v96);
          *(&v138 - 2) = v1;
          *(&v138 - 1) = &v180;
          static Animation.default.getter();
LABEL_53:
          withAnimation<A>(_:_:)();

          goto LABEL_54;
        }
      }
    }
  }

  v69 = (v1 + v6[43]);
  v71 = *v69;
  v70 = v69[1];
  v176 = v71;
  v177 = v70;
  sub_1000033A8(&qword_1001DBB90, &qword_10017BBD8);
  State.wrappedValue.getter();
  v72 = v173;
  v163 = *(v173 + 16);
  if (v163)
  {
    v145 = v1;
    v73 = 0;
    v161 = (v173 + ((*(v170 + 80) + 32) & ~*(v170 + 80)));
    v160 = v157 + 16;
    v159 = (v157 + 56);
    v171 = (v157 + 48);
    v155 = (v157 + 32);
    v157 += 8;
    v75 = v165;
    v74 = v166;
    v76 = v164;
    v162 = v173;
    while (1)
    {
      if (v73 >= *(v72 + 16))
      {
        __break(1u);
LABEL_56:
        v5 = sub_1000954F8(0, v5[2] + 1, 1, v5);
LABEL_47:
        v131 = v150;
        v133 = v5[2];
        v132 = v5[3];
        v134 = v133 + 1;
        v1 = v145;
        if (v133 >= v132 >> 1)
        {
          v5 = sub_1000954F8((v132 > 1), v133 + 1, 1, v5);
        }

        v5[2] = v134;
        v135 = (*(v170 + 80) + 32) & ~*(v170 + 80);
        v136 = *(v170 + 72);
        sub_100136D64(v61, v5 + v135 + v136 * v133, type metadata accessor for ActionBarItem);
        sub_10013DAC8(v6, v131, type metadata accessor for ActionBarItem);
        v137 = v5[3];
        if ((v133 + 2) > (v137 >> 1))
        {
          v5 = sub_1000954F8((v137 > 1), v133 + 2, 1, v5);
        }

        v5[2] = v133 + 2;
        sub_100136D64(v131, v5 + v135 + v136 * v134, type metadata accessor for ActionBarItem);
        v180 = v5;
        sub_10013E658(v6, type metadata accessor for ActionBarItem);
        v96 = sub_10013E658(v155, type metadata accessor for ActionBarItem);
        goto LABEL_52;
      }

      v78 = v172;
      sub_10013DAC8(&v161[*(v170 + 72) * v73], v172, type metadata accessor for ActionBarItem);
      sub_10013DAC8(v78, v76, type metadata accessor for ActionBarItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v79 = &qword_1001DA600;
        v80 = &qword_100179BB0;
        v174 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
        v81 = &qword_1001DA610;
      }

      else
      {
        v79 = &qword_1001DA608;
        v80 = &qword_100179BB8;
        v174 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
        v81 = &qword_1001DA618;
      }

      v175 = sub_100013608(v81, v79, v80, &unk_1001798CC);
      v83 = sub_1000D5748(&v173, v82);
      sub_10002091C(v76, v83, v79, v80);
      sub_10002AAA4(&v173, &v176);
      v85 = v178;
      v84 = v179;
      sub_100006AAC(&v176, v178);
      (*(v84 + 56))(v85, v84);
      sub_100006B44(&v176);
      if (qword_1001D31D0 != -1)
      {
        swift_once();
      }

      v6 = v169;
      v86 = sub_10002769C(v169, qword_1001DB6F0);
      (*v160)(v74, v86, v6);
      (*v159)(v74, 0, 1, v6);
      v87 = *(v167 + 48);
      v61 = &qword_1001D44B0;
      sub_1000138BC(v75, v5, &qword_1001D44B0, &qword_100178660);
      sub_1000138BC(v74, v5 + v87, &qword_1001D44B0, &qword_100178660);
      v88 = *v171;
      if ((*v171)(v5, 1, v6) == 1)
      {
        break;
      }

      v89 = v158;
      sub_1000138BC(v5, v158, &qword_1001D44B0, &qword_100178660);
      if (v88(v5 + v87, 1, v6) == 1)
      {
        v74 = v166;
        sub_10001370C(v166, &qword_1001D44B0, &qword_100178660);
        v75 = v165;
        sub_10001370C(v165, &qword_1001D44B0, &qword_100178660);
        sub_10013E658(v172, type metadata accessor for ActionBarItem);
        (*v157)(v89, v6);
        v76 = v164;
        v72 = v162;
LABEL_27:
        sub_10001370C(v5, &qword_1001DA458, &qword_1001797D8);
        goto LABEL_28;
      }

      v90 = v144;
      (*v155)(v144, v5 + v87, v6);
      sub_10013FB34(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v156) = dispatch thunk of static Equatable.== infix(_:_:)();
      v91 = *v157;
      (*v157)(v90, v6);
      v74 = v166;
      sub_10001370C(v166, &qword_1001D44B0, &qword_100178660);
      v75 = v165;
      sub_10001370C(v165, &qword_1001D44B0, &qword_100178660);
      sub_10013E658(v172, type metadata accessor for ActionBarItem);
      v91(v89, v6);
      sub_10001370C(v5, &qword_1001D44B0, &qword_100178660);
      v76 = v164;
      v72 = v162;
      if (v156)
      {
        goto LABEL_42;
      }

LABEL_28:
      if (v163 == ++v73)
      {
        goto LABEL_40;
      }
    }

    sub_10001370C(v74, &qword_1001D44B0, &qword_100178660);
    sub_10001370C(v75, &qword_1001D44B0, &qword_100178660);
    sub_10013E658(v172, type metadata accessor for ActionBarItem);
    v77 = v88(v5 + v87, 1, v6);
    v72 = v162;
    if (v77 == 1)
    {
      sub_10001370C(v5, &qword_1001D44B0, &qword_100178660);
LABEL_42:

      __chkstk_darwin(v92);
      *(&v138 - 2) = v145;
      static Animation.default.getter();
      goto LABEL_53;
    }

    goto LABEL_27;
  }

LABEL_40:

LABEL_54:

  return result;
}

double sub_10010CC30(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for ContentView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  if (*a2 == 1)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_10013DAC8(a3, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
    type metadata accessor for MainActor();
    v14 = static MainActor.shared.getter();
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    sub_100136D64(v8, v16 + v15, type metadata accessor for ContentView);
    sub_1000154EC(0, 0, v12, &unk_10017BBA0, v16);

    v17 = (a3 + *(v5 + 52));
    v18 = *v17;
    v19 = v17[1];
    v30 = *v17;
    v31 = v19;
    sub_1000033A8(&qword_1001DB780, &qword_10017B880);
    State.wrappedValue.getter();
    v20 = v29;
    swift_getKeyPath();
    v30 = v20;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = (v20 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v22 = *(v20 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    if (v22 == 1)
    {
LABEL_11:

      return result;
    }

    v23 = *v21;
    v24 = v21[1];
    sub_100060424(*v21, v24, *(v20 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

    if (v22 != 3 || v23 != 2 || v24)
    {
      sub_1000616E4(v23, v24, v22);
      sub_10010A43C(1);
      v30 = v18;
      v31 = v19;
      State.wrappedValue.getter();
      v25 = v29;
      swift_getKeyPath();
      v30 = v25;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v26 = (v25 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
      v27 = *(v25 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
      if (v27 != 1 && (v27 != 3 || v26[1] || *v26 != 2))
      {
        sub_10014FC70();
      }

      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_10010CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10010D074, v6, v5);
}

uint64_t sub_10010D074()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for ContentView(0) + 52));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v0[10] = v0[4];
  v0[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v6;
  v0[13] = v5;

  return _swift_task_switch(sub_10010D144, v6, v5);
}

uint64_t sub_10010D144()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10010D1D8;

  return sub_1000E708C();
}

uint64_t sub_10010D1D8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10010D2F8, v3, v2);
}

uint64_t sub_10010D2F8()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1001439DC, v1, v2);
}

uint64_t sub_10010D364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v29 = a1;
  v3 = type metadata accessor for CameraControllerConfiguration(0);
  v4 = *(v3 - 8);
  v33 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentView(0);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v28 = &v26 - v10;
  v12 = sub_1000033A8(&qword_1001DBAF8, &qword_10017BAB8);
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v15 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  sub_10013DAC8(v29, &v26 - v16, type metadata accessor for CameraControllerConfiguration);
  (*(v4 + 56))(v17, 0, 1, v3);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_1000138BC(v17, v15, &qword_1001DBAF8, &qword_10017BAB8);
  sub_10013DAC8(v31, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v19 = v6;
  sub_10013DAC8(v32, v6, type metadata accessor for CameraControllerConfiguration);
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v22 = (v13 + *(v30 + 80) + v21) & ~*(v30 + 80);
  v23 = (v8 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_10002091C(v15, v24 + v21, &qword_1001DBAF8, &qword_10017BAB8);
  sub_100136D64(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22, type metadata accessor for ContentView);
  sub_100136D64(v19, v24 + v23, type metadata accessor for CameraControllerConfiguration);
  sub_100044AB8(0, 0, v28, &unk_10017BAC8, v24);

  return sub_10001370C(v17, &qword_1001DBAF8, &qword_10017BAB8);
}

uint64_t sub_10010D774@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  v4 = __chkstk_darwin(v28);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ContentView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for AppConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&qword_1001DB7A0, &qword_10017B8A8);
  State.wrappedValue.getter();
  v15 = sub_1000033A8(&qword_1001DBC50, &qword_10017BE10);
  v16 = v15[12];
  v17 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v17 - 8) + 16))(a1 + v16, v14, v17);
  sub_10013E658(v14, type metadata accessor for AppConfiguration);
  sub_10013DAC8(v2, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_100136D64(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ContentView);
  type metadata accessor for CameraController(0);
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  *a1 = Environment.init<A>(_:)();
  *(a1 + 8) = v20 & 1;
  v29 = 0;
  State.init(wrappedValue:)();
  v21 = v31;
  *(a1 + 16) = v30;
  *(a1 + 24) = v21;
  v29 = 0;
  State.init(wrappedValue:)();
  v22 = v31;
  *(a1 + 32) = v30;
  *(a1 + 40) = v22;
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_1000138BC(v8, v6, &qword_1001D44B0, &qword_100178660);
  State.init(wrappedValue:)();
  sub_10001370C(v8, &qword_1001D44B0, &qword_100178660);
  *(a1 + v15[13]) = 1;
  v24 = (a1 + v15[14]);
  *v24 = sub_10013ABA0;
  v24[1] = v19;
  v25 = static Color.black.getter();
  LOBYTE(v18) = static Edge.Set.all.getter();
  v26 = a1 + *(sub_1000033A8(&qword_1001DBC40, &qword_10017BE08) + 36);
  *v26 = v25;
  *(v26 + 8) = v18;
  result = sub_1000033A8(&qword_1001DBC30, &qword_10017BE00);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_10010DB98()
{
  v0 = type metadata accessor for ImageSearchProvider();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000033A8(&qword_1001DA820, &qword_10017A218);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-v7];
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x6E69686372616553;
  v9._object = 0xEF20687469772067;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  static ImageSearchProvider.getImageSearchProvider()();
  v10 = ImageSearchProvider.providerDisplayName.getter();
  v12 = v11;
  (*(v1 + 8))(v3, v0);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v13);

  v14._countAndFlagsBits = 10911970;
  v14._object = 0xA300000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringKey.init(stringInterpolation:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  Text.latencyTextStyle()();
  sub_100020D44(v15, v17, v19 & 1);

  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10010DE74(uint64_t a1)
{
  v2 = type metadata accessor for ImageSearchState();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  Bindable.wrappedValue.getter();
  return ImageSearchResultView.init(state:model:)();
}

double sub_10010DF78(uint64_t a1)
{
  type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001DB790, &qword_10017B888);
  State.wrappedValue.getter();
  dispatch thunk of FeedbackController.reset()();

  return result;
}

uint64_t sub_10010DFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v4 = sub_1000033A8(&qword_1001DC018, &qword_10017C0E8);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for ImageSearchState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for ResultLookupState();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001DB7A8, &qword_10017B8B0);
  State.wrappedValue.getter();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10001370C(v13, &qword_1001DB750, &qword_10017B798);
    return (*(v25 + 56))(v27, 1, 1, v26);
  }

  (*(v15 + 32))(v17, v13, v14);
  (*(v8 + 104))(v10, enum case for ImageSearchState.started(_:), v7);
  sub_10013FB34(&qword_1001DC010, &type metadata accessor for ImageSearchState, &protocol conformance descriptor for ImageSearchState);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v8 + 8))(v10, v7);
  if (v18)
  {
    (*(v15 + 8))(v17, v14);
    return (*(v25 + 56))(v27, 1, 1, v26);
  }

  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v20 = sub_1000033A8(&qword_1001DC020, &qword_10017C0F0);
  sub_10010E4B4(v17, a1, &v6[*(v20 + 44)]);
  static AnyTransition.opacity.getter();
  static AnyTransition.blur.getter();
  AnyTransition.combined(with:)();

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.delay(_:)();

  AnyTransition.animation(_:)();

  static AnyTransition.opacity.getter();
  static AnyTransition.blur.getter();
  AnyTransition.combined(with:)();

  v21 = static AnyTransition.asymmetric(insertion:removal:)();

  v23 = v26;
  v22 = v27;
  *&v6[*(v26 + 36)] = v21;
  sub_10002091C(v6, v22, &qword_1001DC018, &qword_10017C0E8);
  (*(v25 + 56))(v22, 0, 1, v23);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_10010E4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[0] = a2;
  v5 = type metadata accessor for ResultLookupState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedbackControlBar();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000033A8(&qword_1001DC028, &qword_10017C0F8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v24 - v17;
  (*(v6 + 16))(v8, a1, v5);
  v19 = (v24[0] + *(type metadata accessor for ContentView(0) + 276));
  v21 = *v19;
  v20 = v19[1];
  v24[4] = v21;
  v24[5] = v20;
  sub_1000033A8(&qword_1001DB790, &qword_10017B888);
  State.projectedValue.getter();
  FeedbackControlBar.init(resultLookupState:feedbackController:)();
  sub_10013FB34(&qword_1001DC030, &type metadata accessor for FeedbackControlBar, &protocol conformance descriptor for FeedbackControlBar);
  View.accessibilityHidden(_:)();
  (*(v10 + 8))(v12, v9);
  sub_1000138BC(v18, v16, &qword_1001DC028, &qword_10017C0F8);
  *a3 = 0;
  *(a3 + 8) = 1;
  v22 = sub_1000033A8(&qword_1001DC038, &qword_10017C100);
  sub_1000138BC(v16, a3 + *(v22 + 48), &qword_1001DC028, &qword_10017C0F8);
  sub_10001370C(v18, &qword_1001DC028, &qword_10017C0F8);
  return sub_10001370C(v16, &qword_1001DC028, &qword_10017C0F8);
}

double sub_10010E7B0()
{
  v1 = sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v19[-v5];
  v7 = type metadata accessor for ContentView(0);
  v8 = (v0 + v7[33]);
  v9 = *v8;
  v10 = *(v8 + 1);
  v21 = v9;
  v22 = v10;
  v24 = 0;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  v20 = v0;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v11 = (v0 + v7[16]);
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v11) = v11[16];
  v21 = v12;
  v22 = v13;
  v23 = v11;
  v24 = 0;
  sub_1000033A8(&qword_1001DBFC0, &qword_10017C0A0);
  FocusState.wrappedValue.setter();
  v14 = type metadata accessor for ResultLookupState();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1000138BC(v6, v4, &qword_1001DB750, &qword_10017B798);
  sub_1000033A8(&qword_1001DB7A8, &qword_10017B8B0);
  State.wrappedValue.setter();
  sub_1000F9408();
  sub_10001370C(v6, &qword_1001DB750, &qword_10017B798);
  v15 = (v0 + v7[31]);
  v16 = *v15;
  v17 = *(v15 + 1);
  v21 = v16;
  v22 = v17;
  v24 = 0;
  State.wrappedValue.setter();
  dispatch thunk of AppEntitiesProvider.reset()();
  return sub_10010B268();
}

uint64_t sub_10010EA1C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000033A8(&qword_1001DA820, &qword_10017A218);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20676E69646E6553;
  v9._object = 0xEB00000000206F74;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v10);
  v11._countAndFlagsBits = 10911970;
  v11._object = 0xA300000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringKey.init(stringInterpolation:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  LOBYTE(a1) = v15;
  Text.latencyTextStyle()();
  sub_100020D44(v12, v14, a1 & 1);

  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v6 + 8))(v8, v5);
}

double sub_10010EC3C(char a1, uint64_t a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    if (a1)
    {
      v15 = 1853321060;
    }

    else
    {
      v15 = 28789;
    }

    if (a1)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE200000000000000;
    }

    v17 = sub_1000E0FE0(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v13, 0xCu);
    sub_100006B44(v14);
  }

  (*(v7 + 8))(v9, v6);
  return sub_10010E7B0();
}

uint64_t sub_10010EE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1000033A8(&qword_1001DBF00, &qword_10017BFC8);
  __chkstk_darwin(v3);
  v5 = (&v46 - v4);
  v6 = sub_1000033A8(&qword_1001DBF08, &qword_10017BFD0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  v47 = sub_1000033A8(&qword_1001DBF10, &qword_10017BFD8);
  __chkstk_darwin(v47);
  v10 = &v46 - v9;
  v11 = *(type metadata accessor for ContentView(0) + 52);
  v46 = a1;
  v12 = (a1 + v11);
  v14 = *v12;
  v13 = v12[1];
  *&v50 = v14;
  *(&v50 + 1) = v13;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v15 = v49;
  swift_getKeyPath();
  *&v50 = v15;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v15 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v16 = *(v15 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v18 = *(v15 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v17, v16, *(v15 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v18 != 1)
  {
    sub_1000616E4(v17, v16, v18);
    goto LABEL_5;
  }

  if ((v17 & 0xFE) == 0)
  {
LABEL_5:
    v19 = static Color.gray.getter();
    goto LABEL_6;
  }

  v19 = static Color.blue.getter();
LABEL_6:
  v20 = v19;
  static Edge.Set.all.getter();
  v50 = 0u;
  v51 = 0u;
  v52 = 1;
  SafeAreaPaddingModifier.init(edges:insets:)();
  *v5 = 0xD000000000000018;
  v5[1] = 0x800000010016EE80;
  v5[2] = v20;
  v21 = static Edge.Set.trailing.getter();
  dispatch thunk of UserDefaultsUtility.showEngineeringUIControls.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10002091C(v5, v8, &qword_1001DBF00, &qword_10017BFC8);
  v30 = &v8[*(v6 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10002091C(v8, v10, &qword_1001DBF08, &qword_10017BFD0);
  v40 = &v10[*(v47 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = static Animation.spring(response:dampingFraction:blendDuration:)();
  LOBYTE(v20) = dispatch thunk of UserDefaultsUtility.showEngineeringUIControls.getter();
  v42 = v10;
  v43 = v48;
  sub_10002091C(v42, v48, &qword_1001DBF10, &qword_10017BFD8);
  result = sub_1000033A8(&qword_1001DBF18, &qword_10017BFE0);
  v45 = v43 + *(result + 36);
  *v45 = v41;
  *(v45 + 8) = v20 & 1;
  return result;
}

uint64_t sub_10010F1E4()
{
  type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (v1)
  {
    return 1;
  }

  State.wrappedValue.getter();
  State.wrappedValue.getter();
  if (sub_1001151BC())
  {
    return 1;
  }

  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_10010F304(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000033A8(&qword_1001DA458, &qword_1001797D8);
  __chkstk_darwin(v40);
  v7 = &v36 - v6;
  v8 = sub_1000033A8(&qword_1001D44C8, &qword_10017CB40);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  v12 = __chkstk_darwin(v11 - 8);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  CVBundle.id.getter();
  v41 = v4;
  v39 = *(v4 + 56);
  v39(v18, 0, 1, v3);
  v19 = (a2 + *(type metadata accessor for ContentView(0) + 52));
  v21 = *v19;
  v20 = v19[1];
  v42 = v21;
  v43 = v20;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v22 = v44;
  swift_getKeyPath();
  v42 = v22;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  swift_beginAccess();
  sub_1000138BC(v22 + v23, v10, &qword_1001D44C8, &qword_10017CB40);

  v24 = type metadata accessor for ActionPin();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v10, 1, v24) == 1)
  {
    sub_10001370C(v10, &qword_1001D44C8, &qword_10017CB40);
    v26 = 1;
  }

  else
  {
    ActionPin.id.getter();
    (*(v25 + 8))(v10, v24);
    v26 = 0;
  }

  v39(v16, v26, 1, v3);
  v27 = *(v40 + 48);
  sub_1000138BC(v18, v7, &qword_1001D44B0, &qword_100178660);
  sub_1000138BC(v16, &v7[v27], &qword_1001D44B0, &qword_100178660);
  v28 = *(v41 + 48);
  if (v28(v7, 1, v3) != 1)
  {
    v30 = v38;
    sub_1000138BC(v7, v38, &qword_1001D44B0, &qword_100178660);
    if (v28(&v7[v27], 1, v3) != 1)
    {
      v31 = v41;
      v32 = &v7[v27];
      v33 = v37;
      (*(v41 + 32))(v37, v32, v3);
      sub_10013FB34(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v31 + 8);
      v34(v33, v3);
      sub_10001370C(v16, &qword_1001D44B0, &qword_100178660);
      sub_10001370C(v18, &qword_1001D44B0, &qword_100178660);
      v34(v38, v3);
      sub_10001370C(v7, &qword_1001D44B0, &qword_100178660);
      return v29 & 1;
    }

    sub_10001370C(v16, &qword_1001D44B0, &qword_100178660);
    sub_10001370C(v18, &qword_1001D44B0, &qword_100178660);
    (*(v41 + 8))(v30, v3);
    goto LABEL_9;
  }

  sub_10001370C(v16, &qword_1001D44B0, &qword_100178660);
  sub_10001370C(v18, &qword_1001D44B0, &qword_100178660);
  if (v28(&v7[v27], 1, v3) != 1)
  {
LABEL_9:
    sub_10001370C(v7, &qword_1001DA458, &qword_1001797D8);
    v29 = 0;
    return v29 & 1;
  }

  sub_10001370C(v7, &qword_1001D44B0, &qword_100178660);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_10010F938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v95 = sub_1000033A8(&qword_1001DC0E0, &qword_10017C170);
  v92 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v93 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v91 = &v71 - v5;
  v78 = sub_1000033A8(&qword_1001DC0E8, &qword_10017C178);
  __chkstk_darwin(v78);
  v75 = &v71 - v6;
  v81 = sub_1000033A8(&qword_1001DC0F0, &qword_10017C180);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = &v71 - v7;
  v82 = sub_1000033A8(&qword_1001DC0F8, &qword_10017C188);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v71 - v8;
  v9 = sub_1000033A8(&qword_1001DC100, &qword_10017C190);
  v87 = *(v9 - 8);
  v88 = v9;
  __chkstk_darwin(v9);
  v74 = &v71 - v10;
  v11 = type metadata accessor for ResultLookupState();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v73 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000033A8(&qword_1001DB750, &qword_10017B798);
  __chkstk_darwin(v13 - 8);
  v15 = &v71 - v14;
  v16 = sub_1000033A8(&qword_1001D4530, &qword_100171048);
  __chkstk_darwin(v16 - 8);
  v18 = &v71 - v17;
  v19 = type metadata accessor for CVBundle();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v85 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1000033A8(&qword_1001DC108, &qword_10017C198);
  v22 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v71 - v23;
  v24 = type metadata accessor for AppConfiguration(0);
  __chkstk_darwin(v24 - 8);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000033A8(&qword_1001DC110, &qword_10017C1A0);
  v28 = __chkstk_darwin(v27 - 8);
  v89 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v71 - v30;
  v32 = type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001DB7A0, &qword_10017B8A8);
  State.wrappedValue.getter();
  v33 = AnnotationViewConfiguration.showPinsAndBoxes.getter();
  sub_10013E658(v26, type metadata accessor for AppConfiguration);
  v34 = 1;
  if (v33)
  {
    v72 = v31;
    v35 = (a1 + *(v32 + 52));
    v37 = *v35;
    v36 = v35[1];
    v96 = v37;
    v97 = v36;
    sub_1000033A8(&qword_1001DB780, &qword_10017B880);
    State.wrappedValue.getter();
    v38 = sub_100149908();

    __chkstk_darwin(v39);
    *(&v71 - 2) = a1;
    sub_100071B7C(sub_100143968, v38, v18);

    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_10001370C(v18, &qword_1001D4530, &qword_100171048);
LABEL_4:
      v40 = v86;
      (*(v87 + 56))(v86, 1, 1, v88);
LABEL_10:
      v31 = v72;
      sub_10002091C(v40, v72, &qword_1001DC108, &qword_10017C198);
      v34 = 0;
      goto LABEL_11;
    }

    v41 = *(v20 + 32);
    v71 = v19;
    v41(v85, v18, v19);
    sub_1000033A8(&qword_1001DB7A8, &qword_10017B8B0);
    State.wrappedValue.getter();
    v43 = v83;
    v42 = v84;
    if ((*(v83 + 48))(v15, 1, v84))
    {
      v44 = sub_10001370C(v15, &qword_1001DB750, &qword_10017B798);
    }

    else
    {
      v45 = v73;
      (*(v43 + 16))(v73, v15, v42);
      sub_10001370C(v15, &qword_1001DB750, &qword_10017B798);
      v46 = sub_100156E68();
      v44 = (*(v43 + 8))(v45, v42);
      if (v46)
      {
        (*(v20 + 8))(v85, v71);
        goto LABEL_4;
      }
    }

    __chkstk_darwin(v44);
    v47 = v85;
    *(&v71 - 2) = v85;
    v48 = v75;
    Label.init(title:icon:)();
    v49 = static Font.subheadline.getter();
    KeyPath = swift_getKeyPath();
    v51 = v78;
    v52 = (v48 + *(v78 + 36));
    *v52 = KeyPath;
    v52[1] = v49;
    static Font.Weight.semibold.getter();
    v53 = sub_10013CD8C();
    v54 = v76;
    View.fontWeight(_:)();
    sub_10001370C(v48, &qword_1001DC0E8, &qword_10017C178);
    v96 = v51;
    v97 = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = v77;
    v57 = v81;
    View.controlCapsuleStyle(isInverted:)();
    (*(v79 + 8))(v54, v57);
    v96 = v57;
    v97 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v58 = v74;
    v59 = v82;
    View.accessibilityIdentifier(_:)();
    (*(v80 + 8))(v56, v59);
    v40 = v86;
    sub_10002091C(v58, v86, &qword_1001DC100, &qword_10017C190);
    (*(v87 + 56))(v40, 0, 1, v88);
    (*(v20 + 8))(v47, v71);
    goto LABEL_10;
  }

LABEL_11:
  (*(v22 + 56))(v31, v34, 1, v90);
  v60 = v91;
  sub_100110708(v91);
  v61 = v89;
  sub_1000138BC(v31, v89, &qword_1001DC110, &qword_10017C1A0);
  v62 = v92;
  v63 = v93;
  v64 = *(v92 + 16);
  v65 = v95;
  v64(v93, v60, v95);
  v66 = v94;
  sub_1000138BC(v61, v94, &qword_1001DC110, &qword_10017C1A0);
  v67 = sub_1000033A8(&qword_1001DC118, &qword_10017C1A8);
  v68 = v66 + *(v67 + 48);
  *v68 = 0;
  *(v68 + 8) = 1;
  v64((v66 + *(v67 + 64)), v63, v65);
  v69 = *(v62 + 8);
  v69(v60, v65);
  sub_10001370C(v31, &qword_1001DC110, &qword_10017C1A0);
  v69(v63, v65);
  return sub_10001370C(v61, &qword_1001DC110, &qword_10017C1A0);
}

uint64_t sub_100110520@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVDetection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.latestEstimate.getter();
  v10 = CVDetection.label.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v23 = v10;
  v24 = v12;
  v13 = static CharacterSet.whitespacesAndNewlines.getter();
  sub_10002EC9C(v13, v14, v15);
  v16 = StringProtocol.trimmingCharacters(in:)();
  v18 = v17;
  (*(v3 + 8))(v5, v2);

  v23 = v16;
  v24 = v18;
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v20;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_100110708@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = type metadata accessor for ContentView(0);
  v3 = *(v2 - 8);
  v96 = v2 - 8;
  v89 = v3;
  v93 = *(v3 + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v88 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v97 = &v77 - v6;
  v7 = sub_1000033A8(&qword_1001DC138, &qword_10017C1E8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v77 - v9;
  v11 = sub_1000033A8(&qword_1001DC140, &qword_10017C1F0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v77 - v13;
  v15 = sub_1000033A8(&qword_1001DC148, &qword_10017C1F8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v77 - v17;
  v19 = sub_1000033A8(&qword_1001DC150, &qword_10017C200);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v90 = (&v77 - v21);
  v22 = sub_1000033A8(&qword_1001DC158, &qword_10017C208);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v91 = &v77 - v24;
  v81 = sub_1000033A8(&qword_1001DC160, &qword_10017C210);
  __chkstk_darwin(v81);
  v92 = &v77 - v25;
  v82 = sub_1000033A8(&qword_1001DC168, &qword_10017C218);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v94 = &v77 - v26;
  v84 = sub_1000033A8(&qword_1001DC170, &qword_10017C220);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v95 = &v77 - v27;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v28 = sub_1000033A8(&qword_1001DC178, &qword_10017C228);
  sub_1001169F8(v1, &v10[*(v28 + 44)]);
  *&v10[*(v8 + 44)] = 0x4034000000000000;
  v29 = v1;
  if (sub_100116914())
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  sub_10002091C(v10, v14, &qword_1001DC138, &qword_10017C1E8);
  *&v14[*(v12 + 44)] = v30;
  v31 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v32 = v96;
  sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  Bindable.wrappedValue.getter();
  v33 = NewSaliencyModel.isAskingMontara.getter();

  sub_10002091C(v14, v18, &qword_1001DC140, &qword_10017C1F0);
  v34 = &v18[*(v16 + 44)];
  *v34 = v31;
  v34[8] = v33 & 1;
  sub_100116914();
  v35 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v36 = sub_100116914();
  v37 = v90;
  sub_10002091C(v18, v90, &qword_1001DC148, &qword_10017C1F8);
  v38 = v37 + *(v20 + 44);
  *v38 = v35;
  v38[8] = v36;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v39 = v91;
  sub_10002091C(v37, v91, &qword_1001DC150, &qword_10017C200);
  v40 = (v39 + *(v23 + 44));
  v41 = v109;
  v40[4] = v108;
  v40[5] = v41;
  v40[6] = v110;
  v42 = v105;
  *v40 = v104;
  v40[1] = v42;
  v43 = v107;
  v40[2] = v106;
  v40[3] = v43;
  v44 = v92;
  sub_10002091C(v39, v92, &qword_1001DC158, &qword_10017C208);
  v45 = v81;
  v46 = &v44[*(v81 + 36)];
  *v46 = 0x6C61626F6C67;
  *(v46 + 1) = 0xE600000000000000;
  v47 = v29 + *(v32 + 76);
  v48 = *v47;
  v49 = *(v47 + 8);
  v102 = v48;
  v103 = v49;
  v91 = sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.projectedValue.getter();
  v79 = v98;
  v80 = v100;
  v87 = v29;
  v50 = v97;
  v90 = type metadata accessor for ContentView;
  sub_10013DAC8(v29, v97, type metadata accessor for ContentView);
  v51 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v52 = swift_allocObject();
  v89 = type metadata accessor for ContentView;
  sub_100136D64(v50, v52 + v51, type metadata accessor for ContentView);
  v53 = v88;
  sub_10013DAC8(v29, v88, type metadata accessor for ContentView);
  v54 = swift_allocObject();
  sub_100136D64(v53, v54 + v51, type metadata accessor for ContentView);
  v78 = sub_1000033A8(&qword_1001DC180, &qword_10017C230);
  v55 = sub_10013CE8C();
  v88 = sub_10013D284();
  v56 = v92;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_10001370C(v56, &qword_1001DC160, &qword_10017C210);
  v57 = v87;
  v58 = v87 + *(v96 + 84);
  v59 = *v58;
  v60 = *(v58 + 8);
  v102 = v59;
  v103 = v60;
  State.projectedValue.getter();
  v61 = v57;
  v62 = v97;
  sub_10013DAC8(v61, v97, v90);
  v63 = swift_allocObject();
  sub_100136D64(v62, v63 + v51, v89);
  v98 = v45;
  v64 = v78;
  v99 = v78;
  v100 = v55;
  v101 = v88;
  v92 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v82;
  v67 = v94;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v83 + 8))(v67, v66);
  v68 = v87;
  v69 = v87 + *(v96 + 80);
  v70 = *v69;
  v71 = *(v69 + 8);
  v102 = v70;
  v103 = v71;
  State.projectedValue.getter();
  v72 = v97;
  sub_10013DAC8(v68, v97, v90);
  v73 = swift_allocObject();
  sub_100136D64(v72, v73 + v51, v89);
  type metadata accessor for SiriSetupViewController();
  v98 = v66;
  v99 = v64;
  v100 = OpaqueTypeConformance2;
  v101 = v88;
  swift_getOpaqueTypeConformance2();
  sub_10013FB34(&qword_1001DC1E8, &type metadata accessor for SiriSetupViewController, &protocol conformance descriptor for SiriSetupViewController);
  v74 = v84;
  v75 = v95;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v85 + 8))(v75, v74);
}

char *sub_1001112C8()
{
  v1 = sub_1000033A8(&qword_1001D44C8, &qword_10017CB40);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = (v0 + *(type metadata accessor for ContentView(0) + 52));
  v6 = *v4;
  v5 = v4[1];
  v13[0] = v6;
  v13[1] = v5;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();
  v7 = v13[3];
  swift_getKeyPath();
  v13[0] = v7;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  swift_beginAccess();
  sub_1000138BC(v7 + v8, v3, &qword_1001D44C8, &qword_10017CB40);

  v9 = type metadata accessor for ActionPin();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_10001370C(v3, &qword_1001D44C8, &qword_10017CB40);
    return 0;
  }

  else
  {
    v12 = sub_1000F5750();
    (*(v10 + 8))(v3, v9);
    return v12;
  }
}

void sub_1001114D4(char *a2@<X8>)
{
  type metadata accessor for ContentView(0);
  sub_1000033A8(&qword_1001DBB88, &qword_10017BBD0);
  State.wrappedValue.getter();
  if (v6 == 1 && (sub_1000033A8(&qword_1001D3E88, &unk_100171900), State.wrappedValue.getter(), sub_1000033A8(&qword_1001DB778, &qword_10017B878), Bindable.wrappedValue.getter(), v3 = NewSaliencyModel.shouldPeekForPresentedEntity.getter(), , (v3 & 1) != 0) && (State.wrappedValue.getter(), v6 == 1) && (Bindable.wrappedValue.getter(), v4 = NewSaliencyModel.presentedEntity.getter(), , v4))
  {

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

double sub_100111664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v4 = type metadata accessor for ContentView(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D6DC0, &unk_100176230);
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  if (NewActionModel.isPartneredSearchAction.getter())
  {
    v39 = a1;
    static Log.imageSearch.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Search selected", v18, 2u);
    }

    (*(v10 + 8))(v15, v9);
    v19 = (v44 + *(v4 + 52));
    v20 = *v19;
    v21 = v19[1];
    v46 = *v19;
    v47 = v21;
    sub_1000033A8(&qword_1001DB780, &qword_10017B880);
    State.wrappedValue.getter();
    v22 = v45;
    swift_getKeyPath();
    v46 = v22;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = (v22 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v24 = *(v22 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    if (v24 == 1)
    {
    }

    else
    {
      v33 = *v23;
      v34 = v23[1];
      sub_100060424(*v23, v34, *(v22 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

      if (v24 != 3 || v33 != 2 || v34)
      {
        sub_1000616E4(v33, v34, v24);
        __chkstk_darwin(v35);
        v25 = v44;
        *(&v39 - 2) = v44;
        static Animation.default.getter();
        goto LABEL_16;
      }
    }

    v25 = v44;
    sub_100136E04();
    v46 = v20;
    v47 = v21;
    State.wrappedValue.getter();
    static LoggingSignposter.cameraControllerPause.getter();
    default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
    LoggingSignposter.emitEvent(_:shouldLog:)();
    v46 = 2;
    LOBYTE(v47) = 2;
    sub_1000033A8(&qword_1001D6DC8, &unk_10017CB90);
    AsyncStream.Continuation.yield(_:)();

    v26 = (*(v40 + 8))(v8, v6);
    __chkstk_darwin(v26);
    *(&v39 - 2) = v25;
    static Animation.default.getter();
LABEL_16:
    withAnimation<A>(_:_:)();

    v36 = v42;
    sub_10013DAC8(v25, v42, type metadata accessor for ContentView);
    v37 = (*(v41 + 80) + 24) & ~*(v41 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v43;
    sub_100136D64(v36, v38 + v37, type metadata accessor for ContentView);
    *(v38 + ((v5 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;

    static AfterUnlock.perform(_:onFailure:)();

    return result;
  }

  v27 = NewActionModel.isPartneredAskAction.getter();
  if (v27)
  {
    static Log.acme.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Ask Montara selected", v30, 2u);
    }

    v27 = (*(v10 + 8))(v13, v9);
  }

  __chkstk_darwin(v27);
  v31 = v43;
  *(&v39 - 4) = v44;
  *(&v39 - 3) = a1;
  *(&v39 - 2) = v31;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

double sub_100111D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

double sub_100111DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000033A8(&qword_1001DC400, &qword_10017C448);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  NewEntityModel.cardModel.getter();
  v7 = (a2 + *(type metadata accessor for ContentView(0) + 52));
  v9 = *v7;
  v8 = v7[1];
  v16[2] = v9;
  v16[3] = v8;
  sub_1000033A8(&qword_1001DB780, &qword_10017B880);
  State.wrappedValue.getter();

  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_10013FB34(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage, &unk_1001732A0);
  v10 = ConfigStorage.hasOnboardedImageSearch.getter();

  if (v10)
  {
    v11 = type metadata accessor for FeatureOnboardingOverlayExperience();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    CardModel.onboardingExperience.setter();
    CardModel.isSearchCollapsed.setter();
  }

  else
  {
    v12 = enum case for FeatureOnboardingOverlayExperience.imageSearch(_:);
    v13 = type metadata accessor for FeatureOnboardingOverlayExperience();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v6, v12, v13);
    (*(v14 + 56))(v6, 0, 1, v13);
    CardModel.onboardingExperience.setter();
  }

  NewEntityModel.prepareForPresentationOfAction(_:)();
  sub_1000033A8(&qword_1001DB778, &qword_10017B878);
  Bindable.wrappedValue.getter();

  NewSaliencyModel.presentedEntity.setter();

  return result;
}

uint64_t sub_100112058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000033A8(&qword_1001DBBA8, &qword_10017BBE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = enum case for ActionAnalytics.ActionSource.omnibar(_:);
  v9 = type metadata accessor for ActionAnalytics.ActionSource();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_100137530(a2, a3, v7);
  return sub_10001370C(v7, &qword_1001DBBA8, &qword_10017BBE8);
}

uint64_t sub_1001121A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_1000033A8(&qword_1001DC040, &qword_10017C108);
  __chkstk_darwin(v3);
  v5 = v65 - v4;
  v6 = type metadata accessor for UUID();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = __chkstk_darwin(v6);
  v76 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = v65 - v9;
  v10 = sub_1000033A8(&qword_1001D5668, &qword_10017CFB0);
  v74 = *(v10 - 8);
  v75 = v10;
  __chkstk_darwin(v10);
  v72 = v65 - v11;
  v12 = type metadata accessor for ContentView(0);
  v13 = v12 - 8;
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v80 = v14;
  v73 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v82 = sub_1000033A8(&qword_1001DC048, &qword_10017C110);
  __chkstk_darwin(v82);
  v18 = (v65 - v17);
  v19 = sub_1000033A8(&qword_1001DC050, &qword_10017C118);
  v20 = __chkstk_darwin(v19 - 8);
  v83 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v81 = v65 - v22;
  v23 = a1;
  v24 = (a1 + *(v13 + 204));
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v86) = *v24;
  v87 = v26;
  sub_1000033A8(&qword_1001DBB80, &qword_10017BBC8);
  State.wrappedValue.getter();
  if (v85[0] == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v27 = String.init(localized:table:bundle:locale:comment:)();
    v29 = v28;
    *v18 = swift_getKeyPath();
    sub_1000033A8(&qword_1001D4DC0, &qword_100172370);
    swift_storeEnumTagMultiPayload();
    v30 = sub_1000033A8(&qword_1001DC078, &qword_10017C130);
    v31 = (v18 + v30[13]);
    v68 = v18;
    *v31 = v27;
    v31[1] = v29;
    v65[3] = v30[14];
    v65[2] = LocalizedStringKey.init(stringLiteral:)();
    v70 = v3;
    v65[1] = v32;
    v69 = v5;
    v65[0] = v33;
    v67 = type metadata accessor for ContentView;
    v34 = v23;
    v35 = v23;
    v66 = v23;
    v36 = v73;
    sub_10013DAC8(v35, v73, type metadata accessor for ContentView);
    v37 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v38 = swift_allocObject();
    sub_100136D64(v36, v38 + v37, type metadata accessor for ContentView);
    Button<>.init(_:action:)();
    v71 = v30[15];
    LocalizedStringKey.init(stringLiteral:)();
    v39 = v34;
    v40 = v67;
    sub_10013DAC8(v39, v36, v67);
    v41 = swift_allocObject();
    sub_100136D64(v36, v41 + v37, type metadata accessor for ContentView);
    v42 = v72;
    Button<>.init(_:action:)();
    v44 = v74;
    v43 = v75;
    v45 = v68;
    v46 = v71;
    (*(v74 + 32))(v68 + v71, v42, v75);
    (*(v44 + 56))(v45 + v46, 0, 1, v43);
    sub_10013DAC8(v66, v36, v40);
    v47 = swift_allocObject();
    sub_100136D64(v36, v47 + v37, type metadata accessor for ContentView);
    v48 = v45 + *(v82 + 36);
    v49 = v45;
    *v48 = 257;
    *(v48 + 8) = sub_10013CA38;
    *(v48 + 16) = v47;
    *v85 = 0;

    State.init(wrappedValue:)();
    v50 = v87;
    *(v48 + 24) = v86;
    *(v48 + 32) = v50;
    v85[0] = 0;
    State.init(wrappedValue:)();
    v51 = v87;
    *(v48 + 40) = v86;
    *(v48 + 48) = v51;
    *v85 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v52 = v87;
    *(v48 + 56) = v86;
    *(v48 + 64) = v52;
    *v85 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v53 = v87;
    *(v48 + 72) = v86;
    *(v48 + 80) = v53;
    *v85 = 0;
    State.init(wrappedValue:)();
    v54 = v87;
    *(v48 + 88) = v86;
    *(v48 + 96) = v54;
    type metadata accessor for SwipeToDismissModifier(0);
    v55 = v77;
    UUID.init()();
    v57 = v78;
    v56 = v79;
    (*(v78 + 16))(v76, v55, v79);
    State.init(wrappedValue:)();

    (*(v57 + 8))(v55, v56);
    sub_1000138BC(v49, v69, &qword_1001DC048, &qword_10017C110);
    swift_storeEnumTagMultiPayload();
    sub_10013C920();
    v58 = v81;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v49, &qword_1001DC048, &qword_10017C110);
  }

  else
  {
    v58 = v81;
    LOBYTE(v86) = v25;
    v87 = v26;
    State.wrappedValue.getter();
    if (v85[0] != 2)
    {
      v59 = 1;
      goto LABEL_7;
    }

    swift_storeEnumTagMultiPayload();
    sub_10013C920();
    _ConditionalContent<>.init(storage:)();
  }

  v59 = 0;
LABEL_7:
  v60 = sub_1000033A8(&qword_1001DC058, &qword_10017C120);
  (*(*(v60 - 8) + 56))(v58, v59, 1, v60);
  v61 = v83;
  sub_1000138BC(v58, v83, &qword_1001DC050, &qword_10017C118);
  v62 = v84;
  sub_1000138BC(v61, v84, &qword_1001DC050, &qword_10017C118);
  v63 = v62 + *(sub_1000033A8(&qword_1001DC060, &qword_10017C128) + 48);
  sub_10001370C(v58, &qword_1001DC050, &qword_10017C118);
  *v63 = 0;
  *(v63 + 8) = 1;
  return sub_10001370C(v61, &qword_1001DC050, &qword_10017C118);
}