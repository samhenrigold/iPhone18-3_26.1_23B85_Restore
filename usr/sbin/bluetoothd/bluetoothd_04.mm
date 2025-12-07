uint64_t sub_100042224(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042234(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042254(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042274(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042284(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042294(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000422A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}

__n128 sub_1000422B8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

__n128 sub_1000422C4(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 sub_1000422E8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void *sub_10004230C(void *result, void *a2)
{
  result[6] = result + 6;
  result[7] = result + 6;
  result[8] = 0;
  v2 = a2[8];
  if (v2)
  {
    v4 = a2[6];
    v3 = a2[7];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[6];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[6] = v4;
    *(v4 + 8) = result + 6;
    result[8] = v2;
    a2[8] = 0;
  }

  return result;
}

__n128 sub_100042354(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100042368(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042378(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}

uint64_t sub_10004238C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10004239C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000423AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_1000423BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = v2;
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  v6 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v6;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  v7 = *(a2 + 160);
  v8 = *(a2 + 176);
  v9 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v9;
  *(a1 + 160) = v7;
  *(a1 + 176) = v8;
  result = *(a2 + 224);
  v11 = *(a2 + 240);
  v12 = *(a2 + 256);
  *(a1 + 267) = *(a2 + 267);
  *(a1 + 240) = v11;
  *(a1 + 256) = v12;
  *(a1 + 224) = result;
  return result;
}

uint64_t sub_100042410(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_10004243C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  *(&a2[3] + 8) = 0uLL;
  a2[3].n128_u64[0] = 0;
  return result;
}

void *sub_100042458(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

__n128 sub_100042494(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = result;
  return result;
}

void *sub_1000424A8(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void *sub_1000424E4(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

__n128 sub_100042520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  result = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100042544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004268C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t sub_100043158(int *a1)
{
  result = pthread_mutex_trylock(&stru_100B5AC18);
  v3 = *a1;
  if (result)
  {
    if (v3 == dword_100B5AD64)
    {
      if (a1[1])
      {
        sub_1008129CC(v4);
      }

      *(a1 + 4) = 1;
    }

    else
    {
      *a1 = dword_100B5AD64;
      *(a1 + 4) = 0;
    }
  }

  else
  {
    if (v3 == dword_100B5AD64)
    {
      dispatch_suspend(qword_100B5AD68);
      dword_100B5AD64 = 0;
    }

    else
    {
      *a1 = dword_100B5AD64;
      *(a1 + 4) = 0;
    }

    return pthread_mutex_unlock(&stru_100B5AC18);
  }

  return result;
}

uint64_t sub_10004325C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6, uint64_t a7, uint64_t a8, void *a9, _DWORD *a10, _BYTE *a11, uint64_t a12, unsigned int a13, unsigned __int16 a14, unsigned __int8 a15, void *a16)
{
  v16 = a8;
  v109 = a12;
  v110 = a13;
  v112 = a15;
  v111 = a14;
  v100 = a2;
  obj = a6;
  v20 = a6;
  v104 = a9;
  v101 = a16;
  v103 = sub_10000EE80(v101, v21);
  v23 = *(a1 + 224);
  v24 = a1;
  v25 = (a1 + 232);
  if (v23 == v25)
  {
LABEL_24:
    v107 = 0;
    v34 = a7;
    v35 = *(a7 + 23);
    if (v35 < 0)
    {
      v36 = *a7;
      v35 = *(a7 + 8);
    }

    else
    {
      v36 = a7;
    }

    if (v35 >= 20)
    {
      v37 = (v36 + v35);
      v38 = v36;
      do
      {
        v39 = memchr(v38, 99, v35 - 19);
        if (!v39)
        {
          break;
        }

        v40 = *v39 == 0x6C7070612E6D6F63 && v39[1] == 0x6F7465756C622E65;
        if (v40 && *(v39 + 4) == 1684567151)
        {
          if (v39 != v37 && (v39 - v36) != -1)
          {
            v42 = 3;
            goto LABEL_43;
          }

          break;
        }

        v38 = v39 + 1;
        v35 = v37 - v38;
      }

      while (v37 - v38 >= 20);
    }

    v42 = 4;
LABEL_43:
    v43 = v24;
    if (qword_100B50B88 != -1)
    {
      sub_100823874();
    }

    if (sub_100044414(qword_100B50B80, a7, &v107, v42))
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100823AB0();
      }

      goto LABEL_126;
    }

    if (qword_100B50B88 != -1)
    {
      sub_100823874();
    }

    v27 = sub_1000117DC(qword_100B50B80, v107);
    (**v103)(v103, v27, v20, a5, v112);
    if (v109 == 1)
    {
      if (qword_100B512C8 != -1)
      {
        sub_100823A88();
      }

      v44 = sub_10000EE78(off_100B512C0);
      if (!v44)
      {
        v45 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v27, buf);
          if (buf[23] >= 0)
          {
            v50 = buf;
          }

          else
          {
            v50 = *buf;
          }

          *v119 = 136446210;
          *&v119[4] = v50;
          v47 = "Bluetooth is powered off - notifying session %{public}s";
LABEL_72:
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v47, v119, 0xCu);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

LABEL_74:
        (*(*v103 + 24))(v103, v27, v44 != 0);
        goto LABEL_75;
      }

      if (*(v24 + 179) == 1)
      {
        v45 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v27, buf);
          if (buf[23] >= 0)
          {
            v46 = buf;
          }

          else
          {
            v46 = *buf;
          }

          *v119 = 136446210;
          *&v119[4] = v46;
          v47 = "Bluetooth is in denylist mode - show LE_DENYLIST_ENABLED alert for %{public}s";
          goto LABEL_72;
        }

        goto LABEL_74;
      }
    }

LABEL_75:
    v51 = (*(*v103 + 48))(v103, v27, v16 == 0);
    if (!v51 || (v109 & 0x100) != 0)
    {
      v53 = 0;
LABEL_106:
      v67 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        if (v16)
        {
          v68 = "peripheral";
        }

        else
        {
          v68 = "central";
        }

        sub_100018384(v27, v119);
        v69 = v122;
        v70 = *v119;
        sub_10005D234(&v109);
        v71 = v119;
        v72 = "on";
        if (v69 < 0)
        {
          v71 = v70;
        }

        *buf = 136447490;
        *&buf[4] = v68;
        if (v104)
        {
          v73 = "on";
        }

        else
        {
          v73 = "off";
        }

        if (!v53)
        {
          v72 = "off";
        }

        *&buf[12] = 2082;
        *&buf[14] = v71;
        p_p = &__p;
        if (v106 < 0)
        {
          p_p = __p;
        }

        *&buf[22] = 2082;
        *&buf[24] = v72;
        *v114 = 2082;
        *&v114[2] = v73;
        v115 = 2114;
        v116 = v104;
        v117 = 2080;
        v118 = p_p;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Registering %{public}s session %{public}s with backgrounding: %{public}s, persistence: %{public}s (CBSR) restoreID: %{public}@ %s", buf, 0x3Eu);
        if (v106 < 0)
        {
          operator delete(__p);
        }

        v43 = v24;
        v34 = a7;
        if (v122 < 0)
        {
          operator delete(*v119);
        }
      }

      if (sub_10005C8C0(v43, v27, v20, v16, v53))
      {
        (*(*v103 + 8))(v103, v27, v20);
        if (qword_100B50B88 == -1)
        {
LABEL_125:
          sub_100079604(qword_100B50B80, v107);
LABEL_126:
          v27 = 0;
          goto LABEL_127;
        }

LABEL_192:
        sub_100823874();
        goto LABEL_125;
      }

      if (qword_100B512F8 != -1)
      {
        sub_100823948();
      }

      v76 = sub_10005D040(off_100B512F0, v27, v16);
      v77 = v76;
      if (!v76)
      {
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_100823BC0();
        }

        (*(*v103 + 8))(v103, v27, v20);
        if (qword_100B50B88 == -1)
        {
          goto LABEL_125;
        }

        goto LABEL_192;
      }

      *(v76 + 120) = a3;
      objc_storeStrong((v76 + 88), obj);
      if (qword_100B54208 != -1)
      {
        sub_100823B20();
      }

      *(v77 + 128) = sub_10005E5A8(qword_100B54200, v20);
      objc_storeStrong((v77 + 96), a9);
      if ((*(v43 + 425) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
        {
          sub_100823B48();
        }

        v78 = *(v77 + 96);
        *(v77 + 96) = 0;
      }

      if (*(v77 + 96))
      {
        *(v43 + 178) = 1;
      }

      *(v77 + 28) = (*(*v103 + 56))(v103, v27) != 32;
      *(v77 + 27) = BYTE2(v109);
      *(v77 + 36) = *(&v109 + 3);
      *(v77 + 184) = BYTE6(v109);
      *(v77 + 25) = v110;
      *(v77 + 26) = 0;
      objc_storeStrong((v77 + 104), a2);
      *(v77 + 73) = v112;
      v79 = (*(*v77 + 16))(v77);
      if (v79 == 1)
      {
        v79 = _os_feature_enabled_impl();
        if (v79)
        {
          *(v77 + 240) = HIBYTE(v109);
        }

        else
        {
          v79 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR);
          if (v79)
          {
            sub_100823B84();
          }
        }
      }

      if (!v16)
      {
        *(v77 + 358) = HIBYTE(v111);
        sub_1003AC374(v79, v77, v109, v110 | ((v111 | (v112 << 16)) << 32));
      }

      if (*(v34 + 23) < 0)
      {
        v34 = *v34;
      }

      v85 = [NSString stringWithUTF8String:v34];
      sub_10005E880(v43, v77, v27, v85, BYTE5(v109), 0);
      v86 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v27, v119);
        v87 = v122 >= 0 ? v119 : *v119;
        v88 = *(v43 + 179);
        *buf = 136447234;
        *&buf[4] = v87;
        *&buf[12] = 1024;
        *&buf[14] = BYTE3(v109);
        *&buf[18] = 1024;
        *&buf[20] = BYTE4(v109);
        *&buf[24] = 1024;
        *&buf[26] = v88;
        *&buf[30] = 1024;
        *v114 = BYTE6(v109);
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Session %{public}s : needsRestrictedStateOperation = %d, powerOnInRestrictedState = %d , denylistMode = %d, receivesControllerBTClockEvents=%d ", buf, 0x24u);
        if (v122 < 0)
        {
          operator delete(*v119);
        }
      }

      if ((v110 & 0x100) != 0 || (v110 & 0x1000000) != 0)
      {
        goto LABEL_176;
      }

      if (BYTE3(v109) != 1)
      {
        goto LABEL_175;
      }

      if (qword_100B512C8 != -1)
      {
        sub_100823A88();
      }

      v89 = sub_10000EE78(off_100B512C0);
      if (v89 == 1)
      {
        *a11 = *(v43 + 179);
LABEL_177:
        *a10 = v89;
        v90 = sub_10000E92C();
        sub_100007E30(buf, "Sentinel");
        sub_100007E30(v119, "LEConnection");
        v91 = (*(*v90 + 72))(v90, buf, v119, v77 + 44);
        if (v122 < 0)
        {
          operator delete(*v119);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v91)
        {
          v92 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            v93 = *(v77 + 44);
            *buf = 67109120;
            *&buf[4] = v93;
            _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Sentinel LE Connection Enabled Override %d", buf, 8u);
          }
        }

        v94 = [*(v43 + 320) objectForKeyedSubscript:*(v77 + 88)];
        v95 = v94;
        if (HIBYTE(v111) == 1 && (!v94 || ([v94 containsObject:*(v77 + 104)] & 1) == 0))
        {
          sub_1003AC6F4(v43, *(v77 + 88), *(v77 + 104));
        }

        goto LABEL_127;
      }

      if ((v109 & 0x1000000) == 0)
      {
LABEL_175:
        if (*(v43 + 179))
        {
LABEL_176:
          v89 = 0;
          goto LABEL_177;
        }
      }

      if (qword_100B512C8 != -1)
      {
        sub_100823A88();
      }

      v89 = sub_10000EE78(off_100B512C0);
      goto LABEL_177;
    }

    if (v16)
    {
      if (v16 != 1)
      {
LABEL_105:
        v53 = 1;
        goto LABEL_106;
      }

      v54 = sub_10000F034(v51, v52);
      v55 = 10;
    }

    else
    {
      v54 = sub_10000F034(v51, v52);
      v55 = 9;
    }

    (*(*v54 + 664))(v54, v20, v55);
    goto LABEL_105;
  }

  *&v22 = 136446466;
  v96 = v22;
  while (1)
  {
    v27 = v23[4];
    v26 = v23[5];
    if (*(v26 + 120) == a3)
    {
      v28 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
      {
        sub_100018384(v27, buf);
        v33 = buf;
        if (buf[23] < 0)
        {
          v33 = *buf;
        }

        *v119 = v96;
        *&v119[4] = v33;
        v120 = 2114;
        v121 = v20;
        _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Duplicate check-in message from session %{public}s in application %{public}@", v119, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    if ([*(v26 + 88) isEqualToString:{v20, v96}])
    {
      if (!*(v26 + 120) && *(v26 + 96))
      {
        v29 = qword_100BCE9E0;
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(v26 + 88);
          *buf = 138543362;
          *&buf[4] = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Starting timer for a dead session to clean up leaked prior session for %{public}@", buf, 0xCu);
        }

        sub_1003AC3DC(v24, *(v26 + 88), 15);
      }

      if ([*(v26 + 96) isEqualToString:v104] && (*(*v26 + 16))(v26) == v16)
      {
        break;
      }
    }

    v31 = v23[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      do
      {
        v32 = v23[2];
        v40 = *v32 == v23;
        v23 = v32;
      }

      while (!v40);
    }

    v23 = v32;
    if (v32 == v25)
    {
      goto LABEL_24;
    }
  }

  v48 = qword_100BCE9E0;
  if (*(v26 + 120))
  {
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(v27, v119);
      v49 = v122 >= 0 ? v119 : *v119;
      *buf = 138543874;
      *&buf[4] = v104;
      *&buf[12] = 2082;
      *&buf[14] = v49;
      *&buf[22] = 2114;
      *&buf[24] = v20;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Duplicate restore identifier %{public}@ from session %{public}s in application %{public}@", buf, 0x20u);
      if (v122 < 0)
      {
        operator delete(*v119);
      }
    }

    goto LABEL_126;
  }

  v56 = a10;
  v57 = a7;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(v27, v119);
    v58 = v122 >= 0 ? v119 : *v119;
    *buf = 67109634;
    *&buf[4] = v16;
    *&buf[8] = 2082;
    *&buf[10] = v58;
    *&buf[18] = 2114;
    *&buf[20] = v20;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Restoring zombie'd session type %d %{public}s for application %{public}@", buf, 0x1Cu);
    if (v122 < 0)
    {
      operator delete(*v119);
    }
  }

  *(v26 + 120) = a3;
  v59 = sub_100614E78(v27, a7);
  if (!v16)
  {
    sub_1003AC374(v59, v26, v109, v110 | ((v111 | (v112 << 16)) << 32));
  }

  if (*(a7 + 23) < 0)
  {
    v57 = *a7;
  }

  v60 = [NSString stringWithUTF8String:v57];
  sub_10005E880(v24, v26, v27, v60, BYTE5(v109), 1);
  v61 = [*(v24 + 304) objectForKey:v20];
  if (v61)
  {
    v62 = qword_100BCE9E0;
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v27, v119);
      v63 = v122 >= 0 ? v119 : *v119;
      *buf = 138543874;
      *&buf[4] = v104;
      *&buf[12] = 2082;
      *&buf[14] = v63;
      *&buf[22] = 2114;
      *&buf[24] = v20;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Restore identifier %{public}@ from session %{public}s in application %{public}@ found, canceling resurrectionTimer", buf, 0x20u);
      if (v122 < 0)
      {
        operator delete(*v119);
      }
    }

    dispatch_block_cancel(v61);
    [*(v24 + 304) removeObjectForKey:v20];
    [*(v24 + 296) removeObject:v20];
  }

  (*(*v24 + 16))(v24, v27);
  v64 = qword_100BCE9E0;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Ignore needsRestrictedStateOperation since restorable sessions are always apps", buf, 2u);
  }

  if (*(v24 + 179))
  {
    v66 = 0;
  }

  else
  {
    if (qword_100B512C8 != -1)
    {
      sub_100823A88();
      v56 = a10;
    }

    v66 = sub_10000EE78(off_100B512C0);
  }

  *v56 = v66;
  v80 = sub_10000C798(v66, v65);
  v81 = (*(*v80 + 416))(v80);
  if (*v56)
  {
    v83 = v81;
  }

  else
  {
    v83 = 0;
  }

  if (v83 == 1)
  {
    v84 = sub_100007EE8(v81, v82);
    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_1003AC628;
    v108[3] = &unk_100AEC130;
    v108[4] = v24;
    v108[5] = v27;
    v108[6] = v26;
    sub_10000CA94(v84, v108);
  }

LABEL_127:
  return v27;
}

uint64_t sub_100044414(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v12[0] = 0;
    v12[1] = 0;
    sub_100007F88(v12, a1 + 40);
    if ((*(a1 + 108) & 1) == 0)
    {
      sub_10000801C(v12);
      (**a1)(a1);
      sub_100007FB8(v12);
    }

    if (a1 + 128 == sub_10000EEB8(a1 + 120, a2))
    {
      if (sub_100044714(a1, a2))
      {
        operator new();
      }
    }

    else
    {
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        buf[0] = 136446210;
        *&buf[1] = v11;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Session %{public}s already attached", buf, 0xCu);
        v8 = qword_100BCE8D8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1008537D0();
      }
    }

    sub_1000088CC(v12);
  }

  else
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100853810(a2, v6 < 0, v9);
    }
  }

  return 100;
}

unint64_t sub_100044714(uint64_t a1, uint64_t a2)
{
  v3 = HIBYTE(*(a1 + 104));
  v4 = *(a1 + 104);
  v5 = (a1 + 152);
  v6 = *(a1 + 106);
  v7 = 1;
  while (1)
  {
    if (v6 == -2)
    {
      v6 = 0;
    }

    else
    {
      ++v6;
    }

    *(a1 + 106) = v6;
    v8 = *(a2 + 23) >= 0 ? a2 : *a2;
    v9 = *v8;
    if (*v8)
    {
      v10 = v8 + 1;
      v11 = 5381;
      do
      {
        v11 = 33 * v11 + v9;
        v12 = *v10++;
        v9 = v12;
      }

      while (v12);
      v13 = 33 * v11;
    }

    else
    {
      v13 = 46501;
    }

    v14 = 33 * (33 * (33 * (v3 + v13) + v4) + ((v6 & 0xFF00) >> 8)) + v6;
    if ((v14 - 1) <= 0xFFFCu)
    {
      v15 = v14 << 16;
      v16 = *v5;
      if (!*v5)
      {
        break;
      }

      v17 = v5;
      do
      {
        v18 = v16[4];
        v19 = v18 >= v15;
        v20 = v18 < v15;
        if (v19)
        {
          v17 = v16;
        }

        v16 = v16[v20];
      }

      while (v16);
      if (v17 == v5 || v17[4] > v15)
      {
        break;
      }
    }

    v19 = v7++ >= 0xFF;
    if (v19)
    {
      goto LABEL_27;
    }
  }

  v24 = v14 << 16;
  if (v14)
  {
    v23 = v14 << 16;
    v25 = &v23;
    sub_1000448C8(a1 + 144, &v23, &unk_1008A9BD0, &v25)[5] = v15;
    v25 = &v24;
    sub_100044998(a1 + 168, &v24, &unk_1008A9BD0, &v25)[5] = v15;
    return v24;
  }

LABEL_27:
  v22 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10085388C(v8, v22);
  }

  return 0;
}

