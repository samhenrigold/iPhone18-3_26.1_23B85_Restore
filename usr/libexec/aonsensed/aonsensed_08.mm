void sub_1000D3F6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 20) = v5;

  free(v2);
}

BOOL sub_1000D4038()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 20) != 2;
}

uint64_t sub_1000D408C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 20) = 2;
  return result;
}

float sub_1000D4124()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 28))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000D4180(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 28) = 0;
  return result;
}

void (*sub_1000D4224(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_1000D42D4;
}

void sub_1000D42D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 28) = 0;

  free(v2);
}

BOOL sub_1000D43A8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return (*(v1 + 28) & 1) == 0;
}

uint64_t sub_1000D43FC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 24) = 0;
  *(v4 + 28) = 1;
  return result;
}

double sub_1000D44B0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 32);
  if (*(v2 + 40))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000D4554(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), double a4)
{
  v7 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    a3(v11);

    *(v7 + v9) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 32) = a4;
  *(v11 + 40) = 0;
  return result;
}

void (*sub_1000D4618(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000D46C8;
}

void sub_1000D46F4(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 88);
    v13 = *(v6 + 80);
    a3(0);
    v14 = swift_allocObject();
    a4(v11);

    *(v13 + v12) = v14;
    v11 = v14;
  }

  swift_beginAccess();
  *(v11 + 32) = v7;
  *(v11 + 40) = 0;

  free(v6);
}

BOOL sub_1000D47F0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 40) & 1) == 0;
}

uint64_t sub_1000D488C(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    a3(v9);

    *(v6 + v7) = v10;
    v9 = v10;
  }

  result = swift_beginAccess();
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  return result;
}

uint64_t sub_1000D4948()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 41) & 1;
}

uint64_t sub_1000D4998(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 41) = a1 & 1;
  return result;
}

void (*sub_1000D4A3C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 41) & 1;
  return sub_1000D4AE0;
}

void sub_1000D4AE0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 41) = v5;

  free(v2);
}

BOOL sub_1000D4BAC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 41) != 2;
}

uint64_t sub_1000D4C00()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 41) = 2;
  return result;
}

uint64_t sub_1000D4C98()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 42) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 42);
  }
}

uint64_t sub_1000D4CEC(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 42) = a1;
  return result;
}

void (*sub_1000D4D8C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 42);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D4E34;
}

void sub_1000D4E34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 42) = v3;

  free(v2);
}

BOOL sub_1000D4F04()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 42) != 4;
}

uint64_t sub_1000D4F58()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 42) = 4;
  return result;
}

double sub_1000D5008(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 48);
  if (*(v2 + 56))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000D50AC(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), double a4)
{
  v7 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    a3(v11);

    *(v7 + v9) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 48) = a4;
  *(v11 + 56) = 0;
  return result;
}

void (*sub_1000D5170(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 56))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000D5220;
}

void sub_1000D524C(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 88);
    v13 = *(v6 + 80);
    a3(0);
    v14 = swift_allocObject();
    a4(v11);

    *(v13 + v12) = v14;
    v11 = v14;
  }

  swift_beginAccess();
  *(v11 + 48) = v7;
  *(v11 + 56) = 0;

  free(v6);
}

BOOL sub_1000D5348(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 56) & 1) == 0;
}

uint64_t sub_1000D53E4(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    a3(v9);

    *(v6 + v7) = v10;
    v9 = v10;
  }

  result = swift_beginAccess();
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  return result;
}

double sub_1000D54B8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 64);
  if (*(v2 + 72))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000D555C(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), double a4)
{
  v7 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    a3(v11);

    *(v7 + v9) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 64) = a4;
  *(v11 + 72) = 0;
  return result;
}

void (*sub_1000D5620(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 64);
  if (*(v6 + 72))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000D56D0;
}

void sub_1000D56FC(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 88);
    v13 = *(v6 + 80);
    a3(0);
    v14 = swift_allocObject();
    a4(v11);

    *(v13 + v12) = v14;
    v11 = v14;
  }

  swift_beginAccess();
  *(v11 + 64) = v7;
  *(v11 + 72) = 0;

  free(v6);
}

