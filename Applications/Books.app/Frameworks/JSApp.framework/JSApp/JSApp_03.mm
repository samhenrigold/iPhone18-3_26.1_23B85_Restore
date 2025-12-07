void sub_64D98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_CA4B0 != -1)
    {
      swift_once();
    }

    v6 = sub_83D6C();
    sub_2C284(v6, qword_CB428);
    swift_errorRetain();
    v7 = sub_83D4C();
    v8 = sub_847AC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v39[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_84C5C();
      v13 = sub_3A93C(v11, v12, v39);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "Invalid item identifier %s", v9, 0xCu);
      sub_371A8(v10);
    }

    else
    {
    }
  }

  v14 = sub_42808(_swiftEmptyArrayStorage);
  if (a1)
  {
    v15 = [a1 valueForProperty:AMSLookupPropertyIsAuthenticated];
    sub_8495C();
    swift_unknownObjectRelease();
    sub_42FB4(v38, v39);
    v16 = sub_843AC();
    v18 = v17;
    sub_381F8(v39, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_694A4(v38, v16, v18, isUniquelyReferenced_nonNull_native);

    sub_371A8(v39);
    v20 = [a1 valueForProperty:AMSLookupPropertyResults];
    sub_8495C();
    swift_unknownObjectRelease();
    sub_42FB4(v38, v39);
    v21 = sub_843AC();
    v23 = v22;
    sub_381F8(v39, v38);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_694A4(v38, v21, v23, v24);

    sub_371A8(v39);
    v25 = [a1 valueForProperty:AMSLookupPropertyStatus];
    sub_8495C();
    swift_unknownObjectRelease();
    sub_42FB4(v38, v39);
    v26 = sub_843AC();
    v28 = v27;
    sub_381F8(v39, v38);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_694A4(v38, v26, v28, v29);

    sub_371A8(v39);
  }

  v30 = [objc_opt_self() sharedInstance];
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_A10E0;
  *(v31 + 56) = sub_2805C(&qword_CB600, &qword_A2440);
  *(v31 + 32) = v14;
  isa = sub_8458C().super.isa;
  v33 = sub_8437C();
  [v30 enqueueValueCall:a3 arguments:isa file:v33 line:133];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = *(Strong + OBJC_IVAR___JSAStoreContentLookupRequest_lookup);
    *(Strong + OBJC_IVAR___JSAStoreContentLookupRequest_lookup) = 0;
    v36 = Strong;

    v37 = *&v36[OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise];
    *&v36[OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise] = 0;

    v36[OBJC_IVAR___JSAStoreContentLookupRequest_frozen] = 0;
  }
}

void sub_65258(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_6532C()
{
  v1 = OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise;
  [*(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookupPromise) cancel];
  v2 = *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookup);
  *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_lookup) = 0;

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) = 0;
}

uint64_t sub_653F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_65430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_65478(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unsigned __int8 *sub_65490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_8453C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_77084(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_84A8C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

float sub_65A1C@<S0>(void *a1@<X0>, float *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR___JSAStoreContentLookupRequest__priority);
  *a2 = result;
  return result;
}

float sub_65A34(float *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR___JSAStoreContentLookupRequest__priority) = *a1;
  return result;
}

id sub_65A98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
  *a2 = v2;
  return v2;
}

uint64_t _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0()
{
  if (_UIApplicationIsExtension())
  {
    if (qword_CA4D8 != -1)
    {
      swift_once();
    }

    v0 = sub_83D6C();
    sub_2C284(v0, qword_CB4A0);
    v1 = sub_83D4C();
    v2 = sub_847BC();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_0, v1, v2, "Detected an extension trying to invoke sharedIfNotExtension", v3, 2u);
    }
  }

  else
  {
    sub_65F74();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [ObjCClassFromMetadata performSelector:sub_83B4C()];
    v6 = ObjCClassFromMetadata;
    if (v5)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

unint64_t sub_65F74()
{
  result = qword_CB608;
  if (!qword_CB608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_CB608);
  }

  return result;
}

uint64_t sub_65FEC(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  swift_beginAccess();
  v6 = *(v2 + 32);
  if (*(v6 + 16))
  {

    v7 = sub_55854(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      swift_unknownObjectRetain();

      v14 = v9;
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
    }
  }

  v11 = *(v5 + 56);
  if (!v11)
  {
    return 0;
  }

  swift_beginAccess();
  if (!*(*(v11 + 32) + 16))
  {
    return 0;
  }

  sub_55854(a1, a2);
  if ((v12 & 1) == 0)
  {

    return 0;
  }

  swift_unknownObjectRetain();

  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6615C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v5 = 0;
  *(v4 + 32) = &_swiftEmptyDictionarySingleton;
  v6 = (v4 + 32);
  v6[3] = 0;
  *(v6 - 2) = result;
  *(v6 - 1) = a2;
  v24 = v6;
  v25 = a3;
  v6[1] = &_swiftEmptyDictionarySingleton;
  v23 = v6 + 1;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_11:
    v15 = __clz(__rbit64(v10)) | (v5 << 6);
    v16 = (*(v25 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v25 + 56) + 8 * v15);
    v27[0] = *v16;
    v27[1] = v18;
    __chkstk_darwin(result);
    v20[2] = v27;

    swift_unknownObjectRetain();
    if (sub_6BDCC(sub_6A590, v20, &off_B4208))
    {
      v12 = v24;
    }

    else
    {
      v12 = v23;
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v12;
    sub_695F4(v19, v17, v18, isUniquelyReferenced_nonNull_native);

    *v12 = v26;
    swift_endAccess();
    v10 &= v10 - 1;
    result = swift_unknownObjectRelease();
  }

  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      swift_arrayDestroy();

      result = v22;
      *(v22 + 48) = v21;
      return result;
    }

    v10 = *(v7 + 8 * v14);
    ++v5;
    if (v10)
    {
      v5 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_66358()
{

  v1 = *(v0 + 56);
  *(v0 + 56) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 56);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_663F0()
{
  sub_66358();

  return _swift_deallocClassInstance(v0, 64, 7);
}

id sub_66424()
{
  result = [objc_allocWithZone(type metadata accessor for MetricsController()) init];
  qword_CB610 = result;
  return result;
}

char *MetricsController.init()()
{
  v1 = v0;
  v2 = sub_83D9C();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_8481C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_847FC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_83DDC();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___JSAMetricsController_metrics;
  v13 = [objc_opt_self() defaultBag];
  v14 = objc_allocWithZone(AMSMetrics);
  v15 = sub_8437C();
  v16 = [v14 initWithContainerID:v15 bag:v13];

  v17 = sub_8477C();
  *&v1[v12] = v17;
  *&v1[OBJC_IVAR___JSAMetricsController_experienceEvents] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___JSAMetricsController__performanceEvents] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___JSAMetricsController_acknowledgementObservation] = 0;
  v18 = OBJC_IVAR___JSAMetricsController_submissionQueue;
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  sub_83DCC();
  sub_847EC();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  *&v1[v18] = sub_8485C();
  v19 = OBJC_IVAR___JSAMetricsController_isSuspended;
  sub_2805C(&qword_CB650, &qword_A1D50);
  v20 = swift_allocObject();
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  *&v1[v19] = v20;
  *&v1[OBJC_IVAR___JSAMetricsController_suspensionAssertionProvider] = 0;
  v21 = type metadata accessor for MetricsController();
  v52.receiver = v1;
  v52.super_class = v21;
  v22 = objc_msgSendSuper2(&v52, "init");
  v23 = objc_allocWithZone(BUCountingAssertionProvider);
  v24 = v22;
  v25 = [v23 initWithDelegate:v24];
  v26 = *&v24[OBJC_IVAR___JSAMetricsController_suspensionAssertionProvider];
  *&v24[OBJC_IVAR___JSAMetricsController_suspensionAssertionProvider] = v25;

  v27 = [objc_opt_self() defaultCenter];
  if (qword_CA4F0 != -1)
  {
    swift_once();
  }

  v28 = qword_CB618;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = sub_6906C;
  v51 = v29;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_66B84;
  v49 = &unk_B6710;
  v30 = _Block_copy(&aBlock);
  v31 = v24;

  v32 = [v27 addObserverForName:v28 object:0 queue:0 usingBlock:v30];
  _Block_release(v30);

  *&v31[OBJC_IVAR___JSAMetricsController_acknowledgementObservation] = v32;
  swift_unknownObjectRelease();
  [*&v31[OBJC_IVAR___JSAMetricsController_metrics] setFlushTimerEnabled:0];
  v33 = *&v31[OBJC_IVAR___JSAMetricsController_submissionQueue];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = v33;

  v50 = sub_6908C;
  v51 = v34;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_283C0;
  v49 = &unk_B6738;
  v36 = _Block_copy(&aBlock);

  sub_83DAC();
  v45 = _swiftEmptyArrayStorage;
  sub_69094();
  sub_2805C(&unk_CAE50, &unk_A0420);
  sub_5CBFC();
  v37 = v42;
  v38 = v44;
  sub_8496C();
  sub_8484C();
  _Block_release(v36);

  (*(v43 + 8))(v37, v38);
  (*(v40 + 8))(v11, v41);

  return v31;
}

void sub_66B30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_66F90();
  }
}

uint64_t sub_66B84(uint64_t a1, uint64_t a2)
{
  v3 = sub_8381C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_8380C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_66C78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = BUOnboardingBooksBundleID();
    if (!v3)
    {
      sub_843AC();
      v3 = sub_8437C();
    }

    v4 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v3];

    if ((v4 & 1) == 0)
    {
      if (qword_CA4B8 != -1)
      {
        swift_once();
      }

      v5 = sub_83D6C();
      sub_2C284(v5, qword_CB440);
      v6 = sub_83D4C();
      v7 = sub_847CC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, v6, v7, "Enabling auto flushing: User has acknowledged privacy.", v8, 2u);
      }

      [*&v2[OBJC_IVAR___JSAMetricsController_metrics] setFlushTimerEnabled:1];
    }
  }
}

