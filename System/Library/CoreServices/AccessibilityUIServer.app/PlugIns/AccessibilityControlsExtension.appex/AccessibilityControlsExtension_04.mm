unint64_t sub_1000889B0()
{
  result = qword_10043F030;
  if (!qword_10043F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F030);
  }

  return result;
}

unint64_t sub_100088A08()
{
  result = qword_10043F038;
  if (!qword_10043F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F038);
  }

  return result;
}

uint64_t sub_100088AC8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100088AEC, 0, 0);
}

uint64_t sub_100088AEC()
{
  sub_1002D85B0();
  _AXSVisualAlertSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100088B64(uint64_t a1)
{
  v2 = sub_100088848();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100088BA4()
{
  result = qword_10043F040;
  if (!qword_10043F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F040);
  }

  return result;
}

uint64_t sub_100088C04()
{
  result = sub_1000A1C90();
  qword_10051B1B0 = result;
  return result;
}

uint64_t sub_100088C34(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100088C94(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100088D0C()
{
  result = qword_10043F048;
  if (!qword_10043F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F048);
  }

  return result;
}

unint64_t sub_100088D64()
{
  result = qword_10043F050;
  if (!qword_10043F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F050);
  }

  return result;
}

uint64_t sub_100088E24(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100088E48, 0, 0);
}

uint64_t sub_100088E48()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setShouldFlashWhileUnlocked:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100088EFC(uint64_t a1)
{
  v2 = sub_100088BA4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100088F3C()
{
  result = qword_10043F058;
  if (!qword_10043F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F058);
  }

  return result;
}

uint64_t sub_100088F9C()
{
  result = sub_1000A1C90();
  qword_10051B1E8 = result;
  return result;
}

uint64_t sub_100088FCC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008902C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000890A4()
{
  result = qword_10043F060;
  if (!qword_10043F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F060);
  }

  return result;
}

unint64_t sub_1000890FC()
{
  result = qword_10043F068;
  if (!qword_10043F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F068);
  }

  return result;
}

uint64_t sub_1000891BC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000891E0, 0, 0);
}

uint64_t sub_1000891E0()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setShouldFlashForAlertInSilentMode:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100089294(uint64_t a1)
{
  v2 = sub_100088F3C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000892D4()
{
  result = qword_10043F070;
  if (!qword_10043F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F070);
  }

  return result;
}

void sub_100089334()
{
  v0 = sub_1002D8D00();
  v1 = AXHasCapability();

  byte_10051B220 = v1;
}

uint64_t sub_100089384()
{
  result = sub_1000A1C90();
  qword_10051B228 = result;
  return result;
}

uint64_t sub_1000893B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100089414(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008948C()
{
  result = qword_10043F078;
  if (!qword_10043F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F078);
  }

  return result;
}

unint64_t sub_1000894E4()
{
  result = qword_10043F080;
  if (!qword_10043F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F080);
  }

  return result;
}

uint64_t sub_1000895A4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000895C8, 0, 0);
}

uint64_t sub_1000895C8()
{
  sub_1002D85B0();
  _AXSLiveTranscriptionSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100089640(uint64_t a1)
{
  v2 = sub_1000892D4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100089680()
{
  result = qword_10043F088;
  if (!qword_10043F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F088);
  }

  return result;
}

uint64_t sub_1000896E0()
{
  result = sub_1000A1C90();
  qword_10051B260 = result;
  return result;
}

uint64_t sub_100089710(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100089770(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000897E8()
{
  result = qword_10043F090;
  if (!qword_10043F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F090);
  }

  return result;
}

unint64_t sub_100089840()
{
  result = qword_10043F098;
  if (!qword_10043F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F098);
  }

  return result;
}

uint64_t sub_100089900(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100089924, 0, 0);
}

uint64_t sub_100089924()
{
  sub_1002D85B0();
  _AXSSetFaceTimeCaptionsEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008999C(uint64_t a1)
{
  v2 = sub_100089680();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000899DC()
{
  result = qword_10043F0A0;
  if (!qword_10043F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0A0);
  }

  return result;
}

uint64_t sub_100089A58()
{
  result = sub_1000A1C90();
  qword_10051B298 = result;
  return result;
}

uint64_t sub_100089AA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100089AC4, 0, 0);
}

uint64_t sub_100089AC4()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v2 = _AXSTripleClickCopyOptions();
  v3 = _AXSTripleClickContainsOption();
  if (v1)
  {
    if (!v3)
    {
      _AXSTripleClickAddOption();
    }
  }

  else if (v3)
  {
    _AXSTripleClickRemoveOption();
  }

  sub_1002D8590();
  v4 = *(v0 + 8);

  return v4();
}

void (*sub_100089BA0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100089C18()
{
  result = qword_10043F0A8;
  if (!qword_10043F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0A8);
  }

  return result;
}

unint64_t sub_100089C70()
{
  result = qword_10043F0B0;
  if (!qword_10043F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0B0);
  }

  return result;
}

uint64_t sub_100089D30(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return sub_100089AA4(a1, v4);
}

uint64_t sub_100089DD0(uint64_t a1)
{
  v2 = sub_1000899DC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100089E10()
{
  result = qword_10043F0B8;
  if (!qword_10043F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0B8);
  }

  return result;
}

uint64_t sub_100089E8C()
{
  result = sub_1000A1C90();
  qword_10051B2D0 = result;
  return result;
}

uint64_t sub_100089ED8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100089EF8, 0, 0);
}

uint64_t sub_100089EF8()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  _AXSSetMotionCuesEnabled();
  if (v1)
  {
    AXDeviceIsPad();
    _AXSSetMotionCuesMode();
  }

  sub_1002D8590();
  v2 = *(v0 + 8);

  return v2();
}

void (*sub_100089FB0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008A028()
{
  result = qword_10043F0C0;
  if (!qword_10043F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0C0);
  }

  return result;
}

unint64_t sub_10008A080()
{
  result = qword_10043F0C8;
  if (!qword_10043F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0C8);
  }

  return result;
}

uint64_t sub_10008A140(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return sub_100089ED8(a1, v4);
}

uint64_t sub_10008A1E0(uint64_t a1)
{
  v2 = sub_100089E10();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008A220()
{
  result = qword_10043F0D0;
  if (!qword_10043F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0D0);
  }

  return result;
}

uint64_t sub_10008A2A0()
{
  result = sub_1000A1C90();
  qword_10051B308 = result;
  return result;
}

void (*sub_10008A2F0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008A368()
{
  result = qword_10043F0D8;
  if (!qword_10043F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0D8);
  }

  return result;
}

unint64_t sub_10008A3C0()
{
  result = qword_10043F0E0;
  if (!qword_10043F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0E0);
  }

  return result;
}

uint64_t sub_10008A480(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008A4A4, 0, 0);
}

uint64_t sub_10008A4A4()
{
  sub_1002D85B0();
  _AXSSetReduceMotionEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008A51C(uint64_t a1)
{
  v2 = sub_10008A220();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008A55C()
{
  result = qword_10043F0E8;
  if (!qword_10043F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0E8);
  }

  return result;
}

uint64_t sub_10008A5BC()
{
  result = sub_1000A1C90();
  qword_10051B340 = result;
  return result;
}

uint64_t sub_10008A5EC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008A64C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008A6C4()
{
  result = qword_10043F0F0;
  if (!qword_10043F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0F0);
  }

  return result;
}

unint64_t sub_10008A71C()
{
  result = qword_10043F0F8;
  if (!qword_10043F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F0F8);
  }

  return result;
}

uint64_t sub_10008A7DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008A800, 0, 0);
}

uint64_t sub_10008A800()
{
  sub_1002D85B0();
  _AXSSetReduceMotionAutoplayMessagesEffectsEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008A878(uint64_t a1)
{
  v2 = sub_10008A55C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008A8B8()
{
  result = qword_10043F100;
  if (!qword_10043F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F100);
  }

  return result;
}

uint64_t sub_10008A918()
{
  result = sub_1000A1C90();
  qword_10051B378 = result;
  return result;
}

uint64_t sub_10008A948(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008A9A8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008AA20()
{
  result = qword_10043F108;
  if (!qword_10043F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F108);
  }

  return result;
}

unint64_t sub_10008AA78()
{
  result = qword_10043F110;
  if (!qword_10043F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F110);
  }

  return result;
}

uint64_t sub_10008AB38(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008AB5C, 0, 0);
}

uint64_t sub_10008AB5C()
{
  sub_1002D85B0();
  _AXSSetReduceMotionAutoplayAnimatedImagesEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008ABD4(uint64_t a1)
{
  v2 = sub_10008A8B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008AC14()
{
  result = qword_10043F118;
  if (!qword_10043F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F118);
  }

  return result;
}

uint64_t sub_10008AC74()
{
  result = AXDeviceSupportsPhotosensitiveMitigation();
  byte_10051B3B0 = result;
  return result;
}

uint64_t sub_10008AC94()
{
  result = sub_1000A1C90();
  qword_10051B3B8 = result;
  return result;
}

uint64_t sub_10008ACC4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008AD24(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008AD9C()
{
  result = qword_10043F120;
  if (!qword_10043F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F120);
  }

  return result;
}

unint64_t sub_10008ADF4()
{
  result = qword_10043F128;
  if (!qword_10043F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F128);
  }

  return result;
}

uint64_t sub_10008AEB4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008AED8, 0, 0);
}

uint64_t sub_10008AED8()
{
  sub_1002D85B0();
  _AXSPhotosensitiveMitigationSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008AF50(uint64_t a1)
{
  v2 = sub_10008AC14();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008AF90()
{
  result = qword_10043F130;
  if (!qword_10043F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F130);
  }

  return result;
}

uint64_t sub_10008AFF0()
{
  result = sub_1000A1C90();
  qword_10051B3F0 = result;
  return result;
}

uint64_t sub_10008B020(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008B080(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008B0F8()
{
  result = qword_10043F138;
  if (!qword_10043F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F138);
  }

  return result;
}

unint64_t sub_10008B150()
{
  result = qword_10043F140;
  if (!qword_10043F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F140);
  }

  return result;
}

uint64_t sub_10008B210(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008B234, 0, 0);
}

