void sub_100616310(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = sub_100570F18(v6, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100616414;
  v11[3] = &unk_100AE25C8;
  v14 = a1;
  v9 = v5;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  sub_10000CA94(v8, v11);
}

void sub_100616414(uint64_t a1)
{
  v2 = *(a1 + 48);
  sub_10004DFB4(uu2, *(a1 + 32));
  v3 = sub_10004E34C(v2 + 264, uu2);
  if (v2 + 272 != v3)
  {
    sub_1005FE828(*(v3 + 48), *(a1 + 40));
  }
}

void sub_10061649C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = sub_100570F18(v6, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006165A0;
  v11[3] = &unk_100AE25C8;
  v14 = a1;
  v9 = v5;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  sub_10000CA94(v8, v11);
}

uint64_t sub_1006165A0(uint64_t a1)
{
  v2 = *(a1 + 48);
  sub_10004DFB4(uu2, *(a1 + 32));
  result = sub_10004E34C(v2 + 264, uu2);
  if (v2 + 272 != result)
  {
    v4 = result;
    v5 = *(result + 48);
    sub_1005FEDA0(v5, *(a1 + 40));
    result = sub_1005FEE90(v5);
    if ((result & 1) == 0)
    {
      v6 = v4[7];
      sub_10002717C((v2 + 264), v4);
      operator delete(v4);
      result = sub_1003A2794(v6);
      if (v5)
      {
        sub_1005FE20C(v5);
        operator delete();
      }
    }
  }

  return result;
}

void sub_100616684(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCAPProcedureType"];
  v8 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCAPProcedureStatus"];
  v9 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v20;
    sub_100616944(v20, [v7 unsignedIntValue]);
    if (v21 < 0)
    {
      v10 = v20[0];
    }

    sub_100616A38(__p, [v8 unsignedIntValue]);
    if (v19 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v23 = v10;
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received CAP Procedure Complete Notifcation: CAP Procedure: %s. Procedure Status: %s", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (![v7 unsignedIntValue] || objc_msgSend(v7, "unsignedIntValue") == 3 || objc_msgSend(v7, "unsignedIntValue") == 4)
  {
    v20[0] = 0;
    v20[1] = 0;
    sub_100007F88(v20, a1 + 288);
    sub_100364600((a1 + 352));
    v12 = [v7 unsignedIntValue];
    if (!v12)
    {
      v14 = sub_100570F18(v12, v13);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100616BC0;
      v15[3] = &unk_100AE1200;
      v17 = a1;
      v16 = v5;
      sub_10000CA94(v14, v15);
    }

    sub_1000088CC(v20);
  }
}

void sub_1006168D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1000088CC(&__p);

  _Unwind_Resume(a1);
}

uint64_t *sub_100616944@<X0>(uint64_t *__return_ptr a1@<X8>, size_t __len@<X0>)
{
  if (__len > 4)
  {
    if (__len <= 6)
    {
      if (__len == 5)
      {
        v2 = "Change Volume";
      }

      else
      {
        v2 = "Change Volume Offset";
      }

      return sub_100007E30(a1, v2);
    }

    switch(__len)
    {
      case 7:
        v2 = "Change Volume Mute";
        return sub_100007E30(a1, v2);
      case 8:
        v2 = "Mic Mute";
        return sub_100007E30(a1, v2);
      case 9:
        v2 = "Change Mic Gain Setting";
        return sub_100007E30(a1, v2);
    }
  }

  else
  {
    if (__len > 1)
    {
      if (__len == 2)
      {
        v2 = "Unicast Update";
      }

      else if (__len == 3)
      {
        v2 = "Unicast Stop Disable";
      }

      else
      {
        v2 = "Unicast Stop Release";
      }

      return sub_100007E30(a1, v2);
    }

    if (!__len)
    {
      v2 = "Unicast Start";
      return sub_100007E30(a1, v2);
    }

    if (__len == 1)
    {
      v2 = "Unicast Join";
      return sub_100007E30(a1, v2);
    }
  }

  return sub_100617064(a1, "Unknown Procedure 0%x", __len);
}

uint64_t *sub_100616A38@<X0>(uint64_t *__return_ptr a1@<X8>, size_t __len@<X0>)
{
  switch(__len)
  {
    case 0:
      v2 = "Success";
      goto LABEL_29;
    case 1:
      v2 = "Context Type Available Subset";
      goto LABEL_29;
    case 2:
      v2 = "Context Type Unavailable";
      goto LABEL_29;
    case 3:
      v2 = "Context Type Unsupported";
      goto LABEL_29;
    case 4:
      v2 = "Sampling Frequncy Unsupported";
      goto LABEL_29;
    case 5:
      v2 = "Framing Duration Unsupported";
      goto LABEL_29;
    case 6:
      v2 = "Octets Per Codec Frame Unsupported";
      goto LABEL_29;
    case 7:
      v2 = "Codec Frame Blocks Per SDU Unsupported";
      goto LABEL_29;
    case 8:
      v2 = "VS Codec ID Unsupported";
      goto LABEL_29;
    case 9:
      v2 = "Codec ID Unsupported";
      goto LABEL_29;
    case 10:
      v2 = "Invalid Codec Config Setting";
      goto LABEL_29;
    case 11:
      v2 = "No Available PAC Sink Record";
      goto LABEL_29;
    case 12:
      v2 = "No Available PAC Source Record";
      goto LABEL_29;
    case 13:
      v2 = "Audio Location Unsupported";
      goto LABEL_29;
    case 14:
      v2 = "Unlikely Error";
      goto LABEL_29;
    case 15:
      v2 = "Procedure Timeout";
      goto LABEL_29;
    case 16:
      v2 = "No Audio Config Set";
      goto LABEL_29;
    case 17:
      v2 = "CIG Already Set up";
      goto LABEL_29;
    case 18:
      v2 = "No CIS to configure";
      goto LABEL_29;
    case 19:
      v2 = "Invalid CIG";
      goto LABEL_29;
    case 20:
      v2 = "Invalid CIS";
      goto LABEL_29;
    case 21:
      v2 = "CIG ID Mismatch";
      goto LABEL_29;
    case 22:
      v2 = "ALL CIS Already established";
      goto LABEL_29;
    case 23:
      v2 = "No available CIS in CIG";
      goto LABEL_29;
    case 24:
      v2 = "QOS Parameter mismatch";
      goto LABEL_29;
    case 25:
      v2 = "Set member already locked";
      goto LABEL_29;
    case 26:
      v2 = "CAP Procedure already in Progress";
LABEL_29:
      result = sub_100007E30(a1, v2);
      break;
    default:
      result = sub_100617064(a1, "Unknown Error 0%x", __len);
      break;
  }

  return result;
}

void sub_100616BC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_10004DFB4(uu2, *(a1 + 32));
  v2 = sub_10004E34C(v1 + 264, uu2);
  if (v1 + 272 != v2)
  {
    sub_1005FF180(*(v2 + 48));
  }
}

void sub_100616C3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a2 + 408);
  sub_10004DFB4(uu2, v7);
  v8 = sub_10004E34C(a1 + 264, uu2);
  if (a1 + 272 == v8)
  {
    v9 = qword_100BCEA50;
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_100853118(v7, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    sub_1005FEEA8(*(v8 + 48), a3, a4);
  }
}

void sub_100616D44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSUUID alloc];
  v5 = [v3 objectForKeyedSubscript:@"kLEAudioXPCMsgArgSessionID"];
  v6 = [v4 initWithUUIDString:v5];

  v7 = [v3 objectForKeyedSubscript:@"kLEAudioXPCMsgArgDirection"];
  v8 = [v7 BOOLValue];

  v9 = [v3 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCigID"];
  v10 = [v9 unsignedCharValue];

  v11 = [v3 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCisID"];
  v12 = [v11 unsignedCharValue];

  sub_10004DFB4(uu2, v6);
  v13 = sub_10004E34C(a1 + 264, uu2);
  if (a1 + 272 == v13)
  {
    v14 = qword_100BCEA50;
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_100853118(v6, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    sub_1005FF044(*(v13 + 48), v8, v10, v12);
  }
}

void sub_100616F30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSUUID alloc];
  v5 = [v3 objectForKeyedSubscript:@"kLEAudioXPCMsgArgSessionID"];
  v6 = [v4 initWithUUIDString:v5];

  sub_10004DFB4(uu2, v6);
  v7 = sub_10004E34C(a1 + 264, uu2);
  if (a1 + 272 == v7)
  {
    v8 = qword_100BCEA50;
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_100853118(v6, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    sub_1005FEF4C(*(v7 + 48));
  }
}

void *sub_100617064(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void *sub_10061712C(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_1006171D0();
  }

  return result;
}

void sub_10061723C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100617254(uint64_t a1)
{
  *a1 = off_100B023C8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_100044BBC((a1 + 40));
  *(a1 + 106) = 0;
  *(a1 + 108) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 272) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 280) = 0;
  *(a1 + 104) = getpid();
  v3 = 4294901760;
  v4 = &v3;
  sub_1000448C8(a1 + 144, &v3, &unk_1008A9BD0, &v4)[5] = 4294901760;
  v3 = 4294901762;
  v4 = &v3;
  sub_1000448C8(a1 + 144, &v3, &unk_1008A9BD0, &v4)[5] = 4294901760;
  v3 = 4294901761;
  v4 = &v3;
  sub_1000448C8(a1 + 144, &v3, &unk_1008A9BD0, &v4)[5] = 4294901760;
  return a1;
}

void sub_100617424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, char **a16, void **a17)
{
  sub_10000CEDC(a10, *v24);
  sub_10000CEDC(v23, *v22);
  sub_10000CEDC(a11, *v21);
  sub_10000CEDC(a12, *v20);
  sub_10000CEDC(a13, *v18);
  sub_10000CEDC(v19, *a14);
  sub_10004B61C(a15, *a16);
  sub_10007A068(v17 + 40);
  v26 = *a17;
  if (*a17)
  {
    *(v17 + 24) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006174BC(uint64_t a1)
{
  *a1 = off_100B023C8;
  sub_100618040(a1);
  sub_10000CEDC(a1 + 264, *(a1 + 272));
  sub_10000CEDC(a1 + 240, *(a1 + 248));
  sub_10000CEDC(a1 + 216, *(a1 + 224));
  sub_10000CEDC(a1 + 192, *(a1 + 200));
  sub_10000CEDC(a1 + 168, *(a1 + 176));
  sub_10000CEDC(a1 + 144, *(a1 + 152));
  sub_10004B61C(a1 + 120, *(a1 + 128));
  sub_10007A068(a1 + 40);
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10061756C(_Unwind_Exception *a1)
{
  sub_10000CEDC(v1 + 264, *(v1 + 272));
  sub_10000CEDC(v1 + 240, *(v1 + 248));
  sub_10000CEDC(v1 + 216, *(v1 + 224));
  sub_10000CEDC(v1 + 192, *(v1 + 200));
  sub_10000CEDC(v1 + 168, *(v1 + 176));
  sub_10000CEDC(v1 + 144, *(v1 + 152));
  sub_10004B61C(v1 + 120, *(v1 + 128));
  sub_10007A068(v1 + 40);
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1006175E8(uint64_t a1)
{
  sub_1006174BC(a1);

  operator delete();
}

uint64_t sub_100617620(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 40);
  if ((*(a1 + 108) & 1) == 0)
  {
    *(a1 + 108) = 1;
    sub_10000801C(v5);
    sub_10000E92C();
    sub_100017E6C();
    if (qword_100B54220 != -1)
    {
      sub_100853184();
    }

    sub_1003C5964(qword_100B54218, v2);
    if (qword_100B50910 != -1)
    {
      sub_1008531AC();
    }

    sub_1005BAF88(off_100B50908);
    if (qword_100B540D0 != -1)
    {
      sub_1008531D4();
    }

    (**off_100B540C8)(off_100B540C8);
    if (qword_100B508F0 != -1)
    {
      sub_1008531FC();
    }

    (**off_100B508E8)(off_100B508E8);
    if (qword_100B508A0 != -1)
    {
      sub_100853224();
    }

    (**off_100B50898)(off_100B50898);
    if (qword_100B512E8 != -1)
    {
      sub_10085324C();
    }

    (**off_100B512E0)(off_100B512E0);
    if (qword_100B50F88 != -1)
    {
      sub_100853274();
    }

    (**off_100B50F80)(off_100B50F80);
    if (qword_100B50F68 != -1)
    {
      sub_10085329C();
    }

    (**off_100B50F60)(off_100B50F60);
    if (qword_100B50AC0 != -1)
    {
      sub_1008532C4();
    }

    (**off_100B50AB8)(off_100B50AB8);
    if (qword_100B50DB8 != -1)
    {
      sub_1008532EC();
    }

    (*(*off_100B50DB0 + 72))(off_100B50DB0);
    if (qword_100B54080 != -1)
    {
      sub_100853314();
    }

    (**off_100B54078)(off_100B54078);
    if (qword_100B54100 != -1)
    {
      sub_10085333C();
    }

    sub_1007E651C(qword_100B540F8, v3);
    if (qword_100B50AA0 != -1)
    {
      sub_100853364();
    }

    (**off_100B50A98)(off_100B50A98);
    if (qword_100B508E0 != -1)
    {
      sub_10085338C();
    }

    (**off_100B508D8)(off_100B508D8);
    if (qword_100B54670 != -1)
    {
      sub_1008533B4();
    }

    sub_100587254(qword_100B54668);
  }

  return sub_1000088CC(v5);
}

void sub_10061800C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100618040(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 40);
  if (*(a1 + 108) == 1)
  {
    sub_10000801C(v4);
    if (qword_100B512C8 != -1)
    {
      sub_100853684();
    }

    (*(*off_100B512C0 + 8))(off_100B512C0);
    if (qword_100B50940 != -1)
    {
      sub_1008535E4();
    }

    sub_10061C96C(off_100B50938);
    if (qword_100B54380 != -1)
    {
      sub_100853594();
    }

    sub_10068EB50(off_100B54378);
    if (qword_100B50AA0 != -1)
    {
      sub_100853364();
    }

    (*(*off_100B50A98 + 8))(off_100B50A98);
    if (qword_100B54080 != -1)
    {
      sub_100853314();
    }

    (*(*off_100B54078 + 8))(off_100B54078);
    if (qword_100B50DB8 != -1)
    {
      sub_1008532EC();
    }

    (*(*off_100B50DB0 + 80))(off_100B50DB0);
    if (qword_100B50AC0 != -1)
    {
      sub_1008532C4();
    }

    (*(*off_100B50AB8 + 8))(off_100B50AB8);
    if (qword_100B50F88 != -1)
    {
      sub_100853274();
    }

    (*(*off_100B50F80 + 8))(off_100B50F80);
    if (qword_100B50F68 != -1)
    {
      sub_10085329C();
    }

    (*(*off_100B50F60 + 8))(off_100B50F60);
    if (qword_100B512E8 != -1)
    {
      sub_10085324C();
    }

    (*(*off_100B512E0 + 8))(off_100B512E0);
    if (qword_100B508F0 != -1)
    {
      sub_1008531FC();
    }

    (*(*off_100B508E8 + 8))(off_100B508E8);
    if (qword_100B508A0 != -1)
    {
      sub_100853224();
    }

    (*(*off_100B50898 + 8))(off_100B50898);
    if (qword_100B540D0 != -1)
    {
      sub_1008531D4();
    }

    (*(*off_100B540C8 + 8))(off_100B540C8);
    if (qword_100B508E0 != -1)
    {
      sub_10085338C();
    }

    (*(*off_100B508D8 + 8))(off_100B508D8);
    if (qword_100B51078 != -1)
    {
      sub_10085347C();
    }

    sub_1007A5BD4(off_100B51070);
    if (qword_100B508D0 != -1)
    {
      sub_1008533DC();
    }

    (*(*off_100B508C8 + 8))(off_100B508C8);
    if (qword_100B50F78 != -1)
    {
      sub_10085360C();
    }

    sub_10057F3F8(qword_100B50F70);
    if (qword_100B54220 != -1)
    {
      sub_100853184();
    }

    sub_1003C61E4(qword_100B54218);
    if (qword_100B54CA0 != -1)
    {
      sub_10085356C();
    }

    sub_1006D1F14(off_100B54C98);
    if (qword_100B51098 != -1)
    {
      sub_100853774();
    }

    sub_100489A80(qword_100B51090, v2);
    sub_100007FB8(v4);
    *(a1 + 108) = 0;
  }

  return sub_1000088CC(v4);
}

BOOL sub_100618524(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 40);
  v4 = *(a1 + 120);
  v5 = (a1 + 128);
  if (v4 == (a1 + 128))
  {
    v7 = 0;
  }

  else
  {
    do
    {
      v6 = v4[7];
      v7 = v6 == a2;
      if (v6 == a2)
      {
        break;
      }

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v5);
  }

  sub_1000088CC(v12);
  return v7;
}

unint64_t sub_1006185D8(void *a1, unint64_t a2)
{
  v30[1] = 0;
  v31 = a2;
  v30[0] = 0;
  sub_100007F88(v30, (a1 + 5));
  v4 = sub_1000117DC(a1, a2);
  if (a2)
  {
    v5 = v4;
    __p[0] = &v31;
    v6 = sub_100044998((a1 + 21), &v31, &unk_1008A9BD0, __p)[5];
    if (v6)
    {
      v29 = 0;
      v7 = a1 + 19;
      v8 = v6;
      while (++v8 < (v6 | 0xFFFF))
      {
        v9 = *v7;
        if (*v7)
        {
          v10 = a1 + 19;
          do
          {
            v11 = v9[4];
            v12 = v11 >= v8;
            v13 = v11 < v8;
            if (v12)
            {
              v10 = v9;
            }

            v9 = v9[v13];
          }

          while (v9);
          if (v10 != v7 && v8 >= v10[4])
          {
            continue;
          }
        }

        v29 = v8;
        v14 = v31;
        __p[0] = &v29;
        sub_1000448C8((a1 + 18), &v29, &unk_1008A9BD0, __p)[5] = v14;
        v15 = v29;
        __p[0] = &v31;
        sub_100044998((a1 + 21), &v31, &unk_1008A9BD0, __p)[5] = v15;
LABEL_37:
        v16 = v29;
        goto LABEL_38;
      }

      v17 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        if (v5)
        {
          sub_100018384(v5, __p);
          if (v28 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136446210;
          v33 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Handles for session %{public}s wrapped!", buf, 0xCu);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v33 = "(NULL)";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Handles for session %{public}s wrapped!", buf, 0xCu);
        }
      }

      v19 = v31;
      v20 = v31;
      while (++v20 < v6)
      {
        v21 = *v7;
        if (*v7)
        {
          v22 = a1 + 19;
          do
          {
            v23 = v21[4];
            v12 = v23 >= v20;
            v24 = v23 < v20;
            if (v12)
            {
              v22 = v21;
            }

            v21 = v21[v24];
          }

          while (v21);
          if (v22 != v7 && v20 >= v22[4])
          {
            continue;
          }
        }

        v29 = v20;
LABEL_36:
        __p[0] = &v29;
        sub_1000448C8((a1 + 18), &v29, &unk_1008A9BD0, __p)[5] = v19;
        goto LABEL_37;
      }

      if (v29)
      {
        goto LABEL_36;
      }

      v26 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        if (v5)
        {
          sub_100018384(v5, __p);
          sub_1008539A0();
        }

        else
        {
          sub_1008539F4(buf, v26);
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10085396C();
    }
  }

  v16 = 0;
LABEL_38:
  sub_1000088CC(v30);
  return v16;
}

void sub_100618918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_100618944(uint64_t a1, unint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 40);
  if (a2)
  {
    v6 = *(a1 + 152);
    v5 = a1 + 152;
    v4 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = v5;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 == v5 || *(v7 + 32) > a2)
    {
LABEL_10:
      v7 = v5;
    }

    v11 = v7 != v5;
  }

  else
  {
    v11 = 0;
  }

  sub_1000088CC(v13);
  return v11;
}

uint64_t sub_1006189DC(uint64_t a1, unint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 40);
  if (a2)
  {
    v6 = *(a1 + 152);
    v5 = (a1 + 152);
    v4 = v6;
    if (v6)
    {
      v7 = v5;
      do
      {
        v8 = *(v4 + 32);
        v9 = v8 >= a2;
        v10 = v8 < a2;
        if (v9)
        {
          v7 = v4;
        }

        v4 = *(v4 + 8 * v10);
      }

      while (v4);
      if (v7 != v5 && v7[4] <= a2)
      {
        sub_10002717C(v5 - 1, v7);
        operator delete(v7);
      }
    }
  }

  return sub_1000088CC(v12);
}

uint64_t sub_100618A78(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v30[1] = 0;
  v31 = a2;
  v30[0] = 0;
  sub_100007F88(v30, a1 + 40);
  if (a2)
  {
    if (*(a1 + 112) == a2)
    {
      v22 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100853A9C(a2, v22);
      }
    }

    else
    {
      v10 = *(a1 + 200);
      v9 = a1 + 200;
      v8 = v10;
      if (!v10)
      {
        goto LABEL_11;
      }

      v11 = v9;
      do
      {
        v12 = *(v8 + 32);
        v13 = v12 >= a2;
        v14 = v12 < a2;
        if (v13)
        {
          v11 = v8;
        }

        v8 = *(v8 + 8 * v14);
      }

      while (v8);
      if (v11 == v9 || *(v11 + 32) > a2)
      {
LABEL_11:
        v11 = v9;
      }

      if (qword_100B50B88 != -1)
      {
        sub_100853A74();
      }

      v15 = sub_1000117DC(qword_100B50B80, a2);
      v16 = v15;
      if (v11 == v9)
      {
        *buf = &v31;
        v23 = sub_10061AF9C(v9 - 8, &v31, &unk_1008A9BD0, buf);
        *(v23 + 10) = a3;
        *(v23 + 11) = a4;
        v24 = qword_100BCE8D8;
        if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
        {
          return sub_1000088CC(v30);
        }

        v25 = v31;
        sub_100018384(v16, __p);
        if (v29 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        *buf = 134218754;
        *&buf[4] = v25;
        v33 = 1024;
        v34 = a3;
        v35 = 1024;
        v36 = a4;
        v37 = 2082;
        v38 = v26;
        v19 = "Adding handle-identifier mapping for handle : %p \t with pid %d, pidVersion %d for session %{public}s";
        v20 = v24;
        v21 = OS_LOG_TYPE_INFO;
      }

      else
      {
        if (!v15)
        {
          return sub_1000088CC(v30);
        }

        v17 = qword_100BCE8D8;
        if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          return sub_1000088CC(v30);
        }

        sub_100018384(v16, __p);
        if (v29 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        *buf = 134218754;
        *&buf[4] = a2;
        v33 = 1024;
        v34 = a3;
        v35 = 1024;
        v36 = a4;
        v37 = 2082;
        v38 = v18;
        v19 = "Handle identifier entry already exists. Don't add handle : %p \t with pid %d, pidVersion %d for session %{public}s";
        v20 = v17;
        v21 = OS_LOG_TYPE_DEFAULT;
      }

      _os_log_impl(&_mh_execute_header, v20, v21, v19, buf, 0x22u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return sub_1000088CC(v30);
}

void sub_100618D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100618D34(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 40);
  if (!a2)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v10 = *(a1 + 200);
  v9 = a1 + 200;
  v8 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v9;
  do
  {
    v12 = *(v8 + 32);
    v13 = v12 >= a2;
    v14 = v12 < a2;
    if (v13)
    {
      v11 = v8;
    }

    v8 = *(v8 + 8 * v14);
  }

  while (v8);
  if (v11 == v9 || *(v11 + 32) > a2 || *(v11 + 40) != a3 || *(v11 + 44) != a4)
  {
LABEL_13:
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v20 = a2;
      v21 = 1024;
      v22 = a3;
      v23 = 1024;
      v24 = a4;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid handle identifier mapping found for handle %p with pid %d, pidVersion %d", buf, 0x18u);
    }

    goto LABEL_15;
  }

  v15 = 1;
LABEL_16:
  sub_1000088CC(v18);
  return v15;
}

uint64_t sub_100618E84(uint64_t a1, unint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 40);
  if (a2)
  {
    v6 = *(a1 + 200);
    v5 = (a1 + 200);
    v4 = v6;
    if (v6)
    {
      v7 = v5;
      do
      {
        v8 = *(v4 + 32);
        v9 = v8 >= a2;
        v10 = v8 < a2;
        if (v9)
        {
          v7 = v4;
        }

        v4 = *(v4 + 8 * v10);
      }

      while (v4);
      if (v7 != v5 && v7[4] <= a2)
      {
        sub_10002717C(v5 - 1, v7);
        operator delete(v7);
      }
    }
  }

  return sub_1000088CC(v12);
}

