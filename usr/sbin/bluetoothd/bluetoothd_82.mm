void sub_1005CF30C(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  if (a4)
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10084C004();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10084C074();
    }

    v7 = sub_1000DD584(off_100B50A98, a4, 20000);
    sub_10057DA84(a1, a2, v7);
  }

  sub_10057E218(a1, a2, a3);
  sub_10057DA84(a1, a2, 0);
}

uint64_t sub_1005CF408(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 280);
  *(a1 + 280) = v2 + 1;
  if (v2 > 0)
  {
    return 0;
  }

  v6 = (a1 + 264);
  v7 = *(a1 + 264);
  if (!v7)
  {
    sub_1005CF720();
  }

  v3 = sub_10042C548(v7, a2);
  if (v3)
  {
    v8 = *(a1 + 272);
    *v6 = 0;
    v6[1] = 0;
    if (v8)
    {
      sub_100117644(v8);
    }
  }

  return v3;
}

uint64_t sub_1005CF4E8(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = __OFSUB__(v1--, 1);
  *(a1 + 280) = v1;
  if (!((v1 < 0) ^ v2 | (v1 == 0)))
  {
    return 0;
  }

  *(a1 + 280) = 0;
  v5 = sub_10042CAE8(*(a1 + 264));
  v4 = *(a1 + 272);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  if (v4)
  {
    sub_100117644(v4);
  }

  return v5;
}

void *sub_1005CF7BC(void *a1, int *a2, int *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100B007A0;
  sub_10042C444((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_1005CF844(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100B007A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005CF8A4()
{
  v0 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "ScoDataBufferOverflowCB", v1, 2u);
  }
}

void sub_1005CF90C(os_unfair_lock_s *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v56 = 0;
  if (*(a5 + 8) == 1)
  {
    v10 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v58 = a2;
      v59 = 1024;
      v60 = a3;
      v61 = 2048;
      *v62 = sub_10000C5E0(a4);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HandsfreeGateway::ScoReceiveDataCB: wakeupCause SCO Packet from BT Controller (hfpHandle=0x%hX erroneous=%hhu len=%zu)\n", buf, 0x18u);
    }
  }

  v11 = sub_1005D0048(a1, a2);
  if (v11)
  {
    v55[0] = 0;
    v55[1] = 0;
    sub_100007F88(v55, &a1[190]);
    if (!sub_100321014(v11 + 400))
    {
      goto LABEL_20;
    }

    if (sub_100320FC4(v11 + 400) == 256 || sub_100320FC4(v11 + 400) == 127)
    {
      if (sub_10000C5E0(a4) > 1)
      {
        v13 = sub_10000C5E0(a4);
        sub_10069BBE0(v11, v13);
        v14 = sub_10000C5F8(a4);
        v15 = v14[1];
        v16 = sub_100320FE4(v11 + 400);
        if (a3 || sub_10000C5E0(a4) != v16 || sub_10000C5E0(a4) < (v15 + 2))
        {
          v17 = v14[1];
          v18 = *v14;
          v19 = sub_10000C5E0(a4);
          v14[1] = 0;
          sub_10069BC5C(v11);
          LOBYTE(v15) = v19 - 2;
          if (!a3)
          {
            v20 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              v51 = sub_10000C5E0(a4);
              *buf = 67110400;
              v58 = 0;
              v59 = 1024;
              v60 = v15;
              v61 = 1024;
              *v62 = v16;
              *&v62[4] = 2048;
              *&v62[6] = v51;
              v63 = 1024;
              v64 = v18;
              v65 = 1024;
              v66 = v17;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Clearing UL voice data err:%d, length to codec:%d, maxPacketSize:%d, data.getSize():%zu, seq %d, length in payload %d", buf, 0x2Au);
            }
          }
        }

        v21 = sub_10000C5F8(a4);
        sub_1003A3150(v11, v21, v15 + 2, *(a5 + 8));
        goto LABEL_20;
      }

      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        v12 = sub_10000C5E0(a4);
        sub_10084C280(buf, v12);
      }

LABEL_20:
      sub_1000088CC(v55);
      return;
    }

    if (sub_100320FC4(v11 + 400) != 128 && sub_100320FC4(v11 + 400) != 129 && sub_100320FC4(v11 + 400) != 255 && sub_100320FC4(v11 + 400) != 130)
    {
      v48 = sub_10000C5F8(a4);
      v49 = sub_10000C5E0(a4);
      sub_1003A2DA4(v11, v48, v49, *(a5 + 8));
      goto LABEL_20;
    }

    if (sub_10000C5E0(a4) <= 1)
    {
      if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    v22 = sub_10000C5E0(a4);
    sub_10069BBE0(v11, v22);
    v23 = sub_10000C5F8(a4);
    v24 = sub_100320D9C(v11 + 400);
    if (a3)
    {
      if (sub_100320D9C(v11 + 400))
      {
        v25 = sub_100320D9C(v11 + 400);
        if (sub_1000E2140(v25, 0x2Cu))
        {
          v26 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Generate two PLC for mono UL in stereo config", buf, 2u);
          }

          v23[1] = 0;
          sub_10069BC5C(v11);
          if (sub_10000C5E0(a4) < 0x3C)
          {
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              v50 = sub_10000C5E0(a4);
              sub_10084C0D8(buf, v50);
            }
          }

          else
          {
            v27 = sub_10000C5F8(a4);
            sub_1003A3150(v11, v27, 0x3CuLL, *(a5 + 8));
            v28 = sub_10000C5F8(a4);
            sub_1003A3150(v11, v28, 0x3CuLL, *(a5 + 8));
          }
        }
      }

      goto LABEL_20;
    }

    v29 = v24;
    v30 = *v23;
    if (v24 && (v31 = sub_1000E2140(v24, 0x29u)) && (v33 = sub_10000C798(v31, v32), (*(*v33 + 840))(v33, 11)))
    {
      *buf = 0;
      v54 = 0;
      v34 = sub_10000C5F8(a4);
      v35 = sub_10000C5E0(a4);
      if (!sub_1005D0140(v35, v34, v35, &v56 + 1, &v56, buf, &v54))
      {
        goto LABEL_20;
      }

      v36 = v54;
      if (v54)
      {
        v37 = sub_10000C5F8(a4);
        sub_1005D048C(a1, v29, v37 + *buf, v36);
      }

      v38 = sub_10000C5F8(a4);
      v53 = HIWORD(v56);
      v23 = (v38 + HIWORD(v56));
      v39 = v56;
      if (v56)
      {
LABEL_46:
        v52 = v39;
        if (v39)
        {
          v40 = 0;
          v41 = 0;
          while (1)
          {
            v42 = sub_10000C5E0(a4);
            if (v42 < v41)
            {
              break;
            }

            v43 = v42 - v41;
            if (v43 <= 1)
            {
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
              {
                sub_10084C194();
              }

              goto LABEL_20;
            }

            v44 = v23[v41];
            v45 = v23[v40 + 1];
            if (v41 && v30 + 1 != v44)
            {
              goto LABEL_20;
            }

            v46 = v45 + 2;
            if (v43 < v45 + 2)
            {
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
              {
                sub_10084C120();
              }

              goto LABEL_20;
            }

            v47 = sub_10000C5F8(a4);
            sub_1003A3150(v11, (v47 + v53 + v41), v46, *(a5 + 8));
            v41 += v46;
            v40 = v41;
            v30 = v44;
            if (v52 <= v41)
            {
              goto LABEL_20;
            }
          }

          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
          {
            sub_10084C20C();
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      v53 = 0;
    }

    v39 = sub_100320FE4(v11 + 400);
    goto LABEL_46;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084C2C8();
  }
}

void sub_1005CFFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D0048(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 760);
  v4 = *(a1 + 832);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = a1 + 832;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= v2;
    v8 = v6 < v2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 832 && *(v5 + 32) <= v2)
  {
    v13 = &v12;
    v9 = sub_1003750BC(a1 + 824, &v12, &unk_1008A9BD0, &v13)[5];
  }

  else
  {
LABEL_16:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084C338();
    }

    v9 = 0;
  }

  sub_1000088CC(v11);
  return v9;
}

BOOL sub_1005D0140(uint64_t a1, unsigned __int8 *a2, unint64_t a3, _WORD *a4, _WORD *a5, _WORD *a6, unsigned __int16 *a7)
{
  v8 = *a2;
  v9 = v8 & 0xF;
  if ((v8 & 0xF0) == 0x80)
  {
    v10 = v8 & 0xF;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 - 4) < 0xFFFFFFFD)
  {
    v11 = qword_100BCE8F8;
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v13 = a2[1];
      v14 = a2[2];
      v15 = a2[3];
      v16 = a2[4];
      v17 = a2[5];
      v18 = a2[6];
      v19 = a2[7];
      v36[0] = 67111168;
      v36[1] = v10;
      v37 = 1024;
      v38 = v8;
      v39 = 1024;
      v40 = v13;
      v41 = 1024;
      v42 = v14;
      v43 = 1024;
      v44 = v15;
      v45 = 1024;
      v46 = v16;
      v47 = 1024;
      v48 = v17;
      v49 = 1024;
      v50 = v18;
      v51 = 1024;
      v52 = v19;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "uplink frame total chunk invalid :%u, %02x,%02x,%02x,%02x,%02x,%02x,%02x,%02x", v36, 0x38u);
      return 0;
    }

    return result;
  }

  if ((v8 & 0xF) == 0 || a3 == 0)
  {
    return 1;
  }

  v21 = 0;
  v22 = a3 + 2;
  v23 = 1;
  result = 1;
  while (1)
  {
    v24 = a2[v23];
    if (v24 >> 4 != 10)
    {
      if (v24 >> 4 != 9)
      {
        result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_10084C5DC();
        return 0;
      }

      v25 = v24 & 0xF0;
      v26 = v24 & 0xF;
      if (v25 == 144)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      if (v27 >= 3)
      {
        result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_10084C56C();
        return 0;
      }

      ++v23;
      if (!*a4)
      {
        *a4 = v23;
      }

      if (v27)
      {
        do
        {
          v29 = a2[v23 + 1];
          v21 += v29;
          v23 += v29 + 2;
          --v28;
        }

        while (v28);
      }

      *a5 = v21 + 2 * v27;
      if (v23 > v22)
      {
        result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_10084C4FC();
          return 0;
        }

        return result;
      }

      goto LABEL_35;
    }

    v30 = v24 & 0xF0;
    v31 = v24 & 0xF;
    if (v30 == 160)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v32 >= 2)
    {
      result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10084C488();
      return 0;
    }

    v33 = *&a2[v23 + 1];
    v34 = v23 + 3;
    if (!*a6)
    {
      *a6 = v34;
    }

    if (v33 > a3)
    {
      result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10084C418();
      return 0;
    }

    v35 = *a7 + v33;
    *a7 = v35;
    v23 = v34 + v35;
    if (v23 > v22)
    {
      break;
    }

LABEL_35:
    if (!--v9 || v23 > a3)
    {
      return result;
    }
  }

  result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  sub_10084C3A8();
  return 0;
}

void sub_1005D048C(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005E73E8;
  v4[3] = &unk_100B00C58;
  v4[4] = a2;
  v4[5] = a3;
  v5 = a4;
  sub_1005E72E4(a1 + 82, v4);
}

void sub_1005D0500()
{
  v0 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "ScoTransportReadyCB", v1, 2u);
  }
}

void sub_1005D0568(uint64_t a1, uint64_t a2, int a3)
{
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ScoTxPacketCompletedCB: numCompletedPackets %d", v5, 8u);
  }
}

uint64_t sub_1005D060C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 a9)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 760);
  v16 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "eSCO parameters:", buf, 2u);
    v16 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v24 = a2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\t\tstatus:\t\t\t%{bluetooth:OI_STATUS}u", buf, 8u);
    v16 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v24 = a5;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\t\ttxInterval:\t\t%d", buf, 8u);
    v16 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v24 = a6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\t\treTxWindow:\t\t%d", buf, 8u);
    v16 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v24 = a7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\t\trxPacketLength: %d", buf, 8u);
    v16 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v24 = a8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\t\ttxPacketLength: %d", buf, 8u);
    v16 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v24 = a9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\t\tairMode:\t\t%2x", buf, 8u);
  }

  v17 = sub_1005D0048(a1, a3);
  v18 = v17;
  if (v17)
  {
    sub_100320FDC(v17 + 400, a8);
    sub_100320FEC(v18 + 400, a7);
    sub_100320FFC(v18 + 400, a5);
    sub_10032101C(v18 + 400, 0);
    if (qword_100B508B0 != -1)
    {
      sub_10084C650();
    }

    sub_100766E0C(off_100B508A8);
    sub_100320DA4(v18 + 400, a4);
    if (sub_10069B0D8(v18))
    {
      sub_10069C0F0(v18);
      v19 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "IO already started from audio layer, now that we have a connection handle, triggering sendthread to start", buf, 2u);
      }

      sub_10069C2E8(v18);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084C678();
  }

  return sub_1000088CC(v22);
}

uint64_t sub_1005D09A8(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 760);
  v4 = *(a1 + 824);
  v5 = (a1 + 832);
  if (v4 == v5)
  {
LABEL_9:
    v9 = 0;
  }

  else
  {
    while (sub_100320D9C(v4[5] + 400) != a2)
    {
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
      if (v7 == v5)
      {
        goto LABEL_9;
      }
    }

    v9 = v4[5];
  }

  sub_1000088CC(v11);
  return v9;
}

uint64_t sub_1005D0A74(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 760);
  v4 = sub_1005D09A8(a1, a2);
  if (v4)
  {
    v5 = sub_100320F4C(v4 + 400);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);
  return v5;
}

BOOL sub_1005D0AF4(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 760);
  v6 = sub_1005D09A8(a1, a2);
  v7 = v6;
  if (v6)
  {
    sub_10069BBBC(v6, a3);
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_1000C23E0(a2, v9);
    sub_10084C6E8();
  }

  sub_1000088CC(v10);
  return v7 != 0;
}

void sub_1005D0BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D0BF8(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 760);
  if (a2 && sub_1005D09A8(a1, a2))
  {
    v4 = sub_1005D09A8(a1, a2);
    sub_10069BBD0(v4);
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084C744();
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1005D0CA0(uint64_t a1, uint64_t a2, int a3)
{
  v17 = a3;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 760);
  v30 = 0;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  *v23 = 0u;
  sub_1000DE474(&v22 + 1);
  BYTE2(v23[0]) = 0;
  BYTE4(v23[0]) = 0;
  BYTE2(v25) = 0;
  BYTE4(v25) = 0;
  HIDWORD(v28[2]) = 0;
  v24 = 0uLL;
  v23[1] = 0;
  LOBYTE(v25) = 0;
  v26 = 0uLL;
  *(&v25 + 1) = 0;
  LOBYTE(v27) = 0;
  v28[0] = 0;
  v28[1] = 0;
  *(&v27 + 1) = 0;
  *(&v28[1] + 7) = 0;
  LOBYTE(v28[3]) = 1;
  *(&v28[3] + 6) = 0;
  *(&v28[3] + 1) = 0;
  v29 = 0uLL;
  v28[5] = 0;
  LOBYTE(v30) = 0;
  *(&v30 + 2) = 0;
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v7 = v19 >= 0 ? &__p : __p;
    *buf = 67109378;
    LODWORD(v21[0]) = a3;
    WORD2(v21[0]) = 2082;
    *(v21 + 6) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Now tracking handle %d for device %{public}s", buf, 0x12u);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = *(a1 + 832);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = a1 + 832;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= v17;
    v12 = v10 < v17;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == a1 + 832 || v17 < *(v9 + 32))
  {
LABEL_15:
    v13 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, &__p);
      if (v19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136446210;
      v21[0] = p_p;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating HFPAudioDevice for device %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084C780();
  }

  if (SHIBYTE(v28[1]) < 0)
  {
    operator delete(*(&v27 + 1));
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(*(&v25 + 1));
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  nullsub_21();
  return sub_1000088CC(v16);
}

