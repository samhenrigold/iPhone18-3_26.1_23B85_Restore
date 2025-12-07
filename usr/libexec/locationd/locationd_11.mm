void sub_1000B85D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1000B8618(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        sub_1002AD354(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1000B869C(uint64_t a1, unsigned __int16 *a2, int a3, unsigned __int16 *a4, double *a5)
{
  v5 = a2[1];
  if (v5 >= 7)
  {
    v11 = v5 - 1;
    if (sub_1000B79F8(a1, a2, v5 - 1, 6) > 7.62947002)
    {
      v12 = a2 + 4;
      v13 = a2[1];
      v14 = *a2 + v13 - 1;
      v15 = *(a2 + 1);
      if (v14 < v15)
      {
        v15 = 0;
      }

      v16 = *&v12[8 * (v14 - v15)];
      v17 = *sub_1000B7CA0(a2, v13 - 6);
      v18 = a2[1];
      v19 = *a2 + v18 - 1;
      v20 = *(a2 + 1);
      if (v19 < v20)
      {
        v20 = 0;
      }

      v21 = *&v12[8 * (v19 - v20) + 4];
      v22 = sub_1000B7CA0(a2, v18 - 6);
      v23 = *(v22 + 1);
      v24 = sub_1000B79F8(v22, a2, v11, 5);
      if (fabs(v24) > 0.0001)
      {
        v25 = sqrt((v16 - v17) * (v16 - v17) + (v21 - v23) * (v21 - v23)) / v24;
        v26 = a4[1];
        v27 = *(a4 + 1);
        v28 = *a4;
        if (v28 + v26 >= v27)
        {
          v29 = *(a4 + 1);
        }

        else
        {
          v29 = 0;
        }

        *&a4[4 * (v28 + v26 - v29) + 4] = v25;
        if (v27 <= v26)
        {
          if (v28 + 1 < v27)
          {
            LOWORD(v27) = 0;
          }

          *a4 = v28 + 1 - v27;
          if (!a3)
          {
            goto LABEL_13;
          }
        }

        else
        {
          a4[1] = v26 + 1;
          if (!a3)
          {
LABEL_13:
            v30 = 0;
            goto LABEL_18;
          }
        }

        v30 = sub_100F79F84((a1 + 792), sub_100F7A018, 0) >= 0.349065848;
LABEL_18:
        if (*(a1 + 1880) >= 9u && !v30)
        {
          v31 = sub_100F79F84(a4, sub_100F7A024, 0);
          v32 = acos(v31);
          *a5 = (v32 + v32) * 57.2957802;
        }
      }
    }
  }
}

void sub_1000B88A0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a2 == 1.79769313e308)
  {
    v7 = a1 + 1960;
    v8 = 992;
    do
    {
      v9 = *(v7 + 8) + *(v7 + 10);
      if (v9 - 1 >= *(v7 + 12))
      {
        v10 = *(v7 + 12);
      }

      else
      {
        v10 = 0;
      }

      sub_1000A3054((v7 + 8), (v7 - 16 * v10 + 16 * v9));
      v7 += 248;
      v8 -= 248;
    }

    while (v8);
  }

  else
  {
    for (i = 1968; i != 2960; i += 248)
    {
      sub_10030D2A0(a1, (a1 + i), a3, a4, a5, a2);
    }
  }

  if (*(a1 + 1880) < 9u)
  {
    return;
  }

  v15 = 0;
  v16 = -1;
  v17 = a1 + 1968;
  do
  {
    if (sub_1000B7F44(a1, v17))
    {
      if (v16 != -1)
      {
        sub_101AE3A14();
      }

      v16 = v15;
    }

    ++v15;
    v17 += 248;
  }

  while (v15 != 4);
  if (v16 == -1)
  {
    *(a1 + 1952) = 0x7FF8000000000000;
    return;
  }

  v18 = *(a1 + 1968 + 248 * v16 + 224);
  if (v18 > 1.0)
  {
    v18 = 1.0;
  }

  *(a1 + 1952) = v18;
  v19 = *(a1 + 1960) - 5;
  v20 = *(a1 + 1944) - *(a1 + 1936);
  v21 = COERCE__INT64(fabs(v20)) > 0x7FEFFFFFFFFFFFFFLL;
  if (v19 >= 0xFFFFFFFD && !v21)
  {
    sub_100F79E54(a1, v20);
    v23 = *(a1 + 866);
    v24 = *(a1 + 868);
    v25 = *(a1 + 864);
    if (v25 + v23 >= v24)
    {
      v26 = *(a1 + 868);
    }

    else
    {
      v26 = 0;
    }

    *(a1 + 8 * (v25 + v23 - v26) + 872) = v22;
    if (v24 <= v23)
    {
      if (v25 + 1 < v24)
      {
        LOWORD(v24) = 0;
      }

      *(a1 + 864) = v25 + 1 - v24;
    }

    else
    {
      *(a1 + 866) = v23 + 1;
    }
  }

  v27 = *(a1 + 1952);
  if (v19 < 0xFFFFFFFD || (*(a1 + 1952) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v34 = *(a1 + 938);
    v35 = *(a1 + 940);
    v36 = *(a1 + 936);
    if (v36 + v34 >= v35)
    {
      v38 = *(a1 + 940);
    }

    else
    {
      v38 = 0;
    }

    *(a1 + 8 * (v36 + v34 - v38) + 944) = 0;
  }

  else
  {
    v28 = exp(v27 * -10.0) * 10.0;
    v29 = *(a1 + 24);
    v30 = (1.0 - v27) * -10.0;
    v31 = v28 / v29;
    v32 = exp(v30);
    v33 = log10(v31 / (v32 * 10.0 / v29));
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v33 = 0.0;
    }

    v34 = *(a1 + 938);
    v35 = *(a1 + 940);
    v36 = *(a1 + 936);
    if (v36 + v34 >= v35)
    {
      v37 = *(a1 + 940);
    }

    else
    {
      v37 = 0;
    }

    *(a1 + 8 * (v36 + v34 - v37) + 944) = v33;
  }

  if (v35 <= v34)
  {
    if (v36 + 1 < v35)
    {
      LOWORD(v35) = 0;
    }

    *(a1 + 936) = v36 + 1 - v35;
  }

  else
  {
    *(a1 + 938) = v34 + 1;
  }

  v50[0] = a2 != 1.79769313e308 && *(a1 + 1912) != -1.79769313e308;
  sub_1000C42AC((a1 + 1008), v50);
  *(a1 + 1856) = sub_1000C4048((a1 + 864));
  *(a1 + 1864) = sub_1000C4048((a1 + 936));
  v39 = sub_1000C4304((a1 + 1008));
  *(a1 + 1872) = v39;
  v40 = *(a1 + 1960);
  if (!v40 && v39 < 6.0)
  {
    goto LABEL_53;
  }

  if (!v40 && v39 >= 6.0 || v40 == 1 && v39 >= 6.0)
  {
    goto LABEL_60;
  }

  if (v40 == 1)
  {
    if (*(a1 + 1928) <= 0x19u)
    {
      v41 = 1;
      goto LABEL_55;
    }

    v41 = 5;
LABEL_54:
    *(a1 + 1960) = v41;
LABEL_55:
    ++*(a1 + 1928);
    goto LABEL_63;
  }

  if (v40 == 2 && v39 < 6.0)
  {
    goto LABEL_53;
  }

  if (v40 == 2)
  {
    v49 = *(a1 + 1864);
    if (v49 <= -20.0)
    {
      v41 = 3;
    }

    else
    {
      if (v49 < 22.0 || *(a1 + 1856) < -5.0)
      {
        v41 = 2;
        goto LABEL_62;
      }

      v41 = 4;
    }

    goto LABEL_61;
  }

  if (v40 == 3 && v39 >= 6.0)
  {
    if (*(a1 + 1864) < 0.0 || *(a1 + 1856) < -5.0)
    {
      v41 = 3;
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (v40 == 4 && v39 < 6.0)
  {
LABEL_53:
    v41 = 1;
    goto LABEL_54;
  }

  if (v40 == 4)
  {
    if (*(a1 + 1864) > 0.0)
    {
      goto LABEL_96;
    }

LABEL_60:
    v41 = 2;
LABEL_61:
    *(a1 + 1960) = v41;
    goto LABEL_62;
  }

  if (v40 == 5 && v39 >= 6.0)
  {
    goto LABEL_60;
  }

LABEL_96:
  v41 = *(a1 + 1960);
  if (v40 == 5)
  {
    goto LABEL_55;
  }

LABEL_62:
  *(a1 + 1928) = 0;
LABEL_63:
  if (v40 != v41)
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v42 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
    {
      v43 = a1;
      if (*(a1 + 23) < 0)
      {
        v43 = *a1;
      }

      v44 = *(a1 + 1960);
      v45 = *(a1 + 1928);
      v46 = *(a1 + 1872);
      v47 = *(a1 + 1856);
      v48 = *(a1 + 1864);
      v50[0] = 68290818;
      v50[1] = 0;
      v51 = 2082;
      v52 = "";
      v53 = 2082;
      v54 = v43;
      v55 = 1026;
      v56 = v40;
      v57 = 1026;
      v58 = v44;
      v59 = 1026;
      v60 = v45;
      v61 = 2050;
      v62 = v46;
      v63 = 2050;
      v64 = v47;
      v65 = 2050;
      v66 = v48;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:IndoorOutdoorGpsChange, Context:%{public, location:escape_only}s, Old GPS State:%{public}d, New GPS State:%{public}d, Epochs No Fix:%{public}d, GPS fix buffer sum:%{public}.9f, GPS wander LLR sum:%{public}.9f, GPS LLR sum:%{public}.9f}", v50, 0x4Cu);
    }
  }
}

uint64_t *sub_1000B8E4C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t *sub_1000B91DC(uint64_t a1, int *a2, uint64_t a3, unsigned int **a4)
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
      v7 = *(v4 + 28);
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

uint64_t sub_1000B92AC(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1000B9370(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_100023B78(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1000B93E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v7 = -536870187;
    v16 = 256;
    v8 = (*(*v3 + 80))(v3, a2, a3, v21, &v16);
    if (v8 == -536870187)
    {
      while (*(a1 + 16) < 5u)
      {
        if (qword_1025D4210 != -1)
        {
          sub_101A09C90();
        }

        v9 = qword_1025D4218;
        if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
        {
          v10 = dword_101CEF3C0[*(a1 + 16)];
          *buf = 67109120;
          v20 = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CMA busy. Waiting %d microseconds.", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A09CB8(&v17, (a1 + 16), v18);
        }

        usleep(dword_101CEF3C0[*(a1 + 16)]);
        ++*(a1 + 16);
        v16 = 256;
        v8 = (*(*v3 + 80))(v3, a2, a3, v21, &v16);
        if (v8 != -536870187)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v7 = v8;
      if (!v8)
      {
        *(a1 + 16) = 0;
        return 1;
      }
    }

    if (qword_1025D4210 != -1)
    {
      sub_101A09C90();
    }

    v11 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
    {
      v12 = mach_error_string(v7);
      v13 = *(a1 + 16);
      *v21 = 136446722;
      v22 = v12;
      v23 = 1026;
      v24 = v7;
      v25 = 1026;
      v26 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "sendCommandPayload() = %{public}s (0x%{public}x),fNumConsecutiveCMAFailures,%{public}d", v21, 0x18u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101A09DE8(v7, a1);
      return 0;
    }
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_101A09F38();
    }

    v15 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "cmaHidDriverInterface NULL", v21, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101A09F4C();
      return 0;
    }
  }

  return result;
}

void sub_1000B96B4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10014E54C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000B9708(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1000B9760(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x79435E50D79435E5 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 25 - v3;
      v6 = &v2[-(v5 / 0x1A)];
      *result = v6;
      v4 = *v6 + 152 * (26 * (v5 / 0x1A) - v5) + 3800;
    }

    else
    {
      *result = &v2[v3 / 0x1A];
      v4 = v2[v3 / 0x1A] + 152 * (v3 % 0x1A);
    }

    result[1] = v4;
  }

  return result;
}

void *sub_1000B9814(void *result, double *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a4)
  {
    while (*&a5 - *a2 <= *(a6 + 88))
    {
      a2 += 4;
      if ((a2 - *result) == 4096)
      {
        v6 = result[1];
        ++result;
        a2 = v6;
      }

      if (a2 == a4)
      {
        a2 = a4;
        break;
      }
    }
  }

  if (a2 != a4)
  {
    v7 = a2;
    v8 = result;
    while (1)
    {
      v7 += 4;
      if ((v7 - *v8) == 4096)
      {
        v9 = v8[1];
        ++v8;
        v7 = v9;
      }

      if (v7 == a4)
      {
        break;
      }

      if (*&a5 - *v7 <= *(a6 + 88))
      {
        v10 = *(v7 + 1);
        *a2 = *v7;
        *(a2 + 1) = v10;
        a2 += 4;
        if ((a2 - *result) == 4096)
        {
          v11 = result[1];
          ++result;
          a2 = v11;
        }
      }
    }
  }

  return result;
}

void *sub_1000B98C0(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 5) + 16 * (a4 - a2) - ((a3 - *a2) >> 5);
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (a1[4] >> 7));
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 32 * (a1[4] & 0x7FLL);
  }

  v33 = (v7 + 8 * (a1[4] >> 7));
  v34 = v9;
  if (a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((a3 - *a2) >> 5) + 16 * (a2 - v8) - ((v9 - *v8) >> 5);
  }

  v11 = sub_1000B9AF8(&v33, v10);
  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v12;
  if (v6 >= 1)
  {
    if (v10 <= (a1[5] - v6) >> 1)
    {
      v19 = v11;
      v20 = v12;
      v21 = v33;
      v22 = v34;
      v23 = sub_1000B9AF8(&v32, v6);
      sub_100A3C7E8(v21, v22, v19, v20, v23, v24, &v35);
      v25 = v34;
      if (v34 != v36)
      {
        v26 = v33;
        do
        {
          v25 += 32;
          v34 = v25;
          if (&v25[-*v26] == 4096)
          {
            v27 = v26[1];
            ++v26;
            v25 = v27;
            v33 = v26;
            v34 = v27;
          }
        }

        while (v25 != v36);
      }

      v28 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v28;
        ;
      }
    }

    else
    {
      v13 = sub_1000B9AF8(&v32, v6);
      v15 = a1[4] + a1[5];
      v16 = a1[1];
      v17 = (v16 + 8 * (v15 >> 7));
      if (a1[2] == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = (*v17 + 32 * (v15 & 0x7F));
      }

      v35 = v32;
      sub_1000BFCAC(v13, v14, v17, v18, &v35);
      a1[5] -= v6;
        ;
      }
    }
  }

  v29 = a1[1];
  if (a1[2] == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v29 + 8 * (a1[4] >> 7)) + 32 * (a1[4] & 0x7FLL);
  }

  v35.n128_u64[0] = v29 + 8 * (a1[4] >> 7);
  v35.n128_u64[1] = v30;
  return sub_1000B9AF8(&v35, v10);
}

void *sub_1000B9AF8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 5);
    if (v4 < 1)
    {
      result -= (127 - v4) >> 7;
    }

    else
    {
      result += v4 >> 7;
    }
  }

  return result;
}