BOOL sub_100618F20(uint64_t a1, unint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 40);
  v4 = a1 + 272;
  v5 = *(a1 + 272);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 272;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == v4 || *(v6 + 32) > a2)
  {
LABEL_9:
    v6 = a1 + 272;
  }

  v10 = v6 != v4;
  sub_1000088CC(v12);
  return v10;
}

uint64_t sub_100618FB0(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 40);
  if (!a2)
  {
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v10 = *(a1 + 224);
  v9 = a1 + 224;
  v8 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v9;
  do
  {
    v12 = *(v8 + 32);
    v13 = v12 >= a2;
    v14 = v12 < a2;
    if (v13)
    {
      v11 = v8;
    }

    v8 = *(v8 + 8 * v14);
  }

  while (v8);
  if (v11 == v9 || *(v11 + 32) > a2 || *(v11 + 40) != a3 || *(v11 + 44) != a4)
  {
LABEL_13:
    if (qword_100B50B88 != -1)
    {
      sub_100853A74();
    }

    v16 = sub_1000117DC(qword_100B50B80, a2);
    if (v16)
    {
      v17 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(v16, __p);
        if (v21 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        *buf = 136446722;
        v24 = v19;
        v25 = 1024;
        v26 = a3;
        v27 = 1024;
        v28 = a4;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid SessionProcessIdentifierMapping for session %{public}s with pid %d, pidVersion %d", buf, 0x18u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    goto LABEL_17;
  }

  v15 = 1;
LABEL_18:
  sub_1000088CC(v22);
  return v15;
}

void sub_100619164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100619184(uint64_t a1, unint64_t a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 40);
  if (a2)
  {
    v6 = *(a1 + 224);
    v5 = (a1 + 224);
    v4 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = v5;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != v5 && v7[4] <= a2)
    {
      sub_10002717C(v5 - 1, v7);
      operator delete(v7);
      a2 = 1;
    }

    else
    {
LABEL_10:
      if (qword_100B50B88 != -1)
      {
        sub_100853A74();
      }

      v11 = sub_1000117DC(qword_100B50B80, a2);
      if (v11 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(v11, v13);
        sub_100853B74();
      }

      a2 = 0;
    }
  }

  sub_1000088CC(v14);
  return a2;
}

void sub_1006192C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006192E4(uint64_t a1, unint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 272);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = a1 + 272;
    do
    {
      v6 = *(v4 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * v8);
    }

    while (v4);
    if (v5 != a1 + 272 && *(v5 + 32) <= a2)
    {
      if (qword_100B50B88 != -1)
      {
        sub_100853A74();
      }

      v10 = sub_1000117DC(qword_100B50B80, a2);
      if (v10 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(v10, v11);
        sub_100853BC8();
      }
    }

    else
    {
LABEL_10:
      v11[0] = a2;
      sub_10061B06C(a1 + 264, v11, v11);
    }
  }

  return sub_1000088CC(v12);
}

void sub_100619414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100619438(uint64_t a1, unint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 272);
    if (v4)
    {
      v5 = (a1 + 272);
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= a2;
        v8 = v6 < a2;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != (a1 + 272) && v5[4] <= a2)
      {
        sub_10002717C((a1 + 264), v5);
        operator delete(v5);
      }
    }
  }

  return sub_1000088CC(v10);
}

uint64_t sub_1006194D8(uint64_t a1, unint64_t a2, int a3)
{
  v12[1] = 0;
  v13 = a2;
  v12[0] = 0;
  sub_100007F88(v12, a1 + 40);
  if (a2)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100853A74();
    }

    v6 = sub_1000117DC(qword_100B50B80, a2);
    if (v6)
    {
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v6, __p);
        if (v11 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *buf = 67109634;
        *&buf[4] = a3;
        v15 = 2048;
        v16 = a2;
        v17 = 2082;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local device event mask %x for handle : %p \t for session %{public}s", buf, 0x1Cu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *buf = &v13;
      *(sub_10061B138(a1 + 240, &v13, &unk_1008A9BD0, buf) + 10) = a3;
    }
  }

  return sub_1000088CC(v12);
}

void sub_100619654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100619674(uint64_t a1, unint64_t a2)
{
  v13[1] = 0;
  v14 = a2;
  v13[0] = 0;
  sub_100007F88(v13, a1 + 40);
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100853C1C();
    }

    goto LABEL_16;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100853A74();
  }

  if (!sub_1000117DC(qword_100B50B80, a2))
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 248);
  v5 = a1 + 248;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || *(v7 + 32) > a2)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v15 = &v14;
  v11 = *(sub_10061B138(v5 - 8, &v14, &unk_1008A9BD0, &v15) + 10);
LABEL_17:
  sub_1000088CC(v13);
  return v11;
}

void sub_100619780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006197A0(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Session Manager ------------------", buf, 2u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 106);
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Session count (lifetime): %d", buf, 8u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Current sessions:", buf, 2u);
  }

  v4 = *(a1 + 120);
  if (v4 != (a1 + 128))
  {
    do
    {
      sub_100614EDC(v4[7]);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (a1 + 128));
  }

  v39 = 0;
  v8 = sub_10000E92C();
  sub_100007E30(buf, "BTSessionManager");
  sub_100007E30(__p, "StateDumpHandleMapLogging");
  v9 = (*(*v8 + 72))(v8, buf, __p, &v39);
  v10 = v39;
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = v9 & v10;
  if ((v42[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v11)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: External handle map:", buf, 2u);
    v12 = qword_100BCE8D8;
  }

  v13 = *(a1 + 144);
  if (v13 != (a1 + 152))
  {
    do
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13[4];
        v15 = v13[5];
        *buf = 134218240;
        *&buf[4] = v14;
        v41 = 2048;
        *v42 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:    %p → %p", buf, 0x16u);
        v12 = qword_100BCE8D8;
      }

      v16 = v13[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v13[2];
          v7 = *v17 == v13;
          v13 = v17;
        }

        while (!v7);
      }

      v13 = v17;
    }

    while (v17 != (a1 + 152));
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: Handle identifier map:", buf, 2u);
    v12 = qword_100BCE8D8;
  }

  v18 = *(a1 + 192);
  if (v18 != (a1 + 200))
  {
    do
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18[4];
        v20 = *(v18 + 10);
        v21 = *(v18 + 11);
        *buf = 134218496;
        *&buf[4] = v19;
        v41 = 1024;
        *v42 = v20;
        *&v42[4] = 1024;
        *&v42[6] = v21;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:    %p → %d, %u", buf, 0x18u);
        v12 = qword_100BCE8D8;
      }

      v22 = v18[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v18[2];
          v7 = *v23 == v18;
          v18 = v23;
        }

        while (!v7);
      }

      v18 = v23;
    }

    while (v23 != (a1 + 200));
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: Session-Process identifier map:", buf, 2u);
    v12 = qword_100BCE8D8;
  }

  v24 = *(a1 + 216);
  if (v24 != (a1 + 224))
  {
    do
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24[4];
        v26 = *(v24 + 10);
        v27 = *(v24 + 11);
        *buf = 134218496;
        *&buf[4] = v25;
        v41 = 1024;
        *v42 = v26;
        *&v42[4] = 1024;
        *&v42[6] = v27;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:    %p → %d, %u", buf, 0x18u);
        v12 = qword_100BCE8D8;
      }

      v28 = v24[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v24[2];
          v7 = *v29 == v24;
          v24 = v29;
        }

        while (!v7);
      }

      v24 = v29;
    }

    while (v29 != (a1 + 224));
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: Handle-Masked Local device events map:", buf, 2u);
  }

  v30 = *(a1 + 240);
  v31 = (a1 + 248);
  if (v30 != (a1 + 248))
  {
    v32 = qword_100BCE8D8;
    do
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v30[4];
        v34 = *(v30 + 10);
        *buf = 134218240;
        *&buf[4] = v33;
        v41 = 1024;
        *v42 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "statedump:    %p → %u", buf, 0x12u);
        v32 = qword_100BCE8D8;
      }

      v35 = v30[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v30[2];
          v7 = *v36 == v30;
          v30 = v36;
        }

        while (!v7);
      }

      v30 = v36;
    }

    while (v36 != v31);
  }
}

void sub_100619D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100619F40(_Unwind_Exception *a1)
{
  v4 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1003C95E8(v2, *(v1 + 16));

  operator delete();
}

void *sub_10061AF9C(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *sub_10061B06C(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *sub_10061B138(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_10061B20C(uint64_t a1)
{
  *a1 = off_100B02918;
  *(a1 + 8) = off_100B02AF0;
  *(a1 + 16) = off_100B02B20;
  *(a1 + 24) = off_100B02B60;
  *(a1 + 32) = &off_100B02BF0;
  *(a1 + 40) = &off_100B02C08;
  *(a1 + 48) = &off_100B02C20;
  *(a1 + 56) = &off_100B02C38;
  *(a1 + 64) = &off_100B02C50;
  *(a1 + 72) = off_100B02C68;
  *(a1 + 80) = &off_100B02C90;
  *(a1 + 88) = off_100B02CA8;
  *(a1 + 96) = &off_100B02CC8;
  *(a1 + 104) = &off_100B02CE0;
  *(a1 + 112) = &off_100B02CF8;
  *(a1 + 120) = &off_100B02D10;
  *(a1 + 128) = off_100B02D28;
  *(a1 + 136) = off_100B02D88;
  *(a1 + 144) = off_100B02DB8;
  *(a1 + 160) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  sub_100044BBC((a1 + 280));
  *(a1 + 344) = 0;
  *(a1 + 363) = 0;
  *(a1 + 347) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0x404E000000000000;
  *(a1 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 404) = 0;
  *(a1 + 834) = 0;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 3;
  *(a1 + 877) = 0;
  *(a1 + 880) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1216) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 1240) = a1 + 1248;
  *(a1 + 1280) = 0u;
  *(a1 + 1272) = a1 + 1280;
  *(a1 + 1304) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1320) = 0u;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, -1);
  *(a1 + 256) = dispatch_queue_create("com.apple.AudioLinkManagerSerialQueue", v2);
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
  *(a1 + 264) = dispatch_queue_create("com.apple.AudioLinkManagerLowLatencyQueue", v3);
  mach_timebase_info((a1 + 272));
  *(a1 + 1132) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 876) = 1;
  *(a1 + 928) = 1;
  *(a1 + 936) = 0;
  *(a1 + 1212) = 0;
  *(a1 + 1196) = 0;
  *(a1 + 1204) = 0;
  *(a1 + 1188) = 0;
  *(a1 + 940) = -25444;
  *(a1 + 946) = -25444;
  *(a1 + 952) = -25444;
  *(a1 + 184) = 0;
  *(a1 + 958) = 0;
  operator new();
}

void sub_10061B72C(unint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100853C50();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  v2 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10061B868;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v2, block);
  v5 = sub_10000C7D0(v3, v4);
  sub_1004132C4(v5, a1);
  if (qword_100B50910 != -1)
  {
    sub_100853C64();
  }

  sub_1005BB5D4(off_100B50908, a1 + 128);
  if (qword_100B540B0 != -1)
  {
    sub_100853C8C();
  }

  sub_1006C02BC(qword_100B540A8);
  if (_os_feature_enabled_impl())
  {
    if (qword_100B50930 != -1)
    {
      sub_100853CB4();
    }

    sub_1000F2998(off_100B50928);
  }
}

uint64_t sub_10061B868(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B50AD0 != -1)
  {
    sub_100853CDC();
  }

  sub_10063B8B0(off_100B50AC8 + 328, v1 + 72);
  v4 = sub_10000C798(v2, v3);
  v5 = (*(*v4 + 152))(v4);
  if ((v5 & 1) != 0 || (v7 = sub_10000C798(v5, v6), v8 = (*(*v7 + 160))(v7), v8))
  {
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Current platform supports enhanced diversity, subscribing to device orientation update", v31, 2u);
    }

    v11 = sub_100017E6C();
    sub_10063BB10(v11 + 864, v1 + 64);
    v12 = *sub_100017E6C();
    v13 = (*(v12 + 264))();
    *(v1 + 880) = v13;
    v14 = qword_100BCE8D0;
    if (v13)
    {
      v15 = v13;
      v8 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        v31[0] = 67109120;
        v31[1] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device orientation initialized to %u", v31, 8u);
      }
    }

    else
    {
      v8 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        sub_100853CF0();
      }
    }
  }

  v16 = sub_10000C798(v8, v9);
  if ((*(*v16 + 840))(v16, 0))
  {
    v17 = sub_100017E6C();
    sub_10063BDB0(v17 + 904, v1 + 80);
    v18 = sub_100017E6C();
    (*(*v18 + 224))(v18, *(v1 + 216) + 2);
  }

  v19 = sub_100017E6C();
  sub_10063C050(v19 + 1064, v1 + 104);
  v20 = sub_100017E6C();
  sub_10060EA48(v20 + 1264, v1 + 120);
  v21 = sub_100017E6C();
  (*(*v21 + 208))(v21, *(v1 + 216) + 4);
  v22 = sub_100017E6C();
  (*(*v22 + 232))(v22, v1 + 928);
  if (qword_100B50AE0 != -1)
  {
    sub_100853D2C();
  }

  sub_10063C2F0(qword_100B50AD8 + 432, v1 + 24);
  if (qword_100B50AC0 != -1)
  {
    sub_100853D54();
  }

  sub_1005907D4(off_100B50AB8, v1 + 40);
  if (qword_100B50B88 != -1)
  {
    sub_100853D7C();
  }

  sub_10051ABE0(qword_100B50B80 + 8, v1 + 88);
  if (_os_feature_enabled_impl())
  {
    if (qword_100B50B60 != -1)
    {
      sub_100853DA4();
    }

    sub_100376DE0(qword_100B50B58, v1 + 144);
  }

  if (*(v1 + 344) == 1)
  {
    sub_10061BD18(v1, v23);
    sub_10061C1F4(v1);
    v26 = sub_10000C798(v24, v25);
    if ((*(*v26 + 840))(v26, 1))
    {
      v27 = sub_100017E6C();
      sub_10063C550(v27 + 1024, v1 + 96);
      v28 = sub_100017E6C();
      (*(*v28 + 248))(v28);
      v29 = sub_100017E6C();
      sub_10063C7F0(v29 + 1104, v1 + 112);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100853DCC();
  }

  *(v1 + 1296) = 0;
  *(v1 + 1264) = 0;
  *(v1 + 1312) = 0xFFFFFFFF00000000;
  std::string::assign((v1 + 1320), "");
  notify_register_check("com.apple.bluetooth.GuestConnected", (v1 + 1316));
  std::string::assign((v1 + 1216), "Off");
  *(v1 + 1184) = -1;
  return notify_register_check("com.apple.bluetooth.SmartRoutingDisconnectReason", (v1 + 1184));
}

void sub_10061BD18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 144))(v3);
  if (!v4)
  {
    goto LABEL_37;
  }

  v6 = sub_10000C798(v4, v5);
  if ((*(*v6 + 416))(v6))
  {
    v7 = sub_10000E92C();
    v4 = (*(*v7 + 320))(v7);
    if (v4)
    {
      v8 = sub_10000E92C();
      v4 = (*(*v8 + 328))(v8);
    }

    goto LABEL_37;
  }

  v9 = sub_100635718();
  v11 = sub_10000C798(v9, v10);
  v12 = (*(*v11 + 456))(v11);
  if (v12)
  {
    v14 = sub_10000E92C();
    sub_100007E30(buf, "MRC");
    sub_100007E30(__p, "DisableMRC");
    (*(*v14 + 72))(v14, buf, __p, a1 + 1144);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    v15 = sub_10000E92C();
    sub_100007E30(buf, "MRC");
    sub_100007E30(__p, "ForceGlobalMRCLogs");
    v16 = (*(*v15 + 72))(v15, buf, __p, a1 + 1145);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    if (*(a1 + 1144) == 1)
    {
      v12 = sub_1006349F8(v16, 1, 0, 0);
      if (!v12)
      {
        v17 = qword_100BCE8D0;
        v12 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          *buf = 0;
          v18 = "Global MRC disabled for this platform";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
        }
      }
    }

    else
    {
      v12 = sub_1006349F8(v16, 1, 0, 1);
      if (!v12)
      {
        v17 = qword_100BCE8D0;
        v12 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          *buf = 0;
          v18 = "Global MRC enabled for this platform";
          goto LABEL_21;
        }
      }
    }

    if (*(a1 + 1145) == 1)
    {
      v12 = sub_1006349F8(v12, 2, 0, 1);
      if (!v12)
      {
        v19 = qword_100BCE8D0;
        v12 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Global MRC Log enabled for this platform", buf, 2u);
        }
      }
    }
  }

  v20 = sub_10000C7D0(v12, v13);
  v21 = *(v20 + 800);
  if (v21 <= 0x13)
  {
    sub_10063586C(v20, 1);
  }

  if (sub_1000271F0() == 28 || (v22 = sub_1000271F0(), v22 == 23))
  {
    v22 = sub_1006359E4(a1, 0, 3);
  }

  v24 = sub_10000C798(v22, v23);
  v4 = (*(*v24 + 160))(v24);
  if ((v4 & 1) != 0 || v21 >= 0xBB8 && (v26 = sub_10000C798(v4, v5), v4 = (*(*v26 + 392))(v26), v4))
  {
    v4 = sub_1006349F8(v4, 1, 0, 1);
    if (!v4)
    {
      v25 = qword_100BCE8D0;
      v4 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Global MRC enabled for this platform", buf, 2u);
      }
    }
  }

LABEL_37:
  v27 = sub_10000C798(v4, v5);
  if ((*(*v27 + 152))(v27))
  {
    v28 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Current platform supports enhanced diversity", buf, 2u);
    }
  }
}

void sub_10061C1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10061C1F4(uint64_t a1)
{
  if (*(a1 + 347) == 1)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
    {
      sub_100853E08();
    }
  }

  else
  {
    v26 = 2;
    v25 = 5;
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    v21[0] = 0;
    v21[1] = 0;
    v22 = 0;
    v2 = sub_10000E92C();
    sub_100007E30(buf, "LinkAdaptiveBitrateAAC");
    sub_100007E30(__p, "configs");
    (*(*v2 + 88))(v2, buf, __p, &v26);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(*buf);
    }

    v3 = v26;
    if (v26 >= 2u)
    {
      v3 = 2;
    }

    v26 = v3;
    v4 = sub_10000E92C();
    sub_100007E30(buf, "LinkAdaptiveBitrateAAC");
    sub_100007E30(__p, "bitrateCount");
    (*(*v4 + 88))(v4, buf, __p, &v25);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(*buf);
    }

    v5 = sub_10000E92C();
    sub_100007E30(buf, "LinkAdaptiveBitrateAAC");
    sub_100007E30(__p, "thresholds");
    (*(*v5 + 56))(v5, buf, __p, v23);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(*buf);
    }

    v6 = HIBYTE(v24);
    v7 = SHIBYTE(v24);
    if (v24 < 0)
    {
      v6 = v23[1];
    }

    if (v6)
    {
      v8 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v23[0];
        if (v7 >= 0)
        {
          v9 = v23;
        }

        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting custom AAC Link Adaptive bitrate thresholds based on defaults write: %s", buf, 0xCu);
      }
    }

    v10 = sub_10000E92C();
    sub_100007E30(buf, "LinkAdaptiveBitrateAAC");
    sub_100007E30(__p, "rates");
    (*(*v10 + 56))(v10, buf, __p, v21);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(*buf);
    }

    v11 = HIBYTE(v22);
    v12 = SHIBYTE(v22);
    if (v22 < 0)
    {
      v11 = v21[1];
    }

    if (v11)
    {
      v13 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v21[0];
        if (v12 >= 0)
        {
          v14 = v21;
        }

        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting custom AAC Link Adaptive bitrates based on defaults write: %s", buf, 0xCu);
      }
    }

    *(a1 + 1160) = *(a1 + 1152);
    if (v26)
    {
      operator new();
    }

    if (SHIBYTE(v24) < 0)
    {
      sub_100008904(__dst, v23[0], v23[1]);
    }

    else
    {
      *__dst = *v23;
      v18 = v24;
    }

    if (SHIBYTE(v22) < 0)
    {
      sub_100008904(v15, v21[0], v21[1]);
    }

    else
    {
      *v15 = *v21;
      v16 = v22;
    }

    sub_10063279C(a1, __dst, v15, v26);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst[0]);
    }

    sub_100632AE0(a1);
    *(a1 + 1176) = 0x100007F00A000F4;
    *(a1 + 347) = 1;
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_10061C8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_10061C96C(unint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100853C50();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 8);
  v2 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10061CAA8;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v2, block);
  v5 = sub_10000C7D0(v3, v4);
  sub_10041332C(v5, a1);
  if (qword_100B50910 != -1)
  {
    sub_100853C64();
  }

  sub_1005BB668(off_100B50908, a1 + 128);
  if (qword_100B540B0 != -1)
  {
    sub_100853C8C();
  }

  nullsub_21();
  if (_os_feature_enabled_impl())
  {
    if (qword_100B50930 != -1)
    {
      sub_100853CB4();
    }

    sub_1000F2938(off_100B50928);
  }
}

uint64_t sub_10061CAA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 208))
  {
    v2 = *(v1 + 192);
    v3 = (v1 + 200);
    if (v2 == (v1 + 200))
    {
      goto LABEL_14;
    }

    do
    {
      v4 = v2[4];
      if (*v2[5])
      {
        sub_10061CE70(v1, v2[4]);
      }

      v32 = v4;
      sub_100075DC4((v1 + 192), &v32);
      if (qword_100B512B8 != -1)
      {
        sub_100853E48();
      }

      sub_100319F44(qword_100B512B0, v4);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
    if (*(v1 + 208))
    {
LABEL_14:
      v8 = *(v1 + 192);
      if (v8 != v3)
      {
        do
        {
          v9 = v8[4];
          if (*(v8[5] + 8))
          {
            sub_10061D9F4(v1, v8[4]);
          }

          v32 = v9;
          sub_100075DC4((v1 + 192), &v32);
          if (qword_100B512B8 != -1)
          {
            sub_100853E48();
          }

          sub_100319F44(qword_100B512B0, v9);
          v10 = v8[1];
          if (v10)
          {
            do
            {
              v11 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              v11 = v8[2];
              v7 = *v11 == v8;
              v8 = v11;
            }

            while (!v7);
          }

          v8 = v11;
        }

        while (v11 != v3);
      }
    }
  }

  if (qword_100B50AD0 != -1)
  {
    sub_100853E70();
  }

  sub_10007A3F0(off_100B50AC8 + 328, v1 + 72);
  v14 = sub_10000C798(v12, v13);
  v15 = (*(*v14 + 152))(v14);
  if ((v15 & 1) != 0 || (v17 = sub_10000C798(v15, v16), (*(*v17 + 160))(v17)))
  {
    v18 = sub_100017E6C();
    sub_10063CA90(v18 + 864, v1 + 64);
  }

  if (qword_100B50B88 != -1)
  {
    sub_100853D7C();
  }

  sub_10007A3F0(qword_100B50B80 + 8, v1 + 88);
  v19 = *(v1 + 912);
  *(v1 + 904) = 0u;
  if (v19)
  {
    sub_100117644(v19);
  }

  v20 = sub_100017E6C();
  sub_10063CB68(v20 + 1064, v1 + 104);
  v23 = *sub_10000C798(v21, v22);
  v24 = (*(v23 + 840))();
  if (v24)
  {
    v26 = sub_100017E6C();
    sub_10063CC40(v26 + 904, v1 + 80);
  }

  v27 = sub_10000C798(v24, v25);
  if ((*(*v27 + 840))(v27, 1))
  {
    v28 = sub_100017E6C();
    sub_10063CD18(v28 + 1024, v1 + 96);
    v29 = sub_100017E6C();
    sub_10063CDF0(v29 + 1104, v1 + 112);
  }

  if (qword_100B50AE0 != -1)
  {
    sub_100853D2C();
  }

  sub_10007A3F0(qword_100B50AD8 + 432, v1 + 24);
  v30 = *(v1 + 1152);
  if (v30 != *(v1 + 1160))
  {
    if (*(*v30 + 16))
    {
      operator delete[]();
    }

    if (*(*v30 + 8))
    {
      operator delete[]();
    }

    operator delete();
  }

  *(v1 + 347) = 0;
  result = notify_cancel(*(v1 + 1184));
  *(v1 + 1184) = -1;
  return result;
}