void *sub_1000448C8(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

void *sub_100044998(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

uint64_t sub_100044A68(uint64_t a1, __int128 *a2, int a3)
{
  v6 = sub_100044BBC(a1);
  v6[1].__sig = 0;
  v6[1].__opaque[0] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100008904((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v7;
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = a3;
  return a1;
}

pthread_mutex_t *sub_100044AFC(pthread_mutex_t *a1)
{
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  v2 = pthread_mutex_init(a1, &v4);
  pthread_mutexattr_destroy(&v4);
  if (v2 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_10081E3CC();
  }

  return a1;
}

void *sub_100044BC4(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void *sub_100044CCC(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100044BC4(a1, &v6, a2);
  if (!result)
  {
    sub_100044D70();
  }

  return result;
}

void sub_100044E0C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100044E28(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'session attached' event for session %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100044F5C;
  v6[3] = &unk_100B023E8;
  v6[4] = a2;
  sub_1000116C8(a1 + 2, v6);
}

uint64_t sub_100044F5C(uint64_t a1, uint64_t (***a2)(void, uint64_t))
{
  v3 = sub_100011794(*(a1 + 32));
  v4 = **a2;

  return v4(a2, v3);
}

void sub_100044FE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16 = a2;
  v8 = a3;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v9 = objc_autoreleasePoolPush();
  v10 = +[BTAppInteraction instance];
  [v10 registerApplication:v8 pid:a4 isExtension:a5];

  objc_autoreleasePoolPop(v9);
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  sub_100007E30(__p, [v8 UTF8String]);
  v18 = __p;
  v11 = sub_100045174((a1 + 96), __p, &unk_1008A9BD0, &v18, &v17);
  sub_1000452CC((v11 + 7), &v16, &v16);
  v18 = __p;
  v12 = sub_100045174((a1 + 96), __p, &unk_1008A9BD0, &v18, &v17);
  if (v12 != v11)
  {
    sub_10039D4A0(v12 + 7, v11[7], v11 + 8);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000088CC(v15);
}

void sub_10004512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000088CC(&a15);

  _Unwind_Resume(a1);
}

void *sub_100045174(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100044BC4(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_100045228();
  }

  return v5;
}

void *sub_1000452CC(uint64_t a1, unint64_t *a2, void *a3)
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

char **sub_100045398(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10039D44C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

id sub_1000453E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[BTAppInteraction instance];
  sub_1000454F0(a1, a2, __p);
  if (v13 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = [v7 isBackgroundingSupported:v9 central:a3];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v6);
  return v10;
}

void sub_1000454BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000454F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v6 = *(a1 + 96);
  if (v6 == (a1 + 104))
  {
LABEL_16:
    sub_100007E30(a3, "");
  }

  else
  {
    while (1)
    {
      v7 = v6[7];
      if (v7 != v6 + 8)
      {
        break;
      }

LABEL_10:
      v11 = v6[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v6[2];
          v10 = *v12 == v6;
          v6 = v12;
        }

        while (!v10);
      }

      v6 = v12;
      if (v12 == (a1 + 104))
      {
        goto LABEL_16;
      }
    }

    while (v7[4] != a2)
    {
      v8 = v7[1];
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
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
      if (v9 == v6 + 8)
      {
        goto LABEL_10;
      }
    }

    if (*(v6 + 55) < 0)
    {
      sub_100008904(a3, v6[4], v6[5]);
    }

    else
    {
      v13 = *(v6 + 2);
      a3[2] = v6[6];
      *a3 = v13;
    }
  }

  return sub_1000088CC(v15);
}

uint64_t sub_100045688(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 64) = a2;
  sub_10000801C(v5);
  return sub_1000088CC(v5);
}

uint64_t sub_1000456EC(void *key, size_t keyLength, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  dataOutMoved = 0;
  cryptorRef = 0;
  v10 = CCCryptorCreate(0, 0, 0, key, keyLength, 0, &cryptorRef);
  if (v10)
  {
    printf("Could not create cryptor : %d\n", v10);
    return 1041;
  }

  else
  {
    v12 = CCCryptorUpdate(cryptorRef, a3, a4, a5, a6, &dataOutMoved);
    if (v12)
    {
      printf("Failed to encrypt : %d (need %d, got %zu)\n", v12, a6, dataOutMoved);
      CCCryptorRelease(cryptorRef);
      return 1042;
    }

    else
    {
      CCCryptorRelease(cryptorRef);
      if (dataOutMoved == a6)
      {
        return 0;
      }

      else
      {
        printf("Incorrect checksum size %ld, expecting %d\n", dataOutMoved, a6);
        return 1043;
      }
    }
  }
}

uint64_t sub_1000457E4(__int128 *a1, __int16 *a2, uint64_t a3)
{
  memset(v16, 0, sizeof(v16));
  v13 = 0;
  v14 = 0;
  if (a1 && a2)
  {
    v6 = 0;
    v17 = *a2;
    v18 = *(a2 + 2);
    key = *a1;
    v7 = 0xF00000000;
    do
    {
      v8 = v16[v6 - 8];
      v16[v6 - 8] = v16[HIDWORD(v7) - 8];
      v16[HIDWORD(v7) - 8] = v8;
      ++v6;
      v7 -= 0x100000000;
    }

    while (v6 != 8);
    v9 = sub_1000456EC(&key, 0x10uLL, v16, 0x10u, &v13, 0x10u);
    if (v9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("AES128Encrypt returned %d irk:%@ r:%@", v9, a1, 16, a2, 16);
        v10 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080FEE0();
        }
      }
    }

    else
    {
      *a3 = *(&v14 + 5);
      *(a3 + 2) = HIBYTE(v14);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No IRK key available - can't run AH.");
      v11 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4828;
  }

  return v9;
}

BOOL sub_100045978(uint64_t a1, __int128 *a2)
{
  result = 0;
  v6 = 0;
  v5 = 0;
  if (a1 && a2)
  {
    return *a1 == 1 && (*(a1 + 1) & 0x40) != 0 && !sub_1000457E4(a2, (a1 + 1), &v5) && v5 == *(a1 + 4) && v6 == *(a1 + 6);
  }

  return result;
}

void sub_100045A04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[LeDeviceCache sharedInstance];
  v4 = v3;
  if (v3)
  {
    objc_msgSend_findUUIDsWithCustomProperties_(v3);
  }

  else
  {
    v6 = 0uLL;
    v7 = 0;
  }

  v5 = *(*(a1 + 40) + 8);
  sub_10003E3E8(v5 + 48);
  *(v5 + 48) = v6;
  *(v5 + 64) = v7;
  v7 = 0;
  v6 = 0uLL;
  v8 = &v6;
  sub_1000161FC(&v8);

  objc_autoreleasePoolPop(v2);
}

void sub_100045AC4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4812000000;
  v15 = sub_1000422C4;
  v16 = sub_1000425EC;
  v17 = "";
  memset(v18, 0, sizeof(v18));
  v6 = *(a1 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100045A04;
  v9[3] = &unk_100AF5548;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  dispatch_sync(v6, v9);
  v8 = v13;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_10003E428(a3, v8[6], v8[7], 0xAAAAAAAAAAAAAAABLL * ((v8[7] - v8[6]) >> 3));

  _Block_object_dispose(&v12, 8);
  v19 = v18;
  sub_1000161FC(&v19);
}

void sub_100045C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  *(v15 - 40) = v14;
  sub_1000161FC((v15 - 40));

  _Unwind_Resume(a1);
}

void sub_100045C30(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  if (*(a1 + 12) != v4)
  {
    *(a1 + 12) = v4;
LABEL_19:

    os_unfair_lock_unlock(a1);
    return;
  }

  if (*(a1 + 4) != 1)
  {
    if (*(a1 + 16))
    {
      sub_10007A668(a1);
    }

    goto LABEL_19;
  }

  if (*(a1 + 56) && !*(a1 + 24))
  {
    v5 = (a1 + 32);
    v6 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v6 = *v5;
    }

    v7 = [NSString stringWithUTF8String:v6];
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      *buf = 138412546;
      *&buf[4] = v7;
      v37 = 2082;
      v38 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Watchdog dispatch scheduled: %@ (%{public}s)", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004855A8;
    block[3] = &unk_100AE1200;
    v34 = v7;
    v35 = a1;
    v9 = v7;
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(*(a1 + 56), v10);
  }

  ++*(a1 + 24);
  v11 = sub_10000E92C();
  if ((*(*v11 + 672))(v11))
  {
    WriteStackshotReport_stdc();
  }

  if (*(a1 + 24) == 3)
  {
    v12 = sub_10000E92C();
    if (((*(*v12 + 680))(v12) & 1) == 0)
    {
      v14 = sub_10000E92C();
      if (!(*(*v14 + 8))(v14))
      {
        while (1)
        {
          sub_10048566C(a1);
          __break(1u);
LABEL_31:
          v15 = *(a1 + 55);
          if (v15 >= 0)
          {
            v16 = (a1 + 32);
          }

          else
          {
            v16 = *(a1 + 32);
          }

          if (v15 >= 0)
          {
            v17 = *(a1 + 55);
          }

          else
          {
            v17 = *(a1 + 40);
          }

          while (1)
          {
            v18 = (v2 + 4);
            v19 = *(v2 + 55);
            if ((v19 & 0x8000000000000000) != 0)
            {
              v18 = v2[4];
              v19 = v2[5];
            }

            if (!v17)
            {
              break;
            }

            if (v19 >= v17)
            {
              v23 = &v19[v18];
              v24 = *v16;
              v25 = v18;
              while (1)
              {
                v26 = &v19[-v17];
                if (v26 == -1)
                {
                  goto LABEL_41;
                }

                v27 = memchr(v25, v24, (v26 + 1));
                if (!v27)
                {
                  goto LABEL_41;
                }

                v28 = v27;
                if (!memcmp(v27, v16, v17))
                {
                  break;
                }

                v25 = v28 + 1;
                v19 = (v23 - (v28 + 1));
                if (v19 < v17)
                {
                  goto LABEL_41;
                }
              }

              if (v28 != v23 && v28 - v18 != -1)
              {
                break;
              }
            }

LABEL_41:
            v20 = v2[1];
            if (v20)
            {
              do
              {
                v21 = v20;
                v20 = *v20;
              }

              while (v20);
            }

            else
            {
              do
              {
                v21 = v2[2];
                v22 = *v21 == v2;
                v2 = v21;
              }

              while (!v22);
            }

            v2 = v21;
            if (v21 == v1)
            {
              goto LABEL_28;
            }
          }

          v29 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = v16;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Targetted WatchDog Stall signature found, filing ABC Snapshot for %s", buf, 0xCu);
          }

          if (qword_100B53FE8 != -1)
          {
            sub_10082E83C();
          }

          v30 = qword_100B53FE0;
          sub_100007E30(buf, "Watchdog");
          sub_1005780BC(v30, buf, v2 + 4, 60.0);
          if (v39 < 0)
          {
            operator delete(*buf);
          }

LABEL_28:
          sub_10004B61C(&v31, v32[0]);
        }
      }
    }

    v31 = 0;
    v32[0] = 0;
    v32[1] = 0;
    sub_100007E30(buf, "com.apple.UserEventAgent");
    sub_100007E30(v40, "com.apple.cloudpaird");
    sub_100007E30(v41, "com.apple.nearbyd");
    sub_100007E30(v42, "com.apple.bluetooth.coreBluetooth");
    sub_1000C1030(&v31, buf, 4);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v42[i + 2]) < 0)
      {
        operator delete(v42[i]);
      }
    }

    v2 = v31;
    v1 = v32;
    if (v31 != v32)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  os_unfair_lock_unlock(a1);
}

void sub_100046168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_10004B61C(&a12, a13);
  _Unwind_Resume(a1);
}

id sub_100046200(uint64_t a1)
{
  v2 = [*(a1 + 32) internalFlags];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if ((v2 & 0x800) != 0)
  {

    return [v3 deviceBuffered:v4];
  }

  else
  {

    return [v3 deviceFound:v4];
  }
}

void *sub_100046268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[62])
  {
    return [result _stackBLEScannerDeviceFound:a2];
  }

  return result;
}

void sub_100046284(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 98) = a3;
  }

  sub_1000088CC(v7);
}

void sub_1000462F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100046310(uint64_t a1)
{
  sub_10004A5F0(a1);

  operator delete();
}

void sub_100046348(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100046348(a1, *a2);
    sub_100046348(a1, a2[1]);
    a2[5] = &off_100AE0A78;
    v4 = a2[6];
    if (v4)
    {
      sub_10000C808(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1000463C8(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_1000A61B8(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_1000A61B8(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_100046458(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  v7 = v6;
  if (v6)
  {
    if (!v6[2])
    {
      v8 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
      {
        v9 = sub_100063D0C(0);
        sub_100873558(v9, v13, v8);
      }
    }

    if (a3 || (v10 = v7[3]) == 0)
    {
      v10 = v7[2];
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008735A4();
    }

    v10 = 0;
  }

  sub_1000088CC(v12);

  return v10;
}

void sub_100046570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10004659C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void **a4, void *a5)
{
  v10 = a5;
  v11 = v10;
  v27 = 0;
  v12 = *(a3 + 8);
  if (v12[304] == 1 && (v12[370] & 1) == 0)
  {
    v18 = *(a1 + 8);
    if (!*(v18 + 146) && *(v18 + 194) << 16 != 0x10000)
    {
      goto LABEL_66;
    }

    goto LABEL_53;
  }

  if (v12[305] != 1)
  {
    [v10 setString:@"default"];
    if (!sub_100053460(a1, v13))
    {
      goto LABEL_66;
    }

    if (!sub_1000535B8(a1))
    {
      goto LABEL_52;
    }

    v14 = sub_10000C5E0(*(a3 + 8) + 48);
    v15 = sub_10000C5F8(*(a3 + 8) + 48);
    v16 = *(*(a1 + 8) + 488);
    if (v16)
    {
      if (v16 == 1)
      {
        if (sub_10004ECB4(a1) && (sub_100057614(a1, a2, a3, a4, &v27) & 1) != 0)
        {
          goto LABEL_52;
        }

        v17 = [*(*(a1 + 8) + 80) count];
        if (v17)
        {
          v5 = sub_10004DF60(a2);
          if (sub_1007B3660(a1, v5))
          {
LABEL_51:

            goto LABEL_52;
          }
        }

        v20 = *(a1 + 8);
        if (*(v20 + 161))
        {
          if (sub_1007B3760(a1, a2, a3))
          {
            goto LABEL_31;
          }

          v20 = *(a1 + 8);
        }

        if (*(v20 + 88) != *(v20 + 96))
        {
          if (sub_10004E638(a1, v15, v14, a4, &v27))
          {
            goto LABEL_31;
          }

          v20 = *(a1 + 8);
        }

        if (*(v20 + 120) != *(v20 + 128))
        {
          if (sub_100053708(a1, a2, a3, &v27, v11))
          {
LABEL_31:
            v21 = 1;
            if (!v17)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          v20 = *(a1 + 8);
        }

        if (*(v20 + 192) && *(v20 + 208))
        {
          v21 = sub_1007B3BC0(a1, a3);
          if (!v17)
          {
LABEL_48:
            if ((v21 & 1) == 0)
            {
              goto LABEL_66;
            }

LABEL_52:
            sub_10004E4DC((a1 + 104));
          }

LABEL_47:

          goto LABEL_48;
        }

        if (v17)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      v24 = 0;
      goto LABEL_67;
    }

    if (sub_10004ECB4(a1) && !sub_100057614(a1, a2, a3, a4, &v27))
    {
      goto LABEL_66;
    }

    v19 = [*(*(a1 + 8) + 80) count];
    if (v19)
    {
      v5 = sub_10004DF60(a2);
      if ((sub_1007B3660(a1, v5) & 1) == 0)
      {
LABEL_65:

        goto LABEL_66;
      }
    }

    v22 = *(a1 + 8);
    if (*(v22 + 161))
    {
      if (!sub_1007B3760(a1, a2, a3))
      {
        goto LABEL_45;
      }

      v22 = *(a1 + 8);
    }

    if (*(v22 + 88) != *(v22 + 96))
    {
      if (!sub_10004E638(a1, v15, v14, a4, &v27))
      {
        goto LABEL_45;
      }

      v22 = *(a1 + 8);
    }

    if (*(v22 + 120) == *(v22 + 128))
    {
      goto LABEL_42;
    }

    if (sub_100053708(a1, a2, a3, &v27, v11))
    {
      v22 = *(a1 + 8);
LABEL_42:
      if (!*(v22 + 192) || !*(v22 + 208))
      {
        if (!v19)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      v21 = sub_1007B3BC0(a1, a3);
LABEL_46:
      if (!v19)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

LABEL_45:
    v21 = 0;
    goto LABEL_46;
  }

  if (!*(*(a1 + 8) + 148))
  {
    goto LABEL_66;
  }

LABEL_53:
  v23 = *(a1 + 81);
  v24 = 1;
  if (v23 <= 0x20)
  {
    if (((1 << v23) & 0x100010002) != 0)
    {
      v25 = 32;
LABEL_58:
      ++*(a1 + v25);
      goto LABEL_67;
    }

    if (((1 << v23) & 0x110) != 0)
    {
      v25 = 24;
      goto LABEL_58;
    }
  }

LABEL_67:

  return v24;
}

void sub_100046D30(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100046D48(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004975B0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E438 != -1)
  {
    dispatch_once(&qword_100B6E438, block);
  }

  return byte_100B6E430;
}

BOOL sub_100046DD8(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 22;
  v3 = v1 - 5000;
  v4 = (v1 - 2001) < 0x7CF;
  if (v3 < 0x3E8)
  {
    v4 = 1;
  }

  return v2 < 4 || v4;
}

void sub_100046E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 40) = &off_100AE0AB8;
  *(a1 + 48) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

uint64_t sub_100046E40(char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, char a7, int a8)
{
  v70 = 0;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  memset(v57, 0, sizeof(v57));
  v56 = 0u;
  v55 = 0u;
  v11 = sub_100007AD0(&v55);
  if (!a2)
  {
    goto LABEL_72;
  }

  ++*(a1 + 265);
  if (a6)
  {
    v13 = *(a4 + 8);
    v14 = *(v13 + 476);
    v15 = *(v13 + 478);
    v16 = *(v13 + 342);
    v17 = sub_10000F034(v11, v12);
    v73[0].n128_u16[0] = v15;
    v73[0].n128_u8[2] = v14 & 3;
    v73[0].n128_u8[3] = v14 & 4;
    v73[0].n128_u8[4] = v16;
    memset(v73[0].n128_i64 + 5, 0, 35);
    (*(*v17 + 712))(v17, v73);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000C32C8();
  }

  *uu = 0;
  v75 = 0;
  v47 = off_100B508C8;
  sub_1000498D4(off_100B508C8, a2, 1u, 1u, 0, 0, uu);
  if (!uuid_is_null(uu))
  {
    v49 = sub_10004DF60(uu);
    sub_10004B0DC(v47, v49, *(*(a4 + 8) + 312) != 0);
    v22 = *(a4 + 8);
    if (*(v22 + 304))
    {
      v23 = 1;
    }

    else
    {
      v23 = *(v22 + 305);
    }

    sub_10004B390(v47, v49, v23 & 1);
    v24 = *(a4 + 8);
    if (*(v24 + 13) == 1)
    {
      sub_100046284(v47, v49, 1);
      v24 = *(a4 + 8);
    }

    sub_10004B41C(v47, v49, *(v24 + 12));
    v25 = *(a4 + 8);
    if (*(v25 + 40))
    {
      sub_100787390(v47, v49, *(v25 + 40));
      v25 = *(a4 + 8);
    }

    v46 = v25;
    if (*(v25 + 128))
    {
      v71 = xmmword_1008A4D3C;
      LODWORD(v72) = 0;
      sub_10000D03C(v73, &v71);
      v26 = sub_100058794(v46 + 112, v73);
      v27 = v26;
      if (v46 + 120 != v26 && sub_10000C5E0(v26 + 56) >= 3)
      {
        v28 = sub_10000C5F8(v27 + 56);
        if (*(v28 + 1))
        {
          v29 = [NSString stringWithFormat:@"%d", *(v28 + 1)];
          sub_1007893AC(v47, v49, @"GHSDeviceType", v29);
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_1008760A8();
          }
        }
      }
    }

    if (a1[3288] == 1)
    {
      v30 = *(a4 + 8);
      if (*(v30 + 367) == 1)
      {
        v31 = *(v30 + 365);
        if (v31 == 1)
        {
          ++*(a1 + 819);
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_100876118();
          }
        }

        else if (!v31)
        {
          ++*(a1 + 818);
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_100876188();
          }
        }
      }
    }

    sub_10004B050(v47, v49);
    sub_10004B4A8(v47, v49, *(*(a4 + 8) + 240));
    if (*(*(a4 + 8) + 367) == 1)
    {
      sub_10078B454(v47, v49, a5);
    }

    sub_10004B534(v47, v49, a5);
    v73[0].n128_u64[0] = uu;
    v41 = sub_10004CEA4(a1 + 261, uu, &unk_1008A9BD0, v73, &v71);
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_71;
        }

        if (a6)
        {
          v42 = (v41 + 12);
        }

        else
        {
          v42 = (v41 + 8);
        }

LABEL_70:
        sub_10000AE20(v42, a4);
LABEL_71:
        v52[1] = 0;
        v52[0] = 0;
        sub_10004B680(v52);
      }
    }

    else if ((a3 - 2) >= 2)
    {
      if (a3 != 4)
      {
        goto LABEL_71;
      }

      if (a6)
      {
        v42 = (v41 + 14);
      }

      else
      {
        v42 = (v41 + 10);
      }

      goto LABEL_70;
    }

    if (a6)
    {
      v42 = (v41 + 12);
    }

    else
    {
      v42 = (v41 + 6);
    }

    goto LABEL_70;
  }

  v18 = *(a4 + 8);
  if (*(v18 + 14) == 1)
  {
    v19 = qword_100BCE918;
    v20 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      v45 = sub_100063D0C(a2);
      v73[0].n128_u32[0] = 138543362;
      *(v73[0].n128_u64 + 4) = v45;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get UUID for device %{public}@ that caused AP wakeup", v73, 0xCu);

      v18 = *(a4 + 8);
    }

    memset(v73, 0, 24);
    if (*(v18 + 39) < 0)
    {
      v20 = sub_100008904(&v71, *(v18 + 16), *(v18 + 24));
    }

    else
    {
      v71 = *(v18 + 16);
      v72 = *(v18 + 32);
    }

    v32 = HIBYTE(v72);
    if (v72 < 0)
    {
      v32 = *(&v71 + 1);
    }

    if (v32)
    {
      v33 = *(a4 + 8);
      if (*(v33 + 39) < 0)
      {
        v20 = sub_100008904(v73, *(v33 + 16), *(v33 + 24));
      }

      else
      {
        v73[0] = *(v33 + 16);
        v73[1].n128_u64[0] = *(v33 + 32);
      }
    }

    else
    {
      v20 = sub_100007E30(v73, "Unknown");
    }

    if (SHIBYTE(v72) < 0)
    {
      operator delete(v71);
    }

    if (*(*(a4 + 8) + 367))
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    v35 = sub_100432718(v20, v21);
    v36 = *(*(a4 + 8) + 56);
    v53 = &off_100AE0A78;
    v54 = v36;
    if (v36)
    {
      sub_10000C69C(v36);
    }

    v37 = sub_100063D0C(a2);
    v38 = v37;
    v39 = [v37 UTF8String];
    if (v73[1].n128_i8[7] >= 0)
    {
      v40 = v73;
    }

    else
    {
      v40 = v73[0].n128_u64[0];
    }

    (*(*v35 + 32))(v35, &v53, v34, "com.apple.bluetoothd", v39, v40);

    v53 = &off_100AE0A78;
    if (v54)
    {
      sub_10000C808(v54);
    }

    if (v73[1].n128_i8[7] < 0)
    {
      operator delete(v73[0].n128_u64[0]);
    }
  }

LABEL_72:
  *&v56 = v43;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(*(&v58 + 1));
  }

  std::locale::~locale(v57);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10004931C(_Unwind_Exception *a1)
{
  std::ostream::sentry::~sentry();

  if (*(v1 + 1495) < 0)
  {
    operator delete(*(v1 + 1472));
  }

  if (*(v1 + 567) < 0)
  {
    operator delete(*(v1 + 544));
  }

  *(v1 + 384) = &off_100AE0A78;
  v4 = *(v1 + 392);
  if (v4)
  {
    sub_10000C808(v4);
  }

  *(v1 + 440) = *(v1 + 176);
  v5 = *(v1 + 448);
  if (v5)
  {
    sub_10000C808(v5);
  }

  sub_10005889C(v1 + 848, *(v1 + 856));
  sub_1007FC91C(v1 + 1808);
  sub_1007FC91C(v1 + 2096);
  *(v1 + 992) = &off_100AE0AB8;
  v6 = *(v1 + 1000);
  if (v6)
  {
    sub_10000C808(v6);
  }

  sub_1007FC91C(v1 + 1024);
  _Unwind_Resume(a1);
}

void sub_1000498D4(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, void *a5@<X4>, __int128 *a6@<X5>, unsigned __int8 *a7@<X8>)
{
  v58 = __PAIR64__(a3, a4);
  dst = a7;
  v61 = a5;
  v73[0] = 0;
  v73[1] = 0;
  sub_100007F88(v73, a1 + 96);
  v60 = a2;
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      sub_10087323C();
    }

    goto LABEL_60;
  }

  if (BYTE6(a2) && (BYTE6(a2) != 1 || (a2 & 0xC00000000000) == 0x800000000000))
  {
LABEL_60:
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v42 = sub_100063D0C(a2);
      sub_100873278(v42, __p);
    }

    goto LABEL_65;
  }

  if (!HIDWORD(v58))
  {
    if (!v61)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

  if (v61 && (v58 & 1) == 0)
  {
LABEL_63:
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873064();
    }

LABEL_65:
    uuid_clear(dst);
    goto LABEL_66;
  }

