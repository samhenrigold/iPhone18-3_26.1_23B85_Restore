uint64_t sub_1002DC7B8(int *a1, _OWORD *a2, char a3)
{
  v6 = word_100B6B3F8;
  if (word_100B6B3F8)
  {
    v7 = 0;
    v8 = qword_100B6B3F0;
    while (*v8 != *a1 || *(v8 + 3) != *(a1 + 3))
    {
      ++v7;
      v8 += 6;
      if (word_100B6B3F8 == v7)
      {
        goto LABEL_13;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Found a dup instance of  %: at index %d, trying to remove it.", a1 + 1, v7);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1002DC938(a1);
    v6 = word_100B6B3F8;
  }

LABEL_13:
  v11 = sub_100007618(24 * v6 + 24, 0x1000040504FFAC1uLL);
  v12 = v11;
  v13 = word_100B6B3F8;
  if (word_100B6B3F8)
  {
    v14 = qword_100B6B3F0;
    v15 = word_100B6B3F8;
    v16 = v11;
    do
    {
      v17 = *v14;
      *(v16 + 2) = *(v14 + 16);
      *v16 = v17;
      v16 += 24;
      v14 += 24;
      --v15;
    }

    while (v15);
  }

  v18 = &v11[24 * v13];
  *(v18 + 7) = *a2;
  v19 = *a1;
  v20 = *(a1 + 2);
  v18[6] = *(a1 + 6);
  *(v18 + 2) = v20;
  *v18 = v19;
  v18[23] = a3;
  if (qword_100B6B3F0)
  {
    sub_10000C1E8(qword_100B6B3F0);
  }

  qword_100B6B3F0 = v12;
  word_100B6B3F8 = v13 + 1;
  return 0;
}

uint64_t sub_1002DC938(_DWORD *a1)
{
  if (!word_100B6B3F8)
  {
    return 120;
  }

  v2 = 0;
  for (i = qword_100B6B3F0; *i != *a1 || *(i + 3) != *(a1 + 3); i += 6)
  {
    if (word_100B6B3F8 == ++v2)
    {
      return 120;
    }
  }

  if (word_100B6B3F8 == v2)
  {
    return 120;
  }

  if (word_100B6B3F8 == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = qword_100B6B3F0;
  }

  else
  {
    v7 = sub_100007618(24 * (word_100B6B3F8 - 1), 0x1000040504FFAC1uLL);
    v9 = word_100B6B3F8;
    v8 = qword_100B6B3F0;
    if (word_100B6B3F8 < 2u)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v10 = 1;
      v11 = qword_100B6B3F0;
      do
      {
        if (*v11 != *a1 || *(v11 + 3) != *(a1 + 3))
        {
          v13 = *v11;
          v14 = &v7[24 * v6];
          *(v14 + 2) = *(v11 + 16);
          *v14 = v13;
          ++v6;
        }

        if (v10 >= v9)
        {
          break;
        }

        v11 += 24;
        ++v10;
      }

      while (v9 - 1 > v6);
    }
  }

  if (v8)
  {
    sub_10000C1E8(v8);
  }

  result = 0;
  qword_100B6B3F0 = v7;
  word_100B6B3F8 = v6;
  return result;
}

void sub_1002DCA94()
{
  if (qword_100B6B3F0)
  {
    sub_10000C1E8(qword_100B6B3F0);
  }

  qword_100B6B3F0 = 0;
  word_100B6B3F8 = 0;
}

void sub_1002DCACC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if (*v1 && sub_1000ABD24(*v1))
  {
    v7[0] = 0;
    v3 = sub_100007618(0x10uLL, 0x10200403A5D3213uLL);
    v6 = v3;
    *v3 = v2;
    v3[2] = 4807;
    v7[1] = &v6;
    LOWORD(v7[0]) = 8;
    if (sub_10002195C(sub_1002DC538, v7, 0, 0) && sub_10000C240())
    {
      sub_10000AF54("Failed to send the encryption failed callback");
      v4 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This handle is not a LE connection.");
    v5 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002DCBE8(__int128 *a1, char a2, char a3)
{
  v11[0] = 1;
  v11[1] = a2;
  v12 = 2;
  v13 = a3;
  v14 = 0;
  if (sub_1000ABD24(a1))
  {
    v4 = sub_1003053B4(v11, 6uLL, 0);
    if (v4)
    {
      v5 = v4;
      v6 = sub_1000B7EDC(0, 5, a1, v4, 0);
      if (v6)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to SMP channel for handle 0x%x", a1);
          v7 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v5);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v9 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v8 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4120;
  }

  return v6;
}

uint64_t sub_1002DCD54(__int128 *a1, char a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  v24[0] = 19;
  v24[1] = a2;
  v25 = 2;
  v26 = a3;
  if (sub_1000ABD24(a1))
  {
    if (!a3 && sub_1002C1774(a1, a4, a5, a6, a7, a8, a9))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to update connection parameters.");
        v16 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v26 = 1;
    }

    v17 = sub_1003053B4(v24, 6uLL, 0);
    if (v17)
    {
      v18 = v17;
      v19 = sub_1000B7EDC(0, 5, a1, v17, 0);
      if (v19)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v20 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v18);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v22 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v21 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4121;
  }

  return v19;
}

uint64_t sub_1002DCF5C(_BYTE *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v33[0] = 18;
  v5 = byte_100B53E48++;
  v33[1] = v5;
  v34 = 8;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  if (a1[70] != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection is not peripheral.");
      v8 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 132;
  }

  if ((a2 - 3201) <= 0xF384u)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid min interval 0x%x.", a2);
    v7 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if ((a3 - 3201) <= 0xF384u)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid max interval : 0x%x.", a3);
    v11 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (a4 >= 0x1F5)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid peripheral latency %d.", a4);
    v13 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (a5 - 3201 <= 0xFFFFF388)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid supervision timeout : 0x%x.", a5);
    v15 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (a3 <= a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid interval range : 0x%x - 0x%x.", a2, a3);
    v19 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_50:
    sub_10080F7A0();
    return 101;
  }

  v16 = a3 * 1.25;
  v17 = a4 + 1;
  if (v16 * (a4 + 1) > 6000.0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting an interval / latency combination that would provide a poor user experience (more than 6seconds syncups.)");
    v18 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  v20 = a2 * 1.25;
  if (v20 < 10.0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting a min interval smaller than 10 ms. Let's refuse and not drain the battery...");
    v21 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (-(v20 - a3 * 1.25) < 10.0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Intervals should be %d ms apart - refusing.", 10);
    v22 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (a4 >= 5 && (sub_100199668(a1) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting a peripheral latency more than 4 so we drain our battery and they don't - refusing.");
    v27 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (a5 >= 0x709)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting for a timeout of more than 18 seconds, this is not very user friendly - refusing.");
    v24 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  v25 = 10 * a5;
  if (v16 * (3 * v17) > v25)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting for a timeout(%dms) / latency(%d) / maxInterval(%dms) that would cause link timeouts under bad conditions. - refusing.", v25, a4, LODWORD(v16));
    v26 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  v29 = sub_1003053B4(v33, 0xCuLL, 0);
  if (v29)
  {
    v30 = v29;
    v9 = sub_1000B7EDC(0, 5, a1, v29, 0);
    if (v9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
        v31 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    sub_1000BB9CC(v30);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
      v32 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 104;
  }

  return v9;
}

uint64_t sub_1002DD500(__int128 *a1, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  v15[0] = 21;
  v15[1] = a2;
  v16 = 10;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  if (sub_1000ABD24(a1))
  {
    v8 = sub_1003053B4(v15, 0xEuLL, 0);
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000B7EDC(0, 5, a1, v8, 0);
      if (v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v11 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v9);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v13 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4122;
  }

  return v10;
}

uint64_t sub_1002DD6CC(__int128 *a1, char a2, unsigned int a3, uint64_t a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8)
{
  v28 = 0;
  v27 = 0;
  if (a3 > 5)
  {
    return 101;
  }

  if (sub_1000ABD24(a1))
  {
    v22[0] = 24;
    v22[1] = a2;
    v23 = a5;
    v24 = a6;
    v25 = a7;
    v26 = a8;
    v22[2] = 2 * a3 + 8;
    v22[3] = 0;
    __memmove_chk();
    v16 = sub_1003053B4(v22, 2 * a3 + 12, 0);
    if (v16)
    {
      v17 = v16;
      v8 = sub_1000B7EDC(0, 5, a1, v16, 0);
      if (v8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v18 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v17);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v19 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4122;
  }

  return v8;
}

uint64_t sub_1002DD8F8(__int128 *a1, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  v15[0] = 20;
  v15[1] = a2;
  v16 = 10;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  if (sub_1000ABD24(a1))
  {
    v8 = sub_1003053B4(v15, 0xEuLL, 0);
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000B7EDC(0, 5, a1, v8, 0);
      if (v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v11 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v9);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v13 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4123;
  }

  return v10;
}

uint64_t sub_1002DDAC4(__int128 *a1, char a2, __int16 a3, unsigned int a4, uint64_t a5, __int16 a6, __int16 a7, __int16 a8)
{
  v28 = 0;
  v27 = 0;
  if (a4 > 5)
  {
    return 101;
  }

  if (sub_1000ABD24(a1))
  {
    v22[0] = 23;
    v22[1] = a2;
    v23 = a3;
    v24 = a6;
    v25 = a7;
    v26 = a8;
    v22[2] = 2 * a4 + 8;
    v22[3] = 0;
    __memmove_chk();
    v16 = sub_1003053B4(v22, 2 * a4 + 12, 0);
    if (v16)
    {
      v17 = v16;
      v8 = sub_1000B7EDC(0, 5, a1, v16, 0);
      if (v8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v18 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v17);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v19 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4123;
  }

  return v8;
}

uint64_t sub_1002DDCF0(__int128 *a1, char a2, __int16 a3)
{
  if (sub_1000ABD24(a1))
  {
    v13[0] = 26;
    v13[1] = a2;
    v14 = 2;
    v15 = a3;
    v6 = sub_1003053B4(v13, 6uLL, 0);
    if (v6)
    {
      v7 = v6;
      v8 = sub_1000B7EDC(0, 5, a1, v6, 0);
      if (v8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v9 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v7);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v11 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4123;
  }

  return v8;
}

uint64_t sub_1002DDE68(__int128 *a1, char a2, __int16 a3, __int16 a4)
{
  v12 = 262166;
  BYTE1(v12) = a2;
  v13 = a3;
  v14 = a4;
  if (sub_1000ABD24(a1))
  {
    v5 = sub_1003053B4(&v12, 8uLL, 0);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000B7EDC(0, 5, a1, v5, 0);
      if (v7)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v8 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v6);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v10 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4124;
  }

  return v7;
}

uint64_t sub_1002DE00C(__int128 *a1, int a2, unsigned int a3, __int16 a4, unsigned int a5, char a6)
{
  v18[0] = 1;
  v18[1] = a6;
  v18[3] = 0;
  v19 = a2;
  v20 = 0;
  if (a2 == 1)
  {
    v9 = &v20;
    v8 = &v20 + 1;
    v10 = a3 >> 8;
    v7 = 2;
  }

  else
  {
    v7 = 0;
    if (a2 != 2)
    {
      goto LABEL_6;
    }

    v8 = &v20 + 3;
    v9 = (&v20 + 2);
    LOWORD(v20) = a4;
    v10 = a5 >> 8;
    v7 = 4;
    LOBYTE(a3) = a5;
  }

  *v9 = a3;
  *v8 = v10;
LABEL_6:
  v18[2] = v7 + 2;
  if (sub_1000ABD24(a1))
  {
    v11 = sub_1003053B4(v18, (v7 + 6), 0);
    if (v11)
    {
      v12 = v11;
      v13 = sub_1000B7EDC(0, 5, a1, v11, 0);
      if (v13)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v14 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v12);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v16 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v15 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4125;
  }

  return v13;
}

uint64_t sub_1002DE204(__int128 *a1, char a2, __int16 a3, __int16 a4)
{
  v12 = 262150;
  BYTE1(v12) = a2;
  v13 = a4;
  v14 = a3;
  if (sub_1000ABD24(a1))
  {
    v5 = sub_1003053B4(&v12, 8uLL, 0);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000B7EDC(0, 5, a1, v5, 0);
      if (v7)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v8 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v6);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v10 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4126;
  }

  return v7;
}

uint64_t sub_1002DE3A8(__int128 *a1, char a2, __int16 a3, __int16 a4)
{
  v12 = 262151;
  BYTE1(v12) = a2;
  v13 = a3;
  v14 = a4;
  if (sub_1000ABD24(a1))
  {
    v5 = sub_1003053B4(&v12, 8uLL, 0);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000B7EDC(0, 5, a1, v5, 0);
      if (v7)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", a1);
          v8 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v6);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.");
        v10 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4127;
  }

  return v7;
}

uint64_t sub_1002DE54C(uint64_t (*a1)(void, void, void, void, void, void, void, void))
{
  qword_100B6B400 = 0;
  off_100B6B408 = a1;
  v1 = sub_10028E64C(5, 2, 6, 3, &qword_100B6B400, sub_1002DE628);
  if (v1 || !qword_100B6B400)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register the LE signal channel : %!", v1);
      v2 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    *sub_1000CD958(qword_100B6B400) = 23;
    *(sub_1000CD958(qword_100B6B400) + 2) = -1;
  }

  return v1;
}

void sub_1002DE628(__int128 *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  if (sub_1000ABD24(a1))
  {
    if (a2)
    {
      if (a3 > 3)
      {
        v11 = *(a2 + 1);
        if (a3 - 4 == v11)
        {
          v12 = a2[1];
          v13 = *a2;
          if (v13 > 0x14)
          {
            if (*a2 > 0x17u)
            {
              switch(v13)
              {
                case 0x18u:
                  v23 = a2[1];

                  sub_1002DF2AC(a1, v23, a2 + 2, v11);
                  return;
                case 0x19u:
                  v26 = a2[1];

                  sub_1002DF398(a1, v26, a2 + 2, v11);
                  return;
                case 0x1Au:
                  v18 = a2[1];

                  sub_1002DF448(a1, v18, a2 + 2, v11);
                  return;
              }
            }

            else
            {
              switch(v13)
              {
                case 0x15u:
                  v21 = a2[1];

                  sub_1002DF118(a1, v21, (a2 + 4), v11);
                  return;
                case 0x16u:
                  v25 = *(a2 + 1);

                  sub_1002DF4D8(a1, a2 + 2, v25);
                  return;
                case 0x17u:
                  v16 = a2[1];

                  sub_1002DF1B8(a1, v16, a2 + 2, v11, a4);
                  return;
              }
            }
          }

          else if (*a2 > 0x11u)
          {
            switch(v13)
            {
              case 0x12u:
                v22 = a2[1];

                sub_1002DEB3C(a1, v22, a2 + 2, v11, a4);
                return;
              case 0x13u:
                return;
              case 0x14u:
                v17 = a2[1];

                sub_1002DF074(a1, v17, a2 + 2, v11, a4);
                return;
            }
          }

          else
          {
            switch(v13)
            {
              case 1u:
                v19 = *(a2 + 2);
                v20 = a2[1];

                sub_100295800(a1, v19, v20);
                return;
              case 6u:
                v24 = a2[1];

                sub_1002DF5C0(a1, v24, a2 + 2, v11);
                return;
              case 7u:
                v14 = a2[1];

                sub_1002DF660(a1, v14, a2 + 2, v11);
                return;
            }
          }

          if (sub_10000C240())
          {
            sub_10000AF54("LE Signaling channel error : invalid opcode %d", v13);
            v27 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          sub_1002DCBE8(a1, v12, 0);
          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("LE Signaling channel error : corrupted packet size");
          v15 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("LE Signaling channel error : invalid packet size");
        v8 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
LABEL_24:
          sub_10080F7A0();
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("LE Signaling channel error : invalid data on");
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("LE Signaling channel error : not a LE handle.");
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_1002DEAB0()
{
  v0 = sub_10028E908(qword_100B6B400);
  if (v0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not de-register the LE signal channel : %!", v0);
      v1 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  qword_100B6B400 = 0;
  return v0;
}

void sub_1002DEB3C(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v5 = a2;
  if (*(a1 + 70) == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command should only be received if we are central.");
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1002DCBE8(a1, v5, 0);
    return;
  }

  if (a4 == 8)
  {
    v9 = *a3;
    v10 = a3[1];
    v11 = a3[2];
    v12 = a3[3];
    if (off_100B6B408)
    {
      v13 = off_100B6B408(a1, a2, *a3, v10, v11, v12, 0, a5);
      if (!v13)
      {
        return;
      }

      if (v13 != 121)
      {
        goto LABEL_57;
      }
    }

    if ((v9 - 3201) > 0xF384u)
    {
      if ((v10 - 3201) > 0xF384u)
      {
        if (v9 <= v10)
        {
          if (v11 < 0x1F5)
          {
            if ((v12 - 3201) > 0xF388u)
            {
              v20 = v10 * 1.25;
              if (v20 * (v11 + 1) <= 2000.0)
              {
                if (v9 * 1.25 >= 10.0)
                {
                  if ((v10 - v9) * 1.25 >= 10.0)
                  {
                    if (v11 < 5)
                    {
                      if (v12 < 0x259)
                      {
                        if (v20 * (3 * (v11 + 1)) <= (10 * v12))
                        {
                          sub_1002DCD54(a1, v5, 0, v9, v10, v11, v12, 0, 0);
                          return;
                        }

                        if (!sub_10000C240())
                        {
                          goto LABEL_57;
                        }

                        sub_10000AF54("Remote sides asks for a timeout(%dms) / latency(%d) / maxInterval(%dms) that would cause link timeouts under bad conditions. - refusing.", 10 * v12, v11, COERCE_UNSIGNED_INT64(v10 * 1.25));
                        v26 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_57;
                        }
                      }

                      else
                      {
                        if (!sub_10000C240())
                        {
                          goto LABEL_57;
                        }

                        sub_10000AF54("Remote sides asks for a timeout of more than 6 seconds, this is not very user friendly - refusing.");
                        v25 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_57;
                        }
                      }
                    }

                    else
                    {
                      if (!sub_10000C240())
                      {
                        goto LABEL_57;
                      }

                      sub_10000AF54("Remote side wants a peripheral latency more than 4 so we drain our battery and they don't - refusing.");
                      v24 = sub_10000C050(0x42u);
                      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_57;
                      }
                    }
                  }

                  else
                  {
                    if (!sub_10000C240())
                    {
                      goto LABEL_57;
                    }

                    sub_10000AF54("Intervals should be %d ms apart - refusing.", 10);
                    v23 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_57;
                    }
                  }
                }

                else
                {
                  if (!sub_10000C240())
                  {
                    goto LABEL_57;
                  }

                  sub_10000AF54("Remote side wants a min interval smaller than 20 ms. Let's refuse and not drain the battery...");
                  v22 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_57;
                  }
                }
              }

              else
              {
                if (!sub_10000C240())
                {
                  goto LABEL_57;
                }

                sub_10000AF54("Remote side wants an interval / latency combination that would provide a poor user experience (more than 2seconds syncups.)");
                v21 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_57;
                }
              }
            }

            else
            {
              if (!sub_10000C240())
              {
                goto LABEL_57;
              }

              sub_10000AF54("Invalid timeout multiplier %d.", v12);
              v19 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_57;
              }
            }
          }

          else
          {
            if (!sub_10000C240())
            {
              goto LABEL_57;
            }

            sub_10000AF54("Invalid peripheral latency %d.", v11);
            v18 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          if (!sub_10000C240())
          {
            goto LABEL_57;
          }

          sub_10000AF54("Maximum interval is smaller than minimum interval : %d > %d.", v9, v10);
          v17 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (!sub_10000C240())
        {
          goto LABEL_57;
        }

        sub_10000AF54("Invalid maximum interval %d.", v10);
        v16 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_57;
      }

      sub_10000AF54("Invalid minimum interval %d.", v9);
      v14 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }
    }

    sub_10080F7A0();
LABEL_57:
    sub_1002DCD54(a1, v5, 1, 0, 0, 0, 0, 0, 0);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in parameter update request : %d", a4);
    v15 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF074(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  if (a4 == 10)
  {
    v8 = *a3;
    v9 = a3[2];
    v10 = a3[3];
    v11 = a3[4];
    v12 = a3[1];

    sub_100293FE0(a1, v8, v12, v9, v10, v11, a2, a5);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in LE Connection Oriented L2CAP Channel connection request : %d", a4);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF118(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a4 == 10)
  {
    v6 = *a3;
    v7 = *(a3 + 4);
    v8 = *(a3 + 6);
    v9 = *(a3 + 8);
    v10 = *(a3 + 2);

    sub_1002949D4(a1, v6, v10, v7, v8, v9, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in LE Connection Oriented L2CAP Channel connection response : %d", a4);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002DF1B8(__int128 *a1, uint64_t a2, _WORD *a3, int a4, unsigned __int8 a5)
{
  v6 = ((a4 + 504) >> 1);
  if (v6 <= 5)
  {
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    v16 = 0;
    v15 = 0;
    if (((a4 + 504) >> 1))
    {
      v12 = a3 + 9;
      v13 = &v15;
      v14 = ((a4 + 504) >> 1);
      do
      {
        *v13 = *(v12 - 1);
        v13 = (v13 + 2);
        v12 += 2;
        --v14;
      }

      while (v14);
    }

    return sub_100294430(a1, v8, v6, &v15, v9, v10, v11, a2, a5);
  }

  else
  {

    return sub_1002DCBE8(a1, a2, 11);
  }
}

void sub_1002DF2AC(__int128 *a1, int a2, _WORD *a3, int a4)
{
  v5 = ((a4 + 504) >> 1);
  if (v5 <= 5)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v14 = 0;
    v13 = 0;
    if (((a4 + 504) >> 1))
    {
      v10 = a3 + 9;
      v11 = &v13;
      v12 = ((a4 + 504) >> 1);
      do
      {
        *v11 = *(v10 - 1);
        v11 = (v11 + 2);
        v10 += 2;
        --v12;
      }

      while (v12);
    }

    sub_100294ED4(a1, v5, &v13, v6, v7, v8, v9, a2);
  }

  else
  {

    sub_1002DCBE8(a1, a2, 11);
  }
}

uint64_t sub_1002DF398(__int128 *a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  v11 = 0;
  v10 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a4 + 508;
  __memmove_chk();
  return sub_100295548(a1, (v8 >> 1), &v10, v6, v7, a2);
}

void sub_1002DF448(uint64_t a1, int a2, unsigned __int16 *a3, int a4)
{
  if (a4 == 2)
  {
    v6 = *a3;

    sub_1002956B0(a1, v6, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in ENHANCED LE Connection Oriented L2CAP Channel Reconfig Response : %d", a4);
    v8 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF4D8(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v8 = 0;
  if (a3 == 4)
  {
    v3 = *(a2 + 2);
    v4 = *(a2 + 3);
    sub_10028D9A0(*a2, a1, &v8);
    if (v8)
    {
      sub_10028A344(v8, v3 | (v4 << 8));
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Credits for an invalid channel CID");
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in LEConnection Oriented L2CAP Channel connection Flow Credit : %d", a3);
    v6 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF5C0(__int128 *a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  if (a4 == 4)
  {
    v6 = *a3;
    v7 = a3[1];

    sub_100293B60(a1, v6, v7, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in Disconnect request : %d", a4);
    v8 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF660(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = a3[1];
    v6 = *a3;

    sub_100293EB0(a1, v5, v6);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in Disconnect response : %d", a4);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002DF704(_DWORD *a1)
{
  v1 = sub_1000E5EA8(a1);
  if (!v1)
  {
    return 122;
  }

  v2 = v1;
  if (!sub_1000ABD24(v1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.");
      v7 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 122;
  }

  v3 = sub_10029BE74(v2);
  if (v3)
  {
    v4 = *(v3 + 52);
    if (v4 >= 6)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0x20C01010108uLL >> (8 * v4);
    }

    return sub_1002DF818(v2, v5 & 0xF, v3);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This device is not in a pairing state.");
      v8 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4806;
  }
}

uint64_t sub_1002DF818(__int128 *a1, int a2, char *a3)
{
  v4 = a2;
  v9 = 5;
  if (a2 == 240)
  {
    v5 = 8;
  }

  else
  {
    v5 = a2;
  }

  HIBYTE(v9) = v5;
  v6 = sub_10029BEC0(a1, &v9, 2uLL, 0);
  if (a3)
  {
    v7 = sub_10029C388(v4);
    sub_10029BA98(a3, v7, 1);
  }

  return v6;
}

uint64_t sub_1002DF898(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (sub_1000ABD24(result))
    {
      result = sub_10029BE74(v1);
      if (result)
      {
        return *(result + 8) != 0;
      }
    }

    else
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("This command is only available to LE devices.");
        v2 = sub_10000C050(0x43u);
        result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_1000E09C0();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002DF928(_DWORD *a1)
{
  v1 = sub_1000E5EA8(a1);

  return sub_1002DF898(v1);
}

uint64_t sub_1002DF950(_DWORD *a1, unsigned int a2)
{
  HIDWORD(v3) = 0;
  *(&v3 + 4) = 0;
  if (a2 > 0xF423F)
  {
    return 101;
  }

  LOWORD(v3) = a2;
  WORD1(v3) = BYTE2(a2);
  return sub_1002DF9D8(a1, &v3);
}

uint64_t sub_1002DF9D8(_DWORD *a1, _OWORD *a2)
{
  v3 = sub_1000E5EA8(a1);
  if (!v3)
  {
    return 122;
  }

  v4 = v3;
  v5 = sub_10029BE74(v3);
  if (!v5)
  {
    return 4806;
  }

  v6 = v5;
  *(v5 + 490) = 1;
  v7 = *(v5 + 16);
  if ((*(v5 + 72) & *(v5 + 80) & 8) == 0)
  {
    if (v7 != 1 && *(v5 + 17) == 0)
    {
      *(v5 + 17) = *a2;
    }

    v10 = sub_1002E0650(v5, 0, (v5 + 88));
    if (v10)
    {
      v8 = v10;
      if (!sub_10000C240())
      {
        goto LABEL_47;
      }

      sub_10000AF54("Could not generate confirmation value with status %!", v8);
      v11 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (*(v4 + 70) && *(v6 + 84) != 1)
      {
        v8 = 0;
        *(v6 + 84) = 2;
        return v8;
      }

      v8 = sub_1002E07E4(v4, (v6 + 88));
      if (!v8)
      {
        return v8;
      }

      if (!sub_10000C240())
      {
        goto LABEL_47;
      }

      sub_10000AF54("Could not send pairing confirmation to handle 0x%x with status %!", v4, v8);
      v13 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }
    }

    goto LABEL_54;
  }

  if (*(v5 + 16) > 4u)
  {
    if (v7 == 5)
    {
      if (!sub_10000C240())
      {
        goto LABEL_46;
      }

      sub_10000AF54("Wrong API for OOB");
      v17 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

LABEL_45:
      sub_1000E09C0();
LABEL_46:
      v8 = 4800;
LABEL_47:
      sub_1002DF818(v4, 8, v6);
      return v8;
    }

    if (v7 != 6)
    {
LABEL_40:
      if (!sub_10000C240())
      {
        goto LABEL_46;
      }

      sub_10000AF54("wrong API for STKGENMethod=%d", *(v6 + 16));
      v16 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    if (*(*v5 + 70))
    {
      if (*(v5 + 491) != 1)
      {
        return 0;
      }

      v8 = sub_1002DFF7C(v4);
      if (!v8)
      {
        return v8;
      }

      if (!sub_10000C240())
      {
        goto LABEL_47;
      }

      sub_10000AF54("recvdSMPDeferredDHKeyCheck Failed %!", v8);
      v12 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }
    }

    else
    {
      v8 = sub_1002DFEA0(v5);
      if (!v8)
      {
        return v8;
      }

      if (!sub_10000C240())
      {
        goto LABEL_47;
      }

      sub_10000AF54("Failed to send DHKey value with status %!", v8);
      v19 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }
    }

LABEL_54:
    sub_10080F604();
    goto LABEL_47;
  }

  if ((v7 - 2) >= 3)
  {
    if (v7 == 1)
    {
      if (!*(*v5 + 70))
      {
        v20 = (v5 + 216);
        v21 = sub_100240E7C((v5 + 152), (v5 + 216));
        if (v21)
        {
          v8 = v21;
          *(v6 + 200) = 0u;
          *(v6 + 184) = 0u;
          *(v6 + 168) = 0u;
          *(v6 + 152) = 0u;
          *v20 = 0u;
          *(v6 + 232) = 0u;
          *(v6 + 248) = 0u;
          *(v6 + 264) = 0u;
          *(v6 + 280) = 0u;
          *(v6 + 296) = 0u;
        }

        else
        {
          sub_10029C3C0(v6, 33);
          __s1[0] = 12;
          *&__s1[1] = *(v6 + 152);
          *&__s1[17] = *(v6 + 168);
          *&__s1[33] = *(v6 + 184);
          *&__s1[49] = *(v6 + 200);
          return sub_10029BEC0(*v6, __s1, 0x41uLL, 1);
        }

        return v8;
      }

      memset(__s1, 0, 64);
      if (memcmp(__s1, (v5 + 312), 0x40uLL))
      {
        v14 = sub_1002E0178(v6);
        if (v14)
        {
          v8 = v14;
          if (sub_10000C240())
          {
            sub_10000AF54("recvdSMPDeferredJustWorksNumComparPublicKey failed %!", v8);
            v15 = sub_10000C050(0x43u);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          goto LABEL_47;
        }
      }

      return 0;
    }

    goto LABEL_40;
  }

  *(v5 + 425) = *a2;
  *(v5 + 441) = *a2;
  v8 = sub_1002E03AC(v5);
  if (v8)
  {
    if (!sub_10000C240())
    {
      goto LABEL_47;
    }

    sub_10000AF54("smpDoOneLeSecuredConnectionPasskeyAuthItteration failed %!", v8);
    v9 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    goto LABEL_54;
  }

  return v8;
}

uint64_t sub_1002DFEA0(__int128 **a1)
{
  v6 = 0uLL;
  v2 = sub_1002E85AC(a1, &v6, 1);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("smpAuthenticationStage2 failed %!", v3);
      v4 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v7 = 13;
    v8 = v6;
    return sub_10029BEC0(*a1, &v7, 0x11uLL, 1);
  }

  return v3;
}

uint64_t sub_1002DFF7C(__int128 *a1)
{
  v15 = 0;
  v16 = 0;
  v2 = sub_10029BE74(a1);
  v3 = v2;
  if (!v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find associated pairing data.");
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v9 = 0;
    goto LABEL_27;
  }

  v4 = sub_1002E85AC(v2, &v15, 0);
  if (v4)
  {
    v5 = v4;
    if (sub_10000C240())
    {
      sub_10000AF54("smpAuthenticationStage2 failed %!", v5);
      v6 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  if (v15 != *(v3 + 492) || v16 != *(v3 + 500))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DHKey failed to match.");
      v8 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1002DF818(a1, 11, v3);
    return 0;
  }

  if (*(v3 + 424) == 1)
  {
    sub_10029C3C0(v3, 41);
  }

  if (*(*v3 + 70) == 1)
  {
    v11 = sub_1002DFEA0(v3);
  }

  else
  {
    v14 = 0;
    if (*(v3 + 16) == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    v11 = sub_1002DBAE0(a1, &v14, 0, v3 + 524, 0x10u, v12);
  }

  v9 = v11;
  if (v11)
  {
LABEL_27:
    sub_1002DF818(a1, 8, v3);
  }

  return v9;
}

uint64_t sub_1002E0178(void *a1)
{
  sub_10029C2C8(a1);
  v2 = *a1;
  if (*(*a1 + 70) == 1)
  {
    v15[0] = 12;
    *&v15[1] = *(a1 + 19);
    *&v15[17] = *(a1 + 21);
    v16 = *(a1 + 23);
    v17 = *(a1 + 25);
    v3 = sub_10029BEC0(v2, v15, 0x41uLL, 1);
    if (v3)
    {
      v4 = v3;
      if (sub_10000C240())
      {
        sub_10000AF54("smpSendPairingPublicKey failed %!", v4);
        v5 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return v4;
    }

    sub_10029C3C0(a1, 34);
    v6 = a1 + 473;
  }

  else
  {
    v6 = a1 + 457;
  }

  arc4random_buf(v6, 0x10uLL);
  *(a1 + 433) = 0;
  *(a1 + 425) = 0;
  *(a1 + 449) = 0;
  *(a1 + 441) = 0;
  if (*(*a1 + 70))
  {
    v7 = *(a1 + 41);
    *v15 = *(a1 + 39);
    *&v15[16] = v7;
    v8 = *(a1 + 21);
    v14[0] = *(a1 + 19);
    v14[1] = v8;
    v9 = sub_100240458(v14, v15, (a1 + 473), 0, a1 + 11);
    if (v9)
    {
      v10 = v9;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate confirmation value %!", v10);
        v11 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 4825;
    }

    else
    {
      sub_10029C2C8(a1);
      v4 = sub_1002E07E4(*a1, a1 + 11);
      if (v4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send confirmation value %!", v4);
          v13 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }
  }

  else
  {
    sub_10029C3C0(a1, 35);
    return 0;
  }

  return v4;
}

uint64_t sub_1002E03AC(uint64_t a1)
{
  v2 = (a1 + 88);
  v3 = (a1 + 312);
  if (*(*a1 + 70))
  {
    v4 = *(a1 + 441);
    arc4random_buf((a1 + 473), 0x10uLL);
    v5 = *(a1 + 489);
    v6 = v3[1];
    v26 = *v3;
    v27 = v6;
    v7 = *(a1 + 168);
    v24 = *(a1 + 152);
    v25 = v7;
    if ((v4 >> v5))
    {
      v8 = -127;
    }

    else
    {
      v8 = 0x80;
    }

    v9 = sub_100240458(&v24, &v26, (a1 + 473), v8, v2);
    if (v9)
    {
      v10 = v9;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate confirmation value C %!", v10);
        v11 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
LABEL_29:
          sub_10080F604();
        }
      }
    }

    else
    {
      sub_10029C3C0(a1, 34);
      if (*(a1 + 490) == 1 && (!*(a1 + 104) ? (v19 = *(a1 + 112) == 0) : (v19 = 0), !v19 && (v20 = sub_1002E8364(a1), v20)))
      {
        v10 = v20;
        if (sub_10000C240())
        {
          sub_10000AF54("recvdSMPDoSecuredConnectionPasskeySendCai failed %!", v10);
          v21 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v12 = *(a1 + 425);
    arc4random_buf((a1 + 457), 0x10uLL);
    v13 = *(a1 + 489);
    v14 = v3[1];
    v24 = *v3;
    v25 = v14;
    v15 = *(a1 + 168);
    v26 = *(a1 + 152);
    v27 = v15;
    if ((v12 >> v13))
    {
      v16 = -127;
    }

    else
    {
      v16 = 0x80;
    }

    v17 = sub_100240458(&v26, &v24, (a1 + 457), v16, v2);
    if (v17)
    {
      v10 = v17;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate confirmation value C %!", v10);
        v18 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_10029C3C0(a1, 35);
      v10 = sub_1002E07E4(*a1, v2);
      if (v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("smpSendPairingConfirmation failed %!", v10);
          v22 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_1002E0650(uint64_t *a1, int a2, void *a3)
{
  v25 = 0uLL;
  v24 = 0uLL;
  v6 = *a1;
  if (*(*a1 + 70))
  {
    v7 = (v6 + 63);
    v8 = 50;
    v9 = 51;
    v10 = 52;
    v25.i8[0] = *(v6 + 48);
    v11 = 53;
    v12 = 54;
    v13 = 49;
    v14 = 65;
    v15 = 66;
    v16 = 67;
    v17 = 68;
    v18 = 69;
    v19 = 64;
  }

  else
  {
    v7 = (v6 + 48);
    v8 = 65;
    v9 = 66;
    v10 = 67;
    v25.i8[0] = *(v6 + 63);
    v11 = 68;
    v12 = 69;
    v13 = 64;
    v14 = 50;
    v15 = 51;
    v16 = 52;
    v17 = 53;
    v18 = 54;
    v19 = 49;
  }

  v25.i8[1] = *v7;
  *(v25.i32 + 2) = *(a1 + 579);
  *(v25.i64 + 5) = *(a1 + 582);
  v25.i32[3] = *(a1 + 589);
  v24.i8[0] = *(v6 + v18);
  v24.i8[1] = *(v6 + v17);
  v24.i8[2] = *(v6 + v16);
  v24.i8[3] = *(v6 + v15);
  v24.i8[4] = *(v6 + v14);
  v24.i8[5] = *(v6 + v19);
  v24.i8[6] = *(v6 + v12);
  v24.i8[7] = *(v6 + v11);
  v20 = *(v6 + v13);
  v21 = *(v6 + v8);
  v22 = *(v6 + v9);
  v24.i8[8] = *(v6 + v10);
  v24.i8[9] = v22;
  v24.i8[10] = v21;
  v24.i8[11] = v20;
  return sub_10023FEC4((a1 + 17), &v25, &v24, (a1 + 17), (a1 + 15), a2, a3);
}

uint64_t sub_1002E07E4(uint64_t a1, void *a2)
{
  if (byte_100B6B461 == 1)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  v23 = 3;
  v24 = *a2;
  if (sub_1000ABD24(a1))
  {
    v3 = sub_10029BE74(a1);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 70);
      if ((*(v3 + 72) & *(v3 + 80) & 8) != 0)
      {
        if (v5 != 1)
        {
LABEL_9:
          if (!v5 && !sub_10029C4B0(v4, 35))
          {
            if (!sub_10000C240())
            {
              return 4823;
            }

            v6 = sub_10029C3B4();
            sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SCONFIRM to send this command, current state is %s.", v6);
            v7 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              return 4823;
            }

            goto LABEL_44;
          }

LABEL_26:
          v11 = sub_10029BEC0(*v4, &v23, 0x11uLL, 1);
          if (v11)
          {
            v9 = v11;
            sub_10029BA98(v4, v11, 1);
            return v9;
          }

          if ((*(v4 + 72) & *(v4 + 80) & 8) != 0)
          {
            v12 = *(v4 + 16);
            switch(v12)
            {
              case 6:
                goto LABEL_32;
              case 5:
                if (sub_10000C240())
                {
                  sub_10000AF54("Should not be here !");
                  v22 = sub_10000C050(0x43u);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }

                sub_10029BA98(v4, 408, 1);
                return 0;
              case 1:
LABEL_32:
                v13 = v4;
                v14 = 36;
LABEL_55:
                sub_10029C3C0(v13, v14);
                return 0;
            }

            if (*(*v4 + 70) == 1)
            {
              v14 = 36;
            }

            else
            {
              v14 = 35;
            }
          }

          else if (*(a1 + 70))
          {
            v14 = 35;
          }

          else
          {
            v14 = 34;
          }

          v13 = v4;
          goto LABEL_55;
        }

        if (sub_10029C4B0(v3, 34))
        {
          v5 = *(a1 + 70);
          goto LABEL_9;
        }

        if (!sub_10000C240())
        {
          return 4823;
        }

        v15 = sub_10029C3B4();
        sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MPUBLICK to send this command, current state is %s.", v15);
        v16 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          return 4823;
        }
      }

      else
      {
        if (!*(a1 + 70))
        {
          if (!sub_10029C4B0(v3, 18))
          {
            if (!sub_10000C240())
            {
              return 4823;
            }

            v19 = sub_10029C3B4();
            sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_RESP to send this command, current state is %s.", v19);
            v20 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              return 4823;
            }

            goto LABEL_44;
          }

          v5 = *(a1 + 70);
        }

        if (v5 != 1 || sub_10029C4B0(v4, 34))
        {
          goto LABEL_26;
        }

        if (!sub_10000C240())
        {
          return 4823;
        }

        v17 = sub_10029C3B4();
        sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MCONFIRM to send this command, current state is %s.", v17);
        v18 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          return 4823;
        }
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        return 4823;
      }

      sub_10000AF54("This device is not in a pairing state.");
      v10 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        return 4823;
      }
    }

LABEL_44:
    sub_1000E09C0();
    return 4823;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("This command is only available to LE devices.");
    v8 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 4820;
}

uint64_t sub_1002E0BA8(uint64_t a1, int a2, unsigned __int8 a3)
{
  v3 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v3 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v4 = 11;
  }

  else
  {
    v4 = byte_100B53E4A;
  }

  v5 = v3 & 0xF7;
  v6 = v4 & 0xF7;
  if (byte_100B6B410)
  {
    v7 = v4 & 0xF7;
  }

  else
  {
    v7 = v4;
  }

  if (byte_100B6B410)
  {
    v8 = v3 & 0xF7;
  }

  else
  {
    v8 = v3;
  }

  if (!a1 || !sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("This handle is not a LE connection.");
    v18 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

LABEL_34:
    sub_1000E09C0();
    return 4820;
  }

  v12 = sub_10029BE74(a1);
  if (!v12)
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("There is no security request for this connection. Ignoring reply.");
    v20 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

    goto LABEL_34;
  }

  v13 = v12;
  *(v12 + 72) = a3;
  if (!a2)
  {
LABEL_70:
    sub_1002DF818(a1, 8, v13);
    return 0;
  }

  if (*(a1 + 55))
  {
    v14 = (a1 + 56);
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1002DB2CC((a1 + 48), v14);
  v16 = v13[80];
  if ((v16 & 4) != 0 && byte_100B53E4B != 3)
  {
    v13[72] |= 4u;
  }

  if (v16 & 8) != 0 && (byte_100B6B411)
  {
    v13[72] |= 8u;
    if ((byte_100B6B412 & 1) == 0 && (v16 & 0x20) != 0 && (*(a1 + 264) & 1) == 0 && (v8 & 8) != 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Sending CT2=1");
        v17 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v42 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      a3 |= 0x20u;
    }
  }

  else
  {
    a3 &= ~0x20u;
    v7 = v6;
    v8 = v5;
  }

  if (*(a1 + 264))
  {
    v21 = a3 & 0xDF;
  }

  else
  {
    v6 = v7;
    v5 = v8;
    v21 = a3;
  }

  if (byte_100B6B413 == 1 && (v21 & 0x20) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Force sending CT2=1");
      v22 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_10000C0FC();
        *buf = 136446210;
        v42 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v21 |= 0x20u;
  }

  v13[73] = v15;
  v13[76] &= v5;
  v13[74] &= v6;
  v13[72] |= byte_100B6B414 | v21;
  if (sub_10000C240())
  {
    sub_10000AF54("authReq=%x expectedKeys=%x requestedKeys=%x", v21, v13[74], v13[76]);
    v24 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = sub_10000C0FC();
      *buf = 136446210;
      v42 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v26 = v13[73];
  v27 = v13[72];
  v28 = v13[74];
  v29 = v13[76];
  buf[0] = 2;
  buf[1] = byte_100B53E4B;
  buf[2] = v26;
  buf[3] = v27;
  LOBYTE(v42) = 16;
  BYTE1(v42) = v28;
  BYTE2(v42) = v29;
  if (!sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      goto LABEL_70;
    }

    sub_10000AF54("This command is only available to LE devices.");
    v33 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  if (*(a1 + 70) != 1)
  {
    if (!sub_10000C240())
    {
      goto LABEL_70;
    }

    sub_10000AF54("You cannot send this command when central.");
    v34 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v30 = sub_10029BE74(a1);
  if (!v30)
  {
    if ((sub_10000C240() & 1) == 0)
    {
      goto LABEL_70;
    }

    v35 = "NULL";
    goto LABEL_68;
  }

  v31 = v30;
  if (!sub_10029C4B0(v30, 17))
  {
    if (!sub_10000C240())
    {
      goto LABEL_70;
    }

    v35 = sub_10029C3B4();
LABEL_68:
    sub_10000AF54("Invalid pairing state for handle 0x%x : %s", a1, v35);
    v36 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

LABEL_69:
    sub_1000E09C0();
    goto LABEL_70;
  }

  v32 = sub_10029BEC0(*v31, buf, 7uLL, 1);
  if (v32)
  {
    sub_10029BA98(v31, v32, 1);
    goto LABEL_70;
  }

  sub_10029C3C0(v31, 18);
  *(v31 + 586) = *buf;
  *(v31 + 590) = v42;
  *(v31 + 592) = BYTE2(v42);
  v37 = v13[72];
  v38 = v13[80];
  v39 = v13[73];
  if ((v37 & v38 & 8) != 0)
  {
    if (v39 == 1)
    {
      goto LABEL_76;
    }
  }

  else if (v39 != 1)
  {
    goto LABEL_77;
  }

  if (v13[79] == 1)
  {
LABEL_76:
    v40 = 5;
    goto LABEL_80;
  }

LABEL_77:
  if (((v38 | v37) & 4) != 0)
  {
    v40 = sub_1002E1188(v13[78], byte_100B53E4B, (v37 & v38 & 8) != 0);
  }

  else
  {
    v40 = 1;
  }

LABEL_80:
  v13[16] = v40;
  result = sub_1002E12C0(v13, 0);
  if (result)
  {
    goto LABEL_70;
  }

  return result;
}

uint64_t sub_1002E1188(int a1, unsigned int a2, int a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      if (a2 < 5)
      {
        return (0x201020101uLL >> (8 * (a2 & 0x1F)));
      }

      goto LABEL_33;
    }

    if (a1 != 1)
    {
      goto LABEL_33;
    }

    LOBYTE(v3) = 1;
    if (a2 <= 1)
    {
      if (!a2)
      {
        return v3;
      }

      if (a2 == 1)
      {
        if (a3)
        {
          LOBYTE(v3) = 6;
        }

        else
        {
          LOBYTE(v3) = 1;
        }

        return v3;
      }

      goto LABEL_33;
    }

    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return v3;
      }

LABEL_14:
      if (a2 == 4)
      {
        v4 = a3 == 0;
        LOBYTE(v3) = 2;
        goto LABEL_25;
      }

LABEL_33:
      sub_1000D660C();
      LOBYTE(v3) = 1;
      return v3;
    }

LABEL_35:
    LOBYTE(v3) = 2;
    return v3;
  }

  if (a1 == 2)
  {
    if (a2 < 5)
    {
      return (0x301040303uLL >> (8 * (a2 & 0x1F)));
    }

    goto LABEL_33;
  }

  if (a1 == 3)
  {
    if (a2 < 5)
    {
LABEL_19:
      LOBYTE(v3) = 1;
      return v3;
    }

    goto LABEL_33;
  }

  if (a1 != 4)
  {
    goto LABEL_33;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    LOBYTE(v3) = 3;
    return v3;
  }

  if (a2 != 1)
  {
    goto LABEL_33;
  }

  v4 = a3 == 0;
  LOBYTE(v3) = 3;
LABEL_25:
  if (!v4)
  {
    LOBYTE(v3) = 6;
  }

  return v3;
}

uint64_t sub_1002E12C0(uint64_t *a1, int a2)
{
  v3 = a1[10] & a1[9];
  if ((v3 & 8) == 0)
  {
    *(a1 + 74) &= ~8u;
    *(a1 + 76) &= ~8u;
    arc4random_buf(a1 + 15, 0x10uLL);
    if (off_100BCE1D8)
    {
      v5 = *(a1 + 16);
      if (v5 != 1)
      {
        if (a2)
        {
          v6 = 2;
        }

        else
        {
          v6 = 3;
        }

        if (v5 == v6)
        {
          *__buf = 0;
          *(a1 + 13) = 1;
          arc4random_buf(__buf, 4uLL);
          v7 = *__buf % 0xF423Fu + 1;
          *(a1 + 33) = v7;
          *(a1 + 35) = BYTE2(v7);
LABEL_35:
          sub_1002E83F4(*a1);
          return 0;
        }

        if (v5 == 5)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

LABEL_34:
        *(a1 + 13) = v11;
        goto LABEL_35;
      }

LABEL_23:
      *(a1 + 13) = 0;
      goto LABEL_35;
    }

    return 4824;
  }

  *(a1 + 77) |= 1u;
  *(a1 + 75) |= 1u;
  if ((*(a1 + 76) & 8) != 0)
  {
    v8 = *(a1 + 74);
    *(a1 + 594) = (v8 & 8) != 0;
    if ((v3 & 0x20) != 0 && (v8 & 8) != 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Both sides set CT2=1, will use H7");
        v9 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *__buf = 136446210;
          *&__buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", __buf, 0xCu);
        }
      }

      *(a1 + 593) = 1;
    }
  }

  else
  {
    *(a1 + 594) = 0;
  }

  if (*(*a1 + 70) == 1)
  {
    sub_10029C3C0(a1, 32);
  }

  v10 = *(a1 + 16);
  if (v10 == 1)
  {
    goto LABEL_23;
  }

  if (v10 == 5)
  {
    if (off_100BCE1D8)
    {
      v11 = 5;
      goto LABEL_34;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Cannot do OOB if there is no PAIRING_DISPLAY callback registered");
      v13 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4824;
  }

  if (*(*a1 + 70) == 1)
  {
    return 0;
  }

  result = sub_100240E7C(a1 + 19, a1 + 27);
  if (result)
  {
    *(a1 + 25) = 0u;
    *(a1 + 23) = 0u;
    *(a1 + 21) = 0u;
    *(a1 + 19) = 0u;
    *(a1 + 27) = 0u;
    *(a1 + 29) = 0u;
    *(a1 + 31) = 0u;
    *(a1 + 33) = 0u;
    *(a1 + 35) = 0u;
    *(a1 + 37) = 0u;
  }

  else
  {
    sub_10029C3C0(a1, 33);
    __buf[0] = 12;
    *&__buf[1] = *(a1 + 19);
    v15 = *(a1 + 21);
    v16 = *(a1 + 23);
    v17 = *(a1 + 25);
    return sub_10029BEC0(*a1, __buf, 0x41uLL, 1);
  }

  return result;
}

uint64_t sub_1002E15E0(const void *a1, unsigned int a2)
{
  if (a2 < 0x10)
  {
    return 1;
  }

  __s2 = xmmword_1008A5090;
  v6[0] = 0;
  v6[1] = 0;
  sub_1000075EC(v6, &__s2, 0x10uLL);
  if (memcmp(a1, &__s2, a2))
  {
    if (memcmp(a1, v6, a2))
    {
      return 1;
    }
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Peer device is using a debug LTK, aborting pairing");
    v5 = sub_10000C050(0x43u);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002E16D8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid keys structure.");
      v8 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  if (!a1 || !sub_1000ABD24(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.");
      v7 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4820;
  }

  a1[296] = *(a2 + 82);
  if (a1[168] == 3)
  {
    v4 = 48;
    if (a1[55])
    {
      v4 = 56;
    }

    v5 = sub_1002DAEC4(&a1[v4], a2 + 28, *(a2 + 44), *(a2 + 45));
    if (v5 && sub_10000C240())
    {
      sub_10000AF54("LE_LongTermKeyReply failed %!", v5);
      v6 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return v5;
  }

  v10 = *(a2 + 80);
  if ((v10 & 8) != 0 && (*(a2 + 45) & 0xFE) == 2)
  {
    v14 = 0;
    a1[240] = 1;
    return sub_1002DBAE0(a1, &v14, 0, a2 + 28, *(a2 + 44), *(a2 + 45));
  }

  if ((~v10 & 7) != 0)
  {
    return 101;
  }

  a1[240] = 1;
  v11 = *(a2 + 18);
  v12 = *(a2 + 16);
  v13 = *(a2 + 17);

  return sub_1002DBAE0(a1, a2 + 20, v11, a2, v12, v13);
}

uint64_t sub_1002E1908(uint64_t a1, int a2, uint64_t a3)
{
  v3 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v3 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v4 = 11;
  }

  else
  {
    v4 = byte_100B53E4A;
  }

  v5 = v3 & 0xF7;
  v6 = v4 & 0xF7;
  if (byte_100B6B410)
  {
    v7 = v4 & 0xF7;
  }

  else
  {
    v7 = v4;
  }

  if (byte_100B6B410)
  {
    v8 = v3 & 0xF7;
  }

  else
  {
    v8 = v3;
  }

  if (!a1 || !sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("This handle is not a LE connection.");
    v22 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

LABEL_33:
    sub_1000E09C0();
    return 4820;
  }

  v12 = sub_10029BE74(a1);
  if (!v12)
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("There is no security request for this connection. Ignoring reply.");
    v23 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

    goto LABEL_33;
  }

  v13 = v12;
  if (!a2)
  {
    goto LABEL_50;
  }

  if (!a3 || (result = sub_1002DBD34(a1, a3), result))
  {
    if (*(a1 + 55))
    {
      v15 = (a1 + 56);
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_1002DB2CC((a1 + 48), v15);
    v17 = v13[80] & 4;
    v18 = byte_100B6B414;
    v19 = v17 | v18 | sub_1002D20F4();
    if ((v13[80] & 8) != 0 && byte_100B6B411 == 1)
    {
      v20 = v19 | 8;
      if ((byte_100B6B412 & 1) == 0 && (v13[80] & 0x20) != 0 && (*(a1 + 264) & 1) == 0 && (v8 & 8) != 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Sending CT2=1");
          v21 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v31 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v20 = v19 | 0x28;
      }
    }

    else
    {
      v20 = v19 & 0xDF;
      v7 = v6;
      v8 = v5;
    }

    if (*(a1 + 264))
    {
      v24 = v20 & 0xDF;
    }

    else
    {
      v6 = v7;
      v5 = v8;
      v24 = v20;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("authReq=%x expectedKeys=%x requestedKeys=%x", v24, v5, v6);
      v25 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_10000C0FC();
        *buf = 136446210;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (byte_100B6B415 == 1)
    {
      v27 = a1;
      v28 = 3;
LABEL_51:
      sub_1002DF818(v27, v28, v13);
      return 0;
    }

    v29 = sub_1002E1C74(a1, byte_100B53E4B, v16, v24, v5, v6);
    result = 0;
    if (v29)
    {
      if (v29 != 4804)
      {
LABEL_50:
        v27 = a1;
        v28 = 8;
        goto LABEL_51;
      }
    }
  }

  return result;
}

uint64_t sub_1002E1C74(uint64_t a1, char a2, char a3, char a4, char a5, char a6)
{
  LOBYTE(v18) = 1;
  BYTE1(v18) = a2;
  BYTE2(v18) = a3;
  HIBYTE(v18) = a4;
  LOBYTE(v19) = 16;
  HIBYTE(v19) = a5;
  v20 = a6;
  if (sub_1000ABD24(a1))
  {
    if (*(a1 + 70))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("You cannot send this command when peripheral.");
        v9 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4821;
    }

    v13 = sub_10029BE74(a1);
    if (v13)
    {
      v14 = v13;
      if (*(v13 + 8) >= 0x11u)
      {
        if (sub_10000C240())
        {
          v15 = sub_10029C3B4();
          sub_10000AF54("Cannot ask for pairing, device is already in state %s.", v15);
          v16 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        return 4804;
      }

LABEL_19:
      v14[72] = a4;
      v14[73] = a3;
      v10 = sub_10029BEC0(*v14, &v18, 7uLL, 1);
      if (v10)
      {
        sub_10029BA98(v14, v10, 1);
      }

      else
      {
        sub_10029C3C0(v14, 17);
        *(v14 + 579) = v18;
        *(v14 + 583) = v19;
        v14[585] = v20;
      }

      return v10;
    }

    v14 = sub_10029C1A0(a1);
    if (v14)
    {
      goto LABEL_19;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate a pairing record for handle 0x%x", a1);
      v17 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 104;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection handle.");
      v11 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4820;
  }
}

void sub_1002E1EA0(_BYTE *a1, int *a2, int a3)
{
  v32 = a1;
  v6 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v6 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v7 = 11;
  }

  else
  {
    v7 = byte_100B53E4A;
  }

  if (byte_100B6B410)
  {
    v8 = v7 & 7;
  }

  else
  {
    v8 = v7;
  }

  if (byte_100B6B410)
  {
    v9 = v6 & 0xF7;
  }

  else
  {
    v9 = v6;
  }

  v10 = sub_10029BE74(a1);
  v11 = v10;
  v12 = byte_100B6B460;
  if (byte_100B6B460)
  {
    goto LABEL_51;
  }

  if (a3 != 6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_50;
    }

    sub_10000AF54("Invalid Pairing Request size %d.", a3);
    v15 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

LABEL_69:
    sub_1000E09C0();
LABEL_50:
    v12 = 8;
    goto LABEL_51;
  }

  if (!a1[70])
  {
    if (!sub_10000C240())
    {
      goto LABEL_50;
    }

    sub_10000AF54("This command should only be received if we are peripheral.");
    v16 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

  if (v10)
  {
    sub_10029C2C8(v10);
    if (!sub_10029C4B0(v11, 16) && (v11[9] & 1) == 0)
    {
      if (!sub_10000C240())
      {
        goto LABEL_50;
      }

      v13 = sub_10029C3B4();
      sub_10000AF54("Received pairing request from central, but we had already a previous non-encrypted entry in state %s.", v13);
      v14 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v11 = sub_10029C1A0(a1);
    if (!v11)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not allocate new device...");
        v21 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v11 = 0;
      goto LABEL_50;
    }
  }

  sub_10029C250(v11, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5));
  if (v11[78] >= 5u)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid remote IOCaps %d.", v11[78]);
      v17 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_32;
  }

  if (v11[79] >= 2u)
  {
    if (!sub_10000C240())
    {
      goto LABEL_50;
    }

    sub_10000AF54("Invalid OOB flags %d.", v11[79]);
    v18 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

  if ((v11[80] & 0xC2) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid authentication requirements 0x%x.", v11[80]);
      v19 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (v11[81] - 17 <= 0xFFFFFFF5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid maximum encryption size %d", v11[81]);
      v20 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v12 = 6;
    goto LABEL_51;
  }

  v22 = v11[82];
  if (v22 > 0xF || (v23 = v11[83], v23 >= 0x10))
  {
    if (!sub_10000C240())
    {
      goto LABEL_50;
    }

    sub_10000AF54("Invalid key distribution parameters initiator:0x%x, responder:0xx", v11[82]);
    v30 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

  if (byte_100B6B415 == 1 && (v11[80] & 8) == 0)
  {
LABEL_32:
    v12 = 3;
LABEL_51:
    sub_1002DF818(a1, v12, v11);
    return;
  }

  v24 = v22 & v8;
  if (byte_100B53E49 != -1)
  {
    v24 = byte_100B53E49;
  }

  v11[74] = v24;
  v11[75] = 0;
  v25 = v23 & v9;
  if (byte_100B53E4A != 255)
  {
    v25 = byte_100B53E4A;
  }

  v11[76] = v25;
  v11[77] = 0;
  sub_10029C3C0(v11, 17);
  v11[579] = 1;
  v26 = *a2;
  *(v11 + 292) = *(a2 + 2);
  *(v11 + 145) = v26;
  if (off_100BCE1D0)
  {
    if (v32[33] == 7)
    {
      *(&buf + 1) = &v32;
      *&buf = 8;
      v27 = sub_10002195C(sub_1002E6CEC, &buf, 0, 0);
      if (v27)
      {
        v28 = v27;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not dispatch pairing request with status %!.", v28);
          v29 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Got Pairing Request before link is ready for handle %p, lets handle this when the link is actually ready. Link state is %d", v32, v32[33]);
      v31 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
      }
    }
  }
}

uint64_t sub_1002E2444(uint64_t a1, int *a2, int a3)
{
  v6 = sub_10029BE74(a1);
  v7 = v6;
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Pairing response with no pairing request for handle %d.", a1);
    v10 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

LABEL_45:
    sub_1000E09C0();
LABEL_46:
    v8 = 8;
    return sub_1002DF818(a1, v8, v7);
  }

  v8 = byte_100B6B460;
  if (byte_100B6B460)
  {
    return sub_1002DF818(a1, v8, v7);
  }

  if (a3 != 6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Invalid Pairing Response size %d.", a3);
    v11 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  sub_10029C2C8(v6);
  if (*(a1 + 70) == 1)
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("This command should only be received if we are central.");
    v9 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (!sub_10029C4B0(v7, 17))
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Pairing response was received without a pairing request for handle %d.", a1);
    v13 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  sub_10029C250(v7, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5));
  if (*(v7 + 78) >= 5u)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid remote IOCaps %d.", *(v7 + 78));
      v12 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_19;
  }

  if (*(v7 + 79) >= 2u)
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Invalid OOB flags %d.", *(v7 + 79));
    v14 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ((*(v7 + 80) & 0xC2) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid authentication requirements 0x%x.", *(v7 + 80));
      v15 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (*(v7 + 81) - 17 <= 0xFFFFFFF5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid maximum encryption size %d", *(v7 + 81));
      v16 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v8 = 6;
    return sub_1002DF818(a1, v8, v7);
  }

  v17 = *(v7 + 82);
  if (v17 > 0xF || (v18 = *(v7 + 83), v18 >= 0x10))
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Invalid key distribution parameters initiator:0x%x, responder:0xx", *(v7 + 82));
    v22 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  *(v7 + 76) = v17 & 0xB;
  *(v7 + 75) = 0;
  *(v7 + 74) = v18 & 0xB;
  *(v7 + 77) = 0;
  sub_10029C3C0(v7, 18);
  v19 = *(v7 + 72);
  v20 = *(v7 + 80);
  if (byte_100B6B415 == 1 && (v19 & v20 & 8) == 0)
  {
LABEL_19:
    v8 = 3;
    return sub_1002DF818(a1, v8, v7);
  }

  v21 = *(v7 + 73);
  if ((v19 & v20 & 8) != 0)
  {
    if (v21 == 1)
    {
      goto LABEL_50;
    }
  }

  else if (v21 != 1)
  {
    goto LABEL_51;
  }

  if (*(v7 + 79) == 1)
  {
LABEL_50:
    v24 = 5;
    goto LABEL_54;
  }

LABEL_51:
  if (((v20 | v19) & 4) != 0)
  {
    v24 = sub_1002E1188(byte_100B53E4B, *(v7 + 78), (v19 & v20 & 8) != 0);
  }

  else
  {
    v24 = 1;
  }

LABEL_54:
  *(v7 + 16) = v24;
  *(v7 + 586) = 2;
  v25 = *a2;
  *(v7 + 591) = *(a2 + 2);
  *(v7 + 587) = v25;
  result = sub_1002E12C0(v7, 1);
  if (result)
  {
    goto LABEL_46;
  }

  return result;
}

void sub_1002E289C(uint64_t a1, _OWORD *a2, int a3)
{
  v6 = sub_10029BE74(a1);
  v7 = v6;
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_23;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v13 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_23;
    }

    sub_10000AF54("Invalid Pairing Confirmation size %d", a3);
    v14 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v8 = *(v6 + 72) & *(v6 + 80);
  v9 = sub_10029BE74(a1);
  v7 = v9;
  if ((v8 & 8) != 0)
  {
    if (v9)
    {
      sub_10029C2C8(v9);
      v10 = *(a1 + 70);
      if (v10 == 1)
      {
        if (!sub_10029C4B0(v7, 34))
        {
          if (!sub_10000C240())
          {
            goto LABEL_23;
          }

          v18 = sub_10029C3B4();
          sub_10000AF54("Device was not in the proper state. State is %s.", v18);
          v19 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v10 = *(a1 + 70);
      }

      if (v10 || sub_10029C4B0(v7, 35))
      {
        *(v7 + 104) = *a2;
        v11 = *(v7 + 16);
        if (v11 == 6)
        {
          goto LABEL_13;
        }

        if (v11 != 5)
        {
          if (v11 != 1)
          {
            *(v7 + 104) = *a2;
            if (*(a1 + 70))
            {
              if (*(v7 + 490) != 1)
              {
                return;
              }

              if (!*(v7 + 104) && *(v7 + 112) == 0)
              {
                return;
              }

              v22 = sub_1002E8364(v7);
              if (!v22)
              {
                return;
              }

              v23 = v22;
              if (!sub_10000C240())
              {
                goto LABEL_23;
              }

              sub_10000AF54("recvdSMPDoSecuredConnectionPasskeySendCai failed %!", v23);
              v24 = sub_10000C050(0x43u);
              if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_23;
              }
            }

            else
            {
              v34 = sub_1002E86E4(*v7, (v7 + 457));
              if (!v34)
              {
LABEL_77:

                sub_10029C3C0(v7, 37);
                return;
              }

              v35 = v34;
              if (!sub_10000C240())
              {
                goto LABEL_23;
              }

              sub_10000AF54("smpSendPairingRandom failed %!", v35);
              v36 = sub_10000C050(0x43u);
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_23;
              }
            }

LABEL_76:
            sub_10080F604();
            goto LABEL_23;
          }

LABEL_13:
          if (*(a1 + 70))
          {
            if (!sub_10000C240())
            {
              goto LABEL_23;
            }

            sub_10000AF54("At this point, peripheral should not get a confirmation value");
            v12 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          v29 = sub_1002E86E4(a1, (v7 + 457));
          if (v29)
          {
            v30 = v29;
            if (!sub_10000C240())
            {
              goto LABEL_23;
            }

            sub_10000AF54("Failed to send pairing random to peripheral %!", v30);
            v31 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_23;
            }

            goto LABEL_76;
          }

          goto LABEL_77;
        }

        if (!sub_10000C240())
        {
          goto LABEL_23;
        }

        sub_10000AF54("Should not be here !");
        v20 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (!sub_10000C240())
        {
          goto LABEL_23;
        }

        v27 = sub_10029C3B4();
        sub_10000AF54("Device was not in the proper state. State is %s.", v27);
        v28 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_23;
      }

      sub_10000AF54("Could not find associated pairing data.");
      v16 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    sub_1000E09C0();
LABEL_23:
    sub_1002DF818(a1, 8, v7);
    return;
  }

  if (!v9)
  {
    if (!sub_10000C240())
    {
      goto LABEL_23;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v17 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  sub_10029C2C8(v9);
  v15 = *(a1 + 70);
  if (v15 == 1)
  {
    if (!sub_10029C4B0(v7, 18))
    {
      if (!sub_10000C240())
      {
        goto LABEL_23;
      }

      v25 = sub_10029C3B4();
      sub_10000AF54("Device was not in the proper state. State is %s.", v25);
      v26 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v15 = *(a1 + 70);
  }

  if (!v15 && !sub_10029C4B0(v7, 34))
  {
    if (!sub_10000C240())
    {
      goto LABEL_23;
    }

    v32 = sub_10029C3B4();
    sub_10000AF54("Device was not in the proper state. State is %s.", v32);
    v33 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *(v7 + 104) = *a2;
  if (*(a1 + 70) == 1)
  {
    sub_10029C3C0(v7, 34);
    if (*(v7 + 84) != 2)
    {
      *(v7 + 84) = 1;
      return;
    }

    if (sub_1002E07E4(a1, (v7 + 88)))
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_10029C3C0(v7, 35);
    if (sub_1002E86E4(a1, (v7 + 120)))
    {
      goto LABEL_23;
    }
  }
}

void sub_1002E2E84(__int128 *a1, _OWORD *a2, int a3)
{
  v6 = sub_10029BE74(a1);
  v7 = v6;
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v14 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Invalid Pairing Random size %d", a3);
    v15 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((*(v6 + 72) & *(v6 + 80) & 8) == 0)
  {
    v113 = 0uLL;
    *&v111 = 0;
    v18 = sub_10029BE74(a1);
    v7 = v18;
    if (v18)
    {
      sub_10029C2C8(v18);
      v19 = *(a1 + 70);
      if (v19 == 1)
      {
        if (!sub_10029C4B0(v7, 35))
        {
          if (!sub_10000C240())
          {
            goto LABEL_21;
          }

          v36 = sub_10029C3B4();
          sub_10000AF54("Initiator device was not in the proper state. State is %s.", v36);
          v37 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        v19 = *(a1 + 70);
      }

      if (v19 || sub_10029C4B0(v7, 36))
      {
        *(v7 + 136) = *a2;
        if (*(a1 + 70) == 1)
        {
          v20 = 36;
        }

        else
        {
          v20 = 37;
        }

        sub_10029C3C0(v7, v20);
        if (sub_1002E0650(v7, 1, &v113))
        {
          goto LABEL_21;
        }

        v21 = v113 == *(v7 + 104) && *(&v113 + 1) == *(v7 + 112);
        if (v21)
        {
          if (*(a1 + 70) == 1 && sub_1002E86E4(a1, (v7 + 120)))
          {
            goto LABEL_21;
          }

          sub_10029C3C0(v7, 40);
          if (*(a1 + 70))
          {
            v58 = (v7 + 120);
            v59 = (v7 + 136);
          }

          else
          {
            v58 = (v7 + 136);
            v59 = (v7 + 120);
          }

          if (sub_100240170((v7 + 17), v58, v59, (v7 + 56)))
          {
            goto LABEL_21;
          }

          v80 = *(v7 + 81);
          if (v80 != 16)
          {
            bzero((v7 + 56 + v80), 16 - v80);
          }

          sub_10029C3C0(v7, 41);
          if (!*(a1 + 70))
          {
            if (sub_1002DBAE0(a1, &v111, 0, v7 + 56, 0x10u, *(v7 + 16) != 1))
            {
              goto LABEL_21;
            }
          }

          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("The confirmation value does not match.");
          v22 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

LABEL_41:
        v16 = a1;
        v17 = 4;
        goto LABEL_22;
      }

      if (!sub_10000C240())
      {
        goto LABEL_21;
      }

      v40 = sub_10029C3B4();
      sub_10000AF54("Responder device was not in the proper state. State is %s.", v40);
      v41 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_21;
      }

      sub_10000AF54("Could not find associated pairing data.");
      v24 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    sub_1000E09C0();
LABEL_21:
    v16 = a1;
    v17 = 8;
LABEL_22:
    sub_1002DF818(v16, v17, v7);
    return;
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v8 = sub_10029BE74(a1);
  v7 = v8;
  if (!v8)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v23 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  sub_10029C2C8(v8);
  v9 = *(a1 + 70);
  if (v9 != 1)
  {
    goto LABEL_8;
  }

  if (!sub_10029C4B0(v7, 36))
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    v25 = sub_10029C3B4();
    sub_10000AF54("Initiator device was not in the proper state. State is %s.", v25);
    v26 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9 = *(a1 + 70);
LABEL_8:
  if (v9)
  {
    goto LABEL_11;
  }

  if (!sub_10029C4B0(v7, 37))
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    v38 = sub_10029C3B4();
    sub_10000AF54("Initiator device was not in the proper state. State is %s.", v38);
    v39 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9 = *(a1 + 70);
LABEL_11:
  v21 = v9 == 1;
  v10 = 473;
  if (v21)
  {
    v10 = 457;
  }

  *(v7 + v10) = *a2;
  v113 = 0u;
  v114 = 0u;
  v11 = *v7;
  if (*(*v7 + 70))
  {
    v12 = v11 + 48;
    v13 = v11 + 63;
  }

  else
  {
    v12 = v11 + 63;
    v13 = v11 + 48;
  }

  v27 = sub_1002405B8((v7 + 376), (v7 + 457), (v7 + 473), 1651797093, v12, v13, &v113, 32);
  if (v27)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to generate LTK %!", v27);
      v28 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("smpCalculateLtkAndMacKey Failed %!", v27);
    v29 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

LABEL_102:
    sub_10080F604();
    goto LABEL_21;
  }

  v30 = v114;
  *(v7 + 408) = v113;
  *(v7 + 524) = v30;
  v31 = *(v7 + 81);
  if (v31 != 16)
  {
    bzero((v7 + 524 + v31), 16 - v31);
  }

  *(v7 + 424) = 1;
  v32 = *(v7 + 16);
  if (v32 != 6)
  {
    if (v32 == 5)
    {
      if (*(a1 + 70) != 1)
      {
        sub_10029C3C0(v7, 39);
        v60 = sub_1002DFEA0(v7);
        if (v60)
        {
          v61 = v60;
          if (!sub_10000C240())
          {
            goto LABEL_21;
          }

          sub_10000AF54("Failed to send DHKey value with status %!", v61);
          v62 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_102;
        }

        return;
      }

      v42 = sub_1002E86E4(a1, (v7 + 473));
      if (v42)
      {
        v43 = v42;
        if (!sub_10000C240())
        {
          goto LABEL_21;
        }

        sub_10000AF54("Failed to send Nb to central with status %!", v43);
        v44 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_102;
      }
    }

    else
    {
      if (v32 == 1)
      {
        goto LABEL_64;
      }

      if (!*(a1 + 70))
      {
        v113 = 0uLL;
        v70 = *(v7 + 441) | (*(v7 + 426) << 8) | (*(v7 + 427) << 16) | (*(v7 + 428) << 24);
        v71 = *(v7 + 489);
        v72 = *(v7 + 328);
        v109 = *(v7 + 312);
        v110 = v72;
        v73 = *(v7 + 168);
        v111 = *(v7 + 152);
        v112 = v73;
        if ((v70 >> v71))
        {
          v74 = -127;
        }

        else
        {
          v74 = 0x80;
        }

        v75 = sub_100240458(&v109, &v111, (v7 + 473), v74, &v113);
        if (v75)
        {
          v76 = v75;
          if (!sub_10000C240())
          {
            goto LABEL_21;
          }

          sub_10000AF54("Failed to generate confirmation value %!", v76);
          v77 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v113 != *(v7 + 104) || *(&v113 + 1) != *(v7 + 112))
          {
            if (!sub_10000C240())
            {
              goto LABEL_41;
            }

            sub_10000AF54("pairing confirmation does not match %!", 0);
            v87 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_41;
            }

LABEL_147:
            sub_1000E09C0();
            goto LABEL_41;
          }

          *(v7 + 104) = 0;
          *(v7 + 112) = 0;
          v95 = ++*(v7 + 489);
          if (v95 > 0x13)
          {
            sub_10029C3C0(v7, 39);
            v105 = sub_1002DFEA0(v7);
            if (!v105)
            {
              return;
            }

            v106 = v105;
            if (!sub_10000C240())
            {
              goto LABEL_21;
            }

            sub_10000AF54("Failed to send DHKey value with status %!", v106);
            v107 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }
          }

          else
          {
            v96 = sub_1002E03AC(v7);
            if (!v96)
            {
              v103 = v7;
              v104 = 35;
              goto LABEL_169;
            }

            v97 = v96;
            if (!sub_10000C240())
            {
              goto LABEL_21;
            }

            sub_10000AF54("smpDoOneLeSecuredConnectionPasskeyAuthItteration returned %!", v97);
            v98 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }
          }
        }

LABEL_177:
        sub_10080F604();
        goto LABEL_21;
      }

      v113 = 0uLL;
      v50 = *(v7 + 441);
      v51 = *(v7 + 489);
      v52 = *(v7 + 328);
      v111 = *(v7 + 312);
      v112 = v52;
      v53 = *(v7 + 168);
      v109 = *(v7 + 152);
      v110 = v53;
      if ((v50 >> v51))
      {
        v54 = -127;
      }

      else
      {
        v54 = 0x80;
      }

      v55 = sub_100240458(&v111, &v109, (v7 + 457), v54, &v113);
      if (v55)
      {
        v56 = v55;
        if (!sub_10000C240())
        {
          goto LABEL_21;
        }

        sub_10000AF54("Failed to generate confirmation value %!", v56);
        v57 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_177;
      }

      if (v113 != *(v7 + 104) || *(&v113 + 1) != *(v7 + 112))
      {
        if (!sub_10000C240())
        {
          goto LABEL_41;
        }

        sub_10000AF54("pairing confirmation does not match %!", 0);
        v79 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        goto LABEL_147;
      }

      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      v88 = sub_1002E86E4(*v7, (v7 + 473));
      if (v88)
      {
        v89 = v88;
        if (!sub_10000C240())
        {
          goto LABEL_21;
        }

        sub_10000AF54("smpSendPairingRandom failed %!", v89);
        v90 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_177;
      }

      v99 = ++*(v7 + 489);
      if (v99 <= 0x13)
      {
        v100 = sub_1002E03AC(v7);
        if (v100)
        {
          v101 = v100;
          if (!sub_10000C240())
          {
            goto LABEL_21;
          }

          sub_10000AF54("smpDoOneLeSecuredConnectionPasskeyAuthItteration returned %!", v101);
          v102 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_177;
        }

        v103 = v7;
        v104 = 34;
LABEL_169:
        sub_10029C3C0(v103, v104);
        return;
      }
    }

    v103 = v7;
    v104 = 38;
    goto LABEL_169;
  }

LABEL_64:
  if (*(a1 + 70) == 1)
  {
    v33 = sub_1002E86E4(a1, (v7 + 473));
    if (v33)
    {
      v34 = v33;
      if (!sub_10000C240())
      {
        goto LABEL_21;
      }

      sub_10000AF54("Failed to send Nb to central with status %!", v34);
      v35 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_102;
    }

    sub_10029C3C0(v7, 38);
    if (*(v7 + 16) == 6)
    {
      LODWORD(v113) = 0;
      v63 = *(v7 + 328);
      v111 = *(v7 + 312);
      v112 = v63;
      v64 = *(v7 + 168);
      v109 = *(v7 + 152);
      v110 = v64;
      sub_100240A4C(&v111, &v109, (v7 + 457), (v7 + 473), &v113);
      if (v65)
      {
        v66 = v65;
        if (!sub_10000C240())
        {
          goto LABEL_21;
        }

        sub_10000AF54("Failed to generate vb with status %!", v66);
        v67 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_177;
      }

      if (!off_100BCE1D8)
      {
        v16 = a1;
        v17 = 12;
        goto LABEL_22;
      }

      v91 = v113 % 0xF4240;
      LODWORD(v113) = v113 % 0xF4240;
LABEL_172:
      *(v7 + 33) = v91;
      *(v7 + 35) = BYTE2(v91);
      *(v7 + 36) = 0;
      *(v7 + 52) = 4;
      sub_1002E83F4(*v7);
      return;
    }

    return;
  }

  v113 = 0uLL;
  v45 = *(v7 + 168);
  v111 = *(v7 + 152);
  v112 = v45;
  v46 = *(v7 + 328);
  v109 = *(v7 + 312);
  v110 = v46;
  v47 = sub_100240458(&v109, &v111, (v7 + 473), 0, &v113);
  if (v47)
  {
    v48 = v47;
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Failed to generate confirmation value Cb with status %!", v48);
    v49 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_177;
  }

  if (v113 != *(v7 + 104) || *(&v113 + 1) != *(v7 + 112))
  {
    if (!sub_10000C240())
    {
      goto LABEL_41;
    }

    sub_10000AF54("Mismatch in Confirm calculations");
    v69 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    goto LABEL_147;
  }

  sub_10029C3C0(v7, 39);
  if (*(v7 + 16) == 6)
  {
    v108 = 0;
    v81 = *(v7 + 168);
    v111 = *(v7 + 152);
    v112 = v81;
    v82 = *(v7 + 328);
    v109 = *(v7 + 312);
    v110 = v82;
    sub_100240A4C(&v111, &v109, (v7 + 457), (v7 + 473), &v108);
    if (v83)
    {
      v84 = v83;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate vb with status %!", v84);
        v85 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_21;
    }

    if (!off_100BCE1D8)
    {
      v16 = a1;
      v17 = 5;
      goto LABEL_22;
    }

    v91 = v108 % 0xF4240;
    v108 %= 0xF4240u;
    goto LABEL_172;
  }

  v92 = sub_1002DFEA0(v7);
  if (v92)
  {
    v93 = v92;
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Failed to send DHKey value with status %!", v93);
    v94 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_177;
  }
}

void sub_1002E3C84(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = sub_10029BE74(a1);
  if (v5)
  {
    v6 = v5;
    sub_10029C2C8(v5);
    if (a3 == 1)
    {
      v7 = *a2;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid Pairing Failed size %d", a3);
        v9 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v7 = 8;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Peer sent Pairing Failed with reason=%d", v7);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v11 = sub_10029C388(v7);
    sub_10029BA98(v6, v11, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Could not find associated pairing data.");
    v8 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

__n128 sub_1002E3DBC(uint64_t a1, __n128 *a2, int a3)
{
  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Invalid Encrypt Information size %d", a3);
    v10 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1000E09C0();
LABEL_14:
    v6 = 0;
LABEL_15:
    sub_1002DF818(a1, 8, v6);
    return result;
  }

  v5 = sub_10029BE74(a1);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v11 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = v5;
  sub_10029C2C8(v5);
  if ((*(v6 + 9) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    sub_10000AF54("The link is not encrypted, dumping LTK");
    v13 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_19:
    sub_1000E09C0();
    goto LABEL_15;
  }

  if ((*(v6 + 75) | 8) != 8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We got LTK after some other keys.");
      v14 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_25;
  }

  if (!*(a1 + 70))
  {
    v7 = v6;
    v8 = 66;
    goto LABEL_24;
  }

  if (!sub_10029C4B0(v6, 67))
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    v16 = sub_10029C3B4();
    sub_10000AF54("Central is sending keys before we are (state is %s).", v16);
    v17 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v7 = v6;
  v8 = 64;
LABEL_24:
  sub_10029C3C0(v7, v8);
LABEL_25:
  if (*(v6 + 74))
  {
    if ((sub_1002E15E0(a2, *(v6 + 81)) & 1) == 0)
    {
      *(v6 + 612) = 1;
    }

    result = *a2;
    *(v6 + 508) = *a2;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We were not expecting LTK...");
    v15 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return result;
}

void sub_1002E402C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 10)
  {
    if (!sub_10000C240())
    {
      goto LABEL_19;
    }

    sub_10000AF54("Invalid Central Identification size %d", a3);
    v10 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_1000E09C0();
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  v5 = sub_10029BE74(a1);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      goto LABEL_19;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v11 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v6 = v5;
  sub_10029C2C8(v5);
  if ((*(v6 + 9) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_20;
    }

    sub_10000AF54("The link is not encrypted, dumping EDIV/Rand");
    v12 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

LABEL_12:
    sub_1000E09C0();
LABEL_20:
    sub_1002DF818(a1, 8, v6);
    return;
  }

  if ((*(v6 + 75) | 8) == 8)
  {
    v7 = *(a1 + 70);
    if (v7 == 1)
    {
      if (!sub_10029C4B0(v6, 64))
      {
        goto LABEL_10;
      }

      v7 = *(a1 + 70);
    }

    if (!v7 && !sub_10029C4B0(v6, 66))
    {
LABEL_10:
      if (!sub_10000C240())
      {
        goto LABEL_20;
      }

      sub_10000AF54("We got a EDIV/RAND without a LTK.");
      v8 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We got EDIV/RAND after some other keys.");
    v13 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  if ((*(v6 + 74) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_38;
    }

    sub_10000AF54("We were not expecting LTK...");
    v14 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  *(v6 + 75) |= 1u;
  *(v6 + 542) = *a2;
  *(v6 + 546) = *(a2 + 2);
  v16 = *(v6 + 16) != 1;
  if (*(v6 + 612) != 1)
  {
    if (unk_100BCE1C0 && (*(v6 + 80) & 1) != 0)
    {
      unk_100BCE1C0(a1 + 48, 0, v6 + 508, 16, 0);
      unk_100BCE1C0(a1 + 48, 1, v6 + 81, 1, 0);
      unk_100BCE1C0(a1 + 48, 2, &v16, 1, 0);
      unk_100BCE1C0(a1 + 48, 3, v6 + 542, 2, 0);
      unk_100BCE1C0(a1 + 48, 4, v6 + 546, 8, 0);
    }

    goto LABEL_38;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Compromised device, dropping keys");
    v15 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_30:
      sub_1000E09C0();
    }
  }

LABEL_38:
  sub_1002E89E8(v6);
}

__n128 sub_1002E4394(uint64_t a1, __n128 *a2, int a3)
{
  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Invalid Identity Information size %d", a3);
    v9 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1000E09C0();
LABEL_14:
    v6 = 0;
LABEL_15:
    sub_1002DF818(a1, 8, v6);
    return result;
  }

  v5 = sub_10029BE74(a1);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v10 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = v5;
  sub_10029C2C8(v5);
  if ((*(v6 + 9) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    sub_10000AF54("The link is not encrypted, dumping IRK");
    v12 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_19:
    sub_1000E09C0();
    goto LABEL_15;
  }

  if (*(v6 + 75))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 70))
  {
    v7 = 66;
    goto LABEL_21;
  }

  if (!sub_10029C4B0(v6, 67))
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    sub_10000AF54("Central is sending keys before we are ...");
    v14 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v7 = 64;
LABEL_21:
  sub_10029C3C0(v6, v7);
LABEL_22:
  if ((*(v6 + 74) & 2) != 0)
  {
    result = *a2;
    *(v6 + 562) = *a2;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We were not expecting IRK...");
    v13 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return result;
}

void sub_1002E4594(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 7)
  {
    if (!sub_10000C240())
    {
      goto LABEL_20;
    }

    sub_10000AF54("Invalid Identity Address Information size %d", a3);
    v10 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1000E09C0();
LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v5 = sub_10029BE74(a1);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      goto LABEL_20;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v11 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v6 = v5;
  sub_10029C2C8(v5);
  if ((*(v6 + 9) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("The link is not encrypted, dumping Remote address");
    v13 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

LABEL_25:
    sub_1000E09C0();
    goto LABEL_21;
  }

  if (*(v6 + 75))
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 70);
  if (v7 == 1)
  {
    if (!sub_10029C4B0(v6, 64))
    {
      goto LABEL_33;
    }

    v7 = *(a1 + 70);
  }

  if (!v7 && !sub_10029C4B0(v6, 66))
  {
LABEL_33:
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("We got an address without IRK.");
    v15 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_10:
  if ((*(v6 + 74) & 2) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_32;
    }

    sub_10000AF54("We were not expecting address info...");
    v8 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  *(v6 + 75) |= 2u;
  if (*(v6 + 612) != 1)
  {
    if (!unk_100BCE1C0 || (*(v6 + 80) & 1) == 0)
    {
      goto LABEL_32;
    }

    v23[0] = *a2;
    *&v23[1] = *(a2 + 1);
    *&v23[5] = *(a2 + 5);
    sub_10029B614(&v23[1], 6u);
    if (v23[0] && (v23[0] != 1 || v23[1] <= 0xBFu))
    {
      if (!sub_10000C240())
      {
        goto LABEL_21;
      }

      sub_10000AF54("We got a remote address (%:) that is neither public nor static!", &v23[1]);
      v21 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_54;
    }

    if (*v23)
    {
      v16 = 0;
    }

    else
    {
      v16 = *&v23[4] == 0;
    }

    if (!v16)
    {
      *(a1 + 55) = 1;
      *(a1 + 56) = *v23;
      *(a1 + 59) = *&v23[3];
      v17 = sub_1002DC300(v23);
      if (!v17 || ((v18 = v17, *v17 == *(v6 + 562)) ? (v19 = v17[1] == *(v6 + 570)) : (v19 = 0), v19))
      {
        unk_100BCE1C0(a1 + 48, 10, v6 + 562, 16, 0);
        unk_100BCE1C0(a1 + 48, 11, v23, 7, 0);
        goto LABEL_32;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("device %: is already paired, with a different irk (old:%@ new %@). Unpair first and then restart pairing.", a1 + 57, v18, 16, v6 + 562, 16);
        v20 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v12 = 240;
LABEL_22:
      sub_1002DF818(a1, v12, v6);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Identity address cannot be all 0.");
      v22 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_54:
        sub_1000E09C0();
      }
    }

LABEL_21:
    v12 = 8;
    goto LABEL_22;
  }

  if (!sub_10000C240())
  {
    goto LABEL_32;
  }

  sub_10000AF54("Compromised device, dropping keys");
  v14 = sub_10000C050(0x43u);
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_32;
  }

LABEL_13:
  sub_1000E09C0();
LABEL_32:
  sub_1002E89E8(v6);
}

void sub_1002E49D8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Invalid Signing Information size %d", a3);
    v8 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1000E09C0();
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v4 = sub_10029BE74(a1);
  if (!v4)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v9 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = v4;
  sub_10029C2C8(v4);
  if ((v5[9] & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    sub_10000AF54("The link is not encrypted.");
    v10 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (!v5[75])
  {
    if (!*(a1 + 70))
    {
      v6 = 66;
      goto LABEL_20;
    }

    if (sub_10029C4B0(v5, 67))
    {
      v6 = 64;
LABEL_20:
      sub_10029C3C0(v5, v6);
      goto LABEL_21;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Central is sending keys before we are ...");
      v12 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        sub_1000E09C0();
      }
    }

LABEL_15:
    sub_1002DF818(a1, 8, v5);
    return;
  }

LABEL_21:
  if ((v5[74] & 4) != 0)
  {
    v5[75] |= 4u;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We were not expecting CSRK...");
    v11 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_1002E89E8(v5);
}

void sub_1002E4BDC(uint64_t a1, char *a2, int a3)
{
  if (xmmword_100B6B426 == 0 || xmmword_100B6B446 == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_10;
    }

    sub_10000AF54("Root keys are not set, can't pair.");
    v7 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!sub_10029BE74(a1))
  {
    if (a3 == 1)
    {
      if (*(a1 + 168) == 2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("There is already an encryption in progress on this link, ignoring this request");
          v8 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        v10 = *a2;
        v11 = sub_10029C1A0(a1);
        v12 = v11;
        if (v11)
        {
          v11[80] = v10;
          sub_10029C3C0(v11, 16);
        }

        if (*(a1 + 132) == 7)
        {
          *(&buf + 1) = v12;
          *&buf = 8;
          v13 = sub_10002195C(sub_1002E6BE0, &buf, 0, 0);
          if (v13)
          {
            v14 = v13;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not dispatch SecurityRequest CB with status %!.", v14);
              v15 = sub_10000C050(0x43u);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Got Security request before link is ready for handle %p, lets handle this when the link is actually ready. Link state is %d", a1, *(a1 + 132));
          v16 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
          }
        }
      }

      return;
    }

    if (!sub_10000C240() || (sub_10000AF54("Invalid Security Request size %d", a3), v9 = sub_10000C050(0x43u), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
    {
LABEL_10:
      LOWORD(buf) = 2053;
      sub_10029BEC0(a1, &buf, 2uLL, 0);
      return;
    }

LABEL_9:
    sub_1000E09C0();
    goto LABEL_10;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("There is already a pairing request for this connection. Ignoring request.");
    v6 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_1000E09C0();
    }
  }
}

void sub_1002E4EC8(uint64_t a1, __int128 *a2, int a3)
{
  memset(__s2, 0, sizeof(__s2));
  v6 = sub_10029BE74(a1);
  v7 = v6;
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    sub_10000AF54("Could not find associated pairing data.");
    v15 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  if (a3 != 64)
  {
    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    sub_10000AF54("Invalid pairing public key size %d", a3);
    v16 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  if ((*(v6 + 72) & *(v6 + 80) & 8) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    sub_10000AF54("Both devices should be using secured connection to get this PDU.");
    v17 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  v8 = *(a1 + 70);
  if (!*(a1 + 70))
  {
    if (sub_10029C4B0(v6, 33))
    {
      v8 = *(a1 + 70);
      goto LABEL_7;
    }

    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    v24 = sub_10029C3B4();
    sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SPUBLICK to send this command, current state is %s.", v24);
    v25 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

LABEL_40:
    sub_1000E09C0();
LABEL_67:
    sub_1002DF818(a1, 8, v7);
    return;
  }

LABEL_7:
  if (v8 == 1 && !sub_10029C4B0(v7, 32))
  {
    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    v22 = sub_10029C3B4();
    sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MPUBLICK to send this command, current state is %s.", v22);
    v23 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(v7 + 344) = a2[2];
  *(v7 + 360) = v11;
  *(v7 + 312) = v9;
  *(v7 + 328) = v10;
  if (*(*v7 + 70) == 1 && *(v7 + 16) != 5)
  {
    v26 = sub_100240E7C((v7 + 152), (v7 + 216));
    if (v26)
    {
      v27 = v26;
      if (sub_10000C240())
      {
        sub_10000AF54("LE_ReadLocalPublicKey failed %!", v27);
        v28 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_67;
    }

    v33 = *(v7 + 16);
    if (v33 != 1 && v33 != 6)
    {
      __buf[0] = 12;
      *&__buf[1] = *(v7 + 152);
      v43 = *(v7 + 168);
      v44 = *(v7 + 184);
      v45 = *(v7 + 200);
      v34 = sub_10029BEC0(*v7, __buf, 0x41uLL, 1);
      if (v34)
      {
        v35 = v34;
        if (sub_10000C240())
        {
          sub_10000AF54("smpSendPairingPublicKey failed %!", v35);
          v36 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        goto LABEL_67;
      }
    }
  }

  if (!memcmp((v7 + 312), __s2, 0x40uLL) || !memcmp((v7 + 216), __s2, 0x60uLL))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid all zeros public key or all zeros private key");
      v18 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v12 = sub_100241004((v7 + 312), 64, (v7 + 216), 0x60u, (v7 + 376));
    if (v12)
    {
      v13 = v12;
      if (!sub_10000C240())
      {
        goto LABEL_67;
      }

      sub_10000AF54("DHKey generation failed %!", v13);
      v14 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  v19 = *(v7 + 16);
  if (v19 > 4)
  {
    if (v19 == 5)
    {
      v37 = sub_1002E7E18(v7);
      if (!v37)
      {
        return;
      }

      v38 = v37;
      if (!sub_10000C240())
      {
        goto LABEL_67;
      }

      sub_10000AF54("recvdSMPDeferredOOBPublicKey failed %!", v38);
      v39 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

LABEL_66:
      sub_10080F604();
      goto LABEL_67;
    }

    if (v19 != 6)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (v19 - 2 < 3)
    {
      *__buf = 0;
      v20 = *v7;
      if (*(*v7 + 70))
      {
        if (*(*v7 + 70) == 1 && v19 == 3)
        {
          goto LABEL_34;
        }
      }

      else if (v19 == 2)
      {
LABEL_34:
        arc4random_buf(__buf, 4uLL);
        v21 = *__buf % 0xF423Fu + 1;
        *__buf = v21;
        *(v7 + 33) = v21;
        *(v7 + 35) = BYTE2(v21);
        *(v7 + 36) = 0;
        *(v7 + 52) = 1;
        v20 = *v7;
LABEL_71:
        if (*(v20 + 70))
        {
          v40 = 34;
        }

        else
        {
          v40 = 35;
        }

        sub_10029C3C0(v7, v40);
        sub_1002E83F4(*v7);
        return;
      }

      *(v7 + 52) = 2;
      goto LABEL_71;
    }

    if (v19 != 1)
    {
LABEL_54:
      if (sub_10000C240())
      {
        sub_10000AF54("Don't know what to do now");
        v32 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_67;
    }
  }

  if (v19 == 6 || (*(v7 + 490) & 1) != 0)
  {
    v29 = sub_1002E0178(v7);
    if (v29)
    {
      v30 = v29;
      if (!sub_10000C240())
      {
        goto LABEL_67;
      }

      sub_10000AF54("recvdSMPDeferredJustWorksNumComparPublicKey failed %!", v30);
      v31 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }
}

uint64_t sub_1002E54D8(__int128 *a1, _OWORD *a2, int a3)
{
  result = sub_10029BE74(a1);
  v7 = result;
  if (!result)
  {
    if (!sub_10000C240())
    {
      return sub_1002DF818(a1, 8, v7);
    }

    sub_10000AF54("Could not find associated pairing data.");
    v11 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return sub_1002DF818(a1, 8, v7);
    }

    goto LABEL_20;
  }

  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      return sub_1002DF818(a1, 8, v7);
    }

    sub_10000AF54("Invalid pairing DHKey check size %d", a3);
    v12 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return sub_1002DF818(a1, 8, v7);
    }

    goto LABEL_20;
  }

  v8 = *(a1 + 70);
  if (!*(a1 + 70))
  {
    result = sub_10029C4B0(result, 39);
    if (result)
    {
      v8 = *(a1 + 70);
      goto LABEL_6;
    }

    if (!sub_10000C240())
    {
      return sub_1002DF818(a1, 8, v7);
    }

    v15 = sub_10029C3B4();
    sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SDHKEY to send this command, current state is %s.", v15);
    v16 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return sub_1002DF818(a1, 8, v7);
    }

LABEL_20:
    sub_1000E09C0();
    return sub_1002DF818(a1, 8, v7);
  }

LABEL_6:
  if (v8 == 1)
  {
    result = sub_10029C4B0(v7, 38);
    if ((result & 1) == 0)
    {
      if (!sub_10000C240())
      {
        return sub_1002DF818(a1, 8, v7);
      }

      v13 = sub_10029C3B4();
      sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MDHKEY to send this command, current state is %s.", v13);
      v14 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        return sub_1002DF818(a1, 8, v7);
      }

      goto LABEL_20;
    }
  }

  *(v7 + 492) = *a2;
  *(v7 + 491) = 1;
  if (*(*v7 + 70) != 1 || *(v7 + 16) != 6 || *(v7 + 490) == 1)
  {
    result = sub_1002DFF7C(a1);
    if (result)
    {
      v9 = result;
      if (sub_10000C240())
      {
        sub_10000AF54("recvdSMPDeferredDHKeyCheck Failed %! ", v9);
        v10 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return sub_1002DF818(a1, 8, v7);
    }
  }

  return result;
}

uint64_t sub_1002E5714(uint64_t a1, int a2, char a3)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  v6 = sub_10029BE74(a1);
  result = sub_10029BE74(a1);
  if (!a2)
  {
    if (result)
    {
      *(v6 + 9) = a3;
    }
  }

  return result;
}

void sub_1002E5770(uint64_t a1, int a2, int a3)
{
  v6 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v6 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v7 = 11;
  }

  else
  {
    v7 = byte_100B53E4A;
  }

  v8 = v6 & 0xF7;
  v9 = v7 & 0xF7;
  if (byte_100B6B410)
  {
    v10 = v7 & 0xF7;
  }

  else
  {
    v10 = v7;
  }

  if (byte_100B6B410)
  {
    v11 = v6 & 0xF7;
  }

  else
  {
    v11 = v6;
  }

  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  v12 = sub_10029BE74(a1);
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      if (sub_10029C4B0(v12, 16) && !*(a1 + 70))
      {
        v16 = v13[80] & 4;
        v17 = byte_100B6B414;
        v18 = v16 | v17 | sub_1002D20F4();
        if ((v13[80] & 8) != 0)
        {
          if ((v11 & 8) != 0 && (v13[80] & 0x20) != 0 && (byte_100B6B412 & 1) == 0)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Sending CT2=1");
              v27 = sub_10000C050(0x43u);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446210;
                v29 = sub_10000C0FC();
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }
          }

          v19 = v18 | 0x28;
        }

        else
        {
          v19 = v18 & 0xDF;
          v10 = v9;
          v11 = v8;
        }

        if (*(a1 + 55))
        {
          v22 = (a1 + 56);
        }

        else
        {
          v22 = 0;
        }

        v23 = sub_1002DB2CC((a1 + 48), v22);
        if (sub_10000C240())
        {
          sub_10000AF54("authReq=%x expectedKeys=%x requestedKeys=%x", v19, v11, v10);
          v24 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = sub_10000C0FC();
            *buf = 136446210;
            v29 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_1002E1C74(a1, byte_100B53E4B, v23, v19, v11, v10);
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not encrypt the link.");
          v14 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_10029BA98(v13, 4802, 1);
      }
    }

    else
    {
      *(*v12 + 169) = v12[81];
      if (sub_10029C4B0(v12, 16) && !*(a1 + 70))
      {
        v20 = v13;
        v21 = 0;
      }

      else
      {
        if (!a3)
        {
          return;
        }

        sub_10029C3C0(v13, 42);
        if (*(a1 + 70))
        {
          if (*(a1 + 70) != 1)
          {
            return;
          }

          sub_1002E5B94(v13);
          sub_1002E5D18(v13);
          v15 = (v13[72] & v13[80] & 8) != 0 ? -10 : -9;
          if ((v15 & v13[74] & 0xF7) != (v15 & v13[75] & 0xF7) && (v15 & v13[74]) != 0)
          {
            return;
          }
        }

        else
        {
          if ((v13[72] & v13[80] & 8) != 0)
          {
            v26 = -10;
          }

          else
          {
            v26 = -9;
          }

          if ((v26 & v13[74] & 0xF7) != (v26 & v13[75] & 0xF7) && (v26 & v13[74]) != 0)
          {
            return;
          }

          sub_1002E5B94(v13);
          sub_1002E5D18(v13);
        }

        v20 = v13;
        v21 = 1;
      }

      sub_10029BA98(v20, 0, v21);
    }
  }
}

void sub_1002E5B94(uint64_t a1)
{
  if ((*(a1 + 72) & *(a1 + 80) & 8) != 0)
  {

    sub_10029C3C0(a1, 128);
    return;
  }

  v10 = 0;
  arc4random_buf((a1 + 540), 2uLL);
  arc4random_buf((a1 + 554), 8uLL);
  v2 = sub_10023FDC8(&xmmword_100B6B416, (a1 + 554), &v10);
  if (v2)
  {
    v3 = v2;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not generate DIV %!", v3);
    v4 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 540);
  *(a1 + 544) = v5 ^ v10;
  v6 = sub_100240328(&xmmword_100B6B426, v5, 0, (a1 + 524));
  if (v6)
  {
    v7 = v6;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not generate LTK %!", v7);
    v8 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_8:
    sub_10080F604();
    return;
  }

  v9 = *(a1 + 81);
  if (v9 != 16)
  {
    bzero((a1 + 524 + v9), 16 - v9);
  }

  sub_10029C3C0(a1, 128);
}

void sub_1002E5D18(uint64_t a1)
{
  if (!sub_10029C4B0(a1, 128))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SMP State is not GENERATED.");
      v2 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (*(*a1 + 70))
  {
    v3 = 66;
  }

  else
  {
    v3 = 64;
  }

  sub_10029C3C0(a1, v3);
  if ((*(a1 + 72) & *(a1 + 80) & 8) == 0)
  {
    if (*(a1 + 76) & 1) == 0 || (*(a1 + 77))
    {
      goto LABEL_31;
    }

    buf[0] = 6;
    *&buf[1] = *(a1 + 524);
    if (*(a1 + 9))
    {
      if (!sub_10029BEC0(*a1, buf, 0x11uLL, 1))
      {
        buf[0] = 7;
        *&buf[1] = *(a1 + 544);
        *&buf[3] = *(a1 + 554);
        if (*(a1 + 9))
        {
          v6 = sub_10029BEC0(*a1, buf, 0xBuLL, 1) == 0;
          goto LABEL_67;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("This link is not encrypted, cannot send EDIV/RAND.");
          v26 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("This link is not encrypted, cannot send LTK.");
      v24 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v6 = 0;
LABEL_67:
    if (*(a1 + 612) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Compromised device, dropping keys");
        v25 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else if (v6 && (*(a1 + 80) & 1) != 0 && unk_100BCE1C0)
    {
      buf[0] = *(a1 + 16) != 1;
      unk_100BCE1C0(*a1 + 48, 6, a1 + 81, 1, 0);
      unk_100BCE1C0(*a1 + 48, 7, buf, 1, 0);
      unk_100BCE1C0(*a1 + 48, 8, a1 + 544, 2, 0);
      unk_100BCE1C0(*a1 + 48, 9, a1 + 554, 8, 0);
    }

    goto LABEL_30;
  }

  if ((*(a1 + 80) & 1) != 0 && unk_100BCE1C0)
  {
    if (*(a1 + 16) == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    LOBYTE(v28[0]) = v4;
    unk_100BCE1C0(*a1 + 48, 5, a1 + 524, 16, 0);
    unk_100BCE1C0(*a1 + 48, 7, v28, 1, 0);
    unk_100BCE1C0(*a1 + 48, 6, a1 + 81, 1, 0);
    if (*(a1 + 594) == 1)
    {
      if (*(a1 + 593))
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }

    v27 = v5;
    if (sub_10000C240())
    {
      sub_10000AF54("deriveLKLTK=%d useH7=%d", v5, *(a1 + 593));
      v7 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_10000C0FC();
        *buf = 136446210;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (v5)
    {
      unk_100BCE1C0(*a1 + 48, 16, &v27, 1, 0);
    }

LABEL_30:
    *(a1 + 77) |= 1u;
  }

LABEL_31:
  if ((*(a1 + 76) & 2) == 0 || (*(a1 + 77) & 2) != 0)
  {
    goto LABEL_59;
  }

  buf[0] = 8;
  buf[1] = *sub_10029BA58();
  buf[2] = *(sub_10029BA58() + 1);
  buf[3] = *(sub_10029BA58() + 2);
  buf[4] = *(sub_10029BA58() + 3);
  buf[5] = *(sub_10029BA58() + 4);
  buf[6] = *(sub_10029BA58() + 5);
  buf[7] = *(sub_10029BA58() + 6);
  buf[8] = *(sub_10029BA58() + 7);
  buf[9] = *(sub_10029BA58() + 8);
  buf[10] = *(sub_10029BA58() + 9);
  buf[11] = *(sub_10029BA58() + 10);
  buf[12] = *(sub_10029BA58() + 11);
  buf[13] = *(sub_10029BA58() + 12);
  buf[14] = *(sub_10029BA58() + 13);
  buf[15] = *(sub_10029BA58() + 14);
  buf[16] = *(sub_10029BA58() + 15);
  if (*(a1 + 9))
  {
    sub_10029BEC0(*a1, buf, 0x11uLL, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This link is not encrypted, cannot send IRK.");
    v9 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v10 = *(*a1 + 268);
  if (v10 == 1)
  {
    v11 = 0;
  }

  else if (v10 || (*(a1 + 76) & 8) != 0 && (*(a1 + 74) & 8) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1001990A4(*a1);
  }

  memset(v28, 0, 7);
  sub_1000841FC(v28);
  if (!LOBYTE(v28[0]))
  {
    goto LABEL_51;
  }

  v12 = *(*a1 + 24);
  if (*(*a1 + 20) == 13)
  {
    if (v12 < 0xB)
    {
      goto LABEL_51;
    }

    v13 = 0;
  }

  else
  {
    v13 = v12 < 0xA;
  }

  if (((v13 | byte_100B53E4C | v11) & 1) == 0)
  {
    v19 = sub_1002DA3A4();
    v14 = sub_10009A66C(v19);
    v28[0] = v14;
    BYTE2(v28[1]) = BYTE6(v14);
    LOWORD(v28[1]) = WORD2(v14);
    v20.i64[0] = 0xFFFFFFFFFFFFFFLL;
    v20.i64[1] = 0xFFFFFFFFFFFFFFLL;
    v21 = vandq_s8(vdupq_n_s64(v14), v20);
    v16 = vmovn_s32(vuzp1q_s32(vshlq_u64(v21, xmmword_1008A5080), vshlq_u64(v21, xmmword_1008A5070)));
    v17 = v14 >> 16;
    v18 = v14 >> 8;
    goto LABEL_53;
  }

LABEL_51:
  sub_1002D2760(v28);
  LOBYTE(v14) = v28[0];
  v15.i32[0] = *(v28 + 3);
  v16 = vrev64_s16(*&vmovl_u8(v15));
  LOBYTE(v17) = BYTE2(v28[0]);
  LOBYTE(v18) = BYTE1(v28[0]);
LABEL_53:
  buf[0] = 9;
  buf[1] = v14;
  *&buf[2] = vuzp1_s8(v16, v16).u32[0];
  buf[6] = v17;
  buf[7] = v18;
  if (*(a1 + 9))
  {
    sub_10029BEC0(*a1, buf, 8uLL, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This link is not encrypted, cannot send address.");
    v22 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  *(a1 + 77) |= 2u;
LABEL_59:
  if (*(*a1 + 70))
  {
    v23 = 67;
  }

  else
  {
    v23 = 65;
  }

  sub_10029C3C0(a1, v23);
}

uint64_t sub_1002E6428(uint64_t a1, _OWORD *a2, BOOL *a3)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  v6 = sub_10029BE74(a1);
  if (v6)
  {
    v7 = v6;
    if (sub_10029C4B0(v6, 41))
    {
      v8 = *(v7 + 16);
      if ((*(v7 + 72) & *(v7 + 80) & 8) != 0)
      {
        if (v8 == 1)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }

        *a3 = v9;
        if (!a2)
        {
          return 1;
        }

        v10 = *(v7 + 524);
      }

      else
      {
        *a3 = v8 != 1;
        if (!a2)
        {
          return 1;
        }

        v10 = *(v7 + 56);
      }

      *a2 = v10;
      return 1;
    }

    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("STK not generated for handle 0x%x", a1);
      v13 = sub_10000C050(0x43u);
      result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (result)
      {
LABEL_16:
        sub_1000E09C0();
        return 0;
      }
    }
  }

  else
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("There is no pairing data for this connection.");
      v12 = sub_10000C050(0x43u);
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (result)
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_1002E655C(uint64_t *a1, __int16 a2, void *a3)
{
  v10 = 0;
  v5 = sub_10023FDC8(&xmmword_100B6B416, a1, &v10);
  if (v5)
  {
    v6 = v5;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not generate DIV %!", v6);
      v7 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        sub_10080F604();
      }
    }
  }

  else
  {
    v6 = sub_100240328(&xmmword_100B6B426, v10 ^ a2, 0, a3);
    if (v6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not generate LTK %!", v6);
        v8 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1002E6664(__int16 *a1, int a2)
{
  if (*a1 | *(a1 + 2))
  {
    if (a2)
    {
      v4 = sub_10029BA64();
    }

    else
    {
      v4 = sub_10029BA58();
    }

    v7 = v4;
    if (*v4 == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Cannot generate local random address when the IRK is set to 0's");
        v10 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 103;
    }

    else
    {
      v6 = sub_1000457E4(v4, a1, a1 + 3);
      if (sub_10000EFCC() && sub_10000C240())
      {
        v8 = "Primary";
        if (a2)
        {
          v8 = "Secondary";
        }

        sub_10000AF54("******* GENERATING RANDOM ADDRESS WITH %s IRK:%@ address:%@ AH result:%d", v8, v7, 16, a1, 6, v6);
        v9 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v13 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot generate local random address when the address bytes are set to 0's");
      v5 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  return v6;
}

void sub_1002E683C(_BYTE *a1, uint64_t a2)
{
  v20 = a1;
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Link ready CB with status %!(%d).", a2, a2);
      v3 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v5 = sub_10029BE74(a1);
    if (v5)
    {
      v6 = v5;
      if (a1[168] == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Connection %p is already encrypted, lets drop this pairing data", a1);
          v7 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
          }
        }

        sub_10029BA98(v6, 0, 0);
      }

      else if (sub_10029C4B0(v5, 16))
      {
        if (sub_10000C240())
        {
          v8 = sub_10029C3B4();
          sub_10000AF54("continue deferred handling of incoming Security Request from device %: (%s)", a1 + 49, v8);
          v9 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
          }
        }

        *(&buf + 1) = v6;
        *&buf = 8;
        v10 = sub_10002195C(sub_1002E6BE0, &buf, 5, 0);
        if (v10)
        {
          v11 = v10;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not dispatch SecurityRequest CB with status %!.", v11);
            v12 = sub_10000C050(0x43u);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }
        }
      }

      else if (sub_10029C4B0(v6, 17))
      {
        if (sub_10000C240())
        {
          v13 = sub_10029C3B4();
          sub_10000AF54("continue deferred handling of incoming Pairing Request from device %: (%s)", a1 + 49, v13);
          v14 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
          }
        }

        *(&buf + 1) = &v20;
        *&buf = 8;
        v15 = sub_10002195C(sub_1002E6CEC, &buf, 5, 0);
        if (v15)
        {
          v16 = v15;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not dispatch pairing request with status %!.", v16);
            v17 = sub_10000C050(0x43u);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }
        }
      }

      else if (sub_1002DF898(a1))
      {
        if (sub_10000C240())
        {
          v18 = sub_10029C3B4();
          sub_10000AF54("Device %: is in state %s, but its not supposed to be in this state", a1 + 49, v18);
          v19 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }
        }
      }
    }
  }
}

void sub_1002E6BE0(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (!sub_1000ABD24(v1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Handle is not valid anymore.");
    v6 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_14:
    sub_1000E09C0();
    return;
  }

  v2 = sub_10029BE74(v1);
  if (!v2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("There is no pairing data for connection");
    v7 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_14;
  }

  v3 = off_100BCE1C8;
  if (off_100BCE1C8)
  {
    v4 = *(v2 + 80);
    v5 = 48;
    if (*(v1 + 55))
    {
      v5 = 56;
    }

    (v3)(v1 + v5, (v4 >> 2) & 1, 0);
  }
}

void sub_1002E6CEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if (!*v1 || !sub_1000ABD24(*v1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("This handle is not a LE connection.");
    v4 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_10:
    sub_1000E09C0();
    return;
  }

  if (!sub_10029BE74(v2))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("There is no security request for this connection. Ignoring reply.");
    v5 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_10;
  }

  v3 = off_100BCE1D0;
  if (off_100BCE1D0)
  {

    v3(v2 + 48, 0);
  }
}

void sub_1002E6DE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10029BE74(a1);
  if (v3)
  {

    sub_10029BA98(v3, a2, 1);
  }
}

uint64_t sub_1002E6E2C(uint64_t a1)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  v2 = *(a1 + 272);
  if (v2)
  {
    sub_10029BA98(v2, 122, 1);
  }

  result = *(a1 + 212);
  if (result)
  {
    sub_10002242C(result);
    result = 0;
    *(a1 + 212) = 0;
  }

  return result;
}

void sub_1002E6E84(__int128 *a1)
{
  v2 = sub_10000C240();
  if (a1)
  {
    if (v2)
    {
      sub_10000AF54("MUC - save IRK and update RSA adv instance");
      v3 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136446210;
        v6 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " %{public}s", &v5, 0xCu);
      }
    }

    xmmword_100B6B436 = *a1;
  }

  else
  {
    if (v2)
    {
      sub_10000AF54("MUC - reset IRK");
      v4 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136446210;
        v6 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", &v5, 0xCu);
      }
    }

    xmmword_100B6B436 = 0uLL;
  }
}

uint64_t sub_1002E6FC8(__int128 *a1, __n128 *a2, __int128 *a3, __int128 *a4, __n128 *a5)
{
  xmmword_100B6B446 = *a1;
  sub_10029BA70(a2);
  sub_10029BA84(a5);
  xmmword_100B6B426 = *a3;
  xmmword_100B6B416 = *a4;
  return 0;
}

uint64_t sub_1002E703C(uint64_t (*a1)(void, void, void, void, void), uint64_t a2, uint64_t (*a3)(void, void, void, void, void), uint64_t a4, uint64_t a5, char a6, char a7)
{
  v9 = a5;
  v10 = a4;
  if (qword_100B6B458)
  {
    sub_1000D660C();
  }

  byte_100B53E4B = sub_1002E7198(v10, v9);
  unk_100BCE1C0 = a1;
  *&off_100BCE1C8 = *a2;
  off_100BCE1D8 = *(a2 + 16);
  unk_100BCE1E0 = a3;
  v14 = sub_10028E64C(6, 2, 8, 8, &qword_100B6B458, sub_10029BCD4);
  if (v14 || !qword_100B6B458)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register the LE SecurityManager : %!", v14);
      v15 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    *sub_1000CD958(qword_100B6B458) = 65;
    byte_100B6B411 = a6;
    byte_100B6B415 = a7;
    *(sub_1000CD958(qword_100B6B458) + 2) = -1;
    sub_1002CE244(&unk_100AE9EA8);
  }

  return v14;
}

uint64_t sub_1002E7198(int a1, int a2)
{
  switch(a1)
  {
    case 3:
      if (a2 == 16)
      {
        return 2;
      }

      if (a2 == 32)
      {
        return 4;
      }

      goto LABEL_13;
    case 2:
      if (a2 != 16)
      {
        if (a2 == 32)
        {
          return 1;
        }

        goto LABEL_13;
      }

      break;
    case 1:
      if (a2 != 16)
      {
        if (a2 == 32)
        {
          return 0;
        }

        goto LABEL_13;
      }

      break;
    default:
LABEL_13:
      sub_1000D660C();
      return 3;
  }

  return 3;
}

uint64_t sub_1002E721C()
{
  sub_1002CE3E4(&unk_100AE9EA8);
  v0 = sub_10028E908(qword_100B6B458);
  if (v0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not de-register the LE SecurityManager : %!", v0);
      v1 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    qword_100B6B458 = 0;
    *&unk_100BCE1C0 = 0u;
    *&off_100BCE1D0 = 0u;
    *&unk_100BCE1E0 = 0u;
    byte_100B53E4B = 3;
    sub_10029BA70(&xmmword_1008A50A2);
    sub_10029BA84(&xmmword_1008A50A2);
    xmmword_100B6B416 = 0uLL;
    xmmword_100B6B426 = 0uLL;
    xmmword_100B6B446 = 0uLL;
  }

  return v0;
}

uint64_t sub_1002E7308()
{
  if (xmmword_100B6B426 != 0 && xmmword_100B6B446 != 0)
  {
    return 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Root keys are not set, can't pair.");
    v1 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_1000D660C();
  return 4826;
}

uint64_t sub_1002E73A0(uint64_t a1, int a2)
{
  v4 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v4 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v5 = 11;
  }

  else
  {
    v5 = byte_100B53E4A;
  }

  v6 = v4 & 0xF7;
  v7 = v5 & 0xF7;
  if (byte_100B6B410)
  {
    v8 = v5 & 0xF7;
  }

  else
  {
    v8 = v5;
  }

  if (byte_100B6B410)
  {
    v9 = v4 & 0xF7;
  }

  else
  {
    v9 = v4;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("StartPairing was called");
    v10 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v11 = sub_1002E7308();
  if (v11)
  {
    return v11;
  }

  if (!sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("Connection handle is not a LE handle...");
    v12 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

LABEL_21:
    sub_1000E09C0();
    return 4820;
  }

  if (*(a1 + 265))
  {
    return 4837;
  }

  v14 = v6;
  v15 = v7;
  if (a2)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | sub_1002D20F4();
  if (byte_100B6B411 == 1)
  {
    if (*(a1 + 24) > 7u || (v18 = *(a1 + 20), v18 != 2) && v18 != 90 && v18 != 13 || *(a1 + 70) == 1)
    {
      if ((byte_100B6B412 & 1) != 0 || (*(a1 + 264) & 1) != 0 || (v9 & 8) == 0)
      {
        v15 = v8;
        v14 = v9;
        v17 |= 8u;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Sending CT2=1");
          v19 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_10000C0FC();
            *buf = 136446210;
            v36 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v17 |= 0x28u;
        v15 = v8;
        v14 = v9;
      }
    }
  }

  if (*(a1 + 264))
  {
    v21 = v6;
  }

  else
  {
    v7 = v15;
    v21 = v14;
  }

  if (*(a1 + 264))
  {
    v22 = v17 & 0x1F;
  }

  else
  {
    v22 = v17;
  }

  v23 = v22 | byte_100B6B414;
  if (*(a1 + 55))
  {
    v24 = (a1 + 56);
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_1002DB2CC((a1 + 48), v24);
  if (sub_10000C240())
  {
    sub_10000AF54("authReq=%x localKeyDist=%x localKeyReq=%x", v23, v21, v7);
    v26 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = sub_10000C0FC();
      *buf = 136446210;
      v36 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (*(a1 + 70) != 1)
  {
    return sub_1002E1C74(a1, byte_100B53E4B, v25, v23, v21, v7);
  }

  buf[0] = 11;
  buf[1] = v23;
  if (!sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("This command is only available to LE devices.");
    v32 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

    goto LABEL_21;
  }

  if (*(a1 + 70))
  {
    v28 = sub_10029BE74(a1);
    if (v28)
    {
      v29 = v28;
      if (!sub_10029C4B0(v28, 0))
      {
        if (sub_10000C240())
        {
          v30 = sub_10029C3B4();
          sub_10000AF54("Cannot send a security request, device is in state %s.", v30);
          v31 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        return 4804;
      }

LABEL_71:
      v29[72] = v23;
      v29[73] = v25;
      v11 = sub_10029BEC0(*v29, buf, 2uLL, 0);
      if (v11)
      {
        sub_10029BA98(v29, v11, 1);
      }

      else
      {
        sub_10029C3C0(v29, 16);
      }

      return v11;
    }

    v29 = sub_10029C1A0(a1);
    if (v29)
    {
      goto LABEL_71;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate a pairing record for handle 0x%x", a1);
      v34 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 104;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("You cannot send this command when central.");
      v33 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4822;
  }
}

uint64_t sub_1002E78E8(_OWORD *a1)
{
  if (a1)
  {
    v2 = sub_100240E7C(a1 + 2, a1 + 6);
    if (v2)
    {
      v3 = v2;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate public/private key %!", v3);
        v4 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {
      arc4random_buf(a1, 0x10uLL);
      v7 = a1[3];
      v9[0] = a1[2];
      v9[1] = v7;
      v3 = sub_100240458(v9, v9, a1, 0, a1 + 1);
      if (v3)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to generate confirmation value C with status %!", v3);
          v8 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Must provide storage for OOB Bundle and private key");
      v5 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  return v3;
}

uint64_t sub_1002E7A68(_DWORD *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v7 = sub_1000E5EA8(a1);
  if (!v7)
  {
    return 122;
  }

  v8 = v7;
  v9 = sub_10029BE74(v7);
  if (!v9)
  {
    return 4806;
  }

  v10 = v9;
  if ((*(v9 + 72) & *(v9 + 80) & 8) == 0 || *(v9 + 16) != 5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This API can only be called on LE Secured Connection OOB Pairing.");
      v19 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v17 = 408;
    goto LABEL_25;
  }

  if (a4)
  {
    v11 = a4[2];
    v12 = a4[3];
    v13 = a4[4];
    *(v9 + 200) = a4[5];
    *(v9 + 184) = v13;
    *(v9 + 168) = v12;
    *(v9 + 152) = v11;
    memmove((v9 + 216), a4 + 6, 0x60uLL);
    v14 = 425;
    if (*(*v10 + 70) == 1)
    {
      v14 = 441;
    }

    *&v10[v14] = *a4;
    *(v10 + 88) = a4[1];
  }

  else
  {
    v21 = sub_100240E7C((v9 + 152), (v9 + 216));
    if (v21)
    {
      v17 = v21;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate public/private key %!", v17);
        v22 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_25;
    }

    if (*(*v10 + 70) == 1)
    {
      v24 = v10 + 441;
    }

    else
    {
      v24 = v10 + 425;
    }

    arc4random_buf(v24, 0x10uLL);
    v25 = *v10;
    if (*(*v10 + 70) == 1)
    {
      v26 = v10 + 425;
    }

    else
    {
      v26 = v10 + 441;
    }

    *v26 = 0;
    v26[1] = 0;
    v27 = *(v10 + 168);
    *v31 = *(v10 + 152);
    *&v31[16] = v27;
    if (*(v25 + 70) == 1)
    {
      v28 = (v10 + 441);
    }

    else
    {
      v28 = (v10 + 425);
    }

    v29 = sub_100240458(v31, v31, v28, 0, v10 + 88);
    if (v29)
    {
      v17 = v29;
      if (!sub_10000C240())
      {
        goto LABEL_25;
      }

      sub_10000AF54("Failed to generate confirmation value C with status %!", v17);
      v30 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }
  }

  if (a2)
  {
    v15 = 441;
    if (*(*v10 + 70) == 1)
    {
      v15 = 425;
    }

    *&v10[v15] = *a2;
  }

  if (a3)
  {
    *(v10 + 104) = *a3;
  }

  v10[490] = 1;
  v16 = *v10;
  if (!*(*v10 + 70))
  {
    v31[0] = 12;
    *&v31[1] = *(v10 + 152);
    *&v31[17] = *(v10 + 168);
    v32 = *(v10 + 184);
    v33 = *(v10 + 200);
    v17 = sub_10029BEC0(v16, v31, 0x41uLL, 1);
    if (!v17)
    {
      sub_10029C3C0(v10, 33);
      return v17;
    }

    if (!sub_10000C240())
    {
      goto LABEL_25;
    }

    sub_10000AF54("Failed to send public keys %!", v17);
    v23 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

LABEL_48:
    sub_10080F604();
LABEL_25:
    sub_1002DF818(v8, 8, v10);
    return v17;
  }

  sub_10029C3C0(v10, 32);
  v17 = sub_1002E7E18(v10);
  if (v17)
  {
    if (!sub_10000C240())
    {
      goto LABEL_25;
    }

    sub_10000AF54("recvdSMPDeferredOOBPublicKey failed %!", v17);
    v18 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

  return v17;
}

uint64_t sub_1002E7E18(void *a1)
{
  memset(__s2, 0, sizeof(__s2));
  sub_10029C2C8(a1);
  if (*(a1 + 490) != 1 || !memcmp(a1 + 39, __s2, 0x40uLL))
  {
    if (*(*a1 + 70) == 1)
    {
      v6 = 32;
    }

    else
    {
      v6 = 33;
    }

    sub_10029C3C0(a1, v6);
    return 0;
  }

  v2 = *a1;
  if (*(*a1 + 70) != 1)
  {
    goto LABEL_15;
  }

  if (!memcmp(a1 + 19, __s2, 0x40uLL))
  {
    v20 = sub_100240E7C(a1 + 19, a1 + 27);
    if (v20)
    {
      v4 = v20;
      if (sub_10000C240())
      {
        sub_10000AF54("LE_ReadLocalPublicKey failed %!", v4);
        v21 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }
      }

      return v4;
    }

    v2 = *a1;
  }

  v32[0] = 12;
  *&v32[1] = *(a1 + 19);
  *&v32[17] = *(a1 + 21);
  v33 = *(a1 + 23);
  v34 = *(a1 + 25);
  v3 = sub_10029BEC0(v2, v32, 0x41uLL, 1);
  if (!v3)
  {
LABEL_15:
    v8 = sub_100241004(a1 + 39, 64, a1 + 27, 0x60u, a1 + 47);
    if (v8)
    {
      v4 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("DHKey generation failed %!", v4);
        v9 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }
      }

      return v4;
    }

    sub_10029C2C8(a1);
    v10 = a1[13] == *&__s2[0] && a1[14] == *(&__s2[0] + 1);
    v11 = *a1;
    v12 = *(*a1 + 70);
    if (v10 || (*(*a1 + 70) ? (v13 = a1 + 425) : (v13 = a1 + 441), (v15 = *v13, v14 = *(v13 + 1), v15 == *&__s2[0]) ? (v16 = v14 == *(&__s2[0] + 1)) : (v16 = 0), v16))
    {
      v10 = v12 == 0;
      v22 = 425;
      if (v10)
      {
        v22 = 441;
      }

      v23 = a1 + v22;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v17 = *(a1 + 41);
      *v32 = *(a1 + 39);
      *&v32[16] = v17;
      if (v12 == 1)
      {
        v18 = (a1 + 425);
      }

      else
      {
        v18 = (a1 + 441);
      }

      v4 = sub_100240458(v32, v32, v18, 0, &v29);
      if (v4)
      {
        if (!sub_10000C240())
        {
          return v4;
        }

        sub_10000AF54("Failed to calculate remote C value with status %!", v4);
        v19 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          return v4;
        }

        goto LABEL_36;
      }

      if (a1[13] != v29 || a1[14] != v30)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received and calculated remote C values do not match");
          v28 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1002DF818(*a1, 4, a1);
        return v4;
      }

      v11 = *a1;
      if (*(a1 + 79))
      {
        goto LABEL_45;
      }

      if (*(v11 + 70) == 1)
      {
        v23 = a1 + 441;
      }

      else
      {
        v23 = a1 + 425;
      }
    }

    *v23 = 0;
    *(v23 + 1) = 0;
LABEL_45:
    v10 = *(v11 + 70) == 1;
    v24 = 457;
    if (v10)
    {
      v24 = 473;
    }

    arc4random_buf(a1 + v24, 0x10uLL);
    if (*(*a1 + 70))
    {
      v25 = 36;
    }

    else
    {
      v25 = 35;
    }

    sub_10029C3C0(a1, v25);
    if (!*(*a1 + 70))
    {
      v4 = sub_1002E86E4(*a1, (a1 + 457));
      if (!v4)
      {
        sub_10029C3C0(a1, 37);
        return v4;
      }

      if (!sub_10000C240())
      {
        return v4;
      }

      sub_10000AF54("Failed to send pairing random to peripheral %!", v4);
      v26 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        return v4;
      }

LABEL_36:
      sub_10080F604();
      return v4;
    }

    return 0;
  }

  v4 = v3;
  if (sub_10000C240())
  {
    sub_10000AF54("smpSendPairingPublicKey failed %!", v4);
    v5 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_40:
      sub_10080F604();
    }
  }

  return v4;
}

uint64_t sub_1002E8270(_DWORD *a1, _BYTE *a2)
{
  v3 = sub_1000E5EA8(a1);
  if (!v3)
  {
    return 122;
  }

  v4 = sub_10029BE74(v3);
  if (!v4)
  {
    return 4806;
  }

  v5 = v4;
  result = 0;
  *a2 = *(v5 + 80);
  return result;
}

BOOL sub_1002E832C(_BOOL8 result, char a2)
{
  if (result)
  {
    v3 = result;
    result = sub_1000ABD24(result);
    if (result)
    {
      *(v3 + 264) = a2;
    }
  }

  return result;
}

uint64_t sub_1002E8364(uint64_t *a1)
{
  v2 = sub_1002E07E4(*a1, a1 + 11);
  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("smpSendPairingConfirmation failed %!", v2);
      v3 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    sub_10029C3C0(a1, 36);
  }

  return v2;
}

void sub_1002E83F4(uint64_t a1)
{
  v4[1] = &v5;
  v5 = a1;
  v4[0] = 8;
  v1 = sub_10002195C(sub_1002E8498, v4, 0, 0);
  if (v1)
  {
    v2 = v1;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not dispatch dispatchPairingDisplay CB with status %!.", v2);
      v3 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }
}

void sub_1002E8498(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if (!*v1 || !sub_1000ABD24(*v1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("This handle is not a LE connection.");
    v7 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_12:
    sub_1000E09C0();
    return;
  }

  v3 = sub_10029BE74(v2);
  if (!v3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("There is no security request for this connection. Ignoring reply.");
    v8 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_12;
  }

  v4 = off_100BCE1D8;
  if (off_100BCE1D8)
  {
    v5 = 48;
    if (*(v2 + 55))
    {
      v5 = 56;
    }

    v6 = *(v3 + 52);

    v4(v2 + v5, v6, v3 + 33, 0);
  }
}

uint64_t sub_1002E85AC(_BYTE *a1, void *a2, int a3)
{
  v3 = a1 + 78;
  v4 = 80;
  if (a3)
  {
    v4 = 72;
  }

  v5 = 79;
  if (a3)
  {
    v5 = 73;
    v3 = &byte_100B53E4B;
  }

  v6 = *v3;
  v7 = a1[v5];
  LOBYTE(v19) = a1[v4];
  HIBYTE(v19) = v7;
  v20 = v6;
  if (a1[424])
  {
    v10 = *a1;
    if (*(*a1 + 70))
    {
      v11 = (a1 + 408);
      if (a3)
      {
        v12 = (a1 + 473);
        v13 = (a1 + 457);
        v14 = (a1 + 425);
LABEL_15:
        v17 = (v10 + 63);
        v18 = (v10 + 48);
LABEL_19:
        sub_100240870(v11, v12, v13, v14, &v19, v17, v18, a2);
        return 0;
      }

      v12 = (a1 + 457);
      v13 = (a1 + 473);
      v14 = (a1 + 441);
    }

    else
    {
      v11 = (a1 + 408);
      if (a3)
      {
        v12 = (a1 + 457);
        v13 = (a1 + 473);
        v14 = (a1 + 441);
        goto LABEL_15;
      }

      v12 = (a1 + 473);
      v13 = (a1 + 457);
      v14 = (a1 + 425);
    }

    v17 = (v10 + 48);
    v18 = (v10 + 63);
    goto LABEL_19;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LTK And MacKey are not generated, we have a problem.");
    v15 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 4824;
}

uint64_t sub_1002E86E4(uint64_t a1, __int128 *a2)
{
  v19 = 4;
  v20 = *a2;
  if (sub_1000ABD24(a1))
  {
    v3 = sub_10029BE74(a1);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 70);
      if ((*(v3 + 72) & *(v3 + 80) & 8) != 0)
      {
        if (v5 != 1)
        {
LABEL_7:
          if (!v5 && !sub_10029C4B0(v4, 35))
          {
            if (!sub_10000C240())
            {
              return 4823;
            }

            v6 = sub_10029C3B4();
            sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SCONFIRM to send this command, current state is %s.", v6);
            v7 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              return 4823;
            }

            goto LABEL_38;
          }

          goto LABEL_24;
        }

        if (sub_10029C4B0(v3, 36))
        {
          v5 = *(a1 + 70);
          goto LABEL_7;
        }

        if (!sub_10000C240())
        {
          return 4823;
        }

        v12 = sub_10029C3B4();
        sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MRAND to send this command, current state is %s.", v12);
        v13 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          return 4823;
        }
      }

      else
      {
        if (!*(a1 + 70))
        {
          if (!sub_10029C4B0(v3, 35))
          {
            if (!sub_10000C240())
            {
              return 4823;
            }

            v16 = sub_10029C3B4();
            sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SCONFIRM to send this command, current state is %s.", v16);
            v17 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              return 4823;
            }

            goto LABEL_38;
          }

          v5 = *(a1 + 70);
        }

        if (v5 != 1 || sub_10029C4B0(v4, 36))
        {
LABEL_24:
          v9 = sub_10029BEC0(*v4, &v19, 0x11uLL, 1);
          if (v9)
          {
            sub_10029BA98(v4, v9, 1);
          }

          else
          {
            if (*(a1 + 70))
            {
              v11 = 37;
            }

            else
            {
              v11 = 36;
            }

            sub_10029C3C0(v4, v11);
          }

          return v9;
        }

        if (!sub_10000C240())
        {
          return 4823;
        }

        v14 = sub_10029C3B4();
        sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MRAND to send this command, current state is %s.", v14);
        v15 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          return 4823;
        }
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        return 4823;
      }

      sub_10000AF54("This device is not in a pairing state.");
      v10 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        return 4823;
      }
    }

LABEL_38:
    sub_1000E09C0();
    return 4823;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("This command is only available to LE devices.");
    v8 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 4820;
}

void sub_1002E89E8(char *a1)
{
  if ((a1[72] & a1[80] & 8) != 0)
  {
    v2 = -10;
  }

  else
  {
    v2 = -9;
  }

  if ((v2 & a1[74] & 0xF7) == (v2 & a1[75] & 0xF7) || (v2 & a1[74]) == 0)
  {
    if (*(*a1 + 70))
    {
      sub_10029C3C0(a1, 65);
    }

    else
    {
      sub_10029C3C0(a1, 67);
      sub_1002E5B94(a1);
      sub_1002E5D18(a1);
    }

    sub_10029BA98(a1, 0, 1);
  }
}

uint64_t sub_1002E8AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((qword_100B6B468 & 1) != 0 || (qword_100B6B468 & 0x100) != 0)
  {
    return 118;
  }

  v8 = a1;
  if (a1 < 0x28)
  {
    v10 = sub_100018960(189, sub_1002E8BC4, a3, a4, a5, a6, a7, a8, a1);
    if (v10)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to start RX LE test %!", v10);
        v12 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      BYTE2(qword_100B6B468) = v8;
      LOBYTE(qword_100B6B468) = 1;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid test frequency %d", v8);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 101;
  }

  return v10;
}

void sub_1002E8BC4(uint64_t result)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start RX test %!", result);
      v2 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    BYTE1(qword_100B6B468) |= 1u;
  }

  LOBYTE(qword_100B6B468) = 0;
}

uint64_t sub_1002E8C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((qword_100B6B468 & 1) != 0 || (qword_100B6B468 & 0x200) != 0)
  {
    return 118;
  }

  v8 = a1;
  if (a1 >= 0x28)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid test frequency %d", v8);
    v9 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_15;
  }

  v11 = a2;
  if (a2 >= 0x26)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid payload length %d", v11);
    v12 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_15;
  }

  v13 = a3;
  if (a3 >= 8)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid payload type %d", v13);
    v14 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_15:
    sub_10080F7A0();
    return 101;
  }

  v10 = sub_100018960(190, sub_1002E8E30, a3, a4, a5, a6, a7, a8, a1);
  if (v10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to start TX LE test %!", v10, a2, a3);
      v16 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    BYTE3(qword_100B6B468) = v8;
    BYTE4(qword_100B6B468) = v11;
    BYTE5(qword_100B6B468) = v13;
    LOBYTE(qword_100B6B468) = 1;
  }

  return v10;
}

void sub_1002E8E30(uint64_t result)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start TX test %!", result);
      v2 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    BYTE1(qword_100B6B468) |= 2u;
  }

  LOBYTE(qword_100B6B468) = 0;
}

uint64_t sub_1002E8EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE1(qword_100B6B468))
  {
    v9 = sub_100018960(191, sub_1002E8FB8, a3, a4, a5, a6, a7, a8, v13);
    if (v9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to stop LE test %!", v9);
        v10 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      LOBYTE(qword_100B6B468) = 1;
      off_100B6B470 = a1;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No test started");
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 114;
  }

  return v9;
}

void sub_1002E8FB8(uint64_t result, uint64_t a2)
{
  v4 = off_100B6B470;
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not stop the test %!", result);
      v5 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    qword_100B6B468 = 0;
    off_100B6B470 = 0;
  }

  LOBYTE(qword_100B6B468) = 0;
  if (v4)
  {
    v4(result, a2);
  }
}

uint64_t sub_1002E9070(uint64_t a1)
{
  v1 = word_100B6B478;
  v2 = word_100B6B478;
  if (word_100B6B478)
  {
    if (word_100B6B478 == 8)
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

      return 4150;
    }

    else
    {
      v5 = 0;
      while (qword_100B6B480[v5] != a1)
      {
        if (word_100B6B478 <= ++v5)
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
    qword_100B6B480[v2] = a1;
    word_100B6B478 = v1 + 1;
  }

  return v4;
}

uint64_t sub_1002E9140(unsigned __int8 *a1)
{
  if (!*(&xmmword_100B6B4C0 + 1))
  {
    return 118;
  }

  if (xmmword_100B6B4C0 <= BYTE2(xmmword_100B6B4C0))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No room in filter accept list %d (+%d pending)/%d.", BYTE2(xmmword_100B6B4C0), xmmword_100B6B4C0, v17);
      v3 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  else if (sub_1002E92FC(a1))
  {
    return 4152;
  }

  else
  {
    v5 = sub_100007618(0x10uLL, 0x10200403D1E2031uLL);
    if (v5)
    {
      v12 = v5;
      v13 = sub_100018960(177, sub_1002E9380, v6, v7, v8, v9, v10, v11, *a1);
      if (v13)
      {
        v2 = v13;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not add device to filter accept list %!", v2, a1 + 1);
          v14 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_10000C1E8(v12);
      }

      else
      {
        v15 = *a1;
        v16 = *(a1 + 2);
        *(v12 + 6) = a1[6];
        *(v12 + 2) = v16;
        *v12 = v15;
        *(v12 + 1) = 0;
        if (qword_100B6B4D8)
        {
          *(qword_100B6B4D8 + 8) = v12;
          qword_100B6B4D8 = v12;
        }

        v2 = 0;
        if (!qword_100B6B4D0)
        {
          qword_100B6B4D0 = v12;
          qword_100B6B4D8 = v12;
        }
      }
    }

    else
    {
      return 106;
    }
  }

  return v2;
}

BOOL sub_1002E92FC(_DWORD *a1)
{
  if (!BYTE2(xmmword_100B6B4C0))
  {
    return 0;
  }

  if (**(&xmmword_100B6B4C0 + 1) == *a1 && *(*(&xmmword_100B6B4C0 + 1) + 3) == *(a1 + 3))
  {
    return 1;
  }

  v2 = (*(&xmmword_100B6B4C0 + 1) + 7);
  v3 = 1;
  do
  {
    v4 = v3;
    if (BYTE2(xmmword_100B6B4C0) == v3)
    {
      break;
    }

    v5 = *v2 == *a1 && *(v2 + 3) == *(a1 + 3);
    ++v3;
    v2 = (v2 + 7);
  }

  while (!v5);
  return v4 < BYTE2(xmmword_100B6B4C0);
}

uint64_t sub_1002E9380(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error adding device to filter accept list %!", a1);
      v19 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    sub_1001BAA68(a1, "Filter Accept List add error");
  }

  v1 = qword_100B6B4D0;
  if (qword_100B6B4D0 || (sub_1000D660C(), (v1 = qword_100B6B4D0) != 0))
  {
    v2 = BYTE2(xmmword_100B6B4C0);
    v3 = *(&xmmword_100B6B4C0 + 1) - BYTE2(xmmword_100B6B4C0) + 8 * BYTE2(xmmword_100B6B4C0);
    v4 = *v1;
    v5 = *(v1 + 4);
    *(v3 + 6) = *(v1 + 6);
    *(v3 + 4) = v5;
    *v3 = v4;
    BYTE2(xmmword_100B6B4C0) = v2 + 1;
  }

  v6 = word_100B6B478;
  if (word_100B6B478)
  {
    v7 = 0;
    v8 = qword_100B6B4D0;
    do
    {
      v9 = *qword_100B6B480[v7];
      if (v9)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v9(v8, 0);
        v8 = qword_100B6B4D0;
        v6 = word_100B6B478;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  sub_1002E9A94();
  sub_1002BFDEC(1, v11, v12, v13, v14, v15, v16, v17);
  sub_1002B1E10(1);

  return sub_1002D9C80(1);
}