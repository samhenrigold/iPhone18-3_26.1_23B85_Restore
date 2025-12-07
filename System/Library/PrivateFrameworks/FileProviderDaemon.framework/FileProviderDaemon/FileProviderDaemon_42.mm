void sub_1CF47F390(uint64_t a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 456) - 1 >= 4)
  {
    v7 = *(a1 + 8);
    if (v7 == 255 || *(a1 + 248) == 0)
    {
      if (v7 == 255)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_13;
      }

      v9 = v4;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v11 = v10;
      (*(v3 + 8))(v6, v9);
      v12 = v11 * 1000000000.0;
      if (COERCE__INT64(fabs(v11 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
          v13 = v12;
LABEL_13:
          *(a1 + 496) = v13;
          return;
        }

LABEL_17:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_17;
    }
  }
}

uint64_t sub_1CF47F504(char a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  v9 = v8 * 1000000000.0;
  if (COERCE__INT64(fabs(v8 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 < 9.22337204e18)
  {
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1CF47F63C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1CF7D5474(sub_1CF2503E0, 0, a1, a2);
  if (!v3)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v8 = sub_1CF9E6888();
    [v7 setDateFormat_];

    if ([v6 next])
    {
      v36 = v7;
      v37 = v6;
      do
      {
        v9 = objc_autoreleasePoolPush();
        v10 = v6;
        sub_1CF25069C(v10, v38);
        sub_1CF24FAE4(a3, v7);
        v11 = v40;
        if (v40)
        {
          v12 = v39;

          sub_1CF250D40(v38);
          v13 = a3[3];
          v41 = a3[4];
          __swift_project_boxed_opaque_existential_1(a3, v13);
          sub_1CF9E7948();
          0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
          MEMORY[0x1D3868CC0](v12, v11);
          v11, v21, v22, v23, v24, v25, v26, v27;
          v28 = v13;
          v7 = v36;
          v6 = v37;
          sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA3C770, v28, v41);
          0x80000001CFA3C770, v29, v30, v31, v32, v33, v34, v35;
        }

        else
        {
          sub_1CF250D40(v38);
        }

        objc_autoreleasePoolPop(v9);
      }

      while (([v10 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF47F85C()
{
  v1 = *v0;
  v2 = vextq_s8(*(v1 + 2648), *(v1 + 2648), 8uLL);
  v4[0] = vextq_s8(*(v1 + 2632), *(v1 + 2632), 8uLL);
  v4[1] = v2;
  type metadata accessor for SQLSnapshot(0, v4);
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1CF47F8E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = a3;
  v12 = a4;
  v5 = *(a1 + 248);
  if (v5)
  {
    v13 = *(a1 + 248);
    v6 = *(a2 + 24);
    v7 = *(*v6 + 368);
    v8 = v5;
    v9 = v7(23, &v13, 0, 0, &v11, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v4)
    {
      if (v9 & 1) != 0 || (v7(6, &v13, 0, 0, &v11, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = v7(1, &v13, 0, 0, &v11, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t sub_1CF47FA34()
{
  v1 = *(*v0 + 2648);
  v3[0] = *(*v0 + 2632);
  v3[1] = v1;
  type metadata accessor for SQLSnapshot(0, v3);
  return swift_dynamicCastClassUnconditional();
}

id sub_1CF47FC0C()
{
  v1 = *(v0 + 16);
  v2 = qword_1EDEBBCF0;
  v3 = *(v1 + qword_1EDEBBCF0);
  if (*(v0 + 24) == 1)
  {
    *(v1 + qword_1EDEBBCF0) = 0;
  }

  v4 = *(v1 + qword_1EDEBBDB0);
  [v4 forceBatchStart];
  result = [v4 flush];
  *(v1 + v2) = v3;
  return result;
}

uint64_t objectdestroy_116Tm()
{

  return swift_deallocObject();
}

void sub_1CF47FDFC(void *a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1CEFD0994(a1, a2, BYTE1(a2) & 1);
  }
}

uint64_t sub_1CF47FEB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CF0262EC;

  return sub_1CF478610(a1, v4, v5, v6, v7, v1 + 6);
}

void sub_1CF4800CC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  memcpy(__dst, *(v1 + 16), sizeof(__dst));
  sub_1CF3D6824(__dst, v3, a1);
}

double sub_1CF480154(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF3C5E64(a1, v1 + v4, v7, v8, v9, v10);
}

double sub_1CF480278(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, void (*a6)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6 && a5 != 7)
      {
        return result;
      }
    }

    else if (a5 != 4 && a5 != 5)
    {
      return result;
    }
  }

  else if (a5 > 1u)
  {
    if (a5 == 2)
    {
LABEL_18:
      (a6)(a1, a2, (a2 >> 8) & 1);

      return result;
    }

    if (a5 != 3)
    {
      return result;
    }
  }

  else if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

    goto LABEL_18;
  }

  a6(a1, a2, (a2 >> 8) & 1, a4);
  return result;
}

id sub_1CF48034C(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_1CF480358(uint64_t result, unint64_t a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, unsigned __int8 a5, void (*a6)(uint64_t, unint64_t, unint64_t, _TtC18FileProviderDaemon8FSTester *))
{
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6 && a5 != 7)
      {
        return;
      }
    }

    else if (a5 != 4 && a5 != 5)
    {
      return;
    }
  }

  else if (a5 > 1u)
  {
    if (a5 == 2)
    {
LABEL_18:
      (a6)(result, a2, (a2 >> 8) & 1);

      a4, v7, v8, v9, v10, v11, v12, v13;
      return;
    }

    if (a5 != 3)
    {
      return;
    }
  }

  else if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    goto LABEL_18;
  }

  a6(result, a2, (a2 >> 8) & 1, a4);
}

uint64_t sub_1CF480474(uint64_t a1)
{
  v1 = *(a1 + 480);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1CF48048C(unint64_t result, uint64_t a2, void *a3)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a3;
  }

  return result;
}

uint64_t sub_1CF480498(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return MEMORY[0x1EEE66BE0]();
  }

  return result;
}

unint64_t sub_1CF4804A4(unint64_t result, uint64_t a2, void *a3)
{
  if (result >> 7 != 0xFFFFFFFF)
  {
    return sub_1CF48048C(result, a2, a3);
  }

  return result;
}

void sub_1CF4804C0(void *a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1CF1E53F8(a1, a2, BYTE1(a2) & 1);
  }
}

unint64_t sub_1CF4804D8()
{
  result = qword_1EDEA3460;
  if (!qword_1EDEA3460)
  {
    sub_1CEFD57E0(255, &qword_1EDEAB520, 0x1E6967388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3460);
  }

  return result;
}

void sub_1CF480540(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a4 >> 6 == 1)
  {
    MEMORY[0x1EEE66BE0](a1, a2, a3);
  }

  else if (!(a4 >> 6))
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_1CF480560(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
    v4 = a3;
  }

  else if (!(a4 >> 6))
  {
  }
}

double sub_1CF480600(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

uint64_t sub_1CF480620(uint64_t a1, unint64_t a2)
{
  if (a1 < 0xFFFFFFFF00000000 || (a2 & 0xF000000000000007) != 0)
  {
    return sub_1CF07638C(a1, a2);
  }

  return a1;
}

id sub_1CF480664@<X0>(void *a1@<X8>)
{
  result = *(v1 + 264);
  if (result)
  {
    *a1 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF480678(_TtC18FileProviderDaemon8FSTester *a1, _TtC18FileProviderDaemon8FSTester *a2, _TtC18FileProviderDaemon8FSTester *a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, _TtC18FileProviderDaemon8FSTester *a7, void *a8, _TtC18FileProviderDaemon8FSTester *a9, void *a10, _TtC18FileProviderDaemon8FSTester *a11, unsigned __int8 a12)
{
  if (a12 <= 5u)
  {
    if (a12 <= 1u)
    {
      if (a12)
      {

        a3, v17, v18, v19, v20, v21, v22, v23;
        sub_1CF480620(a5, a6);
        a1 = a7;
      }

      else
      {

        sub_1CF1D56D0(a2, a3, a4, a5, a6, a7, a8, a9);
        a1 = a11;
      }
    }

    else
    {
      if (a12 == 2)
      {
        v32 = a3;
        a2, a2, a3, a4, a5, a6, a7, a8;
LABEL_21:
        a1 = v32;
LABEL_22:

LABEL_24:

        return;
      }

      if (a12 != 3)
      {
        if (a12 != 4)
        {
          return;
        }

        v32 = a1;

        goto LABEL_21;
      }

      a1 = a3;
    }

LABEL_26:

    goto LABEL_24;
  }

  if (a12 > 7u)
  {
    if (a12 != 8)
    {
      if (a12 == 9)
      {
        goto LABEL_22;
      }

      if (a12 != 10)
      {
        return;
      }

      a1 = a2;
    }

    goto LABEL_26;
  }

  if (a12 == 6)
  {
    goto LABEL_22;
  }

  if (a12 == 7)
  {
    sub_1CEFE4714(a1, a2);

    sub_1CEFE4714(a3, a4);
  }
}

id sub_1CF48089C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void sub_1CF480940(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  if (v2 == 255)
  {
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 224);
    *(a1 + 8) = v2;
  }
}

id sub_1CF480960(id result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1CEFD0988(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

void sub_1CF480998(void *a1, const char *a2, uint64_t a3, unint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, void *a6, uint64_t a7, void *a8, _TtC18FileProviderDaemon8FSTester *a9, _TtC18FileProviderDaemon8FSTester *a10, uint64_t a11, _TtC18FileProviderDaemon8FSTester *a12, __int16 a13, unsigned __int8 a14)
{
  if (a14 > 0xAu)
  {
    if (a14 == 11)
    {

      sub_1CF03D7A8(a1, a2, a3);
    }

    else if (a14 == 13)
    {

      sub_1CF480A8C(a1, a2, a3, a4);
    }
  }

  else if (a14 == 8)
  {
    a9, a2, a3, a4, a5, a6, a7, a8;
    a5, v15, v16, v17, v18, v19, v20, v21;
    a10, v22, v23, v24, v25, v26, v27, v28;

    a12, v29, v30, v31, v32, v33, v34, v35;
  }

  else if (a14 == 9)
  {
  }
}

uint64_t sub_1CF480A8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 11)
  {
    return sub_1CEFE48D8(a3, a4);
  }

  return result;
}

void sub_1CF480AA8(void *a1, unint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, unint64_t a4, unint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, _TtC18FileProviderDaemon8FSTester *a8, __int16 a9, unsigned __int8 a10)
{
  if (a10 > 0xAu)
  {
    if (a10 == 11)
    {

      sub_1CF03D7A8(a1, a2, a3);
    }

    else if (a10 == 13)
    {

      sub_1CF480A8C(a1, a2, a3, a4);
    }
  }

  else if (a10 == 8)
  {
    sub_1CEFE4714(a1, a2);
    a3, v15, v16, v17, v18, v19, v20, v21;
    sub_1CEFE4714(a4, a5);
    a6, v22, v23, v24, v25, v26, v27, v28;

    a8, v29, v30, v31, v32, v33, v34, v35;
  }

  else if (a10 == 9)
  {
  }
}

uint64_t sub_1CF480BF0(unsigned __int8 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *a1;
  memcpy(v6, v2, sizeof(v6));
  memcpy(__dst, v3, sizeof(__dst));
  return sub_1CF47E540(v4, v6, __dst) & 1;
}

uint64_t sub_1CF480C5C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  memcpy(__dst, v3, sizeof(__dst));
  return sub_1CF38DC10(a1, v4, __dst, v5, v6);
}

uint64_t sub_1CF480D74(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *))
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v6;
  v9 = v4;
  v10 = v5;
  return a2(a1, v8);
}

void sub_1CF480E3C(void *a1, uint64_t a2)
{
  if ((~a2 & 0xFF00) != 0)
  {
    sub_1CF1E53F8(a1, a2, BYTE1(a2) & 1);
  }
}

void sub_1CF480E54(void *a1, uint64_t a2)
{
  if ((~a2 & 0xFF00) != 0)
  {
    sub_1CEFD0994(a1, a2, BYTE1(a2) & 1);
  }
}

id sub_1CF480E6C(id result, uint64_t a2)
{
  if ((~a2 & 0xFF00) != 0)
  {
    return sub_1CF48034C(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

id sub_1CF480E9C(id result, uint64_t a2)
{
  if ((~a2 & 0xFF00) != 0)
  {
    return sub_1CEFD0988(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

void sub_1CF480EC0(void *a1@<X8>)
{
  sub_1CF39E858(*(v1 + 16), **(v1 + 24), *(*(v1 + 24) + 8));
  if (!v2)
  {
    *a1 = v4;
  }
}

id sub_1CF480F78(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1CF480F84(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1CF0BA6EC(a1, a2 & 1);
  }
}

uint64_t sub_1CF481010(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    return sub_1CF7FC438();
  }

  return result;
}

unint64_t sub_1CF4810BC()
{
  result = qword_1EDEA5B70;
  if (!qword_1EDEA5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5B70);
  }

  return result;
}

double sub_1CF481118(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF40BD4C(a1, v1 + v4, v5);
}

double sub_1CF4811C0(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF40C648(a1, a2 & 1, v2[2], v2[3], v2[4], v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF4812B0(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1CF40BB34(a1, a2, v6, v7, v8);
}

void sub_1CF481340(id a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a2)
  {
  }

  else
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_1CF48134C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF40CAC4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), (v0 + v2), *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_825Tm()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF48160C()
{
  v1 = *(type metadata accessor for Signpost(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF7618A4(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 17), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1CF4816E4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1CF40C108(a1, v4);
}

uint64_t sub_1CF481788(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t objectdestroy_840Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1CF48183C(void *a1, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a5)
  {
    a4, a2, a3, a4, a5, a6, a7, a8;
  }

  else
  {
  }
}

void sub_1CF481874(void *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, char a4)
{
  if (a4)
  {

    a3, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
  }
}

uint64_t sub_1CF4818C0()
{
  v1 = *(*v0 + 2648);
  v3[0] = *(*v0 + 2632);
  v3[1] = v1;
  type metadata accessor for SQLReconciliationTable(0, v3);
  return swift_dynamicCastClassUnconditional();
}

void sub_1CF481944(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
  v10 = type metadata accessor for ItemMetadata(0);
  v9[*(v10 + 48)] = 1;
  if (v9[*(v10 + 44)] != 1)
  {
LABEL_6:
    v18 = *a1;
    v19 = *(a1 + 8);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    v22 = v21 * 1000000000.0;
    if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        v23 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD958, &qword_1CF9FAC70);
        v24 = swift_allocObject();
        *(v24 + 152) = v19;
        *(v24 + 16) = 0u;
        *(v24 + 32) = 0u;
        *(v24 + 48) = 1;
        *(v24 + 56) = 0u;
        *(v24 + 72) = 0u;
        *(v24 + 88) = 0;
        *(v24 + 96) = xmmword_1CF9FEC30;
        *(v24 + 112) = 0;
        *(v24 + 120) = 0x2000000000000000;
        *(v24 + 128) = v23;
        *(v24 + 136) = 1;
        *(v24 + 144) = v18;
        (*(*a2 + 144))();

        return;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25[1] = v2;
  v11 = *a1;
  v12 = *(a1 + 8);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v15 = v14 * 1000000000.0;
  if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 < 9.22337204e18)
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0020, &unk_1CF9FAC90);
    v17 = swift_allocObject();
    *(v17 + 152) = v12;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 1;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0;
    *(v17 + 96) = xmmword_1CF9FEC30;
    *(v17 + 112) = 0;
    *(v17 + 120) = 0x2000000000000000;
    *(v17 + 128) = v16;
    *(v17 + 136) = 0x10000000000;
    *(v17 + 144) = v11;
    (*(*a2 + 144))();

    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
}

void sub_1CF481CA0(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v13 = a3;
  v14 = a4;
  v5 = *(a1 + 8);
  if (v5 != 255)
  {
    v11 = *a1;
    v12 = v5;
    v7 = *(a2 + 24);
    (*(*v7 + 424))(&v11, &v13, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    if (!v4)
    {
      v8 = a1[31];
      if (v8)
      {
        v15 = a1[31];
        v9 = *(*v7 + 432);
        v10 = v8;
        v9(&v15, &v13, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      }
    }
  }
}

uint64_t objectdestroy_404Tm(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (*(v8 + 120))
  {
    *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
    *(v8 + 120), v9, v10, v11, v12, v13, v14, v15;
    *(v8 + 128), v16, v17, v18, v19, v20, v21, v22;
    *(v8 + 144), v23, v24, v25, v26, v27, v28, v29;
  }

  sub_1CF03D7A8(*(v8 + 160), *(v8 + 168), *(v8 + 176));
  v30 = *(v8 + 208);
  if (v30 >> 60 != 15 && (v30 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v8 + 200), v30);
  }

  if (*(v8 + 312) != 1)
  {
    sub_1CEFE4714(*(v8 + 296), *(v8 + 304));
    *(v8 + 312), v32, v33, v34, v35, v36, v37, v38;
    sub_1CEFE4714(*(v8 + 320), *(v8 + 328));
    *(v8 + 336), v39, v40, v41, v42, v43, v44, v45;
    *(v8 + 352), v46, v47, v48, v49, v50, v51, v52;
  }

  sub_1CF03D7A8(*(v8 + 368), *(v8 + 376), *(v8 + 384));
  v53 = *(v8 + 416);
  if (v53 >> 60 != 15 && (v53 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v8 + 408), v53);
  }

  *(v8 + 480), v54, v55, v56, v57, v58, v59, v60;

  return swift_deallocObject();
}

uint64_t objectdestroy_1154Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {
    v2[8], v4, v5, v6, v7, v8, v9, v10;
    v2[12], v11, v12, v13, v14, v15, v16, v17;
    v2[13], v18, v19, v20, v21, v22, v23, v24;
    v2[15], v25, v26, v27, v28, v29, v30, v31;
    v2[17], v32, v33, v34, v35, v36, v37, v38;
    v39 = v2 + v3[12];
    v40 = type metadata accessor for ItemMetadata(0);
    v41 = v40[7];
    v42 = sub_1CF9E5CF8();
    v43 = *(v42 - 8);
    v44 = *(v43 + 8);
    v44(&v39[v41], v42);
    v44(&v39[v40[8]], v42);
    *&v39[v40[14] + 8], v45, v46, v47, v48, v49, v50, v51;
    v52 = v40[30];
    if (!(*(v43 + 48))(&v39[v52], 1, v42))
    {
      v44(&v39[v52], v42);
    }

    *&v39[v40[31]], v53, v54, v55, v56, v57, v58, v59;
    *&v39[v40[33]], v60, v61, v62, v63, v64, v65, v66;
    v73 = &v39[v40[34]];
    v74 = v73[1];
    if (v74 >> 60 != 15)
    {
      sub_1CEFE4714(*v73, v74);
    }

    *&v39[v40[38] + 8], v74, v67, v68, v69, v70, v71, v72;
    v75 = v2 + v3[13];
    v76 = *(v75 + 2);
    if (v76 != 1)
    {

      *(v75 + 6), v77, v78, v79, v80, v81, v82, v83;
      *(v75 + 8), v84, v85, v86, v87, v88, v89, v90;
      *(v75 + 11), v91, v92, v93, v94, v95, v96, v97;

      *(v75 + 15), v98, v99, v100, v101, v102, v103, v104;
      *(v75 + 17), v105, v106, v107, v108, v109, v110, v111;
      *(v75 + 19), v112, v113, v114, v115, v116, v117, v118;
      *(v75 + 21), v119, v120, v121, v122, v123, v124, v125;
      *(v75 + 23), v126, v127, v128, v129, v130, v131, v132;
      v140 = *(v75 + 24);
      if (v140)
      {
        v140, v133, v134, v135, v136, v137, v138, v139;
        *(v75 + 25), v141, v142, v143, v144, v145, v146, v147;
      }

      *(v75 + 28), v133, v134, v135, v136, v137, v138, v139;
      *(v75 + 30), v148, v149, v150, v151, v152, v153, v154;
    }

    sub_1CF07638C(*(v2 + v3[17]), *(v2 + v3[17] + 8));
  }

  return swift_deallocObject();
}

double sub_1CF4821D4(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

void sub_1CF48221C(id *a1, uint64_t a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  v9 = type metadata accessor for ItemMetadata(0);
  v8[*(v9 + 48)] = 1;
  if (v8[*(v9 + 44)] != 1)
  {
LABEL_6:
    v16 = *a1;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = v18 * 1000000000.0;
    if (COERCE__INT64(fabs(v18 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v20 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03E0, &qword_1CF9FB270);
        v21 = swift_allocObject();
        *(v21 + 16) = 0u;
        *(v21 + 32) = 0u;
        *(v21 + 48) = 1;
        *(v21 + 56) = 0u;
        *(v21 + 72) = 0u;
        *(v21 + 88) = 0;
        *(v21 + 96) = xmmword_1CF9FEC30;
        *(v21 + 112) = 0;
        *(v21 + 120) = 0x2000000000000000;
        *(v21 + 128) = v20;
        *(v21 + 136) = 1;
        *(v21 + 144) = v16;
        (*(*a2 + 144))();

        return;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = *a1;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v13 = v12 * 1000000000.0;
  if (COERCE__INT64(fabs(v12 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 9.22337204e18)
  {
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE78, &unk_1CF9FB290);
    v15 = swift_allocObject();
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 1;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0;
    *(v15 + 96) = xmmword_1CF9FEC30;
    *(v15 + 112) = 0;
    *(v15 + 120) = 0x2000000000000000;
    *(v15 + 128) = v14;
    *(v15 + 136) = 0x10000000000;
    *(v15 + 144) = v10;
    (*(*a2 + 144))();

    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
}

void sub_1CF482574(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v14 = a3;
  v15 = a4;
  v5 = *a1;
  if (*a1)
  {
    v13 = *a1;
    v7 = *(a2 + 24);
    v8 = *(*v7 + 424);
    v9 = v5;
    v8(&v13, &v14, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    if (!v4)
    {
      v10 = *(a1 + 216);
      if (v10 != 255)
      {
        v11 = *(a1 + 208);
        v12 = v10;
        (*(*v7 + 432))(&v11, &v14, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      }
    }
  }
}

uint64_t objectdestroy_678Tm()
{
  if (*(v0 + 64) != 1)
  {
    sub_1CEFE4714(*(v0 + 48), *(v0 + 56));
    *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;
    sub_1CEFE4714(*(v0 + 72), *(v0 + 80));
    *(v0 + 88), v8, v9, v10, v11, v12, v13, v14;
    *(v0 + 104), v15, v16, v17, v18, v19, v20, v21;
  }

  sub_1CF03D7A8(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  v22 = *(v0 + 168);
  if (v22 >> 60 != 15 && (v22 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 160), v22);
  }

  if (*(v0 + 328))
  {
    *(v0 + 296), v24, v25, v26, v27, v28, v29, v30;
    *(v0 + 328), v31, v32, v33, v34, v35, v36, v37;
    *(v0 + 336), v38, v39, v40, v41, v42, v43, v44;
    *(v0 + 352), v45, v46, v47, v48, v49, v50, v51;
  }

  sub_1CF03D7A8(*(v0 + 368), *(v0 + 376), *(v0 + 384));
  v52 = *(v0 + 416);
  if (v52 >> 60 != 15 && (v52 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 408), v52);
  }

  *(v0 + 480), v53, v54, v55, v56, v57, v58, v59;

  return swift_deallocObject();
}

unint64_t sub_1CF482794()
{
  result = sub_1CF959F8C(*(v0 + 464));
  if (!v2)
  {
    return 1819047278;
  }

  return result;
}

uint64_t objectdestroy_1230Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {

    sub_1CEFE4714(*(v2 + 16), *(v2 + 24));
    *(v2 + 32), v4, v5, v6, v7, v8, v9, v10;
    sub_1CEFE4714(*(v2 + 40), *(v2 + 48));
    *(v2 + 56), v11, v12, v13, v14, v15, v16, v17;
    *(v2 + 72), v18, v19, v20, v21, v22, v23, v24;
    *(v2 + 88), v25, v26, v27, v28, v29, v30, v31;
    v32 = v2 + v3[12];
    v33 = type metadata accessor for ItemMetadata(0);
    v34 = v33[7];
    v35 = sub_1CF9E5CF8();
    v36 = *(v35 - 8);
    v37 = *(v36 + 8);
    v37(v32 + v34, v35);
    v37(v32 + v33[8], v35);
    *(v32 + v33[14] + 8), v38, v39, v40, v41, v42, v43, v44;
    v45 = v33[30];
    if (!(*(v36 + 48))(v32 + v45, 1, v35))
    {
      v37(v32 + v45, v35);
    }

    *(v32 + v33[31]), v46, v47, v48, v49, v50, v51, v52;
    *(v32 + v33[33]), v53, v54, v55, v56, v57, v58, v59;
    v66 = (v32 + v33[34]);
    v67 = v66[1];
    if (v67 >> 60 != 15)
    {
      sub_1CEFE4714(*v66, v67);
    }

    *(v32 + v33[38] + 8), v67, v60, v61, v62, v63, v64, v65;
    v68 = v2 + v3[13];
    v69 = *(v68 + 16);
    if (v69 != 1)
    {

      *(v68 + 48), v70, v71, v72, v73, v74, v75, v76;
      *(v68 + 64), v77, v78, v79, v80, v81, v82, v83;
      *(v68 + 88), v84, v85, v86, v87, v88, v89, v90;

      *(v68 + 120), v91, v92, v93, v94, v95, v96, v97;
      *(v68 + 136), v98, v99, v100, v101, v102, v103, v104;
      *(v68 + 152), v105, v106, v107, v108, v109, v110, v111;
      *(v68 + 168), v112, v113, v114, v115, v116, v117, v118;
      *(v68 + 184), v119, v120, v121, v122, v123, v124, v125;
      v133 = *(v68 + 192);
      if (v133)
      {
        v133, v126, v127, v128, v129, v130, v131, v132;
        *(v68 + 200), v134, v135, v136, v137, v138, v139, v140;
      }

      *(v68 + 224), v126, v127, v128, v129, v130, v131, v132;
      *(v68 + 240), v141, v142, v143, v144, v145, v146, v147;
    }

    sub_1CF07638C(*(v2 + v3[17]), *(v2 + v3[17] + 8));
  }

  return swift_deallocObject();
}

void sub_1CF482D9C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF5AD9F8(v3, v1, v2);
}

void sub_1CF482E50(void *a1, uint64_t a2, void *a3, int a4, int a5, void *a6, uint64_t a7)
{
  v53 = a5;
  v57 = a4;
  v55 = sub_1CF9E6118();
  v54 = *(v55 - 1);
  MEMORY[0x1EEE9AC00](v55);
  v67 = a1;
  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  swift_dynamicCastClassUnconditional();
  sub_1CF39D24C(a1, a2, a3);
  v59 = a6;
  v60 = a3;
  v56 = a7;
  v12 = *(a7 + 64);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF483A3C;
  *(v13 + 24) = &v58;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF485970;
  *(v14 + 24) = v13;
  v65 = sub_1CF1C0B54;
  v66 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1CEFFD02C;
  v64 = &block_descriptor_1367;
  v15 = _Block_copy(&aBlock);

  dispatch_async_and_wait(v12, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46440, v16, v17);
  v18 = a3[3];
  v19 = a3[4];
  v20 = __swift_project_boxed_opaque_existential_1(a3, v18);
  MEMORY[0x1EEE9AC00](v20);
  *&v52[-16] = a6;
  *&v52[-8] = &v67;
  v21 = sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483A44, &v52[-32], v18, MEMORY[0x1E69E7CA8] + 8, v19);
  v55 = v52;
  MEMORY[0x1EEE9AC00](v21);
  *&v52[-16] = a6;
  *&v52[-8] = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CF483A6C;
  *(v22 + 24) = &v52[-32];
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1CF485970;
  *(v23 + 24) = v22;
  v65 = sub_1CF1C0B54;
  v66 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1CEFFD02C;
  v64 = &block_descriptor_1378;
  v24 = _Block_copy(&aBlock);

  dispatch_async_and_wait(v12, v24);
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_10:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  v26 = v57;
  sub_1CF38F0E0(a1, a2, a3, v57 & 1);
  v27 = a3[3];
  v28 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v27);
  sub_1CF4FB2BC(0, 0xE000000000000000, v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();
  sub_1CF3EED98(0, a1, a2, a3, sub_1CF483A34, v56);
  v29 = a6[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  sub_1CF3DE82C(a1, a2, a3, v26 & 1, sub_1CF483EA4, sub_1CF483EC0);
  v30 = *(**(v29 + 16) + 936);

  v30(a3);

  v31 = v53;
  if (v53)
  {
    v32 = a3[3];
    v33 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v32);
    sub_1CF4FB2BC(0x662065657274202BLL, 0xEA00000000003A73, v32, v33);
    v34 = a3[3];
    v35 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v34);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483AAC, a6, v34, MEMORY[0x1E69E7CA8] + 8, v35);
  }

  v36 = (a6 + qword_1EDEBBC20);
  os_unfair_lock_lock((a6 + qword_1EDEBBC20));
  sub_1CF3DEB6C(&v36[2], a3);
  os_unfair_lock_unlock(v36);
  v37 = a3[3];
  v38 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v37);
  sub_1CF4FB2BC(0, 0xE000000000000000, v37, v38);
  swift_dynamicCastClassUnconditional();
  sub_1CF3EED98(1, a1, a2, a3, sub_1CF483A34, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  swift_dynamicCastClassUnconditional();
  sub_1CF3DE82C(a1, a2, a3, v57 & 1, sub_1CF485AB4, sub_1CF483D4C);
  if (v31)
  {
    v39 = a3[3];
    v40 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v39);
    sub_1CF4FB2BC(0x662065657274202BLL, 0xEA00000000003A70, v39, v40);
    v41 = a3[3];
    v42 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v41);
    v43 = MEMORY[0x1E69E7CA8];
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483A90, a6, v41, MEMORY[0x1E69E7CA8] + 8, v42);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CA8];
  }

  v44 = (a6 + qword_1EDEBBC28);
  os_unfair_lock_lock((a6 + qword_1EDEBBC28));
  sub_1CF3DF49C(&v44[2], a3);
  os_unfair_lock_unlock(v44);
  v45 = a3[3];
  v46 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v45);
  sub_1CF4FB2BC(0, 0xE000000000000000, v45, v46);
  v47 = a3[3];
  v48 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v47);
  sub_1CF4FB2BC(0xD000000000000027, 0x80000001CFA46460, v47, v48);
  v49 = a3[3];
  v50 = a3[4];
  v51 = __swift_project_boxed_opaque_existential_1(a3, v49);
  MEMORY[0x1EEE9AC00](v51);
  *&v52[-16] = a6;
  *&v52[-8] = &v67;
  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483A74, &v52[-32], v49, v43 + 8, v50);
}