LABEL_8:
  if (a6)
  {
    v62 = objc_opt_new();
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v9 = *(a1 + 176);
    v10 = [v9 countByEnumeratingWithState:&v69 objects:v86 count:16];
    if (v10)
    {
      v11 = *v70;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v70 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(a1 + 176) objectForKey:{*(*(&v69 + 1) + 8 * i), v58, dst}];
          v14 = v13;
          if (!v13[3])
          {
            *&uu[3] = 0;
            *uu = 0;
            v15 = sub_10009A66C(v13[2]);
            *uu = v15;
            uu[6] = BYTE6(v15);
            *&uu[4] = WORD2(v15);
            if (sub_100045978(uu, a6))
            {
              v16 = qword_100BCE900;
              if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
              {
                sub_10004D9B0(v14[2]);
                if (v81 >= 0)
                {
                  v17 = __p;
                }

                else
                {
                  v17 = *__p;
                }

                v18 = *v14;
                *buf = 136315394;
                v83 = v17;
                v84 = 2112;
                v85 = v18;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Removing previous instances of cloud device with address:%s UUID:%@ from device cache", buf, 0x16u);
                if (v81 < 0)
                {
                  operator delete(*__p);
                }
              }

              v19 = *v14;
              [v62 addObject:v19];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v69 objects:v86 count:16];
      }

      while (v10);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v20 = v62;
    v21 = [v20 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v21)
    {
      v22 = *v66;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v66 != v22)
          {
            objc_enumerationMutation(v20);
          }

          sub_100782C70(a1, *(*(&v65 + 1) + 8 * j));
        }

        v21 = [v20 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v21);
    }

    [v20 removeAllObjects];
    v24 = sub_10009A544(*(a1 + 256), v60);
    if (v24)
    {
      sub_100420224(*(a1 + 256), v24);
      sub_1000D3BB8(v24);
      operator delete();
    }
  }

  *uu = 0;
  v76 = 0;
  sub_10004A438(a1, v60, uu);
  if (!uuid_is_null(uu) || (sub_10004AEAC(a1, v60, __p), uuid_copy(uu, __p), is_null = uuid_is_null(uu), !is_null))
  {
    uuid_copy(dst, uu);
    goto LABEL_66;
  }

  v27 = *(a1 + 192);
  if (v27)
  {
    v28 = a1 + 192;
    do
    {
      v29 = *(v27 + 32);
      v30 = v29 >= v60;
      v31 = v29 < v60;
      if (v30)
      {
        v28 = v27;
      }

      v27 = *(v27 + 8 * v31);
    }

    while (v27);
    if (v28 != a1 + 192 && *(v28 + 32) <= v60)
    {
      if (!v61)
      {
        sub_10004ADAC(a1, (v28 + 40));
      }

      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v48 = sub_100063D0C(v60);
        sub_1000D67B4((v28 + 40), __p);
        sub_1008730A0();
      }

      goto LABEL_80;
    }
  }

  if (!v58 || (*(a1 + 172) & 1) != 0)
  {
    goto LABEL_51;
  }

  v32 = sub_10000C798(is_null, v26);
  v33 = (*(*v32 + 472))(v32);
  v34 = qword_100BCE900;
  v35 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
  if (!v33)
  {
    if (v35)
    {
      v47 = sub_100063D0C(v60);
      *__p = 138543362;
      *&__p[4] = v47;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Ignoring non-paired device address %{public}@ as the protected cache has not been loaded", __p, 0xCu);
    }

LABEL_80:
    uuid_clear(dst);
    goto LABEL_66;
  }

  if (v35)
  {
    v36 = sub_100063D0C(v60);
    *__p = 138543362;
    *&__p[4] = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Warning: Diagnostics mode detected, ignoring non-paired device cached, creating a new identifier for device address %{public}@ as the protected cache has not been loaded", __p, 0xCu);
  }

LABEL_51:
  v37 = sub_10009A544(*(a1 + 256), v60);
  v38 = v37;
  if (!v37)
  {
    v43 = objc_autoreleasePoolPush();
    if ((v58 & 0x100000000) != 0)
    {
      memset(out, 0, sizeof(out));
      uuid_clear(out);
      if (!v61)
      {
        do
        {
          v49 = objc_autoreleasePoolPush();
          *(v64 + 3) = 0;
          v64[0] = 0;
          v50 = sub_10009A66C(v60);
          v64[0] = v50;
          BYTE2(v64[1]) = BYTE6(v50);
          LOWORD(v64[1]) = WORD2(v50);
          if (uuid_is_null(out))
          {
            v51 = 7;
          }

          else
          {
            v51 = 0;
          }

          sub_10009A698(out, v64, v51);
          v52 = sub_10004DF60(out);
          v53 = [*(a1 + 176) objectForKey:v52];
          v54 = v53 | sub_10009A778(*(a1 + 256), v52);
          v55 = v54 != 0;
          if (v54)
          {
            v56 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
            {
              sub_1000D67B4(out, __p);
              v57 = __p;
              if (v81 < 0)
              {
                v57 = *__p;
              }

              *buf = 136446210;
              v83 = v57;
              _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "UUID generation collision - UUID %{public}s already exists!", buf, 0xCu);
              if (v81 < 0)
              {
                operator delete(*__p);
              }
            }
          }

          objc_autoreleasePoolPop(v49);
        }

        while (v55);
LABEL_72:
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
        {
          v46 = sub_100063D0C(v60);
          sub_1000D67B4(out, __p);
          sub_1008731E4();
        }

        operator new();
      }

      sub_10004DFB4(__p, v61);
      uuid_copy(out, __p);
      v44 = sub_10004DF60(out);
      v45 = [*(a1 + 176) objectForKey:v44];
      if (!(v45 | sub_10009A778(*(a1 + 256), v44)))
      {

        goto LABEL_72;
      }

      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(out, __p);
        sub_100873188();
      }

      uuid_clear(dst);
    }

    else
    {
      uuid_clear(dst);
    }

    objc_autoreleasePoolPop(v43);
    goto LABEL_66;
  }

  v39 = [*v37 copy];
  v40 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v41 = sub_100063D0C(v60);
    *__p = 138543618;
    *&__p[4] = v41;
    v79 = 2114;
    v80 = v39;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Address %{public}@ is already associated with device %{public}@", __p, 0x16u);
  }

  if (!v61)
  {
    if ([*(a1 + 176) objectForKey:v39] && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      sub_100063D0C(v60);
      objc_claimAutoreleasedReturnValue();
      sub_100873140();
    }

    sub_100099554(a1, v38);
  }

  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_100063D0C(v60);
    objc_claimAutoreleasedReturnValue();
    sub_1008730F8();
  }

  uuid_clear(dst);

LABEL_66:
  sub_1000088CC(v73);
}

void sub_10004A2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A438@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 96);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 288);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        sub_1000AFD60(a1, v10, 0, &v14);
        if (v15)
        {
          v11 = v15;
          do
          {
            v12 = v11[4];
            if (v12 <= a2)
            {
              if (v12 >= a2)
              {
                sub_10000CEDC(&v14, v15);
                sub_10004DFB4(a3, v10);

                return sub_1000088CC(v20);
              }

              ++v11;
            }

            v11 = *v11;
          }

          while (v11);
        }

        sub_10000CEDC(&v14, v15);
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  uuid_clear(a3);
  return sub_1000088CC(v20);
}

void sub_10004A5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A5F0(uint64_t a1)
{
  *a1 = &off_100B0A938;
  sub_100046348(a1 + 496, *(a1 + 504));

  *(a1 + 448) = &off_100AE0A78;
  v2 = *(a1 + 456);
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_10004B61C(a1 + 416, *(a1 + 424));

  *(a1 + 288) = &off_100AE0A78;
  v3 = *(a1 + 296);
  if (v3)
  {
    sub_10000C808(v3);
  }

  *(a1 + 272) = &off_100AE0A78;
  v4 = *(a1 + 280);
  if (v4)
  {
    sub_10000C808(v4);
  }

  *(a1 + 224) = &off_100AE0A78;
  v5 = *(a1 + 232);
  if (v5)
  {
    sub_10000C808(v5);
  }

  *(a1 + 152) = &off_100AE0A78;
  v6 = *(a1 + 160);
  if (v6)
  {
    sub_10000C808(v6);
  }

  *(a1 + 136) = &off_100AE0A78;
  v7 = *(a1 + 144);
  if (v7)
  {
    sub_10000C808(v7);
  }

  sub_10004CE24(a1 + 112, *(a1 + 120));
  v8 = *(a1 + 88);
  if (v8)
  {
    *(a1 + 96) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    *(a1 + 72) = v9;
    operator delete(v9);
  }

  *(a1 + 48) = &off_100AE0A78;
  v10 = *(a1 + 56);
  if (v10)
  {
    sub_10000C808(v10);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

const unsigned __int8 *sub_10004A7D0(uint64_t a1, const unsigned __int8 **a2, unsigned __int8 *uu1)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((uuid_compare(uu1, v4 + 32) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((uuid_compare(v7 + 32, uu1) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

int8x16_t sub_10004A858(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 12) |= *(v4 + 12);
  *(a1 + 13) |= *(v4 + 13);
  v5 = *(v4 + 39);
  if (v5 < 0)
  {
    if (!*(v4 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (!*(v4 + 39))
  {
    goto LABEL_12;
  }

  if (*(v4 + 472) >= *(a1 + 472))
  {
    if ((v5 & 0x80000000) != 0)
    {
      sub_100008904(&__str, *(v4 + 16), *(v4 + 24));
    }

    else
    {
      __str = *(v4 + 16);
    }

    std::string::operator=((a1 + 16), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v4 = *(a2 + 8);
    *(a1 + 472) = *(v4 + 472);
  }

LABEL_12:
  *(a1 + 40) = *(v4 + 40);
  if (*(v4 + 42) == 1)
  {
    v6 = *(v4 + 43);
    *(a1 + 42) = 1;
    *(a1 + 43) = v6;
  }

  if (sub_10000C5E0(v4 + 48))
  {
    v7 = sub_10000C5E0(a1 + 48);
    v8 = sub_10000C5E0(*(a2 + 8) + 48);
    v9 = v8 + v7;
    __chkstk_darwin(v8);
    v11 = &v33 - v10;
    bzero(&v33 - v10, v9);
    v12 = sub_10004B788(a1 + 48, v11, v9);
    if (sub_10000C5E0(a1 + 48) < 3 || sub_10000C5E0(*(a2 + 8) + 48) < 3)
    {
      v14 = 0;
    }

    else
    {
      v13 = sub_10000C5F8(a1 + 48);
      v14 = 2 * (*v13 == *sub_10000C5F8(*(a2 + 8) + 48));
    }

    v15 = *(a2 + 8);
    v16 = sub_10000C5E0(v15 + 48);
    v17 = sub_10004B8FC(v15 + 48, &v11[v12], v14, v16 - v14);
    sub_10000C704(&v33, v11, v17 + v12);
    sub_10000AE20(a1 + 48, &v33);
    v33 = &off_100AE0A78;
    if (v34)
    {
      sub_10000C808(v34);
    }
  }

  if (sub_10000C5E0(*(a2 + 8) + 224))
  {
    v18 = sub_10000C5E0(*(a2 + 8) + 224);
    v19 = &v33 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v19, v18);
    v20 = sub_10004B788(*(a2 + 8) + 224, v19, v18);
    sub_10000C704(&v33, v19, v20);
    sub_10000AE20(a1 + 224, &v33);
    v33 = &off_100AE0A78;
    if (v34)
    {
      sub_10000C808(v34);
    }
  }

  if (sub_10000C5E0(*(a2 + 8) + 448))
  {
    v21 = sub_10000C5F8(*(a2 + 8) + 448);
    v22 = sub_10000C5E0(*(a2 + 8) + 448);
    sub_10000C704(&v33, v21, v22);
    sub_10000AE20(a1 + 448, &v33);
    v33 = &off_100AE0A78;
    if (v34)
    {
      sub_10000C808(v34);
    }
  }

  v23 = *(a2 + 8);
  for (i = *(v23 + 64); i != *(v23 + 72); i = (i + 20))
  {
    sub_10000CDB8((a1 + 64), i);
    v23 = *(a2 + 8);
  }

  for (j = *(v23 + 88); j != *(v23 + 96); j = (j + 20))
  {
    sub_10000CDB8((a1 + 88), j);
    v23 = *(a2 + 8);
  }

  v26 = *(v23 + 112);
  if (v26 != (v23 + 120))
  {
    do
    {
      v33 = (v26 + 4);
      v27 = sub_100099408((a1 + 112), v26 + 32, &unk_1008A9BD0, &v33);
      sub_10000AE20(v27 + 56, (v26 + 7));
      v28 = v26[1];
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
          v29 = v26[2];
          v30 = *v29 == v26;
          v26 = v29;
        }

        while (!v30);
      }

      v23 = *(a2 + 8);
      v26 = v29;
    }

    while (v29 != (v23 + 120));
  }

  *(a1 + 305) |= *(v23 + 305);
  *(a1 + 304) |= *(v23 + 304);
  *(a1 + 370) |= *(v23 + 370);
  *(a1 + 376) = *(v23 + 376);
  *(a1 + 384) = *(v23 + 384);
  *(a1 + 392) = *(v23 + 392);
  v31 = *(a2 + 8);
  *(a1 + 396) = *(v31 + 396);
  *(a1 + 312) = *(v31 + 312);
  *(a1 + 316) = *(v31 + 316);
  result = vorrq_s8(*(a1 + 184), *(v31 + 184));
  *(a1 + 168) = vorrq_s8(*(a1 + 168), *(v31 + 168));
  *(a1 + 184) = result;
  return result;
}

void sub_10004AD50(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_10004ADAC(uint64_t a1, unsigned __int8 *uu2)
{
  v4 = a1 + 208;
  for (i = *(a1 + 216); ; i = *(i + 1))
  {
    if (i == v4)
    {
      goto LABEL_7;
    }

    if (!uuid_compare(i + 16, uu2))
    {
      break;
    }
  }

  if (i == v4)
  {
LABEL_7:
    v8 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873BC4(uu2, v8, &v9);
      v8 = v9;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100873C74();
    }
  }

  else
  {
    v7 = *i;
    v6 = *(i + 1);
    *(v7 + 8) = v6;
    *v6 = v7;
    --*(a1 + 224);
    operator delete(i);
  }

  sub_10004B168(v4, 0, 0, uu2);
}

uint64_t sub_10004AEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 288);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [*(a1 + 176) objectForKey:{v10, v15}];
        if (sub_1000AF748(v11) && *(v11 + 164) == 1)
        {
          v12 = v11[7];
          if (v12 == a2 && v12 != 0)
          {
            sub_10004DFB4(a3, v10);

            return sub_1000088CC(v19);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  uuid_clear(a3);
  return sub_1000088CC(v19);
}

void sub_10004B018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10004B050(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(a1 + 168) + 1;
    *(a1 + 168) = v5;
    *(v4 + 33) = v5;
  }

  sub_1000088CC(v6);
}

void sub_10004B0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B0DC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 97) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10004B148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void *sub_10004B1D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  if (!v3 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_100872EE0();
  }

  if ([*(a1 + 176) objectForKey:v3])
  {
    sub_10004DFB4(buf, v3);
    sub_10004ADAC(a1, buf);
  }

  sub_10000801C(v8);
  v4 = sub_10009A778(*(a1 + 256), v3);
  if (v4)
  {
    v5 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
    {
      v6 = sub_100063D0C(*(v4 + 16));
      *buf = 138543618;
      v10 = v3;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Device %{public}@ was on disk with address %{public}@", buf, 0x16u);
    }

    sub_100007FB8(v8);
    sub_100099554(a1, v4);
  }

  sub_1000088CC(v8);

  return 0;
}

void sub_10004B35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B390(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 96) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10004B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B41C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 609) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10004B488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B4A8(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v6[50] = a3;
  }

  sub_1000088CC(v7);
}

void sub_10004B514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B534(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    sub_10004B5C4(v6, v3);
  }

  sub_1000088CC(v7);
}

char *sub_10004B5C4(uint64_t a1, char a2)
{
  v5 = a2;
  result = sub_10004D7E0((a1 + 584), *(a1 + 584), &v5);
  v4 = *(a1 + 592);
  if ((v4 - *(a1 + 584)) >= 6)
  {
    *(a1 + 592) = v4 - 1;
  }

  return result;
}

void sub_10004B61C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10004B61C(a1, *a2);
    sub_10004B61C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_10004B680(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

size_t sub_10004B788(uint64_t a1, void *__dst, size_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(v4 + 16);
    if (v6 > a3)
    {
      v10 = sub_10000E92C();
      sub_100693F88(v10, 1);
      v11 = _os_log_pack_size();
      v12 = &v19 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "Assertion failed: %{public}s");
      *v14 = 136446210;
      *(v14 + 4) = "dstSize >= getSize()";
      os_log_create("com.apple.bluetooth", "CBCrash");
      qword_100B55118 = os_log_pack_send_and_compose();
      v15 = abort_with_payload();
      return sub_10004B8FC(v15, v16, v17, v18);
    }

    v7 = (v4 + 24);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  memcpy(__dst, v7, v6);
  v8 = *(a1 + 8);
  if (v8)
  {
    return *(v8 + 16);
  }

  else
  {
    return 0;
  }
}

size_t sub_10004B8FC(uint64_t a1, void *__dst, uint64_t a3, size_t __n)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  if (__n + a3 > v6)
  {
    v9 = sub_10000E92C();
    sub_100693F88(v9, 1);
    v10 = _os_log_pack_size();
    v11 = &v14 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "Assertion failed: %{public}s");
    *v13 = 136446210;
    *(v13 + 4) = "(offset + length) <= getSize()";
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  if (v5)
  {
    v7 = v5 + 24;
  }

  else
  {
    v7 = 0;
  }

  memcpy(__dst, (v7 + a3), __n);
  return __n;
}

