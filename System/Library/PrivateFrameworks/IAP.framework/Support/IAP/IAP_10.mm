uint64_t sub_10008F92C(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = result;
  if (!result)
  {
    goto LABEL_16;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_32;
  }

  result = sub_100095458(result, v4);
  if (!result)
  {
LABEL_16:
    result = sub_100065198(result);
    if (result && (result & 7) == 0)
    {
      v11 = sub_100095458(result, v4);
      sub_1000DDEEC(0, 4, "CIapLingoLocation::%s:%d invalid connection handle! pConnHandle=%hhx IsValidHandle=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 697, v4, v11);
      return 2;
    }

    goto LABEL_32;
  }

  if ((v4 & 7) != 0 || (result = sub_10005BD04(v4)) == 0 || (v8 = result, (result & 7) != 0))
  {
LABEL_32:
    __break(0x5516u);
    goto LABEL_33;
  }

  sub_10005BB24(result, 0xEu);
  result = sub_10008F03C(v8, v9);
  if (!result)
  {
    v12 = 2;
LABEL_29:
    sub_10005BB6C(v8, 0xEu);
    return v12;
  }

  if (!a4)
  {
LABEL_28:
    v12 = 22;
    goto LABEL_29;
  }

  if (a2 >= 4)
  {
    goto LABEL_33;
  }

  v10 = result;
  if (a2 == 2)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_33;
    }

    if (!a3 || a3 == 5)
    {
LABEL_31:
      operator new();
    }

    if (a3 != 1)
    {
      goto LABEL_28;
    }

    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v13;
    v15 = v13;
    LOWORD(v15) = 8;
    HIDWORD(v14) = -1;
    if ((result & 7) == 0)
    {
      *(result + 1212) = 0;
      result = sub_1000679FC(result, &v14, sub_10008FC48, 0);
      if (*(v10 + 1212) <= 1u)
      {
        if (!*(v10 + 1212))
        {
          goto LABEL_31;
        }

        sub_10005BB6C(v8, 0xEu);
        return 0;
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (a2 != 1)
  {
    goto LABEL_28;
  }

  if (a3 <= 0xFF)
  {
    if ((a3 & 0x7F) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_33:
  __break(0x550Au);
  __break(0x5500u);
  return result;
}

uint64_t sub_10008FC48(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  if (*(a2 + 16) != 8)
  {
    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  v3 = *(v2 + 18);
  if (v3 >= 4)
  {
    goto LABEL_15;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v4 = *(v2 + 22);
  if (v4 <= 0xFF)
  {
    if (v4 == 1)
    {
      *(result + 1212) = 1;
      return 37;
    }

    return 0;
  }

LABEL_15:
  __break(0x550Au);
  return result;
}

void sub_10008FCC0(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_114;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_114;
  }

  if (!a2)
  {
    goto LABEL_114;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_114;
  }

  v4 = sub_1000681E4(result, *a2);
  v5 = v4;
  v6 = sub_100065198(v4);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_114;
  }

  v53 = sub_1000945E0(v6, *(result + 8));
  v7 = sub_1000D6C34(v53, 14);
  v8 = *(a2 + 18);
  if (v8 >= 4)
  {
    goto LABEL_115;
  }

  v9 = *(a2 + 22);
  if (v9 > 0xFF)
  {
    goto LABEL_115;
  }

  v10 = *(a2 + 113);
  if (v5)
  {
    v11 = 6;
  }

  else
  {
    v11 = 8;
  }

  if (v5)
  {
    v12 = 10;
  }

  else
  {
    v12 = 12;
  }

  if (!*(a2 + 113))
  {
    if (v8 != 2)
    {
      if (v8 != 1)
      {
        v22 = 1986;
        goto LABEL_84;
      }

      if (*(a2 + 22))
      {
        if (*(a2 + 22) == 128)
        {
          v18 = a2 + 26;
          v19 = (a2 + 109);
          goto LABEL_26;
        }

        v22 = 1928;
LABEL_84:
        sub_1000DDEEC(0, 4, "%s:%d Unsupported type!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", v22);
        return;
      }

LABEL_25:
      v19 = (a2 + 34);
      v18 = *(a2 + 26);
LABEL_26:
      v20 = *v19;
      v21 = *v19;
      if (!*v19)
      {
        return;
      }

LABEL_36:
      v23 = v21 + v12;
      if (!__CFADD__(v21, v12))
      {
        if (v23 <= v7)
        {
          LOWORD(v26) = 0;
        }

        else
        {
          if (v21 >= 0xFFFFFFFC)
          {
            goto LABEL_119;
          }

          v24 = v7 >= v11;
          v25 = v7 - v11;
          if (!v24)
          {
            goto LABEL_118;
          }

          if (!v25)
          {
LABEL_120:
            __break(0x5503u);
            return;
          }

          v26 = (v21 + 4) / v25;
          if (HIWORD(v26))
          {
            goto LABEL_117;
          }

          v23 = v7;
        }

        *(a2 + 113) = 0;
        *(a2 + 115) = v26;
        *(a2 + 137) = v23;
        *(a2 + 117) = v18;
        *(a2 + 125) = 0;
        *(a2 + 129) = v20;
        *(a2 + 133) = v21;
        operator new[]();
      }

LABEL_119:
      __break(0x5500u);
      goto LABEL_120;
    }

    v20 = *(a2 + 22);
    if (v20 > 2)
    {
      if (v20 - 3 < 2)
      {
        v20 = 0;
        v18 = 0;
        v21 = 4;
        goto LABEL_36;
      }

      if (v20 == 5)
      {
        v20 = 0;
        v18 = 0;
        v21 = 6;
        goto LABEL_36;
      }
    }

    else
    {
      if (v20 - 1 < 2)
      {
        goto LABEL_25;
      }

      if (!*(a2 + 22))
      {
        v18 = 0;
        v21 = 16;
        goto LABEL_36;
      }
    }

    v22 = 1977;
    goto LABEL_84;
  }

  if (*(a2 + 133))
  {
    v13 = *(a2 + 115);
    v14 = *(a2 + 137);
    v15 = *(a2 + 117);
    v16 = *(a2 + 125);
    v17 = *(a2 + 129);
    v27 = *(a2 + 141);
    if (v27)
    {
      if (__CFADD__(v27, v14))
      {
        goto LABEL_116;
      }

      v28 = *(a2 + 141);
      if ((v5 & 1) == 0)
      {
        v29 = *(a2 + 8);
        if (HIWORD(v29))
        {
          goto LABEL_117;
        }

        *v27 = bswap32(v29) >> 16;
        if (v27 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_116;
        }

        v28 = (v27 + 2);
      }

      *v28 = v8;
      if (v28 == -1)
      {
        goto LABEL_116;
      }

      *(v28 + 1) = v9;
      if (v28 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_116;
      }

      *(v28 + 2) = __rev16(v10);
      if (v28 + 2 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_116;
      }

      *(v28 + 4) = bswap32(v13) >> 16;
      if (v28 + 4 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_116;
      }

      v30 = (v28 + 6);
      v31 = v17 - v16;
      if (v17 < v16)
      {
LABEL_118:
        __break(0x5515u);
        goto LABEL_119;
      }

      v32 = &v27[v14] - v30;
      if (v8 != 2)
      {
        if (v8 == 1)
        {
LABEL_100:
          if (!v15 || !v31)
          {
LABEL_109:
            if (*(a2 + 12) <= 0xFFu)
            {
              if (!((v30 - v27) >> 16))
              {
                sub_1000B748C(v53, 0, 14, *(a2 + 12), *(a2 + 8), v27, (v30 - v27));
              }

              goto LABEL_117;
            }

            goto LABEL_115;
          }

          if (v32 >= v31)
          {
            v50 = v31;
          }

          else
          {
            v50 = v32;
          }

          if (__CFADD__(v15, v16))
          {
            goto LABEL_116;
          }

          v51 = v16;
          memcpy(v30, (v15 + v16), v50);
          if (__CFADD__(v30, v50))
          {
            goto LABEL_116;
          }

          if (!((v50 + v51) >> 32))
          {
            v30 = (v30 + v50);
            *(a2 + 125) = v50 + v51;
            goto LABEL_109;
          }

LABEL_117:
          __break(0x5507u);
          goto LABEL_118;
        }

        v52 = 2302;
        v33 = "%s:%d Should never reach unhandled case!\n";
LABEL_66:
        v34 = v15;
        v35 = v16;
        sub_1000DDEEC(0, 4, v33, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", v52);
        v16 = v35;
        v15 = v34;
        goto LABEL_100;
      }

      if (v9 <= 2u)
      {
        if (v9)
        {
          if (v9 == 1 || v9 == 2)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        if (v10 != v13)
        {
          v44 = v15;
          v45 = v16;
          sub_1000DDEEC(0, 4, "%s:%d sectCur != sectMax\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2129);
          v16 = v45;
          v15 = v44;
        }

        if (*(a2 + 26) >= 0x2000u)
        {
          v46 = v15;
          v47 = v16;
          sub_1000DDEEC(0, 4, "%s:%d pLocMsg->msg.locData.data.locPoint.gpsWeekNum > IAP_LOCATION_MAX_WEEKNUM\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2134);
          v16 = v47;
          v15 = v46;
        }

        if (*(a2 + 28) > 0x240C83FFu)
        {
          v48 = v15;
          v49 = v16;
          sub_1000DDEEC(0, 4, "%s:%d pLocMsg->msg.locData.data.locPoint.gpsWeekNum > IAP_LOCATION_MAX_WEEKNUM\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2139);
          v16 = v49;
          v15 = v48;
        }

        if (v32 > 0xF)
        {
          *v30 = bswap32(*(a2 + 26)) >> 16;
          if (v30 >= 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_119;
          }

          *(v30 + 1) = bswap32(*(a2 + 28));
          if (v30 >= 0xFFFFFFFFFFFFFFFALL)
          {
            goto LABEL_119;
          }

          *(v30 + 3) = bswap32(*(a2 + 32));
          if (v30 >= 0xFFFFFFFFFFFFFFF6)
          {
            goto LABEL_119;
          }

          *(v30 + 5) = bswap32(*(a2 + 36));
          if (v30 >= 0xFFFFFFFFFFFFFFF2)
          {
            goto LABEL_119;
          }

          v30[7] = bswap32(*(a2 + 40)) >> 16;
          if (v30 > 0xFFFFFFFFFFFFFFEFLL)
          {
            goto LABEL_116;
          }

          v30 += 8;
          goto LABEL_100;
        }

LABEL_113:
        __break(0x5518u);
LABEL_114:
        __break(0x5516u);
LABEL_115:
        __break(0x550Au);
        goto LABEL_116;
      }

      if (v9 - 3 < 2)
      {
        if (v32 <= 3)
        {
          v36 = v15;
          v37 = v16;
          sub_1000DDEEC(0, 4, "%s:%d buffLen < sizeof (pLocMsg->msg.locData.data.ephRefresh)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2247);
          v16 = v37;
          v15 = v36;
        }

        *v30 = bswap32(*(a2 + 26));
        if (v30 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_116;
        }

        v30 += 2;
        goto LABEL_100;
      }

      if (v9 != 5)
      {
LABEL_99:
        v52 = 2294;
        v33 = "%s:%d Should never have unhandled case!\n";
        goto LABEL_66;
      }

      if (v10 != v13)
      {
        v38 = v15;
        v39 = v16;
        sub_1000DDEEC(0, 4, "%s:%d sectCur != sectMax\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2263);
        v16 = v39;
        v15 = v38;
      }

      if (*(a2 + 26) >= 0x2000u)
      {
        v40 = v15;
        v41 = v16;
        sub_1000DDEEC(0, 4, "%s:%d pLocMsg->msg.locData.data.gpsWeekTime.gpsWeekNum > IAP_LOCATION_MAX_WEEKNUM\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2268);
        v16 = v41;
        v15 = v40;
      }

      if (*(a2 + 28) > 0x240C83FFu)
      {
        v42 = v15;
        v43 = v16;
        sub_1000DDEEC(0, 4, "%s:%d pLocMsg->msg.locData.data.gpsWeekTime.gpsWeekTimeMs > IAP_LOCATION_MAX_WEEKTIME\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 2273);
        v16 = v43;
        v15 = v42;
      }

      if (v32 < 6)
      {
        goto LABEL_113;
      }

      *v30 = bswap32(*(a2 + 26)) >> 16;
      if (v30 < 0xFFFFFFFFFFFFFFFELL)
      {
        *(v30 + 1) = bswap32(*(a2 + 28));
        if (v30 <= 0xFFFFFFFFFFFFFFF9)
        {
          v30 += 3;
          goto LABEL_100;
        }

LABEL_116:
        __break(0x5513u);
        goto LABEL_117;
      }

      goto LABEL_119;
    }
  }
}

uint64_t sub_1000904EC(uint64_t result, __darwin_time_t a2)
{
  if (!result)
  {
    goto LABEL_46;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_46;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_46;
  }

  if (!*(result + 8))
  {
    return 89;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
LABEL_46:
    __break(0x5516u);
    goto LABEL_47;
  }

  if (!sub_100094BFC(result, *(v2 + 8)))
  {
    return 89;
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_46;
  }

  if (sub_10005ACA0(result))
  {
    return 89;
  }

  result = sub_10008F03C(*(v2 + 8), v4);
  if (!result)
  {
    return 22;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_46;
  }

  v5 = *(a2 + 126);
  if (v5 >= 0x100)
  {
LABEL_47:
    __break(0x5507u);
    goto LABEL_48;
  }

  v6 = *(a2 + 24);
  v7 = *(a2 + 128);
  if (sub_1000681E4(v2, *(v2 + 8)))
  {
    v8 = *(a2 + 68);
  }

  else
  {
    result = 22;
    if (!v6)
    {
      return result;
    }

    v9 = v7 >= 2;
    v7 -= 2;
    if (!v9)
    {
      return result;
    }

    v10 = *v6;
    if (v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_48;
    }

    ++v6;
    v8 = __rev16(v10);
  }

  result = 22;
  if (!v6 || !v7)
  {
    return result;
  }

  if ((v5 & 0x80) != 0)
  {
    return 0;
  }

  v12 = 0;
  if (v5 <= 3u)
  {
    if (v5)
    {
      if (v5 != 2)
      {
        return result;
      }

      v11 = 1;
      goto LABEL_41;
    }

    if (v7 < 2)
    {
      return result;
    }

    if (v6 != -1)
    {
      v11 = *(v6 + 1);
      goto LABEL_41;
    }

LABEL_48:
    __break(0x5513u);
    return result;
  }

  switch(v5)
  {
    case 4u:
      v11 = 3;
      break;
    case 7u:
      v11 = 6;
      break;
    case 9u:
      v13 = v5;
      goto LABEL_42;
    default:
      return result;
  }

LABEL_41:
  v13 = v11;
LABEL_42:
  result = sub_10006733C(v2, v8, &v13, &v12, 0xFFFFLL);
  if (v5 == 9 || !result)
  {
    return sub_1000906AC(v2, a2, v12);
  }

  return result;
}

uint64_t sub_1000906AC(uint64_t result, __darwin_time_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_130;
  }

  v3 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_130;
  }

  v4 = a3;
  v7 = *(a2 + 126);
  v9 = *(a2 + 24);
  v10 = *(a2 + 128);
  result = sub_1000681E4(result, *(result + 8));
  LOBYTE(v6) = result;
  if (result)
  {
    v5 = *(a2 + 68);
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
  v5 = 0xFFFFFFFFLL;
  if (!v9 || v10 < 2)
  {
LABEL_7:
    if (!v9)
    {
      return 22;
    }

    goto LABEL_13;
  }

  v12 = *v9;
  if (v9 >= 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_207;
  }

  ++v9;
  v5 = __rev16(v12);
  v11 = v10 - 2;
LABEL_13:
  v13 = *v9;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  v14 = *(v3 + 8);
  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = v14;
  v62 = v5;
  v63 = v7;
  if (v7 <= 3)
  {
    if (!v7)
    {
      v30 = *v9;
      if (v30 == 19)
      {
        v5 = 22;
        if (!v4 || v11 < 4)
        {
          goto LABEL_104;
        }

        if (v9 == -1)
        {
          goto LABEL_207;
        }

        if (v9 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_209;
        }

        v31 = v9[1];
        if ((v4 & 7) != 0)
        {
          goto LABEL_130;
        }

        v32 = *(v4 + 12);
        if (v32 > 0xFF)
        {
          goto LABEL_208;
        }

        if (v32 != *(v9 + 1))
        {
          goto LABEL_105;
        }

        v33 = __rev16(v31);
        if (v33 != *(v4 + 113))
        {
          goto LABEL_105;
        }

        if (v31 == 0xFFFF)
        {
          goto LABEL_210;
        }

        *(v4 + 113) = v33 + 1;
        if (*(v4 + 115) < (v33 + 1))
        {
          goto LABEL_105;
        }

        sub_10008FCC0(v3, v4);
        v5 = v34;
        if (!v34)
        {
          v4 = 0;
        }
      }

      else
      {
        if (v11 < 2)
        {
          goto LABEL_83;
        }

        v38 = &v61;
        if (v4)
        {
          v39 = v4;
        }

        else
        {
          v39 = &v61;
        }

        if ((v39 & 7) != 0)
        {
          goto LABEL_130;
        }

        if (v4)
        {
          v38 = v4;
        }

        *(v38 + 16) = v30;
        if (v9 == -1)
        {
          goto LABEL_207;
        }

        v5 = 0;
        v40 = &v61;
        if (v4)
        {
          v40 = v4;
        }

        *(v40 + 17) = *(v9 + 1);
        v4 = v39;
      }

LABEL_98:
      if (!v5)
      {
        result = *(v3 + 8);
        if (!result || (result & 7) != 0)
        {
          goto LABEL_130;
        }

        if (!v4)
        {
          v4 = &v61;
        }

        sub_10005BCC8(result, 0xEuLL, 0, v4, 152);
        v5 = 0;
        goto LABEL_105;
      }

LABEL_104:
      if (!v4)
      {
LABEL_108:
        sub_1000B9034(a2);
        return v5;
      }

LABEL_105:
      result = sub_10009159C(v3, v4);
      if (v4 != &v61)
      {
        if ((v4 & 7) == 0)
        {
          operator delete();
        }

        goto LABEL_130;
      }

      goto LABEL_108;
    }

    if (v7 != 2)
    {
LABEL_82:
      sub_1000DDEEC(0, 4, "%s:%d Unsupported cmdID!\n");
      goto LABEL_83;
    }

    if (v13 > 3)
    {
      goto LABEL_208;
    }

    DWORD1(v64) = v13;
    if (v13 != 2 && v13 != 1)
    {
      if (v13)
      {
        sub_1000DDEEC(0, 4, "%s:%d Invalid Location type!\n");
        goto LABEL_83;
      }

      if (v11 >= 0x13)
      {
        if (v9 == -1)
        {
          goto LABEL_207;
        }

        BYTE8(v64) = *(v9 + 1);
        if (v9 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_207;
        }

        BYTE9(v64) = *(v9 + 2);
        if (v9 > 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_207;
        }

        v60 = *(v9 + 3);
        *&v65 = bswap64(v60);
        if (v9 > 0xFFFFFFFFFFFFFFF4)
        {
          goto LABEL_207;
        }

        v5 = 0;
        v60 = *(v9 + 11);
        *(&v65 + 1) = bswap64(v60);
        goto LABEL_67;
      }

LABEL_83:
      v5 = 22;
      goto LABEL_104;
    }

LABEL_64:
    if (v11 >= 9)
    {
      if (v9 == -1)
      {
        goto LABEL_207;
      }

      v5 = 0;
      v60 = *(v9 + 1);
      *(&v64 + 1) = bswap64(v60);
LABEL_67:
      v4 = &v61;
      goto LABEL_98;
    }

    goto LABEL_83;
  }

  if (v7 == 4)
  {
    if (v13 > 3)
    {
      goto LABEL_208;
    }

    DWORD1(v64) = v13;
    if (v13 > 2)
    {
      sub_1000DDEEC(0, 4, "%s:%d Unsupported type!\n");
      goto LABEL_83;
    }

    goto LABEL_64;
  }

  if (v7 == 7)
  {
    goto LABEL_24;
  }

  if (v7 != 9)
  {
    goto LABEL_82;
  }

  if (v11 < 2)
  {
    goto LABEL_56;
  }

  result = *(v3 + 1200);
  if (!result)
  {
LABEL_24:
    v16 = v11 - 6;
    if (v11 >= 6)
    {
      if (v13 <= 3)
      {
        *(&v64 + 2) = v13;
        if (v9 == -1)
        {
          goto LABEL_207;
        }

        if (v9 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_209;
        }

        v17 = *(v9 + 1);
        v18 = v9[1];
        if (v9 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_209;
        }

        v19 = v9[2];
        if (v9 > 0xFFFFFFFFFFFFFFF9)
        {
          goto LABEL_207;
        }

        v20 = __rev16(v18);
        v56 = __rev16(v19);
        if (v20 > v56)
        {
          goto LABEL_57;
        }

        v21 = v9 + 3;
        if (!v9[1])
        {
          if (v16 < 4)
          {
            goto LABEL_131;
          }

          if (v21 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_207;
          }

          if (v4)
          {
            result = sub_10009159C(v3, v4);
            if ((v4 & 7) == 0)
            {
              operator delete();
            }

            goto LABEL_130;
          }

          v26 = bswap32(*(v9 + 3));
          v16 = v11 - 10;
          if (v9[2])
          {
            operator new();
          }

          if (v26 != v16)
          {
            v20 = 0;
            v4 = 0;
            goto LABEL_57;
          }

          v4 = &v61;
          v21 = v9 + 5;
          v70 = 0u;
          v71 = 0u;
          v72 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v61 = *(v3 + 8);
          v62 = v5;
          v63 = v7;
          *(&v64 + 2) = v13;
          *(&v64 + 6) = v17;
          *(&v70 + 1) = v20;
          v25 = v56;
          *(&v70 + 3) = v56;
          *(&v71 + 5) = v26;
          goto LABEL_143;
        }

        if (!v4)
        {
          goto LABEL_57;
        }

        if ((v4 & 7) != 0)
        {
          goto LABEL_130;
        }

        v22 = *(v4 + 12);
        if (v22 <= 0xFF)
        {
          if (v22 != v7 || v5 != *(v4 + 8))
          {
            goto LABEL_57;
          }

          v23 = *(v4 + 18);
          if (v23 <= 3)
          {
            if (v23 != v13)
            {
              goto LABEL_57;
            }

            v24 = *(v4 + 22);
            if (v24 <= 0xFF)
            {
              if (v24 != v17)
              {
                goto LABEL_57;
              }

              if (v20 != *(v4 + 113))
              {
                goto LABEL_57;
              }

              v25 = v56;
              if (v56 != *(v4 + 115))
              {
                goto LABEL_57;
              }

              v26 = *(v4 + 133);
LABEL_143:
              if (v13 != 2)
              {
                if (v13 != 1)
                {
                  v55 = 1691;
                  v43 = "%s:%d Unsupported location type!\n";
LABEL_188:
                  v27 = 4;
                  sub_1000DDEEC(0, 4, v43, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", v55);
                  goto LABEL_58;
                }

                if (v17 != 128)
                {
                  if (!v17)
                  {
                    if (!v18 && v26 - 1 < 0x10000)
                    {
                      operator new[]();
                    }

                    if ((v4 & 7) != 0)
                    {
                      goto LABEL_130;
                    }

LABEL_196:
                    v44 = *(v4 + 26);
                    goto LABEL_197;
                  }

                  v46 = 1539;
                  goto LABEL_187;
                }

                v45 = (v4 & 7) == 0;
                if (!v18 && v26 - 1 <= 0x52)
                {
                  if ((v4 & 7) != 0)
                  {
                    goto LABEL_130;
                  }

                  *(v4 + 109) = v26;
                  *(v4 + 129) = v26;
                  v45 = 1;
                }

                if (!v45)
                {
                  goto LABEL_130;
                }

                v44 = v4 + 26;
                goto LABEL_197;
              }

              if (v17 > 2)
              {
                if ((v17 - 3) >= 2)
                {
                  if (v17 != 5)
                  {
                    v46 = 1682;
LABEL_187:
                    v55 = v46;
                    v43 = "%s:%d Unsupported data!\n";
                    goto LABEL_188;
                  }

                  if (v7 != 9)
                  {
                    goto LABEL_57;
                  }

                  if ((v4 & 7) != 0)
                  {
                    goto LABEL_130;
                  }

                  v44 = 0;
                  *(v4 + 26) = 0;
                  *(v4 + 28) = 0;
                }

                else
                {
                  v27 = 4;
                  if (v25 | v20 || v16 < 4 || v26 < 4)
                  {
                    goto LABEL_58;
                  }

                  if ((v4 & 7) != 0)
                  {
                    goto LABEL_130;
                  }

                  v44 = 0;
                  *(v4 + 26) = bswap32(*v21);
                }

LABEL_197:
                v47 = *(v4 + 125);
                v48 = *(v4 + 129);
                v49 = v48 >= v47;
                v50 = v48 - v47;
                if (!v49)
                {
                  v50 = 0;
                }

                if (!v44 || v16 > v50)
                {
                  goto LABEL_204;
                }

                if (!__CFADD__(v44, v47))
                {
                  v51 = v19;
                  v52 = v18;
                  v53 = v16;
                  result = memcpy((v44 + v47), v21, v16);
                  v54 = *(v4 + 125);
                  LODWORD(v47) = v54 + v53;
                  if (!__CFADD__(v54, v53))
                  {
                    *(v4 + 125) = v47;
                    v18 = v52;
                    v19 = v51;
LABEL_204:
                    if (v18 == v19)
                    {
                      v27 = 2 * (v47 != *(v4 + 129));
                    }

                    else
                    {
                      v27 = 19;
                    }

                    goto LABEL_58;
                  }

                  goto LABEL_209;
                }

LABEL_207:
                __break(0x5513u);
              }

              if (v17)
              {
                if (v17 == 1)
                {
                  v42 = v4 & 7;
                  if (v18 || (v26 - 1) >> 21)
                  {
LABEL_195:
                    if (v42)
                    {
                      goto LABEL_130;
                    }

                    goto LABEL_196;
                  }
                }

                else
                {
                  v42 = v4 & 7;
                  if (v18 || (v26 - 1) >> 17)
                  {
                    goto LABEL_195;
                  }
                }

                if (!v42)
                {
                  if (*(v4 + 26))
                  {
                    operator delete[]();
                  }

                  operator new[]();
                }

                goto LABEL_130;
              }

              v27 = 4;
              if (v25 | v20 || v16 < 0x10 || v26 < 0x10)
              {
                goto LABEL_58;
              }

              if ((v4 & 7) != 0)
              {
                goto LABEL_130;
              }

              *(v4 + 26) = __rev16(*v21);
              if (v21 < 0xFFFFFFFFFFFFFFFELL)
              {
                *(v4 + 28) = bswap32(*(v21 + 1));
                if (v21 < 0xFFFFFFFFFFFFFFFALL)
                {
                  *(v4 + 32) = bswap32(*(v21 + 3));
                  if (v21 < 0xFFFFFFFFFFFFFFF6)
                  {
                    *(v4 + 36) = bswap32(*(v21 + 5));
                    if (v21 < 0xFFFFFFFFFFFFFFF2)
                    {
                      v44 = 0;
                      *(v4 + 40) = bswap32(v21[7]) >> 16;
                      goto LABEL_197;
                    }
                  }
                }
              }

LABEL_209:
              __break(0x5500u);
              goto LABEL_210;
            }
          }
        }
      }

LABEL_208:
      __break(0x550Au);
      goto LABEL_209;
    }

LABEL_56:
    v20 = 0;
    goto LABEL_57;
  }

  v59 = 0;
  if (v9 == -1)
  {
    goto LABEL_207;
  }

  if ((result & 7) != 0)
  {
    while (1)
    {
      do
      {
LABEL_130:
        __break(0x5516u);
LABEL_131:
        v20 = 0;
LABEL_57:
        v27 = 4;
LABEL_58:
        result = sub_100065198(result);
      }

      while (!result || (result & 7) != 0);
      result = sub_1000945E0(result, *(v3 + 8));
      v28 = result;
      v58 = -21846;
      v57 = -1431655766;
      if (v6)
      {
        v29 = 0;
      }

      else
      {
        if (WORD1(v5))
        {
          goto LABEL_210;
        }

        LOWORD(v57) = bswap32(v5) >> 16;
        v29 = 2;
      }

      if (~&v57 < v29)
      {
        goto LABEL_207;
      }

      *(&v57 | v29) = v27;
      v35 = v29 | 1;
      if (~&v57 < v35)
      {
        goto LABEL_207;
      }

      *(&v57 | v35) = v7;
      v6 = v29 + 2;
      if (v27 != 19)
      {
        goto LABEL_97;
      }

      v36 = (&v57 + v6);
      if (__CFADD__(&v57, v6))
      {
        goto LABEL_209;
      }

      if (v36)
      {
        *v36 = __rev16(v20);
        if (v4)
        {
          if ((v4 & 7) == 0)
          {
            break;
          }
        }
      }
    }

    v37 = *(v4 + 113);
    if (v37 != 0xFFFF)
    {
      v6 = v29 | 4;
      *(v4 + 113) = v37 + 1;
      if (!sub_1000671A8(v3, v5, 6, v4, 500) && v4 == &v61)
      {
        sub_1000DDEEC(0, 4, "%s:%d pLocMsg == &locMsg\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 1772);
      }

LABEL_97:
      sub_1000B748C(v28, 0, 14, 128, v5, &v57, v6);
    }

    goto LABEL_210;
  }

  v15 = *(v9 + 1);
  result = (*(*result + 152))(result, &v59 + 1, &v59);
  if (result)
  {
    if (HIBYTE(v59) > 1u)
    {
      goto LABEL_208;
    }

    if (!HIBYTE(v59))
    {
      if (v13 > 3)
      {
        goto LABEL_208;
      }

      if (v13 != 2 || v15 != 2 && v15 != 5)
      {
        goto LABEL_136;
      }
    }

    goto LABEL_24;
  }

LABEL_136:
  v57 = -1431655766;
  result = *(a2 + 8);
  if (v6)
  {
    v41 = 0;
    goto LABEL_140;
  }

  if (!WORD1(v5))
  {
    LOWORD(v57) = bswap32(v5) >> 16;
    v41 = 2;
LABEL_140:
    *(&v57 | v41) = 2306;
    sub_1000B748C(result, 0, 14, 128, v5, &v57, v41 + 2);
  }

LABEL_210:
  __break(0x5507u);
  return result;
}

uint64_t sub_100091290(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = 0;
    if (a2 != 4)
    {
      if (a2 == 8)
      {
        sub_10008ED00(result);
      }

      else
      {
        if (a2 == 32)
        {
          sub_10006770C(result, &v2);
          return v2;
        }

        sub_1000DDEEC(0, 4, "%s:%d CIapLingoLocation::NotifyEvent unknown event class: 0x%04X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 892, a2);
      }
    }

    return 0;
  }

  return result;
}

void sub_10009131C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_28;
  }

  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v26 = 0;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = *(a1 + 8);
  *&v17 = *(a1 + 8);
  *(&v17 + 1) = a2 | 0xA00000000;
  LOBYTE(v18) = 15;
  if (a3 >= 0x100)
  {
    goto LABEL_29;
  }

  BYTE1(v18) = a3;
  if (a3 > 9u)
  {
    goto LABEL_20;
  }

  v11 = 1;
  if (((1 << a3) & 0x16A) != 0)
  {
    HIDWORD(v17) = 0;
    if (!v8)
    {
      goto LABEL_28;
    }

    goto LABEL_7;
  }

  if (a3 != 7)
  {
    if (a3 == 9)
    {
      if (a4)
      {
LABEL_16:
        v12 = sub_100065198(v8);
        if (v12 && (v12 & 7) == 0)
        {
          v13 = sub_1000945E0(v12, *(a1 + 8));
          v16 = -1431655766;
          if (sub_1000681E4(a1, *(a1 + 8)))
          {
            v14 = 0;
          }

          else
          {
            if (WORD1(a2))
            {
              goto LABEL_29;
            }

            LOWORD(v16) = bswap32(a2) >> 16;
            v14 = 2;
          }

          v15 = (&v16 | v14);
          *v15 = 2;
          v15[1] = v6;
          sub_1000B748C(v13, 0, 14, 128, a2, &v16, v14 + 2);
        }

        goto LABEL_28;
      }

      goto LABEL_22;
    }

LABEL_20:
    sub_1000DDEEC(0, 4, "%s:%d Invalid command!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 1002);
    goto LABEL_9;
  }

  v11 = 0;
  HIDWORD(v17) = 0;
  if (a4)
  {
    goto LABEL_16;
  }

LABEL_22:
  sub_1000DDEEC(0, 4, "%s:%d NULL pLocMsg\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoLocation.cpp", 996);
  if ((v11 & 1) == 0)
  {
    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_28;
    }

LABEL_7:
    if ((v8 & 7) == 0)
    {
      sub_10005BCC8(v8, 0xEuLL, 0, &v17, 152);
      goto LABEL_9;
    }

LABEL_28:
    __break(0x5516u);
LABEL_29:
    __break(0x5507u);
  }

LABEL_9:
  if (a4)
  {
    sub_10009159C(a1, a4);
    if ((a4 & 7) == 0)
    {
      operator delete();
    }

    goto LABEL_28;
  }

  *a5 = 0;
}

uint64_t sub_10009159C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_22;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_22;
  }

  if ((a2 & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  if (*(a2 + 12) > 0xFFu)
  {
    goto LABEL_23;
  }

  if (*(a2 + 12) - 6 > 3)
  {
    return result;
  }

  v2 = *(a2 + 18);
  if (v2 > 3 || (v3 = *(a2 + 22), v3 > 0xFF))
  {
LABEL_23:
    __break(0x550Au);
    return result;
  }

  if (v2 == 2)
  {
    v4 = *(a2 + 22);
    if (v4 == 2 || v4 == 1)
    {
      goto LABEL_15;
    }
  }

  else if (v2 == 1 && !v3)
  {
LABEL_15:
    if (*(a2 + 26))
    {
      operator delete[]();
    }

    *(a2 + 26) = 0;
  }

  result = *(a2 + 141);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_100091684(uint64_t result, int a2)
{
  if (result && a2 == 9)
  {
    *result = 14;
    if (result != -1)
    {
      *(result + 1) = 0x300000000000000;
      return 0;
    }
  }

  else
  {
    __break(0x5518u);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_1000916B8(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (sub_100064F7C(result, a2, 1), *v2 = off_1001161B8, *(v2 + 1264) = 0x400000004, pthread_mutex_init((v2 + 1200), 0), *(v2 + 1192) = 0, (result = *(v2 + 8)) == 0) || (result & 7) != 0 || (sub_10005B7F8(result, 1u, 0), (result = *(v2 + 8)) == 0) || (result & 7) != 0 || (v4 = sub_10005B7AC(result, 1u, 0), (result = sub_100065198(v4)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(result, 1, 109, a2);
    return v2;
  }

  return result;
}

uint64_t sub_100091788(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000916B8(result, a2);
  }

  __break(0x5516u);
  return result;
}

void sub_10009179C(uint64_t result)
{
  if (!result || (result & 7) != 0 || (*result = off_1001161B8, (v2 = sub_100065198(result)) == 0) || (v2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(v2, 1, 0, *(result + 8));
    *(result + 1192) = 0;
    pthread_mutex_destroy((result + 1200));

    sub_10006522C(result, v3);
  }
}

void sub_100091828(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_10009179C(result);
  }
}

uint64_t sub_10009183C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10009179C(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100091884(uint64_t result, __darwin_time_t a2)
{
  if (!result)
  {
    goto LABEL_40;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_40;
  }

  if (!*(result + 8))
  {
    goto LABEL_10;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_40;
  }

  if (!sub_100094BFC(result, *(v2 + 8)))
  {
LABEL_10:
    v4 = 89;
LABEL_11:
    sub_1000B9034(a2);
    return v4;
  }

  result = *(v2 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = sub_10005ACA0(result);
  if (result)
  {
    goto LABEL_10;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_40;
  }

  v5 = *(a2 + 126);
  v6 = *(a2 + 24);
  v7 = *(a2 + 128);
  v8 = *(a2 + 8);
  v12 = *(a2 + 126);
  v11 = 0;
  v14 = 0;
  if (*(v2 + 1192) != v8)
  {
    goto LABEL_38;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
LABEL_40:
    __break(0x5516u);
    goto LABEL_41;
  }

  result = sub_100058FB0(result, *(v2 + 1192));
  if (!result)
  {
    goto LABEL_38;
  }

  if (!v6)
  {
    __break(0x5518u);
    goto LABEL_40;
  }

  LOWORD(v14) = v5;
  v13 = v8;
  if (v5 != 10)
  {
    if (v5 != 8)
    {
      if (v5 == 4 && v7 == 2)
      {
        if (v6 != -1)
        {
          v12 = *(v6 + 1);
          BYTE5(v14) = *v6;
          BYTE4(v14) = v12;
LABEL_34:
          v4 = sub_10006733C(v2, *(a2 + 68), &v12, &v11, 0xFFFFLL);
          if (v4)
          {
            goto LABEL_11;
          }

          pthread_mutex_lock((v2 + 1200));
          result = *(v2 + 8);
          if (result && (result & 7) == 0)
          {
            sub_10005BCC8(result, 1uLL, 0, &v13, 16);
            pthread_mutex_unlock((v2 + 1200));
            v4 = 0;
            goto LABEL_11;
          }

          goto LABEL_40;
        }

        goto LABEL_41;
      }

LABEL_38:
      v4 = 2;
      goto LABEL_11;
    }

    if (v7 != 4)
    {
      goto LABEL_38;
    }

    result = sub_100065198(result);
    if (result && (result & 7) == 0)
    {
      v9 = sub_1000932FC(result, *(v2 + 1192));
      v12 = 7;
      v10 = bswap32(*v6);
      HIDWORD(v14) = v10;
      if ((v9 - 29) <= 1 && (v10 & 0x10) == 0)
      {
        HIDWORD(v14) = v10 | 0x10;
      }

      goto LABEL_34;
    }

    goto LABEL_40;
  }

  if (v7 != 2)
  {
    goto LABEL_38;
  }

  v12 = 9;
  BYTE4(v14) = *v6;
  if (v6 != -1)
  {
    BYTE5(v14) = *(v6 + 1);
    goto LABEL_34;
  }

LABEL_41:
  __break(0x5513u);
  return result;
}

uint64_t sub_100091AA0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  if (a3 == 6)
  {
    return result;
  }

  v6 = 4;
  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_11;
  }

  result = sub_100018DC0(result);
  v5 = result;
  if (a3 > 0xFF)
  {
LABEL_12:
    __break(0x5507u);
    return result;
  }

  BYTE4(v6) = a3;
  BYTE5(v6) = 15;
  pthread_mutex_lock((v3 + 1200));
  result = *(v3 + 8);
  if (!result || (result & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  sub_10005BCC8(result, 1uLL, 0, &v5, 16);
  return pthread_mutex_unlock((v3 + 1200));
}

void sub_100091B58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_92;
  }

  v44 = 0;
  if (a2 <= 7)
  {
    if (a2 != 1)
    {
      if (a2 != 4)
      {
        return;
      }

      *(result + 1192) = a4;
      if (!a4)
      {
        sub_1000E1D34();
      }

      v7 = sub_100065198(result);
      if (v7 && (v7 & 7) == 0)
      {
        v8 = sub_1000933B0(v7, *(result + 1192));
        if (v8 == 1)
        {
          v43[4] = 0xAAAAAAAAAAAAAAAALL;
          v43[5] = 0xAAAAAAAAAAAAAAAALL;
          v43[0] = 0x1100000004;
          v43[1] = *(result + 1192);
          v43[2] = 0x300000000;
          v10 = *(result + 8);
          v43[3] = v10;
          if (!v10 || (v10 & 7) != 0)
          {
            goto LABEL_92;
          }

          v8 = sub_10005BCC8(v10, 0, 0, v43, 48);
          *(result + 1192) = 0;
        }

        v11 = sub_1000D4754(v8, v9);
        if (v11)
        {
          if ((v11 & 7) == 0)
          {
            v12 = (*(*v11 + 88))(v11, *(result + 1192));
            v14 = sub_1000D4754(v12, v13);
            if (v14)
            {
              if ((v14 & 7) == 0)
              {
                (*(*v14 + 144))(v14, *(result + 1192), 2);
                return;
              }
            }
          }
        }
      }

LABEL_92:
      __break(0x5516u);
      goto LABEL_93;
    }

    if (!*(result + 1192))
    {
      return;
    }

    LOBYTE(v43[0]) = 4;
    v22 = sub_100092110(*(result + 8));
    v23 = v22;
    v24 = sub_100065198(v22);
    if (!v24)
    {
      goto LABEL_92;
    }

    if ((v24 & 7) != 0)
    {
      goto LABEL_92;
    }

    v25 = sub_100092F68(v24, *(result + 1192));
    v26 = v25;
    v27 = sub_100065198(v25);
    if (!v27 || (v27 & 7) != 0)
    {
      goto LABEL_92;
    }

    v28 = v26 & 0xC;
    v29 = sub_1000930CC(v27, *(result + 1192));
    v30 = v29;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        LOBYTE(v43[0]) = 0;
        v38 = *(result + 1268);
        if (v38 <= 7)
        {
          if (!v38)
          {
            return;
          }

          *(result + 1268) = 0;
          if (v28 == 4)
          {
            v34 = 1;
          }

          else
          {
            v34 = v29;
          }

          v32 = 1;
          goto LABEL_81;
        }
      }

      else
      {
        if (a3 != 4)
        {
          return;
        }

        LOBYTE(v43[0]) = 1;
        v33 = *(result + 1268);
        if (v33 <= 7)
        {
          if (v33 == 1)
          {
            return;
          }

          v32 = 0;
          *(result + 1268) = 1;
          goto LABEL_61;
        }
      }
    }

    else if (a3 == 1)
    {
      LOBYTE(v43[0]) = 2;
      v37 = *(result + 1264);
      if (v37 <= 7)
      {
        if (v37 == 2)
        {
          return;
        }

        v32 = 0;
        *(result + 1264) = 2;
        if (v28 == 4)
        {
          v34 = 1;
        }

        else
        {
          v34 = v29;
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      LOBYTE(v43[0]) = 3;
      v31 = *(result + 1264);
      if (v31 <= 7)
      {
        if (v31 == 3)
        {
          return;
        }

        v32 = 0;
        *(result + 1264) = 3;
LABEL_61:
        if (v28 == 4)
        {
          v34 = 0;
        }

        else
        {
          v34 = v29;
        }

LABEL_81:
        if (!v23)
        {
          return;
        }

        v39 = sub_100065198(v29);
        if (v39 && (v39 & 7) == 0)
        {
          sub_100092FE4(v39, *(result + 1192), 1, v30 | v34);
          if (v32)
          {
            usleep(0x3D090u);
          }

          v40 = *(result + 1192);
          if (v40 && (v40 & 7) == 0)
          {
            v41 = (*(*v40 + 16))(*(result + 1192), 0);
            sub_1000B748C(v40, 0, 1, 6, v41, v43, 1);
          }
        }

        goto LABEL_92;
      }
    }

LABEL_94:
    __break(0x550Au);
    return;
  }

  switch(a2)
  {
    case 8:
      if (*(result + 1192) != a4)
      {
        return;
      }

      v15 = sub_1000D4754(result, a2);
      if (v15 && (v15 & 7) == 0)
      {
        (*(*v15 + 104))(v15, *(result + 1192));
        *(result + 1192) = 0;
        do
        {
          v42 = -1;
          v43[0] = 0;
        }

        while (!sub_10006733C(result, 0xFFFFFFFFLL, &v42, v43, 0xFFFFLL));
        v44 = 0;
        return;
      }

      goto LABEL_92;
    case 0x20:
      sub_10006770C(result, &v44);
      v44 = 0;
      v16 = *(result + 8);
      if (v16 && (v16 & 7) == 0)
      {
        if (!sub_10005B890(v16, 1u))
        {
          return;
        }

        v17 = sub_100067278();
        v18 = *(result + 8);
        if (v18)
        {
          if ((v18 & 7) == 0)
          {
            v19 = sub_10005B844(v18, 1u);
            if (v17 < v19)
            {
LABEL_93:
              __break(0x5515u);
              goto LABEL_94;
            }

            if (v17 - v19 >= 0x1F4)
            {
              v20 = *(result + 8);
              if (v20)
              {
                if ((v20 & 7) == 0)
                {
                  sub_10005B7F8(v20, 1u, 0);
                  v21 = *(result + 8);
                  if (v21)
                  {
                    if ((v21 & 7) == 0)
                    {
                      sub_10005B7AC(v21, 1u, 0);
                      return;
                    }
                  }
                }
              }

              goto LABEL_92;
            }

            return;
          }
        }
      }

      goto LABEL_92;
    case 0x40:
      switch(a3)
      {
        case -1:
          v36 = sub_1000D4754(result, a2);
          if (v36 && (v36 & 7) == 0)
          {
            (*(*v36 + 136))(v36, *(result + 1192));
            return;
          }

          goto LABEL_92;
        case 6:
          v35 = sub_1000D4754(result, a2);
          if (v35 && (v35 & 7) == 0)
          {
            (*(*v35 + 128))(v35, *(result + 1192));
            return;
          }

          goto LABEL_92;
        case 4:
          v6 = sub_1000D4754(result, a2);
          if (v6 && (v6 & 7) == 0)
          {
            (*(*v6 + 120))(v6, *(result + 1192));
            return;
          }

          goto LABEL_92;
      }

      break;
  }
}

uint64_t sub_100092110(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  if ((result & 7) == 0)
  {
    result = sub_10005BD04(result);
    if (result)
    {
      v1 = result;
      if ((result & 7) == 0)
      {
        sub_10005BB24(result, 1u);
        result = sub_1000653EC(1, v1);
        v2 = result;
        if (!result)
        {
          goto LABEL_12;
        }

        if ((result & 7) == 0)
        {
          if (!*(result + 1192))
          {
            goto LABEL_12;
          }

          result = sub_100065198(result);
          if (result)
          {
            if ((result & 7) == 0)
            {
              if (sub_100058FB0(result, *(v2 + 1192)))
              {
                v3 = 1;
LABEL_13:
                sub_10005BB6C(v1, 1u);
                return v3;
              }

LABEL_12:
              sub_1000DDEEC(0, 4, "%s:%d LingoMicrophone:DeviceHandle devValid=%d handle=%hhx pMicLingo=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoMicrophone.cpp", 1084, 0, v1, v2);
              v3 = 0;
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100092204(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v4 = a3;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v6 = *(result + 126);
  v7 = *(result + 68);
  result = sub_1000B6DB4(a3, result, a2, 1u);
  v8 = result;
  if (result)
  {
    return v8;
  }

  if (!v4)
  {
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_17;
    }

    result = sub_100092814(result, 1);
    v4 = result;
    if (!result)
    {
      return 0;
    }
  }

  if ((v4 & 7) == 0)
  {
    sub_10005BB24(v4, 1u);
    result = sub_1000653EC(1, v4);
    if (!result)
    {
      v8 = 0;
LABEL_14:
      sub_10005BB6C(v4, 1u);
      return v8;
    }

    if ((result & 7) == 0)
    {
      v8 = sub_1000671A8(result, v7, v6, 0, a4);
      if (!v8)
      {
        sub_10005B7F8(v4, 1u, 1);
        v9 = sub_100067278();
        sub_10005B7AC(v4, 1u, v9);
      }

      goto LABEL_14;
    }
  }

LABEL_17:
  __break(0x5516u);
  return result;
}

uint64_t sub_10009231C(int a1, uint64_t a2)
{
  v2 = a2;
  result = sub_100092110(a2);
  if (!result)
  {
    return 19;
  }

  if (!v2)
  {
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_17;
    }

    result = sub_100092814(result, 1);
    v2 = result;
    if (!result)
    {
      return 19;
    }
  }

  if ((v2 & 7) == 0)
  {
    result = sub_10005BD04(v2);
    if (result)
    {
      v4 = result;
      if ((result & 7) == 0)
      {
        sub_10005BB24(result, 1u);
        result = sub_1000653EC(1, v4);
        if (result)
        {
          v5 = result;
          if ((result & 7) == 0)
          {
            result = pthread_mutex_lock((result + 1200));
            v6 = *(v5 + 1192);
            if (v6)
            {
              if ((v6 & 7) == 0)
              {
                v7 = (*(*v6 + 16))(*(v5 + 1192), 0);
                sub_1000B748C(v6, 0, 1, 7, v7, 0, 0);
              }
            }
          }

          goto LABEL_17;
        }

        sub_1000DDEEC(0, 4, "%s:%d No Object Pointer, cannot GetDevCapabilities\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoMicrophone.cpp", 720);
        sub_10005BB6C(v4, 1u);
        return 19;
      }
    }
  }

LABEL_17:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000924A8(uint64_t result, uint64_t a2)
{
  if (!result || a2 != 9)
  {
    __break(0x5518u);
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v2 = result;
  result = sub_100046A8C(result, a2);
  if (!result)
  {
    goto LABEL_12;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_12;
  }

  v4 = (*(*result + 184))(result);
  result = (*(*v3 + 200))(v3);
  *v2 = 1;
  if (v2 == -1)
  {
LABEL_13:
    __break(0x5500u);
    return result;
  }

  v5 = 0x100000000000000;
  if (v4)
  {
    v5 = 0x900000000000000;
  }

  if (result)
  {
    v5 |= 0x1000000000000000uLL;
  }

  *(v2 + 1) = v5;
  return 0;
}

uint64_t sub_100092584(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116268;
    *(result + 8) = result + 8;
    *(result + 16) = result + 8;
    *(result + 24) = 0;
    *(result + 168) = 0;
    pthread_mutex_init((result + 32), 0);
    pthread_mutex_init((v1 + 96), 0);
    sub_1000187F0((v1 + 8));
    *(v1 + 160) = 0;
    return v1;
  }

  return result;
}

uint64_t sub_100092604(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100116268;
    pthread_mutex_destroy((result + 32));
    pthread_mutex_destroy((v1 + 96));
    sub_1000187F0((v1 + 8));
    return v1;
  }

  return result;
}

uint64_t sub_100092670(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100092604(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100092684(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100092604(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000926CC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  v3 = a2;
  if ((a2 + 32) >= 0x40)
  {
LABEL_19:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15)
  {
    __break(0x5518u);
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  result = pthread_mutex_lock((result + 32));
  if (*(v2 + 24))
  {
    v4 = (v2 + 16);
    while (1)
    {
      v5 = *v4;
      if (*v4 == v2 + 8)
      {
        break;
      }

      if (v5)
      {
        v6 = (*v4 & 7) == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!v6)
      {
        goto LABEL_18;
      }

      result = sub_100092790(v2, *(v5 + 16), v3);
      v4 = (v5 + 8);
      if (result)
      {
        v7 = result;
        goto LABEL_16;
      }
    }
  }

  v7 = 0;
LABEL_16:
  pthread_mutex_unlock((v2 + 32));
  return v7;
}

uint64_t sub_100092790(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_11;
  }

  result = sub_10005A9E0(a2);
  if (!a2 || !result)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  if (a3 + 32 >= 0x40)
  {
LABEL_12:
    __break(0x550Au);
    return result;
  }

  return sub_10005B694(a2, a3);
}

uint64_t sub_100092814(uint64_t result, signed int a2)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_18:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15)
  {
    __break(0x5518u);
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  result = pthread_mutex_lock((result + 32));
  if (*(v2 + 24))
  {
    v4 = *(v2 + 16);
    if (v4 != v2 + 8)
    {
      v5 = 0;
      while (v4 && (v4 & 7) == 0)
      {
        result = sub_100092790(v2, *(v4 + 16), a2);
        if (result)
        {
          v5 = *(v4 + 16);
          goto LABEL_15;
        }

        v4 = *(v4 + 8);
        if (v4 == v2 + 8)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_17;
    }
  }

  v5 = 0;
LABEL_15:
  pthread_mutex_unlock((v2 + 32));
  return v5;
}

uint64_t sub_1000928E0(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_26:
    __break(0x5516u);
LABEL_27:
    __break(0x5514u);
    goto LABEL_28;
  }

  if (a2 + 32 >= 0x40)
  {
LABEL_28:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15)
  {
    __break(0x5518u);
    goto LABEL_26;
  }

  v3 = sub_10000C0EC();
  result = pthread_mutex_lock(&stru_10012B758);
  v4 = *(v3 + 8);
  if (v4 != v3)
  {
    while (v4 && (v4 & 7) == 0)
    {
      v5 = *(v4 + 16);
      if (!v5 || (*(v4 + 16) & 7) != 0)
      {
        break;
      }

      v7 = *(v5 + 32);
      if (v7)
      {
        if ((v7 & 7) != 0)
        {
          goto LABEL_26;
        }

        if (a2 >= 0x20)
        {
          goto LABEL_27;
        }

        if ((*(v7 + 8) & (1 << a2)) != 0)
        {
          v8 = *(v4 + 16);
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v4 = *(v4 + 8);
      if (v4 == v3 || v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_26;
  }

  v8 = 0;
LABEL_24:
  pthread_mutex_unlock(&stru_10012B758);
  return v8;
}

uint64_t sub_1000929D4(uint64_t result, signed int a2, int a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_17:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15 || a2 != 7 && a2 != 9 && !a4)
  {
    __break(0x5518u);
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  result = sub_10005A9E0(a4);
  if (!a4 || !result)
  {
    return result;
  }

  if ((a4 & 7) != 0)
  {
    goto LABEL_16;
  }

  return sub_10005B4BC(a4, a2, a3);
}

uint64_t sub_100092A88(uint64_t result, signed int a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15)
  {
    __break(0x5518u);
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  result = sub_10005A9E0(a3);
  if (!a3 || !result)
  {
    return 0;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_13;
  }

  return sub_10005B608(a3, a2);
}

uint64_t sub_100092B18(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    return 0;
  }

  if ((v3 & 7) == 0)
  {
    *(v3 + 8) = a3;
    return a3;
  }

LABEL_10:
  __break(0x5516u);
  return result;
}

uint64_t sub_100092B58(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 8);
        }

        goto LABEL_9;
      }

      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

uint64_t sub_100092B94(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_9;
  }

  v2 = *(a2 + 32);
  if (!v2)
  {
    return result;
  }

  if ((v2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_100092BC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    return 0;
  }

  if ((v3 & 7) == 0)
  {
    *(v3 + 12) = a3;
    return a3;
  }

LABEL_10:
  __break(0x5516u);
  return result;
}

uint64_t sub_100092C08(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 12);
        }

        goto LABEL_9;
      }

      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

uint64_t sub_100092C44(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 32);
  if (v3)
  {
    if ((v3 & 7) == 0)
    {
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 28) = 0xFFFFFFFFLL;
      *(v3 + 36) = 0;
      *(v3 + 48) = 0;
      *(v3 + 24) = -1;
      goto LABEL_8;
    }

LABEL_12:
    __break(0x5516u);
    return result;
  }

LABEL_8:

  return sub_100092CAC(result, a2);
}

uint64_t sub_100092CAC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_47;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_47;
  }

  v16 = -1431655766;
  v17 = 4;
  result = sub_1000C4254(result, a2);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_47;
  }

  sub_1000C7FA0(result, &v16, &v17);
  v4 = sub_10000C0EC();
  result = pthread_mutex_lock(&stru_10012B758);
  if ((v17 + 8) >= 0x10)
  {
    goto LABEL_43;
  }

  v2 = v17 - 3;
  v6 = (a2 & 7) == 0 && a2 != 0;
  v7 = *(v4 + 8);
  if (v2 < 0xFFFFFFFE)
  {
    while (v7 != v4)
    {
      if (!v6)
      {
        goto LABEL_47;
      }

      if (!v7)
      {
        goto LABEL_47;
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_47;
      }

      result = (*(*a2 + 96))(a2, *(v7 + 16));
      if (result)
      {
        v8 = *(v7 + 16);
        if (!v8 || (v8 & 7) != 0 || (*(v8 + 32) & 7) != 0)
        {
          goto LABEL_47;
        }
      }

      v7 = *(v7 + 8);
    }

    while (1)
    {
      pthread_mutex_unlock(&stru_10012B758);
      v15 = v16;
      if ((v16 + 8) < 0x10)
      {
        break;
      }

LABEL_43:
      __break(0x550Au);
    }

    return sub_10009346C(a2, v2 < 0xFFFFFFFE, (v15 - 1) < 2);
  }

  while (v7 != v4)
  {
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_47;
    }

    v9 = *(v7 + 16);
    if (!v9 || (*(v7 + 16) & 7) != 0)
    {
      goto LABEL_47;
    }

    if (*(v9 + 32))
    {
      if (!v6)
      {
        goto LABEL_47;
      }

      result = (*(*a2 + 96))(a2);
      if (result)
      {
        v11 = *(v7 + 16);
        if (v11)
        {
          if ((v11 & 7) != 0)
          {
            goto LABEL_47;
          }

          v12 = *(v11 + 32);
          if (v12)
          {
            if ((v12 & 7) != 0)
            {
              goto LABEL_47;
            }

            *(v12 + 32) = 0;
          }
        }
      }
    }

    v7 = *(v7 + 8);
  }

  v13 = pthread_mutex_unlock(&stru_10012B758);
  result = sub_100048620(v13, v14);
  if (!result || (result & 7) != 0)
  {
LABEL_47:
    __break(0x5516u);
    return result;
  }

  result = (*(*result + 200))(result, a2);
  if (result)
  {
    return result;
  }

  v15 = v16;
  if ((v16 + 8) > 0xF)
  {
    goto LABEL_43;
  }

  return sub_10009346C(a2, v2 < 0xFFFFFFFE, (v15 - 1) < 2);
}

void sub_100092EE8(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (result && (result & 7) == 0)
  {
    if (a3 >= 0x100)
    {
      __break(0x5518u);
    }

    else
    {
      if (!a2)
      {
        goto LABEL_9;
      }

      if ((a2 & 7) == 0)
      {
        v3 = *(a2 + 32);
        if (v3)
        {
          if ((v3 & 7) == 0)
          {
            *(v3 + 20) = a3;
            return;
          }

          goto LABEL_11;
        }

LABEL_9:
        sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 675);
        return;
      }
    }
  }

LABEL_11:
  __break(0x5516u);
}

uint64_t sub_100092F68(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 20);
        }

        goto LABEL_9;
      }

LABEL_8:
      sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 706);
      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

void sub_100092FE4(uint64_t result, uint64_t a2, int a3, char a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if ((a2 & 7) != 0)
  {
LABEL_23:
    __break(0x5516u);
    goto LABEL_24;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
LABEL_12:
    sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 753);
    return;
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_23;
  }

  v6 = *(v5 + 16);
  *(v5 + 16) = v6 & 0xFFFFFFFE;
  v7 = a3 + 32;
  if (a4)
  {
    if (v7 <= 0x3F)
    {
      v8 = 1 << a3;
      if (a3 < 0)
      {
        v8 = 0;
      }

      v9 = *(v5 + 32) | v8;
      goto LABEL_18;
    }

LABEL_24:
    __break(0x550Au);
    return;
  }

  if (v7 > 0x3F)
  {
    goto LABEL_24;
  }

  if (a3 >= 0)
  {
    v10 = ~(1 << a3);
  }

  else
  {
    v10 = -1;
  }

  v9 = *(v5 + 32) & v10;
LABEL_18:
  *(v5 + 32) = v9;
  if (v9)
  {
    *(v5 + 16) = v6 | 1;
  }

  sub_100092CAC(result, a2);
}

uint64_t sub_1000930CC(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      sub_1000E1D34();
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (!v2)
      {
        return v2 & 1;
      }

      if ((v2 & 7) == 0)
      {
        LODWORD(v2) = *(v2 + 16);
        return v2 & 1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100093114(uint64_t result, uint64_t a2, char a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_18;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    return result;
  }

  if (a3)
  {
    if ((v3 & 7) == 0)
    {
      v4 = *(v3 + 16);
      if ((v4 & 2) != 0)
      {
        return result;
      }

      *(v3 + 16) = v4 | 2;
      v5 = *(result + 168);
      if (v5 != 255)
      {
        v6 = v5 + 1;
LABEL_15:
        *(result + 168) = v6;
        return result;
      }

LABEL_19:
      __break(0x5507u);
      return result;
    }

LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_18;
  }

  v7 = *(v3 + 16);
  if ((v7 & 2) != 0)
  {
    *(v3 + 16) = v7 & 0xFFFFFFFD;
    if (*(result + 168))
    {
      v6 = *(result + 168) - 1;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1000931A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      v2 = sub_10000C0EC();
      result = pthread_mutex_lock(&stru_10012B758);
      v3 = 0;
      if (!*(v1 + 168) || (v4 = *(v2 + 8), v4 == v2))
      {
LABEL_18:
        pthread_mutex_unlock(&stru_10012B758);
        return v3;
      }

      v3 = 0;
      while (v4 && (v4 & 7) == 0)
      {
        v5 = *(v4 + 16);
        if (!v5 || (*(v4 + 16) & 7) != 0)
        {
          break;
        }

        v7 = *(v5 + 32);
        if (v7)
        {
          if ((v7 & 7) != 0)
          {
            break;
          }

          if ((*(v7 + 16) & 2) != 0)
          {
            v3 = *(v4 + 16);
          }
        }

        v4 = *(v4 + 8);
        if (v4 == v2)
        {
          goto LABEL_18;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_100093264(uint64_t result, uint64_t a2, int a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  v4 = *(a2 + 32);
  if (!v4)
  {
LABEL_12:
    sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 926);
    return;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_14;
  }

  *(v4 + 36) = a3;
  v5 = *(v4 + 40);
  if (!v5)
  {
    return;
  }

  if ((v5 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    return;
  }

  sub_10005BE74(v5, a3);
}

uint64_t sub_1000932FC(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 36);
        }

        goto LABEL_9;
      }

      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

void sub_100093338(uint64_t result, uint64_t a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    if ((a2 & 7) == 0)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        if ((v3 & 7) == 0)
        {
          *(v3 + 24) = *(v3 + 28);
          *(v3 + 28) = a3;
          return;
        }

        goto LABEL_9;
      }

LABEL_8:
      sub_1000DDEEC(0, 4, "%s:%d NULL devPort.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 984);
      return;
    }
  }

LABEL_9:
  __break(0x5516u);
}

uint64_t sub_1000933B0(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0xFFFFFFFFLL;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 28);
        }

        goto LABEL_9;
      }

      return 0xFFFFFFFFLL;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000933EC(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      sub_1000E1D34();
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (!v2)
      {
        return 0xFFFFFFFFLL;
      }

      if ((v2 & 7) == 0)
      {
        return *(v2 + 24);
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100093438(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_9;
  }

  v2 = *(a2 + 32);
  if (!v2)
  {
    return result;
  }

  if ((v2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *(v2 + 32) = 0;
  return result;
}

uint64_t sub_10009346C(uint64_t result, uint64_t a2, char a3)
{
  if (!result)
  {
    goto LABEL_27;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_27;
  }

  v5 = a2;
  v6 = (*(*result + 208))(result);
  if (v6 == 3)
  {
    if (a3)
    {
      return 0;
    }

    if (v5)
    {
      v8 = (*(v3 + 196) & 1) == 0;
    }

    else
    {
      v8 = 0;
    }

    sub_1000B9EA8(v3, v5);
    return v8;
  }

  if (v5)
  {
    result = sub_100048620(v6, v7);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_27;
    }

    v6 = (*(*result + 152))(result, v3);
    v8 = v6 != 2;
  }

  else
  {
    v8 = 0;
  }

  result = sub_100048620(v6, v7);
  if (result)
  {
    if ((result & 7) == 0)
    {
      v9 = (*(*result + 152))(result, v3);
      v10 = v9;
      result = sub_100048620(v9, v11);
      if (result)
      {
        if ((result & 7) == 0)
        {
          if (v10 == 3)
          {
            v12 = 3;
          }

          else
          {
            v12 = 2;
          }

          if (v5)
          {
            v13 = v12;
          }

          else
          {
            v13 = 1;
          }

          (*(*result + 144))(result, v3, v13);
          return v8;
        }
      }
    }
  }

LABEL_27:
  __break(0x5516u);
  return result;
}

uint64_t sub_1000935E8(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      sub_1000E1D34();
    }

    if ((a2 & 7) == 0)
    {
      operator new();
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100093650(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_12;
  }

  result = *(a2 + 32);
  *(a2 + 32) = 0;
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    return result;
  }

  v3 = *(*result + 8);

  return v3();
}

uint64_t sub_1000936C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    sub_1000E1D34();
  }

  if ((v3 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {
    *(v3 + 64) = a3;
  }

  return result;
}

void sub_100093710(uint64_t result, void *a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_23;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  if ((a2 & 7) != 0)
  {
LABEL_23:
    __break(0x5516u);
    return;
  }

  v5 = a2[4];
  if (!v5)
  {
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_20:
    __break(0x5518u);
LABEL_21:
    sub_1000E1D34();
  }

  if ((v5 & 7) != 0)
  {
    goto LABEL_23;
  }

  v7 = *(v5 + 40);
  if (v7)
  {
    if (v7 != a3)
    {
      sub_1000E1D34();
    }

    return;
  }

  if (!sub_10005A9E0(a3))
  {
    goto LABEL_20;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_23;
  }

  v8 = sub_100018DC0(a3);
  if (v8)
  {
    sub_1000937F8(result, v8, a3);
  }

  v9 = a2[4];
  if (!v9 || (v9 & 7) != 0)
  {
    goto LABEL_23;
  }

  *(v9 + 40) = a3;

  sub_10005AD74(a3, a2);
}

void sub_1000937F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_35;
  }

  if (!a3)
  {
    __break(0x5518u);
    goto LABEL_35;
  }

  v6 = sub_10005A9E0(a3);
  v7 = v6;
  if (v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_35;
  }

  v9 = sub_100018DC0(a3);
  if (v9)
  {
    v10 = v9;
    if (v9 != a2)
    {
      if ((v9 & 7) != 0)
      {
        goto LABEL_35;
      }

      v11 = (*(*v9 + 200))(v9);
      if (!a2)
      {
        v12 = "Unknown";
LABEL_18:
        sub_1000DDEEC(0, 4, "%s:%d Port do not match! handle=%hhx port:%hhx(%s) != %hhx(%s)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1358, v8, v10, v11, a2, v12);
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
LABEL_14:
    sub_1000DDEEC(0, 4, "%s:%d Handle not associated with a portObj! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1352, v8);
    v10 = 0;
    if (a2)
    {
      v11 = "Unknown";
LABEL_16:
      if ((a2 & 7) == 0)
      {
        v12 = (*(*a2 + 200))(a2);
        goto LABEL_18;
      }

LABEL_35:
      __break(0x5516u);
      return;
    }
  }

  if (a2)
  {
    if ((a2 & 7) != 0)
    {
      goto LABEL_35;
    }

    v13 = v10[4];
    if (v13)
    {
      if ((v13 & 7) != 0)
      {
        goto LABEL_35;
      }

      *(v13 + 40) = 0;
      v14 = v7 ^ 1;
      if ((v8 & 7) != 0)
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_35;
      }

      sub_10005AEDC(v8);
      if ((*(*v10 + 272))(v10))
      {
        if (!v15 || (v15 & 7) != 0)
        {
          goto LABEL_35;
        }

        (*(*v15 + 400))(v15, 0);
      }

      sub_100092C44(result, a2);
    }
  }
}

uint64_t sub_100093A7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

  result = sub_10005A9E0(a4);
  if ((a2 + 32) > 0x3F)
  {
LABEL_20:
    __break(0x550Au);
    return result;
  }

  v7 = result ^ 1;
  if (a2 > 14)
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_17:
    __break(0x5518u);
    goto LABEL_18;
  }

  if ((a4 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  if (sub_10005B694(a4, a2) && sub_10005B694(a4, a2) != a3)
  {
    sub_10005A888(a4, a2);
  }

  if (sub_10005B694(a4, a2) && sub_10005B694(a4, a2) != a3)
  {
LABEL_18:
    sub_1000E1D34();
  }

  return sub_10005B370(a4, a2, a3);
}

uint64_t sub_100093B68(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_15:
    __break(0x550Au);
    return result;
  }

  if (a2 >= 15 || (result = sub_10005A9E0(a3), !a3) || !result)
  {
    __break(0x5518u);
    goto LABEL_14;
  }

  if ((a3 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  result = sub_10005B694(a3, a2);
  if (result)
  {
    sub_10005A888(a3, a2);

    return sub_10005B2D0(a3, a2, 0);
  }

  return result;
}

void sub_100093C14(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a3)
  {

    sub_100093CB8(a1, a2);
  }

  else
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_100093CAC;
    v5[3] = &unk_100116290;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_100093CB8(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    v4 = sub_10005A9E0(a2);
    if (!a2 || !v4)
    {
      sub_1000DDEEC(0, 4, "%s:%d No Handle! Cannot delete registered Objects!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1552);
      return;
    }

    v6 = sub_1000C4254(v4, v5);
    if (v6)
    {
      if ((v6 & 7) == 0)
      {
        sub_1000CA0E0(v6);
        if ((a2 & 7) == 0)
        {
          if (sub_10005BBCC(a2))
          {
            v7 = sub_10005BBCC(a2);
            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_26;
            }

            sub_100062B9C(v7);
          }

          if (!sub_10005BC1C(a2))
          {
            goto LABEL_16;
          }

          v8 = sub_10005BC1C(a2);
          if (v8 && (v8 & 7) == 0)
          {
            sub_1000B6F6C(v8);
LABEL_16:
            v9 = 0;
            do
            {
              sub_100093B68(result, v9, a2);
              v9 = (v9 + 1);
            }

            while (v9 != 15);
            v10 = sub_100018DC0(a2);
            if (v10)
            {
              sub_1000937F8(result, v10, a2);
            }

            sub_10005B064(a2);
            v11 = sub_10005B2B8(a2);
            if (!v11)
            {
LABEL_24:
              sub_100094014(result, a2);
              sub_1000940BC(result, a2);
              sub_10005A9CC(a2);
              operator delete();
            }

            v12 = v11;
            if ((v11 & 7) == 0)
            {
              if (sub_10005B2B8(v11) == a2)
              {
                sub_10005B2A0(v12, 0);
                sub_10005B2A0(a2, 0);
              }

              goto LABEL_24;
            }
          }
        }
      }
    }
  }

LABEL_26:
  __break(0x5516u);
  __break(0x550Au);
}

void sub_100094014(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  v3 = sub_10005A9E0(a2);
  if (!a2 || !v3)
  {
    sub_1000DDEEC(0, 4, "%s:%d No Handle, cannot delete IncomingProcess\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1718);
    return;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_13;
  }

  v4 = sub_10005BBE4(a2);
  if (!v4)
  {
    return;
  }

  if ((v4 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return;
  }

  sub_100062E00(v4);
}

void sub_1000940BC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  v3 = sub_10005A9E0(a2);
  if (!a2 || !v3)
  {
    sub_1000DDEEC(0, 4, "%s:%d No Handle, cannot delete OugoingProcess\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1757);
    return;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_13;
  }

  v4 = sub_10005BC34(a2);
  if (!v4)
  {
    return;
  }

  if ((v4 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return;
  }

  sub_1000B6F9C(v4);
}

void sub_100094164(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 32));
    while (*(result + 24))
    {
      v2 = *(result + 16);
      if (v2)
      {
        v3 = (*(result + 16) & 7) == 0;
      }

      else
      {
        v3 = 0;
      }

      if (!v3)
      {
        goto LABEL_14;
      }

      sub_1000941DC(result, *(v2 + 16));
    }

    pthread_mutex_unlock((result + 32));
  }
}

void sub_1000941DC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_32;
  }

  if (!a2)
  {
    return;
  }

  pthread_mutex_lock((a1 + 32));
  if (*(a1 + 24))
  {
    for (i = *(a1 + 16); i != (a1 + 8); i = i[1])
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_32;
      }

      if (i[2] == a2)
      {
        if (*(a1 + 160) == a2)
        {
          *(a1 + 160) = 0;
        }

        if ((a2 & 7) == 0)
        {
          sub_10005AD1C(a2);
          sub_100021528(a1 + 8, i);
          break;
        }

        goto LABEL_32;
      }
    }
  }

  pthread_mutex_unlock((a1 + 32));
  if ((a2 & 7) != 0)
  {
    goto LABEL_32;
  }

  v5 = sub_10005BBCC(a2);
  v6 = sub_10005BC1C(a2);
  if (v6)
  {
    if ((v6 & 7) != 0)
    {
      goto LABEL_32;
    }

    sub_1000B6F6C(v6);
  }

  if (v5)
  {
    if ((v5 & 7) == 0)
    {
      sub_100062B9C(v5);

      sub_100062EF4(v5, a2);
      return;
    }

LABEL_32:
    __break(0x5516u);
    return;
  }

  v7 = sub_100018DC0(a2);
  if (v7)
  {
    if ((v7 & 7) != 0)
    {
      goto LABEL_32;
    }

    v8 = (*(*v7 + 272))(v7);
  }

  else
  {
    v8 = 0;
  }

  sub_100093C14(a1, a2, v8);
}

void sub_10009436C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  v5 = sub_10005A9E0(a2);
  if (!a2 || !v5)
  {
    sub_1000DDEEC(0, 4, "%s:%d No Handle, cannot register IncomingProcess, obj=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1616, a3);
    return;
  }

  if ((a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    v6 = sub_10005BBCC(a2);
    if (v6)
    {
      sub_1000E22D8(v6);
    }

    sub_10005BBB4(a2, a3);
  }
}

void sub_100094420(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  v5 = sub_10005A9E0(a2);
  if (!a2 || !v5)
  {
    sub_1000DDEEC(0, 4, "%s:%d No Handle, cannot register OugoingProcess, obj=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 1680, a3);
    return;
  }

  if ((a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    v6 = sub_10005BC1C(a2);
    if (v6)
    {
      sub_1000E22D8(v6);
    }

    sub_10005BC04(a2, a3);
  }
}

uint64_t sub_1000944D4(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_21;
  }

  if ((a3 + 32) >= 0x40)
  {
LABEL_22:
    __break(0x550Au);
    return result;
  }

  if (a3 || a4 != 56)
  {
    if (a3 || a4 != 1 && a4 != 19 || !a2)
    {
      return result;
    }

    if ((a2 & 7) == 0)
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        if ((v4 & 7) == 0)
        {
          v5 = 0;
          goto LABEL_11;
        }

        goto LABEL_21;
      }

      return result;
    }

LABEL_21:
    __break(0x5516u);
    goto LABEL_22;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_21;
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    if ((v4 & 7) == 0)
    {
      v5 = 1;
LABEL_11:
      *(v4 + 48) = v5;
      return result;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100094564(uint64_t result, uint64_t a2, char a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_9;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    return result;
  }

  if ((v3 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *(v3 + 48) = a3;
  return result;
}

uint64_t sub_100094598(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
LABEL_9:
      LOBYTE(v2) = 0;
      return v2 & 1;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 32);
      if (!v2)
      {
        return v2 & 1;
      }

      if ((v2 & 7) == 0)
      {
        LODWORD(v2) = *(v2 + 48);
        if (v2 >= 2)
        {
          __break(0x550Au);
          goto LABEL_9;
        }

        return v2 & 1;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000945E0(uint64_t a1, uint64_t a2)
{
  if (a1 && (a1 & 7) == 0)
  {
    v2 = a2;
    v3 = sub_10005A9E0(a2);
    result = 0;
    if (!v2 || !v3)
    {
      return result;
    }

    if ((v2 & 7) == 0)
    {
      result = sub_100018DC0(v2);
      if (result)
      {
        return result;
      }

      if (!sub_10005BCA0(v2))
      {
        goto LABEL_12;
      }

      result = sub_10005B04C(v2);
      if (!result)
      {
        goto LABEL_12;
      }

      if ((result & 7) == 0)
      {
        return result;
      }
    }
  }

  __break(0x5516u);
LABEL_12:

  return sub_10005AC88(v2);
}

uint64_t sub_10009467C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_10005A9E0(a2);
  if (!result)
  {
    return result;
  }

  if (!a2 || (a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  return sub_10005B2A0(a2, a3);
}

uint64_t sub_1000946EC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  result = sub_10005A9E0(a2);
  if (!result)
  {
    return 0;
  }

  if (!a2 || (a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    if (!sub_10005B2B8(a2))
    {
      sub_1000DDEEC(0, 4, "%s:%d No ctaHandle handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2065, a2);
    }

    return sub_10005B2B8(a2);
  }

  return result;
}

uint64_t sub_100094794(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    v1 = 0;
    pthread_mutex_lock((result + 32));
    operator new();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100094828(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 32));
    v2 = *(v1 + 24);
    pthread_mutex_unlock((v1 + 32));
    return v2;
  }

  return result;
}

void sub_100094870(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    return;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_13;
  }

  v4 = sub_100018DC0(a2);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if ((v4 & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return;
  }

  v5 = (*(*v4 + 272))(v4);
LABEL_10:

  sub_100093C14(a1, a2, v5);
}

uint64_t sub_100094920(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, _DWORD *a4)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_19;
  }

  result = pthread_mutex_lock((result + 32));
  if (a4)
  {
    if ((a4 & 3) == 0)
    {
      *a4 = *(v4 + 24);
      goto LABEL_7;
    }

LABEL_19:
    __break(0x5516u);
    return result;
  }

LABEL_7:
  if (*(v4 + 24))
  {
    for (i = *(v4 + 16); i != v4 + 8; i = *(i + 8))
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_19;
      }

      result = *(i + 16);
      if (result)
      {
        result = a2(result, a3);
      }
    }
  }

  return pthread_mutex_unlock((v4 + 32));
}

uint64_t sub_1000949E0(uint64_t result, uint64_t a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    if ((a2 & 7) == 0)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        if ((v3 & 7) == 0)
        {
          return *(v3 + 40);
        }

        goto LABEL_9;
      }

LABEL_8:
      sub_1000DDEEC(0, 4, "%s:%d devPort=NULL, index=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2296, a3);
      return 0;
    }
  }

LABEL_9:
  __break(0x5516u);
  return result;
}

uint64_t sub_100094A60(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_20:
    __break(0x5516u);
LABEL_21:
    __break(0x550Au);
  }

  else
  {
    result = pthread_mutex_lock((result + 32));
    if (*(v2 + 24))
    {
      for (i = *(v2 + 16); i != v2 + 8; i = *(i + 8))
      {
        if (!i || (i & 7) != 0)
        {
          goto LABEL_20;
        }

        v5 = *(i + 16);
        if (!v5 || (*(i + 16) & 7) != 0)
        {
          goto LABEL_20;
        }

        result = sub_100018DC0(*(i + 16));
        if (result)
        {
          if ((result & 7) != 0)
          {
            goto LABEL_20;
          }

          result = (*(*result + 208))(result);
          if (a2 >= 8)
          {
            goto LABEL_21;
          }

          if (result == a2)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v5 = 0;
LABEL_19:
    pthread_mutex_unlock((v2 + 32));
    return v5;
  }

  return result;
}

uint64_t sub_100094B48(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_15:
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 32));
    if (*(v2 + 24))
    {
      for (i = *(v2 + 16); i != v2 + 8; i = *(i + 8))
      {
        if (!i || (i & 7) != 0)
        {
          goto LABEL_15;
        }

        v5 = *(i + 16);
        result = sub_10005A9E0(v5);
        if (result)
        {
          if (!v5 || (v5 & 7) != 0)
          {
            goto LABEL_15;
          }

          result = sub_10005BAC4(v5);
          if (result == a2)
          {
            goto LABEL_14;
          }
        }
      }
    }

    v5 = 0;
LABEL_14:
    pthread_mutex_unlock((v2 + 32));
    return v5;
  }

  return result;
}

uint64_t sub_100094BFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (!a2)
      {
        return 0;
      }

      result = pthread_mutex_lock((result + 32));
      if (*(v2 + 24))
      {
        v4 = *(v2 + 16);
        if (v4 != v2 + 8)
        {
          while (v4 && (v4 & 7) == 0)
          {
            v5 = *(v4 + 16);
            v6 = v5 == a2;
            if (v5 != a2)
            {
              v4 = *(v4 + 8);
              if (v4 != v2 + 8)
              {
                continue;
              }
            }

            goto LABEL_12;
          }

          goto LABEL_15;
        }
      }

      v6 = 0;
LABEL_12:
      pthread_mutex_unlock((v2 + 32));
      return v6;
    }
  }

LABEL_15:
  __break(0x5516u);
  return result;
}

uint64_t sub_100094CA0(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
LABEL_19:
    __break(0x550Au);
  }

  else
  {
    v3 = sub_10000C0EC();
    result = pthread_mutex_lock(&stru_10012B758);
    for (i = *(v3 + 8); ; i = *(i + 8))
    {
      if (i == v3)
      {
        pthread_mutex_unlock(&stru_10012B758);
        return 0;
      }

      if (!i || (i & 7) != 0)
      {
        goto LABEL_18;
      }

      result = *(i + 16);
      if (!result || (*(i + 16) & 7) != 0)
      {
        goto LABEL_18;
      }

      if (*(result + 32))
      {
        result = (*(*result + 208))(result);
        if (a2 >= 8)
        {
          goto LABEL_19;
        }

        if (result == a2)
        {
          break;
        }
      }
    }

    pthread_mutex_unlock(&stru_10012B758);
    return *(i + 16);
  }

  return result;
}

uint64_t sub_100094D84(uint64_t result, uint64_t a2, void *a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_10005AB58(a2);
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = sub_10005AC88(a2);
  result = sub_10005B04C(a2);
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!v5)
  {
    return 1;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_19;
  }

  v6 = result;
  result = 1;
  if (v6 == a3)
  {
    return result;
  }

  v7 = a3[5];
  if (v5 == v7)
  {
    return result;
  }

  if ((v5 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    return result;
  }

  v8 = (*(*v5 + 208))(v5);
  v9 = (*(*a3 + 208))(a3);
  result = (v8 == 1) == (v9 != 1);
  if (v8 == 1 && v9 != 1)
  {
    sub_10005AB80(a2, v7);
    return 1;
  }

  return result;
}

uint64_t sub_100094EBC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (!a2)
      {
        goto LABEL_6;
      }

      if ((a2 & 7) == 0)
      {
        if (!sub_10000FE6C(a2))
        {
          return 0;
        }

LABEL_6:
        result = pthread_mutex_lock((v2 + 32));
        if (*(v2 + 24))
        {
          v4 = *(v2 + 16);
          if (v4 != v2 + 8)
          {
            while (v4 && (v4 & 7) == 0)
            {
              v5 = *(v4 + 16);
              if (!v5 || (*(v4 + 16) & 7) != 0)
              {
                break;
              }

              v7 = sub_100018DC0(*(v4 + 16));
              result = sub_10005AB58(v5);
              v8 = 0;
              if (result && !v7)
              {
                result = sub_100094D84(v2, v5, a2);
                if (result)
                {
                  v8 = v5;
                }

                else
                {
                  v8 = 0;
                }
              }

              if (!v8)
              {
                v4 = *(v4 + 8);
                if (v4 != v2 + 8)
                {
                  continue;
                }
              }

              goto LABEL_24;
            }

            goto LABEL_27;
          }
        }

        v8 = 0;
LABEL_24:
        pthread_mutex_unlock((v2 + 32));
        return v8;
      }
    }
  }