void sub_1CF48391C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_1CF3DCD30(v8, v3, v4, v5, sub_1CF483A2C, v2, v6, v7);
}

void sub_1CF4839A4(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  sub_1CF3DCD30(v7, v2, v3, v4, sub_1CF3DFD14, 0, v5, v6);
}

uint64_t objectdestroy_1390Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF483B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFSItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_142Tm()
{

  return swift_deallocObject();
}

void sub_1CF483C30(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1CF2F6594(a1);
  }
}

id sub_1CF483C48(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1CF0BA8A4(a1);
  }

  return a1;
}

uint64_t objectdestroy_1411Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1CF48414C()
{
  result = qword_1EDEA33D0;
  if (!qword_1EDEA33D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0698, &qword_1CFA05AA8);
    sub_1CEFCCCEC(&unk_1EDEA3888, &qword_1EC4C06A0, &qword_1CFA05AB0, MEMORY[0x1E69E5DF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA33D0);
  }

  return result;
}

unint64_t sub_1CF4841FC()
{
  result = qword_1EDEA33C8;
  if (!qword_1EDEA33C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C06B0, &qword_1CFA05AC0);
    sub_1CEFCCCEC(&qword_1EDEA3880, &qword_1EC4C06B8, &qword_1CFA05AC8, MEMORY[0x1E69E5DF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA33C8);
  }

  return result;
}

void sub_1CF484340(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v4 = a2;

        a1 = v4;
        a2 = a3;
      }

      else if (a4 != 2)
      {
        return;
      }

      v6 = a2;

      a1 = v6;
    }
  }

  else if (a4 - 3 >= 4)
  {
    return;
  }
}

uint64_t sub_1CF4845B8(uint64_t a1, uint64_t a2)
{
  v5 = v2[4];
  v6 = v2[7];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1CF3D6E74(a1, v2[8], v2 + ((*(v7 + 80) + 72) & ~*(v7 + 80)), v5, v6, a2);
}

uint64_t sub_1CF484664(uint64_t a1)
{
  v3 = *(v1 + 40);
  v5[0] = *(v1 + 16);
  v5[1] = v3;
  type metadata accessor for ItemReconciliation(0, v5);
  return sub_1CF3D6774(a1, *(v1 + 64));
}

uint64_t sub_1CF484704(uint64_t a1, uint64_t a2)
{
  v5 = v2[4];
  v6 = v2[7];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1CF3D6E74(a1, v2[8], v2 + ((*(v7 + 80) + 72) & ~*(v7 + 80)), v5, v6, a2);
}

uint64_t objectdestroy_1487Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroy_1490Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF4849E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SnapshotItem(255, v4[2], v4[5], a4);
  sub_1CF9E75D8();
  return sub_1CF3D6468(a1, v4[8]);
}

uint64_t sub_1CF484B9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = v5[3];
  v8 = v5[4];
  v9 = __swift_project_boxed_opaque_existential_1(v5, v7);
  return a2(v6, a1, v9, v7, v8);
}

uint64_t objectdestroy_179Tm_0(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1CF484C8C(uint64_t a1)
{
  v3 = *(sub_1CF9E5CF8() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF3CC400(a1, v5, v6, v7, v8, v1 + v4, v9);
}

void sub_1CF484D34(int a1)
{
  v3 = *(sub_1CF9E5CF8() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_1CF3CC6F8(a1, v1 + v4, v7, v8, v10, v11);
}

unint64_t sub_1CF484DEC()
{
  result = qword_1EDEA3358;
  if (!qword_1EDEA3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3358);
  }

  return result;
}

unint64_t sub_1CF484E40()
{
  result = qword_1EDEA3940;
  if (!qword_1EDEA3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3940);
  }

  return result;
}

uint64_t sub_1CF484EAC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Signpost(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

uint64_t sub_1CF484F60()
{
  v1 = *(type metadata accessor for Signpost(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF3C9514(v0 + v2, *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 71) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 71) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_828Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return swift_deallocObject();
}

double sub_1CF485144(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF3C6140(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF4852AC(void *a1)
{

  sub_1CF9364FC(a1);
}

void sub_1CF4852F8(void *a1)
{

  sub_1CF9364FC(a1);
}

uint64_t objectdestroy_1585Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF4854A8()
{
  v1 = *(v0 + 16);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1(v3);
  return sub_1CEFCCC44(v3, &qword_1EC4C0700, &qword_1CFA05B10);
}

id sub_1CF485540(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return result;
  }

  return result;
}

void sub_1CF48559C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((*(a10 + 80))(a1, 0, 0, a7, a10, a6))
  {
    (a3)(0);
  }

  else
  {
    v12 = (*(a10 + 16))(a7, a10);
    a3();
  }
}

uint64_t sub_1CF485670(void *a1)
{
  result = sub_1CF9E5A58();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for FileTreeWriter(319, a1[2], a1[4], v3);
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for FileTreeWriter(319, a1[3], a1[5], v5);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1CF485B78()
{
  result = qword_1EC4C07B0;
  if (!qword_1EC4C07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C07B0);
  }

  return result;
}

void sub_1CF485C00(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xEC00000044495555;
    if (a2 != 2)
    {
      v7 = 0xEF4449746E657645;
    }

    if (a2)
    {
      v6 = 0x80000001CFA2C2C0;
    }

    if (a2 <= 1u)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v2 = 0xEC0000007367616CLL;
    v3 = 0xEF6574617453676ELL;
    if (a2 != 7)
    {
      v3 = 0xEF6E6F6974617265;
    }

    if (a2 != 6)
    {
      v2 = v3;
    }

    v4 = 0x80000001CFA2C2F0;
    if (a2 != 4)
    {
      v4 = 0xED00006E6F697372;
    }

    if (a2 <= 5u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }
  }

  sub_1CF9E69C8();

  v5, v8, v9, v10, v11, v12, v13, v14;
}

void sub_1CF485D98(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xE500000000000000;
  v3 = 0x80000001CFA2C070;
  if (a2 != 6)
  {
    v3 = 0x80000001CFA2C090;
  }

  v4 = 0xEA0000000000726FLL;
  if (a2 != 4)
  {
    v4 = 0xE800000000000000;
  }

  if (a2 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xEF657461645F7972;
  if (a2 != 2)
  {
    v5 = 0xEF657461645F726FLL;
  }

  if (a2)
  {
    v2 = 0xEB00000000746E75;
  }

  if (a2 > 1u)
  {
    v2 = v5;
  }

  if (a2 <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1CF9E69C8();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1CF485EF0(uint64_t a1, unsigned __int8 a2)
{
  sub_1CF9E81D8();
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0xE600000000000000;
  if (a2 != 4)
  {
    v5 = 0xE500000000000000;
  }

  if (a2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE900000000000074;
  if (a2 != 1)
  {
    v6 = 0xEC000000746E6574;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1CF9E69C8();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1CF9E8228();
}

uint64_t sub_1CF485FF8(uint64_t a1, char a2)
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  0xE100000000000000, v2, v3, v4, v5, v6, v7, v8;
  return sub_1CF9E8228();
}

uint64_t sub_1CF486054(uint64_t a1, unsigned __int8 a2)
{
  sub_1CF9E81D8();
  v3 = 0xE500000000000000;
  v4 = 0x80000001CFA2C070;
  if (a2 != 6)
  {
    v4 = 0x80000001CFA2C090;
  }

  v5 = 0xEA0000000000726FLL;
  if (a2 != 4)
  {
    v5 = 0xE800000000000000;
  }

  if (a2 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xEF657461645F7972;
  if (a2 != 2)
  {
    v6 = 0xEF657461645F726FLL;
  }

  if (a2)
  {
    v3 = 0xEB00000000746E75;
  }

  if (a2 > 1u)
  {
    v3 = v6;
  }

  if (a2 <= 3u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1CF9E69C8();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1CF9E8228();
}

unint64_t sub_1CF4861E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF487044(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1CF486218(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6574617473;
  v5 = 0xD000000000000011;
  v6 = 0x80000001CFA2C070;
  if (v2 != 6)
  {
    v5 = 0xD00000000000001ALL;
    v6 = 0x80000001CFA2C090;
  }

  v7 = 0xEA0000000000726FLL;
  v8 = 0x7272655F7473616CLL;
  if (v2 != 4)
  {
    v8 = 0x797469726F697270;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEF657461645F7972;
  v10 = 0x7465725F7478656ELL;
  if (v2 != 2)
  {
    v10 = 0x7272655F7473616CLL;
    v9 = 0xEF657461645F726FLL;
  }

  if (*v1)
  {
    v4 = 0x6F635F7972746572;
    v3 = 0xEB00000000746E75;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1CF486340()
{
  v1 = *v0;
  v2 = 0x6574617473;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0xD00000000000001ALL;
  }

  v4 = 0x7272655F7473616CLL;
  if (v1 != 4)
  {
    v4 = 0x797469726F697270;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7465725F7478656ELL;
  if (v1 != 2)
  {
    v5 = 0x7272655F7473616CLL;
  }

  if (*v0)
  {
    v2 = 0x6F635F7972746572;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF486464(unsigned __int8 a1, id a2)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v4 = v2[48];
        goto LABEL_17;
      }

      if (*(v2 + 8))
      {
        v14 = a2;
        v15 = sub_1CF9E6888();
        a2 = v14;
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = [a2 bindObjectParameter_];
      swift_unknownObjectRelease();
LABEL_26:
      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v6;
    }

    if (a1 != 4)
    {
      v4 = *(v2 + 1);
      v11 = MEMORY[0x1E69E6810];
      goto LABEL_18;
    }

    v5 = *(v2 + 5);
    if (v5)
    {
      swift_getErrorValue();
      v6 = v21;
      v7 = v5;
      v8 = sub_1CF4C2330(v22, v23);
      if (v3)
      {
      }

      else
      {
        v19 = v8;
        v20 = v9;
        v6 = sub_1CF04E5D8(v8, v9);

        sub_1CEFE4714(v19, v20);
      }

      return v6;
    }

    v10 = [a2 bindObjectParameter_];
LABEL_23:
    v17 = v10;
    goto LABEL_26;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = *(v2 + 3);
    }

    else
    {
      v4 = *(v2 + 4);
    }

    goto LABEL_17;
  }

  if (a1)
  {
    v10 = [a2 bindLongParameter_];
    goto LABEL_23;
  }

  v4 = *v2;
LABEL_17:
  v11 = MEMORY[0x1E69E6530];
LABEL_18:
  v24[3] = v11;
  v24[0] = v4;
  v6 = sub_1CEFF8EA0(v24);
  v13 = v12;
  sub_1CF0248E0(v24);
  if (v13)
  {
    return v6;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF4866C0(id a1@<X1>, unsigned __int8 a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      *(a4 + 24) = &type metadata for NSecTimestamp;
      v16 = [a1 longAtIndex_];
    }

    else
    {
      if (!a2)
      {
        *(a4 + 24) = &type metadata for JobThrottlingState;
        v7 = [a1 longAtIndex_];
        if (v7 <= 2)
        {
          *a4 = v7;
          return;
        }

        goto LABEL_15;
      }

      v16 = [a1 longAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E6530];
    }

    goto LABEL_18;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      *(a4 + 24) = &type metadata for JobSchedulingPriority;
      v16 = [a1 unsignedLongAtIndex_];
LABEL_18:
      *a4 = v16;
      return;
    }

    if (([a1 isNullAtIndex_] & 1) == 0)
    {
      v9 = [a1 dataAtIndex_];
      v10 = sub_1CF9E5B88();
      v12 = v11;

      sub_1CF4C2898(v10, v12);
      v14 = v13;
      sub_1CEFE4714(v10, v12);
      if (v4)
      {
        return;
      }

      if (v14)
      {
        swift_getErrorValue();
        *(a4 + 24) = v24;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
        (*(*(v24 - 8) + 16))(boxed_opaque_existential_0);

        return;
      }
    }

    goto LABEL_20;
  }

  if (a2 == 6)
  {
    *(a4 + 24) = &type metadata for JobThrottlingDomainWideError;
    v17 = sub_1CF94C0BC([a1 longAtIndex_]);
    if (v17 == 13)
    {
LABEL_15:
      sub_1CF1DA5D8();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
      __swift_deallocate_boxed_opaque_existential_0(a4);
      return;
    }

    *a4 = v17;
  }

  else
  {
    if ([a1 isNullAtIndex_])
    {
LABEL_20:
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return;
    }

    v20 = [a1 stringAtIndex_];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    *(a4 + 24) = MEMORY[0x1E69E6158];
    *a4 = v21;
    *(a4 + 8) = v23;
  }
}

void sub_1CF486960(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  LOBYTE(v21) = 0;
  sub_1CF0230AC(a1, &type metadata for JobThrottlingState);
  sub_1CF0230B4(&v21, &type metadata for JobThrottlingState, a1, &type metadata for JobThrottlingState, a2);
  if (!v3)
  {
    v7 = v28[2];
    LOBYTE(v21) = 5;
    sub_1CF0230AC(a1, &type metadata for JobSchedulingPriority);
    sub_1CF0230B4(&v21, &type metadata for JobSchedulingPriority, a1, &type metadata for JobSchedulingPriority, a2);
    v8 = v26;
    LOBYTE(v21) = 1;
    v9 = MEMORY[0x1E69E6530];
    sub_1CF0230AC(a1, MEMORY[0x1E69E6530]);
    sub_1CF0230B4(&v21, v9, a1, v9, a2);
    v10 = v25;
    LOBYTE(v21) = 2;
    sub_1CF0230AC(a1, &type metadata for NSecTimestamp);
    sub_1CF0230B4(&v21, &type metadata for NSecTimestamp, a1, &type metadata for NSecTimestamp, a2);
    v11 = v24;
    LOBYTE(v21) = 3;
    sub_1CF0230B4(&v21, &type metadata for NSecTimestamp, a1, &type metadata for NSecTimestamp, a2);
    v19 = v23;
    v20 = v11;
    LOBYTE(v21) = 4;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    sub_1CF0230AC(a1, v12);
    sub_1CF0230B4(&v21, v12, a1, v12, a2);
    v18 = v22;
    LOBYTE(v21) = 6;
    sub_1CF0230AC(a1, &type metadata for JobThrottlingDomainWideError);
    sub_1CF0230B4(&v21, &type metadata for JobThrottlingDomainWideError, a1, &type metadata for JobThrottlingDomainWideError, a2);
    v27 = v28[1];
    v28[0] = 7;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    sub_1CF0230AC(a1, v13);
    sub_1CF0230B4(v28, v13, a1, v13, a2);
    v14 = v21;
    v15 = v27;
    if (v27 > 0xB)
    {
      v17 = v19;
      v16 = v20;
    }

    else
    {
      v17 = v19;
      v16 = v20;
      if (((1 << v27) & 0x860) != 0)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    *a3 = v7;
    *(a3 + 8) = v8;
    *(a3 + 16) = v10;
    *(a3 + 24) = v16;
    *(a3 + 32) = v17;
    *(a3 + 40) = v18;
    *(a3 + 48) = v15;
    *(a3 + 56) = v14;
  }
}

__n128 sub_1CF486CC4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1CF486960(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

unint64_t sub_1CF486D18(uint64_t a1)
{
  *(a1 + 8) = sub_1CF486D48();
  result = sub_1CF24EF90();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF486D48()
{
  result = qword_1EC4C07C0;
  if (!qword_1EC4C07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C07C0);
  }

  return result;
}

unint64_t sub_1CF486DA0()
{
  result = qword_1EDEAA330;
  if (!qword_1EDEAA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA330);
  }

  return result;
}

unint64_t sub_1CF486DF4(uint64_t a1)
{
  result = sub_1CF486E1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF486E1C()
{
  result = qword_1EC4C07C8;
  if (!qword_1EC4C07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C07C8);
  }

  return result;
}

uint64_t _s9SQLFieldsOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9SQLFieldsOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF486FF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BF760, &qword_1CF9FCBB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF487044(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF487090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v67 = a2;
  v68 = a3;
  v62 = a5;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  (*(v7 + 56))(v15, 1, 1, v6);
  v71 = 0x2070756B6F6F6CLL;
  v72 = 0xE700000000000000;
  v66 = a1;
  v73 = a1;
  v19 = sub_1CF9E7F98();
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  v63 = v72;
  v64 = v71;
  sub_1CEFE74D8(v15, v12);
  v29 = *(v7 + 48);
  if (v29(v12, 1, v6) == 1)
  {
    v30 = v18;
    sub_1CF9E6048();
    v31 = v9;
    if (v29(v12, 1, v6) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v9;
    (*(v7 + 32))(v9, v12, v6);
  }

  v32 = v65;
  (*(v7 + 16))(v65, v31, v6);
  *(v32 + *(v16 + 20)) = v18;
  v33 = v32 + *(v16 + 24);
  *v33 = "SQLDB: Lookup item by fileID";
  *(v33 + 8) = 28;
  *(v33 + 16) = 2;
  v34 = v18;
  v35 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1CEFD51C4();
  v37 = v63;
  *(v36 + 32) = v64;
  *(v36 + 40) = v37;
  sub_1CF9E6028(v35, &dword_1CEFC7000, v34, "SQLDB: Lookup item by fileID", 28, 2, v32, "%s", 2);
  v36, v38, v39, v40, v41, v42, v43, v44;
  (*(v7 + 8))(v31, v6);
  v45 = sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v47 = v69;
  v48 = (*(v70 + 24))(sub_1CF4C0448, v46);
  if (!v47)
  {
    v49 = v48;
    if ([v48 next])
    {
      v50 = sub_1CF1CBB20();
      v51 = v62;
      sub_1CF2408F8(v50, v49, 0, v62);
      v50, v53, v54, v55, v56, v57, v58, v59;

      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      (*(*(v60 - 8) + 56))(v51, 0, 1, v60);
    }

    else
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      (*(*(v52 - 8) + 56))(v62, 1, 1, v52);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v32, type metadata accessor for Signpost);
}

void sub_1CF487650(_TtC18FileProviderDaemon8FSTester *result, void (*a2)(_TtC18FileProviderDaemon8FSTester **, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  v16 = result;
  if (a4)
  {
    v5 = a4;
    while (1)
    {
      v7 = v5 & -v5;
      v15 = v7;
      a2(&v16, &v15, a3);
      if (v4)
      {
        break;
      }

      v14 = v5 == v7;
      v5 ^= v7;
      if (v14)
      {
        return;
      }
    }

    v16, v8, a3, v9, v10, v11, v12, v13;
  }
}

uint64_t sub_1CF4876D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x28284C4C554E4649, 0xEF205443454C4553);
  v6 = sub_1CF06DA94(0, 0xE000000000000000, v5[95], v5[96], v5[97], v5[98]);
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4E6C0);
  MEMORY[0x1D3868CC0](*(v2 + qword_1EDEBBD78), *(v2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4E6E0);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0x20202020200A2C29, 0xEA00000000002020);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF4878A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a3;
  v64 = a1;
  v10 = sub_1CF4AC9EC(a1, a4, a5);
  v62 = 0;
  v11 = a2[3];
  v61 = a2[4];
  v60 = __swift_project_boxed_opaque_existential_1(a2, v11);
  sub_1CF9E7948();
  0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
  v66 = 0x687370616E73202BLL;
  v67 = 0xEB0000000020746FLL;
  v19 = sub_1CF9E6958();
  v21 = v20;
  0xE200000000000000, v20, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](v19, v21);
  v21, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  v65 = v10;
  sub_1CF056E98();
  v35 = sub_1CF9E7718();
  v37 = v36;
  MEMORY[0x1D3868CC0](v35, v36);
  v37, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](0x73656972746E6520, 0xEA00000000003A29);
  sub_1CF4FB2BC(0x687370616E73202BLL, 0xEB0000000020746FLL, v11, v61);
  0xEB0000000020746FLL, v45, v46, v47, v48, v49, v50, v51;
  v52 = a2[3];
  v53 = a2[4];
  v54 = __swift_project_boxed_opaque_existential_1(a2, v52);
  MEMORY[0x1EEE9AC00](v54);
  v56[2] = a4;
  v56[3] = a5;
  v57 = v63 & 1;
  v58 = v6;
  v59 = v64;
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4C040C, v56, v52, MEMORY[0x1E69E7CA8] + 8, v53);
}

void sub_1CF487B0C(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_1CF9E8048();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_1CF487BA4(uint64_t a1)
{
  v2 = sub_1CF4C0460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF487BE0(uint64_t a1)
{
  v2 = sub_1CF4C0460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF487C1C(void *a1)
{
  v2 = swift_allocObject();
  sub_1CF487C6C(a1);
  return v2;
}

uint64_t sub_1CF487C6C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C07D8, &qword_1CFA06178);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4C0460();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for PaginatedContinuation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = sub_1CF9E7D78();
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v10);
    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1CF487E40(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v10 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v4 = &v11[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C07F8, &qword_1CFA06188);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4C0460();
  sub_1CF9E82A8();
  sub_1CF9E7EE8();
  if (v1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  sub_1CF9E7E28();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1CF1D6D18();
  sub_1CF9E82A8();
  (*(v10 + 8))(v4, v12);
  (*(v6 + 8))(v8, v5);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1CF488120()
{
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 979789423;
}

uint64_t sub_1CF488190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = a4;
  v36 = a5;
  v33 = a1;
  v34 = a3;
  v8 = *(*v5 + 776);
  v32 = *(*v5 + 760);
  v9 = type metadata accessor for SnapshotItem(255, v32, v8, a4);
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  (*(v11 + 16))(v13, a2, v10, v19);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v14 + 32))(v21, v13, v9);
  if ((*(v36 + 8))(v35) == 2)
  {
    v24 = *(v6 + qword_1EDEAE5C0);
    type metadata accessor for SnapshotItemObject(0, v32, v8, v23);
    (*(v14 + 16))(v17, v21, v9);
    v25 = sub_1CF0761B4(v17);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemIDObject(0, AssociatedTypeWitness, AssociatedConformanceWitness, v28);
    v29 = v24;
    v30 = sub_1CF067AFC(v33);
    [v29 setObject:v25 forKey:v30];
  }

  return (*(v14 + 8))(v21, v9);
}

void sub_1CF4884D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 8))(a3, a4) == 2)
  {
    v6 = *(v4 + qword_1EDEAE5C0);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemIDObject(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
    v10 = v6;
    v11 = sub_1CF067AFC(a1);
    [v10 removeObjectForKey_];
  }
}

uint64_t sub_1CF488624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *v4;
  if ((*(a3 + 8))(a2, a3) == 2)
  {
    v9 = *(v4 + qword_1EDEAE5C0);
    v10 = *(v7 + 776);
    v11 = *(v7 + 760);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemIDObject(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
    v15 = v9;
    v16 = sub_1CF067AFC(a1);
    v17 = [v15 objectForKey_];

    if (v17)
    {
      v18 = *(*v17 + 96);
      v19 = type metadata accessor for SnapshotItem(0, v11, v10, v8);
      v28 = *(v19 - 8);
      (*(v28 + 16))(a4, &v17[v18], v19);

      v20 = *(v28 + 56);
      v21 = a4;
      v22 = 0;
      v23 = v19;
      goto LABEL_7;
    }

    v24 = v11;
    v25 = v10;
  }

  else
  {
    v24 = *(v7 + 760);
    v25 = *(v7 + 776);
  }

  v26 = type metadata accessor for SnapshotItem(0, v24, v25, v8);
  v20 = *(*(v26 - 8) + 56);
  v23 = v26;
  v21 = a4;
  v22 = 1;
LABEL_7:

  return v20(v21, v22, 1, v23);
}

id sub_1CF488864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))(a2, a3);
  if (result == 2)
  {
    v5 = *(v3 + qword_1EDEAE5C0);

    return [v5 removeAllObjects];
  }

  return result;
}