uint64_t sub_10004BA6C(uint64_t a1)
{
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  *v64 = 0u;
  v65 = 0u;
  memset(v63, 0, sizeof(v63));
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  sub_100007AD0(&v60);
  if ((*(a1 + 39) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (!*(a1 + 39))
  {
    goto LABEL_12;
  }

  v2 = sub_100007774(&v61, "", 1);
  v3 = *(a1 + 39);
  if (v3 >= 0)
  {
    LODWORD(v4) = a1 + 16;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (v3 >= 0)
  {
    LODWORD(v5) = *(a1 + 39);
  }

  else
  {
    v5 = *(a1 + 24);
  }

  v6 = sub_100007774(v2, v4, v5);
  sub_100007774(v6, ", ", 3);
LABEL_12:
  sub_100007774(&v61, "RSSI: ", 6);
  v7 = std::ostream::operator<<();
  sub_100007774(v7, " dB (", 5);
  if ((*(a1 + 217) & 1) == 0)
  {
    sub_100007774(&v61, "non-", 4);
  }

  sub_100007774(&v61, "saturated), ", 12);
  if (*(a1 + 42) == 1)
  {
    sub_100007774(&v61, "Tx: ", 4);
    v8 = std::ostream::operator<<();
    sub_100007774(v8, " dB, ", 5);
  }

  if (*(a1 + 72) != *(a1 + 64))
  {
    sub_100007774(&v61, "Service UUIDs: ", 15);
    v9 = *(a1 + 64);
    if (*(a1 + 72) != v9)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        sub_10003B85C(v9 + 20 * v10, &v77);
        if ((v79 & 0x80u) == 0)
        {
          v12 = &v77;
        }

        else
        {
          LODWORD(v12) = v77;
        }

        if ((v79 & 0x80u) == 0)
        {
          v13 = v79;
        }

        else
        {
          v13 = DWORD2(v77);
        }

        v14 = sub_100007774(&v61, v12, v13);
        sub_100007774(v14, " ", 1);
        if (v79 < 0)
        {
          operator delete(v77);
        }

        v10 = v11;
        v9 = *(a1 + 64);
        v15 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 72) - v9) >> 2) > v11++;
      }

      while (v15);
    }

    __p = 0;
    v58 = 0;
    std::ostream::sentry::sentry();
    v16 = &v61 + *(v61 - 24);
    if ((v16[32] & 5) == 0)
    {
      (*(**(v16 + 5) + 32))(&v77);
      if (v80 == -1)
      {
        std::ios_base::clear((&v61 + *(v61 - 24)), *(v63 + *(v61 - 24)) | 4);
      }
    }

    std::ostream::sentry::~sentry();
    sub_100007774(&v61, ", ", 2);
  }

  if (*(a1 + 128))
  {
    sub_100007774(&v61, "Service Data UUIDs: ", 20);
    v17 = *(a1 + 112);
    if (v17 != (a1 + 120))
    {
      do
      {
        v77 = xmmword_1008A4DDC;
        v78 = 0;
        if (!sub_10004E15C(v17 + 32, &v77))
        {
          sub_10003B85C((v17 + 32), &v77);
          if ((v79 & 0x80u) == 0)
          {
            v18 = &v77;
          }

          else
          {
            LODWORD(v18) = v77;
          }

          if ((v79 & 0x80u) == 0)
          {
            v19 = v79;
          }

          else
          {
            v19 = DWORD2(v77);
          }

          v20 = sub_100007774(&v61, v18, v19);
          v21 = sub_100007774(v20, ":", 1);
          sub_10000C250((v17 + 56), &__p);
          if ((v59 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            LODWORD(p_p) = __p;
          }

          if ((v59 & 0x80u) == 0)
          {
            v23 = v59;
          }

          else
          {
            v23 = v58;
          }

          v24 = sub_100007774(v21, p_p, v23);
          sub_100007774(v24, " ", 1);
          if (v59 < 0)
          {
            operator delete(__p);
          }

          if (v79 < 0)
          {
            operator delete(v77);
          }
        }

        v25 = *(v17 + 1);
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = *(v17 + 2);
            v27 = *v26 == v17;
            v17 = v26;
          }

          while (!v27);
        }

        v17 = v26;
      }

      while (v26 != (a1 + 120));
    }

    __p = 0;
    v58 = 0;
    std::ostream::sentry::sentry();
    v28 = &v61 + *(v61 - 24);
    if ((v28[32] & 5) == 0)
    {
      (*(**(v28 + 5) + 32))(&v77);
      if (v80 == -1)
      {
        std::ios_base::clear((&v61 + *(v61 - 24)), *(v63 + *(v61 - 24)) | 4);
      }
    }

    std::ostream::sentry::~sentry();
    sub_100007774(&v61, ", ", 2);
  }

  if (*(a1 + 96) != *(a1 + 88))
  {
    sub_100007774(&v61, "Solicited Service UUIDs: ", 25);
    v29 = *(a1 + 88);
    if (*(a1 + 96) != v29)
    {
      v30 = 0;
      v31 = 1;
      do
      {
        sub_10003B85C(v29 + 20 * v30, &v77);
        if ((v79 & 0x80u) == 0)
        {
          v32 = &v77;
        }

        else
        {
          LODWORD(v32) = v77;
        }

        if ((v79 & 0x80u) == 0)
        {
          v33 = v79;
        }

        else
        {
          v33 = DWORD2(v77);
        }

        v34 = sub_100007774(&v61, v32, v33);
        sub_100007774(v34, " ", 1);
        if (v79 < 0)
        {
          operator delete(v77);
        }

        v30 = v31;
        v29 = *(a1 + 88);
        v15 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 96) - v29) >> 2) > v31++;
      }

      while (v15);
    }

    __p = 0;
    v58 = 0;
    std::ostream::sentry::sentry();
    v35 = &v61 + *(v61 - 24);
    if ((v35[32] & 5) == 0)
    {
      (*(**(v35 + 5) + 32))(&v77);
      if (v80 == -1)
      {
        std::ios_base::clear((&v61 + *(v61 - 24)), *(v63 + *(v61 - 24)) | 4);
      }
    }

    std::ostream::sentry::~sentry();
    sub_100007774(&v61, ", ", 2);
  }

  if (!sub_10000D26C(a1 + 48))
  {
    sub_100007774(&v61, "MFR Data: ", 10);
    sub_10000C250(a1 + 48, &v77);
    if ((v79 & 0x80u) == 0)
    {
      v36 = &v77;
    }

    else
    {
      LODWORD(v36) = v77;
    }

    if ((v79 & 0x80u) == 0)
    {
      v37 = v79;
    }

    else
    {
      v37 = DWORD2(v77);
    }

    v38 = sub_100007774(&v61, v36, v37);
    sub_100007774(v38, "[AppleTypesBitmap:", 18);
    sub_10004C764();
  }

  if (!sub_10000D26C(a1 + 136))
  {
    sub_100007774(&v61, "LE BT Address: ", 15);
    sub_10000C250(a1 + 136, &v77);
    if ((v79 & 0x80u) == 0)
    {
      v39 = &v77;
    }

    else
    {
      LODWORD(v39) = v77;
    }

    if ((v79 & 0x80u) == 0)
    {
      v40 = v79;
    }

    else
    {
      v40 = DWORD2(v77);
    }

    sub_100007774(&v61, v39, v40);
    if (v79 < 0)
    {
      operator delete(v77);
    }

    sub_100007774(&v61, ", ", 2);
  }

  if (!sub_10000D26C(a1 + 152))
  {
    sub_100007774(&v61, "MFR Data (non-Apple): ", 22);
    sub_10000C250(a1 + 152, &v77);
    if ((v79 & 0x80u) == 0)
    {
      v41 = &v77;
    }

    else
    {
      LODWORD(v41) = v77;
    }

    if ((v79 & 0x80u) == 0)
    {
      v42 = v79;
    }

    else
    {
      v42 = DWORD2(v77);
    }

    sub_100007774(&v61, v41, v42);
    if (v79 < 0)
    {
      operator delete(v77);
    }

    sub_100007774(&v61, ", ", 2);
  }

  if (!sub_10000D26C(a1 + 224))
  {
    sub_100007774(&v61, "TDS Data: ", 10);
    sub_10000C250(a1 + 224, &v77);
    if ((v79 & 0x80u) == 0)
    {
      v43 = &v77;
    }

    else
    {
      LODWORD(v43) = v77;
    }

    if ((v79 & 0x80u) == 0)
    {
      v44 = v79;
    }

    else
    {
      v44 = DWORD2(v77);
    }

    sub_100007774(&v61, v43, v44);
    if (v79 < 0)
    {
      operator delete(v77);
    }

    sub_100007774(&v61, ", ", 2);
  }

  if ((*(a1 + 12) & 1) == 0)
  {
    sub_100007774(&v61, "non-", 4);
  }

  sub_100007774(&v61, "connectable, ", 13);
  if (*(a1 + 13) == 1)
  {
    sub_100007774(&v61, "dual-mode, ", 11);
  }

  if (*(a1 + 14) == 1)
  {
    sub_100007774(&v61, "AP wakeup, ", 11);
  }

  if (*(a1 + 219))
  {
    sub_100007774(&v61, "channel: ", 9);
    v45 = std::ostream::operator<<();
    sub_100007774(v45, ", ", 2);
  }

  if (*(a1 + 220) == 1)
  {
    sub_100007774(&v61, "RSSI_WLAN, ", 11);
  }

  if (!*(a1 + 365))
  {
    v46 = "sourceCore: MainCore";
    goto LABEL_129;
  }

  if (*(a1 + 365) == 1)
  {
    v46 = "sourceCore: ScanCore";
LABEL_129:
    v47 = 20;
    goto LABEL_131;
  }

  v46 = "sourceCore: Unknown";
  v47 = 19;
LABEL_131:
  v48 = sub_100007774(&v61, v46, v47);
  sub_100007774(v48, ", ", 2);
  if (!sub_10000D26C(a1 + 448))
  {
    sub_100007774(&v61, "Resolvable Set ID Data: ", 24);
    sub_10000C250(a1 + 448, &v77);
    if ((v79 & 0x80u) == 0)
    {
      v49 = &v77;
    }

    else
    {
      LODWORD(v49) = v77;
    }

    if ((v79 & 0x80u) == 0)
    {
      v50 = v79;
    }

    else
    {
      v50 = DWORD2(v77);
    }

    sub_100007774(&v61, v49, v50);
    if (v79 < 0)
    {
      operator delete(v77);
    }

    sub_100007774(&v61, ", ", 2);
  }

  sub_100007774(&v61, "IsELNAOn: ", 10);
  v51 = std::ostream::operator<<();
  sub_100007774(v51, ", ", 2);
  sub_100007774(&v61, "IsPassup: ", 10);
  v52 = std::ostream::operator<<();
  sub_100007774(v52, ", ", 2);
  sub_100007774(&v61, "IsFromSCCompensation", 20);
  v53 = std::ostream::operator<<();
  sub_100007774(v53, ", ", 2);
  sub_100007774(&v61, "IsCoexDenied", 12);
  v54 = std::ostream::operator<<();
  sub_100007774(v54, ", ", 2);
  std::stringbuf::str();
  *&v61 = v55;
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64[1]);
  }

  std::locale::~locale(&v62);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10004C694(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  std::ostream::sentry::~sentry();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10004C828(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 8) + 56);
  v24 = &off_100AE0A78;
  v25 = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  v7 = sub_10000C5E0(&v24);
  v8 = sub_10000C5F8(&v24);
  if (v7 >= 2)
  {
    v9 = v8;
    if (*v8 == 76 && !*(v8 + 1) && v7 >= 4)
    {
      v10 = v8 + v7;
      v11 = (v8 + 2);
      while (1)
      {
        v12 = v11 + 2;
        v13 = v11[1] & 0x1F;
        if (v10 - (v11 + 2) < v13)
        {
          goto LABEL_53;
        }

        if (*v11 == 7)
        {
          break;
        }

        v11 = &v12[v13];
        if (v10 - &v12[v13] <= 1)
        {
          goto LABEL_53;
        }
      }

      if (v13 < 0x11)
      {
        goto LABEL_53;
      }

      v14 = *v12;
      if (v14 != 8 && v14 != 6)
      {
        goto LABEL_53;
      }

      v39 = 0uLL;
      v16 = *v12;
      if (v16 == 6)
      {
        v8 = sub_1000AF798(a1, a2, &v39);
        if ((v8 & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
          {
            sub_100777574(a2);
            sub_1008764AC();
          }

          goto LABEL_53;
        }
      }

      else if (v16 == 8)
      {
        *&buf[3] = 0;
        *buf = 0;
        v17 = sub_10009A66C(a2);
        *buf = v17;
        buf[6] = BYTE6(v17);
        *&buf[4] = WORD2(v17);
        if (qword_100B508C0 != -1)
        {
          sub_100874964();
        }

        v8 = sub_1007CA58C(off_100B508B8, buf, &v39);
        if ((v8 & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
          {
            sub_100876470();
          }

          goto LABEL_53;
        }
      }

      __chkstk_darwin(v8);
      bzero(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      memcpy(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      v18 = v12 - v9 + 1;
      if (v16 == 6)
      {
        if (sub_1002D898C(&v39, &v24 + v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &v24 + v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7 - v18))
        {
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            sub_100777574(a2);
            sub_100876564();
          }

          goto LABEL_53;
        }

        v19 = *(a3 + 8);
        *(v19 + 362) = 1;
        v20 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
        {
          sub_100777574(a2);
          if (v27 >= 0)
          {
            v21 = v26;
          }

          else
          {
            v21 = v26[0];
          }

          *buf = 136447747;
          *&buf[4] = v21;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          v29 = 1040;
          v30 = v7;
          v31 = 2097;
          v32 = v9;
          v33 = 2160;
          v34 = 1752392040;
          v35 = 1040;
          v36 = v7;
          v37 = 2097;
          v38 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Decrypt AccessoryStatus ADV success: %{public}s, %{private, mask.hash}.*P -> %{private, mask.hash}.*P", buf, 0x40u);
          if (v27 < 0)
          {
            operator delete(v26[0]);
          }

          v19 = *(a3 + 8);
        }

        goto LABEL_51;
      }

      if (v16 != 8)
      {
        goto LABEL_53;
      }

      ccaes_ecb_decrypt_mode();
      if (!ccecb_one_shot())
      {
        v19 = *(a3 + 8);
        *(v19 + 362) = 1;
        v22 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_100777574(a2);
          if (v27 >= 0)
          {
            v23 = v26;
          }

          else
          {
            v23 = v26[0];
          }

          *buf = 136447747;
          *&buf[4] = v23;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          v29 = 1040;
          v30 = v7;
          v31 = 2097;
          v32 = v9;
          v33 = 2160;
          v34 = 1752392040;
          v35 = 1040;
          v36 = v7;
          v37 = 2097;
          v38 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Decrypt FindMyAccessory ADV success: %{public}s, %{private, mask.hash}.*P -> %{private, mask.hash}.*P", buf, 0x40u);
          if (v27 < 0)
          {
            operator delete(v26[0]);
          }

          v19 = *(a3 + 8);
        }

LABEL_51:
        sub_10000C704(buf, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        sub_10000AE20(v19 + 48, buf);
        *buf = &off_100AE0A78;
        if (*&buf[8])
        {
          sub_10000C808(*&buf[8]);
        }

        goto LABEL_53;
      }

      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100777574(a2);
        sub_100876508();
      }
    }
  }

LABEL_53:
  v24 = &off_100AE0A78;
  if (v25)
  {
    sub_10000C808(v25);
  }
}

void sub_10004CD98(_Unwind_Exception *exception_object)
{
  *(v2 - 224) = v1;
  v4 = *(v2 - 216);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004CE24(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10004CE24(a1, *a2);
    sub_10004CE24(a1, a2[1]);
    a2[7] = &off_100AE0A78;
    v4 = a2[8];
    if (v4)
    {
      sub_10000C808(v4);
    }

    operator delete(a2);
  }
}

void *sub_10004CEA4(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_100085830();
  }

  return result;
}

void sub_10004CF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C5E0(*(a3 + 8) + 48) >= 0x1D)
  {
    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008743BC();
      }

      sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, v18);
      v7 = sub_10004DF60(v18);
      sub_10004D9B0(a2);
      if (v17 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      buf[0] = 138412546;
      *&buf[1] = v7;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "decryptProximityPairingPayload device:%@ address:%s", buf, 0x16u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_10000C5F8(*(a3 + 8) + 48);
    v10 = *v9 == 76 && *(v9 + 2) == 7;
    if (v10 && *(v9 + 4) == 1)
    {
      v18[0] = 0;
      v18[1] = 0;
      if (sub_1000AF798(a1, a2, v18))
      {
        sub_10000C5E0(*(a3 + 8) + 48);
        operator new[]();
      }

      v11 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
      {
        v12 = sub_100063D0C(a2);
        LODWORD(__p[0]) = 138543362;
        *(__p + 4) = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No encryption key for the device %{public}@", __p, 0xCu);
      }
    }
  }
}

void sub_10004D77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10004D7E0(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1 + 1];
    if (v11 < 0)
    {
      sub_1000C7698();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v26 = a1;
    if (v13)
    {
      operator new();
    }

    v23 = 0;
    v24 = &__src[-v10];
    v25 = &__src[-v10];
    sub_10009AA7C(&v23, a3);
    v14 = v24;
    memcpy(v25, v4, a1[1] - v4);
    v15 = *a1;
    v16 = v24;
    *&v25 = v25 + a1[1] - v4;
    a1[1] = v4;
    v17 = &v16[v15 - v4];
    memcpy(v17, v15, v4 - v15);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    *(a1 + 1) = v25;
    *&v25 = v18;
    *(&v25 + 1) = v19;
    v23 = v18;
    v24 = v18;
    if (v18)
    {
      operator delete(v18);
    }

    return v14;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 1);
    }

    else
    {
      v9 = 0;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
      v9 = a1[1];
    }

    v21 = v4 <= a3 && v9 > a3;
    *v4 = a3[v21];
  }

  return v4;
}

void sub_10004D988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004D9B0(uint64_t a1)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  sub_100008760(&v23);
  if ((a1 & 0xFF000000000000) != 0)
  {
    v2 = "Random ";
  }

  else
  {
    v2 = "Public ";
  }

  v3 = sub_100007774(&v23, v2, 7);
  *(v3 + *(*v3 - 24) + 8) |= 0x4000u;
  v22 = 48;
  v4 = sub_10004DE98(v3, &v22);
  v5 = *v4;
  *(v4 + *(*v4 - 24) + 24) = 2;
  *(v4 + *(v5 - 24) + 8) = *(v4 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::ostream::operator<<();
  v7 = sub_100007774(v6, ":", 1);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 24) = 2;
  *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = std::ostream::operator<<();
  v10 = sub_100007774(v9, ":", 1);
  v11 = *v10;
  *(v10 + *(*v10 - 24) + 24) = 2;
  *(v10 + *(v11 - 24) + 8) = *(v10 + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  v12 = std::ostream::operator<<();
  v13 = sub_100007774(v12, ":", 1);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 24) = 2;
  *(v13 + *(v14 - 24) + 8) = *(v13 + *(v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  v15 = std::ostream::operator<<();
  v16 = sub_100007774(v15, ":", 1);
  v17 = *v16;
  *(v16 + *(*v16 - 24) + 24) = 2;
  *(v16 + *(v17 - 24) + 8) = *(v16 + *(v17 - 24) + 8) & 0xFFFFFFB5 | 8;
  v18 = std::ostream::operator<<();
  v19 = sub_100007774(v18, ":", 1);
  v20 = *v19;
  *(v19 + *(*v19 - 24) + 24) = 2;
  *(v19 + *(v20 - 24) + 8) = *(v19 + *(v20 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v24);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10004DE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003B8618(va);
  _Unwind_Resume(a1);
}

void *sub_10004DE98(void *a1, unsigned __int8 *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

id sub_10004DF60(const unsigned __int8 *a1)
{
  if (uuid_is_null(a1))
  {
    v2 = 0;
  }

  else
  {
    v2 = [[NSUUID alloc] initWithUUIDBytes:a1];
  }

  return v2;
}

void sub_10004DFB8(uint64_t a1, int64_t value, void *a3, int a4)
{
  v6 = value;
  *keys = *off_100AFF4B0;
  values[0] = xpc_int64_create(value);
  values[1] = a3;
  if (((v6 - 62) > 0x1D || ((1 << (v6 - 62)) & 0x20000081) == 0) && v6 != 208)
  {
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10084A09C(a1, v6, v8);
    }
  }

  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = xpc_dictionary_create(keys, values, v9);
  sub_10000EC68(a1, v10);
  v11 = *(a1 + 16);
  if (v11)
  {
    xpc_connection_send_message(v11, v10);
  }

  else
  {
    v12 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v13 = *v13;
      }

      v14 = 136446210;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Invalid Connection on session %{public}s, ignored.", &v14, 0xCu);
    }
  }

  xpc_release(v10);
  xpc_release(values[0]);
  if (a3)
  {
    if (a4)
    {
      xpc_release(a3);
    }
  }
}

BOOL sub_10004E15C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    return memcmp(a1 + 4, a2 + 4, v2) == 0;
  }

  else
  {
    *v8 = 0;
    *v7 = 0;
    if (v2 == 4)
    {
      v8[0] = 16;
      *&v8[4] = xmmword_1008A4A6D;
      *&v8[4] = bswap32(*(a1 + 1));
    }

    else if (v2 == 2)
    {
      v8[0] = 16;
      *&v8[4] = xmmword_1008A4A6D;
      *&v8[6] = bswap32(*(a1 + 2)) >> 16;
    }

    else
    {
      *v8 = *a1;
      *&v8[16] = *(a1 + 4);
    }

    if (v3 == 4)
    {
      v7[0] = 16;
      *&v7[4] = xmmword_1008A4A6D;
      *&v7[4] = bswap32(*(a2 + 1));
    }

    else if (v3 == 2)
    {
      v7[0] = 16;
      *&v7[4] = xmmword_1008A4A6D;
      *&v7[6] = bswap32(*(a2 + 2)) >> 16;
    }

    else
    {
      *v7 = *a2;
      *&v7[16] = *(a2 + 4);
    }

    return *v8 == *v7 && *&v8[8] == *&v7[8] && *&v8[16] == *&v7[16];
  }
}

unsigned __int8 *sub_10004E2F0(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 getUUIDBytes:a1];
  }

  else
  {
    uuid_clear(a1);
  }

  return a1;
}

uint64_t sub_10004E34C(uint64_t a1, unsigned __int8 *uu2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = uuid_compare((v3 + 32), uu2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || uuid_compare(uu2, (v5 + 32)) < 0)
  {
    return v2;
  }

  return v5;
}