void sub_1000B9B5C(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *buf = xmmword_101D104D0;
  *&buf[16] = unk_101D104E0;
  v154 = 0;
  v152 = 0;
  v153 = 0;
  sub_1004579D4(&v152, buf, &buf[32], 8uLL);
  v112 = 0;
  __dst = xmmword_101C76220;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  memset(v111, 0, sizeof(v111));
  v113 = 0xBFF0000000000000;
  v114 = 0;
  memset(&v115[1], 0, 320);
  v115[0] = -1.0;
  v116 = -1.0;
  v117 = 0;
  v118 = 0xBFF0000000000000;
  v129 = 0;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  memset(v128, 0, sizeof(v128));
  v130 = xmmword_101C76220;
  v131 = 0u;
  v132 = 0x80000000800000;
  v133 = 0u;
  v134 = xmmword_101C78410;
  v135 = 0x80000000800000;
  v136 = 0xBFF0000000000000;
  v98 = &v137;
  v137 = 0u;
  v138 = 0;
  v139 = -1.0;
  v140 = 0u;
  v141 = 0;
  v142 = -1.0;
  v143 = 0u;
  v144 = 0u;
  v145 = 0;
  v146 = -1.0;
  v147 = 0x600000006;
  v149 = 0;
  v148 = 0u;
  v150 = 0xBFF0000000000000;
  v151 = 0xBFF0000000000000;
  sub_1000BB0FC(*a1, &v152, &__dst, a3);
  if (qword_1025D4760 != -1)
  {
    sub_101ACF7EC();
  }

  v6 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219520;
    *&buf[4] = a3;
    *&buf[12] = 1024;
    *&buf[14] = v115[0] != -1.0;
    *&buf[18] = 1024;
    *&buf[20] = LODWORD(v115[4]);
    *&buf[24] = 2048;
    *&buf[26] = v115[0];
    *v164 = 1024;
    *&v164[2] = *(&__dst + 1) != -1.0;
    *&v164[6] = 1024;
    *&v164[8] = DWORD2(v104);
    *&v164[12] = 2048;
    *&v164[14] = *(&__dst + 1);
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Steps/activity sync, updateTime, %f, hasSteps, %d, stepCount, %d, stepStartTime, %f, hasActivity, %d, activityType, %d, activityStartTime, %f", buf, 0x38u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ACF814(buf);
    *v155 = 134219520;
    *&v155[4] = a3;
    v156 = 1024;
    *v157 = v115[0] != -1.0;
    *&v157[4] = 1024;
    *&v157[6] = LODWORD(v115[4]);
    *v158 = 2048;
    *&v158[2] = v115[0];
    LOWORD(v159) = 1024;
    *(&v159 + 2) = *(&__dst + 1) != -1.0;
    HIWORD(v159) = 1024;
    LODWORD(v160) = DWORD2(v104);
    WORD2(v160) = 2048;
    *(&v160 + 6) = *(&__dst + 1);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "Steps/activity sync, updateTime, %f, hasSteps, %d, stepCount, %d, stepStartTime, %f, hasActivity, %d, activityType, %d, activityStartTime, %f", COERCE_DOUBLE(v155), 56, &v137, *&v99, DWORD2(v99), v100, *__p);
    v66 = v65;
    sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v65);
    if (v66 != buf)
    {
      free(v66);
    }
  }

  v7.n128_f64[0] = v116;
  if (v116 != -1.0)
  {
    sub_1001F1A2C(a1 + 3072, *&v117, *(&v117 + 1));
    sub_1002576A4((a1 + 3144), *&v117, *(&v117 + 1));
  }

  __p[0] = 0;
  __p[1] = 0;
  v102 = 0;
  v8 = (*(**(*a1 + 24) + 24))(*(*a1 + 24), v7);
  v9.n128_u64[0] = *(a1 + 3200);
  v10.n128_f64[0] = a3;
  sub_1000BBBF8(v8, __p, v9, v10);
  v12 = __p[1];
  v13 = __p[0];
  if (__p[0] == __p[1])
  {
    v17 = 0;
    v14 = 0;
  }

  else
  {
    v14 = *(__p[1] - 2);
    do
    {
      *buf = *v13;
      sub_1000DA248(a1 + 3072, buf, a3, v11);
      v16 = sub_1000D7654((a1 + 3144), buf, a3, v15);
      ++v13;
    }

    while (v13 != v12);
    v17 = v16;
  }

  sub_1000BC774((a1 + 2968), *(a1 + 3208), *(a1 + 3472), a3);
  if (v115[0] != -1.0)
  {
    memcpy((a1 + 3208), v115, 0x148uLL);
  }

  v18 = sub_1000BC880(a1 + 3072, a3);
  v19 = sub_1000BCBB0(a1 + 2968, a3);
  sub_1000BCED8(a1 + 8, &v99, a3);
  if (qword_1025D4760 != -1)
  {
    sub_101ACF7EC();
  }

  v20 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = v19;
    *&buf[22] = 2048;
    *&buf[24] = v99;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "CoreMotion model estimates, alsOutdoorProb, %f, wifiIndoorProb, %f, gpsOutdoorProb, %f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ACF814(buf);
    *v155 = 134218496;
    *&v155[4] = v18;
    v156 = 2048;
    *v157 = v19;
    *&v157[8] = 2048;
    *v158 = v99;
    LODWORD(v96) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 1, "CoreMotion model estimates, alsOutdoorProb, %f, wifiIndoorProb, %f, gpsOutdoorProb, %f", COERCE_DOUBLE(v155), v96, *&v98);
    v68 = v67;
    sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v67);
    if (v68 != buf)
    {
      free(v68);
    }
  }

  if ((*(a1 + 3776) & 1) == 0)
  {
    sub_101318918(a1 + 3536, a3);
    if (qword_1025D4760 != -1)
    {
      sub_101ACF7EC();
    }

    v21 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLOutdoorLabeler,CLOutdoorEstimator,Init,currentTime,%f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ACF814(buf);
      *v155 = 134217984;
      *&v155[4] = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorLabeler,CLOutdoorEstimator,Init,currentTime,%f", COERCE_DOUBLE(v155));
      v79 = v78;
      sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v78);
      if (v79 != buf)
      {
        free(v79);
      }
    }
  }

  v22 = *&v99 >= 0.0;
  if (*&v99 > 1.0)
  {
    v22 = 0;
  }

  HIDWORD(v97) = v22;
  v23 = v19 > 1.0 || v19 < 0.0;
  v24 = !v23;
  v26 = v18 <= 1.0 && v18 >= 0.0;
  if (sub_1000BBD94(a1 + 3536, a3))
  {
    if (*(&__dst + 1) == -1.0)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v27 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoMotionActivity,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v155 = 134217984;
        *&v155[4] = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_NoMotionActivity,currentTime,%f", COERCE_DOUBLE(v155));
        v89 = v88;
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v88);
        if (v89 != buf)
        {
          free(v89);
        }
      }
    }

    else
    {
      sub_1000AC874(a1 + 3536, SDWORD2(v104), a3);
    }

    if (v142 == -1.0)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v34 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoGnssLeechLocation,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v155 = 134217984;
        *&v155[4] = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_NoGnssLeechLocation,currentTime,%f", COERCE_DOUBLE(v155));
        v91 = v90;
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v90);
        if (v91 != buf)
        {
          free(v91);
        }
      }
    }

    else
    {
      memset(buf, 0, 24);
      v28 = (*(**(*a1 + 24) + 80))(*(*a1 + 24), v142);
      v29.n128_u64[0] = *(a1 + 3200);
      v30.n128_f64[0] = a3;
      sub_100305B34(v28, buf, v29, v30);
      v31 = *buf;
      v32 = *&buf[8];
      while (v31 != v32)
      {
        sub_10030B83C(a1 + 3536, v31, a3);
        v31 += 48;
      }

      *v155 = buf;
      sub_100306418(v155);
    }

    if (v139 == -1.0)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v35 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoGnssAvailability,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v155 = 134217984;
        *&v155[4] = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_NoGnssAvailability,currentTime,%f", COERCE_DOUBLE(v155));
        v93 = v92;
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v92);
        if (v93 != buf)
        {
          free(v93);
        }
      }
    }

    else
    {
      sub_1000CA2F4(a1 + 3536, &v140, v33, a3);
    }

    if (v146 == -1.0)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v37 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_OutdoorNoMapMatchingRouteHint,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v155 = 134217984;
        *&v155[4] = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_OutdoorNoMapMatchingRouteHint,currentTime,%f", COERCE_DOUBLE(v155));
        v95 = v94;
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v94);
        if (v95 != buf)
        {
          free(v95);
        }
      }
    }

    else
    {
      sub_101185F8C(a1 + 3536, &v147, a3);
    }

    if (HIDWORD(v97))
    {
      *&buf[8] = v99;
      *buf = 0;
      *&buf[24] = v100;
      sub_1000CF128(a1 + 3536, buf, v36, a3);
    }

    else
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v39 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoCMGpsModelOutput,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v155 = 134217984;
        *&v155[4] = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_NoCMGpsModelOutput,currentTime,%f", COERCE_DOUBLE(v155));
        v83 = v82;
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v82);
        if (v83 != buf)
        {
          free(v83);
        }
      }
    }

    if (v24)
    {
      *buf = 0;
      *&buf[8] = v19;
      sub_1002AEA84(a1 + 3536, buf, v38, a3);
    }

    else
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v41 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoCMWiFiModelOutput,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v155 = 134217984;
        *&v155[4] = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_NoCMWiFiModelOutput,currentTime,%f", COERCE_DOUBLE(v155));
        v85 = v84;
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v84);
        if (v85 != buf)
        {
          free(v85);
        }
      }
    }

    if (v26)
    {
      *buf = 0;
      *&buf[8] = v18;
      sub_100143010(a1 + 3536, buf, v40, a3);
    }

    else
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v42 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoCMALSModelOutput,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v155 = 134217984;
        *&v155[4] = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_NoCMALSModelOutput,currentTime,%f", COERCE_DOUBLE(v155));
        v87 = v86;
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v86);
        if (v87 != buf)
        {
          free(v87);
        }
      }
    }

    v43 = sub_1000C57A0(a1 + 3144);
    v44 = *(a1 + 3152);
    v45 = sub_1000CF2B0(a1 + 3144);
    sub_10001A3E8(v46, v47);
    if (sub_10001CF3C())
    {
      if ((v17 - 1) >= 3)
      {
        goto LABEL_112;
      }
    }

    else if (v17 != 3)
    {
LABEL_112:
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v55 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoAlsEvidence,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v155 = 134217984;
        *&v155[4] = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_NoAlsEvidence,currentTime,%f", COERCE_DOUBLE(v155));
        v81 = v80;
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v80);
        if (v81 != buf)
        {
          free(v81);
        }
      }

      goto LABEL_117;
    }

    if (v44 > 0.0)
    {
      v48 = v43;
    }

    else
    {
      v48 = 0;
    }

    if (v48 != 1)
    {
      goto LABEL_112;
    }

    v49 = 750.0;
    if (v45 <= 750.0)
    {
      goto LABEL_112;
    }

    *&buf[8] = 0;
    v50 = 15000.0;
    if (v45 <= 15000.0)
    {
      v50 = v45;
    }

    if (v45 >= 750.0)
    {
      v49 = v50;
    }

    v51 = *(a1 + 3152);
    v52 = 90.0;
    if (v51 < 90.0)
    {
      v52 = *(a1 + 3152);
    }

    v53 = v52;
    v23 = v51 < 0.0;
    v54 = 0.0;
    if (!v23)
    {
      v54 = v53;
    }

    *&buf[16] = v49;
    *&buf[24] = v54;
    buf[32] = v43;
    *&v164[6] = v17;
    *buf = a3;
    sub_101186198(a1 + 3536, buf, a3);
  }

LABEL_117:
  *a2 = a3;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = v17;
  *(a2 + 48) = sub_1000C57A0(a1 + 3144);
  *(a2 + 52) = v14;
  sub_1000C57C8(a1 + 3536, a2);
  if (qword_1025D4760 != -1)
  {
    sub_101ACF7EC();
  }

  v56 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    v57 = *a2;
    v58 = *(a2 + 8);
    v59 = *(a2 + 16);
    v60 = *(a2 + 24);
    v61 = *(a2 + 48);
    v62 = *(a2 + 32);
    v63 = *(a2 + 40);
    *buf = 134219521;
    *&buf[4] = v57;
    *&buf[12] = 2049;
    *&buf[14] = v58;
    *&buf[22] = 2049;
    *&buf[24] = v59;
    *&buf[32] = 2049;
    *v164 = v60;
    *&v164[8] = 2049;
    *&v164[10] = v62;
    *&v164[18] = 1025;
    *&v164[20] = v61;
    v165 = 2049;
    v166 = v63;
    _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_INFO, "CLOutdoorEstimator_HMM Estimate,startTime,%f,mctTimestampSec,%{private}f,type, %{private}ld,confidence,%{private}ld,estimatedStateProbabilityOutdoor,%{private}f,isAstronomicalDaytime,%{private}d,daylightConfidence,%{private}ld", buf, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ACF814(buf);
    v69 = *a2;
    v70 = *(a2 + 8);
    v71 = *(a2 + 16);
    v72 = *(a2 + 24);
    v73 = *(a2 + 48);
    v74 = *(a2 + 32);
    v75 = *(a2 + 40);
    *v155 = 134219521;
    *&v155[4] = v69;
    v156 = 2049;
    *v157 = v70;
    *&v157[8] = 2049;
    *v158 = v71;
    *&v158[8] = 2049;
    v159 = v72;
    LOWORD(v160) = 2049;
    *(&v160 + 2) = v74;
    WORD5(v160) = 1025;
    HIDWORD(v160) = v73;
    v161 = 2049;
    v162 = v75;
    LODWORD(v97) = 68;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 1, "CLOutdoorEstimator_HMM Estimate,startTime,%f,mctTimestampSec,%{private}f,type, %{private}ld,confidence,%{private}ld,estimatedStateProbabilityOutdoor,%{private}f,isAstronomicalDaytime,%{private}d,daylightConfidence,%{private}ld", v155, v97);
    v77 = v76;
    sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v76);
    if (v77 != buf)
    {
      free(v77);
    }
  }

  v64 = *(a1 + 3804);
  if (v64 != 3)
  {
    *(a2 + 16) = v64;
  }

  *(a1 + 3200) = a3;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v148)
  {
    *(&v148 + 1) = v148;
    operator delete(v148);
  }

  if (v144)
  {
    *(&v144 + 1) = v144;
    operator delete(v144);
  }

  *buf = v98;
  sub_1000B96B4(buf);
  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }
}

void sub_1000BB038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__pa, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (__pa)
  {
    operator delete(__pa);
  }

  sub_100A3AFA0(va);
  v19 = STACK[0x408];
  if (STACK[0x408])
  {
    STACK[0x410] = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000BB0FC(uint64_t a1, int **a2, char *__dst, double a4)
{
  WORD4(v27[9]) = 0;
  v27[0] = xmmword_101C76220;
  memset(&v27[1], 0, 135);
  *&v27[10] = 0xBFF0000000000000;
  DWORD2(v27[10]) = 0;
  *(&v27[16] + 8) = 0u;
  *(&v27[17] + 8) = 0u;
  *(&v27[18] + 8) = 0u;
  *(&v27[19] + 8) = 0u;
  *(&v27[20] + 8) = 0u;
  *(&v27[21] + 8) = 0u;
  *(&v27[22] + 8) = 0u;
  *(&v27[23] + 8) = 0u;
  *(&v27[24] + 8) = 0u;
  *(&v27[25] + 8) = 0u;
  *(&v27[26] + 8) = 0u;
  *(&v27[27] + 8) = 0u;
  *(&v27[28] + 8) = 0u;
  *(&v27[29] + 8) = 0u;
  *(&v27[30] + 8) = 0u;
  *(&v27[11] + 8) = 0u;
  *(&v27[12] + 8) = 0u;
  *(&v27[13] + 8) = 0u;
  *(&v27[14] + 8) = 0u;
  *(&v27[15] + 8) = 0u;
  *&v27[11] = 0xBFF0000000000000;
  *(&v27[31] + 1) = 0xBFF0000000000000;
  *&v27[32] = 0;
  *(&v27[32] + 1) = 0xBFF0000000000000;
  DWORD2(v27[43]) = 0;
  memset(&v27[33], 0, 84);
  *(&v27[38] + 8) = 0u;
  *(&v27[39] + 8) = 0u;
  *(&v27[40] + 8) = 0u;
  *(&v27[41] + 8) = 0u;
  *(&v27[42] + 1) = 0u;
  v27[44] = xmmword_101C76220;
  v27[45] = 0u;
  *&v27[46] = 0x80000000800000;
  *(&v27[46] + 8) = 0u;
  *(&v27[47] + 8) = xmmword_101C78410;
  *(&v27[48] + 1) = 0x80000000800000;
  v28 = 0xBFF0000000000000;
  *v30 = 0xBFF0000000000000;
  memset(&v30[8], 0, 24);
  *v31 = 0xBFF0000000000000;
  *&v31[8] = 0u;
  v32 = 0u;
  v33 = 0;
  v34 = 0xBFF0000000000000;
  v35 = 0x600000006;
  v37 = 0;
  v36 = 0u;
  *&v38 = 0xBFF0000000000000;
  *(&v38 + 1) = 0xBFF0000000000000;
  memcpy(__dst, v27, 0x310uLL);
  *(__dst + 98) = 0xBFF0000000000000;
  sub_1000BB5F0(__dst + 99);
  *(__dst + 101) = 0;
  *(__dst + 792) = 0u;
  memset(v29, 0, sizeof(v29));
  v8 = *&v30[16];
  *(__dst + 51) = *v30;
  *(__dst + 52) = v8;
  *(__dst + 53) = *v31;
  *(__dst + 108) = *&v31[16];
  v9 = *(__dst + 109);
  if (v9)
  {
    *(__dst + 110) = v9;
    operator delete(v9);
  }

  *(__dst + 109) = 0;
  *(__dst + 110) = 0;
  *(__dst + 111) = 0;
  v33 = 0;
  v32 = 0uLL;
  *(__dst + 112) = 0xBFF0000000000000;
  *(__dst + 113) = v35;
  v10 = *(__dst + 114);
  if (v10)
  {
    *(__dst + 115) = v10;
    operator delete(v10);
  }

  *(__dst + 114) = 0;
  *(__dst + 115) = 0;
  *(__dst + 116) = 0;
  v37 = 0;
  v36 = 0uLL;
  *(__dst + 936) = v38;
  v39 = v29;
  sub_1000B96B4(&v39);
  v11 = *a2;
  v12 = a2[1];
  v13 = 1;
  while (v11 != v12)
  {
    v14 = *v11;
    if (*v11 > 4)
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          v21 = (*(**(a1 + 24) + 136))(*(a1 + 24));
          v16 = sub_1000B6E08(v21, (__dst + 712), a4);
        }

        else
        {
          if (v14 != 6)
          {
            goto LABEL_31;
          }

          v19 = (*(**(a1 + 24) + 144))(*(a1 + 24));
          v16 = sub_1000BB754(v19, __dst + 98, a4);
        }
      }

      else
      {
        switch(v14)
        {
          case 7:
            v23 = (*(**(a1 + 24) + 152))(*(a1 + 24));
            v16 = sub_1000BB880(v23, __dst + 51, a4);
            break;
          case 8:
            v25 = (*(**(a1 + 24) + 160))(*(a1 + 24));
            v16 = sub_1000BB958(v25, (__dst + 848), a4);
            break;
          case 9:
            v17 = (*(**(a1 + 24) + 168))(*(a1 + 24));
            v16 = sub_1000BBAA0(v17, (__dst + 896), a4);
            break;
          default:
            goto LABEL_31;
        }
      }
    }

    else if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_31;
        }

        v18 = (*(**(a1 + 24) + 104))(*(a1 + 24));
        v16 = sub_1000BC56C(v18, __dst + 10, a4);
      }

      else
      {
        v20 = (*(**(a1 + 24) + 96))(*(a1 + 24));
        v16 = sub_1000BB630(v20, __dst, a4);
      }
    }

    else
    {
      switch(v14)
      {
        case 2:
          v22 = (*(**(a1 + 24) + 112))(*(a1 + 24));
          v16 = sub_1000BC63C(v22, __dst + 176, a4);
          break;
        case 3:
          v24 = (*(**(a1 + 24) + 128))(*(a1 + 24));
          v16 = sub_1000BC56C(v24, __dst + 504, a4);
          break;
        case 4:
          v15 = (*(**(a1 + 24) + 120))(*(a1 + 24));
          v16 = sub_1000B6BF0(v15, __dst + 520, a4);
          break;
        default:
          goto LABEL_31;
      }
    }

    v13 &= v16;
LABEL_31:
    ++v11;
  }

  return v13 & 1;
}

void sub_1000BB5F0(uint64_t *a1)
{
  if (*a1)
  {
    sub_10014E54C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1000BB630(uint64_t a1, _OWORD *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = ((v4 + v3) * 0x47AE147AE147AE15uLL) >> 64;
  v7 = (v6 + ((v5 - v6) >> 1)) >> 4;
  v8 = *(a1 + 24);
  v9 = (v8 + 8 * v7);
  if (*(a1 + 32) == v8)
  {
    v11 = 0;
    i = 0;
  }

  else
  {
    v10 = *(v8 + 8 * v7);
    v11 = v10 + 160 * (v5 - 25 * v7);
    for (i = *(v8 + 8 * (v4 / 0x19)) + 160 * (v4 % 0x19); i != v11; v11 -= 160)
    {
      v13 = v11;
      if (v11 == v10)
      {
        v13 = *(v9 - 1) + 4000;
      }

      v14 = *(v13 - 152);
      if (v14 <= a3 && v14 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v11 == v10)
      {
        v15 = *--v9;
        v10 = v15;
        v11 = v15 + 4000;
      }
    }
  }

  if (i == v11)
  {
    return 0;
  }

  if (v11 == *v9)
  {
    v11 = *(v9 - 1) + 4000;
  }

  v17 = *(v11 - 144);
  *a2 = *(v11 - 160);
  a2[1] = v17;
  v18 = *(v11 - 128);
  v19 = *(v11 - 112);
  v20 = *(v11 - 80);
  a2[4] = *(v11 - 96);
  a2[5] = v20;
  a2[2] = v18;
  a2[3] = v19;
  v21 = *(v11 - 64);
  v22 = *(v11 - 48);
  v23 = *(v11 - 16);
  a2[8] = *(v11 - 32);
  a2[9] = v23;
  a2[6] = v21;
  a2[7] = v22;
  return 1;
}

uint64_t sub_1000BB754(uint64_t a1, void *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = *(a1 + 24);
  v7 = (v6 + 8 * ((v4 + v3) >> 7));
  if (*(a1 + 32) == v6)
  {
    v9 = 0;
    i = 0;
  }

  else
  {
    v8 = *v7;
    v9 = *v7 + 32 * (v5 & 0x7F);
    for (i = *(v6 + ((*(a1 + 48) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 48) & 0x7FLL); i != v9; v9 -= 32)
    {
      v11 = v9;
      if (v9 == v8)
      {
        v11 = *(v7 - 1) + 4096;
      }

      v12 = *(v11 - 32);
      if (v12 <= a3 && v12 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v9 == v8)
      {
        v13 = *--v7;
        v8 = v13;
        v9 = v13 + 4096;
      }
    }
  }

  if (i == v9)
  {
    return 0;
  }

  if (v9 == *v7)
  {
    v9 = *(v7 - 1) + 4096;
  }

  *a2 = *(v9 - 32);
  if ((v9 - 32) != a2)
  {
    sub_100288978(a2 + 1, *(v9 - 24), *(v9 - 16), 0x2E8BA2E8BA2E8BA3 * ((*(v9 - 16) - *(v9 - 24)) >> 3));
  }

  return 1;
}

uint64_t sub_1000BB880(uint64_t a1, _OWORD *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = *(a1 + 24);
  v7 = (v6 + 8 * ((v4 + v3) >> 7));
  if (*(a1 + 32) == v6)
  {
    v9 = 0;
    i = 0;
  }

  else
  {
    v8 = *v7;
    v9 = *v7 + 32 * (v5 & 0x7F);
    for (i = *(v6 + ((*(a1 + 48) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 48) & 0x7FLL); i != v9; v9 -= 32)
    {
      v11 = v9;
      if (v9 == v8)
      {
        v11 = *(v7 - 1) + 4096;
      }

      v12 = *(v11 - 32);
      if (v12 <= a3 && v12 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v9 == v8)
      {
        v13 = *--v7;
        v8 = v13;
        v9 = v13 + 4096;
      }
    }
  }

  if (i == v9)
  {
    return 0;
  }

  if (v9 == *v7)
  {
    v9 = *(v7 - 1) + 4096;
  }

  v15 = *(v9 - 16);
  *a2 = *(v9 - 32);
  a2[1] = v15;
  return 1;
}

uint64_t sub_1000BB958(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = (v4 + v3) / 0x55;
  v7 = *(a1 + 24);
  v8 = (v7 + 8 * v6);
  if (*(a1 + 32) == v7)
  {
    v10 = 0;
    i = 0;
  }

  else
  {
    v9 = *(v7 + 8 * v6);
    v10 = v9 + 48 * (v5 - 85 * v6);
    for (i = *(v7 + 8 * (v4 / 0x55)) + 48 * (v4 % 0x55); i != v10; v10 -= 48)
    {
      v12 = v10;
      if (v10 == v9)
      {
        v12 = *(v8 - 1) + 4080;
      }

      v13 = *(v12 - 48);
      if (v13 <= a3 && v13 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v10 == v9)
      {
        v14 = *--v8;
        v9 = v14;
        v10 = v14 + 4080;
      }
    }
  }

  if (i == v10)
  {
    return 0;
  }

  if (v10 == *v8)
  {
    v10 = *(v8 - 1) + 4080;
  }

  v16 = *(v10 - 48);
  *(a2 + 16) = *(v10 - 32);
  *a2 = v16;
  if (v10 - 48 != a2)
  {
    sub_10028F1A8((a2 + 24), *(v10 - 24), *(v10 - 16), 0x6DB6DB6DB6DB6DB7 * ((*(v10 - 16) - *(v10 - 24)) >> 2));
  }

  return 1;
}

uint64_t sub_1000BBAA0(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  v6 = v5 + v3;
  v7 = (v5 + v3) / 0x49;
  v8 = *(a1 + 24);
  v9 = (v8 + 8 * v7);
  if (*(a1 + 32) == v8)
  {
    v11 = 0;
    i = 0;
  }

  else
  {
    v10 = *(v8 + 8 * v7);
    v11 = v10 + 56 * (v6 - 73 * v7);
    for (i = *(v8 + 8 * (v5 / 0x49)) + 56 * (v5 % 0x49); i != v11; v11 -= 56)
    {
      v13 = v11;
      if (v11 == v10)
      {
        v13 = *(v9 - 1) + 4088;
      }

      v14 = *(v13 - 56);
      if (v14 <= a3 && v14 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v11 == v10)
      {
        v15 = *--v9;
        v10 = v15;
        v11 = v15 + 4088;
      }
    }
  }

  if (i == v11)
  {
    return 0;
  }

  if (v11 == *v9)
  {
    v11 = *(v9 - 1) + 4088;
  }

  *a2 = *(v11 - 56);
  *(a2 + 8) = *(v11 - 48);
  if (v11 - 56 != a2)
  {
    sub_100306558((a2 + 16), *(v11 - 40), *(v11 - 32), 0xCCCCCCCCCCCCCCCDLL * ((*(v11 - 32) - *(v11 - 40)) >> 3));
  }

  *(a2 + 40) = *(v11 - 16);
  return 1;
}

void sub_1000BBBF8(void *a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = a3.n128_f64[0];
  v7 = a1[6];
  v8 = a1[3];
  v9 = a1[4];
  v10 = (v8 + 8 * (v7 >> 8));
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*v10 + 16 * v7);
  }

  v12 = a4.n128_f64[0] + 1.0e-13;
  while (1)
  {
    if (v9 == v8)
    {
      v14 = 0;
    }

    else
    {
      v13 = a1[7] + a1[6];
      v14 = *(v8 + ((v13 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v13;
    }

    if (v11 == v14)
    {
      break;
    }

    if (*v11 <= v12 && *v11 + 1.0e-13 > v5)
    {
      v17 = *(a2 + 8);
      v16 = *(a2 + 16);
      if (v17 >= v16)
      {
        v19 = (v17 - *a2) >> 4;
        v20 = v19 + 1;
        if ((v19 + 1) >> 60)
        {
          sub_10028C64C();
        }

        v21 = v16 - *a2;
        if (v21 >> 3 > v20)
        {
          v20 = v21 >> 3;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          sub_1000D758C(a2, v22);
        }

        v23 = (16 * v19);
        *v23 = *v11;
        v18 = 16 * v19 + 16;
        v24 = *(a2 + 8) - *a2;
        v25 = 16 * v19 - v24;
        memcpy(v23 - v24, *a2, v24);
        v26 = *a2;
        *a2 = v25;
        *(a2 + 8) = v18;
        *(a2 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = *v11;
        v18 = (v17 + 1);
      }

      *(a2 + 8) = v18;
    }

    if ((++v11 - *v10) == 4096)
    {
      v27 = v10[1];
      ++v10;
      v11 = v27;
    }

    v8 = a1[3];
    v9 = a1[4];
  }
}

BOOL sub_1000BBD94(uint64_t a1, double a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_10030C654();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator,predict()", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BB40D8();
  }

  if ((*(a1 + 240) & 1) == 0)
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,predict(),HMM Not initialized", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB41BC();
    }

    return 0;
  }

  if (vabdd_f64(a2, *(a1 + 248)) < 2.22044605e-16)
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator,predict(),Estimator time equal to current time", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB44E0();
    }

    return 0;
  }

  v31 = a2;
  v30 = *(a1 + 144);
  if (qword_1025D4760 != -1)
  {
    sub_101BB14F4();
  }

  v9 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 144);
    v11 = *(a1 + 152);
    v12 = *(a1 + 248);
    *buf = 134284033;
    v39 = v10;
    v40 = 2049;
    v41 = v11;
    v42 = 2048;
    v43 = v12;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_TransitionProbability,transitionProbabilityIndoorGivenIndoor,%{private}f,transitionProbabilityOutdoorGivenOutdoor,%{private}f,EstimatorTimeCfaSec,%f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v25 = *(a1 + 144);
    v26 = *(a1 + 152);
    v27 = *(a1 + 248);
    v32 = 134284033;
    v33 = v25;
    v34 = 2049;
    v35 = v26;
    v36 = 2048;
    v37 = v27;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_TransitionProbability,transitionProbabilityIndoorGivenIndoor,%{private}f,transitionProbabilityOutdoorGivenOutdoor,%{private}f,EstimatorTimeCfaSec,%f", &v32, 32, v30, *&v31);
    v29 = v28;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLOutdoorEstimator::predict(const CFAbsoluteTime)", "%s\n", v28);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  v13 = sub_1000AB1E0(a1, sub_1000AB2E8, &v30);
  v7 = v13 == 0;
  if (v13)
  {
    v14 = v13;
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v15 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v39) = v14;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,predict(),Failed,%d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB4298(v14);
    }

    *(a1 + 144) = vdupq_n_s64(0x3FEE666666666666uLL);
  }

  else
  {
    *(a1 + 248) = a2;
    *(a1 + 144) = vdupq_n_s64(0x3FEE666666666666uLL);
    sub_1000AC4D8(a1);
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v16 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 184);
      v18 = *(a1 + 192);
      v19 = *(a1 + 200);
      v20 = *(a1 + 208);
      v21 = *(a1 + 232);
      v22 = *(a1 + 216);
      v23 = *(a1 + 224);
      v24 = *(a1 + 248);
      *buf = 134219777;
      v39 = v17;
      v40 = 2048;
      v41 = v18;
      v42 = 2049;
      v43 = v19;
      v44 = 2049;
      v45 = v20;
      v46 = 2049;
      v47 = v22;
      v48 = 1025;
      v49 = v21;
      v50 = 2049;
      v51 = v23;
      v52 = 2048;
      v53 = v24;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_predict,startTime,%f,mctTimestampSec,%f,type,%{private}ld,confidence,%{private}ld,estimatedStateProbabilityOutdoor,%{private}f,isAstronomicalDaytime,%{private}d,daylightConfidence,%{private}ld,EstimatorTimeCfaSec,%f", buf, 0x4Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB4380(a1, (a1 + 248));
    }
  }

  return v7;
}