id MetricsController.__deallocating_deinit()
{
  dispatch_activate(*&v0[OBJC_IVAR___JSAMetricsController_submissionQueue]);
  v1 = *&v0[OBJC_IVAR___JSAMetricsController_acknowledgementObservation];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MetricsController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_66F90()
{
  v1 = v0;
  v2 = BUOnboardingBooksBundleID();
  if (!v2)
  {
    sub_843AC();
    v2 = sub_8437C();
  }

  v3 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v2];

  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v4 = sub_83D6C();
  sub_2C284(v4, qword_CB440);
  v5 = sub_83D4C();
  v6 = sub_847CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3 ^ 1;
    _os_log_impl(&dword_0, v5, v6, "Privacy acknowledgement changed to %{BOOL}d", v7, 8u);
  }

  if ((v3 & 1) == 0)
  {
    dispatch_activate(*&v1[OBJC_IVAR___JSAMetricsController_submissionQueue]);
    v8 = sub_83D4C();
    v9 = sub_847CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Enabling autoflushing because user has acknowledged privacy, and flushing right away", v10, 2u);
    }

    [*&v1[OBJC_IVAR___JSAMetricsController_metrics] setFlushTimerEnabled:1];

    [v1 flushUnreportedEvents];
  }
}

uint64_t sub_671B8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + v2) = _swiftEmptyArrayStorage;
}

void sub_67208()
{
  v1 = v0;
  v2 = BUOnboardingBooksBundleID();
  if (!v2)
  {
    sub_843AC();
    v2 = sub_8437C();
  }

  v3 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v2];

  if ((v3 & 1) == 0)
  {
    if (qword_CA4B8 != -1)
    {
      swift_once();
    }

    v4 = sub_83D6C();
    sub_2C284(v4, qword_CB440);
    v5 = sub_83D4C();
    v6 = sub_847CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Starting event submission", v7, 2u);
    }

    v8 = *(v1 + OBJC_IVAR___JSAMetricsController_submissionQueue);

    dispatch_activate(v8);
  }
}

id sub_673AC()
{
  result = *(v0 + OBJC_IVAR___JSAMetricsController_suspensionAssertionProvider);
  if (result)
  {
    return [result newAssertion];
  }

  __break(1u);
  return result;
}

unint64_t sub_673EC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_697E0(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_6747C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v64 = a4;
  v9 = 0xE90000000000003ELL;
  v70 = 0x6E776F6E6B6E753CLL;
  v10 = sub_83D9C();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v67 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_83DDC();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2805C(&qword_CA718, &qword_A0F00);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v62 - v15;

  v71 = a2;
  v17 = sub_8437C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = a1;
  sub_695F4(v17, 0x6369706F74, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v19 = aBlock;
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v20 = sub_55854(0x6144746E6576655FLL, 0xEA00000000006174);
  if ((v21 & 1) == 0)
  {
    goto LABEL_20;
  }

  aBlock = *(*(a1 + 56) + 8 * v20);
  swift_unknownObjectRetain();
  sub_2805C(&qword_CB828, &qword_A1DF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v22 = v72[2];
  v62[0] = v72;
  if (v22 && (v23 = sub_55854(0x707954746E657665, 0xE900000000000065), (v24 & 1) != 0) && (v72 = *(*(v62[0] + 56) + 8 * v23), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0) || *(a1 + 16) && (v25 = sub_55854(0x7954746E6576655FLL, 0xEA00000000006570), (v26 & 1) != 0) && (v72 = *(*(a1 + 56) + 8 * v25), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v74;
    v70 = aBlock;
  }

  if (qword_CA408 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v27 = sub_2C284(v13, qword_CAC88);
    (*(v14 + 16))(v16, v27, v13);
    sub_83BAC();
    (*(v14 + 8))(v16, v13);
    if (aBlock != 1)
    {
      break;
    }

    type metadata accessor for FigaroEvent();
    v16 = swift_allocObject();

    sub_6615C(v70, v9, v62[0], v19);
    v19 = OBJC_IVAR___JSAMetricsController__performanceEvents;
    swift_beginAccess();
    v28 = *(v5 + v19);
    v14 = v71;
    if (v28 >> 62)
    {
      if (sub_84B0C() < 100)
      {
        goto LABEL_17;
      }

      v61 = sub_84B0C();
      v30 = __OFSUB__(v61, 1);
      v31 = v61 - 1;
      if (v30)
      {
LABEL_53:
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    v29 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
    if (v29 >= 0x64)
    {
      v30 = __OFSUB__(v29, 1);
      v31 = v29 - 1;
      if (v30)
      {
        goto LABEL_53;
      }

LABEL_16:
      sub_673EC(v31);
    }

LABEL_17:
    if (!(*(v5 + v19) >> 62) || (sub_84B0C() & 0x8000000000000000) == 0)
    {
LABEL_32:
      sub_69F18(0, 0, v16);
      swift_endAccess();
      goto LABEL_35;
    }

    __break(1u);
LABEL_20:
    if (*(a1 + 16))
    {
      v32 = sub_55854(0x707954746E657665, v9 + 39);
      if (v33)
      {
        v72 = *(*(a1 + 56) + 8 * v32);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v9 = v74;
          v70 = aBlock;
        }
      }
    }

LABEL_24:
    if (qword_CA408 != -1)
    {
      swift_once();
    }

    v34 = sub_2C284(v13, qword_CAC88);
    (*(v14 + 16))(v16, v34, v13);
    sub_83BAC();
    (*(v14 + 8))(v16, v13);
    if (aBlock != 1)
    {
      goto LABEL_34;
    }

    type metadata accessor for FigaroEvent();
    v16 = swift_allocObject();

    sub_6615C(v70, v9, a1, v19);
    v19 = OBJC_IVAR___JSAMetricsController_experienceEvents;
    swift_beginAccess();
    v35 = *(v5 + v19);
    v14 = v71;
    if (!(v35 >> 62))
    {
      v36 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
      if (v36 < 0x64)
      {
        goto LABEL_31;
      }

      v30 = __OFSUB__(v36, 1);
      v37 = v36 - 1;
      if (v30)
      {
        goto LABEL_46;
      }

      goto LABEL_30;
    }

    if (sub_84B0C() >= 100)
    {
      v60 = sub_84B0C();
      v30 = __OFSUB__(v60, 1);
      v37 = v60 - 1;
      if (v30)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_30:
      sub_673EC(v37);
    }

LABEL_31:
    if (!(*(v5 + v19) >> 62))
    {
      goto LABEL_32;
    }

LABEL_47:
    if ((sub_84B0C() & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    __break(1u);
LABEL_49:
    swift_once();
  }

LABEL_34:
  v14 = v71;
LABEL_35:
  v62[1] = v5;

  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v38 = sub_83D6C();
  sub_2C284(v38, qword_CB440);

  v39 = sub_83D4C();
  v40 = sub_847CC();

  v41 = os_log_type_enabled(v39, v40);
  v63 = v10;
  if (v41)
  {
    v42 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v42 = 136315650;
    *(v42 + 4) = sub_3A93C(v14, a3, &aBlock);
    *(v42 + 12) = 2080;
    v43 = sub_3A93C(v70, v9, &aBlock);

    *(v42 + 14) = v43;
    *(v42 + 22) = 2080;
    v44 = sub_8435C();
    v46 = sub_3A93C(v44, v45, &aBlock);

    *(v42 + 24) = v46;
    _os_log_impl(&dword_0, v39, v40, "recordEvent - topic: %s, eventType: %s, eventDictionary: %s", v42, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v47 = objc_allocWithZone(AMSMetricsEvent);
  v48 = sub_8437C();
  v49 = [v47 initWithTopic:v48];

  sub_67FB8(a1);
  isa = sub_8433C().super.isa;

  [v49 addPropertiesWithDictionary:isa];

  if (v64)
  {
    v51 = [objc_opt_self() sharedProvider];
    v52 = [v51 activeStoreAccount];

    [v49 setAccount:v52];
  }

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v49;
  v77 = sub_6A588;
  v78 = v54;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_283C0;
  v76 = &unk_B6830;
  v55 = _Block_copy(&aBlock);

  v56 = v49;
  v57 = v65;
  sub_83DAC();
  v72 = _swiftEmptyArrayStorage;
  sub_69094();
  sub_2805C(&unk_CAE50, &unk_A0420);
  sub_5CBFC();
  v58 = v67;
  v59 = v63;
  sub_8496C();
  sub_8484C();
  _Block_release(v55);

  (*(v69 + 8))(v58, v59);
  (*(v66 + 8))(v57, v68);
}

unint64_t sub_67FB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2805C(&qword_CAA60, &unk_A1E00);
    v2 = sub_84B3C();
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
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_42FB4(&v22, v24);
        sub_42FB4(v24, v25);
        sub_42FB4(v25, &v23);
        result = sub_55854(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_371A8(v11);
          result = sub_42FB4(&v23, v11);
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_42FB4(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
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

void sub_6820C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___JSAMetricsController_metrics);

    sub_2805C(&qword_CB830, &qword_A1DF8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_A1D40;
    *(v6 + 32) = a2;
    sub_43834(0, &qword_CB838, AMSMetricsEvent_ptr);
    v7 = a2;
    isa = sub_8458C().super.isa;

    [v5 enqueueEvents:isa];
  }
}

id sub_68308()
{
  if (qword_CA4E8 != -1)
  {
    swift_once();
  }

  v1 = qword_CB610;

  return v1;
}

Swift::Void __swiftcall MetricsController.recordEvent(_:_:)(Swift::String a1, Swift::OpaquePointer a2)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (a1._countAndFlagsBits == 0xD000000000000010 && 0x800000000009DA20 == a1._object)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_84BEC();
  }

  sub_6747C(a2._rawValue, countAndFlagsBits, object, v5 & 1);
}

Swift::Void __swiftcall MetricsController.flushUnreportedEvents()()
{
  v0 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_8468C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_3BBC8(0, 0, v2, &unk_A1D60, v5);

  sub_692E0(v2);
}

uint64_t sub_686F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_83D9C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_83DDC();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_68814, 0, 0);
}

uint64_t sub_68814()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = BUOnboardingBooksBundleID();
    if (!v3)
    {
      sub_843AC();
      v3 = sub_8437C();
    }

    v4 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v3];

    if (v4)
    {
      if (qword_CA4B8 != -1)
      {
        swift_once();
      }

      v5 = sub_83D6C();
      sub_2C284(v5, qword_CB440);
      v6 = sub_83D4C();
      v7 = sub_847CC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, v6, v7, "Skipping flushing: User has not acknowledged privacy yet.", v8, 2u);
      }
    }

    else
    {
      if (qword_CA4B8 != -1)
      {
        swift_once();
      }

      v9 = sub_83D6C();
      sub_2C284(v9, qword_CB440);
      v10 = sub_83D4C();
      v11 = sub_847CC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "Flushing events", v12, 2u);
      }

      v14 = v0[16];
      v13 = v0[17];
      v15 = v0[14];
      v23 = v0[15];
      v17 = v0[12];
      v16 = v0[13];

      sub_83DBC();
      sub_83D8C();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_6A4F0;
      v0[7] = v18;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_283C0;
      v0[5] = &unk_B67B8;
      v19 = _Block_copy(v0 + 2);

      sub_8484C();
      _Block_release(v19);
      (*(v16 + 8))(v15, v17);
      (*(v14 + 8))(v13, v23);

      v20 = *&v2[OBJC_IVAR___JSAMetricsController_isSuspended];
      *(swift_task_alloc() + 16) = v2;
      os_unfair_lock_lock((v20 + 20));
      sub_6A5C0((v20 + 16));
      os_unfair_lock_unlock((v20 + 20));
    }
  }

  v21 = v0[1];

  return v21();
}