uint64_t *sub_10004E3C8(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_10007C3A8(a3, v4 + 28))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_10007C3A8(v7 + 28, a3))
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_10004E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 120))
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    if (*(a2 + 24))
    {
      v9 = sub_10000EE80(0, a2);
      (*(*v9 + 40))(v9, a3, a4, a5);
      return 1;
    }
  }

  return result;
}

void sub_10004E4DC(uint64_t **a1)
{
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_10004ED7C();
}

void sub_10004E570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000533E0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004E594(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, const unsigned __int8 *__attribute__((__org_typedef(uuid_t))) *a4)
{
  v5 = 0;
  result = *sub_10004A7D0(a1, &v5, uu1);
  if (!result)
  {
    sub_100046CC4();
  }

  return result;
}

uint64_t sub_10004E638(uint64_t a1, _WORD *a2, unint64_t a3, void **a4, _BYTE *a5)
{
  if (a3 < 3 || *(*(a1 + 8) + 88) == *(*(a1 + 8) + 96) || *a2 != 76)
  {
    return 0;
  }

  else
  {
    return sub_10004E668(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_10004E668(uint64_t a1, uint64_t a2, unint64_t a3, void **a4, _BYTE *a5)
{
  if (a3 >= 3)
  {
    v8 = 2;
    v9 = 2;
    while (1)
    {
      v10 = a2 + v8;
      v11 = *(a2 + v8);
      if (v11 == 1)
      {
        if (v9 + 16 >= a3)
        {
          v29 = qword_100BCE918;
          if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          *v40 = 0;
          v30 = "Invalid length";
LABEL_53:
          v32 = v29;
          v33 = 2;
LABEL_54:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v30, v40, v33);
          break;
        }

        v12 = *(a1 + 8);
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        v13 = (v12 + 8);
        if (v15 != v14)
        {
          *v40 = 0;
          v41 = 0;
          v42[0] = 0;
          sub_10000CB74(v40, v13);
          v17 = *v40;
          v16 = v41;
          if (*v40 == v41)
          {
            v18 = 0;
            if (*v40)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v18 = 0;
            do
            {
              v39 = 0;
              v19 = *v17;
              *&buf[16] = *(v17 + 16);
              *buf = v19;
              sub_100570420(buf, &v39 + 1, &v39);
              if (HIBYTE(v39) <= 0xFuLL && ((*(v10 + 1 + HIBYTE(v39)) >> v39) & 1) != 0)
              {
                v20 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                {
                  sub_10003B85C(v17, __p);
                  v21 = __p;
                  if (v38 < 0)
                  {
                    v21 = __p[0];
                  }

                  *buf = 136446722;
                  *&buf[4] = v21;
                  *&buf[12] = 1024;
                  *&buf[14] = HIBYTE(v39);
                  *&buf[18] = 1024;
                  v44 = v39;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Tentatively matched UUID %{public}s (@ byte: %u, bit: %u)", buf, 0x18u);
                  if (v38 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                sub_10000CDB8(a4, v17);
                v18 = 1;
              }

              v17 += 20;
            }

            while (v17 != v16);
            v17 = *v40;
            if (*v40)
            {
LABEL_18:
              v41 = v17;
              operator delete(v17);
            }
          }

          v9 += 17;
          goto LABEL_42;
        }

        v18 = 0;
        v25 = 0;
        LODWORD(v22) = v9 + 1;
        v23 = 16;
      }

      else
      {
        v22 = v9 + 1;
        if (v22 >= a3)
        {
          v29 = qword_100BCE918;
          if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          *v40 = 0;
          v30 = "Invalid length, not enough room for the len field.";
          goto LABEL_53;
        }

        v23 = *(a2 + v22) & 0x1F;
        if (v23 == 31)
        {
          v24 = v9 + 2;
          if (v24 >= a3)
          {
            v29 = qword_100BCE918;
            if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
            {
              break;
            }

            *v40 = 0;
            v30 = "Not enough data for the extended data byte. Ignoring.";
            goto LABEL_53;
          }

          v23 = *(a2 + v24) + 31;
          v25 = 2;
        }

        else
        {
          v25 = 1;
        }

        if (v23 + v9 + v25 > a3)
        {
          v31 = qword_100BCE918;
          if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          *v40 = 67109888;
          *&v40[4] = v9;
          LOWORD(v41) = 1024;
          *(&v41 + 2) = v23;
          HIWORD(v41) = 1024;
          LODWORD(v42[0]) = v25;
          WORD2(v42[0]) = 2048;
          *(v42 + 6) = a3;
          v30 = "Ignoring packet since byte offset of %d + payload length of %d + length size of %d doesnt fit in dataLength %zu";
          v32 = v31;
          v33 = 30;
          goto LABEL_54;
        }

        v26 = sub_10000D124((*(a1 + 8) + 248), 0, 0x100uLL);
        v27 = *(a1 + 8);
        if (v26 && ((*(v27 + ((v11 >> 3) & 0x18) + 248) >> v11) & 1) != 0)
        {
          v28 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            *v40 = 67109120;
            *&v40[4] = v11;
            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Show dup for given rule with puck type 0x%x", v40, 8u);
            v27 = *(a1 + 8);
          }

          *a5 = 1;
        }

        if (v11 != 2)
        {
          goto LABEL_38;
        }

        if (![*(v27 + 112) count])
        {
          v27 = *(a1 + 8);
LABEL_38:
          if (*(v27 + 88) != *(v27 + 96) && ((*(v27 + ((v11 >> 3) & 0x18) + 280) >> v11) & 1) != 0)
          {
            sub_10004ED20(v27, v11);
            v18 = 1;
            return v18 & 1;
          }

          v18 = 0;
          goto LABEL_41;
        }

        v18 = 1;
      }

LABEL_41:
      v9 = v22 + v25 + v23;
LABEL_42:
      v8 = v9;
      if (v9 >= a3 || (v18 & 1) != 0)
      {
        return v18 & 1;
      }
    }
  }

  v18 = 0;
  return v18 & 1;
}

unint64_t sub_10004EB40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100008904(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v15 = *(a3 + 16);
    }

    v6 = v6 + 184 != sub_1000463C8(v6 + 176, __p);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000801C(v16);
  v8 = sub_10005063C(v7, v5);
  v10 = v8;
  if (v8)
  {
    v13 = 0;
    v11 = sub_1000BE4B4(v8, v9);
    if ((*(*v11 + 784))(v11, v10, a3, &v13))
    {
      v6 = v6;
    }

    else
    {
      v6 = (v13 | v6) != 0;
    }
  }

  sub_1000088CC(v16);

  return v6;
}

void sub_10004EC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a18);

  _Unwind_Resume(a1);
}

BOOL sub_10004ECB4(uint64_t a1)
{
  sub_1000534F0(*(a1 + 8), &v4);
  if (v5 == v4)
  {
    v2 = *(*(a1 + 8) + 64) != *(*(a1 + 8) + 56);
    if (!v4)
    {
      return v2;
    }

    goto LABEL_3;
  }

  v2 = 1;
  if (v4)
  {
LABEL_3:
    v5 = v4;
    operator delete(v4);
  }

  return v2;
}

void sub_10004ED20(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  for (i = *(a1 + 96); v2 != i; v2 += 96)
  {
    if (*(v2 + 8) == a2)
    {
      objc_storeStrong((a1 + 184), *v2);
    }
  }
}

void sub_10004EDFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000533E0(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10004EE18(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100053674(a1, *a2, (a2 + 8));
  return a1;
}

BOOL sub_10004EE74(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 48);
  sub_10004DFB4(uu2, v3);
  v4 = sub_10004E34C(a1 + 440, uu2);
  v5 = v4;
  if (a1 + 448 == v4)
  {
    v6 = 0;
  }

  else
  {
    sub_1000AFFEC(*(v4 + 56), 0, uu2);
    if (sub_10000D26C(uu2))
    {
      sub_1000AFFEC(*(v5 + 56), 3, &v16);
      if (sub_10000D26C(&v16))
      {
        sub_1000AFFEC(*(v5 + 56), 4, &v14);
        if (sub_10000D26C(&v14))
        {
          sub_1000AFFEC(*(v5 + 56), 5, &v12);
          if (sub_10000D26C(&v12))
          {
            sub_1000AFFEC(*(v5 + 56), 8, &v10);
            if (sub_10000D26C(&v10))
            {
              sub_1000AFFEC(*(v5 + 56), 9, &v8);
              v6 = !sub_10000D26C(&v8);
              v8 = &off_100AE0A78;
              if (v9)
              {
                sub_10000C808(v9);
              }
            }

            else
            {
              v6 = 1;
            }

            v10 = &off_100AE0A78;
            if (v11)
            {
              sub_10000C808(v11);
            }
          }

          else
          {
            v6 = 1;
          }

          v12 = &off_100AE0A78;
          if (v13)
          {
            sub_10000C808(v13);
          }
        }

        else
        {
          v6 = 1;
        }

        v14 = &off_100AE0A78;
        if (v15)
        {
          sub_10000C808(v15);
        }
      }

      else
      {
        v6 = 1;
      }

      v16 = &off_100AE0A78;
      if (v17)
      {
        sub_10000C808(v17);
      }
    }

    else
    {
      v6 = 1;
    }

    *uu2 = &off_100AE0A78;
    if (v20)
    {
      sub_10000C808(v20);
    }
  }

  sub_1000088CC(v18);

  return v6;
}

void sub_10004F100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, atomic_uint *a13, uint64_t a14, atomic_uint *a15, uint64_t a16, atomic_uint *a17, uint64_t a18, atomic_uint *a19)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  if (a13)
  {
    sub_10000C808(a13);
  }

  if (a15)
  {
    sub_10000C808(a15);
  }

  if (a17)
  {
    sub_10000C808(a17);
  }

  if (a19)
  {
    sub_10000C808(a19);
  }

  *(v20 - 56) = &off_100AE0A78;
  v22 = *(v20 - 48);
  if (v22)
  {
    sub_10000C808(v22);
  }

  sub_1000088CC(v20 - 72);

  _Unwind_Resume(a1);
}

void sub_10004F274(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 **a4, unsigned int a5, uint64_t a6, void *a7)
{
  v11 = a2;
  v12 = a7;
  v13 = *(a1 + 120);
  if (v13)
  {
    v14 = *(v13 - 16);
    LOBYTE(v50) = v13[27];
    BYTE4(v50) = v13[26];
    v15 = v13[29];
    v16 = v13[30];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (*(*(a3 + 8) + 304))
    {
LABEL_26:
      if (v13)
      {
        v28 = v13[24];
        v29 = *(v13 - 16);
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      v33 = sub_10005201C(v11, v28 & 1, v29);
      if (v14 == 2)
      {
        v34 = 1;
      }

      else
      {
        v35 = HIWORD(*(a1 + 360));
        v36 = v35 == 1 || v35 == 10;
        v34 = v36;
      }

      v37 = sub_100050F1C(v11, *(a1 + 88), a3, a4, a6, v34, BYTE4(v50) & 1, v50 & 1, v15 & 1, v16 & 1, v14 > 0);
      xpc_dictionary_set_value(v33, "kCBMsgArgAdvertisementData", v37);
      xpc_release(v37);
      v39 = *(a3 + 8);
      v38 = a3 + 8;
      xpc_dictionary_set_int64(v33, "kCBMsgArgRssi", *(v39 + 216));
      xpc_dictionary_set_int64(v33, "kCBMsgArgAdvertisingMoreAvailable", a5);
      v40 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
      {
        sub_10083B7E4(a5, v38, v40);
      }

      xpc_dictionary_set_int64(v33, "kCBMsgArgAdvertisingIsFromADVBuff", *(*v38 + 304));
      if (v14 >= 1)
      {
        v41 = v12;
        xpc_dictionary_set_string(v33, "kCBScanOptionFilterIdentifierString", [v12 UTF8String]);
      }

      v42 = sub_100050F18(v33);
      sub_100052C08(a1, 91, v42);

      xpc_release(v33);
      goto LABEL_50;
    }

    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083B7A8();
    }

    goto LABEL_50;
  }

  v15 = 0;
  v50 = 0;
  v14 = 0;
  v16 = 0;
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  if (sub_10004FF0C(off_100B508C8, v11, *(a1 + 88), *(a1 + 104)))
  {
    if (sub_100050B20(a1, v11))
    {
      if (sub_100050A7C(a1, (*(a3 + 8) + 64)))
      {
        if (sub_100050A7C(a1, a4))
        {
          v49 = a5;
          v17 = *(a3 + 8);
          memset(buf, 0, sizeof(buf));
          v18 = *(v17 + 112);
          v19 = (v17 + 120);
          if (v18 != (v17 + 120))
          {
            do
            {
              sub_10000CDB8(buf, v18 + 2);
              v20 = *(v18 + 1);
              if (v20)
              {
                do
                {
                  v21 = v20;
                  v20 = *v20;
                }

                while (v20);
              }

              else
              {
                do
                {
                  v21 = *(v18 + 2);
                  v36 = *v21 == v18;
                  v18 = v21;
                }

                while (!v36);
              }

              v18 = v21;
            }

            while (v21 != v19);
          }

          if (sub_100050A7C(a1, buf))
          {
            v22 = sub_10000AE6C(*(a3 + 8));
            v23 = sub_100050900(a1, v22);
            v24 = *(a3 + 8);
            if (v23)
            {
              goto LABEL_18;
            }

            v43 = qword_100BCE988;
            if ((*(v24 + 168) & 4) != 0)
            {
              v44 = *(a3 + 8);
              v45 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO);
              v24 = v44;
              if (v45)
              {
                *__dst = 138412290;
                *&__dst[4] = v11;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Session can access device %@ with iBeacon", __dst, 0xCu);
                v24 = *(a3 + 8);
              }

LABEL_18:
              v26 = *(v24 + 64);
              v25 = *(v24 + 72);
              if (v26 == v25)
              {
                v27 = v24;
              }

              else
              {
                v48 = v24;
                while (1)
                {
                  *__dst = xmmword_1008A4D00;
                  LODWORD(v56) = 0;
                  if (sub_10004E15C(v26, __dst))
                  {
                    break;
                  }

                  v26 += 20;
                  if (v26 == v25)
                  {
                    v26 = v25;
                    break;
                  }
                }

                v27 = *(a3 + 8);
                v24 = v48;
              }

              a5 = v49;
              if (*(v27 + 12) != 1 || v26 == *(v24 + 72))
              {
                goto LABEL_78;
              }

              if (*(v27 + 39) < 0)
              {
                sub_100008904(__dst, *(v27 + 16), *(v27 + 24));
              }

              else
              {
                *__dst = *(v27 + 16);
                v56 = *(v27 + 32);
              }

              if (sub_1004FA924(__dst, "Powerbeats HR"))
              {
                v46 = 1;
              }

              else
              {
                v47 = *(a3 + 8);
                if (*(v47 + 39) < 0)
                {
                  sub_100008904(__p, *(v47 + 16), *(v47 + 24));
                }

                else
                {
                  *__p = *(v47 + 16);
                  v54 = *(v47 + 32);
                }

                v46 = sub_1004FA924(__p, "Generic Tracker");
                if (SHIBYTE(v54) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (SHIBYTE(v56) < 0)
              {
                operator delete(*__dst);
              }

              if (!v46)
              {
LABEL_78:
                if (*buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }

                goto LABEL_26;
              }

              goto LABEL_55;
            }

            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
            {
              sub_10083B738();
            }
          }

          else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_10083B6C8();
          }

LABEL_55:
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          goto LABEL_50;
        }

        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_10083B658();
        }
      }

      else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083B5E8();
      }
    }

    else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083B578();
    }
  }

  else
  {
    v30 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 88);
      v32 = *(a1 + 104);
      *buf = 138412802;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      *&buf[14] = v32;
      *&buf[22] = 2112;
      v58 = v11;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }
  }

LABEL_50:
}

void sub_10004F8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void sub_10004F94C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unsigned __int8 **a5, unsigned int a6, uint64_t a7, void *a8)
{
  v15 = a3;
  v16 = a8;
  v19 = *(a1 + 232);
  v18 = a1 + 232;
  v17 = v19;
  if (v19)
  {
    v20 = v18;
    do
    {
      v21 = *(v17 + 32);
      v22 = v21 >= a2;
      v23 = v21 < a2;
      if (v22)
      {
        v20 = v17;
      }

      v17 = *(v17 + 8 * v23);
    }

    while (v17);
    if (v20 != v18 && *(v20 + 32) <= a2 && !(*(**(v20 + 40) + 16))(*(v20 + 40)))
    {
      v24 = *(v20 + 40);
      ++*(v24 + 344);
      v44 = v24;
      if (*(v24 + 187) == 1)
      {
        if (qword_100B508C0 != -1)
        {
          sub_1008236A8();
        }

        sub_1007C4490(off_100B508B8, 60);
        if (qword_100B508D0 != -1)
        {
          sub_1008236BC();
        }

        v25 = off_100B508C8;
        sub_100007E30(__p, "PrivateModeDevice");
        sub_10078787C(v25, v15, __p);
        if (v53 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v43 = a7;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      sub_10000CB74(&v49, (*(a4 + 8) + 64));
      v26 = v49;
      v27 = v50;
      if (v49 != v50)
      {
        while (1)
        {
          buf = xmmword_1008A4E18;
          LODWORD(v57) = 0;
          if (sub_10004E15C(v26, &buf))
          {
            break;
          }

          v26 += 20;
          if (v26 == v27)
          {
            v26 = v27;
            break;
          }
        }

        v27 = v50;
      }

      v28 = v43;
      if (v26 != v27)
      {
        v29 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Set TAG as CarPlay", &buf, 2u);
        }

        if (qword_100B508D0 != -1)
        {
          sub_100823A10();
        }

        v30 = off_100B508C8;
        sub_100007E30(v47, "_CARPLAY_DEVICE_");
        sub_10078787C(v30, v15, v47);
        if (v48 < 0)
        {
          operator delete(v47[0]);
        }
      }

      v31 = sub_10000E92C();
      v32 = (*(*v31 + 912))(v31);
      if (v32)
      {
        buf = 0uLL;
        v57 = 0;
        sub_10000CB74(&buf, (*(a4 + 8) + 64));
        v42 = *(a4 + 8);
        v34 = *(&buf + 1);
        v33 = buf;
        if (buf != *(&buf + 1))
        {
          while (1)
          {
            v58 = xmmword_1008A4C9C;
            v59 = 0;
            if (sub_10004E15C(v33, &v58))
            {
              break;
            }

            v33 += 20;
            if (v33 == v34)
            {
              v33 = v34;
              break;
            }
          }

          v34 = *(&buf + 1);
        }

        v28 = v43;
        if (v33 != v34)
        {
          goto LABEL_45;
        }

        v58 = xmmword_1008A4C9C;
        v59 = 0;
        sub_10000D03C(&v55, &v58);
        v35 = sub_100058794(v42 + 112, &v55);
        if (v42 + 120 != v35)
        {
          goto LABEL_45;
        }

        v36 = *(&buf + 1);
        v37 = buf;
        if (buf != *(&buf + 1))
        {
          v41 = v35;
          while (1)
          {
            v58 = xmmword_1008A4CD8;
            v59 = 0;
            if (sub_10004E15C(v37, &v58))
            {
              break;
            }

            v37 += 20;
            if (v37 == v36)
            {
              v37 = v36;
              break;
            }
          }

          v36 = *(&buf + 1);
          v35 = v41;
        }

        v28 = v43;
        if (v37 != v36 || (v38 = v35, v58 = xmmword_1008A4CD8, v59 = 0, sub_10000D03C(&v54, &v58), v38 != sub_100058794(v42 + 112, &v54)))
        {
LABEL_45:
          v39 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v58) = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Set TAG as LEAudio device", &v58, 2u);
          }

          if (qword_100B508D0 != -1)
          {
            sub_100823A10();
          }

          v40 = off_100B508C8;
          sub_100007E30(v45, "_LEAUDIO_DEVICE_");
          sub_10078787C(v40, v15, v45);
          if (v46 < 0)
          {
            operator delete(v45[0]);
          }
        }

        v32 = buf;
        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }
      }

      sub_10004E450(v32, v44, a2, 10, 0);
      sub_10004F274(v44, v15, a4, a5, a6, v28, v16);
      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }
    }
  }
}

void sub_10004FE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  v38 = *(v36 - 160);
  if (v38)
  {
    *(v36 - 152) = v38;
    operator delete(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10004FF0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 96);
  v10 = sub_10004B1D8(a1, v7);
  if (v10)
  {
    v11 = sub_100050710(v10, v8, v9);
  }

  else
  {
    sub_10000801C(v13);
    v11 = 1;
  }

  sub_1000088CC(v13);

  return v11;
}

void sub_10004FFDC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    if (*(v6 + 127) < 0)
    {
      sub_100008904(a3, v6[13], v6[14]);
    }

    else
    {
      v7 = *(v6 + 13);
      *(a3 + 16) = v6[15];
      *a3 = v7;
    }
  }

  else
  {
    sub_100007E30(a3, "");
  }

  sub_1000088CC(v8);
}

