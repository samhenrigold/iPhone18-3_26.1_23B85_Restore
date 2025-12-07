unint64_t sub_1002C0F2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v7 = 8 * sub_1002C0F90(a1, a2, a3, a5, a6);
  if (v7)
  {
    return v7 * (0x3E8 / a4) / 0x3E8uLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C0F90(int a1, int a2, unsigned int a3, int a4, int a5)
{
  if (a5 == 3)
  {
    v7 = 6;
  }

  else
  {
    v7 = 3;
  }

  if (a5 == 3)
  {
    v8 = 976;
  }

  else
  {
    v8 = 112;
  }

  if (a5 == 2)
  {
    v7 = 2;
    v9 = 60;
  }

  else
  {
    v9 = v8;
  }

  v10 = (a2 << v7) + v9;
  if (a4 == 3)
  {
    v11 = 720;
  }

  else
  {
    v11 = 80;
  }

  if (a4 == 3)
  {
    v12 = 6;
  }

  else
  {
    v12 = 3;
  }

  if (a4 == 3)
  {
    v13 = 976;
  }

  else
  {
    v13 = 112;
  }

  if (a4 == 2)
  {
    v14 = 44;
  }

  else
  {
    v14 = v11;
  }

  if (a4 == 2)
  {
    v12 = 2;
    v15 = 60;
  }

  else
  {
    v15 = v13;
  }

  v16 = v10 + v14 + 300;
  v17 = v10 + (a1 << v12) + v15 + 300;
  if (v17 <= a3)
  {
    if (a1 == 27 && a2 == 27)
    {
      v20 = a3 / (v10 + (a1 << v12) + v15 + 300);
    }

    else
    {
      v20 = a3 / v16;
    }

    return v20 * a2;
  }

  else
  {
    if (!sub_10000C240())
    {
      return 27;
    }

    v22 = a2;
    v18 = 27;
    sub_10000AF54("CE length is smaller than one pair of max Tx/Rx. BytesPerInterval %d: # pkts %d, asym %d us, sym %d us, totalTime %d, remainder %d. Input: tx %d, ce %d", 27, 0, v16, v17, 0, 0, v22, a3);
    v19 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v24 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      return 27;
    }
  }

  return v18;
}