void sub_1000BC28C(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 64;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100A3C74C(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA6C8();
        }

        return;
      }

      v10 = 128;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 >> 7));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) >> 7));
    }

    else
    {
      v15 = (*v14 + 32 * (v11 & 0x7F));
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 7));
      v19 = (*v18 + 32 * (v17 & 0x7F));
    }

    v23 = sub_1000B9814(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 >> 7));
    v27 = *(result + 32) == v25 ? 0 : *v26 + 32 * (v24 & 0x7F);
    sub_1000B98C0((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

uint64_t sub_1000BC56C(uint64_t a1, _OWORD *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = *(a1 + 24);
  v7 = (v6 + 8 * ((v4 + v3) >> 8));
  if (*(a1 + 32) == v6)
  {
    v9 = 0;
    i = 0;
  }

  else
  {
    v8 = *v7;
    v9 = *v7 + 16 * v5;
    for (i = *(v6 + ((v4 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v4; i != v9; v9 -= 16)
    {
      v11 = v9;
      if (v9 == v8)
      {
        v11 = *(v7 - 1) + 4096;
      }

      v12 = *(v11 - 16);
      if (v12 <= a3 && v12 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v9 == v8)
      {
        v13 = *--v7;
        v8 = v13;
        v9 = v13 + 4096;
      }
    }
  }

  if (i == v9)
  {
    return 0;
  }

  if (v9 == *v7)
  {
    v9 = *(v7 - 1) + 4096;
  }

  *a2 = *(v9 - 16);
  return 1;
}

uint64_t sub_1000BC63C(uint64_t a1, void *__dst, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48) + v3;
  v5 = *(a1 + 24);
  v6 = (v5 + 8 * (v4 >> 4));
  if (*(a1 + 32) == v5)
  {
    v8 = 0;
    i = 0;
  }

  else
  {
    v7 = *v6;
    v8 = *v6 + 328 * (v4 & 0xF);
    for (i = *(v5 + ((*(a1 + 48) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 328 * (*(a1 + 48) & 0xFLL); i != v8; v8 -= 328)
    {
      v10 = v8;
      if (v8 == v7)
      {
        v10 = *(v6 - 1) + 5248;
      }

      v11 = *(v10 - 328);
      if (v11 <= a3 && v11 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v8 == v7)
      {
        v12 = *--v6;
        v7 = v12;
        v8 = v12 + 5248;
      }
    }
  }

  if (i == v8)
  {
    return 0;
  }

  if (v8 == *v6)
  {
    v8 = *(v6 - 1) + 5248;
  }

  memcpy(__dst, (v8 - 328), 0x148uLL);
  return 1;
}

void sub_1000BC774(void *a1, double a2, double a3, double a4)
{
  sub_1000B60F4(a1, a4);
  v7 = a1[9];
  v8 = a1[10];
  if (v7 == v8)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *(v8 - 1);
  }

  v10 = v9 + a3;
  v11 = a1[11];
  if (v8 >= v11)
  {
    v13 = v8 - v7;
    v14 = (v8 - v7) >> 4;
    v15 = v14 + 1;
    if ((v14 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v16 = v11 - v7;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_1003E5FE8((a1 + 9), v15);
    }

    v17 = (16 * v14);
    *v17 = a2;
    v17[1] = v10;
    v12 = 16 * v14 + 16;
    memcpy(0, v7, v13);
    v18 = a1[9];
    a1[9] = 0;
    a1[10] = v12;
    a1[11] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v8 = a2;
    v8[1] = v10;
    v12 = (v8 + 2);
  }

  a1[10] = v12;
}

float sub_1000BC880(uint64_t a1, double a2)
{
  v3 = sub_1000B4ECC(a1, a2);
  v4 = *&v3;
  v6 = v5;
  v7 = HIDWORD(v3);
  v25 = 0xBA4F9E383FC07C8DLL;
  v24 = HIDWORD(v3);
  sub_1000B6D1C(&v24, &v58, &v25, 2, 1);
  v8 = v59;
  v9 = *(a1 + 56);
  v11 = v9 > 15.0 && v9 != -9999.0;
  if (v11 && v6 > 6)
  {
    v12 = v59;
  }

  else
  {
    v12 = -1.0;
  }

  if (qword_1025D44D0 != -1)
  {
    sub_1019220AC();
  }

  v13 = v4;
  v14 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    v15 = a1;
    if (*(a1 + 23) < 0)
    {
      v15 = *a1;
    }

    v16 = *(a1 + 56);
    v17 = *(a1 + 48) != -9999.0 && *(a1 + 52) != -9999.0;
    *buf = 136316930;
    v43 = v15;
    v44 = 2050;
    v45 = v12;
    v46 = 2050;
    v47 = v8;
    v48 = 2050;
    v49 = *&v7;
    v50 = 2050;
    v51 = v13;
    v52 = 1026;
    v53 = v6;
    v54 = 2050;
    v55 = v16;
    v56 = 1026;
    v57 = v17;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "IndoorOutdoor,ALSResult,context,%s,outputProb,%{public}.2f,rawProb,%{public}.2f,meanLux,%{public}.2f,stdLux,%{public}.2f,n,%{public}d,elevation,%{public}.2f,hasLatLon,%{public}d", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_1019220AC();
    }

    v19 = a1;
    if (*(a1 + 23) < 0)
    {
      v19 = *a1;
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 48) != -9999.0 && *(a1 + 52) != -9999.0;
    v26 = 136316930;
    v27 = v19;
    v28 = 2050;
    v29 = v12;
    v30 = 2050;
    v31 = v8;
    v32 = 2050;
    v33 = *&v7;
    v34 = 2050;
    v35 = v13;
    v36 = 1026;
    v37 = v6;
    v38 = 2050;
    v39 = v20;
    v40 = 1026;
    v41 = v21;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 1, "IndoorOutdoor,ALSResult,context,%s,outputProb,%{public}.2f,rawProb,%{public}.2f,meanLux,%{public}.2f,stdLux,%{public}.2f,n,%{public}d,elevation,%{public}.2f,hasLatLon,%{public}d", &v26, 74);
    v23 = v22;
    sub_100152C7C("Generic", 1, 0, 2, "float CLALSIndoorOutdoorDetector::computeOutdoorProbability(CFAbsoluteTime)", "%s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  return v12;
}

float sub_1000BCBB0(uint64_t a1, double a2)
{
  sub_1000B60F4(a1, a2);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = 0.0;
  v6 = 0.0;
  if (v3 != v4)
  {
    v6 = vabdd_f64(*(v4 - 1), *v3);
  }

  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  if (v7 != v8)
  {
    v5 = *(v8 - 8) - *(v7 + 8);
  }

  v10 = v6 <= 120.0 || v5 < 100.0 || 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 32) - *(a1 + 24)) >> 4) < 2;
  sub_1000B7ACC(a1);
  v11 = sub_1000B6F18(a1);
  v12 = sub_1000B7E9C(a1);
  if (qword_1025D44D0 != -1)
  {
    sub_101B77C74();
  }

  v13 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    v14 = a1;
    if (*(a1 + 23) < 0)
    {
      v14 = *a1;
    }

    v15 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 32) - *(a1 + 24)) >> 4);
    *buf = 136316674;
    v36 = v14;
    v37 = 2050;
    v38 = v6;
    v39 = 2050;
    v40 = v5;
    v41 = 2050;
    v42 = v15;
    v43 = 1026;
    v44 = v10;
    v45 = 2050;
    v46 = v11;
    v47 = 2050;
    v48 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "IndoorOutdoor,WifiModel,context,%s,scanRange,%{public}f,distanceTraveled,%{public}f,numAps,%{public}zu,invalidResult,%{public}d,stationaryProbability,%{public}f,wifiRssiModelIndoorProbability,%{public}f", buf, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101B77C88();
    }

    v17 = a1;
    if (*(a1 + 23) < 0)
    {
      v17 = *a1;
    }

    v18 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 32) - *(a1 + 24)) >> 4);
    v21 = 136316674;
    v22 = v17;
    v23 = 2050;
    v24 = v6;
    v25 = 2050;
    v26 = v5;
    v27 = 2050;
    v28 = v18;
    v29 = 1026;
    v30 = v10;
    v31 = 2050;
    v32 = v11;
    v33 = 2050;
    v34 = v12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 1, "IndoorOutdoor,WifiModel,context,%s,scanRange,%{public}f,distanceTraveled,%{public}f,numAps,%{public}zu,invalidResult,%{public}d,stationaryProbability,%{public}f,wifiRssiModelIndoorProbability,%{public}f", &v21, 68);
    v20 = v19;
    sub_100152C7C("Generic", 1, 0, 2, "float CLIndoorOutdoorWifiModel::computeProbability(CFAbsoluteTime)", "%s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  if (v10)
  {
    v11 = -1.0;
    if (v5 < 100.0)
    {
      return v12;
    }
  }

  return v11;
}

void sub_1000BCED8(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 1912) == -1.79769313e308 && *(a1 + 1880) >= 9u)
  {
    *(a1 + 1912) = a3;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 312);
  v76 = 0;
  v77 = 0.0;
  v78 = 0.0;
  v79 = 2.84809454e-306;
  v80 = 0;
  v81 = 0.0;
  v82 = xmmword_101C78410;
  v83 = 0x80000000800000;
  v8 = (*(**(a1 + 40) + 56))(*(a1 + 40));
  v9 = sub_1000B6E08(v8, &v76, v6 + -15.0);
  if (v9)
  {
    v10 = *(a1 + 794);
    v11 = *(a1 + 796);
    v12 = *(a1 + 792);
    if (v12 + v10 >= v11)
    {
      v13 = *(a1 + 796);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 8 * (v12 + v10 - v13) + 800) = *(&v82 + 2);
    if (v11 <= v10)
    {
      if (v12 + 1 < v11)
      {
        LOWORD(v11) = 0;
      }

      *(a1 + 792) = v12 + 1 - v11;
    }

    else
    {
      *(a1 + 794) = v10 + 1;
    }

    v18 = *(&v77 + 1);
    if (*(a1 + 1920) == -1.79769313e308)
    {
      *(a1 + 1920) = a3;
    }
  }

  else
  {
    v14 = *(a1 + 794);
    v15 = *(a1 + 796);
    v16 = *(a1 + 792);
    if (v16 + v14 >= v15)
    {
      v17 = *(a1 + 796);
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 8 * (v16 + v14 - v17) + 800) = 0;
    if (v15 <= v14)
    {
      if (v16 + 1 < v15)
      {
        LOWORD(v15) = 0;
      }

      *(a1 + 792) = v16 + 1 - v15;
    }

    else
    {
      *(a1 + 794) = v14 + 1;
    }

    v18 = 0.0;
  }

  v19 = sub_1000B6460(a1, v6);
  v21 = v20;
  sub_1000B7338(a1, *(a1 + 80) - *(a1 + 1884), v7, v18, v19, v20, *(a1 + 1888), *(a1 + 1896), v6, a3);
  *(a1 + 1884) = *(a1 + 80);
  *(a1 + 1888) = v18;
  *(a1 + 1896) = v21;
  v22 = ((*(**(a1 + 40) + 32))(*(a1 + 40)) + 96);
  if (*v22 != -1.0)
  {
    memcpy((a1 + 48), v22, 0x148uLL);
  }

  if (qword_1025D44D0 != -1)
  {
    sub_101AE36F4();
  }

  v23 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
  {
    v24 = a1;
    if (*(a1 + 23) < 0)
    {
      v24 = *a1;
    }

    v25 = *(a1 + 1880);
    v26 = *(a1 + 48);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = *(a1 + 96);
    *buf = 136316418;
    *&buf[4] = v24;
    *&buf[12] = 1024;
    *&buf[14] = v25;
    *&buf[18] = 2048;
    *&buf[20] = v26;
    *&buf[28] = 1024;
    *&buf[30] = v27;
    *&buf[34] = 2048;
    *&buf[36] = v28;
    *v105 = 2048;
    *&v105[2] = v29;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s,[%d][step],startTime,%f,stepCount,%u,stepDistance,%f,rawStepDistance,%f,", buf, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v53 = a1;
    if (*(a1 + 23) < 0)
    {
      v53 = *a1;
    }

    v54 = *(a1 + 1880);
    v55 = *(a1 + 48);
    v56 = *(a1 + 80);
    v57 = *(a1 + 88);
    v58 = *(a1 + 96);
    v84 = 136316418;
    v85 = v53;
    v86 = 1024;
    *v87 = v54;
    *&v87[4] = 2048;
    *&v87[6] = v55;
    *&v87[14] = 1024;
    *&v87[16] = v56;
    *&v87[20] = 2048;
    *&v87[22] = v57;
    *v88 = 2048;
    *&v88[2] = v58;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 2, "IndoorOutdoor,context,%s,[%d][step],startTime,%f,stepCount,%u,stepDistance,%f,rawStepDistance,%f,", &v84, 54, *&v73, DWORD2(v73), *&v74, *(&v74 + 1));
    v60 = v59;
    sub_100152C7C("Generic", 1, 0, 2, "CLIndoorOutdoorGPSModel::GpsModelResults CLIndoorOutdoorGPSModel::computeProbabilities(CFAbsoluteTime)", "%s\n", v59);
    if (v60 != buf)
    {
      free(v60);
    }
  }

  if (v9)
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v30 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      v31 = a1;
      if (*(a1 + 23) < 0)
      {
        v31 = *a1;
      }

      v32 = *(a1 + 1880);
      *buf = 136315906;
      *&buf[4] = v31;
      *&buf[12] = 1024;
      *&buf[14] = v32;
      *&buf[18] = 2048;
      *&buf[20] = v76;
      *&buf[28] = 2048;
      *&buf[30] = *(&v77 + 1);
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s[%d][turn-recv],startTime,%f,gyroHeadingRad,%f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D44D0 != -1)
      {
        sub_101AE36F4();
      }

      v33 = a1;
      if (*(a1 + 23) < 0)
      {
        v33 = *a1;
      }

      v34 = *(a1 + 1880);
      v84 = 136315906;
      v85 = v33;
      v86 = 1024;
      *v87 = v34;
      *&v87[4] = 2048;
      *&v87[6] = v76;
      *&v87[14] = 2048;
      *&v87[16] = *(&v77 + 1);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 2, "IndoorOutdoor,context,%s[%d][turn-recv],startTime,%f,gyroHeadingRad,%f", &v84, 38, *&v73, *(&v73 + 1));
      v36 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "CLIndoorOutdoorGPSModel::GpsModelResults CLIndoorOutdoorGPSModel::computeProbabilities(CFAbsoluteTime)", "%s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }
  }

  else
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v37 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      v38 = a1;
      if (*(a1 + 23) < 0)
      {
        v38 = *a1;
      }

      v39 = *(a1 + 1880);
      *buf = 136315650;
      *&buf[4] = v38;
      *&buf[12] = 1024;
      *&buf[14] = v39;
      *&buf[18] = 2048;
      *&buf[20] = v6 + -15.0;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s,[%d][turn-none],requestedSampleTime,%f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AE371C(a1, v6 + -15.0);
    }
  }

  *buf = v19;
  *&buf[8] = v7;
  sub_1000A3054((a1 + 1048), buf);
  v40 = sub_1000BE7E4(a1);
  v73 = 0u;
  v74 = 0u;
  sub_1000BE658(a1, &v73);
  v41 = v73;
  *a2 = v40;
  *(a2 + 8) = v41;
  v42 = *(a1 + 1880);
  *(a2 + 16) = *(a1 + 1960);
  *(a2 + 20) = v42;
  if (qword_1025D44D0 != -1)
  {
    sub_101AE36F4();
  }

  v43 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    v44 = a1;
    if (*(a1 + 23) < 0)
    {
      v44 = *a1;
    }

    v45 = *&v19;
    v46 = *(a1 + 1952);
    if (v19 >= 9999.0)
    {
      v45 = 0x40C3878000000000;
    }

    v47 = *(a1 + 376) + *(a1 + 378) - 1;
    v48 = *(a1 + 380);
    if (v47 < v48)
    {
      v48 = 0;
    }

    v49 = a1 + 16 * (v47 - v48);
    v51 = *(v49 + 384);
    v50 = *(v49 + 392);
    v52 = *(a1 + 1960);
    *buf = 136318210;
    *&buf[4] = v44;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    *&buf[24] = v45;
    *&buf[32] = 2048;
    *&buf[34] = v46;
    *&buf[42] = 2048;
    *v105 = v51;
    *&v105[8] = 2048;
    v106 = v50;
    v107 = 2048;
    v108 = v6;
    v109 = 1024;
    v110 = v52;
    v111 = 2048;
    v112 = v41;
    v113 = 2048;
    v114 = *(&v73 + 1);
    v115 = 2048;
    v116 = *(&v74 + 1);
    v117 = 1024;
    v118 = v74;
    v119 = 2048;
    v120 = v40;
    _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_INFO, "IndoorOutdoor,GPSResult,context,%s,stepDeltaDistance,%f,gpsDeltaDistance,%f,fResidScalar,%f,fIMUDistanceX,%f,fIMUDistanceY,%f,stepTimestamp,%f,fGpsState,%d,gpsDiscordanceProbability,%f,gpsDiscordanceRawProbability,%f,gpsDiscordance,%f,numValidDiscordanceSamples,%d,llrBufferSumProbability,%f", buf, 0x7Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v61 = a1;
    if (*(a1 + 23) < 0)
    {
      v61 = *a1;
    }

    v62 = *&v19;
    v63 = *(a1 + 1952);
    if (v19 >= 9999.0)
    {
      v62 = 0x40C3878000000000;
    }

    v64 = *(a1 + 376) + *(a1 + 378) - 1;
    v65 = *(a1 + 380);
    if (v64 < v65)
    {
      v65 = 0;
    }

    v66 = a1 + 16 * (v64 - v65);
    v68 = *(v66 + 384);
    v67 = *(v66 + 392);
    v69 = *(a1 + 1960);
    v84 = 136318210;
    v85 = v61;
    v86 = 2048;
    *v87 = v7;
    *&v87[8] = 2048;
    *&v87[10] = v62;
    *&v87[18] = 2048;
    *&v87[20] = v63;
    *&v87[28] = 2048;
    *v88 = v68;
    *&v88[8] = 2048;
    v89 = v67;
    v90 = 2048;
    v91 = v6;
    v92 = 1024;
    v93 = v69;
    v94 = 2048;
    v95 = v73;
    v96 = 2048;
    v97 = *(&v73 + 1);
    v98 = 2048;
    v99 = *(&v74 + 1);
    v100 = 1024;
    v101 = v74;
    v102 = 2048;
    v103 = v40;
    LODWORD(v72) = 124;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 1, "IndoorOutdoor,GPSResult,context,%s,stepDeltaDistance,%f,gpsDeltaDistance,%f,fResidScalar,%f,fIMUDistanceX,%f,fIMUDistanceY,%f,stepTimestamp,%f,fGpsState,%d,gpsDiscordanceProbability,%f,gpsDiscordanceRawProbability,%f,gpsDiscordance,%f,numValidDiscordanceSamples,%d,llrBufferSumProbability,%f", &v84, v72, *&v73, *(&v73 + 1), *&v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81);
    v71 = v70;
    sub_100152C7C("Generic", 1, 0, 2, "CLIndoorOutdoorGPSModel::GpsModelResults CLIndoorOutdoorGPSModel::computeProbabilities(CFAbsoluteTime)", "%s\n", v70);
    if (v71 != buf)
    {
      free(v71);
    }
  }
}