uint64_t sub_10008B234()
{
  sub_1002D85B0();
  _AXSSetReduceMotionAutoplayVideoPreviewsEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008B2AC(uint64_t a1)
{
  v2 = sub_10008AF90();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008B2EC()
{
  result = qword_10043F148;
  if (!qword_10043F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F148);
  }

  return result;
}

uint64_t sub_10008B34C()
{
  result = sub_1000A1C90();
  qword_10051B428 = result;
  return result;
}

uint64_t sub_10008B37C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008B3DC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008B454()
{
  result = qword_10043F150;
  if (!qword_10043F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F150);
  }

  return result;
}

unint64_t sub_10008B4AC()
{
  result = qword_10043F158;
  if (!qword_10043F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F158);
  }

  return result;
}

uint64_t sub_10008B56C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008B590, 0, 0);
}

uint64_t sub_10008B590()
{
  sub_1002D85B0();
  _AXSSetPrefersNonBlinkingCursorIndicator();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008B608(uint64_t a1)
{
  v2 = sub_10008B2EC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008B648()
{
  result = qword_10043F160;
  if (!qword_10043F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F160);
  }

  return result;
}

uint64_t sub_10008B6C4()
{
  result = sub_1000A1C90();
  qword_10051B460 = result;
  return result;
}

void (*sub_10008B710(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008B788()
{
  result = qword_10043F168;
  if (!qword_10043F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F168);
  }

  return result;
}

unint64_t sub_10008B7E0()
{
  result = qword_10043F170;
  if (!qword_10043F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F170);
  }

  return result;
}

uint64_t sub_10008B8A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008B8C4, 0, 0);
}

uint64_t sub_10008B8C4()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setShouldLimitDisplayRefreshRate:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008B978(uint64_t a1)
{
  v2 = sub_10008B648();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008B9B8()
{
  result = qword_10043F178;
  if (!qword_10043F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F178);
  }

  return result;
}

uint64_t sub_10008BA30()
{
  result = sub_1000A1C90();
  qword_10051B498 = result;
  return result;
}

void (*sub_10008BA78(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008BAF0()
{
  result = qword_10043F180;
  if (!qword_10043F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F180);
  }

  return result;
}

unint64_t sub_10008BB48()
{
  result = qword_10043F188;
  if (!qword_10043F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F188);
  }

  return result;
}

uint64_t sub_10008BC08(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008BC2C, 0, 0);
}

uint64_t sub_10008BC2C()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseKeysEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008BCE0(uint64_t a1)
{
  v2 = sub_10008B9B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008BD20()
{
  result = qword_10043F190;
  if (!qword_10043F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F190);
  }

  return result;
}

uint64_t sub_10008BD80()
{
  result = sub_1000A1C90();
  qword_10051B4D0 = result;
  return result;
}

uint64_t sub_10008BDB0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008BE10(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008BE88()
{
  result = qword_10043F198;
  if (!qword_10043F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F198);
  }

  return result;
}

unint64_t sub_10008BEE0()
{
  result = qword_10043F1A0;
  if (!qword_10043F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1A0);
  }

  return result;
}

uint64_t sub_10008BFA0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008BFC4, 0, 0);
}

uint64_t sub_10008BFC4()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseKeysOptionToggleEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008C078(uint64_t a1)
{
  v2 = sub_10008BD20();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008C0B8()
{
  result = qword_10043F1A8;
  if (!qword_10043F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1A8);
  }

  return result;
}

uint64_t sub_10008C118()
{
  result = sub_1000A1C90();
  qword_10051B508 = result;
  return result;
}

uint64_t sub_10008C148(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008C1A8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008C220()
{
  result = qword_10043F1B0;
  if (!qword_10043F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1B0);
  }

  return result;
}

unint64_t sub_10008C278()
{
  result = qword_10043F1B8;
  if (!qword_10043F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1B8);
  }

  return result;
}

uint64_t sub_10008C338(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008C35C, 0, 0);
}

uint64_t sub_10008C35C()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseKeysUseMainKeyboardKeys:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008C410(uint64_t a1)
{
  v2 = sub_10008C0B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008C450()
{
  result = qword_10043F1C0;
  if (!qword_10043F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1C0);
  }

  return result;
}

uint64_t sub_10008C4B0()
{
  result = AXDeviceSupportsNameRecognition();
  byte_10051B540 = result;
  return result;
}

uint64_t sub_10008C4D0()
{
  result = sub_1000A1C90();
  qword_10051B548 = result;
  return result;
}

uint64_t sub_10008C500(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008C560(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008C5D8()
{
  result = qword_10043F1C8;
  if (!qword_10043F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1C8);
  }

  return result;
}

unint64_t sub_10008C630()
{
  result = qword_10043F1D0;
  if (!qword_10043F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1D0);
  }

  return result;
}

uint64_t sub_10008C6F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008C714, 0, 0);
}

uint64_t sub_10008C714()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  sub_1002D8DD0();
  v2 = sub_1002D8DC0();
  [v2 setNameRecognitionEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008C7B8(uint64_t a1)
{
  v2 = sub_10008C450();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008C7F8()
{
  result = qword_10043F1D8;
  if (!qword_10043F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1D8);
  }

  return result;
}

uint64_t sub_10008C878()
{
  result = swift_getKeyPath();
  qword_10051B578 = result;
  return result;
}

uint64_t sub_10008C8CC()
{
  result = sub_1000A1C90();
  qword_10051B598 = result;
  return result;
}

void (*sub_10008C918(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008C990()
{
  result = qword_10043F1E0;
  if (!qword_10043F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1E0);
  }

  return result;
}

unint64_t sub_10008C9E8()
{
  result = qword_10043F1E8;
  if (!qword_10043F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1E8);
  }

  return result;
}

uint64_t sub_10008CAA8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008CACC, 0, 0);
}

uint64_t sub_10008CACC()
{
  sub_1002D85B0();
  AFPreferencesSetTypeToSiriEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008CB44(uint64_t a1)
{
  v2 = sub_10008C7F8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008CB84()
{
  result = qword_10043F1F0;
  if (!qword_10043F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1F0);
  }

  return result;
}

uint64_t sub_10008CBE4()
{
  result = sub_1000A1C90();
  qword_10051B5D0 = result;
  return result;
}

uint64_t sub_10008CC14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008CC74(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008CCEC()
{
  result = qword_10043F1F8;
  if (!qword_10043F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F1F8);
  }

  return result;
}

unint64_t sub_10008CD44()
{
  result = qword_10043F200;
  if (!qword_10043F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F200);
  }

  return result;
}

uint64_t sub_10008CE04(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008CE28, 0, 0);
}

uint64_t sub_10008CE28()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setUseAtypicalSpeechModel:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008CEDC(uint64_t a1)
{
  v2 = sub_10008CB84();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008CF1C()
{
  result = qword_10043F208;
  if (!qword_10043F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F208);
  }

  return result;
}

uint64_t sub_10008CF7C()
{
  result = sub_1000A1C90();
  qword_10051B608 = result;
  return result;
}

uint64_t sub_10008CFAC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008D00C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008D084()
{
  result = qword_10043F210;
  if (!qword_10043F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F210);
  }

  return result;
}

unint64_t sub_10008D0DC()
{
  result = qword_10043F218;
  if (!qword_10043F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F218);
  }

  return result;
}

uint64_t sub_10008D19C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008D1C0, 0, 0);
}

uint64_t sub_10008D1C0()
{
  sub_1002D85B0();
  AXSetSiriRequireSiriForInterruptionsInValue();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008D238(uint64_t a1)
{
  v2 = sub_10008CF1C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008D278()
{
  result = qword_10043F220;
  if (!qword_10043F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F220);
  }

  return result;
}

uint64_t sub_10008D2FC()
{
  result = swift_getKeyPath();
  qword_10051B638 = result;
  return result;
}

uint64_t sub_10008D334()
{
  result = sub_1000A1C90();
  qword_10051B658 = result;
  return result;
}

uint64_t sub_10008D364(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008D3C4(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008D43C()
{
  result = qword_10043F228;
  if (!qword_10043F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F228);
  }

  return result;
}

unint64_t sub_10008D494()
{
  result = qword_10043F230;
  if (!qword_10043F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F230);
  }

  return result;
}

uint64_t sub_10008D554(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008D578, 0, 0);
}

uint64_t sub_10008D578()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAlwaysAllowVoiceActivation:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008D62C(uint64_t a1)
{
  v2 = sub_10008D278();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008D66C()
{
  result = qword_10043F238;
  if (!qword_10043F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F238);
  }

  return result;
}

uint64_t sub_10008D6CC()
{
  result = sub_1000A1C90();
  qword_10051B690 = result;
  return result;
}

uint64_t sub_10008D6FC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008D75C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008D7D4()
{
  result = qword_10043F240;
  if (!qword_10043F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F240);
  }

  return result;
}

unint64_t sub_10008D82C()
{
  result = qword_10043F248;
  if (!qword_10043F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F248);
  }

  return result;
}

uint64_t sub_10008D8EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008D910, 0, 0);
}

uint64_t sub_10008D910()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAlwaysObscureBackgroundContentWhenActive:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008D9C4(uint64_t a1)
{
  v2 = sub_10008D66C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008DA04()
{
  result = qword_10043F250;
  if (!qword_10043F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F250);
  }

  return result;
}

uint64_t sub_10008DA64()
{
  result = sub_1000A1C90();
  qword_10051B6C8 = result;
  return result;
}

uint64_t sub_10008DA94(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008DAF4(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008DB6C()
{
  result = qword_10043F258;
  if (!qword_10043F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F258);
  }

  return result;
}

unint64_t sub_10008DBC4()
{
  result = qword_10043F260;
  if (!qword_10043F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F260);
  }

  return result;
}

uint64_t sub_10008DC84(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008DCA8, 0, 0);
}