uint64_t sub_10061CE70(void *a1, unint64_t a2)
{
  v17 = a2;
  if (a2)
  {
    v2 = a1[25];
    if (v2)
    {
      v3 = a1 + 24;
      v4 = a1 + 25;
      do
      {
        v5 = v2[4];
        v6 = v5 >= a2;
        v7 = v5 < a2;
        if (v6)
        {
          v4 = v2;
        }

        v2 = v2[v7];
      }

      while (v2);
      if (v4 != a1 + 25 && v4[4] <= a2)
      {
        *buf = &v17;
        if (*sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf)[5])
        {
          Current = CFAbsoluteTimeGetCurrent();
          *buf = &v17;
          *(*sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf)[5] + 96) = Current;
          *buf = &v17;
          v9 = *(*sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf)[5] + 96);
          *buf = &v17;
          v10 = *(*sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf)[5] + 88);
          *buf = &v17;
          v11 = sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf);
          sub_10062EA28(*v11[5], (v9 - v10), 1, 0);
        }

        *buf = &v17;
        if (*(sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf)[5] + 24))
        {
          *buf = &v17;
          v12 = *(sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf)[5] + 24);
          if (v12)
          {
            sub_10047F5B0(v12);
            operator delete();
          }

          *buf = &v17;
          *(sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf)[5] + 24) = 0;
        }

        *buf = &v17;
        a1 = sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf);
        if (*(a1[5] + 32))
        {
          *buf = &v17;
          if (*(sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf)[5] + 32))
          {
            operator delete();
          }

          *buf = &v17;
          a1 = sub_10005E16C(v3, &v17, &unk_1008A9BD0, buf);
          *(a1[5] + 32) = 0;
        }
      }
    }
  }

  result = sub_10000C7D0(a1, a2);
  if (*(result + 800) >= 0x7D0u)
  {
    result = sub_10000C7D0(result, v14);
    if (*(result + 800) <= 0xF9Fu)
    {
      v16 = sub_10000C7D0(result, v15);
      return (*(*v16 + 1272))(v16);
    }
  }

  return result;
}

void sub_10061D9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10061D9F4(void *result, unint64_t a2)
{
  v44 = a2;
  if (a2)
  {
    v2 = result;
    v3 = result[25];
    if (v3)
    {
      v4 = result + 24;
      v5 = result + 25;
      do
      {
        v6 = v3[4];
        v7 = v6 >= a2;
        v8 = v6 < a2;
        if (v7)
        {
          v5 = v3;
        }

        v3 = v3[v8];
      }

      while (v3);
      if (v5 != result + 25 && v5[4] <= a2)
      {
        *buf = &v44;
        result = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
        if (*(result[5] + 8))
        {
          v9 = sub_10000E92C();
          if ((*(*v9 + 8))(v9))
          {
            v10 = qword_100BCE8D0;
            v11 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
            if (v11)
            {
              *buf = &v44;
              v13 = *(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 108);
              v14 = v2[299];
              *buf = 67109376;
              *&buf[4] = v13;
              v46 = 1024;
              v47 = v14;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AudioQuality trigger %d, codec %u", buf, 0xEu);
            }

            v15 = sub_10000C798(v11, v12);
            if ((*(*v15 + 352))(v15))
            {
              *buf = &v44;
              v16 = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
              if (*(v16[5] + 104))
              {
                v17 = v2[299];
                if ((v17 - 128) >= 2 && v17 != 255)
                {
                  sub_10062FB08(v16, v44);
                }
              }
            }

            *buf = &v44;
            *(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 108) = 0;
          }

          v18 = v2[58];
          *buf = &v44;
          *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 232) = v18;
          *buf = &v44;
          v19 = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
          std::string::assign((*(v19[5] + 8) + 136), "2.4G");
          *buf = &v44;
          *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 160) = 0;
          if (*(v44 + 1437) == 1)
          {
            *buf = &v44;
            v20 = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
            std::string::assign((*(v20[5] + 8) + 136), "5G");
          }

          *buf = &v44;
          if (*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 40) == 1)
          {
            *buf = &v44;
            *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 160) = 1;
          }

          Current = CFAbsoluteTimeGetCurrent();
          *buf = &v44;
          *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 88) = Current;
          *buf = &v44;
          v22 = *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 88);
          *buf = &v44;
          v23 = v22 - *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 80);
          *buf = &v44;
          *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 164) = v23;
          *buf = &v44;
          *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 176) = v2[297];
          *buf = &v44;
          v24 = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
          *(*(v24[5] + 8) + 180) = v2[298];
          v26 = sub_10000F034(v24, v25);
          *buf = &v44;
          v27 = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
          (*(*v26 + 104))(v26, *(v27[5] + 8));
          if (_os_feature_enabled_impl())
          {
            if (qword_100B543A8 != -1)
            {
              sub_100853E98();
            }

            v28 = qword_100B543A0;
            v29 = v44;
            *buf = &v44;
            v30 = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
            sub_100705F18(v28, v29, *(v30[5] + 8));
            v31 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Sent HFP Info to AccessoryUsageSummary", buf, 2u);
            }
          }

          v32 = sub_100626598(v2, v44);
          v34 = sub_10000C798(v32, v33);
          if ((*(*v34 + 136))(v34))
          {
            *buf = &v44;
            if (*(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 104))
            {
              *buf = &v44;
              v35 = *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 128);
              *buf = &v44;
              v36 = ((v35 / *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 104)) * 100.0);
            }

            else
            {
              v36 = 0;
            }

            *buf = &v44;
            v37 = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
            if (*(*(v37[5] + 8) + 108))
            {
              *buf = &v44;
              v39 = *(*(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8) + 132);
              *buf = &v44;
              v37 = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
              v40 = ((v39 / *(*(v37[5] + 8) + 108)) * 100.0);
            }

            else
            {
              v40 = 0;
            }

            v41 = sub_100432718(v37, v38);
            *buf = &v44;
            v42 = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
            (*(*v41 + 24))(v41, *(*(v42[5] + 8) + 164), v36, (100 - v36), v40, (100 - v40));
          }

          *buf = &v44;
          v43 = *(sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf)[5] + 8);
          if (v43)
          {
            if (*(v43 + 159) < 0)
            {
              operator delete(*(v43 + 136));
            }

            operator delete();
          }

          *buf = &v44;
          result = sub_10005E16C(v4, &v44, &unk_1008A9BD0, buf);
          *(result[5] + 8) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10061E21C(uint64_t a1, uint64_t a2)
{
  *(a1 + 344) = 1;
  sub_10061BD18(a1, a2);
  sub_10061C1F4(a1);
  v5 = sub_10000C7D0(v3, v4);
  v7 = *(v5 + 800);
  if ((v7 - 1) > 0x7CE)
  {
    if ((v7 - 2000) <= 0x3E7)
    {
      sub_10061E5E4(a1, v7);
      sub_10061E890(a1, v7);
      v5 = sub_10061EB54(a1, v7);
    }
  }

  else if (v7 == 19 || v7 == 15)
  {
    v9 = sub_10000C798(v5, v6);
    v5 = (*(*v9 + 152))(v9);
    if ((v5 & 1) == 0)
    {
      *(a1 + 834) = 256;
      if (v7 == 19)
      {
        v10 = 97;
      }

      else
      {
        v10 = 81;
      }

      v11 = qword_100BCE8D0;
      v12 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reading back ptb", buf, 2u);
      }

      v14 = sub_10000C7D0(v12, v13);
      v5 = (*(*v14 + 584))(v14, v10, a1 + 834, a1 + 408);
    }
  }

  v15 = sub_10000C798(v5, v6);
  v16 = (*(*v15 + 840))(v15, 1);
  if (v16)
  {
    v18 = sub_100017E6C();
    sub_10063C550(v18 + 1024, a1 + 96);
    v19 = sub_100017E6C();
    (*(*v19 + 248))(v19);
    v20 = sub_100017E6C();
    sub_10063C050(v20 + 1064, a1 + 104);
    v21 = sub_100017E6C();
    sub_10063C7F0(v21 + 1104, a1 + 112);
  }

  v22 = sub_10000C798(v16, v17);
  v23 = (*(*v22 + 160))(v22);
  if (v23)
  {
    v25 = sub_100017E6C();
    sub_1003128B0(v25 + 384, a1 + 136);
  }

  v26 = sub_10000C7D0(v23, v24);
  v27 = (*(*v26 + 72))(v26, 1, 0);
  v29 = sub_1005FCD2C(v27, v28);
  if (v29)
  {
    v31 = sub_10000C798(v29, v30);
    if ((*(*v31 + 384))(v31))
    {
      v32 = +[NSNotificationCenter defaultCenter];
      v33 = +[AVAudioSession sharedInstance];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000C1F4C;
      v37[3] = &unk_100AFCD28;
      v37[4] = a1;
      v34 = [v32 addObserverForName:AVAudioSessionRouteChangeNotification object:v33 queue:0 usingBlock:v37];
      v35 = *(a1 + 240);
      *(a1 + 240) = v34;
    }
  }

  if (_os_feature_enabled_impl() && sub_1002418E0(sub_10061ED5C, 0) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100853EC0();
  }

  return sub_10061EEB4(a1, 0);
}

uint64_t sub_10061E5E4(_WORD *a1, int a2)
{
  v4 = qword_100BCE8D0;
  v5 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reading back PPR power table for N1x1", v22, 2u);
  }

  if (a2 == 2000)
  {
    a1[418] = 10;
    v7 = sub_10000C7D0(v5, v6);
    return (*(*v7 + 584))(v7, 145, a1 + 418, a1 + 332);
  }

  else
  {
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    a1[418] = 18;
    v9 = *sub_10000C7D0(v5, v6);
    v10 = (*(v9 + 584))();
    a1[332] = *(v22 + 1);
    a1[418] = 18;
    v12 = *sub_10000C7D0(v10, v11);
    v13 = (*(v12 + 584))();
    a1[333] = *(v22 + 1);
    a1[418] = 18;
    v15 = *sub_10000C7D0(v13, v14);
    v16 = (*(v15 + 584))();
    a1[334] = *(v22 + 1);
    a1[418] = 18;
    v18 = *sub_10000C7D0(v16, v17);
    v19 = (*(v18 + 584))();
    a1[335] = *(v22 + 1);
    a1[418] = 18;
    v21 = *sub_10000C7D0(v19, v20);
    result = (*(v21 + 584))();
    a1[336] = *(v22 + 1);
    a1[418] = 10;
  }

  return result;
}

uint64_t sub_10061E890(uint64_t a1, int a2)
{
  v22 = 128;
  *(a1 + 838) = 0;
  v4 = qword_100BCE8D0;
  v5 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reading back REG power table for N1x1", v21, 2u);
  }

  if (a2 != 2000)
  {
    v22 = 128;
    v10 = sub_10000C7D0(v5, v6);
    v11 = a1 + 674;
    result = (*(*v10 + 584))(v10, 154, &v22, a1 + 674);
    v13 = result;
    if (result)
    {
      v14 = 0;
    }

    else
    {
      v14 = v22;
    }

    v15 = v14;
    if (!result && (v14 & 0x80000000) == 0)
    {
      v16 = v22;
      v22 = (0x80 - v22);
      v17 = sub_10000C7D0(result, v12);
      result = (*(*v17 + 584))(v17, 155, &v22, v11 + v16);
      if (result)
      {
        goto LABEL_25;
      }

      v15 = v22 + v16;
    }

    if (!v13 && (v15 & 0x80) == 0)
    {
      v22 = (0x80 - v15);
      v18 = sub_10000C7D0(result, v12);
      result = (*(*v18 + 584))(v18, 156, &v22, v11 + v15);
      if (result)
      {
        goto LABEL_25;
      }

      v15 += v22;
    }

    if (v13 || (v15 & 0x80) != 0)
    {
LABEL_21:
      if (!v13 && (v15 & 0x80) == 0)
      {
        v22 = (0x80 - v15);
        v20 = sub_10000C7D0(result, v12);
        result = (*(*v20 + 584))(v20, 162, &v22, v11 + v15);
        if (!result)
        {
          v15 += v22;
        }
      }

      goto LABEL_25;
    }

    v22 = (0x80 - v15);
    v19 = sub_10000C7D0(result, v12);
    result = (*(*v19 + 584))(v19, 161, &v22, v11 + v15);
    if (!result)
    {
      v15 += v22;
      goto LABEL_21;
    }

LABEL_25:
    v9 = v15;
    goto LABEL_26;
  }

  v7 = sub_10000C7D0(v5, v6);
  result = (*(*v7 + 584))(v7, 146, &v22, a1 + 674);
  if (result)
  {
    return result;
  }

  v9 = v22;
LABEL_26:
  *(a1 + 838) = v9;
  return result;
}

uint64_t sub_10061EB54(uint64_t a1, int a2)
{
  v21 = 32;
  *(a1 + 840) = 0;
  v4 = qword_100BCE8D0;
  v5 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reading back SAR power table for N1x1", v20, 2u);
  }

  if (a2 != 2000)
  {
    v21 = 32;
    v10 = sub_10000C7D0(v5, v6);
    v11 = a1 + 802;
    result = (*(*v10 + 584))(v10, 163, &v21, a1 + 802);
    v13 = result;
    if (result)
    {
      v14 = 0;
    }

    else
    {
      v14 = v21;
    }

    if (result)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 > 0x1Fu;
    }

    if (!v15)
    {
      v16 = v21;
      v21 = (32 - v21);
      v17 = sub_10000C7D0(result, v12);
      result = (*(*v17 + 584))(v17, 164, &v21, v11 + v16);
      if (result)
      {
LABEL_21:
        v9 = v14;
        goto LABEL_22;
      }

      v14 = v21 + v16;
    }

    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = v14 > 0x1Fu;
    }

    if (!v18)
    {
      v21 = (32 - v14);
      v19 = sub_10000C7D0(result, v12);
      result = (*(*v19 + 584))(v19, 165, &v21, v11 + v14);
      if (!result)
      {
        v14 += v21;
      }
    }

    goto LABEL_21;
  }

  v7 = sub_10000C7D0(v5, v6);
  result = (*(*v7 + 584))(v7, 147, &v21, a1 + 802);
  if (result)
  {
    return result;
  }

  v9 = v21;
LABEL_22:
  *(a1 + 840) = v9;
  return result;
}

void sub_10061ED5C(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v11 = sub_1000E1FE8(a2);
  if (!a1)
  {
    if ((v8 & 0xFFFFFFFD) != 0)
    {
      v12 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 67109120;
        v14[1] = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "legacyModeChangeEvent received with invalid mode: %d", v14, 8u);
      }
    }

    else if (a2 && v11)
    {
      if (qword_100B50940 != -1)
      {
        sub_100853F30();
      }

      v13 = off_100B50938;

      sub_10063A7E4(v13, 0, a2, v8, v7, a6);
    }
  }
}

uint64_t sub_10061EEB4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 10;
  v4 = sub_10000C798(a1, a2);
  if (!(*(*v4 + 160))(v4))
  {
    return 2;
  }

  if (*(a1 + 880) == 6)
  {
    v6 = v2;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v11 = sub_10000E92C();
    if ((*(*v11 + 400))(v11))
    {
      v12 = sub_10000E92C();
      v8 = (*(*v12 + 408))(v12);
    }

    else
    {
      v8 = 186;
    }

    v13 = sub_10000E92C();
    result = (*(*v13 + 416))(v13);
    if (result)
    {
      v14 = sub_10000E92C();
      result = (*(*v14 + 424))(v14);
      v7 = result;
    }

    else
    {
      v7 = 186;
    }

    *(a1 + 877) = 1;
    v9 = 3;
    goto LABEL_16;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = 0;
  if (*(a1 + 877))
  {
LABEL_16:
    v15 = sub_10000C7D0(result, v5);
    result = (*(*v15 + 896))(v15, 4095, 9, v9, v8, v7, &v16, &v17);
    *(a1 + 877) = v6 ^ (result == 0);
  }

  return result;
}

void sub_10061F0DC(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AudioLinkManager::stackWillStop enter", buf, 2u);
  }

  *(a1 + 344) = 0;
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10061F274;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_sync(v3, block);
  if (*(a1 + 240))
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(a1 + 240)];
  }

  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AudioLinkManager::stackWillStop enter", buf, 2u);
  }

  if (_os_feature_enabled_impl() && sub_1002418F0(sub_10061ED5C) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100853F44();
  }
}

uint64_t sub_10061F274(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 888);
  if (result)
  {
    v3 = (v1 + 888);
    result = (*(*result + 16))(result);
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void sub_10061F2D4(uint64_t a1, unint64_t a2)
{
  if ((*(sub_10000C7D0(a1, a2) + 800) - 1) >= 0x7CF)
  {
    v4 = *(a1 + 224);

    sub_10010E754(v4, a2);
  }
}

void sub_10061F338(uint64_t a1, uint64_t a2)
{
  *(a1 + 974) = 0u;
  *(a1 + 990) = 0u;
  *(a1 + 958) = 0u;
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10061F3BC;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_10061F3C8(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 144;
  *(a1 + 830) = 0u;
  *(a1 + 846) = 0u;
  *(a1 + 814) = 0u;
  v3 = *(a1 + 112);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10061F3BC;
  v4[3] = &unk_100AE0860;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_10061F44C(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10061F4C4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_10061F4C4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (*(v2 + 208))
  {
    v3 = result;
    result = sub_10000C7D0(result, a2);
    v5 = *(result + 800);
    if (v5 - 1 <= 0x7CE && (v5 != 15 ? (v6 = v5 >= 0x13) : (v6 = 1), v6))
    {
      v7 = *(*sub_10000C7D0(result, v4) + 560);

      return v7();
    }

    else
    {
      v8 = *(v2 + 192);
      if (v8 != (v2 + 200))
      {
        do
        {
          sub_10061F5E4(v2, v8[4], *(v8[5] + 84), (v2 + 886));
          sub_10061F850(v2, *(v3 + 40), (v2 + 884), (v2 + 885));
          result = sub_10061F8D8(v2, v9);
          v10 = v8[1];
          if (v10)
          {
            do
            {
              v11 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              v11 = v8[2];
              v12 = *v11 == v8;
              v8 = v11;
            }

            while (!v12);
          }

          v8 = v11;
        }

        while (v11 != (v2 + 200));
      }
    }
  }

  return result;
}

void sub_10061F5E4(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v22 = 0;
  v7 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "ePAThreshold");
  v8 = (*(*v7 + 88))(v7, buf, __p, &v22);
  v10 = v8;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v24 & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_8:
    v13 = sub_10000C798(v8, v9);
    if ((*(*v13 + 416))(v13))
    {
      v14 = -62;
LABEL_25:
      *a4 = v14;
      return;
    }

    if (a3 == 1)
    {
      v17 = sub_1000E2140(a2, 0xCu);
      if (v17 || (sub_100627568(v17, a2) & 1) != 0)
      {
        v16 = -57;
        goto LABEL_22;
      }

      v18 = !sub_100537D2C(a2);
      v16 = -68;
      v19 = -73;
    }

    else
    {
      if (a3 != 2)
      {
LABEL_23:
        if (sub_1000271F0() != 162)
        {
          return;
        }

        v14 = *a4 + 12;
        goto LABEL_25;
      }

      v15 = sub_1000E2140(a2, 0xCu);
      if (v15 || (sub_100627568(v15, a2) & 1) != 0)
      {
        v16 = -62;
LABEL_22:
        *a4 = v16;
        goto LABEL_23;
      }

      v18 = !sub_100537D2C(a2);
      v16 = -69;
      v19 = -74;
    }

    if (!v18)
    {
      v16 = v19;
    }

    goto LABEL_22;
  }

  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_5:
  v11 = v22;
  *a4 = v22;
  v12 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined ePA threshold to %d dBm through defaults write", buf, 8u);
  }
}

void sub_10061F814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10061F850(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v6 = a2;
  v8 = sub_10000C7D0(a1, a2);
  v10 = sub_100411100(v8, v9);
  *a3 = v10;
  v12 = sub_10000C7D0(v10, v11);
  v14 = sub_100410F60(v12, v13);
  *a4 = v14;
  sub_10000C7D0(v14, v15);
  v16 = sub_100410EE8();
  if (v16 && (v6 & 1) == 0)
  {
    v18 = sub_10000C7D0(v16, v17);
    *a4 = sub_1004112E4(v18, v19);
  }

  result = sub_100630E30(a1);
  if (result)
  {
    result = sub_1000271F0();
    if (result == 162)
    {
      *a3 = 48;
    }
  }

  return result;
}