void sub_1000BD89C(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 128;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100A3B318(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA1B4();
        }

        return;
      }

      v10 = 256;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 >> 8));
    if (v13 == v12)
    {
      v16 = 0;
      v19 = 0;
      v15 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) >> 8));
    }

    else
    {
      v15 = (result + 56);
      v16 = (*v14 + 16 * v11);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 8));
      v19 = (*v18 + 16 * v17);
    }

    v23 = sub_1000B0920(v14, v16, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 >> 8));
    v27 = *(result + 32) == v25 ? 0 : *v26 + 16 * v24;
    sub_1000B3638((result + 16), v23, v22, v26, v27);
    if (!*v15)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000BDB68(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 28;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100A3B3B4(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA3AC();
        }

        return;
      }

      v10 = 56;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 / 0x38));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) / 0x38));
    }

    else
    {
      v15 = *(v12 + 8 * (v11 / 0x38)) + 72 * (v11 % 0x38);
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x38));
      v19 = *v18 + 72 * (v17 % 0x38);
    }

    v23 = sub_100A3B6BC(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 / 0x38));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 72 * (v24 % 0x38));
    sub_100A3B450((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

uint64_t sub_1000BDE7C(uint64_t result, double a2)
{
  v3 = *(result + 24);
  v2 = *(result + 32);
  if (v3 != v2)
  {
    while (vabdd_f64(a2, *v3) <= 150.0)
    {
      v3 += 2;
      if (v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 2;
      if (v3 + 2 != v2)
      {
        do
        {
          if (vabdd_f64(a2, *v4) <= 150.0)
          {
            *v3 = *v4;
            v3 += 2;
          }

          v4 += 2;
        }

        while (v4 != v2);
        v2 = *(result + 32);
      }
    }
  }

  if (v3 != v2)
  {
    *(result + 32) = v3;
  }

  return result;
}

void sub_1000BDF40(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 13;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 136) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100F99158(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC55C();
        }

        return;
      }

      v10 = 26;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 136) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 / 0x1A));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + ((((*(result + 56) + v11) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      v15 = *(v12 + 8 * (v11 / 0x1A)) + 152 * (v11 % 0x1A);
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x1A));
      v19 = *v18 + 152 * (v17 % 0x1A);
    }

    v23 = sub_100F9DE54(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 / 0x1A));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 152 * (v24 % 0x1A));
    sub_1000C8D14((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 136) = 0xBFF0000000000000;
    }
  }
}

void sub_1000BE25C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if (v7 == v6)
    {
      v8 = (a1 + 56);
      v7 = *(a1 + 24);
    }

    else
    {
      v8 = (a1 + 56);
      v9 = *(a1 + 48);
      v10 = &v6[v9 >> 7];
      v11 = *v10 + 32 * (v9 & 0x7F);
      v12 = *(v6 + (((*(a1 + 56) + v9) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 56) + v9) & 0x7F);
      if (v11 != v12)
      {
        do
        {
          *buf = v11 + 8;
          sub_1000B96B4(buf);
          v11 += 32;
          if (v11 - *v10 == 4096)
          {
            v13 = v10[1];
            ++v10;
            v11 = v13;
          }
        }

        while (v11 != v12);
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
      }
    }

    *v8 = 0;
    v23 = v7 - v6;
    if (v23 >= 3)
    {
      do
      {
        operator delete(*v6);
        v24 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v23 = (v24 - v6) >> 3;
      }

      while (v23 > 2);
    }

    if (v23 == 1)
    {
      v25 = 64;
    }

    else
    {
      if (v23 != 2)
      {
LABEL_26:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3BC18(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019CA4A8();
        }

        v26 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v27 = *v4;
          *buf = 134218240;
          *&buf[4] = v2;
          *&buf[12] = 2048;
          *&buf[14] = v27;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA4D0();
        }

        return;
      }

      v25 = 128;
    }

    *(a1 + 48) = v25;
    goto LABEL_26;
  }

  memset(buf, 0, 32);
  v14 = (a1 + 96);
  if (*(a1 + 96) != -1.0)
  {
    *buf = *(a1 + 96);
    if (buf != v14)
    {
      sub_100288978(&buf[8], *(a1 + 104), *(a1 + 112), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 112) - *(a1 + 104)) >> 3));
    }

    v15 = *(a1 + 48);
    v16 = *(a1 + 24);
    v17 = (v16 + 8 * (v15 >> 7));
    if (*(a1 + 32) == v16)
    {
      v18 = 0;
      v22 = 0;
      v19 = (a1 + 56);
      v21 = (v16 + 8 * ((*(a1 + 56) + v15) >> 7));
    }

    else
    {
      v18 = *v17 + 32 * (*(a1 + 48) & 0x7FLL);
      v19 = (a1 + 56);
      v20 = *(a1 + 56) + v15;
      v21 = (v16 + 8 * (v20 >> 7));
      v22 = *v21 + 32 * (v20 & 0x7F);
    }

    v29 = sub_100A3BF68(v17, v18, v21, v22, *&v2, a1);
    v30 = *(a1 + 48) + *(a1 + 56);
    v31 = *(a1 + 24);
    v32 = (v31 + 8 * (v30 >> 7));
    if (*(a1 + 32) == v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = *v32 + 32 * (v30 & 0x7F);
    }

    sub_100A3BCB4((a1 + 16), v29, v28, v32, v33);
    if (!*v19)
    {
      *v14 = 0xBFF0000000000000;
    }
  }

  v34 = &buf[8];
  sub_1000B96B4(&v34);
}

void sub_1000BE628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12)
{
  a10 = &a12;
  sub_1000B96B4(&a10);
  _Unwind_Resume(a1);
}

void sub_1000BE658(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_101D12D00;
  *(a2 + 16) = unk_101D12D10;
  if (*(result + 1050) >= 5u)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      v9 = sub_1000B7FEC((result + 1048), v5);
      v10 = *v9;
      v11 = v9[1];
      if (v11 > 0.0 && v10 != 1.79769313e308)
      {
        v13 = v6++ < 2;
        v14 = v8 + v11;
        v15 = v7 + v10;
        if (!v13)
        {
          ++v4;
          v8 = v14;
          v7 = v15;
        }
      }

      ++v5;
    }

    while (v5 < *(result + 1050));
    *(a2 + 16) = v4;
    if (v8 > 0.0)
    {
      v16 = fmin(vabdd_f64(v8, v7) / v8, 1.0);
      *(a2 + 24) = v16;
      v20 = xmmword_101D12CF0;
      v21 = v16;
      sub_10025BE14(&v21, &v22, &v20, 2, 1);
      v17 = v23;
      *(a2 + 8) = v23;
      if (v4 > 5)
      {
        if (v4 > 0x11)
        {
LABEL_16:
          *a2 = v17;
          return;
        }

        v18 = fmax(v17, 0.110000001);
        v19 = 0.889999976;
      }

      else
      {
        v18 = fmax(v17, 0.310000012);
        v19 = 0.689999988;
      }

      v17 = fmin(v18, v19);
      goto LABEL_16;
    }
  }
}

double sub_1000BE7E4(uint64_t a1)
{
  v1 = *(a1 + 1960);
  result = 0.0;
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0.49;
      }
    }

    else
    {
      return -1.0;
    }
  }

  else
  {
    if ((v1 - 2) < 3)
    {
      v3 = xmmword_101D12CE0;
      v4 = *(a1 + 1864);
      sub_10025BE14(&v4, v5, &v3, 2, 1);
      return v5[1];
    }

    if (v1 == 5)
    {
      return 0.49;
    }
  }

  return result;
}

void sub_1000BE8A4(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 51;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100F99390(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC94C();
        }

        return;
      }

      v10 = 102;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 / 0x66));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) / 0x66));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0x66)) + 40 * (v11 % 0x66));
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x66));
      v19 = (*v18 + 40 * (v17 % 0x66));
    }

    v23 = sub_100F9E338(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 / 0x66));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 40 * (v24 % 0x66));
    sub_100F3460C((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

uint64_t sub_1000BEBB8(uint64_t a1, double *a2)
{
  if (*(a1 + 216) == 3)
  {
    v12 = 0;
    *v11 = xmmword_101C78400;
    memset(&v11[2], 0, 135);
    v13 = xmmword_101C78400;
    v14 = 0;
    v15 = 0;
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0u;
    v21 = xmmword_101C78400;
    v22 = 0;
    v23 = 0;
    v24 = 0xFFEFFFFFFFFFFFFFLL;
    v35 = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v36 = 0u;
    v37 = 0xFFEFFFFFFFFFFFFFLL;
    v38 = 0;
    v39 = 0;
    v44 = 0;
    v45 = 0;
    v50 = 0;
    v42 = 0u;
    memset(v43, 0, sizeof(v43));
    v40 = 0u;
    v41 = 0u;
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    memset(v49, 0, sizeof(v49));
    v51 = 0xFFEFFFFFFFFFFFFFLL;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0xFFEFFFFFFFFFFFFFLL;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = -1.79769313e308;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0xFFEFFFFFFFFFFFFFLL;
    v83 = 0u;
    v84 = 0x80000000800000;
    v85 = 0u;
    v86 = xmmword_101C78410;
    v87 = 0x80000000800000;
    v88 = 0u;
    v89 = 0u;
    v90 = 0;
    v91 = 0xFFEFFFFFFFFFFFFFLL;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0;
    v99 = 0xFFEFFFFFFFFFFFFFLL;
    v100 = 0;
    v101 = 0;
    v102 = 0xFFEFFFFFFFFFFFFFLL;
    v103 = 7;
    v104 = 0xFFEFFFFFFFFFFFFFLL;
    v105 = 0;
    v107 = 0;
    v106 = 0u;
    v7 = 6;
    v9 = 0;
    v10 = 0;
    __p = 0;
    sub_1004579D4(&__p, &v7, &__p, 1uLL);
    sub_1000C2B7C(a2, &__p, v11);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v77 == -1.79769313e308)
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
      if (v78 && v78 != 25)
      {
        v4 = v81;
      }
    }

    v5 = (vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a1 + 48)) < 420.0) | v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1000BEE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BEE88(double **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4.n128_u64[0] = sub_100A9A1F0(v2, *a1);
    v4.n128_u64[1] = v3;
    sub_100F9AC80(*a1, &v4);
  }
}

uint64_t sub_1000BEED0(uint64_t a1)
{
  if (*(a1 + 8) != 1 && *(a1 + 104) >= 1)
  {
    sub_10026ED10(a1 + 96);
  }

  return sub_1000C04C8(a1);
}

uint64_t sub_1000BEF2C(double *a1, int **a2, double *a3)
{
  v4 = a1[14];
  v5 = v4 != -1.0;
  if (v4 != -1.0 && v4 > -1.79769313e308)
  {
    v6 = a1[14];
  }

  else
  {
    v6 = -1.79769313e308;
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v10 = *v7;
      if (*v7 > 6)
      {
        if (v10 > 9)
        {
          switch(v10)
          {
            case 10:
              v13 = (*(**a1 + 176))();
              goto LABEL_33;
            case 11:
              v13 = (*(**a1 + 192))();
              goto LABEL_33;
            case 12:
              v13 = (*(**a1 + 200))();
              goto LABEL_33;
          }
        }

        else
        {
          switch(v10)
          {
            case 7:
              v13 = (*(**a1 + 160))();
              goto LABEL_33;
            case 8:
              v13 = (*(**a1 + 136))();
              goto LABEL_33;
            case 9:
              v11 = (*(**a1 + 168))();
LABEL_16:
              v12 = *(v11 + 136);
LABEL_34:
              if (v12 != -1.0 && v12 > v6)
              {
                v6 = v12;
              }

              v5 &= v12 != -1.0;
              break;
          }
        }
      }

      else if (v10 > 3)
      {
        switch(v10)
        {
          case 4:
            v12 = *((*(**a1 + 128))() + 104);
            goto LABEL_34;
          case 5:
            v13 = (*(**a1 + 144))();
LABEL_33:
            v12 = *(v13 + 96);
            goto LABEL_34;
          case 6:
            v13 = (*(**a1 + 152))();
            goto LABEL_33;
        }
      }

      else
      {
        switch(v10)
        {
          case 1:
            v12 = *((*(**a1 + 104))() + 360);
            goto LABEL_34;
          case 2:
            v13 = (*(**a1 + 120))();
            goto LABEL_33;
          case 3:
            v11 = (*(**a1 + 112))();
            goto LABEL_16;
        }
      }

      ++v7;
    }

    while (v7 != v8);
  }

  *a3 = v6;
  return v5 & 1;
}

void sub_1000BF264(uint64_t result, uint64_t a2, double a3)
{
  if (*(result + 216) > 2u)
  {
    return;
  }

  v3 = a2;
  if (sub_1000C0620(*(result + 104), a2) > 0.0 && (*(result + 32) & 1) != 0)
  {
    if (sub_100E34B78(result, a3))
    {
      return;
    }

    v7 = *(result + 216);
    if (v7 == 2)
    {
      if (*(result + 236) < *(result + 232))
      {
        if (qword_1025D43F0 != -1)
        {
          sub_101A9DA68();
        }

        v20 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(result + 232);
          v21 = *(result + 236);
          *buf = 134349568;
          v52 = a3;
          v53 = 1026;
          *v54 = v21;
          *&v54[4] = 1026;
          *&v54[6] = v22;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, flight detected, timestamp, %{public}f, prev floors Ascended : %{public}u, current floors Ascended, %{public}u", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D43F0 != -1)
          {
            sub_101A9DC44();
          }

          v42 = *(result + 232);
          v41 = *(result + 236);
          v45 = 134349568;
          v46 = a3;
          v47 = 1026;
          v48 = v41;
          v49 = 1026;
          v50 = v42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 2, "Background Stairs Escalation Manager, flight detected, timestamp, %{public}f, prev floors Ascended : %{public}u, current floors Ascended, %{public}u", &v45, 24);
          v44 = v43;
          sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundEscalationManager::handleStairsEscalation(CFAbsoluteTime, BOOL)", "%s\n", v43);
          if (v44 != buf)
          {
            free(v44);
          }
        }

        *(result + 8) = a3;
        *(result + 224) = a3;
        if (qword_1025D43F0 != -1)
        {
          sub_101A9DC44();
        }

        v23 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(result + 8);
          *buf = 134349056;
          v52 = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, HRRecovery startTime set to %{public}.1f", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_52;
        }

LABEL_51:
        sub_101A9DE74();
LABEL_52:
        v25 = *(result + 240) + 1;
        *(result + 236) = *(result + 232);
        *(result + 240) = v25;
        return;
      }

      if (*(result + 224) + 180.0 >= a3)
      {
        return;
      }

      if (qword_1025D43F0 != -1)
      {
        sub_101A9DA68();
      }

      v30 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        v31 = a3 - *(result + 48);
        v32 = *(result + 240);
        v33 = *(result + 8);
        v34 = *(result + 16);
        *buf = 134350080;
        v52 = a3;
        v53 = 2050;
        *v54 = v31;
        *&v54[8] = 1026;
        v55 = v32;
        v56 = 2050;
        v57 = v33;
        v58 = 2050;
        v59 = v34;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, escalation end time : %{public}f, escalation duration : %{public}f, total number of floors ascended : %{public}u, recoveryStart : %{public}f, recoveryEnd : %{public}f", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A9E060(result, a3);
      }

      *(result + 16) = a3;
      if (qword_1025D43F0 != -1)
      {
        sub_101A9DC44();
      }

      v35 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(result + 16);
        *buf = 134349056;
        v52 = v36;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, HRRecovery endTime set to %{public}f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A9E1A0();
      }

      v28 = result;
      v29 = 1;
    }

    else
    {
      if (v7 != 1)
      {
        if (!v7 && v3)
        {
          if (qword_1025D43F0 != -1)
          {
            sub_101A9DA68();
          }

          v8 = qword_1025D43F8;
          if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v52 = a3;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation triggered, timestamp : %{public}f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A9DF60(a3);
          }

          v9 = (*(**(result + 104) + 16))(*(result + 104));
          *(result + 216) = 1;
          *(result + 48) = a3;
          *(result + 34) = 0;
          *buf = 0;
          v11 = sub_1000206B4(v9, v10);
          if (byte_10265F2CF >= 0)
          {
            v12 = &qword_10265F2B8;
          }

          else
          {
            v12 = qword_10265F2B8;
          }

          sub_10005BBE4(v11, v12, buf);
          *(result + 336) = *buf;
          if (*(result + 176))
          {
            if ((*(result + 33) & 1) == 0)
            {
              Current = CFAbsoluteTimeGetCurrent();
              sub_100E34518(result + 152, 0, 0, 11, Current);
              *(result + 33) = 1;
            }
          }
        }

        return;
      }

      if (*(result + 236) < *(result + 232))
      {
        if (qword_1025D43F0 != -1)
        {
          sub_101A9DA68();
        }

        v15 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(result + 232);
          v16 = *(result + 236);
          *buf = 134349568;
          v52 = a3;
          v53 = 1026;
          *v54 = v16;
          *&v54[4] = 1026;
          *&v54[6] = v17;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, flight detected, timestamp, %{public}f, prev floors Ascended : %{public}u, current floors Ascended, %{public}u", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D43F0 != -1)
          {
            sub_101A9DC44();
          }

          v38 = *(result + 232);
          v37 = *(result + 236);
          v45 = 134349568;
          v46 = a3;
          v47 = 1026;
          v48 = v37;
          v49 = 1026;
          v50 = v38;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 2, "Background Stairs Escalation Manager, flight detected, timestamp, %{public}f, prev floors Ascended : %{public}u, current floors Ascended, %{public}u", &v45, 24);
          v40 = v39;
          sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundEscalationManager::handleStairsEscalation(CFAbsoluteTime, BOOL)", "%s\n", v39);
          if (v40 != buf)
          {
            free(v40);
          }
        }

        *(result + 8) = a3;
        *(result + 216) = 2;
        *(result + 224) = a3;
        if (qword_1025D43F0 != -1)
        {
          sub_101A9DC44();
        }

        v18 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(result + 8);
          *buf = 134349056;
          v52 = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, HRRecovery startTime set to %{public}.1f", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (a3 - *(result + 48) <= 30.0)
      {
        return;
      }

      if (qword_1025D43F0 != -1)
      {
        sub_101A9DA68();
      }

      v26 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        v27 = *(result + 48);
        *buf = 134349312;
        v52 = a3;
        v53 = 2050;
        *v54 = v27;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, deescalated due to no confirmed flight, timestamp : %{public}f, escalationOnsetTime : %{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A9DD60((result + 48), a3);
      }

      v28 = result;
      v29 = 4;
    }

    sub_1000C066C(v28, v29);
    return;
  }

  if (sub_1000C0620(*(result + 104), v6) <= 0.0)
  {
    v14 = 7;
  }

  else
  {
    v14 = 6;
  }

  sub_1000C066C(result, v14);
  if (*(result + 208))
  {

    sub_1000B92AC(result + 184, 0);
  }
}