void sub_1005D1728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_10002249C(&a14);
  sub_100320BE8(&a26);
  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D17B8(os_unfair_lock_s *a1, unsigned __int8 *a2, unint64_t *a3)
{
  v95 = 0;
  v96 = 0;
  v94[0] = 0;
  v94[1] = 0;
  sub_100007F88(v94, &a1[190]);
  if (sub_100320EDC((a3 + 50)))
  {
    v6 = 127;
    sub_100320F54((a3 + 50), 127);
  }

  else if (sub_100320E9C((a3 + 50)))
  {
    v6 = 256;
    sub_100320F54((a3 + 50), 256);
  }

  else if (sub_100320E7C((a3 + 50)))
  {
    v6 = 2;
    sub_100320F54((a3 + 50), 2);
  }

  else
  {
    v6 = 1;
    sub_100320F54((a3 + 50), 1);
  }

  v7 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    sub_1000E5A58(a2, &__p);
    if (v98 < 0)
    {
      p_p = *&__p.byte0;
    }

    v10 = sub_1005D264C(v9, v6);
    v11 = sub_1005D09A8(a1, a2);
    if (v11)
    {
      LODWORD(v11) = sub_100320F0C(v11 + 400);
    }

    *buf = 136446722;
    *&buf[4] = p_p;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    LODWORD(v100) = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating HFPAudioDevice for device %{public}s with codec: %s, HandsfreeAoS %d", buf, 0x1Cu);
    if (v98 < 0)
    {
      operator delete(*&__p.byte0);
    }
  }

  sub_1000BE6F8(a2 + 128, &__p);
  if (v98 >= 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = *&__p.byte0;
  }

  sub_100007E30(buf, v12);
  sub_1003A2964(a3, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v98 < 0)
  {
    operator delete(*&__p.byte0);
  }

  sub_1000C23E0(a2, &__p);
  if (v98 >= 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = *&__p.byte0;
  }

  sub_100007E30(buf, v13);
  sub_1003A2AF0(a3, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v98 < 0)
  {
    operator delete(*&__p.byte0);
  }

  sub_1000BE6F8(a2 + 128, &__p);
  if (v98 >= 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = *&__p.byte0;
  }

  sub_100007E30(buf, v14);
  sub_1003A28D8(a3, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v98 < 0)
  {
    operator delete(*&__p.byte0);
  }

  sub_1003A2AE8(a3, a2);
  v15 = sub_1005D2720(a1, a2);
  sub_1003A34D0(a3, v15);
  v17 = sub_1005D2A98(v16, a2);
  sub_10069BD7C(a3, v17);
  v19 = sub_1005D2B54(v18, a2);
  sub_10069BD8C(a3, v19);
  v20 = sub_1005D09A8(a1, a2);
  if (v20)
  {
    v21 = sub_100320E74(v20 + 400);
  }

  else
  {
    v21 = 0;
  }

  sub_10069BD9C(a3, v21);
  v22 = sub_1005D09A8(a1, a2);
  if (v22)
  {
    v23 = sub_100320E7C(v22 + 400);
  }

  else
  {
    v23 = 0;
  }

  sub_10069BE0C(a3, v23);
  v24 = sub_1005D09A8(a1, a2);
  if (v24)
  {
    v25 = sub_100320EDC(v24 + 400);
  }

  else
  {
    v25 = 0;
  }

  sub_10069BDAC(a3, v25);
  v26 = sub_1005D09A8(a1, a2);
  if (v26)
  {
    v27 = sub_100320EEC(v26 + 400);
  }

  else
  {
    v27 = 0;
  }

  sub_10069BDBC(a3, v27);
  v28 = sub_1005D09A8(a1, a2);
  if (v28)
  {
    v29 = sub_100320E9C(v28 + 400);
  }

  else
  {
    v29 = 0;
  }

  sub_10069BE2C(a3, v29);
  v30 = sub_1005D09A8(a1, a2);
  if (v30)
  {
    v31 = sub_100320EAC(v30 + 400);
  }

  else
  {
    v31 = 0;
  }

  sub_10069BE3C(a3, v31);
  v32 = sub_1005D09A8(a1, a2);
  if (v32)
  {
    v33 = sub_100320EBC(v32 + 400);
  }

  else
  {
    v33 = 0;
  }

  sub_10069BDCC(a3, v33);
  v34 = sub_1005D09A8(a1, a2);
  if (v34)
  {
    v35 = sub_100320ECC(v34 + 400);
  }

  else
  {
    v35 = 0;
  }

  sub_10069BDDC(a3, v35);
  v36 = sub_1005D09A8(a1, a2);
  if (v36)
  {
    v37 = sub_100320F0C(v36 + 400);
  }

  else
  {
    v37 = 0;
  }

  sub_10069BDFC(a3, v37);
  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  if (sub_10056C908(off_100B508E8, v38))
  {
    v40 = 1;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_10084C854();
    }

    v40 = sub_10078759C(off_100B508C8, v39);
  }

  sub_10069BF00(a3, v40);
  v41 = sub_1005D09A8(a1, a2);
  if (v41)
  {
    v42 = sub_100320DF4(v41 + 400);
  }

  else
  {
    v42 = 0;
  }

  sub_1003A5960(a3, v42);
  v44 = sub_1005D2D6C(v43, a2);
  sub_10069BD6C(a3, v44);
  v45 = sub_1005D2EB8(a1, a2);
  sub_1003A2788(a3, v45 / 15.0);
  v46 = sub_100320E14((a3 + 50));
  sub_1003A32D0(a3, v46);
  v47 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v48 = sub_1000E2140(a2, 0x20u);
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "HFP setSupportsTipi %d", buf, 8u);
  }

  v49 = sub_1000E2140(a2, 0x20u);
  sub_1003A3318(a3, v49);
  v50 = sub_100542884(a2);
  sub_10069BE1C(a3, v50);
  v51 = sub_1000E2140(a2, 5u);
  v52 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v53 = "disabled";
    if (v51)
    {
      v53 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v53;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Offloading Host DSL %s", buf, 0xCu);
  }

  sub_10069BFC4(a3, v51);
  v54 = sub_100537920(a2);
  sub_1003A3A8C(a3, v54);
  if (!sub_1000E2140(a2, 0xCu))
  {
    v55 = sub_100539FE8(a2);
    if (!v55)
    {
      v56 = sub_1005D2EF4(v55, a2);
      sub_10069BFD4(a3, v56);
    }
  }

  v57 = sub_1000E2140(a2, 0xCu);
  sub_1003A354C(a3, v57);
  if (qword_100B50950 != -1)
  {
    sub_10084C87C();
  }

  v58 = sub_1003391A4(off_100B50948, a2);
  sub_1003A3574(a3, v58);
  if (qword_100B50950 != -1)
  {
    sub_10084C87C();
  }

  if (sub_1003391A4(off_100B50948, a2))
  {
    *buf = 0;
    *&__p.byte0 = 0;
    if (qword_100B50950 != -1)
    {
      sub_10084C87C();
    }

    sub_10033C1E4(off_100B50948, a2, buf, &__p);
    sub_1003A35C4(a3, buf[0], __p.byte0);
    v93 = 3;
    if (qword_100B50950 != -1)
    {
      sub_10084C87C();
    }

    sub_10033C47C(off_100B50948, a2, &v93);
    sub_1003A35D4(a3, v93);
    v59 = sub_1000E3314(a2);
    sub_1003A35E4(a3, v59);
    if (qword_100B50950 != -1)
    {
      sub_10084C87C();
    }

    v60 = sub_10033C0B8(off_100B50948, a2);
    sub_1003A359C(a3, v60);
  }

  if (sub_1000E2140(a2, 0xCu) || sub_100539FE8(a2))
  {
    if (qword_100B50950 != -1)
    {
      sub_10084C87C();
    }

    v61 = sub_1000E0264(off_100B50948, a2);
    sub_1003A35F4(a3, v61);
  }

  sub_1000C2364(a2, &v96 + 1, &v96, &v95 + 1, &v95);
  v62 = sub_1000E2140(a2, 0x29u);
  v63 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v64 = "Disabled";
    if (v62)
    {
      v64 = "Enabled";
    }

    *buf = 136315138;
    *&buf[4] = v64;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "High Quality BiDirectional Audio %s", buf, 0xCu);
  }

  sub_1003A3D1C(a3, v62);
  if (sub_100541024(a2))
  {
    v65 = sub_1000E3284(a2);
    sub_1003A3614(a3, v65);
  }

  if (sub_100549214(a2))
  {
    v66 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v67 = buf[23] >= 0 ? buf : *buf;
      *&__p.byte0 = 136315138;
      *&__p.byte4 = v67;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Applying DontAutoRoute: %s", &__p.byte0, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    sub_100546F14(a2, 0);
    sub_1003A4008(a3, 0);
  }

  if (sub_10054925C(a2))
  {
    v68 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v69 = buf[23] >= 0 ? buf : *buf;
      *&__p.byte0 = 136315138;
      *&__p.byte4 = v69;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Applying AudioRouteHidden: %s", &__p.byte0, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    sub_100546F5C(a2, 0);
    sub_1003A407C(a3, 1);
  }

  v70 = sub_1000E2140(a2, 0x19u);
  sub_1003A39EC(a3, v70);
  v71 = sub_1000E2140(a2, 0x25u);
  sub_10069BFE4(a3, v71);
  v72 = sub_1000E2140(a2, 0x23u);
  sub_10069C024(a3, v72);
  *&__p.byte0 = 0;
  *&__p.byte8 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10084C854();
  }

  sub_1000498D4(off_100B508C8, (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133], 1u, 1u, 0, 0, buf);
  v73 = sub_10004DF60(buf);
  [v73 getUUIDBytes:&__p];

  sub_1003A39AC(a3, &__p);
  sub_1000C2364(a2, &v96 + 1, &v96, &v95 + 1, &v95);
  sub_1003A39BC(a3, SHIDWORD(v95));
  sub_1003A39CC(a3, v95);
  sub_1003A39DC(a3, v96);
  v74 = sub_10054AFB4(a2);
  sub_1003A3A14(a3, v74);
  sub_1003A5D88(buf, a2 + 148);
  sub_1003A3A9C(a3, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v75 = sub_10054B04C(a2);
  sub_1003A3BF4(a3, v75);
  v76 = sub_1005493C4(a2);
  sub_1003A3950(a3, v76);
  v77 = sub_1000E2140(a2, 0x2Cu);
  sub_10069C014(a3, v77);
  v78 = sub_1000E012C(a2, 0xBu);
  sub_10069BFF4(a3, v78);
  if (_os_feature_enabled_impl())
  {
    v79 = sub_1000E3218(a2, 0x25u);
    if (v79)
    {
      v81 = sub_10000C798(v79, v80);
      v82 = (*(*v81 + 464))(v81);
    }

    else
    {
      v82 = 0;
    }

    sub_10069C004(a3, v82);
  }

  v83 = sub_1000E2140(a2, 0x33u);
  if (v83)
  {
    v85 = sub_10000C7D0(v83, v84);
    v86 = (*(*v85 + 2912))(v85);
  }

  else
  {
    v86 = 0;
  }

  sub_10069C034(a3, v86);
  sub_1003A3C7C(a3, a2[1016]);
  if (qword_100B50940 != -1)
  {
    sub_10084C8A4();
  }

  if (*(off_100B50938 + 28))
  {
    v87 = sub_10010E314(*(off_100B50938 + 28));
    if (qword_100B50940 != -1)
    {
      sub_10084C8A4();
    }
  }

  else
  {
    v87 = 0;
  }

  if (off_100B50938)
  {
    v88 = sub_100632144(off_100B50938);
  }

  else
  {
    v88 = 0;
  }

  v89 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v88;
    *&buf[8] = 1024;
    *&buf[10] = v87;
    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Publish HFP device, notify BTHAL low Latency Game: %d, HID Allow AoS: %d", buf, 0xEu);
  }

  if ((v88 & v87) == 1)
  {
    sub_1005D328C(a1, a2, 1);
  }

  v90 = sub_100320D94((a3 + 50));
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1005E73B0;
  v100 = &unk_100B00C38;
  v101 = a2;
  v102 = v90;
  v103 = 1;
  sub_1005E72E4(a1 + 82, buf);
  v91 = (sub_1000E31D0(a2) & 2) == 0;
  sub_1003A4F44(a3, v91);
  sub_1003A1E50(a3);
  return sub_1000088CC(v94);
}

const char *sub_1005D264C(uint64_t a1, int a2)
{
  if (a2 <= 127)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        return "mSBC";
      }

      if (a2 == 127)
      {
        return "LC3";
      }
    }

    else
    {
      if (!a2)
      {
        return "None";
      }

      if (a2 == 1)
      {
        return "CSVD";
      }
    }

    return "Unknown";
  }

  if (a2 > 129)
  {
    switch(a2)
    {
      case 130:
        return "AAC-ELD-Stereo48K-10ms";
      case 255:
        return "LC3-Stereo";
      case 256:
        return "AAC-ELD";
    }

    return "Unknown";
  }

  if (a2 == 128)
  {
    return "AAC-ELD-Stereo";
  }

  else
  {
    return "AAC-ELD-Stereo48K";
  }
}

uint64_t sub_1005D2720(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  v4 = sub_1005D2A98(v3, a2);
  if (((v4 == 1) & sub_100320EFC(v3 + 400)) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1000;
  }

  if (sub_1000E2140(a2, 0xCu))
  {
    *buf = 0;
    LODWORD(__p[0]) = 0;
    v17 = 0;
    sub_1000C2364(a2, buf, __p, &v17 + 1, &v17);
    v6 = BYTE4(v17) - 2;
    if ((HIDWORD(v17) - 8194) > 0x2D)
    {
      goto LABEL_31;
    }

    if (((1 << v6) & 0x200020033F00) != 0)
    {
      v5 = 250;
      goto LABEL_10;
    }

    if (((1 << v6) & 0x409B) != 0)
    {
      v5 = 500;
    }

    else
    {
LABEL_31:
      v5 = 0;
    }
  }

LABEL_10:
  v7 = sub_100320C44(v3 + 400);
  HIDWORD(v17) = v7;
  if (v7)
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Modified default sco delay to: %d", buf, 8u);
    }

    v5 = v7;
  }

  v9 = sub_10000E92C();
  if ((*(*v9 + 8))(v9))
  {
    v10 = sub_10000E92C();
    sub_100007E30(buf, "VoiceCommand");
    sub_100007E30(__p, "DelayInMsec");
    v11 = (*(*v10 + 88))(v10, buf, __p, &v17 + 4);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(*buf);
      if (!v11)
      {
        goto LABEL_24;
      }
    }

    else if (!v11)
    {
      goto LABEL_24;
    }

    v12 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = HIDWORD(v17);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Default write modified default sco delay to %dms", buf, 8u);
    }

    v5 = HIDWORD(v17);
  }

LABEL_24:
  v13 = qword_100BCE8F8;
  if (v5 >= 2501)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v5;
      v19 = 1024;
      v20 = 2500;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Sco delay is too large %d, set max delay to %dms", buf, 0xEu);
      v13 = qword_100BCE8F8;
    }

    v5 = 2500;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Delay between sco and audio activation is %dms", buf, 8u);
  }

  return v5;
}

void sub_1005D2A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1005D2A98(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E45E8(a2);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        LOBYTE(v4) = 4;
        return v4;
      case 4:
        LOBYTE(v4) = 3;
        return v4;
      case 5:
        LOBYTE(v4) = 5;
        return v4;
    }

    goto LABEL_14;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      LOBYTE(v4) = 2;
      return v4;
    }

    if (v3 == 2)
    {
      LOBYTE(v4) = 1;
      return v4;
    }

LABEL_14:
    LOBYTE(v4) = 0;
    return v4;
  }

  v5 = sub_1000DEB14(a2);
  v4 = 0x302030103010201uLL >> (8 * (v5 - 16));
  if ((v5 - 16) > 7)
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

uint64_t sub_1005D2B54(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  *v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_1000DE474(&v6 + 1);
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  BYTE2(v9[0]) = 0;
  BYTE4(v9[0]) = 0;
  DWORD1(v12[1]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(v9[0]) = 0;
  v10 = 0uLL;
  v9[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v12, 0, 19);
  __p[1] = 0;
  BYTE8(v12[1]) = 1;
  *(&v12[1] + 14) = 0;
  *(&v12[1] + 9) = 0;
  v13 = 0uLL;
  *(&v12[2] + 1) = 0;
  LOBYTE(v14) = 0;
  *(&v14 + 2) = 0;
  if (a2)
  {
    if (sub_100536A18(a2, &v6))
    {
      a2 = DWORD2(v12[2]);
      if (DWORD2(v12[2]))
      {
        v3 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
        {
          v5[0] = 67109120;
          v5[1] = a2;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "DSPTuning: %d", v5, 8u);
        }
      }
    }

    else
    {
      a2 = 0;
    }
  }

  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  nullsub_21();
  return a2;
}

void sub_1005D2CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100320BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D2CFC(uint64_t a1, uint64_t a2)
{
  result = sub_1005D09A8(a1, a2);
  if (result)
  {
    v3 = result + 400;

    return sub_100320E7C(v3);
  }

  return result;
}

uint64_t sub_1005D2D34(uint64_t a1, uint64_t a2)
{
  result = sub_1005D09A8(a1, a2);
  if (result)
  {
    v3 = result + 400;

    return sub_100320E9C(v3);
  }

  return result;
}

uint64_t sub_1005D2D6C(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  *__p = 0u;
  v6 = 0u;
  *v7 = 0u;
  v4 = 0u;
  *v5 = 0u;
  sub_1000DE474(&v4 + 1);
  BYTE2(v5[0]) = 0;
  BYTE4(v5[0]) = 0;
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  DWORD1(v10[1]) = 0;
  v6 = 0uLL;
  v5[1] = 0;
  LOBYTE(v7[0]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v10, 0, 19);
  __p[1] = 0;
  BYTE8(v10[1]) = 1;
  *(&v10[1] + 14) = 0;
  *(&v10[1] + 9) = 0;
  v11 = 0uLL;
  *(&v10[2] + 1) = 0;
  LOBYTE(v12) = 0;
  *(&v12 + 2) = 0;
  if (a2)
  {
    if (sub_100536A18(a2, &v4))
    {
      a2 = LODWORD(v10[2]);
    }

    else
    {
      a2 = 0;
    }
  }

  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  nullsub_21();
  return a2;
}

uint64_t sub_1005D2EB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005D09A8(a1, a2);
  v3 = 12;
  if (v2)
  {
    v4 = sub_100320DE4(v2 + 400);
    if (v4)
    {
      return v4;
    }

    else
    {
      return 12;
    }
  }

  return v3;
}

uint64_t sub_1005D2EF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E45E8(a2);
  v4 = qword_100BCE8F8;
  result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (result)
        {
          sub_1000E5A58(a2, __p);
          v10 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User selected device type is hearing aid. Returning user selected device type as kBluetoothAudioDeviceCategoryHearingAid for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 4;
      case 4:
        if (result)
        {
          sub_1000E5A58(a2, __p);
          v13 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v17 = v13;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning user selected device type as kBluetoothAudioDeviceCategorySpeaker for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 3;
      case 5:
        if (result)
        {
          sub_1000E5A58(a2, __p);
          v7 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v17 = v7;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User selected device type is other. Returning user selected device type as kBluetoothAudioDeviceCategoryOther for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 5;
      default:
LABEL_34:
        if (!result)
        {
          return result;
        }

        sub_1000E5A58(a2, __p);
        if (v15 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136446210;
        v17 = v11;
        v9 = "Returning user selected device type as kBluetoothAudioDeviceCategoryUnknown for device %{public}s.";
        goto LABEL_39;
    }
  }

  else
  {
    if (!v3)
    {
      if (!result)
      {
        return result;
      }

      sub_1000E5A58(a2, __p);
      if (v15 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136446210;
      v17 = v8;
      v9 = "User selected device type is unknown. Returning user selected device type as kBluetoothAudioDeviceCategoryUnknown for device %{public}s.";
LABEL_39:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        if (result)
        {
          sub_1000E5A58(a2, __p);
          if (v15 >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = __p[0];
          }

          *buf = 136446210;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning user selected device type as kBluetoothAudioDeviceCategoryHeadphone for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 1;
      }

      goto LABEL_34;
    }

    if (result)
    {
      sub_1000E5A58(a2, __p);
      v12 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning user selected device type as kBluetoothAudioDeviceCategoryCarkit for device %{public}s.", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 2;
  }
}

uint64_t sub_1005D328C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3;
    v5 = result;
    result = _os_feature_enabled_impl();
    if ((result & 1) != 0 || (result = _os_feature_enabled_impl(), result))
    {
      v7 = sub_10000C798(result, v6);
      result = (*(*v7 + 248))(v7);
      if (result)
      {
        result = sub_1000E2140(a2, 0x31u);
        if (result)
        {
          v8 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = "off";
            if (v3)
            {
              v9 = "on";
            }

            LODWORD(v11) = 136315138;
            *(&v11 + 4) = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notify BTHAL Low Latency Game is %s", &v11, 0xCu);
          }

          v11 = 0uLL;
          sub_100007F88(&v11, v5 + 760);
          v10 = sub_1005D09A8(v5, a2);
          if (v10)
          {
            sub_10069BDEC(v10, v3);
          }

          return sub_1000088CC(&v11);
        }
      }
    }
  }

  return result;
}

void sub_1005D3414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = sub_1005D09A8(a1, a2);
  if (v4)
  {

    sub_10069C004(v4, v3);
  }
}

uint64_t sub_1005D345C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 760);
  v6 = sub_1005D09A8(a1, a2);
  if (v6)
  {
    sub_10069BFF4(v6, v3);
    v7 = 0;
  }

  else
  {
    v7 = 7;
  }

  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_1005D34E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 760);
  v6 = sub_1005D09A8(a1, a2);
  if (v6)
  {
    sub_10069C014(v6, v3);
    v7 = 0;
  }

  else
  {
    v7 = 7;
  }

  sub_1000088CC(v9);
  return v7;
}