void sub_1CF4888E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v62 = a2;
  v63 = a5;
  v67 = a1;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v53 - v16;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v61 = v5;
  if (*(v5 + 32))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
  }

  else
  {
    v56 = a3;
    v57 = a4;
    v58 = v6;
    v59 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v53 = qword_1EDEBBE40;
    v24 = v64;
    (*(v10 + 56))(v64, 1, 1, v9);
    v65 = 0;
    v66 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7FE8();
    v54 = v66;
    v55 = v65;
    sub_1CEFE74D8(v24, v14);
    v25 = *(v10 + 48);
    if (v25(v14, 1, v9) == 1)
    {
      v26 = v53;
      v27 = v53;
      v28 = v60;
      sub_1CF9E6048();
      v29 = v25(v14, 1, v9);
      v30 = v26;
      if (v29 != 1)
      {
        sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v28 = v60;
      (*(v10 + 32))(v60, v14, v9);
      v30 = v53;
    }

    v31 = v59;
    (*(v10 + 16))(v59, v28, v9);
    *(v31 + *(v17 + 20)) = v30;
    v32 = v31 + *(v17 + 24);
    *v32 = "SQLDB: Lookup FS recursive properties";
    *(v32 + 8) = 37;
    *(v32 + 16) = 2;
    v33 = v30;
    v34 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v35 = v28;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1CF9FA450;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1CEFD51C4();
    v37 = v54;
    *(v36 + 32) = v55;
    *(v36 + 40) = v37;
    sub_1CF9E6028(v34, &dword_1CEFC7000, v33, "SQLDB: Lookup FS recursive properties", 37, 2, v31, "%s", 2);
    v36, v38, v39, v40, v41, v42, v43, v44;
    (*(v10 + 8))(v35, v9);
    v45 = sub_1CEFCCC44(v64, &unk_1EC4BED20, &unk_1CFA00700);
    v46 = MEMORY[0x1EEE9AC00](v45);
    v47 = v58;
    v48 = (*(v57 + 24))(sub_1CF4C0AD8, v46);
    if (v47)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v31, type metadata accessor for Signpost);
      return;
    }

    v49 = v48;
    v50 = [v48 next];
    if (v50)
    {
      v19 = [v49 unsignedLongAtIndex_];
      v20 = [v49 unsignedLongAtIndex_];
      v21 = [v49 unsignedLongAtIndex_];
      v22 = [v49 unsignedLongAtIndex_];
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    v23 = v50 ^ 1;

    sub_1CF9E7458();
    v51 = v59;
    sub_1CF9E6038();
    sub_1CF4C0A48(v51, type metadata accessor for Signpost);
  }

  v52 = v63;
  *v63 = v19;
  v52[1] = v20;
  v52[2] = v21;
  v52[3] = v22;
  *(v52 + 32) = v23;
}

uint64_t sub_1CF488F38(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46520);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, v4);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return 0;
}

id sub_1CF4890B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v60 = a1;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v46 - v15;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v4;
  if (*(v4 + 32) != 1)
  {
    return 0;
  }

  v50 = a3;
  v51 = a4;
  v52 = v5;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDEBBE40;
  v18 = v57;
  (*(v9 + 56))(v57, 1, 1, v8);
  v58 = 0;
  v59 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v48 = v59;
  v49 = v58;
  sub_1CEFE74D8(v18, v13);
  v19 = *(v9 + 48);
  v20 = v19(v13, 1, v8);
  v21 = v54;
  if (v20 == 1)
  {
    v22 = v47;
    v23 = v47;
    v24 = v53;
    sub_1CF9E6048();
    v25 = v19(v13, 1, v8);
    v26 = v22;
    if (v25 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v24 = v53;
    (*(v9 + 32))(v53, v13, v8);
    v26 = v47;
  }

  (*(v9 + 16))(v21, v24, v8);
  *(v21 + *(v16 + 20)) = v26;
  v28 = v21 + *(v16 + 24);
  *v28 = "SQLDB: Lookup FP recursive properties";
  *(v28 + 8) = 37;
  *(v28 + 16) = 2;
  v29 = v26;
  v30 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1CF9FA450;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1CEFD51C4();
  v32 = v48;
  *(v31 + 32) = v49;
  *(v31 + 40) = v32;
  sub_1CF9E6028(v30, &dword_1CEFC7000, v29, "SQLDB: Lookup FP recursive properties", 37, 2, v21, "%s", 2);
  v31, v33, v34, v35, v36, v37, v38, v39;
  (*(v9 + 8))(v24, v8);
  v40 = sub_1CEFCCC44(v57, &unk_1EC4BED20, &unk_1CFA00700);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v42 = v52;
  v43 = (*(v51 + 24))(sub_1CF4C0ACC, v41);
  if (v42)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF4C0A48(v21, type metadata accessor for Signpost);
  }

  else
  {
    v44 = v43;
    if ([v43 next])
    {
      v45 = [v44 unsignedLongAtIndex_];
      [v44 unsignedLongAtIndex_];
    }

    else
    {
      v45 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v21, type metadata accessor for Signpost);
    return v45;
  }
}

uint64_t sub_1CF4896C4(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA465E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, v4);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return 0;
}

unint64_t sub_1CF489844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a1;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v46 - v16;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v52 = v4;
  if (*(v4 + 32) != 1)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLSnapshot.swift", 130, 2, 163);
  }

  v49 = v18;
  v50 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v54 = a3;
  v55 = a4;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  v21 = v56;
  (*(v10 + 56))(v56, 1, 1, v9);
  v57 = 0;
  v58 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v47 = v58;
  v48 = v57;
  sub_1CEFE74D8(v21, v14);
  v22 = *(v10 + 48);
  if (v22(v14, 1, v9) == 1)
  {
    v23 = v20;
    v24 = v51;
    sub_1CF9E6048();
    v25 = v22(v14, 1, v9);
    v26 = v50;
    if (v25 != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v24 = v51;
    (*(v10 + 32))(v51, v14, v9);
    v26 = v50;
  }

  (*(v10 + 16))(v26, v24, v9);
  v27 = v49;
  *(v26 + *(v49 + 20)) = v20;
  v28 = v26 + *(v27 + 24);
  *v28 = "SQLDB: Lookup Inherited Content Policy";
  *(v28 + 8) = 38;
  *(v28 + 16) = 2;
  v29 = v20;
  v30 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1CF9FA450;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1CEFD51C4();
  v32 = v47;
  *(v31 + 32) = v48;
  *(v31 + 40) = v32;
  sub_1CF9E6028(v30, &dword_1CEFC7000, v29, "SQLDB: Lookup Inherited Content Policy", 38, 2, v26, "%s", 2);
  v31, v33, v34, v35, v36, v37, v38, v39;
  (*(v10 + 8))(v24, v9);
  v40 = sub_1CEFCCC44(v56, &unk_1EC4BED20, &unk_1CFA00700);
  v41 = &v46;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v43 = (*(v55 + 24))(sub_1CF4C0AC0, v42);
  if (!v5)
  {
    v44 = v43;
    if (![v43 next])
    {
LABEL_12:

      v41 = 0;
      goto LABEL_13;
    }

    v41 = [v44 unsignedLongAtIndex_];

    if ((v41 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

LABEL_13:
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v26, type metadata accessor for Signpost);
  return v41;
}

uint64_t sub_1CF489E34(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA4D870);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, v4);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return 0;
}

uint64_t *sub_1CF489FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a1;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v46 - v16;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v52 = v4;
  if (*(v4 + 32) != 1)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLSnapshot.swift", 130, 2, 185);
  }

  v49 = v18;
  v50 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v54 = a3;
  v55 = a4;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  v21 = v56;
  (*(v10 + 56))(v56, 1, 1, v9);
  v57 = 0;
  v58 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v47 = v58;
  v48 = v57;
  sub_1CEFE74D8(v21, v14);
  v22 = *(v10 + 48);
  if (v22(v14, 1, v9) == 1)
  {
    v23 = v20;
    v24 = v51;
    sub_1CF9E6048();
    v25 = v22(v14, 1, v9);
    v26 = v50;
    if (v25 != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v24 = v51;
    (*(v10 + 32))(v51, v14, v9);
    v26 = v50;
  }

  (*(v10 + 16))(v26, v24, v9);
  v27 = v49;
  *(v26 + *(v49 + 20)) = v20;
  v28 = v26 + *(v27 + 24);
  *v28 = "SQLDB: Lookup Effective Content Policy";
  *(v28 + 8) = 38;
  *(v28 + 16) = 2;
  v29 = v20;
  v30 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1CF9FA450;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1CEFD51C4();
  v32 = v47;
  *(v31 + 32) = v48;
  *(v31 + 40) = v32;
  sub_1CF9E6028(v30, &dword_1CEFC7000, v29, "SQLDB: Lookup Effective Content Policy", 38, 2, v26, "%s", 2);
  v31, v33, v34, v35, v36, v37, v38, v39;
  (*(v10 + 8))(v24, v9);
  v40 = sub_1CEFCCC44(v56, &unk_1EC4BED20, &unk_1CFA00700);
  v41 = &v46;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v43 = (*(v55 + 24))(sub_1CF4C0AB4, v42);
  if (v5)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v26, type metadata accessor for Signpost);
  }

  else
  {
    v44 = v43;
    if ([v43 next])
    {
      v41 = [v44 longAtIndex_];
    }

    else
    {
      v41 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v26, type metadata accessor for Signpost);
  }

  return v41;
}

uint64_t sub_1CF48A59C(uint64_t a1, uint64_t **a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_1CF06DA94(0, 0xE000000000000000, v4[95], v4[96], v4[97], v4[98]);
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v22 = *(swift_getAssociatedConformanceWitness() + 8);
  v23 = *(v22 + 32);
  v24 = swift_checkMetadataState();
  v25 = v23(a1, v24, v22);
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  return 0x205443454C4553;
}

uint64_t *sub_1CF48A780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v49 = a2;
  v50 = a3;
  v55 = a1;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDEBBE40;
  (*(v5 + 56))(v12, 1, 1, v4);
  v53 = 0;
  v54 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v44 = v54;
  v45 = v53;
  v47 = v12;
  sub_1CEFE74D8(v12, v9);
  v15 = *(v5 + 48);
  if (v15(v9, 1, v4) == 1)
  {
    v16 = v43;
    v17 = v43;
    v18 = v48;
    sub_1CF9E6048();
    v19 = v15(v9, 1, v4);
    v20 = v46;
    v21 = v16;
    if (v19 != 1)
    {
      sub_1CEFCCC44(v9, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v18 = v48;
    (*(v5 + 32))(v48, v9, v4);
    v20 = v46;
    v21 = v43;
  }

  (*(v5 + 16))(v20, v18, v4);
  *(v20 + *(v13 + 20)) = v21;
  v22 = v20 + *(v13 + 24);
  *v22 = "SQLDB: Lookup snapshot version";
  *(v22 + 8) = 30;
  *(v22 + 16) = 2;
  v23 = v21;
  v24 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v25 = v18;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1CF9FA450;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1CEFD51C4();
  v27 = v44;
  *(v26 + 32) = v45;
  *(v26 + 40) = v27;
  sub_1CF9E6028(v24, &dword_1CEFC7000, v23, "SQLDB: Lookup snapshot version", 30, 2, v20, "%s", 2);
  v26, v28, v29, v30, v31, v32, v33, v34;
  (*(v5 + 8))(v25, v4);
  v35 = sub_1CEFCCC44(v47, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = &v42;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v38 = v51;
  v39 = (*(v52 + 24))(sub_1CF4C0AA8, v37);
  if (v38)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v20, type metadata accessor for Signpost);
  }

  else
  {
    v40 = v39;
    if ([v39 next])
    {
      v36 = [v40 unsignedLongAtIndex_];
    }

    else
    {
      v36 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v20, type metadata accessor for Signpost);
  }

  return v36;
}

unint64_t sub_1CF48AD4C(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = *(v11 + 32);
  v13 = swift_checkMetadataState();
  v14 = v12(a1, v13, v11);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return 0xD00000000000001FLL;
}

uint64_t sub_1CF48AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v48 = a2;
  v49 = a3;
  v54 = a1;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v45 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v5 + 56))(v12, 1, 1, v4);
  v52 = 0;
  v53 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v43 = v53;
  v44 = v52;
  v46 = v12;
  sub_1CEFE74D8(v12, v9);
  v15 = *(v5 + 48);
  if (v15(v9, 1, v4) == 1)
  {
    v16 = v42;
    v17 = v42;
    v18 = v47;
    sub_1CF9E6048();
    v19 = v15(v9, 1, v4);
    v20 = v16;
    if (v19 != 1)
    {
      sub_1CEFCCC44(v9, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v18 = v47;
    (*(v5 + 32))(v47, v9, v4);
    v20 = v42;
  }

  (*(v5 + 16))(v14, v18, v4);
  v21 = v45;
  *&v14[*(v45 + 20)] = v20;
  v22 = &v14[*(v21 + 24)];
  *v22 = "SQLDB: [Recursive] Lookup is in pinned folder ";
  *(v22 + 1) = 46;
  v22[16] = 2;
  v23 = v20;
  v24 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1CF9FA450;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1CEFD51C4();
  v26 = v43;
  *(v25 + 32) = v44;
  *(v25 + 40) = v26;
  sub_1CF9E6028(v24, &dword_1CEFC7000, v23, "SQLDB: [Recursive] Lookup is in pinned folder ", 46, 2, v14, "%s", 2);
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v5 + 8))(v18, v4);
  v34 = sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = v48;
  v37 = v50;
  v38 = (*(v51 + 24))(sub_1CF4C0BF8, v35);
  if (!v37)
  {
    v39 = v38;
    v36 = [v38 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v14, type metadata accessor for Signpost);
  return v36 & 1;
}

uint64_t sub_1CF48B458(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007CLL, 0x80000001CFA4E550);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x5F746E657261702ELL, 0xEC000000202C6469);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA4E5D0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA4E5F0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000009FLL, 0x80000001CFA4E620);
  return 0;
}