void sub_1000BFAE8(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_10025C2EC;
    v8[4] = nullsub_84;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BFC2C;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1000BFC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BFC2C(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 80;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 2);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

double sub_1000BFCAC(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000BFD70(&v15, __src, a5[1], *a1 + 512, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1000BFD70(&v15, v13, a5[1], v13 + 512, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_1000BFD70(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_1000BFD70@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a4 - v9) >> 5 >= v11 >> 5 ? v11 >> 5 : (a4 - v9) >> 5;
      if (v12)
      {
        __src = memmove(__dst, v9, 32 * v12);
      }

      v9 += 4 * v12;
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 32 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_1000BFE3C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x80)
  {
    a2 = 1;
  }

  if (v5 < 0x100)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_1000BFEAC(uint64_t a1, double *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = sub_1000C0620(*(a1 + 88), a2) > 0.0;
    sub_100A8C4D4(v4, a2, v5);
  }

  if (*(a1 + 216) == 3)
  {
    ++*(a1 + 56);
  }

  if (sub_1000BEBB8(a1, a2))
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A9DA68();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Background escalation manager consuming more power than workout alerts", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A9DB60();
    }

    v9 = a1 + 88;
    v8 = *(a1 + 88);
    ++*(a1 + 60);
    if (sub_1000C0620(v8, v7) <= 0.0)
    {
      (*(**(a1 + 72) + 16))(*(a1 + 72));
    }

    else
    {
      (*(**(a1 + 88) + 16))(*(a1 + 88));
      v9 = a1 + 72;
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A9DA68();
    }

    v10 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Background escalation manager not consuming more power than workout alerts", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A9DA7C();
    }

    (*(**(a1 + 72) + 24))(*(a1 + 72));
    v9 = a1 + 88;
  }

  (*(**v9 + 24))();
  if ((atomic_load_explicit(&qword_10265F2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265F2E8))
  {
    *buf = 8;
    qword_10265F2D8 = 0;
    unk_10265F2E0 = 0;
    qword_10265F2D0 = 0;
    sub_1004579D4(&qword_10265F2D0, buf, &buf[4], 1uLL);
    __cxa_atexit(sub_10051F310, &qword_10265F2D0, dword_100000000);
    __cxa_guard_release(&qword_10265F2E8);
  }

  v23 = 0;
  *buf = xmmword_101C78400;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v24 = xmmword_101C78400;
  v25 = 0;
  v26 = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0u;
  v32 = xmmword_101C78400;
  v33 = 0;
  v34 = 0;
  v35 = 0xFFEFFFFFFFFFFFFFLL;
  v46 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v47 = 0u;
  v48 = 0xFFEFFFFFFFFFFFFFLL;
  v49 = 0;
  v50 = 0;
  v55 = 0;
  v56 = 0;
  v61 = 0;
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v51 = 0u;
  v52 = 0u;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  memset(v60, 0, sizeof(v60));
  v62 = -1.79769313e308;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0xFFEFFFFFFFFFFFFFLL;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0xFFEFFFFFFFFFFFFFLL;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0xFFEFFFFFFFFFFFFFLL;
  v94 = 0u;
  v95 = 0x80000000800000;
  v96 = 0u;
  v97 = xmmword_101C78410;
  v98 = 0x80000000800000;
  v99 = 0u;
  v100 = 0u;
  v101 = 0;
  v102 = 0xFFEFFFFFFFFFFFFFLL;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0;
  v110 = 0xFFEFFFFFFFFFFFFFLL;
  v111 = 0;
  v112 = 0;
  v113 = 0xFFEFFFFFFFFFFFFFLL;
  v114 = 7;
  v115 = 0xFFEFFFFFFFFFFFFFLL;
  v116 = 0;
  v118 = 0;
  v117 = 0u;
  sub_1000C2B7C(a2, &qword_10265F2D0, buf);
  if (v62 != -1.79769313e308)
  {
    if (*(a1 + 244))
    {
      *(a1 + 232) = DWORD2(v67);
    }

    else
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101A9DC44();
      }

      v11 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 67240192;
        v13[1] = DWORD2(v67);
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Background escalation manager updating floors ascended baseline: %{public}u ", v13, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A9DC6C(buf);
      }

      v12 = DWORD2(v67);
      *(a1 + 232) = DWORD2(v67);
      *(a1 + 236) = v12;
      *(a1 + 244) = 1;
    }

    if (*(a1 + 216) != 3)
    {
      sub_1000BF264(a1, 0, *(&v63 + 1));
    }
  }
}

uint64_t sub_1000C042C(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

uint64_t sub_1000C04C8(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    v1 = result;
    if (qword_1025D43F0 != -1)
    {
      sub_101992490();
    }

    v2 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
    {
      v3 = (v1 + 24);
      if (*(v1 + 47) < 0)
      {
        v3 = *v3;
      }

      v6 = 136315138;
      v7 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "NonInterruptingTimer, %s, stopTimer", &v6, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019927C0(v1);
    }

    v5 = sub_1000C0620(v1, v4);
    result = sub_10099E4A0(v1, v5);
    *(v1 + 8) = 1;
  }

  return result;
}

double sub_1000C05D0(uint64_t a1, uint64_t a2)
{
  v6 = 0.0;
  v3 = sub_1000206B4(a1, a2);
  v4 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v4 = *v4;
  }

  sub_1000B9370(v3, v4, &v6);
  return v6;
}

double sub_1000C0620(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = sub_1000C05D0(a1, a2);
  if (!v3)
  {
    return v4 - (sub_1000081AC() - *(a1 + 16));
  }

  return v4;
}

void sub_1000C066C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 216) - 1) <= 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A9DA68();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v6 = sub_1000C0620(*(a1 + 104), v5);
      v9 = 134349056;
      v10 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Background Stairs Escalation Manager, deescalating, remaining budget : %{public}f", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A9E880(a1);
    }

    (*(**(a1 + 104) + 24))(*(a1 + 104));
    sub_10099E5C0(*(a1 + 104));
    Current = CFAbsoluteTimeGetCurrent();
    v8 = Current;
    if (*(a1 + 176) && (*(a1 + 34) & 1) == 0)
    {
      sub_100E34518(a1 + 152, 1, a2, 11, Current);
      *(a1 + 34) = 1;
    }

    if (*(a1 + 336) == 3 && v8 - *(a1 + 48) >= 30.0)
    {
      sub_100E34CD0(a1);
    }

    *(a1 + 48) = 0xBFF0000000000000;
    *(a1 + 216) = 0;
    *(a1 + 33) = 0;
    *(a1 + 336) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 237) = 0;
    *(a1 + 320) = *(a1 + 312);
  }
}

void sub_1000C0828(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v5 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onStairsEscalationEnableDisable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v6 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onStairsEscalationEnableDisable, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  v7 = sub_100023ED4(0, v4);
  (*(*v7 + 168))(v7, a1);
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000C0A10(uint64_t a1, void *a2)
{
  LOBYTE(v5) = 80;
  HIBYTE(v5) = a2;
  if (qword_1025D43F0 != -1)
  {
    sub_101ADDB9C();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v7 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Sending stair escalation toggle update to the AOP,should enable,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ADEA98(a2);
  }

  sub_1000BFAE8(a1 + 192, &v5, 0);
}

uint64_t sub_1000C0B18(uint64_t a1, uint64_t a2)
{
  if ((sub_1000C0620(*(a1 + 72), a2) > 0.0 || sub_1000C0620(*(a1 + 88), v4) > 0.0) && *(a1 + 32) == 1)
  {
    if (*a2 && *(a2 + 2) && *(a2 + 4) > 0.0)
    {
      return 0;
    }

    v6 = *(a1 + 24);
    goto LABEL_13;
  }

  result = 0;
  if (*a2 && *(a2 + 2) && *(a2 + 4) > 0.0)
  {
    v6 = 0;
LABEL_13:
    *a2 = v6;
    return 1;
  }

  return result;
}

uint64_t sub_1000C0BC0(uint64_t a1)
{
  result = sub_1000C0CAC(*(a1 + 632));
  if (result == 2 && *(a1 + 656) != 1 && *(a1 + 24) == 2)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A68264();
    }

    v3 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Workout predictor - keeping GPS alive because we're in an outdoor run escalation", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A6872C();
    }

    v4 = (*(**(a1 + 32) + 16))(*(a1 + 32));
    return sub_1006AE61C(v4);
  }

  return result;
}

uint64_t sub_1000C0CAC(uint64_t a1)
{
  if ((a1 - 1) > 0x5E)
  {
    return 26;
  }

  else
  {
    return qword_101D076D8[a1 - 1];
  }
}

void sub_1000C0CD0(double *a1, double a2)
{
  sub_1000B0EAC((a1 + 1), a2);
  if ((*(*a1 + 88))(a1))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = a1[10];
    if (qword_1025D44D0 != -1)
    {
      sub_101A5D6C0();
    }

    v5 = vabdd_f64(Current, v4);
    v6 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 12);
      v8 = *(a1 + 7);
      v9 = sub_1000C14FC((a1 + 65));
      v10 = *(a1 + 9);
      *buf = 134219008;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      *&buf[22] = 1024;
      *v87 = v8;
      *&v87[4] = 2048;
      *&v87[6] = v9;
      *&v87[14] = 2048;
      *&v87[16] = v10;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor,TimeExceeded,maxAllowed,%f,timePassed,%f,locType,%d,distance,%f,outdoorProbability,%f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A5DB70(a1, v11, v12, v13, v14, v15, v16, v17, v5);
    }

    *(a1 + 112) = 1;
    (*(*a1 + 72))(a1, 1, a1 + 7);
  }

  else
  {
    v18 = (*(**(a1 + 4) + 32))(*(a1 + 4));
    sub_1000C042C(v18);
    if (*(a1 + 113) == 1)
    {
      v19 = (*(**(a1 + 4) + 56))(*(a1 + 4));
      sub_100A3B3B4(v19);
      v20 = (*(**(a1 + 4) + 40))(*(a1 + 4));
      sub_1006AE61C(v20);
    }

    v21 = ((*(**(a1 + 4) + 32))(*(a1 + 4)) + 96);
    if (*v21 != -1.0)
    {
      memcpy(__dst, v21, sizeof(__dst));
      if (a1[11] == -1.79769313e308)
      {
        a1[11] = *__dst;
        sub_100F79F30((a1 + 78), __dst);
        memcpy(a1 + 15, __dst, 0x148uLL);
      }

      else
      {
        v22 = a1[15];
        v23 = a1[48];
        v24 = CFAbsoluteTimeGetCurrent();
        sub_1000BC774(a1 + 65, v22, v23, v24);
        memcpy(a1 + 15, __dst, 0x148uLL);
        sub_1000BCED8((a1 + 78), &v63, v24);
        if (vabdd_f64(CFAbsoluteTimeGetCurrent(), a1[10]) <= fmin(a1[12], 110.0))
        {
          v27 = v64;
        }

        else
        {
          v25 = sub_1000C14FC((a1 + 65));
          v26 = &v64;
          if (v25 > 100.0)
          {
            v26 = &v63;
          }

          v27 = *v26;
        }

        v28 = sub_1000BCBB0((a1 + 65), v24);
        v29 = sub_1000BC880((a1 + 56), v24);
        v30 = sub_1000C14FC((a1 + 65));
        v31 = sub_1000C1520(v27, v28, v29, v30);
        v32 = a1[7];
        v33 = a1[8];
        v34 = *(a1 + 9);
        sub_1000C1738(a1, buf, v31);
        *(a1 + 7) = *buf;
        a1[9] = *&buf[16];
        if (*(a1 + 8) != *&v33 || *(a1 + 7) != *&v32)
        {
          if (qword_1025D44D0 != -1)
          {
            sub_101A5DB48();
          }

          v35 = qword_1025D44D8;
          if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
          {
            v37 = a1[8];
            v36 = *(a1 + 9);
            v38 = *(a1 + 7);
            *buf = 134351104;
            *&buf[4] = v34;
            *&buf[12] = 2050;
            *&buf[14] = v33;
            *&buf[22] = 2050;
            *v87 = v32;
            *&v87[8] = 2050;
            *&v87[10] = v36;
            *&v87[18] = 2050;
            *&v87[20] = v27;
            v88 = 2050;
            v89 = v28;
            v90 = 2050;
            v91 = v29;
            v92 = 2050;
            v93 = v37;
            v94 = 2050;
            v95 = v38;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor,update,old probability,%{public}f,confidence,%{public}ld,state,%{public}ld,new probability,%{public}f,gpsOutdoor,%{public}f,wifiIndoor,%{public}f,alsOutdor,%{public}f,confidence,%{public}ld,state,%{public}ld", buf, 0x5Cu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D44D0 != -1)
            {
              sub_101A5DB48();
            }

            v57 = a1[8];
            v56 = a1[9];
            v58 = *(a1 + 7);
            v66 = 134351104;
            v67 = v34;
            v68 = 2050;
            v69 = v33;
            v70 = 2050;
            v71 = v32;
            v72 = 2050;
            v73 = v56;
            v74 = 2050;
            v75 = v27;
            v76 = 2050;
            v77 = v28;
            v78 = 2050;
            v79 = v29;
            v80 = 2050;
            v81 = v57;
            v82 = 2050;
            v83 = v58;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 0, "IndoorOutdoor,update,old probability,%{public}f,confidence,%{public}ld,state,%{public}ld,new probability,%{public}f,gpsOutdoor,%{public}f,wifiIndoor,%{public}f,alsOutdor,%{public}f,confidence,%{public}ld,state,%{public}ld", &v66, 92);
            v60 = v59;
            sub_100152C7C("Generic", 1, 0, 2, "virtual void CLIndoorOutdoorDetectorWatch::update(CFAbsoluteTime)", "%s\n", v59);
            if (v60 != buf)
            {
              free(v60);
            }
          }

          if ((*(a1 + 113) & 1) == 0)
          {
            (*(*a1 + 72))(a1, 0, a1 + 7);
          }
        }

        v39 = CFAbsoluteTimeGetCurrent();
        v40 = a1[10];
        if (qword_1025D44D0 != -1)
        {
          v62 = v39;
          sub_101A5DB48();
          v39 = v62;
        }

        v41 = vabdd_f64(v39, v40);
        v42 = qword_1025D44D8;
        if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
        {
          v43 = v63;
          v44 = v64;
          v45 = sub_1000C14FC((a1 + 65));
          v47 = *(a1 + 7);
          v46 = *(a1 + 8);
          *buf = 134351360;
          *&buf[4] = v43;
          *&buf[12] = 2050;
          *&buf[14] = v44;
          *&buf[22] = 2050;
          *v87 = v41;
          *&v87[8] = 2050;
          *&v87[10] = v45;
          *&v87[18] = 2050;
          *&v87[20] = v27;
          v88 = 2050;
          v89 = v28;
          v90 = 2050;
          v91 = v29;
          v92 = 2050;
          v93 = v31;
          v94 = 2050;
          v95 = v46;
          v96 = 2050;
          v97 = v47;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "IndoorOutdoor,probabilities,llr,%{public}f,discordant,%{public}f,timeSinceStart,%{public}f,totalDistance,%{public}f,gpsOutdoor,%{public}f,wifiIndoor,%{public}f,alsOutdoor,%{public}f,probability,%{public}f,confidence,%{public}ld,location,%{public}ld", buf, 0x66u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D44D0 != -1)
          {
            sub_101A5DB48();
          }

          v48 = qword_1025D44D8;
          v49 = v63;
          v50 = v64;
          v51 = sub_1000C14FC((a1 + 65));
          v53 = *(a1 + 7);
          v52 = *(a1 + 8);
          v66 = 134351360;
          v67 = v49;
          v68 = 2050;
          v69 = v50;
          v70 = 2050;
          v71 = v41;
          v72 = 2050;
          v73 = v51;
          v74 = 2050;
          v75 = v27;
          v76 = 2050;
          v77 = v28;
          v78 = 2050;
          v79 = v29;
          v80 = 2050;
          v81 = v31;
          v82 = 2050;
          v83 = v52;
          v84 = 2050;
          v85 = v53;
          LODWORD(v61) = 102;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v48, 1, "IndoorOutdoor,probabilities,llr,%{public}f,discordant,%{public}f,timeSinceStart,%{public}f,totalDistance,%{public}f,gpsOutdoor,%{public}f,wifiIndoor,%{public}f,alsOutdoor,%{public}f,probability,%{public}f,confidence,%{public}ld,location,%{public}ld", &v66, v61);
          v55 = v54;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLIndoorOutdoorDetectorWatch::update(CFAbsoluteTime)", "%s\n", v54);
          if (v55 != buf)
          {
            free(v55);
          }
        }
      }
    }
  }
}

double sub_1000C14FC(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v1 == v2)
  {
    return 0.0;
  }

  else
  {
    return *(v2 - 8) - *(v1 + 8);
  }
}

double sub_1000C1520(double a1, float a2, float a3, double a4)
{
  v4 = a1;
  if (a4 > 100.0)
  {
    a4 = 100.0;
  }

  v5 = a4 * 0.819 / 100.0 + (100.0 - a4) * 0.7 / 100.0;
  v6 = 1.0 - a2;
  if (a2 == -1.0)
  {
    v6 = a2;
    v7 = 0.5;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0.3)
  {
    v5 = a4 * 0.977 / 100.0 + (100.0 - a4) * 0.0 / 100.0;
  }

  if (a2 == -1.0)
  {
    v8 = 0.1;
  }

  else
  {
    v8 = v5;
  }

  v9 = a3;
  v10 = a3 == -1.0;
  if (a3 == -1.0)
  {
    v11 = 0.1;
  }

  else
  {
    v11 = dbl_101CF7710[a3 >= 0.5];
  }

  if (v10)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = v9;
  }

  v13 = a1;
  if (a1 == -1.0)
  {
    v14 = 0.1;
  }

  else
  {
    v14 = dbl_101CF7720[v13 >= 0.5] * a4 / 100.0 + (100.0 - a4) * 0.1 / 100.0;
  }

  if (a1 == -1.0)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = v13;
  }

  v16 = v14 + v11 + v8;
  v17 = v16;
  v18 = v11 / v16;
  v29 = pow(v12, v18);
  v19 = v8 / v17;
  v28 = pow(v7, v19);
  v20 = v14 / v17;
  v27 = pow(v15, v20);
  v21 = pow(1.0 - v12, v18);
  v22 = pow(1.0 - v7, v19);
  v23 = pow(1.0 - v15, v20);
  if (v4 == -1.0 || v4 >= 0.100000001 && v4 <= 0.899999976)
  {
    v24 = v27 * (v29 * v28);
    v25 = v23 * (v21 * v22);
    return (v24 / (v24 + v25));
  }

  return v4;
}