void sub_1005D3574(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, unsigned __int8 a5, unsigned __int8 a6)
{
  v10 = a4;
  if (a2 && (v11 = sub_100320D9C(a2 + 400)) != 0)
  {
    v12[0] = 3;
    v12[1] = sub_1003A2B68(a2, v10);
    v12[2] = a3;
    v12[3] = a5;
    v12[4] = a6;
    if (qword_100B50950 != -1)
    {
      sub_10084C8CC();
    }

    if (sub_10033FD88(off_100B50948, v11, 5u, v12) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084C8E0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084C950();
  }
}

uint64_t sub_1005D36A4(uint64_t a1, uint64_t a2)
{
  v56[0] = 0;
  v56[1] = 0;
  sub_100007F88(v56, a1 + 760);
  if (!sub_10069B0D8(a2))
  {
    v55 = 0;
    v54 = 0;
    sub_1000216B4(&v54);
    v4 = sub_1002489D0(&v55 + 1, &v55);
    sub_100022214(&v54);
    if (v4 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084C98C();
    }

    if (!a2 || (v5 = sub_100320D9C(a2 + 400)) == 0)
    {
LABEL_48:
      if (sub_100320F4C(a2 + 400) == 256 || sub_100320F4C(a2 + 400) == 127 || v4)
      {
        v38 = HIWORD(v55);
        if (sub_100320FE4(a2 + 400))
        {
          v39 = sub_100320FE4(a2 + 400);
        }

        else
        {
          v39 = 60;
        }

        if (v39 <= v38)
        {
          if (!sub_100320FE4(a2 + 400))
          {
            v42 = 60;
            goto LABEL_66;
          }

          goto LABEL_60;
        }
      }

      else
      {
        if (sub_100320F4C(a2 + 400) != 128)
        {
          goto LABEL_67;
        }

        v40 = HIWORD(v55);
        if (sub_100320FE4(a2 + 400))
        {
          v41 = sub_100320FE4(a2 + 400);
        }

        else
        {
          v41 = 240;
        }

        if (v41 <= v40)
        {
          if (!sub_100320FE4(a2 + 400))
          {
            v42 = 240;
            goto LABEL_66;
          }

LABEL_60:
          v42 = sub_100320FE4(a2 + 400);
          goto LABEL_66;
        }
      }

      v42 = HIWORD(v55);
LABEL_66:
      HIWORD(v55) = v42;
LABEL_67:
      v43 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v44 = HIWORD(v55);
        v45 = sub_100321004(a2 + 400);
        v46 = sub_100320FE4(a2 + 400);
        v47 = sub_100321024(a2 + 400);
        *buf = 67110144;
        v58 = v44;
        v59 = 1024;
        v60 = 625 * v45;
        v61 = 1024;
        *v62 = v46;
        *&v62[4] = 1024;
        *&v62[6] = v47;
        v63 = 1024;
        v64 = v55;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Creating HF SendThread: HCI %d length, OTA interval %d us, %d bytes, and bt clk 0x%x numScoBuffers %d", buf, 0x20u);
      }

      v48 = sub_100320D94(a2 + 400);
      v49 = HIWORD(v55);
      v50 = sub_100320FE4(a2 + 400);
      v51 = v55;
      v52 = sub_100320F4C(a2 + 400);
      sub_10069C120(a2, a1, v48, v49, v50, v51, v52);
    }

    v6 = qword_100BCE8F8;
    v7 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v9 = HIWORD(v55);
      v10 = v55;
      v11 = sub_100320F4C(a2 + 400);
      v12 = sub_1005D264C(v11, v11);
      *buf = 67109634;
      v58 = v9;
      v59 = 1024;
      v60 = v10;
      v61 = 2080;
      *v62 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ReadScoBuffer size:%hu, count:%u, codec:%s", buf, 0x18u);
    }

    v13 = sub_10000C798(v7, v8);
    v14 = (*(*v13 + 352))(v13);
    if ((v14 & 1) != 0 || (v16 = sub_10000C798(v14, v15), v17 = (*(*v16 + 360))(v16), v17))
    {
      v19 = sub_100320F4C(a2 + 400);
      if (v19 == 2)
      {
        v21 = sub_10000C7D0(v19, v20);
        if (sub_100413F2C(v21))
        {
          v22 = 240;
        }

        else
        {
          v22 = 192;
        }

        HIWORD(v55) = v22;
        v23 = qword_100BCE8F8;
        v17 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          *buf = 67109120;
          v58 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Restore maxScoPacketSize for mSBC - %hu", buf, 8u);
        }

        goto LABEL_28;
      }

      v24 = sub_1005D09A8(a1, v5);
      if (v24 && sub_100320EAC(v24 + 400) && sub_100320F4C(a2 + 400) == 128)
      {
        v25 = qword_100BCE8F8;
        v17 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Restore maxScoPacketSize for AAC-ELD Stereo", buf, 2u);
        }

        v26 = 240;
LABEL_27:
        HIWORD(v55) = v26;
        goto LABEL_28;
      }

      v17 = sub_100320F4C(a2 + 400);
      if (v17 == 1)
      {
        v27 = qword_100BCE8F8;
        v17 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Restore maxScoPacketSize for CVSD", buf, 2u);
        }

        v26 = 120;
        goto LABEL_27;
      }
    }

LABEL_28:
    v28 = sub_10000C798(v17, v18);
    if ((*(*v28 + 416))(v28))
    {
      if (sub_100320F4C(a2 + 400) == 1)
      {
        v29 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Restore macOS maxScoPacketSize for CVSD", buf, 2u);
        }

        HIWORD(v55) = 60;
      }

      else
      {
        v30 = sub_100320F4C(a2 + 400);
        if (v30 == 2)
        {
          v32 = sub_10000C7D0(v30, v31);
          v33 = sub_100413F2C(v32) ? 240 : 120;
          HIWORD(v55) = v33;
          v34 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v58 = v33;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Restore macOS maxScoPacketSize for mSBC - %hu", buf, 8u);
          }
        }
      }
    }

    if (sub_100320F4C(a2 + 400) == 255)
    {
      HIWORD(v55) = 360;
      v35 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v58 = 360;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Max SCO packet size of LC3 stereo - %hu", buf, 8u);
      }
    }

    if (sub_100320F4C(a2 + 400) == 129)
    {
      HIWORD(v55) = 360;
      v36 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v58 = 360;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Max SCO packet size of AAC-ELD stereo - %hu", buf, 8u);
      }
    }

    if (sub_100320F4C(a2 + 400) == 130)
    {
      HIWORD(v55) = 240;
      v37 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v58 = 240;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Max SCO packet size of AAC-ELD stereo 10ms - %hu", buf, 8u);
      }
    }

    goto LABEL_48;
  }

  return sub_1000088CC(v56);
}

void sub_1005D3D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, int a13, char a14)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D3DD0(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v20 = a3;
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, &a1[190]);
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing HFP device %d from tracked audio devices", buf, 8u);
  }

  v7 = *&a1[208]._os_unfair_lock_opaque;
  if (!v7)
  {
    goto LABEL_43;
  }

  v8 = a1 + 208;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v20;
    v11 = v9 < v20;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != &a1[208] && v20 >= LOWORD(v8[8]._os_unfair_lock_opaque))
  {
    *buf = &v20;
    v12 = sub_1003750BC(&a1[206], &v20, &unk_1008A9BD0, buf)[5];
    if (v12 && (sub_100320E8C(v12 + 400) & 1) == 0)
    {
      if (sub_10069B0D8(v12))
      {
        sub_10069B0E8(v12);
      }

      if (sub_1003203F8(v12 + 400))
      {
        v13 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, buf);
          v14 = SHIBYTE(v25) >= 0 ? buf : *buf;
          *v21 = 136446210;
          v22 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device %{public}s is in Expanse over A2DP. Clean up expanse A2DP states since device is unpublishing", v21, 0xCu);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(*buf);
          }
        }

        (*(*&a1->_os_unfair_lock_opaque + 192))(a1, v12, 0);
      }

      *buf = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_1005E73B0;
      v26 = &unk_100B00C38;
      v27 = a2;
      v28 = v20;
      v29 = 0;
      sub_1005E72E4(a1 + 82, buf);
      sub_1003A2794(v12);
    }

    v18 = 0;
    sub_1000216B4(&v18);
    if (sub_10024860C(a2 + 128) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084C9FC();
    }

    if (sub_100539FE8(a2))
    {
      v15 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v16 = SHIBYTE(v25) >= 0 ? buf : *buf;
        *v21 = 136446210;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Disabling SCO Buffer Flush as %{public}s is disconnecting HFP", v21, 0xCu);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10023E814(a2 + 128, 0) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084CA6C();
      }
    }

    sub_100022214(&v18);
    sub_100480E04(&a1[206], &v20);
    sub_10002249C(&v18);
  }

  else
  {
LABEL_43:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CADC();
    }
  }

  return sub_1000088CC(v19);
}

void sub_1005D4184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D41BC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  v6 = sub_100007F88(v13, a1 + 760);
  v8 = sub_10000C7D0(v6, v7);
  if (!sub_1004134D8(v8, v9))
  {
LABEL_5:
    sub_1005D43B4(a1, a2);
    return sub_1000088CC(v13);
  }

  if (a3 <= 9)
  {
    v12 = 0;
    sub_1000216B4(&v12);
    v10 = sub_100258284();
    if (!v10)
    {
      sub_1005D4298(v10, a2, 0xAu, (a3 + 1));
    }

    sub_100022214(&v12);
    sub_10002249C(&v12);
    goto LABEL_5;
  }

  return sub_1000088CC(v13);
}

void sub_1005D4270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005D4298(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Delaying SCO connection by %d milliseconds", v6, 8u);
  }

  operator new();
}

BOOL sub_1005D43B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D0048(a1, a2);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CBFC();
    }

    return 0;
  }

  v5 = v4;
  v6 = sub_1005D492C(a1, a2);
  v7 = sub_100320DC4(v5 + 400);
  v8 = qword_100BCE8F8;
  v9 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v7 != 3)
  {
    if (v9)
    {
      sub_1000E5A58(v6, __p);
      v14 = v24 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Making outgoing audio connection to device %{public}s", buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100364274(11);
    v15 = mach_absolute_time();
    if (qword_100B50940 != -1)
    {
      sub_10084C8A4();
    }

    *(off_100B50938 + 23) = v15;
    if (sub_100320F5C(v5 + 400))
    {
      if (sub_100320DC4(v5 + 400) == 1)
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084CB50();
        }

        goto LABEL_41;
      }

      v16 = sub_1005E0750(a1, v6);
      if (!v16)
      {
LABEL_41:
        sub_100320DCC(v5 + 400, 1);
        return 1;
      }
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v16 = sub_10021194C(a2);
      if (!v16)
      {
        v17 = sub_100320D9C(v5 + 400);
        v16 = sub_10024DEFC(sub_1005E06A8, v17 + 128);
      }

      sub_100022214(__p);
      sub_10002249C(__p);
      if (!v16)
      {
        goto LABEL_41;
      }
    }

    if (v16 == 1806)
    {
      v18 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v6, __p);
        v19 = v24 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Audio is already connected to device %{public}s", buf, 0xCu);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10069BC6C(v5, 1, 1806);
      sub_1005DC3F8(a1, a2);
      return 1;
    }

    v20 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v6, __p);
      v22 = v24 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v26 = v22;
      v27 = 1024;
      v28 = v16;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Audio connection to device %{public}s failed with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  if (v9)
  {
    sub_1000E5A58(v6, __p);
    v10 = v24 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Accepting incoming audio connection from device %{public}s", buf, 0xCu);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v11 = sub_1002119F0(a2, 1);
  v12 = sub_100320D9C(v5 + 400);
  sub_10024DEFC(sub_1005E06A8, v12 + 128);
  sub_100022214(__p);
  v13 = v11 == 0;
  if (v11)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CB8C();
    }

    sub_100320DCC(v5 + 400, 0);
    sub_1005DCA18(a1, a2, 0, v11);
  }

  else
  {
    sub_100320DCC(v5 + 400, 0);
  }

  sub_10002249C(__p);
  return v13;
}

void sub_1005D4830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D4850(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 760);
  v4 = *(a1 + 824);
  v5 = (a1 + 832);
  if (v4 == v5)
  {
LABEL_9:
    v9 = 0;
  }

  else
  {
    while (sub_100320D9C(v4[5] + 400) != a2)
    {
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
      if (v7 == v5)
      {
        goto LABEL_9;
      }
    }

    v9 = sub_100320D94(v4[5] + 400);
  }

  sub_1000088CC(v11);
  return v9;
}

uint64_t sub_1005D492C(uint64_t a1, unsigned int a2)
{
  v13 = a2;
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 760);
  v4 = *(a1 + 832);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 832;
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
  if (v5 != a1 + 832 && *(v5 + 32) <= a2)
  {
    v14 = &v13;
    v11 = sub_1003750BC(a1 + 824, &v13, &unk_1008A9BD0, &v14);
    v9 = sub_100320D9C(v11[5] + 400);
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  sub_1000088CC(v12);
  return v9;
}

uint64_t sub_1005D4A04(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 760);
  v4 = *(a1 + 824);
  v5 = (a1 + 832);
  if (v4 == v5)
  {
LABEL_12:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v6 = sub_100320DB4(v4[5] + 400);
      v7 = v6 == *a2 && WORD2(v6) == *(a2 + 4);
      if (v7)
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
          v7 = *v9 == v4;
          v4 = v9;
        }

        while (!v7);
      }

      v4 = v9;
      if (v9 == v5)
      {
        goto LABEL_12;
      }
    }

    v10 = sub_100320D94(v4[5] + 400);
  }

  sub_1000088CC(v12);
  return v10;
}

void sub_1005D4AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D4AFC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 760);
  v6 = *(a1 + 832);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 832;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 != a1 + 832 && *(v7 + 32) <= a2)
  {
    v12 = sub_1005D492C(a1, a2);
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    sub_1000BE6F8((v12 + 128), a3);
    std::string::append(a3, "-tsco");
  }

  else
  {
LABEL_9:
    sub_100007E30(a3, "null");
  }

  return sub_1000088CC(v13);
}

void sub_1005D4BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

void sub_1005D4BFC(uint64_t a1@<X0>, int a2@<W1>, std::string *a4@<X8>)
{
  *&a4->__r_.__value_.__l.__data_ = 0uLL;
  a4->__r_.__value_.__r.__words[2] = 0;
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    if (a2 > 7)
    {
      switch(a2)
      {
        case 8:
          operator new();
        case 16:
          operator new();
        case 32:
          operator new();
      }
    }

    else
    {
      switch(a2)
      {
        case 1:
          goto LABEL_8;
        case 2:
          operator new();
        case 4:
LABEL_8:
          operator new();
      }
    }

    sub_10039BE10(0, &v6, a1);
    *a4 = v6;
  }
}

void sub_1005D4DE0(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *(a2 + 776);
  if (v6 == 32)
  {
    v15 = 0;
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    v11 = 0u;
    *__p = 0u;
    v9 = 0u;
    *v10 = 0u;
    v7 = 0u;
    *v8 = 0u;
    sub_1000DE474(&v7 + 1);
    BYTE2(v8[0]) = 0;
    BYTE4(v8[0]) = 0;
    BYTE2(v10[0]) = 0;
    BYTE4(v10[0]) = 0;
    DWORD1(v13[1]) = 0;
    v9 = 0uLL;
    v8[1] = 0;
    LOBYTE(v10[0]) = 0;
    v11 = 0uLL;
    v10[1] = 0;
    LOBYTE(__p[0]) = 0;
    memset(v13, 0, 19);
    __p[1] = 0;
    BYTE8(v13[1]) = 1;
    *(&v13[1] + 14) = 0;
    *(&v13[1] + 9) = 0;
    v14 = 0uLL;
    *(&v13[2] + 1) = 0;
    LOBYTE(v15) = 0;
    *(&v15 + 2) = 0;
    sub_100536A18(a2, &v7);
    if (SHIBYTE(v13[0]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[1]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[1]);
    }

    nullsub_21();
    v6 = *(a2 + 776);
  }

  sub_1005D4BFC(a1, v6, a3);
}

uint64_t sub_1005D4F60(uint64_t a1, int a2)
{
  if ((a2 - 129) >= 2 && a2 != 255)
  {
    return 0;
  }

  v4 = 0;
  sub_1000216B4(&v4);
  v2 = sub_10023DEAC();
  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1005D4FD4(uint64_t a1, uint64_t a2)
{
  if (!a2 || !sub_10054FD60(a2))
  {
    return 0;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10084CC6C();
  }

  v2 = off_100B508E8;

  return sub_10056E240(v2);
}

uint64_t sub_1005D5034(uint64_t a1)
{
  sub_10032F49C(a1, 2);
  *a1 = off_100B007D8;
  *(a1 + 256) = off_100B00970;
  *(a1 + 264) = off_100B009B0;
  *(a1 + 272) = &off_100B009E0;
  *(a1 + 280) = off_100B009F8;
  *(a1 + 288) = off_100B00A98;
  *(a1 + 296) = off_100B00AC0;
  *(a1 + 304) = off_100B00B30;
  *(a1 + 312) = off_100B00B70;
  *(a1 + 320) = &off_100B00BA0;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  sub_10031FEF8(a1 + 360);
  *(a1 + 752) = 0;
  sub_100044BBC((a1 + 760));
  *(a1 + 832) = 0u;
  *(a1 + 824) = a1 + 832;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "PTS");
  sub_100007E30(__p, "PhoneNumberHack");
  (*(*v2 + 72))(v2, buf, __p, a1 + 752);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
  }

  if (*(a1 + 752) == 1)
  {
    v3 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PTS phone number hack enabled", buf, 2u);
    }
  }

  return a1;
}

void sub_1005D52A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_10000CEDC(v21 + 824, *v22);
  sub_10007A068(v21 + 760);
  sub_100320110(v21 + 360);
  v24 = *(v21 + 336);
  if (v24)
  {
    *(v21 + 344) = v24;
    operator delete(v24);
  }

  sub_10032F580(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D5330(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(v14, "Handsfree");
  sub_100007E30(__p, "VVMSleep");
  (*(*v2 + 88))(v2, v14, __p, &dword_100B54AA0);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10084CC80();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 264);
  v3 = sub_100017E6C();
  sub_1005E8648(v3 + 424, a1 + 272);
  v6 = sub_1000D999C(v4, v5);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005D5554;
  v11[3] = &unk_100ADF8F8;
  v11[4] = a1;
  sub_10000D334(v6, v11);
  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  sub_1000F0D9C(off_100B508E8 + 240, a1 + 312);
  if (qword_100B508D0 != -1)
  {
    sub_10084C854();
  }

  sub_1007986D0(off_100B508C8, a1 + 320);
  if (qword_100B50F68 != -1)
  {
    sub_10084CCA8();
  }

  sub_10012E3B0(off_100B50F60 + 24, a1 + 288);
  if (qword_100B50F88 != -1)
  {
    sub_10084CCD0();
  }

  v7 = sub_1006DC960(off_100B50F80, a1 + 304);
  v9 = sub_10000C7D0(v7, v8);
  sub_1004132C4(v9, a1 + 296);
  return 0;
}

void sub_1005D5520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 17) < 0)
  {
    operator delete(*(v20 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1005D5554(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_10084CCF8();
  }

  sub_1006FCA38(off_100B54078, v1 + 256);
  sub_1005D55C0(v1, v2);
  sub_1005D56E0(v1);

  sub_1005D5948(v1);
}

uint64_t sub_1005D55C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 72))(v3);
  if (v4)
  {
    v6 = 3947;
  }

  else
  {
    v6 = 3939;
  }

  v7 = sub_10000C798(v4, v5);
  v8 = (*(*v7 + 64))(v7);
  if (v8)
  {
    v6 |= 4u;
  }

  v10 = *sub_10000C798(v8, v9);
  if (((*(v10 + 416))() & 1) == 0)
  {
    if (qword_100B54080 != -1)
    {
      sub_10084CCF8();
    }

    if (sub_1006FD3C4(off_100B54078))
    {
      v6 |= 0x80u;
    }
  }

  sub_10032013C(a1 + 360, v6);

  return sub_10032014C(a1 + 360, 15);
}

void sub_1005D56E0(uint64_t a1)
{
  memset(v10, 0, sizeof(v10));
  sub_100007E30(&v10[1], "");
  v9 = 0;
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCDB4(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CD34();
    }
  }

  else
  {
    v6 = v10[0];
    if (SHIBYTE(v10[3]) < 0)
    {
      sub_100008904(&__p, v10[1], v10[2]);
    }

    else
    {
      __p = *&v10[1];
      v8 = v10[3];
    }

    sub_10032018C(a1 + 360, &v6);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p);
    }
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v2 = sub_1006FCDDC(off_100B54078);
  if (v2)
  {
    sub_1003201D4(a1 + 360, v2);
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084CD70();
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCE04(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CDAC();
    }
  }

  else
  {
    sub_1003203C8(a1 + 360, v9);
  }

  v5 = 0;
  v3 = sub_100017E6C();
  (*(*v3 + 104))(v3, &v5 + 1, &v5);
  if (v5 == 100)
  {
    LOBYTE(v4) = 5;
  }

  else
  {
    v4 = v5 / 0x14u + 1;
  }

  sub_1003203D8(a1 + 360, v4);

  if (SHIBYTE(v10[3]) < 0)
  {
    operator delete(v10[1]);
  }
}

void sub_1005D5900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005D5948(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  sub_1000DA2A8(v3);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1000D895C(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CDE8();
    }
  }

  else
  {
    sub_1000DA9C4(v2, v3);
    sub_1000DAD0C(a1 + 360, v2);
    v4 = v2;
    sub_1000D6BD4(&v4);
  }

  v4 = v3;
  sub_1000D6BD4(&v4);
}