uint64_t sub_10008DCA8()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAnnounceNotificationsOnBuiltInSpeakerEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008DD5C(uint64_t a1)
{
  v2 = sub_10008DA04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008DD9C()
{
  result = qword_10043F268;
  if (!qword_10043F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F268);
  }

  return result;
}

uint64_t sub_10008DE18()
{
  result = sub_1000A1C90();
  qword_10051B700 = result;
  return result;
}

void (*sub_10008DE64(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008DEDC()
{
  result = qword_10043F270;
  if (!qword_10043F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F270);
  }

  return result;
}

unint64_t sub_10008DF34()
{
  result = qword_10043F278;
  if (!qword_10043F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F278);
  }

  return result;
}

uint64_t sub_10008DFF4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008E018, 0, 0);
}

uint64_t sub_10008E018()
{
  sub_1002D85B0();
  AXSetSiriCallHangUpValue();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E090(uint64_t a1)
{
  v2 = sub_10008DD9C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008E0D0()
{
  result = qword_10043F280;
  if (!qword_10043F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F280);
  }

  return result;
}

uint64_t sub_10008E154()
{
  result = swift_getKeyPath();
  qword_10051B730 = result;
  return result;
}

uint64_t sub_10008E1AC()
{
  result = sub_1000A1C90();
  qword_10051B750 = result;
  return result;
}

void (*sub_10008E1FC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008E274()
{
  result = qword_10043F288;
  if (!qword_10043F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F288);
  }

  return result;
}

unint64_t sub_10008E2CC()
{
  result = qword_10043F290;
  if (!qword_10043F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F290);
  }

  return result;
}

uint64_t sub_10008E38C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008E3B0, 0, 0);
}

uint64_t sub_10008E3B0()
{
  sub_1002D85B0();
  _AXSQuickSpeakSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E428(uint64_t a1)
{
  v2 = sub_10008E0D0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008E468()
{
  result = qword_10043F298;
  if (!qword_10043F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F298);
  }

  return result;
}

uint64_t sub_10008E4E4()
{
  result = sub_1000A1C90();
  qword_10051B788 = result;
  return result;
}

void (*sub_10008E530(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008E5A8()
{
  result = qword_10043F2A0;
  if (!qword_10043F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2A0);
  }

  return result;
}

unint64_t sub_10008E600()
{
  result = qword_10043F2A8;
  if (!qword_10043F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2A8);
  }

  return result;
}

uint64_t sub_10008E6C0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008E6E4, 0, 0);
}

uint64_t sub_10008E6E4()
{
  sub_1002D85B0();
  _AXSSetSpeakThisEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E75C(uint64_t a1)
{
  v2 = sub_10008E468();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008E79C()
{
  result = qword_10043F2B0;
  if (!qword_10043F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2B0);
  }

  return result;
}

uint64_t sub_10008E7FC()
{
  result = sub_1000A1C90();
  qword_10051B7C0 = result;
  return result;
}

void (*sub_10008E82C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008E8A4()
{
  result = qword_10043F2B8;
  if (!qword_10043F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2B8);
  }

  return result;
}

unint64_t sub_10008E8FC()
{
  result = qword_10043F2C0;
  if (!qword_10043F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2C0);
  }

  return result;
}

uint64_t sub_10008E9BC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008E9E0, 0, 0);
}

uint64_t sub_10008E9E0()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSpokenContentShouldUseLanguageDetection:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008EA94(uint64_t a1)
{
  v2 = sub_10008E79C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008EAD4()
{
  result = qword_10043F2C8;
  if (!qword_10043F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2C8);
  }

  return result;
}

uint64_t sub_10008EB34()
{
  result = sub_1000A1C90();
  qword_10051B7F8 = result;
  return result;
}

uint64_t sub_10008EB64(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008EBC4(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008EC3C()
{
  result = qword_10043F2D0;
  if (!qword_10043F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2D0);
  }

  return result;
}

unint64_t sub_10008EC94()
{
  result = qword_10043F2D8;
  if (!qword_10043F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2D8);
  }

  return result;
}

uint64_t sub_10008ED54(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008ED78, 0, 0);
}

uint64_t sub_10008ED78()
{
  sub_1002D85B0();
  _AXSClosedCaptionsSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008EDF0(uint64_t a1)
{
  v2 = sub_10008EAD4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008EE30()
{
  result = qword_10043F2E0;
  if (!qword_10043F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2E0);
  }

  return result;
}

uint64_t sub_10008EE90()
{
  result = sub_1000A1C90();
  qword_10051B830 = result;
  return result;
}

uint64_t sub_10008EEC0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008EF20(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008EF98()
{
  result = qword_10043F2E8;
  if (!qword_10043F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2E8);
  }

  return result;
}

unint64_t sub_10008EFF0()
{
  result = qword_10043F2F0;
  if (!qword_10043F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2F0);
  }

  return result;
}

uint64_t sub_10008F0B0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008F0D4, 0, 0);
}

uint64_t sub_10008F0D4()
{
  sub_1002D85B0();
  _AXSSetShowAudioTranscriptions();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F14C(uint64_t a1)
{
  v2 = sub_10008EE30();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008F18C()
{
  result = qword_10043F2F8;
  if (!qword_10043F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F2F8);
  }

  return result;
}

uint64_t sub_10008F20C()
{
  result = sub_1000A1C90();
  qword_10051B868 = result;
  return result;
}

void (*sub_10008F25C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008F2D4()
{
  result = qword_10043F300;
  if (!qword_10043F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F300);
  }

  return result;
}

unint64_t sub_10008F32C()
{
  result = qword_10043F308;
  if (!qword_10043F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F308);
  }

  return result;
}

uint64_t sub_10008F3EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008F410, 0, 0);
}

uint64_t sub_10008F410()
{
  sub_1002D85B0();
  _AXSSetAutomaticSubtitlesShowWhenMuted();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F488(uint64_t a1)
{
  v2 = sub_10008F18C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008F4C8()
{
  result = qword_10043F310;
  if (!qword_10043F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F310);
  }

  return result;
}

uint64_t sub_10008F528()
{
  result = sub_1000A1C90();
  qword_10051B8A0 = result;
  return result;
}

uint64_t sub_10008F558(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008F5B8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008F630()
{
  result = qword_10043F318;
  if (!qword_10043F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F318);
  }

  return result;
}

unint64_t sub_10008F688()
{
  result = qword_10043F320;
  if (!qword_10043F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F320);
  }

  return result;
}

uint64_t sub_10008F748(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008F76C, 0, 0);
}

uint64_t sub_10008F76C()
{
  sub_1002D85B0();
  _AXSSetAutomaticSubtitlesShowOnSkipBack();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F7E4(uint64_t a1)
{
  v2 = sub_10008F4C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008F824()
{
  result = qword_10043F328;
  if (!qword_10043F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F328);
  }

  return result;
}

uint64_t sub_10008F8A4()
{
  result = sub_1000A1C90();
  qword_10051B8D8 = result;
  return result;
}

void (*sub_10008F8F4(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008F96C()
{
  result = qword_10043F330;
  if (!qword_10043F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F330);
  }

  return result;
}

unint64_t sub_10008F9C4()
{
  result = qword_10043F338;
  if (!qword_10043F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F338);
  }

  return result;
}

uint64_t sub_10008FA84(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008FAA8, 0, 0);
}

uint64_t sub_10008FAA8()
{
  sub_1002D85B0();
  _AXSAssistiveTouchScannerSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008FB20(uint64_t a1)
{
  v2 = sub_10008F824();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008FB60()
{
  result = qword_10043F340;
  if (!qword_10043F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F340);
  }

  return result;
}

uint64_t sub_10008FBC0()
{
  result = sub_1000A1C90();
  qword_10051B910 = result;
  return result;
}

uint64_t sub_10008FBF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10008FC50(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10008FCC8()
{
  result = qword_10043F348;
  if (!qword_10043F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F348);
  }

  return result;
}

unint64_t sub_10008FD20()
{
  result = qword_10043F350;
  if (!qword_10043F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F350);
  }

  return result;
}

uint64_t sub_10008FDE0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10008FE04, 0, 0);
}

uint64_t sub_10008FE04()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchDelayAfterInputEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008FEB8(uint64_t a1)
{
  v2 = sub_10008FB60();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10008FEF8()
{
  result = qword_10043F358;
  if (!qword_10043F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F358);
  }

  return result;
}

uint64_t sub_10008FF74()
{
  result = sub_1000A1C90();
  qword_10051B948 = result;
  return result;
}

void (*sub_10008FFC0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100090038()
{
  result = qword_10043F360;
  if (!qword_10043F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F360);
  }

  return result;
}

unint64_t sub_100090090()
{
  result = qword_10043F368;
  if (!qword_10043F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F368);
  }

  return result;
}

uint64_t sub_100090150(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100090174, 0, 0);
}

uint64_t sub_100090174()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchActionRepeatEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100090228(uint64_t a1)
{
  v2 = sub_10008FEF8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100090268()
{
  result = qword_10043F370;
  if (!qword_10043F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F370);
  }

  return result;
}

uint64_t sub_1000902E0()
{
  result = sub_1000A1C90();
  qword_10051B980 = result;
  return result;
}

void (*sub_100090328(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000903A0()
{
  result = qword_10043F378;
  if (!qword_10043F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F378);
  }

  return result;
}

unint64_t sub_1000903F8()
{
  result = qword_10043F380;
  if (!qword_10043F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F380);
  }

  return result;
}

uint64_t sub_1000904B8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000904DC, 0, 0);
}

uint64_t sub_1000904DC()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchLongPressEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100090590(uint64_t a1)
{
  v2 = sub_100090268();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000905D0()
{
  result = qword_10043F388;
  if (!qword_10043F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F388);
  }

  return result;
}

uint64_t sub_100090630()
{
  result = sub_1000A1C90();
  qword_10051B9B8 = result;
  return result;
}

uint64_t sub_100090660(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_1000906C0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100090738()
{
  result = qword_10043F390;
  if (!qword_10043F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F390);
  }

  return result;
}