uint64_t sub_1000C1738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  result = (*(*a1 + 80))(a1);
  if ((a3 <= 0.525 || a3 > 0.7) && (a3 <= 0.3 || a3 > 0.45))
  {
    if ((a3 <= 0.7 || a3 > 0.9) && (a3 <= 0.1 || a3 > 0.3))
    {
      if (a3 <= 0.9 || a3 > 1.0)
      {
        v9 = a3 <= 0.1 && a3 > 0.0;
        v6 = 3;
        if (!v9 && fabsf(a3) > 0.001)
        {
          if (qword_1025D44D0 != -1)
          {
            sub_101A5D6C0();
          }

          v10 = qword_1025D44D8;
          if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
          {
            v19 = 134349056;
            v20 = a3;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "IndoorOutdoor, low confidence estimate,probability,%{public}f", &v19, 0xCu);
          }

          v11 = sub_10000A100(121, 2);
          if (v11)
          {
            sub_101A5DCC8(v11, v12, v13, v14, v15, v16, v17, v18, a3);
          }

          v6 = 0;
          result = 0;
        }
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = a3;
  return result;
}

uint64_t sub_1000C1920(float a1)
{
  if (a1 <= 0.5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_1000C1934(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 144);
  v4 = *(a1 + 160);
  if (v4 <= 2)
  {
    operator new();
  }

  v5 = *v3;
  v6 = *(a2 + 80);
  v7 = v6 - *(*v3 + 12);
  if (v7 > 0.0 && v7 < 9.0)
  {
    v15 = *(a1 + 152);
    if (v15 != v3)
    {
      v16 = 0;
      while (1)
      {
        if (*(v15 + 16) == *a2)
        {
          ++v16;
        }

        if (v16 >= 2)
        {
          break;
        }

        v15 = *(v15 + 8);
        if (v15 == v3)
        {
          goto LABEL_16;
        }
      }

      *(a1 + 8) = *a2;
      v17 = *(a2 + 16);
      v18 = *(a2 + 32);
      v19 = *(a2 + 48);
      *(a1 + 72) = *(a2 + 64);
      *(a1 + 56) = v19;
      *(a1 + 40) = v18;
      *(a1 + 24) = v17;
      v20 = *(a2 + 80);
      v21 = *(a2 + 96);
      v22 = *(a2 + 112);
      *(a1 + 136) = *(a2 + 128);
      *(a1 + 120) = v22;
      *(a1 + 104) = v21;
      *(a1 + 88) = v20;
      v6 = *(a2 + 80);
    }

LABEL_16:
    *(a1 + 88) = v6;
  }

  else
  {
    *(a1 + 8) = *a2;
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    *(a1 + 72) = *(a2 + 64);
    *(a1 + 56) = v11;
    *(a1 + 40) = v10;
    *(a1 + 24) = v9;
    v12 = *(a2 + 80);
    v13 = *(a2 + 96);
    v14 = *(a2 + 112);
    *(a1 + 136) = *(a2 + 128);
    *(a1 + 120) = v14;
    *(a1 + 104) = v13;
    *(a1 + 88) = v12;
  }

  v24 = *v5;
  v23 = v5[1];
  *(v24 + 8) = v23;
  *v23 = v24;
  *(a1 + 160) = v4 - 1;
  operator delete(v5);
  operator new();
}

uint64_t sub_1000C1B4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 88);
  v3 = *(result + 120);
  *(a2 + 96) = *(result + 104);
  *(a2 + 112) = v3;
  *(a2 + 128) = *(result + 136);
  v4 = *(result + 24);
  v5 = *(result + 56);
  *(a2 + 32) = *(result + 40);
  *(a2 + 48) = v5;
  *(a2 + 64) = *(result + 72);
  *(a2 + 80) = v2;
  *a2 = *(result + 8);
  *(a2 + 16) = v4;
  if (*result)
  {
    *a2 = *result;
  }

  return result;
}

void sub_1000C1B94(uint64_t a1, uuid_t dst)
{
  if (*a1)
  {
    uuid_copy(dst, (a1 + 168));
  }

  else
  {
    uuid_clear(dst);
  }
}

void sub_1000C1BB4(uint64_t a1, int *a2, const void *a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_1000C20C0(a3);
    }
  }
}

void sub_1000C208C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_1000C2174(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_1000C2530(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_1000C25CC(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1019013B8();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1019013B8();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLMotionStateMediator_Type::Notification, CLMotionStateMediator_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLMotionStateMediator_Type::Notification, NotificationData_T = CLMotionStateMediator_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

id sub_1000C2530(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1006A32F8(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1000C2978(a1);
    }

    else
    {
      return 0;
    }
  }
}

_BYTE *sub_1000C25CC(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1000C2530(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_1000C26C4(__int128 *a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];

  return sub_1000C2718(a2, a1);
}

uint64_t sub_1000C2718(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v40 = a2[6];
  v41 = v3;
  v4 = a2[9];
  v42 = a2[8];
  v43 = v4;
  v5 = a2[3];
  v36 = a2[2];
  v37 = v5;
  v6 = a2[5];
  v38 = a2[4];
  v39 = v6;
  v7 = a2[1];
  v34 = *a2;
  v35 = v7;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(&v29, 0, sizeof(v29));
  sub_1000B0BE8(&v34, &v29);
  if (CLMotionActivity::isTypeStatic())
  {
    v9 = *(a1 + 656);
    *(a1 + 656) = v9 + 1;
    if (v9 <= 2)
    {
      v29.confidence = 0;
    }
  }

  else
  {
    *(a1 + 656) = 0;
  }

  if ((CLMotionActivity::isSimilar((a1 + 112), &v29, v8) & 1) == 0)
  {
    sub_10123D1BC(a1, &v34);
    sub_1005C2E8C((a1 + 112), &v29.type);
    sub_1005C2E98(a1, &v29);
    sub_1005C3158(a1, &v29);
    sub_1005C32F4(a1);
    v10 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v28 = v43;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v39;
    v19 = v34;
    v20 = v35;
    v18[2] = sub_10123D290;
    v18[3] = &unk_1024D8758;
    v18[4] = a1;
    [v10 async:v18];
  }

  v11 = *(a1 + 531);
  v12 = *(a1 + 536);
  Current = CFAbsoluteTimeGetCurrent();
  v15 = sub_1000C456C(a1, v14, v12, Current);
  sub_1000C3344(a1, v11, v15);
  v44.type = 10;
  result = sub_10000608C(a1, &v44.type, 1);
  if (result)
  {
    v17 = 10;
    v46 = v31;
    v47 = v32;
    v48 = v33;
    v44 = v29;
    v45 = v30;
    return (*(*a1 + 152))(a1, &v17, &v44, 0, 0xFFFFFFFFLL, 0);
  }

  return result;
}

id sub_1000C2978(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101905D00();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C88261 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101905F0C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101905D00();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C88261 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101906008();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_1000C2B7C(double *a1, int **a2, uint64_t a3)
{
  v35 = 0.0;
  v6 = sub_1000BEF2C(a1, a2, &v35);
  memset(&v36[6], 0, 24);
  *(a3 + 160) = xmmword_101C78400;
  *(a3 + 152) = 0;
  *a3 = xmmword_101C78400;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 143) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 205) = 0;
  *(a3 + 214) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = xmmword_101C78400;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 376) = 0;
  *(a3 + 296) = 0u;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 441) = 0u;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 496) = 0;
  *(a3 + 504) = 0;
  *(a3 + 592) = 0;
  *(a3 + 600) = 0;
  *(a3 + 572) = 0u;
  *(a3 + 544) = 0u;
  *(a3 + 560) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 616) = *&v36[14];
  *(a3 + 602) = *v36;
  *(a3 + 640) = 0;
  *(a3 + 632) = 0;
  *(a3 + 656) = 0;
  *(a3 + 651) = 0;
  *(a3 + 644) = 0;
  *(a3 + 664) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 960) = 0u;
  *(a3 + 976) = 0u;
  *(a3 + 928) = 0u;
  *(a3 + 944) = 0u;
  *(a3 + 896) = 0u;
  *(a3 + 912) = 0u;
  *(a3 + 864) = 0u;
  *(a3 + 880) = 0u;
  *(a3 + 832) = 0u;
  *(a3 + 848) = 0u;
  *(a3 + 800) = 0u;
  *(a3 + 816) = 0u;
  *(a3 + 768) = 0u;
  *(a3 + 784) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 704) = 0u;
  *(a3 + 720) = 0u;
  *(a3 + 672) = 0u;
  *(a3 + 688) = 0u;
  *(a3 + 992) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1000) = 0u;
  *(a3 + 1016) = 0u;
  *(a3 + 1032) = 0u;
  *(a3 + 1048) = 0u;
  *(a3 + 1064) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1072) = 0;
  *(a3 + 1080) = 0;
  *(a3 + 1088) = 0;
  *(a3 + 1096) = 0;
  *(a3 + 1104) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1112) = 0u;
  *(a3 + 1128) = 0x80000000800000;
  *(a3 + 1136) = 0u;
  *(a3 + 1152) = xmmword_101C78410;
  *(a3 + 1168) = 0x80000000800000;
  *(a3 + 1208) = 0;
  *(a3 + 1176) = 0u;
  *(a3 + 1192) = 0u;
  *(a3 + 1216) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1224) = 0u;
  *(a3 + 1240) = 0u;
  *(a3 + 1256) = 0u;
  *(a3 + 1272) = 0u;
  *(a3 + 1288) = 0u;
  *(a3 + 1304) = 0u;
  *(a3 + 1320) = 0;
  *(a3 + 1328) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1336) = 0;
  *(a3 + 1340) = 0;
  *(a3 + 1344) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1352) = 7;
  *(a3 + 1360) = 0xFFEFFFFFFFFFFFFFLL;
  *(a3 + 1368) = 0;
  *(a3 + 1388) = 0;
  *(a3 + 1372) = 0u;
  v8 = *a2;
  v7 = a2[1];
  if (v8 != v7)
  {
    v9 = v35;
    do
    {
      switch(*v8)
      {
        case 0:
          v6 &= sub_1000BB630((a1 + 1), a3, v9);
          sub_100A3B02C((a1 + 1));
          break;
        case 1:
          v24 = (*(**a1 + 104))();
          v6 &= sub_100F989C4(v24, (a3 + 160), v9);
          v25 = (*(**a1 + 104))();
          sub_100F98AA4(v25);
          break;
        case 2:
          v18 = (*(**a1 + 120))();
          v6 &= sub_1000B6BF0(v18, (a3 + 288), v9);
          v19 = (*(**a1 + 120))();
          sub_1006AE61C(v19);
          break;
        case 3:
          v20 = (*(**a1 + 112))();
          v6 &= sub_100F98B40(v20, (a3 + 224), v9);
          v21 = (*(**a1 + 112))();
          sub_100F98C20(v21);
          break;
        case 4:
          v12 = (*(**a1 + 128))();
          v6 &= sub_100F98CBC(v12, a3 + 480, v9);
          v13 = (*(**a1 + 128))();
          sub_100F98DF4(v13);
          break;
        case 5:
          v26 = (*(**a1 + 144))();
          v6 &= sub_1000B6E08(v26, a3 + 992, v9);
          v27 = (*(**a1 + 144))();
          sub_10069B530(v27);
          break;
        case 6:
          v28 = (*(**a1 + 152))();
          v6 &= sub_100F98E90(v28, a3 + 1064, v9);
          v29 = (*(**a1 + 152))();
          sub_100F98F90(v29);
          break;
        case 7:
          v22 = (*(**a1 + 160))();
          v6 &= sub_1000B6E08(v22, a3 + 1104, v9);
          v23 = (*(**a1 + 160))();
          sub_100A3B3B4(v23);
          break;
        case 8:
          v32 = (*(**a1 + 136))();
          v6 &= sub_1000BC63C(v32, (a3 + 664), v9);
          v33 = (*(**a1 + 136))();
          sub_1000C042C(v33);
          break;
        case 9:
          v16 = (*(**a1 + 168))();
          v6 &= sub_100F9902C(v16, a3 + 1176, v9);
          v17 = (*(**a1 + 168))();
          sub_100F99158(v17);
          break;
        case 10:
          v30 = (*(**a1 + 176))();
          v6 &= sub_1000BC56C(v30, (a3 + 1328), v9);
          v31 = (*(**a1 + 176))();
          sub_1006ACA0C(v31);
          break;
        case 11:
          v10 = (*(**a1 + 192))();
          v6 &= sub_1000BC56C(v10, (a3 + 1344), v9);
          v11 = (*(**a1 + 192))();
          sub_100F991F4(v11);
          break;
        case 12:
          v14 = (*(**a1 + 200))();
          v6 &= sub_100F99290(v14, a3 + 1360, v9);
          v15 = (*(**a1 + 200))();
          sub_100F99390(v15);
          break;
        default:
          break;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  return v6 & 1;
}

uint64_t sub_1000C3344(uint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  if (!a2)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  result = sub_100023B30(result, a2);
  if ((result & 0x2000000) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + 534);
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((a3 & 1) == 0)
  {
    v6 = *(v3 + 533);
    goto LABEL_10;
  }

LABEL_9:
  v6 = v5;
LABEL_10:
  v7 = (v5 & 1);
  v8 = (v6 & 1);
  if (__PAIR64__(*(v3 + 532), *(v3 + 531)) != __PAIR64__(v8, v7))
  {
    if (qword_1025D4250 != -1)
    {
      sub_101B7BA74();
    }

    v9 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v7;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Authorization changed, authorized for location, %d, active scanning, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7BA88(v8, v7);
    }

    v10 = *(v3 + 616);
    if (v10)
    {
      *(v3 + 616) = 0;
      (*(*v10 + 8))(v10);
    }

    [*(*(v3 + 608) + 16) unregister:*(*(v3 + 608) + 8) forNotification:22];
    if (v7)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      *buf = _Q0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v17 = v8;
      sub_10002FA64(buf);
    }

    result = [objc_msgSend(objc_msgSend(*(v3 + 32) "vendor")];
    *(v3 + 531) = 0;
    *(v3 + 532) = v8;
  }

  return result;
}

id sub_1000C35C4(uint64_t a1, int a2, void *a3)
{
  result = sub_1000C2530(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void sub_1000C3614(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BD3BE0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLStepCountNotifier::onMotionStateMediatorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BD3BF4();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStepCountNotifier::onMotionStateMediatorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000C37E0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000C37E0(uint64_t result, uint64_t a2, int *a3, int *a4)
{
  v4 = *a3;
  if (*a3 > 2)
  {
    if ((v4 - 3) < 3)
    {
      if (qword_1025D4270 != -1)
      {
        sub_101BD36D0();
      }

      v12 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        v13 = *a3;
        v33 = 67240192;
        LODWORD(v34) = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Unexpected CLMotionStateMediator_Type: %{public}d", &v33, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD4DBC(a3);
      }
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v14 = *(result + 7576);
      if (v14 != *(a4 + 18))
      {
        v15 = *(result + 7624);
        sub_10001A3E8(result, a2);
        v16 = sub_10001CF3C();
        v17 = sub_1008D4B60(*(a4 + 18));
        v26 = 0x304001u >> v17;
        if (v17 > 0x15)
        {
          LOBYTE(v26) = 0;
        }

        if (!v15)
        {
          LOBYTE(v26) = 0;
        }

        if (!v16)
        {
          LOBYTE(v26) = 0;
        }

        sub_10136BBA0(*(result + 128), (v26 & 1), v18, v19, v20, v21, v22, v23, v24, v25);
        sub_10136BDF0(*(result + 128), *(a4 + 18));
        v14 = *(a4 + 18);
      }

      *(result + 7576) = v14;
      sub_100C49484(result + 856, a4);
      sub_100C49484(result + 2400, a4);
      sub_10001A3E8(v27, v28);
      v29 = sub_10001CF3C();
      if (v29)
      {
        sub_100D3EBA0(*(result + 840), a4);
      }

      sub_10001A3E8(v29, v30);
      if (sub_10001CF3C())
      {
        sub_1013783EC(result);
      }

      if (qword_1025D4270 != -1)
      {
        sub_101BD36D0();
      }

      v31 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        v32 = *(result + 7576);
        v33 = 134217984;
        v34 = v32;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "step counting overrideActivityType,%lu,", &v33, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD4F9C();
      }
    }

    else if (v4 == 2)
    {
      sub_100F74DBC(result + 3944, a4);
      if (*(a4 + 26) == 1 && *(a4 + 2) == 1)
      {
        if (qword_1025D4270 != -1)
        {
          sub_101BD36D0();
        }

        v7 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
        {
          v8 = *(a4 + 12);
          v33 = 134217984;
          v34 = v8;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Flushing buffered step distance on workout end, workout type, %lu", &v33, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD4EB0();
        }

        v9 = sub_100C493B8((result + 2400));
        sub_10009C564(result, v9);
      }

      sub_100C495F8(result + 856, a4);
      sub_100C495F8(result + 2400, a4);
      v10 = *(result + 272);
      if (v10)
      {
        sub_100E4ABF4(v10, a4);
      }

      sub_101377D78(result, a4);
    }
  }

  else
  {
    sub_100C49774(result + 856, a4);

    sub_100C49774(result + 2400, a4);
  }
}

__n128 sub_1000C3B70(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 2 * (v4 - v5) + ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100C4AB08(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x11)) + 232 * (v7 % 0x11);
  v9 = *a2;
  v10 = a2[2];
  *(v8 + 16) = a2[1];
  *(v8 + 32) = v10;
  *v8 = v9;
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[6];
  *(v8 + 80) = a2[5];
  *(v8 + 96) = v13;
  *(v8 + 48) = v11;
  *(v8 + 64) = v12;
  v14 = a2[7];
  v15 = a2[8];
  v16 = a2[10];
  *(v8 + 144) = a2[9];
  *(v8 + 160) = v16;
  *(v8 + 112) = v14;
  *(v8 + 128) = v15;
  result = a2[11];
  v18 = a2[12];
  v19 = a2[13];
  *(v8 + 224) = *(a2 + 28);
  *(v8 + 192) = v18;
  *(v8 + 208) = v19;
  *(v8 + 176) = result;
  ++a1[5];
  return result;
}

double sub_1000C3C58(double *a1, double a2)
{
  v12 = 0u;
  v13 = 0u;
  v4 = a2 + -360.0;
  sub_1000C3DC0(a1, &v12, a2 + -360.0, a2);
  v10 = 0u;
  v11 = 0u;
  sub_1000C3DC0(a1, &v10, a2 + -720.0, v4);
  v5 = 0;
  if (*(&v13 + 1) >= 0.45 && v13 >= 0x32)
  {
    v5 = vabdd_f64(*(&v12 + 1), *&v12) > 324.0;
  }

  v6 = 0;
  if (*(&v11 + 1) >= 0.45 && v11 >= 0x32)
  {
    v6 = fabs(*(&v10 + 1) - *&v10) > 324.0;
  }

  if (v5)
  {
    v7 = *a1;
    if (*a1 < 3.0)
    {
      v7 = v7 + vabdd_f64(*(&v12 + 1), a1[8]) / 720.0;
      *a1 = v7;
      v8 = 0.0;
      if (!v6)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v8 = 0.0;
    if (v6)
    {
LABEL_13:
      v8 = 0.05;
    }
  }

  else
  {
    *a1 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

LABEL_14:
  result = fmin(v8 * v7, 0.3);
  a1[8] = *(&v12 + 1);
  return result;
}

void sub_1000C3DC0(float *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = xmmword_101D050C8;
  *(a2 + 16) = unk_101D050D8;
  __src = 0;
  v41 = 0;
  v42 = 0;
  v7 = *(a1 + 3);
  if (*(a1 + 4) == v7 || (v9 = *(a1 + 6), v10 = (v7 + 8 * (v9 >> 8)), v11 = (*v10 + 16 * v9), v12 = *(v7 + (((*(a1 + 7) + v9) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 56) + v9), v11 == v12))
  {
    *(a2 + 16) = 0;
    return;
  }

  v13 = 0;
  v14 = 1.79769313e308;
  v15 = -1.79769313e308;
  do
  {
    v16 = *v11;
    if (*v11 >= a3 && v16 <= a4)
    {
      if (v15 >= v16)
      {
        v18 = (a2 + 8);
      }

      else
      {
        v18 = v11;
      }

      v15 = *v18;
      *(a2 + 8) = *v18;
      v19 = v11[1];
      if (*v11 < v14)
      {
        v14 = *v11;
      }

      *a2 = v14;
      v20 = v19;
      v21 = (a1[3] - v20) / (a1[3] - a1[2]);
      v22 = (1.0 - v21);
      if (v13 >= v42)
      {
        v23 = __src;
        v24 = v13 - __src;
        v25 = (v13 - __src) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v27 = v42 - __src;
        if ((v42 - __src) >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          sub_1000B9708(&__src, v28);
        }

        v29 = v25;
        v30 = (8 * v25);
        v31 = &v30[-v29];
        *v30 = v22;
        v13 = v30 + 1;
        memcpy(v31, v23, v24);
        v32 = __src;
        __src = v31;
        v41 = v13;
        v42 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v13++ = v22;
      }

      v41 = v13;
    }

    v11 += 2;
    if ((v11 - *v10) == 4096)
    {
      v33 = v10[1];
      ++v10;
      v11 = v33;
    }
  }

  while (v11 != v12);
  v34 = __src;
  v35 = v13 == __src;
  v36 = (v13 - __src) >> 3;
  *(a2 + 16) = v36;
  if (v35)
  {
    if (!v34)
    {
      return;
    }
  }

  else
  {
    v37 = vcvtd_n_f64_u64(v36 - 1, 1uLL);
    v38 = v37;
    v39 = &v34[v37];
    if (v39 != v13)
    {
      sub_1003E3EC0(v34, v39, v13, v37);
      v34 = __src;
    }

    *(a2 + 24) = v34[v38];
  }

  v41 = v34;
  operator delete(v34);
}

void sub_1000C4024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1000C4048(unsigned __int16 *a1)
{
  if (!a1[1])
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  do
  {
    v3 = v3 + *sub_1000C40B0(a1, v2++);
  }

  while (v2 < a1[1]);
  return v3;
}

unsigned __int16 *sub_1000C40B0(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10247F6A0);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10247F6A0);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<double>::operator[](const size_t) const [T = double]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[4 * (v4 - v5) + 4];
}

unsigned __int16 *sub_1000C42AC(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 < v3)
  {
    v3 = 0;
  }

  *&result[2 * (v4 + v2 - v3) + 4] = *a2;
  v5 = *(result + 1);
  if (v5 <= v2)
  {
    v6 = v4 + 1;
    if (v4 + 1 >= v5)
    {
      v7 = *(result + 1);
    }

    else
    {
      v7 = 0;
    }

    *result = v6 - v7;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

double sub_1000C4304(unsigned __int16 *a1)
{
  if (!a1[1])
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  do
  {
    v3 = v3 + *sub_1000C4370(a1, v2++);
  }

  while (v2 < a1[1]);
  return v3;
}

unsigned __int16 *sub_1000C4370(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_102460A50);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_102460A50);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<int>::operator[](const size_t) const [T = int]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[2 * (v4 - v5) + 4];
}

BOOL sub_1000C456C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v12 = a3;
  v5 = a4 - a3;
  v6 = v5 > -60.0 && fabs(v5) < *(a1 + 544);
  if (*(a1 + 536) != a3)
  {
    v7 = sub_1000206B4(a1, a2);
    v8 = sub_100116D68(v7, "LastMotionStateQuery", &v12);
    v10 = *sub_1000206B4(v8, v9);
    (*(v10 + 944))();
    *(a1 + 536) = v12;
  }

  return v6;
}