id sub_1000500A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 beaconIdentifier];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100050140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10005016C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 238);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_1000501D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1000501F8(uint64_t a1, unsigned __int8 *a2)
{
  if (a1 + 392 == sub_10004E34C(a1 + 384, a2))
  {
    return 255;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v3 = off_100B508C8;
  v4 = sub_10004DF60(a2);
  v5 = sub_1000D5D08(v3, v4) ^ 1;

  return v5;
}

BOOL sub_100050290(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = a1 + 392 != sub_10004E34C(a1 + 384, a2);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100050304(uint64_t a1, unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v4 = sub_10004E34C(a1 + 384, a2);
  if (a1 + 392 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7 = 0;
    sub_1000216B4(&v7);
    v5 = sub_1000CB318(*(v4 + 48));
    sub_10002249C(&v7);
  }

  sub_1000088CC(v8);
  return v5;
}

void sub_100050390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1000503B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 40);
  sub_10004DFB4(uu2, v3);
  v4 = sub_10004E34C(a1 + 536, uu2);
  if (a1 + 544 == v4)
  {
    v5 = 23;
  }

  else
  {
    uu2[0] = 0;
    sub_1000216B4(uu2);
    v5 = sub_1000D5C70(*(v4 + 48));
    sub_10002249C(uu2);
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10005048C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10002249C(va1);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1000504C8(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_100843904();
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  for (i = *(a1 + 144); i != *(a1 + 152); ++i)
  {
    v7 = *i;
    if (((*(*i + 128) << 40) | (*(*i + 129) << 32) | (*(*i + 130) << 24) | (*(*i + 131) << 16) | (*(*i + 132) << 8) | *(*i + 133)) == a2)
    {
      goto LABEL_11;
    }
  }

  if (a3)
  {
    operator new();
  }

  v7 = 0;
LABEL_11:
  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_10005063C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  v3 = sub_100046458(off_100B508C8, v2, 0);
  if (v3)
  {
    if (qword_100B508F0 != -1)
    {
      sub_1000DAE38();
    }

    v4 = sub_1000504C8(off_100B508E8, v3, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008737D8();
    }

    v4 = 0;
  }

  return v4;
}

uint64_t sub_100050710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 64) beaconIdentifier];

  if (v7)
  {
    v8 = [*(a1 + 64) allowedSessions];

    if (v8)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [*(a1 + 64) allowedSessions];
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            v14 = [v13 bundleId];
            if ([v5 isEqual:v14])
            {
              v15 = [v13 userIdentifier];
              v16 = [v6 isEqual:v15];

              if (v16)
              {
                goto LABEL_14;
              }
            }

            else
            {
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

LABEL_14:
    }
  }

  return 1;
}

uint64_t sub_100050900(uint64_t a1, uint64_t a2)
{
  if (((*(a1 + 482) & 1) != 0 || _os_feature_enabled_impl() && *(a1 + 472)) && !_os_feature_enabled_impl() || !*(a1 + 208))
  {
    return 1;
  }

  v4 = [NSNumber numberWithUnsignedShort:a2];
  if (a2)
  {
    v5 = [*(a1 + 208) containsObject:v4];
  }

  else
  {
    v5 = 1;
  }

  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 208);
    v9[0] = 67109634;
    v9[1] = a2;
    v10 = 2112;
    v11 = v8;
    v12 = 1024;
    v13 = v5;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "canSessionScanForMFGRData %d %@ there:%d", v9, 0x18u);
  }

  return v5;
}

uint64_t sub_100050A7C(uint64_t a1, uint64_t *a2)
{
  if (((*(a1 + 482) & 1) != 0 || _os_feature_enabled_impl() && *(a1 + 472)) && !_os_feature_enabled_impl())
  {
    return 1;
  }

  if (!*(a1 + 200))
  {
    return 1;
  }

  v6 = a2;
  v4 = *a2;
  v5 = v6[1];
  if (v5 == v4)
  {
    return 1;
  }

  do
  {
    result = sub_1004FF2A4(a1, v4);
    if (result)
    {
      break;
    }

    v4 += 20;
  }

  while (v4 != v5);
  return result;
}

uint64_t sub_100050B20(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((_os_feature_enabled_impl() & 1) != 0 && (v4 = *(a1 + 192)) != 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqual:{v3, v10}])
          {
            v6 = 1;
            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id sub_100050C80(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = 8 * count;
  __chkstk_darwin(count);
  v4 = applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, 8 * count);
  __chkstk_darwin(v5);
  bzero(v4, 8 * count);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100050E88;
  applier[3] = &unk_100AFF4C8;
  applier[4] = v11;
  applier[5] = v4;
  applier[6] = v4;
  xpc_dictionary_apply(a1, applier);
  v6 = [[NSDictionary alloc] initWithObjects:v4 forKeys:v4 count:count];
  _Block_object_dispose(v11, 8);
  if (count)
  {
    v7 = 8 * count;
    do
    {

      v7 -= 8;
    }

    while (v7);
    v8 = v4 - 8;
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  return v6;
}

void sub_100050E38(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 88), 8);
  if (v3)
  {
    v7 = v4 - 8;
    v8 = v1;
    do
    {

      v8 -= 8;
    }

    while (v8);
    v9 = v2 - 8;
    do
    {

      v1 -= 8;
    }

    while (v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100050E88(void *a1, uint64_t a2, void *a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = a1[5];
  v7 = *(*(a1[4] + 8) + 24);
  v8 = *(v6 + 8 * v7);
  *(v6 + 8 * v7) = v5;

  v9 = sub_1000527A8(a3);
  v10 = a1[6];
  v11 = *(*(a1[4] + 8) + 24);
  v12 = *(v10 + 8 * v11);
  *(v10 + 8 * v11) = v9;

  ++*(*(a1[4] + 8) + 24);
  return 1;
}

xpc_object_t sub_100050F1C(void *a1, void *a2, uint64_t a3, unsigned __int8 **a4, uint64_t a5, int a6, int a7, int a8, char a9, char a10, char a11)
{
  v83 = a1;
  v82 = a2;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v86[0] = 0;
  v86[1] = 0;
  v85 = v86;
  if ((a9 & 1) == 0)
  {
    bytes = xmmword_1008A4DDC;
    v101 = 0;
    sub_10000D03C(__p, &bytes);
    sub_100051F7C(&v85, __p, __p);
  }

  if ((a11 & 1) == 0)
  {
    bytes = xmmword_1008A4F0C;
    v101 = 0;
    sub_10000D03C(__p, &bytes);
    sub_100051F7C(&v85, __p, __p);
  }

  *__p = "kCBAdvDataIsConnectable";
  *&__p[8] = xpc_BOOL_create(*(*(a3 + 8) + 12));
  sub_100051E74(&v87, __p);
  if (a6)
  {
    v18 = *(*(a3 + 8) + 200);
    LOBYTE(bytes) = BYTE5(v18);
    BYTE1(bytes) = BYTE4(v18);
    BYTE2(bytes) = BYTE3(v18);
    BYTE3(bytes) = BYTE2(v18);
    BYTE4(bytes) = BYTE1(v18);
    BYTE5(bytes) = v18;
    *__p = "kCBAdvDataDeviceAddress";
    *&__p[8] = xpc_data_create(&bytes, 6uLL);
    sub_100051E74(&v87, __p);
    *__p = "kCBAdvDataDeviceAddressType";
    *&__p[8] = xpc_int64_create(BYTE6(v18));
    sub_100051E74(&v87, __p);
  }

  v19 = *(a3 + 8);
  if (*(v19 + 72) != *(v19 + 64))
  {
    *__p = "kCBAdvDataServiceUUIDs";
    *&__p[8] = sub_1005B308C((v19 + 64), &v85);
    sub_100051E74(&v87, __p);
    v19 = *(a3 + 8);
  }

  v21 = *(v19 + 88);
  v22 = *(v19 + 96);
  v20 = (v19 + 88);
  if (v22 != v21)
  {
    *__p = "kCBAdvDataSolicitedServiceUUIDs";
    *&__p[8] = sub_1005B308C(v20, &v85);
    sub_100051E74(&v87, __p);
  }

  if (a4[1] != *a4)
  {
    *__p = "kCBAdvDataHashedServiceUUIDs";
    *&__p[8] = sub_1005B308C(a4, &v85);
    sub_100051E74(&v87, __p);
  }

  v23 = *(a3 + 8);
  if (*(v23 + 39) < 0)
  {
    sub_100008904(__p, *(v23 + 16), *(v23 + 24));
  }

  else
  {
    *__p = *(v23 + 16);
    *&__p[16] = *(v23 + 32);
  }

  if ((__p[23] & 0x80000000) == 0)
  {
    if (!__p[23])
    {
      goto LABEL_28;
    }

LABEL_20:
    *&bytes = "kCBAdvDataLocalName";
    v25 = *(a3 + 8);
    if (*(v25 + 39) < 0)
    {
      sub_100008904(__p, *(v25 + 16), *(v25 + 24));
    }

    else
    {
      *__p = *(v25 + 16);
      *&__p[16] = *(v25 + 32);
    }

    if (__p[23] >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = *__p;
    }

    *(&bytes + 1) = xpc_string_create(v26);
    sub_100051E74(&v87, &bytes);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_28;
  }

  v24 = *&__p[8];
  operator delete(*__p);
  if (v24)
  {
    goto LABEL_20;
  }

LABEL_28:
  v27 = *(a3 + 8);
  v28 = *(v27 + 40);
  if (*(v27 + 40))
  {
    *__p = "kCBAdvDataAppearance";
    *&__p[8] = xpc_int64_create(v28);
    sub_100051E74(&v87, __p);
    v27 = *(a3 + 8);
  }

  if (*(v27 + 42) == 1)
  {
    *__p = "kCBAdvDataTxPowerLevel";
    *&__p[8] = xpc_int64_create(*(v27 + 43));
    sub_100051E74(&v87, __p);
    v27 = *(a3 + 8);
  }

  if (*(v27 + 128))
  {
    v29 = xpc_array_create(0, 0);
    v30 = *(v27 + 112);
    v31 = (v27 + 120);
    if (v30 != v31)
    {
      do
      {
        __p[0] = 0;
        if (v86 == sub_10067DD7C(v85, v86, v30 + 32))
        {
          *__p = 0;
          *&__p[8] = 0;
          v32 = sub_10007A930(v30 + 32, __p);
          xpc_array_set_data(v29, 0xFFFFFFFFFFFFFFFFLL, __p, v32);
          v33 = sub_10000C5F8((v30 + 56));
          v34 = sub_10000C5E0((v30 + 56));
          xpc_array_set_data(v29, 0xFFFFFFFFFFFFFFFFLL, v33, v34);
        }

        v35 = *(v30 + 1);
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
            v36 = *(v30 + 2);
            v37 = *v36 == v30;
            v30 = v36;
          }

          while (!v37);
        }

        v30 = v36;
      }

      while (v36 != v31);
    }

    if (xpc_array_get_count(v29))
    {
      *__p = "kCBAdvDataServiceData";
      *&__p[8] = v29;
      sub_100051E74(&v87, __p);
    }

    else
    {
      xpc_release(v29);
    }
  }

  v38 = sub_10000C5E0(*(a3 + 8) + 48);
  v39 = sub_10000C5F8(*(a3 + 8) + 48);
  v41 = sub_10000C798(v39, v40);
  if ((((*(*v41 + 416))(v41) | a7) & 1) == 0 && v38 >= 3 && *v39 == 76)
  {
    v38 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v42 = *(a3 + 8);
    if (*(v42 + 312) || !v38)
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (!v38)
    {
      goto LABEL_99;
    }

    v42 = *(a3 + 8);
  }

  if (*(v42 + 361) == 1)
  {
    *__p = "kCBAdvDataProximityPairingStatusDecrypted";
    *&__p[8] = xpc_int64_create(1);
    sub_100051E74(&v87, __p);
    v42 = *(a3 + 8);
  }

  if (*(v42 + 362) == 1)
  {
    *__p = "kCBAdvDataAccessoryStatusDecrypted";
    *&__p[8] = xpc_int64_create(1);
    sub_100051E74(&v87, __p);
  }

  if (!*(a5 + 16) || *v39 != 76)
  {
    *__p = "kCBAdvDataManufacturerData";
    *&__p[8] = xpc_data_create(v39, v38);
    sub_100051E74(&v87, __p);
    goto LABEL_99;
  }

  v43 = objc_opt_new();
  v84 = 76;
  [v43 appendBytes:&v84 length:2];
  if (v38 < 3)
  {
    goto LABEL_62;
  }

  for (i = 2; i < v38; i = (v49 + v48 + v47))
  {
    v46 = *(v39 + i);
    if (v46 == 1)
    {
      if (v38 > (i + 16))
      {
        v47 = 0;
        v48 = 16;
        goto LABEL_68;
      }

      v53 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100777574(*(*(a3 + 8) + 200));
        v80 = v102 >= 0 ? &bytes : bytes;
        *__p = 138412802;
        *&__p[4] = v83;
        *&__p[12] = 2080;
        *&__p[14] = v80;
        *&__p[22] = 2112;
        v91 = v82;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "createXpcAdvData error device:%@ address:%s agent:%@, Invalid length", __p, 0x20u);
        if (v102 < 0)
        {
          operator delete(bytes);
        }
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BF24(&bytes, &bytes + 1);
      }

      goto LABEL_94;
    }

    v49 = (i + 1);
    if (v38 <= v49)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100777574(*(*(a3 + 8) + 200));
        sub_10085BEBC();
      }

      goto LABEL_94;
    }

    v48 = *(v39 + v49) & 0x1F;
    if (v48 == 31)
    {
      v50 = (i + 2);
      if (v38 <= v50)
      {
        v59 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100777574(*(*(a3 + 8) + 200));
          if (v102 >= 0)
          {
            p_bytes = &bytes;
          }

          else
          {
            p_bytes = bytes;
          }

          *__p = 138412802;
          *&__p[4] = v83;
          *&__p[12] = 2080;
          *&__p[14] = p_bytes;
          *&__p[22] = 2112;
          v91 = v82;
          v56 = "createXpcAdvData error device:%@ address:%s agent:%@, not enough data for the extended data byte. Ignoring.";
          v57 = v59;
          v58 = 32;
LABEL_132:
          _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, v56, __p, v58);
          if (v102 < 0)
          {
            operator delete(bytes);
          }
        }

LABEL_94:
        v44 = 1;
        goto LABEL_95;
      }

      v48 = *(v39 + v50) + 31;
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }

    if (v38 < (v48 + v47 + i))
    {
      v54 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100777574(*(*(a3 + 8) + 200));
        if (v102 >= 0)
        {
          v55 = &bytes;
        }

        else
        {
          v55 = bytes;
        }

        *__p = 138413826;
        *&__p[4] = v83;
        *&__p[12] = 2080;
        *&__p[14] = v55;
        *&__p[22] = 2112;
        v91 = v82;
        v92 = 1024;
        v93 = i;
        v94 = 1024;
        v95 = v48;
        v96 = 1024;
        v97 = v47;
        v98 = 2048;
        v99 = v38;
        v56 = "createXpcAdvData error device:%@ address:%s agent:%@, ignoring packet since byte offset of %d + payload length of %d + length size of %d doesnt fit in dataLength %zu";
        v57 = v54;
        v58 = 60;
        goto LABEL_132;
      }

      goto LABEL_94;
    }

    v51 = *(a5 + 8);
    if (!v51)
    {
      continue;
    }

    while (1)
    {
      v52 = *(v51 + 25);
      if (v46 >= v52)
      {
        break;
      }

LABEL_79:
      v51 = *v51;
      if (!v51)
      {
        goto LABEL_80;
      }
    }

    if (v52 < v46)
    {
      ++v51;
      goto LABEL_79;
    }

    [v43 appendBytes:v39 + i length:(v48 + v47 + 1)];
LABEL_68:
    LODWORD(v49) = i + 1;
LABEL_80:
    ;
  }

LABEL_62:
  v44 = 0;
LABEL_95:
  if ([v43 length] >= 3)
  {
    *__p = "kCBAdvDataManufacturerData";
    v60 = v43;
    *&__p[8] = xpc_data_create([v43 bytes], objc_msgSend(v43, "length"));
    sub_100051E74(&v87, __p);
    v61 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      v79 = [v43 length];
      *__p = 138413058;
      *&__p[4] = v43;
      *&__p[12] = 2048;
      *&__p[14] = v79;
      *&__p[22] = 2048;
      v91 = v38;
      v92 = 1024;
      v93 = v44;
      _os_log_debug_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "createXpcAdvData sending data:%@ length:%lu originalLength:%zu lenError:%d", __p, 0x26u);
    }
  }

LABEL_99:
  if (sub_10000C5E0(*(a3 + 8) + 136) == 7)
  {
    v62 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v63 = sub_10000C5F8(*(a3 + 8) + 136);
      *__p = 0x704100202;
      *&__p[8] = 2096;
      *&__p[10] = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Create XPC Adv Data with LE BT Address data: %.7P", __p, 0x12u);
    }

    v64 = sub_10000C5F8(*(a3 + 8) + 136);
    *__p = "kCBAdvDataLeBluetoothDeviceAddress";
    *&__p[8] = xpc_data_create(v64, 7uLL);
    sub_100051E74(&v87, __p);
  }

  if (a8)
  {
    v65 = sub_10000C5E0(*(a3 + 8) + 224);
    if (v65)
    {
      v66 = sub_10000C5F8(*(a3 + 8) + 224);
      *__p = "kCBAdvDataTDSData";
      *&__p[8] = xpc_data_create(v66, v65);
      sub_100051E74(&v87, __p);
    }
  }

  v67 = *(a3 + 8);
  v68 = *(v67 + 218);
  if (*(v67 + 218))
  {
    *__p = "kCBAdvDataProximityLevel";
    *&__p[8] = xpc_int64_create(v68);
    sub_100051E74(&v87, __p);
    v67 = *(a3 + 8);
  }

  if (a7)
  {
    *__p = "kCBAdvDataChannel";
    *&__p[8] = xpc_int64_create(*(v67 + 219));
    sub_100051E74(&v87, __p);
    *__p = "kCBAdvDataWlanRSSI";
    *&__p[8] = xpc_BOOL_create(*(*(a3 + 8) + 220));
    sub_100051E74(&v87, __p);
    *__p = "kCBAdvDataWSaturated";
    *&__p[8] = xpc_BOOL_create(*(*(a3 + 8) + 217));
    sub_100051E74(&v87, __p);
    v67 = *(a3 + 8);
  }

  *__p = "kCBAdvDataTimestamp";
  *&__p[8] = xpc_double_create(*(v67 + 240));
  sub_100051E74(&v87, __p);
  *__p = "kCBAdvDataRxPrimaryPHY";
  LOBYTE(v69) = *(*(a3 + 8) + 341);
  *&__p[8] = xpc_double_create(v69);
  sub_100051E74(&v87, __p);
  *__p = "kCBAdvDataRxSecondaryPHY";
  LOBYTE(v70) = *(*(a3 + 8) + 342);
  *&__p[8] = xpc_double_create(v70);
  sub_100051E74(&v87, __p);
  if (a10)
  {
    *__p = "kCBAdvDataScanSourceCore";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 365));
    sub_100051E74(&v87, __p);
    *__p = "kCBAdvDataIsELNAOn";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 366));
    sub_100051E74(&v87, __p);
    *__p = "kCBAdvDataIsPassup";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 367));
    sub_100051E74(&v87, __p);
    *__p = "kCBAdvDataIsFromSCCompensation";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 368));
    sub_100051E74(&v87, __p);
    *__p = "kCBAdvDataIsCoexDenied";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 369));
    sub_100051E74(&v87, __p);
  }

  v71 = *(a3 + 8);
  if (a11 && (*(v71 + 14) & 1) != 0)
  {
    *__p = "kCBAdvDataHostWakeEvent";
    *&__p[8] = xpc_int64_create(1);
    sub_100051E74(&v87, __p);
    v71 = *(a3 + 8);
  }

  if (sub_10000C5E0(v71 + 448))
  {
    v72 = sub_10000C5F8(*(a3 + 8) + 448);
    *__p = "kCBCoordinatedSetRSIAdv";
    v73 = sub_10000C5E0(*(a3 + 8) + 448);
    *&__p[8] = xpc_data_create(v72, v73);
    sub_100051E74(&v87, __p);
  }

  v74 = xpc_dictionary_create(0, 0, 0);
  v76 = v87;
  v75 = v88;
  if (v87 != v88)
  {
    v77 = v87;
    do
    {
      xpc_dictionary_set_value(v74, *v77, v77[1]);
      xpc_release(v77[1]);
      v77 += 2;
    }

    while (v77 != v75);
  }

  sub_10000CEDC(&v85, v86[0]);
  if (v76)
  {
    operator delete(v76);
  }

  return v74;
}