unint64_t sub_100090790()
{
  result = qword_10043F398;
  if (!qword_10043F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F398);
  }

  return result;
}

uint64_t sub_100090850(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100090874, 0, 0);
}

uint64_t sub_100090874()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlIgnoreInvalidSwitchConfiguration:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100090928(uint64_t a1)
{
  v2 = sub_1000905D0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100090968()
{
  result = qword_10043F3A0;
  if (!qword_10043F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3A0);
  }

  return result;
}

void sub_1000909BC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x8000000100354F00;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051B9D8 = v2;
  unk_10051B9E0 = v4;
}

uint64_t sub_100090A60()
{
  result = swift_getKeyPath();
  qword_10051B9E8 = result;
  return result;
}

uint64_t sub_100090AB8()
{
  result = swift_getKeyPath();
  qword_10051BA00 = result;
  return result;
}

uint64_t sub_100090B14()
{
  result = swift_getKeyPath();
  qword_10051BA18 = result;
  return result;
}

uint64_t sub_100090B6C()
{
  result = sub_1000A1C90();
  qword_10051BA38 = result;
  return result;
}

void (*sub_100090BBC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100090C34()
{
  result = qword_10043F3A8;
  if (!qword_10043F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3A8);
  }

  return result;
}

unint64_t sub_100090C8C()
{
  result = qword_10043F3B0;
  if (!qword_10043F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3B0);
  }

  return result;
}

uint64_t sub_100090D4C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100090D70, 0, 0);
}

uint64_t sub_100090D70()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlUseCameraForPointMode:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100090E24(uint64_t a1)
{
  v2 = sub_100090968();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100090E64()
{
  result = qword_10043F3B8;
  if (!qword_10043F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3B8);
  }

  return result;
}

uint64_t sub_100090EE4()
{
  result = swift_getKeyPath();
  qword_10051BA68 = result;
  return result;
}

uint64_t sub_100090F40()
{
  result = swift_getKeyPath();
  qword_10051BA80 = result;
  return result;
}

uint64_t sub_100090F8C()
{
  result = sub_1000A1C90();
  qword_10051BAA0 = result;
  return result;
}

void (*sub_100090FD0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_100091044;
}

unint64_t sub_10009104C()
{
  result = qword_10043F3C0;
  if (!qword_10043F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3C0);
  }

  return result;
}

unint64_t sub_1000910A4()
{
  result = qword_10043F3C8;
  if (!qword_10043F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3C8);
  }

  return result;
}

uint64_t sub_100091164(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100091188, 0, 0);
}

uint64_t sub_100091188()
{
  sub_1002D85B0();
  _AXSBackTapSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100091200(uint64_t a1)
{
  v2 = sub_100090E64();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100091240()
{
  result = qword_10043F3D0;
  if (!qword_10043F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3D0);
  }

  return result;
}

uint64_t sub_1000912BC()
{
  result = sub_1000A1C90();
  qword_10051BAD8 = result;
  return result;
}

void (*sub_100091308(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100091380()
{
  result = qword_10043F3D8;
  if (!qword_10043F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3D8);
  }

  return result;
}

unint64_t sub_1000913D8()
{
  result = qword_10043F3E0;
  if (!qword_10043F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3E0);
  }

  return result;
}

uint64_t sub_100091498(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000914BC, 0, 0);
}

uint64_t sub_1000914BC()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setReachabilityEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100091570(uint64_t a1)
{
  v2 = sub_100091240();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000915B0()
{
  result = qword_10043F3E8;
  if (!qword_10043F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3E8);
  }

  return result;
}

uint64_t sub_100091634()
{
  result = swift_getKeyPath();
  qword_10051BB08 = result;
  return result;
}

uint64_t sub_100091688()
{
  result = sub_1000A1C90();
  qword_10051BB28 = result;
  return result;
}

uint64_t sub_1000916D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000916F4, 0, 0);
}

id sub_1000916F4()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  result = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:AX_SpringBoardBundleName];
  if (result)
  {
    v3 = result;
    v4 = sub_1002D8D00();
    [v3 setBool:v1 forKey:v4];

    sub_1002D8590();
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_100091818(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100091890()
{
  result = qword_10043F3F0;
  if (!qword_10043F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3F0);
  }

  return result;
}

unint64_t sub_1000918E8()
{
  result = qword_10043F3F8;
  if (!qword_10043F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F3F8);
  }

  return result;
}

uint64_t sub_1000919A8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023140;

  return sub_1000916D4(a1, v4);
}

uint64_t sub_100091A48(uint64_t a1)
{
  v2 = sub_1000915B0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100091A88()
{
  result = qword_10043F400;
  if (!qword_10043F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F400);
  }

  return result;
}

uint64_t sub_100091B08()
{
  result = sub_1000A1C90();
  qword_10051BB60 = result;
  return result;
}

void (*sub_100091B58(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100091BD0()
{
  result = qword_10043F408;
  if (!qword_10043F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F408);
  }

  return result;
}

unint64_t sub_100091C28()
{
  result = qword_10043F410;
  if (!qword_10043F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F410);
  }

  return result;
}

uint64_t sub_100091CE8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100091D0C, 0, 0);
}

uint64_t sub_100091D0C()
{
  sub_1002D85B0();
  _AXSSetShakeToUndoDisabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100091D8C(uint64_t a1)
{
  v2 = sub_100091A88();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100091DCC()
{
  result = qword_10043F418;
  if (!qword_10043F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F418);
  }

  return result;
}

uint64_t sub_100091E44()
{
  result = sub_1000A1C90();
  qword_10051BB98 = result;
  return result;
}

void (*sub_100091E8C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100091F04()
{
  result = qword_10043F420;
  if (!qword_10043F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F420);
  }

  return result;
}

unint64_t sub_100091F5C()
{
  result = qword_10043F428;
  if (!qword_10043F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F428);
  }

  return result;
}

uint64_t sub_10009201C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100092040, 0, 0);
}

uint64_t sub_100092040()
{
  sub_1002D85B0();
  _AXSSetVibrationDisabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000920C0(uint64_t a1)
{
  v2 = sub_100091DCC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100092100()
{
  result = qword_10043F430;
  if (!qword_10043F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F430);
  }

  return result;
}

uint64_t sub_100092160()
{
  result = sub_1000A1C90();
  qword_10051BBD0 = result;
  return result;
}

uint64_t sub_100092190(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_1000921F0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100092268()
{
  result = qword_10043F438;
  if (!qword_10043F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F438);
  }

  return result;
}

unint64_t sub_1000922C0()
{
  result = qword_10043F440;
  if (!qword_10043F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F440);
  }

  return result;
}

uint64_t sub_100092380(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000923A4, 0, 0);
}

uint64_t sub_1000923A4()
{
  sub_1002D85B0();
  _AXSPhoneLockToEndCallSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100092424(uint64_t a1)
{
  v2 = sub_100092100();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100092464()
{
  result = qword_10043F448;
  if (!qword_10043F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F448);
  }

  return result;
}

uint64_t sub_1000924E4()
{
  result = sub_1000A1C90();
  qword_10051BC08 = result;
  return result;
}

void (*sub_100092534(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000925AC()
{
  result = qword_10043F450;
  if (!qword_10043F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F450);
  }

  return result;
}

unint64_t sub_100092604()
{
  result = qword_10043F458;
  if (!qword_10043F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F458);
  }

  return result;
}

uint64_t sub_1000926C4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000926E8, 0, 0);
}

uint64_t sub_1000926E8()
{
  sub_1002D85B0();
  _AXSCommandAndControlSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100092760(uint64_t a1)
{
  v2 = sub_100092464();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000927A0()
{
  result = qword_10043F460;
  if (!qword_10043F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F460);
  }

  return result;
}

uint64_t sub_100092800()
{
  result = sub_1000A1C90();
  qword_10051BC40 = result;
  return result;
}

uint64_t sub_100092830(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100092890(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100092908()
{
  result = qword_10043F468;
  if (!qword_10043F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F468);
  }

  return result;
}

unint64_t sub_100092960()
{
  result = qword_10043F470;
  if (!qword_10043F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F470);
  }

  return result;
}

uint64_t sub_100092A20(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100092A44, 0, 0);
}

uint64_t sub_100092A44()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() sharedPreferences];
  [v2 setShowTextResponseUponRecognition:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100092B2C(uint64_t a1)
{
  v2 = sub_1000927A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100092B6C()
{
  result = qword_10043F478;
  if (!qword_10043F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F478);
  }

  return result;
}

uint64_t sub_100092BE4()
{
  result = sub_1000A1C90();
  qword_10051BC78 = result;
  return result;
}

void (*sub_100092C2C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100092CA4()
{
  result = qword_10043F480;
  if (!qword_10043F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F480);
  }

  return result;
}

unint64_t sub_100092CFC()
{
  result = qword_10043F488;
  if (!qword_10043F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F488);
  }

  return result;
}

uint64_t sub_100092DBC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100092DE0, 0, 0);
}

uint64_t sub_100092DE0()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() sharedPreferences];
  [v2 setPlaySoundUponRecognition:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100092EC8(uint64_t a1)
{
  v2 = sub_100092B6C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100092F08()
{
  result = qword_10043F490;
  if (!qword_10043F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F490);
  }

  return result;
}

uint64_t sub_100092F80()
{
  result = sub_1000A1C90();
  qword_10051BCB0 = result;
  return result;
}

void (*sub_100092FC8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100093040()
{
  result = qword_10043F498;
  if (!qword_10043F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F498);
  }

  return result;
}

unint64_t sub_100093098()
{
  result = qword_10043F4A0;
  if (!qword_10043F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4A0);
  }

  return result;
}

uint64_t sub_100093158(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10009317C, 0, 0);
}