uint64_t sub_1CF48B6F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a3;
  v72 = a4;
  v73 = a5;
  LODWORD(v69) = a2;
  v76 = a1;
  v6 = *v5;
  v7 = sub_1CF9E6068();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v60 - v12;
  v63 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 760);
  v60 = *(v6 + 776);
  v61 = v17;
  v19 = type metadata accessor for SnapshotItem(255, v17, v60, v18);
  v20 = sub_1CF9E75D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v60 - v22;
  v24 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  if (v69)
  {
    v69 = v5;
    sub_1CF488624(v76, v72, v73, v23);
    if ((*(v24 + 48))(v23, 1, v19) == 1)
    {
      (*(v21 + 8))(v23, v20);
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v28 = qword_1EDEBBE40;
      v29 = v65;
      v30 = v66;
      v31 = v68;
      (*(v65 + 56))(v68, 1, 1, v66);
      v74 = 0;
      v75 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7FE8();
      v60 = v75;
      v61 = v74;
      v32 = v31;
      v33 = v62;
      sub_1CEFE74D8(v32, v62);
      v34 = *(v29 + 48);
      v35 = v34(v33, 1, v30);
      v36 = v67;
      if (v35 == 1)
      {
        v37 = v28;
        v38 = v64;
        sub_1CF9E6048();
        if (v34(v33, 1, v30) != 1)
        {
          sub_1CEFCCC44(v33, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v38 = v64;
        (*(v29 + 32))(v64, v33, v30);
      }

      (*(v29 + 16))(v36, v38, v30);
      v41 = v63;
      *(v36 + *(v63 + 20)) = v28;
      v42 = v36 + *(v41 + 24);
      *v42 = "SQLDB: Lookup is in pinned folder";
      *(v42 + 8) = 33;
      *(v42 + 16) = 2;
      v43 = v28;
      v44 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1CF9FA450;
      *(v45 + 56) = MEMORY[0x1E69E6158];
      *(v45 + 64) = sub_1CEFD51C4();
      v46 = v60;
      *(v45 + 32) = v61;
      *(v45 + 40) = v46;
      sub_1CF9E6028(v44, &dword_1CEFC7000, v43, "SQLDB: Lookup is in pinned folder", 33, 2, v36, "%s", 2);
      v45, v47, v48, v49, v50, v51, v52, v53;
      (*(v29 + 8))(v38, v30);
      v54 = sub_1CEFCCC44(v68, &unk_1EC4BED20, &unk_1CFA00700);
      v55 = MEMORY[0x1EEE9AC00](v54);
      v56 = v70;
      v5 = v71;
      v57 = (*(v73 + 24))(sub_1CF4C09D4, v55);
      if (v56)
      {
        sub_1CF9E7458();
        sub_1CF9E6038();
        sub_1CF4C0A48(v36, type metadata accessor for Signpost);
      }

      else
      {
        v59 = v57;
        if ([v57 next])
        {
          v5 = [v59 BOOLAtIndex_];

          sub_1CF9E7458();
        }

        else
        {

          sub_1CF9E7458();
          v5 = 2;
        }

        sub_1CF9E6038();
        sub_1CF4C0A48(v36, type metadata accessor for Signpost);
      }
    }

    else
    {
      (*(v24 + 32))(v27, v23, v19);
      sub_1CF4C09E0(&v27[*(v19 + 48)], v16, type metadata accessor for ItemMetadata);
      (*(v24 + 8))(v27, v19);
      v5 = v16[*(v14 + 48)];
      sub_1CF4C0A48(v16, type metadata accessor for ItemMetadata);
    }
  }

  else
  {
    v39 = v70;
    v40 = sub_1CF48AEC8(v76, v71, v72, v73);
    if (!v39)
    {
      return v40 & 1;
    }
  }

  return v5;
}

uint64_t sub_1CF48BF0C(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4D640);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, v4);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return 0;
}

uint64_t sub_1CF48C08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v60 = a2;
  v61 = a3;
  v66 = a1;
  v53 = a5;
  v6 = *v5;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v54 = qword_1EDEBBE40;
  (*(v8 + 56))(v15, 1, 1, v7);
  v64 = 0;
  v65 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  v18 = *(v6 + 776);
  v19 = *(v6 + 760);
  swift_getAssociatedTypeWitness();
  v51 = v19;
  v52 = v18;
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v55 = v65;
  v56 = v64;
  v58 = v15;
  sub_1CEFE74D8(v15, v12);
  v20 = *(v8 + 48);
  if (v20(v12, 1, v7) == 1)
  {
    v21 = v54;
    v22 = v54;
    v23 = v59;
    sub_1CF9E6048();
    v24 = v20(v12, 1, v7);
    v25 = v57;
    v26 = v21;
    if (v24 != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v23 = v59;
    (*(v8 + 32))(v59, v12, v7);
    v25 = v57;
    v26 = v54;
  }

  (*(v8 + 16))(v25, v23, v7);
  *(v25 + *(v16 + 20)) = v26;
  v27 = v25 + *(v16 + 24);
  *v27 = "SQLDB: Lookup item by ID";
  *(v27 + 8) = 24;
  *(v27 + 16) = 2;
  v28 = v26;
  v29 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1CF9FA450;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1CEFD51C4();
  v31 = v55;
  *(v30 + 32) = v56;
  *(v30 + 40) = v31;
  sub_1CF9E6028(v29, &dword_1CEFC7000, v28, "SQLDB: Lookup item by ID", 24, 2, v25, "%s", 2);
  v30, v32, v33, v34, v35, v36, v37, v38;
  (*(v8 + 8))(v23, v7);
  v39 = sub_1CEFCCC44(v58, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v41 = v62;
  v42 = (*(v63 + 24))(sub_1CF4C0BD0, v40);
  if (!v41)
  {
    v43 = v42;
    v44 = [v42 next];
    v46 = type metadata accessor for SnapshotItem(0, v51, v52, v45);
    if (v44)
    {
      WitnessTable = swift_getWitnessTable();
      v48 = v53;
      sub_1CF01E03C(v43, 0, v46, WitnessTable, v53);
      v49 = 0;
    }

    else
    {
      v49 = 1;
      v48 = v53;
    }

    (*(*(v46 - 8) + 56))(v48, v49, 1, v46);
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v25, type metadata accessor for Signpost);
}

uint64_t sub_1CF48C684@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v28 = a5;
  v11 = type metadata accessor for SnapshotItem(255, *(*v6 + 760), *(*v6 + 776), a4);
  v12 = sub_1CF9E75D8();
  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  if ((a2 & 1) == 0)
  {
    v22 = v27;
    result = sub_1CF48C08C(a1, a3, a4, v28, v14);
    if (v22)
    {
      return result;
    }

    v19 = v25;
    return (*(v19 + 32))(v26, v14, v12);
  }

  sub_1CF488624(a1, a4, v28, &v24 - v16);
  v18 = *(v11 - 8);
  if ((*(v18 + 48))(v17, 1, v11) == 1)
  {
    v19 = v25;
    (*(v25 + 8))(v17, v12);
    v20 = v27;
    result = sub_1CF48C08C(a1, a3, a4, v28, v14);
    if (v20)
    {
      return result;
    }

    sub_1CF488190(a1, v14, a3, a4, v28);
    return (*(v19 + 32))(v26, v14, v12);
  }

  v23 = v26;
  (*(v18 + 32))(v26, v17, v11);
  return (*(v18 + 56))(v23, 0, 1, v11);
}

uint64_t sub_1CF48C914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v91 = a2;
  v93 = a1;
  v78 = a6;
  v7 = type metadata accessor for SnapshotItem(255, *(*v6 + 760), *(*v6 + 776), a4);
  v8 = sub_1CF9E75D8();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v73 - v9;
  v80 = v7;
  v79 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v73 - v11;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v21 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v83 = qword_1EDEBBE40;
  (*(v13 + 56))(v20, 1, 1, v12);
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x3A73726576626420, 0xE800000000000000);
  v96 = v91;
  v23 = sub_1CF9E7F98();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  v81 = v95;
  v82 = v94;
  v84 = v20;
  sub_1CEFE74D8(v20, v17);
  v33 = *(v13 + 48);
  if (v33(v17, 1, v12) == 1)
  {
    v34 = v83;
    v35 = v83;
    v36 = v85;
    sub_1CF9E6048();
    if (v33(v17, 1, v12) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v36 = v85;
    (*(v13 + 32))(v85, v17, v12);
    v34 = v83;
  }

  v37 = v92;
  (*(v13 + 16))(v92, v36, v12);
  *(v37 + *(v21 + 20)) = v34;
  v38 = v37 + *(v21 + 24);
  *v38 = "SQLDB: Lookup item by ID";
  *(v38 + 8) = 24;
  *(v38 + 16) = 2;
  v39 = v34;
  v40 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1CF9FA450;
  *(v41 + 56) = MEMORY[0x1E69E6158];
  *(v41 + 64) = sub_1CEFD51C4();
  v42 = v81;
  *(v41 + 32) = v82;
  *(v41 + 40) = v42;
  v72 = v41;
  LOBYTE(v71) = 2;
  v85 = v39;
  sub_1CF9E6028(v40, &dword_1CEFC7000, v39, "SQLDB: Lookup item by ID", 24, 2, v37, "%s", 2);
  v41, v43, v44, v45, v46, v47, v48, v49;
  (*(v13 + 8))(v36, v12);
  v50 = sub_1CEFCCC44(v84, &unk_1EC4BED20, &unk_1CFA00700);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = v88;
  v52 = v89;
  *(&v73 - 6) = v88;
  *(&v73 - 5) = v52;
  v70 = v90;
  v71 = v93;
  v72 = v91;
  v54 = v86;
  v55 = v87;
  v56 = (*(v52 + 24))(sub_1CF4C09A4, v51);
  if (!v54)
  {
    v57 = v56;
    if ([v56 next])
    {
      v58 = v80;
      WitnessTable = swift_getWitnessTable();
      v60 = v77;
      sub_1CF01E03C(v57, 0, v58, WitnessTable, v77);
      v61 = v79;
      v62 = v60;
      v63 = v74;
      (*(v79 + 16))(v74, v62, v58);
      v64 = v61;
      v65 = v55;
      v66 = *(v64 + 56);
      v91 = v64 + 56;
      v66(v63, 0, 1, v58);
      sub_1CF488190(v93, v63, v65, v53, v52);

      (*(v75 + 8))(v63, v76);
      v67 = v78;
      (*(v79 + 32))(v78, v77, v58);
      v66(v67, 0, 1, v58);
    }

    else
    {
      (*(v79 + 56))(v78, 1, 1, v80);
    }
  }

  sub_1CF9E7458();
  v68 = v92;
  sub_1CF9E6038();
  return sub_1CF4C0A48(v68, type metadata accessor for Signpost);
}

uint64_t sub_1CF48D120(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4D5F0);
  v20 = [a1 bindUnsignedLongParameter_];
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);
  v23, v24, v25, v26, v27, v28, v29, v30;
  return 0;
}

uint64_t sub_1CF48D33C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v95 = a5;
  v7 = v6;
  v92 = a3;
  v93 = a4;
  v98 = a1;
  v91 = v7;
  v9 = *v7;
  v96 = a6;
  v97 = v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v90 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v82 - v17;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v101 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v22 = a2[1];
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v86 = qword_1EDEBBE40;
  (*(v11 + 56))(v18, 1, 1, v10);
  v99 = 0;
  v100 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  v88 = v22;
  v89 = v21;
  v23 = sub_1CF9E6888();
  v24 = [v23 fp_obfuscatedFilename];

  v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v26;

  MEMORY[0x1D3868CC0](v25, v27);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](544106784, 0xE400000000000000);
  v35 = *(v97 + 776);
  v36 = *(v97 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v82[1] = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v84 = v100;
  v85 = v99;
  v87 = v18;
  sub_1CEFE74D8(v18, v15);
  v38 = *(v11 + 48);
  v39 = v38(v15, 1, v10);
  v83 = v35;
  if (v39 == 1)
  {
    v40 = v86;
    v41 = v86;
    v42 = v90;
    sub_1CF9E6048();
    v43 = v38(v15, 1, v10);
    v44 = v42;
    v45 = v40;
    if (v43 != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v44 = v90;
    (*(v11 + 32))(v90, v15, v10);
    v45 = v86;
  }

  v46 = v101;
  (*(v11 + 16))(v101, v44, v10);
  *(v46 + *(v19 + 20)) = v45;
  v47 = v46 + *(v19 + 24);
  *v47 = "SQLDB: Lookup item by parent ID and name";
  *(v47 + 8) = 40;
  *(v47 + 16) = 2;
  v48 = v45;
  v49 = v44;
  v50 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1CF9FA450;
  *(v51 + 56) = MEMORY[0x1E69E6158];
  *(v51 + 64) = sub_1CEFD51C4();
  v52 = v84;
  *(v51 + 32) = v85;
  *(v51 + 40) = v52;
  v80 = v51;
  LOBYTE(v79) = 2;
  v90 = v48;
  sub_1CF9E6028(v50, &dword_1CEFC7000, v48, "SQLDB: Lookup item by parent ID and name", 40, 2, v46, "%s", 2);
  v51, v53, v54, v55, v56, v57, v58, v59;
  (*(v11 + 8))(v49, v10);
  v60 = sub_1CEFCCC44(v87, &unk_1EC4BED20, &unk_1CFA00700);
  v61 = v91;
  v62 = (*(*v91[2] + 112))(v60);
  v63 = MEMORY[0x1EEE9AC00](v62);
  v65 = v95;
  v64 = v96;
  v82[-8] = v95;
  v82[-7] = v64;
  v66 = v98;
  v82[-6] = v61;
  v82[-5] = v66;
  v78 = v89;
  v79 = v88;
  LOBYTE(v80) = v67 & 1;
  v81 = v92;
  v68 = v94;
  v69 = (*(v64 + 24))(sub_1CF4C0900, v63);
  if (v68)
  {
    sub_1CF9E7458();
    v70 = v101;
    sub_1CF9E6038();
    sub_1CF4C0A48(v70, type metadata accessor for Signpost);
  }

  else
  {
    v71 = v69;
    v51 = sub_1CF9E6DA8();
    v99 = v51;
    v72 = [v71 next];
    v73 = v97;
    v74 = v83;
    if (v72)
    {
      do
      {
        v75 = objc_autoreleasePoolPush();
        sub_1CF4BDB18(&v99, v71, v36, *(v73 + 768), v65, v74);
        objc_autoreleasePoolPop(v75);
      }

      while (([v71 next] & 1) != 0);
      v51 = v99;
    }

    sub_1CF9E7458();
    v76 = v101;
    sub_1CF9E6038();
    sub_1CF4C0A48(v76, type metadata accessor for Signpost);
  }

  return v51;
}

uint64_t sub_1CF48DA3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v72 = a8;
  v73 = a7;
  v70 = a6;
  v69 = a4;
  v71 = *a2;
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1CF9E7948();
  v78 = 0;
  v79 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  v12 = v71[97];
  v13 = v71[95];
  swift_getAssociatedTypeWitness();
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v14 + 32);
  v16 = swift_checkMetadataState();
  v17 = v15(a1, v16, v14);
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4D5B0);
  if (a5)
  {

    v34 = MEMORY[0x1E69E6158];
    v35 = v69;
  }

  else
  {
    0, v27, v28, v29, v30, v31, v32, v33;
    v35 = 0;
    v34 = 0;
    v76 = 0;
  }

  v74 = v35;
  v75 = a5;
  v77 = v34;
  v36 = sub_1CEFF8EA0(&v74);
  v38 = v37;
  sub_1CEFCCC44(&v74, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v38)
  {
    MEMORY[0x1D3868CC0](v36, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    if (v70)
    {
      v46 = 0;
    }

    else
    {
      v46 = 0x204554414C4C4F43;
    }

    if (v70)
    {
      v47 = 0xE000000000000000;
    }

    else
    {
      v47 = 0xEE00455341434F4ELL;
    }

    MEMORY[0x1D3868CC0](v46, v47);
    v47, v48, v49, v50, v51, v52, v53, v54;
    v55 = MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4D5D0);
    MEMORY[0x1EEE9AC00](v55);
    v56 = v71[96];
    v68[2] = v13;
    v68[3] = v56;
    v68[4] = v72;
    v68[5] = v12;
    v68[6] = v71[98];
    v68[7] = a9;
    v68[8] = a1;
    sub_1CF9E75D8();
    sub_1CF06E1CC(sub_1CF4C0938, v68, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v57, &v74);
    if (v75)
    {
      v58 = v74;
    }

    else
    {
      v58 = 0;
    }

    if (v75)
    {
      v59 = v75;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    MEMORY[0x1D3868CC0](v58, v59);
    v59, v60, v61, v62, v63, v64, v65, v66;
    return v78;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF48DE0C(uint64_t a1@<X1>, void *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  *a4 = 0x2120646920444E41;
  a4[1] = v19;
}

void sub_1CF48DF18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a3;
  v76 = a4;
  v74 = a2;
  v72 = a1;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v67 - v15;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = v5;
  if (*(v5 + 32) == 1)
  {
    v67 = v17;
    v69 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = v6;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDEBBE40;
    v20 = v109;
    (*(v9 + 56))(v109, 1, 1, v8);
    sub_1CEFE74D8(v20, v13);
    v21 = *(v9 + 48);
    v22 = v21(v13, 1, v8);
    v23 = v71;
    v68 = v19;
    if (v22 == 1)
    {
      v24 = v19;
      sub_1CF9E6048();
      v25 = v8;
      if (v21(v13, 1, v8) != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v9 + 32))(v71, v13, v8);
      v25 = v8;
    }

    v33 = v69;
    (*(v9 + 16))(v69, v23, v25);
    v34 = v67;
    v35 = v68;
    *(v33 + *(v67 + 20)) = v68;
    v36 = v33 + *(v34 + 24);
    *v36 = "SQLDB: Lookup item non syncable attributes";
    *(v36 + 8) = 42;
    *(v36 + 16) = 2;
    v37 = v35;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v9 + 8))(v23, v25);
    v38 = sub_1CEFCCC44(v109, &unk_1EC4BED20, &unk_1CFA00700);
    v39 = MEMORY[0x1EEE9AC00](v38);
    v40 = v76;
    *(&v67 - 4) = v75;
    *(&v67 - 3) = v40;
    v41 = v72;
    *(&v67 - 2) = v73;
    *(&v67 - 1) = v41;
    v42 = v70;
    v43 = (*(v40 + 24))(sub_1CF4C08D8, v39);
    if (!v42)
    {
      v44 = v43;
      if ([v43 next])
      {
        v45 = sub_1CEFF12E8();
        sub_1CEFF14E0(v45, v44, 0, &v93);

        v45, v52, v53, v54, v55, v56, v57, v58;
        v89 = v105;
        v90 = v106;
        v91 = v107;
        v92 = v108;
        v85 = v101;
        v86 = v102;
        v87 = v103;
        v88 = v104;
        v81 = v97;
        v82 = v98;
        v83 = v99;
        v84 = v100;
        v77 = v93;
        v78 = v94;
        v79 = v95;
        v80 = v96;
        nullsub_1();
        v59 = v90;
        *(a5 + 192) = v89;
        *(a5 + 208) = v59;
        *(a5 + 224) = v91;
        *(a5 + 240) = v92;
        v60 = v86;
        *(a5 + 128) = v85;
        *(a5 + 144) = v60;
        v61 = v88;
        *(a5 + 160) = v87;
        *(a5 + 176) = v61;
        v62 = v82;
        *(a5 + 64) = v81;
        *(a5 + 80) = v62;
        v63 = v84;
        *(a5 + 96) = v83;
        *(a5 + 112) = v63;
        v64 = v78;
        *a5 = v77;
        *(a5 + 16) = v64;
        v65 = v79;
        v66 = v80;
      }

      else
      {

        sub_1CEFE528C(&v93);
        v46 = v106;
        *(a5 + 192) = v105;
        *(a5 + 208) = v46;
        *(a5 + 224) = v107;
        *(a5 + 240) = v108;
        v47 = v102;
        *(a5 + 128) = v101;
        *(a5 + 144) = v47;
        v48 = v104;
        *(a5 + 160) = v103;
        *(a5 + 176) = v48;
        v49 = v98;
        *(a5 + 64) = v97;
        *(a5 + 80) = v49;
        v50 = v100;
        *(a5 + 96) = v99;
        *(a5 + 112) = v50;
        v51 = v94;
        *a5 = v93;
        *(a5 + 16) = v51;
        v65 = v95;
        v66 = v96;
      }

      *(a5 + 32) = v65;
      *(a5 + 48) = v66;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v33, type metadata accessor for Signpost);
  }

  else
  {
    sub_1CEFE528C(&v93);
    v26 = v106;
    *(a5 + 192) = v105;
    *(a5 + 208) = v26;
    *(a5 + 224) = v107;
    *(a5 + 240) = v108;
    v27 = v102;
    *(a5 + 128) = v101;
    *(a5 + 144) = v27;
    v28 = v104;
    *(a5 + 160) = v103;
    *(a5 + 176) = v28;
    v29 = v98;
    *(a5 + 64) = v97;
    *(a5 + 80) = v29;
    v30 = v100;
    *(a5 + 96) = v99;
    *(a5 + 112) = v30;
    v31 = v94;
    *a5 = v93;
    *(a5 + 16) = v31;
    v32 = v96;
    *(a5 + 32) = v95;
    *(a5 + 48) = v32;
  }
}

uint64_t sub_1CF48E4DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1CF9E7948();
  0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](*(a2 + *a6), *(a2 + *a6 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 32);
  v18 = swift_checkMetadataState();
  v19 = v17(a1, v18, v16);
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  return 0x205443454C4553;
}

