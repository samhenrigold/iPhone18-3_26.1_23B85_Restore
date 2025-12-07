void *sub_100017DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  sub_100007D18(a3);
  sub_100007D18(a2);
  v8 = &v7;
  result = sub_1000180B8((a1 + 16), &v7, &std::piecewise_construct, &v8);
  result[3] = a3;
  return result;
}

void *sub_100017E30(void *a1)
{
  *a1 = off_100025930;
  sub_10000BF40((a1 + 2));
  return a1;
}

void sub_100017E74(void *a1)
{
  *a1 = off_100025930;
  sub_10000BF40((a1 + 2));

  operator delete();
}

void *sub_100017ED8(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      sub_1000088E4(&std::cout, "\t", 1);
      --v4;
    }

    while (v4);
  }

  result = sub_1000088E4(&std::cout, "OSDictionary\n", 13);
  for (i = *(a1 + 32); i; i = *i)
  {
    v7 = i[3];
    (*(*i[2] + 16))(i[2], (a2 + 1));
    result = (*(*v7 + 16))(v7, (a2 + 1));
  }

  return result;
}

uint64_t sub_100017FC0(uint64_t a1)
{
  for (i = *(a1 + 32); i; i = *i)
  {
    v3 = i[3];
    sub_100007694(i[2]);
    sub_100007694(v3);
  }

  sub_10001804C((a1 + 16));
  *(a1 + 8) = -2;
  v4 = *(*a1 + 8);

  return v4(a1);
}

void *sub_10001804C(void *result)
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

void *sub_1000180B8(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = sub_100007E50(&v14, (*a2 + 16));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_100018380(uint64_t a1, unint64_t a2)
{
  *(a1 + 8) = 1;
  *a1 = off_100025960;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_100018400((a1 + 16), a2);
  return a1;
}

void sub_1000183E4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100018400(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1000186A4(a1, a2);
    }

    sub_100009560();
  }
}

void *sub_1000184A0(void *a1)
{
  *a1 = off_100025960;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000184F0(void *a1)
{
  *a1 = off_100025960;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

void *sub_100018560(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      sub_1000088E4(&std::cout, "\t", 1);
      --v4;
    }

    while (v4);
  }

  result = sub_1000088E4(&std::cout, "OSArray\n", 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = (*(*v8 + 16))(v8, (a2 + 1));
  }

  return result;
}

uint64_t sub_10001861C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      sub_100007694(v4);
    }

    while (v2 != v3);
    v2 = *(a1 + 16);
  }

  *(a1 + 24) = v2;
  *(a1 + 8) = -2;
  v5 = *(*a1 + 8);

  return v5(a1);
}

void sub_1000186A4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10000841C();
}

void *sub_100018714(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    do
    {
      sub_1000088E4(&std::cout, "\t", 1);
      --v2;
    }

    while (v2);
  }

  sub_1000088E4(&std::cout, "OSNumber(", 9);
  v3 = std::ostream::operator<<();

  return sub_1000088E4(v3, ")\n", 2);
}

void sub_1000187AC()
{
  v2[0] = 136315650;
  sub_100001F5C();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[%s] missing profile: %@ | %u", v2, 0x1Cu);
}

void sub_10001883C()
{
  v1[0] = 136315394;
  sub_100001F5C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[%s] missing TeamName: %@", v1, 0x16u);
}

void sub_1000188BC()
{
  v1[0] = 136315394;
  sub_100001F5C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[%s] profile trust notification err: %@", v1, 0x16u);
}

void sub_10001893C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  [v4 UTF8String];
  v11 = 136315394;
  sub_100002938();
  sub_10000294C(&_mh_execute_header, v5, v6, "%s: unable to authenticate user: %s", v7, v8, v9, v10, v11);
}

void sub_1000189E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  [v4 UTF8String];
  v11 = 136315394;
  sub_100002938();
  sub_10000294C(&_mh_execute_header, v5, v6, "%s: unable to set SEP developer mode state: %s", v7, v8, v9, v10, v11);
}