uint64_t sub_10061F8D8(uint64_t result, uint64_t a2)
{
  if ((*(result + 345) & 1) == 0)
  {
    v2 = result;
    v3 = sub_10000C7D0(result, a2);
    if (*(v3 + 800) >= 0x13u)
    {
      v13 = 0;
      v5 = sub_10000E92C();
      sub_100007E30(buf, "ePA");
      sub_100007E30(__p, "DisableReTxEPA");
      v3 = (*(*v5 + 72))(v5, buf, __p, &v13);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      if (v12 < 0)
      {
        operator delete(*buf);
      }

      if (v13 != 1)
      {
        v7 = 2;
        goto LABEL_12;
      }

      v6 = qword_100BCE8D0;
      v3 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      v7 = 0;
      if (!v3)
      {
LABEL_12:
        v8 = sub_10000C7D0(v3, v4);
        return (*(*v8 + 64))(v8, 1, v7, *(v2 + 884), *(v2 + 885), *(v2 + 886));
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Disabling ePA for retransmission policy through defaults write", buf, 2u);
    }

    v7 = 0;
    goto LABEL_12;
  }

  return result;
}

void sub_10061FA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10061FA70(uint64_t a1, char a2)
{
  v2 = *(a1 + 240);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10061F4C4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 16;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10061FAEC(uint64_t a1, __int128 *a2, int *a3)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x12012000000;
  v16[3] = sub_1000423BC;
  v16[4] = nullsub_27;
  v16[5] = "";
  *(v30 + 11) = *(a2 + 219);
  v4 = a2[13];
  v29 = a2[12];
  v30[0] = v4;
  v5 = a2[9];
  v25 = a2[8];
  v26 = v5;
  v6 = a2[10];
  v28 = a2[11];
  v27 = v6;
  v7 = a2[5];
  v21 = a2[4];
  v22 = v7;
  v8 = a2[6];
  v24 = a2[7];
  v23 = v8;
  v9 = a2[1];
  v17 = *a2;
  v18 = v9;
  v10 = a2[2];
  v20 = a2[3];
  v19 = v10;
  v14 = *a3;
  v15 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v11 = sub_1000E6554(off_100B508E8, &v14, 0);
  v12 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10061FCC0;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = v11;
  block[4] = v16;
  dispatch_async(v12, block);
  _Block_object_dispose(v16, 8);
}

double sub_10061FCC0(void *result, double a2)
{
  v3 = result + 6;
  v2 = result[6];
  if (v2)
  {
    v4 = result[5];
    v5 = *(v4 + 200);
    if (v5)
    {
      v7 = v4 + 192;
      v8 = v4 + 200;
      do
      {
        v9 = *(v5 + 32);
        _CF = v9 >= v2;
        v11 = v9 < v2;
        if (_CF)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 + 200 && v2 >= *(v8 + 32))
      {
        sub_10062098C(result[5], v2, (*(result[4] + 8) + 48));
        v14 = sub_10000C7D0(v12, v13);
        v16 = sub_10041062C(v14, v15);
        if (!v16)
        {
          *(*(result[4] + 8) + 225) = 0;
        }

        v18 = sub_10000C798(v16, v17);
        if ((*(*v18 + 144))(v18) && *(v4 + 872) != 3)
        {
          sub_100620E14(v4, result[6], *(result[4] + 8) + 48);
        }

        v19 = sub_10000E92C();
        v20 = (*(*v19 + 288))(v19);
        if ((v20 & 1) == 0 && *(v4 + 872) != 3)
        {
          sub_100620F24(v20, *(*(result[4] + 8) + 49), (*(result[4] + 8) + 213));
        }

        sub_100621088(v20, 0, *(result[4] + 8) + 48);
        v80 = v3;
        if (*sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] && *(*(result[4] + 8) + 66) <= *(*(result[4] + 8) + 64))
        {
          v80 = v3;
          v21 = *sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5];
          *(v21 + 424) += *(*(result[4] + 8) + 54);
          ++*(v21 + 432);
          v80 = v3;
          v22 = *sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5];
          v23 = *(*(result[4] + 8) + 55);
          if (*(v22 + 436) > v23)
          {
            *(v22 + 436) = v23;
          }

          v80 = v3;
          v24 = *sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5];
          v25 = *(*(result[4] + 8) + 56);
          if (*(v24 + 440) < v25)
          {
            *(v24 + 440) = v25;
          }

          v80 = v3;
          if (*(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 32))
          {
            v26 = *(*(result[4] + 8) + 54);
            v80 = v3;
            *(*(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 32) + 80) = v26;
            v28 = *(result[4] + 8);
            if (*(v28 + 64))
            {
              LOWORD(v27) = *(v28 + 66);
              v29 = ((v27 * 100.0) / *(v28 + 64));
            }

            else
            {
              v29 = 0;
            }

            v80 = v3;
            *(*(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 32) + 72) = v29;
          }

          v30 = *(v4 + 216);
          if (v30[8] == 1)
          {
            v80 = v3;
            v31 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            *(*v31[5] + 444) |= 2u;
            v30 = *(v4 + 216);
          }

          if (v30[7] == 1)
          {
            v80 = v3;
            sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            v30 = *(v4 + 216);
          }

          if (v30[5] == 1)
          {
            v80 = v3;
            v32 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            *(*v32[5] + 444) |= 4u;
            v30 = *(v4 + 216);
          }

          if (v30[6] == 1)
          {
            v80 = v3;
            v33 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            *(*v33[5] + 444) |= 8u;
            v30 = *(v4 + 216);
          }

          if (v30[1] == 1)
          {
            v80 = v3;
            v34 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            *(*v34[5] + 444) |= 0x20u;
            v30 = *(v4 + 216);
          }

          if (v30[4] == 1)
          {
            v80 = v3;
            v35 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            *(*v35[5] + 444) |= 0x80u;
            v30 = *(v4 + 216);
          }

          if (v30[3] == 1)
          {
            v80 = v3;
            v36 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            *(*v36[5] + 444) |= 0x10u;
            v30 = *(v4 + 216);
          }

          if (v30[2] == 1)
          {
            v80 = v3;
            v37 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            *(*v37[5] + 444) |= 0x40u;
          }

          v38 = *(result[4] + 8);
          if (v38[32])
          {
            v39 = 100 * v38[33] / v38[32];
          }

          else
          {
            v39 = 0;
          }

          v40 = *(v38 + 245);
          v41 = 0.0;
          if (*(v38 + 245))
          {
            v42 = *(v38 + 243);
            if (v42)
            {
              v41 = v42 / v40;
            }
          }

          v79 = v41;
          v80 = v3;
          if (*(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 72) == 1)
          {
            v43 = *v3;
            v80 = v3;
            v44 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            sub_100621180(v4, v43, v39, *(v44[5] + 78));
          }

          sub_10011CCEC(*(v4 + 216), result[6], v39, *(result[4] + 8) + 48, 0);
          sub_10011FCA4(*(v4 + 216), result[6], v39, *(result[4] + 8) + 48);
          v80 = v3;
          if (*(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 64) == 1)
          {
            v45 = *v3;
            v80 = v3;
            v46 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            sub_1006215C4(v4, v45, v39, *(v46[5] + 78));
          }

          v80 = v3;
          v47 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
          *(*v47[5] + 104) += *(*(result[4] + 8) + 60);
          v80 = v3;
          v48 = *sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5];
          v49 = *(*(result[4] + 8) + 64);
          *(v48 + 108) += v49;
          if (v49 <= 0x1D)
          {
            ++*(v48 + 520);
          }

          v80 = v3;
          *(*sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 388) = *(*(result[4] + 8) + 54);
          v80 = v3;
          v50 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
          *(*v50[5] + 404) = vadd_s32(*(*v50[5] + 404), (v39 | 0x100000000));
          v80 = v3;
          v51 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
          __asm { FMOV            V1.2S, #1.0 }

          _D1.f32[0] = v79;
          *(*v51[5] + 416) = vadd_f32(_D1, *(*v51[5] + 416));
          v56 = *sub_10000E92C();
          if (((*(v56 + 288))() & 1) == 0)
          {
            v57 = *(result[4] + 8);
            v80 = v3;
            v58 = *(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 66);
            v80 = v3;
            if (v58 >= *(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 68))
            {
              v80 = v3;
              v59 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
              v61 = 68;
            }

            else
            {
              v80 = v3;
              v59 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
              v61 = 66;
            }

            sub_100621AF0(v4, v57 + 48, *(v59[5] + v61), *v3, v60);
            if (qword_100B512B8 != -1)
            {
              sub_100853E48();
            }

            v62 = qword_100B512B0;
            v63 = result[6];
            v64 = *(result[4] + 8);
            v80 = v3;
            v65 = *(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 66);
            v80 = v3;
            if (v65 >= *(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 68))
            {
              v80 = v3;
              v66 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
              v67 = 68;
            }

            else
            {
              v80 = v3;
              v66 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
              v67 = 66;
            }

            v68 = *(v66[5] + v67);
            v69 = *(v4 + 216);
            v80 = v3;
            v70 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
            v71 = sub_10011D8D4(v69, *(*(v70[5] + 48) + 20), *v3);
            sub_10031A424(v62, v63, v64 + 48, v68, v71);
          }
        }

        v80 = v3;
        if (!*sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5])
        {
          goto LABEL_73;
        }

        v80 = v3;
        v72 = *(*(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 48) + 16);
        if (v72 < 0x97)
        {
          if (v72 == 150)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v80 = v3;
          if (*(*sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 312) <= 0x95u)
          {
LABEL_73:
            v80 = v3;
            if (*(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 8))
            {
              sub_100622500(v4, result[6], *(result[4] + 8) + 48);
              v73 = *sub_10000E92C();
              if (((*(v73 + 288))() & 1) == 0)
              {
                sub_100622BCC(v4, *(result[4] + 8) + 48, result[6]);
                sub_10010EAA0(*(v4 + 224), result[6], *(result[4] + 8) + 48);
                if (qword_100B512B8 != -1)
                {
                  sub_100853E48();
                }

                v74 = qword_100B512B0;
                v75 = result[6];
                v76 = *(result[4] + 8);
                v80 = v3;
                v77 = sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80);
                sub_10031A424(v74, v75, v76 + 48, 0, *(*(v77[5] + 48) + 16));
              }
            }

            v80 = v3;
            if (*(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 80) == 1)
            {
              v80 = v3;
              if (*(sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 84) == 2)
              {
                v78 = sub_10000E92C();
                if ((*(*v78 + 8))(v78))
                {
                  sub_10011E600(*(v4 + 216), *v3);
                }
              }
            }

            return sub_100623278(v4, result[6], *(result[4] + 8) + 48);
          }
        }

        v80 = v3;
        *(*sub_10005E16C(v7, v3, &unk_1008A9BD0, &v80)[5] + 312) = v72;
        goto LABEL_73;
      }
    }
  }

  return a2;
}

void sub_10062098C(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v43 = 0;
  v44 = a2;
  __p = 0;
  v42 = 0;
  v5 = sub_10000C7D0(a1, a2);
  v6 = sub_1004106D0(v5, 0xBB8u);
  v7 = a3 + 86;
  v8 = *(a1 + 958);
  if (v6)
  {
    if (v8 >= 2)
    {
      v7 = (a1 + 1006);
      v9 = (a1 + 1085);
      goto LABEL_7;
    }

LABEL_5:
    a3[233] = v8;
LABEL_16:
    v15 = 0;
    LOBYTE(v11) = 0;
    do
    {
      if ((a3[(v15 >> 3) + 76] >> (v15 & 7)))
      {
        sub_1000C89B4(&__p, &v7[v15]);
        LOBYTE(v11) = v11 + 1;
      }

      ++v15;
    }

    while (v15 != 79);
    if (v11)
    {
      v16 = 126 - 2 * __clz(v42 - __p);
      if (v42 == __p)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      sub_10063EAD4(__p, v42, v17, 1);
      v18 = (ceil(vcvtd_n_f64_u32(v11, 1uLL)) + -1.0);
      v19 = __p;
      v20 = v42 - __p;
      if (v42 - __p <= v18 || (a3[229] = *(__p + v18), v21 = ceil(v11 * 0.75) + -1.0, v20 <= v21) || (a3[230] = v19[v21], v22 = ceil(v11 * 0.9) + -1.0, v20 <= v22))
      {
        sub_1000C7698();
      }

      LOBYTE(v14) = v19[v22];
    }

    else
    {
      LOBYTE(v14) = 0;
      LOBYTE(v11) = 0;
      *(a3 + 229) = 0;
    }

    v23 = 231;
    goto LABEL_38;
  }

  if (v8 <= 1)
  {
    goto LABEL_5;
  }

  v9 = (a1 + 959);
LABEL_7:
  if (!*v9)
  {
    LOBYTE(v8) = 0;
  }

  a3[233] = v8;
  if (!*v9)
  {
    goto LABEL_16;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = a3[(v10 >> 3) + 76];
    sub_1000C89B4(&__p, &v7[v10]);
    v11 += (v12 >> (v10++ & 7)) & 1;
  }

  while (v10 != 79);
  v13 = 0;
  while (*v9)
  {
    sub_1000C89B4(&__p, v9);
    --v13;
    ++v9;
    if (v13 == -47)
    {
      v14 = 126;
      goto LABEL_31;
    }
  }

  v14 = 79 - v13;
LABEL_31:
  v24 = 126 - 2 * __clz(v42 - __p);
  if (v42 == __p)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  sub_10063EAD4(__p, v42, v25, 1);
  v26 = (ceil(vcvtd_n_f64_u32(v14, 1uLL)) + -1.0);
  v27 = __p;
  v28 = v42 - __p;
  if (v42 - __p <= v26 || (a3[229] = *(__p + v26), v29 = ceil(v14 * 0.75) + -1.0, v28 <= v29) || (a3[230] = v27[v29], v30 = ceil(v14 * 0.9) + -1.0, v28 <= v30))
  {
    sub_1000C7698();
  }

  a3[231] = v27[v30];
  v23 = 234;
LABEL_38:
  a3[v23] = v14;
  a3[232] = v11;
  *(a1 + 958) = 0;
  if (v44)
  {
    v33 = *(a1 + 200);
    v32 = a1 + 200;
    v31 = v33;
    if (v33)
    {
      v34 = v32;
      do
      {
        v35 = *(v31 + 32);
        v36 = v35 >= v44;
        v37 = v35 < v44;
        if (v36)
        {
          v34 = v31;
        }

        v31 = *(v31 + 8 * v37);
      }

      while (v31);
      if (v34 != v32 && v44 >= *(v34 + 32))
      {
        v45 = &v44;
        if (*sub_10005E16C(v32 - 8, &v44, &unk_1008A9BD0, &v45)[5])
        {
          v45 = &v44;
          v38 = sub_10005E16C(v32 - 8, &v44, &unk_1008A9BD0, &v45);
          sub_100632DE8(v38, *v38[5], a3);
        }

        v45 = &v44;
        if (*(sub_10005E16C(v32 - 8, &v44, &unk_1008A9BD0, &v45)[5] + 8))
        {
          v45 = &v44;
          v39 = sub_10005E16C(v32 - 8, &v44, &unk_1008A9BD0, &v45);
          sub_100632DE8(v39, *(v39[5] + 8), a3);
        }

        v45 = &v44;
        if (*(sub_10005E16C(v32 - 8, &v44, &unk_1008A9BD0, &v45)[5] + 24))
        {
          v45 = &v44;
          v40 = sub_10005E16C(v32 - 8, &v44, &unk_1008A9BD0, &v45);
          sub_100632DE8(v40, *(v40[5] + 24), a3);
        }
      }
    }
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

void sub_100620DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100620E14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = a2;
  v13 = &v12;
  if (*sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13)[5])
  {
    v13 = &v12;
    v5 = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13);
    v6 = *v5[5];
    if (v6)
    {
      v7 = (v6 + 36);
    }

    else
    {
      v7 = 0;
    }

    sub_100632DA0(v5, v7, a3);
  }

  v13 = &v12;
  if (*(sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13)[5] + 8))
  {
    v13 = &v12;
    v9 = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13);
    v10 = *(v9[5] + 8);
    if (v10)
    {
      v11 = (v10 + 36);
    }

    else
    {
      v11 = 0;
    }

    *&result = sub_100632DA0(v9, v11, a3).u64[0];
  }

  return result;
}

double sub_100620F24(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v4 = a2;
  v5 = sub_10000C798(a1, a2);
  if ((*(*v5 + 144))(v5))
  {
    v7 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a3[2];
      v9 = (100 * (v8 >> 1));
      v10 = *a3;
      v11 = a3[1];
      v14[0] = 67111424;
      v12 = a3[3];
      v13 = a3[4];
      v14[1] = v8;
      v15 = 1024;
      v16 = v4;
      v17 = 2048;
      v18 = v9 / v10;
      v19 = 2048;
      v20 = v9 / v11;
      v21 = 1024;
      v22 = v8 >> 1;
      v23 = 1024;
      v24 = v8 - (v8 >> 1);
      v25 = 1024;
      v26 = v10;
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      v30 = v12;
      v31 = 1024;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DiversityReport:%3d switches in%3d sec. ReTx for {Ant0,Ant1} ~= {%3.0f%%,%3.0f%%} ((%2d ..%3d) / {%3d,%3d}). Good pkts b/w switches min =%3d, max =%3d", v14, 0x46u);
    }
  }

  return result;
}

void sub_100621088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C7D0(a1, a2);
  if (sub_1004106D0(v4, 0xBB8u))
  {
    v5 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a3 + 217);
      v7 = *(a3 + 219);
      v8 = *(a3 + 221);
      v9 = *(a3 + 223);
      v10 = *(a3 + 225);
      v11 = *(a3 + 227);
      v12[0] = 67110400;
      v12[1] = v6;
      v13 = 1024;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "A2DP Thread LinkQualityReport: a2dpReq %d, a2dpDenied %d, eScoReqInTxSlot %d, eScoDeniedInTxSlot %d, eScoReqInReTxWindow %d, eScoDeniedInReTxWindow %d", v12, 0x26u);
    }
  }
}

void *sub_100621180(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  v26 = a2;
  *buf = &v26;
  if (*(sub_10005E16C(a1 + 192, &v26, &unk_1008A9BD0, buf)[5] + 76) < 0)
  {
    v14 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Packet Type: Ignoring first retransmission rate report (%d%%)", buf, 8u);
    }

    goto LABEL_13;
  }

  *buf = &v26;
  result = sub_10005E16C(a1 + 192, &v26, &unk_1008A9BD0, buf);
  if (*(*(result[5] + 48) + 2))
  {
    return result;
  }

  if (a3 <= 0x1D && !a4)
  {
    if (a3 <= 0xA)
    {
      *buf = &v26;
      result = sub_10005E16C(a1 + 192, &v26, &unk_1008A9BD0, buf);
      if (*(result[5] + 79) == 1)
      {
        *buf = &v26;
        v8 = sub_10005E16C(a1 + 192, &v26, &unk_1008A9BD0, buf);
        ++*(v8[5] + 76);
        *buf = &v26;
        result = sub_10005E16C(a1 + 192, &v26, &unk_1008A9BD0, buf);
        if (*(result[5] + 76) >= 6)
        {
          v9 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            *&buf[4] = a3;
            v28 = 2082;
            v29 = "No";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Packet Type: Reverting to default support (%d%%) Purged %{public}s", buf, 0x12u);
          }

          v10 = sub_100630F58(a1, v26);
          v11 = v10;
          v13 = sub_1000DAB84(v10, v12);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100631128;
          v22[3] = &unk_100AF59D0;
          v23 = v11;
          sub_10000CA94(v13, v22);
          *buf = &v26;
          *(sub_10005E16C(a1 + 192, &v26, &unk_1008A9BD0, buf)[5] + 79) = 0;
LABEL_22:
          *buf = &v26;
          v15 = a1 + 192;
          goto LABEL_14;
        }
      }

      return result;
    }

LABEL_13:
    *buf = &v26;
    v15 = a1 + 192;
LABEL_14:
    result = sub_10005E16C(v15, &v26, &unk_1008A9BD0, buf);
    *(result[5] + 76) = 0;
    return result;
  }

  *buf = &v26;
  result = sub_10005E16C(a1 + 192, &v26, &unk_1008A9BD0, buf);
  if ((*(result[5] + 79) & 1) == 0)
  {
    v16 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "No";
      if (a4)
      {
        v17 = "Yes";
      }

      *buf = 67109378;
      *&buf[4] = a3;
      v28 = 2082;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Packet Type: Scaling back to 2Mbps Packets support (%d%%) Purged %{public}s", buf, 0x12u);
    }

    v18 = sub_100630F58(a1, v26);
    v19 = v18;
    v21 = sub_1000DAB84(v18, v20);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1006310D0;
    v24[3] = &unk_100AF59D0;
    v25 = v19;
    sub_10000CA94(v21, v24);
    *buf = &v26;
    *(sub_10005E16C(a1 + 192, &v26, &unk_1008A9BD0, buf)[5] + 79) = 1;
    goto LABEL_22;
  }

  return result;
}

void sub_1006215C4(void *a1, unint64_t a2, unsigned int a3, char a4)
{
  v29 = a2;
  *buf = &v29;
  v7 = *(sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf)[5] + 88) == 33023;
  v8 = a1[144];
  if ((a1[145] - v8) >> 3 <= v7)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100853FDC();
    }
  }

  else
  {
    v9 = *(v8 + 8 * v7);
    if (v9)
    {
      v10 = a1[25];
      if (!v10)
      {
        goto LABEL_51;
      }

      v11 = a1 + 25;
      do
      {
        v12 = v10[4];
        v13 = v12 >= v29;
        v14 = v12 < v29;
        if (v13)
        {
          v11 = v10;
        }

        v10 = v10[v14];
      }

      while (v10);
      if (v11 == a1 + 25 || v29 < v11[4])
      {
LABEL_51:
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_10085405C();
        }

        return;
      }

      LOBYTE(v15) = *v9 - 1;
      if ((a4 & 1) == 0)
      {
        v16 = *(v9 + 1);
        if (*v16 <= a3)
        {
          if ((*v9 - 1) >= 2u)
          {
            v17 = -1;
            while (*v16 > a3 || v16[1] <= a3)
            {
              --v17;
              ++v16;
              if ((*v9 - 1) - 1 + v17 == -1)
              {
                goto LABEL_27;
              }
            }

            v15 = -v17;
          }
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

LABEL_27:
      v18 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
      {
        *buf = &v29;
        v24 = *(sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf)[5] + 66);
        *buf = &v29;
        if (v24 >= *(sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf)[5] + 68))
        {
          *buf = &v29;
          v25 = sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf);
          v26 = 68;
        }

        else
        {
          *buf = &v29;
          v25 = sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf);
          v26 = 66;
        }

        v27 = *(v25[5] + v26);
        *buf = &v29;
        v28 = *(sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf)[5] + 66);
        *buf = 67109632;
        *&buf[4] = v27;
        v31 = 1024;
        v32 = v28;
        v33 = 1024;
        v34 = a3;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "A2DP Link Adaptive Bitrate: currentRate: %3d currentIndexedRate: %3d reTransmissionStats: %3d", buf, 0x14u);
      }

      *buf = &v29;
      if (*(sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf)[5] + 66) <= *(*(v9 + 2) + 2 * v15))
      {
        *buf = &v29;
        if (*(sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf)[5] + 66) < *(*(v9 + 2) + 2 * v15))
        {
          *buf = &v29;
          v19 = sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf);
          v20 = *v9;
          if (*v9)
          {
            v21 = 0;
            v22 = *(v9 + 2);
            while (*(v22 + 2 * v21) > *(v19[5] + 66))
            {
              if (v20 == ++v21)
              {
                LODWORD(v21) = *v9;
                break;
              }
            }

            if (v21 >= 1 && v21 <= v20)
            {
              sub_1006314E4(a1, v29, *(v22 + 2 * v21 - 2));
            }
          }

          goto LABEL_43;
        }
      }

      else
      {
        *buf = &v29;
        if (*(sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf)[5] + 70) < 0)
        {
          v23 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a3;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Bitrate: Ignoring first retransmission rate report (%d%%)", buf, 8u);
          }
        }

        else
        {
          sub_100631180(a1, v29, *(*(v9 + 2) + 2 * v15));
        }
      }

      *buf = &v29;
      *(sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf)[5] + 70) = 0;
LABEL_43:
      *buf = &v29;
      *(sub_10005E16C((a1 + 24), &v29, &unk_1008A9BD0, buf)[5] + 78) = 0;
      return;
    }

    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854098();
    }
  }
}