LABEL_27:
  __break(0x5516u);
  return result;
}

uint64_t sub_100094FC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (!a2)
      {
        goto LABEL_6;
      }

      if ((a2 & 7) == 0)
      {
        if (!sub_10000FE6C(a2))
        {
          return 0;
        }

LABEL_6:
        result = pthread_mutex_lock((v2 + 32));
        if (*(v2 + 24))
        {
          v4 = *(v2 + 16);
          if (v4 != v2 + 8)
          {
            while (v4 && (v4 & 7) == 0)
            {
              v5 = *(v4 + 16);
              if (!v5 || (*(v4 + 16) & 7) != 0)
              {
                break;
              }

              v7 = sub_100018DC0(*(v4 + 16));
              result = sub_10005AB58(v5);
              if (!result)
              {
                goto LABEL_19;
              }

              if (!v7)
              {
                goto LABEL_20;
              }

              if ((v7 & 7) != 0)
              {
                goto LABEL_29;
              }

              result = sub_1000D6BF8(v7);
              if (result)
              {
LABEL_19:
                v5 = 0;
              }

              else
              {
LABEL_20:
                result = sub_100094D84(v2, v5, a2);
                if (!result)
                {
                  v5 = 0;
                }

                if (v5)
                {
                  goto LABEL_26;
                }
              }

              v4 = *(v4 + 8);
              if (v4 == v2 + 8)
              {
                goto LABEL_26;
              }
            }

            goto LABEL_29;
          }
        }

        v5 = 0;
LABEL_26:
        pthread_mutex_unlock((v2 + 32));
        return v5;
      }
    }
  }