id sub_1CF48E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v134 = a3;
  v135 = a4;
  v133 = a2;
  v141 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v129 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v131 = &v125 - v6;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v125 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v136 = v4;
  v137 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 32) != 1)
  {
    return 0;
  }

  v130 = AssociatedTypeWitness;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  (*(v8 + 56))(v15, 1, 1, v7);
  v139 = 0;
  v140 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x692070756B6F6F6CLL, 0xEE002044496D6574);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v126 = v140;
  v127 = v139;
  v128 = v15;
  sub_1CEFE74D8(v15, v12);
  v20 = *(v8 + 48);
  v21 = v20(v12, 1, v7);
  v125 = AssociatedConformanceWitness;
  if (v21 == 1)
  {
    v22 = v18;
    v23 = v18;
    v24 = v132;
    sub_1CF9E6048();
    if (v20(v12, 1, v7) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v22 = v18;
    v24 = v132;
    (*(v8 + 32))(v132, v12, v7);
  }

  v26 = v137;
  (*(v8 + 16))(v137, v24, v7);
  *(v26 + *(v16 + 20)) = v22;
  v27 = v26 + *(v16 + 24);
  *v27 = "SQLDB: Build Hierarichal User Info";
  *(v27 + 8) = 34;
  *(v27 + 16) = 2;
  v28 = v22;
  v29 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1CF9FA450;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1CEFD51C4();
  v31 = v126;
  *(v30 + 32) = v127;
  *(v30 + 40) = v31;
  sub_1CF9E6028(v29, &dword_1CEFC7000, v28, "SQLDB: Build Hierarichal User Info", 34, 2, v26, "%s", 2);
  v30, v32, v33, v34, v35, v36, v37, v38;
  (*(v8 + 8))(v24, v7);
  v39 = sub_1CEFCCC44(v128, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v41 = v138;
  v42 = (*(v135 + 24))(sub_1CF4C0DAC, v40);
  if (v41)
  {
    sub_1CF9E7458();
    v43 = v137;
    sub_1CF9E6038();
    return sub_1CF4C0A48(v43, type metadata accessor for Signpost);
  }

  v44 = v42;
  if ([v42 next])
  {
    if (([v44 isNullAtIndex_] & 1) == 0)
    {
      v49 = sub_1CEFE7794(0);
      v51 = v50;
      v52 = v49;
      v53 = objc_allocWithZone(MEMORY[0x1E69674A8]);
      v54 = sub_1CF9E6D28();
      v55 = sub_1CF9E6D28();
      v47 = [v53 initWithKeys:v54 values:v55];

      v51, v56, v57, v58, v59, v60, v61, v62;
      v52, v63, v64, v65, v66, v67, v68, v69;

      goto LABEL_17;
    }

    if ([v44 isNullAtIndex_])
    {
      v138 = v28;
      v45 = 0;
      v132 = 0;
      v46 = v131;
    }

    else
    {
      v70 = sub_1CEFE7794(1);
      v46 = v131;
      v45 = v70;
      v132 = v71;
      v138 = v28;
    }

    v72 = *(*(v125 + 8) + 16);
    v73 = v44;
    v72();
    if (sub_1CF9E6868())
    {
      if (v45)
      {
        v74 = objc_allocWithZone(MEMORY[0x1E69674A8]);
        v75 = sub_1CF9E6D28();
        v76 = v132;
        v77 = sub_1CF9E6D28();
        v78 = [v74 initWithKeys:v75 values:v77];
        v76, v79, v80, v81, v82, v83, v84, v85;
        v45, v86, v87, v88, v89, v90, v91, v92;
      }

      else
      {
        v78 = 0;
      }

      v47 = [objc_opt_self() mergeWithUserInfo:v78 intoParentUserInfo:0];

      (*(v129 + 8))(v46, v130);
      goto LABEL_17;
    }

    v93 = sub_1CF48E688(v46, v133, v134, v135);
    v94 = v73;
    v95 = v93;
    v96 = v138;
    if (v93)
    {
      if (v45)
      {
        v97 = objc_allocWithZone(MEMORY[0x1E69674A8]);
        v98 = v95;
        v99 = sub_1CF9E6D28();
        v138 = v96;
        v100 = v99;
        v101 = v132;
        v102 = sub_1CF9E6D28();
        v103 = [v97 initWithKeys:v100 values:v102];
        v101, v104, v105, v106, v107, v108, v109, v110;
        v45, v111, v112, v113, v114, v115, v116, v117;

        v94 = v73;
        v46 = v131;
      }

      else
      {
        v124 = v93;
        v103 = 0;
      }

      v47 = [objc_opt_self() mergeWithUserInfo:v103 intoParentUserInfo:v95];

      (*(v129 + 8))(v46, v130);
      goto LABEL_17;
    }

    (*(v129 + 8))(v46, v130);

    sub_1CF24CCFC(v45, v132, v118, v119, v120, v121, v122, v123);
  }

  else
  {
  }

  v47 = 0;
LABEL_17:
  sub_1CF9E7458();
  v48 = v137;
  sub_1CF9E6038();
  sub_1CF4C0A48(v48, type metadata accessor for Signpost);
  return v47;
}

id sub_1CF48F0A4(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v140 = a3;
  v141 = a4;
  v139 = a2;
  v146 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v134 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v136 = &v130 - v6;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v130 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v4;
  if (v4[32] != 1)
  {
    return 0;
  }

  v135 = AssociatedTypeWitness;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  (*(v8 + 56))(v15, 1, 1, v7);
  v144 = 0;
  v145 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x692070756B6F6F6CLL, 0xEE002044496D6574);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v132 = v145;
  v133 = v144;
  sub_1CEFE74D8(v15, v12);
  v19 = *(v8 + 48);
  if (v19(v12, 1, v7) == 1)
  {
    v20 = v18;
    v21 = v137;
    sub_1CF9E6048();
    v22 = v21;
    if (v19(v12, 1, v7) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v22 = v137;
    (*(v8 + 32))(v137, v12, v7);
  }

  v24 = v142;
  (*(v8 + 16))(v142, v22, v7);
  *(v24 + *(v16 + 20)) = v18;
  v25 = v24 + *(v16 + 24);
  *v25 = "SQLDB: Build and Cache Hierarichal User Info";
  *(v25 + 8) = 44;
  *(v25 + 16) = 2;
  v26 = v18;
  v27 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1CF9FA450;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1CEFD51C4();
  v29 = v132;
  *(v28 + 32) = v133;
  *(v28 + 40) = v29;
  v128 = v28;
  LOBYTE(v127) = 2;
  sub_1CF9E6028(v27, &dword_1CEFC7000, v26, "SQLDB: Build and Cache Hierarichal User Info", 44, 2, v24, "%s", 2);
  v28, v30, v31, v32, v33, v34, v35, v36;
  (*(v8 + 8))(v22, v7);
  v37 = sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v126 = v140;
  v127 = v141;
  v128 = v138;
  v129 = v146;
  v39 = v143;
  v40 = (*(v141[1] + 24))(sub_1CF4C08A8, v38);
  if (v39)
  {
    sub_1CF9E7458();
    v41 = v142;
    sub_1CF9E6038();
    return sub_1CF4C0A48(v41, type metadata accessor for Signpost);
  }

  v42 = v40;
  if ([v40 next])
  {
    if (([v42 isNullAtIndex_] & 1) == 0)
    {
      v47 = sub_1CEFE7794(0);
      v49 = v48;
      v50 = v47;
      v51 = objc_allocWithZone(MEMORY[0x1E69674A8]);
      v52 = sub_1CF9E6D28();
      v53 = sub_1CF9E6D28();
      v45 = [v51 initWithKeys:v52 values:v53];

      v49, v54, v55, v56, v57, v58, v59, v60;
      v50, v61, v62, v63, v64, v65, v66, v67;

      goto LABEL_17;
    }

    if ([v42 isNullAtIndex_])
    {
      v143 = 0;
      v137 = 0;
      v43 = v136;
      v44 = AssociatedConformanceWitness;
    }

    else
    {
      v68 = sub_1CEFE7794(1);
      v43 = v136;
      v44 = AssociatedConformanceWitness;
      v137 = v69;
      v143 = v68;
    }

    v70 = *(*(v44 + 8) + 16);
    v71 = v42;
    v70();
    v72 = v146;
    v73 = v43;
    if (sub_1CF9E6868())
    {
      v74 = v143;
      if (v143)
      {
        v75 = objc_allocWithZone(MEMORY[0x1E69674A8]);
        v76 = sub_1CF9E6D28();
        v77 = v137;
        v78 = sub_1CF9E6D28();
        v79 = [v75 initWithKeys:v76 values:v78];
        v77, v80, v81, v82, v83, v84, v85, v86;
        v74, v87, v88, v89, v90, v91, v92, v93;
      }

      else
      {
        v79 = 0;
      }

      v45 = [objc_opt_self() mergeWithUserInfo:v79 intoParentUserInfo:0];

      (*(v134 + 8))(v73, v135);
      goto LABEL_17;
    }

    v94 = sub_1CF48F0A4(v43, v139, v140, v141);
    v95 = v94;
    if (v94)
    {
      v133 = v26;
      v96 = v143;
      if (v143)
      {
        v97 = objc_allocWithZone(MEMORY[0x1E69674A8]);
        v98 = sub_1CF9E6D28();
        v99 = v137;
        v100 = sub_1CF9E6D28();
        v101 = [v97 initWithKeys:v98 values:v100];
        v99, v102, v103, v104, v105, v106, v107, v108;
        v96, v109, v110, v111, v112, v113, v114, v115;

        v72 = v146;
      }

      else
      {
        v101 = 0;
      }

      v122 = [objc_opt_self() mergeWithUserInfo:v101 intoParentUserInfo:v95];

      v124 = MEMORY[0x1EEE9AC00](v123);
      v125 = v141;
      *(&v130 - 6) = v140;
      *(&v130 - 5) = v125;
      v126 = v138;
      v127 = v122;
      v128 = v72;
      (v125[4])(sub_1CF4C08C8, v124);
      v45 = v122;
      (*(v134 + 8))(v136, v135);

      goto LABEL_17;
    }

    (*(v134 + 8))(v43, v135);

    sub_1CF24CCFC(v143, v137, v116, v117, v118, v119, v120, v121);
  }

  else
  {
  }

  v45 = 0;
LABEL_17:
  sub_1CF9E7458();
  v46 = v142;
  sub_1CF9E6038();
  sub_1CF4C0A48(v46, type metadata accessor for Signpost);
  return v45;
}

uint64_t sub_1CF48FB50(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004ELL, 0x80000001CFA4D4E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, v4);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D530);
  v17 = sub_1CF9E7F98();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  return 0;
}

uint64_t sub_1CF48FD28(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4D4B0);
  v6 = [a3 keys];
  v7 = sub_1CF9E6D48();

  v8 = [a3 values];
  v9 = sub_1CF9E6D48();

  v10 = sub_1CF075B2C(v7, v9);
  v12 = v11;
  v9, v11, v13, v14, v15, v16, v17, v18;
  v7, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](v10, v12);
  v12, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v33 = *(swift_getAssociatedConformanceWitness() + 8);
  v34 = *(v33 + 32);
  v35 = swift_checkMetadataState();
  v36 = v34(a1, v35, v33);
  v38 = v37;
  MEMORY[0x1D3868CC0](v36);
  v38, v39, v40, v41, v42, v43, v44, v45;
  return 0;
}

uint64_t sub_1CF48FF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a2;
  v77 = a3;
  v78 = a4;
  v81 = a1;
  v73 = a5;
  v6 = *v5;
  v7 = sub_1CF9E6068();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v61 - v12;
  v67 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SnapshotItem(255, *(v6 + 760), *(v6 + 776), v14);
  v16 = sub_1CF9E75D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  v20 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v71 = v5;
  sub_1CF488624(v81, v77, v78, v19);
  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    (*(v17 + 8))(v19, v16);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDEBBE40;
    v26 = v69;
    v25 = v70;
    v27 = v74;
    (*(v69 + 56))(v74, 1, 1, v70);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4D440);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v63 = AssociatedTypeWitness;
    sub_1CF9E7FE8();
    v64 = v80;
    v65 = v79;
    v29 = v66;
    sub_1CEFE74D8(v27, v66);
    v30 = *(v26 + 48);
    v31 = v30(v29, 1, v25);
    v32 = v72;
    v33 = v68;
    if (v31 == 1)
    {
      v34 = v24;
      sub_1CF9E6048();
      if (v30(v29, 1, v25) != 1)
      {
        sub_1CEFCCC44(v29, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v26 + 32))(v68, v29, v25);
    }

    (*(v26 + 16))(v32, v33, v25);
    v41 = v67;
    *(v32 + *(v67 + 20)) = v24;
    v42 = v32 + *(v41 + 24);
    *v42 = "SQLDB: Lookup parent ID";
    *(v42 + 8) = 23;
    *(v42 + 16) = 2;
    v43 = v24;
    v44 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1CF9FA450;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = sub_1CEFD51C4();
    v46 = v64;
    *(v45 + 32) = v65;
    *(v45 + 40) = v46;
    sub_1CF9E6028(v44, &dword_1CEFC7000, v43, "SQLDB: Lookup parent ID", 23, 2, v32, "%s", 2);
    v45, v47, v48, v49, v50, v51, v52, v53;
    (*(v26 + 8))(v33, v25);
    v54 = sub_1CEFCCC44(v74, &unk_1EC4BED20, &unk_1CFA00700);
    v55 = MEMORY[0x1EEE9AC00](v54);
    v56 = v75;
    v57 = (*(v78 + 24))(sub_1CF4C089C, v55);
    if (!v56)
    {
      v58 = v57;
      if ([v57 next])
      {
        v59 = v63;
        v60 = v73;
        (*(*(AssociatedConformanceWitness + 8) + 16))(v58, 0, v63);
        (*(*(v59 - 8) + 56))(v60, 0, 1, v59);
      }

      else
      {
        (*(*(v63 - 8) + 56))(v73, 1, 1);
      }
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF4C0A48(v32, type metadata accessor for Signpost);
  }

  else
  {
    (*(v20 + 32))(v23, v19, v15);
    v35 = *(v15 + 36);
    v36 = swift_getAssociatedTypeWitness();
    v37 = *(v36 - 8);
    v38 = &v23[v35];
    v39 = v73;
    (*(v37 + 16))(v73, v38, v36);
    (*(v20 + 8))(v23, v15);
    return (*(v37 + 56))(v39, 0, 1, v36);
  }
}

unint64_t sub_1CF490848(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = *(v11 + 32);
  v13 = swift_checkMetadataState();
  v14 = v12(a1, v13, v11);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return 0xD000000000000018;
}

uint64_t sub_1CF4909C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = sub_1CF9E6068();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v57 - v15;
  v60 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v60);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 760);
  v57 = *(v9 + 776);
  v58 = v17;
  v19 = type metadata accessor for SnapshotItem(255, v17, v57, v18);
  v20 = sub_1CF9E75D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v70 = a1;
  v65 = a2;
  v67 = a3;
  v68 = a4;
  v62 = v4;
  sub_1CF488624(a1, a3, a4, &v57 - v22);
  v24 = 1;
  LODWORD(v19) = (*(*(v19 - 8) + 48))(v23, 1, v19);
  (*(v21 + 8))(v23, v20);
  if (v19 == 1)
  {
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDEBBE40;
    v27 = v63;
    v26 = v64;
    v28 = v69;
    (*(v63 + 56))(v69, 1, 1, v64);
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x736E6961746E6F63, 0xEE00206D65746920);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7FE8();
    v57 = v72;
    v58 = v71;
    v29 = v28;
    v30 = v59;
    sub_1CEFE74D8(v29, v59);
    v31 = *(v27 + 48);
    v32 = v31(v30, 1, v26);
    v33 = v66;
    if (v32 == 1)
    {
      v34 = v25;
      v35 = v61;
      sub_1CF9E6048();
      if (v31(v30, 1, v26) != 1)
      {
        sub_1CEFCCC44(v30, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v35 = v61;
      (*(v27 + 32))(v61, v30, v26);
    }

    (*(v27 + 16))(v33, v35, v26);
    v36 = v60;
    *(v33 + *(v60 + 20)) = v25;
    v37 = v33 + *(v36 + 24);
    *v37 = "SQLDB: Check item with ID";
    *(v37 + 8) = 25;
    *(v37 + 16) = 2;
    v38 = v25;
    v39 = v26;
    v40 = v38;
    v41 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1CF9FA450;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1CEFD51C4();
    v43 = v57;
    *(v42 + 32) = v58;
    *(v42 + 40) = v43;
    sub_1CF9E6028(v41, &dword_1CEFC7000, v40, "SQLDB: Check item with ID", 25, 2, v33, "%s", 2);
    v42, v44, v45, v46, v47, v48, v49, v50;
    (*(v27 + 8))(v35, v39);
    v51 = sub_1CEFCCC44(v69, &unk_1EC4BED20, &unk_1CFA00700);
    v52 = MEMORY[0x1EEE9AC00](v51);
    v24 = v65;
    v53 = v73;
    v54 = (*(v68 + 24))(sub_1CF4C0890, v52);
    if (!v53)
    {
      v55 = v54;
      v24 = [v54 next];
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v33, type metadata accessor for Signpost);
  }

  return v24 & 1;
}

unint64_t sub_1CF491094(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = *(v11 + 32);
  v13 = swift_checkMetadataState();
  v14 = v12(a1, v13, v11);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0xD000000000000011;
}

uint64_t sub_1CF491230(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), void (**a4)(char *, char *, uint64_t), uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v83 = a5;
  v84 = v5;
  v86 = a3;
  v87 = a4;
  v80[1] = *v8;
  v81 = a1;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v80 - v18;
  v82 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v82);
  v85 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v11 + 56))(v19, 1, 1, v10);
  v80[0] = v19;
  sub_1CEFE74D8(v19, v16);
  v22 = *(v11 + 48);
  if (v22(v16, 1, v10) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    v24 = v22(v16, 1, v10);
    v25 = v13;
    if (v24 != 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v25 = v13;
    (*(v11 + 32))(v13, v16, v10);
  }

  v26 = v85;
  (*(v11 + 16))(v85, v25, v10);
  v27 = v82;
  *(v26 + *(v82 + 20)) = v21;
  v28 = v26 + *(v27 + 24);
  *v28 = "SQLDB: Check hierarchy size";
  *(v28 + 8) = 27;
  *(v28 + 16) = 2;
  v29 = v21;
  v30 = v25;
  v31 = v29;
  sub_1CF9E7468();
  v82 = v31;
  sub_1CF9E6038();
  (*(v11 + 8))(v30, v10);
  sub_1CEFCCC44(v80[0], &unk_1EC4BED20, &unk_1CFA00700);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF656CD8(AssociatedTypeWitness, AssociatedTypeWitness);
  v33 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v34 = sub_1CF9E6D68();
  (*(v33 + 16))(v35, v81, AssociatedTypeWitness);
  v36 = sub_1CF045898(v34, AssociatedTypeWitness);
  if (sub_1CF9E6DF8())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v45 = sub_1CF981D64(v36, AssociatedTypeWitness, *(AssociatedConformanceWitness + 40));
    v36, v46, v47, v48, v49, v50, v51, v52;
  }

  else
  {
    v36, v37, v38, v39, v40, v41, v42, v43;
    swift_getAssociatedConformanceWitness();
    v45 = MEMORY[0x1E69E7CD0];
  }

  v54 = v83;
  v53 = v84;
  v91 = v45;
  v90 = 1;
  while (1)
  {
    v55 = v91;
    if (sub_1CF9E7028())
    {
      v55, v56, v57, v58, v59, v60, v61, v62;
      v63 = v90;
LABEL_18:
      LOBYTE(a2) = v63 < a2;
      goto LABEL_19;
    }

    v63 = v90;
    if (v90 >= a2)
    {
      v55, v56, v57, v58, v59, v60, v61, v62;
      goto LABEL_18;
    }

    v64 = objc_autoreleasePoolPush();
    sub_1CF491850(&v91, v53, v86, &v90, a2, v87, v54, &v88, &v89);
    if (v7)
    {
      break;
    }

    v7 = 0;
    objc_autoreleasePoolPop(v64);
    if ((v89 & 1) == 0)
    {
      v91, v65, v66, v67, v68, v69, v70, v71;
      LOBYTE(a2) = 0;
LABEL_19:
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v26, type metadata accessor for Signpost);
      return a2 & 1;
    }
  }

  objc_autoreleasePoolPop(v64);
  v91, v72, v73, v74, v75, v76, v77, v78;
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v26, type metadata accessor for Signpost);
  return a2 & 1;
}

uint64_t sub_1CF491850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (**a3)(char *, char *, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void (**a6)(char *, char *, uint64_t)@<X5>, char *a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v26 = a8;
  v27 = a9;
  v10 = v9;
  v31 = a7;
  v17 = *a2;
  v30 = *(*a2 + 776);
  v28 = *(v17 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v25 - v19;
  swift_getAssociatedConformanceWitness();
  v30 = AssociatedTypeWitness;
  sub_1CF9E7068();
  sub_1CF9E6FB8();
  v33 = 0;
  v34 = 0;
  while (1)
  {
    v21 = objc_autoreleasePoolPush();
    sub_1CF491A84(a2, v20, &v33, a3, a4, a5, a1, a6, &v35, v31, &v32);
    if (v10)
    {
      v23 = v32;
      objc_autoreleasePoolPop(v21);
      *v26 = v23;
      return (*(v29 + 8))(v20, v30);
    }

    v10 = 0;
    objc_autoreleasePoolPop(v21);
    if ((v35 & 1) == 0)
    {
      break;
    }

    if (v34)
    {
      v22 = 1;
      goto LABEL_8;
    }
  }

  v22 = 0;
LABEL_8:
  *v27 = v22;
  return (*(v29 + 8))(v20, v30);
}

void sub_1CF491A84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, char *, uint64_t)@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(char *, char *, uint64_t)@<X7>, _BYTE *a9@<X8>, char *a10, void *a11)
{
  v91 = a8;
  v78 = a7;
  v80 = a6;
  v85 = a5;
  v87 = a2;
  v88 = a4;
  v75 = a9;
  v12 = *(*a1 + 776);
  v13 = *(*a1 + 760);
  v86 = a10;
  v84 = v12;
  v82 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v77 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v74 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = sub_1CF9E75D8();
  v79 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74 - v26;
  v28 = a3;
  v29 = v92;
  v30 = sub_1CF4933C8(v87, *a3, *(a3 + 8), v88, v91, v86);
  if (v29)
  {
    *a11 = v29;
    return;
  }

  v33 = v30;
  v34 = v79;
  v86 = v27;
  v87 = v22;
  v92 = v24;
  v81 = TupleTypeMetadata2;
  *v28 = v31;
  *(v28 + 8) = v32 & 1;
  v76 = *(swift_getAssociatedConformanceWitness() + 40);
  v35 = sub_1CF9E6698();
  v43 = *v85 + v35;
  if (__OFADD__(*v85, v35))
  {
    goto LABEL_27;
  }

  *v85 = v43;
  if (v43 >= v80)
  {
    v33, v36, v37, v38, v39, v40, v41, v42;
    *v75 = 0;
    return;
  }

  v74 = 0;
  v44 = 0;
  v80 = v33;
  v45 = v33 + 2;
  v46 = 1 << LOBYTE(v33[1].super.isa);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v33[2].super.isa;
  v49 = (v46 + 63) >> 6;
  v50 = v81;
  v88 = (v83 + 16);
  v89 = AssociatedTypeWitness;
  v91 = (v83 + 32);
  v84 = (v34 + 32);
  v85 = (v81 - 8);
  v82 = (v83 + 8);
  v79 = v18;
  v51 = v92;
  if (!v48)
  {
LABEL_9:
    if (v49 <= v44 + 1)
    {
      v54 = v44 + 1;
    }

    else
    {
      v54 = v49;
    }

    v55 = v54 - 1;
    v53 = v90;
    while (1)
    {
      v52 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v52 >= v49)
      {
        v48 = 0;
        v66 = 1;
        v62 = v89;
        goto LABEL_17;
      }

      v48 = *(&v45->super.isa + v52);
      ++v44;
      if (v48)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  while (1)
  {
    v52 = v44;
    v53 = v90;
LABEL_16:
    v56 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v57 = v56 | (v52 << 6);
    v58 = v80;
    v59 = v83;
    v60 = v53;
    v61 = v53;
    v62 = v89;
    (*(v83 + 16))(v61, *(v80 + 48) + *(v83 + 72) * v57, v89);
    LOBYTE(v57) = *(*(v58 + 56) + v57);
    v63 = *(v81 + 48);
    v64 = *(v59 + 32);
    v51 = v92;
    v65 = v60;
    v50 = v81;
    v64(v92, v65, v62);
    v66 = 0;
    v51[v63] = v57;
    v55 = v52;
    v18 = v79;
LABEL_17:
    v67 = *(v50 - 8);
    (*(v67 + 56))(v51, v66, 1, v50);
    v68 = v86;
    (*v84)(v86);
    if ((*(v67 + 48))(v68, 1, v50) == 1)
    {
      break;
    }

    v69 = v68[*(v50 + 48)];
    (*v91)(v18, v68, v62);
    if (v69 == 1)
    {
      (*v88)(v77, v18, v62);
      sub_1CF9E7068();
      v70 = v90;
      sub_1CF9E6FF8();
      v71 = *v82;
      v72 = v70;
      v73 = v89;
      (*v82)(v72, v89);
      v71(v18, v73);
    }

    else
    {
      (*v82)(v18, v62);
    }

    v44 = v55;
    v51 = v92;
    if (!v48)
    {
      goto LABEL_9;
    }
  }

  *v75 = 1;
}

uint64_t sub_1CF4920A0(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4E4D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, v4);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4E500);
  return 0;
}

