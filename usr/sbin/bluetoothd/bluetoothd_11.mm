void sub_1000BBCA8(uint64_t a1, _BYTE *a2)
{
  v3 = *(a2 + 3);
  if (*a2)
  {
    sub_1000BC14C(v3);
    *(a2 + 3) = 0;

    sub_10000C1E8(a2);
  }

  else
  {
    if (v3)
    {
      sub_1000BB9CC(v3);
      *(a2 + 3) = 0;
    }

    sub_1000BC0D0(*(a2 + 5));
    if (sub_1000BBA04(*(a2 + 18), a2))
    {

      sub_1000BC728(a2);
    }
  }
}

void *sub_1000BBD40(void (**a1)(void *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_100007618(0x10uLL, 0xA0040BD48D6D6uLL);
  v7 = v6;
  if (v6)
  {
    v6[1] = 0;
    if (*a1)
    {
      v8 = sub_100007618(a3, 0x6256172AuLL);
      *v7 = v8;
      if (v8)
      {
        (*a1)(v8, a2, a3);
      }
    }

    else
    {
      *v6 = a2;
    }
  }

  return v7;
}

void sub_1000BBDD0(void *ptr)
{
  if (ptr)
  {
    while (1)
    {
      v2 = ptr[2];
      if (!v2)
      {
        break;
      }

      ptr[2] = v2[1];
      v3 = ptr[1];
      if (v3)
      {
        v3(*v2);
      }

      sub_10000C1E8(v2);
    }

    sub_10000C1E8(ptr);
  }
}

uint64_t sub_1000BBE38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  v12 = 0;
  if (v2 == *(a2 + 36))
  {
    v3 = *(a1 + 38);
    v4 = *(a2 + 38);
    if (!sub_1000ABC7C(v2, &v12))
    {
      v8 = *(*(sub_1000B12AC(v12) + 128) + 4);
      if (v3 <= v8 || v4 <= v8)
      {
        if (v3 < v8 && v4 > v8)
        {
          return 1;
        }

        if (v3 > v8 && v4 < v8)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return v3 - v4;
    }

    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Can't get channel (0x%x), this is bad.", v2);
      v6 = sub_10000C050(0x2Fu);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (result)
      {
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
      sub_10000AF54("WTF ?? Can't compare 2 packets with different CID");
      v7 = sub_10000C050(0x2Fu);
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1000E09C0();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000BBF7C()
{
  v2 = 0;
  v0 = 0;
  while (sub_1000BBFD4(&v2))
  {
    if (*(v2 + 54) == 7)
    {
      v0 = v0;
    }

    else
    {
      v0 = (v0 + 1);
    }
  }

  return v0;
}

BOOL sub_1000BBFD4(uint64_t *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = qword_100B5FBD0;
    if (qword_100B5FBD0)
    {
      while (v3 != v2)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_1000D660C();
      v2 = *a1;
    }

    v4 = (v2 + 40);
  }

  else
  {
    v4 = &qword_100B5FBD0;
  }

  v5 = *v4;
  *a1 = v5;
  return v5 != 0;
}

uint64_t sub_1000BC048(int *a1, uint64_t a2)
{
  v4 = *(sub_1000B12AC(a1) + 128);
  if (*(sub_1000B12AC(a1) + 67))
  {
    ++*(a2 + 48);
  }

  ++*(v4 + 154);
  sub_1000BBA6C(a1);
  sub_1000BBBC4(*(v4 + 176), a2, 8, sub_1000BBE38);
  return 0;
}

uint64_t sub_1000BC0D0(uint64_t result)
{
  *(result + 1) = 0;
  *(result + 4) = 0;
  v1 = *(result + 2);
  if (*(result + 2))
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 24);
    do
    {
      *(v2 + 4) += *(v4 - 3);
      if (*(v4 - 8) == 4)
      {
        result = sub_1000BC0D0(*v4);
        v1 = *(v2 + 2);
      }

      ++v3;
      v4 += 3;
    }

    while (v3 < v1);
  }

  return result;
}

void sub_1000BC14C(uint64_t a1)
{
  if (*(a1 + 2))
  {
    v2 = 0;
    v3 = a1 + 18;
    do
    {
      v4 = *(v3 - 2);
      if (v4 >= 2)
      {
        if (v4 == 4)
        {
          *(*(v3 + 6) + 1) = *(v3 + 14);
          *(*(v3 + 6) + 6) = *(v3 + 16);
          *(*(v3 + 6) + 4) = *v3;
          sub_1000BC14C(*(v3 + 6));
        }
      }

      else
      {
        v5 = *(v3 + 6);
        if (!v5)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 133, "cell->buf.ptr");
        }

        sub_10000C1E8(v5);
        *(v3 + 6) = 0;
      }

      ++v2;
      v3 += 24;
    }

    while (v2 < *(a1 + 2));
  }

  *(a1 + 4) = 0;
  *(a1 + 1) = 0;
  *(a1 + 8) = 0;

  sub_10000C1E8(a1);
}

uint64_t sub_1000BC224(int *a1, char a2, char a3, char a4, char a5, _WORD *a6)
{
  v11 = *(sub_1000B12AC(a1) + 64);
  if ((v11 - 3) < 2)
  {
    *a6 = ((16 * (a3 & 1)) | (4 * (a2 & 3)) | (a4 << 7)) | 1 | ((a5 & 0x3F) << 8);
    return 2;
  }

  else
  {
    if (v11)
    {
      v12 = v11 == 5;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      sub_1000D660C();
    }

    return 0;
  }
}

void sub_1000BC2B4(uint64_t a1)
{
  v1 = **(a1 + 8);
  v3 = 0;
  if (sub_1000ABC7C(v1, &v3))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SFrame ac Timeout triggered on a released channel (0x%x), this is bad.", v1);
      v2 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(*(sub_1000B12AC(v3) + 128) + 12) = 0;
    *(*(sub_1000B12AC(v3) + 128) + 168) = 0;
    sub_1000BC368(v3, 0, 0);
  }
}

uint64_t sub_1000BC368(uint64_t a1, char a2, char a3)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  v13 = 0u;
  v16 = 0;
  v11 = 0;
  LOBYTE(v12) = *(sub_1000B12AC(a1) + 38) == -1;
  *(&v12 + 1) = *sub_1000B12AC(a1);
  LODWORD(v13) = 0;
  WORD2(v13) = *(a1 + 4);
  WORD3(v13) = 256;
  BYTE8(v13) = 0;
  v6 = sub_1000B12AC(a1);
  v7 = (sub_1000BC224(a1, 0, a2, a3, *(*(v6 + 128) + 10), &v16 + 2) + 4);
  WORD5(v13) = 2 * (*(sub_1000B12AC(a1) + 78) != 0) + v7;
  v16 = (v7 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0));
  *(&v16 + 1) = ((v7 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0)) >> 8);
  WORD1(v16) = *(sub_1000B12AC(a1) + 8);
  sub_10001FF10(v14 + 8, 2u);
  sub_10001F968(v14 + 8, &v16, v7, 2u);
  if (*(sub_1000B12AC(a1) + 78))
  {
    sub_10029C6AC(v14 + 8, &v11);
    sub_10001F968(v14 + 8, &v11, 2uLL, 2u);
  }

  v8 = sub_1000BC58C(&v12);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send S-Frame %!.", v8);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v8;
}

uint64_t sub_1000BC58C(uint64_t a1)
{
  if (!qword_100B60318)
  {
    goto LABEL_15;
  }

  v2 = qword_100B60318;
  while (*(v2 + 24) != *(a1 + 20))
  {
    v2 = *(v2 + 80);
    if (v2 == qword_100B60318 || v2 == 0)
    {
      goto LABEL_15;
    }
  }

  if (*(v2 + 16))
  {
    sub_10000C248(*(v2 + 8));
    v4 = sub_10000C248(*(v2 + 8));
    v5 = sub_100007618(0x40uLL, 0x10A0040CDCE5640uLL);
    if (!v5)
    {
      return 106;
    }

    v6 = v5;
    *v5 = 1;
    *(v5 + 1) = *a1;
    *(v5 + 1) = 0;
    *(v5 + 1) = *(a1 + 8);
    *(v5 + 4) = *(a1 + 16);
    if (sub_1000B8BE0(v5 + 3, a1 + 40, 0))
    {
      sub_10000C1E8(v6);
      return 106;
    }

    *(v6 + 32) = *(v2 + 27);
    *(v6 + 33) = *(a1 + 24);
    *(v6 + 34) = *(a1 + 26);
    *(v6 + 36) = *(v2 + 24);
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 40) = 0;
    if (*(v2 + 56) == 0xFFFFFFFFLL && !v4)
    {
      *(v2 + 48) = sub_1000B11F4();
    }

    sub_1000B8B8C(*(v2 + 8), v6, 8);
    result = 0;
    dword_100B6033C = 2;
  }

  else
  {
LABEL_15:
    if (sub_10000C240())
    {
      sub_10000AF54("Can't retransmit a basic flow control channel.");
      v8 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000D660C();
    return 509;
  }

  return result;
}

void sub_1000BC728(void *ptr)
{
  v2 = *ptr;
  v3 = ptr[3];
  if (!v2)
  {
    if (v3)
    {
      sub_1000BB9CC(v3);
    }

    v3 = ptr[5];
  }

  if (v3)
  {
    sub_1000BC14C(v3);
  }

  sub_10000C1E8(ptr);
}

void sub_1000BC77C(uint64_t a1, void *ptr, int a3)
{
  v3 = (a1 + 16);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (v4 == ptr)
    {
      v6 = 0;
LABEL_8:
      v7 = ptr[1];
      if (v6)
      {
        v3 = v6 + 1;
      }

      *v3 = v7;
      if (!v7)
      {
        *(a1 + 24) = v6;
      }

      --*(a1 + 32);
      if (a3)
      {
        v8 = *(a1 + 8);
        if (v8)
        {
          v8(*ptr);
        }
      }

      sub_10000C1E8(ptr);
    }

    else
    {
      while (1)
      {
        v6 = v4;
        v4 = v4[1];
        if (!v4)
        {
          break;
        }

        if (v4 == ptr)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

uint64_t sub_1000BC828(uint64_t result)
{
  if (result)
  {
    v1 = *(*result + 8);
    *result = v1;
    return v1 != 0;
  }

  return result;
}

uint64_t sub_1000BC844(uint64_t a1, unsigned int a2)
{
  v4 = (a2 >> 2) & 3;
  if (v4 <= 1)
  {
    if (!v4)
    {
      if (a2 & 0x80 | (a2 >> 4) & 1)
      {
        if ((a2 & 0x80) == 0)
        {
          if ((a2 >> 4))
          {
            v5 = (a2 >> 8) & 0x3F;
            if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v5 && v5 <= *(*(sub_1000B12AC(a1) + 128) + 4))
            {
              goto LABEL_10;
            }

            v6 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v7 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v6 <= v5)
            {
              if (v5 - v7 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_10;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v7) & 0x3Fu) >= v5)
            {
LABEL_10:
              sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 0);
              sub_1002996D4(a1);
              v8 = sub_1000B12AC(a1);
              v9 = 0;
              *(*(v8 + 128) + 15) = 0;
              return v9;
            }

            if (sub_10000C240())
            {
              if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v5 && v5 <= *(*(sub_1000B12AC(a1) + 128) + 4))
              {
                v88 = 1;
              }

              else
              {
                v86 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v87 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v88 = v86 <= v5 ? v5 - v87 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v87) & 0x3Fu) >= v5;
              }

              sub_10000AF54("S-Frame Receiver Ready Error: ValidReqSeq %d, ValidF-bit %d", v88, 1);
              v115 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_230;
              }
            }
          }

LABEL_231:
          v116 = sub_1000B12AC(a1);
          sub_1002976B0(*(v116 + 128));
          if (!sub_10000C240())
          {
            return sub_10029104C(*(a1 + 4), 436);
          }

          v117 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v118 = (a2 >> 8) & 0x3F;
          v119 = *(*(sub_1000B12AC(a1) + 128) + 4);
          v120 = *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32);
          if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v118 && v118 <= *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v123 = 1;
          }

          else
          {
            v121 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v122 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v123 = v121 <= v118 ? v118 - v122 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v122) & 0x3Fu) >= v118;
          }

          if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v118 && v118 <= *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v126 = 1;
          }

          else
          {
            v124 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v125 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v126 = v124 <= v118 ? v118 - v125 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v125) & 0x3Fu) >= v118;
          }

          v127 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v128 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v129 = v127 <= v118 ? v118 - v128 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v128) & 0x3Fu) >= v118;
          sub_10000AF54("Invalid S-Frame header while in RECV e:%d, r:%d, n:%d, u:%d, WITH_VALID_REQSEQ=%d, WITH_VALID_REQSEQ_VALUE=%d, WITH_VALID_REQSEQ_BOUNDS=%d", v117, v118, v119, v120, v123, v126, v129);
          v130 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            return sub_10029104C(*(a1 + 4), 436);
          }

LABEL_248:
          sub_10080F604();
          return sub_10029104C(*(a1 + 4), 436);
        }

        v38 = (a2 >> 8) & 0x3F;
        if (*(*(sub_1000B12AC(a1) + 128) + 6) > v38 || v38 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v39 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v40 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v39 <= v38)
          {
            if (v38 - v40 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
LABEL_133:
              if (!sub_10000C240())
              {
                goto LABEL_231;
              }

              if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v38 && v38 <= *(*(sub_1000B12AC(a1) + 128) + 4))
              {
                v69 = 1;
              }

              else
              {
                v67 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v68 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v69 = v67 <= v38 ? v38 - v68 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v68) & 0x3Fu) >= v38;
              }

              v99 = *(*(sub_1000B12AC(a1) + 128) + 2) == 0;
              sub_10000AF54("S-Frame Receiver Ready Error: ValidReqSeq %d, ValidF-bit %d", v69, v99);
              v100 = sub_10000C050(0x2Fu);
              if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_231;
              }

              goto LABEL_230;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v40) & 0x3Fu) < v38)
          {
            goto LABEL_133;
          }
        }

        if (*(*(sub_1000B12AC(a1) + 128) + 2))
        {
          goto LABEL_133;
        }

        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 1);
        if (*(*(sub_1000B12AC(a1) + 128) + 148))
        {
LABEL_158:
          v81 = sub_1000B12AC(a1);
          v9 = 0;
          *(*(v81 + 128) + 148) = 0;
          return v9;
        }

        v101 = sub_1002993EC(a1, (a2 >> 8) & 0x3F, (a2 & 0x10) != 0);
        if (!v101)
        {
          goto LABEL_53;
        }

        v102 = v101;
        if (!sub_10000C240())
        {
          goto LABEL_53;
        }

        sub_10000AF54("Failed to retransmit I-Frames %!.", v102);
        v103 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

LABEL_156:
        sub_1000E09C0();
LABEL_53:
        sub_1000BE1E4(a1, 0);
        return 0;
      }

      v27 = (a2 >> 8) & 0x3F;
      if (*(*(sub_1000B12AC(a1) + 128) + 6) > v27 || v27 > *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        v28 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v29 = *(*(sub_1000B12AC(a1) + 128) + 6);
        if (v28 > v27)
        {
          if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v29) & 0x3Fu) >= v27)
          {
            goto LABEL_46;
          }

          goto LABEL_113;
        }

        if (v27 - v29 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
LABEL_113:
          if (!sub_10000C240())
          {
            goto LABEL_231;
          }

          if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v27 && v27 <= *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v59 = 1;
          }

          else
          {
            v57 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v58 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v59 = v57 <= v27 ? v27 - v58 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v58) & 0x3Fu) >= v27;
          }

          sub_10000AF54("S-Frame Receiver Ready Error: ValidReqSeq %d, ValidF-bit %d", v59, 1);
          v110 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_231;
          }

          goto LABEL_230;
        }
      }

LABEL_46:
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 0);
      if (*(*(sub_1000B12AC(a1) + 128) + 15) == 1)
      {
        v30 = sub_1000B12AC(a1);
        if (sub_10000C248(*(*(v30 + 128) + 176)))
        {
          v31 = sub_1000BBA6C(a1);
          if (v31)
          {
            v32 = v31;
            if (sub_10000C240())
            {
              sub_10000AF54("Failed to start retransmission timer %!.", v32);
              v33 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }
          }
        }
      }

      *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
      goto LABEL_53;
    }

    v14 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v15 = (a2 >> 8) & 0x3F;
    if ((a2 & 0x80) == 0)
    {
      if (v14 <= v15 && v15 <= *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        goto LABEL_69;
      }

      v16 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v17 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v16 > v15)
      {
        if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v17) & 0x3Fu) < v15)
        {
          goto LABEL_85;
        }

        goto LABEL_69;
      }

      if (v15 - v17 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
LABEL_69:
        if (*(sub_1000B12AC(a1) + 67))
        {
          v41 = sub_100297AC4(a1, (a2 >> 8) & 0x3F);
          if (v41 >= *(sub_1000B12AC(a1) + 67))
          {
            goto LABEL_85;
          }
        }

        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 0);
        v42 = sub_1002993EC(a1, (a2 >> 8) & 0x3F, (a2 & 0x10) != 0);
        if (v42)
        {
          v43 = v42;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to retransmit I-Frames %!.", v43);
            v44 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        sub_1000BE1E4(a1, 0);
        if (!*(*(sub_1000B12AC(a1) + 128) + 2))
        {
          v45 = sub_1000B12AC(a1);
          v9 = 0;
          *(*(v45 + 128) + 148) = 1;
          return v9;
        }

        return 0;
      }