void sub_100621AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  if (*(a2 + 16))
  {
    LOWORD(a5) = *(a2 + 18);
    v9 = ((LODWORD(a5) * 100.0) / *(a2 + 16));
  }

  else
  {
    v9 = 0.0;
  }

  v10 = sub_10000C798(a1, a2);
  v11 = (*(*v10 + 184))(v10);
  if (!v11 || (v13 = sub_10000C7D0(v11, v12), v11 = (*(*v13 + 2872))(v13), !v11))
  {
    v27 = sub_10000C798(v11, v12);
    v28 = (*(*v27 + 184))(v27);
    if (v28)
    {
      v28 = sub_100537B8C(a4);
      if (v28)
      {
        v30 = qword_100BCE8D0;
        if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v119 = a3;
        v31 = *(a2 + 2);
        v32 = *(a2 + 18);
        v33 = *(a2 + 16);
        v34 = *(a2 + 179);
        v101 = *(a2 + 229);
        v105 = *(a2 + 230);
        v111 = *(a2 + 231);
        v35 = 234;
        if (*(a2 + 233) < 2u)
        {
          v35 = 232;
        }

        v36 = *(a2 + v35);
        v89 = *(a2 + 14);
        v91 = *(a2 + 183);
        v93 = *(a2 + 9);
        v95 = *(a2 + 185);
        v97 = *(a2 + 6);
        v99 = *(a2 + 187);
        v103 = *(a2 + 195);
        v108 = *(a2 + 197);
        v115 = *(a2 + 177);
        sub_1000DEEA4(a4, __p);
        if (v123 >= 0)
        {
          v37 = __p;
        }

        else
        {
          v37 = __p[0];
        }

        *buf = 67114242;
        v125 = v31;
        v126 = 2048;
        v127 = v9;
        v128 = 1024;
        v129 = v32;
        v130 = 1024;
        v131 = v33;
        v132 = 1024;
        v133 = v34;
        v134 = 1024;
        v135 = v32 - v34;
        v136 = 1024;
        v137 = v93;
        v138 = 1024;
        v139 = v97;
        v140 = 1024;
        v141 = v101;
        v142 = 1024;
        v143 = v105;
        v144 = 1024;
        v145 = v111;
        v146 = 1024;
        v147 = v36;
        v148 = 1024;
        v149 = v89;
        v150 = 1024;
        *v151 = v91;
        *&v151[4] = 1024;
        *&v151[6] = v95;
        v152 = 1024;
        *v153 = v99;
        *&v153[4] = 1024;
        *&v153[6] = v103;
        v154 = 1024;
        v155 = v108;
        v156 = 1024;
        v157 = v119;
        v158 = 1024;
        v159 = v115;
        v160 = 2080;
        *v161 = v37;
        v24 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d / %3d), NAK = %4d, NoSync = %4d, TxPwr = %2d dBm, RSSI = %4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts = %3d, 3EDR pkts = %3d, HDR4 pkts = %3d, HDR8 pkts = %3d, CoexDenial = %3d, CoexRequest = %3d, rate = %3d kbps Flow off = %d devicename = %s";
        v25 = v30;
        v26 = 136;
        goto LABEL_38;
      }
    }

    v38 = sub_10000C798(v28, v29);
    v39 = (*(*v38 + 864))(v38);
    v40 = qword_100BCE8D0;
    v41 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (v39)
    {
      if (!v41)
      {
        return;
      }

      v120 = a3;
      v42 = *(a2 + 2);
      v43 = *(a2 + 18);
      v44 = *(a2 + 16);
      v45 = *(a2 + 179);
      v46 = *(a2 + 9);
      v47 = *(a2 + 6);
      v48 = *(a2 + 229);
      v49 = *(a2 + 230);
      v50 = *(a2 + 231);
      v51 = 234;
      if (*(a2 + 233) < 2u)
      {
        v51 = 232;
      }

      v52 = *(a2 + v51);
      v53 = *(a2 + 14);
      v54 = *(a2 + 177);
      if (a4)
      {
        v55 = a4;
        v112 = *(a2 + 14);
        v116 = *(a2 + 177);
        v106 = *(a2 + 231);
        v109 = *(a2 + v51);
        v56 = *(a2 + 230);
        v57 = *(a2 + 9);
        sub_1000DEEA4(v55, __p);
        v58 = __p;
        if (v123 < 0)
        {
          v58 = __p[0];
        }

        *buf = 67112962;
        v125 = v42;
        v126 = 2048;
        v127 = v9;
        v128 = 1024;
        v129 = v43;
        v130 = 1024;
        v131 = v44;
        v132 = 1024;
        v133 = v45;
        v134 = 1024;
        v135 = v43 - v45;
        v136 = 1024;
        v137 = v57;
        v138 = 1024;
        v139 = v47;
        v140 = 1024;
        v141 = v48;
        v142 = 1024;
        v143 = v56;
        v144 = 1024;
        v145 = v106;
        v146 = 1024;
        v147 = v109;
        v148 = 1024;
        v149 = v112;
        v150 = 1024;
        *v151 = v120;
        *&v151[4] = 1024;
        *&v151[6] = v116;
        v152 = 2080;
        *v153 = v58;
        v24 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d /%3d), NAK =%4d, NoSync =%4d, TxPwr =%2d dBm, RSSI =%4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts =%3d, rate = %3d kbps Flow off=%d devicename=%s";
        v25 = v40;
        v26 = 106;
        goto LABEL_38;
      }

      *buf = 67112962;
      v125 = v42;
      v126 = 2048;
      v127 = v9;
      v128 = 1024;
      v129 = v43;
      v130 = 1024;
      v131 = v44;
      v132 = 1024;
      v133 = v45;
      v134 = 1024;
      v135 = v43 - v45;
      v136 = 1024;
      v137 = v46;
      v138 = 1024;
      v139 = v47;
      v140 = 1024;
      v141 = v48;
      v142 = 1024;
      v143 = v49;
      v144 = 1024;
      v145 = v50;
      v146 = 1024;
      v147 = v52;
      v148 = 1024;
      v149 = v53;
      v150 = 1024;
      *v151 = v120;
      *&v151[4] = 1024;
      *&v151[6] = v54;
      v152 = 2080;
      *v153 = "(NULL)";
      v75 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d /%3d), NAK =%4d, NoSync =%4d, TxPwr =%2d dBm, RSSI =%4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts =%3d, rate = %3d kbps Flow off=%d devicename=%s";
      v76 = v40;
      v77 = 106;
    }

    else
    {
      if (!v41)
      {
        return;
      }

      v121 = a3;
      v59 = *(a2 + 2);
      v60 = *(a2 + 18);
      v61 = *(a2 + 16);
      v62 = *(a2 + 9);
      v63 = *(a2 + 6);
      v64 = *(a2 + 229);
      v65 = *(a2 + 230);
      v66 = *(a2 + 231);
      v67 = 234;
      if (*(a2 + 233) < 2u)
      {
        v67 = 232;
      }

      v68 = *(a2 + v67);
      v69 = *(a2 + 14);
      v70 = *(a2 + 177);
      if (a4)
      {
        v71 = a4;
        v72 = *(a2 + 231);
        v113 = *(a2 + 14);
        v117 = *(a2 + 177);
        v73 = *(a2 + v67);
        sub_1000DEEA4(v71, __p);
        v74 = __p;
        if (v123 < 0)
        {
          v74 = __p[0];
        }

        *buf = 67112450;
        v125 = v59;
        v126 = 2048;
        v127 = v9;
        v128 = 1024;
        v129 = v60;
        v130 = 1024;
        v131 = v61;
        v132 = 1024;
        v133 = v62;
        v134 = 1024;
        v135 = v63;
        v136 = 1024;
        v137 = v64;
        v138 = 1024;
        v139 = v65;
        v140 = 1024;
        v141 = v72;
        v142 = 1024;
        v143 = v73;
        v144 = 1024;
        v145 = v113;
        v146 = 1024;
        v147 = v121;
        v148 = 1024;
        v149 = v117;
        v150 = 2080;
        *v151 = v74;
        v24 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d /%3d), TxPwr =%2d dBm, RSSI =%4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts =%3d, rate = %3d kbps Flow off=%d devicename=%s";
        v25 = v40;
        v26 = 94;
        goto LABEL_38;
      }

      *buf = 67112450;
      v125 = v59;
      v126 = 2048;
      v127 = v9;
      v128 = 1024;
      v129 = v60;
      v130 = 1024;
      v131 = v61;
      v132 = 1024;
      v133 = v62;
      v134 = 1024;
      v135 = v63;
      v136 = 1024;
      v137 = v64;
      v138 = 1024;
      v139 = v65;
      v140 = 1024;
      v141 = v66;
      v142 = 1024;
      v143 = v68;
      v144 = 1024;
      v145 = v69;
      v146 = 1024;
      v147 = v121;
      v148 = 1024;
      v149 = v70;
      v150 = 2080;
      *v151 = "(NULL)";
      v75 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d /%3d), TxPwr =%2d dBm, RSSI =%4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts =%3d, rate = %3d kbps Flow off=%d devicename=%s";
      v76 = v40;
      v77 = 94;
    }

    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, v75, buf, v77);
    return;
  }

  v14 = *(a2 + 6);
  *(a1 + 400) = *(a2 + 6);
  v15 = *(a1 + 404);
  if (v15)
  {
    *(a1 + 404) = v15 - 1;
  }

  v16 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a2 + 2);
    v18 = *(a2 + 18);
    v19 = *(a2 + 16);
    v118 = a3;
    v20 = *(a2 + 179);
    v85 = *(a2 + 230);
    v87 = *(a2 + 231);
    v21 = 234;
    if (*(a2 + 233) < 2u)
    {
      v21 = 232;
    }

    v22 = *(a2 + v21);
    v78 = *(a2 + 14);
    v79 = *(a2 + 9);
    v80 = *(a2 + 183);
    v81 = *(a2 + 185);
    v82 = *(a2 + 187);
    v83 = *(a2 + 229);
    v84 = *(a2 + 189);
    v86 = *(a2 + 191);
    v88 = *(a2 + 193);
    v90 = *(a2 + 195);
    v92 = *(a2 + 197);
    v94 = *(a2 + 199);
    v96 = *(a2 + 201);
    v98 = *(a2 + 203);
    v100 = *(a2 + 205);
    v102 = *(a2 + 207);
    v104 = *(a2 + 209);
    v107 = *(a2 + 211);
    v110 = *(a2 + 213);
    v114 = *(a2 + 177);
    sub_1000DEEA4(a4, __p);
    v125 = v17;
    v23 = __p[0];
    if (v123 >= 0)
    {
      v23 = __p;
    }

    v126 = 2048;
    *buf = 67117058;
    v127 = v9;
    v129 = v18;
    v128 = 1024;
    v130 = 1024;
    v131 = v19;
    v132 = 1024;
    v133 = v20;
    v134 = 1024;
    v135 = v18 - v20;
    v136 = 1024;
    v137 = v79;
    v138 = 1024;
    v139 = v14;
    v140 = 1024;
    v141 = v83;
    v142 = 1024;
    v143 = v85;
    v144 = 1024;
    v145 = v87;
    v146 = 1024;
    v147 = v22;
    v148 = 1024;
    v149 = v78;
    v150 = 1024;
    *v151 = v80;
    *&v151[4] = 1024;
    *&v151[6] = v81;
    v152 = 1024;
    *v153 = v82;
    *&v153[4] = 1024;
    *&v153[6] = v84;
    v154 = 1024;
    v155 = v86;
    v156 = 1024;
    v157 = v88;
    v158 = 1024;
    v159 = v90;
    v160 = 1024;
    *v161 = v92;
    *&v161[4] = 1024;
    *&v161[6] = v94;
    v162 = 1024;
    v163 = v96;
    v164 = 1024;
    v165 = v98;
    v166 = 1024;
    v167 = v100;
    v168 = 1024;
    v169 = v102;
    v170 = 1024;
    v171 = v104;
    v172 = 1024;
    v173 = v107;
    v174 = 1024;
    v175 = v110;
    v176 = 1024;
    v177 = v118;
    v178 = 1024;
    v179 = v114;
    v180 = 2080;
    v181 = v23;
    v24 = "A2DP LinkQualityReport: Handle = %d ReTx = %4.1f%% (%3d / %3d), NAK = %4d, NoSync = %4d, TxPwr = %2d dBm, RSSI = %4d, {50,75,90}th Noise = {%4d,%4d,%4d} for %2d ch, 2EDR pkts = %3d, 3EDRTx pkts = %3d, HDR4Tx pkts = %3d, HDR8Tx pkts = %3d,  1SlotTx pkts = %3d, 3SlotTx pkts = %3d, 5SlotTx pkts = %3d, CoexDenial = %3d, CoexRequest = %3d, 3EDRRx pkts = %3d, HDR4Rx pkts = %3d, HDR8Rx pkts = %3d, 1SlotRx pkts = %3d, 3SlotRx pkts = %3d, 5SlotRx pkts = %3d, TxFlush pkts =%3d, Tx2Flush pkts = %3d, rate = %3d kbps Flow off = %d devicename = %s";
    v25 = v16;
    v26 = 202;
LABEL_38:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    if (v123 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void *sub_100622500(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = &v39;
  *(*(sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40)[5] + 8) + 168) = *(a3 + 6);
  v40 = &v39;
  v5 = *(sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40)[5] + 8);
  *(v5 + 192) += *(a3 + 6);
  ++*(v5 + 200);
  v40 = &v39;
  v6 = *(sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40)[5] + 8);
  v7 = *(a3 + 7);
  if (*(v6 + 204) > v7)
  {
    *(v6 + 204) = v7;
  }

  v40 = &v39;
  v8 = *(sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40)[5] + 8);
  v9 = *(a3 + 8);
  if (*(v8 + 208) < v9)
  {
    *(v8 + 208) = v9;
  }

  v40 = &v39;
  v10 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v10[5] + 8) + 96) += *(a3 + 34);
  v40 = &v39;
  v11 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v11[5] + 8) + 100) += *(a3 + 58);
  v40 = &v39;
  v12 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v12[5] + 8) + 104) += *(a3 + 46);
  v40 = &v39;
  v13 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v13[5] + 8) + 108) += *(a3 + 70);
  v40 = &v39;
  v14 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v14[5] + 8) + 112) += *(a3 + 40) + *(a3 + 28) + *(a3 + 50);
  v40 = &v39;
  v15 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v15[5] + 8) + 116) += *(a3 + 64) + 2 * *(a3 + 74);
  v40 = &v39;
  v16 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v16[5] + 8) + 120) += *(a3 + 36) + *(a3 + 32);
  v40 = &v39;
  v17 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v17[5] + 8) + 124) += *(a3 + 60) + *(a3 + 56);
  v40 = &v39;
  v18 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v18[5] + 8) + 128) += *(a3 + 44);
  v40 = &v39;
  v19 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  *(*(v19[5] + 8) + 132) += *(a3 + 68);
  if (*(a3 + 70))
  {
    v40 = &v39;
    *(*(sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40)[5] + 8) + 216) = ((*(a3 + 70) * 100.0) / (*(a3 + 46) + *(a3 + 70)));
    v40 = &v39;
    v20 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
    LOWORD(v21) = *(a3 + 70);
    *(*(v20[5] + 8) + 220) = ((100 * (*(a3 + 60) + *(a3 + 56))) / v21);
  }

  v40 = &v39;
  result = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
  if (*(*(result[5] + 8) + 237) == 1)
  {
    if (*(v39 + 1437) == 1)
    {
      v40 = &v39;
      v23 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
      ++*(*(v23[5] + 8) + 244);
    }

    else
    {
      v40 = &v39;
      v24 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
      ++*(*(v24[5] + 8) + 240);
    }

    v25 = *(a3 + 12);
    v40 = &v39;
    v26 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
    *(*(v26[5] + 8) + 248) += v25;
    v27 = *(a3 + 18);
    v40 = &v39;
    v28 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
    *(*(v28[5] + 8) + 256) += v27;
    v29 = *(a3 + 211);
    v40 = &v39;
    v30 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
    *(*(v30[5] + 8) + 264) += v29;
    v31 = *(a3 + 213);
    v40 = &v39;
    v32 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
    *(*(v32[5] + 8) + 272) += v31;
    v33 = *(a3 + 16);
    v40 = &v39;
    v34 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
    *(*(v34[5] + 8) + 280) += v33;
    v40 = &v39;
    v35 = *(*(sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40)[5] + 8) + 256);
    v40 = &v39;
    LODWORD(v33) = (v35 / *(*(sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40)[5] + 8) + 280) * 100.0);
    v40 = &v39;
    *(*(sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40)[5] + 8) + 216) = v33;
    v36 = *(a3 + 20);
    v40 = &v39;
    v37 = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
    *(*(v37[5] + 8) + 288) += v36;
    v38 = *(a3 + 22);
    v40 = &v39;
    result = sub_10005E16C(a1 + 192, &v39, &unk_1008A9BD0, &v40);
    *(*(result[5] + 8) + 296) += v38;
  }

  return result;
}

void sub_100622BCC(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  v65 = 0;
  v66 = 0;
  v5 = sub_1006360F0(a1, a3, &v66 + 1, &v66, &v65, &v65 + 1, a2);
  v7 = *sub_10000C7D0(v5, v6);
  v8 = (*(v7 + 2872))();
  v9 = qword_100BCE8D0;
  v10 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (!v10)
    {
      return;
    }

    v35 = *(a2 + 6);
    v36 = *(a2 + 9);
    v37 = HIDWORD(v66);
    v38 = *(a2 + 46);
    v39 = HIDWORD(v65);
    v40 = ((100 * (*(a2 + 40) + *(a2 + 28) + *(a2 + 50))) / v38);
    v41 = *(a2 + 70);
    v42 = ((100 * (*(a2 + 64) + *(a2 + 52) + *(a2 + 74))) / v41);
    v43 = ((100 * (*(a2 + 36) + *(a2 + 32))) / v38);
    v44 = ((100 * (*(a2 + 60) + *(a2 + 56))) / v41);
    v45 = *(a2 + 44);
    v46 = ((100 * (*(a2 + 68) + v45)) / (v41 + v38));
    v47 = ((v45 * 100.0) / v38);
    v48 = *(a2 + 229);
    v49 = *(a2 + 230);
    v50 = *(a2 + 231);
    v51 = *(a2 + 232);
    if (a3)
    {
      v52 = a3;
      v53 = v66;
      v60 = *(a2 + 231);
      v62 = *(a2 + 232);
      v54 = *(a2 + 6);
      sub_1000DEEA4(v52, __p);
      v55 = __p;
      if (v64 < 0)
      {
        v55 = __p[0];
      }

      *buf = 67113218;
      v68 = v54;
      v69 = 1024;
      v70 = v36;
      v71 = 1024;
      v72 = v37;
      v73 = 1024;
      v74 = v53;
      v75 = 1024;
      v76 = v39;
      v77 = 2048;
      v78 = v40;
      v79 = 2048;
      v80 = v42;
      v81 = 2048;
      v82 = v43;
      v83 = 2048;
      v84 = v44;
      v85 = 2048;
      v86 = v46;
      v87 = 2048;
      v88 = v47;
      v89 = 1024;
      v90 = v48;
      v91 = 1024;
      v92 = v49;
      v93 = 1024;
      v94 = v60;
      v95 = 1024;
      v96 = v38;
      v97 = 1024;
      v98 = v62;
      v99 = 2080;
      *v100 = v55;
      v32 = "HFP LinkQualityReport: RSSI =%4d, TxPower =%2d, PLC count = %u, Received SCO count = %u, AudioInput: %u, TX [TX: %4.1f%%, ReTX: %4.1f%%], RX [TX: %4.1f%%, ReTX: %4.1f%%] ,ePA Packets = %4.1f%%, ePA CallTime = %4.1f%%, 50/75/90th Noise = (%4d,%4d,%4d), eSCO scheduled pkts = %3d, for %2d ch devicename= %s";
      v33 = v9;
      v34 = 132;
      goto LABEL_12;
    }

    *buf = 67113218;
    v68 = v35;
    v69 = 1024;
    v70 = v36;
    v71 = 1024;
    v72 = HIDWORD(v66);
    v73 = 1024;
    v74 = v66;
    v75 = 1024;
    v76 = HIDWORD(v65);
    v77 = 2048;
    v78 = v40;
    v79 = 2048;
    v80 = v42;
    v81 = 2048;
    v82 = v43;
    v83 = 2048;
    v84 = v44;
    v85 = 2048;
    v86 = v46;
    v87 = 2048;
    v88 = v47;
    v89 = 1024;
    v90 = v48;
    v91 = 1024;
    v92 = v49;
    v93 = 1024;
    v94 = v50;
    v95 = 1024;
    v96 = v38;
    v97 = 1024;
    v98 = v51;
    v99 = 2080;
    *v100 = "(NULL)";
    v56 = "HFP LinkQualityReport: RSSI =%4d, TxPower =%2d, PLC count = %u, Received SCO count = %u, AudioInput: %u, TX [TX: %4.1f%%, ReTX: %4.1f%%], RX [TX: %4.1f%%, ReTX: %4.1f%%] ,ePA Packets = %4.1f%%, ePA CallTime = %4.1f%%, 50/75/90th Noise = (%4d,%4d,%4d), eSCO scheduled pkts = %3d, for %2d ch devicename= %s";
    v57 = v9;
    v58 = 132;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, v56, buf, v58);
    return;
  }

  if (!v10)
  {
    return;
  }

  v11 = *(a2 + 6);
  v12 = *(a2 + 9);
  v13 = HIDWORD(v66);
  v14 = *(a2 + 46);
  v15 = *(a2 + 70);
  v16 = ((100 * (*(a2 + 40) + *(a2 + 28) + *(a2 + 50))) / v14);
  v17 = ((100 * (*(a2 + 64) + *(a2 + 52) + *(a2 + 74))) / v15);
  v18 = ((100 * (*(a2 + 36) + *(a2 + 32))) / v14);
  v19 = *(a2 + 44);
  v20 = ((100 * (*(a2 + 60) + *(a2 + 56))) / v15);
  v21 = ((100 * (*(a2 + 68) + v19)) / (v15 + v14));
  v22 = ((v19 * 100.0) / v14);
  v23 = *(a2 + 229);
  v24 = *(a2 + 230);
  v25 = *(a2 + 231);
  v26 = *(a2 + 232);
  v27 = *(a2 + 215);
  if (!a3)
  {
    *buf = 67113474;
    v68 = v11;
    v69 = 1024;
    v70 = v12;
    v71 = 1024;
    v72 = HIDWORD(v66);
    v73 = 1024;
    v74 = v66;
    v75 = 1024;
    v76 = HIDWORD(v65);
    v77 = 2048;
    v78 = v16;
    v79 = 2048;
    v80 = v17;
    v81 = 2048;
    v82 = v18;
    v83 = 2048;
    v84 = v20;
    v85 = 2048;
    v86 = v21;
    v87 = 2048;
    v88 = v22;
    v89 = 1024;
    v90 = v23;
    v91 = 1024;
    v92 = v24;
    v93 = 1024;
    v94 = v25;
    v95 = 1024;
    v96 = v26;
    v97 = 1024;
    v98 = v27;
    v99 = 1024;
    *v100 = v14;
    *&v100[4] = 2080;
    *&v100[6] = "(NULL)";
    v56 = "HFP LinkQualityReport: RSSI =%4d, TxPower =%2d, PLC count = %u, Received SCO count = %u, AudioInput: %u, TX [TX: %4.1f%%, ReTX: %4.1f%%], RX [TX: %4.1f%%, ReTX: %4.1f%%] ,ePA Packets = %4.1f%%, ePA CallTime = %4.1f%%, 50/75/90th Noise = (%4d,%4d,%4d) for %2d ch, eSCONak pkts = %3d, eSCO scheduled pkts = %3d, devicename= %s";
    v57 = v9;
    v58 = 138;
    goto LABEL_16;
  }

  v28 = a3;
  v29 = HIDWORD(v65);
  v30 = v66;
  v59 = v26;
  v61 = v27;
  sub_1000DEEA4(v28, __p);
  v31 = __p;
  if (v64 < 0)
  {
    v31 = __p[0];
  }

  *buf = 67113474;
  v68 = v11;
  v69 = 1024;
  v70 = v12;
  v71 = 1024;
  v72 = v13;
  v73 = 1024;
  v74 = v30;
  v75 = 1024;
  v76 = v29;
  v77 = 2048;
  v78 = v16;
  v79 = 2048;
  v80 = v17;
  v81 = 2048;
  v82 = v18;
  v83 = 2048;
  v84 = v20;
  v85 = 2048;
  v86 = v21;
  v87 = 2048;
  v88 = v22;
  v89 = 1024;
  v90 = v23;
  v91 = 1024;
  v92 = v24;
  v93 = 1024;
  v94 = v25;
  v95 = 1024;
  v96 = v59;
  v97 = 1024;
  v98 = v61;
  v99 = 1024;
  *v100 = v14;
  *&v100[4] = 2080;
  *&v100[6] = v31;
  v32 = "HFP LinkQualityReport: RSSI =%4d, TxPower =%2d, PLC count = %u, Received SCO count = %u, AudioInput: %u, TX [TX: %4.1f%%, ReTX: %4.1f%%], RX [TX: %4.1f%%, ReTX: %4.1f%%] ,ePA Packets = %4.1f%%, ePA CallTime = %4.1f%%, 50/75/90th Noise = (%4d,%4d,%4d) for %2d ch, eSCONak pkts = %3d, eSCO scheduled pkts = %3d, devicename= %s";
  v33 = v9;
  v34 = 138;
LABEL_12:
  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }
}

double sub_100623278(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = &v23;
  if (*(sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5] + 24))
  {
    v24 = &v23;
    if (*sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5])
    {
      v24 = &v23;
      if (*(*(sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5] + 24) + 180))
      {
        if (*(a3 + 16))
        {
          v6 = 100 * *(a3 + 18) / *(a3 + 16);
        }

        else
        {
          v6 = 0;
        }

        if (*(a3 + 197))
        {
          v7 = *(a3 + 195) / *(a3 + 197);
          if (!*(a3 + 195))
          {
            v7 = 0.0;
          }
        }

        else
        {
          v7 = 0.0;
        }

        v22 = v7;
        v24 = &v23;
        v8 = *(sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5] + 24);
        *(v8 + 172) += v6;
        ++*(v8 + 148);
        v24 = &v23;
        v9 = *(sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5] + 24);
        *(v9 + 176) += *(a3 + 6);
        ++*(v9 + 168);
        v24 = &v23;
        v10 = *(sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5] + 24);
        v11 = *(a3 + 7);
        if (*(v10 + 160) > v11)
        {
          *(v10 + 160) = v11;
        }

        v24 = &v23;
        v12 = *(sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5] + 24);
        v13 = *(a3 + 8);
        if (*(v12 + 156) < v13)
        {
          *(v12 + 156) = v13;
        }

        v24 = &v23;
        v14 = *(*sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5] + 320);
        v24 = &v23;
        *(*(sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5] + 24) + 188) = v14;
        v24 = &v23;
        v15 = sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24);
        __asm { FMOV            V1.2S, #1.0 }

        _D1.f32[0] = v22;
        *(*(v15[5] + 24) + 196) = vadd_f32(_D1, *(*(v15[5] + 24) + 196));
      }

      v24 = &v23;
      v21 = sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24);
      ++*(*(v21[5] + 24) + 184);
      v24 = &v23;
      if (*(*(sub_10005E16C(a1 + 192, &v23, &unk_1008A9BD0, &v24)[5] + 24) + 184) >= 0x3Cu)
      {
        return sub_1006235A0(a1, v23);
      }
    }
  }

  return result;
}