BOOL sub_1000D57F8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 72) & 1) == 0;
}

uint64_t sub_1000D5894(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    a3(v9);

    *(v6 + v7) = v10;
    v9 = v10;
  }

  result = swift_beginAccess();
  *(v9 + 64) = 0;
  *(v9 + 72) = 1;
  return result;
}

uint64_t sub_1000D5950()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 73) == 72)
  {
    return 0;
  }

  else
  {
    return *(v1 + 73);
  }
}

uint64_t sub_1000D59A4(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 73) = a1;
  return result;
}

void (*sub_1000D5A44(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 73);
  if (v7 == 72)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D5AEC;
}

void sub_1000D5AEC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 73) = v3;

  free(v2);
}

BOOL sub_1000D5BBC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 73) != 72;
}

uint64_t sub_1000D5C10()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 73) = 72;
  return result;
}

uint64_t sub_1000D5CA8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 74) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 74);
  }
}

uint64_t sub_1000D5CFC(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 74) = a1;
  return result;
}

void (*sub_1000D5D9C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 74);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D5E44;
}

void sub_1000D5E44(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 74) = v3;

  free(v2);
}

BOOL sub_1000D5F14()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 74) != 4;
}

uint64_t sub_1000D5F68()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 74) = 4;
  return result;
}

uint64_t sub_1000D6020(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000D6194(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000D6414;
}

void sub_1000D6414(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v9 = swift_allocObject();
      sub_1001745A0(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v22 = swift_allocObject();
      sub_1001745A0(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000D6674()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA30, &qword_100374460);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA30, &qword_100374460);
  return v7;
}

uint64_t sub_1000D6794()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v8 = swift_allocObject();
    sub_1001745A0(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

uint64_t sub_1000D6904(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000D6A78(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000D6CF8;
}

void sub_1000D6CF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v9 = swift_allocObject();
      sub_1001745A0(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v22 = swift_allocObject();
      sub_1001745A0(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000D6F58()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA30, &qword_100374460);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA30, &qword_100374460);
  return v7;
}

uint64_t sub_1000D7078()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v8 = swift_allocObject();
    sub_1001745A0(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

uint64_t sub_1000D71C8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  if (*(v1 + v2) == 6)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

void (*sub_1000D726C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 6)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000D731C;
}

BOOL sub_1000D7350()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  return *(v1 + v2) != 6;
}

uint64_t sub_1000D73AC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  result = swift_beginAccess();
  *(v4 + v6) = 6;
  return result;
}

uint64_t sub_1000D7458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10019846C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D74C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198418();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D7528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001983C4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D7590(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198370();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t (*sub_1000D7678(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000D7948(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1000D7984(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000D79BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000D7A54()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000D7A84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_10041CA90, &qword_1003744C0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (qword_100443DF8 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_100443E00;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA90, &qword_1003744C0);
  }

  return result;
}

uint64_t sub_1000D7C2C(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CA90, &qword_1003744C0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000D7CE4(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA90, &qword_1003744C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA90, &qword_1003744C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100443DF8 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100443E00;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_10041CA90, &qword_1003744C0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  return sub_1000D7F3C;
}

uint64_t sub_1000D8034()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 20));
  if (v1 == 72)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D8060(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000D8090(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 72)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D811C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v0 + *(result + 20)) = 72;
  return result;
}

uint64_t sub_1000D815C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000D8194(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000D8230()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000D8278(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000D8330(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

BOOL sub_1000D85AC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1000D86E4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1000D8790()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 32));
  if (v1 == 72)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D87BC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1000D87EC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 72)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D8878()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v0 + *(result + 32)) = 72;
  return result;
}

uint64_t sub_1000D88A0@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(a1 + v2[5]) = 72;
  v3 = a1 + v2[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[7];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v2[8]) = 72;
  return result;
}

uint64_t (*sub_1000D897C(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000D8C4C(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000D8C84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000D8D1C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000D8D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA98, &qword_1003744C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_10041CA98, &qword_1003744C8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 72;
  v9 = a1 + v7[6];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v7[7];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + v7[8]) = 72;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA98, &qword_1003744C8);
  }

  return result;
}