LABEL_85:
      if (!sub_10000C240())
      {
        goto LABEL_231;
      }

      if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v15 && v15 <= *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        v49 = 1;
      }

      else
      {
        v47 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v48 = *(*(sub_1000B12AC(a1) + 128) + 6);
        if (v47 <= v15)
        {
          v49 = v15 - v48 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32);
        }

        else
        {
          v49 = ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v48) & 0x3Fu) >= v15;
        }
      }

      v74 = sub_1000B12AC(a1);
      v75 = *(v74 + 67);
      if (*(v74 + 67))
      {
        v76 = sub_100297AC4(a1, (a2 >> 8) & 0x3F);
        v75 = v76 >= *(sub_1000B12AC(a1) + 67);
      }

      sub_10000AF54("S-Frame Reject Error: ValidReqSeq_Retrans %d, MaxRetransExceeded %d", v49, v75);
      v77 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_231;
      }

      goto LABEL_230;
    }

    if (v14 > v15 || v15 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v23 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v24 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v23 <= v15)
      {
        if (v15 - v24 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_85;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v24) & 0x3Fu) < v15)
      {
        goto LABEL_85;
      }
    }

    if (!*(sub_1000B12AC(a1) + 67) || (v46 = sub_100297AC4(a1, (a2 >> 8) & 0x3F), v46 < *(sub_1000B12AC(a1) + 67)))
    {
      if (!*(*(sub_1000B12AC(a1) + 128) + 2))
      {
        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 1);
        if (*(*(sub_1000B12AC(a1) + 128) + 148))
        {
          goto LABEL_158;
        }

        v78 = sub_1002993EC(a1, (a2 >> 8) & 0x3F, (a2 & 0x10) != 0);
        if (!v78)
        {
          goto LABEL_53;
        }

        v79 = v78;
        if (!sub_10000C240())
        {
          goto LABEL_53;
        }

        sub_10000AF54("Failed to retransmit I-Frames %!.", v79);
        v80 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        goto LABEL_156;
      }
    }

    goto LABEL_85;
  }

  if (v4 == 3)
  {
    if (a2 & 0x10 | (a2 >> 7) & 1)
    {
      v10 = (a2 >> 7) & 1;
      if ((a2 & 0x10) == 0 && v10)
      {
        v11 = (a2 >> 8) & 0x3F;
        if (*(*(sub_1000B12AC(a1) + 128) + 6) > v11 || v11 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v12 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v13 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v12 <= v11)
          {
            if (v11 - v13 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
LABEL_142:
              if (!sub_10000C240())
              {
                goto LABEL_231;
              }

              if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v11 && v11 <= *(*(sub_1000B12AC(a1) + 128) + 4))
              {
                v73 = 1;
              }

              else
              {
                v71 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v72 = *(*(sub_1000B12AC(a1) + 128) + 6);
                if (v71 <= v11)
                {
                  v73 = v11 - v72 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32);
                }

                else
                {
                  v73 = ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v72) & 0x3Fu) >= v11;
                }
              }

              v95 = sub_1000B12AC(a1);
              v96 = *(v95 + 67);
              if (*(v95 + 67))
              {
                v97 = sub_100297AC4(a1, (a2 >> 8) & 0x3F);
                v96 = v97 >= *(sub_1000B12AC(a1) + 67);
              }

              sub_10000AF54("S-Frame p 0, f 1, Error: ValidReqSeq_Retrans %d, MaxRetransExceeded %d", v73, v96);
              v98 = sub_10000C050(0x2Fu);
              if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_231;
              }

              goto LABEL_230;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v13) & 0x3Fu) < v11)
          {
            goto LABEL_142;
          }
        }

        if (!*(sub_1000B12AC(a1) + 67) || (v70 = sub_100297AC4(a1, (a2 >> 8) & 0x3F), v70 < *(sub_1000B12AC(a1) + 67)))
        {
          if (!*(*(sub_1000B12AC(a1) + 128) + 2))
          {
            *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
            sub_1002997C8(a1, 1);
            if (*(*(sub_1000B12AC(a1) + 128) + 149) == 1 && v11 == *(*(sub_1000B12AC(a1) + 128) + 150))
            {
              v89 = sub_1000B12AC(a1);
              v9 = 0;
              *(*(v89 + 128) + 149) = 0;
              return v9;
            }

            v9 = sub_1002998A0(a1, (a2 >> 8) & 0x3F, 0);
            if (!v9)
            {
              return v9;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("Failed to retransmit requested I-Frames %!.", v9);
              v94 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            return 0;
          }
        }

        goto LABEL_142;
      }

      if ((a2 & 0x10) == 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Got S_FRAME but something is not correct");
          v37 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        goto LABEL_231;
      }

      v34 = (a2 >> 8) & 0x3F;
      if (*(*(sub_1000B12AC(a1) + 128) + 6) > v34 || v34 > *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        v52 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v53 = *(*(sub_1000B12AC(a1) + 128) + 6);
        if (v52 <= v34)
        {
          if (v34 - v53 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
          {
LABEL_164:
            if (!sub_10000C240())
            {
              goto LABEL_231;
            }

            if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v34 && v34 <= *(*(sub_1000B12AC(a1) + 128) + 4))
            {
              v85 = 1;
            }

            else
            {
              v83 = *(*(sub_1000B12AC(a1) + 128) + 6);
              v84 = *(*(sub_1000B12AC(a1) + 128) + 6);
              if (v83 <= v34)
              {
                v85 = v34 - v84 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32);
              }

              else
              {
                v85 = ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v84) & 0x3Fu) >= v34;
              }
            }

            v111 = sub_1000B12AC(a1);
            v112 = *(v111 + 67);
            if (*(v111 + 67))
            {
              v113 = sub_100297AC4(a1, (a2 >> 8) & 0x3F);
              v112 = v113 >= *(sub_1000B12AC(a1) + 67);
            }

            sub_10000AF54("S-Frame p == 1 Error ValidReqSeq_Retrans %d, MaxRetransExceeded %d", v85, v112);
            v114 = sub_10000C050(0x2Fu);
            if (!os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_231;
            }

            goto LABEL_230;
          }
        }

        else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v53) & 0x3Fu) < v34)
        {
          goto LABEL_164;
        }
      }

      if (*(sub_1000B12AC(a1) + 67))
      {
        v82 = sub_100297AC4(a1, (a2 >> 8) & 0x3F);
        if (v82 >= *(sub_1000B12AC(a1) + 67))
        {
          goto LABEL_164;
        }
      }

      if (v10 && *(*(sub_1000B12AC(a1) + 128) + 2))
      {
        goto LABEL_164;
      }

      *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      v90 = sub_1002998A0(a1, (a2 >> 8) & 0x3F, 1);
      if (v90)
      {
        v91 = v90;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to retransmit requested I-Frames %!.", v91);
          v92 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      sub_1000BE1E4(a1, 0);
LABEL_184:
      if (!*(*(sub_1000B12AC(a1) + 128) + 2))
      {
        *(*(sub_1000B12AC(a1) + 128) + 149) = 1;
        v93 = sub_1000B12AC(a1);
        v9 = 0;
        *(*(v93 + 128) + 150) = v34 != 0;
        return v9;
      }

      return 0;
    }

    v34 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v34 || v34 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v35 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v36 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v35 <= v34)
      {
        if (v34 - v36 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_125;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v36) & 0x3Fu) < v34)
      {
        goto LABEL_125;
      }
    }

    if (!*(sub_1000B12AC(a1) + 67) || (v60 = sub_100297AC4(a1, (a2 >> 8) & 0x3F), v60 < *(sub_1000B12AC(a1) + 67)))
    {
      *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
      sub_1000B12AC(a1);
      v61 = sub_1002998A0(a1, (a2 >> 8) & 0x3F, 0);
      if (v61)
      {
        v62 = v61;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to retransmit requested I-Frames %!.", v62);
          v63 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      goto LABEL_184;
    }

LABEL_125:
    if (!sub_10000C240())
    {
      goto LABEL_231;
    }

    if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v34 && v34 <= *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v66 = 1;
    }

    else
    {
      v64 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v65 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v64 <= v34)
      {
        v66 = v34 - v65 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32);
      }

      else
      {
        v66 = ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v65) & 0x3Fu) >= v34;
      }
    }

    v104 = sub_1000B12AC(a1);
    v105 = *(v104 + 67);
    if (*(v104 + 67))
    {
      v106 = sub_100297AC4(a1, (a2 >> 8) & 0x3F);
      v105 = v106 >= *(sub_1000B12AC(a1) + 67);
    }

    sub_10000AF54("S-Frame Select Reject Error: ValidReqSeq_Retrans %d, MaxRetransExceeded %d", v66, v105);
    v107 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_231;
    }

LABEL_230:
    sub_10080F604();
    goto LABEL_231;
  }

  v18 = a2 >> 4;
  v19 = *(*(sub_1000B12AC(a1) + 128) + 6);
  v20 = (a2 >> 8) & 0x3F;
  if ((v18 & 1) == 0)
  {
    if (v19 > v20 || v20 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v21 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v22 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v21 <= v20)
      {
        if (v20 - v22 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_93;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v22) & 0x3Fu) < v20)
      {
        goto LABEL_93;
      }
    }

    if (((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2))
    {
      *(*(sub_1000B12AC(a1) + 128) + 15) = 1;
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      sub_1000B47C0(a1);
      return 0;
    }

LABEL_93:
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v20 || v20 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      if (!sub_10000C240())
      {
        return sub_10029104C(*(a1 + 4), 436);
      }

      sub_10000AF54("Invalid reqseq");
      v50 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        return sub_10029104C(*(a1 + 4), 436);
      }

      goto LABEL_248;
    }

    if (sub_10000C240())
    {
      if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v20 && v20 <= *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        v56 = 1;
      }

      else
      {
        v54 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v55 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v56 = v54 <= v20 ? v20 - v55 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v55) & 0x3Fu) >= v20;
      }

      v108 = (a2 & 0x80) == 0 || *(*(sub_1000B12AC(a1) + 128) + 2) == 0;
      sub_10000AF54("S-Frame Receiver Not Ready Error: P-bit %d, ValidReqSeq %d, ValidF-bit %d", (a2 >> 4) & 1, v56, v108);
      v109 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_230;
      }
    }

    goto LABEL_231;
  }

  if (v19 > v20 || v20 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v25 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v26 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v25 <= v20)
    {
      if (v20 - v26 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_93;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v26) & 0x3Fu) < v20)
    {
      goto LABEL_93;
    }
  }

  if (((a2 >> 7) & 1) != 0 && *(*(sub_1000B12AC(a1) + 128) + 2))
  {
    goto LABEL_93;
  }

  *(*(sub_1000B12AC(a1) + 128) + 15) = 1;
  sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
  sub_1000B47C0(a1);
  v9 = sub_10029936C(a1, 0, 1);
  if (v9)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send RR or RNR %!", v9);
      v51 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v9;
}

uint64_t sub_1000BE1E4(uint64_t a1, char a2)
{
  if ((*(*(sub_1000B12AC(a1) + 128) + 14) & 1) == 0)
  {
    *(*(sub_1000B12AC(a1) + 128) + 14) = a2;
  }

  v4 = *(a1 + 4);

  return sub_1000BE23C(v4);
}

uint64_t sub_1000BE23C(uint64_t result)
{
  if (qword_100B60318)
  {
    v1 = qword_100B60318;
    do
    {
      if (*(v1 + 24) == result)
      {
        break;
      }

      v1 = *(v1 + 80);
    }

    while (v1 != qword_100B60318 && v1 != 0);
  }

  dword_100B6033C = 2;
  return result;
}

BOOL sub_1000BE280(uint64_t a1)
{
  result = 0;
  if (a1 && dword_100BCE338)
  {
    result = sub_1000ABD24(a1);
    if (result)
    {
      return *(a1 + 70) == 1;
    }
  }

  return result;
}

uint64_t sub_1000BE2D0(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v4 = 0;
    v5 = &dword_100BC9D68;
    do
    {
      if (*(v5 - 23) == result)
      {
        *a2 = *(v5 - 2);
        *a3 = *(v5 - 1);
        *v5 = 0;
        *(v5 - 2) = 0;
        v3 = dword_100BC9C74;
      }

      ++v4;
      v5 += 268;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t sub_1000BE324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    if (*(a1 + 2))
    {
      v4 = *(a1 + 4);
      if (*(a1 + 2) - 1 > v4)
      {
        goto LABEL_8;
      }
    }

    if (*a1 != 1)
    {
      return 0;
    }

    if (!sub_1000D5E38(a1))
    {
      return 106;
    }

    v4 = *(a1 + 4);
LABEL_8:
    --v2;
    v5 = *(a1 + 8);
    *(a1 + 4) = v4 + 1;
    *(v5 + v4) = 32;
    if (!v2)
    {
      return 0;
    }
  }
}

uint64_t sub_1000BE3D4(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1000BE4EC(v7, a2, "DeviceTags");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v10 = [NSString stringWithUTF8String:v9];
    *a4 = [v8 containsObject:v10];

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

uint64_t sub_1000BE4B4(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D7F0 != -1)
  {
    sub_10082C1A0();
  }

  return qword_100B6D7E8;
}

id sub_1000BE4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100829EC4();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v12 = *(a2 + 128);
    v13 = *(a2 + 132);
    sub_1000BE6F8(&v12, __p);
    if (v15 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = *__p;
    }

    v6 = [NSString stringWithUTF8String:v5];
    if (v15 < 0)
    {
      operator delete(*__p);
    }

    v7 = [NSString stringWithUTF8String:a3];
    v8 = sub_1000BE814(v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 objectForKey:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136315138;
      *&__p[4] = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "System has not passed first unlock (or device prefs not read yet). Do not read device property %s", __p, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

size_t sub_1000BE6F8@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *__str = 0;
  v6 = 0;
  v7 = 0;
  snprintf(__str, 0x12uLL, "%02X:%02X:%02X:%02X:%02X:%02X", *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  v8 = 0;
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  *(a2 + v4) = 0;
  return result;
}

CFPropertyListRef sub_1000BE814(CFStringRef key)
{
  if (byte_100B54330 == 1)
  {
    v2 = sub_1000BE8A8();

    return __CFPreferencesCopyAppValueWithContainer(key, @"com.apple.MobileBluetooth.devices", v2);
  }

  else
  {

    return CFPreferencesCopyValue(key, @"com.apple.MobileBluetooth.devices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }
}

CFStringRef sub_1000BE8A8()
{
  result = qword_100B6D788;
  if (!qword_100B6D788)
  {
    __p[0] = 0;
    __p[1] = 0;
    v4 = 0;
    v1 = sub_100017E6C();
    (*(*v1 + 176))(v1, __p);
    if (v4 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    result = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x8000100u);
    qword_100B6D788 = result;
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
      return qword_100B6D788;
    }
  }

  return result;
}

void sub_1000BE950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000BE96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 448);

  return [v12 setObject:0 forKeyedSubscript:{a10, a5, a6, a7, a8}];
}

uint64_t sub_1000BE994(uint64_t a1, uint64_t a2, int a3)
{
  v25 = 0;
  v6 = sub_1000C7D9C(a1, a2, 1u, &v25);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875B08();
    }
  }

  else
  {
    v8 = v25;
    v26 = v25;
    *buf = &v26;
    v9 = sub_1000BED44(a1 + 1832, &v26, &unk_1008A9BD0, buf);
    v10 = *(v9 + 29);
    v11 = *(v9 + 15);
    v12 = qword_100BCE918;
    v13 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      *buf = 67109632;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = a2;
      *&buf[14] = 1024;
      LODWORD(v29) = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating a match table with handle %x for type %d and mask: %d", buf, 0x14u);
    }

    v15 = sub_10000C7D0(v13, v14);
    v16 = (*(*v15 + 3384))(v15, v8, 7, 255, 76, a2, 0, 1, 0, 0, 16, 0, 0, 0);
    v7 = v16;
    if (!v16)
    {
      v40 = 0u;
      memset(v41, 0, sizeof(v41));
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      *buf = 0u;
      v29 = 0u;
      buf[6] = 2;
      v18 = *sub_10000C7D0(v16, v17);
      v19 = (*(v18 + 3432))();
      if (v19)
      {
        v7 = v19;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_1008750D4();
        }
      }

      else
      {
        v24 = v11;
        v27 = &v24;
        v20 = sub_1000BED44(a1 + 1832, &v24, &unk_1008A9BD0, &v27);
        *(v20 + 28) = a2;
        *(v20 + 29) = v10;
        *(v20 + 15) = v11;
        *(v20 + 8) = 65537;
        *(v20 + 18) = 1;
        *(v20 + 19) = a3;
        v22 = *sub_10000C7D0(v20, v21);
        v7 = (*(v22 + 3408))();
        if (v7 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100875B70();
        }
      }
    }
  }

  return v7;
}

uint64_t sub_1000BECC4(uint64_t a1, __int16 a2, char a3, char a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BEE24;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 116, 1, v5, 0);
}

uint64_t *sub_1000BED44(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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
      v7 = *(v4 + 26);
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

uint64_t sub_1000BEE48()
{
  if (off_100B60B58)
  {
    v0 = off_100B60B58();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v0);
    v1 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000BEED4(__int16 a1, char a2, char a3, void (*a4)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6567, "OI_STATUS _BCM_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
    }

    else
    {
      v12 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v12) = 7;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6568, "OI_STATUS _BCM_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
          }

          else if (WORD1(v21) - WORD2(v21) > 1)
          {
            if (BYTE6(v21) == 2)
            {
              *(v20 + WORD2(v21)) = a1;
              v13 = WORD2(v21);
              v14 = WORD2(v21) + 2;
              WORD2(v21) += 2;
              if (HIBYTE(v21))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6569, "OI_STATUS _BCM_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
              }

              else if (WORD1(v21) > v14)
              {
                if (BYTE6(v21) == 2)
                {
                  WORD2(v21) = v13 + 3;
                  *(v20 + v14) = a2;
                  if (HIBYTE(v21))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6570, "OI_STATUS _BCM_AdvBufMatchControl(uint16_t, uint8_t, uint8_t, BT_VSC_ADVBUF_MATCH_CONTROL_CB)");
                  }

                  else
                  {
                    v15 = WORD2(v21);
                    if (WORD1(v21) > WORD2(v21))
                    {
                      if (BYTE6(v21) == 2)
                      {
                        ++WORD2(v21);
                        *(v20 + v15) = a3;
                        return sub_100020078(556, v20, BYTE4(v21), a4, sub_1000C0198, v9, v10, v11);
                      }

                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6570, v19);
                    }
                  }

                  v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6569, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_27;
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6568, v17);
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_23;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6567, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

void sub_1000BF144(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 571, "void _BCM_MatchTableParamsEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_18:
    v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 571, v10);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  if (v6 == 4)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", result), v9 = sub_10000C050(0x54u), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(result, v6);
  }
}

uint64_t sub_1000BF2A4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 120);
}

uint64_t sub_1000BF2F4(uint64_t a1, __int16 a2, char a3, char a4, uint64_t a5)
{
  if (!sub_10006CDA4(a1))
  {
    return 2;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BFAB0;
  v11[3] = &unk_100AF25D0;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v11[4] = a5;
  return sub_10002173C(a1, 120, 1, v11, 0);
}

void sub_1000BF3B8(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 470, "void _BCM_MatchTableConfigEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_18:
    v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 470, v10);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  if (v6 == 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", result), v9 = sub_10000C050(0x54u), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(result, v6);
  }
}

uint64_t sub_1000BF518(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 111);
}

uint64_t sub_1000BF568(_DWORD *a1, unsigned int a2, __int16 a3, int a4, int a5, int a6, int a7, char a8, char a9, unsigned __int16 a10, unsigned __int16 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, char a16)
{
  v24 = sub_10006CDA4(a1);
  if (!v24)
  {
    return 2;
  }

  v26 = a3 & 0xFFF0;
  if (a4)
  {
    ++v26;
  }

  v27 = v26 | (2 * (a5 != 0)) | (4 * (a6 != 0)) | (8 * (a7 != 0));
  v28 = sub_10000C798(v24, v25);
  v29 = (*(*v28 + 264))(v28);
  if (v29)
  {
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1003EE780;
    v66[3] = &unk_100AF29F0;
    v67 = a2;
    v68 = v27 & 0xFF1F | (32 * (a9 != 0)) | ((a10 != 0) << 6) | ((a11 != 0) << 7);
    v71 = a4;
    v69 = a5;
    v72 = a6;
    v73 = a7;
    v74 = a8;
    v75 = a9;
    v70 = a11;
    v76 = a13;
    v66[4] = a12;
    v66[5] = a14;
    v66[6] = a15;
    v77 = a16;
    v31 = v66;
    v32 = a1;
    v33 = 113;
    return sub_10002173C(v32, v33, 1, v31, 0);
  }

  v35 = sub_10000C798(v29, v30);
  if ((*(*v35 + 256))(v35))
  {
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1003EE84C;
    v56[3] = &unk_100AF2670;
    v57 = a2;
    v58 = v27 & 0xFF1F | (32 * (a9 != 0)) | ((a10 != 0) << 6) | ((a11 != 0) << 7);
    v61 = a4;
    v59 = a5;
    v62 = a6;
    v63 = a7;
    v64 = a8;
    v65 = a9;
    v60 = a11;
    v31 = v56;
    v32 = a1;
    v33 = 112;
    return sub_10002173C(v32, v33, 1, v31, 0);
  }

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000C87C0;
  v48[3] = &unk_100AF2430;
  v49 = a2;
  v50 = v27;
  v52 = a4;
  v51 = a5;
  v53 = a6;
  v54 = a7;
  v55 = a8;
  v34 = sub_10002173C(a1, 111, 1, v48, 0);
  v38 = qword_100BCE8D8;
  v39 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
  if (v39)
  {
    v41 = sub_100020304(a1, 111);
    *buf = 136446466;
    v79 = v41;
    v80 = 1024;
    v81 = v34;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%{public}s returned with result: %d", buf, 0x12u);
  }

  v42 = sub_10000C798(v39, v40);
  if ((*(*v42 + 384))(v42))
  {
    v43 = a1[200];
    if (v43)
    {
      if (v43 <= 0x7CF && !v34)
      {
        v44 = a9 != 0;
        if (a9)
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        if (a10)
        {
          v44 = v45;
        }

        v34 = a11 ? v44 | 4 : v44;
        if (v34)
        {
          v46 = (*(*a1 + 2856))(a1);
          v47 = *a1;
          if (v46)
          {
            return (*(v47 + 3400))(a1, a2, v34, a9, a10, a11, a12, a13, a14, a15, a16);
          }

          else
          {
            return (*(v47 + 3392))(a1, a2, v34, a9, a10, a11);
          }
        }
      }
    }
  }

  return v34;
}