double sub_1006235A0(uint64_t a1, unint64_t a2)
{
  v15 = a2;
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trigger A2dpPacketFlush metrics", buf, 2u);
  }

  *buf = &v15;
  if (*(sub_10005E16C(a1 + 192, &v15, &unk_1008A9BD0, buf)[5] + 80) == 1)
  {
    *buf = &v15;
    if (*(sub_10005E16C(a1 + 192, &v15, &unk_1008A9BD0, buf)[5] + 84) == 2)
    {
      *buf = &v15;
      if (*(*(sub_10005E16C(a1 + 192, &v15, &unk_1008A9BD0, buf)[5] + 24) + 180) >= 0xAu)
      {
        v4 = sub_10063AF08(a1, v15);
        v6 = sub_10000F034(v4, v5);
        *buf = &v15;
        v7 = sub_10005E16C(a1 + 192, &v15, &unk_1008A9BD0, buf);
        (*(*v6 + 96))(v6, *(v7[5] + 24));
        if (_os_feature_enabled_impl())
        {
          if (qword_100B543A8 != -1)
          {
            sub_100853E98();
          }

          v8 = qword_100B543A0;
          v9 = v15;
          *buf = &v15;
          v10 = sub_10005E16C(a1 + 192, &v15, &unk_1008A9BD0, buf);
          sub_100705B08(v8, v9, *v10[5]);
          v11 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sent A2DP Packet Flush Info to AccessoryUsageSummary", buf, 2u);
          }
        }

        *buf = &v15;
        if (*sub_10005E16C(a1 + 192, &v15, &unk_1008A9BD0, buf)[5])
        {
          *buf = &v15;
          v12 = sub_10005E16C(a1 + 192, &v15, &unk_1008A9BD0, buf);
          ++*(*v12[5] + 256);
        }
      }
    }
  }

  *buf = &v15;
  v13 = *(sub_10005E16C(a1 + 192, &v15, &unk_1008A9BD0, buf)[5] + 24);
  *(v13 + 148) = 0;
  *(v13 + 156) = 4294967169;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  *(v13 + 184) = 0;
  result = NAN;
  *v13 = xmmword_1008AA9C0;
  *(v13 + 16) = xmmword_1008AA9D0;
  *(v13 + 32) = 0;
  return result;
}

void sub_10062388C(uint64_t a1, __int128 *a2, int *a3)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x10C12000000;
  v15[3] = sub_100623A58;
  v15[4] = nullsub_506;
  v15[5] = "";
  v4 = a2[11];
  v26 = a2[10];
  v27 = v4;
  v28[0] = a2[12];
  *(v28 + 12) = *(a2 + 204);
  v5 = a2[7];
  v22 = a2[6];
  v23 = v5;
  v6 = a2[9];
  v24 = a2[8];
  v25 = v6;
  v7 = a2[3];
  v18 = a2[2];
  v19 = v7;
  v8 = a2[5];
  v20 = a2[4];
  v21 = v8;
  v9 = a2[1];
  v16 = *a2;
  v17 = v9;
  v13 = *a3;
  v14 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v10 = sub_1000E6554(off_100B508E8, &v13, 0);
  v11 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100623AA0;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = v10;
  block[4] = v15;
  dispatch_async(v11, block);
  _Block_object_dispose(v15, 8);
}

__n128 sub_100623A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  v8 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v8;
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  result = *(a2 + 208);
  v10 = *(a2 + 224);
  v11 = *(a2 + 240);
  *(a1 + 252) = *(a2 + 252);
  *(a1 + 224) = v10;
  *(a1 + 240) = v11;
  *(a1 + 208) = result;
  return result;
}

void sub_100623AA0(void *result)
{
  v1 = result[6];
  if (v1)
  {
    v3 = result[5];
    v4 = *(v3 + 200);
    if (v4)
    {
      v5 = v3 + 200;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= v1;
        v8 = v6 < v1;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != v3 + 200 && v1 >= *(v5 + 32))
      {
        v9 = sub_10000E92C();
        v10 = (*(*v9 + 288))(v9);
        if ((v10 & 1) == 0)
        {
          *(v3 + 958) = *(*(result[4] + 8) + 220);
          v11 = *(result[4] + 8);
          v12 = *(v11 + 221);
          v13 = *(v11 + 237);
          *(v3 + 990) = *(v11 + 252);
          *(v3 + 959) = v12;
          *(v3 + 975) = v13;
          v14 = result[6];
          v15 = (*(result[4] + 8) + 48);

          sub_100623B98(v10, v15, v14);
        }
      }
    }
  }
}

void sub_100623B98(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v6 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v7 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v8 = *(a2 + 172);
  if (v8)
  {
    [v5 appendString:@"ISM 2.4"];
    v8 = *(a2 + 172);
  }

  if ((v8 & 2) != 0)
  {
    [v5 appendString:@"UNII-1 "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 4) != 0)
  {
    [v5 appendString:@"UNII-3 "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 8) != 0)
  {
    [v5 appendString:@"UNII-4 "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 0x10) != 0)
  {
    [v5 appendString:@"UNII-5A "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 0x20) != 0)
  {
    [v5 appendString:@"UNII-5B "];
    v8 = *(a2 + 172);
  }

  if ((v8 & 0x40) != 0)
  {
    [v5 appendString:@"UNII-5C "];
    v8 = *(a2 + 172);
  }

  if (v8 < 0)
  {
    [v5 appendString:@"UNII-5D "];
  }

  for (i = 2; i != 12; ++i)
  {
    [v6 appendFormat:@"%02X ", *(a2 + i)];
  }

  do
  {
    [v7 appendFormat:@"%d ", *(a2 + i)];
    i += 2;
  }

  while (i != 172);
  v10 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    sub_1000DEEA4(a3, __p);
    if (v14 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 67110146;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2080;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "A2DP HRB LinkQualityReport: Handle = %d, band = %@, AFH Channel Map: [%@], AFH Frequency Map: [%@], devicename = %s", buf, 0x30u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100623E5C(uint64_t a1, __int128 *a2, int *a3)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0xB212000000;
  v13[3] = sub_100623FE4;
  v13[4] = nullsub_507;
  v13[5] = "";
  v4 = a2[7];
  v20 = a2[6];
  v21 = v4;
  v22 = *(a2 + 64);
  v5 = a2[3];
  v16 = a2[2];
  v17 = v5;
  v6 = a2[5];
  v18 = a2[4];
  v19 = v6;
  v7 = a2[1];
  v14 = *a2;
  v15 = v7;
  v11 = *a3;
  v12 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v8 = sub_1000E6554(off_100B508E8, &v11, 0);
  v9 = *(a1 + 256);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10062401C;
  v10[3] = &unk_100AE0EB8;
  v10[5] = a1;
  v10[6] = v8;
  v10[4] = v13;
  dispatch_async(v9, v10);
  _Block_object_dispose(v13, 8);
}

__n128 sub_100623FE4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  result = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 128) = result;
  return result;
}

void sub_10062401C(void *result)
{
  v1 = result[6];
  if (v1)
  {
    v3 = result[5];
    v4 = *(v3 + 200);
    if (v4)
    {
      v5 = v3 + 200;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= v1;
        v8 = v6 < v1;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != v3 + 200 && v1 >= *(v5 + 32))
      {
        v9 = sub_10000E92C();
        v10 = (*(*v9 + 288))(v9);
        if ((v10 & 1) == 0)
        {
          *(v3 + 958) = *(*(result[4] + 8) + 50);
          v11 = *(result[4] + 8);
          v12 = *(v11 + 116);
          v13 = *(v11 + 132);
          v14 = *(v11 + 148);
          *(v3 + 1116) = *(v11 + 162);
          *(v3 + 1086) = v13;
          *(v3 + 1102) = v14;
          *(v3 + 1070) = v12;
          v15 = *(v11 + 52);
          v16 = *(v11 + 68);
          v17 = *(v11 + 100);
          *(v3 + 1038) = *(v11 + 84);
          *(v3 + 1054) = v17;
          *(v3 + 1006) = v15;
          *(v3 + 1022) = v16;
          v18 = result[6];
          v19 = (*(result[4] + 8) + 48);

          sub_100624134(v10, v19, v18);
        }
      }
    }
  }
}

void sub_100624134(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v6 = v5;
  v7 = *(a2 + 2);
  if (v7)
  {
    [v5 appendString:@"ISM 2.4"];
    v7 = *(a2 + 2);
  }

  if ((v7 & 2) != 0)
  {
    [v6 appendString:@"UNII-1 "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 4) != 0)
  {
    [v6 appendString:@"UNII-3 "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 8) != 0)
  {
    [v6 appendString:@"UNII-4 "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 0x10) != 0)
  {
    [v6 appendString:@"UNII-5A "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 0x20) != 0)
  {
    [v6 appendString:@"UNII-5B "];
    v7 = *(a2 + 2);
  }

  if ((v7 & 0x40) != 0)
  {
    [v6 appendString:@"UNII-5C "];
    v7 = *(a2 + 2);
  }

  if (v7 < 0)
  {
    [v6 appendString:@"UNII-5D "];
  }

  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a2;
    sub_1000DEEA4(a3, __p);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 67109634;
    v14 = v9;
    v15 = 2112;
    v16 = v6;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A2DP HRB Noise Noise Floor LinkQualityReport: Handle = %d, band = %@, devicename = %s", buf, 0x1Cu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100624334(uint64_t a1, __int128 *a2, int *a3)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0xF012000000;
  v14[3] = sub_1006244EC;
  v14[4] = nullsub_508;
  v14[5] = "";
  v4 = a2[9];
  v23 = a2[8];
  v24 = v4;
  v25[0] = a2[10];
  *(v25 + 15) = *(a2 + 175);
  v5 = a2[5];
  v19 = a2[4];
  v20 = v5;
  v6 = a2[7];
  v21 = a2[6];
  v22 = v6;
  v7 = a2[1];
  v15 = *a2;
  v16 = v7;
  v8 = a2[3];
  v17 = a2[2];
  v18 = v8;
  v12 = *a3;
  v13 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v9 = sub_1000E6554(off_100B508E8, &v12, 0);
  v10 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062452C;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = v9;
  block[4] = v14;
  dispatch_async(v10, block);
  _Block_object_dispose(v14, 8);
}

__n128 sub_1006244EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  v5 = *(a2 + 112);
  v6 = *(a2 + 128);
  v7 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v7;
  *(a1 + 112) = v5;
  *(a1 + 128) = v6;
  result = *(a2 + 176);
  v9 = *(a2 + 192);
  v10 = *(a2 + 208);
  *(a1 + 223) = *(a2 + 223);
  *(a1 + 192) = v9;
  *(a1 + 208) = v10;
  *(a1 + 176) = result;
  return result;
}

void sub_10062452C(void *result)
{
  v1 = result[6];
  if (v1)
  {
    v3 = result[5];
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = v4;
      do
      {
        v8 = *(v5 + 32);
        v9 = v8 >= v1;
        v10 = v8 < v1;
        if (v9)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * v10);
      }

      while (v5);
      if (v7 != v4 && v1 >= *(v7 + 32))
      {
        v11 = sub_10000E92C();
        v12 = (*(*v11 + 288))(v11);
        if ((v12 & 1) == 0)
        {
          v13 = result[6];
          v14 = (*(result[4] + 8) + 48);

          sub_1006245F0(v12, v14, v13);
        }
      }
    }
  }
}

void sub_1006245F0(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a2 + 9);
  v5 = *(a2 + 39);
  v6 = v4;
  v7 = v5;
  do
  {
    v8 = *(a2 + v3 + 10);
    if (v8 < v4)
    {
      v4 = *(a2 + v3 + 10);
    }

    if (v8 > v6)
    {
      v6 = *(a2 + v3 + 10);
    }

    v9 = *(a2 + v3 + 40);
    if (v9 < v5)
    {
      v5 = *(a2 + v3 + 40);
    }

    if (v9 > v7)
    {
      v7 = *(a2 + v3 + 40);
    }

    ++v3;
  }

  while (v3 != 29);
  v53 = v7;
  v55 = v5;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  do
  {
    v19 = &a2[v10];
    v20 = HIBYTE(a2[v10 + 34]);
    if (v20 == 3)
    {
      v21 = v16 + 1;
    }

    else
    {
      v21 = v16;
    }

    if (v20 == 2)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = v17;
    }

    if (v20 == 2)
    {
      v21 = v16;
    }

    if (v20 == 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = v18;
    }

    if (HIBYTE(a2[v10 + 34]))
    {
      v24 = v11;
    }

    else
    {
      v23 = v18;
      v24 = v11 + 1;
    }

    if (HIBYTE(a2[v10 + 34]) > 1u)
    {
      v17 = v22;
    }

    else
    {
      v18 = v23;
    }

    if (HIBYTE(a2[v10 + 34]) <= 1u)
    {
      v11 = v24;
    }

    else
    {
      v16 = v21;
    }

    ++v10;
    v25 = *(v19 + 70);
    if (v25 == 3)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v12;
    }

    if (v25 == 2)
    {
      v27 = v13 + 1;
    }

    else
    {
      v27 = v13;
    }

    if (v25 == 2)
    {
      v26 = v12;
    }

    if (v25 == 1)
    {
      v28 = v14 + 1;
    }

    else
    {
      v28 = v14;
    }

    if (v25)
    {
      v29 = v15;
    }

    else
    {
      v29 = v15 + 1;
    }

    if (!v25)
    {
      v28 = v14;
    }

    if (v25 > 1)
    {
      v13 = v27;
      v12 = v26;
    }

    else
    {
      v15 = v29;
      v14 = v28;
    }
  }

  while ((v10 * 2 - 2) < 0x39);
  v58 = [NSMutableString stringWithFormat:@", v1 AoSCoexDenialBitmap = 0x%X ", *(a2 + 189)];
  log = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a2 + 7);
    v31 = *a2;
    v32 = v6;
    v33 = v15;
    v34 = v14;
    v35 = *(a2 + 3);
    v36 = v12;
    v37 = *(a2 + 5);
    v38 = v11;
    v39 = v18;
    v40 = v17;
    v41 = v16;
    if (a3)
    {
      v42 = *(a2 + 7);
      v43 = *a2;
      v48 = v53;
      v49 = v33;
      v44 = v32;
      v50 = v34;
      v51 = v36;
      v54 = v38;
      sub_1000DEEA4(a3, __p);
      if (v60 >= 0)
      {
        v45 = __p;
      }

      else
      {
        v45 = __p[0];
      }

      v46 = v58;
      if (*(a2 + 2) != 1)
      {
        v46 = &stru_100B0F9E0;
      }

      *buf = 67113474;
      v62 = v42;
      v63 = 1024;
      v64 = v43;
      v65 = 1024;
      v66 = v35;
      v67 = 1024;
      v68 = v37;
      v69 = 1024;
      v70 = v4;
      v71 = 1024;
      v72 = v44;
      v73 = 1024;
      v74 = v55;
      v75 = 1024;
      v76 = v48;
      v77 = 1024;
      v78 = v49;
      v79 = 1024;
      v80 = v50;
      v81 = 1024;
      v82 = v13;
      v83 = 1024;
      v84 = v51;
      v85 = 1024;
      v86 = v54;
      v87 = 1024;
      v88 = v39;
      v89 = 1024;
      v90 = v40;
      v91 = 1024;
      v92 = v41;
      v93 = 2080;
      v94 = v45;
      v95 = 2112;
      v96 = v46;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "A2DP BtCoexLinkStats: Handle = %d, BtClock = %5d, CoexReq = %4d, CoexReqDenied = %4d, SNR-Last30Tran (min, max): (%3d, %3d), RSSI-Last30Tran (min, max): (%4d, %4d), TxInfo-Last30Pkts (Good, ReTxNak, ReTxNoSync, Poll) (%2d, %2d, %2d, %2d),  RxInfo-Last30Pkts (Good, CrcErr, HeaderErr, NoSync) (%2d, %2d, %2d, %2d), devicename = %s %@", buf, 0x76u);
      if (v60 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v47 = v58;
      if (*(a2 + 2) != 1)
      {
        v47 = &stru_100B0F9E0;
      }

      *buf = 67113474;
      v62 = v30;
      v63 = 1024;
      v64 = v31;
      v65 = 1024;
      v66 = v35;
      v67 = 1024;
      v68 = v37;
      v69 = 1024;
      v70 = v4;
      v71 = 1024;
      v72 = v32;
      v73 = 1024;
      v74 = v55;
      v75 = 1024;
      v76 = v53;
      v77 = 1024;
      v78 = v15;
      v79 = 1024;
      v80 = v14;
      v81 = 1024;
      v82 = v13;
      v83 = 1024;
      v84 = v36;
      v85 = 1024;
      v86 = v38;
      v87 = 1024;
      v88 = v39;
      v89 = 1024;
      v90 = v40;
      v91 = 1024;
      v92 = v16;
      v93 = 2080;
      v94 = "(NULL)";
      v95 = 2112;
      v96 = v47;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "A2DP BtCoexLinkStats: Handle = %d, BtClock = %5d, CoexReq = %4d, CoexReqDenied = %4d, SNR-Last30Tran (min, max): (%3d, %3d), RSSI-Last30Tran (min, max): (%4d, %4d), TxInfo-Last30Pkts (Good, ReTxNak, ReTxNoSync, Poll) (%2d, %2d, %2d, %2d),  RxInfo-Last30Pkts (Good, CrcErr, HeaderErr, NoSync) (%2d, %2d, %2d, %2d), devicename = %s %@", buf, 0x76u);
    }
  }
}

void sub_100624A70(uint64_t a1, _OWORD *a2, int *a3)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x5012000000;
  v9[3] = sub_100624BAC;
  v9[4] = nullsub_509;
  v9[5] = "";
  v10[0] = *a2;
  *(v10 + 11) = *(a2 + 11);
  v7 = *a3;
  v8 = *(a3 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100853FB4();
  }

  v4 = sub_1000E6554(off_100B508E8, &v7, 0);
  v5 = *(a1 + 256);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100624BC4;
  v6[3] = &unk_100AE0EB8;
  v6[5] = a1;
  v6[6] = v4;
  v6[4] = v9;
  dispatch_async(v5, v6);
  _Block_object_dispose(v9, 8);
}

void sub_100624B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100624BAC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 48) = result;
  return result;
}

void sub_100624BC4(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v4 = result[5];
    v5 = *(v4 + 200);
    if (v5)
    {
      v6 = v4 + 200;
      do
      {
        v7 = *(v5 + 32);
        v8 = v7 >= v2;
        v9 = v7 < v2;
        if (v8)
        {
          v6 = v5;
        }

        v5 = *(v5 + 8 * v9);
      }

      while (v5);
      if (v6 != v4 + 200 && v2 >= *(v6 + 32))
      {
        v10 = sub_10000C798(result, a2);
        if ((*(*v10 + 168))(v10) && *(v4 + 872) != 3)
        {
          sub_100624CE4(v4, result[6], (*(result[4] + 8) + 48));
        }

        v11 = sub_10000E92C();
        v12 = (*(*v11 + 288))(v11);
        if ((v12 & 1) == 0 && *(v4 + 872) != 3)
        {
          v13 = *(result[4] + 8) + 48;

          sub_100624E3C(v12, v13);
        }
      }
    }
  }
}

void *sub_100624CE4(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  v12 = a2;
  v13 = &v12;
  if (*sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13)[5])
  {
    v13 = &v12;
    v5 = *sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13)[5];
    if (v5)
    {
      v6 = (v5 + 36);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6[1];
    *v6 += a3[3];
    v6[1] = v7 + a3[4];
    v6[6] += a3[5];
  }

  v13 = &v12;
  result = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13);
  if (*(result[5] + 8))
  {
    v13 = &v12;
    result = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13);
    v9 = *(result[5] + 8);
    if (v9)
    {
      v10 = (v9 + 36);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10[1];
    *v10 += a3[3];
    v10[1] = v11 + a3[4];
    v10[6] += a3[5];
  }

  return result;
}

void sub_100624E3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 168))(v3);
  if (v4)
  {
    v6 = sub_10000C7D0(v4, v5);
    if (*(v6 + 800) < 0x7D0u || (v8 = sub_10000C7D0(v6, v7), *(v8 + 800) > 0xF9Fu) || *(sub_10000C7D0(v8, v9) + 800) < 0xBB8u)
    {
      v26 = qword_100BCE8D0;
      if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v27 = *(a2 + 6);
      v28 = *(a2 + 8);
      v29 = *(a2 + 10);
      v30 = *(a2 + 12);
      v31 = *(a2 + 14);
      v32 = *(a2 + 16);
      v33 = *(a2 + 22);
      v34 = *(a2 + 18);
      v35 = *(a2 + 20);
      v36 = *(a2 + 21);
      v37 = 67112192;
      v38 = v27;
      v39 = 1024;
      v40 = v28;
      v41 = 1024;
      v42 = v29;
      v43 = 1024;
      v44 = v30;
      v45 = 1024;
      v46 = v31;
      v47 = 1024;
      v48 = v32;
      v49 = 1024;
      v50 = v33;
      v51 = 1024;
      v52 = v34;
      v53 = 1024;
      v54 = v35;
      v55 = 1024;
      v56 = v36;
      v57 = 2048;
      *v58 = ((v32 * 100.0) / v30);
      *&v58[8] = 2048;
      *v59 = ((v29 * 100.0) / v30);
      *&v59[8] = 2048;
      *v60 = ((v33 * 100.0) / v30);
      v23 = "BeamformingReport: Packets on {Ant0, Ant1, Beamforming} = {%3d, %3d, %3d}; Total tx packets = %3d, Total retx packets = %3d; Total ePA packets = %3d; Total packets beamforming+ePA = %3d; Sync Timeout = %3d; RSSI{Ant0, Ant1} = {%4d, %4d}; {ePA, Beamforming, ePA+Beamforming} Usage = {%4.1f%%, %4.1f%%, %4.1f%%}";
      v24 = v26;
      v25 = 92;
    }

    else
    {
      v10 = qword_100BCE8D0;
      if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v11 = *(a2 + 6);
      v12 = *(a2 + 8);
      v13 = *(a2 + 24);
      v14 = *(a2 + 10);
      v15 = *(a2 + 12);
      v16 = *(a2 + 14);
      v17 = *(a2 + 16);
      v18 = *(a2 + 22);
      v19 = *(a2 + 18);
      v20 = *(a2 + 20);
      v21 = *(a2 + 21);
      v22 = *(a2 + 26);
      v37 = 67112704;
      v38 = v11;
      v39 = 1024;
      v40 = v12;
      v41 = 1024;
      v42 = v13;
      v43 = 1024;
      v44 = v14;
      v45 = 1024;
      v46 = v15;
      v47 = 1024;
      v48 = v16;
      v49 = 1024;
      v50 = v17;
      v51 = 1024;
      v52 = v18;
      v53 = 1024;
      v54 = v19;
      v55 = 1024;
      v56 = v20;
      v57 = 1024;
      *v58 = v21;
      *&v58[4] = 1024;
      *&v58[6] = v22;
      *v59 = 2048;
      *&v59[2] = ((v17 * 100.0) / v15);
      *v60 = 2048;
      *&v60[2] = ((v14 * 100.0) / v15);
      v61 = 2048;
      v62 = ((v18 * 100.0) / v15);
      v23 = "BeamformingReport: Packets on {Ant0, Ant1, Ant2, Beamforming} = {%3d, %3d, %3d, %3d}; Total tx packets = %3d, Total retx packets = %3d; Total ePA packets = %3d; Total packets beamforming+ePA = %3d; Sync Timeout = %3d; RSSI{Ant0, Ant1, Ant2} = {%4d, %4d, %4d}; {ePA, Beamforming, ePA+Beamforming} Usage = {%4.1f%%, %4.1f%%, %4.1f%%}";
      v24 = v10;
      v25 = 104;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v37, v25);
  }
}

void sub_10062513C(uint64_t a1, uint64_t a2, __int16 a3, int a4, __int16 a5, __int16 a6)
{
  if (a4)
  {
    v8 = a4;
    *buf = *a2;
    LOWORD(v20) = *(a2 + 4);
    if (qword_100B508F0 != -1)
    {
      sub_1008540D4();
    }

    v11 = sub_1000E6554(off_100B508E8, buf, 0);
    v12 = *(a1 + 256);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006252AC;
    block[3] = &unk_100AEC130;
    block[4] = a1;
    block[5] = v11;
    v15 = a3;
    v16 = v8;
    v17 = a5;
    v18 = a6;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "A2DP LinkQualityReport Error - totalTxPacketCount is %d", buf, 8u);
    }
  }
}