uint64_t sub_1000D8F14(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CA98, &qword_1003744C8);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000D8FCC(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA98, &qword_1003744C8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA98, &qword_1003744C8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 72;
    v16 = v13 + v8[6];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v8[7];
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    *(v13 + v8[8]) = 72;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA98, &qword_1003744C8);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  }

  return sub_1000D9244;
}

uint64_t sub_1000D9324@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = a1(0);
  v7 = v6[5];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = a3 + v6[6];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v6[7];
  v11 = a2(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a3 + v10, 1, 1, v11);
}

uint64_t sub_1000D9434()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000D9488(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_1000D94D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100198F98;
}

uint64_t sub_1000D95B0()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_1000D9600(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1000D9674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_1000D96C0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100198F98;
}

uint64_t sub_1000D97B8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1000D97F8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 28));
  if (v1 == 67)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D9824(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000D9854(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 67)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D98E0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v0 + *(result + 28)) = 67;
  return result;
}

uint64_t sub_1000D9908()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 32));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D9934(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1000D9964(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D99F0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v0 + *(result + 32)) = 5;
  return result;
}

uint64_t sub_1000D9A18()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 36));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D9A44(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1000D9A74(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D9B00()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v0 + *(result + 36)) = 3;
  return result;
}

uint64_t sub_1000D9B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10019831C();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000D9B84@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_100174B7C(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1000D9BBC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100174B7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D9BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001982C8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D9C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198274();

  return Enum.hash(into:)(a1, a2, v4);
}

int *sub_1000D9CB8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + result[7]) = 67;
  *(a1 + result[8]) = 5;
  *(a1 + result[9]) = 3;
  return result;
}

uint64_t (*sub_1000D9D58(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DA028(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000DA0E0(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DA398()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28));
  if (v1 == 19)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000DA3C4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000DA3F4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 19)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000DA480()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  *(v0 + *(result + 28)) = 19;
  return result;
}

uint64_t (*sub_1000DA4D8(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DA790@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  sub_10000A0A4(v1 + *(v6 + 36), v5, &qword_10041CAA0, &qword_1003744D0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  }

  UnknownStorage.init()();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v7[7]) = 67;
  *(a1 + v7[8]) = 5;
  *(a1 + v7[9]) = 3;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CAA0, &qword_1003744D0);
  }

  return result;
}

uint64_t sub_1000DA920(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
  sub_1000059A8(v1 + v3, &qword_10041CAA0, &qword_1003744D0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000DA9D8(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CAA0, &qword_1003744D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CAA0, &qword_1003744D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = (v13 + v8[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v13 + v8[6]);
    *v17 = 0;
    v17[1] = 0;
    *(v13 + v8[7]) = 67;
    *(v13 + v8[8]) = 5;
    *(v13 + v8[9]) = 3;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAA0, &qword_1003744D0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  }

  return sub_1000DAC20;
}

BOOL sub_1000DAC5C()
{
  v1 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  sub_10000A0A4(v0 + *(v4 + 36), v3, &qword_10041CAA0, &qword_1003744D0);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000059A8(v3, &qword_10041CAA0, &qword_1003744D0);
  return v6;
}

uint64_t sub_1000DAD50()
{
  v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
  sub_1000059A8(v0 + v1, &qword_10041CAA0, &qword_1003744D0);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000DADEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198220();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000DAE38@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_100174BAC(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1000DAE70@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100174BAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000DAE9C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[6], 1, 1, v4);
  *(a1 + v2[7]) = 19;
  v5(a1 + v2[8], 1, 1, v4);
  v6 = v2[9];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_1000DB000(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100138A84(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000DB16C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000DB3EC;
}

void sub_1000DB3EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v9 = swift_allocObject();
      sub_100138A84(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v22 = swift_allocObject();
      sub_100138A84(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000DB63C()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA30, &qword_100374460);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA30, &qword_100374460);
  return v7;
}

uint64_t sub_1000DB75C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_100138A84(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

uint64_t sub_1000DB90C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    v15 = v13;
    v13 = v14;
    a4(v15);
    *(v9 + v11) = v14;
  }

  v16 = v13 + *a5;
  result = swift_beginAccess();
  *v16 = a1;
  *(v16 + 4) = 0;
  return result;
}

void (*sub_1000DB9D0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000DBA88;
}

void sub_1000DBABC(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 84);
  v11 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 72);
    a3(0);
    v16 = swift_allocObject();
    v17 = v13;
    v13 = v16;
    a4(v17);
    *(v15 + v14) = v16;
  }

  v18 = v13 + *a5;
  swift_beginAccess();
  *v18 = v9;
  *(v18 + 4) = 0;

  free(v8);
}