uint64_t sub_1000BFAD8()
{
  if (off_100B60B78)
  {
    v0 = off_100B60B78();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%s VSC failed %!", "BT_VSC_MatchTableParams", v0);
    v1 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000BFB6C(__int16 a1, char a2, char a3, _BYTE *a4, void (*a5)())
{
  v44 = 0;
  v45 = 0;
  result = sub_10001FFD8(&v44);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v45))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6652, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_69;
  }

  v14 = WORD2(v45);
  if (WORD1(v45) <= WORD2(v45))
  {
LABEL_69:
    v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_71;
  }

  if (BYTE6(v45) != 2)
  {
    v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_71:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6652, v40);
  }

  ++WORD2(v45);
  *(v44 + v14) = 4;
  if (HIBYTE(v45))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6653, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_73;
  }

  if (WORD1(v45) - WORD2(v45) <= 1)
  {
LABEL_73:
    v41 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_75;
  }

  if (BYTE6(v45) != 2)
  {
    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_75:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6653, v41);
  }

  *(v44 + WORD2(v45)) = a1;
  v15 = WORD2(v45);
  v16 = WORD2(v45) + 2;
  WORD2(v45) += 2;
  if (HIBYTE(v45))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6654, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_77;
  }

  if (WORD1(v45) <= v16)
  {
LABEL_77:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_79;
  }

  if (BYTE6(v45) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_79:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6654, v42);
  }

  WORD2(v45) = v15 + 3;
  *(v44 + v16) = a2;
  if (HIBYTE(v45))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6655, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
    goto LABEL_81;
  }

  v17 = WORD2(v45);
  if (WORD1(v45) <= WORD2(v45))
  {
LABEL_81:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_83;
  }

  if (BYTE6(v45) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_83:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6655, v43);
  }

  v18 = a3 - a2 + 1;
  ++WORD2(v45);
  *(v44 + v17) = a3;
  if (v18)
  {
    v19 = 0;
    while (!HIBYTE(v45))
    {
      if (WORD1(v45) - WORD2(v45) <= 5)
      {
        goto LABEL_60;
      }

      if (BYTE6(v45) != 2)
      {
        v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_61;
      }

      sub_1000075EC((v44 + WORD2(v45)), a4, 6uLL);
      v20 = WORD2(v45);
      v21 = WORD2(v45) + 6;
      WORD2(v45) += 6;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6660, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_56:
        v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_57:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6660, v37);
      }

      if (WORD1(v45) <= v21)
      {
        goto LABEL_56;
      }

      if (BYTE6(v45) != 2)
      {
        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_57;
      }

      v22 = a4[6];
      WORD2(v45) = v20 + 7;
      *(v44 + v21) = v22;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6661, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_52:
        v36 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_53:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6661, v36);
      }

      if (WORD1(v45) - WORD2(v45) <= 5)
      {
        goto LABEL_52;
      }

      if (BYTE6(v45) != 2)
      {
        v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_53;
      }

      v23 = a4 + 7;
      sub_1000075EC((v44 + WORD2(v45)), v23, 6uLL);
      v24 = WORD2(v45);
      v25 = WORD2(v45) + 6;
      WORD2(v45) += 6;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6662, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_48:
        v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_49:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6662, v35);
      }

      if (WORD1(v45) <= v25)
      {
        goto LABEL_48;
      }

      if (BYTE6(v45) != 2)
      {
        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_49;
      }

      v26 = v23[6];
      WORD2(v45) = v24 + 7;
      *(v44 + v25) = v26;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6663, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_44:
        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_45:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6663, v34);
      }

      v27 = WORD2(v45);
      if (WORD1(v45) <= WORD2(v45))
      {
        goto LABEL_44;
      }

      if (BYTE6(v45) != 2)
      {
        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_45;
      }

      v28 = v23[7];
      ++WORD2(v45);
      *(v44 + v27) = v28;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6664, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_41:
        v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_67:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6664, v33);
      }

      v29 = WORD2(v45);
      if (WORD1(v45) <= WORD2(v45))
      {
        goto LABEL_41;
      }

      if (BYTE6(v45) != 2)
      {
        v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_67;
      }

      v30 = v23[8];
      ++WORD2(v45);
      *(v44 + v29) = v30;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6665, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_64:
        v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_65:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6665, v39);
      }

      v31 = WORD2(v45);
      if (WORD1(v45) <= WORD2(v45))
      {
        goto LABEL_64;
      }

      if (BYTE6(v45) != 2)
      {
        v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_65;
      }

      v32 = v23[9];
      ++WORD2(v45);
      *(v44 + v31) = v32;
      ++v19;
      a4 = v23 + 10;
      if (v19 >= v18)
      {
        return sub_100020078(556, v44, BYTE4(v45), a5, sub_1000BF144, v11, v12, v13);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6659, "OI_STATUS _BCM_MatchTableParams(uint16_t, uint8_t, uint8_t, BT_VSC_MTblEntry *, BT_VSC_MATCHTABLE_PARAMS_CB)");
LABEL_60:
    v38 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_61:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6659, v38);
  }

  return sub_100020078(556, v44, BYTE4(v45), a5, sub_1000BF144, v11, v12, v13);
}

void sub_1000C0198(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 512, "void _BCM_AdvBufMatchControlEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_18:
    v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 512, v10);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  if (v6 == 7)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", result), v9 = sub_10000C050(0x54u), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(result, v6);
  }
}

uint64_t sub_1000C02F8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 116);
}

BOOL sub_1000C0348(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = off_100B50F60;

  return sub_1000C039C(v2, a1);
}

BOOL sub_1000C039C(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v6 = 0;
      goto LABEL_6;
    }

    v5 = *i;
    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v6 = *v5 == 2 || v5[6] != 0;
LABEL_6:
  sub_1000088CC(v8);
  return v6;
}

uint64_t ***sub_1000C0430(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **sub_1000C04E8(float *a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *(a1 + 1);
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1000C073C(id a1, NSString *a2, CBPowerSource *a3, BOOL *a4)
{
  v4 = a3;
  if ([(CBPowerSource *)v4 sourceID])
  {
    [(CBPowerSource *)v4 setPresent:0];
  }

  else if ([(CBPowerSource *)v4 partID]== 1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(CBPowerSource *)v4 components];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([v10 sourceID])
          {
            [v10 setPresent:0];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

BOOL sub_1000C08D0(uint64_t *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = qword_100B5FBF0;
    if (qword_100B5FBF0)
    {
      while (v3 != v2)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_1000D660C();
      v2 = *a1;
    }

    v4 = (v2 + 40);
  }

  else
  {
    v4 = &qword_100B5FBF0;
  }

  v5 = *v4;
  *a1 = v5;
  return v5 != 0;
}

void sub_1000C0944(char *__src, size_t __len, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v9 = __len;
  v10 = __src;
  v11 = *(a3 + 2);
  if (a4)
  {
    if (*(a3 + 2))
    {
      goto LABEL_15;
    }

    v12 = 168;
  }

  else if (*(a3 + 2))
  {
    if (v11 == 8)
    {
      v12 = 64;
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_15;
      }

      v12 = 224;
    }
  }

  else
  {
    v12 = 160;
  }

  v13 = *(a3 + v12);
  if (!v13 || (v14 = *(v13 + 14), !*(v13 + 14)))
  {
LABEL_15:
    if (sub_10000C240())
    {
      sub_10000AF54("CONTINUE packet with no FIRST packet - discarding this CONTINUE packet");
      v16 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }
    }

    return;
  }

  if ((v14 + __len) <= 3)
  {
    memmove((v13 + v14 + 8), __src, __len);
    v15 = *(v13 + 14) + v9;
LABEL_14:
    *(v13 + 14) = v15;
    return;
  }

  if (v14 > 3)
  {
    LOWORD(v18) = *(v13 + 8);
    v21 = v14 - 4;
    v19 = *(v13 + 12);
    v22 = __len;
    goto LABEL_25;
  }

  v17 = 4 - v14;
  memmove((v13 + 8 + v14), __src, 4 - v14);
  v18 = *(v13 + 8);
  v19 = *(v13 + 12);
  if (v18 > v19)
  {
    if (!sub_10000C240())
    {
      goto LABEL_29;
    }

    sub_10000AF54("Length in L2CAP header %d exceeds MTU %d", v18, *(v13 + 12));
    v20 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v18 >= v9)
  {
    v21 = 0;
    v10 += v17;
    LOWORD(v9) = v9 - v17;
    v22 = v9;
LABEL_25:
    v23 = v22 + v21;
    if (v23 > v19)
    {
      if (!sub_10000C240())
      {
        goto LABEL_29;
      }

      sub_10000AF54("Received data %d exceeds exceeds buffer size %d", v23, *(v13 + 12));
      v24 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

LABEL_28:
      sub_10080F7A0();
      goto LABEL_29;
    }

    v25 = *(v13 + 10);
    v41 = 0;
    if (sub_1000ABC7C(v25, &v41) || (v37 = *(v41 + 48)) == 0)
    {
      memmove((*v13 + v21), v10, v9);
      v26 = 0;
      v27 = 1;
      if (!a5)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v40 = 0;
      v39 = 0;
      v38 = 0;
      if (sub_1000C0D40(v25, &v39, &v38, &v40) || v23 > v38)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received %d length data exceeding upper layer l2cap buffer size %d", v23, v38);
          v36 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return;
      }

      v35 = v37 + v21;
      v26 = v37;
      memmove(v35, v10, v9);
      v27 = 0;
      if (!a5)
      {
LABEL_34:
        if (v23 == v18)
        {
          *(v13 + 14) = 0;
          if (v27)
          {
            v28 = *v13;
            v29 = *(v13 + 16) != 0;
            v30 = v18;
            v31 = a3;
            v32 = v25;
          }

          else
          {
            v29 = *(v13 + 16) != 0;
            v30 = v18;
            v31 = a3;
            v32 = v25;
            v28 = v26;
          }

          sub_1000B13B4(v31, v32, v28, v30, v29, a6);
          goto LABEL_30;
        }

        if (v23 <= v18)
        {
          v15 = v23 + 4;
          goto LABEL_14;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Received data %d exceeds size in L2CAP header %d", v23, v18);
          v34 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

LABEL_29:
        *(v13 + 14) = 0;
LABEL_30:
        *(v13 + 16) = 0;
        return;
      }
    }

    *(v13 + 16) = 1;
    goto LABEL_34;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Packet size of %d exceeds the expected payload length %d", v9, v18);
    v33 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1000C0D40(unsigned int a1, _WORD *a2, _WORD *a3, _BYTE *a4)
{
  v11 = 0;
  v7 = sub_1000ABC7C(a1, &v11);
  if (v7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_L2CAP_getL2CAPChannelInfo Get Channel failed");
      v8 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v9 = v11;
    *a2 = *(v11 + 6);
    *a3 = *(*(v9 + 112) + 36);
    *a4 = *(sub_1000B12AC(v9) + 52);
  }

  return v7;
}

BOOL sub_1000C0E08(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FBE0; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

uint64_t sub_1000C0E38()
{
  v2 = 0;
  v0 = 0;
  while (sub_1000C08D0(&v2))
  {
    if (*(v2 + 124) == 7)
    {
      v0 = v0;
    }

    else
    {
      v0 = (v0 + 1);
    }
  }

  return v0;
}

uint64_t sub_1000C0E90()
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v0 = dword_100BCE0C0 == 2;
  }

  else
  {
    v0 = 0;
  }

  if (v0)
  {
    return word_100BCE180;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("OI_HCIAPI_GetTotalNumAclBuffers - not initialized");
    v2 = sub_10000C050(0x2Eu);
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100814AEC();
      return 0;
    }
  }

  return result;
}

void sub_1000C0F64(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100066098(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C10D8;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

uint64_t sub_1000C1030(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_100062A98(a1, v4, a2, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

void sub_1000C10E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 4080))(v3))
  {
    v4 = *(a1 + 17104);
    if (v4)
    {
      v5 = qword_100BCE9C8;
      if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v6 = (*(*v4 + 16))(v4), v7 = 136446210, v8 = v6, _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v7, 0xCu), (v4 = *(a1 + 17104)) != 0))
      {
        (*(*v4 + 8))(v4);
      }

      *(a1 + 17104) = 0;
      if (qword_100B50910 != -1)
      {
        sub_10086AEE8();
      }

      sub_10008D970(off_100B50908, 1);
    }
  }
}

uint64_t sub_1000C1254(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E388 != -1)
  {
    sub_100831328();
  }

  return byte_100B6E380;
}

void sub_1000C128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("multipleAdvStartCb Could not start advertising : %!", a1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 2;
  }

  sub_100092D80(a1, 0, byte_100B65344, a4, a5, a6, a7, a8);
}

uint64_t *sub_1000C1358(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

void sub_1000C13C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1000C141C(v2, v3);
}

void sub_1000C141C(uint64_t a1, unint64_t a2)
{
  sub_100066F74(16, a2);
  v4 = sub_10005D040(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    sub_100023D10(v4, a2);
    if (qword_100B51088 != -1)
    {
      sub_100823E14();
    }

    sub_100078364(qword_100B51080, a2);
    v6 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v5 + 88);
      v8 = *(v5 + 344);
      v9 = 138543618;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping scan for session %{public}@ - %llu advertisements delivered", &v9, 0x16u);
    }

    if (*(v5 + 24) == 1)
    {
      if (*(v5 + 96))
      {
        sub_100078BCC(a1);
      }
    }
  }
}

void sub_1000C154C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C13C8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000D334(v3, v4);
}

void sub_1000C1600(uint64_t a1)
{
  *a1 = &off_100B0C418;
  v3 = (a1 + 28);
  v2 = *(a1 + 28);
  if (v2)
  {
    v4 = IOPMAssertionRelease(v2);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = -536870206;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    v12 = *v3;
    *buf = 67109376;
    *&buf[4] = v12;
    LOWORD(v16) = 1024;
    *(&v16 + 2) = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to release assertionId: %d, return value was %d", buf, 0xEu);
    v5 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100872DBC(v3, v4, v5);
  }

  if (qword_100B53FE8 != -1)
  {
    sub_100872E48();
  }

  v6 = qword_100B53FE0;
  sub_100007E30(buf, "Assertion");
  sub_100007E30(__p, "FailedToReleaseAssertion");
  sub_1005780BC(v6, buf, __p, 0.0);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*buf);
  }

LABEL_15:
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  Current = CFAbsoluteTimeGetCurrent();
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  if (qword_100B512C8 != -1)
  {
    sub_100872D94();
  }

  *buf = v8;
  *&buf[4] = 1;
  v16 = v7;
  v17 = Current;
  v18 = v4;
  v19 = v10;
  v20 = 0;
  v21 = 0;
  v22 = v11;
  v23 = 0;
  sub_10008D9FC(off_100B512C0, buf);
}