void sub_68C00(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___JSAMetricsController_metrics);

    v4 = [v3 flush];
    aBlock[4] = sub_68D08;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_65258;
    aBlock[3] = &unk_B67E0;
    v5 = _Block_copy(aBlock);
    [v4 addFinishBlock:v5];
    _Block_release(v5);
  }
}

void sub_68D08()
{
  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v0 = sub_83D6C();
  sub_2C284(v0, qword_CB440);
  oslog = sub_83D4C();
  v1 = sub_847CC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "Finished flushing events", v2, 2u);
  }
}

NSString sub_68FFC()
{
  result = sub_8437C();
  qword_CB618 = result;
  return result;
}

uint64_t sub_69034()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_69074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_69094()
{
  result = qword_CA538;
  if (!qword_CA538)
  {
    sub_83D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA538);
  }

  return result;
}

id static NSNotificationName.privacyAcknowledgementDidChange.getter()
{
  if (qword_CA4F0 != -1)
  {
    swift_once();
  }

  v1 = qword_CB618;

  return v1;
}

id sub_6916C(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

uint64_t static MetricsController.privacyAcknowledgementDidChange.getter()
{
  if (qword_CA4F0 != -1)
  {
    swift_once();
  }

  return sub_843AC();
}

uint64_t sub_6922C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_38510;

  return sub_686F8(a1, v4, v5, v6);
}

uint64_t sub_692E0(uint64_t a1)
{
  v2 = sub_2805C(&qword_CA5E8, &qword_A0850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_69348(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    if (v4 >> 62)
    {
      sub_84B0C();
    }

    result = sub_84A7C();
    *v2 = result;
  }

  return result;
}

uint64_t sub_69404(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_84B0C();
LABEL_9:
  result = sub_84A7C();
  *v2 = result;
  return result;
}

_OWORD *sub_694A4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_55854(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_6E900();
      v11 = v19;
      goto LABEL_8;
    }

    sub_6F140(v16, a4 & 1);
    v11 = sub_55854(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_84C2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_371A8(v22);

    return sub_42FB4(a1, v22);
  }

  else
  {
    sub_69770(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_695F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_55854(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_6F3F8(v16, a4 & 1);
      v11 = sub_55854(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_84C2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_6EAA4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_69770(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_42FB4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_697E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_84B0C();
  }

  return sub_84A7C();
}

uint64_t sub_69844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2805C(&qword_CB840, &unk_A1E10);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_84B0C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_84B0C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_69950(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_84B0C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_84B0C();
  }

  else
  {
    v10 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_69348(result, 1);

  return sub_69844(v5, v3, 0);
}

uint64_t sub_69A28()
{
  v1 = v0;
  v2 = OBJC_IVAR___JSAMetricsController__performanceEvents;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    goto LABEL_41;
  }

  v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    return *(v1 + v2);
  }

LABEL_3:
  v19 = v2;
  v5 = OBJC_IVAR___JSAMetricsController_experienceEvents;
  v6 = v3 & 0xC000000000000001;

  v24 = v5;
  swift_beginAccess();
  v7 = 0;
  v8 = v3 & 0xFFFFFFFFFFFFFF8;
  v2 = v3 + 32;
  v20 = v3;
  v21 = v1;
  v22 = v3 & 0xFFFFFFFFFFFFFF8;
  v23 = v3 & 0xC000000000000001;
  v25 = v3 + 32;
  while (1)
  {
    if (v6)
    {
      v9 = sub_84A6C();
      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_40;
      }

      v9 = *(v2 + 8 * v7);

      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v4 = sub_84B0C();
        if (!v4)
        {
          return *(v1 + v2);
        }

        goto LABEL_3;
      }
    }

    if (*(v9 + 56))
    {
      goto LABEL_5;
    }

    swift_beginAccess();
    if (!*(*(v9 + 40) + 16))
    {
      goto LABEL_5;
    }

    sub_55854(0xD000000000000014, 0x800000000009DC00);
    if (v11)
    {
      break;
    }

LABEL_5:

LABEL_6:
    if (v7 == v4)
    {

      v2 = v19;
      return *(v1 + v2);
    }
  }

  swift_unknownObjectRetain();

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    v2 = v25;
    goto LABEL_6;
  }

  v13 = *(v1 + v24);
  if (!(v13 >> 62))
  {
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (v14)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

  result = sub_84B0C();
  v14 = result;
  if (!result)
  {
LABEL_35:

LABEL_36:
    v8 = v22;
    v6 = v23;
    v2 = v25;
    goto LABEL_6;
  }

LABEL_19:
  if (v14 >= 1)
  {
    v15 = v13 & 0xC000000000000001;

    v16 = 0;
    while (1)
    {
      if (v15)
      {
        v17 = sub_84A6C();
      }

      else
      {
        v17 = *(v13 + 8 * v16 + 32);
      }

      swift_beginAccess();
      if (*(*(v17 + 40) + 16))
      {

        sub_55854(0xD000000000000014, 0x800000000009DC00);
        if (v18)
        {
          swift_unknownObjectRetain();

          if (swift_dynamicCast())
          {

            *(v9 + 56) = v17;
          }

          v15 = v13 & 0xC000000000000001;
          goto LABEL_23;
        }
      }

LABEL_23:
      if (v14 == ++v16)
      {

        v3 = v20;
        v1 = v21;
        goto LABEL_36;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_69DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for FigaroEvent();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_84B0C();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_84B0C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_69F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *(&dword_10 + (*v5 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_84B0C();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_84B0C();
  }

  else
  {
    v13 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_69404(result, 1);

  return sub_69DFC(v7, v6, 1, v4);
}

void _s5JSApp17MetricsControllerC32countingAssertProviderTransition9toNonZeroySo019BUCountingAssertionF0C_tF_0()
{
  v1 = v0;
  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v2 = sub_83D6C();
  sub_2C284(v2, qword_CB440);
  v3 = sub_83D4C();
  v4 = sub_847CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Pausing event submission due to assertion", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___JSAMetricsController_isSuspended);
  __chkstk_darwin(v7);
  os_unfair_lock_lock((v6 + 20));
  sub_6A4A0((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));
}

void _s5JSApp17MetricsControllerC32countingAssertProviderTransition6toZeroySo019BUCountingAssertionF0C_tF_0()
{
  v1 = v0;
  if (qword_CA4B8 != -1)
  {
    swift_once();
  }

  v2 = sub_83D6C();
  sub_2C284(v2, qword_CB440);
  v3 = sub_83D4C();
  v4 = sub_847CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Resuming event submission due to assertion invalidation", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___JSAMetricsController_isSuspended);
  __chkstk_darwin(v7);
  os_unfair_lock_lock((v6 + 20));
  sub_6A488((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));
}

uint64_t sub_6A394()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6A3D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2C958;

  return sub_686F8(a1, v4, v5, v6);
}

void sub_6A4A0(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    dispatch_suspend(*(*(v1 + 16) + OBJC_IVAR___JSAMetricsController_submissionQueue));
    *a1 = 1;
  }
}

void sub_6A4F8(_BYTE *a1)
{
  if (*a1 == 1)
  {
    dispatch_resume(*(*(v1 + 16) + OBJC_IVAR___JSAMetricsController_submissionQueue));
    *a1 = 0;
  }
}

uint64_t sub_6A548()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6A5F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746565;
  v3 = 0x68536E6F69746361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6553736569726553;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4 == 2)
    {
      v6 = 0xEC0000006C6C4165;
    }

    else
    {
      v6 = 0x800000000009B990;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x736569726553;
    }

    else
    {
      v5 = 0x68536E6F69746361;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000746565;
    }
  }

  v7 = 0x6553736569726553;
  v8 = 0x800000000009B990;
  if (a2 == 2)
  {
    v8 = 0xEC0000006C6C4165;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v3 = 0x736569726553;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_84BEC();
  }

  return v11 & 1;
}

uint64_t sub_6A748(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F74747562;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7369685464616572;
    }

    else
    {
      v4 = 0x776F6853746E6F64;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D657449626174;
    }

    else
    {
      v4 = 0x6E6F74747562;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x7369685464616572;
  if (a2 != 2)
  {
    v7 = 0x776F6853746E6F64;
  }

  if (a2)
  {
    v2 = 0x6D657449626174;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_84BEC();
  }

  return v10 & 1;
}

uint64_t sub_6A888(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000747865746ELL;
  v3 = 0x6F436E6F69746361;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x6449746567726174;
  if (a1 != 6)
  {
    v6 = 0x7954746567726174;
    v5 = 0xEA00000000006570;
  }

  v7 = 0x707954746E657665;
  v8 = 0xE800000000000000;
  if (a1 == 4)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x6E6F697461636F6CLL;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x79546E6F69746361;
  v10 = 0xE90000000000006CLL;
  if (a1 == 2)
  {
    v10 = 0xEA00000000006570;
  }

  else
  {
    v9 = 0x72556E6F69746361;
  }

  v11 = 0x65446E6F69746361;
  v12 = 0xED0000736C696174;
  if (!a1)
  {
    v11 = 0x6F436E6F69746361;
    v12 = 0xED0000747865746ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v3 = 0x707954746E657665;
        v2 = 0xE900000000000065;
      }

      else
      {
        v2 = 0xE800000000000000;
        v3 = 0x6E6F697461636F6CLL;
      }

      goto LABEL_36;
    }

    if (a2 == 6)
    {
      v2 = 0xE800000000000000;
      v3 = 0x6449746567726174;
      goto LABEL_36;
    }

    v15 = 0x746567726174;