void sub_1000C462C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];

  sub_1000C4690(a4);
}

void sub_1000C4690(uint64_t a1)
{
  __chkstk_darwin(a1);
  v5 = v4;
  v6 = v1;
  if (*v3 == 2)
  {
    v26 = *(v4 + 16);
    if (v26 == 1)
    {
      *(v1 + 3448) = 0;
      v36 = sub_100023ED4(0, v2);
      (*(*(v36 + 56) + 24))();
      v6[357] = 0;
      *(v6 + 179) = xmmword_101CFA0F0;
      *(v6 + 2880) = 0;
      v6[361] = 0xFFF0000000000000;
      *(v6 + 181) = xmmword_101D1D530;
      *(v6 + 728) = 0;
      *(v6 + 2928) = 0;
      *(sub_1010E47C0((v6[344] + 3512), v37) + 123) = 0;
    }

    else if (!v26)
    {
      *(v1 + 3448) = 1;
      sub_1010E46D4(v1);
      sub_1008D4B60(*(v5 + 96));
      v28 = sub_100023ED4(0, v27);
      v29 = (*(*(v28 + 56) + 24))();
      v6[357] = 0;
      *(v6 + 179) = xmmword_101CFA0F0;
      *(v6 + 2880) = 0;
      v6[361] = 0xFFF0000000000000;
      *(v6 + 181) = xmmword_101D1D530;
      *(v6 + 728) = 0;
      v6[365] = *(v5 + 24);
      *(v6 + 2928) = 0;
      v30 = *(v6 + 100);
      v32 = sub_1000DA93C(v29, v31);
      if (v30)
      {
        sub_101241800(v32, 1);
        v35 = sub_1000A23E0(v33, v34);
        *buf = 1;
      }

      else
      {
        sub_101241800(v32, 2);
        v35 = sub_1000A23E0(v38, v39);
        *buf = 2;
      }

      sub_100E04414(v35, buf);
      v41 = sub_1010E47C0((v6[344] + 3512), v40);
      *(v41 + 123) = 1;
      if ((v6[47] & 1) == 0)
      {
        sub_1010E00C0(v6);
      }

      v43 = sub_1000A23E0(v41, v42);
      v44 = (v6[344] + 4520);
      v45 = *(v6[344] + 4536);
      *buf = *v44;
      v88 = v45;
      *v89 = v44[2];
      *&v89[12] = *(v44 + 44);
      sub_100E0403C(v43, buf);
    }

    if (sub_1000A154C(v5) == 1)
    {
      v46 = sub_100D5FAA8(v6 + 2929, v6[344] + 4520, buf);
      *&v46 = v46;
      *&v103.var5.var4.var0.var1 = CMNatalimeterSetUserHrmax;
      *&v103.var5.var5.var0 = [NSNumber numberWithFloat:v46];
      sub_1010E2F50(v6, [NSDictionary dictionaryWithObjects:&v103.var5.var5 forKeys:&v103.var5.var4.var1 + 1 count:1], 0);
      nullsub_34();
      *v85 = v47;
      *&v85[8] = v48;
      *&v85[16] = v49;
      CHVO2MaxEstimator::feedHRMaxFeatures();
    }

    memset(&v103, 0, 112);
    v50 = *(v5 + 176);
    v94 = *(v5 + 160);
    v95 = v50;
    v96 = *(v5 + 192);
    v97 = *(v5 + 208);
    v51 = *(v5 + 112);
    *v91 = *(v5 + 96);
    *&v91[16] = v51;
    v52 = *(v5 + 144);
    v92 = *(v5 + 128);
    v93 = v52;
    v53 = *(v5 + 48);
    *v89 = *(v5 + 32);
    *&v89[16] = v53;
    v54 = *(v5 + 80);
    *v90 = *(v5 + 64);
    *&v90[16] = v54;
    v55 = *(v5 + 16);
    *buf = *v5;
    v88 = v55;
    sub_100D9AC04(buf, &v103);
    v56 = CHVO2MaxEstimator::feedWorkoutEvent(&v98, (v6 + 402), &v103);
    if (*(v6 + 99) == 2 && *&v99 != -1.0 && BYTE12(v99) == 1)
    {
      if ((v6[47] & 1) == 0)
      {
        sub_1010E00C0(v6);
      }

      v58 = sub_100011660(v56, v57);
      sub_100185AC0(v58, buf);
      sub_10005BBE4(*buf, "Vo2MaxCalLevel", v6 + 99);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      if (BYTE11(v99) == 1)
      {
        sub_1010E47FC(v6, &v98);
        v59 = *(v5 + 24);
        v60 = v6[475];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&v88 = sub_1010E81AC;
        *(&v88 + 1) = &unk_10245D2A8;
        *v89 = v6;
        *&v89[8] = v59;
        dispatch_async(v60, buf);
      }

      bzero(&v90[8], 0xD30uLL);
      *v89 = v100;
      *&v89[16] = v101;
      *v90 = v102;
      v88 = v99;
      *buf = v98;
      if (qword_1025D43F0 != -1)
      {
        sub_101B2CFD0();
      }

      v61 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
      {
        *v85 = 134284033;
        *&v85[4] = v99;
        *&v85[12] = 1025;
        *&v85[14] = BYTE9(v99);
        *&v85[18] = 1025;
        *&v85[20] = BYTE11(v99);
        _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_INFO, "VO2Max, estimate, %{private}.2f, betaBlockerUser, %{private}d, eligibleForHealthKit, %{private}d", v85, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(v85, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_101B2CFD0();
        }

        v79 = 134284033;
        v80 = v99;
        v81 = 1025;
        v82 = BYTE9(v99);
        v83 = 1025;
        v84 = BYTE11(v99);
        _os_log_send_and_compose_impl(2, 0, v85, 1628, dword_100000000, qword_1025D43F8, 1, "VO2Max, estimate, %{private}.2f, betaBlockerUser, %{private}d, eligibleForHealthKit, %{private}d", &v79, 24);
        v75 = v74;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNatalimetryNotifier::onMotionStateMediatorNotification(int, const CLMotionStateMediator_Type::Notification &, const CLMotionStateMediator_Type::NotificationData &)", "%s\n", v74);
        if (v75 != v85)
        {
          free(v75);
        }
      }

      *v85 = 6;
      (*(*v6 + 152))(v6, v85, buf, 1, 0xFFFFFFFFLL, 0);
    }

    else if (*(v5 + 16) == 1)
    {
      v62 = sub_100EB14D4(*(v5 + 96), *(v5 + 104));
      if (v62 <= 0x18 && ((1 << v62) & 0x1028000) != 0)
      {
        HIDWORD(v102) = *(v5 + 32);
        bzero(&v90[8], 0xD30uLL);
        *v89 = v100;
        *&v89[16] = v101;
        *v90 = v102;
        v88 = v99;
        *buf = v98;
        *v85 = 6;
        v63 = (*(*v6 + 152))(v6, v85, buf, 1, 0xFFFFFFFFLL, 0);
        if (sub_1010E4A14(v63, v64))
        {
          v65 = v6[475];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1010E4A94;
          block[3] = &unk_102449A78;
          block[4] = v6;
          dispatch_async(v65, block);
        }
      }
    }

    v66 = v101;
    if (*&v101 != 0.0)
    {
      bzero(&buf[8], 0xD70uLL);
      *buf = v66;
      *v85 = 8;
      (*(*v6 + 152))(v6, v85, buf, 0, 0xFFFFFFFFLL, 0);
    }

    if (BYTE13(v100) == 1)
    {
      v67 = [[NSUUID alloc] initWithUUIDBytes:&v99 + 13];
      if (qword_1025D4450 != -1)
      {
        sub_101B2CFF8();
      }

      v68 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [v67 UUIDString];
        *buf = 138412290;
        *&buf[4] = v69;
        _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEFAULT, "Sending sessionId %@ to CLVO2MaxCloudKitManager", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B2D020(v67);
      }

      [objc_msgSend(objc_msgSend(v6[4] "vendor")];
    }

    (*(*v6[347] + 24))(v6[347], v5);
    (*(*v6[346] + 8))(v6[346], v5);
    sub_1012035CC((v6 + 444), v5, buf);
    if (v89[8] == 1)
    {
      if (v88)
      {
        if (qword_1025D4520 != -1)
        {
          sub_101B2D128();
        }

        v70 = qword_1025D4528;
        if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEFAULT))
        {
          *v85 = 134218240;
          *&v85[4] = *buf;
          *&v85[12] = 2048;
          *&v85[14] = *&buf[8];
          _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "Cycling Session Ended, ftp: %f confidence %f", v85, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B2D234();
        }

        if (BYTE1(v88) == 1)
        {
          if (qword_1025D4520 != -1)
          {
            sub_101B2D128();
          }

          v71 = qword_1025D4528;
          if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEFAULT))
          {
            *v85 = 134218240;
            *&v85[4] = *buf;
            *&v85[12] = 2048;
            *&v85[14] = *&buf[8];
            _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEFAULT, "new FTP will be written into HK: %f confidence %f", v85, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B2D33C();
          }

          v72 = objc_alloc_init(CLCyclingPowerHKWriter);
          *v85 = *buf;
          *&v85[16] = v88;
          v86 = *v89;
          [(CLCyclingPowerHKWriter *)v72 writeFTPToHK:v85];
        }
      }

      else
      {
        if (qword_1025D4520 != -1)
        {
          sub_101B2D128();
        }

        v73 = qword_1025D4528;
        if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
        {
          *v85 = 0;
          _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEBUG, "Cycling session ended but was not eligible for FTP calculation.", v85, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B2D150();
        }
      }
    }

    sub_10062E9A4(v6[344], v5);
  }

  else if (!*v3)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v7 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(v5 + 8);
      v9 = *(v5 + 12);
      v10 = *(v5 + 20);
      v11 = *(v5 + 24);
      v12 = *(v5 + 60);
      v13 = *(v5 + 64);
      v14 = *(v5 + 88);
      v15 = *(v5 + 152);
      v16 = *(v5 + 176);
      v17 = *(v5 + 180);
      v18 = *(v5 + 160);
      v19 = *(v5 + 164);
      v20 = *(v5 + 168);
      v21 = *(v5 + 172);
      v22 = *(v5 + 156);
      *buf = 67112704;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      *&buf[14] = 1024;
      LODWORD(v88) = v10;
      WORD2(v88) = 1024;
      *(&v88 + 6) = v11;
      WORD5(v88) = 1024;
      HIDWORD(v88) = v12;
      *v89 = 2048;
      *&v89[2] = v13;
      *&v89[10] = 2048;
      *&v89[12] = v14;
      *&v89[20] = 2048;
      *&v89[22] = v15;
      *&v89[30] = 1024;
      *v90 = v16;
      *&v90[4] = 1024;
      *&v90[6] = v17;
      *&v90[10] = 2048;
      *&v90[12] = v18;
      *&v90[20] = 2048;
      *&v90[22] = v19;
      *&v90[30] = 2048;
      *v91 = v20;
      *&v91[8] = 2048;
      *&v91[10] = v21;
      *&v91[18] = 2048;
      *&v91[20] = v22;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "ActivitySpectator,activity{State,%d,Confidence,%d,MountedState,%d,MountedConfidence,%d,exitState,%d,estExitTime,%f,startTime,%f},nataliFeatures{fVectorMagnitude,%f,fEpochType,%d,fStanding,%d,fMachineFrequency,%f,fRowStrokeFrequency,%f,fRowStrokeAmplitude,%f,fRowStrokePower,%f,fPushVectorMagnitude,%f}", buf, 0x7Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B2D444(v5);
    }

    if (*(v6 + 3448) == 1 && *(v6 + 424) == 1)
    {
      sub_1004A243C(v6[344] + 3296);
    }

    *(v6[344] + 4584) = sub_1000C3C58(v6 + 432, *v5);
    sub_10000EC00(__p, "CalorimetryProcessing");
    *&v103.var5.var5.var1[23] = off_1024CF5A8;
    *&v103.var5.var5.var1[47] = &v103.var5.var5.var1[23];
    sub_10100E218(buf, __p, &v103.var5.var5.var1[23], *(v6 + 3793));
    sub_10100E370(&v103.var5.var5.var1[23]);
    if (v78 < 0)
    {
      operator delete(__p[0]);
    }

    (**v6[346])(v6[346], v5);
    sub_10100E2D4(buf);
    v23 = *(v5 + 148);
    v24 = *(v5 + 164);
    *(v6 + 686) = *(v5 + 180);
    *(v6 + 339) = v23;
    *(v6 + 341) = v24;
    if (CFAbsoluteTimeGetCurrent() - *(v6 + 365) > 90.0 && *(v6 + 2928) == 1)
    {
      v25 = sub_10062BD40(v6[344], *(v6 + 358));
      if (v25 > 0.0)
      {
        *&v103.var5.var5.var1[7] = CMNatalimeterSetUserOnsetVo2max;
        *&v103.var5.var5.var1[15] = [NSNumber numberWithDouble:v25];
        sub_1010E2F50(v6, [NSDictionary dictionaryWithObjects:&v103.var5.var5.var1[15] forKeys:&v103.var5.var5.var1[7] count:1], 0);
      }

      *(v6 + 2928) = 0;
    }

    if (*(v5 + 208) == 1)
    {
      if (CLMotionActivity::isTypeCycling())
      {
        sub_1010E4120(v6);
      }
    }
  }
}

void sub_1000C547C(_Unwind_Exception *a1)
{
  if (STACK[0x6D8])
  {
    sub_100008080(STACK[0x6D8]);
  }

  _Unwind_Resume(a1);
}

void sub_1000C54CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000C559C(void *a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = a3.n128_f64[0];
  v7 = a1[3];
  v8 = a1[4];
  v9 = (v7 + 8 * (a1[6] >> 4));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 328 * (a1[6] & 0xFLL));
  }

  v11 = a4.n128_f64[0] + 1.0e-13;
  while (1)
  {
    if (v8 == v7)
    {
      v13 = 0;
    }

    else
    {
      v12 = a1[7] + a1[6];
      v13 = *(v7 + ((v12 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 328 * (v12 & 0xF);
    }

    if (v10 == v13)
    {
      break;
    }

    if (*v10 <= v11 && *v10 + 1.0e-13 > v5)
    {
      v16 = *(a2 + 8);
      v15 = *(a2 + 16);
      if (v16 >= v15)
      {
        v18 = 0x8F9C18F9C18F9C19 * ((v16 - *a2) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xC7CE0C7CE0C7CELL)
        {
          sub_10028C64C();
        }

        v20 = 0x8F9C18F9C18F9C19 * ((v15 - *a2) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x63E7063E7063E7)
        {
          v21 = 0xC7CE0C7CE0C7CELL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_1000CE5E8(a2, v21);
        }

        v22 = 328 * v18;
        memcpy(v22, v10, 0x148uLL);
        v17 = v22 + 328;
        v23 = *(a2 + 8) - *a2;
        v24 = (v22 - v23);
        memcpy(v24, *a2, v23);
        v25 = *a2;
        *a2 = v24;
        *(a2 + 8) = v17;
        *(a2 + 16) = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        memcpy(*(a2 + 8), v10, 0x148uLL);
        v17 = v16 + 328;
      }

      *(a2 + 8) = v17;
    }

    v10 += 41;
    if ((v10 - *v9) == 5248)
    {
      v26 = v9[1];
      ++v9;
      v10 = v26;
    }

    v7 = a1[3];
    v8 = a1[4];
  }
}

uint64_t sub_1000C57A0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 49);
  }

  else
  {
    v1 = *(a1 + 8) > 0.0;
  }

  return v1 & 1;
}

__n128 sub_1000C57CC(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 184);
  *(a2 + 32) = *(a1 + 216);
  result = *(a1 + 200);
  *(a2 + 16) = result;
  return result;
}

void *sub_1000C5804(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 101 - v3;
      v6 = &v2[-(v5 / 0x66)];
      *result = v6;
      v4 = *v6 + 40 * (102 * (v5 / 0x66) - v5) + 4040;
    }

    else
    {
      *result = &v2[v3 / 0x66];
      v4 = v2[v3 / 0x66] + 40 * (v3 % 0x66);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1000C58B0(uint64_t a1, uint64_t a2)
{
  sub_1000C590C(a1 + 48, 1, *(a2 + 80));
  v4 = *(a2 + 80) + -300.0;

  sub_1000C590C(a1 + 216, 1, v4);
}

void sub_1000C590C(uint64_t a1, int a2, double a3)
{
  v4 = *(a1 + 80);
  if (v4 == 0.0)
  {
    return;
  }

  if (*(a1 + 32))
  {
    v6 = 1;
  }

  else
  {
    v6 = a2 == 2;
  }

  v7 = a3 + -7.0;
  if (v6)
  {
    v7 = a3;
  }

  v8 = v7 - v4;
  v25 = 7;
  strcpy(v23, "unknown");
  if (a2 == 2)
  {
    v9 = &v23[11];
    v25 = 11;
    qmemcpy(v23, "gaitMetrics", 11);
  }

  else
  {
    v9 = &v24;
    if (a2 == 1)
    {
      v25 = 14;
      v10 = "motionActivity";
    }

    else
    {
      if (a2)
      {
        goto LABEL_16;
      }

      v25 = 14;
      v10 = "stepCountEntry";
    }

    *v23 = *v10;
    *&v23[6] = *(v10 + 6);
  }

  *v9 = 0;
LABEL_16:
  if (v8 >= *(a1 + 24))
  {
    if (qword_1025D4420 != -1)
    {
      sub_1019EB98C();
    }

    v11 = qword_1025D4428;
    if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 63) < 0)
      {
        sub_100007244(__p, *(a1 + 40), *(a1 + 48));
        if (__p[23] >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = *__p;
        }

        v13 = v23;
        if (v25 < 0)
        {
          v13 = *v23;
        }
      }

      else
      {
        *&__p[16] = *(a1 + 56);
        *__p = *(a1 + 40);
        v12 = __p;
        if (__p[23] < 0)
        {
          v12 = *__p;
        }

        v13 = v23;
      }

      v14 = *(a1 + 72);
      *buf = 136446978;
      v31 = v12;
      v32 = 2050;
      v33 = v14;
      v34 = 2082;
      v35 = v13;
      v36 = 2050;
      v37 = a3;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "BoutDetector (%{public}s): Ending bout (%{public}.2f) due to maxTimeSinceEndOfBout from %{public}s time (%{public}.2f)", buf, 0x2Au);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4420 != -1)
      {
        sub_1019EBC4C();
      }

      v15 = qword_1025D4428;
      if (*(a1 + 63) < 0)
      {
        sub_100007244(__dst, *(a1 + 40), *(a1 + 48));
      }

      else
      {
        *__dst = *(a1 + 40);
        v22 = *(a1 + 56);
      }

      v16 = __dst;
      if (v22 < 0)
      {
        v16 = __dst[0];
      }

      v17 = *(a1 + 72);
      v18 = v23;
      if (v25 < 0)
      {
        v18 = *v23;
      }

      *__p = 136446978;
      *&__p[4] = v16;
      *&__p[12] = 2050;
      *&__p[14] = v17;
      *&__p[22] = 2082;
      v27 = v18;
      v28 = 2050;
      v29 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 1, "BoutDetector (%{public}s): Ending bout (%{public}.2f) due to maxTimeSinceEndOfBout from %{public}s time (%{public}.2f)", __p, 42);
      v20 = v19;
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__dst[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLMobility::BoutDetector::checkBoutEndWithPacketTime(CFAbsoluteTime, PacketType)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    sub_100AF42B8(a1, 1);
    if (v25 < 0)
    {
      operator delete(*v23);
    }
  }
}