LABEL_29:
  __break(0x5516u);
  return result;
}

void sub_1000950E0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_24;
  }

  v4 = sub_10005A9E0(a2);
  if (!a2 || !v4)
  {
    sub_1000DDEEC(0, 4, "%s:%d Failed to get pIncomingProcess object! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2833, 0);
    sub_1000DDEEC(0, 4, "%s:%d Failed to get pPort object! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2850, 0);
    return;
  }

  pthread_mutex_lock((result + 96));
  if ((a2 & 7) != 0)
  {
    goto LABEL_24;
  }

  v6 = sub_10005BBCC(a2);
  if (!v6)
  {
    v7 = sub_1000C4254(0, v5);
    sub_10006078C(a2, v7);
  }

  pthread_mutex_unlock((result + 96));
  v8 = sub_100018DC0(a2);
  if (v8 || (v8 = sub_10005AC88(a2)) != 0)
  {
    v9 = v8;
    if (!sub_1000D6B98(v8))
    {
      return;
    }

    if ((v9 & 7) != 0)
    {
LABEL_24:
      __break(0x5516u);
      return;
    }

    if ((*(*v9 + 232))(v9))
    {
      if (((*(*v9 + 272))(v9) & 1) == 0)
      {
        v10 = (*(*v9 + 208))(v9);
        if (v10 != 1)
        {
          v12 = sub_100048620(v10, v11);
          if (!v12 || (v12 & 7) != 0)
          {
            goto LABEL_24;
          }

          if ((*(*v12 + 152))(v12, v9) < 2)
          {
            return;
          }
        }
      }
    }
  }

  else
  {
    sub_1000DDEEC(0, 4, "%s:%d Failed to get pPort object! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2850, a2);
  }

  if ((v6 & 7) != 0)
  {
    goto LABEL_24;
  }

  sub_100062B24(v6);
}

uint64_t sub_100095310(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      v4 = sub_10005A9E0(a2);
      if (!a2 || !v4)
      {
        sub_1000DDEEC(0, 4, "%s:%d Failed to get pOutgoingProcess object! handle=%hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 2920, 0);
        return 0;
      }

      result = pthread_mutex_lock((v2 + 96));
      if ((a2 & 7) == 0)
      {
        v5 = sub_10005BC1C(a2);
        if (!v5)
        {
          sub_1000B5D44(a2, v2);
        }

        pthread_mutex_unlock((v2 + 96));
        return v5;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000953E8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  sub_10005AB40(a2, a3);

  return sub_10005AB80(a2, a4);
}

uint64_t sub_100095458(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_16:
    __break(0x5516u);
  }

  else
  {
    if (a2)
    {
      result = pthread_mutex_lock((result + 32));
      if (*(v2 + 24))
      {
        for (i = *(v2 + 16); i != v2 + 8; i = *(i + 8))
        {
          if (!i || (i & 7) != 0)
          {
            goto LABEL_16;
          }

          if (*(i + 16) == a2)
          {
            pthread_mutex_unlock((v2 + 32));

            return sub_10005A9E0(a2);
          }
        }
      }

      pthread_mutex_unlock((v2 + 32));
    }

    sub_1000DDEEC(0, 4, "%s:%d Invalid handle(%hhx)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPortMap.cpp", 3006, a2);
    return 0;
  }

  return result;
}

dispatch_source_t sub_100095538(dispatch_source_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      result->isa = &off_1001162D0;
      *&result[1].isa = 0u;
      *&result[3].isa = 0u;
      *(&result[4].isa + 1) = 0u;
      result[8].isa = 0;
      LODWORD(result[10].isa) = 0;
      *(&result[6].isa + 4) = 0xFFFFFFFFLL;
      global_queue = dispatch_get_global_queue(2, 0);
      result = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
      v1[9].isa = result;
      if (result)
      {
        dispatch_source_set_event_handler(result, &stru_100116300);
        result = v1[9].isa;
        if (result)
        {
          dispatch_source_set_timer(result, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
          result = v1[9].isa;
          if (result)
          {
            dispatch_resume(result);
            return v1;
          }
        }
      }

      __break(0x5510u);
    }
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_10009560C(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100095668(result);
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_100095620(NSObject *result)
{
  if (result && (result & 7) == 0)
  {
    sub_100095668(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

NSObject *sub_100095668(NSObject *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result->isa = &off_1001162D0;
    result = result[9].isa;
    if (result)
    {
      dispatch_release(result);
      return v1;
    }
  }

  __break(0x5510u);
  return result;
}

uint64_t sub_1000956C8(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (v4 = (result + 1202), sub_100064F7C(result, a2, 13), *v2 = off_100116340, *(v2 + 1234) = 0, *(v2 + 1200) = 0, *(v2 + 1192) = 0, *(v2 + 1240) = 0, *(v2 + 1248) = 0, *v4 = xmmword_1000EF2A0, *(v2 + 1218) = 0u, *(v2 + 1218) = 480, (result = sub_100065198(v5)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000929D4(result, 13, 44, a2);
    return v2;
  }

  return result;
}

uint64_t sub_100095780(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000956C8(result, a2);
  }

  __break(0x5516u);
  return result;
}

void sub_100095794(uint64_t result)
{
  if (!result || (result & 7) != 0 || (*result = off_100116340, (v2 = sub_100065198(result)) == 0) || (v2 & 7) != 0 || (sub_1000929D4(v2, 13, 0, *(result + 8)), v4 = sub_100095860(result, v3), (v6 = sub_1000D5ED0(v4, v5)) == 0) || (v6 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    dword_10012C764 = (*(*v6 + 144))(v6);
    *(result + 1240) = 0;
    *(result + 1248) = 0;

    sub_10006522C(result, v7);
  }
}

uint64_t sub_100095860(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v5 = 0uLL;
  *(&v5 + 4) = *(result + 8);
  result = sub_1000D5ED0(result, a2);
  v3 = *(v2 + 1192);
  if (v3 < 4)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = result;
    *(v2 + 1192) = 0;
    *(v2 + 1200) = 0;
    if (result && (result & 7) == 0)
    {
      if ((*(*result + 128))(result))
      {
        LODWORD(v5) = 3;
        HIDWORD(v5) = 0;
        sub_10005FBC8(0xDuLL, 0, &v5, 16, *(v2 + 8));
      }

      LODWORD(v5) = 1;
      sub_10005FBC8(0xDuLL, 0, &v5, 16, *(v2 + 8));
      if ((*(*v4 + 120))(v4) != 1000)
      {
        LODWORD(v5) = 2;
        WORD6(v5) = 1000;
        sub_10005FBC8(0xDuLL, 0, &v5, 16, *(v2 + 8));
      }

      return 0;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x550Au);
  return result;
}

void sub_1000959A4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100095794(result);
  }
}

uint64_t sub_1000959B8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100095794(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100095A00(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 1192);
  if (result >= 4)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

void sub_100095A24(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_28;
  }

  v3 = *(a1 + 8);
  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_28;
  }

  v6 = sub_10005BC54(v3);
  if (a2 < 4)
  {
    v7 = v6;
    if (a2 == 1)
    {
      v9 = *(a1 + 1248);
      if (v9 > 1)
      {
        goto LABEL_29;
      }

      if ((v9 & 1) == 0)
      {
        *(a1 + 1202) = xmmword_1000EF2A0;
        *(a1 + 1218) = xmmword_1000EF2B0;
        *(a1 + 1234) = 0;
      }
    }

    else if (a2 == 2 && sub_100095BAC(a1))
    {
      v8 = *(a1 + 1248);
      if (v8 > 1)
      {
        goto LABEL_29;
      }

      if ((v8 & 1) == 0)
      {
        *(a1 + 1222) = xmmword_1000EF2C0;
        syslog(4, "%s:%d Sending Actionsafe parameters!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", 260);
      }
    }

    if (*(a1 + 1214) != 640 || !v7 || *(a1 + 1218) != 480)
    {
      goto LABEL_27;
    }

    if ((v7 & 7) != 0)
    {
LABEL_28:
      __break(0x5516u);
      goto LABEL_29;
    }

    v10 = sub_1000BF3D0(v7 + 16);
    v11 = sub_1000BF328(v7 + 16);
    if (v11 <= 1)
    {
      if (!v11)
      {
LABEL_27:
        v14 = *(a1 + 8);
        v12 = v14;
        *(a1 + 1192) = a2;
        v13 = 0;
        v15 = a2;
        sub_10005FBC8(0xDuLL, 0, &v13, 16, v12);
        return;
      }

      if (v10 <= 7)
      {
        if (v10 - 1 <= 2)
        {
          sub_1000BF768(v7 + 16, 0, 1);
        }

        goto LABEL_27;
      }
    }
  }

LABEL_29:
  __break(0x550Au);
}

BOOL sub_100095BAC(_BOOL8 result)
{
  if (!result || result & 7)
  {
    __break(0x5516u);
  }

  else
  {
    return *(result + 1202) == 5 && *(result + 1206) == 107 && *(result + 1210) == 80 && *(result + 1214) == 640 && *(result + 1218) == 480 && !*(result + 1222) && !*(result + 1226) && !*(result + 1230) && *(result + 1234) == 0;
  }

  return result;
}

uint64_t sub_100095C2C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (a2)
    {
      v2 = 0;
      *(result + 1202) = *a2;
      *(result + 1218) = *(a2 + 16);
      *(result + 1234) = *(a2 + 32);
      *(result + 1248) = 1;
    }

    else
    {
      v2 = 4;
      sub_1000DDEEC(0, 4, "%s:%d NULL videoScreenInfo\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", 401);
    }

    return v2;
  }

  return result;
}

uint64_t sub_100095CBC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!*(result + 1240))
  {
    return result;
  }

  v3 = *(result + 1202);
  v4 = vrev64q_s32(*(result + 1218));
  v4.i64[0] = *(result + 1218);
  v7[0] = xmmword_1000EF2D0;
  v7[1] = v3;
  v7[2] = v4;
  v8 = *(result + 1234);
  v9 = 1515870810;
  result = sub_10004AB10(result, a2);
  if (!result || (v5 = result, (result & 7) != 0) || (result = sub_1000CE018(*(v2 + 8)), (v6 = *(v2 + 1240)) == 0) || (v6 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  return (*(*v5 + 120))(v5, result, *v6, 56, v7);
}

uint64_t sub_100095D90(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    return result;
  }

  v3 = 0;
  if (a2 != 32)
  {
    if (a2 == 8)
    {
      *(result + 1202) = xmmword_1000EF2A0;
      *(result + 1218) = xmmword_1000EF2B0;
      *(result + 1234) = 0;
      *(result + 1248) = 0;
      result = sub_100095860(result, a2);
    }

    else if (a2 != 4)
    {
      sub_1000E24A0();
    }

    result = sub_1000D5ED0(result, a2);
    if (result && (result & 7) == 0)
    {
      v2 = (*(*result + 144))(result);
      result = 0;
      dword_10012C764 = v2;
      return result;
    }

    goto LABEL_13;
  }

  sub_10006770C(result, &v3);
  return v3;
}

unint64_t sub_100095E54(unint64_t result, unint64_t a2)
{
  if (!result)
  {
    goto LABEL_100;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_100;
  }

  if (*(result + 8))
  {
    result = sub_100065198(result);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_100;
    }

    if (sub_100094BFC(result, *(v2 + 8)))
    {
      result = *(v2 + 8);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_100;
      }

      result = sub_10005ACA0(result);
      if (result)
      {
        goto LABEL_10;
      }

      if (!a2 || (a2 & 7) != 0)
      {
        goto LABEL_100;
      }

      v4 = *(a2 + 68);
      if (v4 >= 0x10000)
      {
        goto LABEL_101;
      }

      v5 = *(a2 + 24);
      v6 = *(a2 + 128);
      v7 = *(a2 + 126);
      result = sub_100065198(result);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_100;
      }

      v8 = sub_1000945E0(result, *(v2 + 8));
      result = sub_1000D5ED0(v8, v9);
      v40 = 0uLL;
      v11 = *(v2 + 8);
      *(&v40 + 4) = v11;
      if (v7 > 0xF)
      {
        v12 = 4;
        goto LABEL_41;
      }

      v12 = 4;
      if (v7 <= 6)
      {
        if (v7 <= 3)
        {
          if (v7 == 1)
          {
            if (v6 != 1)
            {
              goto LABEL_41;
            }

            if (!v5)
            {
              goto LABEL_100;
            }

            v29 = sub_1000964B8(v2, a2, *v5);
          }

          else
          {
            if (v7 != 3)
            {
              goto LABEL_64;
            }

            if (v6 - 1 > 3)
            {
              goto LABEL_41;
            }

            v29 = sub_1000965CC(v2, a2);
          }

          v12 = v29;
          goto LABEL_41;
        }

        if (v7 == 4)
        {
          if (v6 != 1)
          {
            goto LABEL_41;
          }

          if (!v5)
          {
            goto LABEL_100;
          }

          v37 = *v5;
          if (v37 > 5)
          {
            goto LABEL_41;
          }

          syslog(4, "%s:%s-%d pData[0] == 0x%x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", "ProcessCmd", 573, v37);
          sub_100096690(v2, *v5);
        }

        else
        {
          if (v7 != 5)
          {
            v12 = 4 * (v6 != 14);
            goto LABEL_41;
          }

          if (v6 != 2)
          {
LABEL_41:
            if (*(a2 + 126) == v7)
            {
              sub_1000B7854(a2, v8, 0, 13, 0, v4, v12, v7, 0, 255, 0, 0, 0, 0);
            }

            return sub_10009686C(v2, a2, 0);
          }

          if (!v5)
          {
            goto LABEL_100;
          }

          v30 = bswap32(*v5) >> 16;
          if (v30 > 0x7CF)
          {
            goto LABEL_41;
          }

          *(v2 + 1200) = v30;
          WORD6(v40) = v30;
          LODWORD(v40) = 2;
          sub_10005FBC8(0xDuLL, 0, &v40, 16, v11);
        }
      }

      else
      {
        if (v7 <= 12)
        {
          if (v7 != 7)
          {
            if (v7 != 9)
            {
              if (v7 == 11)
              {
                if (v6 < 2)
                {
                  goto LABEL_41;
                }

                if (v5)
                {
                  if (*v5)
                  {
                    goto LABEL_41;
                  }

                  if (v5 != -1)
                  {
                    v13 = v5[1];
                    result = sub_1000D6C34(v8, 13);
                    v14 = result - 3;
                    if (result >= 3)
                    {
                      if (HIWORD(v14))
                      {
                        goto LABEL_101;
                      }

                      v15 = (result - 3);
                      if (result != 3)
                      {
                        if (v15 >= 0xA)
                        {
                          v16 = 0x9A8u / (result - 3);
                          v17 = (v16 + 1);
                          if (v17 > v13)
                          {
                            v18 = v15 * v13;
                            if (!WORD1(v18))
                            {
                              if (v18 > 0x9A8)
                              {
LABEL_107:
                                __break(0x5512u);
                                return result;
                              }

                              if (v18 <= ~&unk_1000EF310)
                              {
                                v19 = (2472 - v16 * v14);
                                if (v17 - 1 == v13)
                                {
                                  v20 = v19;
                                }

                                else
                                {
                                  v20 = result - 3;
                                }

                                v38[4] = (v20 + 3);
                                operator new[]();
                              }

                              goto LABEL_103;
                            }

                            goto LABEL_101;
                          }

                          goto LABEL_41;
                        }

LABEL_101:
                        __break(0x5507u);
LABEL_102:
                        __break(0x5500u);
                        goto LABEL_103;
                      }

LABEL_106:
                      __break(0x5503u);
                      goto LABEL_107;
                    }

LABEL_105:
                    __break(0x5515u);
                    goto LABEL_106;
                  }

                  goto LABEL_103;
                }

LABEL_100:
                __break(0x5516u);
                goto LABEL_101;
              }

LABEL_64:
              sub_1000DDEEC(0, 4, "%s:%d ERROR: CIapLingoPushUI::ProcessCmd Unknown CmdID: 0x%02X", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", 754, v7);
              goto LABEL_41;
            }

            if (!v6)
            {
              goto LABEL_41;
            }

            if (!v5)
            {
              goto LABEL_100;
            }

            if (*v5)
            {
              goto LABEL_41;
            }

            result = sub_1000D6C34(v8, 13);
            if (result < 3)
            {
              goto LABEL_105;
            }

            if ((result - 3) >> 16)
            {
              goto LABEL_101;
            }

            if (result == 3)
            {
              goto LABEL_106;
            }

            if ((result - 3) < 0xAu)
            {
              goto LABEL_101;
            }

            LOWORD(v39) = -22016;
            if (v38 == -45)
            {
LABEL_103:
              __break(0x5513u);
              goto LABEL_104;
            }

            BYTE1(v39) = 0x9A8u / (result - 3);
            v31 = v4;
            v32 = a2;
            v33 = v8;
            v34 = 10;
            v35 = 2;
LABEL_96:
            sub_1000B7DB4(v32, v33, 0, 13, v34, v31, &v39, v35);
            goto LABEL_41;
          }

          if (!result || (result & 7) != 0)
          {
            goto LABEL_100;
          }

          v36 = *(*result + 152);
LABEL_95:
          v39 = bswap32(v36());
          v31 = v4;
          v32 = a2;
          v33 = v8;
          v34 = 8;
          v35 = 4;
          goto LABEL_96;
        }

        if (v7 != 13)
        {
          if (v7 != 14)
          {
            if (v6 == 36)
            {
              if (!v5)
              {
                goto LABEL_100;
              }

              if (v5 >= 0xFFFFFFFFFFFFFFFELL)
              {
                goto LABEL_102;
              }

              v21 = *(v5 + 2);
              if (v5 >= 0xFFFFFFFFFFFFFFFALL)
              {
                goto LABEL_102;
              }

              v22 = *(v5 + 6);
              if (v5 >= 0xFFFFFFFFFFFFFFF6)
              {
                goto LABEL_102;
              }

              v23 = *(v5 + 10);
              if (v5 >= 0xFFFFFFFFFFFFFFF2)
              {
                goto LABEL_102;
              }

              v24 = *(v5 + 14);
              if (v5 >= 0xFFFFFFFFFFFFFFEELL)
              {
                goto LABEL_102;
              }

              v25 = *(v5 + 18);
              if (v5 >= 0xFFFFFFFFFFFFFFEALL)
              {
                goto LABEL_102;
              }

              v26 = *(v5 + 22);
              if (v5 >= 0xFFFFFFFFFFFFFFE6)
              {
                goto LABEL_102;
              }

              v27 = *(v5 + 26);
              if (v5 >= 0xFFFFFFFFFFFFFFE2)
              {
                goto LABEL_102;
              }

              v28 = *(v5 + 30);
              *(v2 + 1202) = bswap32(*v5) >> 16;
              *(v2 + 1206) = bswap32(v21);
              *(v2 + 1210) = bswap32(v22);
              *(v2 + 1214) = bswap32(v23);
              *(v2 + 1218) = bswap32(v24);
              *(v2 + 1222) = bswap32(v25);
              *(v2 + 1226) = bswap32(v26);
              *(v2 + 1230) = bswap32(v27);
              *(v2 + 1234) = bswap32(v28);
              *(v2 + 1248) = 1;
              sub_100095CBC(v2, v10);
              v12 = 0;
            }

            goto LABEL_64;
          }

          if (v6 != 1)
          {
            goto LABEL_41;
          }

          if (!v5 || !result || (result & 7) != 0)
          {
            goto LABEL_100;
          }

          if (*v5 > 1u)
          {
LABEL_104:
            __break(0x550Au);
            goto LABEL_105;
          }

          v36 = *(*result + 152);
          goto LABEL_95;
        }

        if (v6 != 1)
        {
          goto LABEL_41;
        }

        sub_100096758(v2, a2);
      }

      v12 = 0;
      goto LABEL_41;
    }
  }

LABEL_10:
  if (a2)
  {
    return sub_10009686C(v2, a2, 0);
  }

  return 89;
}

