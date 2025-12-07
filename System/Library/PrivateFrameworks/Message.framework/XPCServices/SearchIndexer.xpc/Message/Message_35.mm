uint64_t MailboxStatus.messageCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OptionalMillisecondDate.wrappedValue.getter@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    sub_1004A4454();
    v4 = 0;
  }

  v5 = sub_1004A44E4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, v4, 1, v5);
}

uint64_t OptionalMillisecondDate.wrappedValue.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  sub_100252E5C(a1, &v17 - v9);
  v11 = (*(v5 + 48))(v10, 1, v4);
  if (v11 == 1)
  {
    result = sub_100252ECC(a1);
    v13 = 0;
LABEL_7:
    *v2 = v13;
    *(v2 + 8) = v11 == 1;
    return result;
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1004A4464();
  v15 = v14;
  sub_100252ECC(a1);
  result = (*(v5 + 8))(v7, v4);
  v16 = v15 * 1000.0;
  if (COERCE__INT64(fabs(v15 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 < 9.22337204e18)
  {
    v13 = v16;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100252E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100252ECC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*OptionalMillisecondDate.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_1004A44E4();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v4[3] = v8;
  v9 = *(*(sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v4[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(v9);
    v4[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[6] = v10;
  if (*(v1 + 8))
  {
    v12 = 1;
  }

  else
  {
    sub_1004A4454();
    v12 = 0;
  }

  (*(v7 + 56))(v11, v12, 1, v5);
  return sub_1002530F0;
}

void sub_1002530F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if ((a2 & 1) == 0)
  {
    v7 = v2[1];
    v8 = v2[2];
    sub_100252E5C((*a1)[6], v3);
    v9 = (*(v8 + 48))(v3, 1, v7);
    v10 = v2[6];
    if (v9 == 1)
    {
      sub_100252ECC(v2[6]);
      v11 = 0;
LABEL_9:
      v18 = v9 == 1;
      v3 = v2[5];
      v4 = v2[6];
      v6 = v2[3];
      v5 = v2[4];
      v19 = *v2;
      *v19 = v11;
      *(v19 + 8) = v18;
      goto LABEL_10;
    }

    v13 = v2[2];
    v12 = v2[3];
    v14 = v2[1];
    (*(v13 + 32))(v12, v2[5], v14);
    sub_1004A4464();
    v16 = v15;
    sub_100252ECC(v10);
    (*(v13 + 8))(v12, v14);
    v17 = v16 * 1000.0;
    if (COERCE__INT64(fabs(v16 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v17 > -9.22337204e18)
    {
      if (v17 < 9.22337204e18)
      {
        v11 = v17;
        goto LABEL_9;
      }

LABEL_15:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v6 = v2[3];
  v5 = v2[4];
  sub_100252E5C((*a1)[6], v5);
  OptionalMillisecondDate.wrappedValue.setter(v5);
  sub_100252ECC(v4);
LABEL_10:
  free(v4);
  free(v3);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t OptionalMillisecondDate.init(wrappedValue:)(uint64_t a1)
{
  v2 = sub_1004A44E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_100252E5C(a1, &v13 - v7);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_100252ECC(a1);
    return 0;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1004A4464();
  v11 = v10;
  sub_100252ECC(a1);
  result = (*(v3 + 8))(v5, v2);
  v12 = v11 * 1000.0;
  if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 9.22337204e18)
  {
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static OptionalMillisecondDate.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return 1;
    }
  }

  else if ((a4 & 1) == 0 && a1 == a3)
  {
    return 1;
  }

  return 0;
}

void OptionalMillisecondDate.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a2);
  }
}

Swift::Int OptionalMillisecondDate.hashValue.getter(Swift::UInt64 a1, char a2)
{
  sub_1004A6E94();
  if (a2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a1);
  }

  return sub_1004A6F14();
}

Swift::Int sub_100253568()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v1);
  }

  return sub_1004A6F14();
}

void sub_1002535D8()
{
  if (*(v0 + 8) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v1 = *v0;
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v1);
  }
}

Swift::Int sub_100253628(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v2);
  }

  return sub_1004A6F14();
}

unint64_t sub_100253698()
{
  result = qword_1005D5FF0;
  if (!qword_1005D5FF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MillisecondDate, &type metadata for MillisecondDate, v0, v1);
    atomic_store(result, &qword_1005D5FF0);
  }

  return result;
}

unint64_t sub_1002536F0()
{
  result = qword_1005D5FF8;
  if (!qword_1005D5FF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OptionalMillisecondDate, &type metadata for OptionalMillisecondDate, v0, v1);
    atomic_store(result, &qword_1005D5FF8);
  }

  return result;
}

uint64_t sub_100253744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

__uint64_t static MonotonicTime.now()()
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

IMAP2Helpers::MonotonicTime __swiftcall MonotonicTime.init(nanoSeconds:since:)(IMAP2Helpers::MonotonicTime nanoSeconds, IMAP2Helpers::MonotonicTime since)
{
  if (nanoSeconds.rawValue >= 1)
  {
    v2 = __OFADD__(since.rawValue, nanoSeconds.rawValue);
    nanoSeconds.rawValue += since.rawValue;
    if (!v2)
    {
      return nanoSeconds;
    }

    __break(1u);
  }

  v3 = -nanoSeconds.rawValue;
  if (__OFSUB__(0, nanoSeconds.rawValue))
  {
    __break(1u);
    goto LABEL_9;
  }

  nanoSeconds.rawValue += since.rawValue;
  if (__OFSUB__(since.rawValue, v3))
  {
LABEL_9:
    __break(1u);
  }

  return nanoSeconds;
}

IMAP2Helpers::MonotonicTime __swiftcall MonotonicTime.init(secondsSinceNow:)(Swift::Double secondsSinceNow)
{
  result.rawValue = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (result.rawValue < 0)
  {
    __break(1u);
  }

  else
  {

    return _s12IMAP2Helpers13MonotonicTimeV7seconds5sinceACSd_ACtcfC_0(result.rawValue, secondsSinceNow);
  }

  return result;
}