void sub_1000C5CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C5CF0(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B1207C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLMotionStateObserver::onMotionStateMediatorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B12090();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateObserver::onMotionStateMediatorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  (*(*a4 + 29))(a4, a2, a3);
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

double sub_1000C5EDC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*a2)
  {
    result = *a3;
    v4 = *(a3 + 8);
    v5 = *(a3 + 108);
    v6 = *(a3 + 72);
    *(a1 + 146) = *a3;
    *(a1 + 154) = v4;
    *(a1 + 158) = v5;
    *(a1 + 162) = v6;
  }

  return result;
}

void sub_1000C5F7C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8392);
  if (v3)
  {
    sub_100C1C200(v3, a2);
  }

  if (qword_1025D4760 != -1)
  {
    sub_101900230();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[3];
    v9 = *(a2 + 48);
    v10 = a2[4];
    v11 = a2[5];
    v12 = 134219520;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v10;
    v22 = 1024;
    v23 = v9;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Update reached MotionStateMediator, startTime, %f, mctTimestampSec, %f type, %ld, confidence, %ld, estimatedStateProbabilityOutdoor, %f, isAstronomicalDaytime, %d, daylightConfidence, %ld", &v12, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900244(a2);
  }
}

id sub_1000C6128(int a1, unsigned int *a2, void *__src, void *a4)
{
  v5 = *a2;
  memcpy(__dst, __src, sizeof(__dst));
  return [a4 onMotionStateMediatorNotification:v5 data:__dst];
}

void sub_1000C61E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  *(a1 + 2224) = *a2;
  if (*(a1 + 2232) == 0.0)
  {
    *(a1 + 2232) = v5;
  }

  v107 = 0u;
  v108 = 0u;
  v106 = v5;
  LODWORD(v107) = *(a2 + 52);
  *(&v107 + 1) = *(a2 + 40);
  *&v108 = *(a2 + 32);
  BYTE8(v108) = *(a2 + 48);
  sub_1000C6DD8((a1 + 2248), &v106);
  *(a1 + 2376) = *(a1 + 2368);
  v6 = *(a1 + 26);
  if (*(a1 + 28) == v6)
  {
    sub_1000C6800(a1, *(a1 + 24 * *(a1 + 24) + 32));
    v6 = *(a1 + 26);
  }

  v104 = 0;
  v103 = 0;
  v105 = 0;
  if (v6)
  {
    v7 = *(a1 + 24) + v6 - 1;
    v8 = *(a1 + 28);
    if (v7 < v8)
    {
      v8 = 0;
    }

    v9 = *(a1 + 24 * (v7 - v8) + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(**(*(a1 + 2392) + 24) + 32))(*(*(a1 + 2392) + 24));
  v11.n128_u64[0] = *a2;
  v12.n128_u64[0] = v9;
  sub_1000C559C(v10, &v103, v12, v11);
  v13 = v103;
  v29 = v104;
  if (v103 != v104)
  {
    v14 = a1 + 32;
    do
    {
      *(&v100 + 1) = v13[3];
      v101 = *(v13 + 56);
      *&v100 = *v13;
      v30 = xmmword_101C76220;
      v39 = 0;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      memset(v38, 0, sizeof(v38));
      v40 = 0xBFF0000000000000;
      v41 = 0;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v42 = 0xBFF0000000000000;
      v63 = 0xBFF0000000000000;
      v64 = 0;
      v65 = 0xBFF0000000000000;
      v76 = 0;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      memset(v75, 0, sizeof(v75));
      v77 = xmmword_101C76220;
      v78 = 0;
      v79 = 0;
      v80 = 0x80000000800000;
      v81 = 0;
      v82 = 0;
      v83 = xmmword_101C78410;
      v84 = 0x80000000800000;
      v85 = 0xBFF0000000000000;
      memset(v86, 0, sizeof(v86));
      v87 = 0xBFF0000000000000;
      memset(v88, 0, sizeof(v88));
      v89 = 0xBFF0000000000000;
      v90 = 0u;
      v91 = 0u;
      v92 = 0;
      v93 = 0xBFF0000000000000;
      v94 = 0x600000006;
      __p = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0xBFF0000000000000;
      v99 = 0xBFF0000000000000;
      v15 = (*(**(*(a1 + 2392) + 24) + 16))(*(*(a1 + 2392) + 24));
      sub_1000BB630(v15, &v30, *v13);
      v102 = DWORD2(v31);
      sub_1000CE644((a1 + 24), &v100);
      if (*(a1 + 28) == *(a1 + 26))
      {
        for (i = 2160; i != 2224; i += 8)
        {
          if ((sub_1000CE6B0(*(a1 + i), (a1 + 24)) & 1) != 0 && *(v14 + 24 * *(a1 + 24)) >= v17)
          {
            v20 = *(a1 + i);
            if (*(v20 + 72))
            {
              sub_1000CE828(v20 + 48, v17);
            }
          }
        }

        v19.n128_u64[0] = *(a1 + 2296);
        v18.n128_u64[0] = *(v14 + 24 * *(a1 + 24));
        if (v19.n128_f64[0] > v18.n128_f64[0] && *(a1 + 2368) == *(a1 + 2376))
        {
          *buf = *(a1 + 2336);
          v113[0] = v19.n128_f64[0];
          sub_1000CFC60(a1, buf, v18, v19);
        }

        v28 = *(a1 + 16);
        if (qword_1025D4760 != -1)
        {
          sub_101B82360();
        }

        v21 = qword_1025D4768;
        if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
        {
          v22 = *(v14 + 24 * *(a1 + 24));
          *buf = 67109376;
          *&buf[4] = v28;
          LOWORD(v113[0]) = 2048;
          *(v113 + 2) = v22;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "DaylightEstimator,state,%d,startTime,%f", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B82388(buf);
          v23 = *(v14 + 24 * *(a1 + 24));
          v109[0] = 67109376;
          v109[1] = v28;
          v110 = 2048;
          v111 = v23;
          LODWORD(v26) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 1, "DaylightEstimator,state,%d,startTime,%f", v109, v26);
          v25 = v24;
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<CLDaylightEstimator::Result> CLDaylightEstimator::update(const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v24);
          if (v25 != buf)
          {
            free(v25);
          }
        }
      }

      if (__p)
      {
        v96 = __p;
        operator delete(__p);
      }

      if (v91)
      {
        *(&v91 + 1) = v91;
        operator delete(v91);
      }

      *buf = v86;
      sub_1000B96B4(buf);
      v13 += 41;
    }

    while (v13 != v29);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1004BF900(a3, *(a1 + 2368), *(a1 + 2376), (*(a1 + 2376) - *(a1 + 2368)) >> 4);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_1000C67BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_100A3AFA0(&a29);
  v30 = STACK[0x470];
  if (STACK[0x470])
  {
    STACK[0x478] = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void *sub_1000C6800(uint64_t a1, double a2)
{
  sub_1000C6A84(a1, *(a1 + 2344), a2);
  v4 = *(a1 + 2344);
  if (v4 < a2)
  {
    v4 = a2;
  }

  *(a1 + 2344) = v4;
  v5 = *(a1 + 2256);
  v6 = *(a1 + 2280);
  v7 = (v5 + 8 * (v6 / 0x66));
  if (*(a1 + 2264) == v5)
  {
    v10 = 0;
  }

  else
  {
    v8 = *(v5 + 8 * (v6 / 0x66));
    v9 = &v8[40 * (v6 % 0x66)];
    v10 = (*(v5 + 8 * ((*(a1 + 2288) + v6) / 0x66)) + 40 * ((*(a1 + 2288) + v6) % 0x66));
    if (v9 != v10)
    {
      while (*v9 > a2)
      {
        v9 = (v9 + 40);
        if (v9 - v8 == 4080)
        {
          v11 = v7[1];
          ++v7;
          v8 = v11;
          v9 = v11;
        }

        if (v9 == v10)
        {
          goto LABEL_24;
        }
      }

      sub_1000CFB4C(a1, v9);
      v12 = *(a1 + 2328);
      if (!v12)
      {
LABEL_30:
        sub_1000CF05C();
      }

      v13 = *v9;
      v31 = (*(*v12 + 48))(v12, v9);
      v32 = v14.n128_u64[0];
      v15.n128_f64[0] = v13;
      sub_1000CFC60(a1, &v31, v15, v14);
    }

    if (v9 != v10)
    {
      v16 = v9;
      v17 = v7;
      while (1)
      {
        v16 = (v16 + 40);
        if ((v16 - *v17) == 4080)
        {
          v18 = v17[1];
          ++v17;
          v16 = v18;
        }

        if (v16 == v10)
        {
          break;
        }

        if (*v16 > a2)
        {
          v23 = *v16;
          v24 = v16[1];
          *(v9 + 4) = *(v16 + 4);
          *v9 = v23;
          v9[1] = v24;
          v9 = (v9 + 40);
          if ((v9 - *v7) == 4080)
          {
            v25 = v7[1];
            ++v7;
            v9 = v25;
          }
        }

        else
        {
          sub_1000CFB4C(a1, v16);
          v19 = *(a1 + 2328);
          if (!v19)
          {
            goto LABEL_30;
          }

          v20 = *v16;
          v31 = (*(*v19 + 48))(v19, v16);
          v32 = v21.n128_u64[0];
          v22.n128_f64[0] = v20;
          sub_1000CFC60(a1, &v31, v22, v21);
        }
      }

      v10 = v9;
    }
  }

LABEL_24:
  v26 = *(a1 + 2280) + *(a1 + 2288);
  v27 = *(a1 + 2256);
  v28 = (v27 + 8 * (v26 / 0x66));
  if (*(a1 + 2264) == v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = (*v28 + 40 * (v26 % 0x66));
  }

  return sub_1000C6E90((a1 + 2248), v7, v10, v28, v29);
}

unsigned __int16 *sub_1000C6A84(unsigned __int16 *result, double a2, double a3)
{
  if (result[13])
  {
    v5 = result;
    v6 = 0;
    v7 = (result + 1226);
    do
    {
      result = sub_1000C6BD8(v5 + 12, v6);
      if (*result >= a2)
      {
        result = sub_1000C6BD8(v5 + 12, v6);
        if (*result <= a3)
        {
          v8 = *(sub_1000C6BD8(v5 + 12, v6) + 4) != 0;
          v9.i32[0] = 1;
          v9.i32[1] = v8;
          *(v5 + 305) = vadd_s32(*(v5 + 1220), v9);
          v10 = *(sub_1000C6BD8(v5 + 12, v6) + 5);
          *v7 = vsub_s32(*v7, vceq_s32(vdup_n_s32(v10), 0x100000080));
          v11 = 1;
          if (v10 != 256 && v10 != 512)
          {
            v11 = v10 == 4096;
          }

          *(v5 + 612) += v11;
          result = sub_1000C6BD8(v5 + 12, v6);
          v12 = *result >= *(v5 + 294) && *result <= *(v5 + 295);
          *(v5 + 615) += v12;
        }
      }

      ++v6;
    }

    while (v6 < v5[13]);
  }

  return result;
}

unsigned __int16 *sub_1000C6BD8(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_1024DA608);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_1024DA608);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLDaylightEstimator::StepsAndActivity>::operator[](const size_t) const [T = CLDaylightEstimator::StepsAndActivity]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

__n128 sub_1000C6DD8(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10125D864(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void *sub_1000C6E90(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 102 * (a4 - a2) - 0x3333333333333333 * (&a5[-*a4] >> 3) + 0x3333333333333333 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x66));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 40 * (v7 % 0x66));
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 102 * (a2 - v9) - 0x3333333333333333 * (&a3[-*a2] >> 3) + 0x3333333333333333 * (&v10[-*v9] >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x66);
  v24[0].n128_u64[1] = v10;
  sub_1000C5804(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000C5804(v24, v6);
      sub_100F9DCA0(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000C5804(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x66));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 40 * (v14 % 0x66));
      }

      v24[0] = v12;
      sub_1000CFCA0(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x66));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 40 * (v19 % 0x66);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000C5804(v24, v11);
  return v24[0].n128_u64[0];
}

__n128 sub_1000C70F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 80);
  return result;
}

uint64_t sub_1000C7110(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B1F8(a1, a2);
  sub_10000B230(v9);
  sub_10000B324(v4, v9[0].i64);
  v10 = 22;
  v9[0].i32[0] = 22;
  v5 = sub_10000AD98(&v10);
  v9[0].i32[1] = v5;
  v7 = sub_10000AE98(v5, v6);
  sub_1000C71C0(v7, v9, (a1 + 5220), a2);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 48))(result, a2);
  }

  return result;
}

void sub_1000C71C0(uint64_t a1, int32x4_t *a2, unsigned int *a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a2))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a2->i32[0])
        {
          v7 = a2->i32[1] == 0;
        }

        else
        {
          v7 = 1;
        }

        v8 = !v7;
        if (*a3)
        {
          v9 = a3[1] == 0;
        }

        else
        {
          v9 = 1;
        }

        v10 = !v9;
        *buf = 67109376;
        v73 = v8;
        v74 = 1024;
        LODWORD(v75) = v10;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLOutdoor_Type,silo entry invalid,from_valid,%d,to_valid,%d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a2->i32[0])
        {
          v11 = a2->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a3)
        {
          v13 = a3[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        v67[0] = 67109376;
        v67[1] = v12;
        v68 = 1024;
        v69 = v14;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLOutdoor_Type,silo entry invalid,from_valid,%d,to_valid,%d", v67, 14);
        v16 = v15;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    else
    {
      v19 = sub_10000AED0();
      v21 = sub_10000B1F8(v19, v20);
      sub_10000AED4(v21, v57);
      v56 = 4;
      sub_10000AFE4(v67, &v56, a2, a3, v57);
      v71 |= 2u;
      v22 = v70;
      if (!v70)
      {
        operator new();
      }

      *(v70 + 492) |= 0x800u;
      v23 = *(v22 + 352);
      if (!v23)
      {
        operator new();
      }

      *(v23 + 200) |= 0x20000u;
      v24 = *(v23 + 136);
      if (!v24)
      {
        operator new();
      }

      *(v24 + 28) |= 1u;
      *(v24 + 8) = -1;
      if (!sub_100437D64(1u))
      {
        __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13205, "::CLP::LogEntry::PrivateData::OutdoorServiceNotification_NotificationType_IsValid(value)");
      }

      v25 = *(v24 + 28);
      *(v24 + 12) = 1;
      *(v24 + 28) = v25 | 6;
      v26 = *(v24 + 16);
      if (!v26)
      {
        operator new();
      }

      *(v26 + 20) |= 1u;
      v27 = *(v26 + 8);
      if (!v27)
      {
        operator new();
      }

      sub_1000C7A24(a4, v27);
      v28 = sub_10000BFC0(a1, v67);
      if (*(a1 + 8) == 1)
      {
        v29 = v28;
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        v30 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v31 = &v58;
          sub_101322EE0(&v56, &v58);
          if (SBYTE3(v62) < 0)
          {
            v31 = v58;
          }

          LODWORD(v49[0]) = a2->i32[0];
          v32 = v54;
          sub_1013230DC(v49, v54);
          if (v55 < 0)
          {
            v32 = v54[0];
          }

          v51 = *a3;
          v33 = __p;
          v34 = sub_1013230DC(&v51, __p);
          if (v53 < 0)
          {
            v33 = __p[0];
          }

          v36 = sub_10000B1F8(v34, v35);
          v37 = sub_100125220(v36);
          *buf = 67110146;
          v73 = v29;
          v74 = 2080;
          v75 = v31;
          v76 = 2080;
          v77 = v32;
          v78 = 2080;
          v79 = v33;
          v80 = 2050;
          v81 = v37;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLOutdoor_Type,success,%d,message_type,%s,from,%s,to,%s,propagation_us,%{public}.3f", buf, 0x30u);
          if (v53 < 0)
          {
            operator delete(__p[0]);
          }

          if (v55 < 0)
          {
            operator delete(v54[0]);
          }

          if (SBYTE3(v62) < 0)
          {
            operator delete(v58);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D8D04(buf);
          v38 = qword_1025D4608;
          v39 = v54;
          sub_101322EE0(&v56, v54);
          if (v55 < 0)
          {
            v39 = v54[0];
          }

          v51 = a2->i32[0];
          v40 = __p;
          sub_1013230DC(&v51, __p);
          if (v53 < 0)
          {
            v40 = __p[0];
          }

          v48 = *a3;
          v41 = v49;
          v42 = sub_1013230DC(&v48, v49);
          if (v50 < 0)
          {
            v41 = v49[0];
          }

          v44 = sub_10000B1F8(v42, v43);
          v45 = sub_100125220(v44);
          LODWORD(v58) = 67110146;
          HIDWORD(v58) = v29;
          v59 = 2080;
          v60 = v39;
          v61 = 2080;
          v62 = v40;
          v63 = 2080;
          v64 = v41;
          v65 = 2050;
          v66 = v45;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v38, 2, "#locctl,#rec,recordMessage,CLOutdoor_Type,success,%d,message_type,%s,from,%s,to,%s,propagation_us,%{public}.3f", &v58, 48);
          v47 = v46;
          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          if (v53 < 0)
          {
            operator delete(__p[0]);
          }

          if (v55 < 0)
          {
            operator delete(v54[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v47);
          if (v47 != buf)
          {
            free(v47);
          }
        }
      }

      sub_10000CE1C(v67);
    }
  }
}

void *sub_1000C79A4(void *result)
{
  *result = &off_1024B47E0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1000C79C8(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &off_1024B4768;
  return result;
}

double sub_1000C79EC(uint64_t a1)
{
  *a1 = off_1024546D8;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 37) = 0;
  return result;
}

void sub_1000C7A24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 56) |= 3u;
    *(a2 + 8) = *a1;
    v4 = sub_1000C7C58((a1 + 16));
    if (!sub_10041ECEC(v4))
    {
      sub_101882F4C();
    }

    *(a2 + 56) |= 4u;
    *(a2 + 24) = v4;
    v5 = sub_1000C7B70((a1 + 24));
    if (!sub_10041ECF8(v5))
    {
      sub_101882F78();
    }

    v6 = *(a2 + 56);
    *(a2 + 28) = v5;
    v7 = *(a1 + 32);
    *(a2 + 56) = v6 | 0x18;
    *(a2 + 32) = v7;
    v8 = sub_1000C7B70((a1 + 40));
    if (!sub_10041ECF8(v8))
    {
      sub_101882FA4();
    }

    v9 = *(a2 + 56);
    *(a2 + 40) = v8;
    *(a2 + 44) = *(a1 + 48);
    v10 = *(a1 + 52);
    *(a2 + 56) = v9 | 0xE0;
    *(a2 + 48) = v10;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v11 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "ConvertOutdoorUpdateToProtobuf,invalid pMsg pointer", v12, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B8C748();
    }
  }
}

unint64_t sub_1000C7B70(unint64_t *a1)
{
  result = *a1;
  if (result >= 4)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
    {
      v4 = *a1;
      v5[0] = 67240192;
      v5[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ConvertIndoorOutdoorConfidenceTypeToProtobuf,unhandled type,%{public}d", v5, 8u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B8C654(a1);
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000C7C58(unint64_t *a1)
{
  result = *a1;
  if (result >= 3)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
    {
      v4 = *a1;
      v5[0] = 67240192;
      v5[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ConvertIndoorOutdoorTypeToProtobuf,unhandled type,%{public}d", v5, 8u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B8C560(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C7D40(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_102637ED0 + 8);
    }

    v5 = sub_1000C7EAC(v4, a2);
    v7 = v5;
    if (v5 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, v6);
    }

    else
    {
      v8 = 1;
    }

    result = (v7 + v8 + 1);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}