void sub_1000C186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = byte_100B65344;
  v9 = &byte_100B65345[8 * byte_100B65344 - byte_100B65344];
  v10 = (&qword_100B61170[421 * byte_100B65344 + 417] + 6);
  *v9 = *v10;
  *(v9 + 3) = *(v10 + 3);
  if (byte_100B65339)
  {
    v23 = 0;
    v22 = 0;
    v21 = byte_100B6533A[v8];
    v11 = sub_100018960(207, sub_1000C128C, a3, a4, a5, a6, a7, a8, 1);
    if (!v11)
    {
      return;
    }

    v12 = v11;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to start advertising OI_HCI_CMD_LE_SetExtendedAdvertisingEnable returned %!", v12, 1, &v21, &v22, &v23);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v12 = sub_1002A48BC();
    if (!v12)
    {
      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("setAdvertisingSetAddressBeforeEnablingCB Could not start advertising : %!", v12);
    v19 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v20 = byte_100B65344;
  BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
  sub_100092D80(v12, 0, v20, v14, v15, v16, v17, v18);
}

void sub_1000C1A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1)
  {
LABEL_2:
    if (sub_10000C240())
    {
      sub_10000AF54("setLEAdvTxPowerIncreaseCB Could not start advertising : %!", v8);
      v14 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v15 = byte_100B65344;
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
    sub_100092D80(v8, 0, v15, v9, v10, v11, v12, v13);
    return;
  }

  v16 = byte_100B65344;
  if ((byte_100B660C0[byte_100B65344] & 1) == 0)
  {
    v17 = &qword_100B61170[421 * byte_100B65344];
    if (*(v17 + 3350) == 1 && *(v17 + 3341) == 1)
    {
      byte_100B660C0[byte_100B65344] = 1;
    }
  }

  v18 = &byte_100B65345[8 * v16 - v16];
  v19 = (&qword_100B61170[421 * v16 + 417] + 6);
  v20 = *v18;
  v21 = *(v18 + 3);
  if (v20 != *v19 || v21 != *(&qword_100B61170[421 * v16 + 418] + 1))
  {
    v23 = sub_1002B213C(v19, v16, sub_1000C186C, a4, a5, a6, a7, a8);
    if (!v23)
    {
      return;
    }

    v8 = v23;
    if (sub_10000C240())
    {
      sub_10000AF54("LE_UpdateMultiAdvertisingSetAddress returned %!", v8);
      v24 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_2;
  }

  sub_1000C186C(v19, v16, a3, a4, a5, a6, a7, a8);
}

void sub_1000C1BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("setMultipleAdvertisingScanRspDataCompleteCb Could not start advertising : %!", a1);
      v14 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v15 = byte_100B65344;
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
    sub_100092D80(a1, 0, v15, v9, v10, v11, v12, v13);
  }

  else if ((qword_100B61170[421 * byte_100B65344 + 418] & 0x1000000000000) != 0)
  {
    if ((byte_100B660C0[byte_100B65344] & 1) == 0)
    {
      v16 = byte_100B65338 <= byte_100B65344 ? 0 : byte_100B6533A[byte_100B65344];
      v17 = sub_1002A9EC0();
      if (v17)
      {
        v18 = v17;
        if (sub_10000C240())
        {
          sub_10000AF54("setLEAdvTxPowerIncrease cmd failed on handle %d returned %d", v16, v18);
          v19 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }

  else
  {

    sub_1000C1A10(0, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1000C1D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!a1)
  {
    v16 = &qword_100B61170[421 * byte_100B65344];
    if (*(v16 + 843) && !byte_100B65344)
    {
      if (byte_100B65339)
      {
        v20 = *(v16 + 843);
        v21 = v16 + 211;
        v17 = sub_100018960(206, sub_1000C1BA8, (v16 + 211), a4, a5, a6, a7, a8, byte_100B6533A[byte_100B65344]);
        if (!v17)
        {
          return;
        }

        v8 = v17;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCI_CMD_LE_SetExtendedScanResponseData returned %!", v8, 3, 1, v20, v21);
          v18 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else
      {
        v8 = sub_1002A4830();
      }

      if (HIWORD(qword_100B61170[421 * byte_100B65344 + 210]))
      {
        v19 = v8 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        if (!v8)
        {
          return;
        }

        goto LABEL_2;
      }
    }

    sub_1000C1BA8(0, a2, a3, a4, a5, a6, a7, a8);
    return;
  }

LABEL_2:
  if (sub_10000C240())
  {
    sub_10000AF54("setMultipleAdvertisingDataCompleteCb Could not start advertising : %!", v8);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v15 = byte_100B65344;
  BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
  sub_100092D80(v8, 0, v15, v9, v10, v11, v12, v13);
}

void sub_1000C1EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 || HIWORD(qword_100B61170[421 * byte_100B65344 + 3]) == WORD1(qword_100B61170[421 * byte_100B65344 + 210]) || (a1 = sub_1000C2610(a1, a2, a3, a4, a5, a6, a7, a8), a1))
  {

    sub_1000C1D2C(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1000C1F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100017F4C(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C1FC8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = v2;
  sub_10000CA94(v3, v4);
}

void sub_1000C1FC8(uint64_t a1)
{
  v25 = *(a1 + 32);
  *(v25 + 248) = 0;
  v1 = +[AVAudioSession sharedInstance];
  v2 = [v1 currentRoute];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v2;
  v3 = [v2 outputs];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = *v28;
  obj = v3;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v28 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v27 + 1) + 8 * i);
      v8 = [v7 portType];
      if ([v8 isEqualToString:AVAudioSessionPortBluetoothA2DP])
      {

LABEL_9:
        v13 = [v7 UID];
        v14 = [v13 componentsSeparatedByString:@"-"];

        v15 = [v14 firstObject];
        v16 = sub_100777FF4(v15);

        v17 = 1;
        goto LABEL_11;
      }

      v9 = [v7 portType];
      v10 = [v9 isEqualToString:AVAudioSessionPortBluetoothHFP];

      if (v10)
      {
        goto LABEL_9;
      }

      v17 = 0;
      v16 = 0;
LABEL_11:
      v18 = sub_10000F034(v11, v12);
      Current = CFAbsoluteTimeGetCurrent();
      (*(*v18 + 464))(v18, v17, v16, Current);
      v20 = [v7 portType];
      LODWORD(v18) = [v20 isEqualToString:AVAudioSessionPortBuiltInReceiver];

      if (v18)
      {
        v3 = obj;
        *(v25 + 248) = 1;
        goto LABEL_16;
      }
    }

    v3 = obj;
    v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v23 = sub_10000C7D0(v21, v22);
  (*(*v23 + 72))(v23, 1, *(v25 + 248));
}

uint64_t sub_1000C2318(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = *(result + 16);
    while (v3)
    {
      v4 = v3;
      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        *(v4 + 8) = *(a2 + 8);
        *(a2 + 8) = v2;
        *(result + 16) = a2;
        if (*(result + 24) == a2)
        {
          *(result + 24) = v4;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000C2364(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = *(a1 + 1124);
  if (result == 1)
  {
    *a2 = *(a1 + 1128);
    *a3 = *(a1 + 1132);
    *a4 = *(a1 + 1136);
    *a5 = *(a1 + 1140);
  }

  return result;
}

uint64_t sub_1000C2398(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 424);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000C23E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = a1 + 280;
  if (*(a1 + 303) < 0)
  {
    v5 = *(a1 + 288);
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (!*(a1 + 303))
  {
LABEL_5:
    v4 = a1 + 240;
    if ((*(a1 + 263) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 248);
LABEL_8:
    sub_100008904(a2, *v4, v5);
    return sub_1000088CC(v7);
  }

LABEL_6:
  *a2 = *v4;
  *(a2 + 16) = *(v4 + 16);
  return sub_1000088CC(v7);
}

void sub_1000C2484(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100008108(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1000C2558()
{
  if (qword_100B5B560 != -1)
  {
    sub_100812AD0();
  }

  if (!atomic_fetch_add(dword_100B5B430, 1u))
  {
    v0 = qword_100B5B438;

    dispatch_async(v0, &stru_100AE5348);
  }
}

void sub_1000C25C0(id a1)
{
  if (dword_100B5B440)
  {
    sub_1000D660C();
    v1 = vars8;
  }

  IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.BTStack", &dword_100B5B440);
}

uint64_t sub_1000C2610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &qword_100B61170[421 * byte_100B65344];
  v9 = *(v8 + 841);
  v10 = (*(v8 + 15) - v9);
  v11 = v10 > 0xFB;
  if (v10 >= 0xFB)
  {
    v12 = 251;
  }

  else
  {
    v12 = (*(v8 + 15) - v9);
  }

  LODWORD(v13) = 2 * (v10 < 0xFC);
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  if (*(v8 + 841))
  {
    v13 = v13;
  }

  else
  {
    v13 = v14;
  }

  v19 = v8 + v9 + 32;
  v18 = v13;
  v15 = sub_100018960(205, sub_1000C1EF0, a3, a4, a5, a6, a7, a8, byte_100B6533A[byte_100B65344]);
  if (v15)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCI_CMD_LE_SetExtendedAdvertisingData returned %!", v15, v18, 1, v12, v19);
      v16 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    WORD1(qword_100B61170[421 * byte_100B65344 + 210]) += v12;
  }

  return v15;
}

void sub_1000C2730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1)
  {
LABEL_2:
    if (sub_10000C240())
    {
      sub_10000AF54("setMultipleAdvParamsCompleteCb Could not start advertising : %!", v8);
      v14 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v15 = byte_100B65344;
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
    sub_100092D80(v8, 0, v15, v9, v10, v11, v12, v13);
    return;
  }

  v16 = &qword_100B61170[421 * byte_100B65344];
  if (!*(v16 + 15) || byte_100B65344 == 4 && (*(v16 + 1684) & 1) == 0)
  {

    sub_1000C1D2C(0, a2, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (!byte_100B65339)
  {
    if (*(v16 + 15) >= 0x20u)
    {
      sub_1000D660C();
    }

    v27 = sub_1002A47A4();
LABEL_26:
    v8 = v27;
    if (!v27)
    {
      return;
    }

    goto LABEL_2;
  }

  if (!*(v16 + 3355))
  {
    v27 = sub_1000C2610(a1, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_26;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("We are using DBAF! Sending Decision Ind Data instead.");
    v23 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v32 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
    }
  }

  v24 = &qword_100B61170[421 * byte_100B65344];
  v29 = *(v24 + 3357);
  v30 = v24[420];
  v28 = *(v24 + 3356);
  v25 = sub_100018960(258, sub_1002B4808, v17, v18, v19, v20, v21, v22, byte_100B6533A[byte_100B65344]);
  if (v25)
  {
    v8 = v25;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCI_CMD_LE_SetDecisionDataCommand returned %!", v8, v28, v29, v30);
      v26 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_2;
  }
}

void sub_1000C29D4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1000C2C34(a2, byte_100B65344);
  v11 = byte_100B65344;
  if (!byte_100B65344)
  {
    v12 = word_100B6118E;
    if (word_100B6118E >= 2uLL && word_100B6118E != 2)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = qword_100B61190[v14];
        if (v15 == 2 && qword_100B61190[v13 + 1] == 10)
        {
          v17 = &qword_100B61170[4] + (v13 + 2);
          goto LABEL_12;
        }

        v14 += v15 + 1;
        v13 = v14;
      }

      while (v14 < (word_100B6118E - 2));
      if (word_100B6118E > 0x1Bu)
      {
        goto LABEL_13;
      }
    }

    word_100B6118E += 3;
    *&qword_100B61190[v12] = 2562;
    v17 = &qword_100B61190[v12 + 2];
LABEL_12:
    *v17 = v2;
  }

LABEL_13:
  v18 = &qword_100B61170[421 * v11];
  if (!*(v18 + 3353) && !*(v18 + 3354) || (v19 = sub_100098124(), a1) || v19)
  {

    sub_1000C2730(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    v20 = sub_1002B226C(byte_100B6533A[byte_100B65344], BYTE1(qword_100B61170[421 * byte_100B65344 + 419]), BYTE2(qword_100B61170[421 * byte_100B65344 + 419]));
    if (v20)
    {

      sub_1002B480C(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_1000C2B58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 126, "void cmdComplete_ret_8_cb(OI_STATUS, void (*)(void), OI_BYTE_STREAM *)");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 5);
    v6 = *(a3 + 6);
    if (v5 != v6)
    {
      if (v5 > v6)
      {
        if (*(a3 + 14) == 1)
        {
          v9 = *a3;
          *(a3 + 6) = v6 + 1;
          v7 = *(v9 + v6);
          goto LABEL_7;
        }

        v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      else
      {
        v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 135, v10);
    }
  }

  v7 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v7);
}

void sub_1000C2C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100066098(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C5794;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

void sub_1000C2CC4(void *a1)
{
  v2 = a1[9];
  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  *(*(a1[4] + 8) + 24) = sub_100066A74(off_100B512F0, *(v2 + 128), a1[10]);
  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  operator new();
}

void sub_1000C3018(uint64_t a1)
{
  if (qword_100BC7CF8 != -1)
  {
    sub_100874610();
  }

  if (!*(a1 + 2224))
  {
    sub_100088DD4(2, 4, byte_100BC7CF0);
  }
}

uint64_t sub_1000C3138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (*(a1 + 32))
  {
    if (dword_100B50FA0 <= 30)
    {
      if (dword_100B50FA0 != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        sub_1000C31F0(a1, a2, a3);
      }
    }

    if (qword_100B51088 != -1)
    {
      sub_10080AA70();
    }

    sub_100078364(qword_100B51080, *(v3 + 32));
  }

  if (qword_100B50B88 != -1)
  {
    sub_10080AA84();
  }

  v4 = qword_100B50B80;
  v5 = *(v3 + 40);

  return sub_100079604(v4, v5);
}

BOOL sub_1000C320C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    v6[2](v6, v7);
  }

  sub_1000088CC(v9);

  return v7 != 0;
}

uint64_t sub_1000C32F0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 260);
}

uint64_t sub_1000C3340(uint64_t a1, char a2, uint64_t a3, __int16 a4, uint64_t a5, __int16 a6)
{
  result = (*(*a1 + 4152))(a1);
  if (result)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C34D8;
    v13[3] = &unk_100AF24B0;
    v16 = a2;
    v14 = a4;
    v13[4] = a3;
    v13[5] = a5;
    v15 = a6;
    return sub_10002173C(a1, 260, 1, v13, 0);
  }

  return result;
}

uint64_t sub_1000C3428(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = 101;
  if (a5 == 3 && a3 == 3 && a2 && a4)
  {
    if (off_100B60750)
    {
      v5 = off_100B60750(a1);
      if (!v5)
      {
        return v5;
      }
    }

    else
    {
      v5 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v5);
      v6 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v5;
}

uint64_t sub_1000C3500(char a1, const void *a2, unsigned int a3, const void *a4, unsigned int a5, void (*a6)())
{
  v38 = 0;
  v39 = 0;
  result = sub_10001FFD8(&v38);
  if (!result)
  {
    if (HIBYTE(v39))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3888, "OI_STATUS _BCM_LEMetaMatchingRulesEnhancedSetExtendedBlobAndMask(uint8_t, const uint8_t *, uint16_t, const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v13 = WORD2(v39);
      if (WORD1(v39) > WORD2(v39))
      {
        if (BYTE6(v39) == 2)
        {
          ++WORD2(v39);
          *(v38 + v13) = 91;
          if (HIBYTE(v39))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3889, "OI_STATUS _BCM_LEMetaMatchingRulesEnhancedSetExtendedBlobAndMask(uint8_t, const uint8_t *, uint16_t, const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v14 = WORD2(v39);
            if (WORD1(v39) > WORD2(v39))
            {
              if (BYTE6(v39) == 2)
              {
                ++WORD2(v39);
                *(v38 + v14) = a1;
                v15 = v38;
                v16 = WORD2(v39);
                if (HIBYTE(v39))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3890, "OI_STATUS _BCM_LEMetaMatchingRulesEnhancedSetExtendedBlobAndMask(uint8_t, const uint8_t *, uint16_t, const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
                  v17 = 0;
                }

                else
                {
                  v17 = WORD1(v39) - WORD2(v39);
                }

                if (v17 < a3)
                {
                  v34 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                }

                else
                {
                  if (BYTE6(v39) == 2)
                  {
                    memmove((v15 + v16), a2, a3);
                    v18 = WORD2(v39) + a3;
                    WORD2(v39) += a3;
                    v19 = v38;
                    if (HIBYTE(v39))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3891, "OI_STATUS _BCM_LEMetaMatchingRulesEnhancedSetExtendedBlobAndMask(uint8_t, const uint8_t *, uint16_t, const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
                      v20 = 0;
                    }

                    else
                    {
                      v20 = WORD1(v39) - v18;
                    }

                    v21 = 3 - a3;
                    if (v20 < v21)
                    {
                      v35 = "ByteStream_NumReadBytesAvail(bs) >= (3 - dataLen)";
                    }

                    else
                    {
                      if (BYTE6(v39) == 2)
                      {
                        bzero((v19 + v18), v21);
                        v22 = WORD2(v39) + v21;
                        WORD2(v39) = v22;
                        v23 = v38;
                        if (HIBYTE(v39))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3892, "OI_STATUS _BCM_LEMetaMatchingRulesEnhancedSetExtendedBlobAndMask(uint8_t, const uint8_t *, uint16_t, const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
                          v24 = 0;
                        }

                        else
                        {
                          v24 = WORD1(v39) - v22;
                        }

                        if (v24 < a5)
                        {
                          v36 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
                        }

                        else
                        {
                          if (BYTE6(v39) == 2)
                          {
                            memmove((v23 + v22), a4, a5);
                            v25 = WORD2(v39) + a5;
                            WORD2(v39) += a5;
                            v26 = v38;
                            if (HIBYTE(v39))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3893, "OI_STATUS _BCM_LEMetaMatchingRulesEnhancedSetExtendedBlobAndMask(uint8_t, const uint8_t *, uint16_t, const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
                              v27 = 0;
                            }

                            else
                            {
                              v27 = WORD1(v39) - v25;
                            }

                            v28 = 3 - a5;
                            if (v27 < v28)
                            {
                              v37 = "ByteStream_NumReadBytesAvail(bs) >= (3 - maskLen)";
                            }

                            else
                            {
                              if (BYTE6(v39) == 2)
                              {
                                bzero((v26 + v25), v28);
                                WORD2(v39) += v28;
                                return sub_100020078(233, v38, BYTE4(v39), a6, sub_100022AD0, v29, v30, v31);
                              }

                              v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            }

                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3893, v37);
                          }

                          v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3892, v36);
                      }

                      v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3891, v35);
                  }

                  v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3890, v34);
              }

              v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3889, v33);
            }
          }

          v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_37;
        }

        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3888, v32);
      }
    }

    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_33;
  }

  return result;
}

void sub_1000C38C8(uint64_t a1)
{
  *(a1 + 176) = 0;
  sub_1000C39CC(a1);
  if (qword_100B508B0 != -1)
  {
    sub_10082366C();
  }

  v2 = sub_100029630(off_100B508A8);
  if ([v2 count])
  {

LABEL_6:

    sub_1000C51E4(a1, v3);
    return;
  }

  v4 = [*(a1 + 328) count];

  if (v4)
  {
    goto LABEL_6;
  }

  v5 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Stopping device disconnection watchdog, as there are no more devices connected", v6, 2u);
  }
}

void sub_1000C39CC(uint64_t a1)
{
  v1 = +[NSMutableSet set];
  if ((*(a1 + 180) & 1) == 0)
  {
    v83 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Stack is shutting down, unused devices will be cleaned up", buf, 2u);
    }

    goto LABEL_163;
  }

  v2 = *(a1 + 224);
  v85 = (a1 + 232);
  if (v2 != (a1 + 232))
  {
    while (1)
    {
      v87 = v2;
      v3 = (*(*v2[5] + 16))(v2[5]);
      v4 = v87[5];
      if (!v3)
      {
        break;
      }

      if ((*(*v4 + 2))(v4) == 1)
      {
        v5 = v87[5];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v89 = v5;
        v6 = *(v5 + 192);
        v7 = [v6 countByEnumeratingWithState:&v119 objects:v142 count:16];
        if (v7)
        {
          v88 = *v120;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v120 != v88)
              {
                objc_enumerationMutation(v6);
              }

              v9 = [*(v89 + 192) objectForKeyedSubscript:{*(*(&v119 + 1) + 8 * i), v85}];
              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v10 = v9;
              v11 = [v10 countByEnumeratingWithState:&v115 objects:v141 count:16];
              if (v11)
              {
                v12 = *v116;
                do
                {
                  for (j = 0; j != v11; j = j + 1)
                  {
                    if (*v116 != v12)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v14 = *(*(&v115 + 1) + 8 * j);
                    v15 = [v10 objectForKey:v14];
                    [v15 timeIntervalSinceNow];
                    if (v16 >= -30.0)
                    {
                      [v1 addObject:v14];
                    }
                  }

                  v11 = [v10 countByEnumeratingWithState:&v115 objects:v141 count:16];
                }

                while (v11);
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v119 objects:v142 count:16];
          }

          while (v7);
        }

LABEL_32:
      }

      v24 = v87;
      v25 = v87[1];
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
          v26 = v24[2];
          v27 = *v26 == v24;
          v24 = v26;
        }

        while (!v27);
      }

      v2 = v26;
      if (v26 == v85)
      {
        goto LABEL_39;
      }
    }

    v17 = v4[28];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v6 = v17;
    v18 = [v6 countByEnumeratingWithState:&v123 objects:v143 count:16];
    if (v18)
    {
      v19 = *v124;
      do
      {
        for (k = 0; k != v18; k = k + 1)
        {
          if (*v124 != v19)
          {
            objc_enumerationMutation(v6);
          }

          v21 = *(*(&v123 + 1) + 8 * k);
          v22 = [v6 objectForKeyedSubscript:{v21, v85}];
          v23 = [v22 opportunistic];

          if ((v23 & 1) == 0)
          {
            [v1 addObject:v21];
          }
        }

        v18 = [v6 countByEnumeratingWithState:&v123 objects:v143 count:16];
      }

      while (v18);
    }

    goto LABEL_32;
  }