uint64_t sub_10009317C()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() sharedPreferences];
  [v2 setShowHints:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100093264(uint64_t a1)
{
  v2 = sub_100092F08();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000932A4()
{
  result = qword_10043F4A8;
  if (!qword_10043F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4A8);
  }

  return result;
}

uint64_t sub_10009331C()
{
  result = swift_getKeyPath();
  qword_10051BCE0 = result;
  return result;
}

uint64_t sub_100093374()
{
  result = sub_1000A1C90();
  qword_10051BD00 = result;
  return result;
}

void (*sub_1000933C4(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009343C()
{
  result = qword_10043F4B0;
  if (!qword_10043F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4B0);
  }

  return result;
}

unint64_t sub_100093494()
{
  result = qword_10043F4B8;
  if (!qword_10043F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4B8);
  }

  return result;
}

uint64_t sub_100093554(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100093578, 0, 0);
}

uint64_t sub_100093578()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAttentionAware:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100093660(uint64_t a1)
{
  v2 = sub_1000932A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000936A0()
{
  result = qword_10043F4C0;
  if (!qword_10043F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4C0);
  }

  return result;
}

uint64_t sub_100093718()
{
  result = sub_1000A1C90();
  qword_10051BD38 = result;
  return result;
}

void (*sub_100093760(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000937D8()
{
  result = qword_10043F4C8;
  if (!qword_10043F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4C8);
  }

  return result;
}

unint64_t sub_100093830()
{
  result = qword_10043F4D0;
  if (!qword_10043F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4D0);
  }

  return result;
}

uint64_t sub_1000938F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100093914, 0, 0);
}

uint64_t sub_100093914()
{
  sub_1002D85B0();
  _AXSVoiceOverTouchSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009398C(uint64_t a1)
{
  v2 = sub_1000936A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000939CC()
{
  result = qword_10043F4D8;
  if (!qword_10043F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4D8);
  }

  return result;
}

uint64_t sub_100093A3C()
{
  result = sub_1000A1C90();
  qword_10051BD70 = result;
  return result;
}

void (*sub_100093A7C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100093AF4()
{
  result = qword_10043F4E0;
  if (!qword_10043F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4E0);
  }

  return result;
}

unint64_t sub_100093B4C()
{
  result = qword_10043F4E8;
  if (!qword_10043F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4E8);
  }

  return result;
}

uint64_t sub_100093C0C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100093C30, 0, 0);
}

uint64_t sub_100093C30()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverShouldSpeakDiscoveredText:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100093CE4(uint64_t a1)
{
  v2 = sub_1000939CC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100093D24()
{
  result = qword_10043F4F0;
  if (!qword_10043F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4F0);
  }

  return result;
}

uint64_t sub_100093DA4()
{
  result = swift_getKeyPath();
  qword_10051BDA0 = result;
  return result;
}

uint64_t sub_100093DDC()
{
  result = sub_1000A1C90();
  qword_10051BDC0 = result;
  return result;
}

uint64_t sub_100093E0C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100093E6C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100093EE4()
{
  result = qword_10043F4F8;
  if (!qword_10043F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F4F8);
  }

  return result;
}

unint64_t sub_100093F3C()
{
  result = qword_10043F500;
  if (!qword_10043F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F500);
  }

  return result;
}

uint64_t sub_100093FFC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100094020, 0, 0);
}

uint64_t sub_100094020()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAutomaticAccessibilityEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000940D4(uint64_t a1)
{
  v2 = sub_100093D24();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100094114()
{
  result = qword_10043F508;
  if (!qword_10043F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F508);
  }

  return result;
}

uint64_t sub_100094198()
{
  result = swift_getKeyPath();
  qword_10051BDF0 = result;
  return result;
}

void sub_1000941C4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x8000000100355430;
  v6._countAndFlagsBits = 0xD000000000000011;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051BDF8 = v2;
  unk_10051BE00 = v4;
}

uint64_t sub_100094268()
{
  result = swift_getKeyPath();
  qword_10051BE08 = result;
  return result;
}

uint64_t sub_1000942A0()
{
  result = sub_1000A1C90();
  qword_10051BE28 = result;
  return result;
}

uint64_t sub_1000942D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100094330(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000943A8()
{
  result = qword_10043F510;
  if (!qword_10043F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F510);
  }

  return result;
}

unint64_t sub_100094400()
{
  result = qword_10043F518;
  if (!qword_10043F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F518);
  }

  return result;
}

uint64_t sub_1000944C0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000944E4, 0, 0);
}

uint64_t sub_1000944E4()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverImageCaptionsEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100094598(uint64_t a1)
{
  v2 = sub_100094114();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000945D8()
{
  result = qword_10043F520;
  if (!qword_10043F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F520);
  }

  return result;
}

void sub_10009462C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x80000001003553E0;
  v6._countAndFlagsBits = 0xD00000000000002ELL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051BE48 = v2;
  unk_10051BE50 = v4;
}

uint64_t sub_1000946D0()
{
  result = swift_getKeyPath();
  qword_10051BE58 = result;
  return result;
}

uint64_t sub_10009472C()
{
  result = swift_getKeyPath();
  qword_10051BE70 = result;
  return result;
}

uint64_t sub_100094780()
{
  result = sub_1000A1C90();
  qword_10051BE90 = result;
  return result;
}

void (*sub_1000947CC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100094844()
{
  result = qword_10043F528;
  if (!qword_10043F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F528);
  }

  return result;
}

unint64_t sub_10009489C()
{
  result = qword_10043F530;
  if (!qword_10043F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F530);
  }

  return result;
}

uint64_t sub_10009495C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100094980, 0, 0);
}

uint64_t sub_100094980()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverVerbosityEmojiSuffixEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100094A34(uint64_t a1)
{
  v2 = sub_1000945D8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100094A74()
{
  result = qword_10043F538;
  if (!qword_10043F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F538);
  }

  return result;
}

uint64_t sub_100094AD4()
{
  result = sub_1000A1C90();
  qword_10051BEC8 = result;
  return result;
}

uint64_t sub_100094B04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100094B64(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100094BDC()
{
  result = qword_10043F540;
  if (!qword_10043F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F540);
  }

  return result;
}

unint64_t sub_100094C34()
{
  result = qword_10043F548;
  if (!qword_10043F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F548);
  }

  return result;
}

uint64_t sub_100094CF4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100094D18, 0, 0);
}

uint64_t sub_100094D18()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverRotorUpdatesWithElement:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100094DCC(uint64_t a1)
{
  v2 = sub_100094A74();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100094E0C()
{
  result = qword_10043F550;
  if (!qword_10043F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F550);
  }

  return result;
}

uint64_t sub_100094E6C()
{
  result = sub_1000A1C90();
  qword_10051BF00 = result;
  return result;
}

uint64_t sub_100094E9C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100094EFC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100094F74()
{
  result = qword_10043F558;
  if (!qword_10043F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F558);
  }

  return result;
}

unint64_t sub_100094FCC()
{
  result = qword_10043F560;
  if (!qword_10043F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F560);
  }

  return result;
}

uint64_t sub_10009508C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000950B0, 0, 0);
}

uint64_t sub_1000950B0()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverEditAppsActionEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100095164(uint64_t a1)
{
  v2 = sub_100094E0C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000951A4()
{
  result = qword_10043F568;
  if (!qword_10043F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F568);
  }

  return result;
}

void sub_1000951F8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x80000001003594E0;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051BF20 = v2;
  *algn_10051BF28 = v4;
}

uint64_t sub_10009529C()
{
  result = swift_getKeyPath();
  qword_10051BF30 = result;
  return result;
}

uint64_t sub_1000952F0()
{
  result = sub_1000A1C90();
  qword_10051BF50 = result;
  return result;
}

void (*sub_10009533C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000953B4()
{
  result = qword_10043F570;
  if (!qword_10043F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F570);
  }

  return result;
}

unint64_t sub_10009540C()
{
  result = qword_10043F578;
  if (!qword_10043F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F578);
  }

  return result;
}

uint64_t sub_1000954CC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000954F0, 0, 0);
}

uint64_t sub_1000954F0()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverAudioFollowsHDMIAudio:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000955A4(uint64_t a1)
{
  v2 = sub_1000951A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000955E4()
{
  result = qword_10043F580;
  if (!qword_10043F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F580);
  }

  return result;
}

uint64_t sub_100095644()
{
  result = sub_1000A1C90();
  qword_10051BF88 = result;
  return result;
}

uint64_t sub_100095674(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_1000956D4(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009574C()
{
  result = qword_10043F588;
  if (!qword_10043F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F588);
  }

  return result;
}

unint64_t sub_1000957A4()
{
  result = qword_10043F590;
  if (!qword_10043F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F590);
  }

  return result;
}

uint64_t sub_100095864(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100095888, 0, 0);
}

uint64_t sub_100095888()
{
  sub_1002D85B0();
  _AXSVoiceOverTouchSetShouldRouteToSpeakerWithProximity();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100095900(uint64_t a1)
{
  v2 = sub_1000955E4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100095940()
{
  result = qword_10043F598;
  if (!qword_10043F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F598);
  }

  return result;
}

uint64_t sub_1000959C0()
{
  result = sub_1000A1C90();
  qword_10051BFC0 = result;
  return result;
}

void (*sub_100095A10(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100095A88()
{
  result = qword_10043F5A0;
  if (!qword_10043F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5A0);
  }

  return result;
}

unint64_t sub_100095AE0()
{
  result = qword_10043F5A8;
  if (!qword_10043F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5A8);
  }

  return result;
}

uint64_t sub_100095BA0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100095BC4, 0, 0);
}

uint64_t sub_100095BC4()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setEnableVoiceOverCaptions:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100095C78(uint64_t a1)
{
  v2 = sub_100095940();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100095CB8()
{
  result = qword_10043F5B0;
  if (!qword_10043F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5B0);
  }

  return result;
}

uint64_t sub_100095D34()
{
  result = sub_1000A1C90();
  qword_10051BFF8 = result;
  return result;
}

void (*sub_100095D80(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100095DF8()
{
  result = qword_10043F5B8;
  if (!qword_10043F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5B8);
  }

  return result;
}

unint64_t sub_100095E50()
{
  result = qword_10043F5C0;
  if (!qword_10043F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5C0);
  }

  return result;
}