uint64_t sub_1000DBC14(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    v13 = v11;
    v11 = v12;
    a3(v13);
    *(v8 + v9) = v12;
  }

  v14 = v11 + *a4;
  result = swift_beginAccess();
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_1000DBCD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CAA8, &qword_1003744D8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  v12(a1 + v8[6], 1, 1, v11);
  *(a1 + v8[7]) = 19;
  v12(a1 + v8[8], 1, 1, v11);
  v13 = v8[9];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CAA8, &qword_1003744D8);
  }

  return result;
}

uint64_t sub_1000DBF34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100138A84(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CAA8, &qword_1003744D8);
  return swift_endAccess();
}

void (*sub_1000DC0A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CAA8, &qword_1003744D8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CAA8, &qword_1003744D8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    v20 = *(*(v19 - 8) + 56);
    v20(v13 + v18, 1, 1, v19);
    v20(v13 + v8[6], 1, 1, v19);
    *(v13 + v8[7]) = 19;
    v20(v13 + v8[8], 1, 1, v19);
    v21 = v8[9];
    v22 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAA8, &qword_1003744D8);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  }

  return sub_1000DC3CC;
}

void sub_1000DC3CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v9 = swift_allocObject();
      sub_100138A84(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CAA8, &qword_1003744D8);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v22 = swift_allocObject();
      sub_100138A84(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CAA8, &qword_1003744D8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000DC61C()
{
  v1 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CAA8, &qword_1003744D8);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CAA8, &qword_1003744D8);
  return v7;
}

uint64_t sub_1000DC73C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_100138A84(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CAA8, &qword_1003744D8);
  return swift_endAccess();
}

uint64_t sub_1000DC8F8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DC930(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DC9CC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DC9FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_10041CA90, &qword_1003744C0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (qword_100443DF8 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_100443E00;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA90, &qword_1003744C0);
  }

  return result;
}

uint64_t sub_1000DCBA4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA90, &qword_1003744C0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000DCC5C(void *a1))(uint64_t, uint64_t)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA90, &qword_1003744C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA90, &qword_1003744C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100443DF8 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100443E00;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_10041CA90, &qword_1003744C0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  return sub_100198F9C;
}

uint64_t sub_1000DCF54(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000DCF84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000DD00C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1000DD034@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v2[7]) = 2;
  return result;
}

uint64_t sub_1000DD0D0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 20));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000DD0FC(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000DD12C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000DD1B8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v0 + *(result + 20)) = 3;
  return result;
}