void sub_1006252AC(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v4 = result[4];
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      v8 = v5 - 8;
      v9 = v5;
      do
      {
        v10 = *(v6 + 32);
        v11 = v10 >= v1;
        v12 = v10 < v1;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v5 && v1 >= *(v9 + 32))
      {
        *buf = result + 5;
        if (*sub_10005E16C(v8, v2, &unk_1008A9BD0, buf)[5])
        {
          v23 = 0;
          if (*v2)
          {
            v13 = sub_10000E92C();
            v14 = (*(*v13 + 280))(v13);
            if (v14)
            {
              v16 = sub_10000C7D0(v14, v15);
              (*(*v16 + 304))(v16, *v2 + 128, &v23);
            }
          }

          v17 = *(result + 24);
          v18 = *(result + 25);
          v19 = qword_100BCE8D0;
          if (v17 > v18 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            *&buf[4] = 100 * v17 / v18;
            _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "A2DP LinkQualityReport - re-transmission stats are invalid %u", buf, 8u);
            v19 = qword_100BCE8D0;
          }

          if (*(result + 26) > *(result + 27) && os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            *&buf[4] = 100;
            _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "A2DP LinkQualityReport - CRC Rate is invalid %u", buf, 8u);
            v19 = qword_100BCE8D0;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(result + 24);
            v21 = *(result + 25);
            *buf = 67109888;
            *&buf[4] = v23;
            v25 = 2048;
            v26 = v20 * 100.0 / v21;
            v27 = 1024;
            v28 = v20;
            v29 = 1024;
            v30 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "A2DP LinkQualityReport: RSSI =%4d, ReTx = %3.1f (%3d/%3d)", buf, 0x1Eu);
          }

          *buf = v2;
          v22 = sub_10005E16C(v8, v2, &unk_1008A9BD0, buf);
          sub_1006255A4(*v22[5], 100 * *(result + 24) / *(result + 25));
        }
      }
    }
  }
}

void sub_1006255A4(void *a1, int a2)
{
  v5 = a1[45];
  v4 = a1[46];
  if (v5 >= v4)
  {
    v7 = a1[44];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      sub_1000C7698();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_10036F560((a1 + 44), v13);
    }

    v14 = (v5 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = a1[44];
    a1[44] = v16;
    a1[45] = v6;
    a1[46] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 4;
  }

  a1[45] = v6;
}

void sub_100625684(uint64_t a1, int a2)
{
  if (*(a1 + 348) != a2)
  {
    *(a1 + 348) = a2;
    v3 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67109120;
      v4[1] = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fDynamicTimelineLogging set to %d ", v4, 8u);
    }
  }
}

void sub_100625738(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v44 = a2;
  v6 = sub_10000E92C();
  v7 = (*(*v6 + 272))(v6);
  v43 = 1;
  v8 = sub_10000E92C();
  sub_100007E30(&buf, "Enable FW Logs");
  sub_100007E30(__p, "FWEnhancedLoggingEnable");
  (*(*v8 + 72))(v8, &buf, __p, &v43);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(buf);
  }

  v9 = sub_10000E92C();
  v10 = (*(*v9 + 8))(v9);
  if (v7 != 0 || (v10 & 1) == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v43;
  }

  v12 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"Skipping";
    if (v11)
    {
      v13 = @"Evaluating";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dynamic Timeline Logging Trigger : %@ ", &buf, 0xCu);
  }

  if ((v11 & 1) == 0)
  {
    v17 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(buf) = 67109632;
    DWORD1(buf) = v10;
    WORD4(buf) = 1024;
    *(&buf + 10) = v7 != 0;
    HIWORD(buf) = 1024;
    LODWORD(v46) = v43;
    v18 = "Dynamic Logging Skipped - isInternalBuild = %x, staticFWLogEnabled = %x, enableDynamicTimelineLogging = %x";
    v19 = v17;
    v20 = 20;
    goto LABEL_25;
  }

  if (*(a1 + 368))
  {
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 368)];
    v16 = v15;
  }

  else
  {
    v16 = 80.0;
  }

  if (*(a1 + 348) == 1)
  {
    v21 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v18 = "Timeline logging currently running";
LABEL_24:
    v19 = v21;
    v20 = 2;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &buf, v20);
    return;
  }

  if (v16 < *(a1 + 376))
  {
    v21 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v18 = "Timeline logging ran less than 60 secs ago";
    goto LABEL_24;
  }

  sub_100625684(a1, 1);
  v22 = qword_100BCE8D0;
  v23 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Enabling firmware logs", &buf, 2u);
  }

  v25 = sub_10000C7D0(v23, v24);
  if (sub_100410F0C(v25, v26))
  {
    v27 = *(a1 + 256);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v46 = sub_1006307B4;
    v47 = &unk_100AE0860;
    v48 = a1;
    v49 = a2;
    dispatch_async(v27, &buf);
    if (*(sub_10000C7D0(v28, v29) + 800) == 15)
    {
      v30 = 2048;
    }

    else
    {
      v30 = 3072;
    }

    if (*(a1 + 352) != v30)
    {
      *(a1 + 352) = v30;
    }

    if (*(a1 + 356) != 4)
    {
      *(a1 + 356) = 4;
    }

    *(a1 + 360) = 515;
    *&buf = &v44;
    v31 = sub_10005E16C(a1 + 192, &v44, &unk_1008A9BD0, &buf);
    v33 = *(a1 + 360);
    if (*(v31[5] + 84) == 1)
    {
      v33 |= 8u;
      *(a1 + 360) = v33;
    }

    *(a1 + 360) = v33 | 0x10;
    v34 = sub_10000C7D0(v31, v32);
    v35 = (*(*v34 + 1280))(v34, 1, *(a1 + 352), *(a1 + 356));
    v37 = sub_10000C7D0(v35, v36);
    (*(*v37 + 3960))(v37, *(a1 + 360));
  }

  v38 = dispatch_time(0, 1000000000 * a3);
  v39 = *(a1 + 256);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100625D14;
  v40[3] = &unk_100ADF8F8;
  v40[4] = a1;
  dispatch_after(v38, v39, v40);
}

void sub_100625CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006307B4;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_100625D14(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 348) == 1)
  {
    v2 = qword_100BCE8D0;
    v3 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling firmware logs", v8, 2u);
    }

    v5 = sub_10000C7D0(v3, v4);
    (*(*v5 + 1280))(v5, 0, 0, 0);
    v6 = +[NSDate date];
    v7 = *(v1 + 368);
    *(v1 + 368) = v6;

    sub_100625684(v1, 0);
    *(v1 + 384) = 0;
  }
}

void sub_100625DF4(uint64_t result, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a2 && a3)
  {
    v10 = 0;
    v11 = 0;
    sub_10000C704(&v10, a3, a4);
    v6 = *(result + 264);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_100625F40;
    block[3] = &unk_100B02E08;
    block[4] = a2 + 128;
    v8 = &off_100AE0A78;
    v9 = v11;
    if (v11)
    {
      sub_10000C69C(v11);
    }

    dispatch_async(v6, block);
    v8 = &off_100AE0A78;
    if (v9)
    {
      sub_10000C808(v9);
    }

    v10 = &off_100AE0A78;
    if (v11)
    {
      sub_10000C808(v11);
    }
  }
}

void sub_100625F08(_Unwind_Exception *exception_object)
{
  *(v1 - 32) = &off_100AE0A78;
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_10000C808(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100625F40(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_1008540E8();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 32);

  return sub_10034731C(v2, v3, 0x100000, a1 + 40);
}

void sub_100625FA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062601C;
  block[3] = &unk_100AEAF08;
  v6 = a4;
  block[4] = a1;
  block[5] = a2;
  dispatch_async(v4, block);
}

void sub_10062601C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v5 = "Publish ";
    }

    else
    {
      v5 = "Unpublish ";
    }

    *buf = 136446466;
    *&buf[4] = v5;
    v22 = 2048;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dynamic Latency : HFP Device %{public}s, device: %p", buf, 0x16u);
  }

  v6 = (a1 + 40);
  if (*(a1 + 40))
  {
    v7 = _os_feature_enabled_impl();
    if (v7)
    {
      sub_10062636C(v7, *(a1 + 40), *(a1 + 48));
    }

    v10 = *(v2 + 200);
    v9 = v2 + 200;
    v8 = v10;
    if (*(a1 + 48) == 1)
    {
      if (!v8)
      {
        goto LABEL_18;
      }

      v11 = *v6;
      v12 = v9;
      do
      {
        v13 = *(v8 + 32);
        v14 = v13 >= v11;
        v15 = v13 < v11;
        if (v14)
        {
          v12 = v8;
        }

        v8 = *(v8 + 8 * v15);
      }

      while (v8);
      if (v12 == v9 || v11 < *(v12 + 32))
      {
LABEL_18:
        operator new();
      }

      *buf = a1 + 40;
      *(sub_10005E16C(v9 - 8, v6, &unk_1008A9BD0, buf)[5] + 95) = 1;
      if (qword_100B512B8 != -1)
      {
        sub_100853E48();
      }

      sub_100319DA8(qword_100B512B0, *v6);
    }

    else if (v8)
    {
      v16 = *v6;
      v17 = v9;
      do
      {
        v18 = *(v8 + 32);
        v14 = v18 >= v16;
        v19 = v18 < v16;
        if (v14)
        {
          v17 = v8;
        }

        v8 = *(v8 + 8 * v19);
      }

      while (v8);
      if (v17 != v9 && v16 >= *(v17 + 32))
      {
        *buf = a1 + 40;
        *(sub_10005E16C(v9 - 8, v6, &unk_1008A9BD0, buf)[5] + 95) = 0;
        *buf = a1 + 40;
        if ((*(sub_10005E16C(v9 - 8, v6, &unk_1008A9BD0, buf)[5] + 95) & 1) == 0)
        {
          *buf = a1 + 40;
          if ((*(sub_10005E16C(v9 - 8, v6, &unk_1008A9BD0, buf)[5] + 96) & 1) == 0)
          {
            *buf = a1 + 40;
            v20 = sub_10005E16C(v9 - 8, v6, &unk_1008A9BD0, buf)[5];
            if (v20)
            {
              sub_10063CEC8(v20);
              operator delete();
            }

            sub_100075DC4((v9 - 8), v6);
            if (qword_100B512B8 != -1)
            {
              sub_100853E48();
            }

            sub_100319F44(qword_100B512B0, *v6);
          }
        }
      }
    }
  }
}

void sub_10062636C(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3)
  {
    if (qword_100B540B0 != -1)
    {
      sub_1008540FC();
    }

    if (!sub_1006C09F4(qword_100B540A8, a2))
    {
      if (qword_100B540B0 != -1)
      {
        sub_1008540FC();
      }

      sub_1006C0A24(qword_100B540A8, a2);
    }

    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient device published already", v6, 2u);
    }
  }

  else
  {
    if (qword_100B540B0 != -1)
    {
      sub_1008540FC();
    }

    sub_1006C0BC4(qword_100B540A8, a2);
    if (_os_feature_enabled_impl())
    {
      if (qword_100B50930 != -1)
      {
        sub_100854110();
      }

      v5 = off_100B50928;

      sub_1000F2D24(v5, a2);
    }
  }
}

void sub_10062651C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 184);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062601C;
  block[3] = &unk_100AEAF08;
  v6 = a4;
  block[4] = a1 - 72;
  block[5] = a2;
  dispatch_async(v4, block);
}

uint64_t sub_100626598(uint64_t a1, uint64_t a2)
{
  *(a1 + 1212) = 0;
  *(a1 + 1204) = 0;
  *(a1 + 1188) = 0u;
  if (qword_100B50AD0 != -1)
  {
    sub_100853CDC();
  }

  v3 = off_100B50AC8;

  return sub_1005D0BF8(v3, a2);
}

void sub_100626600(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5)
{
  v5 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100626680;
  block[3] = &unk_100AE0880;
  v8 = a4;
  v9 = a5;
  block[4] = a1;
  block[5] = a2;
  v7 = a3;
  dispatch_async(v5, block);
}

void sub_100626680(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 50))
    {
      v4 = "Start";
    }

    else
    {
      v4 = "Stop";
    }

    v5 = "disabled";
    if (*(a1 + 51))
    {
      v5 = "enabled";
    }

    *buf = 136315394;
    *&buf[4] = v4;
    v30 = 2080;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HFP Stream State: %s Advanced Transport: %s", buf, 0x16u);
  }

  sub_100626BB8(v2, *(a1 + 50));
  v6 = *(a1 + 50);
  v7 = v2 + 25;
  v8 = v2[25];
  v9 = (a1 + 40);
  if (v6 == 1)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    v10 = *v9;
    v11 = v2 + 25;
    do
    {
      v12 = v8[4];
      v13 = v12 >= v10;
      v14 = v12 < v10;
      if (v13)
      {
        v11 = v8;
      }

      v8 = v8[v14];
    }

    while (v8);
    if (v11 == v7 || v10 < v11[4])
    {
LABEL_17:
      operator new();
    }

    v24 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1005378A0(v10, buf);
      if (v32 >= 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      *v27 = 136315138;
      *&v27[4] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device %s, already exists in AudioLinkManagerDevices updating values", v27, 0xCu);
      if (v32 < 0)
      {
        operator delete(*buf);
      }

      LOBYTE(v6) = *(a1 + 50);
    }

    *buf = a1 + 40;
    *(sub_10005E16C((v2 + 24), (a1 + 40), &unk_1008A9BD0, buf)[5] + 80) = v6;
    *buf = a1 + 40;
    v15 = sub_10005E16C((v2 + 24), (a1 + 40), &unk_1008A9BD0, buf);
    *(v15[5] + 84) = 1;
    if (*(a1 + 51) == 1)
    {
      sub_10010E934(v2[28], *(a1 + 50), *(a1 + 40));
    }

    sub_100626CC8(v15, *(a1 + 40), 1);
    sub_100627064(v2, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    if (v8)
    {
      v16 = *v9;
      v17 = v2 + 25;
      do
      {
        v18 = v8[4];
        v13 = v18 >= v16;
        v19 = v18 < v16;
        if (v13)
        {
          v17 = v8;
        }

        v8 = v8[v19];
      }

      while (v8);
      if (v17 != v7 && v16 >= v17[4])
      {
        v20 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1005378A0(v16, buf);
          if (v32 >= 0)
          {
            v21 = buf;
          }

          else
          {
            v21 = *buf;
          }

          *v27 = 136315138;
          *&v27[4] = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Device %s, already exists in AudioLinkManagerDevices updating values", v27, 0xCu);
          if (v32 < 0)
          {
            operator delete(*buf);
          }

          LOBYTE(v6) = *(a1 + 50);
        }

        *buf = a1 + 40;
        *(sub_10005E16C((v2 + 24), (a1 + 40), &unk_1008A9BD0, buf)[5] + 80) = v6;
        *buf = a1 + 40;
        *(sub_10005E16C((v2 + 24), (a1 + 40), &unk_1008A9BD0, buf)[5] + 84) = 0;
        if (*(sub_10010C848(v2[28], *v9) + 3) == 1)
        {
          sub_10010E934(v2[28], *(a1 + 50), *(a1 + 40));
        }

        sub_10061D9F4(v2, *v9);
      }
    }

    if (v2[26])
    {
      sub_100627484(v2, *v9, 1);
    }

    v26 = 0;
    v22 = sub_10000E92C();
    sub_100007E30(buf, "HFP");
    sub_100007E30(v27, "audioFeedback");
    (*(*v22 + 72))(v22, buf, v27, &v26);
    if (v28 < 0)
    {
      operator delete(*v27);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    if (v26 == 1)
    {
      v23 = sub_1000E2140(*v9, 0xCu);
      if (v23 || sub_100627568(v23, *v9))
      {
        notify_post("com.apple.bluetooth.audioQuality");
      }
    }
  }

  sub_1006275DC(v2, *(a1 + 40), *(a1 + 50), 1);
}

void sub_100626BB8(uint64_t a1, char a2)
{
  if (*(a1 + 344))
  {
    v18 = 0;
    sub_1000216B4(&v18);
    if (sub_100244900(a2, v3, v4, v5, v6, v7, v8, v9) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854160();
    }

    if (sub_100244AC8(a2, v10, v11, v12, v13, v14, v15, v16))
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_10085419C();
      }
    }

    sub_100022214(&v18);
    sub_10002249C(&v18);
  }

  else
  {
    v17 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Stack is not ready, cannot configure interlaced inquiry scans", buf, 2u);
    }
  }
}

uint64_t sub_100626CC8(uint64_t result, uint64_t a2, int a3)
{
  if (a2 && a3 == 2)
  {
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enabling A2DP Link Quality Mode", &v41, 2u);
    }

    v5 = sub_10000E92C();
    v6 = (*(*v5 + 280))(v5);
    v7 = v6;
    *&v44[10] = 0;
    *&v44[2] = 0;
    v41 = 1;
    v9 = sub_10000C798(v6, v8);
    v10 = (*(*v9 + 144))(v9);
    v42 = v10;
    v12 = sub_10000C798(v10, v11);
    v13 = (*(*v12 + 168))(v12);
    v43 = v13;
    v44[1] = 0;
    v15 = *sub_10000C798(v13, v14);
    v16 = (*(v15 + 864))();
    if (v16)
    {
      v44[1] = 1;
    }

    v18 = sub_10000C798(v16, v17);
    v19 = (*(*v18 + 168))(v18);
    v44[0] = v19;
    if (v7)
    {
      v21 = 5;
    }

    else
    {
      v21 = 20;
    }

    *&v44[4] = v21;
    *&v44[6] = -1;
    *&v44[8] = v21;
    *&v44[10] = -1;
    v44[12] = 1;
    v22 = sub_10000C798(v19, v20);
    v23 = (*(*v22 + 184))(v22);
    if (v23)
    {
      v23 = sub_100537B8C(a2);
    }

    v44[2] = v23;
    v44[13] = 1;
LABEL_13:
    v25 = *sub_10000C7D0(v23, v24);
    return (*(v25 + 536))();
  }

  if (a2)
  {
    if (a3 == 1)
    {
      v26 = sub_10000C798(result, a2);
      result = (*(*v26 + 136))(v26);
      if (result)
      {
        v27 = qword_100BCE8D0;
        v28 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          v41 = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Enabling HFP Link Quality Mode", &v41, 2u);
        }

        *&v44[8] = 0;
        *v44 = 0;
        v41 = 1;
        v30 = sub_10000C798(v28, v29);
        v31 = (*(*v30 + 144))(v30);
        v42 = v31;
        v33 = sub_10000C798(v31, v32);
        v34 = (*(*v33 + 168))(v33);
        v43 = v34;
        v36 = sub_10000C798(v34, v35);
        v37 = (*(*v36 + 168))(v36);
        v44[0] = v37;
        v39 = sub_10000C798(v37, v38);
        v40 = (*(*v39 + 184))(v39);
        v23 = 0;
        if (v40)
        {
          v23 = sub_100537B8C(a2);
        }

        v44[2] = v23;
        *&v44[12] = 513;
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_100627064(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = a2;
  if (*(a1 + 344))
  {
    if (a2)
    {
      v3 = *(a1 + 200);
      if (v3)
      {
        v4 = a3;
        v5 = a1 + 192;
        v6 = a1 + 200;
        do
        {
          v7 = *(v3 + 32);
          v8 = v7 >= a2;
          v9 = v7 < a2;
          if (v8)
          {
            v6 = v3;
          }

          v3 = *(v3 + 8 * v9);
        }

        while (v3);
        if (v6 != a1 + 200 && *(v6 + 32) <= a2)
        {
          v12 = 0;
          sub_1000216B4(&v12);
          sub_1000BBF7C();
          sub_10024132C(v13 + 128);
          sub_1002119B0(v4);
          sub_100022214(&v12);
          *buf = &v13;
          if (*(sub_10005E16C(v5, &v13, &unk_1008A9BD0, buf)[5] + 8))
          {
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
            {
              sub_100854214();
            }

            *buf = &v13;
            v11 = *(sub_10005E16C(v5, &v13, &unk_1008A9BD0, buf)[5] + 8);
            if (v11)
            {
              if (*(v11 + 159) < 0)
              {
                operator delete(*(v11 + 136));
              }

              operator delete();
            }

            *buf = &v13;
            *(sub_10005E16C(v5, &v13, &unk_1008A9BD0, buf)[5] + 8) = 0;
          }

          operator new();
        }
      }
    }

    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HFP start, but no valid device handler", buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1008541D8();
  }
}

uint64_t sub_100627484(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 208))
  {
    v4 = qword_100BCE8D0;
    v5 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling Link Quality Mode", v9, 2u);
    }

    v10 = 0;
    if (a3 == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v9[0] = 0;
    v9[1] = 0;
    HIBYTE(v10) = v7;
    v8 = *sub_10000C7D0(v5, v6);
    return (*(v8 + 536))();
  }

  return result;
}