uint64_t sub_1CF492238(void *a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a5;
  v65 = a6;
  v54 = a4;
  v75 = a3;
  v62 = a2;
  v66 = a1;
  v7 = *v6;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v58 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v58);
  v67 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v55 = qword_1EDEBBE40;
  (*(v9 + 56))(v16, 1, 1, v8);
  v69 = 0;
  v70 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6E6572646C696863, 0xEC00000020666F20);
  v18 = v7[97];
  v19 = v7[95];
  swift_getAssociatedTypeWitness();
  v53 = v18;
  v68 = v19;
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v20 = v69;
  v56 = v70;
  v59 = v16;
  sub_1CEFE74D8(v16, v13);
  v21 = *(v9 + 48);
  v22 = v21(v13, 1, v8);
  v57 = v20;
  if (v22 == 1)
  {
    v23 = v55;
    v24 = v55;
    v25 = v60;
    sub_1CF9E6048();
    v26 = v21(v13, 1, v8);
    v27 = v25;
    v28 = v58;
    v29 = v23;
    if (v26 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v60;
    (*(v9 + 32))(v60, v13, v8);
    v28 = v58;
    v29 = v55;
  }

  v30 = v67;
  (*(v9 + 16))(v67, v27, v8);
  *(v30 + *(v28 + 20)) = v29;
  v31 = v30 + *(v28 + 24);
  *v31 = "SQLDB: Enumerate children IDs and Kind";
  *(v31 + 8) = 38;
  *(v31 + 16) = 2;
  v32 = v29;
  v33 = v27;
  v34 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1CF9FA450;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1CEFD51C4();
  v36 = v56;
  *(v35 + 32) = v57;
  *(v35 + 40) = v36;
  sub_1CF9E6028(v34, &dword_1CEFC7000, v32, "SQLDB: Enumerate children IDs and Kind", 38, 2, v30, "%s", 2);
  v35, v37, v38, v39, v40, v41, v42, v43;
  (*(v9 + 8))(v33, v8);
  sub_1CEFCCC44(v59, &unk_1EC4BED20, &unk_1CFA00700);
  v44 = v64;
  v71 = v64;
  v72 = v65;
  v73 = v61;
  v74 = v66;
  v45 = v63;
  v46 = (*(v65 + 24))(sub_1CF4C0BC4, &v69, v64, v65);
  if (v45)
  {
    sub_1CF9E7458();
  }

  else
  {
    v47 = v46;
    v66 = v32;
    if ([v46 next])
    {
      v48 = v54;
      v49 = v53;
      do
      {
        v50 = objc_autoreleasePoolPush();
        sub_1CF492838(v75, v48, v47, v68, v7[96], v44, v49);
        objc_autoreleasePoolPop(v50);
      }

      while (([v47 next] & 1) != 0);
    }

    sub_1CF9E7458();
  }

  v51 = v67;
  sub_1CF9E6038();
  return sub_1CF4C0A48(v51, type metadata accessor for Signpost);
}

uint64_t sub_1CF492838(void (*a1)(char *, char *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v19 - v10;
  v12 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v13 = a3;
  result = v12();
  if (!v7)
  {
    v15 = v21;
    v16 = v20;
    v17 = [v13 longAtIndex_];
    if (v17 <= 4 && ((0x17u >> v17) & 1) != 0)
    {
      v23 = 0x300020100uLL >> (8 * v17);
      v15(v11, &v23);
      return (*(v16 + 8))(v11, AssociatedTypeWitness);
    }

    else
    {
      (*(v16 + 8))(v11, AssociatedTypeWitness);
      sub_1CF1DA5D8();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1CF492A7C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D1E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA4D3A0);
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0x20200A30203D2029, 0xED000020444E4120);
  if (a4)
  {
    v18 = 0xE100000000000000;
    v19 = 49;
  }

  else
  {
    v20 = [a1 bindLongParameter_];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    MEMORY[0x1D3868CC0](v21, v23);
    v23, v24, v25, v26, v27, v28, v29, v30;
    v19 = 0x203E204449776F72;
    v18 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v19, v18);
  v18, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v38 = sub_1CF9E7F98();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF492CB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AssociatedTypeWitness = a8;
  v60 = a6;
  v61 = a7;
  v59 = a5;
  v56 = a3;
  v54 = a2;
  v53 = a1;
  v63 = *v8;
  v64 = a4;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v10 + 56))(v18, 1, 1, v9);
  sub_1CEFE74D8(v18, v15);
  v22 = *(v10 + 48);
  if (v22(v15, 1, v9) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    if (v22(v15, 1, v9) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
  }

  v24 = v62;
  (*(v10 + 16))(v62, v12, v9);
  *&v24[*(v19 + 20)] = v21;
  v25 = &v24[*(v19 + 24)];
  v26 = v61;
  *v25 = v60;
  *(v25 + 1) = v26;
  v25[16] = 2;
  v27 = v21;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v10 + 8))(v12, v9);
  v28 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  v29 = &v52;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v31 = v58;
  v32 = v59;
  *(&v52 - 6) = v64;
  *(&v52 - 5) = v32;
  v33 = v53;
  *(&v52 - 4) = v55;
  *(&v52 - 3) = v33;
  LOBYTE(v50) = v54 & 1;
  v51 = 100;
  v34 = (*(v32 + 24))(AssociatedTypeWitness, v30);
  if (v31)
  {
    sub_1CF9E7458();
    v35 = v62;
    sub_1CF9E6038();
    sub_1CF4C0A48(v35, type metadata accessor for Signpost);
  }

  else
  {
    v36 = v34;
    v58 = v27;
    v37 = v63[97];
    v38 = v63[95];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v29 = sub_1CF9E6DA8();
    v66 = v29;
    v65 = 0;
    if ([v36 next])
    {
      do
      {
        v39 = objc_autoreleasePoolPush();
        v40 = v63[96];
        v50 = v32;
        sub_1CF4B0BA8(&v65, v36, &v66, v38, v40, v64, v37);
        objc_autoreleasePoolPop(v39);
      }

      while (([v36 next] & 1) != 0);
      v29 = v66;
    }

    sub_1CF9E6DF8();
    v29, v41, v42, v43, v44, v45, v46, v47;

    sub_1CF9E7458();
    v48 = v62;
    sub_1CF9E6038();
    sub_1CF4C0A48(v48, type metadata accessor for Signpost);
  }

  return v29;
}

uint64_t sub_1CF493228(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D1E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA4D320);
  if (a4)
  {
    v8 = 0xE100000000000000;
    v9 = 49;
  }

  else
  {
    v10 = [a1 bindLongParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    MEMORY[0x1D3868CC0](v11, v13);
    v13, v14, v15, v16, v17, v18, v19, v20;
    v9 = 0x203E204449776F72;
    v8 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v9, v8);
  v8, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v28 = sub_1CF9E7F98();
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF4933C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v91 = a5;
  v92 = a6;
  v93 = a1;
  v89 = a4;
  v87 = a3;
  v86 = a2;
  v7 = *v6;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v80 = qword_1EDEBBE40;
  (*(v9 + 56))(v16, 1, 1, v8);
  v96 = 0;
  v97 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6E6572646C696863, 0xEC00000020666F20);
  v19 = *(v7 + 776);
  v85 = v7;
  v20 = *(v7 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = v19;
  v95 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v81 = v97;
  v82 = v96;
  v83 = v16;
  sub_1CEFE74D8(v16, v13);
  v23 = *(v9 + 48);
  v24 = v23(v13, 1, v8);
  v78 = AssociatedConformanceWitness;
  if (v24 == 1)
  {
    v25 = v80;
    v26 = v80;
    v27 = v84;
    sub_1CF9E6048();
    v28 = v25;
    if (v23(v13, 1, v8) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v84;
    (*(v9 + 32))(v84, v13, v8);
    v28 = v80;
  }

  v29 = v94;
  (*(v9 + 16))(v94, v27, v8);
  *(v29 + *(v17 + 20)) = v28;
  v30 = v29 + *(v17 + 24);
  *v30 = "SQLDB: enumerateChildrenIDAndKind";
  *(v30 + 8) = 33;
  *(v30 + 16) = 2;
  v31 = v28;
  v32 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1CEFD51C4();
  v34 = v81;
  *(v33 + 32) = v82;
  *(v33 + 40) = v34;
  v76 = v33;
  v75 = 2;
  sub_1CF9E6028(v32, &dword_1CEFC7000, v31, "SQLDB: enumerateChildrenIDAndKind", 33, 2, v29, "%s", 2);
  v33, v35, v36, v37, v38, v39, v40, v41;
  (*(v9 + 8))(v27, v8);
  v42 = sub_1CEFCCC44(v83, &unk_1EC4BED20, &unk_1CFA00700);
  v43 = &v77;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = v91;
  v45 = v92;
  *(&v77 - 8) = v91;
  *(&v77 - 7) = v45;
  v47 = v93;
  *(&v77 - 6) = v88;
  *(&v77 - 5) = v47;
  v74 = v86;
  v75 = v87 & 1;
  v76 = 200;
  v48 = v90;
  v49 = (*(v45 + 24))(sub_1CF4C082C, v44);
  v50 = v85;
  if (v48)
  {
    sub_1CF9E7458();
    v51 = v94;
    sub_1CF9E6038();
    sub_1CF4C0A48(v51, type metadata accessor for Signpost);
  }

  else
  {
    v52 = v49;
    v93 = v31;
    v53 = v79;
    swift_getTupleTypeMetadata2();
    v54 = sub_1CF9E6DA8();
    v43 = sub_1CF04F294(v54, v53, &type metadata for FileItemKind, *(v78 + 40));
    v54, v55, v56, v57, v58, v59, v60, v61;
    v96 = v43;
    v98 = 0;
    if ([v52 next])
    {
      v62 = v77;
      do
      {
        v63 = objc_autoreleasePoolPush();
        v64 = *(v50 + 768);
        v76 = v45;
        sub_1CF493D58(&v98, v52, &v96, v95, v64, v46, v62);
        objc_autoreleasePoolPop(v63);
      }

      while (([v52 next] & 1) != 0);
      v43 = v96;
    }

    sub_1CF9E6698();
    v43, v65, v66, v67, v68, v69, v70, v71;

    sub_1CF9E7458();
    v72 = v94;
    sub_1CF9E6038();
    sub_1CF4C0A48(v72, type metadata accessor for Signpost);
  }

  return v43;
}

uint64_t sub_1CF493AD0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA4D2A0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4D2D0);
  if (a5)
  {
    v22 = 0xE100000000000000;
    v23 = 49;
  }

  else
  {
    v24 = [a1 bindLongParameter_];
    v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v27 = v26;

    MEMORY[0x1D3868CC0](v25, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    v23 = 0x203E204449776F72;
    v22 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v23, v22);
  v22, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v42 = sub_1CF9E7F98();
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  return 0;
}

uint64_t sub_1CF493D58(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[0] = *(AssociatedTypeWitness - 8);
  *&v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness).n128_u64[0];
  v13 = v20 - v12;
  *a1 = [a2 longAtIndex_];
  v14 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v15 = a2;
  result = v14();
  if (!v7)
  {
    v17 = v20[0];
    v18 = [v15 longAtIndex_];
    if (v18 < 5 && ((0x17u >> v18) & 1) != 0)
    {
      v21 = 0x300020100uLL >> (8 * v18);
      sub_1CF9E6708();
      return sub_1CF9E6738();
    }

    else
    {
      (*(v17 + 8))(v13, AssociatedTypeWitness);
      sub_1CF1DA5D8();
      swift_allocError();
      *v19 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF493F78(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v61 = a3;
  v62 = a5;
  v60 = a2;
  v59 = a1;
  v8 = *v5;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v18 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = v5;
  if (*(v5 + 32) == 1)
  {
    v63 = v8;
    v64 = a4;
    v56 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDEBBE40;
    (*(v10 + 56))(v17, 1, 1, v9);
    sub_1CEFE74D8(v17, v14);
    v21 = *(v10 + 48);
    v22 = v21(v14, 1, v9);
    v55 = v20;
    if (v22 == 1)
    {
      v23 = v20;
      v24 = v17;
      v25 = v57;
      sub_1CF9E6048();
      v26 = v25;
      v17 = v24;
      if (v21(v14, 1, v9) != 1)
      {
        sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v26 = v57;
      (*(v10 + 32))(v57, v14, v9);
    }

    v28 = v56;
    (*(v10 + 16))(v56, v26, v9);
    v29 = v55;
    *(v28 + *(v18 + 20)) = v55;
    v30 = v28 + *(v18 + 24);
    *v30 = "SQLDB: Enumerate non-locked directory that could be locked";
    *(v30 + 8) = 58;
    *(v30 + 16) = 2;
    v31 = v29;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v10 + 8))(v26, v9);
    v32 = sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    v33 = MEMORY[0x1EEE9AC00](v32);
    v34 = v62;
    *(&v54 - 6) = v64;
    *(&v54 - 5) = v34;
    v35 = v59;
    *(&v54 - 4) = v58;
    *(&v54 - 3) = v35;
    LOBYTE(v52) = v60 & 1;
    v53 = 100;
    v36 = (*(v34 + 24))(sub_1CF4C0814, v33);
    if (v6)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v28, type metadata accessor for Signpost);
    }

    else
    {
      v37 = v36;
      v61 = v31;
      v38 = v63[97];
      v39 = v63[95];
      swift_getAssociatedTypeWitness();
      v40 = sub_1CF9E6DA8();
      v66 = v40;
      v65 = 0;
      if ([v37 next])
      {
        v41 = v62;
        do
        {
          v42 = objc_autoreleasePoolPush();
          v43 = v63[96];
          v52 = v41;
          sub_1CF4B0BA8(&v65, v37, &v66, v39, v43, v64, v38);
          objc_autoreleasePoolPop(v42);
        }

        while (([v37 next] & 1) != 0);
        v44 = v66;
      }

      else
      {
        v44 = v40;
      }

      sub_1CF9E6DF8();
      v44, v45, v46, v47, v48, v49, v50, v51;

      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v28, type metadata accessor for Signpost);
      return v44;
    }
  }

  else
  {
    swift_getAssociatedTypeWitness();
    return sub_1CF9E6DA8();
  }
}

uint64_t sub_1CF49457C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D1E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA4D200);
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA4D220);
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xEC00000020444E41);
  if (a4)
  {
    v28 = 0xE100000000000000;
    v29 = 49;
  }

  else
  {
    v30 = [a1 bindLongParameter_];
    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v33 = v32;

    MEMORY[0x1D3868CC0](v31, v33);
    v33, v34, v35, v36, v37, v38, v39, v40;
    v29 = 0x203E204449776F72;
    v28 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v29, v28);
  v28, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v48 = sub_1CF9E7F98();
  v50 = v49;
  MEMORY[0x1D3868CC0](v48);
  v50, v51, v52, v53, v54, v55, v56, v57;
  return 0;
}

uint64_t sub_1CF4947C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v52 = a1;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v6 + 56))(v13, 1, 1, v5);
  v53 = 0;
  v54 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6E6572646C696863, 0xEC00000020666F20);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v43 = v54;
  v44 = v53;
  v45 = v13;
  sub_1CEFE74D8(v13, v10);
  v16 = *(v6 + 48);
  if (v16(v10, 1, v5) == 1)
  {
    v17 = v42;
    v18 = v42;
    v19 = v46;
    sub_1CF9E6048();
    if (v16(v10, 1, v5) != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v19 = v46;
    (*(v6 + 32))(v46, v10, v5);
    v17 = v42;
  }

  v20 = v55;
  (*(v6 + 16))(v55, v19, v5);
  *(v20 + *(v14 + 20)) = v17;
  v21 = v20 + *(v14 + 24);
  *v21 = "SQLDB: Contains children";
  *(v21 + 8) = 24;
  *(v21 + 16) = 2;
  v22 = v17;
  v23 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v24 = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1CF9FA450;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1CEFD51C4();
  v26 = v43;
  *(v25 + 32) = v44;
  *(v25 + 40) = v26;
  sub_1CF9E6028(v23, &dword_1CEFC7000, v22, "SQLDB: Contains children", 24, 2, v20, "%s", 2);
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v6 + 8))(v24, v5);
  v34 = sub_1CEFCCC44(v45, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = MEMORY[0x1EEE9AC00](v34);
  if (v47)
  {
    v36 = sub_1CF4C0808;
  }

  else
  {
    v36 = sub_1CF4C07FC;
  }

  v37 = v50;
  v38 = (*(v51 + 24))(v36, v35);
  if (!v37)
  {
    v40 = v38;
    LOBYTE(v23) = [v38 next];
  }

  sub_1CF9E7458();
  v39 = v55;
  sub_1CF9E6038();
  sub_1CF4C0A48(v39, type metadata accessor for Signpost);
  return v23 & 1;
}

uint64_t sub_1CF494D94(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 32);
  v14 = swift_checkMetadataState();
  v15 = v13(a1, v14, v12);
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4D110);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACA0);
  v32 = sub_1CF9E7F98();
  v34 = v33;
  MEMORY[0x1D3868CC0](v32);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0x4C200A30203D2029, 0xEE00312054494D49);
  return 0;
}

uint64_t sub_1CF49500C(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA4D140);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, v4);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4D170);
  return 0;
}

uint64_t sub_1CF4951A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a5;
  v61 = a3;
  v62 = a4;
  v59 = a2;
  v67 = a1;
  v52 = a6;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDEBBE40;
  (*(v7 + 56))(v14, 1, 1, v6);
  v65 = 0;
  v66 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6E6572646C696863, 0xEC00000020666F20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v54 = v66;
  v55 = v65;
  v56 = v14;
  sub_1CEFE74D8(v14, v11);
  v18 = *(v7 + 48);
  if (v18(v11, 1, v6) == 1)
  {
    v19 = v53;
    v20 = v53;
    v21 = v58;
    sub_1CF9E6048();
    v22 = v18(v11, 1, v6);
    v23 = v57;
    if (v22 != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v21 = v58;
    (*(v7 + 32))(v58, v11, v6);
    v23 = v57;
    v19 = v53;
  }

  (*(v7 + 16))(v23, v21, v6);
  *(v23 + *(v15 + 20)) = v19;
  v24 = v23 + *(v15 + 24);
  *v24 = "SQLDB: Contains pending deletion children";
  *(v24 + 8) = 41;
  *(v24 + 16) = 2;
  v25 = v19;
  v26 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1CF9FA450;
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1CEFD51C4();
  v28 = v54;
  *(v27 + 32) = v55;
  *(v27 + 40) = v28;
  v48 = v27;
  LOBYTE(v47) = 2;
  sub_1CF9E6028(v26, &dword_1CEFC7000, v25, "SQLDB: Contains pending deletion children", 41, 2, v23, "%s", 2);
  v27, v29, v30, v31, v32, v33, v34, v35;
  (*(v7 + 8))(v21, v6);
  v36 = sub_1CEFCCC44(v56, &unk_1EC4BED20, &unk_1CFA00700);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = v63;
  v38 = v64;
  *(&v49 - 6) = v62;
  *(&v49 - 5) = v38;
  LOBYTE(v46) = v59 & 1;
  v47 = v60;
  v48 = v67;
  v40 = (*(v38 + 24))(sub_1CF4C07EC, v37);
  if (!v39)
  {
    v41 = v40;
    if ([v40 next])
    {
      v42 = v52;
      v43 = v41;
      v44 = v51;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v43, 0, v51);
      (*(*(v44 - 8) + 56))(v42, 0, 1, v44);
    }

    else
    {
      (*(*(v51 - 8) + 56))(v52, 1, 1);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v23, type metadata accessor for Signpost);
}