uint64_t sub_100095F10(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100095F34, 0, 0);
}

uint64_t sub_100095F34()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverLargeCursorEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100095FE8(uint64_t a1)
{
  v2 = sub_100095CB8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100096028()
{
  result = qword_10043F5C8;
  if (!qword_10043F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5C8);
  }

  return result;
}

uint64_t sub_1000960AC()
{
  result = swift_getKeyPath();
  qword_10051C028 = result;
  return result;
}

void sub_1000960D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x8000000100359500;
  v6._countAndFlagsBits = 0xD000000000000011;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051C030 = v2;
  *algn_10051C038 = v4;
}

uint64_t sub_10009617C()
{
  result = swift_getKeyPath();
  qword_10051C040 = result;
  return result;
}

uint64_t sub_1000961D4()
{
  result = swift_getKeyPath();
  qword_10051C058 = result;
  return result;
}

uint64_t sub_10009620C()
{
  result = sub_1000A1C90();
  qword_10051C078 = result;
  return result;
}

uint64_t sub_10009623C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10009629C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100096314()
{
  result = qword_10043F5D0;
  if (!qword_10043F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5D0);
  }

  return result;
}

unint64_t sub_10009636C()
{
  result = qword_10043F5D8;
  if (!qword_10043F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5D8);
  }

  return result;
}

uint64_t sub_10009642C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100096450, 0, 0);
}

uint64_t sub_100096450()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverFlashlightNotificationsEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100096504(uint64_t a1)
{
  v2 = sub_100096028();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100096544()
{
  result = qword_10043F5E0;
  if (!qword_10043F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5E0);
  }

  return result;
}

uint64_t sub_1000965C4()
{
  result = sub_1000A1C90();
  qword_10051C0B0 = result;
  return result;
}

void (*sub_100096614(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009668C()
{
  result = qword_10043F5E8;
  if (!qword_10043F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5E8);
  }

  return result;
}

unint64_t sub_1000966E4()
{
  result = qword_10043F5F0;
  if (!qword_10043F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5F0);
  }

  return result;
}

uint64_t sub_1000967A4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000967C8, 0, 0);
}

uint64_t sub_1000967C8()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverSpeakTableHeaders:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10009687C(uint64_t a1)
{
  v2 = sub_100096544();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000968BC()
{
  result = qword_10043F5F8;
  if (!qword_10043F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F5F8);
  }

  return result;
}

uint64_t sub_10009691C()
{
  result = sub_1000A1C90();
  qword_10051C0E8 = result;
  return result;
}

uint64_t sub_10009694C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_1000969AC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100096A24()
{
  result = qword_10043F600;
  if (!qword_10043F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F600);
  }

  return result;
}

unint64_t sub_100096A7C()
{
  result = qword_10043F608;
  if (!qword_10043F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F608);
  }

  return result;
}

uint64_t sub_100096B3C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100096B60, 0, 0);
}

uint64_t sub_100096B60()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverSpeakTableColumnRowInformation:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100096C14(uint64_t a1)
{
  v2 = sub_1000968BC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100096C54()
{
  result = qword_10043F610;
  if (!qword_10043F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F610);
  }

  return result;
}

uint64_t sub_100096CB4()
{
  result = sub_1000A1C90();
  qword_10051C120 = result;
  return result;
}

uint64_t sub_100096CE4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100096D44(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100096DBC()
{
  result = qword_10043F618;
  if (!qword_10043F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F618);
  }

  return result;
}

unint64_t sub_100096E14()
{
  result = qword_10043F620;
  if (!qword_10043F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F620);
  }

  return result;
}

uint64_t sub_100096ED4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100096EF8, 0, 0);
}

uint64_t sub_100096EF8()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverSpeakActionConfirmation:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100096FAC(uint64_t a1)
{
  v2 = sub_100096C54();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100096FEC()
{
  result = qword_10043F628;
  if (!qword_10043F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F628);
  }

  return result;
}

uint64_t sub_10009704C()
{
  result = sub_1000A1C90();
  qword_10051C158 = result;
  return result;
}

uint64_t sub_10009707C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_1000970DC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100097154()
{
  result = qword_10043F630;
  if (!qword_10043F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F630);
  }

  return result;
}

unint64_t sub_1000971AC()
{
  result = qword_10043F638;
  if (!qword_10043F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F638);
  }

  return result;
}

uint64_t sub_10009726C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100097290, 0, 0);
}

uint64_t sub_100097290()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverUseRingerSwitchToControlNotificationOutput:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100097344(uint64_t a1)
{
  v2 = sub_100096FEC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100097384()
{
  result = qword_10043F640;
  if (!qword_10043F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F640);
  }

  return result;
}

uint64_t sub_100097400()
{
  result = sub_1000A1C90();
  qword_10051C190 = result;
  return result;
}

void (*sub_10009744C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000974C4()
{
  result = qword_10043F648;
  if (!qword_10043F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F648);
  }

  return result;
}

unint64_t sub_10009751C()
{
  result = qword_10043F650;
  if (!qword_10043F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F650);
  }

  return result;
}

uint64_t sub_1000975DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100097600, 0, 0);
}

uint64_t sub_100097600()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverPitchChangeEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000976B4(uint64_t a1)
{
  v2 = sub_100097384();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000976F4()
{
  result = qword_10043F658;
  if (!qword_10043F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F658);
  }

  return result;
}

uint64_t sub_100097754()
{
  result = sub_1000A1C90();
  qword_10051C1C8 = result;
  return result;
}

uint64_t sub_100097784(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_1000977E4(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009785C()
{
  result = qword_10043F660;
  if (!qword_10043F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F660);
  }

  return result;
}

unint64_t sub_1000978B4()
{
  result = qword_10043F668;
  if (!qword_10043F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F668);
  }

  return result;
}

uint64_t sub_100097974(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100097998, 0, 0);
}

uint64_t sub_100097998()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverLanguageDetectionEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100097A4C(uint64_t a1)
{
  v2 = sub_1000976F4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100097A8C()
{
  result = qword_10043F670;
  if (!qword_10043F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F670);
  }

  return result;
}

uint64_t sub_100097B08()
{
  result = sub_1000A1C90();
  qword_10051C200 = result;
  return result;
}

void (*sub_100097B54(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100097BCC()
{
  result = qword_10043F678;
  if (!qword_10043F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F678);
  }

  return result;
}

unint64_t sub_100097C24()
{
  result = qword_10043F680;
  if (!qword_10043F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F680);
  }

  return result;
}

uint64_t sub_100097CE4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100097D08, 0, 0);
}

uint64_t sub_100097D08()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverHintsEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100097DBC(uint64_t a1)
{
  v2 = sub_100097A8C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100097DFC()
{
  result = qword_10043F688;
  if (!qword_10043F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F688);
  }

  return result;
}

uint64_t sub_100097E68()
{
  result = sub_1000A1C90();
  qword_10051C238 = result;
  return result;
}

void (*sub_100097EA4(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100097F1C()
{
  result = qword_10043F690;
  if (!qword_10043F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F690);
  }

  return result;
}

unint64_t sub_100097F74()
{
  result = qword_10043F698;
  if (!qword_10043F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F698);
  }

  return result;
}

uint64_t sub_100098034(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100098058, 0, 0);
}

uint64_t sub_100098058()
{
  sub_1002D85B0();
  _AXSZoomTouchSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000980D0(uint64_t a1)
{
  v2 = sub_100097DFC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100098110()
{
  result = qword_10043F6A0;
  if (!qword_10043F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6A0);
  }

  return result;
}

uint64_t sub_10009818C()
{
  result = sub_1000A1C90();
  qword_10051C270 = result;
  return result;
}

void (*sub_1000981D8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100098250()
{
  result = qword_10043F6A8;
  if (!qword_10043F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6A8);
  }

  return result;
}

unint64_t sub_1000982A8()
{
  result = qword_10043F6B0;
  if (!qword_10043F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6B0);
  }

  return result;
}

uint64_t sub_100098368(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10009838C, 0, 0);
}

uint64_t sub_10009838C()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomShouldFollowFocus:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100098440(uint64_t a1)
{
  v2 = sub_100098110();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100098480()
{
  result = qword_10043F6B8;
  if (!qword_10043F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6B8);
  }

  return result;
}

uint64_t sub_1000984FC()
{
  result = sub_1000A1C90();
  qword_10051C2A8 = result;
  return result;
}

void (*sub_100098548(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000985C0()
{
  result = qword_10043F6C0;
  if (!qword_10043F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6C0);
  }

  return result;
}

unint64_t sub_100098618()
{
  result = qword_10043F6C8;
  if (!qword_10043F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6C8);
  }

  return result;
}

uint64_t sub_1000986D8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000986FC, 0, 0);
}

uint64_t sub_1000986FC()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomAlwaysUseWindowedZoomForTyping:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000987B0(uint64_t a1)
{
  v2 = sub_100098480();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000987F0()
{
  result = qword_10043F6D0;
  if (!qword_10043F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6D0);
  }

  return result;
}

uint64_t sub_100098850()
{
  result = sub_1000A1C90();
  qword_10051C2E0 = result;
  return result;
}

uint64_t sub_100098880(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_1000988E0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100098958()
{
  result = qword_10043F6D8;
  if (!qword_10043F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6D8);
  }

  return result;
}

unint64_t sub_1000989B0()
{
  result = qword_10043F6E0;
  if (!qword_10043F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6E0);
  }

  return result;
}

uint64_t sub_100098A70(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100098A94, 0, 0);
}

uint64_t sub_100098A94()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomShowWhileMirroring:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100098B48(uint64_t a1)
{
  v2 = sub_1000987F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100098B88()
{
  result = qword_10043F6E8;
  if (!qword_10043F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6E8);
  }

  return result;
}

uint64_t sub_100098BE8()
{
  result = sub_1000A1C90();
  qword_10051C318 = result;
  return result;
}