void sub_1005D5A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_1000D6BD4((v14 - 24));
  *(v14 - 24) = &a13;
  sub_1000D6BD4((v14 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1005D5A3C(uint64_t a1)
{
  v2 = sub_10000E92C();
  v3 = (*(*v2 + 8))(v2);
  if (v3)
  {
    LOBYTE(v50[0]) = 0;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "CATT");
    sub_100007E30(__p, "AudioSinkSdp");
    v3 = (*(*v5 + 72))(v5, buf, __p, v50);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(*buf);
    }

    if (LOBYTE(v50[0]) == 1)
    {
      v6 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding HF role into SDP", buf, 2u);
      }

      *buf = xmmword_100B00BB0;
      v52 = "Handsfree";
      __p[0] = buf;
      __p[1] = 1;
      LOBYTE(v49) = 0;
      sub_1000216B4(&v49);
      if (sub_1001AF904(__p, 0, 511, 387, sub_1005D6184) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084CE24();
      }

      v3 = sub_10002249C(&v49);
    }
  }

  *__p = off_100B00BE0;
  v7 = sub_10000C798(v3, v4);
  v8 = (*(*v7 + 840))(v7, 6);
  if (v8)
  {
    v10 = 3;
  }

  else
  {
    v11 = qword_100BCE8F8;
    v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "WBS / mSBC for HFP disabled by defaults write", buf, 2u);
    }

    v10 = 1;
  }

  v12 = sub_10000C798(v8, v9);
  if ((*(*v12 + 840))(v12, 7))
  {
    v10 |= 0x100u;
    v13 = qword_100BCE8F8;
    v14 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      goto LABEL_24;
    }

    *buf = 0;
    v16 = "UWBS / AAC-ELD for HFP enabled";
  }

  else
  {
    v13 = qword_100BCE8F8;
    v14 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      goto LABEL_24;
    }

    *buf = 0;
    v16 = "UWBS / AAC-ELD for HFP disabled by defaults write";
  }

  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
LABEL_24:
  v17 = sub_10000C798(v14, v15);
  if ((*(*v17 + 840))(v17, 8))
  {
    v10 |= 0x80u;
    v18 = qword_100BCE8F8;
    v19 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (!v19)
    {
      goto LABEL_30;
    }

    *buf = 0;
    v21 = "UWBSStereo for HFP enabled";
  }

  else
  {
    v18 = qword_100BCE8F8;
    v19 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (!v19)
    {
      goto LABEL_30;
    }

    *buf = 0;
    v21 = "UWBSStereo for HFP disabled by defaults write";
  }

  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
LABEL_30:
  v22 = sub_10000C798(v19, v20);
  v23 = (*(*v22 + 840))(v22, 9);
  if (v23)
  {
    v25 = v10 | 4;
  }

  else
  {
    v25 = v10;
  }

  sub_10000C7D0(v23, v24);
  v26 = sub_10002223C();
  if (v26)
  {
    v25 |= 0x10u;
  }

  v28 = sub_10000C798(v26, v27);
  v29 = (*(*v28 + 840))(v28, 10);
  if (v29)
  {
    v25 |= 0x200u;
  }

  v31 = sub_10000C7D0(v29, v30);
  v33 = sub_100410510(v31, v32);
  if (v33)
  {
    v25 |= 0x400u;
  }

  v35 = sub_10000C7D0(v33, v34);
  v36 = (*(*v35 + 2888))(v35);
  v46 = 0;
  sub_1000216B4(&v46);
  v37 = sub_100320144(a1 + 360);
  v38 = sub_10020EF6C(__p, 0, v37, v25, sub_1005D61EC, 0);
  if (!v38)
  {
    goto LABEL_43;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084CE94();
  }

  if (v38 == 140)
  {
LABEL_43:
    if (v36)
    {
      v39 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Registering Handsfree AoS", buf, 2u);
      }

      sub_1003084A0(sub_1005D6274);
    }

    v40 = sub_100320154(a1 + 360);
    sub_10020F408(v40);
    if (!sub_10020F430(sub_1005D6508, 0))
    {
      v41 = sub_1003201C4(a1 + 360);
      v42 = sub_1003201CC(a1 + 360);
      v43 = sub_1003203D0(a1 + 360);
      v44 = sub_1003203E0(a1 + 360);
      sub_100211490(v41, v42, v43, v44);
      v50[0] = 0;
      v50[1] = 0;
      [[NSUUID alloc] initWithUUIDBytes:v50];
      sub_1003209C0(a1 + 360, v25);
      sub_1003209D0(a1 + 360, v36);
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CF04();
    }

    sub_10020F38C();
  }

  sub_10002249C(&v46);
  return 1;
}

void sub_1005D6184()
{
  v0 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Received hf event", v1, 2u);
  }
}

void sub_1005D6274(uint64_t a1, const void *a2, unsigned int a3, char a4)
{
  v7 = sub_1000E1FE8(a1);
  v8 = sub_100216D00(v7);
  v21 = &off_100AE0A78;
  v22 = 0;
  if (a3)
  {
    sub_10000C704(v23, a2, a3);
    sub_10000AE20(&v21, v23);
    *&v23[0] = &off_100AE0A78;
    v10 = *(&v23[0] + 1);
    if (*(&v23[0] + 1))
    {
      sub_10000C808(*(&v23[0] + 1));
    }

    v11 = 0;
  }

  else
  {
    memset(v23, 0, 60);
    sub_10000C704(&v19, v23, 0x3CuLL);
    sub_10000AE20(&v21, &v19);
    v19 = &off_100AE0A78;
    v10 = v20;
    if (v20)
    {
      sub_10000C808(v20);
    }

    v11 = 2;
  }

  v12 = sub_1000D999C(v10, v9);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3321888768;
  v13[2] = sub_1005E8B68;
  v13[3] = &unk_100B00CD0;
  v17 = a4;
  v16 = v8;
  v18 = v11;
  v14 = &off_100AE0A78;
  v15 = v22;
  if (v22)
  {
    sub_10000C69C(v22);
  }

  sub_10000CA94(v12, v13);
  v14 = &off_100AE0A78;
  if (v15)
  {
    sub_10000C808(v15);
  }

  v21 = &off_100AE0A78;
  if (v22)
  {
    sub_10000C808(v22);
  }
}

void sub_1005D6474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18, uint64_t a19, atomic_uint *a20, uint64_t a21, uint64_t a22)
{
  if (a18)
  {
    sub_10000C808(a18);
  }

  if (a20)
  {
    sub_10000C808(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005D65A0()
{
  v5 = 0;
  sub_1000216B4(&v5);
  v0 = sub_10020F38C();
  if (v0)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CF74();
    }

LABEL_4:
    v2 = 1;
    goto LABEL_10;
  }

  v3 = sub_10000C7D0(v0, v1);
  if (!(*(*v3 + 2888))(v3))
  {
    v2 = 0;
    goto LABEL_10;
  }

  v2 = sub_100308D7C();
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CFE4();
    }

    goto LABEL_4;
  }

LABEL_10:
  sub_10002249C(&v5);
  return v2;
}

uint64_t sub_1005D66A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000D999C(a1, a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005D67E0;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  sub_10000D334(v3, v6);
  v4 = sub_100017E6C();
  sub_1005E8A90(v4 + 424, a1 + 272);
  if (qword_100B50AA0 != -1)
  {
    sub_10084CC80();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 264);
  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  sub_10007A3F0(off_100B508E8 + 240, a1 + 312);
  if (qword_100B50F68 != -1)
  {
    sub_10084CCA8();
  }

  sub_10007A3F0(off_100B50F60 + 24, a1 + 288);
  if (qword_100B50F88 != -1)
  {
    sub_10084CCD0();
  }

  sub_1006DCA90(off_100B50F80, a1 + 304);
  return 0;
}

void sub_1005D67E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_10084CCF8();
  }

  v2 = off_100B54078;

  sub_1006FCB0C(v2, v1 + 256);
}

uint64_t sub_1005D6860(uint64_t a1)
{
  v14 = xmmword_1008AA7C0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (!sub_10053BFB4(a1, &v14, 4u, &__p))
  {
    goto LABEL_29;
  }

  v3 = __p;
  v2 = v12;
  if (__p == v12)
  {
    goto LABEL_29;
  }

  v4 = __p;
  while (1)
  {
    if (*v4 == 6 && *(v4 + 1) == 2)
    {
      v6 = *(v4 + 1);
      v7 = *v6 == 3 && *(v6 + 8) == 3;
      if (v7 && *(v6 + 16) == 1)
      {
        break;
      }
    }

    if (++v4 == v12)
    {
      v8 = 0xFFFFFFFFLL;
      goto LABEL_19;
    }
  }

  v8 = *(v6 + 24);
LABEL_19:
  while (v3 != v2)
  {
    v10 = *v3;
    sub_10037D4F4(&v10);
    ++v3;
    v2 = v12;
  }

  if (v8 == -1)
  {
LABEL_29:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a1, &v10);
      sub_10084D054();
    }

    v8 = 0xFFFFFFFFLL;
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

uint64_t sub_1005D69F0(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v12 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to connect handsfree to device %{public}s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_1005D6860(a2);
  if (v5 == -1)
  {
    v8 = 1;
  }

  else
  {
    v6 = sub_1002163F8((a2 + 128), v5);
    if (v6)
    {
      v6 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        sub_10084D0B0();
      }

      v8 = 305;
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_10000C7D0(v6, v7);
    if ((*(*v9 + 2888))(v9) && sub_10054F920(a2) && sub_100308588(a2 + 128) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084D124();
    }
  }

  sub_10002249C(__p);
  return v8;
}

void sub_1005D6BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D6BE0(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 760);
  v4 = sub_1005D4A04(a1, a2 + 128);
  v6 = sub_10000C7D0(v4, v5);
  if ((*(*v6 + 2888))(v6) && sub_10054F920(a2))
  {
    v7 = sub_1005D0048(a1, v4);
    if (v7)
    {
      v8 = sub_1003211B8(v7 + 400);
      if (v8)
      {
        sub_1005D6D94(v8, a2 + 128);
      }
    }

    v11 = 0;
    sub_1000216B4(&v11);
    if (sub_100308C54(a2 + 128) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084D194();
    }

    sub_10002249C(&v11);
  }

  v11 = 0;
  sub_1000216B4(&v11);
  if (sub_1002165D4(v4, 1818))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084D208();
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  sub_10002249C(&v11);
  sub_1000088CC(v12);
  return v9;
}

void sub_1005D6D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

_BYTE *sub_1005D6D94(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  sub_1000216B4(&v9);
  v3 = sub_1000E1FE8(a2);
  v4 = sub_100022214(&v9);
  v5 = *v3;
  v7 = sub_10000C7D0(v4, v6);
  (*(*v7 + 1880))(v7, v5, 0, 1);
  return sub_10002249C(&v9);
}

uint64_t sub_1005D6E3C(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12) = 67109376;
    DWORD1(v12) = v4;
    WORD4(v12) = 1024;
    *(&v12 + 10) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handsfree device handle %d disconnected with status %{bluetooth:OI_STATUS}u", &v12, 0xEu);
  }

  v7 = sub_1005D492C(a1, v4);
  sub_1005D3DD0(a1, v7, v4);
  if (qword_100B54090 != -1)
  {
    sub_10084D27C();
  }

  sub_10038A1A4(qword_100B54088, v7);
  if (v7)
  {
    v20 = 0;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    v16 = 0u;
    *__p = 0u;
    v14 = 0u;
    *v15 = 0u;
    v12 = 0u;
    *v13 = 0u;
    sub_1000DE474(&v12 + 1);
    BYTE2(v13[0]) = 0;
    BYTE4(v13[0]) = 0;
    BYTE2(v15[0]) = 0;
    BYTE4(v15[0]) = 0;
    DWORD1(v18[1]) = 0;
    v14 = 0uLL;
    v13[1] = 0;
    LOBYTE(v15[0]) = 0;
    v16 = 0uLL;
    v15[1] = 0;
    LOBYTE(__p[0]) = 0;
    memset(v18, 0, 19);
    __p[1] = 0;
    BYTE8(v18[1]) = 1;
    *(&v18[1] + 14) = 0;
    *(&v18[1] + 9) = 0;
    v19 = 0uLL;
    *(&v18[2] + 1) = 0;
    LOBYTE(v20) = 0;
    *(&v20 + 2) = 0;
    v8 = sub_100536A18(v7, &v12);
    if (v8 && BYTE5(v18[2]) == 1)
    {
      v10 = sub_10000C7D0(v8, v9);
      (*(*v10 + 200))(v10, 0, 1);
    }

    sub_10057E710(a1, v7, 0, a3);
    if (SHIBYTE(v18[0]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[1]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[1]);
    }

    nullsub_21();
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084D2A4();
  }

  result = sub_10057DDF0(a1);
  if ((result & 1) == 0)
  {
    sub_100320288(&a1[90]);
    if (sub_1000DB468(&a1[90]))
    {
      sub_1005D70EC(a1);
    }

    result = sub_1003203E8(&a1[90]);
    if (result)
    {
      return sub_1003203F0(&a1[90], 0);
    }
  }

  return result;
}

uint64_t sub_1005D70EC(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  sub_1000DA2A8(v5);
  v2 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up virtual call", buf, 2u);
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  sub_1006FD39C(off_100B54078);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  sub_1000D895C(off_100B54078);
  sub_1000D9854(a1 + 360, v5);
  sub_100320260(a1 + 360, 1);
  *buf = 0;
  v7 = 0;
  v3 = [[NSUUID alloc] initWithUUIDBytes:buf];
  sub_1000D7348(a1, v5, v3);

  *buf = v5;
  sub_1000D6BD4(buf);
  return 0;
}

void sub_1005D723C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000D6BD4(&a13);
  _Unwind_Resume(a1);
}

void sub_1005D7270(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1000D999C(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005D7300;
  v7[3] = &unk_100AE0880;
  v8 = a3;
  v7[4] = a1;
  v7[5] = a2;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1005D7300(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 48) == 18)
  {
    v2 = *(a1 + 32);

    return sub_1005D7444(v2);
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, v1 + 760);
    v5 = sub_1005D09A8(v1, *(a1 + 40));
    if (v5)
    {
      sub_1000C23E0(*(a1 + 40), v9);
      if (v10 >= 0)
      {
        v6 = v9;
      }

      else
      {
        v6 = v9[0];
      }

      sub_100007E30(__p, v6);
      sub_1003A2AF0(v5, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }

      v8 = sub_1005D2A98(v7, *(a1 + 40));
      sub_10069BD7C(v5, v8);
    }

    return sub_1000088CC(v13);
  }
}

void sub_1005D73FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D7444(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 760);
  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  v3 = sub_10056C908(off_100B508E8, v2);
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device info change for incompatible classic hid %u", buf, 8u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10084C854();
  }

  v6 = sub_10078759C(off_100B508C8, v5);
  v7 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device info change for incompatible LE hid %u", buf, 8u);
  }

  v8 = *(a1 + 824);
  if (v8 != (a1 + 832))
  {
    do
    {
      v9 = v8[5];
      if (v9)
      {
        sub_1003A32F8(v9, "kBTAudioMsgPropertyIncompatibleHidConnected", v3 | v6);
      }

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

    while (v11 != (a1 + 832));
  }

  return sub_1000088CC(v14);
}

void sub_1005D7638(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    v7[7] = v3;
    v7[8] = v4;
    v6 = sub_1000D999C(a1, a2);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005D76C0;
    v7[3] = &unk_100ADF8F8;
    v7[4] = a1;
    sub_10000CA94(v6, v7);
  }
}

void sub_1005D76D0(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3 && sub_1000E2140(a2, 0xCu))
  {
    if (qword_100B50DB8 != -1)
    {
      sub_10084D314();
    }

    v3 = off_100B50DB0;

    sub_1000DAE4C(v3, 3, 3u);
  }
}

uint64_t sub_1005D773C(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v3 = result;
    result = sub_1000E2140(a2, 0xCu);
    if (result)
    {
      if ((sub_1000DB470(v3 + 360) & 1) == 0 && (sub_1003203B8(v3 + 360, 2) || sub_1003203B8(v3 + 360, 1)))
      {
        if (qword_100B50DB8 != -1)
        {
          sub_10084D314();
        }

        v4 = 5;
      }

      else
      {
        result = sub_1000DB470(v3 + 360);
        if (!result)
        {
          return result;
        }

        result = sub_1003203B8(v3 + 360, 0);
        if (!result)
        {
          return result;
        }

        if (qword_100B50DB8 != -1)
        {
          sub_10084D314();
        }

        v4 = 4;
      }

      v5 = off_100B50DB0;

      return sub_1000DAE4C(v5, v4, 3u);
    }
  }

  return result;
}

void sub_1005D7824(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3 && sub_1000E2140(a2, 0xCu))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10084CC6C();
    }

    if (!sub_1000D6C38(off_100B508E8))
    {
      if (qword_100B50DB8 != -1)
      {
        sub_10084D314();
      }

      v3 = off_100B50DB0;

      sub_1000DAE4C(v3, 3, 3u);
    }
  }
}

uint64_t sub_1005D78B8(uint64_t a1)
{
  memset(v14, 0, sizeof(v14));
  sub_1000DA2A8(v14);
  if (sub_1003203E8(a1 + 360))
  {
    v2 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "Could not set up virtual call, voice session is already active.";
      v4 = v2;
      v5 = 2;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
    }
  }

  else if ((sub_1000DB470(a1 + 360) & 1) != 0 || !sub_1003203B8(a1 + 360, 0))
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000DB470(a1 + 360);
      v10 = sub_1003203B8(a1 + 360, 0);
      v11 = "";
      v12 = "a call is present";
      if (!v9)
      {
        v12 = "";
      }

      if (!v10)
      {
        v11 = "a call is being set up";
      }

      *buf = 136446466;
      *&buf[4] = v12;
      *&buf[12] = 2082;
      *&buf[14] = v11;
      v3 = "Could not set up virtual call because: %{public}s, %{public}s";
      v4 = v8;
      v5 = 22;
      goto LABEL_19;
    }
  }

  else
  {
    v6 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting up virtual call", buf, 2u);
    }

    sub_100320260(a1 + 360, 0);
    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    sub_1006FD374(off_100B54078);
    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    sub_1000D895C(off_100B54078);
    sub_1000D9854(a1 + 360, v14);
    *buf = 0;
    *&buf[8] = 0;
    v7 = [[NSUUID alloc] initWithUUIDBytes:buf];
    sub_1000D7348(a1, v14, v7);
  }

  *buf = v14;
  sub_1000D6BD4(buf);
  return 0;
}