LABEL_35:
    v3 = v15 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
    v2 = 0xEA00000000006570;
    goto LABEL_36;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v3 = 0x72556E6F69746361;
      v2 = 0xE90000000000006CLL;
      goto LABEL_36;
    }

    v15 = 0x6E6F69746361;
    goto LABEL_35;
  }

  if (a2)
  {
    v3 = 0x65446E6F69746361;
    v2 = 0xED0000736C696174;
  }

LABEL_36:
  if (v13 == v3 && v14 == v2)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_84BEC();
  }

  return v16 & 1;
}

uint64_t sub_6AAF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x676E69646C697562;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x696C6C6174736E69;
    v4 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x7964616572;
  }

  else
  {
    v5 = 0x74616E696D726574;
    v4 = 0xEA00000000006465;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xE800000000000000;
    v8 = 0x676E69646C697562;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x696C6C6174736E69;
    v6 = 0xEA0000000000676ELL;
    v7 = 0xE500000000000000;
    v8 = 0x7964616572;
    if (a2 != 3)
    {
      v8 = 0x74616E696D726574;
      v7 = 0xEA00000000006465;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_84BEC();
  }

  return v12 & 1;
}

Swift::Int sub_6AC90()
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_6AD7C(uint64_t a1)
{
  sub_8446C();
}

Swift::Int sub_6AE54(uint64_t a1)
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

unint64_t sub_6AF3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6B330(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_6AF6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x696C6C6174736E69;
  v7 = 0xE500000000000000;
  v8 = 0x7964616572;
  if (v2 != 3)
  {
    v8 = 0x74616E696D726574;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E69646C697562;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_6B014()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_8437C();
  CFNotificationCenterAddObserver(v1, v0, sub_6B17C, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v3 = sub_8437C();
  CFNotificationCenterAddObserver(v1, v0, sub_6B17C, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v4 = sub_8437C();
  CFNotificationCenterAddObserver(v1, v0, sub_6B17C, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v5 = sub_8437C();
  CFNotificationCenterAddObserver(v1, v0, sub_6B17C, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

void sub_6B17C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_6B3A4(a2, a3);
}

uint64_t sub_6B1FC()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  sub_6B37C(v0 + 24);

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_6B290()
{
  result = qword_CB928;
  if (!qword_CB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB928);
  }

  return result;
}

unint64_t sub_6B2E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B4668;
  v6._object = a2;
  v4 = sub_84B5C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_6B330(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B46E8;
  v6._object = a2;
  v4 = sub_84B5C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void sub_6B3A4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  type metadata accessor for HotReloadNotificationObserver();
  swift_unknownObjectRetain();
  v3 = swift_dynamicCastClass();
  if (!v3 || !a2)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sub_843AC();
  v7 = v6;
  v14 = a2;
  v8 = sub_6B2E4(v5, v7);
  if (v8 == 4)
  {
    swift_unknownObjectRelease();

LABEL_7:
    if (qword_CA498 != -1)
    {
      swift_once();
    }

    v9 = sub_83D6C();
    sub_2C284(v9, qword_CB3E0);
    v14 = sub_83D4C();
    v10 = sub_847AC();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v14, v10, "An unexpected error has occurred during darwin notification handling. Hot Reload may not work correctly.", v11, 2u);
    }

    goto LABEL_11;
  }

  v12 = *(v4 + 16);
  v13 = v8 + 1;
  *(v4 + 16) = v8 + 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2C2BC(v12, v13);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_11:
}

id sub_6B560(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC5JSApp25AccountPageViewController_pageType;
  v5[OBJC_IVAR____TtC5JSApp25AccountPageViewController_pageType] = 0;
  v12 = &v5[OBJC_IVAR____TtC5JSApp25AccountPageViewController_contentID];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v5[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
  *v13 = 0;
  v13[1] = 0;
  *(&v11->super.isa + v5) = a2;
  *v12 = a3;
  v12[1] = a4;
  sub_8394C(v11);
  v15 = v14;
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, "initWithAccountURL:", v14);

  [v16 setDelegate:v16];
  v17 = sub_839CC();
  (*(*(v17 - 8) + 8))(a1, v17);
  return v16;
}

id sub_6B660(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC5JSApp25AccountPageViewController_pageType] = 0;
  v7 = &v3[OBJC_IVAR____TtC5JSApp25AccountPageViewController_contentID];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
  *v8 = 0;
  v8[1] = 0;
  if (a2)
  {
    v9 = sub_8437C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

void sub_6BA70(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if (v4 == v1)
    {
      v5 = *(v1 + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish);
      v6 = *(v2 + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish + 8);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = v5;
      v8[3] = v6;
      v8[4] = v7;
      v11[4] = sub_6BDA8;
      v11[5] = v8;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_283C0;
      v11[3] = &unk_B69C8;
      v9 = _Block_copy(v11);
      sub_2841C(v5, v6);
      sub_2841C(v5, v6);
      v10 = a1;

      [v10 dismissViewControllerAnimated:1 completion:v9];
      _Block_release(v9);
      sub_2C0EC(v5, v6);
    }
  }
}

void sub_6BBDC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = (Strong + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish);
    v6 = *(Strong + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish);
    v5 = *(Strong + OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish + 8);
    *v4 = 0;
    v4[1] = 0;
    v7 = Strong;
    sub_2C0EC(v6, v5);
  }
}

unint64_t sub_6BCD4()
{
  result = qword_CB9D0;
  if (!qword_CB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB9D0);
  }

  return result;
}

uint64_t sub_6BD28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6BD60()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6BDB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6BDCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t NSURL.isSafeExternalURL.getter()
{
  v1 = [v0 scheme];
  if (!v1)
  {
    v15 = 0;
    return v15 & 1;
  }

  v2 = v1;
  sub_843AC();

  v3 = sub_8440C();
  v5 = v4;

  v6 = [objc_opt_self() defaultBag];
  v7 = [v6 mobileURLHandlers];

  v20 = 0;
  v8 = [v7 jsa_valueWithError:&v20];
  v9 = v20;
  if (!v8)
  {
    v16 = v20;
    sub_838DC();

    swift_willThrow();

    goto LABEL_10;
  }

  v10 = v8;
  v20 = 0;
  v11 = v9;
  sub_8459C();

  v13 = v20;
  if (!v20)
  {
LABEL_10:
    v20 = v3;
    v21 = v5;
    __chkstk_darwin(v12);
    v19 = &v20;
    v15 = sub_6BDCC(sub_70408, v18, &off_B4780);

    swift_arrayDestroy();

    return v15 & 1;
  }

  v20 = v3;
  v21 = v5;
  __chkstk_darwin(v12);
  v19 = &v20;
  v14 = sub_6BDCC(sub_70918, v18, v13);

  if ((v14 & 1) != 0 || v3 == 0x656764697262 && v5 == 0xE600000000000000)
  {

    v15 = 1;
  }

  else
  {
    v15 = sub_84BEC();
  }

  return v15 & 1;
}

void __swiftcall NSURL.parametrize(_:)(NSURL *__return_ptr retstr, Swift::OpaquePointer a2)
{
  v3 = sub_2805C(&unk_CAE60, &qword_A1800);
  __chkstk_darwin(v3 - 8);
  v5 = &v96 - v4;
  v118 = sub_8384C();
  v115 = *(v118 - 8);
  v6 = __chkstk_darwin(v118);
  v110 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v109 = &v96 - v9;
  v10 = __chkstk_darwin(v8);
  v117 = &v96 - v11;
  __chkstk_darwin(v10);
  v116 = &v96 - v12;
  v13 = sub_839CC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v96 - v18;
  v20 = sub_2805C(&qword_CB9D8, &qword_A1FD0);
  __chkstk_darwin(v20 - 8);
  v22 = &v96 - v21;
  v23 = sub_838BC();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v107);
  v104 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = a2._rawValue;
  if (!*(a2._rawValue + 2))
  {
LABEL_4:

    v28 = v25;
    return;
  }

  sub_8396C();
  sub_8389C();
  v27 = *(v14 + 8);
  v103 = v14 + 8;
  v102 = v27;
  v27(v19, v13);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_38328(v22, &qword_CB9D8, &qword_A1FD0);
    v25 = v107;
    goto LABEL_4;
  }

  (*(v24 + 32))(v104, v22, v23);
  v29 = sub_8387C();
  v101 = v5;
  v100 = v13;
  v99 = v14;
  v98 = v17;
  v97 = v23;
  v96 = v24;
  if (!v29)
  {
    v32 = sub_42CA0(_swiftEmptyArrayStorage);
    goto LABEL_27;
  }

  v30 = v29;
  v114 = *(v29 + 16);
  if (!v114)
  {

    v32 = &_swiftEmptyDictionarySingleton;
    goto LABEL_27;
  }

  v31 = 0;
  v113 = v29 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
  v111 = (v115 + 8);
  v112 = v115 + 16;
  v105 = (v115 + 40);
  v106 = (v115 + 32);
  v32 = &_swiftEmptyDictionarySingleton;
  do
  {
    if (v31 >= *(v30 + 16))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v34 = v116;
    v35 = *(v115 + 72);
    v36 = *(v115 + 16);
    v37 = v118;
    v36(v116, v113 + v35 * v31, v118);
    v38 = sub_8383C();
    v40 = v39;
    v36(v117, v34, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v32;
    v43 = sub_55854(v38, v40);
    v44 = v32[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_56;
    }

    v47 = v42;
    if (v32[3] >= v46)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v42)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_6EC14();
        if (v47)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_6F6A0(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_55854(v38, v40);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_60;
      }

      v43 = v48;
      if (v47)
      {
LABEL_10:

        v32 = v119;
        v33 = v118;
        (*v105)(v119[7] + v43 * v35, v117, v118);
        (*v111)(v116, v33);
        goto LABEL_11;
      }
    }

    v32 = v119;
    v119[(v43 >> 6) + 8] |= 1 << v43;
    v50 = (v32[6] + 16 * v43);
    *v50 = v38;
    v50[1] = v40;
    v51 = v118;
    (*v106)(v32[7] + v43 * v35, v117, v118);
    (*v111)(v116, v51);
    v52 = v32[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_57;
    }

    v32[2] = v54;
LABEL_11:
    ++v31;
  }

  while (v114 != v31);