LABEL_39:
  if (qword_100B541E8 != -1)
  {
    sub_100823970();
  }

  v28 = sub_1000C4B1C(qword_100B541E0);
  [v1 addObjectsFromArray:v28];

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  if (qword_100B53FD8 != -1)
  {
    sub_100823998();
  }

  v29 = sub_1000C4C60(qword_100B53FD0);
  v30 = [v29 countByEnumeratingWithState:&v111 objects:v140 count:16];
  if (v30)
  {
    v31 = *v112;
    do
    {
      v32 = 0;
      do
      {
        if (*v112 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v111 + 1) + 8 * v32);
        __p[0] = 0;
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v34 = off_100B508A8;
        sub_10004DFB4(buf, v33);
        if (sub_1000C4FCC(v34, buf, __p))
        {
          LOBYTE(v98) = 0;
          sub_1000216B4(&v98);
          if (sub_1000BE280(__p[0]))
          {
            v35 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              *&buf[4] = v33;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Skipping LE L2CAP device %{public}@", buf, 0xCu);
            }

            [v1 addObject:{v33, v85}];
          }

          sub_10002249C(&v98);
        }

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [v29 countByEnumeratingWithState:&v111 objects:v140 count:16];
    }

    while (v30);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  if (qword_100B540F0 != -1)
  {
    sub_1008239C0();
  }

  v36 = sub_1000C4DA4(qword_100B540E8);
  v37 = [v36 countByEnumeratingWithState:&v107 objects:v139 count:16];
  if (v37)
  {
    v38 = *v108;
    do
    {
      v39 = 0;
      do
      {
        if (*v108 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v107 + 1) + 8 * v39);
        __p[0] = 0;
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v41 = off_100B508A8;
        sub_10004DFB4(buf, v40);
        if (sub_1000C4FCC(v41, buf, __p))
        {
          LOBYTE(v98) = 0;
          sub_1000216B4(&v98);
          if (sub_1000BE280(__p[0]))
          {
            v42 = sub_1001974A0(__p[0]);
            v43 = qword_100BCE988;
            v44 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO);
            if (v42)
            {
              if (v44)
              {
                *buf = 138543362;
                *&buf[4] = v40;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "disconnecting device device %{public}@ since its scalable pipes are idle", buf, 0xCu);
              }
            }

            else
            {
              if (v44)
              {
                *buf = 138543362;
                *&buf[4] = v40;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Skipping scalable pipe device %{public}@ since it is still active", buf, 0xCu);
              }

              [v1 addObject:{v40, v85}];
            }
          }

          sub_10002249C(&v98);
        }

        v39 = v39 + 1;
      }

      while (v37 != v39);
      v37 = [v36 countByEnumeratingWithState:&v107 objects:v139 count:16];
    }

    while (v37);
  }

  if (qword_100B50F78 != -1)
  {
    sub_1008239E8();
  }

  v45 = sub_1000C505C(qword_100B50F70);
  [v1 addObjectsFromArray:v45];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_100823824();
  }

  v46 = sub_1000C5064(off_100B508A8);
  v47 = [v46 countByEnumeratingWithState:&v103 objects:v138 count:16];
  if (v47)
  {
    v48 = *v104;
    do
    {
      v49 = 0;
      do
      {
        if (*v104 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v103 + 1) + 8 * v49);
        if (([v1 containsObject:{v50, v85}] & 1) == 0)
        {
          if (qword_100B508B0 != -1)
          {
            sub_100823824();
          }

          v51 = off_100B508A8;
          sub_10004DFB4(buf, v50);
          sub_10074CD90(v51, buf, 0);
        }

        v49 = v49 + 1;
      }

      while (v47 != v49);
      v47 = [v46 countByEnumeratingWithState:&v103 objects:v138 count:16];
    }

    while (v47);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_100823824();
  }

  v52 = sub_100029630(off_100B508A8);
  v53 = [v52 countByEnumeratingWithState:&v99 objects:v137 count:16];
  if (!v53)
  {
    goto LABEL_144;
  }

  v54 = *v100;
  while (2)
  {
    v55 = 0;
    do
    {
      if (*v100 != v54)
      {
        objc_enumerationMutation(v52);
      }

      v56 = *(*(&v99 + 1) + 8 * v55);
      if (([v1 containsObject:{v56, v85}] & 1) == 0)
      {
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v57 = off_100B508A8;
        sub_10004DFB4(buf, v56);
        if (sub_1000501F8(v57, buf) == 1)
        {
          v98 = 0;
          sub_1000D42DC(&v98, 0);
          if (qword_100B508D0 != -1)
          {
            sub_100823A10();
          }

          v58 = sub_100786988(off_100B508C8, v56) + word_100B541D8;
          v59 = qword_100BCE988;
          v60 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
          if (v60)
          {
            v62 = v98;
            if (qword_100B508D0 != -1)
            {
              sub_100823A10();
            }

            v63 = sub_100786988(off_100B508C8, v56);
            *buf = 138544386;
            *&buf[4] = v56;
            v129 = 1024;
            v130 = v58;
            v131 = 1024;
            v132 = v62;
            v133 = 1024;
            v134 = v63;
            v135 = 1024;
            v136 = word_100B541D8;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is unused, graceTime=%d curSecs=%d lastConnected=%d fConnectionGracePeriod=%d", buf, 0x24u);
          }

          v64 = v58 - v98;
          if (v58 >= v98)
          {
            v68 = qword_100BCE988;
            if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
            {
              goto LABEL_142;
            }

            *buf = 138543618;
            *&buf[4] = v56;
            v129 = 1024;
            v130 = v64;
            v69 = v68;
            v70 = "Device %{public}@ is unused, but is within the grace period for %d more seconds - skipping";
            v71 = 18;
LABEL_130:
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, v70, buf, v71);
            goto LABEL_142;
          }

          v65 = sub_10000C798(v60, v61);
          if ((*(*v65 + 368))(v65))
          {
            __p[0] = 0;
            if (qword_100B508B0 != -1)
            {
              sub_100823824();
            }

            v66 = off_100B508A8;
            sub_10004DFB4(buf, v56);
            if (sub_1000C4FCC(v66, buf, __p))
            {
              v97 = 0;
              sub_1000216B4(&v97);
              if (sub_1001990A4(__p[0]))
              {
                if (qword_100B508C0 != -1)
                {
                  sub_100823A38();
                }

                if (sub_10004EE74(off_100B508B8, v56))
                {
                  v67 = qword_100BCE988;
                  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543362;
                    *&buf[4] = v56;
                    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Device %{public}@ is unused, but is in the middle of pipe negotiaion - skipping", buf, 0xCu);
                  }

                  sub_10002249C(&v97);
                  goto LABEL_142;
                }
              }

              sub_10002249C(&v97);
            }
          }
        }

        if (qword_100B508C0 != -1)
        {
          sub_100823A38();
        }

        if (sub_1007C32DC(off_100B508B8, v56))
        {
          v72 = qword_100BCE988;
          if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
          {
            goto LABEL_142;
          }

          *buf = 138543362;
          *&buf[4] = v56;
          v69 = v72;
          v70 = "Device %{public}@ is unused, but is in the middle of pairing - skipping";
          v71 = 12;
          goto LABEL_130;
        }

        v73 = sub_10000E92C();
        if ((*(*v73 + 8))(v73))
        {
          LOBYTE(v98) = 0;
          v74 = sub_10000E92C();
          sub_100007E30(buf, "CATT");
          sub_100007E30(__p, "DisableLEGraceTimer");
          (*(*v74 + 72))(v74, buf, __p, &v98);
          if (v96 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v132) < 0)
          {
            operator delete(*buf);
          }

          if (v98 == 1)
          {
            v84 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v56;
              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Grace timer disabled for LE devices, not disconnecting %{public}@", buf, 0xCu);
            }

            goto LABEL_163;
          }
        }

        v75 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v56;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Disconnecting GATT for unused LE device %{public}@", buf, 0xCu);
        }

        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v76 = off_100B508A8;
        sub_10004DFB4(buf, v56);
        sub_10074CD90(v76, buf, 1);
      }

LABEL_142:
      v55 = v55 + 1;
    }

    while (v53 != v55);
    v53 = [v52 countByEnumeratingWithState:&v99 objects:v137 count:16];
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_144:

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v77 = *(a1 + 328);
  v78 = [v77 countByEnumeratingWithState:&v91 objects:v127 count:16];
  if (v78)
  {
    v79 = *v92;
    do
    {
      v80 = 0;
      do
      {
        if (*v92 != v79)
        {
          objc_enumerationMutation(v77);
        }

        v81 = *(*(&v91 + 1) + 8 * v80);
        if (([v1 containsObject:{v81, v85}] & 1) == 0)
        {
          if (qword_100B508D0 != -1)
          {
            sub_100823A10();
          }

          v82 = sub_100046458(off_100B508C8, v81, 0);
          if (qword_100B50AC0 != -1)
          {
            sub_100823A60();
          }

          v90[0] = _NSConcreteStackBlock;
          v90[1] = 3221225472;
          v90[2] = sub_1003BD94C;
          v90[3] = &unk_100AE1200;
          v90[4] = v81;
          v90[5] = v82;
          sub_100592E70(off_100B50AB8, v90);
        }

        v80 = v80 + 1;
      }

      while (v78 != v80);
      v78 = [v77 countByEnumeratingWithState:&v91 objects:v127 count:16];
    }

    while (v78);
  }

LABEL_163:
}

void sub_1000C4ACC(id a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000D5C5C();
  }

  v2 = off_100B512F0;

  sub_1000C38C8(v2);
}

id sub_1000C4B1C(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 40);
  v3 = *(a1 + 408);
  v4 = (a1 + 416);
  if (v3 != (a1 + 416))
  {
    do
    {
      v6 = v3[5];
      v5 = v3[6];
      while (v6 != v5)
      {
        if (*(v6 + 16))
        {
          v7 = sub_10004DF60(v6);
          [v2 addObject:v7];

          v5 = v3[6];
        }

        v6 += 18;
      }

      v8 = v3[1];
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
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  v11 = [v2 allObjects];
  sub_1000088CC(v13);

  return v11;
}

void sub_1000C4C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_1000C4C60(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v3 = *(a1 + 24);
  v4 = (a1 + 32);
  if (v3 != (a1 + 32))
  {
    do
    {
      v5 = v3[5];
      if (*(v5 + 40) == 1)
      {
        v7 = *(v5 + 8);
        v6 = *(v5 + 16);
        while (v7 != v6)
        {
          v8 = *v7;
          v9 = *(*v7 + 120);
          if (v9 != *(*v7 + 128))
          {
            do
            {
              v10 = sub_10004DF60((v9 + 2));
              [v2 addObject:v10];

              v9 += 26;
            }

            while (v9 != *(v8 + 128));
            v6 = *(v5 + 16);
          }

          ++v7;
        }
      }

      v11 = v3[1];
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
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != v4);
  }

  v14 = [v2 allObjects];

  return v14;
}

id sub_1000C4DA4(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 80);
  v3 = *(a1 + 144);
  v4 = (a1 + 152);
  if (v3 != (a1 + 152))
  {
    do
    {
      v5 = v3[5];
      for (i = *(v5 + 32); i != *(v5 + 40); ++i)
      {
        v7 = *i;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = *(v7 + 40);
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = [*(*(&v18 + 1) + 8 * j) identifier];
              [v2 addObject:v12];
            }

            v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
          }

          while (v9);
        }
      }

      v13 = v3[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }

  v16 = [v2 allObjects];
  sub_1000088CC(v22);

  return v16;
}

void sub_1000C4F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

BOOL sub_1000C4FCC(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v6 = sub_10004E34C(a1 + 384, a2);
  if (a1 + 392 != v6)
  {
    *a3 = *(v6 + 48);
  }

  v7 = a1 + 392 != v6;
  sub_1000088CC(v9);
  return v7;
}

id sub_1000C5064(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 120);
  v3 = *(a1 + 336);
  if (v3 != (a1 + 344))
  {
    do
    {
      v4 = sub_10004DF60(v3 + 25);
      [v2 addObject:v4];

      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (a1 + 344));
  }

  v8 = [*(a1 + 752) allObjects];
  [v2 addObjectsFromArray:v8];

  v9 = [*(a1 + 768) allObjects];
  [v2 addObjectsFromArray:v9];

  v10 = [*(a1 + 760) allObjects];
  [v2 addObjectsFromArray:v10];

  sub_1000088CC(v12);

  return v2;
}

void sub_1000C51A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1000C51E4(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 176) & 1) == 0)
  {
    v3 = sub_100007EE8(a1, a2);
    sub_10008E008(v3, 5000, &stru_100AF05C8);
    *(a1 + 176) = 1;
  }
}

void sub_1000C522C(uint64_t a1, unsigned __int16 a2)
{
  if (qword_100B5C8D8)
  {
    Count = CFSetGetCount(qword_100B5C8D8);
    if (&lockdown_copy_checkin_info)
    {
      if (Count >= 1)
      {
        v5 = a1;
        v6 = a2;
        CFSetApplyFunction(qword_100B5C8D8, sub_1001C5500, &v5);
        if (BYTE2(v6) == 1)
        {
          sub_1001C37FC();
        }
      }
    }
  }

  if (qword_100B5C8E0)
  {
    if (CFSetGetCount(qword_100B5C8E0) >= 1)
    {
      v5 = a1;
      v6 = a2;
      CFSetApplyFunction(qword_100B5C8E0, sub_1001C5550, &v5);
    }
  }
}

void sub_1000C52F4(uint64_t a1)
{
  sub_1000E771C(a1);
  sub_1001BA814(a1);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = has_internal_diagnostics;
  v5 = sub_10009B9DC(has_internal_diagnostics, v4);
  if ((a1 - 1205) <= 1 && v5 == 6 || ((v7 = sub_10009B9DC(v5, v6), a1 == 162) ? (v8 = v7 == 9) : (v8 = 0), !v8 ? (v9 = 0) : (v9 = 1), a1 == 1214 || v9))
  {
    if (v3)
    {
      sub_100304AF8("Bluetooth fatal error - crashing { build=internal, reason=%d, description=%! }", a1, a1);
    }

    else
    {
      sub_100304AF8("Bluetooth fatal error - crashing { build=release, reason=%d }");
    }

    sub_1001C3FC8();
    sub_100304AF8("OI_FatalError: ID !! (ID %d)\n", dword_100BC922D);
    sub_100304AF8("OI_FatalError: PC !!(PC 0x%x)\n", dword_100BC9241);
    sub_100304AF8("OI_FatalError: LR !!(LR0 0x%x, LR1 0x%x, LR2 0x%x, LR3 0x%x)\n", dword_100BC9245, dword_100BC9249, dword_100BC924D, dword_100BC9251[0]);
    sub_100304AF8("OI_FatalError: MAC Version !! (%d.%d.%d.%d)\n", word_100BC921D, word_100BC921F, word_100BC9221, word_100BC9223);
    sub_100304AF8("OI_FatalError: PHY Version !!( %d.%d.%d.%d)\n", word_100BC9225, word_100BC9227, word_100BC9229, word_100BC922B);
    if (a1 == 162)
    {
      if (sub_10009B9DC(v16, v17) != 9)
      {
LABEL_23:
        abort_with_payload();
        goto LABEL_24;
      }

      v18 = "Proxima";
      v19 = "InvalidACLDataLength";
      v20 = 60.0;
    }

    else
    {
      v18 = "Marconi";
      v19 = "BluetoothChip";
      v20 = 0.0;
    }

    sub_10057930C(v18, v19, v20);
    goto LABEL_23;
  }

  sub_1001C3FC8();
  if (!v3)
  {
LABEL_24:
    v21 = _os_log_pack_size();
    v22 = &v27 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v21, *v23, &_mh_execute_header, "Bluetooth fatal error - crashing { build=release, reason=%d }", v27);
    *v24 = 67109120;
    v24[1] = a1;
    goto LABEL_25;
  }

  v10 = _os_log_pack_size();
  v11 = &v27 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __error();
  v13 = _os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "Bluetooth fatal error - crashing { build=internal, reason=%d, description=%{public}s }");
  sub_1000CDD74(a1);
  v15 = "?";
  if (v14)
  {
    v15 = v14;
  }

  *v13 = 67109378;
  *(v13 + 4) = a1;
  *(v13 + 8) = 2082;
  *(v13 + 10) = v15;
LABEL_25:
  os_log_create("com.apple.bluetooth", "CBCrash");
  qword_100B55118 = os_log_pack_send_and_compose();
  v25 = abort_with_payload();
  [(CBStackBLEScannerBTStack *)v25 .cxx_destruct];
}

const char *sub_1000C572C(const char *result)
{
  if (byte_100BC7CC5 == 1)
  {
    v1 = result;
    v2 = 0;
    sub_1000216B4(&v2);
    sub_1001C429C(v1);
    return sub_10002249C(&v2);
  }

  return result;
}

uint64_t sub_1000C5794(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C5860;
  v5[3] = &unk_100AF6B10;
  v5[4] = v1;
  sub_100028B38(v3, 100, v5);
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_10082DB70();
  }

  result = *v2;
  if (*v2)
  {
    operator delete();
  }

  return result;
}

id sub_1000C5860(uint64_t a1)
{
  v11[0] = @"ProcessingMsec";
  v2 = a1 + 32;
  v3 = [NSNumber numberWithUnsignedInt:**(a1 + 32)];
  v12[0] = v3;
  v11[1] = @"XPCMsec";
  v4 = [NSNumber numberWithUnsignedInt:*(*v2 + 4)];
  v12[1] = v4;
  v11[2] = @"ScanPrepMsec";
  v5 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v12[2] = v5;
  v11[3] = @"SyncMsec";
  v6 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v12[3] = v6;
  v11[4] = @"HandlingMsec";
  v7 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v12[4] = v7;
  v11[5] = @"TotalMsec";
  v8 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  v12[5] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

void sub_1000C5A64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  v4 = *(a1 + 56);
  if (v3 == 0.0)
  {
    if (*(a1 + 56))
    {
      *(v2 + 168) = *(a1 + 48);
      *(v2 + 144) = v4;
      *(v2 + 152) = *(a1 + 40);
    }
  }

  else if (*(a1 + 56) && *(v2 + 152) == *(a1 + 40))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      sub_10082DA48();
    }
  }

  else
  {
    *(v2 + 160) = v4;
    v5 = *(a1 + 48);
    v6 = [NSMutableString stringWithString:@"AudioRouteTransition"];
    v7 = v6;
    v8 = @"fromBTtoNonBT";
    if (*(v2 + 160) == 1 && *(v2 + 144))
    {
      v8 = @"fromBTtoBT";
    }

    [v6 appendString:v8];
    v9 = v5 - v3;
    if (v5 - v3 <= 0.0 || v9 > 5.0)
    {
      if (v9 <= 5.0 || v9 > 10.0)
      {
        if (v9 > 60.0 || v9 <= 10.0)
        {
          v13 = @"over60seconds";
        }

        else
        {
          v13 = @"within10to60seconds";
        }
      }

      else
      {
        v13 = @"within5to10seconds";
      }
    }

    else
    {
      v13 = @"within0to5seconds";
    }

    [v7 appendString:v13];
    v14 = *(v2 + 360);
    v15 = [v14 objectForKey:v7];
    v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 intValue] + 1);
    [v14 setObject:v16 forKey:v7];

    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [*(v2 + 360) description];
      sub_10082D9F0(v18, v19, v17);
    }

    if (*(a1 + 56) == 1)
    {
      *(v2 + 144) = 1;
      *(v2 + 152) = *(a1 + 40);
      *(v2 + 160) = 0;
      *(v2 + 168) = *(a1 + 48);
    }

    else
    {
      *(v2 + 144) = 0u;
      *(v2 + 160) = 0u;
    }
  }
}

uint64_t sub_1000C5CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(a1 + 1832);
  if (v6 == (a1 + 1840))
  {
LABEL_13:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v7 = *(v6 + 28) != a2 || *(v6 + 16) == 0;
      if (!v7)
      {
        break;
      }

      v8 = v6[1];
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
          v9 = v6[2];
          v7 = *v9 == v6;
          v6 = v9;
        }

        while (!v7);
      }

      v6 = v9;
      if (v9 == (a1 + 1840))
      {
        goto LABEL_13;
      }
    }

    v10 = *(v6 + 15);
  }

  v11 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v34 = v10;
    *buf = &v34;
    v12 = *(sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, buf) + 28);
    v33 = v10;
    *buf = &v33;
    v13 = *(sub_1000BED44(a1 + 1832, &v33, &unk_1008A9BD0, buf) + 16) != 0;
    v32 = v10;
    *buf = &v32;
    v14 = *(sub_1000BED44(a1 + 1832, &v32, &unk_1008A9BD0, buf) + 17) != 0;
    *buf = 67110144;
    *&buf[4] = v10;
    v36 = 1024;
    v37 = v12;
    v38 = 1024;
    *v39 = v3;
    *&v39[4] = 1024;
    *&v39[6] = v13;
    v40 = 1024;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "enableMatchTable handle:%d type:%d enable=%d created=%d enabled=%d", buf, 0x20u);
  }

  if (v10 < 0x100 || v10 >= *(a1 + 1818))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008753BC();
    }

    return 7;
  }

  else
  {
    v34 = v10;
    *buf = &v34;
    if (*(sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, buf) + 16))
    {
      v34 = v10;
      *buf = &v34;
      v15 = (*(sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, buf) + 17) != 0) ^ v3;
      v16 = qword_100BCE918;
      v17 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (v17)
        {
          v34 = v10;
          *buf = &v34;
          v19 = *(sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, buf) + 28);
          v20 = "pausing";
          *buf = 67109634;
          *&buf[4] = v10;
          if (v3)
          {
            v20 = "activating";
          }

          v36 = 1024;
          v37 = v19;
          v38 = 2082;
          *v39 = v20;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Match Table handle:%d type:%d mode change -> %{public}s ", buf, 0x18u);
        }

        v21 = sub_10000C7D0(v17, v18);
        v22 = (*(*v21 + 3408))(v21, v10, 1, v3 ^ 1u);
        v23 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v34 = v10;
          *buf = &v34;
          v24 = *(sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, buf) + 28);
          *buf = 67109632;
          *&buf[4] = v10;
          v36 = 1024;
          v37 = v24;
          v38 = 1024;
          *v39 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Match Table handle:%d type:%d advBufMatchControl returned %d", buf, 0x14u);
        }

        if (v22)
        {
          v25 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
          {
            v34 = v10;
            *buf = &v34;
            v26 = *(sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, buf) + 28);
            *buf = 67109632;
            *&buf[4] = v10;
            v36 = 1024;
            v37 = v26;
            v38 = 1024;
            *v39 = v22;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Match Table handle:%d type:%d Failed to enable match table : %d", buf, 0x14u);
          }
        }

        else
        {
          v34 = v10;
          *buf = &v34;
          *(sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, buf) + 17) = v3;
        }

        sub_1000C71BC(a1, v4, v3);
      }

      else
      {
        if (v17)
        {
          v34 = v10;
          *buf = &v34;
          v29 = *(sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, buf) + 28);
          v30 = "paused";
          *buf = 67109634;
          *&buf[4] = v10;
          if (v3)
          {
            v30 = "active";
          }

          v36 = 1024;
          v37 = v29;
          v38 = 2082;
          *v39 = v30;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Match Table handle:%d type:%d already %{public}s", buf, 0x18u);
        }

        return 0;
      }
    }

    else
    {
      v28 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        v34 = v10;
        *buf = &v34;
        v31 = *(sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, buf) + 28);
        *buf = 67109376;
        *&buf[4] = v10;
        v36 = 1024;
        v37 = v31;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Match Table handle:%d type:%d not created", buf, 0xEu);
      }

      return 12;
    }
  }

  return v22;
}