void sub_1005D7B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000D6BD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D7B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136446466;
    v11 = v6;
    v12 = 2082;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received set voice command external event for device %{public}s with value %{public}s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_1005D7C3C(os_unfair_lock_s *a1, int *a2)
{
  v88[0] = 0;
  v88[1] = 0;
  sub_100007F88(v88, &a1[190]);
  v4 = a2 + 1;
  v5 = sub_1005D492C(a1, *(a2 + 2));
  if (!v5)
  {
    if (*a2 >= 2)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D378();
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_10020F948(*v4, 2701);
LABEL_28:
      v17 = __p;
      goto LABEL_29;
    }

    v6 = *(a2 + 1);
    LODWORD(__p[0]) = *v6;
    WORD2(__p[0]) = *(v6 + 4);
    if (!LOBYTE(__p[0]))
    {
      v7 = 1;
      while (v7 != 6)
      {
        if (*(__p + v7++))
        {
          if ((v7 - 2) < 5)
          {
            goto LABEL_10;
          }

          break;
        }
      }

      v9 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_10084D3EC(v9);
      }

LABEL_10:
      v19 = 1;
      do
      {
        if (v19 == 6)
        {
          goto LABEL_34;
        }
      }

      while (!*(__p + v19++));
      if ((v19 - 2) >= 5)
      {
LABEL_34:
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084D878();
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        sub_10020F948(*v4, 2701);
        v17 = buf;
LABEL_29:
        sub_10002249C(v17);
        return sub_1000088CC(v88);
      }
    }

    if (qword_100B508F0 != -1)
    {
      sub_10084C82C();
    }

    v10 = *(a2 + 1);
    v11 = *(v10 + 4);
    *buf = *v10;
    *v99 = v11;
    v5 = sub_1000E6554(off_100B508E8, buf, 1);
  }

  v12 = *a2;
  switch(*a2)
  {
    case 0:
      v42 = sub_10057DFAC(a1, v5);
      v43 = qword_100BCE8F8;
      v44 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v44)
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          v46 = __p[0];
          v47 = "denying";
          if ((SBYTE7(v92) & 0x80u) == 0)
          {
            v46 = __p;
          }

          if (v42)
          {
            v47 = "accepting";
          }

          *buf = 136446466;
          *v99 = v46;
          *&v99[8] = 2082;
          *&v99[10] = v47;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Received incoming handsfree connection request for device %{public}s - %{public}s request", buf, 0x16u);
          if (SBYTE7(v92) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v81 = "denying";
          if (v42)
          {
            v81 = "accepting";
          }

          *buf = 136446466;
          *v99 = "NULL";
          *&v99[8] = 2082;
          *&v99[10] = v81;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Received incoming handsfree connection request for device %{public}s - %{public}s request", buf, 0x16u);
        }
      }

      v82 = sub_10000C7D0(v44, v45);
      if ((*(*v82 + 2888))(v82))
      {
        v83 = sub_10054F920(v5);
      }

      else
      {
        v83 = 0;
      }

      LOBYTE(v85[0]) = 0;
      sub_1000216B4(v85);
      v84 = sub_100215EFC(*v4, v42);
      if (((v84 == 0) & v83) == 1 && sub_100308588(v5 + 128) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v5, __p);
        sub_10084D71C();
      }

      sub_100022214(v85);
      if (v84 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D770();
      }

      if (v42)
      {
        sub_10057D9B0(a1, v5, 1);
      }

      v17 = v85;
      goto LABEL_29;
    case 1:
      if (*(a2 + 1))
      {
        v48 = a2[4];
        v49 = qword_100BCE8F8;
        if (v48)
        {
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(v5, buf);
            sub_10084D68C();
          }

          v50 = sub_100320144(&a1[90]);
          v87 = 0;
          sub_1000216B4(&v87);
          v51 = sub_10020F7D0(*v4);
          sub_100022214(&v87);
          if (v48 == 1814 && (v50 & 0x400) != 0 && (v51 & 0x100) != 0)
          {
            v97 = 0;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            *__p = 0u;
            v92 = 0u;
            if (sub_1005423B4(v5, 1, 413, 1814, __p))
            {
              v52 = qword_100BCE8F8;
              v53 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
              if (v53)
              {
                sub_1000E5A58(v5, v85);
                v55 = v86 >= 0 ? v85 : v85[0];
                *v89 = 136315138;
                v90 = v55;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Submitting contextual metric for event 'BT_HANDSFREE_TIMEOUT_SLC_BIND_RED_FLAG' for %s", v89, 0xCu);
                if (v86 < 0)
                {
                  operator delete(v85[0]);
                }
              }

              v56 = sub_10000F034(v53, v54);
              (*(*v56 + 256))(v56, __p, *(v5 + 1380));
            }
          }

          sub_10002249C(&v87);
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v5, __p);
            v74 = (SBYTE7(v92) & 0x80u) == 0 ? __p : __p[0];
            *buf = 136446210;
            *v99 = v74;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Received SLC connection complete event for device %{public}s", buf, 0xCu);
            if (SBYTE7(v92) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_1005D0CA0(a1, v5, *v4);
        }

        if (qword_100B50AA0 != -1)
        {
          sub_10084CC80();
        }

        v75 = sub_1000DD584(off_100B50A98, v48, 20000);
        sub_10057DA84(a1, v5, v75);
      }

      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D6E0();
      }

      return sub_1000088CC(v88);
    case 2:
      v35 = a2[2];
      v36 = qword_100BCE8F8;
      if ((v35 & 0xFFFFFFFE) == 0x39E)
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            sub_1000E5A58(v5, __p);
            if ((SBYTE7(v92) & 0x80u) == 0)
            {
              v37 = __p;
            }

            else
            {
              v37 = __p[0];
            }

            *buf = 136446210;
            *v99 = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Received handsfree disconnection event for device %{public}s", buf, 0xCu);
            if (SBYTE7(v92) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446210;
            *v99 = "NULL";
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Received handsfree disconnection event for device %{public}s", buf, 0xCu);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          sub_10084D5EC();
        }

        else
        {
          sub_10084D640(buf, v35);
        }
      }

      sub_1005D6E3C(a1, *v4, v35);
      return sub_1000088CC(v88);
    case 3:
    case 4:
    case 5:
    case 6:
    case 17:
    case 18:
    case 27:
    case 28:
    case 31:
      sub_1005D9064(a1, a2);
      return sub_1000088CC(v88);
    case 8:
    case 9:
    case 15:
    case 22:
      v13 = sub_1005DB4F8(a1, a2);
      goto LABEL_21;
    case 10:
    case 11:
    case 12:
    case 19:
      v13 = sub_1005DAFD0(a1, a2);
      goto LABEL_21;
    case 13:
      v62 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v92) & 0x80u) == 0)
          {
            v63 = __p;
          }

          else
          {
            v63 = __p[0];
          }

          *buf = 136446210;
          *v99 = v63;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Received voice recognition event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v92) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v99 = "NULL";
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Received voice recognition event from device %{public}s", buf, 0xCu);
        }
      }

      sub_100364158(3);
      v13 = sub_1005DBFDC(a1, *(a2 + 2), *(a2 + 8));
      goto LABEL_21;
    case 14:
      v21 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v92) & 0x80u) == 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          *buf = 136446210;
          *v99 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received unsupported handsfree event (voice tag retrieval) from device %{public}s", buf, 0xCu);
          if (SBYTE7(v92) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v99 = "NULL";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received unsupported handsfree event (voice tag retrieval) from device %{public}s", buf, 0xCu);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      if (sub_1002109E0(*v4, 0))
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084D57C();
        }

        v14 = 0;
      }

      else
      {
        v14 = 255;
      }

      sub_10002249C(__p);
      goto LABEL_22;
    case 16:
      v31 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v92) & 0x80u) == 0)
          {
            v32 = __p;
          }

          else
          {
            v32 = __p[0];
          }

          *buf = 136446210;
          *v99 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received EC/NR disable event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v92) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v99 = "NULL";
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received EC/NR disable event from device %{public}s", buf, 0xCu);
        }
      }

      v13 = sub_1005DBF98(a1, *v4);
      goto LABEL_21;
    case 20:
      v25 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v26 = "enable";
        }

        else
        {
          v26 = "disable";
        }

        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v92) & 0x80u) == 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          *buf = 136446466;
          *v99 = v26;
          *&v99[8] = 2082;
          *&v99[10] = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received call waiting %{public}s event from device %{public}s", buf, 0x16u);
          if (SBYTE7(v92) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          *v99 = v26;
          *&v99[8] = 2082;
          *&v99[10] = "NULL";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received call waiting %{public}s event from device %{public}s", buf, 0x16u);
        }
      }

      v76 = *(a2 + 8);
      v77 = sub_1005D0048(a1, *(a2 + 2));
      if (v77)
      {
        sub_100320E0C(v77 + 400, v76);
        v14 = 255;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_22;
    case 21:
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D504();
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1002165D4(*(a2 + 2), a2[3]);
      goto LABEL_28;
    case 23:
      v23 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v92) & 0x80u) == 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          *buf = 136446210;
          *v99 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received network operator request event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v92) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v99 = "NULL";
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received network operator request event from device %{public}s", buf, 0xCu);
        }
      }

      v13 = sub_1005DBD3C(a1, *v4);
      goto LABEL_21;
    case 24:
      v65 = qword_100BCE8F8;
      v66 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v66)
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v92) & 0x80u) == 0)
          {
            v67 = __p;
          }

          else
          {
            v67 = __p[0];
          }

          *buf = 136446210;
          *v99 = v67;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Received subscriber number request event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v92) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v99 = "NULL";
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Received subscriber number request event from device %{public}s", buf, 0xCu);
        }
      }

      v13 = sub_1005DBAD4(v66, *v4);
      goto LABEL_21;
    case 25:
      v28 = qword_100BCE8F8;
      if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_199;
      }

      if (!v5)
      {
        *buf = 136446210;
        *v99 = "NULL";
        v78 = "Received unsupported handsfree event (response and hold query) from device %{public}s";
        goto LABEL_197;
      }

      sub_1000E5A58(v5, __p);
      if ((SBYTE7(v92) & 0x80u) == 0)
      {
        v64 = __p;
      }

      else
      {
        v64 = __p[0];
      }

      *buf = 136446210;
      *v99 = v64;
      v30 = "Received unsupported handsfree event (response and hold query) from device %{public}s";
      goto LABEL_145;
    case 26:
      v28 = qword_100BCE8F8;
      if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_199;
      }

      if (!v5)
      {
        *buf = 136446210;
        *v99 = "NULL";
        v78 = "Received unsupported handsfree event (response and hold) from device %{public}s";
LABEL_197:
        v79 = v28;
        v80 = 12;
        goto LABEL_198;
      }

      sub_1000E5A58(v5, __p);
      if ((SBYTE7(v92) & 0x80u) == 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      *buf = 136446210;
      *v99 = v29;
      v30 = "Received unsupported handsfree event (response and hold) from device %{public}s";
LABEL_145:
      v40 = v28;
      v41 = 12;
      goto LABEL_146;
    case 29:
      v33 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v92) & 0x80u) == 0)
          {
            v34 = __p;
          }

          else
          {
            v34 = __p[0];
          }

          *buf = 136446210;
          *v99 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received HF indicator event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v92) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v99 = "NULL";
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received HF indicator event from device %{public}s", buf, 0xCu);
        }
      }

      v13 = sub_1005DC224(a1, a2);
LABEL_21:
      v14 = v13;
      goto LABEL_22;
    case 30:
      v57 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v5, __p);
        v58 = (SBYTE7(v92) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446210;
        *v99 = v58;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Received AOS Setup Complete from device %{public}s", buf, 0xCu);
        if (SBYTE7(v92) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v59 = sub_1000E1FE8(v5 + 128);
      v60 = sub_1005D0A74(a1, v5);
      switch(v60)
      {
        case 0x7F:
          v68 = 0;
          v70 = 60;
          v71 = 4;
          v72 = 12;
          v69 = 60;
          goto LABEL_162;
        case 0x81:
          v68 = 3;
          v69 = 360;
          v70 = 240;
          v71 = 6;
          v72 = 24;
LABEL_162:
          sub_1005D060C(a1, 0, *v4, v59, v72, v71, v70, v69, v68);
          return sub_1000088CC(v88);
        case 0x82:
          v61 = sub_1005D0048(a1, *v4);
          *(v61 + 580) = 0;
          *(v61 + 584) = 0;
          sub_1005D060C(a1, 0, *v4, v59, 24, 6, 240, 360, 3u);
          break;
        default:
          v73 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
          {
            sub_10084D470(v60, v73);
          }

          break;
      }

      return sub_1000088CC(v88);
    default:
      v38 = qword_100BCE8F8;
      if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_199;
      }

      if (v5)
      {
        sub_1000E5A58(v5, __p);
        if ((SBYTE7(v92) & 0x80u) == 0)
        {
          v39 = __p;
        }

        else
        {
          v39 = __p[0];
        }

        *buf = 67109378;
        *v99 = v12;
        *&v99[4] = 2082;
        *&v99[6] = v39;
        v30 = "Received unsupported handsfree event (%d) from device %{public}s";
        v40 = v38;
        v41 = 18;
LABEL_146:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v30, buf, v41);
        if (SBYTE7(v92) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 67109378;
        *v99 = v12;
        *&v99[4] = 2082;
        *&v99[6] = "NULL";
        v78 = "Received unsupported handsfree event (%d) from device %{public}s";
        v79 = v38;
        v80 = 18;
LABEL_198:
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, v78, buf, v80);
      }

LABEL_199:
      v14 = 4;
LABEL_22:
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v15 = *v4;
      if (v14 == 255)
      {
        v16 = sub_10020F948(v15, 0);
      }

      else
      {
        v16 = sub_10020F9D8(v15, 2707);
      }

      if (v16 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D808();
      }

      goto LABEL_28;
  }
}

void sub_1005D8F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_10002249C(&a17);
  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