LABEL_27:
  v55 = rawValue + 64;
  v56 = 1 << rawValue[32];
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(rawValue + 8);
  v59 = (v56 + 63) >> 6;
  v116 = (v115 + 8);
  v117 = (v115 + 16);
  v113 = v115 + 40;
  v114 = v115 + 32;

  v60 = 0;
  if (v58)
  {
    goto LABEL_32;
  }

LABEL_33:
  while (2)
  {
    v65 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v65 >= v59)
    {

      v84 = v32[2];
      if (v84)
      {
        v85 = sub_6CE80(v32[2], 0);
        v86 = sub_6FE5C(&v119, &v85[(*(v115 + 80) + 32) & ~*(v115 + 80)], v84, v32);
        v87 = v119;
        swift_bridgeObjectRetain_n();
        sub_40AE0(v87);
        if (v86 == v84)
        {
LABEL_50:
          v88 = v101;
          v89 = v100;
          v90 = v99;
          v91 = v98;
          v92 = v97;
          v93 = v96;
          v119 = v85;
          sub_6CF7C(&v119);

          v94 = v104;
          sub_8388C();
          sub_838AC();
          if ((*(v90 + 48))(v88, 1, v89) == 1)
          {
            (*(v93 + 8))(v94, v92);
            sub_38328(v88, &unk_CAE60, &qword_A1800);
            v107;
          }

          else
          {
            (*(v90 + 32))(v91, v88, v89);
            sub_8394C(v95);
            v102(v91, v89);
            (*(v93 + 8))(v94, v92);
          }

          return;
        }

        __break(1u);
      }

      v85 = _swiftEmptyArrayStorage;
      goto LABEL_50;
    }

    v58 = *&v55[8 * v65];
    ++v60;
    if (!v58)
    {
      continue;
    }

    break;
  }

  while (1)
  {
    v66 = (*(rawValue + 6) + ((v65 << 10) | (16 * __clz(__rbit64(v58)))));
    v68 = *v66;
    v67 = v66[1];

    v69 = v109;
    sub_8382C();

    (*v117)(v110, v69, v118);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v32;
    v71 = sub_55854(v68, v67);
    v73 = v32[2];
    v74 = (v72 & 1) == 0;
    v53 = __OFADD__(v73, v74);
    v75 = v73 + v74;
    if (v53)
    {
      break;
    }

    v76 = v72;
    if (v32[3] >= v75)
    {
      if ((v70 & 1) == 0)
      {
        v83 = v71;
        sub_6EC14();
        v71 = v83;
      }
    }

    else
    {
      sub_6F6A0(v75, v70);
      v71 = sub_55854(v68, v67);
      if ((v76 & 1) != (v77 & 1))
      {
        goto LABEL_60;
      }
    }

    v58 &= v58 - 1;
    if (v76)
    {
      v61 = v71;

      v32 = v119;
      v62 = v115;
      v63 = v119[7] + *(v115 + 72) * v61;
      v64 = v118;
      (*(v115 + 40))(v63, v110, v118);
      (*(v62 + 8))(v109, v64);
      v60 = v65;
      if (!v58)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v32 = v119;
      v119[(v71 >> 6) + 8] |= 1 << v71;
      v78 = (v32[6] + 16 * v71);
      *v78 = v68;
      v78[1] = v67;
      v79 = v115;
      v80 = v118;
      (*(v115 + 32))(v32[7] + *(v115 + 72) * v71, v110, v118);
      (*(v79 + 8))(v109, v80);
      v81 = v32[2];
      v53 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      if (v53)
      {
        goto LABEL_59;
      }

      v32[2] = v82;
      v60 = v65;
      if (!v58)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    v65 = v60;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_84C2C();
  __break(1u);

  __break(1u);
}

void *sub_6CD6C(uint64_t a1, uint64_t a2)
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

  sub_2805C(&qword_CA868, &unk_A1060);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_6CDFC(uint64_t a1, uint64_t a2)
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

  sub_2805C(&qword_CA8A0, &qword_A1CA0);
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

void *sub_6CE80(uint64_t a1, uint64_t a2)
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

  sub_2805C(&qword_CA898, &unk_A1090);
  v4 = *(sub_8384C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_6CF7C(uint64_t *a1)
{
  v2 = *(sub_8384C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_40B60(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_6D024(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_6D024(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_84BAC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_8384C();
        v6 = sub_845DC();
        v6[2] = v5;
      }

      v7 = *(sub_8384C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_6D45C(v8, v9, a1, v4);
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
    return sub_6D150(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_6D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_8384C();
  v9 = __chkstk_darwin(v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v34 - v12;
  result = __chkstk_darwin(v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_8383C();
      v27 = v26;
      if (v25 == sub_8383C() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_84BEC();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_6D45C(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_8384C();
  v10 = __chkstk_darwin(v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v149 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v154 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v153 = &v128 - v17;
  v18 = __chkstk_darwin(v16);
  v146 = &v128 - v19;
  v20 = __chkstk_darwin(v18);
  v145 = &v128 - v21;
  v22 = __chkstk_darwin(v20);
  v133 = &v128 - v23;
  result = __chkstk_darwin(v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_6E018(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_409C8(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_4093C(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_409C8(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = _swiftEmptyArrayStorage;
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_8383C();
      v37 = v36;
      v38 = sub_8383C();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_84BEC();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_8383C();
        v52 = v51;
        if (v50 == sub_8383C() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_84BEC();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_409DC(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_409DC((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_6E018(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_409C8(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_4093C(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_8383C();
    v69 = v68;
    if (v5 == sub_8383C() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_84BEC();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_6E018(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_8384C();
  v8 = *(v71 - 8);
  v9 = __chkstk_darwin(v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v59 - v14;
  result = __chkstk_darwin(v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_8383C();
            v52 = v51;
            if (v50 == sub_8383C() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_84BEC();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_8383C();
        v32 = v31;
        if (v30 == sub_8383C() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_84BEC();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_6E6B4(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_6E6B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_8384C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_6E798()
{
  v1 = v0;
  sub_2805C(&qword_CAFB8, &unk_A1908);
  v2 = *v0;
  v3 = sub_84B1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_6E900()
{
  v1 = v0;
  sub_2805C(&qword_CAA60, &unk_A1E00);
  v2 = *v0;
  v3 = sub_84B1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_381F8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_42FB4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_6EAA4()
{
  v1 = v0;
  sub_2805C(&qword_CB9E8, &unk_A1FE0);
  v2 = *v0;
  v3 = sub_84B1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        swift_unknownObjectRetain();
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
}

void sub_6EC14()
{
  v1 = v0;
  v35 = sub_8384C();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2805C(&qword_CAA58, &qword_A13C8);
  v3 = *v0;
  v4 = sub_84B1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_6EE94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2805C(&qword_CAFB8, &unk_A1908);
  v34 = v4;
  v6 = sub_84B2C();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      sub_84CCC();
      sub_8446C();
      v25 = sub_84D0C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_6F140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2805C(&qword_CAA60, &unk_A1E00);
  v34 = v4;
  v6 = sub_84B2C();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_42FB4(v24, v35);
      }

      else
      {
        sub_381F8(v24, v35);
      }

      sub_84CCC();
      sub_8446C();
      v25 = sub_84D0C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_42FB4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_6F3F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2805C(&qword_CB9E8, &unk_A1FE0);
  v35 = v4;
  v6 = sub_84B2C();
  v7 = v6;
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
    v14 = v6 + 64;
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

        swift_unknownObjectRetain();
      }

      sub_84CCC();
      sub_8446C();
      v25 = sub_84D0C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
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
}

void sub_6F6A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_8384C();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2805C(&qword_CAA58, &qword_A13C8);
  v43 = v4;
  v8 = sub_84B2C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      sub_84CCC();
      sub_8446C();
      v29 = sub_84D0C();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_6FA20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2805C(&qword_CAA88, &qword_A13F0);
  v38 = v4;
  v6 = sub_84B2C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_84CCC();
      sub_8446C();
      v28 = sub_84D0C();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void *sub_6FCE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        swift_unknownObjectRetain();
        goto LABEL_23;
      }

      v11 += 3;

      swift_unknownObjectRetain();
      result = v14;
      v21 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_6FE5C(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_8384C();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v31;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = (&dword_0 + 1);
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_70100(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_70258(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_703B0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_84BEC() & 1;
  }
}

uint64_t sub_70424(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_84BEC() & 1;
  }
}

uint64_t _sSo5NSURLC5JSAppE11queryString3for13escapedValuesSSSDys11AnyHashableVypG_SbtFZ_0(uint64_t a1, int a2)
{
  v36 = a2;
  v35 = sub_837FC();
  __chkstk_darwin(v35);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0;
  v54 = 0xE000000000000000;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = *(a1 + 32);
  v37 = a1;
  v38 = 1;
  v8 = 1 << v7;
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v33 = (v3 + 8);

  v13 = 0;
  while (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_16:
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v18 = v17 | (v14 << 6);
      v19 = v37;
      sub_57760(*(v37 + 48) + 40 * v18, v42);
      sub_381F8(*(v19 + 56) + 32 * v18, &v40);
      v44 = v42[0];
      v45 = v42[1];
      *&v46 = v43;
      sub_42FB4(&v40, (&v46 + 8));
LABEL_17:
      v51[0] = v46;
      v51[1] = v47;
      v52 = v48;
      v49 = v44;
      v50 = v45;
      if (!*(&v45 + 1))
      {

        return v53;
      }

      v44 = v49;
      v45 = v50;
      *&v46 = *&v51[0];
      sub_42FB4((v51 + 8), v42);
      sub_381F8(v42, &v40);
      sub_708CC();
      if (swift_dynamicCast())
      {
        countAndFlagsBits = v39._countAndFlagsBits;
        v21 = [v39._countAndFlagsBits stringValue];
        v22 = sub_843AC();
        v24 = v23;

        v41 = &type metadata for String;
        v40._countAndFlagsBits = v22;
        v40._object = v24;
        sub_371A8(v42);
        sub_42FB4(&v40, v42);
      }

      sub_381F8(v42, &v40);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_371A8(v42);
      result = sub_559A0(&v44);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    object = v39._object;
    v26 = v39._countAndFlagsBits;
    if (v36)
    {
      v40 = v39;
      v27 = v34;
      sub_837CC();
      v58._countAndFlagsBits = 723926335;
      v58._object = 0xE400000000000000;
      sub_837EC(v58);
      sub_3A8E8();
      v28 = sub_8493C();
      v30 = v29;
      (*v33)(v27, v35);
      if (v30)
      {

        v26 = v28;
        object = v30;
      }
    }

    if (v38)
    {
      v40._countAndFlagsBits = sub_849CC();
      v40._object = v31;
    }

    else
    {
      v40._countAndFlagsBits = 38;
      v40._object = 0xE100000000000000;
      v55._countAndFlagsBits = sub_849CC();
      sub_844AC(v55);
    }

    v56._countAndFlagsBits = 61;
    v56._object = 0xE100000000000000;
    sub_844AC(v56);
    v57._countAndFlagsBits = v26;
    v57._object = object;
    sub_844AC(v57);

    sub_844AC(v40);

    sub_371A8(v42);
    result = sub_559A0(&v44);
    v38 = 0;
  }

LABEL_8:
  if (v11 <= v13 + 1)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v10 = 0;
      v48 = 0;
      v47 = 0u;
      v45 = 0u;
      v46 = 0u;
      v13 = v16;
      v44 = 0u;
      goto LABEL_17;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_708CC()
{
  result = qword_CB9E0;
  if (!qword_CB9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_CB9E0);
  }

  return result;
}

uint64_t BooksLocalizerFactory.__allocating_init(package:)(char *a1)
{
  v2 = swift_allocObject();
  sub_75744(&a1[OBJC_IVAR___JSAPackage_jetPack], v2 + OBJC_IVAR____TtC5JSApp21BooksLocalizerFactory_jetPack, type metadata accessor for BooksJetPackResourceBundle);

  return v2;
}

uint64_t BooksLocalizerFactory.init(package:)(char *a1)
{
  sub_75744(&a1[OBJC_IVAR___JSAPackage_jetPack], v1 + OBJC_IVAR____TtC5JSApp21BooksLocalizerFactory_jetPack, type metadata accessor for BooksJetPackResourceBundle);

  return v1;
}

uint64_t sub_70A00(uint64_t a1, uint64_t a2)
{
  v3[111] = v2;
  v3[110] = a2;
  v3[109] = a1;
  v4 = sub_841EC();
  v3[112] = v4;
  v3[113] = *(v4 - 8);
  v3[114] = swift_task_alloc();
  v5 = sub_8419C();
  v3[115] = v5;
  v3[116] = *(v5 - 8);
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v6 = sub_8421C();
  v3[123] = v6;
  v3[124] = *(v6 - 8);
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = type metadata accessor for BooksBagLanguageSource(0);
  v3[128] = swift_task_alloc();
  sub_8405C();
  v3[129] = swift_task_alloc();

  return _swift_task_switch(sub_70C24, 0, 0);
}

uint64_t sub_70C24()
{
  v1 = v0[111];
  sub_2805C(&qword_CB9F0, &qword_A1FF8);
  sub_8409C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_A18D0;
  sub_43834(0, &qword_CB9F8, AMSURLSession_ptr);
  sub_8408C();
  sub_43834(0, &qword_CBA00, AMSProcessInfo_ptr);
  sub_8408C();
  sub_2805C(&qword_CBA08, &qword_A2000);
  sub_8408C();
  v0[108] = v2;
  sub_2805C(&qword_CBA10, &qword_A2008);
  sub_72AF0();
  v0[130] = sub_840DC();

  v3 = OBJC_IVAR____TtC5JSApp21BooksLocalizerFactory_jetPack;
  v0[15] = type metadata accessor for BooksJetPackResourceBundle(0);
  v0[16] = sub_756FC(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle, &protocol conformance descriptor for BooksJetPackResourceBundle);
  v4 = sub_382A8(v0 + 12);
  sub_75744(v1 + v3, v4, type metadata accessor for BooksJetPackResourceBundle);
  sub_8406C();
  v0[10] = sub_841DC();
  v0[11] = &protocol witness table for LocalizedStringsBundle;
  sub_382A8(v0 + 7);
  sub_841CC();
  sub_371F4((v0 + 7), (v0 + 2));
  v5 = sub_752D4();
  if (v5)
  {
    v6 = v5;
    v0[131] = v5;
    v7 = swift_task_alloc();
    v0[132] = v7;
    *v7 = v0;
    v7[1] = sub_71218;

    return sub_72BA4(v6);
  }

  else
  {
    v9 = v0[5];
    v10 = v0[6];
    sub_40E4C(v0 + 2, v9);
    v11 = swift_task_alloc();
    v0[134] = v11;
    *v11 = v0;
    v11[1] = sub_713D0;

    return dispatch thunk of LocalizedStringsDataSource.fetchLanguages()(v9, v10);
  }
}

uint64_t sub_71218(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *v2;
  *(*v2 + 1064) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_71E10, 0, 0);
  }

  else
  {
    v5[136] = v4[131];
    v5[137] = a1;
    v7 = swift_task_alloc();
    v5[138] = v7;
    *v7 = v6;
    v7[1] = sub_71568;
    v8 = v5[126];
    v9 = v5[123];

    return BaseObjectGraph.inject<A>(_:)(v8, v9, v9);
  }
}

uint64_t sub_713D0(uint64_t a1)
{
  v4 = *v2;
  v4[135] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_71F24, 0, 0);
  }

  else
  {
    v4[136] = 0;
    v4[137] = a1;
    v5 = swift_task_alloc();
    v4[138] = v5;
    *v5 = v4;
    v5[1] = sub_71568;
    v6 = v4[126];
    v7 = v4[123];

    return BaseObjectGraph.inject<A>(_:)(v6, v7, v7);
  }
}

uint64_t sub_71568()
{
  *(*v1 + 1112) = v0;

  if (v0)
  {

    v2 = sub_72038;
  }

  else
  {
    v2 = sub_71690;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_71690()
{
  v1 = *(v0 + 1096);
  v39 = *(v0 + 1088);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  v8 = *(v6 + 16);
  v8(v2, v4, v7);
  v8(v5, v4, v7);
  sub_8410C();
  (*(v6 + 8))(v4, v7);
  *(v2 + *(v3 + 24)) = v1;
  sub_370FC(v0 + 16, v0 + 136);
  if (v39)
  {
    v9 = *(v0 + 1088);
    v10 = &type metadata for NativeDataSource;
    v11 = sub_756A8();
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
  }

  *(v0 + 1120) = v9;
  v12 = *(v0 + 1024);
  v13 = *(v0 + 1016);
  v14 = *(v0 + 960);
  v15 = *(v0 + 952);
  v16 = *(v0 + 928);
  v37 = *(v0 + 920);
  v17 = *(v0 + 912);
  v18 = *(v0 + 904);
  v38 = *(v0 + 896);
  *(v0 + 176) = v9;
  *(v0 + 200) = v10;
  *(v0 + 208) = v11;
  *(v0 + 240) = v13;
  *(v0 + 248) = sub_756FC(&qword_CBA28, type metadata accessor for BooksBagLanguageSource, &unk_A2178);
  v19 = sub_382A8((v0 + 216));
  sub_75744(v12, v19, type metadata accessor for BooksBagLanguageSource);
  sub_370FC(v0 + 136, v0 + 256);
  sub_370FC(v0 + 216, v0 + 296);

  sub_8415C();
  *(v0 + 360) = &type metadata for BooksLocalizerPreference;
  v20 = sub_757AC();
  *(v0 + 1128) = v20;
  *(v0 + 368) = v20;
  sub_8416C();
  v21 = *(v16 + 8);
  *(v0 + 1136) = v21;
  *(v0 + 1144) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v15, v37);
  sub_38328(v0 + 336, &qword_CBA38, &qword_A2018);
  *(v0 + 1240) = enum case for LocalizerLookupStrategy.dataSourceThenNative(_:);
  v22 = *(v18 + 104);
  *(v0 + 1152) = v22;
  *(v0 + 1160) = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v17);
  sub_8417C();
  v23 = *(v18 + 8);
  *(v0 + 1168) = v23;
  *(v0 + 1176) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v17, v38);
  v21(v14, v37);
  sub_75800(v0 + 176, v0 + 416);
  if (*(v0 + 440))
  {
    v24 = *(v0 + 968);
    v25 = *(v0 + 960);
    v26 = *(v0 + 928);
    v27 = *(v0 + 920);
    sub_371F4((v0 + 416), v0 + 376);
    sub_8418C();
    sub_371A8((v0 + 376));
    v21(v24, v27);
    sub_371A8((v0 + 136));
    v28 = *(v26 + 32);
    v29 = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v28(v24, v25, v27);
  }

  else
  {
    v30 = *(v0 + 928);
    sub_371A8((v0 + 136));
    sub_38328(v0 + 416, &qword_CBA40, &unk_A2020);
    v28 = *(v30 + 32);
    v29 = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  *(v0 + 1184) = v28;
  v31 = *(v0 + 976);
  v32 = *(v0 + 968);
  v33 = *(v0 + 920);
  *(v0 + 1192) = v29;
  v28(v31, v32, v33);
  sub_371A8((v0 + 216));
  sub_38328(v0 + 176, &qword_CBA40, &unk_A2020);
  *(v0 + 1200) = sub_841BC();
  v34 = swift_task_alloc();
  *(v0 + 1208) = v34;
  *v34 = v0;
  v34[1] = sub_71AFC;
  v35 = *(v0 + 976);

  return static AppleServicesLocalizer.load(using:)(v35);
}

uint64_t sub_71AFC(uint64_t a1)
{
  v3 = *v2;
  v3[102] = v2;
  v3[103] = a1;
  v3[104] = v1;
  v3[152] = v1;

  if (v1)
  {
    v4 = sub_7214C;
  }

  else
  {

    v4 = sub_71C24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_71C24()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 976);
  v5 = *(v0 + 920);
  v6 = *(v0 + 872);
  *(v0 + 800) = *(v0 + 1200);
  *(v0 + 808) = &protocol witness table for AppleServicesLocalizer;
  *(v0 + 776) = v1;
  v7 = type metadata accessor for BooksLocalizer();
  v8 = swift_allocObject();
  *(v8 + 56) = 1;
  sub_371F4((v0 + 776), v8 + 16);
  v6[3] = v7;
  v6[4] = sub_756FC(&qword_CBA50, type metadata accessor for BooksLocalizer, &protocol conformance descriptor for BooksLocalizer);

  *v6 = v8;
  v2(v4, v5);
  sub_758C4(v3, type metadata accessor for BooksBagLanguageSource);
  sub_371A8((v0 + 16));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_71E10()
{

  sub_371A8((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_71F24()
{

  sub_371A8((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_72038()
{

  sub_371A8((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7214C()
{
  if (qword_CA4A8 != -1)
  {
    swift_once();
  }

  v1 = sub_83D6C();
  sub_2C284(v1, qword_CB410);
  swift_errorRetain();
  v2 = sub_83D4C();
  v3 = sub_847AC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to create AppleServicesLocalizer: %@. Falling back to native language source.", v4, 0xCu);
    sub_38328(v5, &qword_CA760, &qword_A0F80);
  }

  v7 = *(v0 + 1088);

  sub_370FC(v0 + 16, v0 + 456);
  if (v7)
  {
    v8 = sub_756A8();
    v9 = *(v0 + 1120);
    v10 = &type metadata for NativeDataSource;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    *(v0 + 504) = 0;
    *(v0 + 512) = 0;
  }

  v28 = *(v0 + 1168);
  v27 = *(v0 + 1152);
  v26 = *(v0 + 1240);
  v11 = *(v0 + 1136);
  v12 = *(v0 + 1128);
  v13 = *(v0 + 960);
  v14 = *(v0 + 952);
  v15 = *(v0 + 920);
  v16 = *(v0 + 912);
  v17 = *(v0 + 896);
  *(v0 + 496) = v9;
  *(v0 + 520) = v10;
  *(v0 + 528) = v8;
  *(v0 + 560) = &type metadata for NativeLanguageSource;
  *(v0 + 568) = sub_75870();
  sub_370FC(v0 + 456, v0 + 576);
  sub_370FC(v0 + 536, v0 + 616);

  sub_8415C();
  *(v0 + 680) = &type metadata for BooksLocalizerPreference;
  *(v0 + 688) = v12;
  sub_8416C();
  v11(v14, v15);
  sub_38328(v0 + 656, &qword_CBA38, &qword_A2018);
  v27(v16, v26, v17);
  sub_8417C();
  v28(v16, v17);
  v11(v13, v15);
  sub_75800(v0 + 496, v0 + 736);
  if (*(v0 + 760))
  {
    v18 = *(v0 + 1184);
    v19 = *(v0 + 1136);
    v20 = *(v0 + 960);
    v21 = *(v0 + 936);
    v22 = *(v0 + 920);
    sub_371F4((v0 + 736), v0 + 696);
    sub_8418C();
    sub_371A8((v0 + 696));
    v19(v21, v22);
    sub_371A8((v0 + 456));
    v18(v21, v20, v22);
  }

  else
  {
    sub_371A8((v0 + 456));
    sub_38328(v0 + 736, &qword_CBA40, &unk_A2020);
  }

  (*(v0 + 1184))(*(v0 + 944), *(v0 + 936), *(v0 + 920));
  sub_371A8((v0 + 536));
  sub_38328(v0 + 496, &qword_CBA40, &unk_A2020);
  v23 = swift_task_alloc();
  *(v0 + 1224) = v23;
  *v23 = v0;
  v23[1] = sub_72558;
  v24 = *(v0 + 944);

  return static AppleServicesLocalizer.load(using:)(v24);
}

uint64_t sub_72558(uint64_t a1)
{
  v3 = *v2;
  v3[105] = v2;
  v3[106] = a1;
  v3[107] = v1;
  v3[154] = v1;

  if (v1)
  {
    v4 = sub_72888;
  }

  else
  {
    v4 = sub_72678;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_72678()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 944);
  v3 = *(v0 + 920);

  v1(v2, v3);
  v4 = *(v0 + 848);
  v5 = *(v0 + 1136);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 976);
  v8 = *(v0 + 920);
  v9 = *(v0 + 872);
  *(v0 + 800) = *(v0 + 1200);
  *(v0 + 808) = &protocol witness table for AppleServicesLocalizer;
  *(v0 + 776) = v4;
  v10 = type metadata accessor for BooksLocalizer();
  v11 = swift_allocObject();
  *(v11 + 56) = 1;
  sub_371F4((v0 + 776), v11 + 16);
  v9[3] = v10;
  v9[4] = sub_756FC(&qword_CBA50, type metadata accessor for BooksLocalizer, &protocol conformance descriptor for BooksLocalizer);

  *v9 = v11;
  v5(v7, v8);
  sub_758C4(v6, type metadata accessor for BooksBagLanguageSource);
  sub_371A8((v0 + 16));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_72888()
{
  v1 = v0[142];
  v2 = v0[128];
  v3 = v0[122];
  v4 = v0[118];
  v5 = v0[115];

  v1(v4, v5);
  v1(v3, v5);
  sub_758C4(v2, type metadata accessor for BooksBagLanguageSource);
  sub_371A8(v0 + 2);

  v6 = v0[1];

  return v6();
}

id sub_72A3C@<X0>(SEL *a2@<X1>, void *a3@<X8>)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_72A7C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() bu_sharedAccountStore];
  result = sub_43834(0, &qword_CBC68, ACAccountStore_ptr);
  a1[3] = result;
  a1[4] = &protocol witness table for ACAccountStore;
  *a1 = v2;
  return result;
}

unint64_t sub_72AF0()
{
  result = qword_CBA18;
  if (!qword_CBA18)
  {
    sub_280F0(&qword_CBA10, &qword_A2008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBA18);
  }

  return result;
}

void *sub_72B54(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_72BC4()
{
  v17 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  v16 = _swiftEmptyArrayStorage;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & v2;
  v6 = (63 - v4) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        result = sub_5EFD4(v10);
      }

      while (v5);
      continue;
    }
  }

  v11 = sub_7523C(v16);

  v12 = *(v11 + 16);
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = sub_6CDFC(*(v11 + 16), 0);
  v14 = sub_70100(&v16, v13 + 4, v12, v11);
  sub_40AE0(v16);
  if (v14 != v12)
  {
    __break(1u);
LABEL_14:

    v13 = _swiftEmptyArrayStorage;
  }

  v15 = *(v0 + 8);

  return v15(v13);
}

uint64_t BooksLocalizerFactory.__deallocating_deinit()
{
  sub_758C4(v0 + OBJC_IVAR____TtC5JSApp21BooksLocalizerFactory_jetPack, type metadata accessor for BooksJetPackResourceBundle);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_72E28()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for BooksBagLanguageSource(0);
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_72ED0;

  return BagLanguageSource.fetchLanguages()();
}

uint64_t sub_72ED0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_73004, 0, 0);
  }
}

uint64_t sub_73004()
{
  v20 = v0;
  v1 = objc_opt_self();
  isa = sub_8458C().super.isa;
  v3 = sub_8458C().super.isa;
  v4 = [v1 preferredLocalizationsFromArray:isa forPreferences:v3];

  v5 = sub_845AC();
  if (qword_CA4A8 != -1)
  {
    swift_once();
  }

  v6 = sub_83D6C();
  sub_2C284(v6, qword_CB410);

  v7 = sub_83D4C();
  v8 = sub_847CC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_845BC();
    v12 = v11;

    v13 = sub_3A93C(v10, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_845BC();
    v16 = sub_3A93C(v14, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_0, v7, v8, "BooksBagLanguageSource: languages from bag %s coerced to %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17(v5);
}

void sub_732AC(uint64_t a3@<X8>)
{
  v4 = sub_83A7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BooksBagLanguageSource(0);
  sub_8411C();
  if (qword_CA4A8 != -1)
  {
    swift_once();
  }

  v8 = sub_83D6C();
  sub_2C284(v8, qword_CB410);
  (*(v5 + 16))(v7, a3, v4);
  v9 = sub_83D4C();
  v10 = sub_847CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    sub_756FC(&qword_CBC50, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
    v13 = sub_84BBC();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_3A93C(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "BooksBagLanguageSource: Computed locale=%s based on bag languages", v11, 0xCu);
    sub_371A8(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_73540()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_76244;

  return sub_72E28();
}

BOOL sub_735D0()
{
  v0 = sub_2805C(&qword_CAD58, &qword_A1610);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-v2];
  if (qword_CA438 != -1)
  {
    swift_once();
  }

  v4 = sub_2C284(v0, qword_CAD18);
  (*(v1 + 16))(v3, v4, v0);
  sub_83BAC();
  (*(v1 + 8))(v3, v0);
  return (v6[15] & 1) == 0;
}

uint64_t sub_73728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_7374C, 0, 0);
}

uint64_t sub_7374C()
{
  v16 = v0;
  if (qword_CA4A8 != -1)
  {
    swift_once();
  }

  v1 = sub_83D6C();
  sub_2C284(v1, qword_CB410);

  v2 = sub_83D4C();
  v3 = sub_8478C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_3A93C(v5, v4, &v15);
    _os_log_impl(&dword_0, v2, v3, "Using '%{public}s' strings from JetTranslations.json", v6, 0xCu);
    sub_371A8(v7);
  }

  v8 = v0[4];
  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  v12 = sub_75EE8(v9, v10, v8);

  v11[3] = &type metadata for NativeDataSource.NativeLocalizedStrings;
  v11[4] = sub_76178();
  *v11 = v12;
  v13 = v0[1];

  return v13();
}

uint64_t sub_73920(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_55854(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_73974()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_73A08;

  return sub_72BA4(v2);
}

uint64_t sub_73A08(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_73B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2C958;

  return sub_73728(a1, a2, a3, v8);
}

uint64_t sub_73BDC()
{
  v1 = sub_83A6C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_73C3C(uint64_t a1, uint64_t a2)
{

  return sub_83A5C();
}

uint64_t sub_73C90(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_849AC();

    if (v9)
    {

      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_8499C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_74018(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_74208(v20 + 1);
    }

    v18 = v8;
    sub_74690(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
  v11 = sub_848AC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_74714(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_848BC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_73EC8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_84CCC();
  sub_8446C();
  v8 = sub_84D0C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_84BEC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_74884(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_74018(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2805C(&qword_CBC70, &unk_A2210);
    v2 = sub_84A2C();
    v15 = v2;
    sub_8498C();
    if (sub_849BC())
    {
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_74208(v9 + 1);
        }

        v2 = v15;
        result = sub_848AC(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_849BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_74208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2805C(&qword_CBC70, &unk_A2210);
  v4 = sub_84A1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_848AC(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_74430(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2805C(&qword_CBC58, &qword_A2200);
  v4 = sub_84A1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_84CCC();
      sub_8446C();
      v21 = sub_84D0C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_74690(uint64_t a1, void *a2)
{
  sub_848AC(a2[5]);
  result = sub_8497C();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_74714(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_74208(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_74A04();
      goto LABEL_12;
    }

    sub_74CB0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_848AC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_848BC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_84C1C();
  __break(1u);
}

void sub_74884(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_74430(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_74B54();
      goto LABEL_16;
    }

    sub_74EC4(v8 + 1);
  }

  v10 = *v4;
  sub_84CCC();
  sub_8446C();
  v11 = sub_84D0C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_84BEC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_84C1C();
  __break(1u);
}

void sub_74A04()
{
  v1 = v0;
  sub_2805C(&qword_CBC70, &unk_A2210);
  v2 = *v0;
  v3 = sub_84A0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_74B54()
{
  v1 = v0;
  sub_2805C(&qword_CBC58, &qword_A2200);
  v2 = *v0;
  v3 = sub_84A0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_74CB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2805C(&qword_CBC70, &unk_A2210);
  v4 = sub_84A1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = sub_848AC(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_74EC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2805C(&qword_CBC58, &qword_A2200);
  v4 = sub_84A1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_84CCC();

      sub_8446C();
      v20 = sub_84D0C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_750FC(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
    sub_761CC();
    result = sub_8473C();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_84A6C();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_73C90(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_84B0C();
  }

  v5 = result;
  v4 = sub_84B0C();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_7523C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_8473C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_73EC8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_752D4()
{
  v0 = sub_839CC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v25 - v5;
  type metadata accessor for NativeDataSource.BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = sub_8437C();
  v10 = sub_8437C();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_8396C();

    (*(v1 + 32))(v6, v4, v0);
    v17 = sub_839DC();
    v19 = v18;
    v20 = objc_opt_self();
    isa = sub_839FC().super.isa;
    v26[0] = 0;
    v22 = [v20 JSONObjectWithData:isa options:0 error:v26];

    if (v22)
    {
      v23 = v26[0];
      sub_8495C();
      sub_3BB74(v17, v19);
      swift_unknownObjectRelease();
      (*(v1 + 8))(v6, v0);
      sub_2805C(&qword_CBC60, &qword_A2208);
      if (swift_dynamicCast())
      {
        return v25[1];
      }
    }

    else
    {
      v24 = v26[0];
      sub_838DC();

      swift_willThrow();
      sub_3BB74(v17, v19);

      (*(v1 + 8))(v6, v0);
    }
  }

  if (qword_CA4A8 != -1)
  {
    swift_once();
  }

  v12 = sub_83D6C();
  sub_2C284(v12, qword_CB410);
  v13 = sub_83D4C();
  v14 = sub_847AC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Can't decode JetTranslations.json, ignoring bundled translations!", v15, 2u);
  }

  return 0;
}

unint64_t sub_756A8()
{
  result = qword_CBA20;
  if (!qword_CBA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBA20);
  }

  return result;
}

uint64_t sub_756FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_75744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_757AC()
{
  result = qword_CBA30;
  if (!qword_CBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBA30);
  }

  return result;
}

uint64_t sub_75800(uint64_t a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CBA40, &unk_A2020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_75870()
{
  result = qword_CBA48;
  if (!qword_CBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBA48);
  }

  return result;
}

uint64_t sub_758C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7594C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_75984(uint64_t a1)
{
  result = type metadata accessor for BooksJetPackResourceBundle(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of BooksLocalizerFactory.storeLocalizer(asPartOf:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2C958;

  return v8(a1, a2);
}

uint64_t sub_75BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8421C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_8412C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_75CF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_8421C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_8412C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_75DFC(uint64_t a1)
{
  sub_8421C();
  if (v1 <= 0x3F)
  {
    sub_8412C();
    if (v2 <= 0x3F)
    {
      sub_75E98();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_75E98()
{
  if (!qword_CBC10)
  {
    v0 = sub_845FC();
    if (!v1)
    {
      atomic_store(v0, &qword_CBC10);
    }
  }
}

uint64_t sub_75EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v10 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a1 + 56) + 8 * v13);
      v18 = *(v17 + 16);

      if (v18)
      {
        v19 = sub_55854(a2, a3);
        if (v20)
        {
          break;
        }

        if (*(v17 + 16))
        {
          v19 = sub_55854(0x73752D6E65, 0xE500000000000000);
          if (v21)
          {
            break;
          }
        }
      }

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v22 = (*(v17 + 56) + 16 * v19);
    v36 = v22[1];
    v37 = *v22;

    v23 = *(&_swiftEmptyDictionarySingleton + 2);
    if (*(&_swiftEmptyDictionarySingleton + 3) <= v23)
    {
      sub_6FA20(v23 + 1, 1);
    }

    sub_84CCC();
    sub_8446C();
    result = sub_84D0C();
    v24 = &_swiftEmptyDictionarySingleton + 64;
    v25 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(&_swiftEmptyDictionarySingleton + (v26 >> 6) + 8)) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *&v24[8 * v27];
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(&_swiftEmptyDictionarySingleton + (v26 >> 6) + 8))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *&v24[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
    v33 = 16 * v28;
    v34 = (*(&_swiftEmptyDictionarySingleton + 6) + v33);
    *v34 = v16;
    v34[1] = v15;
    v35 = (*(&_swiftEmptyDictionarySingleton + 7) + v33);
    *v35 = v37;
    v35[1] = v36;
    ++*(&_swiftEmptyDictionarySingleton + 2);
  }

  while (v7);
LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return &_swiftEmptyDictionarySingleton;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_76178()
{
  result = qword_CBC48;
  if (!qword_CBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBC48);
  }

  return result;
}

unint64_t sub_761CC()
{
  result = qword_CAB68;
  if (!qword_CAB68)
  {
    sub_43834(255, &qword_CAB60, UIWindowScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CAB68);
  }

  return result;
}

void sub_76258(double a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v11[4] = a6;
    v11[5] = a7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_283C0;
    v11[3] = &unk_B6B20;
    v9 = a4;
    v10 = _Block_copy(v11);

    a4 = v9;
  }

  else
  {
    v10 = 0;
  }

  [a3 presentViewController:a4 animated:a5 & 1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_76334(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void _sSo16UIViewControllerC5JSAppE7present_7options8animated10completionyAB_SDys11AnyHashableVypGSbyycSgtFZ_0(void *a1, uint64_t a2, char a3, void (*a4)(uint64_t a1, double a2), uint64_t a5)
{
  strcpy(v64, "preferredSize");
  HIWORD(v64[1]) = -4864;
  sub_849FC();
  if (!*(a2 + 16) || (v10 = sub_5595C(&aBlock), (v11 & 1) == 0))
  {
    sub_559A0(&aBlock);
    goto LABEL_16;
  }

  sub_381F8(*(a2 + 56) + 32 * v10, v65);
  sub_559A0(&aBlock);
  sub_2805C(&qword_CBC78, &qword_A2268);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v23 = a1;
    goto LABEL_17;
  }

  v12 = v64[0];
  if (!*(v64[0] + 16) || (v13 = sub_55854(0x6874646977, 0xE500000000000000), (v14 & 1) == 0) || !*(v12 + 16) || (v15 = *(*(v12 + 56) + 8 * v13), v16 = sub_55854(0x746867696568, 0xE600000000000000), (v17 & 1) == 0))
  {

    goto LABEL_16;
  }

  v18 = *(*(v12 + 56) + 8 * v16);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    v23 = a1;
    goto LABEL_31;
  }

  v57 = v19;
  v20 = objc_allocWithZone(UIViewController);
  v21 = a1;
  v22 = [v20 init];
  v56 = v21;
  v23 = v22;
  [v23 addChildViewController:v57];
  v24 = [v57 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_33;
  }

  v25 = v24;
  [v24 setAutoresizingMask:18];

  v26 = [v57 view];
  if (!v26)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27 = [v23 view];
  if (!v27)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = v27;
  [v27 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  [v26 setFrame:{v30, v32, v34, v36}];
  v37 = [v23 view];
  if (!v37)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v38 = v37;
  v39 = [v57 view];

  if (!v39)
  {
LABEL_36:
    __break(1u);
    return;
  }

  [v38 addSubview:v39];

  [v57 didMoveToParentViewController:v23];
LABEL_31:
  [v23 setPreferredContentSize:{v15, v18}];
LABEL_17:
  v40 = [objc_opt_self() sharedInstance];
  v41 = [v40 windowManager];

  isa = sub_8433C().super.isa;
  v43 = [v41 windowFromOptions:isa];

  v44 = [objc_opt_self() jsa_topMostViewControllerForWindow:v43];
  v45 = [v44 traitCollection];
  v46 = [v45 userInterfaceStyle];

  [v23 setOverrideUserInterfaceStyle:v46];
  v64[0] = 0xD000000000000011;
  v64[1] = 0x800000000009DED0;
  sub_849FC();
  if (*(a2 + 16) && (v47 = sub_5595C(&aBlock), (v48 & 1) != 0))
  {
    sub_381F8(*(a2 + 56) + 32 * v47, v65);
    sub_559A0(&aBlock);
    if (swift_dynamicCast())
    {
      [v23 setModalPresentationStyle:v64[0]];
    }
  }

  else
  {
    sub_559A0(&aBlock);
  }

  v49 = [v44 transitionCoordinator];
  if (v49)
  {
    v50 = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = v44;
    *(v51 + 24) = v23;
    *(v51 + 32) = a3 & 1;
    *(v51 + 40) = a4;
    *(v51 + 48) = a5;
    v62 = sub_76BF8;
    v63 = v51;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_76334;
    v61 = &unk_B6AF8;
    v52 = _Block_copy(&aBlock);
    v53 = v44;
    sub_2841C(a4, a5);
    v54 = v23;

    [v50 animateAlongsideTransition:0 completion:v52];

    _Block_release(v52);
    swift_unknownObjectRelease();
  }

  else
  {
    if (a4)
    {
      v62 = a4;
      v63 = a5;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_283C0;
      v61 = &unk_B6AA8;
      v55 = _Block_copy(&aBlock);
    }

    else
    {
      v55 = 0;
    }

    [v44 presentViewController:v23 animated:a3 & 1 completion:v55];

    _Block_release(v55);
  }
}

uint64_t sub_76B48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_76B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_76BA8()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}