int64_t DispatchTime.init(_:)(uint64_t a1)
{
  v2 = sub_1004A5234();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1004A53B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (result < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = a1 - result;
  if (a1 >= result)
  {
LABEL_5:
    sub_1004A5394();
    *v5 = v11;
    (*(v3 + 104))(v5, enum case for DispatchTimeInterval.nanoseconds(_:), v2);
    sub_1004A53A4();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  if (__OFSUB__(result, a1))
  {
    goto LABEL_7;
  }

  v11 = a1 - result;
  if (!__OFSUB__(0, result - a1))
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
  return result;
}

Swift::Int64 __swiftcall MonotonicTime.nanoSeconds(since:)(IMAP2Helpers::MonotonicTime since)
{
  v3 = __OFSUB__(v1, since.rawValue);
  result = v1 - since.rawValue;
  if (result < 0 != v3)
  {
    v3 = __OFSUB__(since.rawValue, v1);
    v5 = since.rawValue - v1;
    if (v3)
    {
      __break(1u);
      goto LABEL_10;
    }

    v3 = __OFSUB__(0, v5);
    result = -v5;
    if (!__OFSUB__(0, v5))
    {
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t Date.init(_:now:now:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = __OFSUB__(result, a2);
  if (result < a2)
  {
    v5 = a2 - result;
    if (__OFSUB__(a2, result))
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = __OFSUB__(0, v5);
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

LABEL_7:
  sub_1004A4474();
  v6 = sub_1004A44E4();
  v7 = *(*(v6 - 8) + 8);

  return v7(a3, v6);
}

Swift::Double __swiftcall MonotonicTime.seconds(since:)(IMAP2Helpers::MonotonicTime since)
{
  v2 = __OFSUB__(v1, since.rawValue);
  v3 = v1 - since.rawValue;
  if (v1 < since.rawValue)
  {
    if (__OFSUB__(since.rawValue, v1))
    {
      __break(1u);
      goto LABEL_9;
    }

    v2 = __OFSUB__(0, since.rawValue - v1);
    v3 = v1 - since.rawValue;
    if (!v2)
    {
      return v3 / 1000000000.0;
    }

    __break(1u);
  }

  if (!v2)
  {
    return v3 / 1000000000.0;
  }

LABEL_9:
  __break(1u);
  return result;
}

int64_t static MonotonicTime.secondsSince(_:)(int64_t a1)
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (result < 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result >= a1 && __OFSUB__(result, a1))
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t _s12IMAP2Helpers13MonotonicTimeV7seconds5sinceACSd_ACtcfC_0(uint64_t result, double a2)
{
  v2 = round(a2 * 1000000000.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  if (v2 >= 1)
  {
    v4 = __OFADD__(result, v3);
    result += v3;
    if (!v4)
    {
      return result;
    }

    __break(1u);
  }

  v4 = __OFSUB__(0, v3);
  v5 = -v3;
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = __OFSUB__(result, v5);
  result -= v5;
  if (v4)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

unint64_t sub_100253C48()
{
  result = qword_1005D6000;
  if (!qword_1005D6000)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MonotonicTime, &type metadata for MonotonicTime, v0, v1);
    atomic_store(result, &qword_1005D6000);
  }

  return result;
}

IMAP2Helpers::RateLimitResult __swiftcall MonotonicTime.rateLimit(now:seconds:)(IMAP2Helpers::MonotonicTime now, Swift::Double seconds)
{
  v3 = *v2;
  if (*v2 > now.rawValue)
  {
    if (__OFSUB__(*v2, now.rawValue))
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = now.rawValue - *v2;
    if (!__OFSUB__(0, *v2 - now.rawValue))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v4 = now.rawValue - v3;
  if (__OFSUB__(now.rawValue, v3))
  {
LABEL_11:
    __break(1u);
    return now.rawValue;
  }

LABEL_7:
  v5 = v4 / 1000000000.0;
  if (v5 > seconds)
  {
    *v2 = now.rawValue;
  }

  LOBYTE(now.rawValue) = v5 > seconds;
  return now.rawValue;
}

unint64_t sub_100253D0C()
{
  result = qword_1005D6008;
  if (!qword_1005D6008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RateLimitResult, &type metadata for RateLimitResult, v0, v1);
    atomic_store(result, &qword_1005D6008);
  }

  return result;
}

uint64_t RestartableTimer.__allocating_init(queue:repeating:leeway:closure:)(void *a1, uint64_t a2, uint64_t a3, const void *a4, __n128 a5)
{
  v28 = a4;
  v36 = a2;
  v37 = a3;
  v31 = a1;
  v6 = sub_1004A53B4();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v32 = &v27 - v9;
  v10 = sub_1004A60A4();
  v29 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A5244();
  __chkstk_darwin(v13);
  v14 = sub_1004A5274();
  __chkstk_darwin(v14 - 8);
  v30 = swift_allocObject();
  _Block_copy(a4);
  sub_1004A5264();
  v38 = _swiftEmptyArrayStorage;
  sub_100210DC8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A53E4();
  swift_allocObject();
  sub_1004A53C4();
  sub_100210D7C();
  v38 = _swiftEmptyArrayStorage;
  sub_100210DC8(&unk_1005D4F70, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10000C9C0(&qword_1005D5510, &qword_1004E8DB0);
  sub_1000CBB00(&qword_1005D4F80, &qword_1005D5510, &qword_1004E8DB0);
  sub_1004A6544();
  v15 = v31;
  v27 = v15;
  v16 = sub_1004A60B4();

  (*(v29 + 8))(v12, v10);
  swift_getObjectType();
  sub_1004A60D4();
  v17 = v33;
  sub_1004A5394();
  v18 = v32;
  v19 = v36;
  sub_1004A53A4();
  v20 = *(v34 + 8);
  v21 = v17;
  v22 = v35;
  v20(v21, v35);
  v23 = v37;
  sub_1004A6254();

  _Block_release(v28);
  v24 = sub_1004A5234();
  v25 = *(*(v24 - 8) + 8);
  v25(v23, v24);
  v25(v19, v24);
  v20(v18, v22);
  result = v30;
  *(v30 + 32) = v27;
  *(result + 16) = v16;
  *(result + 24) = 1;
  return result;
}

uint64_t RestartableTimer.init(queue:repeating:leeway:closure:)(void *a1, uint64_t a2, uint64_t a3, const void *a4, __n128 a5)
{
  v33 = a3;
  v26 = a4;
  v32 = a2;
  v28 = a1;
  v31 = sub_1004A53B4();
  v35 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v29 = &v25 - v8;
  v9 = sub_1004A60A4();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A5244();
  __chkstk_darwin(v12);
  v13 = sub_1004A5274();
  __chkstk_darwin(v13 - 8);
  _Block_copy(a4);
  sub_1004A5264();
  v36 = _swiftEmptyArrayStorage;
  sub_100210DC8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A53E4();
  swift_allocObject();
  sub_1004A53C4();
  sub_100210D7C();
  v36 = _swiftEmptyArrayStorage;
  sub_100210DC8(&unk_1005D4F70, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10000C9C0(&qword_1005D5510, &qword_1004E8DB0);
  sub_1000CBB00(&qword_1005D4F80, &qword_1005D5510, &qword_1004E8DB0);
  sub_1004A6544();
  v14 = v28;
  v25 = v14;
  v15 = sub_1004A60B4();

  (*(v27 + 8))(v11, v9);
  swift_getObjectType();
  sub_1004A60D4();
  v16 = v30;
  sub_1004A5394();
  v17 = v29;
  v18 = v32;
  sub_1004A53A4();
  v19 = *(v35 + 8);
  v35 += 8;
  v20 = v31;
  v19(v16, v31);
  v21 = v33;
  sub_1004A6254();

  _Block_release(v26);
  v22 = sub_1004A5234();
  v23 = *(*(v22 - 8) + 8);
  v23(v21, v22);
  v23(v18, v22);
  v19(v17, v20);
  result = v34;
  *(v34 + 32) = v25;
  *(result + 16) = v15;
  *(result + 24) = 1;
  return result;
}

uint64_t RestartableTimer.deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1004A6104();
  swift_unknownObjectRelease();
  if (*(v0 + 24) == 1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6114();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t RestartableTimer.__deallocating_deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1004A6104();
  swift_unknownObjectRelease();
  if (*(v0 + 24) == 1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6114();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall RestartableTimer.start()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + 24) == 1)
    {
      swift_getObjectType();
      sub_1004A6114();
      *(v0 + 24) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall RestartableTimer.stop()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if ((*(v0 + 24) & 1) == 0)
    {
      swift_getObjectType();
      sub_1004A6124();
      *(v0 + 24) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t RestartableTimer.isRunning.getter()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    return (*(v0 + 24) & 1) == 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_100254C10()
{
  result = qword_1005D60C8;
  if (!qword_1005D60C8)
  {
    result = swift_getWitnessTable(byte_1004E9D68, &type metadata for RestartableTimer.State, v0, v1);
    atomic_store(result, &qword_1005D60C8);
  }

  return result;
}

uint64_t static PCG32Random.random.getter()
{
  swift_stdlib_random();
  swift_stdlib_random();
  return 0;
}

Swift::Void __swiftcall PCG32Random.seed(state:sequence:)(Swift::UInt64 state, Swift::UInt64 sequence)
{
  v3 = (2 * sequence) | 1;
  *v2 = v3 + 0x5851F42D4C957F2DLL * (v3 + state);
  v2[1] = v3;
}

Swift::UInt32 __swiftcall PCG32Random.next()()
{
  v1 = *v0;
  *v0 = v0[1] + 0x5851F42D4C957F2DLL * *v0;
  return __ROR4__((v1 >> 45) ^ (v1 >> 27), v1 >> 59);
}

Swift::UInt64 __swiftcall PCG32Random.next()()
{
  v1 = v0[1];
  v2 = v1 + 0x5851F42D4C957F2DLL * *v0;
  v3 = __ROR4__((*v0 >> 45) ^ (*v0 >> 27), *v0 >> 59);
  *v0 = v1 + 0x5851F42D4C957F2DLL * v2;
  return __ROR4__((v2 >> 45) ^ (v2 >> 27), v2 >> 59) | (v3 << 32);
}

BOOL static MailboxName.stableOrder(_:_:)(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v8 = MailboxName.inbox.unsafeMutableAddressor();
  v9 = *v8;
  v10 = *(v8 + 2) | (*(v8 + 2) << 32);
  v11 = a2 | (a2 << 32);
  if (v10 == v11 && (sub_1000FFC98(*v8, a1) & 1) != 0 && v10 == (a4 | (a4 << 32)) && (sub_1000FFC98(v9, a3) & 1) != 0 || v10 == (a4 | (a4 << 32)) && (sub_1000FFC98(v9, a3) & 1) != 0)
  {
    return 0;
  }

  if (v10 == v11 && (sub_1000FFC98(v9, a1) & 1) != 0)
  {
    return 1;
  }

  return sub_100254F4C(a1, a3) == -1;
}

uint64_t sub_100254EA0@<X0>(void *__s2@<X0>, void *__s1@<X2>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (__s1)
  {
    v8 = a4 - __s1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3 - __s2;
  if (a3 - __s2 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = a3 - __s2;
  }

  if (__s2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8 & (v8 >> 63);
  }

  result = memcmp(__s1, __s2, v11);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  if (result)
  {
LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  if (__s2)
  {
    if (v8 >= v9)
    {
      if (v8 != v9)
      {
        goto LABEL_13;
      }

LABEL_21:
      v13 = 0;
      goto LABEL_14;
    }
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_11:
  v13 = -1;
LABEL_14:
  *a5 = v13;
  return result;
}

uint64_t sub_100254FA8()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D60D0);
  sub_1001C203C(v0, qword_1005D60D0);
  return sub_1004A4A64();
}

uint64_t sub_100255034()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1002550E0(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v22 = sub_1004A6074();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A6064();
  __chkstk_darwin(v8);
  v9 = sub_1004A5274();
  __chkstk_darwin(v9 - 8);
  *(v3 + 24) = a1;
  sub_10000C9C0(&qword_1005D6228, &qword_1004E9E78);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v25 = v3;
  *(v3 + 32) = v10;
  v20 = sub_100255DBC();
  v21 = a1;

  sub_1004A5254();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001996CC(v11);
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_100199724();
  sub_1004A6544();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v12 = sub_1004A6094();
  if (qword_1005D5DD8 != -1)
  {
    swift_once();
  }

  v13 = off_1005D60E8;
  v14 = swift_allocObject();
  v16 = v23;
  v15 = v24;
  v14[2] = v10;
  v14[3] = v16;
  v14[4] = v15;
  aBlock[4] = sub_100255E48;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100255828;
  aBlock[3] = &unk_1005AA658;
  v17 = _Block_copy(aBlock);
  v18 = v13(v12, v17);

  _Block_release(v17);

  result = v25;
  *(v25 + 16) = v18;
  return result;
}

uint64_t sub_10025542C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a2 + 16))
  {
    return 0;
  }

  v4 = a3(a1);
  if (!v5)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = sub_1002554B4(v4, v5, v6, v7);
  sub_100255E6C(v8, v9, v10, v11);
  return v12;
}

uint64_t sub_1002554B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(a3 + 16);
    v10 = *(a3 + 24);
    v12 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (!v12)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(a4);
    goto LABEL_10;
  }

  LODWORD(v9) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v9;
LABEL_10:
  v13 = v9 + 200;
  if (__OFADD__(v9, 200))
  {
    __break(1u);
    goto LABEL_48;
  }

  v14 = swift_slowAlloc();
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_43;
    }

    v15 = *(v5 + 16);
    v16 = *(v5 + 24);
    v17 = sub_1004A40D4();
    if (v17)
    {
      v18 = sub_1004A4104();
      if (__OFSUB__(v15, v18))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v17 += v15 - v18;
    }

    v12 = __OFSUB__(v16, v15);
    v19 = v16 - v15;
    if (v12)
    {
      goto LABEL_52;
    }

    v20 = sub_1004A40F4();
    if (v13 < 200)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v20 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v22 = (v21 + v17);
    if (!v17)
    {
      v22 = 0;
    }

    v32 = v17;
    v33 = v22;
    sub_1001F70CC();
    sub_1004A4074();
    *v14 = 1;
    v24 = *(v5 + 16);
    v23 = *(v5 + 24);
    v5 = v23 - v24;
    if (!__OFSUB__(v23, v24))
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v31[0] = v5;
    LOWORD(v31[1]) = a4;
    BYTE2(v31[1]) = BYTE2(a4);
    BYTE3(v31[1]) = BYTE3(a4);
    BYTE4(v31[1]) = BYTE4(a4);
    BYTE5(v31[1]) = BYTE5(a4);
    if (v13 >= 200)
    {
      LODWORD(v5) = BYTE6(a4);
      v32 = v31;
      v33 = v31 + BYTE6(a4);
      sub_1001F70CC();
      sub_1004A4074();
LABEL_45:
      *v14 = 1;
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  if (v5 >> 32 < v5)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v25 = sub_1004A40D4();
  if (v25)
  {
    v26 = sub_1004A4104();
    if (__OFSUB__(v5, v26))
    {
      goto LABEL_57;
    }

    v25 += v5 - v26;
  }

  v27 = sub_1004A40F4();
  if (v13 < 200)
  {
    goto LABEL_54;
  }

  if (v27 >= (v5 >> 32) - v5)
  {
    v28 = (v5 >> 32) - v5;
  }

  else
  {
    v28 = v27;
  }

  v29 = (v28 + v25);
  if (!v25)
  {
    v29 = 0;
  }

  v32 = v25;
  v33 = v29;
  sub_1001F70CC();
  sub_1004A4074();
  *v14 = 1;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_55;
  }

  v5 = HIDWORD(v5) - v5;
LABEL_41:
  if (HIDWORD(v5))
  {
    __break(1u);
LABEL_43:
    memset(v31, 0, 14);
    if (v13 >= 200)
    {
      v32 = v31;
      v33 = v31;
      sub_1001F70CC();
      sub_1004A4074();
      LODWORD(v5) = 0;
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_46:
  *(v14 + 4) = v5;
  sub_100255BF4(a1, a2, (v14 + 136), 0x40uLL);
  return v14;
}

uint64_t sub_100255828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

Swift::Void __swiftcall StateCapture.tearDown()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[3];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  v8 = v0[4];
  if (*(v8 + 16))
  {
    return;
  }

  *(v8 + 16) = 1;
  if (qword_1005D5DE0 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  off_1005D60F0(v0[2]);
}

uint64_t StateCapture.deinit()
{
  result = *(v0 + 32);
  if (*(result + 16) == 1)
  {
    v2 = *(v0 + 24);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void StateCapture.__deallocating_deinit()
{
  if (*(*(v0 + 32) + 16) == 1)
  {

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t StateCapture.__allocating_init(title:queue:capture:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  sub_1002550E0(a3, sub_100255CE0, v10);
  return v11;
}

unint64_t sub_100255B08(void (*a1)(__int128 *__return_ptr), uint64_t a2, uint64_t a3, unint64_t a4)
{
  os_transaction_create();
  a1(&v9);
  if (v10)
  {
    sub_1000B364C(&v9, v11);
    sub_100104D00(v11, &v9);

    v7 = sub_100255F40(a3, a4, &v9);
    swift_unknownObjectRelease();
    sub_1000197E0(v11);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_100255ED8(&v9);
    return 0;
  }

  return v7;
}

char *sub_100255BF4(uint64_t a3, uint64_t a4, char *__dst, size_t __n)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return sub_1004A66E4();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    *__src = a3;
    v8 = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = __src;
    return strncpy(__dst, v5, __n);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return sub_1004A66E4();
  }

  v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, __n);
}

uint64_t sub_100255CA0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100255D10(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100255DBC()
{
  result = qword_1005D3248;
  if (!qword_1005D3248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D3248);
  }

  return result;
}

uint64_t sub_100255E08()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100255E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100255E6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100014D40(a3, a4);
  }
}

uint64_t sub_100255ED8(uint64_t a1)
{
  v2 = sub_10000C9C0(&unk_1005D6230, qword_1004E9E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100255F40(uint64_t a1, unint64_t a2, void *a3)
{
  sub_1004A4244();
  swift_allocObject();
  sub_1004A4234();
  sub_1004A4214();
  sub_10002587C(a3, a3[3]);
  v6 = sub_1004A4224();
  v7 = v6;
  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    LODWORD(v11) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v11 = v11;
      goto LABEL_7;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_9;
  }

  if (v10 != 2)
  {
    goto LABEL_14;
  }

  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    goto LABEL_35;
  }

LABEL_7:
  if (v11 <= 0x8000)
  {
    goto LABEL_14;
  }

  if (qword_1005D5DD0 != -1)
  {
    goto LABEL_36;
  }

LABEL_9:
  v15 = sub_1004A4A74();
  sub_1001C203C(v15, qword_1005D60D0);
  sub_100014CEC(v7, v9);

  v16 = sub_1004A4A54();
  v17 = sub_1004A6014();

  if (!os_log_type_enabled(v16, v17))
  {
LABEL_20:
    sub_100014D40(v7, v9);

LABEL_33:
    sub_1000197E0(a3);
    return a1;
  }

  v18 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  *v18 = 136446466;
  v31 = a1;
  v32[0] = v29;
  result = sub_10015BA6C(a1, a2, v32);
  *(v18 + 4) = result;
  *(v18 + 12) = 2048;
  if (v10 != 2)
  {
    LODWORD(v22) = HIDWORD(v7) - v7;
    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v22 = v22;
LABEL_31:
      *(v18 + 14) = v22;
      sub_100014D40(v7, v9);
      _os_log_impl(&_mh_execute_header, v16, v17, "Encoded plist state capture data '%{public}s' is %{iec-bytes}ld > 32KiB", v18, 0x16u);
      sub_1000197E0(v29);
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  v21 = *(v7 + 16);
  v20 = *(v7 + 24);
  v14 = __OFSUB__(v20, v21);
  v22 = v20 - v21;
  if (!v14)
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_14:
  if (qword_1005D5DD0 != -1)
  {
    swift_once();
  }

  v23 = sub_1004A4A74();
  sub_1001C203C(v23, qword_1005D60D0);
  sub_100014CEC(v7, v9);

  v16 = sub_1004A4A54();
  v24 = sub_1004A6004();

  if (!os_log_type_enabled(v16, v24))
  {
    goto LABEL_20;
  }

  v25 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  *v25 = 136446466;
  v31 = a1;
  v32[0] = v30;
  result = sub_10015BA6C(a1, a2, v32);
  *(v25 + 4) = result;
  *(v25 + 12) = 2048;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      v26 = 0;
      goto LABEL_28;
    }

    v28 = *(v7 + 16);
    v27 = *(v7 + 24);
    v14 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (!v14)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v26 = BYTE6(v9);
LABEL_28:
    *(v25 + 14) = v26;
    sub_100014D40(v7, v9);
    _os_log_impl(&_mh_execute_header, v16, v24, "Encoded plist state capture data '%{public}s' is %{iec-bytes}ld", v25, 0x16u);
    sub_1000197E0(v30);
LABEL_32:

    a1 = v31;
    goto LABEL_33;
  }

  LODWORD(v26) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v26 = v26;
    goto LABEL_28;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t BodyStructure.isAttachment.getter()
{
  v1 = *(v0 + 144);
  v30[8] = *(v0 + 128);
  v30[9] = v1;
  v30[10] = *(v0 + 160);
  v31 = *(v0 + 176);
  v2 = *(v0 + 80);
  v30[4] = *(v0 + 64);
  v30[5] = v2;
  v3 = *(v0 + 112);
  v30[6] = *(v0 + 96);
  v30[7] = v3;
  v4 = *(v0 + 16);
  v30[0] = *v0;
  v30[1] = v4;
  v5 = *(v0 + 48);
  v30[2] = *(v0 + 32);
  v30[3] = v5;
  if (sub_10000FE88(v30) == 1)
  {
    v6 = UInt32.init(_:)(v30);
    v7 = 0;
    if (!v6[4])
    {
      return v7 & 1;
    }

    v8 = v6[7];
    if (v8 == 1)
    {
      return v7 & 1;
    }

    v9 = v6 + 6;
    if (!v8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v10 = UInt32.init(_:)(v30);
    v7 = 0;
    if (v10[12] == 1)
    {
      return v7 & 1;
    }

    v8 = v10[14];
    if (v8 == 1)
    {
      return v7 & 1;
    }

    v9 = v10 + 13;
    if (!v8)
    {
      goto LABEL_37;
    }
  }

  v11 = *v9;

  v12 = BodyStructure.DispositionKind.attachment.unsafeMutableAddressor();
  if ((*v12 != v11 || v8 != v12[1]) && (sub_1004A6D34() & 1) == 0)
  {
    v20 = BodyStructure.DispositionKind.inline.unsafeMutableAddressor();
    if ((*v20 != v11 || v8 != v20[1]) && (sub_1004A6D34() & 1) == 0)
    {

LABEL_36:

      goto LABEL_37;
    }

    v21 = BodyStructure.mediaType.getter();
    v23 = v22;

    v24 = Media.TopLevelType.text.unsafeMutableAddressor();
    if (*v24 == v21 && v24[1] == v23)
    {
    }

    else
    {
      v27 = sub_1004A6D34();

      if ((v27 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_37:
    v7 = 0;
    return v7 & 1;
  }

LABEL_12:
  v13 = BodyStructure.mediaType.getter();
  v15 = v14;

  v16 = Media.TopLevelType.multipart.unsafeMutableAddressor();
  if ((*v16 != v13 || v16[1] != v15) && (sub_1004A6D34() & 1) == 0)
  {
    v25 = Media.TopLevelType.application.unsafeMutableAddressor();
    if (*v25 == v13 && v25[1] == v15)
    {
    }

    else
    {
      v26 = sub_1004A6D34();

      if ((v26 & 1) == 0)
      {

        v7 = 1;
        return v7 & 1;
      }
    }

    BodyStructure.mediaType.getter();

    sub_1004A5814();

    v32._countAndFlagsBits = 0x2D3773636B70;
    v32._object = 0xE600000000000000;
    if (!sub_1004A5A54(v32))
    {
      v33._countAndFlagsBits = 0x2D3773636B702D78;
      v33._object = 0xE800000000000000;
      v28 = sub_1004A5A54(v33);

      v7 = !v28;
      return v7 & 1;
    }

    goto LABEL_36;
  }

  BodyStructure.mediaType.getter();

  v17 = sub_1004A5814();
  v19 = v18;

  if (v17 == 0x756F64656C707061 && v19 == 0xEB00000000656C62)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_1004A6D34();
  }

  return v7 & 1;
}

uint64_t sub_10025690C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  if (!a4 || (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  v5 = *a5;
  v6 = a5[1];
  v7 = a5[2];
  v8 = *(a5 + 32);
  if (result)
  {
    if (result == 1)
    {
      if (!a5[5])
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  if (!a5[5])
  {
LABEL_20:
    v9 = 1;
    return v9 & 1;
  }

  if ((v8 & 0xF0) == 0x50)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v8 <= 0xF)
  {
    v9 = (v7 & 0x80) == 0 && *a5 == 1;
    return v9 & 1;
  }

  if (v8 & 0xF0) != 0x10 || (v7)
  {
    goto LABEL_20;
  }

  if (v5)
  {
    v11 = v6 - v5;
  }

  else
  {
    v11 = 0;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if ((sub_1002A85D8("pkcs7-", 6, 2, 0, v11, v5, v6) & 1) == 0)
    {
      v9 = sub_1002A85D8("x-pkcs7-", 8, 2, 0, v11, v5, v6) ^ 1;
      return v9 & 1;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t BodyStructure.makeAttachmentFilenames(cache:)(void *a1)
{
  v3 = sub_100257470(_swiftEmptyArrayStorage);
  sub_100256A70(&v3, _swiftEmptyArrayStorage, a1);
  return v3;
}

uint64_t sub_100256A70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(v3 + 144);
  v9 = *(v3 + 112);
  v94 = *(v3 + 128);
  v95 = v8;
  v10 = *(v3 + 144);
  v96 = *(v3 + 160);
  v11 = *(v3 + 80);
  v12 = *(v3 + 48);
  v90 = *(v3 + 64);
  v91 = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 112);
  v92 = *(v3 + 96);
  v93 = v14;
  v15 = *(v3 + 16);
  v86 = *v3;
  v87 = v15;
  v16 = *(v3 + 48);
  v18 = *v3;
  v17 = *(v3 + 16);
  v88 = *(v3 + 32);
  v89 = v16;
  v68[8] = v94;
  v68[9] = v10;
  v68[10] = *(v3 + 160);
  v68[4] = v90;
  v68[5] = v13;
  v68[6] = v92;
  v68[7] = v9;
  v68[0] = v18;
  v68[1] = v17;
  v97 = *(v3 + 176);
  v69 = *(v3 + 176);
  v68[2] = v88;
  v68[3] = v12;
  if (sub_10000FE88(v68) == 1)
  {
    UInt32.init(_:)(v68);
    *&v66[48] = v94;
    *&v66[64] = v95;
    *&v66[80] = v96;
    v67 = v97;
    v65 = v90;
    *v66 = v91;
    *&v66[16] = v92;
    *&v66[32] = v93;
    v61 = v86;
    v62 = v87;
    v63 = v88;
    v64 = v89;
    v19 = UInt32.init(_:)(&v61);
    v20 = *v19;
    v21 = *(*v19 + 16);
    sub_1000510B4(v4, &__dst);

    if (v21)
    {
      v22 = (v20 + 32);
      v23 = 1;
      do
      {
        v24 = *v22;
        v25 = v22[1];
        v26 = v22[3];
        v59[2] = v22[2];
        v59[3] = v26;
        v59[0] = v24;
        v59[1] = v25;
        v27 = v22[4];
        v28 = v22[5];
        v29 = v22[7];
        v59[6] = v22[6];
        v59[7] = v29;
        v59[4] = v27;
        v59[5] = v28;
        v30 = v22[8];
        v31 = v22[9];
        v32 = v22[10];
        v60 = *(v22 + 176);
        v59[9] = v31;
        v59[10] = v32;
        v59[8] = v30;
        memmove(&__dst, v22, 0xB1uLL);
        sub_1000510B4(v59, &v54);
        v33.array._rawValue = SectionSpecifier.Part.appending(_:)(v23).array._rawValue;
        sub_100256A70(a1, v33.array._rawValue, a3);

        sub_100051110(&__dst);
        ++v23;
        v22 = (v22 + 184);
      }

      while (v23 - v21 != 1);
    }

    sub_100051110(v4);
  }

  else
  {
    v35 = UInt32.init(_:)(v68);
    if (*(v35 + 96) != 1)
    {
      v36 = *(v35 + 112);
      if (v36 != 1)
      {
        v37 = *(v35 + 104);
        v82[0] = v37;
        v82[1] = v36;
        v83 = *(v35 + 120);
        v84 = *(v35 + 136);
        if (v36)
        {
          v38 = v84;
          v39 = *(&v83 + 1);
          v40 = v83;
          v85[0] = v37;
          v85[1] = v36;
          sub_1000510B4(v4, &__dst);
          sub_1002579A8(v82, &__dst);
          sub_100257A18(v85);
          __dst = 0uLL;

          sub_1002A12F0(v40, v39, v38, &__dst, a3, v41);

          sub_100051110(v4);
          v42 = *(&__dst + 1);
          if (*(&__dst + 1))
          {
            v43 = __dst;

            sub_100256E60(v43, v42, a2);
          }
        }
      }
    }

    v78 = v94;
    v79 = v95;
    v80 = v96;
    v81 = v97;
    v74 = v90;
    v75 = v91;
    v76 = v92;
    v77 = v93;
    __dst = v86;
    v71 = v87;
    v72 = v88;
    v73 = v89;
    v44 = UInt32.init(_:)(&__dst);
    v45 = *(v44 + 80);
    v47 = *(v44 + 48);
    v46 = *(v44 + 64);
    v49 = *(v44 + 16);
    v48 = *(v44 + 32);
    v50 = *v44;
    v51 = *(v44 + 136);
    v55 = *(v44 + 120);
    v56 = v51;
    v57 = *(v44 + 152);
    v58 = *(v44 + 168);
    v52 = *(v44 + 104);
    v54 = *(v44 + 88);
    v61 = v50;
    v62 = v49;
    v63 = v48;
    v64 = v47;
    v65 = v46;
    *&v66[40] = v55;
    *&v66[56] = v56;
    *&v66[72] = v57;
    *v66 = v45;
    *&v66[88] = v58;
    *&v66[8] = v54;
    *&v66[24] = v52;
    v81 = v97;
    v79 = v95;
    v80 = v96;
    v77 = v93;
    v78 = v94;
    v75 = v91;
    v76 = v92;
    v73 = v89;
    v74 = v90;
    v71 = v87;
    v72 = v88;
    __dst = v86;
    v53 = UInt32.init(_:)(&__dst);
    sub_1002578F8(v53, v59);
    return sub_100257954(&v61);
  }
}

uint64_t sub_100256E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1002986C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10029B748(a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100298994();
        v14 = v16;
      }

      result = sub_1002572C8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void *Message.makeAttachmentFilenames(cache:)(void *a1)
{

  v3 = sub_100294A24(v1, a1);

  if (v3[2])
  {
    sub_10000C9C0(&qword_1005D6270, &qword_1004E9EA0);
    v4 = sub_1004A6A74();
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  v6 = v4;
  sub_100257668(v3, 1, &v6);

  return v6;
}

uint64_t sub_100257014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  result = sub_1002A477C(a5, a1, a2, a3, a4);
  v10 = *(result + 16);
  if (!v10)
  {
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v11 = 0;
  v12 = result + 40;
  v13 = -v10;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    v15 = *(result + 16);
    if (v11 > v15)
    {
      v15 = v11;
    }

    v16 = -v15;
    v17 = v12 + 48 * v11++;
    while (1)
    {
      if (v16 + v11 == 1)
      {
        __break(1u);
        return result;
      }

      v19 = *v17;
      v20 = *(v17 + 8);
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      v23 = *(v17 + 32);
      if (v23 > 1)
      {
        break;
      }

      if (*(v17 + 32))
      {
        v18 = 1;
      }

      else
      {
        v18 = v20 == 0;
      }

      if (!v18)
      {
        v31 = v12;
        v32 = v7;
        v33 = result;
        v29 = *(v17 + 8);
        v30 = *v17;
        goto LABEL_17;
      }

LABEL_11:
      ++v11;
      v17 += 48;
      if (v13 + v11 == 1)
      {
        goto LABEL_24;
      }
    }

    if (v23 != 2 || !v22)
    {
      goto LABEL_11;
    }

    v31 = v12;
    v32 = v7;
    v33 = result;
    v29 = *(v17 + 24);
    v30 = *(v17 + 16);
LABEL_17:
    v24 = *(v17 - 8);

    sub_1002578D8(v19, v20, v21, v22, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100273BA8(0, v14[2] + 1, 1, v14);
    }

    v26 = v14[2];
    v25 = v14[3];
    result = v33;
    v12 = v31;
    if (v26 >= v25 >> 1)
    {
      v28 = sub_100273BA8((v25 > 1), v26 + 1, 1, v14);
      v12 = v31;
      v14 = v28;
      result = v33;
    }

    v14[2] = v26 + 1;
    v27 = &v14[3 * v26];
    v27[4] = v24;
    v27[5] = v30;
    v27[6] = v29;
    v7 = v32;
  }

  while (v13 + v11);
LABEL_24:

  *a6 = v14;
  return result;
}

double variable initialization expression of UnsafeExtractedAttachment.mediaType@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t variable initialization expression of IndexableMessageInfo.date@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004A44E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double variable initialization expression of IndexableMessageInfo.from@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1002572C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1004A6E94();

      SectionSpecifier.Part.hash(into:)(v21, v9);
      v10 = sub_1004A6F14();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100257470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D6270, &qword_1004E9EA0);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10029B748(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100257570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D6278, &unk_1004E9EB0);
    v3 = sub_1004A6A74();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      sub_1000131FC(v5);
      result = sub_10029B748(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100257668(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_10029B748(v8);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_100298180(v15, v5 & 1);
    result = sub_10029B748(v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1004A6E24();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = v8;
    v22 = (v18[7] + 16 * result);
    *v22 = v7;
    v22[1] = v9;
    v23 = v18[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_100298994();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  v20 = (v18[7] + 16 * v19);
  *v20 = v7;
  v20[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v9 = *(v5 - 2);
      v7 = *(v5 - 1);
      v6 = *v5;
      v27 = *a3;

      result = sub_10029B748(v9);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v28;
      if (v27[3] < v31)
      {
        sub_100298180(v31, 1);
        result = sub_10029B748(v9);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = result;

        v26 = (v33[7] + 16 * v25);
        *v26 = v7;
        v26[1] = v6;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        *(v33[6] + 8 * result) = v9;
        v34 = (v33[7] + 16 * result);
        *v34 = v7;
        v34[1] = v6;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

double sub_1002578D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  return result;
}

uint64_t sub_1002579A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6280, &qword_100501A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100257A94(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - 1;
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = a5 - 3;
    for (i = (result + 1); ; ++i)
    {
      if (*(v5 + 1))
      {
        goto LABEL_46;
      }

      v10 = *(result + v7);
      if (v10 < 0 || (v11 = *(&off_1005AA6D8 + *(result + v7) + 32), v11 < 0))
      {
        if (a3)
        {
          goto LABEL_4;
        }

        v26 = 1;
LABEL_56:
        *v5 = v26;
        return result;
      }

      if (qword_1005D6240 != -1)
      {
        v34 = a2;
        v35 = result;
        v33 = a3;
        v31 = a5;
        v32 = a4;
        swift_once();
        a5 = v31;
        a4 = v32;
        a2 = v34;
        result = v35;
        a3 = v33;
      }

      v12 = byte_1005D6300;
      v13 = *(v5 + 24);
      if (v10 == byte_1005D6300)
      {
        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_61;
        }

        *(v5 + 24) = v13;
      }

      else if (v13 >= 1 && (a3 & 1) == 0)
      {
LABEL_44:
        v26 = 2;
        goto LABEL_56;
      }

      v15 = v11 + (*(v5 + 32) << 6);
      if (__CFADD__(v11, *(v5 + 32) << 6))
      {
        goto LABEL_59;
      }

      *(v5 + 32) = v15;
      v16 = *(v5 + 16);
      v14 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v14)
      {
        goto LABEL_60;
      }

      *(v5 + 16) = v17;
      if (v17 != 4)
      {
        goto LABEL_4;
      }

      if (a5 < 3 || (v18 = *(v5 + 8), v8 < v18))
      {
        v26 = 3;
        goto LABEL_56;
      }

      if (v13 == 3)
      {
        goto LABEL_44;
      }

      v19 = v7 + 1 >= a2;
      if (v7 + 1 >= a2 || v13 < 1)
      {
        goto LABEL_32;
      }

      v20 = i;
      v21 = v6;
      do
      {
        if (!v21)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = *v20;
        if (v22 != v12 && ((a3 & 1) == 0 || (v22 & 0x80) == 0 && (*(&off_1005AA6D8 + v22 + 32) & 0x80000000) == 0))
        {
          v23 = (a4 + v18);
          *v23 = BYTE2(v15);
          v23[1] = BYTE1(v15);
          v24 = v18 + 2;
          goto LABEL_38;
        }

        ++v20;
        --v21;
      }

      while (v21);
      v19 = 1;
LABEL_32:
      *(a4 + v18) = BYTE2(v15);
      *(v5 + 8) = v18 + 1;
      if (!v19 || v13 <= 1)
      {
        *(a4 + v18 + 1) = BYTE1(v15);
        v24 = v18 + 2;
        *(v5 + 8) = v18 + 2;
        if (v13 <= 0 || !v19)
        {
LABEL_38:
          *(a4 + v24) = v15;
          *(v5 + 8) = v24 + 1;
        }
      }

      *(v5 + 16) = 0;
      if (v13 >= 1 && (a3 & 1) == 0)
      {
        break;
      }

      *(v5 + 24) = 0;
LABEL_4:
      ++v7;
      --v6;
      if (v7 == a2)
      {
        return result;
      }
    }

    *(v5 + 1) = 1;
LABEL_46:
    if (!*v5)
    {
      if (qword_1005D6240 == -1)
      {
LABEL_51:
        while (1)
        {
          v27 = *(result + v7);
          if (((a3 & 1) == 0 || (v27 & 0x80) == 0 && (*(&off_1005AA6D8 + v27 + 32) & 0x80000000) == 0) && v27 != byte_1005D6300)
          {
            break;
          }

          if (++v7 >= a2)
          {
            return result;
          }
        }

        v26 = 4;
        goto LABEL_56;
      }

LABEL_62:
      v28 = result;
      v29 = a2;
      v30 = a3;
      swift_once();
      result = v28;
      a2 = v29;
      LOBYTE(a3) = v30;
      goto LABEL_51;
    }
  }

  return result;
}

unint64_t sub_100257D8C()
{
  if (sub_1004A6D34())
  {
    result = 10;
    goto LABEL_7;
  }

  result = sub_1004A55A4();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1001E11BC(0x3DuLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
    goto LABEL_10;
  }

  result = sub_1001E11BC(0x3DuLL, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    if ((result & 0xFFFFFF00) == 0)
    {
LABEL_7:
      byte_1005D6300 = result;
      return result;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100257E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (a1)
  {
    v9 = a2 - a1;
    if (a3)
    {
      v10 = a4 - a3;
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v25 = 0;
      v6 = &v21;
      sub_100257A94(a1, v9, a5 & 1, a3, a4 - a3);
      if (v21)
      {
        if (v21 == 3 && v23 == 4)
        {
          goto LABEL_17;
        }
      }

      else if (!v23)
      {
LABEL_17:
        v11 = v22;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (v9 >= 1)
    {
      v6 = (a1 + 3);
      v10 = 4;
      while (1)
      {
        if ((*(v6 - 3) & 0x80000000) == 0)
        {
          v5 = *(&off_1005AA6D8 + *(v6 - 3) + 32);
          if ((v5 & 0x80000000) == 0)
          {
            v5 = *(v6 - 3);
            if (qword_1005D6240 != -1)
            {
              goto LABEL_58;
            }

            goto LABEL_22;
          }
        }

        if ((a5 & 1) == 0)
        {
          break;
        }

        ++v10;
        ++v6;
        if (a1 - a2 + v10 == 4)
        {
          goto LABEL_14;
        }
      }

LABEL_16:
      sub_100258104();
      v7 = swift_allocError();
      swift_willThrow();
      return v7;
    }

LABEL_14:
    v10 = 0;
    v11 = 0;
LABEL_18:
    while (v11 < 0 || v10 < v11)
    {
      __break(1u);
LABEL_58:
      v20 = v9;
      v18 = a5;
      v19 = v5;
      swift_once();
      v5 = v19;
      v9 = v20;
      a5 = v18;
LABEL_22:
      v13 = v5 == byte_1005D6300;
      if (v10 - 3 < v9)
      {
        while (*(v6 - 2) < 0 || *(&off_1005AA6D8 + *(v6 - 2) + 32) < 0)
        {
          if (a5)
          {
            v14 = v10 - 2;
            ++v10;
            ++v6;
            if (v14 < v9)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        if (*(v6 - 2) == byte_1005D6300)
        {
          v13 = 1;
          if (v5 == byte_1005D6300)
          {
            v13 = 2;
          }
        }

        else if (v5 == byte_1005D6300 && (a5 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (v10 - 2 >= v9)
        {
          goto LABEL_16;
        }

        while (*(v6 - 1) < 0 || *(&off_1005AA6D8 + *(v6 - 1) + 32) < 0)
        {
          if (a5)
          {
            v15 = v10++ - 1;
            ++v6;
            if (v15 < v9)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        if (*(v6 - 1) == byte_1005D6300)
        {
          ++v13;
        }

        else if (v13 && (a5 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (v10 - 1 < v9)
        {
          while (1)
          {
            v16 = *v6++;
            v5 = v16;
            if ((v16 & 0x80000000) == 0 && (*(&off_1005AA6D8 + v5 + 32) & 0x80000000) == 0)
            {
              break;
            }

            if (a5)
            {
              v17 = v10++ < v9;
              if (v17)
              {
                continue;
              }
            }

            goto LABEL_16;
          }

          v10 = 0;
          v11 = 0;
          v17 = v5 == byte_1005D6300 || v13 < 1;
          if (v17 || (a5 & 1) != 0)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  return v7;
}

unint64_t sub_100258104()
{
  result = qword_1005D6308;
  if (!qword_1005D6308)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for Base64.InvalidBase64Data, v0, v1);
    atomic_store(result, &qword_1005D6308);
  }

  return result;
}

uint64_t sub_100258168(void *a1)
{
  v2 = *a1 >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      memcpy(__dst, ((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      sub_100259990(__dst, &v15);
      sub_1002595C0(__dst);
      sub_1002599EC(__dst);
      goto LABEL_7;
    }

    v6 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v7 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    __dst[0] = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __dst[1] = v6;
    swift_bridgeObjectRetain_n();
    sub_1002598C8(__dst);

    __dst[0] = v7;
    sub_1004A5494();
  }

  else
  {
    v3 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v4 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    __dst[0] = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __dst[1] = v3;
    swift_bridgeObjectRetain_n();

    sub_1002598C8(__dst);

    __dst[0] = v5;
    __dst[1] = v4;

    sub_1002598C8(__dst);
  }

LABEL_7:
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  if (v8)
  {
    v15 = a1[4];
    v16[0] = v8;

    sub_1002598C8(&v15);
  }

  if (v10)
  {
    v15 = v9;
    v16[0] = v10;

    sub_1002598C8(&v15);
  }

  if (v12)
  {
    v15 = v11;
    v16[0] = v12;

    sub_1002598C8(&v15);
  }

  v15 = v13;
  return sub_1004A5494();
}

uint64_t sub_10025835C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = (*v1 + 32);
    v145 = 0;
    v142 = v1;
    for (i = v2 - 1; ; --i)
    {
      v5 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v167 = v3[3];
      v166 = v7;
      v165 = v6;
      v164 = v5;
      v8 = v3[4];
      v9 = v3[5];
      v10 = v3[6];
      v171 = v3[7];
      v170 = v10;
      v169 = v9;
      v168 = v8;
      v11 = v3[8];
      v12 = v3[9];
      v13 = v3[10];
      v175 = *(v3 + 176);
      v174 = v13;
      v173 = v12;
      v172 = v11;
      memmove(__dst, v3, 0xB1uLL);
      if (sub_10000FE88(__dst) == 1)
      {
        v14 = UInt32.init(_:)(__dst);
        v15 = *(v14 + 80);
        v188[4] = *(v14 + 64);
        v188[5] = v15;
        v188[6] = *(v14 + 96);
        v16 = *(v14 + 16);
        v188[0] = *v14;
        v188[1] = v16;
        v17 = *(v14 + 48);
        v188[2] = *(v14 + 32);
        v189 = *(v14 + 112);
        v188[3] = v17;
        v163[8] = v172;
        v163[9] = v173;
        v163[10] = v174;
        LOBYTE(v163[11]) = v175;
        v163[4] = v168;
        v163[5] = v169;
        v163[6] = v170;
        v163[7] = v171;
        v163[0] = v164;
        v163[1] = v165;
        v163[2] = v166;
        v163[3] = v167;
        v18 = UInt32.init(_:)(v163);
        sub_100259A40(v18, v162);
        sub_10025835C(v188);
        sub_100051110(&v164);
        if (!i)
        {
          goto LABEL_131;
        }

        goto LABEL_124;
      }

      v19 = UInt32.init(_:)(__dst);
      v20 = *v19;
      v21 = *v19 >> 62;
      v147 = i;
      if (!v21)
      {
        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        v28 = *(v20 + 32);
        v27 = *(v20 + 40);
        swift_bridgeObjectRetain_n();
        if ((v25 & 0x1000000000000000) != 0)
        {
          sub_1000510B4(&v164, v163);

          v26 = sub_10010CD9C(v26, v25);
          v29 = v91;

          if ((v29 & 0x2000000000000000) != 0)
          {
            goto LABEL_52;
          }

LABEL_15:
          if ((v26 & 0x1000000000000000) == 0)
          {
            sub_1004A67E4();
          }

          sub_1004A5494();
        }

        else
        {
          sub_1000510B4(&v164, v163);

          v29 = v25;
          if ((v25 & 0x2000000000000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_52:
          *&v163[0] = v26;
          *(&v163[0] + 1) = v29 & 0xFFFFFFFFFFFFFFLL;
          sub_1004A5494();
        }

        if ((v27 & 0x1000000000000000) != 0)
        {
          v28 = sub_10010CD9C(v28, v27);
          v92 = v93;

          if ((v92 & 0x2000000000000000) == 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v92 = v27;
          if ((v27 & 0x2000000000000000) == 0)
          {
LABEL_55:
            if ((v28 & 0x1000000000000000) == 0)
            {
              sub_1004A67E4();
            }

            goto LABEL_59;
          }
        }

        *&v163[0] = v28;
        *(&v163[0] + 1) = v92 & 0xFFFFFFFFFFFFFFLL;
LABEL_59:
        sub_1004A5494();

        goto LABEL_63;
      }

      v22 = (v20 & 0x3FFFFFFFFFFFFFFFLL);
      if (v21 != 1)
      {
        v31 = v22[2];
        v30 = v22[3];
        v32 = v22[4];
        if ((v30 & 0x1000000000000000) != 0)
        {
          sub_1000510B4(&v164, v163);

          v31 = sub_10010CD9C(v31, v30);
          v33 = v94;
          if ((v94 & 0x2000000000000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {

          sub_1000510B4(&v164, v163);

          v33 = v30;
          if ((v30 & 0x2000000000000000) == 0)
          {
LABEL_20:
            if ((v31 & 0x1000000000000000) == 0)
            {
              sub_1004A67E4();
            }

LABEL_62:
            sub_1004A5494();

            *&v163[0] = v32;
            sub_1004A5494();
LABEL_63:

            goto LABEL_99;
          }
        }

        *&v163[0] = v31;
        *(&v163[0] + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_62;
      }

      memcpy(v163, v22 + 2, 0x148uLL);
      v23 = *(&v163[0] + 1);
      v24 = *&v163[0];
      if ((*(&v163[0] + 1) & 0x1000000000000000) != 0)
      {
        sub_1000510B4(&v164, v162);
        sub_100259990(v163, v162);

        v24 = sub_10010CD9C(v24, v23);
        v90 = v89;

        v23 = v90;
      }

      else
      {
        sub_1000510B4(&v164, v162);
        sub_100259990(v163, v162);
      }

      if ((v23 & 0x2000000000000000) != 0)
      {
        *v162 = v24;
        *&v162[8] = v23 & 0xFFFFFFFFFFFFFFLL;
      }

      else if ((v24 & 0x1000000000000000) == 0)
      {
        sub_1004A67E4();
      }

      sub_1004A5494();

      v160[8] = *(&v163[16] + 8);
      v160[9] = *(&v163[17] + 8);
      v160[10] = *(&v163[18] + 8);
      v160[4] = *(&v163[12] + 8);
      v160[5] = *(&v163[13] + 8);
      v160[6] = *(&v163[14] + 8);
      v160[7] = *(&v163[15] + 8);
      v160[0] = *(&v163[8] + 8);
      v160[1] = *(&v163[9] + 8);
      v160[2] = *(&v163[10] + 8);
      v161 = BYTE8(v163[19]);
      v160[3] = *(&v163[11] + 8);
      if (sub_10000FE88(v160) != 1)
      {
        break;
      }

      v34 = UInt32.init(_:)(v160);
      v35 = *(v34 + 80);
      v186[4] = *(v34 + 64);
      v186[5] = v35;
      v186[6] = *(v34 + 96);
      v36 = *(v34 + 16);
      v186[0] = *v34;
      v186[1] = v36;
      v37 = *(v34 + 48);
      v186[2] = *(v34 + 32);
      v187 = *(v34 + 112);
      v186[3] = v37;
      sub_10025835C(v186);
LABEL_98:
      *v162 = *&v163[20];
      sub_1004A5494();
      sub_1002599EC(v163);
LABEL_99:
      v125 = v19[5];
      v124 = v19[6];
      v127 = v19[7];
      v126 = v19[8];
      v129 = v19[9];
      v128 = v19[10];
      if (!v125)
      {
        goto LABEL_107;
      }

      v130 = v19[4];

      if ((v125 & 0x1000000000000000) != 0)
      {
        v130 = sub_10010CD9C(v130, v125);
        v144 = v131;

        v125 = v144;
        if ((v144 & 0x2000000000000000) == 0)
        {
LABEL_102:
          if ((v130 & 0x1000000000000000) == 0)
          {
            sub_1004A67E4();
          }

          goto LABEL_106;
        }
      }

      else if ((v125 & 0x2000000000000000) == 0)
      {
        goto LABEL_102;
      }

      *&v163[0] = v130;
      *(&v163[0] + 1) = v125 & 0xFFFFFFFFFFFFFFLL;
LABEL_106:
      sub_1004A5494();

LABEL_107:
      if (!v127)
      {
        goto LABEL_115;
      }

      if ((v127 & 0x1000000000000000) != 0)
      {
        v124 = sub_10010CD9C(v124, v127);
        v133 = v132;

        v127 = v133;
        if ((v133 & 0x2000000000000000) == 0)
        {
LABEL_110:
          if ((v124 & 0x1000000000000000) == 0)
          {
            sub_1004A67E4();
          }

          goto LABEL_114;
        }
      }

      else if ((v127 & 0x2000000000000000) == 0)
      {
        goto LABEL_110;
      }

      *&v163[0] = v124;
      *(&v163[0] + 1) = v127 & 0xFFFFFFFFFFFFFFLL;
LABEL_114:
      sub_1004A5494();

LABEL_115:
      if (!v129)
      {
        goto LABEL_123;
      }

      if ((v129 & 0x1000000000000000) != 0)
      {
        v126 = sub_10010CD9C(v126, v129);
        v135 = v134;

        v129 = v135;
        if ((v135 & 0x2000000000000000) == 0)
        {
LABEL_118:
          if ((v126 & 0x1000000000000000) == 0)
          {
            sub_1004A67E4();
          }

          goto LABEL_122;
        }
      }

      else if ((v129 & 0x2000000000000000) == 0)
      {
        goto LABEL_118;
      }

      *&v163[0] = v126;
      *(&v163[0] + 1) = v129 & 0xFFFFFFFFFFFFFFLL;
LABEL_122:
      sub_1004A5494();

LABEL_123:
      *&v163[0] = v128;
      sub_1004A5494();
      sub_100051110(&v164);
      i = v147;
      if (!v147)
      {
LABEL_131:
        v1 = v142;
        goto LABEL_132;
      }

LABEL_124:
      v3 = (v3 + 184);
    }

    v143 = UInt32.init(_:)(v160);
    v38 = *v143;
    v39 = *v143 >> 62;
    if (v39)
    {
      v40 = (v38 & 0x3FFFFFFFFFFFFFFFLL);
      if (v39 == 1)
      {
        memcpy(v162, v40 + 2, sizeof(v162));
        *v154 = *v162;

        sub_100259990(v162, v157);
        v41 = v145;
        sub_1002598C8(v154);

        v158[8] = *&v162[264];
        v158[9] = *&v162[280];
        v158[10] = *&v162[296];
        v158[4] = *&v162[200];
        v158[5] = *&v162[216];
        v158[6] = *&v162[232];
        v158[7] = *&v162[248];
        v158[0] = *&v162[136];
        v158[1] = *&v162[152];
        v158[2] = *&v162[168];
        v159 = v162[312];
        v158[3] = *&v162[184];
        if (sub_10000FE88(v158) == 1)
        {
          v42 = UInt32.init(_:)(v158);
          v43 = *(v42 + 80);
          v184[4] = *(v42 + 64);
          v184[5] = v43;
          v184[6] = *(v42 + 96);
          v44 = *(v42 + 16);
          v184[0] = *v42;
          v184[1] = v44;
          v45 = *(v42 + 48);
          v184[2] = *(v42 + 32);
          v185 = *(v42 + 112);
          v184[3] = v45;
          sub_10025835C(v184);
LABEL_89:
          v157[0] = *&v162[320];
          sub_1004A5494();
          sub_1002599EC(v162);
          goto LABEL_90;
        }

        v51 = UInt32.init(_:)(v158);
        v52 = *v51;
        v53 = *v51 >> 62;
        v146 = v51;
        if (v53)
        {
          v54 = (v52 & 0x3FFFFFFFFFFFFFFFLL);
          if (v53 == 1)
          {
            memcpy(v157, v54 + 2, sizeof(v157));
            v151[0] = v157[0];
            v151[1] = v157[1];

            sub_100259990(v157, v154);
            sub_1002598C8(v151);

            v155[8] = *&v157[33];
            v155[9] = *&v157[35];
            v155[10] = *&v157[37];
            v155[4] = *&v157[25];
            v155[5] = *&v157[27];
            v155[6] = *&v157[29];
            v155[7] = *&v157[31];
            v155[0] = *&v157[17];
            v155[1] = *&v157[19];
            v155[2] = *&v157[21];
            v156 = v157[39];
            v155[3] = *&v157[23];
            if (sub_10000FE88(v155) == 1)
            {
              v55 = UInt32.init(_:)(v155);
              v56 = *(v55 + 80);
              v182[4] = *(v55 + 64);
              v182[5] = v56;
              v182[6] = *(v55 + 96);
              v57 = *(v55 + 16);
              v182[0] = *v55;
              v182[1] = v57;
              v58 = *(v55 + 48);
              v182[2] = *(v55 + 32);
              v183 = *(v55 + 112);
              v182[3] = v58;
              sub_10025835C(v182);
LABEL_81:
              *v154 = v157[40];
              sub_1004A5494();
              sub_1002599EC(v157);
              goto LABEL_82;
            }

            v64 = UInt32.init(_:)(v155);
            v65 = *v64;
            v66 = *v64 >> 62;
            v141 = v64;
            if (v66)
            {
              v67 = (v65 & 0x3FFFFFFFFFFFFFFFLL);
              if (v66 == 1)
              {
                memcpy(v154, v67 + 2, sizeof(v154));
                v149[0] = *v154;

                sub_100259990(v154, v151);
                sub_1002598C8(v149);

                v152[8] = *&v154[264];
                v152[9] = *&v154[280];
                v152[10] = *&v154[296];
                v153 = v154[312];
                v152[4] = *&v154[200];
                v152[5] = *&v154[216];
                v152[6] = *&v154[232];
                v152[7] = *&v154[248];
                v152[0] = *&v154[136];
                v152[1] = *&v154[152];
                v152[2] = *&v154[168];
                v152[3] = *&v154[184];
                if (sub_10000FE88(v152) == 1)
                {
                  v68 = UInt32.init(_:)(v152);
                  v69 = *(v68 + 80);
                  v180[4] = *(v68 + 64);
                  v180[5] = v69;
                  v180[6] = *(v68 + 96);
                  v70 = *(v68 + 16);
                  v180[0] = *v68;
                  v180[1] = v70;
                  v71 = *(v68 + 48);
                  v180[2] = *(v68 + 32);
                  v181 = *(v68 + 112);
                  v180[3] = v71;
                  sub_10025835C(v180);
                }

                else
                {
                  v139 = UInt32.init(_:)(v152);
                  v77 = *v139;
                  v78 = *v139 >> 62;
                  if (v78)
                  {
                    v79 = (v77 & 0x3FFFFFFFFFFFFFFFLL);
                    if (v78 == 1)
                    {
                      memcpy(v151, v79 + 2, sizeof(v151));
                      v148[0] = v151[0];
                      v148[1] = v151[1];

                      sub_100259990(v151, v149);
                      sub_1002598C8(v148);

                      v149[9] = *&v151[35];
                      v149[10] = *&v151[37];
                      v149[4] = *&v151[25];
                      v149[5] = *&v151[27];
                      v149[6] = *&v151[29];
                      v150 = v151[39];
                      v149[7] = *&v151[31];
                      v149[8] = *&v151[33];
                      v149[0] = *&v151[17];
                      v149[1] = *&v151[19];
                      v149[2] = *&v151[21];
                      v149[3] = *&v151[23];
                      if (sub_10000FE88(v149) == 1)
                      {
                        v80 = UInt32.init(_:)(v149);
                        v81 = *(v80 + 80);
                        v178[4] = *(v80 + 64);
                        v178[5] = v81;
                        v178[6] = *(v80 + 96);
                        v82 = *(v80 + 16);
                        v178[0] = *v80;
                        v178[1] = v82;
                        v83 = *(v80 + 48);
                        v178[2] = *(v80 + 32);
                        v179 = *(v80 + 112);
                        v178[3] = v83;
                        sub_10025835C(v178);
                      }

                      else
                      {
                        v95 = UInt32.init(_:)(v149);
                        v96 = v95[6];
                        v177[7] = v95[7];
                        v97 = v95[9];
                        v177[8] = v95[8];
                        v177[9] = v97;
                        v177[10] = v95[10];
                        v98 = v95[2];
                        v177[3] = v95[3];
                        v99 = v95[5];
                        v177[4] = v95[4];
                        v177[5] = v99;
                        v177[6] = v96;
                        v100 = v95[1];
                        v177[0] = *v95;
                        v177[1] = v100;
                        v177[2] = v98;
                        sub_100258168(v177);
                      }

                      v148[0] = v151[40];
                      sub_1004A5494();
                      sub_1002599EC(v151);
                    }

                    else
                    {
                      v87 = v79[3];
                      v88 = v79[4];
                      v151[0] = v79[2];
                      v151[1] = v87;
                      swift_bridgeObjectRetain_n();
                      sub_1002598C8(v151);

                      v151[0] = v88;
                      sub_1004A5494();
                    }
                  }

                  else
                  {
                    v84 = *(v77 + 24);
                    v85 = *(v77 + 32);
                    v86 = *(v77 + 40);
                    v151[0] = *(v77 + 16);
                    v151[1] = v84;
                    swift_bridgeObjectRetain_n();

                    sub_1002598C8(v151);

                    v151[0] = v85;
                    v151[1] = v86;

                    sub_1002598C8(v151);
                  }

                  v101 = v139[5];
                  v102 = v139[6];
                  v104 = v139[7];
                  v103 = v139[8];
                  v106 = v139[9];
                  v105 = v139[10];
                  if (v101)
                  {
                    v151[0] = v139[4];
                    v151[1] = v101;

                    sub_1002598C8(v151);
                  }

                  if (v104)
                  {
                    v151[0] = v102;
                    v151[1] = v104;

                    sub_1002598C8(v151);
                  }

                  if (v106)
                  {
                    v151[0] = v103;
                    v151[1] = v106;

                    sub_1002598C8(v151);
                  }

                  v151[0] = v105;
                  sub_1004A5494();
                }

                v151[0] = *&v154[320];
                sub_1004A5494();
                sub_1002599EC(v154);
                goto LABEL_74;
              }

              v75 = v67[3];
              v76 = v67[4];
              *v154 = v67[2];
              *&v154[8] = v75;
              swift_bridgeObjectRetain_n();
              sub_1002598C8(v154);

              *v154 = v76;
              sub_1004A5494();
            }

            else
            {
              v72 = *(v65 + 24);
              v73 = *(v65 + 32);
              v74 = *(v65 + 40);
              *v154 = *(v65 + 16);
              *&v154[8] = v72;
              swift_bridgeObjectRetain_n();

              sub_1002598C8(v154);

              *v154 = v73;
              *&v154[8] = v74;

              sub_1002598C8(v154);
            }

LABEL_74:
            v107 = v141[5];
            v108 = v141[6];
            v109 = v141[7];
            v140 = v141[8];
            v111 = v141[9];
            v110 = v141[10];
            if (v107)
            {
              *v154 = v141[4];
              *&v154[8] = v107;

              sub_1002598C8(v154);
            }

            if (v109)
            {
              *v154 = v108;
              *&v154[8] = v109;

              sub_1002598C8(v154);
            }

            if (v111)
            {
              *v154 = v140;
              *&v154[8] = v111;

              sub_1002598C8(v154);
            }

            *v154 = v110;
            sub_1004A5494();
            goto LABEL_81;
          }

          v62 = v54[3];
          v63 = v54[4];
          v157[0] = v54[2];
          v157[1] = v62;
          swift_bridgeObjectRetain_n();
          sub_1002598C8(v157);

          v157[0] = v63;
          sub_1004A5494();
        }

        else
        {
          v59 = *(v52 + 24);
          v60 = *(v52 + 32);
          v61 = *(v52 + 40);
          v157[0] = *(v52 + 16);
          v157[1] = v59;
          swift_bridgeObjectRetain_n();

          sub_1002598C8(v157);

          v157[0] = v60;
          v157[1] = v61;

          sub_1002598C8(v157);
        }

LABEL_82:
        v112 = v146[5];
        v113 = v146[6];
        v115 = v146[7];
        v114 = v146[8];
        v117 = v146[9];
        v116 = v146[10];
        if (v112)
        {
          v157[0] = v146[4];
          v157[1] = v112;

          sub_1002598C8(v157);
        }

        if (v115)
        {
          v157[0] = v113;
          v157[1] = v115;

          sub_1002598C8(v157);
        }

        if (v117)
        {
          v157[0] = v114;
          v157[1] = v117;

          sub_1002598C8(v157);
        }

        v157[0] = v116;
        sub_1004A5494();
        goto LABEL_89;
      }

      v49 = v40[3];
      v50 = v40[4];
      *v162 = v40[2];
      *&v162[8] = v49;
      swift_bridgeObjectRetain_n();
      v41 = v145;
      sub_1002598C8(v162);

      *v162 = v50;
      sub_1004A5494();
    }

    else
    {
      v46 = *(v38 + 24);
      v47 = *(v38 + 32);
      v48 = *(v38 + 40);
      *v162 = *(v38 + 16);
      *&v162[8] = v46;
      swift_bridgeObjectRetain_n();

      v41 = v145;
      sub_1002598C8(v162);

      *v162 = v47;
      *&v162[8] = v48;

      sub_1002598C8(v162);
    }

LABEL_90:
    v118 = v143[5];
    v119 = v143[6];
    v120 = v143[7];
    v121 = v143[8];
    v122 = v143[9];
    v123 = v143[10];
    if (v118)
    {
      *v162 = v143[4];
      *&v162[8] = v118;

      sub_1002598C8(v162);
    }

    if (v120)
    {
      *v162 = v119;
      *&v162[8] = v120;

      sub_1002598C8(v162);
    }

    if (v122)
    {
      *v162 = v121;
      *&v162[8] = v122;

      sub_1002598C8(v162);
      v145 = v41;
    }

    else
    {
      v145 = v41;
    }

    *v162 = v123;
    sub_1004A5494();
    goto LABEL_98;
  }

LABEL_132:
  v137 = v1[1];
  v136 = v1[2];
  *&v163[0] = v137;
  *(&v163[0] + 1) = v136;

  sub_1002598C8(v163);
}

uint64_t sub_1002595C0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  *&__dst[0] = v3;
  *(&__dst[0] + 1) = v2;

  sub_1002598C8(__dst);

  v4 = *(a1 + 35);
  v28[8] = *(a1 + 33);
  v28[9] = v4;
  v28[10] = *(a1 + 37);
  v29 = *(a1 + 312);
  v5 = *(a1 + 27);
  v28[4] = *(a1 + 25);
  v28[5] = v5;
  v6 = *(a1 + 31);
  v28[6] = *(a1 + 29);
  v28[7] = v6;
  v7 = *(a1 + 19);
  v28[0] = *(a1 + 17);
  v28[1] = v7;
  v8 = *(a1 + 23);
  v28[2] = *(a1 + 21);
  v28[3] = v8;
  if (sub_10000FE88(v28) == 1)
  {
    v9 = UInt32.init(_:)(v28);
    __dst[4] = *(v9 + 64);
    __dst[5] = *(v9 + 80);
    __dst[6] = *(v9 + 96);
    *&__dst[7] = *(v9 + 112);
    __dst[0] = *v9;
    __dst[1] = *(v9 + 16);
    __dst[2] = *(v9 + 32);
    __dst[3] = *(v9 + 48);
    sub_10025835C(__dst);
    goto LABEL_16;
  }

  v10 = UInt32.init(_:)(v28);
  v12 = v10[4];
  v11 = v10[5];
  v13 = v10[7];
  v14 = v10[9];
  v22 = v10[6];
  v23 = v10[8];
  v24 = v10[10];
  v15 = *v10 >> 62;
  if (v15)
  {
    if (v15 == 1)
    {
      memcpy(__dst, ((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      sub_100259990(__dst, &v25);
      sub_1002595C0(__dst);
      sub_1002599EC(__dst);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v19 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    *&__dst[0] = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    *(&__dst[0] + 1) = v19;
    swift_bridgeObjectRetain_n();
    sub_1002598C8(__dst);

    *&__dst[0] = v20;
    sub_1004A5494();
  }

  else
  {
    v16 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v18 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v17 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    *&__dst[0] = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    *(&__dst[0] + 1) = v16;
    swift_bridgeObjectRetain_n();

    sub_1002598C8(__dst);

    *&__dst[0] = v18;
    *(&__dst[0] + 1) = v17;

    sub_1002598C8(__dst);
  }

  if (v11)
  {
LABEL_10:
    v25 = v12;
    v26 = v11;

    sub_1002598C8(&v25);
  }

LABEL_11:
  if (v13)
  {
    v25 = v22;
    v26 = v13;

    sub_1002598C8(&v25);
  }

  if (v14)
  {
    v25 = v23;
    v26 = v14;

    sub_1002598C8(&v25);
  }

  v25 = v24;
  sub_1004A5494();
LABEL_16:
  v25 = a1[40];
  return sub_1004A5494();
}

uint64_t sub_1002598C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = sub_10010CD9C(v2, v3);
    v7 = v6;

    v2 = v5;
    *a1 = v5;
    a1[1] = v7;
    if ((v7 & 0x2000000000000000) != 0)
    {
      return sub_1004A5494();
    }
  }

  else if ((v3 & 0x2000000000000000) != 0)
  {
    return sub_1004A5494();
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    sub_1004A67E4();
  }

  return sub_1004A5494();
}

char *sub_100259A9C(uint64_t a1, uint64_t a2)
{
  v3 = PCG32Random.next()();
  swift_beginAccess();
  v4 = *(a2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((result & 1) == 0)
  {
    result = sub_10015BF20(0, *(v4 + 2) + 1, 1, v4);
    v4 = result;
  }

  v6 = 10;
  do
  {
    v7 = a0123456789abcd[v3 % 0x3E];
    *(a2 + 16) = v4;
    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      result = sub_10015BF20((v8 > 1), v9 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 2) = v9 + 1;
    v4[v9 + 32] = v7;
    *(a2 + 16) = v4;
    v3 /= 0x3EuLL;
    --v6;
  }

  while (v6);
  return result;
}

Swift::Int sub_100259BC0(Swift::Int result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_1004A59E4();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = sub_10015BF20(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    result = sub_1004A6734();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t static Message.makeSparse(messageHeaders:bodyStructure:lineEnding:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X8>)
{
  v95 = a3;
  v93 = a1;
  v94 = a4;
  v5 = *(a2 + 144);
  v151 = *(a2 + 128);
  v152 = v5;
  v153 = *(a2 + 160);
  v6 = *(a2 + 80);
  v147 = *(a2 + 64);
  v148 = v6;
  v7 = *(a2 + 112);
  v149 = *(a2 + 96);
  v150 = v7;
  v8 = *(a2 + 16);
  v143 = *a2;
  v144 = v8;
  v9 = *(a2 + 48);
  v145 = *(a2 + 32);
  v154 = *(a2 + 176);
  v146 = v9;
  v89 = sub_1004A5384();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v96);
  v88 = (&v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = type metadata accessor for Message(0);
  v12 = *(v92 - 1);
  __chkstk_darwin(v92);
  v90 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C9C0(&qword_1005D6310, &qword_1004EA000);
  __chkstk_darwin(v14 - 8);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = &v85 - v18;
  v19 = sub_1004A54C4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1004A5454();
  v23 = *(v91 - 1);
  __chkstk_darwin(v91);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = xmmword_1004DC1F0;
  sub_1000510B4(a2, v129);
  sub_1004A54B4();
  v26 = *(a2 + 144);
  v129[8] = *(a2 + 128);
  v129[9] = v26;
  v129[10] = *(a2 + 160);
  v130 = *(a2 + 176);
  v27 = *(a2 + 80);
  v129[4] = *(a2 + 64);
  v129[5] = v27;
  v28 = *(a2 + 112);
  v129[6] = *(a2 + 96);
  v129[7] = v28;
  v29 = *(a2 + 16);
  v129[0] = *a2;
  v129[1] = v29;
  v30 = *(a2 + 48);
  v129[2] = *(a2 + 32);
  v129[3] = v30;
  if (sub_10000FE88(v129) == 1)
  {
    v31 = UInt32.init(_:)(v129);
    v32 = *(v31 + 80);
    v135 = *(v31 + 64);
    v136 = v32;
    v137 = *(v31 + 96);
    v33 = *(v31 + 16);
    v131 = *v31;
    v132 = v33;
    v34 = *(v31 + 48);
    v133 = *(v31 + 32);
    *&v138 = *(v31 + 112);
    v134 = v34;
    sub_10025835C(&v131);
  }

  else
  {
    v35 = UInt32.init(_:)(v129);
    v36 = v35[6];
    v138 = v35[7];
    v37 = v35[9];
    v139 = v35[8];
    v140 = v37;
    v141 = v35[10];
    v38 = v35[2];
    v134 = v35[3];
    v39 = v35[5];
    v135 = v35[4];
    v136 = v39;
    v137 = v36;
    v40 = v35[1];
    v131 = *v35;
    v132 = v40;
    v133 = v38;
    sub_100258168(&v131);
  }

  sub_1004A54A4();
  (*(v20 + 8))(v22, v19);
  sub_10000C9C0(&qword_1005D6318, &qword_1004EA008);
  sub_1004A5444();
  sub_100051110(a2);
  (*(v23 + 8))(v25, v91);
  v101 = v127[0];
  v41 = v97;
  sub_10026796C(v93, v97, type metadata accessor for Message);
  v42 = v92;
  v43 = (*(v12 + 56))(v41, 0, 1, v92);
  __chkstk_darwin(v43);
  v83 = &v102;
  sub_10000E268(v41, v16, &qword_1005D6310, &qword_1004EA000);
  if ((*(v12 + 48))(v16, 1, v42) == 1)
  {
    sub_100025F40(v16, &qword_1005D6310, &qword_1004EA000);
    v45 = v95;
    v46 = sub_10025B4CC(v95, &v101, a2, &v102);
    sub_10025B5BC(v45, a2, &v102);
    sub_10025B944(v45, a2, &v102);
    sub_10025BD28(v45, a2, &v102);
    v47 = *(a2 + 144);
    v127[8] = *(a2 + 128);
    v127[9] = v47;
    v127[10] = *(a2 + 160);
    v128 = *(a2 + 176);
    v48 = *(a2 + 80);
    v127[4] = *(a2 + 64);
    v127[5] = v48;
    v49 = *(a2 + 112);
    v127[6] = *(a2 + 96);
    v127[7] = v49;
    v50 = *(a2 + 16);
    v127[0] = *a2;
    v127[1] = v50;
    v51 = *(a2 + 48);
    v127[2] = *(a2 + 32);
    v127[3] = v51;
    if (sub_10000FE88(v127) == 1)
    {
      UInt32.init(_:)(v127);
    }

    else
    {
      v142 = *(UInt32.init(_:)(v127) + 0x30);
      v58 = *(&v142 + 1);
      if (*(&v142 + 1))
      {
        v93 = v142;
        LOBYTE(v99[0]) = v45;
        *(&v104 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v105 = &protocol witness table for UnsafeRawBufferPointer;
        *&v103 = "Content-Description";
        *(&v103 + 1) = "";
        sub_10002587C(&v103, &type metadata for UnsafeRawBufferPointer);
        sub_1000510B4(a2, &v115);
        sub_10000E268(&v142, &v115, &qword_1005D4660, &qword_1004E05E8);
        sub_1004A43F4();
        sub_1000197E0(&v103);
        *(&v116 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v117 = &protocol witness table for UnsafeRawBufferPointer;
        *&v115 = ": ";
        *(&v115 + 1) = "";
        v45 = v95;
        sub_10002587C(&v115, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v115);
        *(&v99[0] + 1) = 21;
        sub_10025FD88(v93, v58, v99, &v102);
        sub_100025F40(&v142, &qword_1005D4660, &qword_1004E05E8);
        sub_100267804(v45);
        sub_100051110(a2);
      }
    }

    sub_10025C1CC(v45, a2, &v102);
    sub_10025C348(v45, a2, &v102);
    v59 = *(a2 + 144);
    v123 = *(a2 + 128);
    v124 = v59;
    v125 = *(a2 + 160);
    v126 = *(a2 + 176);
    v60 = *(a2 + 80);
    v119 = *(a2 + 64);
    v120 = v60;
    v61 = *(a2 + 112);
    v121 = *(a2 + 96);
    v122 = v61;
    v62 = *(a2 + 16);
    v115 = *a2;
    v116 = v62;
    v63 = *(a2 + 48);
    v117 = *(a2 + 32);
    v118 = v63;
    if (sub_10000FE88(&v115) == 1)
    {
      UInt32.init(_:)(&v115);
    }

    else
    {
      v68 = *(UInt32.init(_:)(&v115) + 0x50);
      if (v68 > 0)
      {
        sub_1002628DC(v45, v68, &v102);
      }
    }

    sub_100267804(v45);
  }

  else
  {
    v93 = &v85;
    v52 = v16;
    v53 = v90;
    v54 = sub_1002678D8(v52, v90, v44);
    __chkstk_darwin(v54);
    *(&v85 - 48) = 3;
    *(&v85 - 5) = a2;
    v45 = v95;
    *(&v85 - 32) = v95;
    *(&v85 - 3) = &v101;
    __chkstk_darwin(v55);
    v83 = sub_10026793C;
    v84 = v56;
    sub_1000510B4(a2, v127);
    sub_1000510B4(a2, v127);
    sub_1000510B4(a2, v127);
    if (Message.isEmpty.getter())
    {
      sub_1000510B4(a2, v127);
      sub_10025ACAC(0, 0, 0, 0, 3, a2, v45, &v101, v127, sub_10025A9B0, &v85 - 4);
      sub_100051110(a2);
      sub_100051110(a2);
      sub_100051110(a2);
      v46 = *&v127[0];
      sub_100051110(a2);
    }

    else
    {
      v92 = &v85;
      v64 = v88;
      sub_10026796C(v53, v88, type metadata accessor for Message.Data);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v65 = v86;
        v66 = v87;
        v67 = (*(v87 + 32))(v86, v64, v89);
        v91 = &v85;
        __chkstk_darwin(v67);
        *(&v85 - 4) = v65;
        *(&v85 - 3) = sub_100267954;
        v83 = (&v85 - 4);
        sub_10000C9C0(&qword_1005D6320, &qword_1004EA010);
        sub_1004A5314();
        (*(v66 + 8))(v65, v89);
        sub_100051110(a2);
        sub_100051110(a2);
        sub_100051110(a2);
        v46 = *&v127[0];
      }

      else
      {
        v69 = v64;
        v70 = *v64;
        v71 = v69[1];
        sub_1000510B4(a2, v127);
        v46 = sub_100267088(v70, v71, 3, a2, v45, &v101, sub_10025A9B0, &v85 - 4);
        sub_100051110(a2);
        sub_100014D40(v70, v71);
        sub_100051110(a2);
        sub_100051110(a2);
        sub_100051110(a2);
      }
    }

    sub_1002679EC(v53, v57);
  }

  v72 = *(a2 + 144);
  v111 = *(a2 + 128);
  v112 = v72;
  v113 = *(a2 + 160);
  v114 = *(a2 + 176);
  v73 = *(a2 + 80);
  v107 = *(a2 + 64);
  v108 = v73;
  v74 = *(a2 + 112);
  v109 = *(a2 + 96);
  v110 = v74;
  v75 = *(a2 + 16);
  v103 = *a2;
  v104 = v75;
  v76 = *(a2 + 48);
  v105 = *(a2 + 32);
  v106 = v76;
  if (sub_10000FE88(&v103) != 1)
  {
    UInt32.init(_:)(&v103);
    goto LABEL_24;
  }

  v77 = UInt32.init(_:)(&v103);
  if (v46)
  {
    v78 = *v77;
    v99[9] = v152;
    v99[10] = v153;
    v100 = v154;
    v99[5] = v148;
    v99[6] = v149;
    v99[7] = v150;
    v99[8] = v151;
    v99[0] = v143;
    v99[1] = v144;
    v99[2] = v145;
    v99[3] = v146;
    v99[4] = v147;
    v79 = UInt32.init(_:)(v99);
    sub_100259A40(v79, &v98);
    sub_10025C4F4(v45, v78, v46, &v101, &v102);
    sub_100051110(a2);
LABEL_24:
  }

  sub_100025F40(v97, &qword_1005D6310, &qword_1004EA000);
  v80 = v102;
  *v94 = v102;
  swift_storeEnumTagMultiPayload();
  v81 = v102;
  sub_100014CEC(v80, *(&v80 + 1));
  return sub_100014D40(v81, *(&v81 + 1));
}

uint64_t sub_10025A950(uint64_t a1, uint64_t a2)
{
  v3[3] = &type metadata for UnsafeRawBufferPointer;
  v3[4] = &protocol witness table for UnsafeRawBufferPointer;
  v3[0] = a1;
  v3[1] = a2;
  sub_10002587C(v3, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  return sub_1000197E0(v3);
}

BOOL BodyStructure.containsMultipartPartWithMissingBoundary.getter()
{
  v1 = *(v0 + 144);
  v30[8] = *(v0 + 128);
  v30[9] = v1;
  v30[10] = *(v0 + 160);
  v31 = *(v0 + 176);
  v2 = *(v0 + 80);
  v30[4] = *(v0 + 64);
  v30[5] = v2;
  v3 = *(v0 + 112);
  v30[6] = *(v0 + 96);
  v30[7] = v3;
  v4 = *(v0 + 16);
  v30[0] = *v0;
  v30[1] = v4;
  v5 = *(v0 + 48);
  v30[2] = *(v0 + 32);
  v30[3] = v5;
  if (sub_10000FE88(v30) == 1)
  {
    v6 = UInt32.init(_:)(v30);
    v7 = *(v6 + 80);
    v36 = *(v6 + 64);
    v37 = v7;
    v38 = *(v6 + 96);
    v39 = *(v6 + 112);
    v8 = *(v6 + 16);
    v32 = *v6;
    v33 = v8;
    v9 = *(v6 + 48);
    v34 = *(v6 + 32);
    v35 = v9;
    v10 = sub_10025AB14();
    if (v11)
    {
      sub_10014F5C4(v10, v11, v12, v13);
      v14 = (v32 + 32);
      v15 = *(v32 + 16) + 1;
      do
      {
        v16 = --v15 != 0;
        if (!v15)
        {
          break;
        }

        v17 = (v14 + 184);
        v18 = *v14;
        v19 = v14[1];
        v20 = v14[3];
        v40[2] = v14[2];
        v40[3] = v20;
        v40[0] = v18;
        v40[1] = v19;
        v21 = v14[4];
        v22 = v14[5];
        v23 = v14[7];
        v40[6] = v14[6];
        v40[7] = v23;
        v40[4] = v21;
        v40[5] = v22;
        v24 = v14[8];
        v25 = v14[9];
        v26 = v14[10];
        v41 = *(v14 + 176);
        v40[9] = v25;
        v40[10] = v26;
        v40[8] = v24;
        sub_1000510B4(v40, v29);
        v27 = BodyStructure.containsMultipartPartWithMissingBoundary.getter();
        sub_100051110(v40);
        v14 = v17;
      }

      while ((v27 & 1) == 0);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    UInt32.init(_:)(v30);
    return 0;
  }

  return v16;
}

uint64_t sub_10025AB14()
{
  v12 = *(v0 + 32);
  if (!v12)
  {
    return 0;
  }

  v13 = *(v0 + 40);
  v1 = *(v13 + 16);

  if (!v1)
  {
    v7 = 0;
LABEL_15:
    sub_100025F40(&v13, &qword_1005D3FD0, &qword_1004DF4C0);
    return v7;
  }

  v3 = 0;
  v4 = 0x797261646E756F62;
  v5 = result + 40;
  v6 = v12 + 40;
  while (v3 < *(v12 + 16))
  {
    v7 = *(v6 - 8);
    if (sub_1004A5814() == v4 && v8 == 0xE800000000000000)
    {

      goto LABEL_15;
    }

    v10 = v4;
    v11 = sub_1004A6D34();

    if (v11)
    {
      goto LABEL_15;
    }

    ++v3;

    v5 += 16;
    v6 += 16;
    v4 = v10;
    if (v1 == v3)
    {
      v7 = 0;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10025ACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t (*a10)(uint64_t, uint64_t), uint64_t *a11)
{
  v11 = a7;
  sub_100287BA8(a5, a1, a2, a3);
  if (v20)
  {
    v21 = a2;
  }

  else
  {
    v21 = v19;
  }

  sub_100296A78(a5, a1, a2, a3, a4, v21);
  v92 = v22;
  v95 = v23;
  v87 = v24;
  v26 = v25;
  v27 = *(a6 + 144);
  v114[8] = *(a6 + 128);
  v114[9] = v27;
  v114[10] = *(a6 + 160);
  v115 = *(a6 + 176);
  v28 = *(a6 + 80);
  v114[4] = *(a6 + 64);
  v114[5] = v28;
  v29 = *(a6 + 112);
  v114[6] = *(a6 + 96);
  v114[7] = v29;
  v30 = *(a6 + 16);
  v114[0] = *a6;
  v114[1] = v30;
  v31 = *(a6 + 48);
  v114[2] = *(a6 + 32);
  v114[3] = v31;
  v32 = sub_10000FE88(v114);
  UInt32.init(_:)(v114);
  if (v26 < 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v95)
  {
    v33 = v95 + v26;
  }

  else
  {
    v33 = 0;
  }

  sub_1002AADD4(v95, v33, v92, v107);
  sub_1000510B4(a6, &v104);
  v104 = 0u;
  v105 = 0u;
  *&v106[0] = 0x1FFFFFFF0ELL;
  memset(v106 + 8, 0, 33);
  v34 = sub_1002AC09C();
  if (v37 == 2)
  {
    v90 = 0;
    v38 = *&v106[0];
    if ((*&v106[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
    {
      v88 = 0uLL;
      v89 = 0uLL;
      v39 = a10;
LABEL_48:
      LOBYTE(v100) = v11;
      v39("Content-Type", "");
      v39(": ", "");
      *(&v100 + 1) = 14;
      sub_1002616C0(&v100, a6, v39, a11, a8, v99);
      sub_1002652C0(v11, v39);
      v68 = 0;
      goto LABEL_51;
    }

    v85 = v32;
    v71 = *(&v106[1] + 1);
    v70 = *&v106[1];
    v89 = 0uLL;
    v88 = 0uLL;
    v94 = 0;
  }

  else
  {
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v85 = v32;
    v91 = v11;
    v83 = a6;
    v84 = a9;
    v94 = 0;
    v90 = 0;
    v89 = 0uLL;
    v88 = 0uLL;
    v44 = 0;
    do
    {
      sub_1002AB9E4(v40, v41, v42, v43 & 1, &v108);
      v96 = v108;
      v48 = v109;
      v49 = v110;
      v50 = v111;
      v51 = v112;
      v52 = v113;
      if (v112 >> 59 == 9)
      {
        v53 = v110;
        v54 = v109;
        v93 = v40;
        v55 = v43;
        v56 = v112;
        v57 = v113;
        v58 = v42;
        v59 = v41;
        v60 = v111;

        v50 = v60;
        v41 = v59;
        v42 = v58;
        v52 = v57;
        v51 = v56;
        v43 = v55;
        v40 = v93;
        v48 = v54;
        v49 = v53;
        *&v88 = v96;
        *(&v88 + 1) = v48;
        *&v89 = v53;
        *(&v89 + 1) = v50;
        v90 = v51;
        v94 = v52;
      }

      if (!(v44 & 1 | (v40 == 0)) && v95 && &v40[-v95] >= 1)
      {
        v61 = v48;
        v62 = v42;
        v63 = v41;
        v64 = v50;
        sub_1002863C4(v92, v91, 1, a10, a11, 0, &v40[-v95], v95, v87);
        v50 = v64;
        v41 = v63;
        v42 = v62;
        v48 = v61;
      }

      if ((*&v106[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
      {
        if (*&v106[1])
        {
          v65 = (*(&v106[1] + 1) - *&v106[1]);
        }

        else
        {
          v65 = 0;
        }

        if ((v65 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_77;
        }

        v66 = v48;
        v67 = v50;
        sub_1002863C4(v92, v91, 1, a10, a11, 0, v65, *&v106[1], *(&v106[1] + 1));
        sub_100025F40(&v104, &qword_1005D6328, &qword_1004ECE90);
        v50 = v67;
        v48 = v66;
      }

      *&v104 = v96;
      *(&v104 + 1) = v48;
      *&v105 = v49;
      *(&v105 + 1) = v50;
      *&v106[0] = v51;
      *(&v106[0] + 1) = v52;
      *&v106[1] = v40;
      *(&v106[1] + 1) = v41;
      *&v106[2] = v42;
      BYTE8(v106[2]) = v43 & 1;
      v40 = sub_1002AC09C();
      v41 = v45;
      v42 = v46;
      v43 = v47;
      v44 = 1;
    }

    while (v47 != 2);
    v38 = *&v106[0];
    if ((*&v106[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
    {
      a6 = v83;
      v11 = v91;
      v39 = a10;
      v68 = v94;
      if (!v94)
      {
        a9 = v84;
        goto LABEL_48;
      }

      v69 = 0;
      a9 = v84;
LABEL_34:
      v72 = v11;
      if (v11)
      {
        goto LABEL_52;
      }

      goto LABEL_35;
    }

    v71 = *(&v106[1] + 1);
    v70 = *&v106[1];
    a9 = v84;
    a6 = v83;
    v11 = v91;
  }

  v39 = a10;
  if (v38 >> 59)
  {
    sub_100025F40(&v104, &qword_1005D6328, &qword_1004ECE90);
    if (v70)
    {
      v73 = v71 - v70;
    }

    else
    {
      v73 = 0;
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      v74 = a11;
      sub_1002863C4(v92, v11, 1, a10, a11, 0, v73, v70, v71);
      v68 = v94;
      if (v94)
      {
        v69 = 0;
        v72 = v11;
        if (v11)
        {
          goto LABEL_52;
        }

        goto LABEL_35;
      }

      LOBYTE(v100) = v11;
      goto LABEL_50;
    }

    goto LABEL_78;
  }

  if (v85 == 1)
  {
    v68 = v94;
    if (v94)
    {
      v69 = 0;
      goto LABEL_34;
    }

    LOBYTE(v100) = v11;
    v74 = a11;
LABEL_50:
    a10("Content-Type", "");
    a10(": ", "");
    *(&v100 + 1) = 14;
    sub_1002616C0(&v100, a6, a10, v74, a8, v99);
    sub_1002652C0(v11, a10);
LABEL_51:
    v69 = v99[0];
    v72 = v11;
    if (v11)
    {
      goto LABEL_52;
    }

    goto LABEL_35;
  }

  if (v94)
  {
    v102 = v106[0];
    v103[0] = v106[1];
    *(v103 + 9) = *(&v106[1] + 9);
    v100 = v104;
    v101 = v105;
    sub_10000E268(&v100, v99, &qword_1005D6330, &qword_1004ECEA0);
    v69 = 0;
  }

  else
  {
    v97[0] = v11;
    v102 = v106[0];
    v103[0] = v106[1];
    *(v103 + 9) = *(&v106[1] + 9);
    v100 = v104;
    v101 = v105;
    sub_10000E268(&v100, v99, &qword_1005D6330, &qword_1004ECEA0);
    a10("Content-Type", "");
    a10(": ", "");
    v98 = 14;
    sub_1002616C0(v97, a6, a10, a11, a8, v99);
    sub_1002652C0(v11, a10);
    v69 = v99[0];
  }

  if (v70)
  {
    v82 = v71 - v70;
  }

  else
  {
    v82 = 0;
  }

  if (v82 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_1002863C4(v92, v11, 1, a10, a11, 0, v82, v70, v71);
  v68 = v94;
  v72 = v11;
  if (v11)
  {
LABEL_52:
    if (v72 == 1)
    {
      v75 = 13;
    }

    else
    {
      v75 = 10;
    }

    LOBYTE(v100) = v75;
    v39(&v100, &v100 + 1);
    if (v69)
    {
      goto LABEL_56;
    }

LABEL_57:
    if (!v68)
    {
LABEL_60:
      result = sub_100051110(a6);
      v69 = 0;
      goto LABEL_61;
    }

    v100 = v88;
    v101 = v89;
    LOBYTE(v102) = v90;
    *(&v102 + 1) = v68;
    v77 = sub_100271A2C();
    if (v79 == 2)
    {

      goto LABEL_60;
    }

    v80 = v78;
    if ((v79 & 1) == 0)
    {
      v69 = sub_10029E8D4(v77, v78);
      goto LABEL_56;
    }

    if (v77)
    {
      v81 = v78 - v77;
    }

    else
    {
      v81 = 0;
    }

    if ((v81 & 0x8000000000000000) == 0)
    {
      v69 = sub_1002871D4(0, v81, v77, v80);
      goto LABEL_56;
    }

LABEL_80:
    __break(1u);
  }

LABEL_35:
  v39("\r\n", "");
  if (!v69)
  {
    goto LABEL_57;
  }

LABEL_56:

  result = sub_100051110(a6);
LABEL_61:
  *a9 = v69;
  return result;
}

const char *sub_10025B4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v13[0] = a1;
  v11 = &type metadata for UnsafeRawBufferPointer;
  v12 = &protocol witness table for UnsafeRawBufferPointer;
  v9 = "Content-Type";
  v10 = "";
  sub_10002587C(&v9, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v9);
  v11 = &type metadata for UnsafeRawBufferPointer;
  v12 = &protocol witness table for UnsafeRawBufferPointer;
  v9 = ": ";
  v10 = "";
  sub_10002587C(&v9, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v9);
  v14 = 14;
  sub_100260F64(v13, a3, a2, a4, &v9);
  sub_100267804(v7);
  return v9;
}

uint64_t sub_10025B5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a2 + 144);
  v23[8] = *(a2 + 128);
  v23[9] = v5;
  v23[10] = *(a2 + 160);
  v24 = *(a2 + 176);
  v6 = *(a2 + 80);
  v23[4] = *(a2 + 64);
  v23[5] = v6;
  v7 = *(a2 + 112);
  v23[6] = *(a2 + 96);
  v23[7] = v7;
  v8 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v8;
  v9 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v9;
  if (sub_10000FE88(v23) == 1)
  {
    return UInt32.init(_:)(v23);
  }

  result = UInt32.init(_:)(v23);
  v25 = *(result + 64);
  v11 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v12 = v25;
    if (v12 == sub_1004A5834() && v11 == v13)
    {
    }

    v14 = sub_1004A6D34();
    sub_1000510B4(a2, &v19);
    sub_10000E268(&v25, &v19, &qword_1005D6338, &unk_1004EA020);

    if (v14)
    {
      sub_100025F40(&v25, &qword_1005D6338, &unk_1004EA020);
      return sub_100051110(a2);
    }

    v21 = &type metadata for UnsafeRawBufferPointer;
    v22 = &protocol witness table for UnsafeRawBufferPointer;
    v19 = "Content-Transfer-Encoding";
    v20 = "";
    sub_10002587C(&v19, &type metadata for UnsafeRawBufferPointer);
    sub_1004A43F4();
    sub_1000197E0(&v19);
    v21 = &type metadata for UnsafeRawBufferPointer;
    v22 = &protocol witness table for UnsafeRawBufferPointer;
    v19 = ": ";
    v20 = "";
    sub_10002587C(&v19, &type metadata for UnsafeRawBufferPointer);
    sub_1004A43F4();
    sub_1000197E0(&v19);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004E9FD0;
    v16 = (v15 + 16);
    *(v15 + 32) = v18;
    *(v15 + 40) = &v19;
    sub_10026751C(v12, v11, v15);
    sub_100025F40(&v25, &qword_1005D6338, &unk_1004EA020);
    swift_beginAccess();
    v17 = *v16;
    if (__OFADD__(*v16, 27))
    {
      __break(1u);
    }

    else
    {
      if ((*v16 + 27) < 79)
      {
        goto LABEL_14;
      }

      sub_100267804(v4);
      v21 = &type metadata for UnsafeRawBufferPointer;
      v22 = &protocol witness table for UnsafeRawBufferPointer;
      v19 = "\t";
      v20 = "";
      sub_10002587C(&v19, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v19);
      if ((v17 & 0x8000000000000000) == 0)
      {
        v21 = &type metadata for UnsafeRawBufferPointer;
        v22 = &protocol witness table for UnsafeRawBufferPointer;
        v19 = v18;
        v20 = &v18[v17];
        sub_10002587C(&v19, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v19);

        if (v17 <= 0xA0)
        {
LABEL_16:
          sub_100267804(v4);
          return sub_100051110(a2);
        }

        __break(1u);
LABEL_14:
        if ((v17 & 0x8000000000000000) == 0)
        {
          v21 = &type metadata for UnsafeRawBufferPointer;
          v22 = &protocol witness table for UnsafeRawBufferPointer;
          v19 = v18;
          v20 = &v18[v17];
          sub_10002587C(&v19, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v19);

          if (v17 <= 0xA0)
          {
            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_10025B944(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 144);
  v35[8] = *(a2 + 128);
  v35[9] = v5;
  v35[10] = *(a2 + 160);
  v36 = *(a2 + 176);
  v6 = *(a2 + 80);
  v35[4] = *(a2 + 64);
  v35[5] = v6;
  v7 = *(a2 + 112);
  v35[6] = *(a2 + 96);
  v35[7] = v7;
  v8 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v8;
  v9 = *(a2 + 48);
  v35[2] = *(a2 + 32);
  v35[3] = v9;
  if (sub_10000FE88(v35) == 1)
  {
    result = UInt32.init(_:)(v35);
    if (!*(result + 32))
    {
      return result;
    }

    v11 = (result + 80);
    v12 = (result + 72);
    v13 = (result + 64);
    v14 = (result + 56);
    v15 = (result + 48);
  }

  else
  {
    result = UInt32.init(_:)(v35);
    if (*(result + 96) == 1)
    {
      return result;
    }

    v11 = (result + 136);
    v15 = (result + 104);
    v12 = (result + 128);
    v13 = (result + 120);
    v14 = (result + 112);
  }

  v16 = *v14;
  if (*v14 >= 2)
  {
    v17 = *v13;
    v18 = *v15;
    v19 = *v12;
    v20 = *v11;
    v28[0] = a1;
    v33 = &type metadata for UnsafeRawBufferPointer;
    v34 = &protocol witness table for UnsafeRawBufferPointer;
    v31 = "Content-Disposition";
    v32 = "";
    sub_10002587C(&v31, &type metadata for UnsafeRawBufferPointer);
    sub_100269A7C(v18, v16);
    sub_1004A43F4();
    sub_1000197E0(&v31);
    v33 = &type metadata for UnsafeRawBufferPointer;
    v34 = &protocol witness table for UnsafeRawBufferPointer;
    v31 = ": ";
    v32 = "";
    sub_10002587C(&v31, &type metadata for UnsafeRawBufferPointer);
    sub_1004A43F4();
    sub_1000197E0(&v31);
    v29 = 21;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1004E9FD0;
    v22 = (v21 + 16);
    *(v21 + 32) = v30;
    *(v21 + 40) = &v31;
    v31 = v18;
    v32 = v16;

    v23 = sub_1004A5AA4();
    sub_10026751C(v23, v24, v21);

    if (*(v20 + 16))
    {
      LOBYTE(v31) = 59;
      sub_100264D48(&v31, &v31 + 1, v21);
    }

    swift_beginAccess();
    v25 = *v22;
    v26 = __OFADD__(*v22, 21);
    v27 = *v22 + 21;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      if (v27 < 79)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          v33 = &type metadata for UnsafeRawBufferPointer;
          v34 = &protocol witness table for UnsafeRawBufferPointer;
          v31 = v30;
          v32 = &v30[v25];
          sub_10002587C(&v31, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v31);

          if (v25 <= 0xA0)
          {
            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
        }

        goto LABEL_20;
      }

      sub_100267804(a1);
      v33 = &type metadata for UnsafeRawBufferPointer;
      v34 = &protocol witness table for UnsafeRawBufferPointer;
      v31 = "\t";
      v32 = "";
      sub_10002587C(&v31, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v31);
      if ((v25 & 0x8000000000000000) == 0)
      {
        v33 = &type metadata for UnsafeRawBufferPointer;
        v34 = &protocol witness table for UnsafeRawBufferPointer;
        v31 = v30;
        v32 = &v30[v25];
        sub_10002587C(&v31, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v31);

        if (v25 <= 0xA0)
        {
          v27 = v25 + 1;
LABEL_16:
          v29 = v27;
          sub_100260088(v17, v19, v20, v28, a3);
          sub_100267804(a1);
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10025BD28(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 144);
  v36[8] = *(a2 + 128);
  v36[9] = v6;
  v36[10] = *(a2 + 160);
  v37 = *(a2 + 176);
  v7 = *(a2 + 80);
  v36[4] = *(a2 + 64);
  v36[5] = v7;
  v8 = *(a2 + 112);
  v36[6] = *(a2 + 96);
  v36[7] = v8;
  v9 = *(a2 + 16);
  v36[0] = *a2;
  v36[1] = v9;
  v10 = *(a2 + 48);
  v36[2] = *(a2 + 32);
  v36[3] = v10;
  if (sub_10000FE88(v36) == 1)
  {
    return UInt32.init(_:)(v36);
  }

  result = UInt32.init(_:)(v36);
  v38 = *(result + 32);
  v12 = *(&v38 + 1);
  if (*(&v38 + 1))
  {
    v13 = v38;
    v29[0] = a1;
    v35[3] = &type metadata for UnsafeRawBufferPointer;
    v35[4] = &protocol witness table for UnsafeRawBufferPointer;
    v35[0] = "Content-ID";
    v35[1] = "";
    sub_10002587C(v35, &type metadata for UnsafeRawBufferPointer);
    sub_1000510B4(a2, &v31);
    sub_10000E268(&v38, &v31, &qword_1005D4660, &qword_1004E05E8);
    sub_1004A43F4();
    sub_1000197E0(v35);
    v33 = &type metadata for UnsafeRawBufferPointer;
    v34 = &protocol witness table for UnsafeRawBufferPointer;
    v31 = ": ";
    v32 = "";
    sub_10002587C(&v31, &type metadata for UnsafeRawBufferPointer);
    sub_1004A43F4();
    sub_1000197E0(&v31);
    v30 = 12;
    v14 = sub_1004A5924();
    v18 = v14 + 2;
    if (__OFADD__(v14, 2))
    {
      __break(1u);
    }

    else
    {
      if (v18 < 0)
      {
        goto LABEL_21;
      }

      v28 = a1;
      v16 = &qword_1005D4660;
      v17 = &qword_1004E05E8;
      v14 = &v38;
      v15 = &v31;
      if (v18 < 1025)
      {
        isStackAllocationSafe = sub_10000E268(&v38, &v31, &qword_1005D4660, &qword_1004E05E8);
LABEL_8:
        v27[1] = v27;
        __chkstk_darwin(isStackAllocationSafe);
        v21 = v27 - v20;
        v22 = v27 + v18 - v20;
        v23 = swift_allocObject();
        v23[2] = 0;
        v23[3] = v18;
        v23[4] = v21;
        v23[5] = v22;
        LOBYTE(v31) = 60;
        sub_100264D48(&v31, &v31 + 1, v23);
        sub_100266E78(v13, v12, v23);
        LOBYTE(v31) = 62;
        sub_100264D48(&v31, &v31 + 1, v23);
        swift_beginAccess();
        v24 = v23[2];
        if (!__OFADD__(v24, 12))
        {
          if (v24 + 12 < 79)
          {
            goto LABEL_13;
          }

          v25 = v28;
          sub_100267804(v28);
          v33 = &type metadata for UnsafeRawBufferPointer;
          v34 = &protocol witness table for UnsafeRawBufferPointer;
          v31 = "\t";
          v32 = "";
          sub_10002587C(&v31, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v31);
          if ((v24 & 0x8000000000000000) == 0)
          {
            v33 = &type metadata for UnsafeRawBufferPointer;
            v34 = &protocol witness table for UnsafeRawBufferPointer;
            v31 = v21;
            v32 = &v21[v24];
            sub_10002587C(&v31, &type metadata for UnsafeRawBufferPointer);
            sub_1004A43F4();
            sub_1000197E0(&v31);

            if (v18 >= v24)
            {
LABEL_15:
              sub_100025F40(&v38, &qword_1005D4660, &qword_1004E05E8);
              sub_100025F40(&v38, &qword_1005D4660, &qword_1004E05E8);
              sub_100267804(v25);
              return sub_100051110(a2);
            }

            __break(1u);
LABEL_13:
            v25 = v28;
            if ((v24 & 0x8000000000000000) == 0)
            {
              v33 = &type metadata for UnsafeRawBufferPointer;
              v34 = &protocol witness table for UnsafeRawBufferPointer;
              v31 = v21;
              v32 = &v21[v24];
              sub_10002587C(&v31, &type metadata for UnsafeRawBufferPointer);
              sub_1004A43F4();
              sub_1000197E0(&v31);

              if (v18 >= v24)
              {
                goto LABEL_15;
              }

LABEL_24:
              __break(1u);
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    sub_10000E268(v14, v15, v16, v17);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v26 = swift_slowAlloc();

      sub_100264858(v26, &v26[v18], 0, v29, v13, v12, a3);

      v25 = v28;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10025C1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a2 + 128);
  v6 = *(a2 + 160);
  v22[9] = *(a2 + 144);
  v22[10] = v6;
  v7 = *(a2 + 64);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v22[5] = *(a2 + 80);
  v22[6] = v8;
  v23 = *(a2 + 176);
  v22[7] = v9;
  v22[8] = v5;
  v10 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v10;
  v11 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v11;
  v22[4] = v7;
  if (sub_10000FE88(v22) == 1)
  {
    result = UInt32.init(_:)(v22);
    if (!*(result + 32))
    {
      return result;
    }

    v13 = (result + 88);
    v14 = (result + 56);
  }

  else
  {
    result = UInt32.init(_:)(v22);
    if (*(result + 96) == 1)
    {
      return result;
    }

    v13 = (result + 144);
    v14 = (result + 112);
  }

  if (*v14 != 1)
  {
    v15 = *v13;
    if (*v13)
    {
      if (*(v15 + 16))
      {
        v20[0] = v4;
        v18 = &type metadata for UnsafeRawBufferPointer;
        v19 = &protocol witness table for UnsafeRawBufferPointer;
        v16 = "Content-Language";
        v17 = "";
        sub_10002587C(&v16, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v16);
        v18 = &type metadata for UnsafeRawBufferPointer;
        v19 = &protocol witness table for UnsafeRawBufferPointer;
        v16 = ": ";
        v17 = "";
        sub_10002587C(&v16, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v16);
        v21 = 18;
        sub_100260C20(v20, v15, a3);
        return sub_100267804(v4);
      }
    }
  }

  return result;
}

uint64_t sub_10025C348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a2 + 128);
  v6 = *(a2 + 160);
  v26[9] = *(a2 + 144);
  v26[10] = v6;
  v7 = *(a2 + 64);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v26[5] = *(a2 + 80);
  v26[6] = v8;
  v27 = *(a2 + 176);
  v26[7] = v9;
  v26[8] = v5;
  v10 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v10;
  v11 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v11;
  v26[4] = v7;
  if (sub_10000FE88(v26) == 1)
  {
    result = UInt32.init(_:)(v26);
    if (!*(result + 32))
    {
      return result;
    }

    v13 = (result + 112);
    v14 = (result + 104);
    v15 = (result + 96);
    v16 = (result + 88);
    v17 = (result + 56);
  }

  else
  {
    result = UInt32.init(_:)(v26);
    if (*(result + 96) == 1)
    {
      return result;
    }

    v13 = (result + 168);
    v14 = (result + 160);
    v15 = (result + 152);
    v16 = (result + 144);
    v17 = (result + 112);
  }

  if (*v17 != 1 && *v16 && *v13)
  {
    v18 = *v14;
    if (*v14)
    {
      v19 = *v15;
      v24[0] = v4;
      v22 = &type metadata for UnsafeRawBufferPointer;
      v23 = &protocol witness table for UnsafeRawBufferPointer;
      v20 = "Content-Location";
      v21 = "";
      sub_10002587C(&v20, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v20);
      v22 = &type metadata for UnsafeRawBufferPointer;
      v23 = &protocol witness table for UnsafeRawBufferPointer;
      v20 = ": ";
      v21 = "";
      sub_10002587C(&v20, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v20);
      v25 = 18;
      sub_10025FD88(v19, v18, v24, a3);
      return sub_100267804(v4);
    }
  }

  return result;
}

void sub_10025C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  v344 = sub_1004A5384();
  v10 = *(v344 - 8);
  __chkstk_darwin(v344);
  v12 = &v329[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v339 = &v329[-v14];
  v347 = type metadata accessor for Message.Data(0);
  __chkstk_darwin(v347);
  v337 = &v329[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v345 = &v329[-v17];
  v355 = type metadata accessor for Message(0);
  v18 = *(v355 - 8);
  __chkstk_darwin(v355);
  v359 = &v329[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_10000C9C0(&qword_1005D6310, &qword_1004EA000);
  __chkstk_darwin(v20 - 8);
  v356 = &v329[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v362 = &v329[-v23];
  v374[2] = a5;
  v354 = *(a2 + 16);
  if (v354)
  {
    v338 = 0;
    v24 = a2 + 32;
    v25 = 0;
    v346 = &v375 + 1;
    v352 = (a3 + 32);
    v353 = v24;
    v360 = &v379 + 1;
    v350 = (v18 + 48);
    v351 = (v18 + 56);
    v342 = (v10 + 32);
    v343 = (v10 + 8);
    v341 = &v382[1];
    v357 = a3;
    v334 = a5;
    v368 = a1;
    v358 = a4;
    v349 = v12;
    while (1)
    {
      v26 = (v353 + 184 * v25);
      v27 = v26[9];
      v28 = v26[7];
      v395 = v26[8];
      v396 = v27;
      v29 = v26[9];
      v397 = v26[10];
      v30 = v26[5];
      v31 = v26[3];
      v391 = v26[4];
      v392 = v30;
      v32 = v26[5];
      v33 = v26[7];
      v393 = v26[6];
      v394 = v33;
      v34 = v26[1];
      v387 = *v26;
      v388 = v34;
      v35 = v26[3];
      v37 = *v26;
      v36 = v26[1];
      v389 = v26[2];
      v390 = v35;
      v434 = v395;
      v435 = v29;
      v436 = v26[10];
      v430 = v391;
      v431 = v32;
      v432 = v393;
      v433 = v28;
      v426 = v37;
      v427 = v36;
      v398 = *(v26 + 176);
      v437 = *(v26 + 176);
      v428 = v389;
      v429 = v31;
      v361 = v25;
      if (v25)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            v38 = 13;
          }

          else
          {
            v38 = 10;
          }

          LOBYTE(v375) = v38;
          *(&v380 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v381[0] = &protocol witness table for UnsafeRawBufferPointer;
          *&v379 = &v375;
          v39 = v346;
        }

        else
        {
          *(&v380 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v381[0] = &protocol witness table for UnsafeRawBufferPointer;
          v39 = "";
          *&v379 = "\r\n";
        }

        *(&v379 + 1) = v39;
        sub_10002587C(&v379, &type metadata for UnsafeRawBufferPointer);
        sub_1000510B4(&v387, &v383);
        sub_1004A43F4();
        sub_1000197E0(&v379);
      }

      else
      {
        sub_1000510B4(&v387, &v383);
      }

      *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v385 = &protocol witness table for UnsafeRawBufferPointer;
      *&v383 = "--";
      *(&v383 + 1) = "";
      sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v383);
      v40 = *(v357 + 16);
      v41 = v352;
      for (i = v360; v40; --v40)
      {
        v46 = *v41++;
        v45 = v46;
        if ((v46 - 127) > 0xFFFFFFA0)
        {
          LOBYTE(v379) = v45;
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = &v379;
          *(&v383 + 1) = i;
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
        }
      }

      if (a1)
      {
        v43 = v356;
        v44 = a1 == 1 ? 13 : 10;
        LOBYTE(v379) = v44;
        *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v385 = &protocol witness table for UnsafeRawBufferPointer;
        *&v383 = &v379;
        *(&v383 + 1) = i;
        sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v383);
      }

      else
      {
        *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v385 = &protocol witness table for UnsafeRawBufferPointer;
        *&v383 = "\r\n";
        *(&v383 + 1) = "";
        sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v383);
        v43 = v356;
      }

      v47 = v362;
      v48 = v355;
      (*v351)(v362, 1, 1, v355);
      sub_10000E268(v47, v43, &qword_1005D6310, &qword_1004EA000);
      if ((*v350)(v43, 1, v48) != 1)
      {
        break;
      }

      sub_100025F40(v43, &qword_1005D6310, &qword_1004EA000);
      LOBYTE(v379) = a1;
      v50 = &type metadata for UnsafeRawBufferPointer;
      *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v385 = &protocol witness table for UnsafeRawBufferPointer;
      *&v383 = "Content-Type";
      *(&v383 + 1) = "";
      sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v383);
      *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v385 = &protocol witness table for UnsafeRawBufferPointer;
      *&v383 = ": ";
      *(&v383 + 1) = "";
      sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v383);
      *(&v379 + 1) = 14;
      sub_100260F64(&v379, &v426, a4, a5, &v375);
      if (a1)
      {
        if (a1 == 1)
        {
          v51 = 13;
        }

        else
        {
          v51 = 10;
        }

        v382[0] = v51;
        *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v385 = &protocol witness table for UnsafeRawBufferPointer;
        *&v383 = v382;
        *(&v383 + 1) = v341;
        sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v383);
      }

      else
      {
        *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v385 = &protocol witness table for UnsafeRawBufferPointer;
        *&v383 = "\r\n";
        *(&v383 + 1) = "";
        sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v383);
      }

      v68 = v375;
      sub_10025B5BC(a1, &v426, a5);
      sub_10025B944(a1, &v426, a5);
      sub_10025BD28(a1, &v426, a5);
      v468[8] = v434;
      v468[9] = v435;
      v468[10] = v436;
      v468[4] = v430;
      v468[5] = v431;
      v468[6] = v432;
      v468[7] = v433;
      v468[0] = v426;
      v468[1] = v427;
      v468[2] = v428;
      v469 = v437;
      v468[3] = v429;
      v69 = sub_10000FE88(v468) == 1;
      v70 = v360;
      if (v69)
      {
        UInt32.init(_:)(v468);
      }

      else
      {
        v71 = UInt32.init(_:)(v468);
        v472 = *(v71 + 48);
        v72 = *(&v472 + 1);
        if (*(&v472 + 1))
        {
          v370 = v472;
          LOBYTE(v375) = a1;
          *(&v380 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v381[0] = &protocol witness table for UnsafeRawBufferPointer;
          *&v379 = "Content-Description";
          *(&v379 + 1) = "";
          sub_10002587C(&v379, &type metadata for UnsafeRawBufferPointer);
          sub_1000510B4(&v426, &v383);
          sub_10000E268(&v472, &v383, &qword_1005D4660, &qword_1004E05E8);
          a4 = v358;
          sub_1004A43F4();
          sub_1000197E0(&v379);
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = ": ";
          *(&v383 + 1) = "";
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
          v376 = 21;
          v70 = v360;
          sub_10025FD88(v370, v72, &v375, a5);
          sub_100025F40(&v472, &qword_1005D4660, &qword_1004E05E8);
          sub_100267804(a1);
          sub_100051110(&v426);
        }
      }

      sub_10025C1CC(a1, &v426, a5);
      sub_10025C348(a1, &v426, a5);
      v470[8] = v434;
      v470[9] = v435;
      v470[10] = v436;
      v470[4] = v430;
      v470[5] = v431;
      v470[6] = v432;
      v470[7] = v433;
      v470[0] = v426;
      v470[1] = v427;
      v470[2] = v428;
      v471 = v437;
      v470[3] = v429;
      if (sub_10000FE88(v470) == 1)
      {
        UInt32.init(_:)(v470);
      }

      else
      {
        v73 = *(UInt32.init(_:)(v470) + 0x50);
        if (v73 > 0)
        {
          sub_1002628DC(a1, v73, a5);
        }
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v74 = 13;
        }

        else
        {
          v74 = 10;
        }

        LOBYTE(v379) = v74;
        *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v385 = &protocol witness table for UnsafeRawBufferPointer;
        *&v383 = &v379;
        *(&v383 + 1) = v70;
      }

      else
      {
        *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v385 = &protocol witness table for UnsafeRawBufferPointer;
        *&v383 = "\r\n";
        *(&v383 + 1) = "";
      }

      sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v383);
      v75 = v361;
LABEL_396:
      v458[8] = v434;
      v458[9] = v435;
      v458[10] = v436;
      v458[4] = v430;
      v458[5] = v431;
      v458[6] = v432;
      v458[7] = v433;
      v458[0] = v426;
      v458[1] = v427;
      v458[2] = v428;
      v459 = v437;
      v458[3] = v429;
      if (sub_10000FE88(v458) == 1)
      {
        v324 = UInt32.init(_:)(v458);
        if (!v68)
        {
          sub_100051110(&v426);
          goto LABEL_5;
        }

        sub_10025C4F4(a1, *v324, v68, a4, a5);
      }

      else
      {
        UInt32.init(_:)(v458);
      }

      sub_100051110(&v426);

LABEL_5:
      v12 = v349;
      v25 = v75 + 1;
      sub_100025F40(v362, &qword_1005D6310, &qword_1004EA000);
      if (v25 == v354)
      {
        goto LABEL_405;
      }
    }

    v52 = v359;
    v53 = sub_1002678D8(v43, v359, v49);
    a1 = v329;
    __chkstk_darwin(v53);
    LOBYTE(v325) = v54;
    v326 = a4;
    __chkstk_darwin(v55);
    v327 = sub_100269B18;
    v328 = v56;
    v57 = v52;
    v58 = v345;
    sub_10026796C(v57, v345, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v58;
      v60 = v339;
      v61 = v344;
      (*v342)(v339, v59, v344);
      sub_1001B60F8();
      sub_1004A5E64();
      sub_1004A5EA4();
      (*v343)(v60, v61);
      if (v383 == v379)
      {
LABEL_69:
        v456[8] = v434;
        v456[9] = v435;
        v456[10] = v436;
        v456[4] = v430;
        v456[5] = v431;
        v456[6] = v432;
        v456[7] = v433;
        v456[0] = v426;
        v456[1] = v427;
        v456[2] = v428;
        v457 = v437;
        v456[3] = v429;
        LODWORD(v340) = sub_10000FE88(v456);
        v348 = v329;
        UInt32.init(_:)(v456);
        v50 = &type metadata for UnsafeRawBufferPointer;
        memset(v382, 0, 64);
        v382[64] = 3;
        sub_1000510B4(&v426, &v383);
        v379 = 0u;
        v380 = 0u;
        *&v381[0] = 0x1FFFFFFF0ELL;
        *(v381 + 8) = 0u;
        *(&v381[1] + 8) = 0u;
        BYTE8(v381[2]) = 0;
        v91 = sub_1002AC09C();
        if (v94 == 2)
        {
          v367 = 0;
          if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            v363 = 0;
            v364 = 0;
            v365 = 0;
            v366 = 0;
            v95 = v368;
            v96 = v358;
            goto LABEL_86;
          }

          v116 = *(&v381[1] + 1);
          v115 = *&v381[1];
          v365 = 0;
          v366 = 0;
          v363 = 0;
          v364 = 0;
          v369 = 0;
          v110 = v358;
          if (!(*&v381[0] >> 59))
          {
            goto LABEL_89;
          }
        }

        else
        {
          v97 = v92;
          v98 = v93;
          v99 = v94;
          v369 = 0;
          v366 = 0;
          v367 = 0;
          v364 = 0;
          v365 = 0;
          v363 = 0;
          do
          {
            v370 = v91;
            sub_1002AB9E4(v91, v97, v98, v99 & 1, v399);
            v103 = v399[0];
            v104 = v399[1];
            v105 = v399[2];
            v106 = v399[3];
            v107 = v400;
            v108 = v401;
            if (v400 >> 59 == 9)
            {

              v363 = v103;
              v364 = v104;
              v365 = v105;
              v366 = v106;
              v367 = v107;
              v369 = v108;
            }

            if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
            {
              if (*&v381[1])
              {
                v109 = (*(&v381[1] + 1) - *&v381[1]);
              }

              else
              {
                v109 = 0;
              }

              if ((v109 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_407;
              }

              sub_1002863C4(3, v368, 1, sub_100269B14, v374, 0, v109, *&v381[1], *(&v381[1] + 1));
              sub_100025F40(&v379, &qword_1005D6328, &qword_1004ECE90);
            }

            *&v379 = v103;
            *(&v379 + 1) = v104;
            *&v380 = v105;
            *(&v380 + 1) = v106;
            *&v381[0] = v107;
            *(&v381[0] + 1) = v108;
            *&v381[1] = v370;
            *(&v381[1] + 1) = v97;
            *&v381[2] = v98;
            BYTE8(v381[2]) = v99 & 1;
            v91 = sub_1002AC09C();
            v97 = v100;
            v98 = v101;
            v99 = v102;
          }

          while (v102 != 2);
          v110 = v358;
          if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            a5 = v334;
            v95 = v368;
            v50 = &type metadata for UnsafeRawBufferPointer;
            v111 = v369;
            if (!v369)
            {
              v96 = v358;
LABEL_86:
              LOBYTE(v375) = v95;
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              *&v383 = "Content-Type";
              *(&v383 + 1) = "";
              sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
              sub_1004A43F4();
              sub_1000197E0(&v383);
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              *&v383 = ": ";
              *(&v383 + 1) = "";
              sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
              sub_1004A43F4();
              sub_1000197E0(&v383);
              v376 = 14;
              sub_1002616C0(&v375, &v426, sub_100269B14, v374, v96, &v383);
              sub_1002652C0(v95, sub_100269B14);
              v112 = v383;
              v111 = 0;
              v113 = v95;
              if (!v95)
              {
LABEL_87:
                *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
                *&v385 = &protocol witness table for UnsafeRawBufferPointer;
                v114 = "";
                *&v383 = "\r\n";
LABEL_104:
                *(&v383 + 1) = v114;
                sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
                sub_1004A43F4();
                sub_1000197E0(&v383);
                v75 = v361;
                if (v112)
                {

                  sub_100051110(&v426);
                }

                else if (v111)
                {
                  v120 = v361;
                  v420 = v363;
                  v421 = v364;
                  v422 = v365;
                  v423 = v366;
                  v424 = v367;
                  v425 = v111;
                  v121 = sub_100271A2C();
                  if (v123 == 2)
                  {

                    sub_100051110(&v426);
                    v112 = 0;
                    v75 = v120;
                  }

                  else
                  {
                    v147 = v122;
                    if (v123)
                    {
                      if (v121)
                      {
                        v148 = v122 - v121;
                      }

                      else
                      {
                        v148 = 0;
                      }

                      if (v148 < 0)
                      {
                        goto LABEL_428;
                      }

                      v149 = v338;
                      v112 = sub_1002871D4(0, v148, v121, v147);
                      v338 = v149;
                    }

                    else
                    {
                      v112 = sub_10029E8D4(v121, v122);
                    }

                    sub_100051110(&v426);
                    v75 = v120;
                  }
                }

                else
                {
                  sub_100051110(&v426);
                  v112 = 0;
                }

                *&v383 = v112;
                sub_1002679EC(v359, v119);
                goto LABEL_395;
              }

LABEL_100:
              if (v113 == 1)
              {
                v118 = 13;
              }

              else
              {
                v118 = 10;
              }

              LOBYTE(v375) = v118;
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              *&v383 = &v375;
              v114 = v346;
              goto LABEL_104;
            }

            goto LABEL_98;
          }

          v116 = *(&v381[1] + 1);
          v115 = *&v381[1];
          a5 = v334;
          v50 = &type metadata for UnsafeRawBufferPointer;
          if (!(*&v381[0] >> 59))
          {
LABEL_89:
            if (v340 != 1)
            {
              if (v369)
              {
                v385 = v381[0];
                v386[0] = v381[1];
                *(v386 + 9) = *(&v381[1] + 9);
                v383 = v379;
                v384 = v380;
                sub_10000E268(&v383, &v375, &qword_1005D6330, &qword_1004ECEA0);
                v112 = 0;
              }

              else
              {
                v239 = v368;
                v372[0] = v368;
                v377 = &type metadata for UnsafeRawBufferPointer;
                v378 = &protocol witness table for UnsafeRawBufferPointer;
                v375 = "Content-Type";
                v376 = "";
                sub_10002587C(&v375, &type metadata for UnsafeRawBufferPointer);
                sub_10000E268(&v379, &v383, &qword_1005D6328, &qword_1004ECE90);
                v240 = v358;
                sub_1004A43F4();
                sub_1000197E0(&v375);
                *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
                *&v385 = &protocol witness table for UnsafeRawBufferPointer;
                *&v383 = ": ";
                *(&v383 + 1) = "";
                sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
                sub_1004A43F4();
                sub_1000197E0(&v383);
                v373 = 14;
                sub_1002616C0(v372, &v426, sub_100269B14, v374, v240, &v383);
                sub_1002652C0(v239, sub_100269B14);
                v112 = v383;
              }

              if (v115)
              {
                v241 = v116 - v115;
              }

              else
              {
                v241 = 0;
              }

              if (v241 < 0)
              {
                goto LABEL_417;
              }

              v242 = v368;
              sub_1002863C4(3, v368, 1, sub_100269B14, v374, 0, v241, v115, v116);
              v111 = v369;
              v113 = v242;
              if (!v242)
              {
                goto LABEL_87;
              }

              goto LABEL_100;
            }

            v111 = v369;
            if (v369)
            {
              v112 = 0;
              v95 = v368;
            }

            else
            {
              v95 = v368;
              LOBYTE(v375) = v368;
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              *&v383 = "Content-Type";
              *(&v383 + 1) = "";
              sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
              sub_1004A43F4();
              sub_1000197E0(&v383);
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              *&v383 = ": ";
              *(&v383 + 1) = "";
              sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
              sub_1004A43F4();
              sub_1000197E0(&v383);
              v376 = 14;
              sub_1002616C0(&v375, &v426, sub_100269B14, v374, v110, &v383);
              sub_1002652C0(v95, sub_100269B14);
              v112 = v383;
            }

            goto LABEL_99;
          }
        }

        sub_100025F40(&v379, &qword_1005D6328, &qword_1004ECE90);
        if (v115)
        {
          v117 = v116 - v115;
        }

        else
        {
          v117 = 0;
        }

        if (v117 < 0)
        {
          goto LABEL_410;
        }

        v95 = v368;
        sub_1002863C4(3, v368, 1, sub_100269B14, v374, 0, v117, v115, v116);
        v111 = v369;
        if (!v369)
        {
          LOBYTE(v375) = v95;
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = "Content-Type";
          *(&v383 + 1) = "";
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = ": ";
          *(&v383 + 1) = "";
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
          v376 = 14;
          sub_1002616C0(&v375, &v426, sub_100269B14, v374, v110, &v383);
          sub_1002652C0(v95, sub_100269B14);
          v112 = v383;
LABEL_99:
          v113 = v95;
          if (!v95)
          {
            goto LABEL_87;
          }

          goto LABEL_100;
        }

LABEL_98:
        v112 = 0;
        goto LABEL_99;
      }
    }

    else
    {
      v62 = *v58;
      v63 = v58[1];
      v64 = v63 >> 62;
      if ((v63 >> 62) > 1)
      {
        if (v64 != 2)
        {
          sub_100014D40(v62, v63);
          goto LABEL_69;
        }

        v66 = *(v62 + 16);
        v67 = *(v62 + 24);
        sub_100014D40(v62, v63);
      }

      else if (v64)
      {
        v76 = *v58;
        sub_100014D40(v62, v63);
        v66 = v76;
        v67 = v76 >> 32;
      }

      else
      {
        v65 = v58[1];
        sub_100014D40(v62, v63);
        v66 = 0;
        v67 = BYTE6(v65);
      }

      if (v66 == v67)
      {
        goto LABEL_69;
      }
    }

    v77 = v337;
    sub_10026796C(v359, v337, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v78 = v344;
      v79 = (*v342)(v12, v77, v344);
      v80 = v12;
      v81 = v78;
      __chkstk_darwin(v79);
      v325 = v80;
      v326 = sub_100269AF8;
      v327 = &v325;
      sub_10000C9C0(&qword_1005D6320, &qword_1004EA010);
      v82 = v338;
      sub_1004A5314();
      v338 = v82;
      if (v82)
      {

        (*v343)(v80, v81);
        __break(1u);
        return;
      }

      sub_1002679EC(v359, v83);
      (*v343)(v80, v81);
      v50 = &type metadata for UnsafeRawBufferPointer;
      v75 = v361;
      goto LABEL_395;
    }

    v85 = *v77;
    v84 = v77[1];
    v86 = v84 >> 62;
    v348 = v329;
    v332 = v85;
    v333 = v84;
    if ((v84 >> 62) <= 1)
    {
      if (!v86)
      {
        v371[0] = v85;
        LOWORD(v371[1]) = v84;
        BYTE2(v371[1]) = BYTE2(v84);
        BYTE3(v371[1]) = BYTE3(v84);
        BYTE4(v371[1]) = BYTE4(v84);
        BYTE5(v371[1]) = BYTE5(v84);
        v87 = memchr(v371, 10, BYTE6(v84));
        if (!v87 || (v88 = v87 - v371, v87 - v371 < 0))
        {
          v90 = BYTE6(v84);
          goto LABEL_278;
        }

        v89 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_411;
        }

        if (BYTE6(v84) < v89)
        {
          v90 = BYTE6(v84);
          a5 = v334;
          goto LABEL_278;
        }

        if (v89 < v88)
        {
          goto LABEL_412;
        }

        if (v87 == v371)
        {
          v252 = 0;
        }

        else if (*(v371 + v88 - 1) == 13)
        {
          v252 = v88 - 1;
        }

        else
        {
          v252 = v87 - v371;
        }

        while (1)
        {
          v254 = v371 + v89;
          v255 = memchr(v371 + v89, 10, BYTE6(v84) - v89);
          if (!v255)
          {
            goto LABEL_277;
          }

          v256 = v255 - v254;
          if (v255 - v254 < 0)
          {
            goto LABEL_277;
          }

          v257 = v256 + 1;
          if (__OFADD__(v256, 1))
          {
            goto LABEL_411;
          }

          if (BYTE6(v84) - v89 < v257)
          {
LABEL_277:
            v90 = BYTE6(v84);
            a5 = v334;
            goto LABEL_278;
          }

          v258 = v256 + v89;
          if (__OFADD__(v256, v89))
          {
            goto LABEL_413;
          }

          v90 = v257 + v89;
          if (__OFADD__(v257, v89))
          {
            goto LABEL_414;
          }

          if (v257 < v256 || v90 < v258)
          {
            goto LABEL_412;
          }

          if (v89 < v258)
          {
            if (v258 > BYTE6(v84))
            {
              goto LABEL_425;
            }

            if (*(v371 + v258 - 1) == 13)
            {
              --v258;
            }
          }

          if (v89 == v258)
          {
            break;
          }

          if (BYTE6(v84) < v90)
          {
            goto LABEL_415;
          }

          v252 = v258;
          v259 = v90 < v89;
          v89 += v257;
          if (v259)
          {
            goto LABEL_416;
          }
        }

        if (v90 < v252 || BYTE6(v84) < v90)
        {
          goto LABEL_438;
        }

        v259 = v90 < v89;
        a5 = v334;
        v50 = 0x1FFFFFFF0ELL;
        if (v259)
        {
          __break(1u);
LABEL_405:
          sub_100267804(a1);
          *(&v388 + 1) = v50;
          *&v389 = &protocol witness table for UnsafeRawBufferPointer;
          *&v387 = "--";
          *(&v387 + 1) = "";
          sub_10002587C(&v387, v50);
          sub_1004A43F4();
          sub_1000197E0(&v387);
          sub_1002699A0(v357);
          *(&v388 + 1) = v50;
          *&v389 = &protocol witness table for UnsafeRawBufferPointer;
          *&v387 = "--";
          *(&v387 + 1) = "";
          sub_10002587C(&v387, v50);
          sub_1004A43F4();
          sub_1000197E0(&v387);
          sub_100267804(a1);
          return;
        }

LABEL_278:
        sub_100296A78(3, 0, BYTE6(v84), v371, v371 + BYTE6(v84), v90);
        LODWORD(v365) = v260;
        v369 = v261;
        v331 = v262;
        v264 = v263;
        v462[8] = v434;
        v462[9] = v435;
        v462[10] = v436;
        v462[4] = v430;
        v462[5] = v431;
        v462[6] = v432;
        v462[7] = v433;
        v462[0] = v426;
        v462[1] = v427;
        v462[2] = v428;
        v463 = v437;
        v462[3] = v429;
        v265 = sub_10000FE88(v462);
        UInt32.init(_:)(v462);
        if (v264 < 0)
        {
          goto LABEL_424;
        }

        if (v369)
        {
          v266 = v369 + v264;
        }

        else
        {
          v266 = 0;
        }

        sub_1002AADD4(v369, v266, v365, v382);
        sub_1000510B4(&v426, &v383);
        v379 = 0u;
        v380 = 0u;
        *&v381[0] = 0x1FFFFFFF0ELL;
        *(v381 + 8) = 0u;
        *(&v381[1] + 8) = 0u;
        BYTE8(v381[2]) = 0;
        v370 = sub_1002AC09C();
        if (v269 == 2)
        {
          v364 = 0;
          v270 = 0;
          if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            v335 = 0;
            v336 = 0;
            v340 = 0;
            v363 = 0;
            v271 = v368;
            v272 = v358;
            v50 = &type metadata for UnsafeRawBufferPointer;
            goto LABEL_319;
          }

          v330 = v265;
          v298 = *(&v381[1] + 1);
          v297 = *&v381[1];
          v363 = 0;
          v340 = 0;
          v335 = 0;
          v336 = 0;
          if (!(*&v381[0] >> 59))
          {
LABEL_304:
            if (v330 == 1)
            {
              if (v270)
              {
                v236 = 0;
                v50 = &type metadata for UnsafeRawBufferPointer;
                goto LABEL_307;
              }

              v301 = v368;
              goto LABEL_368;
            }

            if (v270)
            {
              v385 = v381[0];
              v386[0] = v381[1];
              *(v386 + 9) = *(&v381[1] + 9);
              v383 = v379;
              v384 = v380;
              sub_10000E268(&v383, &v375, &qword_1005D6330, &qword_1004ECEA0);
              v236 = 0;
            }

            else
            {
              v317 = v368;
              v372[0] = v368;
              v377 = &type metadata for UnsafeRawBufferPointer;
              v378 = &protocol witness table for UnsafeRawBufferPointer;
              v375 = "Content-Type";
              v376 = "";
              sub_10002587C(&v375, &type metadata for UnsafeRawBufferPointer);
              v367 = 0;
              sub_10000E268(&v379, &v383, &qword_1005D6328, &qword_1004ECE90);
              v270 = v367;
              sub_1004A43F4();
              sub_1000197E0(&v375);
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              *&v383 = ": ";
              *(&v383 + 1) = "";
              sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
              sub_1004A43F4();
              sub_1000197E0(&v383);
              v373 = 14;
              sub_1002616C0(v372, &v426, sub_100269B14, v374, v358, &v383);
              sub_1002652C0(v317, sub_100269B14);
              v236 = v383;
            }

            if (v297)
            {
              v318 = v298 - v297;
            }

            else
            {
              v318 = 0;
            }

            if (v318 < 0)
            {
              goto LABEL_434;
            }

            v301 = v368;
            sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, v318, v297, v298);
            goto LABEL_375;
          }
        }

        else
        {
          v273 = v267;
          v274 = v268;
          v275 = v269;
          v330 = v265;
          v367 = 0;
          v363 = 0;
          v364 = 0;
          v340 = 0;
          v335 = 0;
          v336 = 0;
          v276 = 0;
          do
          {
            sub_1002AB9E4(v370, v273, v274, v275 & 1, &v408);
            v282 = v408;
            v283 = v409;
            v278 = v410;
            v284 = v411;
            v285 = v412;
            v286 = v413;
            if (v412 >> 59 == 9)
            {
              v366 = v413;
              v287 = v275;
              v288 = v412;
              v289 = v274;
              v290 = v273;
              v291 = v411;
              v292 = v408;
              v293 = v409;
              v294 = v410;

              v278 = v294;
              v283 = v293;
              v282 = v292;
              v284 = v291;
              v273 = v290;
              v274 = v289;
              v285 = v288;
              v275 = v287;
              v286 = v366;
              v335 = v282;
              v336 = v283;
              v340 = v278;
              v363 = v284;
              v364 = v285;
              v367 = v366;
            }

            if (!(v276 & 1 | (v370 == 0)) && v369 && &v370[-v369] >= 1)
            {
              v295 = v278;
              sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, &v370[-v369], v369, v331);
              v278 = v295;
            }

            if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
            {
              if (*&v381[1])
              {
                v296 = (*(&v381[1] + 1) - *&v381[1]);
              }

              else
              {
                v296 = 0;
              }

              if ((v296 & 0x8000000000000000) != 0)
              {
                goto LABEL_409;
              }

              v277 = v278;
              sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, v296, *&v381[1], *(&v381[1] + 1));
              sub_100025F40(&v379, &qword_1005D6328, &qword_1004ECE90);
              v278 = v277;
            }

            *&v379 = v282;
            *(&v379 + 1) = v283;
            *&v380 = v278;
            *(&v380 + 1) = v284;
            *&v381[0] = v285;
            *(&v381[0] + 1) = v286;
            *&v381[1] = v370;
            *(&v381[1] + 1) = v273;
            *&v381[2] = v274;
            BYTE8(v381[2]) = v275 & 1;
            v370 = sub_1002AC09C();
            v273 = v279;
            v274 = v280;
            v275 = v281;
            v276 = 1;
          }

          while (v281 != 2);
          if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            a5 = v334;
            v50 = &type metadata for UnsafeRawBufferPointer;
            v270 = v367;
            if (!v367)
            {
              v271 = v368;
              v272 = v358;
LABEL_319:
              LOBYTE(v375) = v271;
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              *&v383 = "Content-Type";
              *(&v383 + 1) = "";
              sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
              sub_1004A43F4();
              sub_1000197E0(&v383);
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              *&v383 = ": ";
              *(&v383 + 1) = "";
              sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
              sub_1004A43F4();
              sub_1000197E0(&v383);
              v376 = 14;
              sub_1002616C0(&v375, &v426, sub_100269B14, v374, v272, &v383);
              sub_1002652C0(v271, sub_100269B14);
              v236 = v383;
              v270 = 0;
              v299 = v271;
              if (!v271)
              {
LABEL_320:
                *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
                *&v385 = &protocol witness table for UnsafeRawBufferPointer;
                v302 = "";
                *&v383 = "\r\n";
                goto LABEL_381;
              }

LABEL_377:
              if (v299 == 1)
              {
                v319 = 13;
              }

              else
              {
                v319 = 10;
              }

              LOBYTE(v375) = v319;
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              *&v383 = &v375;
              v302 = v346;
LABEL_381:
              *(&v383 + 1) = v302;
              sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
              sub_1004A43F4();
              sub_1000197E0(&v383);
              v75 = v361;
              if (!v236)
              {
                if (v270)
                {
                  v306 = v361;
                  v444 = v335;
                  v445 = v336;
                  v446 = v340;
                  v447 = v363;
                  v448 = v364;
                  v449 = v270;
                  v307 = sub_100271A2C();
                  if (v321 == 2)
                  {
                    goto LABEL_384;
                  }

                  v310 = v320;
                  if (v321)
                  {
                    if (v307)
                    {
                      v311 = v320 - v307;
                    }

                    else
                    {
                      v311 = 0;
                    }

                    if (v311 < 0)
                    {
                      goto LABEL_437;
                    }

                    goto LABEL_391;
                  }

LABEL_392:
                  v236 = sub_10029E8D4(v307, v310);
                  v75 = v306;
                  goto LABEL_393;
                }

LABEL_385:
                sub_100051110(&v426);
                v236 = 0;
                goto LABEL_394;
              }

LABEL_393:

              sub_100051110(&v426);
              goto LABEL_394;
            }

            v236 = 0;
LABEL_307:
            v299 = v368;
            if (!v368)
            {
              goto LABEL_320;
            }

            goto LABEL_377;
          }

          v298 = *(&v381[1] + 1);
          v297 = *&v381[1];
          a5 = v334;
          v270 = v367;
          if (!(*&v381[0] >> 59))
          {
            goto LABEL_304;
          }
        }

        sub_100025F40(&v379, &qword_1005D6328, &qword_1004ECE90);
        if (v297)
        {
          v300 = v298 - v297;
        }

        else
        {
          v300 = 0;
        }

        if (v300 < 0)
        {
          goto LABEL_431;
        }

        v301 = v368;
        sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, v300, v297, v298);
        if (!v270)
        {
LABEL_368:
          LOBYTE(v375) = v301;
          v50 = &type metadata for UnsafeRawBufferPointer;
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = "Content-Type";
          *(&v383 + 1) = "";
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = ": ";
          *(&v383 + 1) = "";
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
          v376 = 14;
          sub_1002616C0(&v375, &v426, sub_100269B14, v374, v358, &v383);
          sub_1002652C0(v301, sub_100269B14);
          v236 = v383;
          goto LABEL_376;
        }

        v236 = 0;
LABEL_375:
        v50 = &type metadata for UnsafeRawBufferPointer;
LABEL_376:
        v299 = v301;
        if (!v301)
        {
          goto LABEL_320;
        }

        goto LABEL_377;
      }

      if (v85 >> 32 < v85)
      {
        goto LABEL_419;
      }

      v150 = sub_1004A40D4();
      if (v150)
      {
        v151 = sub_1004A4104();
        if (__OFSUB__(v85, v151))
        {
          goto LABEL_427;
        }

        v150 += v85 - v151;
      }

      v152 = sub_1004A40F4();
      if (v152 >= (v85 >> 32) - v85)
      {
        v153 = (v85 >> 32) - v85;
      }

      else
      {
        v153 = v152;
      }

      if (v150)
      {
        v154 = v153;
      }

      else
      {
        v154 = 0;
      }

      if (v154 < 0)
      {
        goto LABEL_421;
      }

      v155 = v153 + v150;
      if (v150)
      {
        v156 = v155;
      }

      else
      {
        v156 = 0;
      }

      sub_100287BA8(3u, 0, v154, v150);
      if (v158)
      {
        v159 = v154;
      }

      else
      {
        v159 = v157;
      }

      sub_100296A78(3, 0, v154, v150, v156, v159);
      LODWORD(v365) = v160;
      v369 = v161;
      v331 = v162;
      v164 = v163;
      v464[8] = v434;
      v464[9] = v435;
      v464[10] = v436;
      v464[4] = v430;
      v464[5] = v431;
      v464[6] = v432;
      v464[7] = v433;
      v464[0] = v426;
      v464[1] = v427;
      v464[2] = v428;
      v465 = v437;
      v464[3] = v429;
      v165 = sub_10000FE88(v464);
      UInt32.init(_:)(v464);
      if (v164 < 0)
      {
        goto LABEL_423;
      }

      if (v369)
      {
        v203 = v369 + v164;
      }

      else
      {
        v203 = 0;
      }

      sub_1002AADD4(v369, v203, v365, v382);
      sub_1000510B4(&v426, &v383);
      v379 = 0u;
      v380 = 0u;
      *&v381[0] = 0x1FFFFFFF0ELL;
      *(v381 + 8) = 0u;
      *(&v381[1] + 8) = 0u;
      BYTE8(v381[2]) = 0;
      v370 = sub_1002AC09C();
      if (v206 == 2)
      {
        v364 = 0;
        v207 = 0;
        if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          v335 = 0;
          v336 = 0;
          v340 = 0;
          v363 = 0;
          v208 = v368;
          v209 = v358;
          v50 = &type metadata for UnsafeRawBufferPointer;
          goto LABEL_257;
        }

        v330 = v165;
        v246 = *(&v381[1] + 1);
        v245 = *&v381[1];
        v363 = 0;
        v340 = 0;
        v335 = 0;
        v336 = 0;
        if (!(*&v381[0] >> 59))
        {
LABEL_228:
          if (v330 == 1)
          {
            if (v207)
            {
              v236 = 0;
              v50 = &type metadata for UnsafeRawBufferPointer;
              goto LABEL_231;
            }

            v251 = v368;
            goto LABEL_345;
          }

          if (v207)
          {
            v385 = v381[0];
            v386[0] = v381[1];
            *(v386 + 9) = *(&v381[1] + 9);
            v383 = v379;
            v384 = v380;
            sub_10000E268(&v383, &v375, &qword_1005D6330, &qword_1004ECEA0);
            v236 = 0;
          }

          else
          {
            v312 = v368;
            v372[0] = v368;
            v377 = &type metadata for UnsafeRawBufferPointer;
            v378 = &protocol witness table for UnsafeRawBufferPointer;
            v375 = "Content-Type";
            v376 = "";
            sub_10002587C(&v375, &type metadata for UnsafeRawBufferPointer);
            v367 = 0;
            sub_10000E268(&v379, &v383, &qword_1005D6328, &qword_1004ECE90);
            v207 = v367;
            sub_1004A43F4();
            sub_1000197E0(&v375);
            *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v385 = &protocol witness table for UnsafeRawBufferPointer;
            *&v383 = ": ";
            *(&v383 + 1) = "";
            sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
            sub_1004A43F4();
            sub_1000197E0(&v383);
            v373 = 14;
            sub_1002616C0(v372, &v426, sub_100269B14, v374, v358, &v383);
            sub_1002652C0(v312, sub_100269B14);
            v236 = v383;
          }

          if (v245)
          {
            v313 = v246 - v245;
          }

          else
          {
            v313 = 0;
          }

          if (v313 < 0)
          {
            goto LABEL_433;
          }

          v251 = v368;
          sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, v313, v245, v246);
          goto LABEL_352;
        }
      }

      else
      {
        v210 = v204;
        v211 = v205;
        v212 = v206;
        v330 = v165;
        v367 = 0;
        v363 = 0;
        v364 = 0;
        v340 = 0;
        v335 = 0;
        v336 = 0;
        v213 = 0;
        do
        {
          sub_1002AB9E4(v370, v210, v211, v212 & 1, &v414);
          v217 = v414;
          v218 = v415;
          v219 = v416;
          v220 = v417;
          v221 = v418;
          v222 = v419;
          if (v418 >> 59 == 9)
          {
            v366 = v419;
            v223 = v212;
            v224 = v418;
            v225 = v211;
            v226 = v210;
            v227 = v415;
            v228 = v414;
            v229 = v417;
            v230 = v416;

            v219 = v230;
            v220 = v229;
            v217 = v228;
            v218 = v227;
            v210 = v226;
            v211 = v225;
            v221 = v224;
            v212 = v223;
            v222 = v366;
            v335 = v217;
            v336 = v218;
            v340 = v219;
            v363 = v220;
            v364 = v221;
            v367 = v366;
          }

          if (!(v213 & 1 | (v370 == 0)) && v369 && &v370[-v369] >= 1)
          {
            v231 = v219;
            sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, &v370[-v369], v369, v331);
            v219 = v231;
          }

          if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
          {
            if (*&v381[1])
            {
              v232 = (*(&v381[1] + 1) - *&v381[1]);
            }

            else
            {
              v232 = 0;
            }

            if ((v232 & 0x8000000000000000) != 0)
            {
              goto LABEL_408;
            }

            v233 = v219;
            sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, v232, *&v381[1], *(&v381[1] + 1));
            sub_100025F40(&v379, &qword_1005D6328, &qword_1004ECE90);
            v219 = v233;
          }

          *&v379 = v217;
          *(&v379 + 1) = v218;
          *&v380 = v219;
          *(&v380 + 1) = v220;
          *&v381[0] = v221;
          *(&v381[0] + 1) = v222;
          *&v381[1] = v370;
          *(&v381[1] + 1) = v210;
          *&v381[2] = v211;
          BYTE8(v381[2]) = v212 & 1;
          v370 = sub_1002AC09C();
          v210 = v214;
          v211 = v215;
          v212 = v216;
          v213 = 1;
        }

        while (v216 != 2);
        if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          a5 = v334;
          v50 = &type metadata for UnsafeRawBufferPointer;
          v207 = v367;
          if (!v367)
          {
            v208 = v368;
            v209 = v358;
LABEL_257:
            LOBYTE(v375) = v208;
            *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v385 = &protocol witness table for UnsafeRawBufferPointer;
            *&v383 = "Content-Type";
            *(&v383 + 1) = "";
            sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
            sub_1004A43F4();
            sub_1000197E0(&v383);
            *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v385 = &protocol witness table for UnsafeRawBufferPointer;
            *&v383 = ": ";
            *(&v383 + 1) = "";
            sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
            sub_1004A43F4();
            sub_1000197E0(&v383);
            v376 = 14;
            sub_1002616C0(&v375, &v426, sub_100269B14, v374, v209, &v383);
            sub_1002652C0(v208, sub_100269B14);
            v236 = v383;
            v207 = 0;
            v247 = v208;
            if (!v208)
            {
LABEL_258:
              *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
              *&v385 = &protocol witness table for UnsafeRawBufferPointer;
              v253 = "";
              *&v383 = "\r\n";
              goto LABEL_358;
            }

LABEL_354:
            if (v247 == 1)
            {
              v314 = 13;
            }

            else
            {
              v314 = 10;
            }

            LOBYTE(v375) = v314;
            *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v385 = &protocol witness table for UnsafeRawBufferPointer;
            *&v383 = &v375;
            v253 = v346;
LABEL_358:
            *(&v383 + 1) = v253;
            sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
            sub_1004A43F4();
            sub_1000197E0(&v383);
            v75 = v361;
            if (v236)
            {
              goto LABEL_393;
            }

            if (!v207)
            {
              goto LABEL_385;
            }

            v306 = v361;
            v450 = v335;
            v451 = v336;
            v452 = v340;
            v453 = v363;
            v454 = v364;
            v455 = v207;
            v307 = sub_100271A2C();
            if (v316 != 2)
            {
              v310 = v315;
              if ((v316 & 1) == 0)
              {
                goto LABEL_392;
              }

              if (v307)
              {
                v311 = v315 - v307;
              }

              else
              {
                v311 = 0;
              }

              if (v311 < 0)
              {
                goto LABEL_436;
              }

              goto LABEL_391;
            }

            goto LABEL_384;
          }

          v236 = 0;
LABEL_231:
          v247 = v368;
          if (!v368)
          {
            goto LABEL_258;
          }

          goto LABEL_354;
        }

        v246 = *(&v381[1] + 1);
        v245 = *&v381[1];
        a5 = v334;
        v207 = v367;
        if (!(*&v381[0] >> 59))
        {
          goto LABEL_228;
        }
      }

      sub_100025F40(&v379, &qword_1005D6328, &qword_1004ECE90);
      if (v245)
      {
        v250 = v246 - v245;
      }

      else
      {
        v250 = 0;
      }

      if (v250 < 0)
      {
        goto LABEL_430;
      }

      v251 = v368;
      sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, v250, v245, v246);
      if (!v207)
      {
LABEL_345:
        LOBYTE(v375) = v251;
        v50 = &type metadata for UnsafeRawBufferPointer;
        *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v385 = &protocol witness table for UnsafeRawBufferPointer;
        *&v383 = "Content-Type";
        *(&v383 + 1) = "";
        sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v383);
        *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v385 = &protocol witness table for UnsafeRawBufferPointer;
        *&v383 = ": ";
        *(&v383 + 1) = "";
        sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v383);
        v376 = 14;
        sub_1002616C0(&v375, &v426, sub_100269B14, v374, v358, &v383);
        sub_1002652C0(v251, sub_100269B14);
        v236 = v383;
        goto LABEL_353;
      }

      v236 = 0;
LABEL_352:
      v50 = &type metadata for UnsafeRawBufferPointer;
LABEL_353:
      v247 = v251;
      if (!v251)
      {
        goto LABEL_258;
      }

      goto LABEL_354;
    }

    if (v86 == 2)
    {
      v124 = *(v85 + 16);
      v125 = *(v85 + 24);
      v126 = sub_1004A40D4();
      if (v126)
      {
        v127 = sub_1004A4104();
        if (__OFSUB__(v124, v127))
        {
          goto LABEL_426;
        }

        v126 += v124 - v127;
      }

      v128 = __OFSUB__(v125, v124);
      v129 = v125 - v124;
      if (v128)
      {
        goto LABEL_420;
      }

      v130 = sub_1004A40F4();
      if (v130 >= v129)
      {
        v131 = v129;
      }

      else
      {
        v131 = v130;
      }

      if (v126)
      {
        v132 = v131;
      }

      else
      {
        v132 = 0;
      }

      if (v132 < 0)
      {
        goto LABEL_422;
      }

      v133 = v131 + v126;
      if (v126)
      {
        v134 = v133;
      }

      else
      {
        v134 = 0;
      }

      sub_100287BA8(3u, 0, v132, v126);
      if (v136)
      {
        v137 = v132;
      }

      else
      {
        v137 = v135;
      }

      sub_100296A78(3, 0, v132, v126, v134, v137);
      v139 = v138;
      v141 = v140;
      v143 = v142;
      v145 = v144;
      v466[8] = v434;
      v466[9] = v435;
      v466[10] = v436;
      v466[4] = v430;
      v466[5] = v431;
      v466[6] = v432;
      v466[7] = v433;
      v466[0] = v426;
      v466[1] = v427;
      v466[2] = v428;
      v467 = v437;
      v466[3] = v429;
      if (sub_10000FE88(v466) == 1)
      {
        UInt32.init(_:)(v466);
        v146 = 0;
      }

      else
      {
        UInt32.init(_:)(v466);
        v146 = 1;
      }

      v50 = &type metadata for UnsafeRawBufferPointer;
      *&v379 = 0;
      v200 = swift_allocObject();
      *(v200 + 16) = &v379;
      sub_1000510B4(&v426, &v383);
      sub_10029E950(v368, v146, 1, sub_100269960, v200, sub_100269B14, v374, v139, v141, v143, v145, &v426, v368, v358, sub_100269B14, v374);
      sub_100051110(&v426);

      sub_100014D40(v332, v333);
      v201 = v379;
      sub_1002679EC(v359, v202);
      *&v383 = v201;
      v75 = v361;
      goto LABEL_395;
    }

    memset(v371, 0, 14);
    sub_100296A78(3, 0, 0, v371, v371, 0);
    LODWORD(v365) = v166;
    v369 = v167;
    v331 = v168;
    v170 = v169;
    v460[8] = v434;
    v460[9] = v435;
    v460[10] = v436;
    v460[4] = v430;
    v460[5] = v431;
    v460[6] = v432;
    v460[7] = v433;
    v460[0] = v426;
    v460[1] = v427;
    v460[2] = v428;
    v461 = v437;
    v460[3] = v429;
    v330 = sub_10000FE88(v460);
    v50 = &type metadata for UnsafeRawBufferPointer;
    UInt32.init(_:)(v460);
    if (v170 < 0)
    {
      goto LABEL_418;
    }

    if (v369)
    {
      v171 = v369 + v170;
    }

    else
    {
      v171 = 0;
    }

    sub_1002AADD4(v369, v171, v365, v382);
    sub_1000510B4(&v426, &v383);
    v379 = 0u;
    v380 = 0u;
    *&v381[0] = 0x1FFFFFFF0ELL;
    *(v381 + 8) = 0u;
    *(&v381[1] + 8) = 0u;
    BYTE8(v381[2]) = 0;
    v370 = sub_1002AC09C();
    if (v174 == 2)
    {
      v364 = 0;
      v175 = 0;
      if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
      {
        v335 = 0;
        v336 = 0;
        v340 = 0;
        v363 = 0;
        goto LABEL_209;
      }

      v244 = *(&v381[1] + 1);
      v243 = *&v381[1];
      v363 = 0;
      v340 = 0;
      v335 = 0;
      v336 = 0;
      if (!(*&v381[0] >> 59))
      {
LABEL_223:
        if (v330 == 1)
        {
          if (v175)
          {
            goto LABEL_225;
          }

          v249 = v368;
          goto LABEL_322;
        }

        if (v175)
        {
          v385 = v381[0];
          v386[0] = v381[1];
          *(v386 + 9) = *(&v381[1] + 9);
          v383 = v379;
          v384 = v380;
          sub_10000E268(&v383, &v375, &qword_1005D6330, &qword_1004ECEA0);
          v236 = 0;
        }

        else
        {
          v303 = v368;
          v372[0] = v368;
          v377 = &type metadata for UnsafeRawBufferPointer;
          v378 = &protocol witness table for UnsafeRawBufferPointer;
          v375 = "Content-Type";
          v376 = "";
          sub_10002587C(&v375, &type metadata for UnsafeRawBufferPointer);
          v367 = 0;
          sub_10000E268(&v379, &v383, &qword_1005D6328, &qword_1004ECE90);
          v175 = v367;
          sub_1004A43F4();
          sub_1000197E0(&v375);
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = ": ";
          *(&v383 + 1) = "";
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
          v373 = 14;
          sub_1002616C0(v372, &v426, sub_100269B14, v374, v358, &v383);
          sub_1002652C0(v303, sub_100269B14);
          v236 = v383;
        }

        if (v243)
        {
          v304 = v244 - v243;
        }

        else
        {
          v304 = 0;
        }

        if (v304 < 0)
        {
          goto LABEL_432;
        }

        v249 = v368;
        sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, v304, v243, v244);
        goto LABEL_329;
      }
    }

    else
    {
      v176 = v172;
      v177 = v173;
      v178 = v174;
      v367 = 0;
      v363 = 0;
      v364 = 0;
      v340 = 0;
      v335 = 0;
      v336 = 0;
      v179 = 0;
      do
      {
        sub_1002AB9E4(v370, v176, v177, v178 & 1, &v402);
        v183 = v402;
        v184 = v403;
        v185 = v404;
        v186 = v405;
        v187 = v406;
        v188 = v407;
        if (v406 >> 59 == 9)
        {
          v366 = v407;
          v189 = v178;
          v190 = v406;
          v191 = v177;
          v192 = v176;
          v193 = v405;
          v194 = v404;
          v195 = v402;
          v196 = v403;

          v184 = v196;
          v183 = v195;
          v185 = v194;
          v186 = v193;
          v176 = v192;
          v177 = v191;
          v187 = v190;
          v178 = v189;
          v188 = v366;
          v335 = v183;
          v336 = v184;
          v340 = v185;
          v363 = v186;
          v364 = v187;
          v367 = v366;
        }

        if (!(v179 & 1 | (v370 == 0)) && v369 && &v370[-v369] >= 1)
        {
          v197 = v184;
          sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, &v370[-v369], v369, v331);
          v184 = v197;
        }

        if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
        {
          if (*&v381[1])
          {
            v198 = (*(&v381[1] + 1) - *&v381[1]);
          }

          else
          {
            v198 = 0;
          }

          if ((v198 & 0x8000000000000000) != 0)
          {
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
LABEL_419:
            __break(1u);
LABEL_420:
            __break(1u);
LABEL_421:
            __break(1u);
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
LABEL_424:
            __break(1u);
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
LABEL_427:
            __break(1u);
LABEL_428:
            __break(1u);
LABEL_429:
            __break(1u);
LABEL_430:
            __break(1u);
LABEL_431:
            __break(1u);
LABEL_432:
            __break(1u);
LABEL_433:
            __break(1u);
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
LABEL_437:
            __break(1u);
LABEL_438:
            __break(1u);
          }

          v199 = v184;
          sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, v198, *&v381[1], *(&v381[1] + 1));
          sub_100025F40(&v379, &qword_1005D6328, &qword_1004ECE90);
          v184 = v199;
        }

        *&v379 = v183;
        *(&v379 + 1) = v184;
        *&v380 = v185;
        *(&v380 + 1) = v186;
        *&v381[0] = v187;
        *(&v381[0] + 1) = v188;
        *&v381[1] = v370;
        *(&v381[1] + 1) = v176;
        *&v381[2] = v177;
        BYTE8(v381[2]) = v178 & 1;
        v370 = sub_1002AC09C();
        v176 = v180;
        v177 = v181;
        v178 = v182;
        v179 = 1;
      }

      while (v182 != 2);
      if ((*&v381[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
      {
        a5 = v334;
        v175 = v367;
        if (!v367)
        {
          v50 = &type metadata for UnsafeRawBufferPointer;
LABEL_209:
          v234 = v368;
          v235 = v358;
          LOBYTE(v375) = v368;
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = "Content-Type";
          *(&v383 + 1) = "";
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = ": ";
          *(&v383 + 1) = "";
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
          v376 = 14;
          sub_1002616C0(&v375, &v426, sub_100269B14, v374, v235, &v383);
          sub_1002652C0(v234, sub_100269B14);
          v236 = v383;
          v175 = 0;
          v237 = v234;
          if (!v234)
          {
LABEL_210:
            *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
            *&v385 = &protocol witness table for UnsafeRawBufferPointer;
            v238 = "";
            *&v383 = "\r\n";
            goto LABEL_335;
          }

LABEL_331:
          if (v237 == 1)
          {
            v305 = 13;
          }

          else
          {
            v305 = 10;
          }

          LOBYTE(v375) = v305;
          *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
          *&v385 = &protocol witness table for UnsafeRawBufferPointer;
          *&v383 = &v375;
          v238 = v346;
LABEL_335:
          *(&v383 + 1) = v238;
          sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v383);
          v75 = v361;
          if (v236)
          {
            goto LABEL_393;
          }

          if (!v175)
          {
            goto LABEL_385;
          }

          v306 = v361;
          v438 = v335;
          v439 = v336;
          v440 = v340;
          v441 = v363;
          v442 = v364;
          v443 = v175;
          v307 = sub_100271A2C();
          if (v309 != 2)
          {
            v310 = v308;
            if ((v309 & 1) == 0)
            {
              goto LABEL_392;
            }

            if (v307)
            {
              v311 = v308 - v307;
            }

            else
            {
              v311 = 0;
            }

            if (v311 < 0)
            {
              goto LABEL_435;
            }

LABEL_391:
            v322 = v338;
            v236 = sub_1002871D4(0, v311, v307, v310);
            v338 = v322;
            v75 = v306;
            goto LABEL_393;
          }

LABEL_384:

          sub_100051110(&v426);
          v236 = 0;
          v75 = v306;
LABEL_394:
          sub_100014D40(v332, v333);
          sub_1002679EC(v359, v323);
          *&v383 = v236;
LABEL_395:
          v68 = v383;
          a1 = v368;
          a4 = v358;
          goto LABEL_396;
        }

LABEL_225:
        v236 = 0;
        v50 = &type metadata for UnsafeRawBufferPointer;
        v237 = v368;
        if (!v368)
        {
          goto LABEL_210;
        }

        goto LABEL_331;
      }

      v244 = *(&v381[1] + 1);
      v243 = *&v381[1];
      a5 = v334;
      v175 = v367;
      if (!(*&v381[0] >> 59))
      {
        goto LABEL_223;
      }
    }

    sub_100025F40(&v379, &qword_1005D6328, &qword_1004ECE90);
    if (v243)
    {
      v248 = v244 - v243;
    }

    else
    {
      v248 = 0;
    }

    if (v248 < 0)
    {
      goto LABEL_429;
    }

    v249 = v368;
    sub_1002863C4(v365, v368, 1, sub_100269B14, v374, 0, v248, v243, v244);
    if (!v175)
    {
LABEL_322:
      LOBYTE(v375) = v249;
      v50 = &type metadata for UnsafeRawBufferPointer;
      *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v385 = &protocol witness table for UnsafeRawBufferPointer;
      *&v383 = "Content-Type";
      *(&v383 + 1) = "";
      sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v383);
      *(&v384 + 1) = &type metadata for UnsafeRawBufferPointer;
      *&v385 = &protocol witness table for UnsafeRawBufferPointer;
      *&v383 = ": ";
      *(&v383 + 1) = "";
      sub_10002587C(&v383, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v383);
      v376 = 14;
      sub_1002616C0(&v375, &v426, sub_100269B14, v374, v358, &v383);
      sub_1002652C0(v249, sub_100269B14);
      v236 = v383;
      goto LABEL_330;
    }

    v236 = 0;
LABEL_329:
    v50 = &type metadata for UnsafeRawBufferPointer;
LABEL_330:
    v237 = v249;
    if (!v249)
    {
      goto LABEL_210;
    }

    goto LABEL_331;
  }
}

uint64_t sub_10025FD88(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v20 = a3;
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v19[0] = a1;
  v19[1] = a2;
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = 0;
  v21[3] = v5;
  v22 = 256;

  do
  {
    while (1)
    {
      isStackAllocationSafe = sub_1004A5924();
      if (isStackAllocationSafe < 0)
      {
        goto LABEL_26;
      }

      v7 = isStackAllocationSafe;
      if (isStackAllocationSafe >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          break;
        }
      }

      __chkstk_darwin(isStackAllocationSafe);
      v9 = v19 - v8;
      v10 = v19 + v7 - v8;
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = v7;
      v11[4] = v9;
      v11[5] = v10;
      sub_100269618(&v22, v13, v21, v11);
      swift_beginAccess();
      v14 = *v12;
      v15 = *(v20 + 1);
      if (v15 < 1)
      {
        goto LABEL_14;
      }

      if (__OFADD__(v15, v14))
      {
        goto LABEL_25;
      }

      if (v15 + v14 < 79)
      {
LABEL_14:
        if (v14 < 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
        }

        v25 = &type metadata for UnsafeRawBufferPointer;
        v26 = &protocol witness table for UnsafeRawBufferPointer;
        v23 = v9;
        v24 = &v9[v14];
        sub_10002587C(&v23, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v23);

        if (v7 < v14)
        {
          goto LABEL_23;
        }

        v16 = v15 + v14;
        if (__OFADD__(v15, v14))
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_100267804(*v20);
        v25 = &type metadata for UnsafeRawBufferPointer;
        v26 = &protocol witness table for UnsafeRawBufferPointer;
        v23 = "\t";
        v24 = "";
        sub_10002587C(&v23, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v23);
        if (v14 < 0)
        {
          goto LABEL_27;
        }

        v25 = &type metadata for UnsafeRawBufferPointer;
        v26 = &protocol witness table for UnsafeRawBufferPointer;
        v23 = v9;
        v24 = &v9[v14];
        sub_10002587C(&v23, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v23);

        if (v7 < v14)
        {
          goto LABEL_28;
        }

        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_29;
        }
      }

      *(v20 + 1) = v16;
      if ((v22 & 0x100) != 0)
      {
      }
    }

    v17 = swift_slowAlloc();
    sub_100264B0C(v17, &v17[v7], 0, v20, &v22, v21, a4);
  }

  while ((v22 & 0x100) == 0);
}

uint64_t sub_100260088(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v8 = *(a3 + 16);

  v43 = a3;

  if (v8)
  {
    v9 = 0;
    v10 = a2 + 32;
    v11 = a3 + 32;
    v44 = a2 + 32;
    v45 = a2;
    v49 = a5;
    v47 = v8;
    do
    {
      if (v9 >= *(a2 + 16))
      {
        goto LABEL_40;
      }

      v12 = (v10 + 16 * v9);
      v14 = *v12;
      v13 = v12[1];
      v15 = (v11 + 16 * v9);
      v16 = *v15;
      v17 = v15[1];
      v56 = 0;
      LOBYTE(v55) = 0;
      swift_bridgeObjectRetain_n();

      v50 = v14;
      v51 = v13;
      sub_100265368(v14, v13, &v55, &v56);
      LOBYTE(v55) = 61;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_41;
      }

      ++v9;
      ++v56;
      sub_100265848(v16, v17, &v55, &v56);

      v18 = v56;
      if (v9 != v8)
      {
        v18 = (v56 + 1);
        if (__OFADD__(v56, 1))
        {
          goto LABEL_42;
        }
      }

      if (v18 < 79)
      {
        sub_100268404(160, 1, a4, v14, v13, v16, v17, v9 == v8, a5);

        continue;
      }

      v19 = sub_1004A5AB4();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if ((v19 ^ v21) < 0x4000)
      {

        a5 = v49;
        continue;
      }

      v52 = v23;
      v53 = v21;
      v54 = v19;
      v48 = v9;
      v26 = 0;
      v27 = *(a4 + 1);
      do
      {
        v56 = v50;
        v57 = v51;

        v62._countAndFlagsBits = 42;
        v62._object = 0xE100000000000000;
        sub_1004A5994(v62);
        v55 = v26;
        v63._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v63);

        v29 = v56;
        v28 = v57;
        v30 = swift_allocObject();
        *(v30 + 16) = 77;
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1004E9FE0;
        *(v31 + 32) = v60;
        *(v31 + 40) = &v61;
        sub_100264D48(" ", "", v31);

        sub_100268824(v29, v28, v30, v31);
        LOBYTE(v56) = 61;
        swift_beginAccess();
        v32 = *(v30 + 16) - 1;
        if (__OFSUB__(*(v30 + 16), 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        *(v30 + 16) = v32;
        sub_100264D48(&v56, &v56 + 1, v31);
        if (__OFSUB__(v32, 1))
        {
          goto LABEL_32;
        }

        v33 = sub_100266644(v54, v53, v52, v25, v32 - 1, v31);
        v35 = v34;
        v52 = v36;
        v38 = v37;
        swift_bridgeObjectRelease_n();
        v53 = v35;
        v54 = v33;
        v39 = (v33 ^ v35) >> 14;
        if (v48 != v47 || v39)
        {
          LOBYTE(v56) = 59;
          sub_100264D48(&v56, &v56 + 1, v31);
        }

        swift_beginAccess();
        v40 = *(v31 + 16);
        if (v27 < 1)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v27, v40))
        {
          goto LABEL_37;
        }

        if (v27 + v40 < 79)
        {
LABEL_24:
          if (v40 < 0)
          {
            goto LABEL_34;
          }

          v58 = &type metadata for UnsafeRawBufferPointer;
          v59 = &protocol witness table for UnsafeRawBufferPointer;
          v56 = v60;
          v57 = &v60[v40];
          sub_10002587C(&v56, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v56);

          if (v40 > 0xA1)
          {
            goto LABEL_35;
          }

          v41 = __OFADD__(v27, v40);
          v40 += v27;
          if (v41)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_100267804(*a4);
          v58 = &type metadata for UnsafeRawBufferPointer;
          v59 = &protocol witness table for UnsafeRawBufferPointer;
          v56 = "\t";
          v57 = "";
          sub_10002587C(&v56, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v56);
          if (v40 < 1)
          {
            goto LABEL_38;
          }

          v58 = &type metadata for UnsafeRawBufferPointer;
          v59 = &protocol witness table for UnsafeRawBufferPointer;
          v56 = &v60[1];
          v57 = &v60[v40];
          sub_10002587C(&v56, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v56);

          if (v40 > 0xA1)
          {
            goto LABEL_39;
          }
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_33;
        }

        ++v26;
        v27 = v40;
        v25 = v38;
      }

      while (v39);

      *(a4 + 1) = v40;
      v10 = v44;
      a2 = v45;
      v9 = v48;
      a5 = v49;
      v8 = v47;
      v11 = v43 + 32;
    }

    while (v9 != v8);
  }
}

uint64_t sub_100260678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v9 = *(a3 + 16);

  v43 = a3;

  if (v9)
  {
    v10 = 0;
    v45 = a2 + 32;
    v11 = a3 + 32;
    v44 = a2;
    v49 = a4;
    v50 = a5;
    v47 = v9;
    do
    {
      if (v10 >= *(a2 + 16))
      {
        goto LABEL_40;
      }

      v12 = (v45 + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = (v11 + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v57 = 0;
      LOBYTE(v56) = 0;
      swift_bridgeObjectRetain_n();

      v51 = v14;
      v52 = v13;
      sub_100265368(v14, v13, &v56, &v57);
      LOBYTE(v56) = 61;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_41;
      }

      ++v10;
      ++v57;
      sub_100265848(v16, v17, &v56, &v57);

      v18 = v57;
      if (v10 != v9)
      {
        v18 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_42;
        }
      }

      if (v18 <= 78)
      {

        sub_100265FD8(a4, a5, 160, 1, v46, v14, v13, v16, v17, v10 == v9);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        continue;
      }

      v19 = sub_1004A5AB4();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if ((v19 ^ v21) < 0x4000)
      {

        a4 = v49;
        a5 = v50;
        continue;
      }

      v53 = v23;
      v54 = v21;
      v55 = v19;
      v48 = v10;
      v26 = 0;
      v27 = *(v46 + 8);
      do
      {
        v57 = v51;
        v58 = v52;

        v61._countAndFlagsBits = 42;
        v61._object = 0xE100000000000000;
        sub_1004A5994(v61);
        v56 = v26;
        v62._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v62);

        v28 = v57;
        v29 = v58;
        v30 = swift_allocObject();
        *(v30 + 16) = 77;
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1004E9FE0;
        *(v31 + 32) = v59;
        *(v31 + 40) = &v60;
        sub_100264D48(" ", "", v31);
        sub_1002663AC(v28, v29, v30, sub_100269B30);
        LOBYTE(v57) = 61;
        swift_beginAccess();
        v32 = *(v30 + 16) - 1;
        if (__OFSUB__(*(v30 + 16), 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        *(v30 + 16) = v32;
        sub_100264D48(&v57, &v57 + 1, v31);
        if (__OFSUB__(v32, 1))
        {
          goto LABEL_32;
        }

        v33 = sub_100266644(v55, v54, v53, v25, v32 - 1, v31);
        v35 = v34;
        v53 = v36;
        v38 = v37;
        swift_bridgeObjectRelease_n();
        v54 = v35;
        v55 = v33;
        v39 = v33 ^ v35;
        if (v48 != v47 || v39 >> 14)
        {
          LOBYTE(v57) = 59;
          sub_100264D48(&v57, &v57 + 1, v31);
        }

        swift_beginAccess();
        v40 = *(v31 + 16);
        if (v27 <= 0)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v27, v40))
        {
          goto LABEL_37;
        }

        if (v27 + v40 < 79)
        {
LABEL_24:
          if (v40 < 0)
          {
            goto LABEL_34;
          }

          v49(v59, &v59[v40]);

          if (v40 > 0xA1)
          {
            goto LABEL_35;
          }

          v41 = __OFADD__(v27, v40);
          v40 += v27;
          if (v41)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1002652C0(*v46, v49);
          v49("\t", "");
          if (v40 < 1)
          {
            goto LABEL_38;
          }

          v49(&v59[1], &v59[v40]);

          if (v40 > 0xA1)
          {
            goto LABEL_39;
          }
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_33;
        }

        ++v26;
        v27 = v40;
        v25 = v38;
      }

      while (v39 >= 0x4000);

      *(v46 + 8) = v40;
      v11 = v43 + 32;
      a2 = v44;
      a4 = v49;
      a5 = v50;
      v9 = v47;
      v10 = v48;
    }

    while (v10 != v9);
  }
}

uint64_t sub_100260C20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v22 = *(a2 + 16);
  if (v22)
  {
    v3 = 0;
    v4 = (a2 + 40);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v3)
      {
        v9 = 161;
      }

      else
      {
        v9 = 160;
      }

      v10 = swift_bridgeObjectRetain_n();
      v20 = &v20;
      __chkstk_darwin(v10);
      v12 = &v20 - v11;
      v13 = &v20 + v9 - v11;
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = v9;
      v14[4] = v12;
      v14[5] = v13;
      if (v3)
      {
        sub_100264D48(" ", "", v14);
      }

      v23 = v7;
      v24 = v8;

      v15 = sub_1004A5AA4();
      sub_10026751C(v15, v16, v14);

      if (--v22)
      {
        LOBYTE(v23) = 44;
        sub_100264D48(&v23, &v23 + 1, v14);
      }

      swift_beginAccess();
      v17 = v14[2];
      v18 = *(v21 + 8);
      if (v18 < 1)
      {
        goto LABEL_18;
      }

      if (__OFADD__(v18, v17))
      {
        goto LABEL_29;
      }

      if (v18 + v17 < 79)
      {
LABEL_18:
        if (v17 < 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v25 = &type metadata for UnsafeRawBufferPointer;
        v26 = &protocol witness table for UnsafeRawBufferPointer;
        v23 = v12;
        v24 = &v12[v17];
        sub_10002587C(&v23, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v23);

        if (v9 < v17)
        {
          goto LABEL_27;
        }

        v6 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100267804(*v21);
        v25 = &type metadata for UnsafeRawBufferPointer;
        v26 = &protocol witness table for UnsafeRawBufferPointer;
        v23 = "\t";
        v24 = "";
        sub_10002587C(&v23, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v23);
        if (v3)
        {
          if (v17 < 1)
          {
            goto LABEL_31;
          }

          v19 = 1;
        }

        else
        {
          if (v17 < 0)
          {
            goto LABEL_32;
          }

          v19 = 0;
        }

        v25 = &type metadata for UnsafeRawBufferPointer;
        v26 = &protocol witness table for UnsafeRawBufferPointer;
        v23 = &v12[v19];
        v24 = &v12[v17];
        sub_10002587C(&v23, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v23);
        v5 = sub_1002881FC(v19, v17, v12, v13);

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_30;
        }
      }

      *(v21 + 8) = v6;
      result = swift_bridgeObjectRelease_n();
      --v3;
      v4 += 2;
    }

    while (v22);
  }

  return result;
}

uint64_t sub_100260F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a2;
  v13 = *(a2 + 144);
  v71[8] = *(a2 + 128);
  v71[9] = v13;
  v71[10] = *(a2 + 160);
  v72 = *(a2 + 176);
  v14 = *(a2 + 80);
  v71[4] = *(a2 + 64);
  v71[5] = v14;
  v15 = *(a2 + 112);
  v71[6] = *(a2 + 96);
  v71[7] = v15;
  v16 = *(a2 + 16);
  v71[0] = *a2;
  v71[1] = v16;
  v17 = *(a2 + 48);
  v71[2] = *(a2 + 32);
  v71[3] = v17;
  if (sub_10000FE88(v71) != 1)
  {
    v26 = UInt32.init(_:)(v71);
    v80 = v26[7];
    v81 = v26[8];
    v82 = v26[9];
    v83 = v26[10];
    v76 = v26[3];
    v77 = v26[4];
    v78 = v26[5];
    v79 = v26[6];
    v73 = *v26;
    v74 = v26[1];
    v75 = v26[2];
    if (!(v73 >> 62))
    {
      v7 = a1;
      a3 = a4;
      a4 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      a1 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v44 = HIBYTE(v5) & 0xF;
          if ((v6 & 0x1000000000000000) != 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v44 = a4 & 0xFFFFFFFFFFFFLL;
          if ((v6 & 0x1000000000000000) != 0)
          {
LABEL_66:
            v59 = sub_1004A59E4();
            v48 = v44 + v59;
            if (!__OFADD__(v44, v59))
            {
LABEL_50:
              v50 = v48 + 2;
              if (!__OFADD__(v48, 2))
              {

                sub_1000510B4(v10, __dst);
                sub_100267AFC(v50, 0, v7, a4, v5, a1, v6, &v73, a3);
                sub_100051110(v10);

                v51 = *(&v73 + 1);
                v53 = *(&v74 + 1);
                v52 = v74;
                v54 = v7;
                v55 = a3;
LABEL_54:
                result = sub_100260088(v51, v52, v53, v54, v55);
                goto LABEL_55;
              }

LABEL_72:
              __break(1u);
            }

            goto LABEL_68;
          }
        }

LABEL_45:
        if ((v6 & 0x2000000000000000) != 0)
        {
          v49 = HIBYTE(v6) & 0xF;
          v48 = v44 + v49;
          if (!__OFADD__(v44, v49))
          {
            goto LABEL_50;
          }
        }

        else
        {
          v48 = v44 + (a1 & 0xFFFFFFFFFFFFLL);
          if (!__OFADD__(v44, a1 & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_50;
          }
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_65:
      v44 = sub_1004A59E4();
      if ((v6 & 0x1000000000000000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v73 >> 62 != 1)
    {
      v5 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      if ((v44 & 0x1000000000000000) == 0)
      {
        if ((v44 & 0x2000000000000000) != 0)
        {
          v56 = HIBYTE(v44) & 0xF;
          v45 = v56 + 6;
          if (__OFADD__(v56, 6))
          {
            goto LABEL_71;
          }
        }

        else
        {
          v45 = (v5 & 0xFFFFFFFFFFFFLL) + 6;
          if (__OFADD__(v5 & 0xFFFFFFFFFFFFLL, 6))
          {
            goto LABEL_71;
          }
        }

LABEL_53:
        sub_1000510B4(v10, __dst);

        sub_100268EC8(v45, 0, a1, v5, v44, v6, &v73, a4);
        sub_100051110(v10);

        v51 = *(&v73 + 1);
        v53 = *(&v74 + 1);
        v52 = v74;
        v54 = a1;
        v55 = a4;
        goto LABEL_54;
      }

LABEL_69:
      v60 = sub_1004A59E4();
      v45 = v60 + 6;
      if (!__OFADD__(v60, 6))
      {
        goto LABEL_53;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    memcpy(__dst, ((v73 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    if ((*&__dst[8] & 0x1000000000000000) != 0)
    {
      goto LABEL_62;
    }

    if ((*&__dst[8] & 0x2000000000000000) != 0)
    {
      v47 = HIBYTE(*&__dst[8]) & 0xFLL;
      v27 = v47 + 9;
      if (!__OFADD__(v47, 9))
      {
LABEL_43:
        sub_1000510B4(v10, &v66);
        sub_100259990(__dst, &v66);
        sub_100268B04(v27, 0, a1, __dst, &v73, a4);
        sub_100051110(v10);
        sub_100260088(*(&v73 + 1), v74, *(&v74 + 1), a1, a4);
        result = sub_1002599EC(__dst);
LABEL_55:
        *a5 = 0;
        return result;
      }
    }

    else
    {
      v27 = (*__dst & 0xFFFFFFFFFFFFLL) + 9;
      if (!__OFADD__(*__dst & 0xFFFFFFFFFFFFLL, 9))
      {
        goto LABEL_43;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v18 = UInt32.init(_:)(v71);
  v19 = *(v18 + 32);
  v20 = *(v18 + 48);
  v21 = *(v18 + 16);
  *__dst = *v18;
  *&__dst[16] = v21;
  *&__dst[32] = v19;
  *&__dst[48] = v20;
  v23 = *(v18 + 80);
  v22 = *(v18 + 96);
  v24 = *(v18 + 64);
  *&__dst[112] = *(v18 + 112);
  *&__dst[80] = v23;
  *&__dst[96] = v22;
  *&__dst[64] = v24;
  if ((*&__dst[16] & 0x1000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&__dst[16] & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(*&__dst[16]) & 0xFLL;
    v25 = v28 + 10;
    if (!__OFADD__(v28, 10))
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

  v25 = (*&__dst[8] & 0xFFFFFFFFFFFFLL) + 10;
  if (__OFADD__(*&__dst[8] & 0xFFFFFFFFFFFFLL, 10))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    v58 = sub_1004A59E4();
    v27 = v58 + 9;
    if (!__OFADD__(v58, 9))
    {
      goto LABEL_43;
    }

    goto LABEL_64;
  }

LABEL_15:
  sub_100259A40(__dst, &v66);
  v62 = a1;
  sub_1002692CC(v25, 0, a1, __dst, a4);
  sub_100051110(v10);
  LOBYTE(v73) = 59;
  v69 = &type metadata for UnsafeRawBufferPointer;
  v70 = &protocol witness table for UnsafeRawBufferPointer;
  v66 = &v73;
  v67 = &v73 + 1;
  sub_10002587C(&v66, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v66);
  a1 = *&__dst[32];
  v63 = a4;
  v64 = a5;
  v61 = a3;
  if (*&__dst[32])
  {
    v10 = *&__dst[40];
    v29 = *&__dst[24];
  }

  else
  {
    sub_100266C9C(_swiftEmptyArrayStorage);
    v29 = v30;
    a1 = v31;
    v10 = v32;
  }

  v5 = 0x797261646E756F62;
  v66 = v29;
  v67 = a1;
  v68 = v10;
  a5 = *(v10 + 16);
  swift_retain_n();

  v65 = a5;
  if (!a5)
  {
LABEL_28:

    v38 = swift_allocObject();
    *(v38 + 16) = _swiftEmptyArrayStorage;
    v39 = v5;
    sub_100259A9C(v61, v38);
    sub_100259A9C(v61, v38);
    swift_beginAccess();
    sub_100259BC0(0xD000000000000016, 0x80000001004AD530);
    swift_endAccess();
    sub_100259A9C(v61, v38);
    v40 = *(v38 + 16);
    swift_bridgeObjectRetain_n();

    v41 = sub_1004A58D4();
    v43 = v42;

    sub_1002626BC(v41, v43, v39, 0xE800000000000000);
    goto LABEL_41;
  }

  a4 = 0;
  v6 = 0;
  while (1)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v57 = sub_1004A59E4();
      v25 = v57 + 10;
      if (__OFADD__(v57, 10))
      {
        goto LABEL_61;
      }

      goto LABEL_15;
    }

    if (v6 >= *(v10 + 16))
    {
      goto LABEL_58;
    }

    v33 = *(v10 + a4 + 32);
    v7 = *(v10 + a4 + 40);
    v34 = sub_1004A5814();
    a3 = v35;
    if (v34 == v5 && v35 == 0xE800000000000000)
    {

      goto LABEL_40;
    }

    a5 = v5;
    v37 = sub_1004A6D34();

    if (v37)
    {
      break;
    }

    ++v6;

    a4 += 16;
    v5 = a5;
    if (v65 == v6)
    {
      goto LABEL_28;
    }
  }

LABEL_40:

  v40 = sub_10015BC90(v33, v7);

LABEL_41:
  sub_100260088(v66, v67, v68, v62, v63);

  *v64 = v40;
  return result;
}