uint64_t sub_1000C62E8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 114);
}

uint64_t sub_1000C6338(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", a1);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 255;
    goto LABEL_12;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 490, "void _BCM_MatchTableExtFilterConfigEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_19;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_19:
    v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_21;
  }

  if (*(a3 + 14) != 1)
  {
    v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_21:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 490, v11);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  if (v6 == 12)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

    return a2(result);
  }

LABEL_12:
  if (sub_10000C240())
  {
    sub_10000AF54("SubOpcode Incorrect %x!", v6);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  result = 101;
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_1000C6490(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  if (a2)
  {
    v4 = 7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100874C30();
    }

    v4 = 3;
  }

  v5 = sub_1000C7D9C(a1, a2, 1u, &v35);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874C6C();
    }

    return v6;
  }

  v7 = v35;
  v36 = v35;
  *buf = &v36;
  v8 = sub_1000BED44(a1 + 1832, &v36, &unk_1008A9BD0, buf);
  v33 = *(v8 + 15);
  v31 = *(v8 + 29);
  v32 = *(v8 + 17);
  v9 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v7;
    *&buf[8] = 1024;
    *&buf[10] = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating an AOP match table with handle %d for type %d", buf, 0xEu);
  }

  if (a2 == 22)
  {
    if (qword_100BC7D30 != -1)
    {
      sub_100874CFC();
    }

    _os_feature_enabled_impl();
    v10 = 0;
  }

  else
  {
    v11 = _os_feature_enabled_impl();
    v10 = a2 == 16;
    if (a2 == 16)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12 == 1)
    {
      if (qword_100BC7D38 != -1)
      {
        sub_100874CD4();
      }

      v10 = 1;
    }
  }

  v30 = v10;
  if (qword_100B51098 != -1)
  {
    sub_1008746E4();
  }

  v13 = sub_1000C6B04(qword_100B51090, a2);
  v15 = v13;
  if (a2 == 22 && *(a1 + 1880) == 0.0)
  {
    v13 = +[NSDate timeIntervalSinceReferenceDate];
    *(a1 + 1880) = v16;
  }

  v17 = sub_10000C7D0(v13, v14);
  v18 = (*(*v17 + 3384))(v17, v7, v4, 255, 76, a2, 0, 1, v15, 0, 0, 0, 0, 0);
  v6 = v18;
  if (v18)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874D24();
    }

    return v6;
  }

  *buf = 0u;
  v56 = 0u;
  memset(v57, 0, sizeof(v57));
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  buf[6] = 2;
  v20 = sub_10000C7D0(v18, v19);
  v6 = (*(*v20 + 3432))(v20, v7, 0, 0, buf);
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874D94();
    }

    return v6;
  }

  if (a2 <= 14)
  {
    if (!a2)
    {
      v21 = 2;
      goto LABEL_45;
    }

    if (a2 == 7)
    {
      v21 = 4;
      goto LABEL_45;
    }

LABEL_44:
    v21 = 0;
    goto LABEL_45;
  }

  if (a2 == 15)
  {
    v21 = 8;
    goto LABEL_45;
  }

  if (a2 == 16)
  {
    v21 = 16;
    goto LABEL_45;
  }

  if (a2 != 22)
  {
    goto LABEL_44;
  }

  v21 = 1;
LABEL_45:
  v34 = v33;
  v37 = &v34;
  v22 = sub_1000BED44(a1 + 1832, &v34, &unk_1008A9BD0, &v37);
  *(v22 + 28) = a2;
  *(v22 + 29) = v31;
  *(v22 + 15) = v33;
  *(v22 + 16) = 1;
  *(v22 + 17) = v32;
  *(v22 + 18) = 1;
  *(v22 + 19) = v21;
  v23 = *(a1 + 1872);
  if (!(v23 & 1 | (a2 != 22)))
  {
    if (qword_100B51098 != -1)
    {
      sub_1008746E4();
    }

    v42[1] = @"descriptor";
    v43[0] = &off_100B33C60;
    v42[0] = @"type";
    v40 = @"conf";
    v24 = qword_100B51090;
    v38[0] = @"appleType";
    v38[1] = @"payloadLengthLimits";
    v39[0] = &off_100B33C78;
    v39[1] = &off_100B346A8;
    v39[2] = &off_100B33CC0;
    v38[2] = @"pktSize";
    v38[3] = @"numLines";
    v25 = [NSNumber numberWithInt:40];
    v39[3] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
    v41 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v43[1] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
    sub_10048A1BC(v24, v28);

    v23 = *(a1 + 1872) | 1;
    *(a1 + 1872) = v23;
  }

  if (((!v30 | ((v23 & 0x10) >> 4)) & 1) == 0 && _os_feature_enabled_impl())
  {
    if (qword_100B51098 != -1)
    {
      sub_1008746E4();
    }

    sub_10048A1BC(qword_100B51090, &off_100B34518);
    *(a1 + 1872) |= 0x10u;
  }

  return v6;
}

uint64_t sub_1000C6B04(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v5 = 0.0;
  sub_1000C6B88(a1, a2, &v5, &v4);
  if (sub_1000C0430((a1 + 112), &v6))
  {
    v7 = &v6;
    *(sub_1000C04E8((a1 + 112), &v6, &unk_1008A9BD0, &v7) + 28) = 0;
  }

  return rintf(v5);
}

_DWORD *sub_1000C6B88(uint64_t a1, unsigned __int8 a2, _DWORD *a3, _DWORD *a4)
{
  v9 = a2;
  result = sub_1000C0430((a1 + 112), &v9);
  if (result)
  {
    v10 = &v9;
    *a3 = *(sub_1000C04E8((a1 + 112), &v9, &unk_1008A9BD0, &v10) + 5);
    v10 = &v9;
    result = sub_1000C04E8((a1 + 112), &v9, &unk_1008A9BD0, &v10);
    v8 = result[6];
  }

  else
  {
    *a3 = 0;
    v8 = 0;
  }

  *a4 = v8;
  return result;
}

uint64_t sub_1000C6C44(uint64_t a1, __int16 a2, char a3, char a4, __int16 a5, __int16 a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C6CCC;
  v7[3] = &unk_100AF2390;
  v8 = a2;
  v11 = a3;
  v12 = a4;
  v9 = a5;
  v10 = a6;
  return sub_10002173C(a1, 114, 1, v7, 0);
}

uint64_t sub_1000C6CF8(__int16 a1, char a2, char a3, __int16 a4, __int16 a5, void (*a6)())
{
  v27 = 0;
  v28 = 0;
  result = sub_10001FFD8(&v27);
  if (!result)
  {
    if (HIBYTE(v28))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6497, "OI_STATUS _BCM_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
    }

    else
    {
      v16 = WORD2(v28);
      if (WORD1(v28) > WORD2(v28))
      {
        if (BYTE6(v28) == 2)
        {
          ++WORD2(v28);
          *(v27 + v16) = 12;
          if (HIBYTE(v28))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6498, "OI_STATUS _BCM_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
          }

          else if (WORD1(v28) - WORD2(v28) > 1)
          {
            if (BYTE6(v28) == 2)
            {
              *(v27 + WORD2(v28)) = a1;
              v17 = WORD2(v28);
              v18 = WORD2(v28) + 2;
              WORD2(v28) += 2;
              if (HIBYTE(v28))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6499, "OI_STATUS _BCM_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
              }

              else if (WORD1(v28) > v18)
              {
                if (BYTE6(v28) == 2)
                {
                  WORD2(v28) = v17 + 3;
                  *(v27 + v18) = a2;
                  if (HIBYTE(v28))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6500, "OI_STATUS _BCM_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
                  }

                  else if (WORD1(v28) > WORD2(v28))
                  {
                    if (BYTE6(v28) == 2)
                    {
                      *(v27 + WORD2(v28)) = a3;
                      v19 = ++WORD2(v28);
                      if (HIBYTE(v28))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6501, "OI_STATUS _BCM_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
                      }

                      else if (WORD1(v28) - v19 > 1)
                      {
                        if (BYTE6(v28) == 2)
                        {
                          *(v27 + v19) = a4;
                          *(v27 + WORD2(v28) + 1) = HIBYTE(a4);
                          v20 = WORD2(v28) + 2;
                          WORD2(v28) += 2;
                          if (HIBYTE(v28))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6502, "OI_STATUS _BCM_MatchTableExtFilterConfig(uint16_t, uint8_t, int8_t, uint16_t, uint16_t, BT_VSC_MATCHTABLE_EXT_FILTER_CONFIG_CB)");
                          }

                          else if (WORD1(v28) - v20 > 1)
                          {
                            if (BYTE6(v28) == 2)
                            {
                              *(v27 + v20) = a5;
                              *(v27 + WORD2(v28) + 1) = HIBYTE(a5);
                              WORD2(v28) += 2;
                              return sub_100020078(556, v27, BYTE4(v28), a6, sub_1000C6338, v13, v14, v15);
                            }

                            v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6502, v26);
                          }

                          v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_45;
                        }

                        v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6501, v25);
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_41;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6500, v24);
                  }

                  v24 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                  goto LABEL_37;
                }

                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6499, v23);
              }

              v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_33;
            }

            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6498, v22);
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_29;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6497, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1000C70A4()
{
  if (off_100B60B48)
  {
    v0 = off_100B60B48();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v0);
    v1 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

BOOL sub_1000C7130(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 - 3000 < 0x3E8)
      {
        return 1;
      }
    }

    else if (v1 - 20 < 6)
    {
      return 1;
    }
  }

  v2 = 1;
  v3 = sub_1000271F0();
  if ((v3 - 169) > 0x3A || ((1 << (v3 + 87)) & 0x7FE1E1E00000083) == 0)
  {
    return (v3 - 230) < 0xD;
  }

  return v2;
}

double *sub_1000C71BC(double *result, int a2, int a3)
{
  if (a2 == 22)
  {
    v14[3] = v3;
    v14[4] = v4;
    v5 = result;
    v6 = result[235];
    if (a3)
    {
      if (v6 == 0.0)
      {
        result = +[NSDate timeIntervalSinceReferenceDate];
        *(v5 + 235) = v7;
      }
    }

    else if (v6 > 0.0)
    {
      v14[0] = 0;
      if (qword_100B51098 != -1)
      {
        sub_1008743A8();
      }

      v8 = sub_1000C6B88(qword_100B51090, 0x16u, v14 + 1, v14);
      v10 = sub_10000F034(v8, v9);
      v11.n128_f64[0] = v5[235];
      v12.n128_u32[0] = HIDWORD(v14[0]);
      v13.n128_u32[0] = v14[0];
      result = (*(*v10 + 472))(v11, v12, v13);
      v5[235] = 0.0;
    }
  }

  return result;
}

BOOL sub_1000C7294(uint64_t a1)
{
  if (!(*(*a1 + 8))(a1))
  {
    return 0;
  }

  v7 = 0;
  sub_100007E30(v5, "Scan");
  sub_100007E30(__p, "EnableNearbyActionNoWakeAdvMatchingRuleScan");
  (*(*a1 + 72))(a1, v5, __p, &v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return (v7 & 1) != 0;
}

void sub_1000C7370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *sub_1000C73A4(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3)
{
  v4 = 0;
  result = *sub_1000C7430(a1, &v4, uu1);
  if (!result)
  {
    sub_1000C74B8();
  }

  return result;
}

const unsigned __int8 *sub_1000C7430(uint64_t a1, const unsigned __int8 **a2, unsigned __int8 *uu1)
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
        if ((uuid_compare(uu1, v4 + 25) & 0x80000000) == 0)
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

      if ((uuid_compare(v7 + 25, uu1) & 0x80000000) == 0)
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

void sub_1000C7520(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000C7538(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_1000C7584(a1, a2 + 4);
  operator delete(a2);
  return v4;
}

void sub_1000C7584(uint64_t a1, void *a2)
{
  a2[10] = &off_100AE0AB8;
  v3 = a2[11];
  if (v3)
  {
    sub_10000C808(v3);
  }

  a2[8] = &off_100AE0AB8;
  v4 = a2[9];
  if (v4)
  {
    sub_10000C808(v4);
  }

  a2[6] = &off_100AE0AB8;
  v5 = a2[7];
  if (v5)
  {
    sub_10000C808(v5);
  }

  a2[4] = &off_100AE0AB8;
  v6 = a2[5];
  if (v6)
  {
    sub_10000C808(v6);
  }

  a2[2] = &off_100AE0AB8;
  v7 = a2[3];
  if (v7)
  {

    sub_10000C808(v7);
  }
}

uint64_t sub_1000C76A8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Destroying match table for type %d", buf, 8u);
    v4 = qword_100BCE918;
  }

  v5 = *(a1 + 1832);
  if (v5 == (a1 + 1840))
  {
    goto LABEL_24;
  }

  while (1)
  {
    v6 = *(v5 + 28);
    v7 = *(v5 + 15);
    v8 = *(v5 + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(v5 + 18);
      v13 = *(v5 + 17) != 0;
      *buf = 67110144;
      *&buf[4] = v7;
      v28 = 1024;
      v29 = v6;
      v30 = 1024;
      v31 = v12;
      v32 = 1024;
      v33 = v8 != 0;
      v34 = 1024;
      v35 = v13;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "handle:%d type:%d length:%d isCreated:%d isEnabled:%d", buf, 0x20u);
      v4 = qword_100BCE918;
    }

    v9 = v6 != v2 || v8 == 0;
    if (!v9)
    {
      break;
    }

    v10 = v5[1];
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
        v11 = v5[2];
        v9 = *v11 == v5;
        v5 = v11;
      }

      while (!v9);
    }

    v5 = v11;
    if (v11 == (a1 + 1840))
    {
      goto LABEL_24;
    }
  }

  if (!v7)
  {
LABEL_24:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100874BC4();
    }

    return 3;
  }

  else
  {
    v26 = v7;
    *buf = &v26;
    v14 = sub_1000BED44(a1 + 1832, &v26, &unk_1008A9BD0, buf);
    v15 = *(v14 + 14);
    v16 = *(v14 + 15);
    v17 = *(v14 + 9);
    v26 = v7;
    *buf = &v26;
    v18 = sub_1000BED44(a1 + 1832, &v26, &unk_1008A9BD0, buf);
    *(v18 + 14) = v15;
    *(v18 + 15) = v16;
    *(v18 + 8) = 0;
    *(v18 + 9) = v17;
    v19 = qword_100BCE918;
    v20 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
    if (v20)
    {
      *buf = 67109376;
      *&buf[4] = v2;
      v28 = 1024;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Destroying match table for type %d with handle %d", buf, 0xEu);
    }

    v22 = sub_10000C7D0(v20, v21);
    v23 = (*(*v22 + 3408))(v22, v16, 0, 1);
    if (v23)
    {
      v24 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *&buf[4] = v2;
        v28 = 1024;
        v29 = v7;
        v30 = 1024;
        v31 = v23;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to destroy match table for type %d on handle %d: %d", buf, 0x14u);
      }
    }

    else
    {
      sub_1000C71BC(a1, v2, 0);
    }
  }

  return v23;
}

id sub_1000C7A04(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2)
  {
    v3 = [v2 allKeys];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

uint64_t sub_1000C7A50(uint64_t a1, unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v4 = *(a1 + 176);
  v5 = sub_10004DF60(a2);
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    if ((v6[97] & 1) == 0 && (v6[96] & 1) == 0)
    {
      sub_10004ADAC(a1, a2);
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(v9, out);
    sub_1000D5668();
  }

  return sub_1000088CC(v8);
}

void sub_1000C7C78(uint64_t a1, void *a2)
{
  if (!*a2 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_10082A560();
  }

  v4 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7D30;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  dispatch_sync(v4, block);
}

void sub_1000C7D30(uint64_t a1)
{
  v2 = +[LeDeviceCache sharedInstance];
  [v2 writeDevice:*(a1 + 32)];
}

uint64_t sub_1000C7D9C(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  v4 = a1;
  *a4 = 0;
  v5 = *(a1 + 1832);
  v6 = (a1 + 1840);
  if (v5 == (a1 + 1840))
  {
    v8 = 0;
LABEL_39:
    v22 = 0;
LABEL_40:
    v23 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v37 = v22;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "MATCH TABLE nextHandle:%d", buf, 8u);
      if (!*a4)
      {
        return 4;
      }
    }

    else if (!v22)
    {
      return 4;
    }

    if (*(v4 + 1816) != v8)
    {
      return 0;
    }

    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_10087696C();
    }

    return 4;
  }

  v7 = a2;
  v8 = 0;
  v9 = *(a1 + 1832);
  do
  {
    if (*(v9 + 16))
    {
      ++v8;
    }

    v10 = v9[1];
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
        v11 = v9[2];
        v17 = *v11 == v9;
        v9 = v11;
      }

      while (!v17);
    }

    v9 = v11;
  }

  while (v11 != v6);
  if (v5 == v6)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v12 = *(v5 + 28);
    v13 = *(v5 + 15);
    v14 = *(v5 + 16);
    v15 = *(v5 + 18);
    v16 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      break;
    }

    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_14:
    v17 = v12 == 255 || v15 == 0;
    if (v17 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
    {
      sub_10087681C(&v34, v35);
    }

    if (v12 == v7)
    {
      v25 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        v37 = v7;
        v38 = 1024;
        v39 = v13;
        v40 = 1024;
        v41 = v15;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "MATCH TABLE table for type:%d is already created with handle %d and size:%d", buf, 0x14u);
      }

      *a4 = v13;
      return 15;
    }