void sub_100018D4C()
{
  sub_100002938();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100018DC8()
{
  sub_100002938();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100018FDC()
{
  sub_100004590();
  v3 = 1040;
  v4 = 8;
  v5 = 2096;
  v6 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: bad security token { %.8P }", v2, 0x1Cu);
}

void sub_100019070()
{
  sub_100004554();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100019160()
{
  __error();
  v0 = __error();
  strerror(*v0);
  v7 = 136315650;
  sub_100004534();
  sub_100004570(&_mh_execute_header, v1, v2, "unable to read %s: %d (%s)", v3, v4, v5, v6, v7);
}

void sub_1000191F4()
{
  sub_100004590();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019264()
{
  __error();
  v0 = __error();
  strerror(*v0);
  v7 = 136315650;
  sub_100004534();
  sub_100004570(&_mh_execute_header, v1, v2, "unable to open %s for reading: %d (%s)", v3, v4, v5, v6, v7);
}

void sub_1000192F8()
{
  __error();
  v0 = __error();
  strerror(*v0);
  v7 = 136315650;
  sub_100004534();
  sub_100004570(&_mh_execute_header, v1, v2, "unable to write %s: %d (%s)", v3, v4, v5, v6, v7);
}

void sub_10001938C()
{
  sub_100004590();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000193FC()
{
  __error();
  v0 = __error();
  strerror(*v0);
  v7 = 136315650;
  sub_100004534();
  sub_100004570(&_mh_execute_header, v1, v2, "unable to open %s for writing: %d (%s)", v3, v4, v5, v6, v7);
}

void sub_100019490()
{
  __error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000194B0()
{
  __error();
  v0 = __error();
  strerror(*v0);
  v7 = 136315650;
  sub_100004534();
  sub_100004570(&_mh_execute_header, v1, v2, "unable to open %s: %d (%s)", v3, v4, v5, v6, v7);
}

void sub_100019544()
{
  __error();
  v0 = __error();
  strerror(*v0);
  v7 = 136315650;
  sub_100004534();
  sub_100004570(&_mh_execute_header, v1, v2, "unable to stat %s: %d (%s)", v3, v4, v5, v6, v7);
}

void sub_1000195D8()
{
  __error();
  v0 = __error();
  strerror(*v0);
  v7 = 136315650;
  sub_100004534();
  sub_100004570(&_mh_execute_header, v1, v2, "unable to create %s: %d (%s)", v3, v4, v5, v6, v7);
}

void sub_10001966C()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000196E8()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019764()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000197E0()
{
  sub_1000062D4();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001985C()
{
  v2 = 136315650;
  sub_100001F5C();
  sub_1000062B4(&_mh_execute_header, v0, v1, "[%s] length of Team ID too large: %@ | %lu", v2);
}

void sub_10001995C()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000199D8()
{
  sub_1000062D4();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100019AD4()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019B50()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019BCC()
{
  v2 = 136315650;
  sub_100001F5C();
  sub_1000062B4(&_mh_execute_header, v0, v1, "[%s] mismatch for staged UUID: %@ | %@", v2);
}

void sub_100019C48()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019CC4()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019DC0()
{
  v2 = 136315650;
  sub_100001F5C();
  sub_1000062B4(&_mh_execute_header, v0, v1, "[%s] failed to untrust team ID %@: %@", v2);
}

void sub_100019EBC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unable to ratchet SEP init-state: %@", &v2, 0xCu);
}

void sub_100019F78(os_log_t log)
{
  v1 = 136315138;
  v2 = "__openAMFIConnection";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: unable to open AppleMobileFileIntegrity service", &v1, 0xCu);
}

void sub_100019FFC(os_log_t log)
{
  v1 = 136315138;
  v2 = "__openAMFIConnection";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: unable to find AppleMobileFileIntegrity service", &v1, 0xCu);
}

void sub_10001A080(void *a1)
{
  v1 = a1;
  v2 = __error();
  LODWORD(v9) = 136315138;
  *(&v9 + 4) = strerror(*v2);
  sub_100006DEC(&_mh_execute_header, v3, v4, "unable to read security.codesigning.monitor: %s", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_10001A10C(void *a1)
{
  v1 = a1;
  v2 = __error();
  LODWORD(v9) = 136315138;
  *(&v9 + 4) = strerror(*v2);
  sub_100006DEC(&_mh_execute_header, v3, v4, "unable to read security.codesigning.config: %s", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_10001A198()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A220()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A2A8()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A330()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A3B8()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A440()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A4C8()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A550()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A5D8()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A660()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A6E8()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A770()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A7F8()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A880()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A908()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001A990()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001AA18()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001AAA0()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001AB28()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001ABB0()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001AC38()
{
  v5 = 136315394;
  sub_10000965C();
  sub_10000966C(&_mh_execute_header, &_os_log_default, v0, "Couldn't enforce %s in %s", v1, v2, v3, v4, v5);
}

void sub_10001ACC0()
{
  sub_1000062D4();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001ADC4()
{
  v3[0] = 136315650;
  sub_100001F5C();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: [%@] error with request: %@", v3, 0x20u);
}

void sub_10001AE50()
{
  v2[0] = 136315650;
  sub_100001F5C();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: [%@] error sending reply: %d", v2, 0x1Cu);
}

void sub_10001AEE0()
{
  sub_10000AAF0();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001AF60()
{
  sub_1000062D4();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001AFDC()
{
  sub_10000AAF0();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001B250(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[migration] %s: copy profile error: %u", &v3, 0x12u);
}

void sub_10001B2D8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[migration] %@: failed creating auxiliary signature: %@", &v3, 0x16u);
}

void sub_10001B360(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[migration] %s: missing Team ID", &v2, 0xCu);
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
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