void sub_100051D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10000CEDC(&a13, a14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100051E74(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_1000C7698();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_1000C7698();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_100051F7C(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = 0;
  v3 = *sub_10004E3C8(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

xpc_object_t sub_10005201C(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    goto LABEL_67;
  }

  v7 = v5;
  *uuid = 0;
  v54 = 0;
  [v7 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v6, "kCBMsgArgDeviceUUID", uuid);

  *uuid = 0;
  v54 = 0;
  v55 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_10004FFDC(off_100B508C8, v7, uuid);
  if (SHIBYTE(v55) < 0)
  {
    if (!v54)
    {
      goto LABEL_10;
    }

    v8 = *uuid;
  }

  else
  {
    if (!HIBYTE(v55))
    {
      goto LABEL_10;
    }

    v8 = uuid;
  }

  xpc_dictionary_set_string(v6, "kCBMsgArgName", v8);
LABEL_10:
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  v9 = off_100B508C8;
  sub_100007E30(v50, "ANCSAuthorized");
  v10 = sub_10004EB40(v9, v7, v50);
  xpc_dictionary_set_BOOL(v6, "kCBMsgArgAncsAuthorization", v10);
  if ((v51 & 0x80000000) == 0)
  {
    if (!a2)
    {
      goto LABEL_20;
    }

LABEL_16:
    v11 = sub_100052B30(v7);
    xpc_dictionary_set_int64(v6, "kCBMsgArgPairingState", v11);
    if (qword_100B50F78 != -1)
    {
      sub_10085A8C0();
    }

    if (sub_100052A90(qword_100B50F70, v7))
    {
      xpc_dictionary_set_BOOL(v6, "kCBMsgArgConnectionState", 1);
    }

    goto LABEL_20;
  }

  operator delete(v50[0]);
  if (a2)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (a3 >= 1)
  {
    if (qword_100B541E8 != -1)
    {
      sub_1000E7B38();
    }

    v12 = sub_1000503B8(qword_100B541E0, v7);
    xpc_dictionary_set_int64(v6, "kCBMsgArgATTMTU", v12);
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v13 = off_100B508A8;
    sub_10004DFB4(bytes, v7);
    v14 = sub_100050304(v13, bytes);
    xpc_dictionary_set_BOOL(v6, "kCBMsgArgIsLinkEncrypted", v14);
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v15 = off_100B508A8;
    sub_10004DFB4(bytes, v7);
    if (sub_100050290(v15, bytes))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    xpc_dictionary_set_int64(v6, "kCBMsgArgConnectionTransport", v16);
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v17 = off_100B508A8;
    sub_10004DFB4(bytes, v7);
    v18 = sub_1000501F8(v17, bytes);
    xpc_dictionary_set_int64(v6, "kCBMsgArgConnectionRole", v18);
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v19 = sub_10005016C(off_100B508C8, v7);
    xpc_dictionary_set_int64(v6, "kCBMsgArgVisibleInSettings", v19 ^ 1u);
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v20 = sub_1000500A0(off_100B508C8, v7);
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      *bytes = 0;
      v57 = 0;
      v44 = v22;
      [v22 getUUIDBytes:bytes];
      xpc_dictionary_set_uuid(v6, "kCBMsgArgFindMyBeaconID", bytes);

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v23 = sub_100790840(off_100B508C8, v7);
      v45 = [v23 mutableCopy];

      if (v45)
      {
        v24 = v45;
        v43[1] = v43;
        __chkstk_darwin([v45 count]);
        v26 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v26, v25);
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v27 = v24;
        v28 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
        v43[0] = v21;
        v29 = 0;
        if (v28)
        {
          v30 = *v47;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v47 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v46 + 1) + 8 * i);
              *bytes = 0;
              v57 = 0;
              [v32 getUUIDBytes:{bytes, v43[0]}];
              *&v26[8 * v29++] = xpc_data_create(bytes, 0x10uLL);
            }

            v28 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v28);
        }

        v33 = xpc_array_create(v26, v29);
        while (v29)
        {
          xpc_release(*&v26[8 * v29-- - 8]);
        }

        xpc_dictionary_set_value(v6, "kCBMsgArgFindMyGroupMembers", v33);
        xpc_release(v33);
        v21 = v43[0];
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v34 = sub_1000AFA48(off_100B508C8, v7);
      v35 = v34;
      if (v34)
      {
        v36 = v34;
        xpc_dictionary_set_string(v6, "kCBMsgArgFindMySerialNumberString", [v35 UTF8String]);
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v37 = sub_1007904B0(off_100B508C8, v7);
      v38 = v37;
      if (v37)
      {
        v39 = v37;
        *bytes = 0;
        v57 = 0;
        [v39 getUUIDBytes:bytes];
        xpc_dictionary_set_uuid(v6, "kCBMsgArgFindMyUserID", bytes);
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v40 = sub_1007908B4(off_100B508C8, v7);
      xpc_dictionary_set_int64(v6, "kCBMsgArgFindMyPartNumber", v40);
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v41 = sub_10079096C(off_100B508C8, v7);
      xpc_dictionary_set_int64(v6, "kCBMsgArgFindMyManaged", v41);
    }
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(*uuid);
  }

LABEL_67:

  return v6;
}

void sub_1000526B8(_Unwind_Exception *a1)
{
  if (*(v4 - 113) < 0)
  {
    operator delete(*(v4 - 136));
  }

  _Unwind_Resume(a1);
}

__CFString *sub_1000527A8(void *a1)
{
  type = xpc_get_type(a1);
  if (type == &_xpc_type_int64)
  {
    v6 = [NSNumber numberWithLongLong:xpc_int64_get_value(a1)];
    goto LABEL_28;
  }

  v3 = type;
  if (type == &_xpc_type_uint64)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(a1)];
    goto LABEL_28;
  }

  if (type == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(a1);
    v8 = &__kCFBooleanFalse;
    if (value)
    {
      v8 = &__kCFBooleanTrue;
    }

    v6 = v8;
    goto LABEL_28;
  }

  if (type != &_xpc_type_string)
  {
    if (type == &_xpc_type_data)
    {
      v12 = [NSData alloc];
      bytes_ptr = xpc_data_get_bytes_ptr(a1);
      v6 = [v12 initWithBytes:bytes_ptr length:xpc_data_get_length(a1)];
    }

    else if (type == &_xpc_type_uuid)
    {
      v6 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(a1)];
    }

    else if (type == &_xpc_type_array)
    {
      v6 = sub_1005B2A18(a1);
    }

    else if (type == &_xpc_type_dictionary)
    {
      v6 = sub_100050C80(a1);
    }

    else if (type == &_xpc_type_fd)
    {
      v6 = [NSNumber numberWithInt:xpc_fd_dup(a1)];
    }

    else
    {
      if (type != &_xpc_type_double)
      {
        v4 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 134217984;
          v16 = v3;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unknown XPC type: %p", &v15, 0xCu);
        }

        v5 = 0;
        goto LABEL_29;
      }

      v6 = [NSNumber numberWithDouble:xpc_double_get_value(a1)];
    }

LABEL_28:
    v5 = v6;
    goto LABEL_29;
  }

  v9 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(a1)];
  v10 = v9;
  v11 = &stru_100B0F9E0;
  if (v9)
  {
    v11 = v9;
  }

  v5 = v11;

LABEL_29:

  return v5;
}

BOOL sub_100052A90(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004DFB4(uu2, v3);
  v4 = a1 + 56 != sub_10004E34C(a1 + 48, uu2);

  return v4;
}

uint64_t sub_100052B30(void *a1)
{
  v1 = a1;
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  if (sub_10004EE74(off_100B508B8, v1))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_1000B006C(off_100B508C8, v1, v5);
    if (v6 < 0)
    {
      v2 = v5[1] == 0;
      operator delete(v5[0]);
    }

    else
    {
      v2 = v6 == 0;
    }

    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100052C08(void *a1, int64_t a2, void *a3)
{
  v5 = a3;
  v6 = (*(*a1 + 16))(a1);
  v7 = a1[15];
  if (v6 == 3)
  {
    if (v7)
    {
      if (!sub_100052E80(a1))
      {
        sub_100052EE4(v7, a2, v5);
        goto LABEL_17;
      }

LABEL_7:
      v8 = [[BTQueuedMessage alloc] initWithMsg:a2 arguments:v5];
      sub_1004F4C94(a1, v8);
      sub_1000658D0(a1);

LABEL_17:
      v13 = 1;
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    if (!sub_100052E80(a1))
    {
      sub_100052EE4(v7 - 144, a2, v5);
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v9 = [[BTQueuedMessage alloc] initWithMsg:a2 arguments:v5];
  sub_1004F4C94(a1, v9);
  v10 = sub_100052E80(a1);
  if (v10)
  {
    v11 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[11];
      v15 = 134218242;
      v16 = v10;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(CBSR) Queued message available: %lu. Try and ressurrectApp: %{public}@", &v15, 0x16u);
    }

    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    sub_1003BCFEC(off_100B512F0, a1[11]);
  }

  v13 = 0;
LABEL_18:

  return v13;
}

id sub_100052E80(uint64_t a1)
{
  v2 = *(a1 + 112);
  objc_sync_enter(v2);
  v3 = [*(a1 + 112) count];
  objc_sync_exit(v2);

  return v3;
}

void sub_100052ECC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100052EE4(uint64_t a1, int64_t a2, void *a3)
{
  v6 = a3;
  v5 = sub_100052F58(v6);
  sub_10004DFB8(a1, a2, v5, 1);
}

xpc_object_t sub_100052F58(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  __chkstk_darwin(v2);
  v3 = v8 - ((8 * v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v3, 8 * v2);
  __chkstk_darwin(v4);
  v5 = v3;
  bzero(v3, 8 * v2);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100053118;
  v8[3] = &unk_100AFF4F0;
  v8[4] = v9;
  v8[5] = v3;
  v8[6] = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v8];
  for (i = xpc_dictionary_create(v3, v3, v2); v2; --v2)
  {
    xpc_release(*v5++);
  }

  _Block_object_dispose(v9, 8);

  return i;
}

void sub_1000530E4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 88), 8);

  _Unwind_Resume(a1);
}

void sub_100053118(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v7;
  *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = [v7 UTF8String];
  *(a1[6] + 8 * (*(*(a1[4] + 8) + 24))++) = sub_1000531D4(v5);
}

uint64_t sub_1000531D4(void *a1)
{
  v1 = a1;
  if ([v1 isNSNumber])
  {
    if (CFNumberIsFloatType(v1))
    {
      [v1 doubleValue];
      v3 = xpc_double_create(v2);
    }

    else
    {
      v3 = xpc_int64_create([v1 longLongValue]);
    }
  }

  else if ([v1 isNSString])
  {
    v3 = xpc_string_create([v1 UTF8String]);
  }

  else if ([v1 isNSData])
  {
    v3 = xpc_data_create([v1 bytes], objc_msgSend(v1, "length"));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *uuid = 0;
      v8 = 0;
      [v1 getUUIDBytes:uuid];
      v3 = xpc_uuid_create(uuid);
    }

    else if ([v1 isNSArray])
    {
      v3 = sub_1005B2B90(v1);
    }

    else if ([v1 isNSDictionary])
    {
      v3 = sub_100052F58(v1);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v1 data];
        v4 = sub_1000531D4(v6);

        if (v4)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_16:
        [NSException raise:@"Invalid Object" format:@"Object %@ is invalid", v1];
        v4 = 0;
        goto LABEL_17;
      }

      v3 = xpc_null_create();
    }
  }

  v4 = v3;
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v4;
}

void sub_1000533E0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    __p[6] = &off_100AE0AB8;
    v3 = __p[7];
    if (v3)
    {
      sub_10000C808(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL sub_100053460(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 416))(v3);
  if ((*(a1 + 81) & 0x30) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 1) != 0 || *(a1 + 81) == 16)
  {
    return 1;
  }

  return sub_10000D1C8(a1);
}

void sub_1000534F0(uint64_t a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); v3 != i; v3 += 20)
  {
    v6 = *v3;
    v8 = *(v3 + 16);
    v7 = v6;
    if ((sub_1000574D8(a1, &v7) & 1) == 0)
    {
      sub_10000CDB8(a2, v3);
    }
  }
}

void sub_10005359C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000535B8(uint64_t a1)
{
  if (sub_10004ECB4(a1))
  {
    return 1;
  }

  if ([*(*(a1 + 8) + 80) count])
  {
    return 1;
  }

  v2 = *(a1 + 8);
  return *(v2 + 161) || *(v2 + 88) != *(v2 + 96) || *(v2 + 120) != *(v2 + 128);
}

uint64_t sub_10005361C(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  uuid_copy(a1, a2);
  v5 = *(a3 + 8);
  *(a1 + 16) = &off_100AE0AB8;
  *(a1 + 24) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  return a1;
}

uint64_t sub_100053674(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000625CC(v5, (v5 + 8), v4 + 25, v4 + 25);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100053708(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v195 = a4;
  v7 = a5;
  v196 = v7;
  v204 = a1;
  if (*(*(a1 + 8) + 120) == *(*(a1 + 8) + 128))
  {
    v121 = 1;
  }

  else
  {
    v252[0] = 0;
    v252[1] = 0;
    v250[1] = 0;
    v251 = v252;
    v249 = v250;
    v250[0] = 0;
    v9 = *(a3 + 8);
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v198 = v9;
    if (v9[16])
    {
      v10 = v9[14];
      v11 = (v9 + 15);
      if (v10 != (v9 + 15))
      {
        do
        {
          sub_10000CDB8(&v246, v10 + 2);
          v12 = *(v10 + 1);
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = *(v10 + 2);
              v14 = *v13 == v10;
              v10 = v13;
            }

            while (!v14);
          }

          v10 = v13;
        }

        while (v13 != v11);
      }
    }

    v15 = sub_10000C7D0(v7, v8);
    v226 = (*(*v15 + 2760))(v15);
    v243 = 0;
    v244 = 0;
    v245 = 0;
    sub_100055E98(*(v204 + 8), &v243);
    v16 = v243;
    v221 = v244;
    v211 = a3;
    if (v244 != v243)
    {
      v207 = (v204 + 232);
      do
      {
        v17 = *(a3 + 8);
        v18 = *(v17 + 64);
        v19 = *(v17 + 72);
        v20 = (v17 + 64);
        if (v19 != v18)
        {
          *out = *(v16 + 20);
          *&out[16] = *(v16 + 36);
          v21 = sub_100099EA8(__p, out, 1uLL);
          v22 = sub_100099F20(v21, a2, __p, v20);
          v23 = *__p;
          if (*__p)
          {
            *&__p[8] = *__p;
            operator delete(*__p);
          }

          if (v22)
          {
            goto LABEL_20;
          }
        }

        if (v247 == v246)
        {
          goto LABEL_21;
        }

        *out = *(v16 + 20);
        *&out[16] = *(v16 + 36);
        v24 = sub_100099EA8(__p, out, 1uLL);
        v25 = sub_100099F20(v24, a2, __p, &v246);
        v23 = *__p;
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        if ((v25 & 1) == 0)
        {
LABEL_21:
          v27 = *(a3 + 8);
          v28 = *(v27 + 88);
          v29 = *(v27 + 96);
          v30 = (v27 + 88);
          if (v29 == v28)
          {
            v229 = 0;
            goto LABEL_28;
          }

          *out = *(v16 + 20);
          *&out[16] = *(v16 + 36);
          v31 = sub_100099EA8(__p, out, 1uLL);
          v26 = sub_100099F20(v31, a2, __p, v30);
          v23 = *__p;
          if (*__p)
          {
            *&__p[8] = *__p;
            operator delete(*__p);
          }
        }

        else
        {
LABEL_20:
          v26 = 1;
        }

        if ((v226 & v26) == 1)
        {
          v229 = sub_1007B3C3C(v23, *(*(a3 + 8) + 216), *(v16 + 72), *(v16 + 76));
        }

        else
        {
          v229 = v26 & (v226 ^ 1);
        }

LABEL_28:
        v32 = *(v16 + 73);
        v33 = *v16;
        v34 = v33;
        sub_100007E30(__p, [v33 UTF8String]);
        *out = __p;
        *(sub_10009A0E8(&v249, __p, &unk_1008A9BD0, out) + 56) = v32 != 0;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v35 = *v16;
        v36 = v35;
        sub_100007E30(__p, [v35 UTF8String]);
        v37 = sub_10000EEB8(&v251, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v252 == v37)
        {
          v38 = *v16;
          v41 = v38;
          sub_100007E30(__p, [v38 UTF8String]);
          *out = __p;
          *(sub_10009A0E8(&v251, __p, &unk_1008A9BD0, out) + 56) = v229;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          v38 = *v16;
          v39 = v38;
          sub_100007E30(__p, [v38 UTF8String]);
          *out = __p;
          v40 = sub_10009A0E8(&v251, __p, &unk_1008A9BD0, out);
          *(v40 + 56) &= v229;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v42 = qword_100BCE918;
        v43 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
        a3 = v211;
        if (v226)
        {
          if (v43)
          {
            v44 = v204 + 232;
            if (*(v204 + 255) < 0)
            {
              v44 = *v207;
            }

            memset(out, 0, sizeof(out));
            uuid_unparse_upper(a2, out);
            sub_100007E30(&v240, out);
            if (v242 >= 0)
            {
              v45 = &v240;
            }

            else
            {
              v45 = v240;
            }

            *v254 = *(v16 + 20);
            v255 = *(v16 + 36);
            sub_10003B85C(v254, out);
            log = v42;
            if (out[23] >= 0)
            {
              v46 = out;
            }

            else
            {
              v46 = *out;
            }

            v47 = *(*(v211 + 8) + 216);
            if (*(v16 + 76))
            {
              v48 = @">";
            }

            else
            {
              v48 = @"<";
            }

            v49 = *(v16 + 72);
            v216 = *v16;
            v212 = *v16;
            v50 = v212;
            sub_100007E30(&v272, [v212 UTF8String]);
            *&v269 = &v272;
            v51 = *(sub_10009A0E8(&v251, &v272, &unk_1008A9BD0, &v269) + 56);
            v52 = *v16;
            v53 = *v16;
            v54 = v53;
            sub_100007E30(&v269, [v53 UTF8String]);
            v238[0] = &v269;
            v55 = *(sub_10009A0E8(&v249, &v269, &unk_1008A9BD0, v238) + 56);
            *__p = 136317698;
            *&__p[4] = v44;
            *&__p[12] = 2080;
            *&__p[14] = v45;
            *&__p[22] = 2080;
            *v260 = v46;
            *&v260[8] = 1024;
            *v261 = v47;
            *&v261[4] = 2112;
            *&v261[6] = v48;
            *&v261[14] = 1024;
            *&v261[16] = v49;
            *&v261[20] = 1024;
            *&v261[22] = v229;
            *&v261[26] = 2112;
            *&v261[28] = v216;
            *&v261[36] = 1024;
            *&v261[38] = v51;
            *&v261[42] = 2112;
            *&v261[44] = v52;
            *v262 = 1024;
            *&v262[2] = v55;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "filterByEnhancedRules uuidWithoutBlobAndMask session:%s device:%s uuid:%s rssi:%d (%@%d?) match:%d matchMap[%@]:%d ignoreDupsMap[%@]:%d", __p, 0x5Cu);
            if (v271 < 0)
            {
              operator delete(v269);
            }

            if (SHIBYTE(v273) < 0)
            {
              operator delete(v272);
            }

            if (out[23] < 0)
            {
              operator delete(*out);
            }

            if (SHIBYTE(v242) < 0)
            {
              operator delete(v240);
            }

LABEL_78:
            a3 = v211;
          }
        }

        else if (v43)
        {
          v56 = v204 + 232;
          if (*(v204 + 255) < 0)
          {
            v56 = *v207;
          }

          memset(out, 0, sizeof(out));
          uuid_unparse_upper(a2, out);
          sub_100007E30(&v240, out);
          v57 = v42;
          if (v242 >= 0)
          {
            v58 = &v240;
          }

          else
          {
            v58 = v240;
          }

          *v254 = *(v16 + 20);
          v255 = *(v16 + 36);
          sub_10003B85C(v254, out);
          if (out[23] >= 0)
          {
            v59 = out;
          }

          else
          {
            v59 = *out;
          }

          v60 = *v16;
          v61 = *v16;
          v62 = v61;
          sub_100007E30(&v272, [v61 UTF8String]);
          *&v269 = &v272;
          v63 = *(sub_10009A0E8(&v251, &v272, &unk_1008A9BD0, &v269) + 56);
          v64 = *v16;
          v65 = *v16;
          v66 = v65;
          sub_100007E30(&v269, [v65 UTF8String]);
          v238[0] = &v269;
          v67 = *(sub_10009A0E8(&v249, &v269, &unk_1008A9BD0, v238) + 56);
          *__p = 136316930;
          *&__p[4] = v56;
          *&__p[12] = 2080;
          *&__p[14] = v58;
          *&__p[22] = 2080;
          *v260 = v59;
          *&v260[8] = 1024;
          *v261 = v229;
          *&v261[4] = 2112;
          *&v261[6] = v60;
          *&v261[14] = 1024;
          *&v261[16] = v63;
          *&v261[20] = 2112;
          *&v261[22] = v64;
          *&v261[30] = 1024;
          *&v261[32] = v67;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "filterByEnhancedRules uuidWithoutBlobAndMask session:%s device:%s uuid:%s match:%d matchMap[%@]:%d ignoreDupsMap[%@]:%d", __p, 0x46u);
          if (v271 < 0)
          {
            operator delete(v269);
          }

          if (SHIBYTE(v273) < 0)
          {
            operator delete(v272);
          }

          if (out[23] < 0)
          {
            operator delete(*out);
          }

          if (SHIBYTE(v242) < 0)
          {
            operator delete(v240);
          }

          goto LABEL_78;
        }

        v16 += 112;
      }

      while (v16 != v221);
    }

    v240 = 0;
    v241 = 0;
    v242 = 0;
    sub_100055F38(*(v204 + 8), &v240);
    v68 = v240;
    v197 = v241;
    if (v241 != v240 && v198[16])
    {
      v222 = v198 + 15;
      loga = (v204 + 232);
      while (1)
      {
        v69 = v198[14];
        if (v69 != v222)
        {
          break;
        }

LABEL_179:
        v68 += 112;
        if (v68 == v197)
        {
          goto LABEL_180;
        }
      }

      v230 = 0;
      while (1)
      {
        v272 = *(v68 + 20);
        LODWORD(v273) = *(v68 + 9);
        sub_100099EA8(__p, &v272, 1uLL);
        v269 = *(v69 + 2);
        v270 = *(v69 + 12);
        v70 = sub_100099EA8(out, &v269, 1uLL);
        if (sub_100099F20(v70, a2, __p, out))
        {
          v71 = sub_10000C5F8((v69 + 7));
          v72 = sub_10000C5E0((v69 + 7));
          v73 = sub_10000C5E0((v68 + 40));
          v74 = sub_10000C5F8((v68 + 56));
          v75 = sub_10000C5F8((v68 + 40));
          v76 = sub_1007B3D2C(v75, v71, v72, v73, v74, v75);
        }

        else
        {
          v76 = 0;
        }

        if (*out)
        {
          *&out[8] = *out;
          operator delete(*out);
        }

        v77 = *__p;
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        if ((v226 & (v230 | v76)) == 1)
        {
          v230 = sub_1007B3C3C(v77, *(*(v211 + 8) + 216), v68[72], v68[76]);
        }

        else
        {
          v230 = (v226 ^ 1) & (v230 | v76);
        }

        v78 = v68[73];
        v79 = *v68;
        v80 = v79;
        sub_100007E30(__p, [v79 UTF8String]);
        *out = __p;
        *(sub_10009A0E8(&v249, __p, &unk_1008A9BD0, out) + 56) = v78 != 0;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v81 = *v68;
        v82 = v81;
        sub_100007E30(__p, [v81 UTF8String]);
        v83 = sub_10000EEB8(&v251, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v252 == v83)
        {
          v84 = *v68;
          v87 = v84;
          sub_100007E30(__p, [v84 UTF8String]);
          *out = __p;
          *(sub_10009A0E8(&v251, __p, &unk_1008A9BD0, out) + 56) = v230;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          v84 = *v68;
          v85 = v84;
          sub_100007E30(__p, [v84 UTF8String]);
          *out = __p;
          v86 = sub_10009A0E8(&v251, __p, &unk_1008A9BD0, out);
          *(v86 + 56) &= v230;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v88 = qword_100BCE918;
        v89 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
        if (v226)
        {
          if (v89)
          {
            v90 = v204 + 232;
            if (*(v204 + 255) < 0)
            {
              v90 = *loga;
            }

            memset(out, 0, sizeof(out));
            uuid_unparse_upper(a2, out);
            sub_100007E30(&v272, out);
            if (v273 >= 0)
            {
              v91 = &v272;
            }

            else
            {
              v91 = v272;
            }

            v257 = *(v68 + 20);
            v258 = *(v68 + 9);
            sub_10003B85C(&v257, out);
            if (out[23] >= 0)
            {
              v92 = out;
            }

            else
            {
              v92 = *out;
            }

            v93 = *(*(v211 + 8) + 216);
            v94 = @">";
            if (!v68[76])
            {
              v94 = @"<";
            }

            v201 = v94;
            v202 = v68[72];
            sub_10000C250((v69 + 7), &v269);
            v200 = v93;
            v95 = &v269;
            if (v271 < 0)
            {
              v95 = v269;
            }

            v199 = v95;
            sub_10000C250((v68 + 40), v254);
            if (v256 >= 0)
            {
              v96 = v254;
            }

            else
            {
              v96 = v254[0];
            }

            sub_10000C250((v68 + 56), v238);
            v217 = v88;
            if (v239 >= 0)
            {
              v97 = v238;
            }

            else
            {
              v97 = v238[0];
            }

            v213 = *v68;
            v208 = *v68;
            v98 = v208;
            sub_100007E30(v236, [v208 UTF8String]);
            v233 = v236;
            v99 = *(sub_10009A0E8(&v251, v236, &unk_1008A9BD0, &v233) + 56);
            v100 = *v68;
            v101 = *v68;
            v102 = v101;
            sub_100007E30(&v233, [v101 UTF8String]);
            v253 = &v233;
            v103 = *(sub_10009A0E8(&v249, &v233, &unk_1008A9BD0, &v253) + 56);
            *__p = 136318466;
            *&__p[4] = v90;
            *&__p[12] = 2080;
            *&__p[14] = v91;
            *&__p[22] = 2080;
            *v260 = v92;
            *&v260[8] = 1024;
            *v261 = v200;
            *&v261[4] = 2112;
            *&v261[6] = v201;
            *&v261[14] = 1024;
            *&v261[16] = v202;
            *&v261[20] = 2080;
            *&v261[22] = v199;
            *&v261[30] = 2080;
            *&v261[32] = v96;
            *&v261[40] = 2080;
            *&v261[42] = v97;
            *&v261[50] = 1024;
            *v262 = v230;
            *&v262[4] = 2112;
            *&v262[6] = v213;
            v263 = 1024;
            v264 = v99;
            v265 = 2112;
            v266 = v100;
            v267 = 1024;
            v268 = v103;
            _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_INFO, "filterByEnhancedRules uuidWithBlobAndMask session:%s device:%s uuid:%s rssi:%d (%@%d?) data:%s blob:%s mask:%s match:%d matchMap[%@]:%d ignoreDupsMap[%@]:%d", __p, 0x7Au);
            if (v235 < 0)
            {
              operator delete(v233);
            }

            if (v237 < 0)
            {
              operator delete(v236[0]);
            }

            if (v239 < 0)
            {
              operator delete(v238[0]);
            }

            if (v256 < 0)
            {
              operator delete(v254[0]);
            }

            if (v271 < 0)
            {
              operator delete(v269);
            }

            if (out[23] < 0)
            {
              operator delete(*out);
            }

            if (SHIBYTE(v273) < 0)
            {
              operator delete(v272);
            }

LABEL_172:
          }
        }

        else if (v89)
        {
          v104 = v204 + 232;
          if (*(v204 + 255) < 0)
          {
            v104 = *loga;
          }

          memset(out, 0, sizeof(out));
          uuid_unparse_upper(a2, out);
          sub_100007E30(&v272, out);
          if (v273 >= 0)
          {
            v105 = &v272;
          }

          else
          {
            v105 = v272;
          }

          v257 = *(v68 + 20);
          v258 = *(v68 + 9);
          sub_10003B85C(&v257, out);
          if (out[23] >= 0)
          {
            v106 = out;
          }

          else
          {
            v106 = *out;
          }

          sub_10000C250((v69 + 7), &v269);
          if (v271 >= 0)
          {
            v107 = &v269;
          }

          else
          {
            v107 = v269;
          }

          sub_10000C250((v68 + 40), v254);
          v203 = v107;
          v218 = v88;
          if (v256 >= 0)
          {
            v108 = v254;
          }

          else
          {
            v108 = v254[0];
          }

          sub_10000C250((v68 + 56), v238);
          if (v239 >= 0)
          {
            v109 = v238;
          }

          else
          {
            v109 = v238[0];
          }

          v213 = *v68;
          v209 = *v68;
          v110 = v209;
          sub_100007E30(v236, [v209 UTF8String]);
          v233 = v236;
          v111 = *(sub_10009A0E8(&v251, v236, &unk_1008A9BD0, &v233) + 56);
          v100 = *v68;
          v112 = *v68;
          v113 = v112;
          sub_100007E30(&v233, [v112 UTF8String]);
          v253 = &v233;
          v114 = *(sub_10009A0E8(&v249, &v233, &unk_1008A9BD0, &v253) + 56);
          *__p = 136317698;
          *&__p[4] = v104;
          *&__p[12] = 2080;
          *&__p[14] = v105;
          *&__p[22] = 2080;
          *v260 = v106;
          *&v260[8] = 2080;
          *v261 = v203;
          *&v261[8] = 2080;
          *&v261[10] = v108;
          *&v261[18] = 2080;
          *&v261[20] = v109;
          *&v261[28] = 1024;
          *&v261[30] = v230;
          *&v261[34] = 2112;
          *&v261[36] = v213;
          *&v261[44] = 1024;
          *&v261[46] = v111;
          *&v261[50] = 2112;
          *v262 = v100;
          *&v262[8] = 1024;
          *&v262[10] = v114;
          _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_INFO, "filterByEnhancedRules uuidWithBlobAndMask session:%s device:%s uuid:%s data:%s blob:%s mask:%s match:%d matchMap[%@]:%d ignoreDupsMap[%@]:%d", __p, 0x64u);
          if (v235 < 0)
          {
            operator delete(v233);
          }

          if (v237 < 0)
          {
            operator delete(v236[0]);
          }

          if (v239 < 0)
          {
            operator delete(v238[0]);
          }

          if (v256 < 0)
          {
            operator delete(v254[0]);
          }

          if (v271 < 0)
          {
            operator delete(v269);
          }

          if (out[23] < 0)
          {
            operator delete(*out);
          }

          if (SHIBYTE(v273) < 0)
          {
            operator delete(v272);
          }

          goto LABEL_172;
        }

        v115 = v69[1];
        if (v115)
        {
          do
          {
            v116 = v115;
            v115 = *v115;
          }

          while (v115);
        }

        else
        {
          do
          {
            v116 = v69[2];
            v14 = *v116 == v69;
            v69 = v116;
          }

          while (!v14);
        }

        v69 = v116;
        if (v116 == v222)
        {
          goto LABEL_179;
        }
      }
    }