LABEL_31:
    v20 = v5[1];
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
        v21 = v5[2];
        v17 = *v21 == v5;
        v5 = v21;
      }

      while (!v17);
    }

    v5 = v21;
    if (v21 == v6)
    {
      v22 = *a4;
      v4 = a1;
      goto LABEL_40;
    }
  }

  v18 = *(v5 + 17);
  *buf = 67110144;
  v37 = v13;
  v38 = 1024;
  v39 = v12;
  v40 = 1024;
  v41 = v15;
  v42 = 1024;
  v43 = v14 != 0;
  v44 = 1024;
  v45 = v18 != 0;
  _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "MATCH TABLE handle:%d type:%d length:%d isCreated:%d isEnabled:%d", buf, 0x20u);
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_24:
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100876854(&v32, v33);
  }

  if (v12 != v7)
  {
    if (v12 == 255 && !*a4)
    {
      *a4 = v13;
      v19 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v37 = v13;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "MATCH TABLE first empty unused and uninitialized handle:%d", buf, 8u);
      }
    }

    goto LABEL_31;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100876888();
  }

  v27 = qword_100BCE918;
  v28 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
  if (v15 != a3)
  {
    if (v28)
    {
      *buf = 67109632;
      v37 = v7;
      v38 = 1024;
      v39 = v13;
      v40 = 1024;
      v41 = v15;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "MATCH TABLE so close! table for type:%d is already registered with handle %d and size:%d", buf, 0x14u);
    }

    *a4 = 0;
    return 15;
  }

  if (v28)
  {
    sub_1008768F8();
  }

  result = 0;
  *a4 = v13;
  return result;
}

uint64_t sub_1000C8238(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E628 != -1)
  {
    sub_10083147C();
  }

  return byte_100B6E620;
}

uint64_t sub_1000C8270(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E618 != -1)
  {
    sub_100831468();
  }

  return byte_100B6E610;
}

uint64_t sub_1000C82A8(__int16 a1, char a2, char a3, __int16 a4, char a5, char a6, char a7, void (*a8)())
{
  v36 = 0;
  v37 = 0;
  result = sub_10001FFD8(&v36);
  if (!result)
  {
    if (HIBYTE(v37))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6475, "OI_STATUS _BCM_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
    }

    else
    {
      v20 = WORD2(v37);
      if (WORD1(v37) > WORD2(v37))
      {
        if (BYTE6(v37) == 2)
        {
          ++WORD2(v37);
          *(v36 + v20) = 3;
          if (HIBYTE(v37))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6476, "OI_STATUS _BCM_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
          }

          else if (WORD1(v37) - WORD2(v37) > 1)
          {
            if (BYTE6(v37) == 2)
            {
              *(v36 + WORD2(v37)) = a1;
              v21 = WORD2(v37);
              v22 = WORD2(v37) + 2;
              WORD2(v37) += 2;
              if (HIBYTE(v37))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6477, "OI_STATUS _BCM_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
              }

              else if (WORD1(v37) > v22)
              {
                if (BYTE6(v37) == 2)
                {
                  WORD2(v37) = v21 + 3;
                  *(v36 + v22) = a2;
                  if (HIBYTE(v37))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6478, "OI_STATUS _BCM_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                  }

                  else
                  {
                    v23 = WORD2(v37);
                    if (WORD1(v37) > WORD2(v37))
                    {
                      if (BYTE6(v37) == 2)
                      {
                        ++WORD2(v37);
                        *(v36 + v23) = a3;
                        if (HIBYTE(v37))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6479, "OI_STATUS _BCM_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                        }

                        else if (WORD1(v37) - WORD2(v37) > 1)
                        {
                          if (BYTE6(v37) == 2)
                          {
                            *(v36 + WORD2(v37)) = a4;
                            v24 = WORD2(v37);
                            v25 = WORD2(v37) + 2;
                            WORD2(v37) += 2;
                            if (HIBYTE(v37))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6480, "OI_STATUS _BCM_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                            }

                            else if (WORD1(v37) > v25)
                            {
                              if (BYTE6(v37) == 2)
                              {
                                WORD2(v37) = v24 + 3;
                                *(v36 + v25) = a5;
                                if (HIBYTE(v37))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6481, "OI_STATUS _BCM_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                                }

                                else
                                {
                                  v26 = WORD2(v37);
                                  if (WORD1(v37) > WORD2(v37))
                                  {
                                    if (BYTE6(v37) == 2)
                                    {
                                      ++WORD2(v37);
                                      *(v36 + v26) = a6;
                                      if (HIBYTE(v37))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6482, "OI_STATUS _BCM_MatchTableConfig(uint16_t, uint8_t, uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, BT_VSC_MATCHTABLE_CONFIG_CB)");
                                      }

                                      else
                                      {
                                        v27 = WORD2(v37);
                                        if (WORD1(v37) > WORD2(v37))
                                        {
                                          if (BYTE6(v37) == 2)
                                          {
                                            ++WORD2(v37);
                                            *(v36 + v27) = a7;
                                            return sub_100020078(556, v36, BYTE4(v37), a8, sub_1000BF3B8, v17, v18, v19);
                                          }

                                          v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6482, v35);
                                        }
                                      }

                                      v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_59;
                                    }

                                    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6481, v34);
                                  }
                                }

                                v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_55;
                              }

                              v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6480, v33);
                            }

                            v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_51;
                          }

                          v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6479, v32);
                        }

                        v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_47;
                      }

                      v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6478, v31);
                    }
                  }

                  v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_43;
                }

                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6477, v30);
              }

              v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_39;
            }

            v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6476, v29);
          }

          v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_35;
        }

        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6475, v28);
      }
    }

    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1000C8734()
{
  if (off_100B60B30)
  {
    v0 = off_100B60B30();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v0);
    v1 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000C87F4(uint64_t a1)
{
  v2 = *(__chkstk_darwin(a1) + 72);
  if (v2)
  {
    v3 = v1;
    bzero(v15, 0xFF7uLL);
    v4 = *v3;
    v5 = *(v3 + 8) - *v3;
    if (v5 < 0xFF8)
    {
      v13 = 4;
      v14 = v5;
      memcpy(v15, v4, v5);
      v12 = 0;
      v7 = [v2 setReport:&v13 reportLength:v5 + 9 withIdentifier:0 forType:1 error:&v12];
      v8 = v12;
      v9 = qword_100BCEA68;
      if (v7)
      {
        v6 = 0;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully sent report to AOP. setPrecisionFindingIRKs", v11, 2u);
          v6 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
        {
          sub_10082EEF0();
        }

        v6 = 1;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
      {
        sub_10082EF60();
      }

      return 1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082EFD0();
    }

    return 22;
  }

  return v6;
}

void sub_1000C89B4(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_1000C7698();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_1000C8CF0(const void **a1)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = a1[2] - *a1;
  v5 = v2 - *a1;
  if (v4 > v5)
  {
    if (v2 != v3)
    {
      sub_100008108(a1, v5 >> 3);
    }

    v7 = 0;
    if (v4 >> 3)
    {
      v8 = 8 * (v5 >> 3);
      v9 = a1[1] - v3;
      v10 = (v8 - v9);
      memcpy((v8 - v9), v3, v9);
      v7 = *a1;
      *a1 = v10;
      a1[1] = v8;
      a1[2] = 0;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t sub_1000C8DAC(uint64_t a1)
{
  if ((*(*a1 + 2824))(a1))
  {
    return 27;
  }

  else
  {
    return 0;
  }
}

void sub_1000C8DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100B50FA0 <= 30)
  {
    if (dword_100B50FA0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1000C8EE0(a1, a2, a3);
    }
  }

  if (qword_100B51078 != -1)
  {
    sub_10080AA5C();
  }

  sub_100023EC0(off_100B51070, *(v3 + 40), 1, 1, 0);
  v4 = *(v3 + 32);
  v5 = *(v4 + 264);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3128;
  block[3] = &unk_100ADF820;
  block[4] = v4;
  dispatch_async(v5, block);
}

void sub_1000C8F9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = sub_1000C9B4C(v6, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C9154;
  v11[3] = &unk_100AF7CB8;
  v14 = a1;
  v9 = v5;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  sub_10000CA94(v8, v11);
}

uint64_t *sub_1000C90A0(uint64_t *a1, char *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    sub_1000C9104(a1, a3);
  }

  return a1;
}

void sub_1000C9104(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1000C9154(void *a1)
{
  v2 = a1[6];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  sub_1000C90A0(&__p, &v14, 1);
  sub_1000C93CC(&v15, 3, 1u, &__p);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  sub_1000C9540(a1[4], &v15);
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_1000C93CC(&v15, 4, 0, &__p);
  v3 = sub_1000C87F4(v2);
  if (!v3)
  {
    v4 = a1[4];
    v5 = [NSNumber numberWithUnsignedInt:1];
    v6 = [v4 objectForKey:v5];
    LOBYTE(v4) = v6 == 0;

    if ((v4 & 1) == 0)
    {
      v9 = sub_10000F034(v7, v8);
      v10 = a1[4];
      v11 = [NSNumber numberWithUnsignedInt:1];
      v12 = [v10 objectForKey:v11];
      (*(*v9 + 440))(v9, [v12 count]);
    }
  }

  v13 = qword_100BCEA68;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = v3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notifying listeners with replaceProxyOOBKeys result %d", &__p, 8u);
  }

  (*(a1[5] + 16))();
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_1000C9360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000C93CC(void **a1, __int16 a2, unsigned int a3, uint64_t *a4)
{
  v6 = HIBYTE(a2);
  v20 = a2;
  sub_1000C89B4(a1, &v20);
  v19 = v6;
  sub_1000C89B4(a1, &v19);
  v22 = a3;
  sub_1000C89B4(a1, &v22);
  v21 = BYTE1(a3);
  sub_1000C89B4(a1, &v21);
  if (a3)
  {
    v8 = 0;
    v9 = a1[1];
    v10 = a3;
    do
    {
      v11 = *a4;
      v12 = a1[2];
      if (v9 >= v12)
      {
        v13 = *a1;
        v14 = (v9 - *a1);
        v15 = (v14 + 1);
        if ((v14 + 1) < 0)
        {
          sub_1000C7698();
        }

        v16 = v12 - v13;
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          operator new();
        }

        v18 = v9 - *a1;
        *v14 = *(v11 + v8);
        v9 = v14 + 1;
        memcpy(0, v13, v18);
        *a1 = 0;
        a1[1] = v14 + 1;
        a1[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v9++ = *(v11 + v8);
      }

      a1[1] = v9;
      ++v8;
    }

    while (v10 != v8);
  }
}

void sub_1000C9540(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = qword_100BCEA68;
  v21 = v3;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v36) = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendProxyOOBKeys: %d keys", buf, 8u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(*(&v29 + 1) + 8 * i);
          *buf = 138412290;
          v36 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "keyType: %@", buf, 0xCu);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v6);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v22 = *v26;
    do
    {
      v23 = v12;
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v25 + 1) + 8 * j);
        buf[0] = 2;
        sub_1000C89B4(a2, buf);
        buf[0] = 0;
        sub_1000C89B4(a2, buf);
        v15 = [v11 objectForKeyedSubscript:v14];
        v16 = [v15 count];
        v17 = 16 * v16;
        buf[0] = 16 * v16;
        sub_1000C89B4(a2, buf);
        buf[0] = HIBYTE(v17);
        sub_1000C89B4(a2, buf);

        memset(v24, 0, sizeof(v24));
        v18 = [v11 objectForKeyedSubscript:v14];
        if ([v18 countByEnumeratingWithState:v24 objects:v33 count:16])
        {
          v19 = [**(&v24[0] + 1) irkData];
          v20 = v19;
          [v19 bytes];

          operator new();
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }
}

uint64_t sub_1000C9980(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a1);
    length = xpc_data_get_length(a1);
    sub_10000C704(&v7, bytes_ptr, length);
    sub_10000AE20(a2, &v7);
    v7 = &off_100AE0A78;
    if (v8)
    {
      sub_10000C808(v8);
    }

    return 0;
  }

  if (xpc_get_type(a1) == &_xpc_type_null)
  {
    return 0;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100820A88(a1);
  }

  return 3;
}

void sub_1000C9A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000C9AAC(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v3 = value;
    if (xpc_get_type(value) == &_xpc_type_int64)
    {
      value = [NSNumber numberWithLongLong:xpc_int64_get_value(v3)];
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820C60();
      }

      value = 0;
    }
  }

  return value;
}

uint64_t sub_1000C9B4C(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F048 != -1)
  {
    sub_100843EF4();
  }

  return qword_100B6F040;
}

void *sub_1000C9B84(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 364);
  if (v2 < a2)
  {
    v6 = sub_10000E92C();
    sub_100693F88(v6, 1);
    v7 = _os_log_pack_size();
    v8 = &v11 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "Assertion failed: %{public}s");
    *v10 = 136446210;
    *(v10 + 4) = "fWriteBufferUsed >= length";
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  v3 = a2;
  result = memmove(*(a1 + 352), (*(a1 + 352) + a2), v2 - a2);
  *(a1 + 364) -= v3;
  return result;
}

void sub_1000C9CD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = v2 + 72;
    do
    {
      if (*(v3 + 28) >= v4)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 28) < v4));
    }

    while (v3);
    if (v5 != v2 + 72 && v4 >= *(v5 + 28))
    {
      v6 = *(v2 + 24);
      if (!v6)
      {
        goto LABEL_24;
      }

      v7 = *(v5 + 32);
      v8 = v2 + 24;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v2 + 24 && v7 >= *(v8 + 32))
      {
        v12 = *(v8 + 40);

        sub_1000CA7EC(v2, v7, v12);
      }

      else
      {
LABEL_24:
        if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
        {
          sub_10081F4B4();
        }
      }
    }
  }
}

BOOL sub_1000C9DC8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  bzero(v78, 0xA0AuLL);
  v5 = *(a3 + 224);
  v56 = 0;
  v47 = a2;
  if (!v5)
  {
    while (1)
    {
      *buf = v78;
      LODWORD(v72) = 2570;
      v25 = *(a3 + 372);
      if (v25 == 2)
      {
        break;
      }

      if (v25 == 1)
      {
        if (*(a3 + 376) >= 0xA0Au)
        {
          v28 = 2570;
        }

        else
        {
          v28 = *(a3 + 376);
        }

        LODWORD(v72) = v28;
        v29 = qword_100BCE958;
        if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a3 + 364);
          LODWORD(v74) = 67109376;
          DWORD1(v74) = v28;
          WORD4(v74) = 1024;
          *(&v74 + 10) = v30;
          v31 = v29;
          v32 = "MAX buffer size for the L2CAP Channel is %d getWriteBufferUsed=%d";
          goto LABEL_73;
        }

        goto LABEL_74;
      }

      if (v25)
      {
        v11 = 0;
        v26 = 0;
      }

      else
      {
        v54 = 0;
        sub_1000216B4(&v54);
        v26 = sub_1002327CC(*(a3 + 112), buf, &v72);
        sub_100022214(&v54);
        v11 = v26 == 0;
        if (v26)
        {
          v27 = qword_100BCE958;
          if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v74) = 67109632;
            DWORD1(v74) = a2;
            WORD4(v74) = 1024;
            *(&v74 + 10) = v26;
            HIWORD(v74) = 1024;
            LODWORD(v75) = v72;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to get a buffer from the stack for pipe 0x%04x with result %{bluetooth:OI_STATUS}u, default size %d", &v74, 0x14u);
          }
        }

        sub_10002249C(&v54);
      }

LABEL_76:
      v36 = read(*(a3 + 200), *buf, v72);
      v37 = v36;
      if (v36 < 1)
      {
        if (v36)
        {
          if (*__error() == 35)
          {
            if (v11)
            {
              LOBYTE(v74) = 0;
              sub_1000216B4(&v74);
              sub_10023281C(*buf);
              sub_100022214(&v74);
              sub_10002249C(&v74);
            }

            return 1;
          }

          if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
          {
            sub_100820238();
          }
        }

        else if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
        {
          sub_1008202C8();
        }

        if (!v11)
        {
          return v11;
        }

        LOBYTE(v74) = 0;
        sub_1000216B4(&v74);
        sub_10023281C(*buf);
        sub_100022214(&v74);
        v42 = &v74;
LABEL_92:
        sub_10002249C(v42);
        return 0;
      }

      if (a1[139] == 1)
      {
        v38 = sub_1000CAA0C(a2);
        sub_100374308(v38);
      }

      v54 = 0;
      sub_1000216B4(&v54);
      v39 = *(a3 + 372);
      if (v39 == 2)
      {
        v40 = sub_1002EF8A4(sub_10037465C, a2, *buf, v37);
      }

      else if (v39 == 1)
      {
        v40 = sub_10028E1F0(sub_10037465C, a2, 0, *buf, v37);
      }

      else
      {
        if (v39)
        {
          goto LABEL_86;
        }

        v40 = sub_1000B7BFC(sub_10037465C, *(a3 + 112), a2, *buf, v37, v11);
      }

      v26 = v40;
LABEL_86:
      sub_100022214(&v54);
      if (v26 != 412)
      {
        if (v26)
        {
          v41 = qword_100BCE958;
          if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v74) = 67109376;
            DWORD1(v74) = a2;
            WORD4(v74) = 1024;
            *(&v74 + 10) = v26;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to transmit data from socket on pipe 0x%04x with result %{bluetooth:OI_STATUS}u", &v74, 0xEu);
          }
        }

        v42 = &v54;
        goto LABEL_92;
      }

      sub_10002249C(&v54);
    }

    if (*(a3 + 376) >= 0xA0Au)
    {
      v33 = 2570;
    }

    else
    {
      v33 = *(a3 + 376);
    }

    LODWORD(v72) = v33;
    v34 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a3 + 364);
      LODWORD(v74) = 67109376;
      DWORD1(v74) = v33;
      WORD4(v74) = 1024;
      *(&v74 + 10) = v35;
      v31 = v34;
      v32 = "MAX buffer size for the RFCOMM Channel is %d getWriteBufferUsed=%d";
LABEL_73:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, &v74, 0xEu);
    }