void sub_1005D9064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D0048(a1, *(a2 + 4));
  v5 = sub_100320D9C(&v4[25]);
  v6 = v5;
  v7 = *a2;
  if (*a2 > 16)
  {
    if (v7 <= 26)
    {
      if (v7 == 17)
      {
        v25 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v6)
          {
            sub_1000E5A58(v6, __p);
            if (SHIBYTE(v130[0]) >= 0)
            {
              v26 = __p;
            }

            else
            {
              v26 = __p[0];
            }

            v27 = *(a2 + 8);
            *buf = 136446466;
            *&buf[4] = v26;
            *&buf[12] = 1024;
            *&buf[14] = v27;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received mic gain event from device %{public}s - new gain is %d", buf, 0x12u);
            if (SHIBYTE(v130[0]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v113 = *(a2 + 8);
            *buf = 136446466;
            *&buf[4] = "NULL";
            *&buf[12] = 1024;
            *&buf[14] = v113;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received mic gain event from device %{public}s - new gain is %d", buf, 0x12u);
          }
        }

        sub_100320DDC(&v4[25], *(a2 + 8));
        if (v4)
        {
          LOBYTE(v114) = *(a2 + 8);
          sub_1003A33BC(v4, v114 / 15.0);
        }
      }

      else
      {
        if (v7 != 18)
        {
          goto LABEL_64;
        }

        sub_100320DEC(&v4[25], *(a2 + 8));
        v12 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v6)
          {
            sub_1000E5A58(v6, __p);
            if (SHIBYTE(v130[0]) >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            v15 = *(a2 + 8);
            *buf = 136446466;
            *&buf[4] = v14;
            *&buf[12] = 1024;
            *&buf[14] = v15;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received speaker gain event from device %{public}s - new gain is %d", buf, 0x12u);
            if (SHIBYTE(v130[0]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v86 = *(a2 + 8);
            *buf = 136446466;
            *&buf[4] = "NULL";
            *&buf[12] = 1024;
            *&buf[14] = v86;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received speaker gain event from device %{public}s - new gain is %d", buf, 0x12u);
          }
        }

        if (v4)
        {
          LOBYTE(v13) = *(a2 + 8);
          sub_1003A2788(v4, v13 / 15.0);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v87 = sub_10020F948(*(a2 + 4), 0);
      sub_100022214(__p);
      goto LABEL_212;
    }

    if (v7 == 27)
    {
      if (*(a2 + 8) == 2)
      {
        v5 = sub_100320E7C(&v4[25]);
        if (v5)
        {
          v21 = sub_10000C798(v5, v20);
          v5 = (*(*v21 + 840))(v21, 6);
          if (v5)
          {
            v23 = sub_10000C7D0(v5, v22);
            v5 = (*(*v23 + 288))(v23, v6, 1, 1);
          }
        }
      }

      v24 = *(a2 + 4);

      sub_1005D4298(v5, v24, 0, 0);
    }

    if (v7 != 28)
    {
      if (v7 == 31)
      {
        v8 = sub_100320F4C(&v4[25]);

        sub_1005DD01C(v8, v4, 0, 0, v8);
        return;
      }

LABEL_64:
      v39 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (!v6)
        {
          *buf = 67109378;
          *&buf[4] = v7;
          *&buf[8] = 2082;
          *&buf[10] = "NULL";
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree audio event from stack (%d) for device %{public}s", buf, 0x12u);
          goto LABEL_211;
        }

        sub_1000E5A58(v6, __p);
        if (SHIBYTE(v130[0]) >= 0)
        {
          v40 = __p;
        }

        else
        {
          v40 = __p[0];
        }

        *buf = 67109378;
        *&buf[4] = v7;
        *&buf[8] = 2082;
        *&buf[10] = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree audio event from stack (%d) for device %{public}s", buf, 0x12u);
        if ((SHIBYTE(v130[0]) & 0x80000000) == 0)
        {
          goto LABEL_211;
        }

        goto LABEL_70;
      }

      goto LABEL_211;
    }

    LOBYTE(v123) = 0;
    sub_1000216B4(&v123);
    *buf = *(a2 + 4);
    v28 = *buf;
    v29 = sub_10020F8DC(*buf);
    sub_100022214(&v123);
    v30 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a2 + 8);
      LODWORD(__p[0]) = 67109632;
      HIDWORD(__p[0]) = v31;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v28;
      HIWORD(__p[1]) = 1024;
      LODWORD(v130[0]) = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Got new list of available codecs 0x%x for handle %d, customCodecMask 0x%x", __p, 0x14u);
    }

    __p[0] = buf;
    v32 = sub_1003750BC(a1 + 824, buf, &unk_1008A9BD0, __p);
    sub_100320EB4(v32[5] + 400, (v29 & 4) != 0);
    sub_10069BE3C(v4, (v29 >> 2) & 1);
    __p[0] = buf;
    v33 = sub_1003750BC(a1 + 824, buf, &unk_1008A9BD0, __p);
    sub_100320EE4(v33[5] + 400, (v29 & 8) != 0);
    sub_10069BDAC(v4, (v29 >> 3) & 1);
    __p[0] = buf;
    v34 = sub_1003750BC(a1 + 824, buf, &unk_1008A9BD0, __p);
    sub_100320EF4(v34[5] + 400, (v29 & 0x10) != 0);
    sub_10069BDBC(v4, (v29 >> 4) & 1);
    __p[0] = buf;
    v35 = sub_1003750BC(a1 + 824, buf, &unk_1008A9BD0, __p);
    sub_100320EC4(v35[5] + 400, (v29 & 0x20) != 0);
    sub_10069BDCC(v4, (v29 >> 5) & 1);
    __p[0] = buf;
    v36 = sub_1003750BC(a1 + 824, buf, &unk_1008A9BD0, __p);
    sub_100320ED4(v36[5] + 400, (v29 & 0x40) != 0);
    sub_10069BDDC(v4, (v29 >> 6) & 1);
    __p[0] = buf;
    v37 = sub_1003750BC(a1 + 824, buf, &unk_1008A9BD0, __p);
    sub_100320EA4(v37[5] + 400, v29 & 1);
    sub_10069BE2C(v4, v29 & 1);
    __p[0] = buf;
    v38 = sub_1003750BC(a1 + 824, buf, &unk_1008A9BD0, __p);
    sub_100320E84(v38[5] + 400, (v29 & 2) != 0);
    sub_10069BE0C(v4, (v29 >> 1) & 1);
    v19 = &v123;
LABEL_63:
    sub_10002249C(v19);
    return;
  }

  if (v7 > 4)
  {
    if (v7 == 5)
    {
      if (!sub_100320F8C(&v4[25]))
      {
        v120 = *(a2 + 8);
        v43 = sub_1003205C4(a1 + 360);
        if (v43)
        {
          v44 = sub_1003205C4(a1 + 360);
          v45 = sub_100320400(v44);
        }

        else
        {
          v45 = 0;
        }

        v98 = *(a2 + 4);
        v99 = qword_100BCE8F8;
        if (v4 && !v120 && v6)
        {
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v6, __p);
            v100 = SHIBYTE(v130[0]) >= 0 ? __p : __p[0];
            *buf = 136446210;
            *&buf[4] = v100;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "Received voice audio connected event for device %{public}s", buf, 0xCu);
            if (SHIBYTE(v130[0]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_100320DCC(&v4[25], 5);
          if (v43)
          {
            v101 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__p[0]) = 67109376;
              HIDWORD(__p[0]) = v45;
              LOWORD(__p[1]) = 1024;
              *(&__p[1] + 2) = v98;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "A route change was pending on hfpHandle %d and we got an audio connected event on hfpHandle %d, clearing pending route change", __p, 0xEu);
            }

            sub_10031FFFC(a1 + 360);
          }

          v102 = sub_100320F44(&v4[25], 1);
          v103 = *(v6 + 132);
          v104 = *(v6 + 128);
          v106 = sub_10000C7D0(v102, v105);
          v107 = sub_1000DEB14(v6);
          (*(*v106 + 56))(v106, (v104 | (v103 << 32)) & 0xFFFFFFFFFFFFLL, v107, 1, 1, 1, 1, 0);
          *(v6 + 1384) |= 1u;
          *(v6 + 1424) = 0;
          __p[0] = 0;
          sub_100016250(__p);
          v124.n128_u64[0] = SLODWORD(__p[0]);
          v124.n128_u64[1] = SWORD2(__p[0]);
          sub_10032118C(v4 + 25, &v124);
          v108 = sub_100320D9C(&v4[25]);
          sub_10057E984(a1, v108, 101, 0);
        }

        v109 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
        if (v109)
        {
          if (v6)
          {
            sub_1000E5A58(v6, __p);
            if (SHIBYTE(v130[0]) >= 0)
            {
              v119 = __p;
            }

            else
            {
              v119 = __p[0];
            }

            *buf = 136446466;
            *&buf[4] = v119;
            *&buf[12] = 1024;
            *&buf[14] = v120;
            _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "Received audio connection failure event for device %{public}s with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
            if (SHIBYTE(v130[0]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            sub_10084D950(buf, v120);
          }
        }

        sub_1005DC848(v109, v110);
        sub_100320DCC(&v4[25], 0);
        ++*(v6 + 1424);
        v111 = sub_100320D9C(&v4[25]);
        if (qword_100B50AA0 != -1)
        {
          sub_10084CC80();
        }

        v112 = sub_1000DD584(off_100B50A98, *(a2 + 8), 10000);
        sub_10057E984(a1, v111, 101, v112);
      }

      j__usleep(0x4E20u);
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v18 = sub_100216924(*(a2 + 4));
      sub_100022214(__p);
      if (v18 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D99C();
      }

      v19 = __p;
      goto LABEL_63;
    }

    if (v7 != 6)
    {
      goto LABEL_64;
    }

    sub_100320DA4(&v4[25], 0);
    sub_100320FDC(&v4[25], 0);
    sub_100320FEC(&v4[25], 0);
    if (sub_100320F8C(&v4[25]))
    {
      v11 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Hack for Mercedes finished", __p, 2u);
      }

      sub_100320F84(&v4[25], 0);
      return;
    }

    if (sub_100320F2C(&v4[25]) && sub_100320A98(&v4[25]))
    {
      v41 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          sub_1000E5A58(v6, __p);
          if (SHIBYTE(v130[0]) >= 0)
          {
            v42 = __p;
          }

          else
          {
            v42 = __p[0];
          }

          *buf = 136446210;
          *&buf[4] = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Device %{public}s routed away audio after ending call. Ignore route away and allowing audio layer to close session on its own.", buf, 0xCu);
          if (SHIBYTE(v130[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *&buf[4] = "NULL";
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Device %{public}s routed away audio after ending call. Ignore route away and allowing audio layer to close session on its own.", buf, 0xCu);
        }
      }

      sub_100320F34(&v4[25], 0);
      return;
    }

    sub_100320DCC(&v4[25], 0);
    v46 = qword_100BCE8F8;
    if (v6)
    {
      v47 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v47)
      {
        sub_1000E5A58(v6, __p);
        v49 = SHIBYTE(v130[0]) >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v49;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Received voice disconnection event for device %{public}s", buf, 0xCu);
        if (SHIBYTE(v130[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v50 = *(v6 + 128);
      v51 = *(v6 + 129);
      v52 = *(v6 + 130);
      v53 = *(v6 + 131);
      v54 = *(v6 + 132);
      v121 = *(v6 + 133);
      v55 = sub_10000C7D0(v47, v48);
      v56 = sub_1000DEB14(v6);
      v57 = (*(*v55 + 56))(v55, (v51 << 8) | (v52 << 16) | (v53 << 24) | (v54 << 32) | (v121 << 40) | v50, v56, 1, 0, 1, 1, 0);
      v58 = sub_1005DC8C0(v57, (v50 << 40) | (v51 << 32) | (v52 << 24) | (v53 << 16) | (v54 << 8) | v121, 0);
      v60 = sub_10000C798(v58, v59);
      v61 = (*(*v60 + 352))(v60);
      if (v61)
      {
        v61 = sub_1000E2140(v6, 0);
        if (v61)
        {
          v61 = sub_1000E2140(v6, 1u);
          if (v61)
          {
            v61 = sub_1000E2140(v6, 3u);
            if (v61)
            {
              v63 = qword_100BCE8F8;
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(v6, __p);
                v64 = SHIBYTE(v130[0]) >= 0 ? __p : __p[0];
                *buf = 136446210;
                *&buf[4] = v64;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Notify gizmo to reform triangle for device %{public}s if warranted", buf, 0xCu);
                if (SHIBYTE(v130[0]) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (qword_100B50950 != -1)
              {
                sub_10084C87C();
              }

              v61 = sub_10033E80C(off_100B50948, v6);
            }
          }
        }
      }

      v65 = sub_10000C7D0(v61, v62);
      (*(*v65 + 1272))(v65);
      *v127 = 0;
      v123 = 0;
      v66 = sub_10000E92C();
      sub_100007E30(__p, "HFP");
      sub_100007E30(buf, "DisableWBS");
      (*(*v66 + 88))(v66, __p, buf, v127);
      if (v126 < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v130[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v67 = sub_10000E92C();
      sub_100007E30(__p, "HFP");
      sub_100007E30(buf, "DisableUWBS");
      v68 = (*(*v67 + 88))(v67, __p, buf, &v123);
      if (v126 < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v130[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (!*v127 || !v123)
      {
        v68 = sub_100320E7C(&v4[25]);
        if (v68)
        {
          v70 = sub_10000C7D0(v68, v69);
          v68 = sub_1004100E0(v70, v71);
          if (v68)
          {
            v72 = sub_10000C7D0(v68, v69);
            v68 = (*(*v72 + 288))(v72, v6, 0, 1);
          }
        }
      }

      sub_1005DC848(v68, v69);
      *(v6 + 1384) &= ~1u;
      if (sub_100321184(&v4[25]) == 1919115628)
      {
        __p[0] = 0;
        sub_100016250(__p);
        v73 = SLODWORD(__p[0]);
        sub_1003211A4(v4 + 25, __p);
        if (v73 - __p[0] > 0x3C)
        {
          v4[36].n128_u8[0] = 0;
        }

        else
        {
          v74 = ++v4[36].n128_u8[0];
          if (v74 >= 5)
          {
            v75 = sub_100320D9C(&v4[25]);
            if (qword_100B50AA0 != -1)
            {
              sub_10084CC80();
            }

            v76 = sub_1000DD584(off_100B50A98, *(a2 + 8), 10000);
            sub_10057E984(a1, v75, 412, v76);
          }
        }
      }

      v122 = 0uLL;
      sub_10032118C(v4 + 25, &v122);
      v77 = sub_100320D9C(&v4[25]);
      if (qword_100B50AA0 != -1)
      {
        sub_10084CC80();
      }

      v78 = sub_1000DD584(off_100B50A98, *(a2 + 8), 10000);
      sub_10057E984(a1, v77, 102, v78);
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084D914();
    }

LABEL_247:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DA0C();
    }

    return;
  }

  if (v7 == 3)
  {
    v16 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        sub_1000E5A58(v6, __p);
        if (SHIBYTE(v130[0]) >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received audio connection request event from device %{public}s", buf, 0xCu);
        if (SHIBYTE(v130[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        *&buf[4] = "NULL";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received audio connection request event from device %{public}s", buf, 0xCu);
      }
    }

    sub_100320DCC(&v4[25], 3);
    v137 = 0;
    v136 = 0u;
    memset(v135, 0, sizeof(v135));
    v133 = 0u;
    v134 = 0u;
    v132 = 0u;
    *v130 = 0u;
    v131 = 0u;
    *__p = 0u;
    sub_1000DE474(__p + 1);
    BYTE2(v130[0]) = 0;
    BYTE4(v130[0]) = 0;
    BYTE2(v132) = 0;
    BYTE4(v132) = 0;
    HIDWORD(v135[2]) = 0;
    v131 = 0uLL;
    v130[1] = 0;
    LOBYTE(v132) = 0;
    v133 = 0uLL;
    *(&v132 + 1) = 0;
    LOBYTE(v134) = 0;
    v135[0] = 0;
    v135[1] = 0;
    *(&v134 + 1) = 0;
    *(&v135[1] + 7) = 0;
    LOBYTE(v135[3]) = 1;
    *(&v135[3] + 6) = 0;
    *(&v135[3] + 1) = 0;
    v136 = 0uLL;
    v135[5] = 0;
    LOBYTE(v137) = 0;
    *(&v137 + 2) = 0;
    if (sub_100536A18(v6, __p) && BYTE1(v135[3]) == 1 && sub_100320370(a1 + 360))
    {
      v88 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Hack for Mercedes kicking in... auto-accepting then pulling back audio", buf, 2u);
      }

      sub_100320F84(&v4[25], 1);
      j__usleep(0x2710u);
      buf[0] = 0;
      sub_1000216B4(buf);
      v89 = sub_1002119F0(*(a2 + 4), 1);
      sub_100022214(buf);
LABEL_164:
      sub_10002249C(buf);
      goto LABEL_240;
    }

    if (sub_1000DB468(a1 + 360))
    {
      v90 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Denying audio request as we are in a virtual call", buf, 2u);
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v89 = sub_1002119F0(*(a2 + 4), 0);
      sub_100022214(buf);
      goto LABEL_164;
    }

    v91 = sub_1000DB470(a1 + 360);
    if (v91 & 1) != 0 || (v91 = sub_1003201EC(a1 + 360), (v91) || (v91 = sub_1003201F4(a1 + 360), (v91) || (v91 = sub_1003201DC(a1 + 360), v91))
    {
      v92 = sub_1005D4FD4(v91, v6);
      v93 = qword_100BCE8F8;
      v94 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (!v92)
      {
        if (v94)
        {
          if (v6)
          {
            sub_1000E5A58(v6, buf);
            if (v126 >= 0)
            {
              v97 = buf;
            }

            else
            {
              v97 = *buf;
            }

            *v127 = 136446210;
            v128 = v97;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Call is present, notify CoreAudio to accept audio request from device %{public}s", v127, 0xCu);
            if (v126 < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            *v127 = 136446210;
            v128 = "NULL";
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Call is present, notify CoreAudio to accept audio request from device %{public}s", v127, 0xCu);
          }
        }

        sub_10069BC6C(v4, 1, 0);
        goto LABEL_239;
      }

      if (!v94)
      {
LABEL_238:
        sub_1005DC6A4(a1, v6);
        sub_100320DCC(&v4[25], 0);
LABEL_239:
        v89 = 0;
LABEL_240:
        if (SHIBYTE(v135[1]) < 0)
        {
          operator delete(*(&v134 + 1));
        }

        if (SHIBYTE(v133) < 0)
        {
          operator delete(*(&v132 + 1));
        }

        if (SHIBYTE(v131) < 0)
        {
          operator delete(v130[1]);
        }

        nullsub_21();
        if (!v89)
        {
          return;
        }

        goto LABEL_247;
      }

      if (v6)
      {
        sub_1000E5A58(v6, buf);
        if (v126 >= 0)
        {
          v95 = buf;
        }

        else
        {
          v95 = *buf;
        }

        *v127 = 136446210;
        v128 = v95;
        v96 = "Conditions met for KeepAudioInHeadphones mitigation. Rejecting SCO from device %{public}s";
        goto LABEL_176;
      }

      *v127 = 136446210;
      v128 = "NULL";
      v115 = "Conditions met for KeepAudioInHeadphones mitigation. Rejecting SCO from device %{public}s";
    }

    else
    {
      v93 = qword_100BCE8F8;
      if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_238;
      }

      if (v6)
      {
        sub_1000E5A58(v6, buf);
        if (v126 >= 0)
        {
          v118 = buf;
        }

        else
        {
          v118 = *buf;
        }

        *v127 = 136446210;
        v128 = v118;
        v96 = "We're not in a call, rejecting audio request from device %{public}s";
LABEL_176:
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, v96, v127, 0xCu);
        if (v126 < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_238;
      }

      *v127 = 136446210;
      v128 = "NULL";
      v115 = "We're not in a call, rejecting audio request from device %{public}s";
    }

    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, v115, v127, 0xCu);
    goto LABEL_238;
  }

  if (v7 != 4)
  {
    goto LABEL_64;
  }

  v9 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      sub_1000E5A58(v6, __p);
      if (SHIBYTE(v130[0]) >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received audio codec connection request event from device %{public}s", buf, 0xCu);
      if (SHIBYTE(v130[0]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      *&buf[4] = "NULL";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received audio codec connection request event from device %{public}s", buf, 0xCu);
    }
  }

  sub_100320DCC(&v4[25], 4);
  if (sub_1000DB468(a1 + 360))
  {
    v79 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Denying audio request as we are in a virtual call", __p, 2u);
    }

    goto LABEL_211;
  }

  v80 = sub_1000DB470(a1 + 360);
  if (v80 & 1) != 0 || (v80 = sub_1003201EC(a1 + 360), (v80) || (v80 = sub_1003201F4(a1 + 360), (v80) || (v80 = sub_1003201DC(a1 + 360), v80))
  {
    v81 = sub_1005D4FD4(v80, v6);
    v82 = qword_100BCE8F8;
    v83 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (!v81)
    {
      if (v83)
      {
        if (v6)
        {
          sub_1000E5A58(v6, __p);
          if (SHIBYTE(v130[0]) >= 0)
          {
            v85 = __p;
          }

          else
          {
            v85 = __p[0];
          }

          *buf = 136446210;
          *&buf[4] = v85;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Call is present, notify CoreAudio to accept audio request from device %{public}s", buf, 0xCu);
          if (SHIBYTE(v130[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *&buf[4] = "NULL";
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Call is present, notify CoreAudio to accept audio request from device %{public}s", buf, 0xCu);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v87 = sub_10020F948(*(a2 + 4), 0);
      sub_100022214(__p);
      sub_10069BC6C(v4, 1, v87);
LABEL_212:
      sub_10002249C(__p);
      if (!v87)
      {
        return;
      }

      goto LABEL_247;
    }

    if (v83)
    {
      if (!v6)
      {
        *buf = 136446210;
        *&buf[4] = "NULL";
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Conditions met for KeepAudioInHeadphones mitigation. Rejecting AT+BCC from device %{public}s", buf, 0xCu);
        goto LABEL_211;
      }

      sub_1000E5A58(v6, __p);
      if (SHIBYTE(v130[0]) >= 0)
      {
        v84 = __p;
      }

      else
      {
        v84 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v84;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Conditions met for KeepAudioInHeadphones mitigation. Rejecting AT+BCC from device %{public}s", buf, 0xCu);
      if ((SHIBYTE(v130[0]) & 0x80000000) == 0)
      {
        goto LABEL_211;
      }

LABEL_70:
      operator delete(__p[0]);
    }

LABEL_211:
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v87 = sub_10020F948(*(a2 + 4), 2701);
    sub_100022214(__p);
    goto LABEL_212;
  }

  v116 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      sub_1000E5A58(v6, __p);
      if (SHIBYTE(v130[0]) >= 0)
      {
        v117 = __p;
      }

      else
      {
        v117 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v117;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "We're not in a call, rejecting audio request from device %{public}s", buf, 0xCu);
      if (SHIBYTE(v130[0]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      *&buf[4] = "NULL";
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "We're not in a call, rejecting audio request from device %{public}s", buf, 0xCu);
    }
  }

  sub_1005DC6A4(a1, v6);
  sub_100320DCC(&v4[25], 0);
}

uint64_t sub_1005DAFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D492C(a1, *(a2 + 4));
  v5 = *a2;
  v6 = qword_100BCE8F8;
  v7 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v5 > 11)
  {
    if (v5 == 12)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v12;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received redial event from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received redial event from device %{public}s", buf, 0xCu);
        }
      }

      v14 = sub_1005DD848(a1, *(a2 + 4));
      goto LABEL_55;
    }

    if (v5 == 19)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received DTMF generation event from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received DTMF generation event from device %{public}s", buf, 0xCu);
        }
      }

      v14 = sub_1005DDBAC(v7, 0, *(a2 + 8));
      goto LABEL_55;
    }

    goto LABEL_20;
  }

  if (v5 != 10)
  {
    if (v5 == 11)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received memory dial event from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received memory dial event from device %{public}s", buf, 0xCu);
        }
      }

      v14 = sub_1005DD9A0(a1, *(a2 + 4), *(a2 + 8));
LABEL_55:
      v13 = v14;
      goto LABEL_56;
    }

LABEL_20:
    if (v7)
    {
      if (v4)
      {
        sub_1000E5A58(v4, __p);
        if (v19 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 67109378;
        LODWORD(v21[0]) = v5;
        WORD2(v21[0]) = 2082;
        *(v21 + 6) = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree dialing event from stack (%d) for device %{public}s", buf, 0x12u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 67109378;
        LODWORD(v21[0]) = v5;
        WORD2(v21[0]) = 2082;
        *(v21 + 6) = "NULL";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree dialing event from stack (%d) for device %{public}s", buf, 0x12u);
      }
    }

    return 4;
  }

  if (v7)
  {
    if (v4)
    {
      sub_1000E5A58(v4, __p);
      if (v19 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446210;
      v21[0] = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received dial event from device %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v21[0] = "NULL";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received dial event from device %{public}s", buf, 0xCu);
    }
  }

  v15 = *(a2 + 8);
  if (*v15)
  {
    v16 = *(a2 + 4);
    sub_1000DA180(__p, v15);
    v13 = sub_1005DD6C4(a1, v16, __p);
    sub_1000D8E64(__p);
LABEL_56:
    if (v13 == 255 && (*a2 - 13) >= 0xFFFFFFFD)
    {
      if (qword_100B541D0 != -1)
      {
        sub_10084D328();
      }

      sub_1000D9244(off_100B541C8, 1);
      return 255;
    }

    return v13;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084DA84();
  }

  return 27;
}

void sub_1005DB4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000D8E64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DB4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D492C(a1, *(a2 + 4));
  v5 = *a2;
  v6 = qword_100BCE8F8;
  v7 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v5 > 14)
  {
    if (v5 == 15)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v12;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call hold event (AT+CHLD) from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call hold event (AT+CHLD) from device %{public}s", buf, 0xCu);
        }
      }

      return sub_1005DE5EC(a1, a2);
    }

    if (v5 == 22)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received list calls request (AT+CLCC) from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received list calls request (AT+CLCC) from device %{public}s", buf, 0xCu);
        }
      }

      sub_1005DED04(a1, *(a2 + 4));
      return 255;
    }