uint64_t sub_1CF4957BC(uint64_t a1, char a2, uint64_t *a3)
{
  if (a2)
  {
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x2E747220444E41, 0xE700000000000000);
    if (*(a3 + 32))
    {
      v4 = 21318;
    }

    else
    {
      v4 = 20550;
    }

    MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
    0xE200000000000000, v5, v6, v7, v8, v9, v10, v11;
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
    v12 = sub_1CF9E7F98();
    v14 = v13;
    MEMORY[0x1D3868CC0](v12);
    v14, v15, v16, v17, v18, v19, v20, v21;
    MEMORY[0x1D3868CC0](0x2E747220444E410ALL, 0xE800000000000000);
    MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
    0xE200000000000000, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA4D0C0);
    v177 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, 8, 0);
    v29 = v177;
    v31 = *(v177 + 16);
    v30 = *(v177 + 24);
    v32 = v30 >> 1;
    v33 = v31 + 1;
    if (v30 >> 1 <= v31)
    {
      sub_1CF680C9C((v30 > 1), v31 + 1, 1);
      v29 = v177;
      v30 = *(v177 + 24);
      v32 = v30 >> 1;
    }

    *(v29 + 16) = v33;
    *(v29 + 8 * v31 + 32) = 0;
    if (v32 < (v31 + 2))
    {
      sub_1CF680C9C((v30 > 1), v31 + 2, 1);
      v29 = v177;
    }

    *(v29 + 16) = v31 + 2;
    *(v29 + 8 * v33 + 32) = 512;
    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      sub_1CF680C9C((v34 > 1), v35 + 1, 1);
    }

    v37 = v177;
    *(v177 + 16) = v36;
    *(v177 + 8 * v35 + 32) = 0x2000;
    v38 = *(v177 + 24);
    if ((v35 + 2) > (v38 >> 1))
    {
      sub_1CF680C9C((v38 > 1), v35 + 2, 1);
      v37 = v177;
    }

    *(v37 + 16) = v35 + 2;
    *(v37 + 8 * v36 + 32) = 8704;
    v40 = *(v37 + 16);
    v39 = *(v37 + 24);
    v41 = v39 >> 1;
    v42 = v40 + 1;
    if (v39 >> 1 <= v40)
    {
      sub_1CF680C9C((v39 > 1), v40 + 1, 1);
      v37 = v177;
      v39 = *(v177 + 24);
      v41 = v39 >> 1;
    }

    *(v37 + 16) = v42;
    *(v37 + 8 * v40 + 32) = 256;
    v43 = v40 + 2;
    if (v41 < (v40 + 2))
    {
      sub_1CF680C9C((v39 > 1), v40 + 2, 1);
    }

    v44 = v177;
    *(v177 + 16) = v43;
    *(v177 + 8 * v42 + 32) = 768;
    v46 = *(v177 + 16);
    v45 = *(v177 + 24);
    v47 = v45 >> 1;
    v48 = v46 + 1;
    if (v45 >> 1 <= v46)
    {
      sub_1CF680C9C((v45 > 1), v46 + 1, 1);
      v44 = v177;
      v45 = *(v177 + 24);
      v47 = v45 >> 1;
    }

    *(v44 + 16) = v48;
    *(v44 + 8 * v46 + 32) = 8448;
    if (v47 < (v46 + 2))
    {
      sub_1CF680C9C((v45 > 1), v46 + 2, 1);
      v44 = v177;
    }

    *(v44 + 16) = v46 + 2;
    *(v44 + 8 * v48 + 32) = 8960;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
    sub_1CEFE4E68();
    v49 = sub_1CF9E6C18();
    v51 = v50;

    MEMORY[0x1D3868CC0](v49, v51);
    v51, v52, v53, v54, v55, v56, v57, v58;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v59, v60, v61, v62, v63, v64, v65;
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a3 + qword_1EDEBBD78), *(a3 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  v66 = *(a3 + 32) == 0;
  if (*(a3 + 32))
  {
    v67 = 20550;
  }

  else
  {
    v67 = 21318;
  }

  if (v66)
  {
    v68 = 20550;
  }

  else
  {
    v68 = 21318;
  }

  MEMORY[0x1D3868CC0](v67, 0xE200000000000000);
  0xE200000000000000, v69, v70, v71, v72, v73, v74, v75;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  swift_getAssociatedTypeWitness();
  v76 = *(swift_getAssociatedConformanceWitness() + 8);
  v77 = *(v76 + 32);
  v78 = swift_checkMetadataState();
  v79 = v77(a1, v78, v76);
  v81 = v80;
  MEMORY[0x1D3868CC0](v79);
  v81, v82, v83, v84, v85, v86, v87, v88;
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4D000);
  MEMORY[0x1D3868CC0](v68, 0xE200000000000000);
  0xE200000000000000, v89, v90, v91, v92, v93, v94, v95;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D030);
  MEMORY[0x1D3868CC0](0, 0xE000000000000000);
  0xE000000000000000, v96, v97, v98, v99, v100, v101, v102;
  MEMORY[0x1D3868CC0](0x2E747220444E4120, 0xE800000000000000);
  MEMORY[0x1D3868CC0](v67, 0xE200000000000000);
  0xE200000000000000, v103, v104, v105, v106, v107, v108, v109;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4D050);
  MEMORY[0x1D3868CC0](v68, 0xE200000000000000);
  0xE200000000000000, v110, v111, v112, v113, v114, v115, v116;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA39E10);
  v117 = sub_1CF9E7F98();
  v119 = v118;
  MEMORY[0x1D3868CC0](v117);
  v119, v120, v121, v122, v123, v124, v125, v126;
  MEMORY[0x1D3868CC0](0x4E412030203D2120, 0xED00002E74722044);
  MEMORY[0x1D3868CC0](v67, 0xE200000000000000);
  0xE200000000000000, v127, v128, v129, v130, v131, v132, v133;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4D080);
  MEMORY[0x1D3868CC0](v68, 0xE200000000000000);
  0xE200000000000000, v134, v135, v136, v137, v138, v139, v140;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v141 = sub_1CF9E7F98();
  v143 = v142;
  MEMORY[0x1D3868CC0](v141);
  v143, v144, v145, v146, v147, v148, v149, v150;
  MEMORY[0x1D3868CC0](0x2020200A29, 0xE500000000000000);
  if (a2)
  {
    v151 = 0;
    v152 = 0xE000000000000000;
  }

  else
  {
    sub_1CF9E7948();
    0xE000000000000000, v153, v154, v155, v156, v157, v158, v159;
    MEMORY[0x1D3868CC0](v67, 0xE200000000000000);
    0xE200000000000000, v160, v161, v162, v163, v164, v165, v166;
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4D0A0);
    v151 = 0x2E747220444E4120;
    v152 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v151, v152);
  v152, v167, v168, v169, v170, v171, v172, v173;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

void sub_1CF496090(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a1;
  v13[2] = a2;
  v13[3] = a3;
  v14 = v4;
  v7 = (*(a3 + 24))(sub_1CF4C07E0, v13);
  if (!v5)
  {
    v8 = v7;
    v9 = [v7 next];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = AssociatedTypeWitness;
    if (v9)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(*(AssociatedConformanceWitness + 8) + 16))(v8, 0, v11);
      (*(*(v11 - 8) + 56))(a4, 0, 1, v11);
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness);
    }
  }
}

uint64_t sub_1CF496258(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  if (*(a2 + 32))
  {
    v5 = 21318;
  }

  else
  {
    v5 = 20550;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = *(v13 + 32);
  v15 = swift_checkMetadataState();
  v16 = v14(a1, v15, v13);
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4CFA0);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);
  0xE200000000000000, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4CCA0);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v40 = sub_1CF9E7F98();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0x312054494D494C0ALL, 0xE800000000000000);
  return 0;
}

uint64_t sub_1CF496500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v53 = a2;
  v54 = a3;
  v59 = a1;
  v46 = a5;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &AssociatedConformanceWitness - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &AssociatedConformanceWitness - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &AssociatedConformanceWitness - v12;
  v14 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &AssociatedConformanceWitness - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDEBBE40;
  (*(v6 + 56))(v13, 1, 1, v5);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4CDD0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v48 = v58;
  v49 = v57;
  v50 = v13;
  sub_1CEFE74D8(v13, v10);
  v17 = *(v6 + 48);
  if (v17(v10, 1, v5) == 1)
  {
    v18 = v47;
    v19 = v47;
    v20 = v52;
    sub_1CF9E6048();
    v21 = v17(v10, 1, v5);
    v22 = v51;
    if (v21 != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v20 = v52;
    (*(v6 + 32))(v52, v10, v5);
    v22 = v51;
    v18 = v47;
  }

  (*(v6 + 16))(v22, v20, v5);
  *(v22 + *(v14 + 20)) = v18;
  v23 = v22 + *(v14 + 24);
  *v23 = "SQLDB: Count materialized children";
  *(v23 + 8) = 34;
  *(v23 + 16) = 2;
  v24 = v18;
  v25 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1CF9FA450;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1CEFD51C4();
  v27 = v48;
  *(v26 + 32) = v49;
  *(v26 + 40) = v27;
  sub_1CF9E6028(v25, &dword_1CEFC7000, v24, "SQLDB: Count materialized children", 34, 2, v22, "%s", 2);
  v26, v28, v29, v30, v31, v32, v33, v34;
  (*(v6 + 8))(v20, v5);
  v35 = sub_1CEFCCC44(v50, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v37 = v55;
  v38 = (*(v56 + 24))(sub_1CF4C07D4, v36);
  if (!v37)
  {
    v39 = v38;
    if ([v38 next])
    {
      v40 = v46;
      v41 = v39;
      v42 = v45;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v41, 0, v45);
      (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
    }

    else
    {
      (*(*(v45 - 8) + 56))(v46, 1, 1);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v22, type metadata accessor for Signpost);
}

uint64_t sub_1CF496B14(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x44455845444E4920, 0xEC00000020594220);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA4CDF0);
  if (*(a2 + 32))
  {
    v6 = 20550;
  }

  else
  {
    v6 = 21318;
  }

  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);
  0xE200000000000000, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4CE40);
  swift_getAssociatedTypeWitness();
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v14 + 32);
  v16 = swift_checkMetadataState();
  v17 = v15(a1, v16, v14);
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD000000000000062, 0x80000001CFA4CE60);
  v27 = sub_1CF9E7F98();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4CED0);
  v37 = sub_1CF9E7F98();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA4CF00);
  v47 = sub_1CF9E7F98();
  v49 = v48;
  MEMORY[0x1D3868CC0](v47);
  v49, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4CF40);
  v57 = sub_1CF682948();
  v65 = *v57->tree;
  if (v65)
  {
    v122 = MEMORY[0x1E69E7CC0];
    v66 = v57;
    sub_1CF680C9C(0, v65, 0);
    v74 = v66;
    v75 = v122;
    v76 = *(v122 + 16);
    v77 = 32;
    do
    {
      v78 = *(&v74->super.isa + v77);
      v79 = *(v122 + 24);
      if (v76 >= v79 >> 1)
      {
        sub_1CF680C9C((v79 > 1), v76 + 1, 1);
        v74 = v66;
      }

      v80 = qword_1CFA062F0[v78];
      *(v122 + 16) = v76 + 1;
      *(v122 + 8 * v76 + 32) = v80;
      ++v77;
      ++v76;
      --v65;
    }

    while (v65);
    v74, v67, v68, v69, v70, v71, v72, v73;
  }

  else
  {
    v57, v58, v59, v60, v61, v62, v63, v64;
    v75 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v81 = sub_1CF9E6C18();
  v83 = v82;
  v75, v82, v84, v85, v86, v87, v88, v89;
  MEMORY[0x1D3868CC0](v81, v83);
  v83, v90, v91, v92, v93, v94, v95, v96;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v75, v97, v98, v99, v100, v101, v102, v103;
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v104, v105, v106, v107, v108, v109, v110;
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA4CF60);
  v111 = sub_1CF9E7F98();
  v113 = v112;
  MEMORY[0x1D3868CC0](v111);
  v113, v114, v115, v116, v117, v118, v119, v120;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF49705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v48 = a2;
  v49 = a3;
  v54 = a1;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v45 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v5 + 56))(v12, 1, 1, v4);
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4CCF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v43 = v53;
  v44 = v52;
  v46 = v12;
  sub_1CEFE74D8(v12, v9);
  v15 = *(v5 + 48);
  if (v15(v9, 1, v4) == 1)
  {
    v16 = v42;
    v17 = v42;
    v18 = v47;
    sub_1CF9E6048();
    v19 = v15(v9, 1, v4);
    v20 = v16;
    if (v19 != 1)
    {
      sub_1CEFCCC44(v9, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v18 = v47;
    (*(v5 + 32))(v47, v9, v4);
    v20 = v42;
  }

  (*(v5 + 16))(v14, v18, v4);
  v21 = v45;
  *&v14[*(v45 + 20)] = v20;
  v22 = &v14[*(v21 + 24)];
  *v22 = "SQLDB: Count pending rescan children";
  *(v22 + 1) = 36;
  v22[16] = 2;
  v23 = v20;
  v24 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1CF9FA450;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1CEFD51C4();
  v26 = v43;
  *(v25 + 32) = v44;
  *(v25 + 40) = v26;
  sub_1CF9E6028(v24, &dword_1CEFC7000, v23, "SQLDB: Count pending rescan children", 36, 2, v14, "%s", 2);
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v5 + 8))(v18, v4);
  v34 = sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = v48;
  v37 = v50;
  v38 = (*(v51 + 24))(sub_1CF4C07C8, v35);
  if (!v37)
  {
    v39 = v38;
    v36 = [v38 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v14, type metadata accessor for Signpost);
  return v36 & 1;
}

uint64_t sub_1CF497600(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000040, 0x80000001CFA4CD10);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA4CD60);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 32);
  v14 = swift_checkMetadataState();
  v15 = v13(a1, v14, v12);
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4CD80);
  v32 = sub_1CF9E7F98();
  v34 = v33;
  MEMORY[0x1D3868CC0](v32);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF497870@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v58 = a3;
  v59 = a4;
  v57 = a2;
  v62 = a1;
  v50 = a6;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDEBBE40;
  (*(v7 + 56))(v14, 1, 1, v6);
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4CC20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v52 = v64;
  v53 = v63;
  v54 = v14;
  sub_1CEFE74D8(v14, v11);
  v18 = *(v7 + 48);
  if (v18(v11, 1, v6) == 1)
  {
    v19 = v51;
    v20 = v51;
    v21 = v55;
    sub_1CF9E6048();
    v22 = v18(v11, 1, v6);
    v23 = v21;
    v24 = v19;
    if (v22 != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v23 = v55;
    (*(v7 + 32))(v55, v11, v6);
    v24 = v51;
  }

  v25 = v65;
  (*(v7 + 16))(v65, v23, v6);
  *(v25 + *(v15 + 20)) = v24;
  v26 = v25 + *(v15 + 24);
  *v26 = "SQLDB: Count unbound children";
  *(v26 + 8) = 29;
  *(v26 + 16) = 2;
  v27 = v24;
  v28 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1CF9FA450;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1CEFD51C4();
  v30 = v52;
  *(v29 + 32) = v53;
  *(v29 + 40) = v30;
  sub_1CF9E6028(v28, &dword_1CEFC7000, v27, "SQLDB: Count unbound children", 29, 2, v25, "%s", 2);
  v29, v31, v32, v33, v34, v35, v36, v37;
  (*(v7 + 8))(v23, v6);
  v38 = sub_1CEFCCC44(v54, &unk_1EC4BED20, &unk_1CFA00700);
  v39 = MEMORY[0x1EEE9AC00](v38);
  if (v57)
  {
    v40 = sub_1CF4C07BC;
  }

  else
  {
    v40 = sub_1CF4C07B0;
  }

  v41 = v60;
  v42 = (*(v61 + 24))(v40, v39);
  v43 = v56;
  if (!v41)
  {
    v44 = v42;
    if ([v42 next])
    {
      v45 = v50;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v44, 0, v43);
      (*(*(v43 - 8) + 56))(v45, 0, 1, v43);
    }

    else
    {
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
    }
  }

  sub_1CF9E7458();
  v46 = v65;
  sub_1CF9E6038();
  return sub_1CF4C0A48(v46, type metadata accessor for Signpost);
}

uint64_t sub_1CF497EBC(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  if (*(a2 + 32))
  {
    v5 = 21318;
  }

  else
  {
    v5 = 20550;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = *(v13 + 32);
  v15 = swift_checkMetadataState();
  v16 = v14(a1, v15, v13);
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);
  0xE200000000000000, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4CC40);
  v33 = sub_1CF9E7F98();
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v50 = sub_1CF9E7F98();
  v52 = v51;
  MEMORY[0x1D3868CC0](v50);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA4CC60);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);
  0xE200000000000000, v60, v61, v62, v63, v64, v65, v66;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4CC80);
  return 0;
}

uint64_t sub_1CF4981E8(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  if (*(a2 + 32))
  {
    v5 = 21318;
  }

  else
  {
    v5 = 20550;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = *(v13 + 32);
  v15 = swift_checkMetadataState();
  v16 = v14(a1, v15, v13);
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0x74722B20444E4120, 0xE90000000000002ELL);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);
  0xE200000000000000, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4CCA0);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);
  0xE200000000000000, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4CC40);
  v40 = sub_1CF9E7F98();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF498498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v48 = a2;
  v49 = a3;
  v54 = a1;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v45 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v5 + 56))(v12, 1, 1, v4);
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA4CB60);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v43 = v53;
  v44 = v52;
  v46 = v12;
  sub_1CEFE74D8(v12, v9);
  v15 = *(v5 + 48);
  if (v15(v9, 1, v4) == 1)
  {
    v16 = v42;
    v17 = v42;
    v18 = v47;
    sub_1CF9E6048();
    v19 = v15(v9, 1, v4);
    v20 = v16;
    if (v19 != 1)
    {
      sub_1CEFCCC44(v9, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v18 = v47;
    (*(v5 + 32))(v47, v9, v4);
    v20 = v42;
  }

  (*(v5 + 16))(v14, v18, v4);
  v21 = v45;
  *&v14[*(v45 + 20)] = v20;
  v22 = &v14[*(v21 + 24)];
  *v22 = "SQLDB: Count bound children";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v23 = v20;
  v24 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1CF9FA450;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1CEFD51C4();
  v26 = v43;
  *(v25 + 32) = v44;
  *(v25 + 40) = v26;
  sub_1CF9E6028(v24, &dword_1CEFC7000, v23, "SQLDB: Count bound children", 27, 2, v14, "%s", 2);
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v5 + 8))(v18, v4);
  v34 = sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = v48;
  v37 = v50;
  v38 = (*(v51 + 24))(sub_1CF4C07A4, v35);
  if (!v37)
  {
    v39 = v38;
    v36 = [v38 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v14, type metadata accessor for Signpost);
  return v36 & 1;
}

uint64_t sub_1CF498A3C(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  if (*(a2 + 32))
  {
    v5 = 21318;
  }

  else
  {
    v5 = 20550;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = *(v13 + 32);
  v15 = swift_checkMetadataState();
  v16 = v14(a1, v15, v13);
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEC0000002E74722BLL);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);
  0xE200000000000000, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4CBC0);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4CBE0);
  v40 = sub_1CF9E7F98();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0x494C200A30203D20, 0xED0000312054494DLL);
  return 0;
}

uint64_t sub_1CF498CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41[2] = a3;
  v42 = a4;
  v41[1] = a2;
  v53 = a1;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v41 - v11;
  v46 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v46);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDEBBE40;
  (*(v5 + 56))(v12, 1, 1, v4);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA4CB00);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v44 = v52;
  v45 = v51;
  v47 = v12;
  sub_1CEFE74D8(v12, v9);
  v15 = *(v5 + 48);
  if (v15(v9, 1, v4) == 1)
  {
    v16 = v43;
    v17 = v43;
    v18 = v48;
    sub_1CF9E6048();
    v19 = v15(v9, 1, v4);
    v20 = v16;
    if (v19 != 1)
    {
      sub_1CEFCCC44(v9, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v18 = v48;
    (*(v5 + 32))(v48, v9, v4);
    v20 = v43;
  }

  (*(v5 + 16))(v14, v18, v4);
  v21 = v46;
  *&v14[*(v46 + 20)] = v20;
  v22 = &v14[*(v21 + 24)];
  *v22 = "SQLDB: Count keep downloaded children";
  *(v22 + 1) = 37;
  v22[16] = 2;
  v23 = v20;
  v24 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1CF9FA450;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1CEFD51C4();
  v26 = v44;
  *(v25 + 32) = v45;
  *(v25 + 40) = v26;
  sub_1CF9E6028(v24, &dword_1CEFC7000, v23, "SQLDB: Count keep downloaded children", 37, 2, v14, "%s", 2);
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v5 + 8))(v18, v4);
  v34 = sub_1CEFCCC44(v47, &unk_1EC4BED20, &unk_1CFA00700);
  if (*(v49 + 32))
  {
    v35 = v41;
    v36 = MEMORY[0x1EEE9AC00](v34);
    v37 = v50;
    v38 = (*(v42 + 24))(sub_1CF4C0798, v36);
    if (!v37)
    {
      v39 = v38;
      LOBYTE(v35) = [v38 next];
    }
  }

  else
  {
    LOBYTE(v35) = 0;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v14, type metadata accessor for Signpost);
  return v35 & 1;
}

uint64_t sub_1CF4992B4(uint64_t a1, void *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x69205443454C4553, 0xEF204D4F52462064);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, v4);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4CB20);
  v17 = sub_1CF9E7F98();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0x202020202020200ALL, 0xED000020444E4120);
  v27 = sub_1CF4BF780(0, 0xE000000000000000);
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0x2020202020200A29, 0xEB0000000020524FLL);
  v37 = sub_1CF4BFA00(0, 0xE000000000000000, xmmword_1CFA02F50);
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0x4F2020202020200ALL, 0xEA00000000002052);
  v47 = sub_1CF4BF854(0, 0xE000000000000000);
  v49 = v48;
  MEMORY[0x1D3868CC0](v47);
  v49, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](0x4D494C20200A3B29, 0xEC00000031205449);
  return 0;
}

uint64_t sub_1CF4995D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v53 = a2;
  v54 = a3;
  v59 = a1;
  v46 = a5;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &AssociatedConformanceWitness - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &AssociatedConformanceWitness - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &AssociatedConformanceWitness - v12;
  v14 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &AssociatedConformanceWitness - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDEBBE40;
  (*(v6 + 56))(v13, 1, 1, v5);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA4CA00);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v48 = v58;
  v49 = v57;
  v50 = v13;
  sub_1CEFE74D8(v13, v10);
  v17 = *(v6 + 48);
  if (v17(v10, 1, v5) == 1)
  {
    v18 = v47;
    v19 = v47;
    v20 = v52;
    sub_1CF9E6048();
    v21 = v17(v10, 1, v5);
    v22 = v51;
    if (v21 != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v20 = v52;
    (*(v6 + 32))(v52, v10, v5);
    v22 = v51;
    v18 = v47;
  }

  (*(v6 + 16))(v22, v20, v5);
  *(v22 + *(v14 + 20)) = v18;
  v23 = v22 + *(v14 + 24);
  *v23 = "SQLDB: contains children being reparented to trahs root";
  *(v23 + 8) = 55;
  *(v23 + 16) = 2;
  v24 = v18;
  v25 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1CF9FA450;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1CEFD51C4();
  v27 = v48;
  *(v26 + 32) = v49;
  *(v26 + 40) = v27;
  sub_1CF9E6028(v25, &dword_1CEFC7000, v24, "SQLDB: contains children being reparented to trahs root", 55, 2, v22, "%s", 2);
  v26, v28, v29, v30, v31, v32, v33, v34;
  (*(v6 + 8))(v20, v5);
  v35 = sub_1CEFCCC44(v50, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v37 = v55;
  v38 = (*(v56 + 24))(sub_1CF4C078C, v36);
  if (!v37)
  {
    v39 = v38;
    if ([v38 next])
    {
      v40 = v46;
      v41 = v39;
      v42 = v45;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v41, 0, v45);
      (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
    }

    else
    {
      (*(*(v45 - 8) + 56))(v46, 1, 1);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v22, type metadata accessor for Signpost);
}

uint64_t sub_1CF499BE4(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4CA20);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA4CA40);
  v12 = sub_1CF9E7F98();
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4CA80);
  swift_getAssociatedTypeWitness();
  v22 = *(swift_getAssociatedConformanceWitness() + 8);
  v23 = *(v22 + 32);
  v24 = swift_checkMetadataState();
  v25 = v23(a1, v24, v22);
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4CAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v35 = sub_1CF9E6C18();
  v37 = v36;
  MEMORY[0x1D3868CC0](v35);
  v37, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v45, v46, v47, v48, v49, v50, v51;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF499F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v34 = a2;
  v37 = a4;
  v32 = a1;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v5 + 56))(v13, 1, 1, v4);
  v31 = v13;
  sub_1CEFE74D8(v13, v10);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) == 1)
  {
    v19 = v17;
    sub_1CF9E6048();
    if (v18(v10, 1, v4) != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
  }

  (*(v5 + 16))(v16, v7, v4);
  *&v16[*(v14 + 20)] = v17;
  v20 = &v16[*(v14 + 24)];
  *v20 = "SQLDB: Has reseting parent";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v21 = v17;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v5 + 8))(v7, v4);
  v22 = sub_1CEFCCC44(v31, &unk_1EC4BED20, &unk_1CFA00700);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = v34;
  v25 = v37;
  *(&v31 - 6) = v35;
  *(&v31 - 5) = v25;
  v26 = v32;
  *(&v31 - 4) = v33;
  *(&v31 - 3) = v26;
  *(&v31 - 2) = 32776;
  v27 = v36;
  v28 = (*(v25 + 24))(sub_1CF4C0774, v23);
  if (!v27)
  {
    v29 = v28;
    v24 = [v28 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v16, type metadata accessor for Signpost);
  return v24 & 1;
}