LABEL_74:
    v11 = 0;
    v26 = 0;
    a2 = v47;
    goto LABEL_76;
  }

  if (!*(a3 + 240) && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
  {
    sub_100820128();
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  next_slot = os_channel_get_next_slot();
  v46 = 0;
  v45 = 0;
  v7 = 0;
  v72 = 0;
  v73 = 0;
  while (1)
  {
    if (*(a3 + 372) && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
    {
      sub_1008201A8(&v54, v55);
    }

    if (next_slot)
    {
      v8 = *(a3 + 364);
      if (*(a3 + 360) - v8 >= WORD1(v74))
      {
        v9 = 0;
        while (1)
        {
          v19 = next_slot;
          if (v8 && *(a3 + 368) == 3)
          {
            goto LABEL_12;
          }

          os_channel_slot_get_packet();
          if (!os_packet_get_next_buflet() && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
          {
            sub_1008201D4(&v52, v53);
          }

          data_offset = os_buflet_get_data_offset();
          object_address = os_buflet_get_object_address();
          data_length = os_buflet_get_data_length();
          os_packet_get_flow_uuid();
          v23 = WORD1(v74);
          if (*(a3 + 368) == 3 && WORD1(v74) >= 0x2A4u && (v24 = qword_100BCE958, os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT)))
          {
            *buf = 67109120;
            *&buf[4] = v23;
            _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Payload length %d exceeds supported MTU for isoch channel", buf, 8u);
            v23 = WORD1(v74);
            if (data_length)
            {
              goto LABEL_43;
            }
          }

          else if (data_length)
          {
            goto LABEL_43;
          }

          if (v23)
          {
            sub_1000CA8B0(a3, v75, v23);
            goto LABEL_47;
          }

LABEL_43:
          if (data_length)
          {
            sub_1000CA8B0(a3, (object_address + data_offset), data_length);
          }

          else if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
          {
            sub_100820200(&v50, v51);
          }

LABEL_47:
          if (!v9)
          {
            v9 = v73;
          }

          next_slot = os_channel_get_next_slot();
          if (!next_slot)
          {
            v7 = v19;
            goto LABEL_12;
          }

          v8 = *(a3 + 364);
          v7 = v19;
          if (*(a3 + 360) - v8 < WORD1(v74))
          {
            goto LABEL_12;
          }
        }
      }
    }

    v9 = 0;
LABEL_12:
    v10 = *(a3 + 364);
    v11 = v10 == 0;
    if (!v10)
    {
      goto LABEL_96;
    }

    v49 = 0;
    sub_1000216B4(&v49);
    v12 = sub_1000B77E0(*(a3 + 112), &v56);
    if (v12 && v12 != 5007)
    {
      v56 = 1015;
    }

    v13 = *(a3 + 364);
    if (v56 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v56;
    }

    if ((*(a3 + 378) & 1) == 0)
    {
      v12 = sub_1000CAA0C(a2);
      v46 = v12;
    }

    if (a1[139] == 1)
    {
      sub_100374308(v12);
    }

    v15 = sub_1000B7BFC(sub_10037465C, *(a3 + 112), a2, *(a3 + 352), v14, 0);
    if ((*(a3 + 378) & 1) == 0)
    {
      v45 = sub_1000CAA0C(a2);
    }

    sub_100022214(&v49);
    if (a1[138] == 1)
    {
      v16 = v73;
      v17 = qword_100BCE990;
      if (os_log_type_enabled(qword_100BCE990, OS_LOG_TYPE_DEFAULT))
      {
        v18 = byte_100BCE998++;
        *buf = 67110912;
        *&buf[4] = 20;
        v58 = 1024;
        v59 = 60;
        v60 = 1024;
        v61 = v9;
        v62 = 1024;
        v63 = v16;
        v64 = 1024;
        v65 = v14;
        v66 = 1024;
        v67 = v46;
        v68 = 1024;
        v69 = (v45 - 1);
        v70 = 1024;
        v71 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "28 {curProtocol: %hhu, prevProtocol: %hhu, prevSeqnStart: %hu, prevSeqnEnd: %hu, prevLen: %hu, curSeqNStart: %hu, curSeqnEnd:%hu, logSeqn: %hhu}", buf, 0x32u);
      }
    }

    ++*(a3 + 268);
    if (v15 != 412)
    {
      break;
    }

    sub_1000C9B84(a3, v14);
    a2 = v47;
    sub_10002249C(&v49);
  }

  if (v15)
  {
    v43 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v47;
      v58 = 1024;
      v59 = v15;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to transmit data from socket on pipe 0x%04x with result %{bluetooth:OI_STATUS}u", buf, 0xEu);
    }
  }

  else
  {
    sub_1000C9B84(a3, v14);
  }

  sub_10002249C(&v49);
LABEL_96:
  if (v7)
  {
    os_channel_advance_slot();
  }

  if (*(a3 + 368) == 3 || *(a3 + 268) >= *(a3 + 260) || os_channel_available_slot_count() <= 1)
  {
    *(a3 + 268) = 0;
    os_channel_sync();
  }

  return v11;
}

void sub_1000CA7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1000CA7EC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (!sub_1000C9DC8(a1, a2, a3))
  {
    v5 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Stack is now full on pipe 0x%04x - stopping read source", v6, 8u);
    }

    sub_100374D90(a3, 1);
  }
}

void *sub_1000CA8B0(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 364);
  if (v3 + a3 > *(a1 + 360))
  {
    v7 = sub_10000E92C();
    sub_100693F88(v7, 1);
    v8 = _os_log_pack_size();
    v9 = &v12 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "Assertion failed: %{public}s");
    *v11 = 136446210;
    *(v11 + 4) = "fWriteBufferUsed + length <= fWriteBufferSize";
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  v4 = a3;
  result = memcpy((*(a1 + 352) + v3), a2, a3);
  *(a1 + 364) += v4;
  return result;
}

uint64_t sub_1000CAA0C(unsigned int a1)
{
  v2 = 0;
  if (sub_1000ABC7C(a1, &v2))
  {
    return 0;
  }

  else
  {
    return sub_1000CAA48(v2);
  }
}

void sub_1000CAA68()
{
  if (dword_100BC9C74)
  {
    for (i = 0; i < dword_100BC9C74; ++i)
    {
      v1 = &qword_100BC9CB0[134 * i];
      if (*(v1 + 18))
      {
        v2 = *(v1 + 12);
        if (v2 == 11)
        {
          v3 = sub_1000B78F0(&qword_100BC9CB0[134 * i]);
          if (sub_1000B8B5C(v3) || sub_1000C0E08(v3) || sub_1000ABD24(v3) || sub_1000B7994(v3))
          {
            if (!sub_1000CBF58(v3))
            {
              if (sub_1000B6E74(*v1))
              {
                sub_1000CB3A0(*v1, *(v1 + 28));
              }

              else
              {
                if (sub_1000B7994(v3) && byte_100BC9C70)
                {
                  v4 = 0;
                  v5 = 1;
                  while (*(v3 + 14) != *(qword_100BC9C68 + v4))
                  {
                    if (sub_1000B7994(v3))
                    {
                      v4 += 64;
                      if (v5++ < byte_100BC9C70)
                      {
                        continue;
                      }
                    }

                    goto LABEL_46;
                  }

                  v23 = *(qword_100BC9C68 + v4 + 48);
                  if (v23)
                  {
                    v23(*v3);
                  }
                }

LABEL_46:
                sub_10023229C(*v1, 0, v3);
              }
            }

            continue;
          }

          if (off_100BC9CA0)
          {
            off_100BC9CA0(v3, 81, 779, 408);
          }

          *(v1 + 12) = 6;
          sub_1000D660C();
          v2 = *(v1 + 12);
        }

        if (v2 == 6)
        {
          if (*(v1 + 10) && (v7 = *(v1 + 18), v7))
          {
            v8 = 0;
            v9 = (v1[8] + 1);
            while (1)
            {
              v10 = *v9;
              v9 += 64;
              if (v10 == *(v1 + 76))
              {
                break;
              }

              if (v7 == ++v8)
              {
                goto LABEL_29;
              }
            }
          }

          else
          {
LABEL_29:
            LODWORD(v8) = 0;
          }

          v11 = *(v1 + 29);
          v12 = *(v1[8] + (v11 << 6) + 1);
          if (*(v1 + 20) == v12)
          {
            if (!sub_1000B6E74(*v1))
            {
              continue;
            }
          }

          else
          {
            *(v1 + 20) = v12;
          }

          if (sub_1000B6E74(*v1))
          {
            v13 = v1[8];
            v14 = *(v13 + (v11 << 6) + 1);
            v15 = *(v1 + 21);
            if (v15 != v14)
            {
              v16 = *(v1 + 18);
              if (v16)
              {
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v20 = (v13 + 1);
                do
                {
                  v22 = *v20;
                  v20 += 64;
                  v21 = v22;
                  if (v22 == v14)
                  {
                    v19 = v17;
                  }

                  if (v15 == v21)
                  {
                    v18 = v17;
                  }

                  ++v17;
                }

                while (v16 != v17);
              }

              else
              {
                v19 = 0;
                v18 = 0;
              }

              if (v19 <= v18)
              {
                v24 = v18;
              }

              else
              {
                v24 = v19;
              }

              if (v24 > v11)
              {
                LODWORD(v11) = v24;
              }
            }
          }

          if (v8 != v11)
          {
            v28 = v1[8];
            if (*(v28 + (v8 << 6) + 1) == 1)
            {
              if (sub_10000C240())
              {
                v11 = v11;
                v29 = sub_1000B74A0(*(v1[8] + (v11 << 6) + 1));
                sub_10000AF54("Upgrade requested to tech %s", v29);
                v30 = sub_10000C050(0x57u);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_70;
                }
              }

              else
              {
                v11 = v11;
              }

LABEL_72:
              sub_10022FE34(*v1, *(v1[8] + (v11 << 6) + 1), *(v1 + 28));
              continue;
            }

            v31 = *(v28 + (v11 << 6) + 1);
            v32 = sub_10000C240();
            if (v31 != 1)
            {
              if (v32)
              {
                v36 = sub_1000B74A0(*(v1[8] + (v11 << 6) + 1));
                sub_10000AF54("Downgrade to upgrade requested to tech %s", v36);
                v37 = sub_10000C050(0x57u);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = sub_10000C0FC();
                  *buf = 136446210;
                  v40 = v38;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }

              sub_1002307C0(*v1, *(v1[8] + (v11 << 6) + 1), *(v1 + 28));
              continue;
            }

            if (v32)
            {
              v33 = sub_1000B74A0(*(v1[8] + (v11 << 6) + 1));
              sub_10000AF54("Downgrade requested to tech %s", v33);
              v27 = sub_10000C050(0x57u);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
LABEL_66:
                v34 = sub_10000C0FC();
                *buf = 136446210;
                v40 = v34;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

LABEL_67:
            sub_1000CB010(*v1, *(v1 + 28));
            continue;
          }

          if (!sub_1000B6E74(*v1))
          {
            v11 = v8;
            v25 = *(v1[8] + (v8 << 6) + 1);
            v26 = sub_10000C240();
            if (v25 != 1)
            {
              if (v26)
              {
                sub_10000AF54("Peripheral %i send central wish upgrade", i);
                v30 = sub_10000C050(0x57u);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
LABEL_70:
                  v35 = sub_10000C0FC();
                  *buf = 136446210;
                  v40 = v35;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }

              goto LABEL_72;
            }

            if (v26)
            {
              sub_10000AF54("Peripheral %i send central wish downgrade", i);
              v27 = sub_10000C050(0x57u);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_66;
              }
            }

            goto LABEL_67;
          }
        }
      }
    }
  }
}

uint64_t sub_1000CB010(unsigned __int16 *a1, uint64_t a2)
{
  v2 = a2;
  if (sub_1000CC63C(a1))
  {
    if (sub_1000B6E74(a1))
    {

      return sub_1000CB3A0(a1, v2);
    }

    v6 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v7 = &word_100BC9CB8;
      v8 = dword_100BC9C74;
      while (*(v7 - 1) != a1)
      {
        v7 += 536;
        if (!--v8)
        {
          v9 = 0xFFFFLL;
          goto LABEL_17;
        }
      }

      v9 = *v7;
LABEL_17:
      v17 = 34;
      v10 = &dword_100BC9CE0;
      while (*(v10 - 20) != v9)
      {
        v10 += 268;
        if (!--v6)
        {
          goto LABEL_28;
        }
      }

      if (*v10 == 6)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Sending DOWNGRADE_REQ to lmhandle 0x%4x", *a1);
          v11 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *&buf[4] = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        result = sub_1000B7BFC(0, a1, v9, &v17, 2uLL, 0);
        if (result == 412 || !result)
        {
          v19 = 0u;
          v20 = 0u;
          LOBYTE(v19) = 1;
          WORD1(v19) = 4;
          DWORD2(v19) = 11;
          LOBYTE(v20) = 1;
          WORD1(v20) = 4;
          DWORD2(v20) = v2;
          memcpy(buf, "state", sizeof(buf));
          sub_1000CC0B0("Magnet Operation", buf, &v19, 2u);
          return 0;
        }

        return result;
      }
    }

    else
    {
      LODWORD(v9) = 0xFFFF;
    }

LABEL_28:
    if (sub_10000C240())
    {
      v12 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v13 = &dword_100BC9CE0;
        while (*(v13 - 20) != v9)
        {
          v13 += 268;
          if (!--v12)
          {
            goto LABEL_33;
          }
        }

        v14 = *v13;
      }

      else
      {
LABEL_33:
        v14 = 0;
      }

      v15 = sub_1000CC6B0(v14);
      sub_10000AF54("Message should only be send when in ##state state. Current state is %s", v15);
      v16 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Link is not encrypted, can't send upgrade");
      v5 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4802;
  }
}

uint64_t sub_1000CB318(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    return *(a1 + 168) == 1;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Invalid LE connection handle 0x%x", a1);
    v3 = sub_10000C050(0x43u);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10080F7A0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000CB3A0(unsigned __int16 *a1, int a2)
{
  v24 = 32;
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v5 = &word_100BC9CB8;
    v6 = dword_100BC9C74;
    while (*(v5 - 1) != a1)
    {
      v5 += 536;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    if (!*(v5 + 2))
    {
      if (!sub_10000C240())
      {
        return 408;
      }

      sub_10000AF54("No alternate handle to downgrade from.");
      v14 = sub_10000C050(0x56u);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        return 408;
      }

      goto LABEL_50;
    }

    v10 = *v5;
    if (v10 != 0xFFFF)
    {
      v11 = *(v5 + 1);
      v12 = &dword_100BC9CE0;
      v13 = dword_100BC9C74;
      while (*(v12 - 20) != v10)
      {
        v12 += 268;
        if (!--v13)
        {
          goto LABEL_20;
        }
      }

      if (*v12 == 6)
      {
LABEL_25:
        sub_1000CB7DC(v11);
        if ((sub_1000B8B5C(v11) || sub_1000C0E08(v11) || sub_1000ABD24(v11) || sub_1000B7994(v11)) && sub_1000CBF58(v11))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Waiting for data on lmhandle 0x%4x to be flushed before sending downgrade.", *v11);
            v16 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              *&buf[4] = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          sub_1000CBF60(v10, 11);
          sub_1002592C4(1, v11, sub_1002321C0);
          return 0;
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Sending DOWNGRADE to lmhandle 0x%4x", *a1);
            v20 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              *&buf[4] = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v21 = sub_1000B7BFC(0, a1, v10, &v24, 2uLL, 0);
          if (v21 == 412)
          {
            v8 = 0;
          }

          else
          {
            v8 = v21;
          }

          if (v8)
          {
            sub_1000D4200(v11);
          }

          else
          {
            sub_1000CBF60(v10, 12);
            sub_1000CC6D4(v10, 0x3A98u);
          }

          v26 = 0u;
          v27 = 0u;
          LOBYTE(v26) = 1;
          WORD1(v26) = 4;
          DWORD2(v26) = 10;
          LOBYTE(v27) = 1;
          WORD1(v27) = 4;
          DWORD2(v27) = a2;
          memcpy(buf, "state", sizeof(buf));
          sub_1000CC0B0("Magnet Operation", buf, &v26, 2u);
        }

        return v8;
      }

LABEL_20:
      v15 = &dword_100BC9CE0;
      while (*(v15 - 20) != v10)
      {
        v15 += 268;
        if (!--v2)
        {
          goto LABEL_34;
        }
      }

      if (*v15 == 11)
      {
        goto LABEL_25;
      }

LABEL_34:
      if (!sub_10000C240())
      {
        return 408;
      }

      v17 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v18 = &dword_100BC9CE0;
        while (*(v18 - 20) != v10)
        {
          v18 += 268;
          if (!--v17)
          {
            goto LABEL_39;
          }
        }

        v19 = *v18;
      }

      else
      {
LABEL_39:
        v19 = 0;
      }

      v22 = sub_1000CC6B0(v19);
      sub_10000AF54("Message should only be send when in IDLE/DOWNGRADE_STALL state. Current state is %s", v22);
      v23 = sub_10000C050(0x56u);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        return 408;
      }

LABEL_50:
      sub_1000E09C0();
      return 408;
    }
  }

LABEL_5:
  if (sub_10000C240())
  {
    sub_10000AF54("Invalid handle for downgrade");
    v7 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 414;
}

uint64_t sub_1000CB7DC(unsigned __int16 *a1)
{
  v26 = 99;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  if (a1)
  {
    sub_1000CBBAC(a1, v29, &v26);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("stallL2CAPForHandle Number of LeOnlyPipe CID %d", v26);
    v2 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_10000C0FC();
      *buf = 136446210;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v26)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      if (sub_10000C240())
      {
        sub_10000AF54("stallL2CAPForHandle LeOnlyPipe CID 0x%4x", *(v29 + v4));
        v6 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = sub_10000C0FC();
          *buf = 136446210;
          v28 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v4 = v5;
      v8 = v26 > v5++;
    }

    while (v8);
  }

  if (dword_100BC9C74)
  {
    v9 = 0;
    v10 = &qword_100BC9CC0;
    while (1)
    {
      v11 = &qword_100BC9CB0[134 * v9];
      if (*v11 == a1)
      {
        break;
      }

      v12 = *(v11 + 10);
      v13 = v10;
      if (*(v11 + 10))
      {
        while (*v13 != a1)
        {
          v13 += 2;
          if (!--v12)
          {
            goto LABEL_20;
          }
        }

        v14 = *(v11 + 4);
        if (*(v11 + 4))
        {
          goto LABEL_23;
        }
      }

LABEL_20:
      ++v9;
      v10 += 134;
      if (v9 == dword_100BC9C74)
      {
        goto LABEL_21;
      }
    }

    v14 = *(v11 + 4);
  }

  else
  {
LABEL_21:
    v14 = 0;
  }

LABEL_23:
  if (sub_10000C240())
  {
    sub_10000AF54("stallL2CAPForHandle lTsPeers cid 0x%4x", v14);
    v15 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_10000C0FC();
      *buf = 136446210;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v17 = v26;
  if (v14)
  {
    if (v26)
    {
      v18 = 0;
      v19 = 1;
      while (*(v29 + v18) != v14)
      {
        v18 = v19;
        v8 = v26 > v19++;
        if (!v8)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      *(v29 + v26) = v14;
      v26 = v17 + 1;
    }
  }

  else if (!v26)
  {
    v24 = 0;
    return sub_1000CBE7C(a1, v29, v24, 1);
  }

  v20 = 0;
  v21 = 1;
  do
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Stalling lmhandle 0x%4x with an exception for cid 0x%4x", *a1, *(v29 + v20));
      v22 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_10000C0FC();
        *buf = 136446210;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v20 = v21;
    v24 = v26;
    v8 = v26 > v21++;
  }

  while (v8);
  return sub_1000CBE7C(a1, v29, v24, 1);
}

uint64_t sub_1000CBBAC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("Searching for LE Only pipes:");
    v6 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!word_100B5A19A)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(&xmmword_100B5A1A0 + v7);
    if (*v8 == a1)
    {
      break;
    }

    if (word_100B5A19A == ++v7)
    {
      return 0;
    }
  }

  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v28 = 0;
    *buf = 0u;
    v27 = 0u;
    __memcpy_chk();
    v10 = word_100B5A220;
    if (word_100B5A220)
    {
      v11 = (*(v8 + 8) + 88 * v9);
      v12 = v11[8];
      v13 = qword_100B5A228;
      while (v12 != *(v13 + 8) || memcmp(*v13, v11, v12))
      {
        v13 += 9;
        if (!--v10)
        {
          goto LABEL_16;
        }
      }

      v14 = *(v13 + 26);
    }

    else
    {
LABEL_16:
      v14 = 0;
    }

    if (sub_10000C240())
    {
      v15 = *(&xmmword_100B5A1A0 + v7);
      v16 = *(v15 + 8);
      v17 = *(v16 + 88 * v9 + 64);
      if (v17)
      {
        LODWORD(v17) = *(v17 + 4);
      }

      sub_10000AF54("    peerID:%d channelID=0x%04x CID:0x%04x stayOnLe=%d name:%s priority:%d serviceID:%d peerSupportsLeOnlyPipes:%d listSize:%d(%d)", v7, v9, v17, v14 & 1, buf, *(v16 + 88 * v9 + 54), *(v16 + 88 * v9 + 40), *(v15 + 52) & 0x1000, *a3, v5);
      v18 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = sub_10000C0FC();
        *v24 = 136446210;
        v25 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", v24, 0xCu);
      }
    }

    v8 = *(&xmmword_100B5A1A0 + v7);
    if (v14)
    {
      v20 = *(*(v8 + 8) + 88 * v9 + 64);
      if (v20)
      {
        if ((*(v8 + 53) & 0x10) != 0)
        {
          v21 = *a3;
          *(a2 + 2 * *a3) = *(v20 + 4);
          *a3 = v21 + 1;
          if (v21 + 1 > v5)
          {
            return 106;
          }
        }
      }
    }

    if (++v9 >= *(v8 + 16))
    {
      return 0;
    }
  }
}