uint64_t sub_1000964B8(uint64_t result, unint64_t a2, int a3)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v10 = -1431655766;
  result = sub_100065198(result);
  if (!result)
  {
    goto LABEL_17;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  result = sub_1000945E0(result, *(v3 + 8));
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_17;
  }

  v7 = result;
  v8 = *(a2 + 68);
  result = sub_1000D5ED0(result, v6);
  v9 = a3;
  if (a3 == 1)
  {
    result = dword_10012C764;
LABEL_13:
    if (&v9 != -1)
    {
      v10 = bswap32(result);
      sub_1000B7DB4(a2, v7, 0, 13, 2, v8, &v9, 5);
      return 0;
    }

    goto LABEL_18;
  }

  if (!a3)
  {
    if (result && (result & 7) == 0)
    {
      result = (*(*result + 136))(result);
      goto LABEL_13;
    }

LABEL_17:
    __break(0x5516u);
LABEL_18:
    __break(0x5500u);
    return result;
  }

  return 4;
}

uint64_t sub_1000965CC(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0 || (v3 = *(a2 + 24), v4 = *(a2 + 128), (result = sub_1000D5ED0(result, a2)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v6 = (*(*result + 136))(result);
    result = 4;
    if (v3 && v4 == 4)
    {
      v7 = bswap32(*v3);
      if (v7 & ~v6) == 0 && (v7)
      {
        dword_10012C764 = v7;
        sub_100096924(v2, v5);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100096690(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  if (!*(result + 1240))
  {
    return result;
  }

  v5 = xmmword_1000EF2E0;
  if (a2 >= 8)
  {
LABEL_12:
    __break(0x550Au);
    return result;
  }

  v6 = a2;
  v7 = 1515870810;
  result = sub_10004AB10(result, a2);
  if (!result || (v3 = result, (result & 7) != 0) || (result = sub_1000CE018(*(v2 + 8)), (v4 = *(v2 + 1240)) == 0) || (v4 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  return (*(*v3 + 120))(v3, result, *v4, 24, &v5);
}

uint64_t sub_100096758(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0 && a2 && (a2 & 7) == 0 && (v2 = *(a2 + 24), v16 = -1431655766, v3 = *(result + 8), v15 = v3, v14 = 3, v2))
  {
    v4 = 0;
    v5 = 0;
    v6 = *v2;
    v7 = v6 >> 5;
    v8 = (8 * v6) & 0x700;
    v9 = 2 * (v6 & 0x1F);
    do
    {
      if (((((v7 & 7) << 8) | 0x1000) >> v4))
      {
        if (v5 == 0xFFFF)
        {
LABEL_22:
          __break(0x5507u);
          goto LABEL_23;
        }

        ++v5;
      }

      ++v4;
    }

    while (v4 != 32);
    v10 = 0;
    v11 = 0;
    do
    {
      if (((v9 | 0x40u) >> v10))
      {
        if (v11 == 0xFFFF)
        {
          goto LABEL_22;
        }

        ++v11;
      }

      ++v10;
    }

    while (v10 != 32);
    if (v5)
    {
      v12 = 4160;
    }

    else
    {
      v12 = 36928;
    }

    v13 = v9 | v8 | v12;
    if ((v11 & 1) == 0)
    {
      v13 |= 0x80u;
    }

    v16 = v13;
    sub_10005FBC8(0xDuLL, 0, &v14, 16, v3);
    return 0;
  }

  else
  {
LABEL_23:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10009686C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = a3;
    sub_100067278();
    v6 = *(v3 + 8);

    return sub_1000B6DB4(v6, a2, v4, 1u);
  }

  return result;
}

void sub_1000968D0(uint64_t result, uint64_t a2, int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000DDEEC(0, 4, "%s:%d CIapLingoPushUI::HandleCmdTimeout invalid timeout cmd ID: 0x%02X", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoPushUI.cpp", 843, a3);
  }
}

uint64_t sub_100096924(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  if (!*(result + 1240))
  {
    return result;
  }

  v8 = xmmword_1000EF2F0;
  v3 = *&vshl_u16((*&vdup_n_s16(dword_10012C764) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  v9 = vuzp1_s8(v3, v3).u32[0];
  v10 = (dword_10012C764 & 0x20) != 0;
  v11 = (dword_10012C764 & 0x40) != 0;
  v12 = (dword_10012C764 & 0x80) != 0;
  v13 = BYTE1(dword_10012C764) & 1;
  v4 = (dword_10012C764 & 0x400) != 0 ? 2 : 1;
  v5 = (dword_10012C764 & 0x200) != 0 ? 0 : v4;
  v15 = 1515870810;
  v14 = v5;
  result = sub_10004AB10(result, a2);
  if (!result || (v6 = result, (result & 7) != 0) || (result = sub_1000CE018(*(v2 + 8)), (v7 = *(v2 + 1240)) == 0) || (v7 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
    return result;
  }

  return (*(*v6 + 120))(v6, result, *v7, 32, &v8);
}

void sub_100096A40(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
    return;
  }

  std::string::basic_string(&v9, (a2 + 8));
  v4 = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
  v5 = v9.__r_.__value_.__r.__words[0];
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v9;
  }

  else
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  v7 = strcmp(v6, off_10012B480);
  v8 = v7;
  if ((v4 & 0x80000000) == 0)
  {
    if (v7)
    {
      return;
    }

LABEL_12:
    *(a1 + 1240) = a2;
    return;
  }

  operator delete(v5);
  if (!v8)
  {
    goto LABEL_12;
  }
}

void sub_100096AE8(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
    return;
  }

  std::string::basic_string(&v8, (a2 + 8));
  v3 = SHIBYTE(v8.__r_.__value_.__r.__words[2]);
  v4 = v8.__r_.__value_.__r.__words[0];
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  v6 = strcmp(v5, off_10012B480);
  v7 = v6;
  if ((v3 & 0x80000000) == 0)
  {
    if (v6)
    {
      return;
    }

LABEL_12:
    *(a1 + 1240) = 0;
    return;
  }

  operator delete(v4);
  if (!v7)
  {
    goto LABEL_12;
  }
}

uint64_t sub_100096B84(uint64_t result, uint64_t a2)
{
  if (!result || a2 != 9)
  {
    __break(0x5518u);
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  v2 = result;
  result = sub_1000D5ED0(result, a2);
  if (!result)
  {
    goto LABEL_14;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_14;
  }

  v3 = (*(*result + 88))(result);
  v4 = v3;
  result = sub_1000D5ED0(v3, v5);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  result = (*(*result + 96))(result);
  *v2 = 13;
  if (v2 == -1)
  {
LABEL_15:
    __break(0x5500u);
    return result;
  }

  v6 = 0x100000000000000;
  if (!v4)
  {
    v6 = 0;
  }

  if (result)
  {
    v6 |= 0x200000000000000uLL;
  }

  *(v2 + 1) = v6 | 0x3800000000000000;
  return 0;
}

uint64_t sub_100096C5C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100096C70(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (*(result + 1240) == a2)
  {
    sub_100096924(result, a2);

    return sub_100095CBC(v2, v3);
  }

  return result;
}

uint64_t sub_100096CD4(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  if (result && (result & 7) == 0 && a2 && (*a2 = 1, a3))
  {
    *a3 = 0;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

void sub_100096CFC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_50;
  }

  sub_100064F7C(result, a2, 4);
  *result = off_100116400;
  *(result + 1200) = 0u;
  *(result + 1216) = 1;
  *(result + 1220) = 256;
  *(result + 1288) = -1;
  *(result + 1296) = 0x200000000;
  *(result + 1304) = -1;
  *(result + 1312) = -1;
  *(result + 1320) = -1;
  *(result + 1328) = -1;
  *(result + 1332) = 0;
  *(result + 1334) = 0;
  *(result + 1336) = 0;
  *(result + 1343) = 0;
  *(result + 1352) = 0;
  *(result + 1380) = 0;
  *(result + 1384) = 0;
  *(result + 1388) = 0;
  *(result + 1392) = 0;
  *(result + 1395) = 0;
  *(result + 1398) = 0;
  *(result + 1360) = 0u;
  *(result + 1416) = 0u;
  v4 = pthread_mutex_init((result + 1224), 0);
  if (dword_10012B490 == -1)
  {
    v6 = sub_10002BB1C(v4, v5);
    if (!v6 || (v6 & 7) != 0)
    {
      goto LABEL_50;
    }

    v4 = (*(*v6 + 360))(v6, "SetDurationToZeroOnInvalid");
    dword_10012B490 = v4;
  }

  if (dword_10012B494 == -1)
  {
    v7 = sub_10002BB1C(v4, v5);
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_50;
    }

    v4 = (*(*v7 + 360))(v7, "SetDurationToLargeOnInvalid");
    dword_10012B494 = v4;
  }

  if (dword_10012B498 == -1)
  {
    v8 = sub_10002BB1C(v4, v5);
    if (!v8 || (v8 & 7) != 0)
    {
      goto LABEL_50;
    }

    v4 = (*(*v8 + 360))(v8, "SetDurationTo5MinOnInvalid");
    dword_10012B498 = v4;
  }

  if (dword_10012B49C == -1)
  {
    v9 = sub_10002BB1C(v4, v5);
    if (!v9 || (v9 & 7) != 0)
    {
      goto LABEL_50;
    }

    v4 = (*(*v9 + 360))(v9, "SetDurationTo24HrsOnInvalid");
    dword_10012B49C = v4;
  }

  if (dword_10012B4A0 == -1)
  {
    v10 = sub_10002BB1C(v4, v5);
    if (!v10 || (v10 & 7) != 0)
    {
      goto LABEL_50;
    }

    v4 = (*(*v10 + 360))(v10, "SetDurationTo1HrOnInvalid");
    dword_10012B4A0 = v4;
  }

  if (dword_10012B4A4 == -1)
  {
    v11 = sub_10002BB1C(v4, v5);
    if (!v11 || (v11 & 7) != 0)
    {
      goto LABEL_50;
    }

    v4 = (*(*v11 + 360))(v11, off_10012B4A8);
    dword_10012B4A4 = v4;
  }

  v12 = sub_1000388B8(v4, v5);
  *(result + 1200) = v12;
  if (!v12)
  {
LABEL_49:
    sub_1000E1D34();
  }

  *(result + 1404) = 0xFFFFFFFFLL;
  *(result + 1412) = 0;
  v14 = sub_100025E90(v12, v13);
  *(result + 1192) = v14;
  if (!v14)
  {
    goto LABEL_48;
  }

  sub_1000651C8(a2, v15);
  if (!v16 || (v16 & 7) != 0)
  {
    goto LABEL_50;
  }

  v17 = sub_10006274C(v16, 495, a2, 4);
  *(result + 1376) = v17;
  if (v17 == -1)
  {
LABEL_48:
    __break(0x5518u);
    goto LABEL_49;
  }

  sub_1000651C8(a2, v18);
  if (!v19 || (v19 & 7) != 0 || (sub_1000629DC(v19, *(result + 1376)), (v20 = *(result + 1192)) == 0) || (v20 & 7) != 0)
  {
LABEL_50:
    __break(0x5516u);
    goto LABEL_51;
  }

  v21 = (*(*v20 + 112))(v20);
  if (v21 <= 7)
  {
    if ((v21 & 6) == 2)
    {
      *(result + 1392) = 1;
    }

    v22 = sub_100065198(v21);
    if (v22)
    {
      if ((v22 & 7) == 0)
      {
        sub_1000929D4(v22, 4, 365, *(result + 8));
        v23 = *(result + 1200);
        if (v23)
        {
          if ((v23 & 7) == 0)
          {
            (*(*v23 + 16))(v23, result);
            v24 = *(result + 8);
            if (v24)
            {
              if ((v24 & 7) == 0)
              {
                sub_10005B7F8(v24, 4u, 0);
                v25 = *(result + 8);
                if (v25)
                {
                  if ((v25 & 7) == 0)
                  {
                    sub_10005B7AC(v25, 4u, 0);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_50;
  }

LABEL_51:
  __break(0x550Au);
}

void sub_100097160(uint64_t result)
{
  if (result && (result & 7) == 0 && ((*result = off_100116400, (v2 = *(result + 1200)) != 0) ? (v3 = (v2 & 7) == 0) : (v3 = 0), v3 && ((*(*v2 + 24))(v2, result), sub_1000651C8(*(result + 8), v4), v5) && (v5 & 7) == 0 && (v6 = sub_1000629DC(v5, *(result + 1376)), *(result + 1384) = 0, *(result + 1388) = 0, (v7 = sub_100065198(v6)) != 0) && (v7 & 7) == 0 && (sub_1000929D4(v7, 4, 0, *(result + 8)), sub_100097294(result), sub_100097394(*(result + 8), 0), sub_1000651C8(*(result + 8), v8), v9) && (v9 & 7) == 0))
  {
    sub_100060C50(v9, *(result + 1376));
    *(result + 1376) = -1;
    *(result + 1192) = 0;
    qword_10012C768 = 0;
    pthread_mutex_destroy((result + 1224));
    sub_1000A9050((result + 1416));

    sub_10006522C(result, v10);
  }

  else
  {
    __break(0x5516u);
  }
}

uint64_t sub_100097294(uint64_t result)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  if (*(result + 1395))
  {
    result = *(result + 1200);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_16;
    }

    result = (*(*result + 160))(result, *(v1 + 1396));
    *(v1 + 1395) = 0;
  }

  if (*(v1 + 1398))
  {
    result = *(v1 + 1200);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_16;
    }

    result = (*(*result + 128))(result, *(v1 + 1400));
    *(v1 + 1398) = 0;
  }

  if (!*(v1 + 1393))
  {
    return result;
  }

  result = *(v1 + 1200);
  if (!result || (result & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
    return result;
  }

  result = (*(*result + 192))(result, *(v1 + 1394));
  *(v1 + 1393) = 0;
  return result;
}

void sub_100097394(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_17;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v3 = a2;
  v4 = sub_10005BB24(result, 4u);
  v5 = sub_100065198(v4);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_17;
  }

  v6 = sub_100092790(v5, result, 4u);
  if (v6)
  {
    if ((v6 & 7) != 0)
    {
      goto LABEL_17;
    }

    v7 = qword_10012C768;
    if (!qword_10012C768)
    {
      qword_10012C768 = v6;
      v7 = v6;
    }
  }

  else
  {
    v7 = qword_10012C768;
    if (!qword_10012C768)
    {
      sub_1000DDEEC(0, 4, "%s:%d No RemoteUI Object, cannot get RemoteUI mode!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 894);
      goto LABEL_14;
    }
  }

  if ((v7 & 7) == 0)
  {
    pthread_mutex_lock((v7 + 1224));
    sub_100098028(result, v3);
    if (qword_10012C768)
    {
      if ((qword_10012C768 & 7) == 0)
      {
        pthread_mutex_unlock((qword_10012C768 + 1224));
LABEL_14:
        sub_10005BB6C(result, 4u);
        return;
      }
    }
  }

LABEL_17:
  __break(0x5516u);
}

void sub_1000974A4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100097160(result);
  }
}

uint64_t sub_1000974B8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100097160(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100097500(uint64_t result)
{
  if (!result)
  {
    __break(0x5518u);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v1 = result;
  result = qword_10012C768;
  if (!qword_10012C768)
  {
    operator new();
  }

  if ((qword_10012C768 & 7) != 0)
  {
    goto LABEL_9;
  }

  if (*(qword_10012C768 + 8) != v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100097578(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v3 = result;
  *result = 0;
  result = sub_100065198(result);
  if (!result)
  {
    goto LABEL_18;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = (*(*result + 152))(result, a2);
  v5 = v4;
  result = sub_100065198(v4);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_18;
  }

  result = sub_100092790(result, a2, 4u);
  if (!result)
  {
    if ((v5 & 0x10) != 0)
    {
      sub_1000DDEEC(0, 4, "No RemoteUI Object but device identified for RemoteUI, cannot handle GetRemoteUIMode!\n");
    }

    return 2;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  if (result != qword_10012C768)
  {
    if ((v5 & 0x10) != 0)
    {
      sub_1000DDEEC(0, 4, "RemoteUI Object does not match but device identified for RemoteUI, cannot handle GetRemoteUIMode!\n");
    }

    return 2;
  }

  result = sub_100025E90(result, v6);
  if (!result)
  {
    sub_1000DDEEC(0, 4, "%s:%d No ExtendedModeMgr handle, cannot get ExtendedMode state!\n");
    return 2;
  }

  if ((result & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
  }

  else
  {
    v7 = (*(*result + 96))(result);
    result = 0;
    *v3 = v7;
  }

  return result;
}

void sub_1000976B8(uint64_t result)
{
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_72;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_73;
  }

  v2 = sub_10005BB24(result, 4u);
  v3 = sub_100065198(v2);
  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_73;
  }

  v4 = sub_100092790(v3, result, 4u);
  v5 = v4;
  if (!v4)
  {
    v6 = qword_10012C768;
    if (!qword_10012C768)
    {
      sub_1000DDEEC(0, 4, "%s:%d No RemoteUI Object, cannot handle EnterRemoteUIMode!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 680);
      v6 = qword_10012C768;
    }

LABEL_11:
    if (v6 != v5)
    {
      sub_1000DDEEC(0, 4, "%s:%d RemoteUI Object does not match, cannot handle EnterRemoteUIMode! %hhx != %hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 685, v6, v5);
      v6 = qword_10012C768;
    }

    v5 = v6;
    if (!v6)
    {
      goto LABEL_70;
    }

    goto LABEL_14;
  }

  if ((v4 & 7) != 0)
  {
    goto LABEL_73;
  }

  v6 = qword_10012C768;
  if (qword_10012C768)
  {
    goto LABEL_11;
  }

  qword_10012C768 = v4;
LABEL_14:
  if ((v5 & 7) != 0)
  {
    goto LABEL_73;
  }

  if (*(v5 + 8) != result)
  {
    goto LABEL_70;
  }

  v7 = pthread_mutex_lock((v5 + 1224));
  v8 = qword_10012C768;
  if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
  {
    goto LABEL_73;
  }

  if (!*(qword_10012C768 + 1192))
  {
LABEL_67:
    if (qword_10012C768 && (qword_10012C768 & 7) == 0)
    {
      pthread_mutex_unlock((qword_10012C768 + 1224));
LABEL_70:
      sub_10005BB6C(result, 4u);
      return;
    }

    goto LABEL_73;
  }

  if (!*(qword_10012C768 + 1208))
  {
    v9 = sub_100065198(v7);
    if (!v9)
    {
      goto LABEL_73;
    }

    if ((v9 & 7) != 0)
    {
      goto LABEL_73;
    }

    v10 = sub_1000928E0(v9, 4u);
    v8 = qword_10012C768;
    if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
    {
      goto LABEL_73;
    }

    *(qword_10012C768 + 1208) = v10;
    if (!v10)
    {
LABEL_72:
      sub_1000E1D34();
    }
  }

  v11 = *(v8 + 1192);
  if (!v11 || (v11 & 7) != 0)
  {
    goto LABEL_73;
  }

  if ((*(*v11 + 96))(v11))
  {
    goto LABEL_67;
  }

  if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
  {
    goto LABEL_73;
  }

  *(qword_10012C768 + 1380) = 0;
  sub_1000651C8(result, v12);
  if (v14)
  {
    sub_1000651C8(result, v13);
    if (!v15)
    {
      goto LABEL_73;
    }

    if ((v15 & 7) != 0)
    {
      goto LABEL_73;
    }

    if (!qword_10012C768)
    {
      goto LABEL_73;
    }

    if ((qword_10012C768 & 7) != 0)
    {
      goto LABEL_73;
    }

    sub_1000629DC(v15, *(qword_10012C768 + 1376));
    if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
    {
      goto LABEL_73;
    }

    *(qword_10012C768 + 1384) = 0;
  }

  v16 = sub_100067278();
  if (qword_10012C768)
  {
    if ((qword_10012C768 & 7) == 0)
    {
      *(qword_10012C768 + 1388) = v16;
      sub_10005B7F8(result, 4u, 0);
      sub_10005B7AC(result, 4u, 0);
      if (qword_10012C768)
      {
        if ((qword_10012C768 & 7) == 0)
        {
          v17 = sub_100097AB8(qword_10012C768 + 1416, 0);
          if (qword_10012C768)
          {
            if ((qword_10012C768 & 7) == 0)
            {
              *(qword_10012C768 + 1220) = 1;
              v19 = sub_1000388B8(v17, v18);
              if (v19)
              {
                if ((v19 & 7) == 0)
                {
                  (*(*v19 + 632))(v19, 1);
                  if (qword_10012C768)
                  {
                    if ((qword_10012C768 & 7) == 0)
                    {
                      v20 = *(qword_10012C768 + 1192);
                      if (v20)
                      {
                        if ((v20 & 7) == 0)
                        {
                          (*(*v20 + 88))(v20, 1);
                          sub_100097B2C(1, result, 1);
                          if (qword_10012C768)
                          {
                            if ((qword_10012C768 & 7) == 0)
                            {
                              *(qword_10012C768 + 1221) = 1;
                              v23 = sub_100046A8C(v21, v22);
                              if (v23)
                              {
                                if ((v23 & 7) == 0)
                                {
                                  v24 = (*(*v23 + 80))(v23);
                                  if (v24)
                                  {
                                    v25 = sub_100065198(v24);
                                    if (!v25 || (v25 & 7) != 0 || !qword_10012C768 || (qword_10012C768 & 7) != 0)
                                    {
                                      goto LABEL_73;
                                    }

                                    if (sub_1000933B0(v25, *(qword_10012C768 + 1208)) != 56)
                                    {
                                      v26 = sub_10005BC54(result);
                                      if (!v26 || (v26 & 7) != 0)
                                      {
                                        goto LABEL_73;
                                      }

                                      if (sub_1000BE5C0(v26 + 16))
                                      {
                                        v27 = sub_10005BC54(result);
                                        if (!v27 || (v27 & 7) != 0)
                                        {
                                          goto LABEL_73;
                                        }

                                        sub_1000BF678(v27 + 16, v28);
                                      }
                                    }
                                  }

                                  goto LABEL_67;
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
            }
          }
        }
      }
    }
  }

LABEL_73:
  __break(0x5516u);
}

uint64_t sub_100097AB8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      result = *result;
      if (*v2 == a2 || result == 0)
      {
        goto LABEL_9;
      }

      if ((result & 7) == 0)
      {
        result = (*(*result + 8))(result);
LABEL_9:
        *v2 = a2;
        return result;
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_100097B2C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = sub_1000388B8(a1, a2);
  v8 = v6;
  __p = 0;
  v35 = 0;
  v36 = 0;
  if (v5)
  {
    v9 = sub_10004B1AC(v6, v7);
    if (!v9 || (v9 & 7) != 0)
    {
      goto LABEL_64;
    }

    if ((*(*v9 + 304))(v9, &__p))
    {
      v10 = byte_10012BE7F >= 0 ? &qword_10012BE68 : qword_10012BE68;
      v11 = byte_10012BE7F >= 0 ? byte_10012BE7F : unk_10012BE70;
      v12 = v36 >= 0 ? HIBYTE(v36) : v35;
      v13 = v36 >= 0 ? &__p : __p;
      v14 = v11 >= v12 ? v12 : v11;
      v15 = memcmp(v13, v10, v14);
      if (!v15 && v11 == v12)
      {
        v18 = sub_1000388B8(v15, v16);
        if (!v18 || (v18 & 7) != 0)
        {
          goto LABEL_64;
        }

        if ((*(*v18 + 416))(v18))
        {
          v19 = sub_1000653EC(4, a2);
          if (v19)
          {
            v20 = v19;
            if ((v19 & 7) == 0)
            {
              sub_100069050(v19, 7, 1);
              sub_100069050(v20, 7, 0);
              goto LABEL_45;
            }
          }

LABEL_64:
          __break(0x5516u);
          return;
        }
      }
    }
  }

  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_64;
  }

  if ((*(*v8 + 456))(v8))
  {
    (*(*v8 + 336))(v8);
  }

  v21 = (*(*v8 + 384))(v8);
  v33 = v21;
  if (!v21)
  {
    goto LABEL_42;
  }

  v22 = v21;
  if ((v21 & 7) != 0)
  {
    goto LABEL_64;
  }

  if (!(*(*v21 + 16))(v21))
  {
LABEL_42:
    v30 = 9333;
    v23 = "%s:%d no trackAccessor! ignore doing pause";
    goto LABEL_43;
  }

  if ((*(*v22 + 288))(v22) && (*(*v8 + 528))(v8) == 1)
  {
    if (((*(*v8 + 464))(v8) & 1) == 0)
    {
      (*(*v8 + 312))(v8);
    }

    goto LABEL_44;
  }

  if (!(*(*v8 + 424))(v8))
  {
    sub_1000DDEEC(0, 4, "%s:%d not playing! ignore doing pause");
    goto LABEL_44;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_64;
  }

  v24 = sub_100018DC0(a2);
  v25 = v24;
  if (!a3)
  {
    if (!v24 || (v24 & 7) != 0)
    {
      goto LABEL_64;
    }

    if ((*(*v24 + 208))(v24) != 2)
    {
      v26 = 1;
      if (!v25)
      {
        goto LABEL_64;
      }

      goto LABEL_60;
    }

    v31 = 0;
    v32 = (*(*v25 + 208))(v25);
    v30 = 9321;
    v23 = "%s:%d ignore doing Pause for fromCommand=%d portType=%d";
LABEL_43:
    sub_1000DDEEC(0, 4, v23, "HandleMediaOnRemoteUIAttachedOrRemoved", v30, v31, v32, v33);
    goto LABEL_44;
  }

  v26 = (v24 & 7) == 0;
  if (!v24)
  {
    goto LABEL_64;
  }

LABEL_60:
  if (!v26)
  {
    goto LABEL_64;
  }

  v27 = (*(*v25 + 208))(v25);
  sub_1000DDEEC(0, 4, "%s:%d Pause for fromCommand=%d portType=%d", "HandleMediaOnRemoteUIAttachedOrRemoved", 9312, a3, v27);
  v28 = sub_1000653EC(4, a2);
  if (!v28)
  {
    goto LABEL_64;
  }

  v29 = v28;
  if ((v28 & 7) != 0)
  {
    goto LABEL_64;
  }

  sub_100069050(v28, 9, 1);
  sub_100069050(v29, 9, 0);
LABEL_44:
  sub_1000698F8(&v33);
LABEL_45:
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p);
  }
}

void sub_100098028(uint64_t result, int a2)
{
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_57;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_57;
  }

  v4 = sub_10005BB24(result, 4u);
  v5 = sub_100065198(v4);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_57;
  }

  v6 = sub_100092790(v5, result, 4u);
  v7 = v6;
  if (v6)
  {
    if ((v6 & 7) != 0)
    {
      goto LABEL_57;
    }

    v8 = qword_10012C768;
    if (!qword_10012C768)
    {
      qword_10012C768 = v6;
      v8 = v6;
    }

LABEL_11:
    if ((v8 & 7) != 0)
    {
      goto LABEL_57;
    }

    if (*(v8 + 8) == result)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = qword_10012C768;
  if (qword_10012C768)
  {
    goto LABEL_11;
  }

  sub_1000DDEEC(0, 4, "%s:%d No RemoteUI Object, cannot handle EnterRemoteUIMode!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 790);
  v8 = qword_10012C768;
  if (qword_10012C768)
  {
    goto LABEL_11;
  }

LABEL_13:
  sub_1000DDEEC(0, 4, "%s:%d RemoteUI Object does not match, cannot handle EnterRemoteUIMode! %hhx != %hhx\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", 795, v8, v7);
  v8 = qword_10012C768;
  if (!qword_10012C768)
  {
    goto LABEL_16;
  }

LABEL_14:
  if ((v8 & 7) == 0)
  {
    if (*(v8 + 8) != result)
    {
      goto LABEL_16;
    }

    v9 = *(v8 + 1192);
    if (!v9)
    {
      goto LABEL_16;
    }

    if ((v9 & 7) == 0)
    {
      if (!(*(*v9 + 96))(v9))
      {
        goto LABEL_16;
      }

      sub_1000651C8(result, v10);
      if (v12)
      {
        sub_1000651C8(result, v11);
        if (!v13)
        {
          goto LABEL_57;
        }

        if ((v13 & 7) != 0)
        {
          goto LABEL_57;
        }

        if (!qword_10012C768)
        {
          goto LABEL_57;
        }

        if ((qword_10012C768 & 7) != 0)
        {
          goto LABEL_57;
        }

        sub_1000629DC(v13, *(qword_10012C768 + 1376));
        v14 = qword_10012C768;
        if (!qword_10012C768)
        {
          goto LABEL_57;
        }

        if ((qword_10012C768 & 7) != 0)
        {
          goto LABEL_57;
        }

        *(qword_10012C768 + 1384) = 0;
        if (!v14)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v14 = qword_10012C768;
        if (!qword_10012C768)
        {
          goto LABEL_57;
        }
      }

      if ((v14 & 7) != 0)
      {
        goto LABEL_57;
      }

      *(v14 + 1380) = 0;
      *(v14 + 1388) = 0;
      sub_10005B7F8(result, 4u, 0);
      sub_10005B7AC(result, 4u, 0);
      if (!qword_10012C768)
      {
        goto LABEL_57;
      }

      if ((qword_10012C768 & 7) != 0)
      {
        goto LABEL_57;
      }

      v15 = sub_100097AB8(qword_10012C768 + 1416, 0);
      if (!qword_10012C768)
      {
        goto LABEL_57;
      }

      if ((qword_10012C768 & 7) != 0)
      {
        goto LABEL_57;
      }

      *(qword_10012C768 + 1220) = 0;
      v17 = sub_1000388B8(v15, v16);
      if (!v17)
      {
        goto LABEL_57;
      }

      if ((v17 & 7) != 0)
      {
        goto LABEL_57;
      }

      (*(*v17 + 632))(v17, 0);
      if (!qword_10012C768)
      {
        goto LABEL_57;
      }

      if ((qword_10012C768 & 7) != 0)
      {
        goto LABEL_57;
      }

      v18 = *(qword_10012C768 + 1192);
      if (!v18)
      {
        goto LABEL_57;
      }

      if ((v18 & 7) != 0)
      {
        goto LABEL_57;
      }

      (*(*v18 + 88))(v18, 0);
      sub_100097B2C(0, result, a2);
      v21 = sub_100046A8C(v19, v20);
      if (!v21 || (v21 & 7) != 0)
      {
        goto LABEL_57;
      }

      v22 = (*(*v21 + 80))(v21);
      if (v22)
      {
        v24 = sub_10005BC54(result);
        if (!v24 || (v24 & 7) != 0)
        {
          goto LABEL_57;
        }

        v22 = sub_1000BFB94(v24 + 16);
      }

      if (qword_10012C768 && (qword_10012C768 & 7) == 0)
      {
        v25 = *(qword_10012C768 + 1424);
        if (v25)
        {
          if ((v25 & 7) == 0)
          {
            v27 = v25 + 8;
            sub_100007F60(&v27);
            operator delete();
          }

          goto LABEL_57;
        }

        v26 = sub_10004B1AC(v22, v23);
        if (!v26 || (v26 & 7) != 0)
        {
          goto LABEL_57;
        }

        (*(*v26 + 600))(v26, 0, 0);
LABEL_16:
        sub_10005BB6C(result, 4u);
        return;
      }
    }
  }

LABEL_57:
  __break(0x5516u);
}

uint64_t sub_1000983E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_114;
  }

  v5 = a3;
  if (a2 <= 31)
  {
    if (a2 != 1)
    {
      if (a2 != 4)
      {
        if (a2 != 8)
        {
          goto LABEL_117;
        }

        if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
        {
          goto LABEL_114;
        }

        pthread_mutex_lock((qword_10012C768 + 1224));
        *(a1 + 1380) = 0;
        sub_1000651C8(*(a1 + 8), v6);
        if (!v8)
        {
          goto LABEL_13;
        }

        sub_1000651C8(*(a1 + 8), v7);
        if (v9 && (v9 & 7) == 0)
        {
          sub_1000629DC(v9, *(a1 + 1376));
          *(a1 + 1384) = 0;
LABEL_13:
          *(a1 + 1388) = 0;
          v10 = *(a1 + 8);
          if (v10)
          {
            if ((v10 & 7) == 0)
            {
              sub_10005B7F8(v10, 4u, 0);
              v11 = *(a1 + 8);
              if (v11)
              {
                if ((v11 & 7) == 0)
                {
                  sub_10005B7AC(v11, 4u, 0);
                  *(a1 + 1412) = 0;
                  sub_100097294(a1);
                  sub_100098028(*(a1 + 8), 0);
                  *(a1 + 1208) = 0;
                  v13 = qword_10012C768;
                  if (qword_10012C768)
                  {
                    if ((qword_10012C768 & 7) == 0)
                    {
                      v14 = v12;
LABEL_20:
                      pthread_mutex_unlock((v13 + 1224));
                      return v14;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_114;
        }

        goto LABEL_114;
      }

      if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
      {
        goto LABEL_114;
      }

      pthread_mutex_lock((qword_10012C768 + 1224));
      *(a1 + 1380) = 0;
      sub_1000651C8(*(a1 + 8), v23);
      if (v25)
      {
        sub_1000651C8(*(a1 + 8), v24);
        if (!v26 || (v26 & 7) != 0)
        {
          goto LABEL_114;
        }

        sub_1000629DC(v26, *(a1 + 1376));
        *(a1 + 1384) = 0;
      }

      v27 = *(a1 + 8);
      if (v27)
      {
        if ((v27 & 7) == 0)
        {
          sub_10005B7F8(v27, 4u, 0);
          v28 = *(a1 + 8);
          if (v28)
          {
            if ((v28 & 7) == 0)
            {
              sub_10005B7AC(v28, 4u, 0);
              *(a1 + 1412) = 0;
              *(a1 + 1216) = 1;
              *(a1 + 1208) = a4;
              if (qword_10012C768)
              {
                if ((qword_10012C768 & 7) == 0)
                {
                  v29 = pthread_mutex_unlock((qword_10012C768 + 1224));
                  v31 = sub_100048620(v29, v30);
                  if (v31)
                  {
                    if ((v31 & 7) == 0)
                    {
                      (*(*v31 + 160))(v31, 3600000);
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_114:
      __break(0x5516u);
      goto LABEL_115;
    }

    if ((a3 - 7) >= 2)
    {
      if (a3 == 6)
      {
        if (qword_10012C768)
        {
          if ((qword_10012C768 & 7) == 0)
          {
            pthread_mutex_lock((qword_10012C768 + 1224));
            v55 = *(a1 + 1192);
            if (v55)
            {
              if ((v55 & 7) == 0)
              {
                if ((*(*v55 + 96))(v55))
                {
                  v14 = sub_1000989C8(a1, 0);
                  *(a1 + 1388) = sub_100067278();
                }

                else
                {
                  v14 = 0;
                }

                v13 = qword_10012C768;
                if (qword_10012C768)
                {
                  if ((qword_10012C768 & 7) == 0)
                  {
                    goto LABEL_20;
                  }
                }
              }
            }
          }
        }

        goto LABEL_114;
      }

      if (a3 != 5)
      {
        return 0;
      }
    }

    if (!qword_10012C768)
    {
      goto LABEL_114;
    }

    if ((qword_10012C768 & 7) != 0)
    {
      goto LABEL_114;
    }

    pthread_mutex_lock((qword_10012C768 + 1224));
    v49 = *(a1 + 1192);
    if (!v49 || (v49 & 7) != 0)
    {
      goto LABEL_114;
    }

    if ((*(*v49 + 96))(v49))
    {
      sub_1000651C8(*(a1 + 8), v50);
      if (v52)
      {
        sub_1000651C8(*(a1 + 8), v51);
        if (!v53 || (v53 & 7) != 0)
        {
          goto LABEL_114;
        }

        sub_1000629DC(v53, *(a1 + 1376));
        *(a1 + 1384) = 0;
      }

      *(a1 + 1388) = 0;
    }

    goto LABEL_97;
  }

  if (a2 != 32)
  {
    if (a2 != 64)
    {
      if (a2 != 256)
      {
        goto LABEL_117;
      }

      if (a3 <= 3)
      {
        if (a3 >= 2)
        {
LABEL_115:
          __break(0x5518u);
          goto LABEL_116;
        }

        if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
        {
          goto LABEL_114;
        }

        v15 = pthread_mutex_lock((qword_10012C768 + 1224));
        if (v5)
        {
          goto LABEL_97;
        }

        v17 = *(a1 + 1220);
        if (v17 <= 1)
        {
          if (v17)
          {
            v18 = sub_100048620(v15, v16);
            if (!v18)
            {
              goto LABEL_114;
            }

            if ((v18 & 7) != 0)
            {
              goto LABEL_114;
            }

            v19 = (*(*v18 + 160))(v18, 3600000);
            v21 = sub_100048620(v19, v20);
            if (!v21 || (v21 & 7) != 0)
            {
              goto LABEL_114;
            }

            (*(*v21 + 168))(v21);
          }

LABEL_97:
          v48 = qword_10012C768;
          if (!qword_10012C768)
          {
            goto LABEL_114;
          }

          goto LABEL_98;
        }
      }

LABEL_116:
      __break(0x550Au);
LABEL_117:
      sub_1000E24C4();
    }

    if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
    {
      goto LABEL_114;
    }

    v32 = pthread_mutex_lock((qword_10012C768 + 1224));
    if (*(a1 + 1208))
    {
      v33 = sub_100065198(v32);
      if (!v33 || (v33 & 7) != 0)
      {
        goto LABEL_114;
      }

      v34 = sub_100058EBC(v33, *(a1 + 1208));
      if ((v34 + 8) >= 0x10)
      {
        goto LABEL_116;
      }

      v36 = v34;
      if (v34 >= 0xFFFFFFFE)
      {
        v37 = sub_100065198(v34);
        if (!v37 || (v37 & 7) != 0)
        {
          goto LABEL_114;
        }

        v34 = sub_100092F68(v37, *(a1 + 1208));
        if ((v34 & 3) != 0)
        {
          sub_100098028(*(a1 + 8), 0);
        }
      }

      v38 = sub_100046A8C(v34, v35);
      if (!v38 || (v38 & 7) != 0)
      {
        goto LABEL_114;
      }

      v39 = (*(*v38 + 80))(v38);
      if (v36 >= 4 && v39)
      {
        v40 = *(a1 + 1192);
        if (!v40 || (v40 & 7) != 0)
        {
          goto LABEL_114;
        }

        v41 = (*(*v40 + 96))(v40);
        if (v41)
        {
          v42 = sub_100065198(v41);
          if (!v42 || (v42 & 7) != 0 || !qword_10012C768 || (qword_10012C768 & 7) != 0)
          {
            goto LABEL_114;
          }

          if (sub_1000933B0(v42, *(qword_10012C768 + 1208)) != 56)
          {
            v43 = *(a1 + 8);
            if (!v43)
            {
              goto LABEL_114;
            }

            if ((v43 & 7) != 0)
            {
              goto LABEL_114;
            }

            v44 = sub_10005BC54(v43);
            if (!v44)
            {
              goto LABEL_114;
            }

            v45 = v44;
            if ((v44 & 7) != 0)
            {
              goto LABEL_114;
            }

            v46 = sub_1000BE5F8(v44 + 16);
            if (sub_1000BE5C0(v45 + 16))
            {
              if (v46 > 3)
              {
                goto LABEL_116;
              }

              if (!v46)
              {
                sub_1000BF678(v45 + 16, v47);
              }
            }
          }
        }
      }
    }

    v48 = qword_10012C768;
    if (!qword_10012C768)
    {
      goto LABEL_114;
    }

LABEL_98:
    if ((v48 & 7) != 0)
    {
      goto LABEL_114;
    }

    pthread_mutex_unlock((v48 + 1224));
    return 0;
  }

  return sub_100099DA0(a1, 1);
}

uint64_t sub_1000989C8(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_220;
  }

  v3 = a2;
  sub_1000651C8(*(a1 + 8), a2);
  if (v5)
  {
    sub_1000651C8(*(a1 + 8), v4);
    if (!v6 || (v6 & 7) != 0)
    {
      goto LABEL_220;
    }

    sub_1000629DC(v6, *(a1 + 1376));
    *(a1 + 1384) = 0;
  }

  v7 = &unk_10012C000;
  if (!qword_10012C768 || (qword_10012C768 & 7) != 0)
  {
    goto LABEL_220;
  }

  v8 = *(qword_10012C768 + 1380);
  pthread_mutex_lock(&stru_10012B4B8);
  v9 = *(a1 + 1344);
  *(a1 + 1344) = 0;
  v10 = v8 & ~dword_10012B4B0 | v9;
  pthread_mutex_unlock(&stru_10012B4B8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(a1 + 1296);
  if (v11 >= 8 || (v89 = (a1 + 1300), v83 = *(a1 + 1300), v83 > 3) || (v85 = *(a1 + 1332), v85 > 1) || (v80 = *(a1 + 1333), v80 > 1) || (v82 = *(a1 + 1334), v82 > 1) || (v84 = *(a1 + 1288), v12 = (a1 + 1296), v88 = *(a1 + 1308), v86 = *(a1 + 1320), v78 = *(a1 + 1324), v79 = *(a1 + 1336), v76 = *(a1 + 1312), v77 = *(a1 + 1328), v81 = *(a1 + 1340), v13 = *(a1 + 1348), v14 = *(a1 + 1349), result = sub_10006547C(v89, a1 + 1296), result > 0x1F))
  {
LABEL_221:
    __break(0x550Au);
  }

  if (result)
  {
    goto LABEL_219;
  }

  if (*v12 > 7)
  {
    goto LABEL_221;
  }

  v87 = v9 & 0x104;
  if (!*v12)
  {
    *(a1 + 1288) = -1;
    *v89 = xmmword_1000EFCE0;
    *(a1 + 1320) = -1;
    *(a1 + 1328) = -1;
    *(a1 + 1332) = 0;
    *(a1 + 1334) = 0;
    *(a1 + 1350) = 0;
    *(a1 + 1336) = 0;
    goto LABEL_58;
  }

  if ((v10 & 0xDE4) != 0)
  {
    v17 = *(a1 + 1200);
    if (!v17 || (v17 & 7) != 0)
    {
      goto LABEL_220;
    }

    result = (*(*v17 + 376))(v17);
    *(a1 + 1304) = result;
    v10 |= 0x100u;
  }

  if ((v10 & 0x1000) != 0)
  {
    v18 = *(a1 + 1200);
    if (!v18 || (v18 & 7) != 0)
    {
      goto LABEL_220;
    }

    result = (*(*v18 + 392))(v18);
    *(a1 + 1340) = result;
  }

  if ((v10 & 0xF8) != 0)
  {
    v19 = *(a1 + 1200);
    if (!v19 || (v19 & 7) != 0)
    {
      goto LABEL_220;
    }

    result = (*(*v19 + 408))(v19);
    *(a1 + 1308) = result;
    v20 = v88;
    if (v88 != result)
    {
      sub_1000DDEEC(6u, 4, "%s:%s-%d oldTrackTimeMs=%d, m_TrackTimeMs=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoRemoteUI.cpp", "PlayStatusUpdateNoLock", 5951, v88, result);
      v20 = *(a1 + 1308);
    }

    *(a1 + 1312) = v20 / 0x3E8;
  }

  if ((v10 & 3) != 0)
  {
    v21 = *(a1 + 1200);
    if (!v21)
    {
      goto LABEL_220;
    }

    if ((v21 & 7) != 0)
    {
      goto LABEL_220;
    }

    *(a1 + 1332) = (*(*v21 + 440))(v21);
    v22 = *(a1 + 1200);
    if (!v22 || (v22 & 7) != 0)
    {
      goto LABEL_220;
    }

    result = (*(*v22 + 448))(v22);
    *(a1 + 1333) = result;
  }

  if ((v10 & 0xDE0) == 0)
  {
LABEL_58:
    if ((v10 & 0x2000) != 0)
    {
LABEL_71:
      v36 = *(a1 + 1200);
      if (!v36 || (v36 & 7) != 0)
      {
        goto LABEL_220;
      }

      result = (*(*v36 + 168))(v36);
      if (result >= 0x100)
      {
        goto LABEL_222;
      }

      *(a1 + 1348) = result;
      if ((v10 & 0x4000) != 0)
      {
LABEL_75:
        v37 = *(a1 + 1200);
        if (!v37 || (v37 & 7) != 0)
        {
          goto LABEL_220;
        }

        result = (*(*v37 + 136))(v37);
        if (result <= 0xFF)
        {
          *(a1 + 1349) = result;
          if (!v3)
          {
            goto LABEL_212;
          }

          goto LABEL_61;
        }

LABEL_222:
        __break(0x5507u);
        __break(0x5500u);
        goto LABEL_223;
      }

LABEL_60:
      if (!v3)
      {
        goto LABEL_212;
      }

LABEL_61:
      memset(v90, 170, 9);
      v32 = sub_100065198(result);
      if (!v32 || (v32 & 7) != 0)
      {
        goto LABEL_220;
      }

      result = sub_1000945E0(v32, *(a1 + 8));
      if (result)
      {
        v33 = v7[237];
        if (!v33 || (v33 & 7) != 0)
        {
          goto LABEL_220;
        }

        v34 = result;
        if ((*(v33 + 1380) & 1) == 0)
        {
          goto LABEL_95;
        }

        LOBYTE(v90[0]) = 17;
        if (*v12 > 7)
        {
          goto LABEL_221;
        }

        if (*v12)
        {
          if (*(a1 + 1332) > 1u)
          {
            goto LABEL_221;
          }

          if (v85 && !*(a1 + 1332))
          {
            v38 = 2;
LABEL_92:
            LOBYTE(v90[0]) = v38;
LABEL_93:
            if ((result & 7) == 0)
            {
              v39 = (*(*result + 16))(result, 0);
              sub_1000B748C(v34, 0, 4, 39, v39, v90, 1);
            }

            goto LABEL_220;
          }

          if (*(a1 + 1333) > 1u)
          {
            goto LABEL_221;
          }

          if (v80 && !*(a1 + 1333))
          {
            v38 = 3;
            goto LABEL_92;
          }
        }

        else if (v11)
        {
          LOBYTE(v90[0]) = 0;
          goto LABEL_93;
        }

LABEL_95:
        if ((v33 & 7) != 0)
        {
          goto LABEL_220;
        }

        v40 = *v12;
        if ((*(v33 + 1380) & 2) != 0)
        {
          if (v40 > 7)
          {
            goto LABEL_221;
          }

          if (v40 != v11)
          {
            if (&vars0 != 103)
            {
              BYTE1(v90[0]) = 17;
              if (v40 <= 2)
              {
                if (v40)
                {
                  if (v40 == 1)
                  {
                    v41 = 10;
                  }

                  else
                  {
                    v41 = 11;
                  }
                }

                else
                {
                  v41 = 2;
                }

                goto LABEL_123;
              }

              switch(v40)
              {
                case 3:
                  v41 = 5;
                  break;
                case 4:
                  v41 = 6;
                  break;
                case 5:
                  LOWORD(v90[0]) = 1798;
                  goto LABEL_133;
                default:
                  goto LABEL_137;
              }

LABEL_123:
              BYTE1(v90[0]) = v41;
              LOBYTE(v90[0]) = 6;
              v43 = *(a1 + 1332);
              if (v43 > 1)
              {
                goto LABEL_221;
              }

              if (v43)
              {
                if (*(a1 + 1333) > 1u)
                {
                  goto LABEL_221;
                }

                if (*(a1 + 1333) || ((v85 | v80) & 1) == 0)
                {
                  goto LABEL_133;
                }

LABEL_131:
                if ((result & 7) == 0)
                {
                  v44 = (*(*result + 16))(result, 0);
                  sub_1000B748C(v34, 0, 4, 39, v44, &unk_1000EFCF0, 2);
                }

                goto LABEL_220;
              }

              if (v85 & 1) != 0 || (v80)
              {
                goto LABEL_131;
              }

LABEL_133:
              if ((result & 7) == 0)
              {
                v45 = (*(*result + 16))(result, 0);
                sub_1000B748C(v34, 0, 4, 39, v45, v90, 2);
              }

              goto LABEL_220;
            }

LABEL_223:
            __break(0x5513u);
            goto LABEL_224;
          }
        }

        else
        {
          v11 = *v12;
          if (v40 > 7)
          {
            goto LABEL_221;
          }
        }

        if (v11)
        {
LABEL_137:
          v46 = v7[237];
          if (!v46 || (v46 & 7) != 0)
          {
            goto LABEL_220;
          }

          if ((*(v46 + 1380) & 4) != 0 && (v9 & 0x104) != 0)
          {
            LOBYTE(v90[0]) = 1;
            *(v90 + 1) = bswap32(*(a1 + 1304));
            if ((result & 7) == 0)
            {
              v47 = (*(*result + 16))(result, 0);
              sub_1000B748C(v34, 0, 4, 39, v47, v90, 5);
            }

            goto LABEL_220;
          }

          v48 = *(a1 + 1308);
          if (v48 != v88)
          {
            if ((v46 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v46 + 1380) & 8) != 0)
            {
              LOBYTE(v90[0]) = 4;
              *(v90 + 1) = bswap32(v48);
              if ((result & 7) == 0)
              {
                v49 = (*(*result + 16))(result, 0);
                sub_1000B748C(v34, 0, 4, 39, v49, v90, 5);
              }

              goto LABEL_220;
            }

            if ((v46 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v46 + 1380) & 0x10) != 0)
            {
              v50 = *(a1 + 1312);
              if (v50 != v76)
              {
                LOBYTE(v90[0]) = 7;
                *(v90 + 1) = bswap32(v50);
                if ((result & 7) == 0)
                {
                  v51 = (*(*result + 16))(result, 0);
                  sub_1000B748C(v34, 0, 4, 39, v51, v90, 5);
                }

                goto LABEL_220;
              }
            }
          }

          v52 = *(a1 + 1320);
          if (v52 != -1)
          {
            if ((v46 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v46 + 1380) & 0x20) != 0 && v52 != v86)
            {
              LOBYTE(v90[0]) = 5;
              *(v90 + 1) = bswap32(v52);
              if ((result & 7) == 0)
              {
                v53 = (*(*result + 16))(result, 0);
                sub_1000B748C(v34, 0, 4, 39, v53, v90, 5);
              }

              goto LABEL_220;
            }

            if ((v46 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v46 + 1380) & 0x40) != 0)
            {
              v54 = *(a1 + 1324);
              if (v54 != v78)
              {
                LOBYTE(v90[0]) = 8;
                *(v90 + 1) = bswap32(v54);
                if ((result & 7) == 0)
                {
                  v55 = (*(*result + 16))(result, 0);
                  sub_1000B748C(v34, 0, 4, 39, v55, v90, 5);
                }

                goto LABEL_220;
              }
            }

            if ((v46 & 7) != 0)
            {
              goto LABEL_220;
            }

            if ((*(v46 + 1380) & 0x80) != 0)
            {
              v56 = *(a1 + 1328);
              if (v56 != v77)
              {
                LOBYTE(v90[0]) = 9;
                *(v90 + 1) = bswap32(v56);
                if ((result & 7) == 0)
                {
                  v57 = (*(*result + 16))(result, 0);
                  sub_1000B748C(v34, 0, 4, 39, v57, v90, 5);
                }

                goto LABEL_220;
              }
            }
          }

          if ((v46 & 7) == 0)
          {
            if (*(v46 + 1381))
            {
              v58 = *(a1 + 1288);
              if (v58 != v84)
              {
                LOBYTE(v90[0]) = 10;
                *(v90 + 1) = bswap64(v58);
                if ((result & 7) == 0)
                {
                  v59 = (*(*result + 16))(result, 0);
                  sub_1000B748C(v34, 0, 4, 39, v59, v90, 9);
                }

                goto LABEL_220;
              }
            }

            if ((v46 & 7) == 0)
            {
              if ((*(v46 + 1381) & 2) != 0)
              {
                v60 = *v89;
                if (*v89 > 3u)
                {
                  goto LABEL_221;
                }

                if (v60 != v83)
                {
                  LOBYTE(v90[0]) = 11;
                  if (&vars0 != 103)
                  {
                    BYTE1(v90[0]) = v60;
                    if ((result & 7) == 0)
                    {
                      v61 = (*(*result + 16))(result, 0);
                      sub_1000B748C(v34, 0, 4, 39, v61, v90, 2);
                    }

                    goto LABEL_220;
                  }

                  goto LABEL_223;
                }
              }

              if ((v46 & 7) == 0)
              {
                if ((*(v46 + 1381) & 4) != 0)
                {
                  v62 = *(a1 + 1334);
                  if (v62 > 1)
                  {
                    goto LABEL_221;
                  }

                  if (v82 != 1 && (v62 & 1) != 0)
                  {
                    LOBYTE(v90[0]) = 12;
                    if ((result & 7) == 0)
                    {
                      v63 = (*(*result + 16))(result, 0);
                      sub_1000B748C(v34, 0, 4, 39, v63, v90, 1);
                    }

                    goto LABEL_220;
                  }
                }

                if ((v46 & 7) == 0)
                {
                  if ((*(v46 + 1381) & 8) != 0)
                  {
                    v64 = *(a1 + 1336);
                    if ((v9 & 0x104) != 0 || v64 != v79)
                    {
                      LOBYTE(v90[0]) = 13;
                      *(v90 + 1) = bswap32(v64);
                      if ((result & 7) == 0)
                      {
                        v65 = (*(*result + 16))(result, 0);
                        sub_1000B748C(v34, 0, 4, 39, v65, v90, 5);
                      }

                      goto LABEL_220;
                    }
                  }

                  if ((v46 & 7) == 0)
                  {
                    if ((*(v46 + 1381) & 0x10) != 0)
                    {
                      v66 = *(a1 + 1340);
                      if (v66 != v81 || (v9 & 0x1000) != 0)
                      {
                        LOBYTE(v90[0]) = 14;
                        *(v90 + 1) = bswap32(v66);
                        if ((result & 7) == 0)
                        {
                          v67 = (*(*result + 16))(result, 0);
                          sub_1000B748C(v34, 0, 4, 39, v67, v90, 5);
                        }

                        goto LABEL_220;
                      }
                    }

                    if ((v46 & 7) == 0)
                    {
                      if ((*(v46 + 1381) & 0x20) != 0)
                      {
                        v68 = *(a1 + 1348);
                        if (v68 != v13)
                        {
                          LOBYTE(v90[0]) = 15;
                          if (&vars0 != 103)
                          {
                            BYTE1(v90[0]) = v68;
                            if ((result & 7) == 0)
                            {
                              v69 = (*(*result + 16))(result, 0);
                              sub_1000B748C(v34, 0, 4, 39, v69, v90, 2);
                            }

                            goto LABEL_220;
                          }

                          goto LABEL_223;
                        }
                      }

                      if ((v46 & 7) == 0)
                      {
                        if ((*(v46 + 1381) & 0x40) == 0)
                        {
                          goto LABEL_212;
                        }

                        v70 = *(a1 + 1349);
                        if (v70 == v14)
                        {
                          goto LABEL_212;
                        }

                        LOBYTE(v90[0]) = 16;
                        if (&vars0 != 103)
                        {
                          BYTE1(v90[0]) = v70;
                          if ((result & 7) == 0)
                          {
                            v71 = (*(*result + 16))(result, 0);
                            sub_1000B748C(v34, 0, 4, 39, v71, v90, 2);
                          }

                          goto LABEL_220;
                        }

                        goto LABEL_223;
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_220:
          __break(0x5516u);
          goto LABEL_221;
        }

LABEL_212:
        v72 = *(a1 + 1384);
        if (v72 > 1)
        {
          goto LABEL_221;
        }

        if (v72)
        {
          return 0;
        }

        sub_1000651C8(*(a1 + 8), v16);
        if (!v74)
        {
          return 0;
        }

        *(a1 + 1384) = 1;
        sub_1000651C8(*(a1 + 8), v73);
        if (v75 && (v75 & 7) == 0)
        {
          sub_10006292C(v75, *(a1 + 1376));
          return 0;
        }

        goto LABEL_220;
      }

LABEL_219:
      __break(0x5518u);
      goto LABEL_220;
    }

LABEL_59:
    if ((v10 & 0x4000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_60;
  }

  v90[0] = 0xAAAAAAAAAAAAAAAALL;
  v23 = *(a1 + 1200);
  if (!v23 || (v23 & 7) != 0)
  {
    goto LABEL_220;
  }

  v24 = (*(*v23 + 384))(v23);
  v90[0] = v24;
  if (!v24)
  {
    goto LABEL_68;
  }

  v25 = v24;
  if ((v24 & 7) != 0)
  {
    goto LABEL_220;
  }

  if (!(*(*v24 + 16))(v24))
  {
LABEL_68:
    v35 = sub_10006547C(v89, a1 + 1296);
    if (v35 > 0x1F)
    {
      goto LABEL_221;
    }

    if (v35)
    {
      goto LABEL_219;
    }

LABEL_70:
    result = sub_1000698F8(v90);
    if ((v10 & 0x2000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_59;
  }

  if ((v10 & 0x100) != 0)
  {
    *(a1 + 1288) = (*(*v25 + 24))(v25);
  }

  if ((v10 & 0xE0) == 0)
  {
LABEL_110:
    v42 = *(a1 + 1334);
    if (v42 > 1)
    {
      goto LABEL_221;
    }

    if ((v10 & 0x400) != 0 && (v42 & (v87 == 0)) == 0)
    {
      if ((v9 & 0x104) != 0)
      {
        *(a1 + 1334) = 0;
      }

      *(a1 + 1334) = (*(*v25 + 256))(v25);
    }

    if (((v87 != 0) & (v10 >> 11)) != 0 || (v9 & 0x800) != 0)
    {
      *(a1 + 1336) = sub_10009EC60(a1, 0x27u, v25);
    }

    goto LABEL_70;
  }

  if ((v9 & 0x104) != 0 || (v26 = *(a1 + 1316), v26 == -1))
  {
    v26 = (*(*v25 + 368))(v25);
  }

  if (!v26)
  {
    *(a1 + 1316) = 0xFFFFFFFF00000000;
    v31 = -1;
    *(a1 + 1324) = -1;
    goto LABEL_109;
  }

  *(a1 + 1316) = v26;
  v27 = *(a1 + 1200);
  if (!v27 || (v27 & 7) != 0)
  {
    goto LABEL_220;
  }

  v28 = (*(*v27 + 208))(v27);
  *(a1 + 1320) = v28;
  v29 = *(a1 + 1308);
  result = (*(*v25 + 376))(v25, v28);
  v30 = v29 - result;
  if (v29 >= result)
  {
    *(a1 + 1324) = v30;
    v31 = v30 / 0x3E8;
    v7 = &unk_10012C000;
LABEL_109:
    *(a1 + 1328) = v31;
    goto LABEL_110;
  }

LABEL_224:
  __break(0x5515u);
  return result;
}