void sub_1002C1134(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_setTxDataLengthExtendedCB %!", a1);
    v2 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v5 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1 && sub_10000C240())
  {
    sub_10000AF54("Set data length extended error status %!", a1);
    v3 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002C1240(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, unsigned __int16 a9, char a10)
{
  if (a1 && sub_1000ABD24(a1))
  {
    if (!a3)
    {
      return sub_100018960(193, sub_1002C1700, v17, v18, v19, v20, v21, v22, a1);
    }

    if (sub_10000C240())
    {
      sub_10000AF54("new connection parameters interval %dms-%dms, timeout=%dms, CE %d-%d latency=%d", (a4 * 1.25), (a5 * 1.25), 10 * a7, a8, a9, a6);
      v23 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v45 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (sub_10000C240())
    {
      LOWORD(v24) = *(a1 + 90);
      *&v25 = v24 * 1.25;
      v26 = *&v25;
      LOWORD(v25) = *(a1 + 92);
      sub_10000AF54("current connection params interval %dms-%dms, timeout=%dms, CE %d-%d latency=%d", v26, (v25 * 1.25), 10 * *(a1 + 84), *(a1 + 88), *(a1 + 86), *(a1 + 82));
      v27 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = sub_10000C0FC();
        *buf = 136446210;
        v45 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (*(a1 + 88) != a8 || *(a1 + 86) != a9 || *(a1 + 92) != a5 || *(a1 + 90) != a4 || *(a1 + 84) != a7 || *(a1 + 82) != a6)
    {
      goto LABEL_20;
    }

    v29 = sub_10000C240();
    if (a10)
    {
      LOWORD(a5) = a4;
      if (v29)
      {
        sub_10000AF54("Duplicate request so set max interval to min interval");
        v30 = sub_10000C050(0x42u);
        LOWORD(a5) = a4;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = sub_10000C0FC();
          *buf = 136446210;
          v45 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          LOWORD(a5) = a4;
        }
      }

LABEL_20:
      if (sub_10000C240())
      {
        sub_10000AF54("Sending parameters to controller");
        v38 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = sub_10000C0FC();
          *buf = 136446210;
          v45 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      result = sub_100018960(192, sub_1002C168C, v32, v33, v34, v35, v36, v37, a1);
      if (!result)
      {
        if (*(a1 + 86) != a9)
        {
          *(a1 + 96) = a9;
        }

        result = 0;
        *(a1 + 98) = a8;
        *(a1 + 100) = a5;
        *(a1 + 102) = a4;
        *(a1 + 154) = 1;
      }

      return result;
    }

    if (v29)
    {
      sub_10000AF54("Ignoring request to update parameters since we are already configured for the same values");
      v42 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = sub_10000C0FC();
        *buf = 136446210;
        v45 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return 4170;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection handle is invalid.");
      v41 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }
}

void sub_1002C168C(uint64_t result)
{
  if (result && sub_10000C240())
  {
    sub_10000AF54("LE Remote Connection Parameter Request Reply HCI command failed with result %!", result);
    v2 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002C1700(uint64_t result)
{
  if (result && sub_10000C240())
  {
    sub_10000AF54("LE Remote Connection Parameter Request Negative Reply HCI command failed with result %!", result);
    v2 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002C1774(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, int a7)
{
  if (a1 && sub_1000ABD24(a1))
  {
    if (*(a1 + 70) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't send a connection update as a peripheral.");
        v14 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 132;
    }

    else if (a2 <= a3 && 10 * a5 >= a3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("new connection parameters interval %dms-%dms, timeout=%dms, CE %d-%d latency=%d", (a2 * 1.25), (a3 * 1.25), 10 * a5, a6, a7, a4);
        v18 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v41 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (sub_10000C240())
      {
        LOWORD(v19) = *(a1 + 90);
        *&v20 = v19 * 1.25;
        v21 = *&v20;
        LOWORD(v20) = *(a1 + 92);
        *&v22 = v20 * 1.25;
        v23 = *&v22;
        LOWORD(v22) = *(a1 + 80);
        sub_10000AF54("current connection params interval %dms-%dms, timeout=%dms, CE %d-%d latency=%d connectionInterval:%dms", v21, v23, 10 * *(a1 + 84), *(a1 + 88), *(a1 + 86), *(a1 + 82), (v22 * 1.25));
        v24 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_10000C0FC();
          *buf = 136446210;
          v41 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (*(a1 + 154) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Controller connection update pending, saving: interval %dms-%dms, timeout=%dms, CE %d-%d", (a2 * 1.25), (a3 * 1.25), 10 * a5, a6, a7);
          v26 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = sub_10000C0FC();
            *buf = 136446210;
            v41 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        result = 0;
        *(a1 + 156) = a2;
        *(a1 + 158) = a3;
        *(a1 + 160) = a4;
        *(a1 + 162) = a5;
        *(a1 + 164) = a6;
        *(a1 + 166) = a7;
      }

      else if (*(a1 + 88) == a6 && *(a1 + 86) == a7 && (*(a1 + 92) == a3 && *(a1 + 90) == a2 || (v28 = *(a1 + 80), v28 >= a2) && v28 <= a3) && *(a1 + 84) == a5 && *(a1 + 82) == a4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Ignoring request to update parameters since we are already configured for the same values, and current CI is within range");
          v29 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = sub_10000C0FC();
            *buf = 136446210;
            v41 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        return 4170;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Sending parameters to controller");
          v38 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = sub_10000C0FC();
            *buf = 136446210;
            v41 = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (*(a1 + 86) != a7)
        {
          *(a1 + 96) = a7;
        }

        *(a1 + 98) = a6;
        *(a1 + 100) = a3;
        *(a1 + 102) = a2;
        result = sub_1000D6178(0xB3u, v31, v32, v33, v34, v35, v36, v37, a1);
        if (!result)
        {
          *(a1 + 154) = 1;
        }
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Max interval should not be lower than min or larger than timeout");
        v17 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 101;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection handle is invalid.");
      v16 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }

  return result;
}

uint64_t sub_1002C1CB4(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a1 && sub_1000ABD24(a1))
  {
    if (*(a1 + 322))
    {
      result = 718;
      if (a2 - 501 >= 0xFFFFFE0C && a3 - 501 >= 0xFFFFFE0C && a2 <= a3 && a4 <= 0x1F3 && a5 <= 0x1F3 && a5 <= a3 && (a6 - 3201) >= 0xFFFFF389)
      {
        result = sub_1000D6178(0xFBu, v12, v13, v14, v15, v16, v17, v18, a1);
        if (!result)
        {
          *(a1 + 154) = 1;
        }
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Remote device does not support connection subrating.");
        v21 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 1330;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection handle is invalid");
      v20 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }

  return result;
}

uint64_t sub_1002C1E5C(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1000ABB80(a2);
  *(v11 + 157) = a3;
  *(v11 + 158) = a4;
  *(v11 + 159) = a5;
  *(v11 + 160) = a6;
  v12 = sub_100022244(a1);

  return sub_1002CF564(v11, v12, a3, a4, a5, a6);
}

void sub_1002C1EE8(uint64_t a1, int a2, int a3, unsigned __int8 *a4, _DWORD *a5, unsigned int a6, unsigned __int16 a7, unsigned __int16 a8, char a9, __int16 a10, unsigned __int8 a11)
{
  v18 = sub_100022244(a1);
  v19 = byte_100B66200;
  if (v18 == 769 && a1 > 0x64)
  {
    v21 = a1;
  }

  else
  {
    v21 = v18;
  }

  if (v21 && (byte_100B66224 & 1) != 0)
  {

    sub_1002BFB50(2);
    return;
  }

  memset(v67, 0, 7);
  if (a3)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (!v22)
  {
    byte_100B66200 = 0;
    byte_100B66224 = 0;
    LOBYTE(qword_100B6620C) = 0;
    if (v21)
    {
      if (v21 <= 711)
      {
        if (v21 != 702)
        {
          if (v21 != 709)
          {
            if (v21 == 711)
            {
              v24 = sub_1000ABB80(a2);
              if (v24)
              {
                v25 = v24;
                v26 = a4;
              }

              else
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("%s connection with %: failed with result %!", "Outgoing", a4 + 1, 711);
                  v57 = sub_10000C050(0x42u);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }

                v26 = a4;
                v25 = 0;
              }

              v55 = 711;
              goto LABEL_84;
            }

            goto LABEL_95;
          }

          goto LABEL_77;
        }

LABEL_81:
        v26 = a4;
        v25 = 0;
        v55 = v21;
LABEL_84:
        sub_1002CE438(v26, v25, v55, a11);
        sub_100256B30();
        return;
      }

      switch(v21)
      {
        case 0x2C8:
          goto LABEL_81;
        case 0x2C9:
LABEL_77:
          if (sub_10000C240())
          {
            sub_10000AF54("LE Connection Complete with result %!. Lets tell the upper layer about this.", a1);
            v56 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          sub_100256C10();
          goto LABEL_81;
        case 0x2FE:
          if (sub_10000C240())
          {
            sub_10000AF54("LE Connection Complete %: failed with result %!", a4 + 1, 766);
            v54 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v26 = a4;
          v25 = 0;
          v55 = 766;
          goto LABEL_84;
      }

LABEL_95:
      if (sub_10000C240())
      {
        sub_10000AF54("Unexpected status %! in LE Connection Complete", a1);
        v59 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_1000C52F4(a1);
      sub_1002C26C8(v60, v61, v62, v63, v64);
      return;
    }
  }

  if (sub_1000ABB80(a2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We already have that LM handle(%x).... This is bad.", a2);
      v58 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_100256B30();
    sub_1000C52F4(133);
    goto LABEL_95;
  }

  if (a5)
  {
    v67[0] = *a5;
    *(v67 + 3) = *(a5 + 3);
    if (sub_10000C240())
    {
      sub_10000AF54("Using controller resolved address device %: to %:", a4 + 1, v67 + 1);
      v27 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = sub_10000C0FC();
        *buf = 136446210;
        v69 = v28;
LABEL_31:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    if (*a4 != 1 || (a4[1] & 0xC0) != 0x40 || (v66 = 0, sub_100006100(a4, v67, &v66)) || v66 != 1)
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_46;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Resolved device %: to %:", a4 + 1, v67 + 1);
      v27 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v34 = sub_10000C0FC();
        *buf = 136446210;
        v69 = v34;
        goto LABEL_31;
      }
    }
  }

  v29 = sub_1000E5EA8(v67);
  if (v29)
  {
    v30 = v29;
    if (sub_10000C240())
    {
      sub_10000AF54("%: is already connected (previous handle=%p lmHandle=%x randomAddress=%:)", v67 + 1, v30, *v30, a4 + 1);
      v31 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v32 = 1;
    v33 = 1;
  }

  else
  {
    v33 = 0;
    v32 = 1;
  }

LABEL_46:
  v35 = sub_100255F4C(a4);
  if (!v35)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not create connection for address %:", a4 + 1);
      v38 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v36 = v35;
  sub_100016250((v35 + 180));
  *v36 = a2;
  *(v36 + 124) = 3;
  v36[40] = a6;
  v36[41] = a7;
  v36[42] = a8;
  *(v36 + 118) = a9;
  *(v36 + 70) = v23;
  *(v36 + 13) = 0x148001B0148001BLL;
  *(v36 + 33) = 0;
  *(v36 + 18) = 0x100000001;
  *(v36 + 323) = 0;
  if (v19)
  {
    v37 = word_100B66220;
    v36[43] = word_100B66220;
    if (!v37)
    {
      goto LABEL_54;
    }
  }

  else
  {
    LOWORD(v37) = v36[43];
    if (!v37)
    {
LABEL_54:
      LOWORD(v37) = 12;
      v36[43] = 12;
    }
  }

  v39 = 8 * sub_1002C0F90(27, 27, (625 * v37), 1, 1);
  if (v39)
  {
    v39 = v39 * (0x3E8u / (a6 * 1.25)) / 0x3E8;
  }

  *(v36 + 61) = v39;
  *(v36 + 62) = sub_1002C0F90(v36[54], v36[52], (625 * v36[43]), *(v36 + 36), *(v36 + 37));
  *(v36 + 24) = 0;
  *(v36 + 5) = 0;
  if (*(v36 + 70))
  {
    sub_1000841FC(v36 + 63);
    if (v33)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *(v36 + 63) = dword_100B66203;
    *(v36 + 67) = word_100B66207;
    *(v36 + 69) = byte_100B66209;
    if (v33)
    {
LABEL_59:
      if (sub_10000C240())
      {
        sub_10000AF54("Disconnecting duplicate lmHandle=0x%x", *v36);
        v47 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = sub_10000C0FC();
          *buf = 136446210;
          v69 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      *(v36 + 124) = 0;
      v49 = sub_1000D6178(5u, v40, v41, v42, v43, v44, v45, v46, v36);
      v50 = sub_1000D6410(v36, v49);
      if (v50)
      {
        v51 = v50;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not disconnect LE device %!", v51, 19);
          v52 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        *(v36 + 124) = 7;
      }

      v26 = (v36 + 24);
      v25 = v36;
      v55 = 157;
      goto LABEL_84;
    }
  }

  *(v36 + 55) = v32;
  if (v32)
  {
    *(v36 + 14) = v67[0];
    v36[30] = v67[1];
    *(v36 + 62) = BYTE2(v67[1]);
  }

  sub_1002CE438(v36 + 48, v36, 0, a11);
  *(v36 + 124) = 0;
  sub_100256830(v36, v53);
}

void sub_1002C26C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000ABB80(a2);
  if (v9)
  {
    v10 = v9;
    *(v9 + 40) = a3;
    *(v9 + 41) = a4;
    *(v9 + 42) = a5;
    *(v9 + 154) = 0;
    v11 = sub_100022244(a1);
    if (v11)
    {
      v12 = v11;
      if (sub_10000C240())
      {
        sub_10000AF54("Connection Update Completed with error %!", v12);
        v13 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      if ((v12 - 708) > 0x36 || ((1 << (v12 + 60)) & 0x40000004004801) == 0)
      {
        sub_1000D660C();
      }
    }

    else
    {
      v15 = *(v10 + 96);
      if (v15)
      {
        *(v10 + 86) = v15;
        *(v10 + 96) = 0;
        v16 = *(v10 + 104);
        if (v16 <= 0x1B && (v17 = *(v10 + 108), v17 < 0x1C))
        {
          v21 = *(v10 + 80);
          v22 = 8 * sub_1002C0F90(v17, v16, (625 * v15), *(v10 + 144), *(v10 + 148));
          if (v22)
          {
            v22 = v22 * (0x3E8u / (v21 * 1.25)) / 0x3E8;
          }

          *(v10 + 244) = v22;
          *(v10 + 248) = sub_1002C0F90(*(v10 + 108), *(v10 + 104), (625 * *(v10 + 86)), *(v10 + 144), *(v10 + 148));
        }

        else
        {
          v18 = sub_1002BFF20(v10, 2u);
          if (v18)
          {
            v19 = v18;
            if (v18 != 4000)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Connection Update Completed with error %!", v19);
                v20 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F604();
                }
              }
            }
          }
        }
      }

      if (*(v10 + 98))
      {
        *(v10 + 88) = *(v10 + 98);
        *(v10 + 98) = 0;
      }

      if (*(v10 + 100))
      {
        *(v10 + 92) = *(v10 + 100);
        *(v10 + 100) = 0;
      }

      if (*(v10 + 102))
      {
        *(v10 + 90) = *(v10 + 102);
        *(v10 + 102) = 0;
      }
    }

    if (*(v10 + 162))
    {
      sub_1002C1774(v10, *(v10 + 156), *(v10 + 158), *(v10 + 160), *(v10 + 162), *(v10 + 164), *(v10 + 166));
      if (a1 && sub_10000C240())
      {
        sub_10000AF54("Error executing pending connection update with %!", a1);
        v23 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      *(v10 + 164) = 0;
      *(v10 + 156) = 0;
    }

    sub_1002CF4B0(v10, a3, a4, a5, *(v10 + 88), *(v10 + 86), *(v10 + 70));
    sub_100256830(v10, v24);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We are not tracking this LM handle...");
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002C29BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (!sub_1000ABD24(a2))
    {
      sub_1000D660C();
    }

    v9 = *(a2 + 236);
    sub_1001C4EF4(*a2 & 0xFFF);
    sub_1000E0BF8(a2, a3);
    sub_1002CF290(a2, a3, a4, a5);
    if (v9 && !*(a2 + 236))
    {
      sub_1000E12C4(a2);
    }

    sub_1001B8B1C(a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_DisconnectionComplete no connection handle: reason %! ignoring", a3);
    v10 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002C2AC8(uint64_t a1, int a2, void *a3)
{
  v6 = sub_1000ABB80(a2);
  v7 = v6;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Remote used features error: %!", a1);
      v8 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

LABEL_9:
    sub_1002CF894(a1, v7, (v7 + 172));
    return;
  }

  if (a3)
  {
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1000D660C();
    if (v7)
    {
LABEL_7:
      *(v7 + 172) = *a3;
      if (sub_100084230() == 11)
      {
        *(v7 + 172) &= ~0x20u;
      }

      goto LABEL_9;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invaid LM handle %x from LE_RemoteUsedFeatures", a2);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002C2BD8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1000ABB80(a2);
  v9 = v8;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("All remote used features error: %!", a1);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    goto LABEL_8;
  }

  if (a5)
  {
    if (v8)
    {
LABEL_7:
      *(v9 + 172) = *a5;
LABEL_8:
      sub_1002CF894(a1, v9, (v9 + 172));
      return;
    }
  }

  else
  {
    sub_1000D660C();
    if (v9)
    {
      goto LABEL_7;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invaid LM handle %x from LE_AllRemoteUsedFeatures", a2);
    v11 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002C2CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !sub_1000ABD24(a1))
  {
    return 149;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Setting Connection Data Length to Tx %d bytes and %d us", a2, a3);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v13 = sub_100018960(194, sub_1002C2E2C, v6, v7, v8, v9, v10, v11, a1);
  if (v13)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Set Data Length failed with status %!", v13, a2, a3);
      v14 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v13;
}

void sub_1002C2E2C(uint64_t result, unsigned __int16 *a2)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write data length complete with %!, triggering changed", result);
      v4 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1002C3008(*a2, a2[52], a2[53], a2[54], a2[55]);
  }
}

void sub_1002C2EBC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 && (*(a1 + 153) & 1) == 0)
  {
    v6 = 4;
LABEL_13:
    *(a1 + 132) = v6;
    return;
  }

  if (!a2)
  {
    return;
  }

  if (*(a1 + 136) != 1)
  {
    v6 = 3;
    goto LABEL_13;
  }

  if (*(a1 + 125) == 1 && *(a1 + 356) == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("FastLEConnection:pendingAuth and fastLEConnectEnabled, waiting for encryption started");
      v5 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136446210;
        v8 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", &v7, 0xCu);
      }
    }

    v6 = 5;
    goto LABEL_13;
  }

  sub_1002CE094(a1, a4);
}

void sub_1002C3008(int a1, int a2, int a3, unsigned int a4, int a5)
{
  v10 = sub_1000ABB80(a1);
  if (v10)
  {
    v11 = v10;
    if (sub_1000ABD24(v10))
    {
      v12 = *(v11 + 112);
      if (v12 <= a4)
      {
        LOWORD(v12) = a4;
      }

      *(v11 + 112) = v12;
      if (sub_10000C240())
      {
        if (*(v11 + 70))
        {
          v13 = "peripheral";
        }

        else
        {
          v13 = "central";
        }

        v14 = *(v11 + 104);
        v15 = *(v11 + 108);
        v16 = sub_1002BE488(*(v11 + 132));
        v17 = *(v11 + 136);
        v18 = "unknown";
        if (v17 == 1)
        {
          v18 = "complete";
        }

        if (v17)
        {
          v19 = v18;
        }

        else
        {
          v19 = "idle";
        }

        sub_10000AF54("Data Length Changed for %s lmhandle %x: Tx [%d -> %d, %d], Rx [%d -> %d, %d], ready-state: %s, mfgrName 0x%x, probe: %s, phy-ready %d", v13, a1, v14, a2, a3, v15, a4, a5, v16, *(v11 + 20), v19, *(v11 + 153));
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v27 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (*(v11 + 104) != a2 || *(v11 + 106) != a3 || *(v11 + 108) != a4 || *(v11 + 110) != a5)
      {
        *(v11 + 104) = a2;
        *(v11 + 106) = a3;
        *(v11 + 108) = a4;
        *(v11 + 110) = a5;
        v21 = sub_1002BFF20(v11, 3u);
        v22 = v21;
        if (!v21)
        {
LABEL_31:
          if (*(v11 + 132) == 3 && *(v11 + 136) == 1)
          {
            if (sub_10023DE54() && (*(v11 + 173) & 1) != 0 && (sub_10024E40C() & 1) == 0)
            {
              v25 = *(v11 + 152) ^ 1;
            }

            else
            {
              v25 = 0;
            }

            if (v25 | *(v11 + 356))
            {
              sub_1002C2EBC(v11, 1, 1, v22);
            }

            else
            {
              sub_1002CE094(v11, v22);
            }
          }

          return;
        }

        if (v21 != 4000)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Scaling Data Length completed with error %!", v22);
            v24 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          goto LABEL_31;
        }
      }

      if (!*(v11 + 136))
      {
        sub_1002C32FC(v11);
      }

      v22 = 0;
      goto LABEL_31;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid LM handle %x", a1);
    v23 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002C32FC(uint64_t a1)
{
  if (sub_10000C240())
  {
    v2 = *(a1 + 136);
    v3 = "unknown";
    if (v2 == 1)
    {
      v3 = "complete";
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = "idle";
    }

    sub_10000AF54("Updating Probe-State: %s -> %s", v4, "complete");
    v5 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v7 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *(a1 + 136) = 1;
}

void sub_1002C33F4(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if ((a3 - 1) >= 3)
  {
    sub_1000D660C();
  }

  if ((a4 - 1) >= 3)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    *(a2 + 153) = 1;
    if (a1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Phy update returned status %! and lmhandle 0x%4x", a1, *a2);
        v8 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      if (a1 == 42 || a1 == 35)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Transaction collision occured, default to 1M PHY and continue as success");
          v9 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v22 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        a1 = 0;
      }

      a4 = 1;
      v5 = 1;
    }

    if ((a2[86] & 0x20) != 0)
    {
      v10 = sub_10023DE44();
    }

    else
    {
      v10 = 0;
    }

    *(a2 + 36) = a4;
    *(a2 + 37) = v5;
    if (sub_10000C240())
    {
      v12 = *a2;
      v13 = sub_1002BE488(*(a2 + 33));
      sub_10000AF54("PhyUpdateComplete: status %!, lmhandle 0x%4x, txPhy 0x%4x, rxPhy 0x%4x, readystate %s", a1, v12, v5, a4, v13);
      v14 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = sub_10000C0FC();
        *buf = 136446210;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (*(a2 + 33) == 4)
    {
      v16 = sub_1002BFF20(a2, 4u);
      if (v16 && (v17 = v16, v16 != 4000) && sub_10000C240() && (sub_10000AF54("PhyUpdateComplete LE scaling completed with error %!", v17), v18 = sub_10000C050(0x42u), os_log_type_enabled(v18, OS_LOG_TYPE_ERROR)))
      {
        sub_10080F604();
        if (v10)
        {
          goto LABEL_32;
        }
      }

      else if (v10)
      {
LABEL_32:
        sub_1002C2EBC(a2, 1, 1, a1);
        return;
      }

      if (*(a2 + 125) == 1 && *(a2 + 356) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("FastLEConnection:pendingAuth and fastLEConnectEnabled, waiting for encryption started");
          v19 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_10000C0FC();
            *buf = 136446210;
            v22 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *(a2 + 33) = 5;
      }

      else
      {
        sub_1002CE094(a2, a1);
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Connection handle invalid for phy update %p, status %!", 0, a1);
    v11 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

__n128 sub_1002C3770(uint64_t a1, _OWORD *a2)
{
  v2 = a2[3];
  v5[2] = a2[2];
  v5[3] = v2;
  v5[4] = a2[4];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  sub_1002D38AC(a1, v5);
  return result;
}

void sub_1002C37D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  if (a4)
  {
    v10 = a4;
    v11 = a5;
    do
    {
      *(v14 + 3) = 0;
      v14[0] = 0;
      v12 = *v11++;
      v13 = sub_10009A66C(v12);
      v14[0] = v13;
      BYTE2(v14[1]) = BYTE6(v13);
      LOWORD(v14[1]) = WORD2(v13);
      sub_1002E9984(v14);
      --v10;
    }

    while (v10);
    if ((byte_100B66200 & 1) == 0)
    {
      byte_100B66200 = 1;
    }
  }

  sub_1002D3D60(a1, a2, a3, a4, a5);
}

void sub_1002C3894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_ReadRemoteVersionInformationComplete with error %!", a1);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!sub_1000ABD24(a2))
    {
      sub_1000D660C();
    }

    *(a2 + 24) = a3;
    *(a2 + 20) = a4;
    *(a2 + 22) = a5;
  }

  sub_1002CF610(a1, a2, a3, a4, a5);
}

BOOL sub_1002C3958(unsigned __int16 *a1, int a2, int a3, int a4)
{
  result = sub_1000ABD24(a1);
  if (result)
  {
    return a1[40] == a2 && a1[44] == a3 && a1[43] == a4;
  }

  return result;
}

uint64_t sub_1002C39C0(_WORD *a1, _WORD *a2, _WORD *a3, _WORD *a4, _WORD *a5, _WORD *a6, _WORD *a7, _WORD *a8)
{
  if (!sub_1000ABD24(a1))
  {
    return 101;
  }

  if (a2)
  {
    *a2 = a1[40];
  }

  if (a3)
  {
    *a3 = a1[41];
  }

  if (a4)
  {
    *a4 = a1[44];
  }

  if (a5)
  {
    *a5 = a1[43];
  }

  if (a6)
  {
    *a6 = a1[42];
  }

  if (a7)
  {
    *a7 = a1[45];
  }

  result = 0;
  if (a8)
  {
    *a8 = a1[46];
  }

  return result;
}

uint64_t sub_1002C3A7C()
{
  v0 = word_100B53E1A;
  result = word_100B53E1A;
  if (word_100B53E1A != word_100B53E1E)
  {
    sub_1000D660C();
    result = word_100B53E1A;
    v0 = word_100B53E1E;
  }

  if (result)
  {
    v2 = v0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    sub_1000D660C();
    return word_100B53E1A;
  }

  return result;
}

uint64_t sub_1002C3AD4(int a1, int a2, unsigned int a3, int a4)
{
  if (sub_100084230() == 11)
  {
    word_100B53E1A = 27;
    word_100B53E1C = 328;
    word_100B53E1E = 27;
    word_100B53E20 = 328;
  }

  if (sub_10000C240())
  {
    v8 = (byte_100BCDFFC & 0x20) != 0 ? "supported" : "not supported";
    sub_10000AF54("Local EDL %s; TxOctets %d, TxTime %d, RxOctets %d, RxTime %d\n", v8, a1, a2, a3, a4);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v22 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1 != a3)
  {
    sub_1000D660C();
  }

  if ((a1 - 27) >= 0xE1)
  {
    sub_1000D660C();
  }

  if (a2 != a4)
  {
    sub_1000D660C();
  }

  word_100B53E1A = a1;
  word_100B53E1C = a2;
  word_100B53E1E = a3;
  word_100B53E20 = a4;
  if ((byte_100BCDFFC & 0x20) == 0)
  {
    return 0;
  }

  v11 = sub_1002C0CE0(a3, 0, 7500, 0x1Eu, 0, 1, 1);
  word_100B53E22 = v11;
  v20 = (8 * v11 + 112) & 0xFFF8;
  v10 = sub_100018960(196, sub_1002C3D0C, v12, v13, v14, v15, v16, v17, v11);
  if (v10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write Suggested default failed with %!", v10, v20);
      v18 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v10;
}

void sub_1002C3D0C(uint64_t result)
{
  if (result && sub_10000C240())
  {
    sub_10000AF54("Write Suggested default failed with %!", result);
    v2 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002C3D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || !sub_1000ABD24(a1))
  {
    return 149;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Set PHY allPhys=%x txPhys=%x rxPhys=%x phyOptions=%x", a2, a3, a4, a5);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v22 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v18 = sub_1000D6178(0xC8u, v10, v11, v12, v13, v14, v15, v16, a1);
  if (v18)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Set PHY failed with status %!", v18, a2, a3, a4, a5);
      v19 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v18;
}

void sub_1002C3F04()
{
  sub_100304AF8("LE_Connection:\n");
  sub_100304AF8("lConnectionInProgress:%x lCancelConnectionInProgress:%x lRestartConnectionInProgress:%x\n", byte_100B66200, byte_100B66201, byte_100B66224);
  if (dword_100B66203)
  {
    v0 = "Random";
  }

  else
  {
    v0 = "Public";
  }

  sub_100304AF8("gLocalConnectableAddress.Type:%s gLocalConnectableAddress.address:%:", v0, &dword_100B66203 + 1);
  sub_100304AF8("ConnectionInProgressStruct: directed: address:%: scanInterval:%x scanWin:%x connectionInt:%x ConnectionLatency:%x supervisionTO:%x CELen:%x initPHYs:%x advHandle:%x subevent:%x\n", qword_100B6620C, &qword_100B6620C + 4, WORD1(qword_100B66214), WORD2(qword_100B66214), HIWORD(qword_100B66214), word_100B6621C, word_100B6621E, word_100B66220, byte_100B66222, BYTE1(qword_100B6620C), BYTE2(qword_100B6620C));
  sub_100304AF8("Local EDL support: maxTxOctets %d, maxTxTime %d, maxRxOctets %d, maxRxTime %d\n\n", word_100B53E1A, word_100B53E1C, word_100B53E1E, word_100B53E20);
  sub_100304AF8("gEnableExtendedCreateConnectionCommand:%d", byte_100B6620A);
  sub_100304AF8("gEnableExtendedCreateConnectionCommandV2:%d", byte_100B66202);
}

void sub_1002C4048(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    sub_100304AF8("LE_SetCappedLength for 1M: %d -> %d", byte_100B53E18, result);
    byte_100B53E18 = v3;
  }

  if (a2)
  {
    sub_100304AF8("LE_SetCappedLength for 2M: %d -> %d", byte_100B53E19, a2);
    byte_100B53E19 = a2;
  }
}

uint64_t sub_1002C40BC(char a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 0;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    v8 = &unk_100B66230 + 32 * result;
    if (!v8[2])
    {
      break;
    }

    v9 = *(v8 + 1);
    if (!v9)
    {
      break;
    }

    if (v9 == a2)
    {
      return result;
    }

    result = 1;
    if ((v7 & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8[2] = 1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v8[1] = a1;
  *(v8 + 6) = a4;
  return result;
}

uint64_t sub_1002C411C(uint64_t result)
{
  if (result == 1)
  {
    byte_100B66252 = 0;
  }

  return result;
}

uint64_t sub_1002C4130(uint64_t result, __int16 a2, char a3, char a4, char a5, char a6, char a7)
{
  v13 = result;
  v14 = 0;
  v20 = 0;
  v15 = 1;
  do
  {
    v16 = v15;
    v17 = &unk_100B66230 + 32 * v14;
    if (v17[2])
    {
      v18 = *(v17 + 1);
      if (v18)
      {
        if (*(v17 + 2))
        {
          v19 = *(v17 + 2);
        }

        else
        {
          v19 = &v20;
        }

        *(v19 + 3) = a3;
        *v19 = a2;
        *(v19 + 2) = v13;
        *(v19 + 4) = a4;
        *(v19 + 5) = a5;
        *(v19 + 6) = a6;
        *(v19 + 7) = a7;
        result = v18(v13);
        if (v17[1])
        {
          v17[2] = 0;
        }
      }
    }

    v15 = 0;
    v14 = 1;
  }

  while ((v16 & 1) != 0);
  return result;
}

void sub_1002C4208(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, __int16 a12, __int16 a13, unsigned __int8 a14, unsigned __int16 a15, unsigned __int16 a16, unsigned __int16 a17, unsigned __int16 a18, unsigned __int16 a19, unsigned __int8 a20, char a21)
{
  v29 = sub_1000ABB80(a1);
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("CS read remote supported capabilities error: %!", a2);
      v30 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        sub_10080F604();
      }
    }
  }

  else
  {
    v31 = v29;
    if (v29 && sub_1000ABD24(v29))
    {
      *(v31 + 326) = a3;
      *(v31 + 164) = a4;
      *(v31 + 330) = a5;
      *(v31 + 331) = a6;
      *(v31 + 332) = a7;
      *(v31 + 333) = a8;
      *(v31 + 334) = a9;
      *(v31 + 335) = a10;
      *(v31 + 336) = a11;
      *(v31 + 169) = a12;
      *(v31 + 170) = a13;
      *(v31 + 342) = a14;
      *(v31 + 172) = a15;
      *(v31 + 173) = a16;
      *(v31 + 174) = a17;
      *(v31 + 175) = a18;
      *(v31 + 176) = a19;
      *(v31 + 354) = a20;
      *(v31 + 355) = a21;
      sub_100304AF8("Channel Sounding numConfigSupported: %d maxProceduresSupported: %d numAntennasSupported: %d rolesSupported: %d modes_Supported: %d rttCapability: %d rttCoarseN: %d rttSoundingN: %d rttRandomPayloadN: %d csSyncPHYsSupported: %d subfeaturesSupported: %d tIP1TimesSupported: %d tIP2TimesSupported: %d tFcsTimesSupported: %d tPMTimesSupported: %d tSWTimesSupported: %d ", a3, a4, a5, a6, a7, a8, a9, a10, a11, a14, a15, a16, a17, a18, a19, a20);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invaid LM handle %x from CS read remote supported capabilities", a1);
      v32 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }
    }
  }
}

void sub_1002C43C0(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (sub_10000C240())
  {
    sub_10000AF54("_connectionCancelDefer lConnectionInProgress %d, lRestartConnectionInProgress %d, lCancelConnectionInProgress %d lCancelConnectionDeferInProgress %d - %!", byte_100B66200, byte_100B66224, byte_100B66201, byte_100B66228, v1);
    v2 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v4 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1002BFB50(v1);
}

void sub_1002C44B8(uint64_t *a1, unsigned __int8 a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 140, "void LE_HCIEventHandler_ConnectionComplete(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
    v2 = 0;
    goto LABEL_14;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v2 = v4 - v5;
  v33 = 0;
  v32 = 0;
  if (v4 - v5 != 18)
  {
LABEL_14:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection complete event packet size : %d, expecting %d", v2, 18);
      v15 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 158, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v4 <= v5)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the status of the LE connection complete event");
    v16 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_29:
    sub_1000E09C0();
    return;
  }

  v6 = *a1;
  *(a1 + 6) = v5 + 1;
  if ((v4 - (v5 + 1)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection handle of the LE connection complete event");
    v17 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_29;
  }

  v7 = *(v6 + v5);
  v8 = *(v6 + v5 + 1);
  *(a1 + 6) = v5 + 3;
  if (v4 <= (v5 + 3))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection role of the LE connection complete event");
    v18 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_29;
  }

  v9 = v5 + 4;
  *(a1 + 6) = v5 + 4;
  if (v4 <= (v5 + 4))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the peer address type of the LE connection complete event");
    v19 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_29;
  }

  v10 = *(v6 + (v5 + 3));
  v11 = v5 + 5;
  *(a1 + 6) = v11;
  v31 = *(v6 + v9);
  if ((v4 - v11) <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 166, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
  }

  sub_1000075EC(&v32, v6 + v11, 6uLL);
  v13 = *(a1 + 6);
  *(a1 + 6) = v13 + 6;
  if (*(a1 + 15))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the peer address of the LE connection complete event");
    v14 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_47;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 168, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v20 = *(a1 + 5);
  if ((v20 - (v13 + 6)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection interval of the LE connection complete event");
    v27 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_47:
    sub_1000E09C0();
    return;
  }

  v21 = *a1;
  v22 = *(*a1 + (v13 + 6));
  *(a1 + 6) = v13 + 8;
  if ((v20 - (v13 + 8)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection latency  of the LE connection complete event");
    v28 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_47;
  }

  v23 = *(v21 + (v13 + 8));
  *(a1 + 6) = v13 + 10;
  if ((v20 - (v13 + 10)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the supervision timeout of the LE connection complete event");
    v29 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_47;
  }

  v24 = (v21 + (v13 + 10));
  v25 = *v24;
  v26 = v24[1];
  *(a1 + 6) = v13 + 12;
  if (v20 > (v13 + 12))
  {
    *(a1 + 6) = v13 + 13;
    sub_1002C1EE8(v7, v8, v10, &v31, 0, v22, v23, v25 | (v26 << 8), *(v21 + (v13 + 12)), 0xFFFF, a2);
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the central clock accuracy of the LE connection complete event");
    v30 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }
  }
}

void sub_1002C49B0(uint64_t *a1, char a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 185, "void LE_HCIEventHandler_AdvertisingReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
    v2 = 0;
LABEL_4:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Not enough data in the packet : %d, expecting at least %d", v2, 10);
    v6 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_6;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v2 = v4 - v5;
  *ptr = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  if (v4 - v5 <= 9)
  {
    goto LABEL_4;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 195, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v4 <= v5)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the number of reports of the LE advertising report event");
    v32 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_6:
    sub_1000E09C0();
    return;
  }

  v7 = *a1;
  *(a1 + 6) = v5 + 1;
  v8 = *(v7 + v5);
  BYTE1(ptr[1]) = a2;
  if (!v8)
  {
    return;
  }

  v9 = 0;
  while (1)
  {
    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 202, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 202, "void LE_HCIEventHandler_AdvertisingReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
LABEL_45:
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the event type of the LE advertising report event");
      v33 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    v10 = *(a1 + 5);
    v11 = *(a1 + 6);
    if (v10 <= v11)
    {
      goto LABEL_45;
    }

    v12 = *a1;
    v13 = v11 + 1;
    *(a1 + 6) = v11 + 1;
    LOBYTE(v40) = *(v12 + v11);
    if (v10 <= v11 + 1)
    {
      break;
    }

    v14 = v11 + 2;
    *(a1 + 6) = v14;
    BYTE1(v40) = *(v12 + v13);
    if ((v10 - v14) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 206, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(&v40 + 2, v12 + v14, 6uLL);
    v15 = *(a1 + 6);
    *(a1 + 6) = v15 + 6;
    if (*(a1 + 15))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the address of the LE advertising report event");
      v35 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 208, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 5) <= (v15 + 6))
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the dataLength of the LE advertising report event");
      v36 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    v16 = *a1;
    *(a1 + 6) = v15 + 7;
    v17 = (v15 + 6);
    v18 = *(v16 + v17);
    WORD4(v40) = *(v16 + v17);
    if (v18 >= 0x20)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Too many info bytes in the LE advertising report event.");
      v37 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    v19 = sub_100007618(v18, 0x41E9648CuLL);
    ptr[0] = v19;
    v20 = WORD4(v40);
    v21 = *(a1 + 14);
    if (v19)
    {
      v22 = WORD4(v40) == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      if (v21 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 216, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v23 = v19;
      v24 = *a1;
      v25 = *(a1 + 6);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 216, "void LE_HCIEventHandler_AdvertisingReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
        v26 = 0;
      }

      else
      {
        v26 = *(a1 + 5) - v25;
      }

      if (v26 < WORD4(v40))
      {
        *(a1 + 15) = 1;
LABEL_65:
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get the dataLength of the LE advertising report event");
        v39 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          return;
        }

LABEL_67:
        sub_1000E09C0();
        return;
      }

      v27 = (v24 + v25);
      v28 = &v23[v20];
      do
      {
        v29 = *v27++;
        *v23++ = v29;
      }

      while (v23 < v28);
      *(a1 + 6) += WORD4(v40);
      if (*(a1 + 15))
      {
        goto LABEL_65;
      }

      v21 = *(a1 + 14);
    }

    if (v21 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 219, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 219, "void LE_HCIEventHandler_AdvertisingReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
LABEL_61:
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the rssi of the LE advertising report event");
      v38 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    v30 = *(a1 + 6);
    if (*(a1 + 5) <= v30)
    {
      goto LABEL_61;
    }

    v31 = *a1;
    *(a1 + 6) = v30 + 1;
    LOBYTE(ptr[1]) = *(v31 + v30);
    if (BYTE1(v40) >= 2u)
    {
      BYTE1(v40) -= 2;
    }

    BYTE12(v42[0]) = 0;
    *(v42 + 15) = 256;
    sub_100008150(&v40);
    sub_10000C1E8(ptr[0]);
    if (++v9 == v8)
    {
      return;
    }
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the address type of the LE advertising report event");
    v34 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }
  }
}

void sub_1002C4F8C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 251, "void LE_HCIEventHandler_ConnectionUpdateComplete(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v2 - v3 == 9)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 266, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the LE connection update event");
          v13 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v4 = *a1;
        *(a1 + 6) = v3 + 1;
        if ((v2 - (v3 + 1)) <= 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the connection handle of the LE connection update event");
            v14 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
          v5 = *(v4 + v3);
          v6 = *(v4 + v3 + 1);
          *(a1 + 6) = v3 + 3;
          if ((v2 - (v3 + 3)) <= 1)
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get the connection interval of the LE connection update event");
              v15 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
            v7 = *(v4 + (v3 + 3));
            *(a1 + 6) = v3 + 5;
            if ((v2 - (v3 + 5)) <= 1)
            {
              *(a1 + 15) = 1;
              if (sub_10000C240())
              {
                sub_10000AF54("Could not get the connection latency  of the LE connection update event");
                v16 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_15;
                }
              }
            }

            else
            {
              v8 = (v4 + (v3 + 5));
              v9 = *v8;
              v10 = v8[1];
              *(a1 + 6) = v3 + 7;
              if ((v2 - (v3 + 7)) <= 1)
              {
                *(a1 + 15) = 1;
                if (sub_10000C240())
                {
                  sub_10000AF54("Could not get the supervision timeout of the LE connection update event");
                  v17 = sub_10000C050(0x42u);
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_15;
                  }
                }
              }

              else
              {
                v11 = *(v4 + (v3 + 7));
                *(a1 + 6) = v3 + 9;

                sub_1002C26C8(v5, v6, v7, v9 | (v10 << 8), v11);
              }
            }
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the connection update packet : %d expecting at least %d", v1, 9);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      sub_1000E09C0();
    }
  }
}

void sub_1002C5278(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 285, "void LE_HCIEventHandler_ReadRemoteUsedFeatures(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
    goto LABEL_11;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  v14 = 0;
  if (v2 - v3 != 11)
  {
LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Not enough data in the feature packet : %d expecting at least %d", v1, 11);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 296, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v3)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the status of the read remote used features event");
    v11 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_23:
    sub_1000E09C0();
    return;
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 1;
  if ((v2 - (v3 + 1)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection handle of the read remote used features event");
    v12 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_23;
  }

  v5 = *(v4 + v3);
  v6 = *(v4 + v3 + 1);
  *(a1 + 6) = v3 + 3;
  if ((v2 - (v3 + 3)) >= 8)
  {
    v7 = 0;
    v8 = v4 + (v3 + 3);
    do
    {
      *(&v14 + v7) = *(v8 + v7);
      ++v7;
    }

    while (v7 != 8);
    *(a1 + 6) = v3 + 11;
    v9 = sub_100022244(v5);
    sub_1002C2AC8(v9, v6, &v14);
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the features of the read remote used features event");
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }
  }
}

void sub_1002C54CC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 309, "void LE_HCIEventHandler_LongTermKeyRequest(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    v11 = 0;
    if (v2 - v3 == 12)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 319, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *a1;
      v5 = *(*a1 + v3);
      *(a1 + 6) = v3 + 2;
      if (v2 - (v3 + 2) < 8)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the random number of the long term key request event");
          v9 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        for (i = 0; i != 8; ++i)
        {
          *(&v11 + i) = *(v4 + (v3 + 2) + i);
        }

        *(a1 + 6) = v3 + 10;
        if (v2 - (v3 + 10) <= 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the encryption diversifier of the long term key request event");
            v10 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        else
        {
          v7 = *(v4 + (v3 + 10));
          *(a1 + 6) = v3 + 12;
          sub_1002DA700(v5, &v11, v7);
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the long term key request packet : %d expecting at least %d", v1, 12);
    v8 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002C56CC(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 334, "void LE_HCIEventHandler_RemoteConnectionParameterRequest(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 10);
    v3 = *(a1 + 12);
    v1 = v2 - v3;
    if (v2 - v3 == 10)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 346, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *(*a1 + v3);
      *(a1 + 12) = v3 + 2;
      if (v2 - (v3 + 2) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 347, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *(a1 + 12) = v3 + 4;
      if (v2 - (v3 + 4) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 348, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *(a1 + 12) = v3 + 6;
      if (v2 - (v3 + 6) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 349, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *(a1 + 12) = v3 + 8;
      if (v2 - (v3 + 8) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 350, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *(a1 + 12) = v3 + 10;
      if (sub_1000ABB80(v4))
      {

        sub_1002D02FC();
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("LE_HCIEventHandler_RemoteConnectionParameterRequest: Invalid connectionHandle for lmHandle 0x%2x", v4);
        v6 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the Remote Connection Parameter Request message: %d expecting at least %d", v1, 10);
    v5 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      sub_1000E09C0();
    }
  }
}

void sub_1002C5930(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 368, "void _HCIEventHandler_DataLengthChanged(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
    goto LABEL_12;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  if (v2 - v3 != 10)
  {
LABEL_12:
    if (sub_10000C240())
    {
      sub_10000AF54("Not enough data for data length changed: %d expecting at least %d", v1, 10);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 375, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v4 = *a1;
  v5 = *(*a1 + v3);
  *(a1 + 6) = v3 + 2;
  if (v2 - (v3 + 2) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 376, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v6 = *(v4 + (v3 + 2));
  *(a1 + 6) = v3 + 4;
  if (v2 - (v3 + 4) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 377, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v7 = *(v4 + (v3 + 4));
  *(a1 + 6) = v3 + 6;
  if (v2 - (v3 + 6) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 378, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v8 = (v4 + (v3 + 6));
  v9 = *v8;
  v10 = v8[1];
  *(a1 + 6) = v3 + 8;
  if (v2 - (v3 + 8) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 379, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v11 = *(v4 + (v3 + 8));
  *(a1 + 6) = v3 + 10;

  sub_1002C3008(v5, v6, v7, v9 | (v10 << 8), v11);
}

void sub_1002C5B10(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 388, "void _HCIEventHandler_PhyUpdateComplete(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
    goto LABEL_12;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  if (v2 - v3 != 5)
  {
LABEL_12:
    if (sub_10000C240())
    {
      sub_10000AF54("Not enough data for phy update complete: %d expecting aØt least 6", v1);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (v2 <= v3)
  {
    v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_18;
  }

  if (*(a1 + 14) != 1)
  {
    v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_18:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 391, v11);
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 1;
  if ((v2 - (v3 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 392, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v5 = *(v4 + v3);
  v6 = *(v4 + v3 + 1);
  *(a1 + 6) = v3 + 3;
  if (v2 <= (v3 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 393, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a1 + 6) = v3 + 4;
  if (v2 <= (v3 + 4))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 394, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v7 = *(v4 + (v3 + 3));
  *(a1 + 6) = v3 + 5;
  v8 = *(v4 + (v3 + 4));
  v9 = sub_1000ABB80(v6);

  sub_1002C33F4(v5, v9, v7, v8);
}

void sub_1002C5CD8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 408, "void _HCIEventHandler_ChannelSelectionAlgorithm(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
    goto LABEL_11;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  if (v2 - v3 != 3)
  {
LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Not enough data for phy update complete: %d expecting at least 3", v1);
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 411, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  *(a1 + 6) = v3 + 2;
  if (v2 <= (v3 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 412, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 3;
  v5 = *(v4 + (v3 + 2));
  if (v5 >= 2)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LE channel Selection algorithm %d", v5);
    v6 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

void sub_1002C5E88(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 561, "void _HCIEventHandler_AdvertisingSetTerminated(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v2 - v3 > 4)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 572, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the LE advertising set terminated event");
          v10 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        v5 = *a1;
        *(a1 + 6) = v3 + 1;
        if (v2 <= (v3 + 1))
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the advertising handle of the LE advertising set terminated event");
            v11 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          v6 = v3 + 2;
          *(a1 + 6) = v3 + 2;
          if ((v2 - (v3 + 2)) <= 1)
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get the connection handle of the LE advertising set terminated event");
              v12 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_6;
              }
            }
          }

          else
          {
            v7 = v5 + v6;
            v8 = *(v5 + v6);
            v9 = *(v7 + 1);
            *(a1 + 6) = v3 + 4;
            if (v2 <= (v3 + 4))
            {
              *(a1 + 15) = 1;
              if (sub_10000C240())
              {
                sub_10000AF54("Could not get the number of advertising events of the LE advertising set terminated event");
                v13 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_6;
                }
              }
            }

            else
            {
              *(a1 + 6) = v3 + 5;
              sub_1000ABB80(v8 | (v9 << 8));

              nullsub_21();
            }
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the packet : %d, expecting at least %d", v1, 10);
    v4 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_1000E09C0();
    }
  }
}

void sub_1002C6120(int a1, uint64_t *a2, unsigned __int8 a3)
{
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 721, "void _HCIEventHandler_EnhancedConnectionComplete(uint8_t, OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 5) - *(a2 + 6);
  }

  *&v45[3] = 0;
  *v45 = 0;
  *(v44 + 3) = 0;
  v44[0] = 0;
  if (a1 != 1 || v6 == 30)
  {
    if (a1 == 2 && v6 != 33)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid enhanced connection complete V2 event packet size : %d, expecting %d", v6, 33);
        v8 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 745, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 745, "void _HCIEventHandler_EnhancedConnectionComplete(uint8_t, OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
LABEL_26:
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the status of the LE enhanced connection complete event");
        v19 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v9 = *(a2 + 5);
    v10 = *(a2 + 6);
    if (v9 <= v10)
    {
      goto LABEL_26;
    }

    v11 = *a2;
    *(a2 + 6) = v10 + 1;
    if ((v9 - (v10 + 1)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the connection handle of the LE enhanced connection complete event");
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v12 = *(v11 + v10);
    v13 = *(v11 + v10 + 1);
    *(a2 + 6) = v10 + 3;
    if (v9 <= (v10 + 3))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the connection role of the LE enhanced connection complete event");
        v21 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v14 = v10 + 4;
    *(a2 + 6) = v10 + 4;
    if (v9 <= (v10 + 4))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the peer address type of the LE enhanced connection complete event");
        v22 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v15 = *(v11 + (v10 + 3));
    v16 = v10 + 5;
    *(a2 + 6) = v16;
    v45[0] = *(v11 + v14);
    if ((v9 - v16) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 757, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(&v45[1], v11 + v16, 6uLL);
    v17 = *(a2 + 6);
    *(a2 + 6) = v17 + 6;
    if (*(a2 + 15))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the peer address of the LE enhanced connection complete event");
        v18 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v23 = *(a2 + 5);
    if (v23 - (v17 + 6) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 760, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
    }

    v24 = v17 + 12;
    *(a2 + 6) = v24;
    if (v23 - v24 <= 5)
    {
      v43 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
    }

    else
    {
      if (*(a2 + 14) == 1)
      {
        sub_1000075EC(v44 + 1, *a2 + v24, 6uLL);
        v25 = *(a2 + 6);
        *(a2 + 6) = v25 + 6;
        if (*(a2 + 15))
        {
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the peer address of the LE enhanced connection complete event");
          v26 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          goto LABEL_84;
        }

        LOBYTE(v44[0]) = 1;
        if (*(a2 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 766, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v27 = *(a2 + 5);
        if ((v27 - (v25 + 6)) <= 1)
        {
          *(a2 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the connection interval of the LE enhanced connection complete event");
          v34 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          v28 = *a2;
          v29 = *(*a2 + (v25 + 6));
          *(a2 + 6) = v25 + 8;
          if ((v27 - (v25 + 8)) <= 1)
          {
            *(a2 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get the connection latency  of the LE enhanced connection complete event");
            v35 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            v30 = *(v28 + (v25 + 8));
            *(a2 + 6) = v25 + 10;
            if ((v27 - (v25 + 10)) <= 1)
            {
              *(a2 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get the supervision timeout of the LE enhanced connection complete event");
              v36 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              v31 = *(v28 + (v25 + 10));
              *(a2 + 6) = v25 + 12;
              if (v27 <= (v25 + 12))
              {
                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get the central clock accuracy of the LE enhanced connection complete event");
                v37 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                *(a2 + 6) = v25 + 13;
                v32 = *(v28 + (v25 + 12));
                if (a1 != 2)
                {
                  v33 = -1;
                  goto LABEL_68;
                }

                if (v27 <= (v25 + 13))
                {
                  *(a2 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the advertising handle of the LE enhanced connection complete V2 event");
                  v39 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }

                else
                {
                  *(a2 + 6) = v25 + 14;
                  if ((v27 - (v25 + 14)) >= 2)
                  {
                    v33 = *(v28 + (v25 + 14));
                    *(a2 + 6) = v25 + 16;
LABEL_68:
                    v38 = v45[0] & 0xFE;
                    if (v45[0] == 3)
                    {
                      v45[0] = 1;
                    }

                    else if (v45[0] == 2)
                    {
                      v45[0] = 0;
                    }

                    if (v38 == 2)
                    {
                      v40 = v44;
                    }

                    else
                    {
                      v40 = v45;
                    }

                    if (v38 == 2)
                    {
                      v41 = v45;
                    }

                    else
                    {
                      v41 = 0;
                    }

                    sub_1002C1EE8(v12, v13, v15, v40, v41, v29, v30, v31, v32, v33, a3);
                    return;
                  }

                  *(a2 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the sync handle of the LE enhanced connection complete V2 event");
                  v42 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }
              }
            }
          }
        }

LABEL_84:
        sub_1000E09C0();
        return;
      }

      v43 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 762, v43);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid enhanced connection complete event packet size : %d, expecting %d", v6, 30);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_38:
      sub_1000E09C0();
    }
  }
}

void sub_1002C6898(int a1, uint64_t *a2)
{
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 819, "void _HCIEventHandler_PeriodicAdvSyncEstablished(uint8_t, OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 5) - *(a2 + 6);
  }

  memset(v29, 0, 20);
  if (a1 != 1 || v4 == 15)
  {
    if (a1 == 2 && v4 != 19)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid periodic advertising sync established V2 event packet size : %d, expecting %d", v4, 19);
        v6 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 828, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 828, "void _HCIEventHandler_PeriodicAdvSyncEstablished(uint8_t, OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
LABEL_26:
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the status of the LE periodic advertising sync established event");
        v15 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v7 = *(a2 + 5);
    v8 = *(a2 + 6);
    if (v7 <= v8)
    {
      goto LABEL_26;
    }

    v9 = *a2;
    *(a2 + 6) = v8 + 1;
    if ((v7 - (v8 + 1)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the sync handle of the LE periodic advertising sync established event");
        v16 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v10 = *(v9 + v8);
    LOWORD(v29[0]) = *(v9 + v8 + 1);
    *(a2 + 6) = v8 + 3;
    if (v7 <= (v8 + 3))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the SID of the LE periodic advertising sync established event");
        v17 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v11 = v8 + 4;
    *(a2 + 6) = v8 + 4;
    BYTE2(v29[0]) = *(v9 + (v8 + 3));
    if (v7 <= (v8 + 4))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the advertiser address type of the LE periodic advertising sync established event");
        v18 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v12 = v8 + 5;
    *(a2 + 6) = v12;
    BYTE3(v29[0]) = *(v9 + v11);
    if ((v7 - v12) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 836, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(v29 + 4, v9 + v12, 6uLL);
    v13 = *(a2 + 6);
    *(a2 + 6) = v13 + 6;
    if (*(a2 + 15))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the advertiser address of the LE periodic advertising sync established event");
      v14 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_70;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 838, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v19 = *(a2 + 5);
    if (v19 <= (v13 + 6))
    {
      *(a2 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the PHY of the LE periodic advertising sync established event");
      v22 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v20 = *a2;
      *(a2 + 6) = v13 + 7;
      BYTE2(v29[1]) = *(v20 + (v13 + 6));
      if ((v19 - (v13 + 7)) <= 1)
      {
        *(a2 + 15) = 1;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get the periodic advertsing interval of the LE periodic advertising sync established event");
        v23 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        WORD2(v29[1]) = *(v20 + (v13 + 7));
        *(a2 + 6) = v13 + 9;
        if (v19 <= (v13 + 9))
        {
          *(a2 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the central clock accuracy of the LE periodic advertising sync established event");
          v24 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          *(a2 + 6) = v13 + 10;
          BYTE6(v29[1]) = *(v20 + (v13 + 9));
          *(&v29[1] + 7) = 0;
          if (a1 != 2)
          {
LABEL_49:
            v21 = sub_100022244(v10);
            sub_1001B8B70(v29, v21);
            return;
          }

          if (v19 <= (v13 + 10))
          {
            *(a2 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get Number_Subevents of LE periodic advertising sync transfer received event");
            v25 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            *(a2 + 6) = v13 + 11;
            HIBYTE(v29[1]) = *(v20 + (v13 + 10));
            if (v19 <= (v13 + 11))
            {
              *(a2 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get Subevent_Interval of LE periodic advertising sync transfer received event");
              v26 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              *(a2 + 6) = v13 + 12;
              LOBYTE(v29[2]) = *(v20 + (v13 + 11));
              if (v19 <= (v13 + 12))
              {
                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get Response_Slot_Delay of LE periodic advertising sync transfer received event");
                v27 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                *(a2 + 6) = v13 + 13;
                BYTE1(v29[2]) = *(v20 + (v13 + 12));
                if (v19 > (v13 + 13))
                {
                  *(a2 + 6) = v13 + 14;
                  BYTE2(v29[2]) = *(v20 + (v13 + 13));
                  goto LABEL_49;
                }

                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get Response_Slot_Spacing of LE periodic advertising sync transfer received event");
                v28 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }
            }
          }
        }
      }
    }

LABEL_70:
    sub_1000E09C0();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid periodic advertising sync established event packet size : %d, expecting %d", v4, 15);
    v5 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_38:
      sub_1000E09C0();
    }
  }
}

void sub_1002C6F30(int a1, uint64_t *a2, uint64_t a3)
{
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 876, "void _HCIEventHandler_PeriodicAdvReport(uint8_t, OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 5) - *(a2 + 6);
  }

  if (a1 != 1 || v5 > 6)
  {
    if (a1 == 2 && v5 <= 9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid periodic advertising report V2 event packet size : %d, expecting at least %d", v5, 10);
        v7 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 884, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 884, "void _HCIEventHandler_PeriodicAdvReport(uint8_t, OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
LABEL_25:
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the sync handle of the LE periodic advertising report event");
        v23 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v8 = *(a2 + 5);
    v9 = *(a2 + 6);
    if ((v8 - v9) <= 1)
    {
      goto LABEL_25;
    }

    v10 = *a2;
    v11 = *(*a2 + v9);
    *(a2 + 6) = v9 + 2;
    if (v8 <= (v9 + 2))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the TX power of the LE periodic advertising report event");
        v24 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    *(a2 + 6) = v9 + 3;
    if (v8 <= (v9 + 3))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the RSSI of the LE periodic advertising report event");
        v25 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    v12 = *(v10 + (v9 + 2));
    *(a2 + 6) = v9 + 4;
    if (v8 <= (v9 + 4))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the CTE Type of the LE periodic advertising report event");
        v26 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    v13 = *(v10 + (v9 + 3));
    v14 = v9 + 5;
    *(a2 + 6) = v9 + 5;
    v15 = *(v10 + (v9 + 4));
    if (a1 == 2)
    {
      if ((v8 - v14) <= 1)
      {
        *(a2 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the periodic event counter of the LE periodic advertising report event");
          v32 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }
        }

        return;
      }

      v16 = (v10 + v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = v9 + 7;
      *(a2 + 6) = v9 + 7;
      if (v8 <= (v9 + 7))
      {
        *(a2 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the subevent of the LE periodic advertising report event");
          v34 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }
        }

        return;
      }

      v20 = v17 | (v18 << 8);
      v21 = v9 + 8;
      *(a2 + 6) = v21;
      v22 = *(v10 + v19);
    }

    else
    {
      v22 = 0;
      v20 = 0;
      v21 = v9 + 5;
    }

    if (v8 <= v21)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the data status of the LE periodic advertising report event");
        v31 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    v27 = v21 + 1;
    *(a2 + 6) = v21 + 1;
    if (v8 <= (v21 + 1))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the data length of the LE periodic advertising report event");
        v33 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    v28 = *(v10 + v21);
    *(a2 + 6) = v21 + 2;
    v29 = *(v10 + v27);
    if (v29 >= 0xF8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Too many data bytes in the LE extended advertising report event.");
        v30 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    if (*(v10 + v27))
    {
      v35 = sub_100007618(*(v10 + v27), 0xA0A50E8BuLL);
      if (v35)
      {
        if (*(a2 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 911, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v36 = v35;
        v43 = *(a2 + 6);
        v44 = *a2;
        if (*(a2 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 911, "void _HCIEventHandler_PeriodicAdvReport(uint8_t, OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
          v37 = 0;
        }

        else
        {
          v37 = *(a2 + 5) - *(a2 + 6);
        }

        if (v37 < v29)
        {
          *(a2 + 15) = 1;
          goto LABEL_74;
        }

        v39 = (v44 + v43);
        v40 = v36;
        do
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        while (v40 < &v36[v29]);
        *(a2 + 6) += v29;
        if (*(a2 + 15))
        {
LABEL_74:
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the data of the LE periodic advertising report event");
            v42 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          goto LABEL_77;
        }

LABEL_66:
        v45 = v11;
        v46 = v12;
        v47 = v13;
        v48 = v15;
        v49 = 0;
        v50 = v20;
        v51 = v22;
        v52 = v28;
        v53 = v29;
        v54 = 0;
        v55 = 0;
        v56 = v36;
        sub_1001B91A8(&v45, a2, a3);
        if (!v36)
        {
          return;
        }

LABEL_77:
        sub_10000C1E8(v36);
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Could not allocate memory for the LE periodic advertising report event");
        v38 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    v36 = 0;
    goto LABEL_66;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid periodic advertising report event packet size : %d, expecting at least %d", v5, 7);
    v6 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_56:
      sub_1000E09C0();
    }
  }
}

void sub_1002C75B0(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 936, "void _HCIEventHandler_PeriodicAdvSyncLost(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
    goto LABEL_8;
  }

  v2 = *(a1 + 12);
  v1 = *(a1 + 10) - v2;
  if (v1 != 2)
  {
LABEL_8:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid periodic advertising sync established event packet size : %d, expecting %d", v1, 2);
      v5 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 941, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v3 = v2 + 2;
  v4 = *(*a1 + v2);
  *(a1 + 12) = v3;

  sub_1001B913C(v4);
}

void sub_1002C76B0(int a1, uint64_t *a2)
{
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 951, "void _HCIEventHandler_PeriodicAdvertisingSyncTransferReceived(uint8_t, OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 5) - *(a2 + 6);
  }

  *(v45 + 3) = 0;
  v45[0] = 0;
  if (a1 != 1 || v4 == 19)
  {
    if (a1 == 1 && v4 != 23)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid periodic advertising sync transfer received event packet size : %d, expecting ", v4);
        v6 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 974, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 974, "void _HCIEventHandler_PeriodicAdvertisingSyncTransferReceived(uint8_t, OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
LABEL_28:
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get status of LE periodic advertising sync transfer received event");
        v19 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v7 = *(a2 + 5);
    v8 = *(a2 + 6);
    if (v7 <= v8)
    {
      goto LABEL_28;
    }

    v9 = *a2;
    *(a2 + 6) = v8 + 1;
    if ((v7 - (v8 + 1)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get connection_handle of LE periodic advertising sync transfer received event");
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v10 = *(v9 + v8);
    v11 = *(v9 + v8 + 1);
    *(a2 + 6) = v8 + 3;
    if ((v7 - (v8 + 3)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get service_data of LE periodic advertising sync transfer received event");
        v21 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v12 = *(v9 + (v8 + 3));
    *(a2 + 6) = v8 + 5;
    if ((v7 - (v8 + 5)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get sync_handle of LE periodic advertising sync transfer received event");
        v22 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v13 = *(v9 + (v8 + 5));
    *(a2 + 6) = v8 + 7;
    if (v7 <= (v8 + 7))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get advertising_SID of LE periodic advertising sync transfer received event");
        v23 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v14 = v8 + 8;
    *(a2 + 6) = v8 + 8;
    if (v7 <= (v8 + 8))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get advertiser address_type of LE periodic advertising sync transfer received event");
        v24 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v15 = *(v9 + (v8 + 7));
    v16 = v8 + 9;
    *(a2 + 6) = v16;
    LOBYTE(v45[0]) = *(v9 + v14);
    if ((v7 - v16) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 986, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(v45 + 1, v9 + v16, 6uLL);
    v17 = *(a2 + 6);
    *(a2 + 6) = v17 + 6;
    if (*(a2 + 15))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get advertiser address of LE periodic advertising sync transfer received event");
      v18 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_79;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 988, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v25 = *(a2 + 5);
    if (v25 <= (v17 + 6))
    {
      *(a2 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get advertiser_PHY of LE periodic advertising sync transfer received event");
      v33 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v26 = *a2;
      *(a2 + 6) = v17 + 7;
      if ((v25 - (v17 + 7)) <= 1)
      {
        *(a2 + 15) = 1;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get Periodic_Advertising_Interval of LE periodic advertising sync transfer received event");
        v34 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        v27 = *(v26 + (v17 + 6));
        v28 = *(v26 + (v17 + 7));
        *(a2 + 6) = v17 + 9;
        if (v25 <= (v17 + 9))
        {
          *(a2 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get Advertiser_Clock_Accuracy of LE periodic advertising sync transfer received event");
          v35 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          v43 = v28;
          v44 = v27;
          *(a2 + 6) = v17 + 10;
          v29 = *(v26 + (v17 + 9));
          if (a1 != 2)
          {
            v32 = 0;
            v31 = 0;
            v30 = 0;
            v42 = 0;
            goto LABEL_67;
          }

          if (v25 <= (v17 + 10))
          {
            *(a2 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get Number_Subevents of LE periodic advertising sync transfer received event");
            v38 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            *(a2 + 6) = v17 + 11;
            if (v25 <= (v17 + 11))
            {
              *(a2 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get Subevent_Interval of LE periodic advertising sync transfer received event");
              v39 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              v42 = *(v26 + (v17 + 10));
              *(a2 + 6) = v17 + 12;
              if (v25 <= (v17 + 12))
              {
                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get Response_Slot_Delay of LE periodic advertising sync transfer received event");
                v40 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                v30 = *(v26 + (v17 + 11));
                *(a2 + 6) = v17 + 13;
                if (v25 > (v17 + 13))
                {
                  v31 = *(v26 + (v17 + 12));
                  *(a2 + 6) = v17 + 14;
                  v32 = *(v26 + (v17 + 13));
LABEL_67:
                  v36 = sub_1000ABB80(v11);
                  v37 = sub_100022244(v10);
                  sub_1001B9218(v37, v36, v12, v13, v15, v45, v44, v43, v29, v42, v30, v31, v32);
                  return;
                }

                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get Response_Slot_Spacing of LE periodic advertising sync transfer received event");
                v41 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }
            }
          }
        }
      }
    }

LABEL_79:
    sub_1000E09C0();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid periodic advertising sync transfer received event packet size : %d, expecting ", v4);
    v5 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_46:
      sub_1000E09C0();
    }
  }
}

void sub_1002C7E54(uint64_t *a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1027, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1027, "void _HCIEventHandler_TransmitPowerReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (v2 > v3)
    {
      v4 = *a1;
      *(a1 + 6) = v3 + 1;
      if ((v2 - (v3 + 1)) <= 1)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get connection_handle of tx power report  event");
          v13 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v5 = *(v4 + v3);
        v6 = *(v4 + v3 + 1);
        *(a1 + 6) = v3 + 3;
        if (v2 <= (v3 + 3))
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get reason of tx power report  event");
            v14 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          *(a1 + 6) = v3 + 4;
          if (v2 <= (v3 + 4))
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get phy of tx power report  event");
              v15 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            v7 = *(v4 + (v3 + 3));
            *(a1 + 6) = v3 + 5;
            if (v2 <= (v3 + 5))
            {
              *(a1 + 15) = 1;
              if (sub_10000C240())
              {
                sub_10000AF54("Could not get TX_Power_Level of tx power report  event");
                v16 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_17;
                }
              }
            }

            else
            {
              v8 = *(v4 + (v3 + 4));
              *(a1 + 6) = v3 + 6;
              if (v2 <= (v3 + 6))
              {
                *(a1 + 15) = 1;
                if (sub_10000C240())
                {
                  sub_10000AF54("Could not get TX_Power_Level_Flag of tx power report  event");
                  v17 = sub_10000C050(0x42u);
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_17;
                  }
                }
              }

              else
              {
                v9 = *(v4 + (v3 + 5));
                *(a1 + 6) = v3 + 7;
                if (v2 <= (v3 + 7))
                {
                  *(a1 + 15) = 1;
                  if (sub_10000C240())
                  {
                    sub_10000AF54("Could not get delta of tx power report  event");
                    v18 = sub_10000C050(0x42u);
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_17;
                    }
                  }
                }

                else
                {
                  v10 = *(v4 + (v3 + 6));
                  *(a1 + 6) = v3 + 8;
                  v11 = *(v4 + (v3 + 7));
                  if (sub_1000ABB80(v6))
                  {

                    sub_1002C4130(v5, v6, v7, v8, v9, v10, v11);
                  }
                }
              }
            }
          }
        }
      }

      return;
    }
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get status tx power report  event");
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      sub_1000E09C0();
    }
  }
}

void sub_1002C81CC(uint64_t *a1)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1078, "void _HCIEventHandler_CISEstablished(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
    goto LABEL_22;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  if (v2 - v3 != 28)
  {
LABEL_22:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid CIS established event packet size : %d, expecting at least %d", v1, 28);
      v6 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1083, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v3)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get status of LE LE CIS established event");
    v7 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_73:
    sub_1000E09C0();
    return;
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 1;
  if ((v2 - (v3 + 1)) < 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIS handle of the LE CIS established event");
    v8 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  v5 = *(v4 + v3);
  LOWORD(v23) = *(v4 + v3 + 1);
  *(a1 + 6) = v3 + 3;
  if ((v2 - (v3 + 3)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIG sync delay of the LE CIS established event");
    v9 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  DWORD1(v23) = *(v4 + (v3 + 3)) | (*(v4 + (v3 + 3) + 2) << 16);
  *(a1 + 6) = v3 + 6;
  if ((v2 - (v3 + 6)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIS sync delay of the LE CIS established event");
    v10 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  DWORD2(v23) = *(v4 + (v3 + 6)) | (*(v4 + (v3 + 6) + 2) << 16);
  *(a1 + 6) = v3 + 9;
  if ((v2 - (v3 + 9)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the transport latency central to peripheral of the LE CIS established event");
    v11 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  HIDWORD(v23) = *(v4 + (v3 + 9)) | (*(v4 + (v3 + 9) + 2) << 16);
  *(a1 + 6) = v3 + 12;
  if ((v2 - (v3 + 12)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the transport latency peripheral to central of the LE CIS established event");
    v12 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  LODWORD(v24) = *(v4 + (v3 + 12)) | (*(v4 + (v3 + 12) + 2) << 16);
  *(a1 + 6) = v3 + 15;
  if (v2 <= (v3 + 15))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the PHY central to peripheral of the LE CIS established event");
    v13 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 16;
  BYTE4(v24) = *(v4 + (v3 + 15));
  if (v2 <= (v3 + 16))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the PHY peripheral to central of the LE CIS established event");
    v14 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 17;
  BYTE5(v24) = *(v4 + (v3 + 16));
  if (v2 <= (v3 + 17))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the number of subevent of the LE CIS established event");
    v15 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 18;
  BYTE6(v24) = *(v4 + (v3 + 17));
  if (v2 <= (v3 + 18))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the burst number central to peripheral of the LE CIS established event");
    v16 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 19;
  BYTE7(v24) = *(v4 + (v3 + 18));
  if (v2 <= (v3 + 19))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the burst number peripheral to central of the LE CIS established event");
    v17 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 20;
  BYTE8(v24) = *(v4 + (v3 + 19));
  if (v2 <= (v3 + 20))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the flush timeout central to peripheral of the LE CIS established event");
    v18 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 21;
  BYTE9(v24) = *(v4 + (v3 + 20));
  if (v2 <= (v3 + 21))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the flush timeout peripheral to central of the LE CIS established event");
    v19 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 22;
  BYTE10(v24) = *(v4 + (v3 + 21));
  if ((v2 - (v3 + 22)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the maximum PDU central to peripheral of the LE CIS established event");
    v20 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  WORD6(v24) = *(v4 + (v3 + 22));
  *(a1 + 6) = v3 + 24;
  if ((v2 - (v3 + 24)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the maximum PDU peripheral to central of the LE CIS established event");
    v21 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  HIWORD(v24) = *(v4 + (v3 + 24));
  *(a1 + 6) = v3 + 26;
  if ((v2 - (v3 + 26)) > 1)
  {
    LOWORD(v25) = *(v4 + (v3 + 26));
    *(a1 + 6) = v3 + 28;
    sub_1002189A0(v5, &v23);
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the ISO interval of the LE CIS established event");
    v22 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }
  }
}

void sub_1002C892C(uint64_t *a1)
{
  v11 = 0;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1132, "void _HCIEventHandler_CISRequest(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
    goto LABEL_9;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  if (v2 - v3 != 6)
  {
LABEL_9:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid CIS request event packet size : %d, expecting at least %d", v1, 6);
      v6 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1137, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v4 = *a1;
  v5 = *(*a1 + v3);
  *(a1 + 6) = v3 + 2;
  if ((v2 - (v3 + 2)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIS handle of the LE CIS request event");
    v7 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_21:
    sub_1000E09C0();
    return;
  }

  LOWORD(v11) = *(v4 + (v3 + 2));
  *(a1 + 6) = v3 + 4;
  if (v2 <= (v3 + 4))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIG ID of of the LE CIS request event");
    v8 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_21;
  }

  *(a1 + 6) = v3 + 5;
  BYTE2(v11) = *(v4 + (v3 + 4));
  if (v2 > (v3 + 5))
  {
    *(a1 + 6) = v3 + 6;
    BYTE3(v11) = *(v4 + (v3 + 5));
    v10 = sub_1000ABB80(v5);
    sub_100218CF0(&v10);
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the CIS ID of of the LE CIS request event");
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }
  }
}

void sub_1002C8B54(uint64_t *a1)
{
  v32 = 0;
  v30 = 0u;
  *ptr = 0u;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1173, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (!*(a1 + 15))
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (v2 <= v3)
    {
      goto LABEL_11;
    }

    v4 = *a1;
    v5 = v3 + 1;
    *(a1 + 6) = v3 + 1;
    v6 = *(v4 + v3);
    if (*(v4 + v3))
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (v2 <= v5)
    {
      *(a1 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the BIG handle of the LE create BIG complete event", v30, ptr[0]);
        v16 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }
      }

      return;
    }

    *(a1 + 6) = v3 + 2;
    if ((v2 - (v3 + 2)) <= 2)
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the BIG sync delay of the LE create BIG complete event", v30, ptr[0]);
      v17 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v10 = *(v4 + v5);
      LODWORD(v30) = *(v4 + v3 + 2) | (*(v4 + v3 + 2 + 2) << 16);
      *(a1 + 6) = v3 + 5;
      if ((v2 - (v3 + 5)) <= 2)
      {
        *(a1 + 15) = 1;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get the transport latency of the LE create BIG complete event", v30, ptr[0]);
        v18 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        DWORD1(v30) = *(v4 + (v3 + 5)) | (*(v4 + (v3 + 5) + 2) << 16);
        *(a1 + 6) = v3 + 8;
        if (v2 <= (v3 + 8))
        {
          *(a1 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the PHY of the LE create BIG complete event", v30, ptr[0]);
          v19 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          *(a1 + 6) = v3 + 9;
          BYTE8(v30) = *(v4 + (v3 + 8));
          if (v2 <= (v3 + 9))
          {
            *(a1 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get the NSE of the LE create BIG complete event", v30, ptr[0]);
            v20 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            *(a1 + 6) = v3 + 10;
            BYTE9(v30) = *(v4 + (v3 + 9));
            if (v2 <= (v3 + 10))
            {
              *(a1 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get the BN of the LE create BIG complete event", v30, ptr[0]);
              v21 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              *(a1 + 6) = v3 + 11;
              BYTE10(v30) = *(v4 + (v3 + 10));
              if (v2 <= (v3 + 11))
              {
                *(a1 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get the PTO of the LE create BIG complete event", v30, ptr[0]);
                v22 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                *(a1 + 6) = v3 + 12;
                BYTE11(v30) = *(v4 + (v3 + 11));
                if (v2 <= (v3 + 12))
                {
                  *(a1 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the IRC of the LE create BIG complete event", v30, ptr[0]);
                  v23 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }

                else
                {
                  *(a1 + 6) = v3 + 13;
                  BYTE12(v30) = *(v4 + (v3 + 12));
                  if ((v2 - (v3 + 13)) <= 1)
                  {
                    *(a1 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the maximum PDU of the LE create BIG complete event", v30, ptr[0]);
                    v24 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }
                  }

                  else
                  {
                    HIWORD(v30) = *(v4 + (v3 + 13));
                    *(a1 + 6) = v3 + 15;
                    if ((v2 - (v3 + 15)) <= 1)
                    {
                      *(a1 + 15) = 1;
                      if (!sub_10000C240())
                      {
                        return;
                      }

                      sub_10000AF54("Could not get the ISO interval of the LE create BIG complete event", v30, ptr[0]);
                      v25 = sub_10000C050(0x42u);
                      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                      {
                        return;
                      }
                    }

                    else
                    {
                      LOWORD(ptr[0]) = *(v4 + (v3 + 15));
                      *(a1 + 6) = v3 + 17;
                      if (v2 > (v3 + 17))
                      {
                        v11 = v6;
                        *(a1 + 6) = v3 + 18;
                        BYTE2(ptr[0]) = *(v4 + (v3 + 17));
                        v12 = sub_100007618(2 * BYTE2(ptr[0]), 0x1000040BDFB0063uLL);
                        ptr[1] = v12;
                        v13 = sub_100007618(8 * BYTE2(ptr[0]), 0x2004093837F09uLL);
                        v32 = v13;
                        if (BYTE2(ptr[0]))
                        {
                          if (*(a1 + 14) != 1)
                          {
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1204, "(*pBs).__RWFlag == BYTESTREAM_READ");
                          }

                          v14 = v13;
                          if (*(a1 + 15))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1204, "void _HCIEventHandler_CreateBigComplete(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                          }

                          else
                          {
                            v27 = BYTE2(ptr[0]);
                            v28 = *(a1 + 6);
                            v29 = v12;
                            while (*(a1 + 5) - v28 > 1)
                            {
                              *v29++ = *(*a1 + v28);
                              v28 = *(a1 + 6) + 2;
                              *(a1 + 6) = v28;
                              if (!--v27)
                              {
                                goto LABEL_70;
                              }
                            }
                          }

                          *(a1 + 15) = 1;
                          if (sub_10000C240())
                          {
                            sub_10000AF54("Could not get the LM handle of the LE create BIG complete event", v30, ptr[0]);
                            v15 = sub_10000C050(0x42u);
                            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                            {
                              sub_1000E09C0();
                            }
                          }

                          sub_10000C1E8(v14);
                          v8 = v12;
                          goto LABEL_10;
                        }

LABEL_70:
                        v6 = v11;
                        v7 = v10;
LABEL_7:
                        sub_10018396C(v6, v7, &v30);
                        if (ptr[1])
                        {
                          sub_10000C1E8(ptr[1]);
                        }

                        v8 = v32;
                        if (!v32)
                        {
                          return;
                        }

LABEL_10:
                        sub_10000C1E8(v8);
                        return;
                      }

                      *(a1 + 15) = 1;
                      if (!sub_10000C240())
                      {
                        return;
                      }

                      sub_10000AF54("Could not get the number of BIS of the LE create BIG complete event", v30, ptr[0]);
                      v26 = sub_10000C050(0x42u);
                      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                      {
                        return;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_1000E09C0();
    return;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1173, "void _HCIEventHandler_CreateBigComplete(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
LABEL_11:
  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get status of LE create BIG complete event", v30, ptr[0]);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      sub_1000E09C0();
    }
  }
}

void sub_1002C9208(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1234, "void _HCIEventHandler_TerminateBigComplete(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v2 - v3 == 2)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1240, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get BIG handle of LE terminate BIG complete event");
          v8 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v4 = *a1;
        *(a1 + 6) = v3 + 1;
        if (v2 <= v3 + 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get reason of LE terminate BIG complete event");
            v9 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v5 = *(v4 + v3);
          *(a1 + 6) = v3 + 2;
          v6 = *(v4 + v3 + 1);

          sub_100183C9C(0, v5, v6);
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid terminate BIG complete event packet size : %d, expecting at least %d", v1, 2);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002C93B4(uint64_t *a1)
{
  v29 = 0u;
  *ptr = 0u;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1269, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (!*(a1 + 15))
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (v2 <= v3)
    {
      goto LABEL_11;
    }

    v4 = *a1;
    v5 = v3 + 1;
    *(a1 + 6) = v3 + 1;
    v6 = *(v4 + v3);
    if (*(v4 + v3))
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (v2 <= v5)
    {
      *(a1 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the BIG handle of the LE BIG Sync Established event");
        v14 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }
      }

      return;
    }

    *(a1 + 6) = v3 + 2;
    if ((v2 - (v3 + 2)) <= 2)
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the transport latency of the LE BIG Sync Established event");
      v15 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v10 = *(v4 + v5);
      LODWORD(v29) = *(v4 + v3 + 2) | (*(v4 + v3 + 2 + 2) << 16);
      *(a1 + 6) = v3 + 5;
      if (v2 <= (v3 + 5))
      {
        *(a1 + 15) = 1;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get the NSE of the LE BIG Sync Established event");
        v16 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        *(a1 + 6) = v3 + 6;
        BYTE4(v29) = *(v4 + (v3 + 5));
        if (v2 <= (v3 + 6))
        {
          *(a1 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the BN of the LE BIG Sync Established event");
          v17 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          *(a1 + 6) = v3 + 7;
          BYTE5(v29) = *(v4 + (v3 + 6));
          if (v2 <= (v3 + 7))
          {
            *(a1 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get the PTO of the LE BIG Sync Established event");
            v18 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            *(a1 + 6) = v3 + 8;
            BYTE6(v29) = *(v4 + (v3 + 7));
            if (v2 <= (v3 + 8))
            {
              *(a1 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get the IRC of the LE BIG Sync Established event");
              v19 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              *(a1 + 6) = v3 + 9;
              BYTE7(v29) = *(v4 + (v3 + 8));
              if ((v2 - (v3 + 9)) <= 1)
              {
                *(a1 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get the maximum PDU of the LE BIG Sync Established event");
                v20 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                WORD4(v29) = *(v4 + (v3 + 9));
                *(a1 + 6) = v3 + 11;
                if ((v2 - (v3 + 11)) <= 1)
                {
                  *(a1 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the ISO interval of the LE BIG Sync Established event");
                  v21 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }

                else
                {
                  WORD5(v29) = *(v4 + (v3 + 11));
                  *(a1 + 6) = v3 + 13;
                  if (v2 > (v3 + 13))
                  {
                    v27 = v6;
                    v28 = v10;
                    *(a1 + 6) = v3 + 14;
                    BYTE12(v29) = *(v4 + (v3 + 13));
                    v11 = sub_100007618(2 * BYTE12(v29), 0x1000040BDFB0063uLL);
                    ptr[0] = v11;
                    v12 = sub_100007618(8 * BYTE12(v29), 0x2004093837F09uLL);
                    ptr[1] = v12;
                    if (BYTE12(v29))
                    {
                      v26 = v12;
                      if (*(a1 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1297, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      if (*(a1 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1297, "void _HCIEventHandler_BigSyncEstablished(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                      }

                      else
                      {
                        v23 = BYTE12(v29);
                        v24 = *(a1 + 6);
                        v25 = v11;
                        while (*(a1 + 5) - v24 > 1)
                        {
                          *v25++ = *(*a1 + v24);
                          v24 = *(a1 + 6) + 2;
                          *(a1 + 6) = v24;
                          if (!--v23)
                          {
                            goto LABEL_62;
                          }
                        }
                      }

                      *(a1 + 15) = 1;
                      if (sub_10000C240())
                      {
                        sub_10000AF54("Could not get the LM handle of the LE BIG Sync Established event", v26);
                        v13 = sub_10000C050(0x42u);
                        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000E09C0();
                        }
                      }

                      sub_10000C1E8(v26);
                      v8 = v11;
                      goto LABEL_10;
                    }

LABEL_62:
                    v6 = v27;
                    v7 = v28;
LABEL_7:
                    sub_100183E2C(v6, v7, &v29);
                    if (ptr[0])
                    {
                      sub_10000C1E8(ptr[0]);
                    }

                    v8 = ptr[1];
                    if (!ptr[1])
                    {
                      return;
                    }

LABEL_10:
                    sub_10000C1E8(v8);
                    return;
                  }

                  *(a1 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the number of BIS of the LE BIG Sync Established event");
                  v22 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_1000E09C0();
    return;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1269, "void _HCIEventHandler_BigSyncEstablished(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
LABEL_11:
  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get status of LE BIG Sync Established event");
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      sub_1000E09C0();
    }
  }
}

void sub_1002C9984(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1327, "void _HCIEventHandler_BigSyncLost(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v2 - v3 == 2)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1333, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get BIG handle of LE BIG sync lost event");
          v8 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v4 = *a1;
        *(a1 + 6) = v3 + 1;
        if (v2 <= v3 + 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get reason of LE BIG sync lost event");
            v9 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v5 = *(v4 + v3);
          *(a1 + 6) = v3 + 2;
          v6 = *(v4 + v3 + 1);

          sub_100184150(v5, v6);
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid BIG sync lost event packet size : %d, expecting at least %d", v1, 2);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002C9B30(uint64_t a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1363, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1363, "void _HCIEventHandler_BigInfoAdvReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    goto LABEL_18;
  }

  v2 = *(a1 + 10);
  v3 = *(a1 + 12);
  if ((v2 - v3) <= 1)
  {
LABEL_18:
    *(a1 + 15) = 1;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not get the sync handle of the LE BIGInfo Advertising Report event");
      v4 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  *(a1 + 12) = v3 + 2;
  if (v2 <= (v3 + 2))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the number of BIS of the LE BIGInfo Advertising Report event");
    v5 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_57:
    sub_1000E09C0();
    return;
  }

  *(a1 + 12) = v3 + 3;
  if (v2 <= (v3 + 3))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the NSE of the LE BIGInfo Advertising Report event");
    v6 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 4;
  if ((v2 - (v3 + 4)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the ISO interval of the LE BIGInfo Advertising Report event");
    v7 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 6;
  if (v2 <= (v3 + 6))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the BN of the LE BIGInfo Advertising Report event");
    v8 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 7;
  if (v2 <= (v3 + 7))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the PTO of the LE BIGInfo Advertising Report event");
    v9 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 8;
  if (v2 <= (v3 + 8))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the IRC of the LE BIGInfo Advertising Report event");
    v10 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 9;
  if ((v2 - (v3 + 9)) < 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the maximum PDU of the LE BIGInfo Advertising Report event");
    v11 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 11;
  if ((v2 - (v3 + 11)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the SDU interval of the LE BIGInfo Advertising Report event");
    v12 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 14;
  if ((v2 - (v3 + 14)) < 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the maximum SDU of the LE BIGInfo Advertising Report event");
    v13 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 16;
  if (v2 <= (v3 + 16))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the PHY of the LE BIGInfo Advertising Report event");
    v14 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 17;
  if (v2 <= (v3 + 17))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the framing of the LE BIGInfo Advertising Report event");
    v15 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 18;
  if (v2 > (v3 + 18))
  {
    *(a1 + 12) = v3 + 19;
    sub_10018421C();
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the encryption of the LE BIGInfo Advertising Report event");
    v16 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }
  }
}

void sub_1002CA0EC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1425, "void LE_HCIEventHandler_CsReadRemoteSupportedCapabilities(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v2 - v3 == 25)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1454, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *a1;
      v5 = *(*a1 + v3);
      *(a1 + 6) = v3 + 2;
      if (v2 <= (v3 + 2))
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the read remote used features event");
          v29 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        *(a1 + 6) = v3 + 3;
        if (v2 <= (v3 + 3))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1458, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v6 = *(v4 + (v3 + 2));
        *(a1 + 6) = v3 + 4;
        if ((v2 - (v3 + 4)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1459, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v7 = *(v4 + (v3 + 3));
        v8 = *(v4 + (v3 + 4));
        *(a1 + 6) = v3 + 6;
        if (v2 <= (v3 + 6))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1460, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *(a1 + 6) = v3 + 7;
        if (v2 <= (v3 + 7))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1461, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v9 = *(v4 + (v3 + 6));
        *(a1 + 6) = v3 + 8;
        if (v2 <= (v3 + 8))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1462, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v10 = *(v4 + (v3 + 7));
        *(a1 + 6) = v3 + 9;
        if (v2 <= (v3 + 9))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1463, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v11 = *(v4 + (v3 + 8));
        *(a1 + 6) = v3 + 10;
        if (v2 <= (v3 + 10))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1464, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v12 = *(v4 + (v3 + 9));
        *(a1 + 6) = v3 + 11;
        if (v2 <= (v3 + 11))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1465, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v13 = *(v4 + (v3 + 10));
        *(a1 + 6) = v3 + 12;
        if (v2 <= (v3 + 12))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1466, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v14 = *(v4 + (v3 + 11));
        *(a1 + 6) = v3 + 13;
        if ((v2 - (v3 + 13)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1467, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v15 = *(v4 + (v3 + 12));
        v16 = *(v4 + (v3 + 13));
        *(a1 + 6) = v3 + 15;
        if ((v2 - (v3 + 15)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1468, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v17 = *(v4 + (v3 + 15));
        *(a1 + 6) = v3 + 17;
        if (v2 <= (v3 + 17))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1469, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *(a1 + 6) = v3 + 18;
        if ((v2 - (v3 + 18)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1470, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v18 = *(v4 + (v3 + 17));
        v19 = *(v4 + (v3 + 18));
        *(a1 + 6) = v3 + 20;
        if ((v2 - (v3 + 20)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1471, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v20 = *(v4 + (v3 + 20));
        *(a1 + 6) = v3 + 22;
        if ((v2 - (v3 + 22)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1472, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v21 = *(v4 + (v3 + 22));
        *(a1 + 6) = v3 + 24;
        if ((v2 - (v3 + 24)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1473, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v22 = *(v4 + (v3 + 24));
        *(a1 + 6) = v3 + 26;
        if ((v2 - (v3 + 26)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1474, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v23 = *(v4 + (v3 + 26));
        *(a1 + 6) = v3 + 28;
        if (v2 <= (v3 + 28))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1475, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v31 = v16;
        v32 = v15;
        v33 = v14;
        v34 = v13;
        v38 = v11;
        v39 = v12;
        v36 = v9;
        v37 = v10;
        v30 = v8;
        v35 = v7;
        *(a1 + 6) = v3 + 29;
        if (v2 <= (v3 + 29))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1476, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v24 = v5;
        v25 = *(v4 + (v3 + 28));
        *(a1 + 6) = v3 + 30;
        v26 = *(v4 + (v3 + 29));
        v27 = sub_100022244(v6);
        sub_1002C4208(v24, v27, v35, v30, v36, v37, v38, v39, v34, v33, v32, v31, v17, v18, v19, v20, v21, v22, v23, v25, v26);
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the capabilites packet : %d expecting at least %d", v1, 25);
    v28 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      sub_1000E09C0();
    }
  }
}

void sub_1002CA678(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1483, "void LE_HCIEventHandler_CsReadRemoteFaeTable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    if (v2 - v3 == 75)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1494, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *a1;
      v5 = *(*a1 + v3);
      *(a1 + 6) = v3 + 2;
      if (v2 <= (v3 + 2))
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the read remote used features event");
          v10 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        *(a1 + 6) = v3 + 3;
        v6 = *(v4 + (v3 + 2));
        if ((v2 - (v3 + 3)) < 72)
        {
          *(a1 + 15) = 1;
        }

        else
        {
          v7 = 0;
          v8 = v4 + (v3 + 3);
          do
          {
            *(v12 + v7) = *(v8 + v7);
            ++v7;
          }

          while (v7 != 72);
          *(a1 + 6) = v3 + 75;
        }

        v11 = sub_1000ABB80(v5);
        sub_1002CFBA4(v6, v11, v12);
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the capabilites packet : %d expecting  %d", v1, 75);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002CA850(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1506, "void LE_HCIEventHandler_CsSecurityEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v2 - v3 == 3)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1516, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *a1;
      v5 = (*a1 + v3);
      v6 = *v5;
      v7 = v5[1];
      *(a1 + 6) = v3 + 2;
      if (v2 <= (v3 + 2))
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the read remote used features event");
          v11 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        *(a1 + 6) = v3 + 3;
        v8 = *(v4 + (v3 + 2));
        v9 = sub_1000ABB80(v6 | (v7 << 8));

        sub_1002CFC28(v8, v9);
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data for security enable complete event : %d expecting at least %d", v1, 4);
    v10 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      sub_1000E09C0();
    }
  }
}

void sub_1002CA9C8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1527, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v1 = 0;
    goto LABEL_31;
  }

  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v1 = v3 - v4;
  v74 = 0;
  v73 = 0;
  if (v3 - v4 == 33)
  {
    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1557, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (v3 <= v4)
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the status of the read remote used features event");
      v36 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v5 = *a1;
      *(a1 + 6) = v4 + 1;
      if ((v3 - (v4 + 1)) > 1)
      {
        v71 = *(v5 + v4 + 1);
        v72 = *(v5 + v4);
        *(a1 + 6) = v4 + 3;
        if (v3 <= (v4 + 3))
        {
          *(a1 + 15) = 1;
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1562, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
          v38 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v38 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1563, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v70 = 0;
        }

        else
        {
          *(a1 + 6) = v4 + 4;
          v70 = *(v5 + (v4 + 3));
          if (v3 > (v4 + 4))
          {
            *(a1 + 6) = v4 + 5;
            v69 = *(v5 + (v4 + 4));
            if (*(a1 + 5) > (v4 + 5))
            {
              v6 = *a1;
              *(a1 + 6) = v4 + 6;
              v68 = *(v6 + (v4 + 5));
              if (*(a1 + 5) > (v4 + 6))
              {
                v7 = *a1;
                *(a1 + 6) = v4 + 7;
                v67 = *(v7 + (v4 + 6));
                if (*(a1 + 5) > (v4 + 7))
                {
                  v8 = *a1;
                  *(a1 + 6) = v4 + 8;
                  v66 = *(v8 + (v4 + 7));
                  if (*(a1 + 5) > (v4 + 8))
                  {
                    v9 = *a1;
                    *(a1 + 6) = v4 + 9;
                    v65 = *(v9 + (v4 + 8));
                    if (*(a1 + 5) > (v4 + 9))
                    {
                      v10 = *a1;
                      *(a1 + 6) = v4 + 10;
                      v64 = *(v10 + (v4 + 9));
                      if (*(a1 + 5) > (v4 + 10))
                      {
                        v11 = *a1;
                        *(a1 + 6) = v4 + 11;
                        v63 = *(v11 + (v4 + 10));
                        if (*(a1 + 5) > (v4 + 11))
                        {
                          v12 = *a1;
                          *(a1 + 6) = v4 + 12;
                          v62 = *(v12 + (v4 + 11));
                          if (*(a1 + 5) > (v4 + 12))
                          {
                            v13 = *a1;
                            *(a1 + 6) = v4 + 13;
                            v61 = *(v13 + (v4 + 12));
                            if (*(a1 + 5) > (v4 + 13))
                            {
                              v14 = *a1;
                              *(a1 + 6) = v4 + 14;
                              v60 = *(v14 + (v4 + 13));
                              if (*(a1 + 5) - (v4 + 14) >= 10)
                              {
                                v15 = 0;
                                v16 = v14 + (v4 + 14);
                                do
                                {
                                  *(&v73 + v15) = *(v16 + v15);
                                  ++v15;
                                }

                                while (v15 != 10);
                                *(a1 + 6) = v4 + 24;
                                if (*(a1 + 5) > (v4 + 24))
                                {
                                  v17 = *a1;
                                  *(a1 + 6) = v4 + 25;
                                  v18 = *(v17 + (v4 + 24));
                                  if (*(a1 + 5) > (v4 + 25))
                                  {
                                    v19 = *a1;
                                    *(a1 + 6) = v4 + 26;
                                    v20 = *(v19 + (v4 + 25));
                                    if (*(a1 + 5) > (v4 + 26))
                                    {
                                      v21 = *a1;
                                      *(a1 + 6) = v4 + 27;
                                      v22 = *(v21 + (v4 + 26));
                                      if (*(a1 + 5) > (v4 + 27))
                                      {
                                        v23 = *a1;
                                        *(a1 + 6) = v4 + 28;
                                        v24 = *(v23 + (v4 + 27));
                                        if (*(a1 + 5) > (v4 + 28))
                                        {
                                          v25 = *a1;
                                          *(a1 + 6) = v4 + 29;
                                          v26 = *(v25 + (v4 + 28));
                                          if (*(a1 + 5) > (v4 + 29))
                                          {
                                            v27 = *a1;
                                            *(a1 + 6) = v4 + 30;
                                            v28 = *(v27 + (v4 + 29));
                                            if (*(a1 + 5) > (v4 + 30))
                                            {
                                              v29 = *a1;
                                              *(a1 + 6) = v4 + 31;
                                              v30 = *(v29 + (v4 + 30));
                                              if (*(a1 + 5) > (v4 + 31))
                                              {
                                                v31 = *a1;
                                                *(a1 + 6) = v4 + 32;
                                                v32 = *(v31 + (v4 + 31));
                                                if (*(a1 + 5) > (v4 + 32))
                                                {
                                                  v33 = *a1;
                                                  *(a1 + 6) = v4 + 33;
                                                  v34 = *(v33 + (v4 + 32));
LABEL_81:
                                                  v57 = sub_1000ABB80(v71);
                                                  HIBYTE(v59) = v32;
                                                  BYTE6(v59) = v30;
                                                  BYTE5(v59) = v28;
                                                  BYTE4(v59) = v26;
                                                  BYTE3(v59) = v24;
                                                  BYTE2(v59) = v22;
                                                  BYTE1(v59) = v20;
                                                  LOBYTE(v59) = v18;
                                                  HIBYTE(v58) = v63;
                                                  LOBYTE(v58) = v64;
                                                  sub_1002CFCA4(v72, v57, v70, v69, v68, v67, v66, v65, v58, v62, v61, v60, &v73, v59, v34);
                                                  return;
                                                }

LABEL_80:
                                                v34 = 0;
                                                *(a1 + 15) = 1;
                                                goto LABEL_81;
                                              }

                                              *(a1 + 15) = 1;
LABEL_79:
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1581, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                                              v32 = 0;
                                              goto LABEL_80;
                                            }

                                            *(a1 + 15) = 1;
LABEL_77:
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1580, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                                            v56 = *(a1 + 14);
                                            *(a1 + 15) = 1;
                                            if (v56 != 1)
                                            {
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1581, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                            }

                                            v30 = 0;
                                            goto LABEL_79;
                                          }

                                          *(a1 + 15) = 1;
LABEL_75:
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1579, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                                          v55 = *(a1 + 14);
                                          *(a1 + 15) = 1;
                                          if (v55 != 1)
                                          {
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1580, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                          }

                                          v28 = 0;
                                          goto LABEL_77;
                                        }

                                        *(a1 + 15) = 1;
LABEL_73:
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1578, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                                        v54 = *(a1 + 14);
                                        *(a1 + 15) = 1;
                                        if (v54 != 1)
                                        {
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1579, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                        }

                                        v26 = 0;
                                        goto LABEL_75;
                                      }

                                      *(a1 + 15) = 1;
LABEL_71:
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1577, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                                      v53 = *(a1 + 14);
                                      *(a1 + 15) = 1;
                                      if (v53 != 1)
                                      {
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1578, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                      }

                                      v24 = 0;
                                      goto LABEL_73;
                                    }

                                    *(a1 + 15) = 1;
LABEL_69:
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1576, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                                    v52 = *(a1 + 14);
                                    *(a1 + 15) = 1;
                                    if (v52 != 1)
                                    {
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1577, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                    }

                                    v22 = 0;
                                    goto LABEL_71;
                                  }

                                  *(a1 + 15) = 1;
LABEL_67:
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1575, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                                  v51 = *(a1 + 14);
                                  *(a1 + 15) = 1;
                                  if (v51 != 1)
                                  {
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1576, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                  }

                                  v20 = 0;
                                  goto LABEL_69;
                                }

                                *(a1 + 15) = 1;
LABEL_65:
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1574, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                                v50 = *(a1 + 14);
                                *(a1 + 15) = 1;
                                if (v50 != 1)
                                {
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1575, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                }

                                v18 = 0;
                                goto LABEL_67;
                              }

                              *(a1 + 15) = 1;
LABEL_64:
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1573, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                              v49 = *(a1 + 14);
                              *(a1 + 15) = 1;
                              if (v49 != 1)
                              {
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1574, "(*pBs).__RWFlag == BYTESTREAM_READ");
                              }

                              goto LABEL_65;
                            }

                            *(a1 + 15) = 1;
LABEL_62:
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1572, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                            v48 = *(a1 + 14);
                            *(a1 + 15) = 1;
                            if (v48 != 1)
                            {
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1573, "(*pBs).__RWFlag == BYTESTREAM_READ");
                            }

                            v60 = 0;
                            goto LABEL_64;
                          }

                          *(a1 + 15) = 1;
LABEL_60:
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1571, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                          v47 = *(a1 + 14);
                          *(a1 + 15) = 1;
                          if (v47 != 1)
                          {
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1572, "(*pBs).__RWFlag == BYTESTREAM_READ");
                          }

                          v61 = 0;
                          goto LABEL_62;
                        }

                        *(a1 + 15) = 1;
LABEL_58:
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1570, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                        v46 = *(a1 + 14);
                        *(a1 + 15) = 1;
                        if (v46 != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1571, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        v62 = 0;
                        goto LABEL_60;
                      }

                      *(a1 + 15) = 1;
LABEL_56:
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1569, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                      v45 = *(a1 + 14);
                      *(a1 + 15) = 1;
                      if (v45 != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1570, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      v63 = 0;
                      goto LABEL_58;
                    }

                    *(a1 + 15) = 1;
LABEL_54:
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1568, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                    v44 = *(a1 + 14);
                    *(a1 + 15) = 1;
                    if (v44 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1569, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    v64 = 0;
                    goto LABEL_56;
                  }

                  *(a1 + 15) = 1;
LABEL_52:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1567, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                  v43 = *(a1 + 14);
                  *(a1 + 15) = 1;
                  if (v43 != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1568, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  v65 = 0;
                  goto LABEL_54;
                }

                *(a1 + 15) = 1;
LABEL_50:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1566, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                v42 = *(a1 + 14);
                *(a1 + 15) = 1;
                if (v42 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1567, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                v66 = 0;
                goto LABEL_52;
              }

              *(a1 + 15) = 1;
LABEL_48:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1565, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
              v41 = *(a1 + 14);
              *(a1 + 15) = 1;
              if (v41 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1566, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              v67 = 0;
              goto LABEL_50;
            }

            *(a1 + 15) = 1;
LABEL_46:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1564, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
            v40 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v40 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1565, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v68 = 0;
            goto LABEL_48;
          }

          *(a1 + 15) = 1;
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1563, "void LE_HCIEventHandler_CsCreateConfig(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
        v39 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v39 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1564, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v69 = 0;
        goto LABEL_46;
      }

      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the connection handle of the read remote used features event");
      v37 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    sub_1000E09C0();
    return;
  }

LABEL_31:
  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the cs Create Config Event : %d expecting  %d", v1, 33);
    v35 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002CB564(uint64_t *a1)
{
  if (!*(a1 + 15))
  {
    v3 = *(a1 + 5);
    v4 = *(a1 + 6);
    v1 = v3 - v4;
    if (v3 - v4 != 19)
    {
      goto LABEL_18;
    }

    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1614, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (v3 <= v4)
    {
      *(a1 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the status of the read remote used features event");
        v26 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }
      }

      return;
    }

    v5 = *a1;
    *(a1 + 6) = v4 + 1;
    if ((v3 - (v4 + 1)) <= 1)
    {
      *(a1 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the connection handle of the read remote used features event");
        v27 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }
      }

      return;
    }

    v6 = *(v5 + v4);
    v7 = *(v5 + v4 + 1);
    *(a1 + 6) = v4 + 3;
    if (v3 <= (v4 + 3))
    {
      *(a1 + 15) = 1;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1619, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
      v28 = *(a1 + 14);
      *(a1 + 15) = 1;
      if (v28 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1620, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v8 = 0;
    }

    else
    {
      *(a1 + 6) = v4 + 4;
      v8 = *(v5 + (v4 + 3));
      if (v3 > (v4 + 4))
      {
        *(a1 + 6) = v4 + 5;
        v9 = *(v5 + (v4 + 4));
        if (*(a1 + 5) > (v4 + 5))
        {
          v10 = *a1;
          *(a1 + 6) = v4 + 6;
          v11 = *(v10 + (v4 + 5));
          if (*(a1 + 5) > (v4 + 6))
          {
            v12 = *a1;
            *(a1 + 6) = v4 + 7;
            v13 = *(v12 + (v4 + 6));
            if (*(a1 + 5) > (v4 + 7))
            {
              v14 = *a1;
              *(a1 + 6) = v4 + 8;
              v15 = *(v14 + (v4 + 7));
              if (*(a1 + 5) > (v4 + 8))
              {
                v16 = *a1;
                *(a1 + 6) = v4 + 9;
                v17 = *(v16 + (v4 + 8));
                if (*(a1 + 5) > (v4 + 9))
                {
                  v18 = *a1;
                  *(a1 + 6) = v4 + 10;
                  v19 = *(v18 + (v4 + 9));
                  if (*(a1 + 5) > (v4 + 10))
                  {
                    v20 = *a1;
                    *(a1 + 6) = v4 + 11;
                    v38 = *(v20 + (v4 + 10));
                    v39 = v19;
                    if (*(a1 + 5) > (v4 + 11))
                    {
                      v40 = v17;
                      v21 = *a1;
                      *(a1 + 6) = v4 + 12;
                      v22 = *(v21 + (v4 + 11));
                      if (*(a1 + 5) > (v4 + 12))
                      {
                        v23 = *a1;
                        *(a1 + 6) = v4 + 13;
                        v24 = *(v23 + (v4 + 12));
LABEL_47:
                        v36 = sub_1000ABB80(v7);
                        HIBYTE(v37) = v24;
                        BYTE2(v37) = v22;
                        BYTE1(v37) = v38;
                        LOBYTE(v37) = v39;
                        sub_1002CFDF8(v6, v36, v8, v9, v11, v13, v15, v40, v37);
                        return;
                      }

LABEL_46:
                      v24 = 0;
                      *(a1 + 15) = 1;
                      goto LABEL_47;
                    }

                    *(a1 + 15) = 1;
LABEL_45:
                    v40 = v17;
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1627, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                    v22 = 0;
                    goto LABEL_46;
                  }

                  *(a1 + 15) = 1;
LABEL_43:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1626, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                  v35 = *(a1 + 14);
                  *(a1 + 15) = 1;
                  if (v35 != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1627, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  v38 = 0;
                  v39 = v19;
                  goto LABEL_45;
                }

                *(a1 + 15) = 1;
LABEL_41:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1625, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                v34 = *(a1 + 14);
                *(a1 + 15) = 1;
                if (v34 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1626, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                v19 = 0;
                goto LABEL_43;
              }

              *(a1 + 15) = 1;
LABEL_39:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1624, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
              v33 = *(a1 + 14);
              *(a1 + 15) = 1;
              if (v33 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1625, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              v17 = 0;
              goto LABEL_41;
            }

            *(a1 + 15) = 1;
LABEL_37:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1623, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
            v32 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v32 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1624, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v15 = 0;
            goto LABEL_39;
          }

          *(a1 + 15) = 1;
LABEL_35:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1622, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
          v31 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v31 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1623, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v13 = 0;
          goto LABEL_37;
        }

        *(a1 + 15) = 1;
LABEL_33:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1621, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
        v30 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v30 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1622, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v11 = 0;
        goto LABEL_35;
      }

      *(a1 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1620, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v29 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v29 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1621, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v9 = 0;
    goto LABEL_33;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1593, "void LE_HCIEventHandler_CsProcedureEnable(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
  v1 = 0;
LABEL_18:
  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the cs Procedure Enable Event : %d expecting  %d", v1, 19);
    v25 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      sub_1000E09C0();
    }
  }
}

void sub_1002CBB64(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  memset(v55, 0, sizeof(v55));
  bzero(v54, 0x6400uLL);
  if (*(v1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1668, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (!*(v1 + 15))
  {
    v2 = *(v1 + 12);
    if (*(v1 + 10) - v2 <= 1)
    {
      goto LABEL_9;
    }

    v3 = *(*v1 + v2);
    *(v1 + 12) = v2 + 2;
    v4 = sub_1000ABB80(v3);
    if (*(v1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1671, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(v1 + 15))
    {
      v5 = v4;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1671, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
      v6 = *(v1 + 14);
      *(v1 + 15) = 1;
      if (v6 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1672, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }
    }

    else
    {
      v8 = *(v1 + 12);
      if (*(v1 + 10) > v8)
      {
        v9 = *v1;
        *(v1 + 12) = v8 + 1;
        v10 = *(v9 + v8);
        if (*(v1 + 10) - (v8 + 1) > 1)
        {
          v11 = *(*v1 + v8 + 1);
          *(v1 + 12) = v8 + 3;
          if (*(v1 + 10) - (v8 + 3) > 1)
          {
            v12 = *(*v1 + (v8 + 3));
            *(v1 + 12) = v8 + 5;
            if (*(v1 + 10) - (v8 + 5) > 1)
            {
              v13 = *(*v1 + (v8 + 5));
              *(v1 + 12) = v8 + 7;
              if (*(v1 + 10) > (v8 + 7))
              {
                v14 = *v1;
                *(v1 + 12) = v8 + 8;
                v15 = *(v14 + (v8 + 7));
                if (*(v1 + 10) > (v8 + 8))
                {
                  v16 = *v1;
                  *(v1 + 12) = v8 + 9;
                  v17 = *(v16 + (v8 + 8));
                  if (*(v1 + 10) > (v8 + 9))
                  {
                    v18 = *v1;
                    *(v1 + 12) = v8 + 10;
                    v19 = *(v18 + (v8 + 9));
                    if (*(v1 + 10) > (v8 + 10))
                    {
                      v20 = *v1;
                      *(v1 + 12) = v8 + 11;
                      v21 = *(v20 + (v8 + 10));
                      if (*(v1 + 10) > (v8 + 11))
                      {
                        v22 = *v1;
                        *(v1 + 12) = v8 + 12;
                        v23 = *(v22 + (v8 + 11));
                        if (*(v1 + 10) > (v8 + 12))
                        {
                          v24 = *v1;
                          v25 = v8 + 13;
                          *(v1 + 12) = v8 + 13;
                          v26 = *(v24 + (v8 + 12));
                          if (v26 > 0xA0)
                          {
                            if (sub_10000C240())
                            {
                              sub_10000AF54("numStepsReported > MAX_NUM_STEPS_REPORTED aborting, numStepsReported=%d", v26);
                              v27 = sub_10000C050(0x42u);
                              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_82;
                              }
                            }

                            return;
                          }

                          v36 = v4;
                          if (*(v24 + (v8 + 12)))
                          {
                            if (*(v1 + 14) != 1)
                            {
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1689, "(*pBs).__RWFlag == BYTESTREAM_READ");
                            }

                            v37 = 0;
                            v38 = 0;
                            v39 = *(v1 + 10);
                            while (v39 > v25)
                            {
                              v40 = *v1;
                              *(v1 + 12) = v25 + 1;
                              *(v57 + v37) = *(v40 + v25);
                              if (v39 <= (v25 + 1))
                              {
                                *(v1 + 15) = 1;
                                if (!sub_10000C240())
                                {
                                  return;
                                }

                                sub_10000AF54("Could not get the stepChannel[i] of the for the cs sub event results");
                                v49 = sub_10000C050(0x42u);
                                if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                                {
                                  return;
                                }

                                goto LABEL_82;
                              }

                              v41 = v25 + 2;
                              *(v1 + 12) = v41;
                              *(v56 + v37) = *(v40 + v25 + 1);
                              if (v39 <= v41)
                              {
                                *(v1 + 15) = 1;
                                if (!sub_10000C240())
                                {
                                  return;
                                }

                                sub_10000AF54("Could not get the stepDataLength[i] of the for the cs sub event results");
                                v50 = sub_10000C050(0x42u);
                                if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                {
                                  return;
                                }

                                goto LABEL_82;
                              }

                              v42 = v25 + 3;
                              *(v1 + 12) = v42;
                              v43 = *(v40 + v41);
                              *(v55 + v37) = v43;
                              if (v43 >= 0xA1)
                              {
                                if (!sub_10000C240())
                                {
                                  return;
                                }

                                sub_10000AF54("stepDataLength[i] > MAX_NUM_STEPS_REPORTED, aborting");
                                v51 = sub_10000C050(0x42u);
                                if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                                {
                                  return;
                                }

                                goto LABEL_82;
                              }

                              if ((v39 - v42) < v43)
                              {
                                *(v1 + 15) = 1;
                                if (!sub_10000C240())
                                {
                                  return;
                                }

                                sub_10000AF54("Could not get the stepData of the for the cs sub event results");
                                v52 = sub_10000C050(0x42u);
                                if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                                {
                                  return;
                                }

                                goto LABEL_82;
                              }

                              if (v43)
                              {
                                v44 = &v54[v38];
                                v45 = &v44[v43];
                                v46 = (v40 + v42);
                                do
                                {
                                  v47 = *v46++;
                                  *v44++ = v47;
                                }

                                while (v44 < v45);
                              }

                              v25 = v42 + v43;
                              *(v1 + 12) = v25;
                              v38 += v43;
                              if (v26 <= ++v37)
                              {
                                goto LABEL_67;
                              }
                            }

                            *(v1 + 15) = 1;
                            if (!sub_10000C240())
                            {
                              return;
                            }

                            sub_10000AF54("Could not get the stepMode[i] of the for the cs sub event results");
                            v48 = sub_10000C050(0x42u);
                            if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                            {
                              return;
                            }

                            goto LABEL_82;
                          }

LABEL_67:
                          v4 = v36;
LABEL_45:
                          HIBYTE(v53) = v23;
                          LOBYTE(v53) = v21;
                          sub_1002CFED0(v4, v10, v11, v12, v13, v15, v17, v19, v53, v26, v57, v56, v55, v54);
                          return;
                        }

LABEL_44:
                        LOBYTE(v26) = 0;
                        *(v1 + 15) = 1;
                        goto LABEL_45;
                      }

                      v5 = v4;
                      *(v1 + 15) = 1;
LABEL_43:
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1680, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                      v23 = 0;
                      v4 = v5;
                      goto LABEL_44;
                    }

                    v5 = v4;
                    *(v1 + 15) = 1;
LABEL_41:
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1679, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                    v35 = *(v1 + 14);
                    *(v1 + 15) = 1;
                    if (v35 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1680, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    v21 = 0;
                    goto LABEL_43;
                  }

                  v5 = v4;
                  *(v1 + 15) = 1;
LABEL_39:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1678, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                  v34 = *(v1 + 14);
                  *(v1 + 15) = 1;
                  if (v34 != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1679, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  v19 = 0;
                  goto LABEL_41;
                }

                v5 = v4;
                *(v1 + 15) = 1;
LABEL_37:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1677, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
                v33 = *(v1 + 14);
                *(v1 + 15) = 1;
                if (v33 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1678, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                v17 = 0;
                goto LABEL_39;
              }

              v5 = v4;
              *(v1 + 15) = 1;
LABEL_35:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1676, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
              v32 = *(v1 + 14);
              *(v1 + 15) = 1;
              if (v32 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1677, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              v15 = 0;
              goto LABEL_37;
            }

            v5 = v4;
            *(v1 + 15) = 1;
LABEL_33:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1675, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
            v31 = *(v1 + 14);
            *(v1 + 15) = 1;
            if (v31 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1676, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v13 = 0;
            goto LABEL_35;
          }

          v5 = v4;
          *(v1 + 15) = 1;
LABEL_31:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1674, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
          v30 = *(v1 + 14);
          *(v1 + 15) = 1;
          if (v30 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1675, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v12 = 0;
          goto LABEL_33;
        }

        v5 = v4;
        *(v1 + 15) = 1;
LABEL_29:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1673, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
        v29 = *(v1 + 14);
        *(v1 + 15) = 1;
        if (v29 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1674, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v11 = 0;
        goto LABEL_31;
      }

      v5 = v4;
      *(v1 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1672, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v28 = *(v1 + 14);
    *(v1 + 15) = 1;
    if (v28 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1673, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v10 = 0;
    goto LABEL_29;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1668, "void LE_HCIEventHandler_CsSubEventResult(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
LABEL_9:
  *(v1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the connection handle of the read remote used features event");
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_82:
      sub_1000E09C0();
    }
  }
}

void sub_1002CC4CC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  memset(v45, 0, sizeof(v45));
  memset(v44, 0, sizeof(v44));
  memset(v43, 0, sizeof(v43));
  bzero(v42, 0x6400uLL);
  if (*(v1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1735, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (!*(v1 + 15))
  {
    v2 = *(v1 + 12);
    if (*(v1 + 10) - v2 <= 1)
    {
      goto LABEL_9;
    }

    v3 = *(*v1 + v2);
    *(v1 + 12) = v2 + 2;
    v4 = sub_1000ABB80(v3);
    if (*(v1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1738, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v5 = v4;
    if (*(v1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1738, "void LE_HCIEventHandler_CsSubEventResultContinue(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
      v6 = *(v1 + 14);
      *(v1 + 15) = 1;
      if (v6 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1739, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }
    }

    else
    {
      v8 = *(v1 + 12);
      if (*(v1 + 10) > v8)
      {
        v9 = *v1;
        *(v1 + 12) = v8 + 1;
        v10 = *(v9 + v8);
        if (*(v1 + 10) > (v8 + 1))
        {
          v11 = *v1;
          *(v1 + 12) = v8 + 2;
          v12 = *(v11 + v8 + 1);
          if (*(v1 + 10) > (v8 + 2))
          {
            v13 = *v1;
            *(v1 + 12) = v8 + 3;
            v14 = *(v13 + v8 + 2);
            if (*(v1 + 10) > (v8 + 3))
            {
              v15 = *v1;
              *(v1 + 12) = v8 + 4;
              v16 = *(v15 + v8 + 3);
              if (*(v1 + 10) > (v8 + 4))
              {
                v17 = *v1;
                *(v1 + 12) = v8 + 5;
                v18 = *(v17 + v8 + 4);
                if (*(v1 + 10) > (v8 + 5))
                {
                  v19 = *v1;
                  v20 = v8 + 6;
                  *(v1 + 12) = v8 + 6;
                  v21 = *(v19 + v8 + 5);
                  if (v21 > 0xA0)
                  {
                    if (sub_10000C240())
                    {
                      sub_10000AF54("numStepsReported > MAX_NUM_STEPS_REPORTED aborting, numStepsReported=%d", v21);
                      v22 = sub_10000C050(0x42u);
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_67;
                      }
                    }

                    return;
                  }

                  if (*(v19 + v8 + 5))
                  {
                    if (*(v1 + 14) != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1752, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    v27 = 0;
                    v28 = 0;
                    v29 = 0;
                    v30 = *(v1 + 10);
                    while (!v27)
                    {
                      if (v30 <= v20)
                      {
                        goto LABEL_56;
                      }

                      v31 = *v1;
                      *(v1 + 12) = v20 + 1;
                      *(v45 + v28) = *(v31 + v20);
                      if (v30 <= (v20 + 1))
                      {
                        *(v1 + 15) = 1;
                        if (!sub_10000C240())
                        {
                          return;
                        }

                        sub_10000AF54("Could not get the stepChannel[i] of the for the cs sub event results");
                        v39 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                        {
                          return;
                        }

                        goto LABEL_67;
                      }

                      v32 = v20 + 2;
                      *(v1 + 12) = v32;
                      *(v44 + v28) = *(v31 + v20 + 1);
                      if (v30 <= v32)
                      {
                        *(v1 + 15) = 1;
                        if (!sub_10000C240())
                        {
                          return;
                        }

                        sub_10000AF54("Could not get the stepDataLength[i] of the for the cs sub event results");
                        v40 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                        {
                          return;
                        }

                        goto LABEL_67;
                      }

                      v20 += 3;
                      *(v1 + 12) = v20;
                      v33 = *(v31 + v32);
                      *(v43 + v28) = v33;
                      if (v33 >= 0xA1)
                      {
                        if (!sub_10000C240())
                        {
                          return;
                        }

                        sub_10000AF54("stepDataLength[i] > MAX_STEP_DATA_LENGTH, aborting");
                        v41 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                        {
                          return;
                        }

                        goto LABEL_67;
                      }

                      if ((v30 - v20) >= v33)
                      {
                        if (v33)
                        {
                          v34 = &v42[v29];
                          v35 = &v34[v33];
                          v36 = (v31 + v20);
                          do
                          {
                            v37 = *v36++;
                            *v34++ = v37;
                          }

                          while (v34 < v35);
                        }

                        v27 = 0;
                        v20 += v33;
                        *(v1 + 12) = v20;
                      }

                      else
                      {
                        v27 = 1;
                        *(v1 + 15) = 1;
                      }

                      v29 += v33;
                      if (v21 <= ++v28)
                      {
                        goto LABEL_33;
                      }
                    }

                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1752, "void LE_HCIEventHandler_CsSubEventResultContinue(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
LABEL_56:
                    *(v1 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the stepMode[i] of the for the cs sub event results");
                    v38 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }

                    goto LABEL_67;
                  }

LABEL_33:
                  sub_1002CFFA8(v5, v10, v12, v14, v16, v18, v21, v45, v44, v43, v42);
                  return;
                }

LABEL_32:
                v21 = 0;
                *(v1 + 15) = 1;
                goto LABEL_33;
              }

              *(v1 + 15) = 1;
LABEL_31:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1743, "void LE_HCIEventHandler_CsSubEventResultContinue(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
              v18 = 0;
              goto LABEL_32;
            }

            *(v1 + 15) = 1;
LABEL_29:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1742, "void LE_HCIEventHandler_CsSubEventResultContinue(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
            v26 = *(v1 + 14);
            *(v1 + 15) = 1;
            if (v26 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1743, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v16 = 0;
            goto LABEL_31;
          }

          *(v1 + 15) = 1;
LABEL_27:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1741, "void LE_HCIEventHandler_CsSubEventResultContinue(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
          v25 = *(v1 + 14);
          *(v1 + 15) = 1;
          if (v25 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1742, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v14 = 0;
          goto LABEL_29;
        }

        *(v1 + 15) = 1;
LABEL_25:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1740, "void LE_HCIEventHandler_CsSubEventResultContinue(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
        v24 = *(v1 + 14);
        *(v1 + 15) = 1;
        if (v24 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1741, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v12 = 0;
        goto LABEL_27;
      }

      *(v1 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1739, "void LE_HCIEventHandler_CsSubEventResultContinue(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v23 = *(v1 + 14);
    *(v1 + 15) = 1;
    if (v23 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1740, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v10 = 0;
    goto LABEL_25;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1735, "void LE_HCIEventHandler_CsSubEventResultContinue(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
LABEL_9:
  *(v1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the connection handle of the read remote used features event");
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_67:
      sub_1000E09C0();
    }
  }
}

void sub_1002CCBE8(uint64_t *a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1406, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1406, "void _HCIEventHandler_SubrateChange(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v2 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v2 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1407, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_13;
  }

  v3 = *(a1 + 6);
  if (*(a1 + 5) <= v3)
  {
    *(a1 + 15) = 1;
LABEL_13:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1407, "void _HCIEventHandler_SubrateChange(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v11 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v11 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1408, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v5 = 0;
    goto LABEL_15;
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 1;
  v5 = *(v4 + v3);
  if (*(a1 + 5) - (v3 + 1) <= 1)
  {
    *(a1 + 15) = 1;
LABEL_15:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1408, "void _HCIEventHandler_SubrateChange(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v12 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v12 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1409, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v6 = 0;
    goto LABEL_17;
  }

  v6 = *(*a1 + v3 + 1);
  *(a1 + 6) = v3 + 3;
  if (*(a1 + 5) - (v3 + 3) <= 1)
  {
    *(a1 + 15) = 1;
LABEL_17:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1409, "void _HCIEventHandler_SubrateChange(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v13 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v13 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1410, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v7 = 0;
    goto LABEL_19;
  }

  v7 = *(*a1 + (v3 + 3));
  *(a1 + 6) = v3 + 5;
  if (*(a1 + 5) - (v3 + 5) <= 1)
  {
    *(a1 + 15) = 1;
LABEL_19:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1410, "void _HCIEventHandler_SubrateChange(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v14 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v14 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1411, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v8 = 0;
    goto LABEL_21;
  }

  v8 = *(*a1 + (v3 + 5));
  *(a1 + 6) = v3 + 7;
  if (*(a1 + 5) - (v3 + 7) <= 1)
  {
    *(a1 + 15) = 1;
LABEL_21:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1411, "void _HCIEventHandler_SubrateChange(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
    v9 = 0;
    goto LABEL_22;
  }

  v9 = *(*a1 + (v3 + 7));
  *(a1 + 6) = v3 + 9;
  if (*(a1 + 5) - (v3 + 9) >= 2)
  {
    v10 = *(*a1 + (v3 + 9));
    *(a1 + 6) = v3 + 11;
    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  *(a1 + 15) = 1;
LABEL_23:
  if (sub_1000ABB80(v6))
  {

    sub_1002C1E5C(v5, v6, v7, v8, v9, v10);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("LE_HCIEventHandler_RemoteConnectionParameterRequest: Invalid connectionHandle for lmHandle 0x%2x", v6);
    v15 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002CCF84(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 598, "void _HCIEventHandler_PeriodicAdvSubeventDataReq(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 10);
    v3 = *(a1 + 12);
    v1 = v2 - v3;
    if (v2 - v3 == 3)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 612, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the advertising handle of the LE Periodic Advertising Subevent Data Request event");
          v5 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        *(a1 + 12) = v3 + 1;
        if (v2 <= v3 + 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the subevent start of the LE Periodic Advertising Subevent Data Request event");
            v6 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          *(a1 + 12) = v3 + 2;
          if (v2 <= v3 + 2)
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get the subevent data count of the LE Periodic Advertising Subevent Data Request event");
              v7 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            *(a1 + 12) = v3 + 3;

            nullsub_21();
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid Periodic Advertising Subevent Data Request event packet size : %d, expecting %d", v1, 3);
    v4 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      sub_1000E09C0();
    }
  }
}

void sub_1002CD18C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 644, "void _HCIEventHandler_PeriodicAdvResponseReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
    v1 = 0;
  }

  else
  {
    v3 = *(a1 + 5);
    v4 = *(a1 + 6);
    v1 = v3 - v4;
    if (v3 - v4 > 0xA)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 659, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v3 <= v4)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the advertising handle of the LE Periodic Advertising Response Report event");
          v12 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        v6 = *a1;
        *(a1 + 6) = v4 + 1;
        if (v3 <= v4 + 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the subevent of the LE Periodic Advertising Response Report event");
            v13 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          *(a1 + 6) = v4 + 2;
          if (v3 <= v4 + 2)
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get the txStatus of the LE Periodic Advertising Response Report event");
              v14 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_6;
              }
            }
          }

          else
          {
            v7 = v4 + 3;
            *(a1 + 6) = v4 + 3;
            if (v3 <= v4 + 3)
            {
              *(a1 + 15) = 1;
              if (sub_10000C240())
              {
                sub_10000AF54("Could not get the number of responses of the LE Periodic Advertising Response Report event");
                v15 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_6;
                }
              }
            }

            else
            {
              *(a1 + 6) = v4 + 4;
              if (*(v6 + v7))
              {
                v8 = *(v6 + v7);
                while (1)
                {
                  if (*(a1 + 14) != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 672, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  if (*(a1 + 15))
                  {
                    break;
                  }

                  v9 = *(a1 + 5);
                  v10 = *(a1 + 6);
                  if (v9 <= v10)
                  {
                    goto LABEL_37;
                  }

                  *(a1 + 6) = v10 + 1;
                  if (v9 <= v10 + 1)
                  {
                    *(a1 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the address type of the LE advertising report event");
                    v17 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }

                    goto LABEL_6;
                  }

                  *(a1 + 6) = v10 + 2;
                  if (v9 <= v10 + 2)
                  {
                    *(a1 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the address of the LE advertising report event");
                    v18 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }

                    goto LABEL_6;
                  }

                  *(a1 + 6) = v10 + 3;
                  if (v9 <= v10 + 3)
                  {
                    *(a1 + 15) = 1;
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 679, "void _HCIEventHandler_PeriodicAdvResponseReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
LABEL_47:
                    *(a1 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the dataLength of the LE advertising report event");
                    v19 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }

                    goto LABEL_6;
                  }

                  *(a1 + 6) = v10 + 4;
                  if (v9 <= v10 + 4)
                  {
                    goto LABEL_47;
                  }

                  *(a1 + 6) = v10 + 5;
                  v11 = sub_100007618(0, 0xBA2DB8FEuLL);
                  nullsub_21();
                  sub_10000C1E8(v11);
                  if (!--v8)
                  {
                    return;
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 672, "void _HCIEventHandler_PeriodicAdvResponseReport(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t, _Bool)");
LABEL_37:
                *(a1 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get the event type of the LE advertising report event");
                v16 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  return;
                }

                goto LABEL_6;
              }
            }
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the packet : %d, expecting at least %d", v1, 11);
    v5 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_1000E09C0();
    }
  }
}

void sub_1002CD640(uint64_t *a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1781, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v18 = 0u;
  v19 = 0u;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1781, "void LE_HCIEventHandler_AllRemoteFeaturesComplete(OI_BYTE_STREAM *, const HCI_EVENT_DESCRIPTOR *, uint8_t)");
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (v2 > v3)
    {
      v4 = *a1;
      *(a1 + 6) = v3 + 1;
      if ((v2 - (v3 + 1)) <= 1)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the connection handle of the read all remote features complete event", v18, v19);
          v13 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v5 = *(v4 + v3);
        v6 = *(v4 + v3 + 1);
        *(a1 + 6) = v3 + 3;
        if (v2 <= (v3 + 3))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1785, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v7 = v3 + 4;
        *(a1 + 6) = v3 + 4;
        if (v2 <= (v3 + 4))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1786, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v8 = *(v4 + (v3 + 3));
        v9 = v3 + 5;
        *(a1 + 6) = v9;
        v10 = *(v4 + v7);
        v11 = 24 * v10 + 8;
        if ((v2 - v9) >= v11)
        {
          v14 = (v4 + v9);
          v15 = &v18;
          do
          {
            v16 = *v14++;
            *v15 = v16;
            v15 = (v15 + 1);
          }

          while (v15 < (&v18 + v11));
          *(a1 + 6) = v9 + v11;
        }

        else
        {
          *(a1 + 15) = 1;
        }

        v17 = sub_100022244(v5);
        sub_1002C2BD8(v17, v6, v8, v10, &v18);
      }

      return;
    }
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the status of the read all remote features complete event", v18, v19);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002CD87C(int a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a1 > 8295)
  {
    if (a1 <= 8317)
    {
      if ((a1 - 8296) < 2)
      {
        if (a2)
        {
          v9 = *a3;

          sub_10018396C(a2, v9, 0);
        }

        return;
      }

      if (a1 == 8298)
      {
        if (a2)
        {
          v10 = *a3;

          sub_100183C9C(a2, v10, 22);
        }

        return;
      }

      if (a1 == 8299)
      {
        if (a2)
        {
          v7 = *a3;

          sub_100183E2C(a2, v7, 0);
        }

        return;
      }

      goto LABEL_48;
    }

    if (a1 == 8318)
    {
      if (a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send connection subrating command: %!", a2);
          v16 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }
      }

      return;
    }

    if (a1 == 8328)
    {
      if (a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send all remote features: %!", a2);
          v12 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }
      }

      return;
    }

    if (a1 != 8325)
    {
      goto LABEL_48;
    }

    goto LABEL_28;
  }

  if (a1 > 8258)
  {
    if (a1 > 8291)
    {
      if (a1 == 8292)
      {
        if (a2)
        {
          for (i = 0; i != 8; i += 2)
          {
            v15 = *&a3[i];
            if (v15 != 0xFFFF)
            {
              v19 = 0;
              v17 = 0u;
              v18 = 0u;
              LOWORD(v17) = v15;
              sub_1002189A0(a2, &v17);
            }
          }
        }

        return;
      }

      if (a1 == 8294)
      {
        if (a2)
        {
          v19 = 0;
          v17 = 0u;
          v18 = 0u;
          LOWORD(v17) = *a3;
          sub_1002189A0(a2, &v17);
        }

        return;
      }

      goto LABEL_48;
    }

    if (a1 != 8259)
    {
      if (a1 == 8260)
      {
        if (a2)
        {

          sub_1001B8EC0();
        }

        return;
      }

      goto LABEL_48;
    }

LABEL_28:
    sub_1002C1EE8(a2, 0, 0, a3, 0, 0, 0, 0, 0, 0xFFFF, 0);
    return;
  }

  if (a1 > 8213)
  {
    if (a1 == 8214)
    {
      if (a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send remote used features: %!", a2);
          v13 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }
      }

      return;
    }

    if (a1 == 8242)
    {
      if (a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send set phy: %!", a2);
          v8 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }
      }

      return;
    }

    goto LABEL_48;
  }

  if (a1 == 8205)
  {
    goto LABEL_28;
  }

  if (a1 != 8211)
  {
LABEL_48:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown LE event code 0x%x", a1);
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }
    }

    return;
  }

  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send connection update : %!", a2);
      v6 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_68:
        sub_10080F604();
      }
    }
  }
}

void sub_1002CDCA8(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + 125) != 1)
  {
    return;
  }

  if (a2 <= 760)
  {
    if (!a2)
    {
      v6 = 48;
      if (*(a1 + 55))
      {
        v6 = 56;
      }

      if (sub_1002DF928((a1 + v6)) && *(a1 + 132))
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    if (a2 != 634)
    {
      if (a2 == 706)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Encryption failed, peer removed keys, keepConnectedAfterFailedInitialEncryption=%d", *(a1 + 296));
          v4 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        if ((*(a1 + 296) & 1) == 0)
        {
          *(a1 + 132) = 6;
          *(a1 + 140) = 4833;
          sub_1002CDF48(a1);
          return;
        }
      }

      goto LABEL_20;
    }

LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("Encryption failed due to %!, aborting connection notifications, waiting for disconnection event", a2);
      v5 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return;
  }

  if ((a2 - 761) <= 1)
  {
    goto LABEL_13;
  }

LABEL_20:
  *(a1 + 125) = 0;
  if (*(a1 + 356))
  {
    if (*(a1 + 132) == 5)
    {
      sub_1002CE094(a1, a2);
    }

LABEL_34:
    if (*(a1 + 132) == 5)
    {
      sub_1002CE094(a1, 0);
    }

    return;
  }

  if (*(a1 + 70))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("FastLEConnection:Skipping LE_GAP_ReadRemoteVersionInformation on encryptionStartedCb");
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v12 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    goto LABEL_34;
  }

  v8 = sub_1002CDFF8(a1);
  if (!v8)
  {
    *(a1 + 126) = 1;
    if (*(a1 + 132) != 6)
    {
      *(a1 + 132) = 1;
    }

    goto LABEL_34;
  }

  v9 = v8;
  if (sub_10000C240())
  {
    sub_10000AF54("LE_GAP_ReadRemoteVersionInformation failed %!", v9);
    v10 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  *(a1 + 132) = 5;
}

uint64_t sub_1002CDF48(uint64_t a1)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (a1 && sub_1000ABD24(a1))
  {

    return sub_1002BF944(a1, 19);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.");
      v3 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }
}

uint64_t sub_1002CDFF8(uint64_t a1)
{
  v11 = a1;
  if (!a1)
  {
    return 1310;
  }

  v1 = a1;
  if (!sub_1000ABD24(a1))
  {
    return 1310;
  }

  if (dword_100B6A5B4)
  {
    v10[1] = &v11;
    v10[0] = 8;
    result = sub_10002195C(sub_1002D207C, v10, ((dword_100B6A5B4 + 99) / 0x64u), 0);
    if (!result)
    {
      return result;
    }

    v1 = v11;
  }

  return sub_1002C1E0C(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1002CE094(uint64_t a1, uint64_t a2)
{
  if (a1 && !a2)
  {
    v11 = 0;
    sub_100016250(&v11);
    *(a1 + 368) = sub_100306DA4((a1 + 360), &v11);
    if (sub_10000C240())
    {
      sub_10000AF54("LinkReady took %llums from connectionComplete", *(a1 + 368));
      v4 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = sub_10000C0FC();
        *buf = 136446210;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_12:
    v8 = word_100B66270;
    if (word_100B66270)
    {
      v9 = 0;
      do
      {
        v10 = *(qword_100B66278[v9] + 40);
        if (v10)
        {
          v10(a1, 0, *(a1 + 356));
          v8 = word_100B66270;
        }

        ++v9;
      }

      while (v9 < v8);
    }

    goto LABEL_17;
  }

  if (a2 != 719 && *(a1 + 124) != 7)
  {
    if (sub_10000C240())
    {
      v6 = sub_1002567E8(*(a1 + 124));
      sub_10000AF54("GAP LinkReadyCB error with status %! during %s, not-disconnecting", a2, v6);
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

LABEL_17:
  *(a1 + 132) = 7;
  *(a1 + 356) = 0;
}

uint64_t sub_1002CE244(uint64_t a1)
{
  v1 = word_100B66270;
  v2 = word_100B66270;
  if (word_100B66270)
  {
    if (word_100B66270 == 8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't add anymore callbacks.");
        v3 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4050;
    }

    else
    {
      v5 = 0;
      while (qword_100B66278[v5] != a1)
      {
        if (word_100B66270 <= ++v5)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

  else
  {
LABEL_11:
    v4 = 0;
    qword_100B66278[v2] = a1;
    word_100B66270 = v1 + 1;
  }

  return v4;
}

uint64_t sub_1002CE314(uint64_t a1)
{
  v1 = word_100B662B8;
  v2 = word_100B662B8;
  if (word_100B662B8)
  {
    if (word_100B662B8 == 8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't add anymore callbacks.");
        v3 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4050;
    }

    else
    {
      v5 = 0;
      while (qword_100B662C0[v5] != a1)
      {
        if (word_100B662B8 <= ++v5)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

  else
  {
LABEL_11:
    v4 = 0;
    qword_100B662C0[v2] = a1;
    word_100B662B8 = v1 + 1;
  }

  return v4;
}

uint64_t sub_1002CE3E4(uint64_t result)
{
  if (word_100B66270)
  {
    v1 = 0;
    while (qword_100B66278[v1] != result)
    {
      if (word_100B66270 <= ++v1)
      {
        return result;
      }
    }

    v3 = qword_100B66278[--word_100B66270];
    v2 = word_100B66270;
    qword_100B66278[v1] = v3;
    qword_100B66278[v2] = 0;
  }

  return result;
}

void sub_1002CE438(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  if (byte_100B66300 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection complete, we need to update our own address now");
      v8 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_1002CE968();
  }

  if (a2)
  {
    if (*(a2 + 55))
    {
      v9 = (a2 + 28);
    }

    else
    {
      v9 = a1;
    }

    v10 = (v9[1] << 40) | (v9[2] << 32) | (v9[3] << 24) | (v9[4] << 16) | (v9[5] << 8) | v9[6] | (*v9 << 48);
    if (sub_1002CED40(v10))
    {
      if (sub_10000C240())
      {
        v11 = *a1 ? "Random" : "Public";
        sub_10000AF54("FastLEConnection:LE_GAP_IsFastLeConnectionEnabledForAddress enabled for %s:%:", v11, a1 + 1);
        v12 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = sub_10000C0FC();
          *buf = 136446210;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      *(a2 + 356) = 1;
      *(a2 + 357) = sub_1002CEED0(v10);
      *(a2 + 358) = sub_1002CF074(v10);
    }

    if (*(a2 + 55) == 1)
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      *buf = 0u;
      v30 = 0u;
      *&buf[1] = *(a2 + 49);
      *&buf[5] = *(a2 + 53);
      buf[7] = *(a2 + 56);
      *&buf[8] = *(a2 + 57);
      *&buf[12] = *(a2 + 61);
      sub_1001C4DCC(buf, 14);
      a1 = (a2 + 28);
    }

    if (!a3)
    {
      if (*(a2 + 70) == 1)
      {
        byte_100B663B9 &= 0x7Cu;
        sub_1002B16B4(0);
      }

      else if (a2[178])
      {
        if (sub_10000C240())
        {
          sub_10000AF54("FastLEConnection:Skipping startLinkEncryption, pendingAuth=%d", *(a2 + 357));
          v15 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = sub_10000C0FC();
            *buf = 136446210;
            *&buf[4] = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *(a2 + 125) = *(a2 + 357);
      }

      else
      {
        if (!sub_1002CF218(a2))
        {
          v18 = 1;
          *(a2 + 125) = 1;
          goto LABEL_41;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Encryption start fails with status %!", 0);
          v19 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      v18 = 1;
      goto LABEL_41;
    }
  }

  if (a3 != 702 && sub_10000C240())
  {
    v14 = a2 ? *a2 : 0;
    sub_10000AF54("GAP_ConnectionCompleteCallback with error stats %! on lm 0x%x", a3, v14);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v18 = 0;
LABEL_41:
  v20 = word_100B66270;
  if (word_100B66270)
  {
    v21 = 0;
    do
    {
      v22 = *qword_100B66278[v21];
      if (v22)
      {
        if (a2)
        {
          v23 = *(a2 + 356);
        }

        else
        {
          v23 = 0;
        }

        v22(a1, a2, a3, a4, v23);
        v20 = word_100B66270;
      }

      ++v21;
    }

    while (v20 > v21);
  }

  if (v18 && *(a2 + 70) == 1)
  {
    if (*(a2 + 33))
    {
      sub_1000D660C();
    }

    if (a2[178])
    {
      if (sub_10000C240())
      {
        sub_10000AF54("FastLEConnection:Skipping LE_GAP_ReadRemoteVersionInformation");
        v24 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_10000C0FC();
          *buf = 136446210;
          *&buf[4] = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    else
    {
      v26 = sub_1002CDFF8(a2);
      if (v26)
      {
        v27 = v26;
        if (sub_10000C240())
        {
          sub_10000AF54("LE_GAP_ReadRemoteVersionInformation failed %!", v27);
          v28 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        sub_1002CE094(a2, v27);
      }

      else
      {
        *(a2 + 33) = 1;
      }
    }
  }
}