LABEL_180:
    v117 = *(v204 + 8);
    v118 = *(v117 + 120);
    v119 = *(v117 + 128);
    v120 = v211;
    if (v118 != v119)
    {
      while (*(v118 + 104) != 2)
      {
        v118 += 112;
        if (v118 == v119)
        {
          goto LABEL_238;
        }
      }

      v219 = sub_10000C5E0(*(v211 + 8) + 48);
      v214 = sub_10000C5F8(*(v211 + 8) + 48);
      if (v219 >= 2 && *v214 != 76)
      {
        v272 = 0uLL;
        v273 = 0;
        sub_1007B410C(*(v204 + 8), &v272);
        v223 = *(&v272 + 1);
        v122 = v272;
        if (v272 != *(&v272 + 1))
        {
          v231 = *v214;
          do
          {
            if (v231 == *(v122 + 16))
            {
              if (sub_10000D26C(v122 + 40))
              {
                v227 = 1;
              }

              else
              {
                v123 = sub_10000D26C(v122 + 56);
                v124 = v219 == 2 || v123;
                if ((v124 & 1) == 0)
                {
                  v125 = sub_10000C5E0(v122 + 40);
                  v126 = sub_10000C5F8(v122 + 56);
                  v127 = sub_10000C5F8(v122 + 40);
                  v123 = sub_1007B3D2C(v127, v214 + 2, v219 - 2, v125, v126, v127);
                }

                v227 = v123;
              }

              v128 = *(v122 + 73);
              v129 = *v122;
              v130 = v129;
              sub_100007E30(__p, [v129 UTF8String]);
              *out = __p;
              *(sub_10009A0E8(&v249, __p, &unk_1008A9BD0, out) + 56) = v128 != 0;
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              v131 = *v122;
              v132 = v131;
              sub_100007E30(__p, [v131 UTF8String]);
              v133 = sub_10000EEB8(&v251, __p);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              if (v252 == v133)
              {
                v134 = *v122;
                v137 = v134;
                sub_100007E30(__p, [v134 UTF8String]);
                *out = __p;
                *(sub_10009A0E8(&v251, __p, &unk_1008A9BD0, out) + 56) = v227;
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              else
              {
                v134 = *v122;
                v135 = v134;
                sub_100007E30(__p, [v134 UTF8String]);
                *out = __p;
                v136 = sub_10009A0E8(&v251, __p, &unk_1008A9BD0, out);
                *(v136 + 56) &= v227;
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              v138 = qword_100BCE918;
              v120 = v211;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
              {
                v139 = v204 + 232;
                if (*(v204 + 255) < 0)
                {
                  v139 = *(v204 + 232);
                }

                memset(out, 0, sizeof(out));
                uuid_unparse_upper(a2, out);
                sub_100007E30(&v269, out);
                if (v271 >= 0)
                {
                  v140 = &v269;
                }

                else
                {
                  v140 = v269;
                }

                v141 = *(v122 + 16);
                sub_10000C704(&v233, v214, v219);
                sub_10000C250(&v233, out);
                if (out[23] >= 0)
                {
                  v142 = out;
                }

                else
                {
                  v142 = *out;
                }

                sub_10000C250(v122 + 40, v254);
                if (v256 >= 0)
                {
                  v143 = v254;
                }

                else
                {
                  v143 = v254[0];
                }

                sub_10000C250(v122 + 56, v238);
                if (v239 >= 0)
                {
                  v144 = v238;
                }

                else
                {
                  v144 = v238[0];
                }

                v145 = *v122;
                v146 = *v122;
                v147 = v146;
                sub_100007E30(v236, [v146 UTF8String]);
                *&v257 = v236;
                v148 = *(sub_10009A0E8(&v251, v236, &unk_1008A9BD0, &v257) + 56);
                *__p = 136317442;
                *&__p[4] = v139;
                *&__p[12] = 2080;
                *&__p[14] = v140;
                *&__p[22] = 1024;
                *v260 = v141;
                *&v260[4] = 1024;
                *&v260[6] = v231;
                *v261 = 2080;
                *&v261[2] = v142;
                *&v261[10] = 2080;
                *&v261[12] = v143;
                *&v261[20] = 2080;
                *&v261[22] = v144;
                *&v261[30] = 1024;
                *&v261[32] = v227;
                *&v261[36] = 2112;
                *&v261[38] = v145;
                *&v261[46] = 1024;
                *&v261[48] = v148;
                _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_INFO, "filterByEnhancedRules NonAppleManufacturerData session:%s device:%s filterMfgrID:%04X payloadMfgrId:%04X payload:%s blob:%s mask:%s match:%d matchMap[%@]:%d", __p, 0x56u);
                if (v237 < 0)
                {
                  operator delete(v236[0]);
                }

                if (v239 < 0)
                {
                  operator delete(v238[0]);
                }

                if (v256 < 0)
                {
                  operator delete(v254[0]);
                }

                if (out[23] < 0)
                {
                  operator delete(*out);
                }

                v233 = &off_100AE0A78;
                if (v234)
                {
                  sub_10000C808(v234);
                }

                if (v271 < 0)
                {
                  operator delete(v269);
                }

                v120 = v211;
              }
            }

            v122 += 112;
          }

          while (v122 != v223);
        }

        *__p = &v272;
        sub_100018458(__p);
      }
    }

LABEL_238:
    v149 = *(v204 + 8);
    for (i = *(v149 + 120); ; i += 112)
    {
      if (i == *(v149 + 128))
      {
        goto LABEL_310;
      }

      if (*(i + 104) == 3)
      {
        break;
      }
    }

    v272 = 0uLL;
    v273 = 0;
    sub_1007B418C(v149, &v272);
    v210 = *(&v272 + 1);
    for (j = v272; j != v210; j += 112)
    {
      v152 = *(v120 + 8);
      if (*(v152 + 39) < 0)
      {
        sub_100008904(__p, *(v152 + 16), *(v152 + 24));
      }

      else
      {
        *__p = *(v152 + 16);
        *&__p[16] = *(v152 + 32);
      }

      if (__p[23] >= 0)
      {
        v153 = __p;
      }

      else
      {
        v153 = *__p;
      }

      v232 = [NSString stringWithUTF8String:v153, v195];
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v224 = *(j + 96);
      v154 = [v224 length];
      if (v154 <= [v232 length])
      {
        v228 = 0;
        v155 = *(j + 80);
        if (v155 > 1)
        {
          if (v155 != 2)
          {
            if (v155 == 1000)
            {
              v157 = *(j + 88);
              if ((v157 & 2) != 0)
              {
                v158 = [v232 compare:v224 options:v157 range:{0, objc_msgSend(v232, "length")}] == 0;
              }

              else
              {
                v158 = [v232 rangeOfString:v224 options:v157 range:{0, objc_msgSend(v232, "length")}] != 0x7FFFFFFFFFFFFFFFLL;
              }

              v228 = v158;
            }

            goto LABEL_285;
          }

          v160 = *(v120 + 8);
          if (*(v160 + 39) < 0)
          {
            sub_100008904(__p, *(v160 + 16), *(v160 + 24));
          }

          else
          {
            *__p = *(v160 + 16);
            *&__p[16] = *(v160 + 32);
          }

          if (__p[23] >= 0)
          {
            v165 = __p;
          }

          else
          {
            v165 = *__p;
          }

          v166 = [NSString stringWithUTF8String:v165];
          v228 = [v166 hasSuffix:v224];

          goto LABEL_283;
        }

        if (!v155)
        {
          v159 = *(v120 + 8);
          if (*(v159 + 39) < 0)
          {
            sub_100008904(__p, *(v159 + 16), *(v159 + 24));
          }

          else
          {
            *__p = *(v159 + 16);
            *&__p[16] = *(v159 + 32);
          }

          if (__p[23] >= 0)
          {
            v163 = __p;
          }

          else
          {
            v163 = *__p;
          }

          v164 = [NSString stringWithUTF8String:v163];
          v228 = [v164 containsString:v224];

LABEL_283:
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          goto LABEL_285;
        }

        if (v155 == 1)
        {
          v156 = *(v120 + 8);
          if (*(v156 + 39) < 0)
          {
            sub_100008904(__p, *(v156 + 16), *(v156 + 24));
          }

          else
          {
            *__p = *(v156 + 16);
            *&__p[16] = *(v156 + 32);
          }

          if (__p[23] >= 0)
          {
            v161 = __p;
          }

          else
          {
            v161 = *__p;
          }

          v162 = [NSString stringWithUTF8String:v161];
          v228 = [v162 hasPrefix:v224];

          goto LABEL_283;
        }
      }

      else
      {
        v228 = 0;
      }

LABEL_285:
      v167 = *(j + 73);
      v168 = *j;
      v169 = v168;
      sub_100007E30(__p, [v168 UTF8String]);
      *out = __p;
      *(sub_10009A0E8(&v249, __p, &unk_1008A9BD0, out) + 56) = v167 == 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v170 = *j;
      v171 = v170;
      sub_100007E30(__p, [v170 UTF8String]);
      v172 = sub_10000EEB8(&v251, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v252 == v172)
      {
        v173 = *j;
        v176 = v173;
        sub_100007E30(__p, [v173 UTF8String]);
        *out = __p;
        *(sub_10009A0E8(&v251, __p, &unk_1008A9BD0, out) + 56) = v228;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      else
      {
        v173 = *j;
        v174 = v173;
        sub_100007E30(__p, [v173 UTF8String]);
        *out = __p;
        v175 = sub_10009A0E8(&v251, __p, &unk_1008A9BD0, out);
        *(v175 + 56) &= v228;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      v177 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v178 = v204 + 232;
        if (*(v204 + 255) < 0)
        {
          v178 = *(v204 + 232);
        }

        memset(out, 0, sizeof(out));
        uuid_unparse_upper(a2, out);
        sub_100007E30(&v269, out);
        if (v271 >= 0)
        {
          v179 = &v269;
        }

        else
        {
          v179 = v269;
        }

        v215 = *(j + 96);
        v180 = *(j + 80);
        v181 = *(j + 88);
        v220 = *j;
        v182 = *j;
        v183 = v182;
        sub_100007E30(out, [v182 UTF8String]);
        v254[0] = out;
        v184 = *(sub_10009A0E8(&v251, out, &unk_1008A9BD0, v254) + 56);
        v185 = *j;
        v186 = *j;
        v187 = v186;
        sub_100007E30(v254, [v186 UTF8String]);
        v238[0] = v254;
        v188 = *(sub_10009A0E8(&v249, v254, &unk_1008A9BD0, v238) + 56);
        *__p = 136317442;
        *&__p[4] = v178;
        *&__p[12] = 2080;
        *&__p[14] = v179;
        *&__p[22] = 2112;
        *v260 = v215;
        *&v260[8] = 1024;
        *v261 = v180;
        *&v261[4] = 1024;
        *&v261[6] = v181;
        *&v261[10] = 1024;
        *&v261[12] = v228;
        *&v261[16] = 2112;
        *&v261[18] = v220;
        *&v261[26] = 1024;
        *&v261[28] = v184;
        *&v261[32] = 2112;
        *&v261[34] = v185;
        *&v261[42] = 1024;
        *&v261[44] = v188;
        _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_INFO, "filterByEnhancedRules Name session:%s device:%s filterNameSubstr:%@ matchOption:%d NSStringCompareOptions:%d match:%d matchMap[%@]:%d ignoreDupsMap[%@:%d", __p, 0x52u);
        if (v256 < 0)
        {
          operator delete(v254[0]);
        }

        if (out[23] < 0)
        {
          operator delete(*out);
        }

        if (v271 < 0)
        {
          operator delete(v269);
        }
      }

      v120 = v211;
    }

    *__p = &v272;
    sub_100018458(__p);
LABEL_310:
    v189 = v251;
    if (v251 == v252)
    {
LABEL_318:
      v121 = 0;
    }

    else
    {
      while (*(v189 + 56) != 1)
      {
        v190 = v189[1];
        if (v190)
        {
          do
          {
            v191 = v190;
            v190 = *v190;
          }

          while (v190);
        }

        else
        {
          do
          {
            v191 = v189[2];
            v14 = *v191 == v189;
            v189 = v191;
          }

          while (!v14);
        }

        v189 = v191;
        if (v191 == v252)
        {
          goto LABEL_318;
        }
      }

      v192 = v189 + 4;
      *out = v189 + 4;
      *v195 = *(sub_1007B541C(&v249, v189 + 4, &unk_1008A9BD0, out, &v272) + 56);
      if (*(v189 + 55) < 0)
      {
        v192 = *v192;
      }

      v193 = [NSString stringWithUTF8String:v192, v195];
      [v196 setString:v193];

      v121 = *(v189 + 56);
    }

    *__p = &v240;
    sub_100018458(__p);
    *__p = &v243;
    sub_100018458(__p);
    if (v246)
    {
      v247 = v246;
      operator delete(v246);
    }

    sub_10004B61C(&v249, v250[0]);
    sub_10004B61C(&v251, v252[0]);
  }

  return v121 & 1;
}