uint64_t sub_100098C18(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100098C78(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100098CF0()
{
  result = qword_10043F6F0;
  if (!qword_10043F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6F0);
  }

  return result;
}

unint64_t sub_100098D48()
{
  result = qword_10043F6F8;
  if (!qword_10043F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F6F8);
  }

  return result;
}

uint64_t sub_100098E08(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100098E2C, 0, 0);
}

uint64_t sub_100098E2C()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomKeyboardShortcutsEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100098EE0(uint64_t a1)
{
  v2 = sub_100098B88();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100098F20()
{
  result = qword_10043F700;
  if (!qword_10043F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F700);
  }

  return result;
}

uint64_t sub_100098F80()
{
  result = sub_1000A1C90();
  qword_10051C350 = result;
  return result;
}

uint64_t sub_100098FB0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100099010(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100099088()
{
  result = qword_10043F708;
  if (!qword_10043F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F708);
  }

  return result;
}

unint64_t sub_1000990E0()
{
  result = qword_10043F710;
  if (!qword_10043F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F710);
  }

  return result;
}

uint64_t sub_1000991A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000991C4, 0, 0);
}

uint64_t sub_1000991C4()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomAdjustZoomLevelKbShortcutEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100099278(uint64_t a1)
{
  v2 = sub_100098F20();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000992B8()
{
  result = qword_10043F718;
  if (!qword_10043F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F718);
  }

  return result;
}

uint64_t sub_100099334()
{
  result = sub_1000A1C90();
  qword_10051C388 = result;
  return result;
}

void (*sub_100099380(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_1000993F8()
{
  result = qword_10043F720;
  if (!qword_10043F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F720);
  }

  return result;
}

unint64_t sub_100099450()
{
  result = qword_10043F728;
  if (!qword_10043F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F728);
  }

  return result;
}

uint64_t sub_100099510(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100099534, 0, 0);
}

uint64_t sub_100099534()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomToggleZoomKbShortcutEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000995E8(uint64_t a1)
{
  v2 = sub_1000992B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100099628()
{
  result = qword_10043F730;
  if (!qword_10043F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F730);
  }

  return result;
}

uint64_t sub_100099688()
{
  result = sub_1000A1C90();
  qword_10051C3C0 = result;
  return result;
}

uint64_t sub_1000996B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100099718(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100099790()
{
  result = qword_10043F738;
  if (!qword_10043F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F738);
  }

  return result;
}

unint64_t sub_1000997E8()
{
  result = qword_10043F740;
  if (!qword_10043F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F740);
  }

  return result;
}

uint64_t sub_1000998A8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000998CC, 0, 0);
}

uint64_t sub_1000998CC()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomPanZoomKbShortcutEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100099980(uint64_t a1)
{
  v2 = sub_100099628();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000999C0()
{
  result = qword_10043F748;
  if (!qword_10043F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F748);
  }

  return result;
}

uint64_t sub_100099A20()
{
  result = sub_1000A1C90();
  qword_10051C3F8 = result;
  return result;
}

uint64_t sub_100099A50(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100099AB0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100099B28()
{
  result = qword_10043F750;
  if (!qword_10043F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F750);
  }

  return result;
}

unint64_t sub_100099B80()
{
  result = qword_10043F758;
  if (!qword_10043F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F758);
  }

  return result;
}

uint64_t sub_100099C40(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100099C64, 0, 0);
}

uint64_t sub_100099C64()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomResizeZoomWindowKbShortcutEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100099D18(uint64_t a1)
{
  v2 = sub_1000999C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100099D58()
{
  result = qword_10043F760;
  if (!qword_10043F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F760);
  }

  return result;
}

uint64_t sub_100099DB8()
{
  result = sub_1000A1C90();
  qword_10051C430 = result;
  return result;
}

uint64_t sub_100099DE8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_100099E48(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_100099EC0()
{
  result = qword_10043F768;
  if (!qword_10043F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F768);
  }

  return result;
}

unint64_t sub_100099F18()
{
  result = qword_10043F770;
  if (!qword_10043F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F770);
  }

  return result;
}

uint64_t sub_100099FD8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100099FFC, 0, 0);
}

uint64_t sub_100099FFC()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomSwitchZoomModeKbShortcutEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10009A0B0(uint64_t a1)
{
  v2 = sub_100099D58();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10009A0F0()
{
  result = qword_10043F778;
  if (!qword_10043F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F778);
  }

  return result;
}

uint64_t sub_10009A150()
{
  result = sub_1000A1C90();
  qword_10051C468 = result;
  return result;
}

uint64_t sub_10009A180(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10009A1E0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009A258()
{
  result = qword_10043F780;
  if (!qword_10043F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F780);
  }

  return result;
}

unint64_t sub_10009A2B0()
{
  result = qword_10043F788;
  if (!qword_10043F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F788);
  }

  return result;
}

uint64_t sub_10009A370(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10009A394, 0, 0);
}

uint64_t sub_10009A394()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomTempToggleZoomKbShortcutEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10009A448(uint64_t a1)
{
  v2 = sub_10009A0F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10009A488()
{
  result = qword_10043F790;
  if (!qword_10043F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F790);
  }

  return result;
}

uint64_t sub_10009A4E8()
{
  result = sub_1000A1C90();
  qword_10051C4A0 = result;
  return result;
}

uint64_t sub_10009A518(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10009A578(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009A5F0()
{
  result = qword_10043F798;
  if (!qword_10043F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F798);
  }

  return result;
}

unint64_t sub_10009A648()
{
  result = qword_10043F7A0;
  if (!qword_10043F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7A0);
  }

  return result;
}

uint64_t sub_10009A708(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10009A72C, 0, 0);
}

uint64_t sub_10009A72C()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomScrollWheelKbShortcutEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10009A7E0(uint64_t a1)
{
  v2 = sub_10009A488();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10009A820()
{
  result = qword_10043F7A8;
  if (!qword_10043F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7A8);
  }

  return result;
}

uint64_t sub_10009A880()
{
  result = sub_1000A1C90();
  qword_10051C4D8 = result;
  return result;
}

uint64_t sub_10009A8B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10009A910(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009A988()
{
  result = qword_10043F7B0;
  if (!qword_10043F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7B0);
  }

  return result;
}

unint64_t sub_10009A9E0()
{
  result = qword_10043F7B8;
  if (!qword_10043F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7B8);
  }

  return result;
}

uint64_t sub_10009AAA0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10009AAC4, 0, 0);
}

uint64_t sub_10009AAC4()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomTrackpadGestureEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10009AB78(uint64_t a1)
{
  v2 = sub_10009A820();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10009ABB8()
{
  result = qword_10043F7C0;
  if (!qword_10043F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7C0);
  }

  return result;
}

uint64_t sub_10009AC3C()
{
  result = swift_getKeyPath();
  qword_10051C508 = result;
  return result;
}

uint64_t sub_10009AC74()
{
  result = sub_1000A1C90();
  qword_10051C528 = result;
  return result;
}

uint64_t sub_10009ACA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10009AD04(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009AD7C()
{
  result = qword_10043F7C8;
  if (!qword_10043F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7C8);
  }

  return result;
}

unint64_t sub_10009ADD4()
{
  result = qword_10043F7D0;
  if (!qword_10043F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7D0);
  }

  return result;
}

uint64_t sub_10009AE94(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10009AEB8, 0, 0);
}

uint64_t sub_10009AEB8()
{
  sub_1002D85B0();
  _AXSPointerScaleWithZoomLevelSetEnabled();
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009AF30(uint64_t a1)
{
  v2 = sub_10009ABB8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10009AF70()
{
  result = qword_10043F7D8;
  if (!qword_10043F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7D8);
  }

  return result;
}

uint64_t sub_10009AFF0()
{
  result = sub_1000A1C90();
  qword_10051C560 = result;
  return result;
}

uint64_t sub_10009B040(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1002D8910();
  sub_10001EDF0(v5, a2);
  sub_10001EDB8(v5, a2);
  return sub_1002D88F0();
}

void (*sub_10009B0A0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009B118()
{
  result = qword_10043F7E0;
  if (!qword_10043F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7E0);
  }

  return result;
}

unint64_t sub_10009B170()
{
  result = qword_10043F7E8;
  if (!qword_10043F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7E8);
  }

  return result;
}

uint64_t sub_10009B230(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10009B254, 0, 0);
}

uint64_t sub_10009B254()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomShouldShowSlug:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10009B308(uint64_t a1)
{
  v2 = sub_10009AF70();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10009B348()
{
  result = qword_10043F7F0;
  if (!qword_10043F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7F0);
  }

  return result;
}

uint64_t sub_10009B3A8()
{
  result = sub_1000A1C90();
  qword_10051C598 = result;
  return result;
}

uint64_t sub_10009B3D8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

void (*sub_10009B438(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1000B46A8;
}

unint64_t sub_10009B4B0()
{
  result = qword_10043F7F8;
  if (!qword_10043F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F7F8);
  }

  return result;
}

unint64_t sub_10009B508()
{
  result = qword_10043F800;
  if (!qword_10043F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F800);
  }

  return result;
}

uint64_t sub_10009B5C8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10009B5EC, 0, 0);
}

uint64_t sub_10009B5EC()
{
  sub_1002D85B0();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomSlugTapAndSlideToAdjustZoomLevelEnabled:v1];

  sub_1002D8590();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10009B6A0(uint64_t a1)
{
  v2 = sub_10009B348();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_10009C0C0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x8000000100359520;
  v6._countAndFlagsBits = 0xD000000000000021;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051C5B8 = v2;
  unk_10051C5C0 = v4;
}

uint64_t sub_10009C164()
{
  result = swift_getKeyPath();
  qword_10051C5C8 = result;
  return result;
}

void sub_10009C190()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x8000000100359550;
  v6._countAndFlagsBits = 0xD000000000000021;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051C5D0 = v2;
  *algn_10051C5D8 = v4;
}

uint64_t sub_10009C234()
{
  result = swift_getKeyPath();
  qword_10051C5E0 = result;
  return result;
}