LABEL_20:
    if (v7)
    {
      if (v4)
      {
        sub_1000E5A58(v4, __p);
        if (v19 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 67109378;
        LODWORD(v21[0]) = v5;
        WORD2(v21[0]) = 2082;
        *(v21 + 6) = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree call control event from stack (%d) for device %{public}s", buf, 0x12u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 67109378;
        LODWORD(v21[0]) = v5;
        WORD2(v21[0]) = 2082;
        *(v21 + 6) = "NULL";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree call control event from stack (%d) for device %{public}s", buf, 0x12u);
      }
    }

    return 4;
  }

  if (v5 == 8)
  {
    if (v7)
    {
      if (v4)
      {
        sub_1000E5A58(v4, __p);
        if (v19 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136446210;
        v21[0] = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call answer event from device %{public}s", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v21[0] = "NULL";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call answer event from device %{public}s", buf, 0xCu);
      }
    }

    return sub_1005DDD4C(a1, *(a2 + 4));
  }

  if (v5 != 9)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    if (v4)
    {
      sub_1000E5A58(v4, __p);
      if (v19 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136446210;
      v21[0] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call hangup event (AT+CHUP) from device %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v21[0] = "NULL";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call hangup event (AT+CHUP) from device %{public}s", buf, 0xCu);
    }
  }

  if (sub_100320280(a1 + 360))
  {
    v14 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring call hangup event as we are transitioning from Virtual Call", __p, 2u);
    }

    return 255;
  }

  result = sub_1005DE160(a1, *(a2 + 4));
  if (result == 255)
  {
    v15 = sub_1005D0048(a1, *(a2 + 4));
    if (sub_100320A98(v15 + 400))
    {
      v16 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Disconnecting sco early w/o notifying audio layer as device %{public}s is a noisy carkit", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Disconnecting sco early w/o notifying audio layer as device %{public}s is a noisy carkit", buf, 0xCu);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_100216924(*(a2 + 4));
      sub_100022214(__p);
      sub_10002249C(__p);
    }

    return 255;
  }

  return result;
}

void sub_1005DBAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DBAD4(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  sub_1000D6A54();
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCD3C(off_100B54078) || sub_1006FC7C4(&v11))
  {
    goto LABEL_26;
  }

  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (SBYTE7(v12) < 0)
    {
      sub_100008904(__p, v11, *(&v11 + 1));
    }

    else
    {
      *__p = v11;
      v10 = v12;
    }

    v4 = __p;
    if (v10 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315394;
    v16 = v4;
    v17 = 1024;
    v18 = BYTE8(v12);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Subscriber number is %s and type of address is %d", buf, 0x12u);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (SBYTE7(v12) < 0)
  {
    sub_100008904(__p, v11, *(&v11 + 1));
  }

  else
  {
    *__p = v11;
    v10 = v12;
  }

  if (v10 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = sub_100210D50(a2, v5, BYTE8(v12), 4);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100022214(buf);
  if (!v6)
  {
    sub_10002249C(buf);
LABEL_26:
    v7 = 255;
    goto LABEL_27;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084DAC0();
  }

  sub_10002249C(buf);
  v7 = 0;
LABEL_27:
  sub_1000D8E64(&v11);
  return v7;
}

uint64_t sub_1005DBD3C(uint64_t a1, uint64_t a2)
{
  memset(&v15, 0, sizeof(v15));
  v4 = sub_100320184(a1 + 360);
  v5 = v4;
  if (v4 >= 5)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v6 = off_100B01078[v4];
  }

  sub_10032015C((a1 + 360), __p);
  sub_1005D4BFC(__p, 4, &buf);
  v15 = buf;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  size = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
    if (v15.__r_.__value_.__l.__size_ <= 0x10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) >= 0x11)
  {
LABEL_10:
    std::string::erase(&v15, 0x10uLL, size - 16);
  }

LABEL_11:
  v8 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = &v15;
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v15.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v9;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Network operator is %s and mode is %s", &buf, 0x16u);
  }

  buf.__r_.__value_.__s.__data_[0] = 0;
  sub_1000216B4(&buf);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v15.__r_.__value_.__l.__size_)
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    else
    {
      v10 = 0;
    }
  }

  else if (*(&v15.__r_.__value_.__s + 23))
  {
    v10 = &v15;
  }

  else
  {
    v10 = 0;
  }

  if (sub_100210FF4(a2, v5, v10))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DB30();
    }

    v11 = 0;
  }

  else
  {
    v11 = 255;
  }

  sub_10002249C(&buf);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v11;
}

uint64_t sub_1005DBF98(uint64_t a1, uint64_t a2)
{
  result = sub_1005D0048(a1, a2);
  if (result)
  {
    v3 = result;
    sub_100320DFC(result + 400, 1);
    sub_1003A5960(v3, 1);
    return 255;
  }

  return result;
}

BOOL sub_1005DBFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1005D492C(a1, a2);
  sub_1005D0048(a1, a2);
  v7 = qword_100BCE8F8;
  if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v8 = "start";
  }

  else
  {
    v8 = "end";
  }

  if (v6)
  {
    sub_1000E5A58(v6, __p);
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446466;
    v16 = v8;
    v17 = 2082;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received '%{public}s voice command' event for device %{public}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_11:
    if (v3)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  *buf = 136446466;
  v16 = v8;
  v17 = 2082;
  v18 = "NULL";
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received '%{public}s voice command' event for device %{public}s", buf, 0x16u);
  if (v3)
  {
LABEL_12:
    if (sub_1000DB470(a1 + 360))
    {
      goto LABEL_16;
    }
  }

LABEL_15:
  if (!sub_100320370(a1 + 360))
  {
    if (v3)
    {
      v12 = 103;
    }

    else
    {
      v12 = 104;
    }

    sub_10057E984(a1, v6, v12, 0);
  }

LABEL_16:
  v10 = qword_100BCE8F8;
  result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Call in progress, denying voice rec session.", __p, 2u);
    return 0;
  }

  return result;
}

uint64_t sub_1005DC224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D492C(a1, *(a2 + 4));
  v6 = *(a2 + 8);
  v5 = *(a2 + 12);
  v7 = qword_100BCE8F8;
  if (v6 == 2)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received battery level HF indicator with value: %d", &v10, 8u);
    }

    *(sub_1005D0048(a1, *(a2 + 4)) + 628) = v5;
    if (!_os_feature_enabled_impl() || (sub_100540848(v4) & 1) == 0)
    {
      sub_10053F158(v4, v5);
    }

    if (qword_100B508E0 != -1)
    {
      sub_10084DC2C();
    }

    if (sub_100518C44(off_100B508D8, v4))
    {
      return 0;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    if (v6 == 1)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 67109120;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received enhanced safety HF indicator with value: %d", &v10, 8u);
      }

      if (v5)
      {
        v8 = 105;
      }

      else
      {
        v8 = 106;
      }

      sub_10057E984(a1, v4, v8, 0);
    }

    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084DC54();
      return 0;
    }
  }

  return result;
}

void sub_1005DC3F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1005D0048(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = sub_100320D9C(v4 + 400);
    v7 = sub_1005D2A98(v6, v6) == 2 && sub_100321184(v5 + 400) == 1918989668;
    v8 = sub_1000DB468(a1 + 360);
    if (v6 && (v9 = v8, (v10 = sub_1005D2720(a1, v6)) != 0) && ((v11 = v10, sub_100321184(v5 + 400) == 1920364387) || (v7 & v9) != 0))
    {
      v12 = qword_100BCE8F8;
      v13 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        v15 = "NO";
        *buf = 67109634;
        v20 = v11;
        if (v7)
        {
          v15 = "YES";
        }

        v21 = 2082;
        v22 = v15;
        v23 = 1024;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notify HFP Transport Ready in %dMsec Carkit Doing IO = %{public}s, isInVirtualCall:%d", buf, 0x18u);
      }

      v16 = sub_1000D999C(v13, v14);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1005DC610;
      v17[3] = &unk_100AEB940;
      v17[4] = a1;
      v18 = v2;
      sub_10008E008(v16, v11, v17);
    }

    else
    {

      sub_1003A3254(v5);
    }
  }
}

void sub_1005DC610(uint64_t a1)
{
  v1 = sub_1005D0048(*(a1 + 32), *(a1 + 40));
  if (v1)
  {
    v2 = v1;
    if (sub_100320DC4(v1 + 400))
    {
      v3 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notify HFP Transport Ready", v4, 2u);
      }

      sub_1003A3254(v2);
    }
  }
}

void sub_1005DC6A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005D09A8(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = sub_100320DC4(v2 + 400);
    if (v4 == 4)
    {
      v8 = 0;
      sub_1000216B4(&v8);
      v7 = sub_100320D94(v3 + 400);
      sub_10020F948(v7, 2701);
      sub_100022214(&v8);
      v6 = &v8;
      goto LABEL_6;
    }

    if (v4 == 3)
    {
      v9 = 0;
      sub_1000216B4(&v9);
      v5 = sub_100320D94(v3 + 400);
      sub_1002119F0(v5, 0);
      sub_100022214(&v9);
      v6 = &v9;
LABEL_6:
      sub_10002249C(v6);
      return;
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DCC4();
    }
  }
}

void sub_1005DC790(os_unfair_lock_s *a1, uint64_t a2, __int16 a3, int a4)
{
  v8 = sub_1005D09A8(a1, a2);
  v9 = v8;
  if (v8)
  {
    sub_1003A3604(v8, a4);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005E741C;
  v10[3] = &unk_100B00C78;
  v11 = a3;
  v12 = a4;
  v10[4] = a2;
  v10[5] = v9;
  sub_1005E72E4(a1 + 82, v10);
}

void sub_1005DC848(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  if (sub_1004134D8(v2, v3))
  {
    v4 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Free Voice Buf", v5, 2u);
    }

    sub_10025825C();
  }
}

_BYTE *sub_1005DC8C0(uint64_t a1, unint64_t a2, int a3)
{
  v18 = 0;
  v4 = sub_1002D3618(a2);
  v16 = v4;
  v17 = WORD2(v4);
  v15 = 0;
  sub_1000216B4(&v15);
  sub_10023DB58(&v16, &v18);
  v5 = sub_100255698(v18);
  sub_100022214(&v15);
  if (v18 && *(v18 + 278) == 1)
  {
    v6 = *(v18 + 70);
    v7 = qword_100BCE8F8;
    v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      v10 = v6 | 0x3F0000u;
      if (v8)
      {
        *v14 = 0;
        v11 = "Update connection packet types with HDR packets removed";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v11, v14, 2u);
      }
    }

    else
    {
      v10 = v6 & 0xFFC0FFFF;
      if (v8)
      {
        *v14 = 0;
        v11 = "Update connection packet types with HDR packets included";
        goto LABEL_8;
      }
    }

    v12 = sub_10000C7D0(v8, v9);
    (*(*v12 + 1384))(v12, v5, v10, 1);
  }

  return sub_10002249C(&v15);
}

uint64_t sub_1005DCA18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = a4;
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, a1 + 760);
  v8 = sub_1005D492C(a1, a2);
  v9 = sub_1005D09A8(a1, v8);
  v10 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      sub_1000E5A58(v8, __p);
      if (v31 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446466;
      v34 = v11;
      v35 = 1024;
      v36 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting audio from device %{public}s status %d", buf, 0x12u);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446466;
      v34 = "NULL";
      v35 = 1024;
      v36 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting audio from device %{public}s status %d", buf, 0x12u);
    }
  }

  v12 = a1 + 360;
  if (sub_1000DB468(v12))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084DD00();
    }

    sub_1005D70EC(off_100B50AC8);
  }

  if (v9 && sub_100320E3C(v9 + 400))
  {
    v13 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Voice command was active, sco will be closed", __p, 2u);
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_100210908(a2, 0);
    sub_100022214(__p);
    sub_100320E44(v9 + 400, 0);
    sub_10002249C(__p);
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1003203E8(v12);
  if (v15)
  {
    v15 = sub_1003203F0(v12, 0);
  }

  if (v9)
  {
    v17 = sub_10000C7D0(v15, v16);
    if (sub_1004105CC(v17, v18) && sub_100320F94(v9 + 400) && sub_1000DB470(v12) && sub_100321184(v9 + 400) == 1918989668 && sub_100320F4C(v9 + 400) != 127 && sub_100320F4C(v9 + 400) != 256 && sub_100320F4C(v9 + 400) != 128 && sub_100320F4C(v9 + 400) != 129 && sub_100320F4C(v9 + 400) != 130)
    {
      v26 = sub_100320F4C(v9 + 400) == 255 ? 1 : v14;
      if ((v26 & 1) == 0 && (a3 & 1) == 0)
      {
        v27 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Faking SCO disconnection here, but actually letting it stay open since we're answering an incoming call", __p, 2u);
        }

        sub_10069BC6C(v9, 0, v4);
        sub_100318EE4(v9 + 400, 0);
        sub_10032117C(v9 + 400, 0);
        v24 = 0;
        goto LABEL_59;
      }
    }
  }

  v29 = 0;
  sub_1000216B4(&v29);
  v19 = sub_100216924(a2);
  v20 = sub_100022214(&v29);
  v22 = sub_1000D999C(v20, v21);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1005E06A0;
  v28[3] = &unk_100ADF8F8;
  v28[4] = v12;
  sub_10000CA94(v22, v28);
  if (v9)
  {
    sub_100320FDC(v9 + 400, 0);
    sub_100320FEC(v9 + 400, 0);
    if (!v4)
    {
LABEL_46:
      sub_10069BC6C(v9, 0, v4);
      goto LABEL_47;
    }

    if (v4 != 116)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        if (v8)
        {
          sub_1000E5A58(v8, __p);
          sub_10084DD28();
        }

        else
        {
          sub_10084DD7C(buf, v4);
        }
      }

      if ((a3 & 1) == 0)
      {
        if (qword_100B50940 != -1)
        {
          sub_10084C8A4();
        }

        sub_10062F9E8(off_100B50938, v8, v4);
      }

      goto LABEL_46;
    }

    if ((sub_100217070() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_46;
    }

    if (sub_1000E2140(v8, 0xCu))
    {
      v4 = 116;
      goto LABEL_46;
    }
  }

LABEL_47:
  if (v19)
  {
    if (v19 == 1807)
    {
      v23 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Audio was already disconnected", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        if (v8)
        {
          sub_1000E5A58(v8, buf);
          sub_10084DDC8();
        }

        else
        {
          sub_10084DE1C(v37, v19);
        }
      }

      sub_1000618AC(&v29);
      sub_1002165D4(a2, v19);
      sub_100022214(&v29);
    }
  }

  if (v9)
  {
    sub_100318EE4(v9 + 400, 0);
  }

  sub_10002249C(&v29);
  v24 = 1;
LABEL_59:
  sub_1000088CC(v32);
  return v24;
}

void sub_1005DCFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_10002249C(&a17);
  sub_1000088CC(&a22);
  _Unwind_Resume(a1);
}

_BYTE *sub_1005DD01C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v38 = 0;
  sub_1000216B4(&v38);
  v6 = sub_100320D94(a2 + 400);
  v7 = sub_10020F7D0(v6);
  sub_100022214(&v38);
  v8 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100320FD4(a2 + 400);
    *buf = 67109632;
    v40 = a3;
    v41 = 1024;
    v42 = a5;
    v43 = 1024;
    v44 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initiating SCO connection with delay of %d milliseconds, codec %d, lastCodec %d", buf, 0x14u);
  }

  if (sub_100320FD4(a2 + 400) == a5)
  {
    v10 = 0;
    if ((v7 & 0x80) == 0)
    {
LABEL_5:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_100320FD4(a2 + 400) != 0;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  v11 = sub_100320DC4(a2 + 400) != 5 || v10;
LABEL_8:
  v12 = sub_100320D9C(a2 + 400);
  v13 = v12[128];
  v14 = v12[129];
  v15 = v12[130];
  v16 = v12[131];
  v17 = v12[132];
  v18 = v12[133];
  v20 = sub_10000C7D0(v12, v19);
  v21 = sub_1000DEB14(v12);
  v34 = (v15 << 16) | (v14 << 8) | (v16 << 24) | (v17 << 32) | (v18 << 40);
  v22 = (*(*v20 + 56))(v20, v34 | v13, v21, 1, 1, 1, 1, 0);
  v23 = sub_1005D4F60(v22, a5);
  v24 = (v13 << 40) | (v14 << 32) | (v15 << 24) | (v16 << 16) | (v17 << 8);
  sub_1005DC8C0(v23, v24 | v18, v23 ^ 1);
  if (!v11)
  {
    v32 = sub_100320D94(a2 + 400);
    sub_1005D4298(v32, v32, a3, a4);
  }

  sub_1000618AC(&v38);
  v25 = sub_100320D94(a2 + 400);
  v26 = sub_1002110E8(v25, a5);
  sub_100022214(&v38);
  if (v26)
  {
    v27 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      sub_10084DE68();
    }

    v29 = sub_10000C7D0(v27, v28);
    v30 = sub_1000DEB14(v12);
    v31 = (*(*v29 + 56))(v29, v34 | v13, v30, 1, 0, 0, 1, 0);
    sub_1005DC8C0(v31, v24 | v18, 0);
  }

  if (sub_100320FD4(a2 + 400) != a5)
  {
    sub_100320FCC(a2 + 400, a5);
  }

  return sub_10002249C(&v38);
}

_BYTE *sub_1005DD358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  sub_1000216B4(&v12);
  v5 = sub_100211504(a2);
  sub_100022214(&v12);
  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DED8();
    }

    goto LABEL_9;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  v6 = *(v5 + 4);
  LODWORD(v10[0]) = *v5;
  WORD2(v10[0]) = v6;
  v7 = sub_1000E6554(off_100B508E8, v10, 1);
  if (!v7)
  {
LABEL_9:
    sub_1000618AC(&v12);
    sub_10020F948(a2, 2701);
    sub_100022214(&v12);
    return sub_10002249C(&v12);
  }

  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if (sub_1005D09A8(a1, v7))
  {
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_1000C23E0(v7, __p);
    sub_10084C6E8();
  }

  return sub_10002249C(&v12);
}

void sub_1005DD654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD6C4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 760);
  memset(&v12, 0, sizeof(v12));
  sub_1005D4AFC(a1, a2, &v12);
  if (sub_1003203E8(a1 + 360))
  {
    sub_1003203F0(a1 + 360, 0);
    sub_1005E0998(*(a1 + 824), (a1 + 832), sub_1005E0A24);
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v6 = off_100B54078;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v12;
  }

  v7 = sub_1006FD1E0(v6, a3, &__p);
  v8 = v7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else if (v7)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_13;
  }

  sub_1000D6C30(a1 + 360, 1);
  v9 = 255;
LABEL_13:
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  sub_1000088CC(v13);
  return v9;
}

void sub_1005DD800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD848(uint64_t a1, unsigned int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 760);
  memset(&v10, 0, sizeof(v10));
  sub_1005D4AFC(a1, a2, &v10);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v4 = off_100B54078;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  v5 = sub_1006FD298(v4, &__p);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_12:
    v7 = 255;
    goto LABEL_13;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084DF48();
  }

  v7 = 23;
LABEL_13:
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  sub_1000088CC(v11);
  return v7;
}

void sub_1005DD95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v20 - 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD9A0(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_1005D492C(a1, a2);
  v22[0] = 0;
  v22[1] = 0;
  v7 = sub_1006A5878(v22, v6);
  v21 = 0;
  v19 = 0u;
  *v20 = 0u;
  *__p = 0u;
  if (!a3)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DFC0();
    }

    goto LABEL_11;
  }

  v8 = sub_1006A5FF8(v7, (a3 - 1));
  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DF84();
    }