uint64_t sub_1CF49A354(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA4C660);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA4C8B0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD00);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000078, 0x80000001CFA4C8D0);
  if (*(a2 + 32))
  {
    v19 = 20550;
  }

  else
  {
    v19 = 21318;
  }

  MEMORY[0x1D3868CC0](v19, 0xE200000000000000);
  0xE200000000000000, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA4C950);
  v27 = sub_1CF9E7F98();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v37 = sub_1CF9E7F98();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA4C990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v47 = sub_1CF9E6C18();
  v49 = v48;
  MEMORY[0x1D3868CC0](v47);
  v49, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v57, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4C840);
  v64 = sub_1CF9E7F98();
  v66 = v65;
  MEMORY[0x1D3868CC0](v64);
  v66, v67, v68, v69, v70, v71, v72, v73;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4C860);
  v74 = sub_1CF9E7F98();
  v76 = v75;
  MEMORY[0x1D3868CC0](v74);
  v76, v77, v78, v79, v80, v81, v82, v83;
  MEMORY[0x1D3868CC0](0x2930203D2120, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF49A82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v41 = a3;
  v42 = a4;
  v45 = a2;
  v39 = a1;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v6 + 56))(v14, 1, 1, v5);
  sub_1CEFE74D8(v14, v11);
  v18 = *(v6 + 48);
  if (v18(v11, 1, v5) == 1)
  {
    v19 = v17;
    sub_1CF9E6048();
    v20 = v18(v11, 1, v5);
    v21 = v8;
    if (v20 != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v21 = v8;
    (*(v6 + 32))(v8, v11, v5);
  }

  v22 = v38;
  (*(v6 + 16))(v38, v21, v5);
  *(v22 + *(v15 + 20)) = v17;
  v23 = v22 + *(v15 + 24);
  *v23 = "SQLDB: Has reuploading or reevaluating purgeability parent";
  *(v23 + 8) = 58;
  *(v23 + 16) = 2;
  v24 = v17;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v21, v5);
  v25 = sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v43;
  v27 = v44;
  *(&v37 - 6) = v42;
  *(&v37 - 5) = v27;
  v29 = v39;
  *(&v37 - 4) = v40;
  *(&v37 - 3) = v29;
  v30 = v45;
  *(&v37 - 2) = v45;
  v31 = (*(v27 + 24))(sub_1CF4C075C, v26);
  if (!v28)
  {
    v32 = v31;
    v33 = 0;
    while ([v32 next])
    {
      v34 = [v32 unsignedLongAtIndex_];
      if ((v34 & ~v33) != 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      v33 |= v35;
      if ((v30 & ~v33) == 0)
      {

        goto LABEL_16;
      }
    }

    v30 &= v33;
  }

LABEL_16:
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v22, type metadata accessor for Signpost);
  return v30;
}

uint64_t sub_1CF49ACC8(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA4C660);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD00);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000009ALL, 0x80000001CFA4C6B0);
  if (*(a2 + 32))
  {
    v19 = 20550;
  }

  else
  {
    v19 = 21318;
  }

  MEMORY[0x1D3868CC0](v19, 0xE200000000000000);
  0xE200000000000000, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD00000000000006CLL, 0x80000001CFA4C750);
  v27 = sub_1CF9E7F98();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA4C7C0);
  v37 = sub_1CF9E7F98();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA4C810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v47 = sub_1CF9E6C18();
  v49 = v48;
  MEMORY[0x1D3868CC0](v47);
  v49, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v57, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4C840);
  v64 = sub_1CF9E7F98();
  v66 = v65;
  MEMORY[0x1D3868CC0](v64);
  v66, v67, v68, v69, v70, v71, v72, v73;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4C860);
  v74 = sub_1CF9E7F98();
  v76 = v75;
  MEMORY[0x1D3868CC0](v74);
  v76, v77, v78, v79, v80, v81, v82, v83;
  MEMORY[0x1D3868CC0](0x2930203D2120, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF49B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = v21;
  sub_1CF48FF70(a1, a2, a3, a4, v12);
  if (!v16)
  {
    v17 = v19;
    v21 = a4;
    if ((*(v20 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v17 + 8))(v12, v10);
      v4 = 0;
    }

    else
    {
      (*(v20 + 32))(v15, v12, AssociatedTypeWitness);
      v4 = sub_1CF49B42C(v15, a2, a3, v21);
      (*(v20 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return v4 & 1;
}

uint64_t sub_1CF49B42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v34 = a2;
  v37 = a4;
  v32 = a1;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v5 + 56))(v13, 1, 1, v4);
  v31 = v13;
  sub_1CEFE74D8(v13, v10);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) == 1)
  {
    v19 = v17;
    sub_1CF9E6048();
    if (v18(v10, 1, v4) != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
  }

  (*(v5 + 16))(v16, v7, v4);
  *&v16[*(v14 + 20)] = v17;
  v20 = &v16[*(v14 + 24)];
  *v20 = "SQLDB: Has ignored parent";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v21 = v17;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v5 + 8))(v7, v4);
  v22 = sub_1CEFCCC44(v31, &unk_1EC4BED20, &unk_1CFA00700);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = v34;
  v25 = v37;
  *(&v31 - 4) = v35;
  *(&v31 - 3) = v25;
  v26 = v32;
  *(&v31 - 2) = v33;
  *(&v31 - 1) = v26;
  v27 = v36;
  v28 = (*(v25 + 24))(sub_1CF4C0750, v23);
  if (!v27)
  {
    v29 = v28;
    v24 = [v28 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v16, type metadata accessor for Signpost);
  return v24 & 1;
}

uint64_t sub_1CF49B874(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000053, 0x80000001CFA4C3B0);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4C410);
  v12 = *(a2 + qword_1EDEBBD78);
  v13 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v12, v13);
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA4C430);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  MEMORY[0x1D3868CC0](v12, v13);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA4C460);
  swift_getAssociatedTypeWitness();
  v21 = *(swift_getAssociatedConformanceWitness() + 8);
  v22 = *(v21 + 32);
  v23 = swift_checkMetadataState();
  v24 = v22(a1, v23, v21);
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA4C480);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v34, v35, v36, v37, v38, v39, v40;
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA4C4E0);
  MEMORY[0x1D3868CC0](v12, v13);
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA4C520);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA4C580);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v48, v49, v50, v51, v52, v53, v54;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACA0);
  v55 = sub_1CF9E7F98();
  v57 = v56;
  MEMORY[0x1D3868CC0](v55);
  v57, v58, v59, v60, v61, v62, v63, v64;
  MEMORY[0x1D3868CC0](0xD000000000000069, 0x80000001CFA4C5B0);
  v65 = sub_1CF9E7F98();
  v67 = v66;
  MEMORY[0x1D3868CC0](v65);
  v67, v68, v69, v70, v71, v72, v73, v74;
  MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
  return 0;
}

char *sub_1CF49BC28(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t (*)(), __n128))
{
  v48 = a5;
  v49 = a6;
  v45 = a1;
  v46 = a4;
  v52 = a3;
  v43 = *v6;
  v44 = a2;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEBBE40;
  (*(v8 + 56))(v16, 1, 1, v7);
  sub_1CEFE74D8(v16, v13);
  v20 = *(v8 + 48);
  if (v20(v13, 1, v7) == 1)
  {
    v21 = v19;
    sub_1CF9E6048();
    if (v20(v13, 1, v7) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
  }

  v22 = v51;
  (*(v8 + 16))(v51, v10, v7);
  *(v22 + *(v17 + 20)) = v19;
  v23 = v22 + *(v17 + 24);
  *v23 = "SQLDB: Scan directory";
  *(v23 + 8) = 21;
  *(v23 + 16) = 2;
  v24 = v19;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v8 + 8))(v10, v7);
  v25 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = v50;
  if (v44)
  {
    type metadata accessor for PaginatedContinuation();
    v25 = swift_dynamicCastClass();
    v28 = v48;
    v27 = v49;
    if (!v25)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v28 = v48;
    v27 = v49;
  }

  v29 = MEMORY[0x1EEE9AC00](v25);
  *(&v42 - 8) = v28;
  *(&v42 - 7) = v27;
  *(&v42 - 6) = v26;
  *(&v42 - 40) = v30 & 1;
  *(&v42 - 4) = v45;
  *(&v42 - 3) = v31;
  v40 = 200;
  v32 = v47;
  v33 = v27[3](sub_1CF4C0BAC, v29);
  if (v32)
  {
    goto LABEL_18;
  }

  v35 = v33;
  v49 = v24;
  type metadata accessor for SnapshotItem(0, *(v43 + 760), *(v43 + 776), v34);
  v10 = sub_1CF9E6DA8();
  v54 = v10;
  v53 = 0;
  if ([v35 next])
  {
    do
    {
      v36 = objc_autoreleasePoolPush();
      sub_1CF49C588(&v53, v35, v26, v52 & 1, &v54);
      objc_autoreleasePoolPop(v36);
    }

    while (([v35 next] & 1) != 0);
    v10 = v54;
  }

  v37 = sub_1CF9E6DF8();

  if (v37 != 200)
  {
    goto LABEL_18;
  }

  v38 = v53 + 1;
  if (!__OFADD__(v53, 1))
  {
    type metadata accessor for PaginatedContinuation();
    *(swift_allocObject() + 16) = v38;
LABEL_18:
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v22, type metadata accessor for Signpost);
    return v10;
  }

  __break(1u);
LABEL_20:
  v41 = 0;
  v40 = 1155;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF49C238(void *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 32) == 1)
  {
    v10 = 0xE000000000000000;
    if (a3)
    {
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD88), *(a2 + qword_1EDEBBD88 + 8));
      MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA46800);
      v11 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v11 = 0xD000000000000079;
    }

    else
    {
      v11 = 0;
    }

    if (a3)
    {
      v10 = 0x80000001CFA46780;
    }

    else
    {
      v10 = 0xE000000000000000;
    }
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](v11, v10);
  v10, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  swift_getAssociatedTypeWitness();
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  v20 = *(v19 + 32);
  v21 = swift_checkMetadataState();
  v22 = v20(a1, v21, v19);
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA46750);
  v32 = [a1 bindLongParameter_];
  v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v34;

  MEMORY[0x1D3868CC0](v33, v35);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3B360);
  v43 = [a1 bindLongParameter_];
  v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v46 = v45;

  MEMORY[0x1D3868CC0](v44, v46);
  v46, v47, v48, v49, v50, v51, v52, v53;
  return 0;
}

void sub_1CF49C588(void *a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  LODWORD(v85) = a4;
  v9 = type metadata accessor for SnapshotItem(0, *(*a3 + 760), *(*a3 + 776), a4);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v61 - v15;
  *a1 = [a2 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  sub_1CF01E03C(a2, 1, v9, WitnessTable, v16);
  if (!v5)
  {
    v61 = v12;
    v63 = v10;
    v18 = v16;
    if (a3[32] == 1)
    {
      if (v85)
      {
        v19 = *&a3[qword_1EDEBBD90];
        if (!__OFADD__(v19, 1))
        {
          v20 = sub_1CEFF12E8();
          sub_1CEFF14E0(v20, a2, v19 + 1, v83);
          v62 = 0;
          v20, v21, v22, v23, v24, v25, v26, v27;
          v77 = v83[12];
          v78 = v83[13];
          v79 = v83[14];
          v80 = v84;
          v73 = v83[8];
          v74 = v83[9];
          v75 = v83[10];
          v76 = v83[11];
          v69 = v83[4];
          v70 = v83[5];
          v71 = v83[6];
          v72 = v83[7];
          v65 = v83[0];
          v66 = v83[1];
          v67 = v83[2];
          v68 = v83[3];
          nullsub_1();
          v38 = &v18[v9[13]];
          v39 = *(v38 + 13);
          v81[12] = *(v38 + 12);
          v81[13] = v39;
          v81[14] = *(v38 + 14);
          v82 = *(v38 + 30);
          v40 = *(v38 + 9);
          v81[8] = *(v38 + 8);
          v81[9] = v40;
          v41 = *(v38 + 11);
          v81[10] = *(v38 + 10);
          v81[11] = v41;
          v42 = *(v38 + 5);
          v81[4] = *(v38 + 4);
          v81[5] = v42;
          v43 = *(v38 + 7);
          v81[6] = *(v38 + 6);
          v81[7] = v43;
          v44 = *(v38 + 1);
          v81[0] = *v38;
          v81[1] = v44;
          v45 = *(v38 + 3);
          v81[2] = *(v38 + 2);
          v81[3] = v45;
          sub_1CEFCCC44(v81, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          v46 = v78;
          *(v38 + 12) = v77;
          *(v38 + 13) = v46;
          *(v38 + 14) = v79;
          *(v38 + 30) = v80;
          v47 = v74;
          *(v38 + 8) = v73;
          *(v38 + 9) = v47;
          v48 = v76;
          *(v38 + 10) = v75;
          *(v38 + 11) = v48;
          v49 = v70;
          *(v38 + 4) = v69;
          *(v38 + 5) = v49;
          v50 = v72;
          *(v38 + 6) = v71;
          *(v38 + 7) = v50;
          v51 = v66;
          *v38 = v65;
          *(v38 + 1) = v51;
          v52 = v68;
          *(v38 + 2) = v67;
          *(v38 + 3) = v52;
          v53 = *&a3[qword_1EDEBBD80];
          v54 = __OFADD__(v19, v53);
          v55 = v19 + v53;
          if (!v54)
          {
            v56 = v55 + 1;
            v37 = v61;
            if (!__OFADD__(v55, 1))
            {
              v57 = [a2 unsignedLongAtIndex_];
              if (!__OFADD__(v56, 1))
              {
                v58 = v57;
                v59 = [a2 unsignedLongAtIndex_];
                v60 = &v18[v9[15]];
                *v60 = v58;
                *(v60 + 1) = v59;
                v60[16] = 0;
                v36 = v63;
                goto LABEL_14;
              }

LABEL_27:
              __break(1u);
              return;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_21;
      }

      v62 = 0;
    }

    else
    {
      v62 = 0;
      if (v85)
      {
        v28 = *&a3[qword_1EDEBBD90];
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v85 = [a2 unsignedLongAtIndex_];
        if (__OFADD__(v29, 1))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v30 = [a2 unsignedLongAtIndex_];
        if (__OFADD__(v29, 2))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v31 = v30;
        v32 = [a2 unsignedLongAtIndex_];
        if (__OFADD__(v29, 3))
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v33 = v32;
        v34 = [a2 unsignedLongAtIndex_];
        v35 = &v16[v9[14]];
        *v35 = v85;
        *(v35 + 1) = v31;
        *(v35 + 2) = v33;
        *(v35 + 3) = v34;
        v35[32] = 0;
      }
    }

    v36 = v63;
    v37 = v61;
LABEL_14:
    (*(v36 + 16))(v37, v18, v9);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    (*(v36 + 8))(v18, v9);
  }
}

uint64_t sub_1CF49CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v115 = a4;
  v113 = a2;
  v114 = a3;
  v124 = a1;
  v6 = *(*v4 + 768);
  v7 = *(*v4 + 776);
  v8 = *(*v4 + 784);
  v120 = *(*v4 + 760);
  v5 = v120;
  v121 = v6;
  v95 = v6;
  v122 = v7;
  v123 = v8;
  v94 = v8;
  v96 = type metadata accessor for PersistenceTrigger(0, &v120);
  v98 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v100 = &v92 - v9;
  v11 = type metadata accessor for SnapshotItem(255, v5, v7, v10);
  v97 = sub_1CF9E75D8();
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v107 = &v92 - v12;
  v101 = v11;
  v102 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v92 - v14;
  v15 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v104 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E5268();
  v105 = *(v17 - 8);
  v106 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v117 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v112 = &v92 - v20;
  v21 = sub_1CF9E6068();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v92 - v28;
  v30 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v30);
  v119 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDEBBE40;
  (*(v22 + 56))(v29, 1, 1, v21);
  v120 = 0;
  v121 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x206574656C6564, 0xE700000000000000);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v118 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v109 = v121;
  v110 = v120;
  sub_1CEFE74D8(v29, v26);
  v33 = *(v22 + 48);
  if (v33(v26, 1, v21) == 1)
  {
    v34 = v32;
    v35 = v111;
    sub_1CF9E6048();
    v36 = v35;
    if (v33(v26, 1, v21) != 1)
    {
      sub_1CEFCCC44(v26, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v36 = v111;
    (*(v22 + 32))(v111, v26, v21);
  }

  v37 = v119;
  (*(v22 + 16))(v119, v36, v21);
  *(v37 + *(v30 + 20)) = v32;
  v38 = v37 + *(v30 + 24);
  *v38 = "SQLDB: Delete Item";
  *(v38 + 8) = 18;
  *(v38 + 16) = 2;
  v39 = v32;
  v40 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1CF9FA450;
  *(v41 + 56) = MEMORY[0x1E69E6158];
  *(v41 + 64) = sub_1CEFD51C4();
  v42 = v109;
  *(v41 + 32) = v110;
  *(v41 + 40) = v42;
  sub_1CF9E6028(v40, &dword_1CEFC7000, v39, "SQLDB: Delete Item", 18, 2, v37, "%s", 2);
  v41, v43, v44, v45, v46, v47, v48, v49;
  (*(v22 + 8))(v36, v21);
  sub_1CEFCCC44(v29, &unk_1EC4BED20, &unk_1CFA00700);
  v50 = *(v115 + 8);
  v51 = v113;
  v52 = v114;
  (*(v50 + 88))(v114, v50);
  v53 = v112;
  sub_1CF046AB4();
  v54 = v124;
  v55 = v118;
  v56 = sub_1CF9E6868();
  (*(v117 + 8))(v53, v55);
  if (v56)
  {
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF24D0AC();
    v57 = v103;
    v58 = v106;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v105 + 8))(v57, v58);
    swift_willThrow();
LABEL_17:
    sub_1CF9E7458();
    v88 = v119;
    sub_1CF9E6038();
    return sub_1CF4C0A48(v88, type metadata accessor for Signpost);
  }

  v60 = v107;
  v59 = v108;
  sub_1CF48C08C(v54, v51, v52, v50, v107);
  if (v59)
  {
    goto LABEL_17;
  }

  v112 = v39;
  v61 = v102;
  v62 = v101;
  if ((*(v102 + 48))(v60, 1, v101) == 1)
  {
    (*(v93 + 8))(v60, v97);
    result = swift_weakLoadStrong();
    v64 = v98;
    v65 = v100;
    if (result)
    {
      v66 = result;
      v67 = v118;
      (*(v117 + 16))(v100, v124, v118);
      v68 = swift_getAssociatedTypeWitness();
      v69 = swift_getAssociatedConformanceWitness();
      v120 = v67;
      v121 = v68;
      v122 = AssociatedConformanceWitness;
      v123 = v69;
      type metadata accessor for ReconciliationID(0, &v120);
      swift_storeEnumTagMultiPayload();
      v70 = v96;
      swift_storeEnumTagMultiPayload();
      (*(*v66 + 312))(v65);

      (*(v64 + 8))(v65, v70);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_23;
  }

  v71 = v60;
  v72 = v99;
  v73 = (*(v61 + 32))(v99, v71, v62);
  v74 = v51;
  v111 = &v92;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v76 = v124;
  (*(v115 + 32))(sub_1CF4C0744, v75);
  v77 = v52;
  v78 = v100;
  sub_1CF4884D0(v76, v74, v77, v50);
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v79 = result;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v81 = *(TupleTypeMetadata3 + 48);
  v82 = *(TupleTypeMetadata3 + 64);
  (*(v61 + 16))(v78, v72, v62);
  v83 = *(v61 + 56);
  v83(v78, 0, 1, v62);
  v83(&v78[v81], 1, 1, v62);
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  *&v78[v82] = qword_1EDEABDE8;
  v84 = v96;
  swift_storeEnumTagMultiPayload();
  (*(*v79 + 312))(v78);

  v85 = *(v98 + 8);
  v85(v78, v84);
  v86 = *(v62 + 36);
  v87 = sub_1CF4947C8(&v99[v86], 1, v113, v114, v50);
  if (v87)
  {
LABEL_21:
    (*(v102 + 8))(v99, v62);
    goto LABEL_17;
  }

  result = swift_weakLoadStrong();
  v124 = result;
  if (result)
  {
    v89 = v118;
    (*(v117 + 16))(v78, &v99[v86], v118);
    v90 = swift_getAssociatedTypeWitness();
    v91 = swift_getAssociatedConformanceWitness();
    v120 = v89;
    v121 = v90;
    v122 = AssociatedConformanceWitness;
    v123 = v91;
    type metadata accessor for ReconciliationID(0, &v120);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (*(*v124 + 312))(v78);

    v85(v78, v84);
    v62 = v101;
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1CF49D8CC(uint64_t a1, uint64_t *a2)
{
  BYTE5(v25[1]) = 0;
  sub_1CF9E7948();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  strcpy(v25, "DELETE FROM ");
  HIWORD(v25[1]) = -5120;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = *(v11 + 32);
  v13 = swift_checkMetadataState();
  v14 = v12(a1, v13, v11);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return v25[0];
}

void sub_1CF49DA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a1;
  v6 = v4;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v6;
  v11 = (*(*(a4 + 8) + 24))(sub_1CF4C0738, v13);
  if (!v5)
  {
    v12 = v11;
    if (([v11 next] & 1) == 0)
    {
      sub_1CF49CA34(a1, a2, a3, a4);
    }
  }
}

uint64_t sub_1CF49DB24(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4C340);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 32);
  v14 = swift_checkMetadataState();
  v15 = v13(a1, v14, v12);
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  return 0;
}