void sub_10009C260()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x8000000100359580;
  v6._countAndFlagsBits = 0xD000000000000021;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051C5E8 = v2;
  unk_10051C5F0 = v4;
}

uint64_t sub_10009C304()
{
  result = swift_getKeyPath();
  qword_10051C5F8 = result;
  return result;
}

void sub_10009C330()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x80000001003559B0;
  v6._countAndFlagsBits = 0xD000000000000010;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051C600 = v2;
  *algn_10051C608 = v4;
}

uint64_t sub_10009C3D4()
{
  result = swift_getKeyPath();
  qword_10051C610 = result;
  return result;
}

uint64_t sub_10009C42C()
{
  result = swift_getKeyPath();
  qword_10051C628 = result;
  return result;
}

uint64_t sub_10009C484()
{
  result = swift_getKeyPath();
  qword_10051C640 = result;
  return result;
}

uint64_t sub_10009C4E0()
{
  result = swift_getKeyPath();
  qword_10051C658 = result;
  return result;
}

void sub_10009C538(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v9 = [objc_opt_self() mainBundle];
  v14._countAndFlagsBits = 0xE000000000000000;
  v15._countAndFlagsBits = a2;
  v15._object = a3;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v10.super.isa = v9;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v11 = sub_1002D88D0(v15, v16, v10, v17, 0, v14);
  v13 = v12;

  *a4 = v11;
  *a5 = v13;
}

uint64_t sub_10009C5E0()
{
  result = swift_getKeyPath();
  qword_10051C670 = result;
  return result;
}

uint64_t sub_10009C630@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009C6A0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009C710@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009C780@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009C7F0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009C860@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009C8D0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009C940@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009C9B0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CA20@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CA90@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CB00@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CB70@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CBE4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438E80, &qword_100519F48, sub_10002B754, sub_100016AD0);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009CC74@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CCE4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CD54@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CDC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438E50, &qword_100519EE8, sub_10002B750, sub_100014130);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009CE58@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CEC8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CF38@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009CFA8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D018@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D088@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D0F8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D168@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D1D8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D248@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D2B8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D328@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D398@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D408@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D47C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438E60, &qword_100519F08, sub_10002B750, sub_100014F3C);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009D50C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D57C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D5EC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D65C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D6CC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D73C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D7AC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D81C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D88C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D8FC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D96C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009D9DC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DA4C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DABC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DB2C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DBA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438E70, &qword_100519F28, sub_10002B750, sub_100015D14);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009DC30@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DCA0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DD10@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DD80@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DDF0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DE60@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DED0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DF40@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009DFB0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E020@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E090@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E100@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E170@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E1E0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E250@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E2C0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E330@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E3A0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E438@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E4A8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E518@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E588@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E5F8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E668@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E6D8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E748@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E7B8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E828@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E898@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E908@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E978@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009E9E8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EA58@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EAC8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EB38@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EBA8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EC18@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EC88@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009ECF8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009ED68@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EDD8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EE48@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EEB8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009EF2C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438E90, &qword_100519F68, sub_10002B750, sub_100017944);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009EFBC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F02C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F09C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F110@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438EE0, &qword_10051A008, sub_10002B754, sub_10001B988);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009F1A0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F210@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F280@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F2F0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F364@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438EF0, &qword_10051A028, sub_10002B754, sub_10001C544);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009F3F4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F464@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F4D4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F544@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F5B4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F624@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F694@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F704@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F774@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F7E4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F854@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F8C4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F938@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438EA0, &qword_100519F88, sub_100026144, sub_100018620);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009F9CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438EB0, &qword_100519FA8, sub_10002B750, sub_1000192F8);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009FA60@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438EC0, &qword_100519FC8, sub_1000261BC, sub_10001A108);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009FAF0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009FB64@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438DA0, &qword_100519D88, sub_10002B750, sub_10000AB74);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009FBF8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438ED0, &qword_100519FE8, sub_10002B750, sub_10001ADE4);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009FC88@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009FCF8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009FD6C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438DB0, &qword_100519DA8, sub_10002B750, sub_10000BF18);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10009FDFC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009FE6C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009FEDC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009FF4C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_10009FFBC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A002C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A009C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A010C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0180@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438F00, &qword_10051A048, sub_10002B750, sub_10001D2DC);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A0210@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0280@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A02F0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0364@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438DC0, &qword_100519DC8, sub_10002B750, sub_10000CAB4);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A03F4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0468@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438DD0, &qword_100519DE8, sub_10002B750, sub_10000D648);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A04FC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438DE0, &qword_100519E08, sub_10002B750, sub_10000E550);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A058C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0600@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438DF0, &qword_100519E28, sub_10002B750, sub_10000F454);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A06F0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0760@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A07D0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A087C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = sub_100078678(*a1, a2, a3, a4, a5, a6);
  *a7 = result;
  *(a7 + 8) = v9;
  *(a7 + 16) = v10 & 1;
  *(a7 + 24) = v11;
  return result;
}

uint64_t sub_1000A08D8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0948@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A09B8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0A28@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0A9C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438E40, &qword_100519EC8, sub_10002B750, sub_100013324);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A0B30@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438E20, &qword_100519E88, sub_10002B750, sub_1000119B8);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A0BC4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438E10, &qword_100519E68, sub_10002B750, sub_100010E20);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A0C54@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0CC4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0D34@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0DA4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0E14@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0E84@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0EF4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0F64@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A0FD4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1044@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A10B4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1124@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1194@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1204@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1274@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A12E4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1354@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A13C4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1434@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A14A4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1514@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1588@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438D90, &qword_100519D68, sub_10002B750, sub_100009D00);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A1618@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A1688@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A16F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_1002D8910();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = sub_10001EDB8(v7, a2);
  (*(v8 + 16))(v10, v11, v7);
  result = sub_1002D8B30();
  *a4 = result;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v15;
  return result;
}

uint64_t sub_1000A1814@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1002D8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000A18B0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438D30, &qword_100519CA8, sub_10002B750, sub_100003740);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A196C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078824(*a1, a2, &qword_100438D40, &qword_100519CC8, sub_10002B754, sub_1000047D4);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A1A00@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000789D0(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000A1A60@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078B8C(*a1, a2, &qword_100438D60, &qword_100519D08, sub_100025CB8, sub_1000066D0);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A1AF4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078B8C(*a1, a2, &qword_100438D70, &qword_100519D28, sub_100025D7C, sub_100007830);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A1B88@<X0>(void *a1@<X1>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_10002B218();

  result = sub_1002D8B40();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t sub_1000A1C24@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100078B8C(*a1, a2, &qword_100438D80, &qword_100519D48, sub_100025E50, sub_1000089DC);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1000A1C90()
{
  v0 = sub_1002D87A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000321C(&qword_10043CF38, "f'\n");
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18[-v11];
  v13 = sub_1002D8910();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  (*(v14 + 56))(v12, 1, 1, v13);
  v18[15] = 2;
  v15 = sub_1002D8D60();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = sub_1002D8570();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  return sub_1002D85F0();
}

uint64_t sub_1000A1FC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000A2000(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B72C;

  return sub_1000027BC(a1, v4, v5, v6);
}

uint64_t sub_1000A20B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A20EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100023140;

  return sub_100002F80();
}

unint64_t sub_1000A2D48(uint64_t a1)
{
  result = sub_1000A2D70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A2D70()
{
  result = qword_10043F860;
  if (!qword_10043F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F860);
  }

  return result;
}

unint64_t sub_1000A2DC4(uint64_t a1)
{
  result = sub_1000A2DEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A2DEC()
{
  result = qword_10043F8B0;
  if (!qword_10043F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F8B0);
  }

  return result;
}

unint64_t sub_1000A2E40(uint64_t a1)
{
  result = sub_1000A2E68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A2E68()
{
  result = qword_10043F900;
  if (!qword_10043F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F900);
  }

  return result;
}

unint64_t sub_1000A2EBC(uint64_t a1)
{
  result = sub_1000A2EE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A2EE4()
{
  result = qword_10043F958;
  if (!qword_10043F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F958);
  }

  return result;
}

unint64_t sub_1000A2F38(uint64_t a1)
{
  result = sub_1000A2F60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A2F60()
{
  result = qword_10043F9B0;
  if (!qword_10043F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043F9B0);
  }

  return result;
}

unint64_t sub_1000A2FB4(uint64_t a1)
{
  result = sub_1000A2FDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A2FDC()
{
  result = qword_10043FA00;
  if (!qword_10043FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043FA00);
  }

  return result;
}

unint64_t sub_1000A3030(uint64_t a1)
{
  result = sub_1000A3058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A3058()
{
  result = qword_10043FA50;
  if (!qword_10043FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043FA50);
  }

  return result;
}

unint64_t sub_1000A30AC(uint64_t a1)
{
  result = sub_1000A30D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A30D4()
{
  result = qword_10043FAA0;
  if (!qword_10043FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043FAA0);
  }

  return result;
}

unint64_t sub_1000A3128(uint64_t a1)
{
  result = sub_1000A3150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A3150()
{
  result = qword_10043FAF0;
  if (!qword_10043FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043FAF0);
  }

  return result;
}

unint64_t sub_1000A31A4(uint64_t a1)
{
  result = sub_1000A31CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A31CC()
{
  result = qword_10043FB40;
  if (!qword_10043FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043FB40);
  }

  return result;
}

unint64_t sub_1000A3220(uint64_t a1)
{
  result = sub_1000A3248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A3248()
{
  result = qword_10043FB90;
  if (!qword_10043FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043FB90);
  }

  return result;
}

unint64_t sub_1000A329C(uint64_t a1)
{
  result = sub_1000A32C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A32C4()
{
  result = qword_10043FBE0;
  if (!qword_10043FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043FBE0);
  }

  return result;
}

unint64_t sub_1000A3318(uint64_t a1)
{
  result = sub_1000A3340();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A3340()
{
  result = qword_10043FC30;
  if (!qword_10043FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043FC30);
  }

  return result;
}