uint64_t sub_100627568(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v2 = sub_1000C2364(a2, &v7, &v6, &v5 + 1, &v5);
  LOBYTE(v3) = 0;
  if (v2)
  {
    if (v6 == 76)
    {
      v3 = 0x61u >> (BYTE4(v5) - 17);
      if ((HIDWORD(v5) - 8209) > 6)
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  return v3 & 1;
}

void sub_1006275DC(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v30 = a2;
  sub_100634F34(a1, a2, a3, a4);
  if (a3)
  {
    if (qword_100B50910 != -1)
    {
      sub_100854250();
    }

    sub_10063402C(a1, v6, *(off_100B50908 + 211), v4);
    v12 = sub_10000C798(v10, v11);
    v13 = (*(*v12 + 120))(v12);
    if (v13)
    {
      v15 = sub_1000D999C(v13, v14);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100635670;
      v29[3] = &unk_100ADF8F8;
      v29[4] = a1;
      sub_10000D334(v15, v29);
    }
  }

  else
  {
    v16 = sub_10000C798(v8, v9);
    v17 = (*(*v16 + 120))(v16);
    if (v17)
    {
      v19 = sub_1000D999C(v17, v18);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1006356C4;
      v28[3] = &unk_100ADF8F8;
      v28[4] = a1;
      sub_10000D334(v19, v28);
    }

    sub_100634C30(v17, v6);
    v20 = *(a1 + 200);
    if (v20)
    {
      v21 = a1 + 192;
      v22 = a1 + 200;
      do
      {
        v23 = *(v20 + 32);
        v24 = v23 >= v6;
        v25 = v23 < v6;
        if (v24)
        {
          v22 = v20;
        }

        v20 = *(v20 + 8 * v25);
      }

      while (v20);
      if (v22 != a1 + 200 && *(v22 + 32) <= v6)
      {
        v31 = &v30;
        *(sub_10005E16C(v21, &v30, &unk_1008A9BD0, &v31)[5] + 80) = 0;
        v26 = *(a1 + 1182);
        v31 = &v30;
        *(sub_10005E16C(v21, &v30, &unk_1008A9BD0, &v31)[5] + 66) = v26;
        v27 = *(a1 + 1182);
        v31 = &v30;
        *(sub_10005E16C(v21, &v30, &unk_1008A9BD0, &v31)[5] + 68) = v27;
        v31 = &v30;
        *(sub_10005E16C(v21, &v30, &unk_1008A9BD0, &v31)[5] + 84) = 0;
        v6 = v30;
      }
    }
  }

  sub_10011F1C4(*(a1 + 216), v6, a3);
}

void sub_100627870(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5)
{
  v5 = *(a1 + 184);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100626680;
  block[3] = &unk_100AE0880;
  v8 = a4;
  v9 = a5;
  block[4] = a1 - 72;
  block[5] = a2;
  v7 = a3;
  dispatch_async(v5, block);
}

void sub_1006278F4(void *a1, uint64_t a2, __int16 a3, char a4, char a5, __int16 a6, __int16 a7)
{
  v8 = a1[113];
  v9 = a1[114];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[32];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1006279C8;
  block[3] = &unk_100B02E38;
  v13 = a3;
  block[4] = a1;
  block[5] = a2;
  v16 = a4;
  v14 = a6;
  block[6] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a5;
  v15 = a7;
  dispatch_async(v10, block);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_1006279C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1248);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 64);
  v5 = v2 + 1248;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 + 1248 && v4 >= *(v5 + 32))
  {
    sub_10053815C(*(a1 + 40), *(a1 + 70));
    v87 = 1;
  }

  else
  {
LABEL_9:
    v87 = 0;
  }

  v9 = sub_100628770(v2, *(a1 + 64));
  v10 = sub_10000E92C();
  v11 = (*(*v10 + 8))(v10);
  if (v11)
  {
    v13 = sub_1000DAB84(v11, v12);
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1006288A4;
    v90[3] = &unk_100ADF8F8;
    v90[4] = *(a1 + 40);
    sub_10000CA94(v13, v90);
  }

  v14 = (a1 + 40);
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = *(a1 + 70);
    if (v16 == 1)
    {
      v17 = *(v2 + 200);
      if (!v17)
      {
        goto LABEL_22;
      }

      v18 = v2 + 200;
      do
      {
        v19 = *(v17 + 32);
        v7 = v19 >= v15;
        v20 = v19 < v15;
        if (v7)
        {
          v18 = v17;
        }

        v17 = *(v17 + 8 * v20);
      }

      while (v17);
      if (v18 == v2 + 200 || v15 < *(v18 + 32))
      {
LABEL_22:
        v21 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1005378A0(v15, &__p);
          if (SBYTE3(v95) >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315138;
          v103 = p_p;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Adding device %s, to AudioLinkManagerDevices", buf, 0xCu);
          if (SBYTE3(v95) < 0)
          {
            operator delete(__p);
          }
        }

        operator new();
      }

      v69 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1005378A0(v15, &__p);
        if (SBYTE3(v95) >= 0)
        {
          v70 = &__p;
        }

        else
        {
          v70 = __p;
        }

        *buf = 136315138;
        v103 = v70;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Device %s, already exists in AudioLinkManagerDevices updating values", buf, 0xCu);
        if (SBYTE3(v95) < 0)
        {
          operator delete(__p);
        }

        LOBYTE(v16) = *(a1 + 70);
      }

      __p = (a1 + 40);
      *(sub_10005E16C(v2 + 192, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 80) = v16;
      v71 = *(a1 + 66);
      __p = (a1 + 40);
      *(sub_10005E16C(v2 + 192, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 66) = v71;
      v72 = *(a1 + 66);
      __p = (a1 + 40);
      *(sub_10005E16C(v2 + 192, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 68) = v72;
      __p = (a1 + 40);
      *(sub_10005E16C(v2 + 192, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 84) = 2;
      v73 = sub_10000E92C();
      v23 = (*(*v73 + 8))(v73);
      if (v23)
      {
        sub_10011E600(*(v2 + 216), *v14);
      }

      v25 = sub_10000C798(v23, v24);
      v26 = (*(*v25 + 840))(v25, 2);
      if (v26)
      {
        v27 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Adaptive Latency reset counter when streaming start", &__p, 2u);
        }

        __p = (a1 + 40);
        v26 = sub_10005E16C(v2 + 192, (a1 + 40), &unk_1008A9BD0, &__p);
        *(*(v26[5] + 48) + 44) = -1;
      }

      sub_100626CC8(v26, *(a1 + 40), 2);
      sub_100628934(v2, *(a1 + 40), *(a1 + 64));
      if (v9)
      {
        operator new();
      }

      v29 = *(a1 + 56);
      if (v29)
      {
        v29 = std::__shared_weak_count::lock(v29);
        v30 = v29;
        if (v29)
        {
          v29 = *(a1 + 48);
          v31 = v87;
          if (!v29)
          {
            v31 = 1;
          }

          if ((v31 & 1) == 0)
          {
            sub_1003A77B8(v29, *v14, 1, 0);
          }
        }
      }

      else
      {
        v30 = 0;
      }

      v64 = sub_10000C798(v29, v28);
      if ((*(*v64 + 840))(v64, 0))
      {
        if (*(a1 + 71) == 1)
        {
          v65 = *(a1 + 64);
          v66 = *(a1 + 40);
          v67 = sub_10011DBF8(*(v2 + 216), *(a1 + 68));
          sub_100628E88(v2, v65, v66, v67);
        }

        else if (v87)
        {
          sub_100119ED8(*(v2 + 216), *(a1 + 40), *(a1 + 64));
        }
      }

      v68 = sub_10000E92C();
      if ((*(*v68 + 440))(v68) && sub_10063CFD4(0))
      {
        *(v2 + 1132) = 1;
        sub_1006291AC(v2);
      }

      if (_os_feature_enabled_impl())
      {
        if (qword_100B50930 != -1)
        {
          sub_100853CB4();
        }

        sub_1000F2C8C(off_100B50928);
      }

      if (v30)
      {
        sub_100117644(v30);
      }

LABEL_118:
      v76 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v77 = *(a1 + 64);
        v78 = "disabled";
        v79 = *(a1 + 71);
        if (v87)
        {
          v78 = "enabled";
        }

        v80 = *(a1 + 66);
        v81 = "stopped";
        v82 = *(a1 + 68);
        if (*(a1 + 70))
        {
          v81 = "started";
        }

        LODWORD(__p) = 67110402;
        HIDWORD(__p) = v77;
        v83 = "supported";
        v92 = 2080;
        v93 = v78;
        if (!v79)
        {
          v83 = "not supported";
        }

        v94 = 2080;
        v95 = v81;
        v96 = 2080;
        v97 = v83;
        v98 = 1024;
        v99 = v80;
        v100 = 1024;
        v101 = v82;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "StreamStateChanged for handle %d Wireless Splitter aggregation is %s music playback is %s with latency %s with bitrate %u Dynamic Latency JBL %d", &__p, 0x32u);
      }

      if (*(v2 + 1256) >= 2uLL)
      {
        sub_10062A2CC(v2, *(a1 + 70));
      }

      v85 = *(a1 + 40);
      v84 = a1 + 40;
      sub_10062A3BC(v2, v85, *(v84 + 30));
      sub_1006275DC(v2, *v84, *(v84 + 30), 2);
      sub_10062A6E8(v86, *v84, *(v84 + 30));
      return;
    }
  }

  v32 = *(v2 + 200);
  if (v32)
  {
    v33 = v2 + 192;
    v34 = v2 + 200;
    do
    {
      v35 = *(v32 + 32);
      v7 = v35 >= v15;
      v36 = v35 < v15;
      if (v7)
      {
        v34 = v32;
      }

      v32 = *(v32 + 8 * v36);
    }

    while (v32);
    if (v34 != v2 + 200 && v15 >= *(v34 + 32))
    {
      v43 = sub_100629478(v2, 11, *(a1 + 40));
      v45 = sub_10000C798(v43, v44);
      if ((*(*v45 + 840))(v45, 2))
      {
        v46 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Adaptive Latency stream stop", &__p, 2u);
        }

        sub_10011CCE4(*(v2 + 216), 150);
        v47 = *(a1 + 40);
        v48 = *(v2 + 216);
        __p = (a1 + 40);
        v49 = sub_10005E16C(v33, (a1 + 40), &unk_1008A9BD0, &__p);
        v50 = sub_10011C7C8(v48, v47, *(*(v49[5] + 48) + 20), 6);
        sub_100629C60(v2, v47, v50);
        v53 = sub_1000DAB84(v51, v52);
        v88[0] = _NSConcreteStackBlock;
        v88[1] = 3221225472;
        v88[2] = sub_100629DD4;
        v88[3] = &unk_100AF59D0;
        v89 = *(a1 + 64);
        sub_10000CA94(v53, v88);
        sub_100629E2C(v2, *(a1 + 40));
      }

      v54 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1005378A0(*v14, &__p);
        v55 = SBYTE3(v95) >= 0 ? &__p : __p;
        *buf = 136315138;
        v103 = v55;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Device %s, already exists in AudioLinkManagerDevices updating values", buf, 0xCu);
        if (SBYTE3(v95) < 0)
        {
          operator delete(__p);
        }
      }

      v56 = *(a1 + 70);
      __p = (a1 + 40);
      *(sub_10005E16C(v33, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 80) = v56;
      v57 = *(a1 + 66);
      __p = (a1 + 40);
      *(sub_10005E16C(v33, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 66) = v57;
      v58 = *(a1 + 66);
      __p = (a1 + 40);
      *(sub_10005E16C(v33, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 68) = v58;
      __p = (a1 + 40);
      v59 = *(sub_10005E16C(v33, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 84);
      __p = (a1 + 40);
      *(sub_10005E16C(v33, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 84) = 0;
      sub_10061CE70(v2, *(a1 + 40));
      __p = (a1 + 40);
      if (*(sub_10005E16C(v33, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 72))
      {
        __p = (a1 + 40);
        *(sub_10005E16C(v33, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 76) = 0;
      }

      v61 = *(v2 + 888);
      if (v61)
      {
        *(v2 + 896) = 0;
        (*(*v61 + 16))(v61);
        *(v2 + 888) = 0;
      }

      v62 = *(a1 + 56);
      if (v62)
      {
        v62 = std::__shared_weak_count::lock(v62);
        v63 = v62;
        if (v62)
        {
          v62 = *(a1 + 48);
          if (v62)
          {
            if (BYTE5(v62[3].__vftable) == 1)
            {
              sub_1003A77B8(v62, *v14, 0, 0);
            }
          }
        }
      }

      else
      {
        v63 = 0;
      }

      v74 = sub_10000C798(v62, v60);
      if ((*(*v74 + 840))(v74, 0))
      {
        if ((*(a1 + 71) & 1) != 0 || (__p = (a1 + 40), *(*(sub_10005E16C(v33, (a1 + 40), &unk_1008A9BD0, &__p)[5] + 48) + 3) == 1))
        {
          sub_100629E2C(v2, *v14);
        }
      }

      v75 = sub_10000E92C();
      if ((*(*v75 + 440))(v75) && *(v2 + 1132) == 1)
      {
        sub_10062A12C(v2);
      }

      if (v63)
      {
        sub_100117644(v63);
      }

      v42 = (v59 & 0xFFFFFFFD) != 0;
      goto LABEL_115;
    }
  }

  if (!v15)
  {
    v42 = 0;
LABEL_115:
    if (*(v2 + 208) && !v42)
    {
      sub_100627484(v2, *v14, 2);
    }

    goto LABEL_118;
  }

  v37 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100854264(v15, v37);
  }

  v38 = *(a1 + 56);
  if (v38)
  {
    v39 = std::__shared_weak_count::lock(v38);
    if (v39)
    {
      v40 = v39;
      v41 = *(a1 + 48);
      if (v41 && *(v41 + 77) == 1)
      {
        sub_1003A77B8(v41, *v14, 0, 0);
      }

      sub_100117644(v40);
    }
  }
}

uint64_t sub_100628770(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 1248;
  v3 = *(a1 + 1248);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a1 + 1248;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == v2 || *(v4 + 32) > a2)
  {
LABEL_9:
    v4 = a1 + 1248;
  }

  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100630220();
    v10 = v9;
    v12 = sub_10000C7D0(v9, v11);
    v18[0] = 67109632;
    v18[1] = v4 != v2;
    v19 = 1024;
    v20 = v10;
    v21 = 1024;
    v22 = sub_100410E9C(v12, v13);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dynamic Audio Delivery aggregation=%d, Timesync Support=%d GPIO Toggle=%d", v18, 0x14u);
  }

  result = sub_100630220();
  if (result)
  {
    v16 = sub_10000C7D0(result, v15);
    LODWORD(result) = sub_100410E9C(v16, v17);
    if (v4 == v2)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006288A4(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = sub_10000E92C();
  v5 = (*(*v4 + 592))(v4);

  return sub_1004DB580(v2, v3, v5);
}

_BYTE *sub_100628934(_BYTE *result, unint64_t a2, uint64_t a3)
{
  v8 = a2;
  if (a2)
  {
    v3 = a3;
    v4 = result;
    v7 = 0;
    sub_1000216B4(&v7);
    sub_1000BBF7C();
    sub_10024132C(v8 + 128);
    sub_100022214(&v7);
    v4[400] = 0;
    if (*(v4 + 157) >= 2uLL)
    {
        ;
      }
    }

    v9 = &v8;
    if (*sub_10005E16C((v4 + 192), &v8, &unk_1008A9BD0, &v9)[5])
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100854330();
      }

      v9 = &v8;
      v6 = *sub_10005E16C((v4 + 192), &v8, &unk_1008A9BD0, &v9)[5];
      if (v6)
      {
        sub_10063D2BC(v6);
        operator delete();
      }

      v9 = &v8;
      *sub_10005E16C((v4 + 192), &v8, &unk_1008A9BD0, &v9)[5] = 0;
    }

    operator new();
  }

  return result;
}

void *sub_100628E88(void *a1, __int16 a2, unint64_t a3, int a4)
{
  v15 = a3;
  v16 = &v15;
  *(sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 92) = a2;
  v16 = &v15;
  *(*(sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 48) + 1) = 0;
  v16 = &v15;
  *(*(sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 48) + 2) = 1;
  v16 = &v15;
  *(*(sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 48) + 3) = 1;
  v16 = &v15;
  *(*(sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 48) + 20) = a4;
  sub_10011E600(a1[27], v15);
  v16 = &v15;
  if (**(sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 48) == 1)
  {
    v6 = sub_100017E6C();
    (*(*v6 + 160))(v6, a1[27]);
    v7 = sub_100017E6C();
    (*(*v7 + 216))(v7, a1[27] + 1, 1);
    v8 = sub_100017E6C();
    (*(*v8 + 208))(v8, a1[27] + 4);
    v9 = sub_100017E6C();
    sub_100532818(v9 + 744, (a1 + 4));
    v10 = sub_100017E6C();
    sub_10063DC1C(v10 + 824, (a1 + 6));
    v11 = a1[27];
    v12 = v15;
    v16 = &v15;
    v13 = sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16);
    sub_100119ED8(v11, v12, *(v13[5] + 92));
  }

  v16 = &v15;
  result = sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16);
  if (*result[5])
  {
    v16 = &v15;
    *(*sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 144) = 0;
    v16 = &v15;
    *(*sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 152) = 0;
    v16 = &v15;
    *(*sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 128) = 0;
    v16 = &v15;
    *(*sub_10005E16C((a1 + 24), &v15, &unk_1008A9BD0, &v16)[5] + 136) = 0;
    return sub_10063247C(a1, v15);
  }

  return result;
}

void sub_1006291AC(uint64_t a1)
{
  *(a1 + 1133) = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v2 = off_100B6F7B0;
  v13 = off_100B6F7B0;
  if (!off_100B6F7B0)
  {
    v3 = sub_10063D1E8();
    v11[3] = dlsym(v3, "tailspin_config_create_with_current_state");
    off_100B6F7B0 = v11[3];
    v2 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v2)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"tailspin_config_t BT::soft_tailspin_config_create_with_current_state()"];
    [v8 handleFailureInFunction:v9 file:@"AudioLinkManager.mm" lineNumber:96 description:{@"%s", dlerror()}];
LABEL_12:

    __break(1u);
    return;
  }

  v4 = v2();
  *(a1 + 1136) = v4;
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = off_100B6F7B8;
  v13 = off_100B6F7B8;
  if (!off_100B6F7B8)
  {
    v7 = sub_10063D1E8();
    v11[3] = dlsym(v7, "tailspin_enabled_set");
    off_100B6F7B8 = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"void BT::soft_tailspin_enabled_set(tailspin_config_t, BOOL)"];
    [v8 handleFailureInFunction:v9 file:@"AudioLinkManager.mm" lineNumber:108 description:{@"%s", dlerror()}];
    goto LABEL_12;
  }

  v6(v5, 1);
  sub_100636D40(*(a1 + 1136), 64);
  sub_100636D40(*(a1 + 1136), 48);
  sub_100636ECC(*(a1 + 1136));
}

void sub_10062943C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100629478(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v47 = a3;
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v6 = *(a1 + 224);
  if (v6)
  {
    if (!sub_10010C5DC(v6, a3))
    {
      return 1;
    }
  }

  if (!a3 || !sub_100632D10(a1, a3))
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_10085447C();
    }

    return 1;
  }

  v7 = *(sub_100632D10(a1, a3) + 24);
  v8 = sub_100632D10(a1, a3);
  v9 = qword_100BCE8D0;
  v10 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v12 = *(a1 + 216);
    v13 = *(v12 + 8 * v4 + 176);
    v12 += 48;
    v14 = *(v12 + 8 * v7);
    v15 = *(v12 + 8 * *(v8 + 24));
    v16 = *(sub_100632D10(a1, a3) + 20);
    *buf = 136447234;
    *&buf[4] = v13;
    v49 = 2082;
    v50 = v14;
    v51 = 2082;
    v52 = v15;
    v53 = 1024;
    v54 = 0;
    v55 = 1024;
    v56 = v16;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Low Latency Game pre Transition: %{public}s. State: %{public}s -> %{public}s. handled %d. latency %d", buf, 0x2Cu);
  }

  if (v4 > 5)
  {
    if (v4 > 9)
    {
      if (v4 != 10)
      {
        if (v4 != 11)
        {
          goto LABEL_54;
        }

        sub_10012072C(*(a1 + 216), v47);
        v21 = sub_10010EA6C(*(a1 + 224), v47);
        switch(v7)
        {
          case 7:
            if ((*(sub_10000C7D0(v21, v22) + 800) - 1) > 0x7CE)
            {
              *(v8 + 24) = 0;
              sub_10010E66C(*(a1 + 224), v47);
            }

            else
            {
              sub_10010E8E0(*(a1 + 224), 0, v47);
              sub_10010E55C(*(a1 + 224), 1, v47);
              *(v8 + 24) = 0;
            }

            v27 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_85;
            }

            *buf = 0;
            v28 = "Low Latency Game stream stop in kLatencyStateExitAoSinFTOPhase";
            goto LABEL_84;
          case 0xE:
            v23 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_86;
            }

            *buf = 0;
            v24 = "Low Latency Game stream stop already in progress, ignore";
            break;
          case 8:
            *(v8 + 24) = 14;
            v23 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_86;
            }

            *buf = 0;
            v24 = "Low Latency Game stream stop in Wait4FTOPhase";
            break;
          default:
            if ((v7 - 2) > 0xB)
            {
              goto LABEL_86;
            }

            if ((*(sub_10000C7D0(v21, v22) + 800) - 1) > 0x7CE)
            {
              *(v8 + 24) = 0;
              sub_10010E66C(*(a1 + 224), v47);
            }

            else
            {
              sub_10010E8E0(*(a1 + 224), 0, v47);
              sub_10010E55C(*(a1 + 224), 1, v47);
              *(v8 + 24) = 0;
            }

            v27 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
LABEL_85:
              v38 = *(a1 + 216);
              v39 = v47;
              *buf = &v47;
              v40 = sub_10005E16C(a1 + 192, &v47, &unk_1008A9BD0, buf);
              sub_100119ED8(v38, v39, *(v40[5] + 92));
              goto LABEL_86;
            }

            *buf = 0;
            v28 = "Low Latency Game stopped, re-evaluate latency mode";
LABEL_84:
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
            goto LABEL_85;
        }

        v33 = v23;
        v34 = 2;
LABEL_68:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v24, buf, v34);
        goto LABEL_86;
      }

      if (v7 == 7)
      {
        *(v8 + 24) = 9;
        sub_10010E8E0(*(a1 + 224), 0, v47);
        v17 = 1;
        sub_10010E55C(*(a1 + 224), 1, v47);
        goto LABEL_87;
      }

      if (v7 != 4)
      {
        if (!v7)
        {
          v17 = 1;
          *(v8 + 24) = 1;
          sub_100637E14(a1);
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      if (*(sub_100632D10(a1, v47) + 20) != 10)
      {
        v37 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_1008543E4(&v47, a1, v37);
        }

        goto LABEL_86;
      }

      *(v8 + 24) = 6;
      sub_10010E8E0(*(a1 + 224), 2, v47);
    }

    else
    {
      if (v4 == 6)
      {
        if (v7 == 13)
        {
          *(v8 + 24) = 10;
          goto LABEL_61;
        }

        goto LABEL_86;
      }

      if (v4 != 8)
      {
        goto LABEL_54;
      }

      sub_10012072C(*(a1 + 216), v47);
      v19 = sub_10010EA6C(*(a1 + 224), v47);
      if ((v7 - 10) > 3)
      {
        goto LABEL_86;
      }

      if ((*(sub_10000C7D0(v19, v20) + 800) - 1) <= 0x7CE)
      {
        v17 = 1;
        sub_10010E55C(*(a1 + 224), 1, v47);
        sub_10010E8E0(*(a1 + 224), 3, v47);
        *(v8 + 24) = 8;
        goto LABEL_87;
      }

      *(v8 + 24) = 8;
      sub_10010E66C(*(a1 + 224), v47);
    }

LABEL_61:
    v17 = 1;
    goto LABEL_87;
  }

  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        goto LABEL_54;
      }

      if (v7 == 6)
      {
        *(v8 + 24) = 13;
        sub_10010E55C(*(a1 + 224), 2, v47);
        sub_100637EC0(a1, v47);
        goto LABEL_61;
      }

LABEL_86:
      v17 = 0;
      goto LABEL_87;
    }

    switch(v7)
    {
      case 5:
        v29 = 4;
        break;
      case 8:
        v29 = 7;
        break;
      case 0xE:
        v26 = *(sub_10000C7D0(v10, v11) + 800) - 1;
        sub_10010E8E0(*(a1 + 224), 0, v47);
        if (v26 <= 0x7CE)
        {
          sub_10010E55C(*(a1 + 224), 1, v47);
        }

        *(v8 + 24) = 0;
        v27 = qword_100BCE8D0;
        if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_85;
        }

        *buf = 0;
        v28 = "Low Latency Game enter FTO with kLatencyStateExitAoSForced";
        goto LABEL_84;
      default:
        v35 = qword_100BCE8D0;
        if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_86;
        }

        v36 = *(*(a1 + 216) + 8 * v7 + 48);
        *buf = 136446210;
        *&buf[4] = v36;
        v24 = "Low Latency Game transitionStateMachine: got FTO in state %{public}s";
        v33 = v35;
        v34 = 12;
        goto LABEL_68;
    }

    *(v8 + 24) = v29;
LABEL_60:
    v30 = *(a1 + 216);
    v31 = v47;
    *buf = &v47;
    v32 = sub_10005E16C(a1 + 192, &v47, &unk_1008A9BD0, buf);
    sub_100119ED8(v30, v31, *(v32[5] + 92));
    goto LABEL_61;
  }

  if (!v4)
  {
    if (v7 != 14 && v7 != 9)
    {
      goto LABEL_86;
    }

    *(v8 + 24) = 1;
    v25 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Low Latency Game exit completed, re-evaluate latency mode", buf, 2u);
    }

    goto LABEL_60;
  }

  if (v4 != 2)
  {
LABEL_54:
    v17 = sub_10063A8FC(a1, v4, v47);
    goto LABEL_87;
  }

  if (v7 == 12)
  {
    *(v8 + 24) = 13;
    sub_10010E55C(*(a1 + 224), 2, v47);
    goto LABEL_61;
  }

  if (v7 != 2 && v7 != 1)
  {
    goto LABEL_86;
  }

  *(v8 + 24) = 5;
  v17 = 1;
  sub_10010E8E0(*(a1 + 224), 1, v47);
LABEL_87:
  v41 = *(v8 + 24);
  if (v7 != v41)
  {
    v42 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a1 + 216);
      v44 = *(v43 + 8 * v4 + 176);
      v43 += 48;
      v45 = *(v43 + 8 * v7);
      v46 = *(v43 + 8 * v41);
      *buf = 136446978;
      *&buf[4] = v44;
      v49 = 2082;
      v50 = v45;
      v51 = 2082;
      v52 = v46;
      v53 = 1024;
      v54 = v17;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Low Latency Game Transition: %{public}s. State: %{public}s -> %{public}s. handled %d", buf, 0x26u);
    }
  }

  return v17;
}

void sub_100629C60(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    if ((*(a1 + 351) & 1) == 0)
    {
      if (qword_100B50AC0 != -1)
      {
        sub_1008544B8();
      }

      sub_100594AA0(off_100B50AB8, a2, 16, 9, 110, 0);
      *(a1 + 351) = 1;
      return;
    }

    goto LABEL_11;
  }

  if (a3 != 2 || *(a1 + 351) != 1)
  {
LABEL_11:
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "dynamicLowLatencyExit";
      if (a3 == 1)
      {
        v7 = "dynamicLowLatencyEnter";
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Received duplicate notification for %s", &v8, 0xCu);
    }

    return;
  }

  if (qword_100B50AC0 != -1)
  {
    sub_1008544B8();
  }

  sub_100594AA0(off_100B50AB8, a2, 16, 9, 111, 0);
  *(a1 + 351) = 0;
}