LABEL_11:
    v10 = 21;
    goto LABEL_18;
  }

  sub_10042A6A4(v8, 0, v13);
  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *v13;
  *&v19 = v14;
  HIBYTE(v14) = 0;
  LOBYTE(v13[0]) = 0;
  DWORD2(v19) = v15;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
    *v20 = v16;
    v21 = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    *v20 = v16;
    v21 = v17;
  }

  (*(*v9 + 8))(v9);
  if ((SBYTE7(v19) & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  sub_1000DA180(v13, v11);
  v10 = sub_1005DD6C4(a1, a2, v13);
  sub_1000D8E64(v13);
LABEL_18:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1005DDB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_1000D8E64(va);
  sub_1000DA6C8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DDBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3 - 35) < 0x17 && ((0x7FE081u >> (a3 - 35)))
  {
    v4 = dword_1008AA730[(a3 - 35)];
    v5 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Playing DTMF tone %c", v10, 8u);
    }

    v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/Frameworks/AudioToolbox.framework", kCFURLPOSIXPathStyle, 1u);
    v7 = CFBundleCreate(kCFAllocatorDefault, v6);
    FunctionPointerForName = CFBundleGetFunctionPointerForName(v7, @"AudioServicesPlaySystemSound");
    FunctionPointerForName(v4);
    CFRelease(v7);
    CFRelease(v6);
    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    if (sub_1006FD34C(off_100B54078))
    {
      return 0;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084DFFC();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005DDD4C(uint64_t a1, uint64_t a2)
{
  memset(&v30, 0, sizeof(v30));
  sub_1005D4AFC(a1, a2, &v30);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_1000D72E4(a1 + 360, &v27);
  if (sub_10057DF5C(a1) == 1)
  {
    v4 = sub_1005D0048(a1, a2);
    if (v4)
    {
      sub_100318EE4(v4 + 400, 1);
    }
  }

  sub_100320288(a1 + 360);
  if (!sub_1006EF030(&v27) && !sub_1006EEFFC(&v27))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E06C();
    }

    goto LABEL_28;
  }

  if (!sub_1003203B8(a1 + 360, 1))
  {
    v5 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_100320370(a1 + 360);
      sub_1000DAB24(&v24, buf);
      v16 = v26;
      v17 = *buf;
      v21 = 1;
      sub_1000DAB24(&v21, v22);
      v18 = buf;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if (v23 >= 0)
      {
        v19 = v22;
      }

      else
      {
        v19 = v22[0];
      }

      *v31 = 136446466;
      v32 = v18;
      v33 = 2082;
      v34 = v19;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unexpected answer event as our call setup state is %{public}s, not %{public}s", v31, 0x16u);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (v26 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (v27 == v28)
  {
LABEL_21:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E0A8();
    }

    goto LABEL_28;
  }

  v6 = v27 + 104;
  while (1)
  {
    v7 = *(v6 - 88);
    if (v7 == 5)
    {
      break;
    }

    v8 = v7 == 6 || v6 == v28;
    v6 += 104;
    if (v8)
    {
      if (v7 != 6)
      {
        goto LABEL_21;
      }

      break;
    }
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v9 = off_100B54078;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v30;
  }

  v10 = sub_1006FCED4(v9, &__p);
  v11 = v10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_28;
    }
  }

  else if (v10)
  {
LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  v14 = sub_1005D0048(a1, a2);
  if (sub_10032102C(v14 + 400))
  {
    LOBYTE(v22[0]) = 0;
    v31[0] = 0;
    LOBYTE(v24) = 0;
    v15 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "This kit requires a hack to answer incoming calls.", buf, 2u);
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100211424(v22, v31, &v24);
    sub_10020FE14(a2, 1);
    sub_10020FF34(a2, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  v12 = 255;
LABEL_29:
  *buf = &v27;
  sub_1000D6BD4(buf);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_1005DE0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  __p = &a27;
  sub_1000D6BD4(&__p);
  if (*(v27 - 81) < 0)
  {
    operator delete(*(v27 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005DE160(uint64_t a1, uint64_t a2)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 760);
  v4 = sub_1005D0048(a1, a2);
  v5 = sub_1005D492C(a1, a2);
  if (v4)
  {
    sub_100318EE4(v4 + 400, 0);
  }

  if (sub_1003201DC(a1 + 360) || sub_1003201E4(a1 + 360))
  {
    v6 = sub_1003201FC(a1 + 360);
    v7 = qword_100BCE8F8;
    v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found incoming call to reject", buf, 2u);
      }

      v11 = sub_1005E0AD4(a1, a2);
      goto LABEL_23;
    }

    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We have both an incoming and active call, hanging up the active call.", buf, 2u);
    }
  }

  if (sub_1003201FC(a1 + 360) || sub_100320204(a1 + 360))
  {
    v9 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found active call to hang up", buf, 2u);
    }

    if (v4)
    {
      sub_100320F34(v4 + 400, 1);
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    v10 = sub_1006FCFB0(off_100B54078);
LABEL_17:
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 255;
    }

    goto LABEL_23;
  }

  if (sub_1000DB468(a1 + 360))
  {
    v13 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found ongoing virtual call - Acking device and notifying upper layers.", buf, 2u);
    }

    sub_10057E984(a1, v5, 104, 0);
  }

  v14 = sub_10032020C(a1 + 360);
  v15 = qword_100BCE8F8;
  if (v14)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Hanging up held call.", buf, 2u);
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    v10 = sub_1006FCFD8(off_100B54078);
    goto LABEL_17;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Hangup event was unexpected - dumping state and call list...", buf, 2u);
    v15 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v22 = sub_100320370(a1 + 360);
    v16 = v23;
    sub_1000DAB24(&v22, v23);
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    v17 = "no";
    if (sub_1003201DC(a1 + 360))
    {
      v18 = "yes";
    }

    else
    {
      v18 = "no";
    }

    if (sub_1003201E4(a1 + 360))
    {
      v17 = "yes";
    }

    sub_1000D72E4(a1 + 360, v20);
    sub_1000D6D88(v20, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446978;
    v28 = v16;
    v29 = 2082;
    v30 = v18;
    v31 = 2082;
    v32 = v17;
    v33 = 2082;
    v34 = p_p;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "callSetup: %{public}s, callRinging: %{public}s, callWaiting: %{public}s, calls: %{public}s", buf, 0x2Au);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v26 = v20;
    sub_1000D6BD4(&v26);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

  v11 = 0;
LABEL_23:
  sub_1000088CC(v25);
  return v11;
}

void sub_1005DE598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1000D6BD4(&a25);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DE5EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = sub_1005D492C(a1, *(a2 + 4));
  if (v4 <= 1)
  {
    if (!v4)
    {
      v14 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if (v26 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          *buf = 136446210;
          v28[0] = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received release held calls event from device %{public}s", buf, 0xCu);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v28[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received release held calls event from device %{public}s", buf, 0xCu);
        }
      }

      return sub_1005DF160(a1, *(a2 + 4));
    }

    if (v4 == 1)
    {
      v8 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if (v26 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v28[0] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received release active calls and answer incoming call event from device %{public}s", buf, 0xCu);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v28[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received release active calls and answer incoming call event from device %{public}s", buf, 0xCu);
        }
      }

      return sub_1005DF35C(a1, *(a2 + 4));
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v10 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            sub_1000E5A58(v5, __p);
            if (v26 >= 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            *buf = 136446210;
            v28[0] = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received hold active calls event from device %{public}s", buf, 0xCu);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446210;
            v28[0] = "NULL";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received hold active calls event from device %{public}s", buf, 0xCu);
          }
        }

        return sub_1005DF6D4(a1, *(a2 + 4));
      case 3:
        v12 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            sub_1000E5A58(v5, __p);
            if (v26 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136446210;
            v28[0] = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received add held call event from device %{public}s", buf, 0xCu);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446210;
            v28[0] = "NULL";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received add held call event from device %{public}s", buf, 0xCu);
          }
        }

        return sub_1005DFA10(a1);
      case 4:
        v6 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            sub_1000E5A58(v5, __p);
            if (v26 >= 0)
            {
              v7 = __p;
            }

            else
            {
              v7 = __p[0];
            }

            *buf = 136446210;
            v28[0] = v7;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call transfer event from device %{public}s", buf, 0xCu);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446210;
            v28[0] = "NULL";
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call transfer event from device %{public}s", buf, 0xCu);
          }
        }

        sub_1005DFA98();
        return 4;
    }
  }

  if (v4 < 10)
  {
    goto LABEL_54;
  }

  v16 = 1;
  v17 = v4;
  do
  {
    v18 = v17;
    v17 /= 0xAu;
    v16 *= 10;
  }

  while (v18 > 0x63);
  v19 = v4 - v16 * v17;
  if (v17 != 2)
  {
    if (v17 == 1)
    {
      v20 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if (v26 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          *buf = 67109378;
          LODWORD(v28[0]) = v19;
          WORD2(v28[0]) = 2082;
          *(v28 + 6) = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received release active call event for call index %d from device %{public}s", buf, 0x12u);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 67109378;
          LODWORD(v28[0]) = v19;
          WORD2(v28[0]) = 2082;
          *(v28 + 6) = "NULL";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received release active call event for call index %d from device %{public}s", buf, 0x12u);
        }
      }

      return sub_1005DFAE0(a1, 0, v19);
    }

LABEL_54:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E0E4();
    }

    return 4;
  }

  v23 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      sub_1000E5A58(v5, __p);
      if (v26 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      *buf = 67109378;
      LODWORD(v28[0]) = v19;
      WORD2(v28[0]) = 2082;
      *(v28 + 6) = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received private conference event for call index %d from device %{public}s", buf, 0x12u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 67109378;
      LODWORD(v28[0]) = v19;
      WORD2(v28[0]) = 2082;
      *(v28 + 6) = "NULL";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received private conference event for call index %d from device %{public}s", buf, 0x12u);
    }
  }

  return sub_1005E007C(a1, 0, v19);
}

uint64_t sub_1005DED04(uint64_t a1, uint64_t a2)
{
  memset(v28, 0, sizeof(v28));
  sub_1000DA2A8(v28);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_1000DA2A8(&v25);
  memset(&__p, 0, sizeof(__p));
  v23 = 0;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_1000D6A54();
  v4 = sub_1005D492C(a1, a2);
  if (sub_100320268(a1 + 360) & 1) != 0 || (sub_100320280(a1 + 360))
  {
    goto LABEL_35;
  }

  sub_1000D72E4(a1 + 360, &v20);
  sub_1000D8984(&v25, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_, 0x4EC4EC4EC4EC4EC5 * ((v20.__r_.__value_.__l.__size_ - v20.__r_.__value_.__r.__words[0]) >> 3));
  v19.__r_.__value_.__r.__words[0] = &v20;
  sub_1000D6BD4(&v19);
  v5 = v25;
  if (v25 == v26)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v6 = *(v5 + 16) - 1;
    if (v6 >= 7)
    {
      v13 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_1000DA754(v5, &v20);
        v14 = &v20;
        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = v20.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v30 = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Found invalid call status - skipping call: %s", buf, 0xCu);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_29;
    }

    v7 = dword_1008AA78C[v6];
    sub_1000DA184(v21, v5 + 24);
    v8 = *(v5 + 8);
    v9 = *(v5 + 12);
    v10 = *(v5 + 13);
    sub_1005D4DE0(v5 + 80, v4, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v20;
    v20.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&v20);
    v11 = sub_1006FC7C4(v21);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      sub_1006FC7DC(v21, &v19);
      v12 = (v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v19 : v19.__r_.__value_.__r.__words[0];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      p_p = __p.__r_.__value_.__l.__size_ ? __p.__r_.__value_.__r.__words[0] : 0;
    }

    else
    {
      p_p = &__p;
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        p_p = 0;
      }
    }

    v16 = sub_100210E30(a2, v8, (v9 ^ 1) & 1, v7, 0, v10, v12, v21[24], p_p);
    if (!v11 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    sub_100022214(&v20);
    if (v16)
    {
      break;
    }

    sub_1000D90A8(v28, v5);
    sub_10002249C(&v20);
LABEL_29:
    v5 += 104;
    if (v5 == v26)
    {
      goto LABEL_34;
    }
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E154();
  }

  sub_10002249C(&v20);
LABEL_34:
  sub_1000DA9C4(v18, v28);
  sub_100320228(a1 + 360, v18);
  v20.__r_.__value_.__r.__words[0] = v18;
  sub_1000D6BD4(&v20);
LABEL_35:
  sub_1000D8E64(v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *v21 = &v25;
  sub_1000D6BD4(v21);
  *v21 = v28;
  sub_1000D6BD4(v21);
  return 255;
}

void sub_1005DF098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_1000D6BD4(&a23);
  sub_1000D8E64(&a26);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  a26 = v39 - 176;
  sub_1000D6BD4(&a26);
  a26 = v39 - 152;
  sub_1000D6BD4(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DF160(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  sub_1000DA2A8(v10);
  sub_1000D72E4(a1 + 360, &v8);
  sub_1000D8984(v10, v8, v9, 0x4EC4EC4EC4EC4EC5 * ((v9 - v8) >> 3));
  v12 = &v8;
  sub_1000D6BD4(&v12);
  v4 = sub_100320370(a1 + 360);
  if (sub_1006EF030(v10) || sub_1006EEFFC(v10))
  {
    v5 = sub_1005E0AD4(a1, a2);
    goto LABEL_14;
  }

  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_100320370(a1 + 360);
      sub_1000DAB24(&v7, &v8);
      sub_10084E1C4();
    }

LABEL_7:
    v5 = 0;
    goto LABEL_14;
  }

  if (!sub_1006EEF5C(v10))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E220();
    }

    goto LABEL_7;
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCFD8(off_100B54078))
  {
    v5 = 0;
  }

  else
  {
    v5 = 255;
  }

LABEL_14:
  v11 = v10;
  sub_1000D6BD4(&v11);
  return v5;
}

void sub_1005DF318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_1000D6BD4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DF35C(uint64_t a1, unsigned int a2)
{
  memset(&v21, 0, sizeof(v21));
  sub_1005D4AFC(a1, a2, &v21);
  if (sub_1003201E4(a1 + 360))
  {
    if (!sub_1003203B8(a1 + 360, 1))
    {
      v3 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_100320370(a1 + 360);
        sub_1000DAB24(&v18, v19);
        v9 = v20;
        v10 = v19[0];
        v15 = 1;
        sub_1000DAB24(&v15, v16);
        v11 = v19;
        if (v9 < 0)
        {
          v11 = v10;
        }

        if (v17 >= 0)
        {
          v12 = v16;
        }

        else
        {
          v12 = v16[0];
        }

        *buf = 136446466;
        v23 = v11;
        v24 = 2082;
        v25 = v12;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unexpected release active calls event as our call setup state is %{public}s, not %{public}s", buf, 0x16u);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    v4 = off_100B54078;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100008904(&__dst, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v21;
    }

    if (sub_1006FD000(v4, &__dst))
    {
      v6 = 0;
    }

    else
    {
      v6 = 255;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = __dst.__r_.__value_.__r.__words[0];
LABEL_35:
      operator delete(v7);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (!sub_1003203B8(a1 + 360, 0))
  {
    if (sub_100320204(a1 + 360))
    {
      if (qword_100B54080 != -1)
      {
        sub_10084CD0C();
      }

      if (sub_1006FCFB0(off_100B54078))
      {
        v6 = 0;
      }

      else
      {
        v6 = 255;
      }

      goto LABEL_39;
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E25C();
    }

LABEL_38:
    v6 = 0;
    goto LABEL_39;
  }

  if (!sub_1003201FC(a1 + 360) && !sub_10032020C(a1 + 360))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E298();
    }

    goto LABEL_38;
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v5 = off_100B54078;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v21;
  }

  if (sub_1006FD000(v5, &__p))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_35;
  }

LABEL_39:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1005DF66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005DF6D4(uint64_t a1, unsigned int a2)
{
  memset(&v21, 0, sizeof(v21));
  sub_1005D4AFC(a1, a2, &v21);
  if (sub_1003201E4(a1 + 360))
  {
    if (!sub_1003203B8(a1 + 360, 1))
    {
      v3 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_100320370(a1 + 360);
        sub_1000DAB24(&v18, v19);
        v9 = v20;
        v10 = v19[0];
        v15 = 1;
        sub_1000DAB24(&v15, v16);
        v11 = v19;
        if (v9 < 0)
        {
          v11 = v10;
        }

        if (v17 >= 0)
        {
          v12 = v16;
        }

        else
        {
          v12 = v16[0];
        }

        *buf = 136446466;
        v23 = v11;
        v24 = 2082;
        v25 = v12;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unexpected hold active calls event as our call setup state is %{public}s, not %{public}s", buf, 0x16u);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    v4 = off_100B54078;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100008904(&__dst, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v21;
    }

    if (sub_1006FD0B4(v4, &__dst))
    {
      v6 = 0;
    }

    else
    {
      v6 = 255;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = __dst.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v7);
    }
  }

  else if (sub_1003203B8(a1 + 360, 0))
  {
    if (sub_1003201FC(a1 + 360) || sub_10032020C(a1 + 360))
    {
      if (qword_100B54080 != -1)
      {
        sub_10084CD0C();
      }

      v5 = off_100B54078;
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100008904(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v21;
      }

      if (sub_1006FD0B4(v5, &__p))
      {
        v6 = 0;
      }

      else
      {
        v6 = 255;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_30;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E310();
      }

      v6 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E2D4();
    }

    v6 = 3;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1005DF9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005DFA10(uint64_t a1)
{
  if (sub_10032020C(a1 + 360))
  {
    if (qword_100B54080 != -1)
    {
      sub_10084CCF8();
    }

    if (sub_1006FD168(off_100B54078))
    {
      return 0;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084E34C();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005DFA98()
{
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E388();
  }

  return 4;
}

uint64_t sub_1005DFAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_10032021C(a1 + 360, &v31);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_1000D72E4(a1 + 360, &v28);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FD3C4(off_100B54078))
  {
    if (v3)
    {
      v5 = sub_1006EEF34(&v31, v3);
      v6 = v5;
      if (v32 == v5)
      {
        v16 = sub_1006EEF34(&v28, v3);
        v17 = v16;
        if (v29 != v16)
        {
          v18 = *v16;
          sub_10004DFB4(src, v18);
          uuid_copy(uu, src);

          if (uuid_is_null(uu))
          {
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_1000DA754(v17, src);
              sub_10084E418();
            }
          }
        }
      }

      else
      {
        v7 = *v5;
        sub_10004DFB4(src, v7);
        uuid_copy(uu, src);

        if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_1000DA754(v6, src);
          sub_10084E3C4();
        }
      }
    }

    else
    {
      v9 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *src = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Allowing zero index release active call command - finding index of oldest call", src, 2u);
      }

      v10 = v31;
      if (v31 == v32)
      {
        goto LABEL_30;
      }

      v11 = 0;
      do
      {
        v12 = *(v10 + 8);
        if (!v11 || v12 < v11)
        {
          v13 = *v10;
          sub_10004DFB4(src, v13);
          uuid_copy(uu, src);

          if (uuid_is_null(uu))
          {
            v14 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_1000DA754(v10, src);
              v15 = src;
              if (v35 < 0)
              {
                v15 = *src;
              }

              *buf = 67109378;
              v37 = v12;
              v38 = 2080;
              v39 = v15;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Found invalid call in sent calls at index %d (call: %s)", buf, 0x12u);
              if (v35 < 0)
              {
                operator delete(*src);
              }
            }
          }

          v11 = v12;
        }

        v10 += 104;
      }

      while (v10 != v32);
      if (!v11)
      {
LABEL_30:
        v19 = v28;
        if (v28 != v29)
        {
          v20 = 0;
          do
          {
            v21 = *(v19 + 2);
            if (!v20 || v21 < v20)
            {
              v22 = *v19;
              sub_10004DFB4(src, v22);
              uuid_copy(uu, src);

              if (uuid_is_null(uu))
              {
                v23 = qword_100BCE8F8;
                if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
                {
                  sub_1000DA754(v19, src);
                  v24 = v35 >= 0 ? src : *src;
                  *buf = 67109378;
                  v37 = v21;
                  v38 = 2080;
                  v39 = v24;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Found invalid call in current calls at index %d (call: %s)", buf, 0x12u);
                  if (v35 < 0)
                  {
                    operator delete(*src);
                  }
                }
              }

              v20 = v21;
            }

            v19 += 13;
          }

          while (v19 != v29);
        }
      }
    }

    if (uuid_is_null(uu))
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E46C();
      }

      v8 = 21;
    }

    else
    {
      if (qword_100B54080 != -1)
      {
        sub_10084CD0C();
      }

      v25 = off_100B54078;
      v26 = sub_10004DF60(uu);
      if (sub_1006FD190(v25))
      {
        v8 = 0;
      }

      else
      {
        v8 = 255;
      }
    }
  }

  else
  {
    v8 = 4;
  }

  *uu = &v28;
  sub_1000D6BD4(uu);
  v28 = &v31;
  sub_1000D6BD4(&v28);
  return v8;
}