uint64_t sub_1000DD1F8(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD230(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD2CC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DD314(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD34C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD3E8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DD430(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD468(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD504()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1000DD54C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DD58C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD5C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD660()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1000DD6A8(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 40);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DD6E8(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD720(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 40);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD7BC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DD804(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD83C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 44);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD8D8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DD920(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DD958(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 48);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DD9F4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1000DDA24()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 52);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DDA5C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DDA94(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 52);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DDB30()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DDB60()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 56));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000DDB8C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t (*sub_1000DDBBC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 56);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000DDC48()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v0 + *(result + 56)) = 8;
  return result;
}

float sub_1000DDC70()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 60);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DDCA8(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DDCE0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 60);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DDD7C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v2 = v0 + *(result + 60);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DDDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001981CC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000DDE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198178();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000DDE70@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_100174C3C(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1000DDEA8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100174C3C(*a1);
  *a2 = result;
  return result;
}

int *sub_1000DDED4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(a1 + result[5]) = 3;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a1 + result[14]) = 8;
  v11 = a1 + result[15];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t (*sub_1000DDFE4(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DE2B4(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DE2EC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DE384()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DE3B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAB0, &qword_1003744E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_10041CAB0, &qword_1003744E0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 3;
  v9 = a1 + v7[6];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[7];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v7[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v7[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v7[12];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v7[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  *(a1 + v7[14]) = 8;
  v17 = a1 + v7[15];
  *v17 = 0;
  *(v17 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CAB0, &qword_1003744E0);
  }

  return result;
}

uint64_t sub_1000DE5B4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CAB0, &qword_1003744E0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000DE66C(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CAB0, &qword_1003744E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CAB0, &qword_1003744E0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 3;
    v16 = v13 + v8[6];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + v8[7];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[8];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[9];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[10];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[11];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[12];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[13];
    *v23 = 0;
    *(v23 + 4) = 1;
    *(v13 + v8[14]) = 8;
    v24 = v13 + v8[15];
    *v24 = 0;
    *(v24 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAB0, &qword_1003744E0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  }

  return sub_1000DE924;
}

uint64_t (*sub_1000DEA4C(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Timer(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t (*sub_1000DED60(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DF030(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DF068(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DF104()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DF14C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DF184(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DF220()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DF268(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DF2A0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DF33C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DF384(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DF3BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DF458()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DF4A0(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DF4D8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 40);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DF574()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DF5BC(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000DF5F4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000DF68C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000DF6BC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t (*sub_1000DF7CC(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000DFA9C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFAD4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DFB70()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DFBB8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFBF0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DFC8C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000DFCD4(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000DFD14(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFD4C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DFDE8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DFE30(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFE68(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000DFF04()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000DFF4C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000DFF84(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E0020()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E0068(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E00A0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 44);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E013C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E0184(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E01BC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 48);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E0258()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000E0288()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 52);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000E02C0(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E02F8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 52);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E0394()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000E03C4()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 56);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000E03FC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E0434(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 56);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E04D0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v2 = v0 + *(result + 56);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E0528(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t (*sub_1000E0558(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 60);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E05E0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v0 + *(result + 60)) = 2;
  return result;
}

uint64_t sub_1000E0630(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t (*sub_1000E0660(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 64);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E06E8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v0 + *(result + 64)) = 2;
  return result;
}

uint64_t sub_1000E0738(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*sub_1000E0768(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 68);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E07F0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v0 + *(result + 68)) = 2;
  return result;
}

uint64_t sub_1000E0840(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t (*sub_1000E0870(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 72);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E08F8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v0 + *(result + 72)) = 2;
  return result;
}

uint64_t sub_1000E0920@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v2[12];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v2[13];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v2[14];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(a1 + v2[15]) = 2;
  *(a1 + v2[16]) = 2;
  *(a1 + v2[17]) = 2;
  *(a1 + v2[18]) = 2;
  return result;
}

uint64_t sub_1000E0A74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10013E098(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E0BE0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000E0E60;
}

void sub_1000E0E60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v9 = swift_allocObject();
      sub_10013E098(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v22 = swift_allocObject();
      sub_10013E098(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000E10B0()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA30, &qword_100374460);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA30, &qword_100374460);
  return v7;
}

uint64_t sub_1000E11D0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10013E098(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E1380(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000E1438;
}

uint64_t sub_1000E14D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CAB8, &qword_1003744E8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v8[11];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a1 + v8[12];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a1 + v8[13];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a1 + v8[14];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(a1 + v8[15]) = 2;
  *(a1 + v8[16]) = 2;
  *(a1 + v8[17]) = 2;
  *(a1 + v8[18]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CAB8, &qword_1003744E8);
  }

  return result;
}

uint64_t sub_1000E1750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10013E098(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CAB8, &qword_1003744E8);
  return swift_endAccess();
}

uint64_t (*sub_1000E18BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CAB8, &qword_1003744E8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v4[11] = v10;
  sub_1000E14D4(v10);
  return sub_1000E1A04;
}

void sub_1000E1A04(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    sub_100172B7C(v2[11], v2[10], type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v7 = swift_allocObject();
      sub_10013E098(v6);
      *(v3 + v4) = v7;
      v6 = v7;
    }

    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[8];
    v11 = v2[9];
    v12 = v2[7];
    sub_1000112AC(v9, v12, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    (*(v11 + 56))(v12, 0, 1, v10);
    v13 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
    swift_beginAccess();
    sub_10000AD64(v12, v6 + v13, &qword_10041CAB8, &qword_1003744E8);
    swift_endAccess();
    sub_100015F24(v8, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  }

  else
  {
    v14 = v2[6];
    v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v15);
    if ((v16 & 1) == 0)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v18 = swift_allocObject();
      sub_10013E098(v17);
      *(v14 + v15) = v18;
      v17 = v18;
    }

    v9 = v2[10];
    v8 = v2[11];
    v19 = v2[8];
    v20 = v2[9];
    v12 = v2[7];
    sub_1000112AC(v8, v12, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    (*(v20 + 56))(v12, 0, 1, v19);
    v21 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
    swift_beginAccess();
    sub_10000AD64(v12, v17 + v21, &qword_10041CAB8, &qword_1003744E8);
    swift_endAccess();
  }

  free(v8);
  free(v9);
  free(v12);

  free(v2);
}

BOOL sub_1000E1C50()
{
  v1 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CAB8, &qword_1003744E8);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CAB8, &qword_1003744E8);
  return v7;
}

uint64_t sub_1000E1D70()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CAB8, &qword_1003744E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10013E098(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CAB8, &qword_1003744E8);
  return swift_endAccess();
}

uint64_t (*sub_1000E1F44(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000E2214(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E224C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E22E8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E2330(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E2368(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E2404()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E244C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E2484(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E2520()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E2578(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1000E25A8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E2630()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1000E2680(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*sub_1000E26B0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E2738()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v0 + *(result + 40)) = 2;
  return result;
}

uint64_t sub_1000E2788(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_1000E27B8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E2840()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v0 + *(result + 44)) = 2;
  return result;
}

uint64_t sub_1000E2890(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*sub_1000E28C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E2948()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v0 + *(result + 48)) = 2;
  return result;
}

uint64_t sub_1000E2970@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a1 + v2[9]) = 2;
  *(a1 + v2[10]) = 2;
  *(a1 + v2[11]) = 2;
  *(a1 + v2[12]) = 2;
  return result;
}

uint64_t (*sub_1000E2A74(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000E2D44(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000E2D7C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000E2E14()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000E2E44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAC0, &qword_1003744F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_10041CAC0, &qword_1003744F0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = a1 + v7[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v7[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v7[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a1 + v7[9]) = 2;
  *(a1 + v7[10]) = 2;
  *(a1 + v7[11]) = 2;
  *(a1 + v7[12]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CAC0, &qword_1003744F0);
  }

  return result;
}

uint64_t sub_1000E303C(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CAC0, &qword_1003744F0);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000E30F4(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CAC0, &qword_1003744F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CAC0, &qword_1003744F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v8[5];
    v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    *(v13 + v8[9]) = 2;
    *(v13 + v8[10]) = 2;
    *(v13 + v8[11]) = 2;
    *(v13 + v8[12]) = 2;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAC0, &qword_1003744F0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  }

  return sub_1000E339C;
}

uint64_t sub_1000E34B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v10 = swift_allocObject();
    sub_100174D8C(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E3628(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000E38A8;
}

void sub_1000E38A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
      v9 = swift_allocObject();
      sub_100174D8C(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
      v22 = swift_allocObject();
      sub_100174D8C(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000E3B08()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA30, &qword_100374460);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA30, &qword_100374460);
  return v7;
}

uint64_t sub_1000E3C28()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v8 = swift_allocObject();
    sub_100174D8C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E3DE0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E3E9C;
}

void (*sub_1000E3FA0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E405C;
}

void (*sub_1000E4160(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E421C;
}

void (*sub_1000E4320(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E43DC;
}

void (*sub_1000E44E0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E459C;
}

void (*sub_1000E46A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000E4750;
}

uint64_t sub_1000E47A4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v5 = swift_allocObject();
    sub_100174D8C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

void (*sub_1000E48AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E4968;
}

void (*sub_1000E4A6C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E4B28;
}

void (*sub_1000E4C2C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E4CE8;
}

void (*sub_1000E4DEC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000E4E98;
}

uint64_t sub_1000E4EEC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v5 = swift_allocObject();
    sub_100174D8C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

void (*sub_1000E4FF4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E50B0;
}

void (*sub_1000E51B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E5270;
}

void (*sub_1000E5374(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E5430;
}

void (*sub_1000E5534(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000E55F0;
}

uint64_t (*sub_1000E5718(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000E59E8(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000E5A20(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000E5AB8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000E5AE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAC8, &qword_1003744F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_10041CAC8, &qword_1003744F8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (qword_100443EF8 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_100443F00;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1000059A8(v5, &qword_10041CAC8, &qword_1003744F8);
  }

  return result;
}

uint64_t sub_1000E5C90(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CAC8, &qword_1003744F8);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000E5D48(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CAC8, &qword_1003744F8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CAC8, &qword_1003744F8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100443EF8 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100443F00;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_10041CAC8, &qword_1003744F8);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  }

  return sub_1000E5FA0;
}

uint64_t sub_1000E60B0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E60E8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E6180()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E61C8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E6200(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E629C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E62E4(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E631C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E63B8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E6400(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E6438(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E64D4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000E651C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000E655C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E6594(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E6630()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

int *sub_1000E6660@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1000E66F8(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000E67B0(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000E6A80(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000E6B38(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t sub_1000E6DF0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 32));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000E6E1C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1000E6E4C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000E6ED8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  *(v0 + *(result + 32)) = 7;
  return result;
}

uint64_t sub_1000E6F00()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 36));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000E6F2C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1000E6F5C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000E6FE8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  *(v0 + *(result + 36)) = 7;
  return result;
}

uint64_t sub_1000E7094(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198124();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000E70F0@<X0>(char *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  UnknownStorage.init()();
  v3 = v2[6];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  result = (v5)(&a1[v2[7]], 1, 1, v4);
  a1[v2[8]] = 7;
  a1[v2[9]] = 7;
  return result;
}

uint64_t sub_1000E71D8(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 28);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000E7290(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

uint64_t (*sub_1000E7578(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

BOOL sub_1000E77F4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 32), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1000E792C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1000E79F0(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000E7A28(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000E7AC0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000E7AF0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 40));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000E7B1C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*sub_1000E7B4C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000E7BD8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  *(v0 + *(result + 40)) = 5;
  return result;
}

uint64_t sub_1000E7C18(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 44));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1000E7C54(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000E7C8C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000E7D24()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000E7D7C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*sub_1000E7DAC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E7E34()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  *(v0 + *(result + 48)) = 2;
  return result;
}

uint64_t sub_1000E7E84(char a1)
{
  v2 = a1 & 1;
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t (*sub_1000E7EB4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E7F3C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  *(v0 + *(result + 52)) = 2;
  return result;
}

uint64_t sub_1000E7F7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E8018(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E80EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001980D0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000E8148(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E818C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10019807C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000E81D8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_1000E8204@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1000E8224@<X0>(char *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 1) = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  UnknownStorage.init()();
  v3 = v2[7];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  result = (v5)(&a1[v2[8]], 1, 1, v4);
  v7 = &a1[v2[9]];
  *v7 = 0;
  v7[4] = 1;
  a1[v2[10]] = 5;
  v8 = &a1[v2[11]];
  *v8 = 0;
  v8[4] = 1;
  a1[v2[12]] = 2;
  a1[v2[13]] = 2;
  return result;
}

uint64_t sub_1000E832C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 20));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000E8358(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000E8388(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000E8414()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v0 + *(result + 20)) = 5;
  return result;
}

uint64_t sub_1000E843C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 24));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000E8468(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1000E8498(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000E8524()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v0 + *(result + 24)) = 5;
  return result;
}

uint64_t sub_1000E8574(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000E85A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E862C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1000E867C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1000E86AC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E8734()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

int *sub_1000E875C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(a1 + result[5]) = 5;
  *(a1 + result[6]) = 5;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

double sub_1000E87B0()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return -1.0;
  }

  return result;
}

uint64_t sub_1000E87E8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000E8820(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = -1.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1000E88BC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000E8914(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1000E8944(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E89CC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1000E8A1C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000E8A4C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E8AD4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1000E8AFC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 32));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000E8B28(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1000E8B58(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000E8BE4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v0 + *(result + 32)) = 5;
  return result;
}

uint64_t sub_1000E8C34(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1000E8C64(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000E8CEC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1000E8D14()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1000E8D48(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000E8D80(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_100026A50;
}

uint64_t sub_1000E8E18()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1000E8E48@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 5;
  *(a1 + result[9]) = 2;
  v4 = a1 + result[10];
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t sub_1000E8EE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001754E0(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E9054(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000E92D4;
}

void sub_1000E92D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v9 = swift_allocObject();
      sub_1001754E0(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v22 = swift_allocObject();
      sub_1001754E0(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000E9534()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA30, &qword_100374460);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA30, &qword_100374460);
  return v7;
}

uint64_t sub_1000E9654()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v8 = swift_allocObject();
    sub_1001754E0(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000E980C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000E98C4;
}

uint64_t sub_1000E9960()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  if (*(v1 + v2) == 20)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

void (*sub_1000E9A04(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 20)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000E9AB4;
}

BOOL sub_1000E9AE8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  return *(v1 + v2) != 20;
}

uint64_t sub_1000E9B44()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001754E0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  result = swift_beginAccess();
  *(v4 + v6) = 20;
  return result;
}

uint64_t sub_1000E9BE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CAD0, &qword_100374500);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 5;
  *(a1 + v8[6]) = 5;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CAD0, &qword_100374500);
  }

  return result;
}

uint64_t sub_1000E9D84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001754E0(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CAD0, &qword_100374500);
  return swift_endAccess();
}

void (*sub_1000E9EF8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CAD0, &qword_100374500) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CAD0, &qword_100374500);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 5;
    *(v13 + v8[6]) = 5;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAD0, &qword_100374500);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  }

  return sub_1000EA16C;
}

void sub_1000EA16C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v9 = swift_allocObject();
      sub_1001754E0(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CAD0, &qword_100374500);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v22 = swift_allocObject();
      sub_1001754E0(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CAD0, &qword_100374500);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000EA3CC()
{
  v1 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CAD0, &qword_100374500);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CAD0, &qword_100374500);
  return v7;
}

uint64_t sub_1000EA4EC()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CAD0, &qword_100374500);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v8 = swift_allocObject();
    sub_1001754E0(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CAD0, &qword_100374500);
  return swift_endAccess();
}

uint64_t sub_1000EA63C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CAD8, &qword_100374508);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + v8[6]) = 2;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 5;
  *(a1 + v8[9]) = 2;
  v11 = a1 + v8[10];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CAD8, &qword_100374508);
  }

  return result;
}

uint64_t sub_1000EA800(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001754E0(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CAD8, &qword_100374508);
  return swift_endAccess();
}

void (*sub_1000EA974(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10041CAD8, &qword_100374508) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CAD8, &qword_100374508);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 5;
    *(v13 + v8[9]) = 2;
    v19 = v13 + v8[10];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CAD8, &qword_100374508);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  }

  return sub_1000EAC0C;
}

void sub_1000EAC0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_Battery);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v9 = swift_allocObject();
      sub_1001754E0(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CAD8, &qword_100374508);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v22 = swift_allocObject();
      sub_1001754E0(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CAD8, &qword_100374508);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000EAE6C()
{
  v1 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CAD8, &qword_100374508);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CAD8, &qword_100374508);
  return v7;
}

uint64_t sub_1000EAF8C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CAD8, &qword_100374508);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v8 = swift_allocObject();
    sub_1001754E0(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CAD8, &qword_100374508);
  return swift_endAccess();
}

void (*sub_1000EB144(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000EB1F0;
}

uint64_t sub_1000EB244()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001754E0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

void (*sub_1000EB34C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000EB3F8;
}

uint64_t sub_1000EB44C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001754E0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

void (*sub_1000EB554(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000EB600;
}

uint64_t sub_1000EB654()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001754E0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

void (*sub_1000EB75C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000EB808;
}