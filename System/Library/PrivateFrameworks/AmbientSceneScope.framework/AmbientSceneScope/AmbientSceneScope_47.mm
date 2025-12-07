void sub_23F2E2A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  sub_23F0771F4((v48 - 160));
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (!a48)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a48);
  _Unwind_Resume(a1);
}

void sub_23F2E2F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a31)
  {
    operator delete(a31);
  }

  sub_23F2E6568(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2E2F80(unsigned __int8 **a1)
{
  if (!a1[4])
  {
    if (sub_23F07515C(a1) == 239)
    {
      if (sub_23F07515C(a1) != 187 || sub_23F07515C(a1) != 191)
      {
        v2 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_35:
        a1[13] = v2;
        return 14;
      }
    }

    else
    {
      v3 = a1 + 5;
      v4 = a1[5];
      *(a1 + 24) = 1;
      --a1[4];
      if (v4 || (v3 = a1 + 6, (v4 = a1[6]) != 0))
      {
        *v3 = v4 - 1;
      }

      if (*(a1 + 5) != -1)
      {
        --a1[8];
      }
    }
  }

  sub_23F073748(a1);
  if (*(a1 + 16) == 1)
  {
    v5 = a1 + 6;
    while (1)
    {
      if (*(a1 + 5) != 47)
      {
        goto LABEL_30;
      }

      v6 = sub_23F07515C(a1);
      if (v6 != 47)
      {
        break;
      }

      do
      {
        v10 = sub_23F07515C(a1);
      }

      while ((v10 + 1) > 0xE || ((1 << (v10 + 1)) & 0x4803) == 0);
LABEL_29:
      sub_23F073748(a1);
      if ((a1[2] & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if (v6 == 42)
    {
      do
      {
        while (1)
        {
          v7 = sub_23F07515C(a1);
          if (v7 != 42)
          {
            break;
          }

          if (sub_23F07515C(a1) == 47)
          {
            goto LABEL_29;
          }

          *(a1 + 24) = 1;
          v8 = a1[5];
          --a1[4];
          v9 = a1 + 5;
          if (v8 || (v8 = *v5, v9 = a1 + 6, *v5))
          {
            *v9 = v8 - 1;
          }

          if (*(a1 + 5) != -1)
          {
            --a1[8];
          }
        }
      }

      while ((v7 + 1) >= 2);
      v2 = "invalid comment; missing closing '*/'";
    }

    else
    {
      v2 = "invalid comment; expecting '/' or '*' after '/'";
    }

    goto LABEL_35;
  }

LABEL_30:
  v12 = *(a1 + 5);
  result = 8;
  switch(v12)
  {
    case -1:
    case 0:
      return 15;
    case 34:
      if (*(a1 + 103) < 0)
      {
        *a1[10] = 0;
        a1[11] = 0;
        v41 = *(a1 + 5);
      }

      else
      {
        *(a1 + 80) = 0;
        *(a1 + 103) = 0;
        LOBYTE(v41) = 34;
      }

      v42 = a1[7];
      a1[8] = v42;
      v43 = a1[9];
      if (v42 >= v43)
      {
        operator new();
      }

      *v42 = v41;
      v44 = (a1 + 10);
      a1[8] = v42 + 1;
      v120 = vdupq_n_s64(1uLL);
      while (2)
      {
        *(a1 + 2) = vaddq_s64(*(a1 + 2), v120);
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v48 = *(a1 + 5);
        }

        else
        {
          v49 = *a1;
          if (*a1 == a1[1])
          {
            v48 = -1;
          }

          else
          {
            v48 = *v49;
            *a1 = v49 + 1;
          }

          *(a1 + 5) = v48;
        }

        if (v48 == -1)
        {
          v2 = "invalid string: missing closing quote";
          goto LABEL_35;
        }

        v51 = a1[8];
        v50 = a1[9];
        if (v51 >= v50)
        {
          v53 = a1[7];
          v54 = (v51 - v53);
          v55 = v51 - v53 + 1;
          if (v55 < 0)
          {
            goto LABEL_340;
          }

          v56 = v50 - v53;
          if (2 * v56 > v55)
          {
            v55 = 2 * v56;
          }

          if (v56 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v57 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            operator new();
          }

          v58 = v51 - v53;
          *v54 = v48;
          v52 = v54 + 1;
          memcpy(0, v53, v58);
          a1[7] = 0;
          a1[8] = v54 + 1;
          a1[9] = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *v51 = v48;
          v52 = v51 + 1;
        }

        a1[8] = v52;
        v59 = *(a1 + 5);
        if (v59 == 10)
        {
          v108 = (a1[6] + 1);
          a1[5] = 0;
          a1[6] = v108;
          v2 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
          goto LABEL_35;
        }

        v2 = "invalid string: missing closing quote";
        switch(v59)
        {
          case -1:
            goto LABEL_35;
          case 0:
            v2 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
            goto LABEL_35;
          case 1:
            v2 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
            goto LABEL_35;
          case 2:
            v2 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
            goto LABEL_35;
          case 3:
            v2 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
            goto LABEL_35;
          case 4:
            v2 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
            goto LABEL_35;
          case 5:
            v2 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
            goto LABEL_35;
          case 6:
            v2 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
            goto LABEL_35;
          case 7:
            v2 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
            goto LABEL_35;
          case 8:
            v2 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
            goto LABEL_35;
          case 9:
            v2 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
            goto LABEL_35;
          case 11:
            v2 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
            goto LABEL_35;
          case 12:
            v2 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
            goto LABEL_35;
          case 13:
            v2 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
            goto LABEL_35;
          case 14:
            v2 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
            goto LABEL_35;
          case 15:
            v2 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
            goto LABEL_35;
          case 16:
            v2 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
            goto LABEL_35;
          case 17:
            v2 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
            goto LABEL_35;
          case 18:
            v2 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
            goto LABEL_35;
          case 19:
            v2 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
            goto LABEL_35;
          case 20:
            v2 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
            goto LABEL_35;
          case 21:
            v2 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
            goto LABEL_35;
          case 22:
            v2 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
            goto LABEL_35;
          case 23:
            v2 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
            goto LABEL_35;
          case 24:
            v2 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
            goto LABEL_35;
          case 25:
            v2 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
            goto LABEL_35;
          case 26:
            v2 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
            goto LABEL_35;
          case 27:
            v2 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
            goto LABEL_35;
          case 28:
            v2 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
            goto LABEL_35;
          case 29:
            v2 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
            goto LABEL_35;
          case 30:
            v2 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
            goto LABEL_35;
          case 31:
            v2 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
            goto LABEL_35;
          case 32:
          case 33:
          case 35:
          case 36:
          case 37:
          case 38:
          case 39:
          case 40:
          case 41:
          case 42:
          case 43:
          case 44:
          case 45:
          case 46:
          case 47:
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
          case 58:
          case 59:
          case 60:
          case 61:
          case 62:
          case 63:
          case 64:
          case 65:
          case 66:
          case 67:
          case 68:
          case 69:
          case 70:
          case 71:
          case 72:
          case 73:
          case 74:
          case 75:
          case 76:
          case 77:
          case 78:
          case 79:
          case 80:
          case 81:
          case 82:
          case 83:
          case 84:
          case 85:
          case 86:
          case 87:
          case 88:
          case 89:
          case 90:
          case 91:
          case 93:
          case 94:
          case 95:
          case 96:
          case 97:
          case 98:
          case 99:
          case 100:
          case 101:
          case 102:
          case 103:
          case 104:
          case 105:
          case 106:
          case 107:
          case 108:
          case 109:
          case 110:
          case 111:
          case 112:
          case 113:
          case 114:
          case 115:
          case 116:
          case 117:
          case 118:
          case 119:
          case 120:
          case 121:
          case 122:
          case 123:
          case 124:
          case 125:
          case 126:
          case 127:
            goto LABEL_209;
          case 34:
            return 4;
          case 92:
            v104 = sub_23F07515C(a1);
            v2 = "invalid string: forbidden character after backslash";
            if (v104 <= 101)
            {
              if (v104 > 91)
              {
                if (v104 == 92)
                {
                  std::string::push_back((a1 + 10), 92);
                  continue;
                }

                if (v104 == 98)
                {
                  std::string::push_back((a1 + 10), 8);
                  continue;
                }
              }

              else
              {
                if (v104 == 34)
                {
                  std::string::push_back((a1 + 10), 34);
                  continue;
                }

                if (v104 == 47)
                {
                  std::string::push_back((a1 + 10), 47);
                  continue;
                }
              }

              goto LABEL_35;
            }

            if (v104 <= 113)
            {
              if (v104 == 102)
              {
                std::string::push_back((a1 + 10), 12);
                continue;
              }

              if (v104 == 110)
              {
                std::string::push_back((a1 + 10), 10);
                continue;
              }

              goto LABEL_35;
            }

            if (v104 == 114)
            {
              std::string::push_back((a1 + 10), 13);
              continue;
            }

            if (v104 == 116)
            {
              std::string::push_back((a1 + 10), 9);
              continue;
            }

            if (v104 != 117)
            {
              goto LABEL_35;
            }

            v105 = sub_23F0752C4(a1);
            if (v105 == -1)
            {
              goto LABEL_342;
            }

            v106 = v105;
            if ((v105 & 0xFFFFFC00) == 0xD800)
            {
              if (sub_23F07515C(a1) != 92 || sub_23F07515C(a1) != 117)
              {
                goto LABEL_343;
              }

              v107 = sub_23F0752C4(a1);
              if (v107 == -1)
              {
LABEL_342:
                v2 = "invalid string: '\\u' must be followed by 4 hex digits";
                goto LABEL_35;
              }

              if (v107 >> 10 != 55)
              {
LABEL_343:
                v2 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                goto LABEL_35;
              }

              v106 = v107 + (v106 << 10) - 56613888;
              goto LABEL_238;
            }

            if ((v105 & 0xFFFFFC00) == 0xDC00)
            {
              v2 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
              goto LABEL_35;
            }

            if (v105 > 127)
            {
              if (v105 > 0x7FF)
              {
                if (!HIWORD(v105))
                {
                  std::string::push_back((a1 + 10), (v105 >> 12) | 0xE0);
                  goto LABEL_239;
                }

LABEL_238:
                std::string::push_back((a1 + 10), (v106 >> 18) | 0xF0);
                std::string::push_back((a1 + 10), (v106 >> 12) & 0x3F | 0x80);
LABEL_239:
                std::string::push_back((a1 + 10), (v106 >> 6) & 0x3F | 0x80);
                std::string::push_back((a1 + 10), v106 & 0x3F | 0x80);
                continue;
              }

              std::string::push_back((a1 + 10), (v105 >> 6) | 0xC0);
              v103 = v106 & 0x3F | 0x80;
            }

            else
            {
              v103 = v105;
            }

LABEL_225:
            std::string::push_back((a1 + 10), v103);
            continue;
          case 194:
          case 195:
          case 196:
          case 197:
          case 198:
          case 199:
          case 200:
          case 201:
          case 202:
          case 203:
          case 204:
          case 205:
          case 206:
          case 207:
          case 208:
          case 209:
          case 210:
          case 211:
          case 212:
          case 213:
          case 214:
          case 215:
          case 216:
          case 217:
          case 218:
          case 219:
          case 220:
          case 221:
          case 222:
          case 223:
            std::string::push_back((a1 + 10), v59);
            *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
            if (*(a1 + 24) == 1)
            {
              *(a1 + 24) = 0;
              v60 = *(a1 + 5);
            }

            else
            {
              v61 = *a1;
              if (*a1 == a1[1])
              {
                v60 = -1;
              }

              else
              {
                v60 = *v61;
                *a1 = v61 + 1;
              }

              *(a1 + 5) = v60;
            }

            if (v60 == -1)
            {
              goto LABEL_270;
            }

            v63 = a1[8];
            v62 = a1[9];
            if (v63 < v62)
            {
              *v63 = v60;
              v64 = v63 + 1;
              goto LABEL_173;
            }

            v65 = a1[7];
            v66 = (v63 - v65);
            v67 = v63 - v65 + 1;
            if (v67 >= 0)
            {
              v68 = v62 - v65;
              if (2 * v68 > v67)
              {
                v67 = 2 * v68;
              }

              if (v68 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v69 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v69 = v67;
              }

              if (v69)
              {
                operator new();
              }

              v80 = v63 - v65;
              *v66 = v60;
              v64 = v66 + 1;
              memcpy(0, v65, v80);
              a1[7] = 0;
              a1[8] = v66 + 1;
              a1[9] = 0;
              if (v65)
              {
                operator delete(v65);
              }

LABEL_173:
              a1[8] = v64;
              v59 = *(a1 + 5);
              if (v59 == 10)
              {
                goto LABEL_305;
              }

LABEL_208:
              if ((v59 - 192) >= 0xFFFFFFC0)
              {
LABEL_209:
                v100 = *(a1 + 103);
                if (v100 < 0)
                {
                  v101 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
                  if (a1[11] == (v101 - 1))
                  {
                    if (v101 == 0x7FFFFFFFFFFFFFF8)
                    {
                      goto LABEL_341;
                    }

                    if ((v101 - 1) >= 0x3FFFFFFFFFFFFFF3)
                    {
                      operator new();
                    }

LABEL_215:
                    operator new();
                  }

                  v46 = *v44;
                  v45 = a1[11];
                  a1[11] = v45 + 1;
                }

                else
                {
                  if (*(a1 + 103) == 22)
                  {
                    goto LABEL_215;
                  }

                  v45 = *(a1 + 103);
                  *(a1 + 103) = (v100 + 1) & 0x7F;
                  v46 = a1 + 10;
                }

                v47 = &v45[v46];
                *v47 = v59;
                v47[1] = 0;
                continue;
              }

              goto LABEL_270;
            }

            goto LABEL_340;
          case 224:
            std::string::push_back((a1 + 10), -32);
            sub_23F07515C(a1);
            v102 = *(a1 + 5);
            if ((v102 - 192) < 0xFFFFFFE0)
            {
              goto LABEL_270;
            }

            goto LABEL_223;
          case 225:
          case 226:
          case 227:
          case 228:
          case 229:
          case 230:
          case 231:
          case 232:
          case 233:
          case 234:
          case 235:
          case 236:
          case 238:
          case 239:
            std::string::push_back((a1 + 10), v59);
            *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
            if (*(a1 + 24) == 1)
            {
              *(a1 + 24) = 0;
              v70 = *(a1 + 5);
            }

            else
            {
              v71 = *a1;
              if (*a1 == a1[1])
              {
                v70 = -1;
              }

              else
              {
                v70 = *v71;
                *a1 = v71 + 1;
              }

              *(a1 + 5) = v70;
            }

            if (v70 == -1)
            {
              goto LABEL_270;
            }

            v73 = a1[8];
            v72 = a1[9];
            if (v73 >= v72)
            {
              v75 = a1[7];
              v76 = (v73 - v75);
              v77 = v73 - v75 + 1;
              if (v77 < 0)
              {
                goto LABEL_340;
              }

              v78 = v72 - v75;
              if (2 * v78 > v77)
              {
                v77 = 2 * v78;
              }

              if (v78 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v79 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v79 = v77;
              }

              if (v79)
              {
                operator new();
              }

              v82 = v73 - v75;
              *v76 = v70;
              v74 = v76 + 1;
              memcpy(0, v75, v82);
              a1[7] = 0;
              a1[8] = v76 + 1;
              a1[9] = 0;
              if (v75)
              {
                operator delete(v75);
              }
            }

            else
            {
              *v73 = v70;
              v74 = v73 + 1;
            }

            a1[8] = v74;
            v83 = *(a1 + 5);
            if (v83 == 10)
            {
              goto LABEL_305;
            }

            if ((v83 - 192) < 0xFFFFFFC0)
            {
              goto LABEL_270;
            }

            v84 = *(a1 + 103);
            if (v84 < 0)
            {
              v85 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
              if (a1[11] == (v85 - 1))
              {
                if (v85 == 0x7FFFFFFFFFFFFFF8)
                {
                  goto LABEL_341;
                }

                if ((v85 - 1) >= 0x3FFFFFFFFFFFFFF3)
                {
                  operator new();
                }

LABEL_187:
                operator new();
              }

              v87 = *v44;
              v86 = a1[11];
              a1[11] = v86 + 1;
            }

            else
            {
              if (*(a1 + 103) == 22)
              {
                goto LABEL_187;
              }

              v86 = *(a1 + 103);
              *(a1 + 103) = (v84 + 1) & 0x7F;
              v87 = a1 + 10;
            }

            v88 = &v86[v87];
            *v88 = v83;
            v88[1] = 0;
            *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
            if (a1[3])
            {
              *(a1 + 24) = 0;
              v89 = *(a1 + 5);
              if (v89 == -1)
              {
                goto LABEL_270;
              }
            }

            else
            {
              v90 = *a1;
              if (*a1 == a1[1])
              {
                *(a1 + 5) = -1;
                goto LABEL_270;
              }

              v91 = *v90;
              LOBYTE(v89) = *v90;
              *a1 = v90 + 1;
              *(a1 + 5) = v91;
              if (v91 == -1)
              {
LABEL_270:
                v2 = "invalid string: ill-formed UTF-8 byte";
                goto LABEL_35;
              }
            }

            v92 = a1[8];
            v93 = a1[9];
            if (v92 < v93)
            {
              *v92 = v89;
              v94 = v92 + 1;
              goto LABEL_207;
            }

            v95 = a1[7];
            v96 = (v92 - v95);
            v97 = v92 - v95 + 1;
            if (v97 >= 0)
            {
              v98 = v93 - v95;
              if (2 * v98 > v97)
              {
                v97 = 2 * v98;
              }

              if (v98 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v99 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v99 = v97;
              }

              if (v99)
              {
                operator new();
              }

              *v96 = v89;
              v94 = v96 + 1;
              memcpy(0, v95, v92 - v95);
              a1[7] = 0;
              a1[8] = v94;
              a1[9] = 0;
              if (v95)
              {
                operator delete(v95);
              }

LABEL_207:
              a1[8] = v94;
              v59 = *(a1 + 5);
              if (v59 != 10)
              {
                goto LABEL_208;
              }

LABEL_305:
              v117 = (a1[6] + 1);
              a1[5] = 0;
              a1[6] = v117;
              v2 = "invalid string: ill-formed UTF-8 byte";
              goto LABEL_35;
            }

LABEL_340:
            sub_23EF3AE74();
          case 237:
            std::string::push_back((a1 + 10), -19);
            sub_23F07515C(a1);
            v102 = *(a1 + 5);
            if ((v102 - 160) < 0xFFFFFFE0)
            {
              goto LABEL_270;
            }

            goto LABEL_223;
          case 240:
            std::string::push_back((a1 + 10), -16);
            sub_23F07515C(a1);
            v81 = *(a1 + 5);
            if ((v81 - 192) < 0xFFFFFFD0)
            {
              goto LABEL_270;
            }

            goto LABEL_222;
          case 241:
          case 242:
          case 243:
            std::string::push_back((a1 + 10), v59);
            sub_23F07515C(a1);
            v81 = *(a1 + 5);
            if ((v81 - 192) < 0xFFFFFFC0)
            {
              goto LABEL_270;
            }

            goto LABEL_222;
          case 244:
            std::string::push_back((a1 + 10), -12);
            sub_23F07515C(a1);
            v81 = *(a1 + 5);
            if ((v81 - 144) < 0xFFFFFFF0)
            {
              goto LABEL_270;
            }

LABEL_222:
            std::string::push_back((a1 + 10), v81);
            sub_23F07515C(a1);
            v102 = *(a1 + 5);
            if ((v102 - 192) < 0xFFFFFFC0)
            {
              goto LABEL_270;
            }

LABEL_223:
            std::string::push_back((a1 + 10), v102);
            sub_23F07515C(a1);
            if ((*(a1 + 5) - 192) < 0xFFFFFFC0)
            {
              goto LABEL_270;
            }

            v103 = *(a1 + 5);
            goto LABEL_225;
          default:
            goto LABEL_270;
        }
      }

    case 44:
      return 13;
    case 45:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
      if (*(a1 + 103) < 0)
      {
        *a1[10] = 0;
        a1[11] = 0;
        v12 = *(a1 + 5);
        v14 = a1[7];
        a1[8] = v14;
        v16 = a1[9];
        if (v14 < v16)
        {
          goto LABEL_33;
        }

LABEL_38:
        operator new();
      }

      *(a1 + 80) = 0;
      *(a1 + 103) = 0;
      v14 = a1[7];
      a1[8] = v14;
      v15 = a1[9];
      if (v14 >= v15)
      {
        goto LABEL_38;
      }

LABEL_33:
      *v14 = v12;
      v17 = (a1 + 10);
      a1[8] = v14 + 1;
      v18 = *(a1 + 5);
      v19 = 5;
      if ((v18 - 49) >= 9)
      {
        if (v18 != 48)
        {
          if (v18 == 45)
          {
            std::string::push_back((a1 + 10), 45);
          }

          v39 = sub_23F07515C(a1);
          if ((v39 - 49) < 9)
          {
            v18 = *(a1 + 5);
            v20 = 6;
            goto LABEL_41;
          }

          if (v39 != 48)
          {
            v2 = "invalid number; expected digit after '-'";
            goto LABEL_35;
          }

          v18 = *(a1 + 5);
          v19 = 6;
        }

        std::string::push_back((a1 + 10), v18);
        v109 = sub_23F07515C(a1);
        if (v109 == 46)
        {
LABEL_76:
          std::string::push_back((a1 + 10), *(a1 + 136));
          if (sub_23F07515C(a1) - 48 > 9)
          {
            v2 = "invalid number; expected digit after '.'";
            goto LABEL_35;
          }

          do
          {
            std::string::push_back((a1 + 10), *(a1 + 20));
            v38 = sub_23F07515C(a1);
          }

          while ((v38 - 48) < 0xA);
          if (v38 != 101 && v38 != 69)
          {
            goto LABEL_280;
          }
        }

        else if (v109 != 69 && v109 != 101)
        {
          goto LABEL_281;
        }

        v35 = *(a1 + 5);
LABEL_278:
        std::string::push_back((a1 + 10), v35);
        v110 = sub_23F07515C(a1);
        if ((v110 - 48) >= 0xA)
        {
          if (v110 != 43 && v110 != 45)
          {
            v2 = "invalid number; expected '+', '-', or digit after exponent";
            goto LABEL_35;
          }

          std::string::push_back((a1 + 10), *(a1 + 20));
          if (sub_23F07515C(a1) - 48 >= 0xA)
          {
            v2 = "invalid number; expected digit after exponent sign";
            goto LABEL_35;
          }
        }

        do
        {
          std::string::push_back((a1 + 10), *(a1 + 20));
        }

        while (sub_23F07515C(a1) - 48 < 0xA);
LABEL_280:
        v19 = 7;
        goto LABEL_281;
      }

      v20 = 5;
LABEL_41:
      v118 = v20;
      std::string::push_back((a1 + 10), v18);
      v119 = vdupq_n_s64(1uLL);
      while (1)
      {
        *(a1 + 2) = vaddq_s64(*(a1 + 2), v119);
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v24 = *(a1 + 5);
        }

        else
        {
          v25 = *a1;
          if (*a1 == a1[1])
          {
            v24 = -1;
          }

          else
          {
            v24 = *v25;
            *a1 = v25 + 1;
          }

          *(a1 + 5) = v24;
        }

        if (v24 == -1)
        {
          v19 = v118;
          goto LABEL_281;
        }

        v27 = a1[8];
        v26 = a1[9];
        if (v27 >= v26)
        {
          v29 = a1[7];
          v30 = (v27 - v29);
          v31 = v27 - v29 + 1;
          if (v31 < 0)
          {
            goto LABEL_340;
          }

          v32 = v26 - v29;
          if (2 * v32 > v31)
          {
            v31 = 2 * v32;
          }

          if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v33 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            operator new();
          }

          v34 = v27 - v29;
          *v30 = v24;
          v28 = v30 + 1;
          memcpy(0, v29, v34);
          a1[7] = 0;
          a1[8] = v30 + 1;
          a1[9] = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v27 = v24;
          v28 = v27 + 1;
        }

        a1[8] = v28;
        v35 = *(a1 + 5);
        if ((v35 - 48) >= 0xA)
        {
          break;
        }

        v36 = *(a1 + 103);
        if (v36 < 0)
        {
          v37 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
          if (a1[11] == (v37 - 1))
          {
            if (v37 != 0x7FFFFFFFFFFFFFF8)
            {
              if ((v37 - 1) >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_69:
              operator new();
            }

LABEL_341:
            sub_23EF2F8F4();
          }

          v22 = *v17;
          v21 = a1[11];
          a1[11] = v21 + 1;
        }

        else
        {
          if (*(a1 + 103) == 22)
          {
            goto LABEL_69;
          }

          v21 = *(a1 + 103);
          *(a1 + 103) = (v36 + 1) & 0x7F;
          v22 = (a1 + 10);
        }

        v23 = &v21[v22];
        *v23 = v35;
        v23[1] = 0;
      }

      if (v35 <= 68)
      {
        v19 = v118;
        if (v35 == 10)
        {
          v40 = (a1[6] + 1);
          a1[5] = 0;
          a1[6] = v40;
        }

        else if (v35 == 46)
        {
          goto LABEL_76;
        }

        goto LABEL_281;
      }

      v19 = v118;
      if (v35 == 69 || v35 == 101)
      {
        goto LABEL_278;
      }

LABEL_281:
      v111 = a1 + 5;
      v112 = a1[5];
      *(a1 + 24) = 1;
      --a1[4];
      if (v112 || (v111 = a1 + 6, (v112 = a1[6]) != 0))
      {
        *v111 = v112 - 1;
      }

      if (*(a1 + 5) != -1)
      {
        --a1[8];
      }

      __endptr = 0;
      *__error() = 0;
      if (v19 == 6)
      {
        v115 = (a1 + 10);
        if (*(a1 + 103) < 0)
        {
          v115 = *v17;
        }

        v116 = strtoll(v115, &__endptr, 10);
        if (!*__error())
        {
          a1[14] = v116;
          return 6;
        }
      }

      else if (v19 == 5)
      {
        v113 = (a1 + 10);
        if (*(a1 + 103) < 0)
        {
          v113 = *v17;
        }

        v114 = strtoull(v113, &__endptr, 10);
        if (!*__error())
        {
          a1[15] = v114;
          return 5;
        }
      }

      if (*(a1 + 103) < 0)
      {
        v17 = *v17;
      }

      *(a1 + 16) = strtod(v17, &__endptr);
      return 7;
    case 58:
      return 12;
    case 91:
      return result;
    case 93:
      return 10;
    case 102:
      if (sub_23F07515C(a1) != 97 || sub_23F07515C(a1) != 108 || sub_23F07515C(a1) != 115 || sub_23F07515C(a1) != 101)
      {
        goto LABEL_112;
      }

      return 2;
    case 110:
      if (sub_23F07515C(a1) != 117 || sub_23F07515C(a1) != 108 || sub_23F07515C(a1) != 108)
      {
        goto LABEL_112;
      }

      return 3;
    case 116:
      if (sub_23F07515C(a1) != 114 || sub_23F07515C(a1) != 117 || sub_23F07515C(a1) != 101)
      {
        goto LABEL_112;
      }

      return 1;
    case 123:
      return 9;
    case 125:
      return 11;
    default:
LABEL_112:
      v2 = "invalid literal";
      goto LABEL_35;
  }
}

uint64_t sub_23F2E4B3C(uint64_t result, uint64_t a2)
{
  *(result + 88) = 1;
  if (*(result + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v4 = sub_23F07A500(exception, a2);
    __cxa_throw(v4, &unk_28517D130, sub_23F0771F4);
  }

  return result;
}

void sub_23F2E4B94(std::string *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *v4;
      if (v6 > 0x1F)
      {
        std::string::push_back(this, v6);
      }

      else
      {
        v9 = 0;
        *__str = 0;
        snprintf(__str, 9uLL, "<U+%.4X>", v6);
        v7 = strlen(__str);
        std::string::append(this, __str, v7);
      }

      ++v4;
    }

    while (v4 != a3);
  }
}

void sub_23F2E4C6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2E4C8C(std::string *this, uint64_t a2, int a3, const void **a4)
{
  v68 = *MEMORY[0x277D85DE8];
  *(&this->__r_.__value_.__s + 23) = 13;
  strcpy(this, "syntax error ");
  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    v8 = a4[1];
  }

  if (v8)
  {
    if (v8 + 14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    if (v8 + 14 > 0x16)
    {
      operator new();
    }

    memset(&v64, 0, sizeof(v64));
    *(&v64.__r_.__value_.__s + 23) = v8 + 14;
    qmemcpy(&v64, "while parsing ", 14);
    if ((v7 & 0x80u) == 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = *a4;
    }

    memmove(&v64.__r_.__value_.__r.__words[1] + 6, v9, v8);
    *(&v64.__r_.__value_.__r.__words[1] + v8 + 6) = 0;
    size = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v64.__r_.__value_.__l.__size_;
      v12 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v12 == v64.__r_.__value_.__l.__size_)
      {
        if ((v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          sub_23EF2F8F4();
        }

LABEL_16:
        operator new();
      }

      v11 = v64.__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = &v64;
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_16;
      }
    }

    v11->__r_.__value_.__s.__data_[size] = 32;
    v13 = size + 1;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      v64.__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&v64.__r_.__value_.__s + 23) = v13 & 0x7F;
    }

    v11->__r_.__value_.__s.__data_[v13] = 0;
    __p = v64;
    memset(&v64, 0, sizeof(v64));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(this, p_p, v15);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v64.__r_.__value_.__l.__data_);
  }

LABEL_29:
  std::string::append(this, "- ", 2uLL);
  v16 = *(a2 + 32);
  if (v16 == 14)
  {
    v17 = *(a2 + 144);
    v18 = strlen(v17);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
      __dst.__r_.__value_.__s.__data_[v19] = 0;
      v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v60 = a3;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v60 = a3;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_34:
        if (v20 - 9 < 0xE)
        {
          goto LABEL_47;
        }

        p_dst = &__dst;
        goto LABEL_66;
      }
    }

    v20 = __dst.__r_.__value_.__l.__size_;
    v24 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v24 - __dst.__r_.__value_.__l.__size_ < 0xE)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 14 - v24)
      {
        sub_23EF2F8F4();
      }

LABEL_47:
      operator new();
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_66:
    qmemcpy(p_dst + v20, "; last read: '", 14);
    v30 = v20 + 14;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v20 + 14;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v30 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v30] = 0;
    v63 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v32 = *(a2 + 96);
    v31 = *(a2 + 104);
    memset(&v61, 0, sizeof(v61));
    if (v32 == v31)
    {
      v41 = 0;
      v42 = 0;
      v40 = 0;
    }

    else
    {
      do
      {
        while (1)
        {
          while (1)
          {
            v34 = *v32;
            if (v34 > 0x1F)
            {
              break;
            }

            v67 = 0;
            *__str = 0;
            snprintf(__str, 9uLL, "<U+%.4X>", v34);
            v33 = strlen(__str);
            std::string::append(&v61, __str, v33);
            if (++v32 == v31)
            {
              goto LABEL_82;
            }
          }

          v35 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          if (HIBYTE(v61.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_78;
          }

          *(&v61.__r_.__value_.__s + 23) = (*(&v61.__r_.__value_.__s + 23) + 1) & 0x7F;
          v37 = &v61 + v35;
          *v37 = v34;
          v37[1] = 0;
          if (++v32 == v31)
          {
            goto LABEL_82;
          }
        }

        v36 = (v61.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v61.__r_.__value_.__l.__size_ == v36)
        {
          if ((v61.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23EF2F8F4();
          }

LABEL_78:
          operator new();
        }

        v38 = *&v61.__r_.__value_.__l.__data_;
        ++v61.__r_.__value_.__l.__size_;
        v39 = (v38 + *(&v38 + 1));
        *v39 = v34;
        v39[1] = 0;
        ++v32;
      }

      while (v32 != v31);
LABEL_82:
      v40 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      v41 = v61.__r_.__value_.__l.__size_;
      v42 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v40 & 0x80u) == 0)
    {
      v43 = &v61;
    }

    else
    {
      v43 = v42;
    }

    if ((v40 & 0x80u) == 0)
    {
      v44 = v40;
    }

    else
    {
      v44 = v41;
    }

    v45 = std::string::append(&v63, v43, v44);
    a3 = v60;
    v46 = *&v45->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v47 = v64.__r_.__value_.__l.__size_;
      v49 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v49 == v64.__r_.__value_.__l.__size_)
      {
        if ((v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          sub_23EF2F8F4();
        }

LABEL_95:
        operator new();
      }

      v48 = v64.__r_.__value_.__r.__words[0];
    }

    else
    {
      v48 = &v64;
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_95;
      }
    }

    v48->__r_.__value_.__s.__data_[v47] = 39;
    v50 = v47 + 1;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      v64.__r_.__value_.__l.__size_ = v50;
    }

    else
    {
      *(&v64.__r_.__value_.__s + 23) = v50 & 0x7F;
    }

    v48->__r_.__value_.__s.__data_[v50] = 0;
    __p = v64;
    memset(&v64, 0, sizeof(v64));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &__p;
    }

    else
    {
      v51 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(this, v51, v52);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_108:
        if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_131;
      }
    }

    else if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    operator delete(v64.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_109:
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_132;
    }

LABEL_131:
    operator delete(v61.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_110:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_133;
    }

LABEL_132:
    operator delete(v63.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_111:
      if (!a3)
      {
        return;
      }

      goto LABEL_112;
    }

LABEL_133:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!v60)
    {
      return;
    }

    goto LABEL_112;
  }

  if (v16 > 0x10)
  {
    v21 = "unknown token";
  }

  else
  {
    v21 = off_278C75470[v16];
  }

  v22 = strlen(v21);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&v64.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memcpy(&v64, v21, v22);
  }

  v64.__r_.__value_.__s.__data_[v23] = 0;
  v25 = std::string::insert(&v64, 0, "unexpected ", 0xBuLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(this, v27, v28);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }
  }

  else if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_111;
  }

  operator delete(v64.__r_.__value_.__l.__data_);
  if (!a3)
  {
    return;
  }

LABEL_112:
  v53 = off_278C754F8[a3 - 1];
  v54 = strlen(v53);
  if (v54 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  v55 = v54;
  if (v54 >= 0x17)
  {
    operator new();
  }

  *(&v64.__r_.__value_.__s + 23) = v54;
  if (v54)
  {
    memcpy(&v64, v53, v54);
  }

  v64.__r_.__value_.__s.__data_[v55] = 0;
  v56 = std::string::insert(&v64, 0, "; expected ", 0xBuLL);
  v57 = *&v56->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = &__p;
  }

  else
  {
    v58 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(this, v58, v59);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_128:
      operator delete(v64.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_128;
  }
}

void sub_23F2E57EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a37 < 0)
  {
    operator delete(a32);
    if (a18 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_3;
  }

  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_10:
      if (*(a12 + 23) < 0)
      {
        operator delete(*a12);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a19);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a25);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_23F2E5944(uint64_t result, uint64_t a2)
{
  *(result + 40) = 1;
  if (*(result + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v4 = sub_23F07A500(exception, a2);
    __cxa_throw(v4, &unk_28517D130, sub_23F0771F4);
  }

  return result;
}

void sub_23F2E599C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8))
  {
    LODWORD(v31) = ((v2 - *(a1 + 8)) >> 3) - 1;
    v30[0] = 1;
    v3 = *(a1 + 120);
    if (!v3)
    {
      sub_23EF38C6C();
    }

    if (((*(*v3 + 48))(v3, &v31, v30) & 1) == 0)
    {
      sub_23F06F0C0(v28, (a1 + 136));
      v4 = *(*(a1 + 16) - 8);
      v5 = *v4;
      *v4 = v28[0];
      v28[0] = v5;
      v6 = *(v4 + 1);
      *(v4 + 1) = v29;
      v29 = v6;
      sub_23F0655DC(&v29, v5);
    }
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 16) = v7 - 8;
  --*(a1 + 40);
  if (v8 != v7 - 8)
  {
    v9 = *(v7 - 16);
    if (v9)
    {
      v10 = *v9;
      if ((v10 - 1) <= 1)
      {
        v11 = *(v9 + 1);
        if (v10 == 1)
        {
          v12 = *v11;
        }

        else
        {
          v12 = 0;
        }

        if (v10 == 1)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v11;
        }

        while (1)
        {
          if (v10 == 1)
          {
            if (v12 == v11[1])
            {
              return;
            }

            v14 = v12 + 3;
          }

          else
          {
            if (v10 != 2)
            {
              exception = __cxa_allocate_exception(0x20uLL);
              sub_23EF3F240(&v31, "cannot get value");
              sub_23F070D14(214, &v31, exception);
              __cxa_throw(exception, &unk_28517D0C8, sub_23F070EA8);
            }

            v14 = v13;
            if (v13 == v11[1])
            {
              return;
            }
          }

          if (*v14 == 9)
          {
            break;
          }

          if (v10 == 1)
          {
            v12 += 5;
          }

          else
          {
            v13 += 2;
          }
        }

        if (v10 == 2)
        {
          v19 = v11[1];
          v20 = v13 + 2;
          if (v13 + 2 != v19)
          {
            do
            {
              v21 = *v20;
              v22 = v20[1];
              *v20 = 0;
              v20[1] = 0;
              v23 = *(v20 - 16);
              *(v20 - 16) = v21;
              LOBYTE(v31) = v23;
              v24 = *(v20 - 1);
              *(v20 - 1) = v22;
              v32 = v24;
              sub_23F0655DC(&v32, v23);
              v20 += 2;
            }

            while (v20 != v19);
            v19 = v11[1];
            v13 = v20 - 2;
          }

          if (v19 != v13)
          {
            v25 = v19 - 1;
            do
            {
              v26 = v25 - 1;
              sub_23F0655DC(v25, *(v25 - 8));
              v25 -= 2;
            }

            while (v26 != v13);
          }

          v11[1] = v13;
        }

        else
        {
          v15 = v11[1];
          for (i = v12 + 5; i != v15; i += 5)
          {
            v17 = (i - 5);
            sub_23F0655DC(i - 1, *(i - 16));
            if (*(i - 17) < 0)
            {
              operator delete(*v17);
            }

            if (*(i + 23) < 0)
            {
              sub_23EF34EA4(i - 40, *i, i[1]);
            }

            else
            {
              *v17 = *i;
              *(i - 3) = i[2];
            }

            *(i - 16) = *(i + 24);
            *(i - 1) = i[4];
            *(i + 24) = 0;
            i[4] = 0;
            v15 = v11[1];
          }

          v18 = (v15 - 5);
          sub_23F0655DC(v15 - 1, *(v15 - 16));
          if (*(v15 - 17) < 0)
          {
            operator delete(*v18);
          }

          v11[1] = v18;
        }
      }
    }
  }
}

void sub_23F2E5E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v23)
  {
    __cxa_free_exception(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2E6078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, void **a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  sub_23F0655DC((v15 + 8), a15);
  sub_23F0655DC(&a11, a10);
  sub_23F0655DC((v16 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_23F2E60D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v2 - 8);
  v3 = v2 - 8;
  if (!v4)
  {
    *(a1 + 16) = v3;
    goto LABEL_6;
  }

  v18 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  v17 = 3;
  v5 = *(a1 + 120);
  if (!v5)
  {
    sub_23EF38C6C();
  }

  if ((*(*v5 + 48))(v5, &v18, &v17))
  {
    *(a1 + 16) -= 8;
LABEL_6:
    --*(a1 + 40);
    return;
  }

  sub_23F06F0C0(v15, (a1 + 136));
  v6 = *(*(a1 + 16) - 8);
  v7 = *v6;
  *v6 = v15[0];
  v15[0] = v7;
  v8 = *(v6 + 1);
  *(v6 + 1) = v16;
  v16 = v8;
  sub_23F0655DC(&v16, v7);
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a1 + 16) = v9 - 8;
  --*(a1 + 40);
  if (v10 != v9 - 8)
  {
    v11 = *(v9 - 16);
    if (*v11 == 2)
    {
      v12 = *(v11 + 8);
      v13 = *(v12 + 8);
      v14 = *(v13 - 16);
      v13 -= 16;
      sub_23F0655DC((v13 + 8), v14);
      *(v12 + 8) = v13;
    }
  }
}

uint64_t sub_23F2E6220(uint64_t result, uint64_t a2)
{
  *(result + 88) = 1;
  if (*(result + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_23F079730(exception, a2);
    __cxa_throw(v4, &unk_28517D0B0, sub_23F078DC8);
  }

  return result;
}

unsigned __int8 *sub_23F2E6278(unsigned __int8 **a1, char a2)
{
  if (((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)) & 1) == 0)
  {
    return 0;
  }

  v25[0] = a2;
  sub_23F2DA120(&v26, a2);
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = v25[0];
    v10 = v26;
    v25[0] = 0;
    v26 = 0;
    v11 = *a1;
    v12 = **a1;
    *v11 = v9;
    v23 = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v10;
    v24 = v13;
    sub_23F0655DC(&v24, v12);
    v14 = *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (!v4)
    {
      goto LABEL_11;
    }

    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v7 = sub_23F065DA8(v5, v25);
      }

      else
      {
        *v6 = v25[0];
        *(v6 + 8) = v26;
        v25[0] = 0;
        v26 = 0;
        v7 = (v6 + 16);
      }

      *(v5 + 8) = v7;
      v14 = (*(*(*(a1[2] - 1) + 8) + 8) - 16);
      goto LABEL_14;
    }

    v15 = a1[8] - 1;
    v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
    a1[8] = v15;
    if ((v16 >> v15))
    {
      v17 = v25[0];
      v18 = v26;
      v25[0] = 0;
      v26 = 0;
      v19 = a1[10];
      v20 = *v19;
      *v19 = v17;
      v21 = *(v19 + 1);
      *(v19 + 1) = v18;
      v22 = v21;
      sub_23F0655DC(&v22, v20);
      v14 = a1[10];
    }

    else
    {
LABEL_11:
      v14 = 0;
    }
  }

LABEL_14:
  sub_23F0655DC(&v26, v25[0]);
  return v14;
}

void sub_23F2E6438(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_23F2E6550();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_23F2E6568(uint64_t a1)
{
  sub_23F0655DC((a1 + 144), *(a1 + 136));
  v2 = *(a1 + 120);
  if (v2 == a1 + 96)
  {
    (*(*v2 + 32))(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
LABEL_5:
      operator delete(v3);
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_23F2E6628(uint64_t result, uint64_t a2)
{
  *(result + 40) = 1;
  if (*(result + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_23F079730(exception, a2);
    __cxa_throw(v4, &unk_28517D0B0, sub_23F078DC8);
  }

  return result;
}

unsigned __int8 *sub_23F2E6680(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v33 = v10;
    sub_23F2DA120(v34, v10);
    v11 = *a1;
    v12 = **a1;
    *v11 = v33;
    v33 = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v34[0];
    v34[0] = v13;
    sub_23F0655DC(v34, v12);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v7 = v5[1];
      v6 = v5[2];
      if (v7 >= v6)
      {
        v19 = (v7 - *v5) >> 4;
        if ((v19 + 1) >> 60)
        {
          sub_23F063D28();
        }

        v20 = v6 - *v5;
        v21 = v20 >> 3;
        if (v20 >> 3 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        v38 = v5;
        if (v22)
        {
          if (!(v22 >> 60))
          {
            operator new();
          }

          sub_23EF34E18();
        }

        v34[1] = 0;
        v35 = (16 * v19);
        v36 = 16 * v19;
        v37 = 0;
        v23 = *a2;
        *v35 = v23;
        sub_23F2DA120((16 * v19 + 8), v23);
        v9 = v36 + 16;
        v24 = *v5;
        v25 = v5[1];
        v26 = &v35[*v5 - v25];
        if (v25 != *v5)
        {
          v27 = *v5;
          v28 = &v35[*v5 - v25];
          do
          {
            *v28 = *v27;
            *(v28 + 1) = v27[1];
            *v27 = 0;
            v27[1] = 0;
            v27 += 2;
            v28 += 16;
          }

          while (v27 != v25);
          v29 = v24;
          do
          {
            v30 = *v29;
            v29 += 2;
            sub_23F0655DC(v24 + 1, v30);
            v24 = v29;
          }

          while (v29 != v25);
          v24 = *v5;
        }

        *v5 = v26;
        v5[1] = v9;
        v5[2] = v37;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        v8 = *a2;
        *v7 = v8;
        sub_23F2DA120(v7 + 1, v8);
        v9 = (v7 + 2);
        v5[1] = v9;
      }

      v5[1] = v9;
      return (*(*(*(a1[2] - 1) + 8) + 8) - 16);
    }

    else
    {
      v15 = *a2;
      v31 = v15;
      sub_23F2DA120(&v32, v15);
      v16 = a1[4];
      v17 = *v16;
      *v16 = v31;
      v18 = *(v16 + 1);
      *(v16 + 1) = v32;
      v32 = v18;
      sub_23F0655DC(&v32, v17);
      return a1[4];
    }
  }
}

void sub_23F2E68E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23F071EA8(va);
  _Unwind_Resume(a1);
}

void sub_23F2E6904(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v9 = &v32;
    v10 = *a2;
    v11 = *a1;
    v12 = **a1;
    *v11 = 4;
    v32 = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v10;
    v33 = v13;
LABEL_7:
    sub_23F0655DC(v9 + 1, v12);
    return;
  }

  v3 = *(v2 - 1);
  if (*v3 != 2)
  {
    v9 = &v30;
    v14 = *a2;
    v15 = a1[4];
    v12 = *v15;
    *v15 = 4;
    v30 = v12;
    v16 = *(v15 + 1);
    *(v15 + 1) = v14;
    v31 = v16;
    goto LABEL_7;
  }

  v4 = *(v3 + 8);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v17 = *v4;
    v18 = (v6 - *v4) >> 4;
    v19 = v18 + 1;
    if ((v18 + 1) >> 60)
    {
      sub_23F063D28();
    }

    v20 = v5 - v17;
    if (v20 >> 3 > v19)
    {
      v19 = v20 >> 3;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF0)
    {
      v21 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (!(v21 >> 60))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v22 = (v6 - *v4) >> 4;
    v23 = 16 * v18;
    v24 = *a2;
    *v23 = 4;
    *(v23 + 8) = v24;
    v8 = 16 * v18 + 16;
    v25 = v23 - 16 * v22;
    if (v17 != v6)
    {
      v26 = v17;
      v27 = v23 - 16 * v22;
      do
      {
        *v27 = *v26;
        *(v27 + 8) = v26[1];
        *v26 = 0;
        v26[1] = 0;
        v26 += 2;
        v27 += 16;
      }

      while (v26 != v6);
      v28 = v17;
      do
      {
        v29 = *v28;
        v28 += 2;
        sub_23F0655DC(v17 + 1, v29);
        v17 = v28;
      }

      while (v28 != v6);
      v17 = *v4;
    }

    *v4 = v25;
    *(v4 + 8) = v8;
    *(v4 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *(v6 + 8) = 0;
    v7 = *a2;
    *v6 = 4;
    *(v6 + 8) = v7;
    v8 = v6 + 16;
  }

  *(v4 + 8) = v8;
}

uint64_t sub_23F2E6B08(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_23F2E6BD4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t *sub_23F2E6C78(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    if (*(a1 + 100))
    {
      v30 = *(a1 + 96);
      v16 = sub_23F0699D8(*(a1 + 40), 0);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v30;
      v30 = v18;
      sub_23F06357C(&v30, v17);
      if (*(a1 + 100) == 1)
      {
        *(a1 + 100) = 0;
      }
    }

    v19 = *(a1 + 40);
    v20 = *v19;
    if (*v19)
    {
      if (v20 == 1)
      {
        v20 = *(*(v19 + 1) + 16);
      }

      else if (v20 == 2)
      {
        v20 = (*(*(v19 + 1) + 8) - **(v19 + 1)) >> 4;
      }

      else
      {
        v20 = 1;
      }
    }

    return sub_23F0699D8(v19, v20);
  }

  if (!*(a1 + 100))
  {
    goto LABEL_41;
  }

  v2 = *(a1 + 96);
  v31 = 6;
  v32 = v2;
  v3 = *(a1 + 40);
  if (!*v3)
  {
    *v3 = 1;
    operator new();
  }

  if (*v3 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v29 = sub_23F06D864(v3);
    sub_23EF3F240(&v33, v29);
    sub_23F06C3EC("cannot use operator[] with a string argument with ", &v33, &__s1);
    sub_23F06D6C8(305, &__s1, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v4 = *(v3 + 8);
  *(&__s1.__r_.__value_.__s + 23) = 7;
  strcpy(&__s1, "version");
  v5 = *(v4 + 8);
  if (!v5)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v9 = v5[4];
      v7 = v5 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = v12 >= 7 ? 7 : v12;
      v14 = memcmp(&__s1, v11, v13);
      if (v14)
      {
        break;
      }

      if (v12 <= 7)
      {
        goto LABEL_22;
      }

LABEL_8:
      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_38;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, &__s1, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_26;
    }

    if (v12 >= 7)
    {
      break;
    }

LABEL_26:
    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_38;
    }
  }

  v22 = *(v6 + 56);
  *(v6 + 56) = 6;
  v31 = v22;
  v23 = v6[8];
  v6[8] = v32;
  v32 = v23;
  sub_23F06357C(&v32, v22);
  if (*(a1 + 100) == 1)
  {
    *(a1 + 100) = 0;
  }

LABEL_41:
  v24 = *(a1 + 80);
  if (v24 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 72);
  if (v24 >= 0x17)
  {
    operator new();
  }

  *(&__s1.__r_.__value_.__s + 23) = v24;
  if (v24)
  {
    memmove(&__s1, v26, v24);
  }

  __s1.__r_.__value_.__s.__data_[v24] = 0;
  result = sub_23F06CB80(v25, &__s1.__r_.__value_.__l.__data_);
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    v27 = result;
    operator delete(__s1.__r_.__value_.__l.__data_);
    return v27;
  }

  return result;
}

uint64_t *sub_23F2E710C(uint64_t a1)
{
  sub_23F07903C(a1 + 48, (a1 + 40));
  result = sub_23F2E6C78(a1);
  *(a1 + 40) = result;
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  return result;
}

void sub_23F2E7154(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EF594(&v4, &v3);
}

void sub_23F2E7294(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void ***sub_23F2E72C0(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 100))
    {
      v2 = *(a1 + 96);
      v21 = 6;
      v22 = v2;
      v3 = *(a1 + 40);
      if (!*v3)
      {
        *v3 = 1;
        operator new();
      }

      if (*v3 != 1)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        v19 = sub_23F06D864(v3);
        sub_23EF3F240(&v23, v19);
        sub_23F06C3EC("cannot use operator[] with a string argument with ", &v23, &__p);
        sub_23F06D6C8(305, &__p, exception);
        __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
      }

      v4 = *(v3 + 8);
      *(&__p.__r_.__value_.__s + 23) = 7;
      strcpy(&__p, "version");
      v23.__r_.__value_.__s.__data_[0] = 0;
      v23.__r_.__value_.__l.__size_ = 0;
      v5 = sub_23F06EDE4(v4, &__p, &v23);
      sub_23F0655DC(&v23.__r_.__value_.__l.__size_, v23.__r_.__value_.__s.__data_[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v6 = *(v5 + 24);
      *(v5 + 24) = 6;
      v21 = v6;
      v7 = v5[4];
      v5[4] = v22;
      v22 = v7;
      sub_23F0655DC(&v22, v6);
      if (*(a1 + 100) == 1)
      {
        *(a1 + 100) = 0;
      }
    }

    v8 = *(a1 + 80);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 72);
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v8;
    if (v8)
    {
      memmove(&__p, v10, v8);
    }

    __p.__r_.__value_.__s.__data_[v8] = 0;
    result = sub_23F06E270(v9, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = result;
      operator delete(__p.__r_.__value_.__l.__data_);
      return v17;
    }
  }

  else
  {
    if (*(a1 + 100))
    {
      v20 = *(a1 + 96);
      v11 = sub_23F069D1C(*(a1 + 40), 0);
      v12 = *v11;
      *v11 = 6;
      v13 = v11[1];
      v11[1] = v20;
      v20 = v13;
      sub_23F0655DC(&v20, v12);
      if (*(a1 + 100) == 1)
      {
        *(a1 + 100) = 0;
      }
    }

    v14 = *(a1 + 40);
    v15 = *v14;
    if (*v14)
    {
      if (v15 == 1)
      {
        v15 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v14 + 1) + 8) - **(v14 + 1)) >> 3);
      }

      else if (v15 == 2)
      {
        v15 = (*(*(v14 + 1) + 8) - **(v14 + 1)) >> 4;
      }

      else
      {
        v15 = 1;
      }
    }

    return sub_23F069D1C(v14, v15);
  }

  return result;
}

void ***sub_23F2E76AC(uint64_t a1)
{
  sub_23F2E6438(a1 + 48, (a1 + 40));
  result = sub_23F2E72C0(a1);
  *(a1 + 40) = result;
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  return result;
}

void sub_23F2E76F4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EFF70(&v4, &v3);
}

void sub_23F2E7834(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E7860(uint64_t a1, float *a2)
{
  if (*(a1 + 32) == 1 && (*a2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v11 = 0;
    sub_23EF8158C(&v13, v10, a2);
    if (v11 != -1)
    {
      v13 = &v12;
      (off_28518D820[v11])(__p, &v13, v10);
      if (v11 != -1)
      {
        (off_28518D808[v11])(&v13, v10);
      }

      v9 = 0;
      v8 = 3;
      operator new();
    }

    sub_23EF41D6C();
  }

  v6 = *a2;
  v3 = sub_23F2E6C78(a1);
  v4 = *v3;
  *v3 = 7;
  v5 = v3[1];
  *(v3 + 1) = v6;
  v6 = *&v5;
  sub_23F06357C(&v6, v4);
}

void sub_23F2E79F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_23F06357C((v20 + 8), 3);
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E7A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E7A64(uint64_t a1, double *a2)
{
  if (*(a1 + 32) == 1 && (*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    sub_23F05B5C8(&v13, v10, a2);
    if (v11 != -1)
    {
      v13 = &v12;
      (off_28518D820[v11])(__p, &v13, v10);
      if (v11 != -1)
      {
        (off_28518D808[v11])(&v13, v10);
      }

      v9 = 0;
      v8 = 3;
      operator new();
    }

    sub_23EF41D6C();
  }

  v6 = *a2;
  v3 = sub_23F2E6C78(a1);
  v4 = *v3;
  *v3 = 7;
  v5 = v3[1];
  v3[1] = v6;
  v6 = v5;
  sub_23F06357C(&v6, v4);
}

void sub_23F2E7BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_23F06357C((v20 + 8), 3);
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E7C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E7C64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == 1936876918) ? (v5 = v4 == 1852795251) : (v5 = 0), !v5))
  {
    operator new();
  }
}

void sub_23F2E7D88(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EF4B0(&v4, &v3);
}

void sub_23F2E7EC8(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E7EF4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EF678(&v4, &v3);
}

void sub_23F2E8050(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E807C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EF760(&v4, &v3);
}

void sub_23F2E81D8(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E8204(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EF848(&v4, &v3);
}

void sub_23F2E8360(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E838C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EF930(&v4, &v3);
}

void sub_23F2E84E8(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E8514(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EFA18(&v4, &v3);
}

void sub_23F2E8670(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E869C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EFB00(&v4, &v3);
}

void sub_23F2E87F8(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E8824(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != 1)
  {
    v13 = *(a2 + 8);
    if (v13)
    {
      if (!(-((-2 * v13) >> 1) >> 61))
      {
        operator new();
      }

      sub_23EF62578();
    }

    __p[0] = 0;
    v17 = 0;
    sub_23F2EFDA4(&v17, __p);
  }

  v3 = sub_23F2E6C78(a1);
  v4 = *(a2 + 8);
  if (!v4)
  {
    v17 = 0;
    __p[0] = 0;
    sub_23F2EFDA4(&v17, __p);
  }

  v5 = *a2;
  v6 = 2 * v4;
  do
  {
    if ((~*v5 & 0x7C00) == 0)
    {
      v19 = 0;
      sub_23F286EC0(&v21, &v17, v5);
      if (v19 != -1)
      {
        v21 = &v20;
        (off_28518D820[v19])(__p, &v21, &v17);
        if (v19 != -1)
        {
          (off_28518D808[v19])(&v21, &v17);
        }

        v16 = 0;
        v15[0] = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    _H0 = *v5;
    __asm { FCVT            D0, H0 }

    LOBYTE(v17) = 7;
    v18 = _D0;
    sub_23F2EFBE8(v3, &v17);
    sub_23F06357C(&v18, v17);
    ++v5;
    v6 -= 2;
  }

  while (v6);
}

void sub_23F2E8B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F06357C((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E8C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E8C48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != 1)
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_23EF62578();
    }

    operator new();
  }

  v3 = sub_23F2E6C78(a1);
  v4 = *(a2 + 8);
  if (!v4)
  {
    v12 = 0;
    __p[0] = 0;
    sub_23F2EFDA4(&v12, __p);
  }

  v5 = *a2;
  v6 = 4 * v4;
  do
  {
    v7 = *v5;
    if ((*v5 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      v14 = 0;
      sub_23EF8158C(&v16, &v12, v5);
      if (v14 != -1)
      {
        v16 = &v15;
        (off_28518D820[v14])(__p, &v16, &v12);
        if (v14 != -1)
        {
          (off_28518D808[v14])(&v16, &v12);
        }

        v11 = 0;
        v10[0] = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    LOBYTE(v12) = 7;
    v13 = v7;
    sub_23F2EFBE8(v3, &v12);
    sub_23F06357C(&v13, v12);
    ++v5;
    v6 -= 4;
  }

  while (v6);
}

void sub_23F2E8FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F06357C((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E9094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E90A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != 1)
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_23EF62578();
    }

    __p[0] = 0;
    v12 = 0;
    sub_23F2EFDA4(&v12, __p);
  }

  v3 = sub_23F2E6C78(a1);
  v4 = *(a2 + 8);
  if (!v4)
  {
    v12 = 0;
    __p[0] = 0;
    sub_23F2EFDA4(&v12, __p);
  }

  v5 = *a2;
  v6 = 8 * v4;
  do
  {
    v7 = *v5;
    if ((*v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v14 = 0;
      sub_23F05B5C8(&v16, &v12, v5);
      if (v14 != -1)
      {
        v16 = &v15;
        (off_28518D820[v14])(__p, &v16, &v12);
        if (v14 != -1)
        {
          (off_28518D808[v14])(&v16, &v12);
        }

        v11 = 0;
        v10[0] = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    LOBYTE(v12) = 7;
    v13 = v7;
    sub_23F2EFBE8(v3, &v12);
    sub_23F06357C(&v13, v12);
    ++v5;
    v6 -= 8;
  }

  while (v6);
}

void sub_23F2E93B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F06357C((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E945C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E9470(uint64_t a1, uint64_t a2)
{
  sub_23EF367A0(&__p, *a2, (*a2 + 24 * *(a2 + 8)));
  v4 = 0;
  v3 = 2;
  operator new();
}

void sub_23F2E9674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F06357C((v3 + 8), 2);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2E9694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2E96A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_23F071E1C(va1);
  operator delete(v3);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2E96F0(uint64_t a1, float *a2)
{
  if (*(a1 + 32) == 1 && (*a2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v11 = 0;
    sub_23EF8158C(&v13, v10, a2);
    if (v11 != -1)
    {
      v13 = &v12;
      (off_28518D820[v11])(__p, &v13, v10);
      if (v11 != -1)
      {
        (off_28518D808[v11])(&v13, v10);
      }

      v9 = 0;
      v8 = 3;
      operator new();
    }

    sub_23EF41D6C();
  }

  v6 = *a2;
  v3 = sub_23F2E72C0(a1);
  v4 = *v3;
  *v3 = 7;
  v5 = v3[1];
  *(v3 + 1) = v6;
  v6 = *&v5;
  sub_23F0655DC(&v6, v4);
}

void sub_23F2E9884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_23F0655DC((v20 + 8), 3);
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E98E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E98F4(uint64_t a1, double *a2)
{
  if (*(a1 + 32) == 1 && (*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    sub_23F05B5C8(&v13, v10, a2);
    if (v11 != -1)
    {
      v13 = &v12;
      (off_28518D820[v11])(__p, &v13, v10);
      if (v11 != -1)
      {
        (off_28518D808[v11])(&v13, v10);
      }

      v9 = 0;
      v8 = 3;
      operator new();
    }

    sub_23EF41D6C();
  }

  v6 = *a2;
  v3 = sub_23F2E72C0(a1);
  v4 = *v3;
  *v3 = 7;
  v5 = v3[1];
  v3[1] = v6;
  v6 = v5;
  sub_23F0655DC(&v6, v4);
}

void sub_23F2E9A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_23F0655DC((v20 + 8), 3);
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E9AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E9AF4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == 1936876918) ? (v5 = v4 == 1852795251) : (v5 = 0), !v5))
  {
    operator new();
  }
}

void sub_23F2E9C18(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2EFE8C(&v4, &v3);
}

void sub_23F2E9D58(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E9D84(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2F0054(&v4, &v3);
}

void sub_23F2E9EE0(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E9F0C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2F013C(&v4, &v3);
}

void sub_23F2EA068(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA094(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2F0224(&v4, &v3);
}

void sub_23F2EA1F0(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA21C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2F030C(&v4, &v3);
}

void sub_23F2EA378(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA3A4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2F03F4(&v4, &v3);
}

void sub_23F2EA500(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA52C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  v4 = 0;
  sub_23F2F04DC(&v4, &v3);
}

void sub_23F2EA688(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA6B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != 1)
  {
    v13 = *(a2 + 8);
    if (v13)
    {
      if (!(-((-2 * v13) >> 1) >> 61))
      {
        operator new();
      }

      sub_23EF62578();
    }

    __p[0] = 0;
    v17 = 0;
    sub_23F2F0780(&v17, __p);
  }

  v3 = sub_23F2E72C0(a1);
  v4 = *(a2 + 8);
  if (!v4)
  {
    v17 = 0;
    __p[0] = 0;
    sub_23F2F0780(&v17, __p);
  }

  v5 = *a2;
  v6 = 2 * v4;
  do
  {
    if ((~*v5 & 0x7C00) == 0)
    {
      v19 = 0;
      sub_23F286EC0(&v21, &v17, v5);
      if (v19 != -1)
      {
        v21 = &v20;
        (off_28518D820[v19])(__p, &v21, &v17);
        if (v19 != -1)
        {
          (off_28518D808[v19])(&v21, &v17);
        }

        v16 = 0;
        v15[0] = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    _H0 = *v5;
    __asm { FCVT            D0, H0 }

    LOBYTE(v17) = 7;
    v18 = _D0;
    sub_23F2F05C4(v3, &v17);
    sub_23F0655DC(&v18, v17);
    ++v5;
    v6 -= 2;
  }

  while (v6);
}

void sub_23F2EAA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F0655DC((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EAAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2EAAD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != 1)
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_23EF62578();
    }

    operator new();
  }

  v3 = sub_23F2E72C0(a1);
  v4 = *(a2 + 8);
  if (!v4)
  {
    v12 = 0;
    __p[0] = 0;
    sub_23F2F0780(&v12, __p);
  }

  v5 = *a2;
  v6 = 4 * v4;
  do
  {
    v7 = *v5;
    if ((*v5 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      v14 = 0;
      sub_23EF8158C(&v16, &v12, v5);
      if (v14 != -1)
      {
        v16 = &v15;
        (off_28518D820[v14])(__p, &v16, &v12);
        if (v14 != -1)
        {
          (off_28518D808[v14])(&v16, &v12);
        }

        v11 = 0;
        v10[0] = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    LOBYTE(v12) = 7;
    v13 = v7;
    sub_23F2F05C4(v3, &v12);
    sub_23F0655DC(&v13, v12);
    ++v5;
    v6 -= 4;
  }

  while (v6);
}

void sub_23F2EAE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F0655DC((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EAF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2EAF38(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != 1)
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_23EF62578();
    }

    __p[0] = 0;
    v12 = 0;
    sub_23F2F0780(&v12, __p);
  }

  v3 = sub_23F2E72C0(a1);
  v4 = *(a2 + 8);
  if (!v4)
  {
    v12 = 0;
    __p[0] = 0;
    sub_23F2F0780(&v12, __p);
  }

  v5 = *a2;
  v6 = 8 * v4;
  do
  {
    v7 = *v5;
    if ((*v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v14 = 0;
      sub_23F05B5C8(&v16, &v12, v5);
      if (v14 != -1)
      {
        v16 = &v15;
        (off_28518D820[v14])(__p, &v16, &v12);
        if (v14 != -1)
        {
          (off_28518D808[v14])(&v16, &v12);
        }

        v11 = 0;
        v10[0] = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    LOBYTE(v12) = 7;
    v13 = v7;
    sub_23F2F05C4(v3, &v12);
    sub_23F0655DC(&v13, v12);
    ++v5;
    v6 -= 8;
  }

  while (v6);
}

void sub_23F2EB248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F0655DC((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EB2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2EB300(uint64_t a1, uint64_t a2)
{
  sub_23EF367A0(&__p, *a2, (*a2 + 24 * *(a2 + 8)));
  v4 = 0;
  v3 = 2;
  operator new();
}

void sub_23F2EB504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F0655DC((v3 + 8), 2);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EB524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EB538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_23F06F5C0(va1);
  operator delete(v3);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EB580(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v2;
  sub_23F2EB5F4(a1 + 40, &v3);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }
}

void sub_23F2EB5F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_23F2EDA68();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t *sub_23F2EB70C(void *a1)
{
  v1 = a1[4];
  if (*v1 == 2)
  {
    v2 = a1[14];
    v3 = a1[4];

    return sub_23F06F884(v3, v2);
  }

  else
  {
    v5 = a1[12];
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = a1[11];
    if (v5 >= 0x17)
    {
      operator new();
    }

    v9 = a1[12];
    if (v5)
    {
      memmove(&__dst, v6, v5);
    }

    *(&__dst + v5) = 0;
    result = sub_23F2D9694(v1, &__dst);
    if (v9 < 0)
    {
      v7 = result;
      operator delete(__dst);
      return v7;
    }
  }

  return result;
}

void sub_23F2EB83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EB858(unsigned __int8 *a1, void *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_23F2EDFA0(a1, &__p);
  v3 = __p;
  v4 = v8;
  if (__p != v8)
  {
    v5 = *a2;
    do
    {
      if (*v3 >= 0x100uLL)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v3++;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

void sub_23F2EB910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EB930(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v2;
  sub_23F2EB5F4(a1 + 40, &v3);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }
}

uint64_t sub_23F2EB9A4(void *a1)
{
  v1 = a1[4];
  if (*v1 == 2)
  {
    v2 = a1[14];
    v3 = a1[4];

    return sub_23F07019C(v3, v2);
  }

  else
  {
    v5 = a1[12];
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = a1[11];
    if (v5 >= 0x17)
    {
      operator new();
    }

    v9 = a1[12];
    if (v5)
    {
      memmove(&__dst, v6, v5);
    }

    *(&__dst + v5) = 0;
    result = sub_23F2D97AC(v1, &__dst);
    if (v9 < 0)
    {
      v7 = result;
      operator delete(__dst);
      return v7;
    }
  }

  return result;
}

void sub_23F2EBAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EBAF0(unsigned __int8 *a1, void *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_23F2EEE3C(a1, &__p);
  v3 = __p;
  v4 = v8;
  if (__p != v8)
  {
    v5 = *a2;
    do
    {
      if (*v3 >= 0x100uLL)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v3++;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

void sub_23F2EBBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EBBC8(void *a1, _BYTE *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FC08(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBC60(void *a1, _BYTE *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FAB4(v4, &v6);
  if (v6 >= 0x100)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBCF8(void *a1, _WORD *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FC08(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBD90(void *a1, _WORD *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FAB4(v4, &v6);
  if (v6 >= 0x10000)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBE28(void *a1, _DWORD *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FC08(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBEC0(void *a1, _DWORD *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FAB4(v4, &v6);
  if (HIDWORD(v6))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

double sub_23F2EBF58(void *a1, double *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v5 = *v4;
  if ((v5 - 5) <= 2)
  {
    __str.__r_.__value_.__r.__words[0] = 0;
    sub_23F06FD5C(v4, &__str);
    result = *&__str.__r_.__value_.__l.__data_;
LABEL_3:
    *a2 = result;
    return result;
  }

  if (v5 == 3)
  {
    memset(&__str, 0, sizeof(__str));
    sub_23F06FFE4(v4, &__str);
    result = std::stod(&__str, 0);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    v7 = result;
    operator delete(__str.__r_.__value_.__l.__data_);
    result = v7;
    *a2 = v7;
  }

  else
  {
    result = NAN;
    *a2 = NAN;
  }

  return result;
}

void sub_23F2EC034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC054(unsigned __int8 *a1, void *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_23F2EDA80(a1, &__p);
  v3 = __p;
  v4 = v8;
  if (__p != v8)
  {
    v5 = *a2;
    do
    {
      if (*v3 != *v3)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v3++;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC12C(void *a1, void *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];

  sub_23F2EB858(v4, a2);
}

void sub_23F2EC174(unsigned __int8 *a1, _WORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EDA80(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 != *v6)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC24C(void *a1, _WORD **a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];

  sub_23F2EC294(v4, a2);
}

void sub_23F2EC294(unsigned __int8 *a1, _WORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EDFA0(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 >= 0x10000uLL)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC36C(unsigned __int8 *a1, _DWORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EDA80(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 != *v6)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC444(unsigned __int8 *a1, _DWORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EDFA0(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (HIDWORD(*v6))
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC51C(void *a1, __int16 **a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];

  sub_23F2EC564(v4, a2);
}

void sub_23F2EC564(uint64_t a1, __int16 **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v23 = v4;
    v24 = 0x8000000000000000;
    v20[2] = v3;
    v20[3] = 0x8000000000000000;
    v5 = *a2;
    v21 = a1;
    v22 = 0;
    v20[0] = a1;
    for (v20[1] = 0; !sub_23F070C08(&v21, v20); ++v5)
    {
      v6 = sub_23F070F64(&v21);
      v7 = *v6;
      if ((v7 - 5) > 2)
      {
        if (v7 == 3)
        {
          memset(v25, 0, sizeof(v25));
          sub_23F06FFE4(v6, v25);
          sub_23F2F0868(v25);
        }

        v13 = 0x7FFF;
      }

      else
      {
        v25[0] = 0.0;
        sub_23F06FD5C(v6, v25);
        _S0 = v25[0];
        __asm { FCVT            H0, S0 }

        v13 = LOWORD(_S0);
      }

      *v5 = v13;
      v14 = *v21;
      if (v14 == 2)
      {
        v23 += 16;
      }

      else if (v14 == 1)
      {
        v15 = v22;
        v16 = v22[1];
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
            v17 = v15[2];
            _ZF = *v17 == v15;
            v15 = v17;
          }

          while (!_ZF);
        }

        v22 = v17;
      }

      else
      {
        ++v24;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F0A3C(a1, __p);
    v18 = __p[0];
    if (__p[0])
    {

      operator delete(v18);
    }
  }
}

void sub_23F2EC700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC730(void *a1, float **a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];

  sub_23F2EC778(v4, a2);
}

void sub_23F2EC778(uint64_t a1, float **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v17 = v4;
    v18 = 0x8000000000000000;
    v14[2] = v3;
    v14[3] = 0x8000000000000000;
    v5 = *a2;
    v15 = a1;
    v16 = 0;
    v14[0] = a1;
    for (v14[1] = 0; !sub_23F070C08(&v15, v14); ++v5)
    {
      v6 = sub_23F070F64(&v15);
      *v5 = sub_23F2F0960(v6);
      v7 = *v15;
      if (v7 == 2)
      {
        v17 += 16;
      }

      else if (v7 == 1)
      {
        v8 = v16;
        v9 = v16[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v8[2];
            v11 = *v10 == v8;
            v8 = v10;
          }

          while (!v11);
        }

        v16 = v10;
      }

      else
      {
        ++v18;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F0A3C(a1, __p);
    v12 = __p[0];
    if (__p[0])
    {

      operator delete(v12);
    }
  }
}

void sub_23F2EC8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC8BC(uint64_t a1, double **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v20 = v4;
    v21 = 0x8000000000000000;
    v17[2] = v3;
    v17[3] = 0x8000000000000000;
    v5 = *a2;
    v18 = a1;
    v19 = 0;
    v17[0] = a1;
    for (v17[1] = 0; !sub_23F070C08(&v18, v17); ++v5)
    {
      v6 = sub_23F070F64(&v18);
      v7 = *v6;
      if ((v7 - 5) > 2)
      {
        if (v7 == 3)
        {
          memset(&__str, 0, sizeof(__str));
          sub_23F06FFE4(v6, &__str);
          v8 = std::stod(&__str, 0);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            v9 = v8;
            operator delete(__str.__r_.__value_.__l.__data_);
            v8 = v9;
          }
        }

        else
        {
          v8 = NAN;
        }
      }

      else
      {
        __str.__r_.__value_.__r.__words[0] = 0;
        sub_23F06FD5C(v6, &__str);
        v8 = *&__str.__r_.__value_.__l.__data_;
      }

      *v5 = v8;
      v10 = *v18;
      if (v10 == 2)
      {
        v20 += 16;
      }

      else if (v10 == 1)
      {
        v11 = v19;
        v12 = v19[1];
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
            v13 = v11[2];
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v19 = v13;
      }

      else
      {
        ++v21;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F0A3C(a1, __p);
    v15 = __p[0];
    if (__p[0])
    {

      operator delete(v15);
    }
  }
}

void sub_23F2ECA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2ECA8C(void *a1, void ***a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v10 = 0uLL;
  v11 = 0;
  sub_23F2EE4C0(v4, &v10);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    v7 = *a2;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a2;
    }

    a2[1] = v5;
    operator delete(v7);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *&v10;
  *a2 = v10;
  a2[2] = v11;
  return result;
}

void sub_23F2ECB54(void *a1, _BYTE *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F070408(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECBEC(void *a1, _BYTE *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F0702B4(v4, &v6);
  if (v6 >= 0x100)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECC84(void *a1, _WORD *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F070408(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECD1C(void *a1, _WORD *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F0702B4(v4, &v6);
  if (v6 >= 0x10000)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECDB4(void *a1, _DWORD *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F070408(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECE4C(void *a1, _DWORD *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F0702B4(v4, &v6);
  if (HIDWORD(v6))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

double sub_23F2ECEE4(void *a1, double *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v5 = *v4;
  if ((v5 - 5) <= 2)
  {
    __str.__r_.__value_.__r.__words[0] = 0;
    sub_23F07055C(v4, &__str);
    result = *&__str.__r_.__value_.__l.__data_;
LABEL_3:
    *a2 = result;
    return result;
  }

  if (v5 == 3)
  {
    memset(&__str, 0, sizeof(__str));
    sub_23F0707E4(v4, &__str);
    result = std::stod(&__str, 0);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    v7 = result;
    operator delete(__str.__r_.__value_.__l.__data_);
    result = v7;
    *a2 = v7;
  }

  else
  {
    result = NAN;
    *a2 = NAN;
  }

  return result;
}

void sub_23F2ECFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ECFE0(unsigned __int8 *a1, void *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_23F2EEB70(a1, &__p);
  v3 = __p;
  v4 = v8;
  if (__p != v8)
  {
    v5 = *a2;
    do
    {
      if (*v3 != *v3)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v3++;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED0B8(void *a1, void *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];

  sub_23F2EBAF0(v4, a2);
}

void sub_23F2ED100(unsigned __int8 *a1, _WORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EEB70(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 != *v6)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED1D8(void *a1, _WORD **a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];

  sub_23F2ED220(v4, a2);
}

void sub_23F2ED220(unsigned __int8 *a1, _WORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EEE3C(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 >= 0x10000uLL)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED2F8(unsigned __int8 *a1, _DWORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EEB70(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 != *v6)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED3D0(unsigned __int8 *a1, _DWORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EEE3C(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (HIDWORD(*v6))
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED4A8(void *a1, __int16 **a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];

  sub_23F2ED4F0(v4, a2);
}

void sub_23F2ED4F0(uint64_t a1, __int16 **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v20 = v4;
    v21 = 0x8000000000000000;
    v17[2] = v3;
    v17[3] = 0x8000000000000000;
    v5 = *a2;
    v18 = a1;
    v19 = 0;
    v17[0] = a1;
    for (v17[1] = 0; !sub_23F0711B0(&v18, v17); ++v5)
    {
      v6 = sub_23F0712BC(&v18);
      v7 = *v6;
      if ((v7 - 5) > 2)
      {
        if (v7 == 3)
        {
          memset(v22, 0, sizeof(v22));
          sub_23F0707E4(v6, v22);
          sub_23F2F0868(v22);
        }

        v13 = 0x7FFF;
      }

      else
      {
        v22[0] = 0.0;
        sub_23F07055C(v6, v22);
        _S0 = v22[0];
        __asm { FCVT            H0, S0 }

        v13 = LOWORD(_S0);
      }

      *v5 = v13;
      v14 = *v18;
      if (v14 == 2)
      {
        v20 += 16;
      }

      else if (v14 == 1)
      {
        v19 += 40;
      }

      else
      {
        ++v21;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F1038(a1, __p);
    v15 = __p[0];
    if (__p[0])
    {

      operator delete(v15);
    }
  }
}

void sub_23F2ED664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED694(void *a1, float **a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];

  sub_23F2ED6DC(v4, a2);
}

void sub_23F2ED6DC(uint64_t a1, float **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v13 = v4;
    v14 = 0x8000000000000000;
    v10[2] = v3;
    v10[3] = 0x8000000000000000;
    v5 = *a2;
    v11 = a1;
    v12 = 0;
    v10[0] = a1;
    for (v10[1] = 0; !sub_23F0711B0(&v11, v10); ++v5)
    {
      v6 = sub_23F0712BC(&v11);
      *v5 = sub_23F2F0F5C(v6);
      v7 = *v11;
      if (v7 == 2)
      {
        v13 += 16;
      }

      else if (v7 == 1)
      {
        v12 += 40;
      }

      else
      {
        ++v14;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F1038(a1, __p);
    v8 = __p[0];
    if (__p[0])
    {

      operator delete(v8);
    }
  }
}

void sub_23F2ED7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED7F8(uint64_t a1, double **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v16 = v4;
    v17 = 0x8000000000000000;
    v13[2] = v3;
    v13[3] = 0x8000000000000000;
    v5 = *a2;
    v14 = a1;
    v15 = 0;
    v13[0] = a1;
    for (v13[1] = 0; !sub_23F0711B0(&v14, v13); ++v5)
    {
      v6 = sub_23F0712BC(&v14);
      v7 = *v6;
      if ((v7 - 5) > 2)
      {
        if (v7 == 3)
        {
          memset(&__str, 0, sizeof(__str));
          sub_23F0707E4(v6, &__str);
          v8 = std::stod(&__str, 0);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            v9 = v8;
            operator delete(__str.__r_.__value_.__l.__data_);
            v8 = v9;
          }
        }

        else
        {
          v8 = NAN;
        }
      }

      else
      {
        __str.__r_.__value_.__r.__words[0] = 0;
        sub_23F07055C(v6, &__str);
        v8 = *&__str.__r_.__value_.__l.__data_;
      }

      *v5 = v8;
      v10 = *v14;
      if (v10 == 2)
      {
        v16 += 16;
      }

      else if (v10 == 1)
      {
        v15 += 40;
      }

      else
      {
        ++v17;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F1038(a1, __p);
    v11 = __p[0];
    if (__p[0])
    {

      operator delete(v11);
    }
  }
}

void sub_23F2ED970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2ED9A0(void *a1, void ***a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v10 = 0uLL;
  v11 = 0;
  sub_23F2EF108(v4, &v10);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    v7 = *a2;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a2;
    }

    a2[1] = v5;
    operator delete(v7);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *&v10;
  *a2 = v10;
  a2[2] = v11;
  return result;
}

double sub_23F2EDA80(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v16 = sub_23F06D864(a1);
    sub_23EF3F240(&v17, v16);
    sub_23F06C3EC("type must be array, but is ", &v17, &v19);
    sub_23F06D6C8(302, &v19, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v21 = 0uLL;
  v22 = 0;
  v5 = **(a1 + 1);
  v4 = *(*(a1 + 1) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v19.__r_.__value_.__l.__data_ = a1;
  v20 = 0x8000000000000000;
  v19.__r_.__value_.__r.__words[2] = v5;
  *&v17.__r_.__value_.__l.__data_ = a1;
  v17.__r_.__value_.__r.__words[2] = v4;
  v18 = 0x8000000000000000;
  while (!sub_23F070C08(&v19, &v17))
  {
    v7 = sub_23F070F64(&v19);
    v23 = 0;
    sub_23F06FC08(v7, &v23);
    v6 = sub_23F2EDD70(&v21, v6, &v23) + 8;
    v8 = *v19.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v19.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      size = v19.__r_.__value_.__l.__size_;
      v10 = *(v19.__r_.__value_.__l.__size_ + 8);
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
          v11 = *(size + 16);
          v12 = *v11 == size;
          size = v11;
        }

        while (!v12);
      }

      v19.__r_.__value_.__l.__size_ = v11;
    }

    else
    {
      ++v20;
    }
  }

  v13 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v13;
    operator delete(v13);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v21;
  *a2 = v21;
  *(a2 + 16) = v22;
  return result;
}

void sub_23F2EDCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EDD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

char *sub_23F2EDD70(uint64_t a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 3) + 1;
    if (v10 >> 61)
    {
      sub_23EF62578();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = __src - v9;
    v14 = (__src - v9) >> 3;
    v15 = (8 * v14);
    if (!v14)
    {
      if (v13 < 1)
      {
        v16 = v13 >> 2;
        if (v9 == __src)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      v15 = (v15 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v15 = *a3;
    v18 = *(a1 + 8) - __src;
    memcpy(v15 + 1, __src, v18);
    *(a1 + 8) = v4;
    v19 = &v4[-*a1];
    v20 = v15 - v19;
    memcpy(v15 - v19, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v15 + v18 + 8;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }

    return v15;
  }

  else
  {
    if (__src != v6)
    {
      v8 = __src + 8;
      if (v6 < 8)
      {
        *(a1 + 8) = v6;
        if (v6 == v8)
        {
LABEL_21:
          *v4 = *a3;
          return v4;
        }
      }

      else
      {
        *v6 = *(v6 - 1);
        *(a1 + 8) = v6 + 8;
        if (v6 == v8)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 8, __src, v6 - v8);
      goto LABEL_21;
    }

    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  return v4;
}

void sub_23F2EDF88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2EDFA0(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v16 = sub_23F06D864(a1);
    sub_23EF3F240(&v17, v16);
    sub_23F06C3EC("type must be array, but is ", &v17, &v19);
    sub_23F06D6C8(302, &v19, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v21 = 0uLL;
  v22 = 0;
  v5 = **(a1 + 1);
  v4 = *(*(a1 + 1) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v19.__r_.__value_.__l.__data_ = a1;
  v20 = 0x8000000000000000;
  v19.__r_.__value_.__r.__words[2] = v5;
  *&v17.__r_.__value_.__l.__data_ = a1;
  v17.__r_.__value_.__r.__words[2] = v4;
  v18 = 0x8000000000000000;
  while (!sub_23F070C08(&v19, &v17))
  {
    v7 = sub_23F070F64(&v19);
    v23 = 0;
    sub_23F06FAB4(v7, &v23);
    v6 = sub_23F2EE290(&v21, v6, &v23) + 8;
    v8 = *v19.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v19.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      size = v19.__r_.__value_.__l.__size_;
      v10 = *(v19.__r_.__value_.__l.__size_ + 8);
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
          v11 = *(size + 16);
          v12 = *v11 == size;
          size = v11;
        }

        while (!v12);
      }

      v19.__r_.__value_.__l.__size_ = v11;
    }

    else
    {
      ++v20;
    }
  }

  v13 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v13;
    operator delete(v13);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v21;
  *a2 = v21;
  *(a2 + 16) = v22;
  return result;
}

void sub_23F2EE208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EE258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

char *sub_23F2EE290(uint64_t a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 3) + 1;
    if (v10 >> 61)
    {
      sub_23EF62578();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = __src - v9;
    v14 = (__src - v9) >> 3;
    v15 = (8 * v14);
    if (!v14)
    {
      if (v13 < 1)
      {
        v16 = v13 >> 2;
        if (v9 == __src)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      v15 = (v15 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v15 = *a3;
    v18 = *(a1 + 8) - __src;
    memcpy(v15 + 1, __src, v18);
    *(a1 + 8) = v4;
    v19 = &v4[-*a1];
    v20 = v15 - v19;
    memcpy(v15 - v19, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v15 + v18 + 8;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }

    return v15;
  }

  else
  {
    if (__src != v6)
    {
      v8 = __src + 8;
      if (v6 < 8)
      {
        *(a1 + 8) = v6;
        if (v6 == v8)
        {
LABEL_21:
          *v4 = *a3;
          return v4;
        }
      }

      else
      {
        *v6 = *(v6 - 1);
        *(a1 + 8) = v6 + 8;
        if (v6 == v8)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 8, __src, v6 - v8);
      goto LABEL_21;
    }

    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  return v4;
}

void sub_23F2EE4A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2EE4C0(unsigned __int8 *a1, void ***a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v22 = sub_23F06D864(a1);
    sub_23EF3F240(&v23, v22);
    sub_23F06C3EC("type must be array, but is ", &v23, &v26);
    sub_23F06D6C8(302, &v26, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v29 = 0;
  v28 = 0uLL;
  v4 = *(*(a1 + 1) + 8) - **(a1 + 1);
  if (v4)
  {
    if ((v4 >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  v6 = 0;
  *&v26.__r_.__value_.__l.__data_ = a1;
  v26.__r_.__value_.__r.__words[2] = 0;
  v27 = 0x8000000000000000;
  v7 = *a1;
  if (*a1)
  {
    if (v7 == 2)
    {
      v8 = *(a1 + 1);
      v26.__r_.__value_.__r.__words[2] = *v8;
      v23 = a1;
      v24 = 0;
      *(&v25 + 1) = 0x8000000000000000;
      *&v25 = v8[1];
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      v5 = *(a1 + 1);
      v26.__r_.__value_.__l.__size_ = *v5;
      v25 = xmmword_23F3147D0;
      v23 = a1;
      v24 = v5 + 1;
      goto LABEL_13;
    }

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v23 = a1;
  v24 = 0;
  *&v25 = 0;
  *(&v25 + 1) = 1;
LABEL_13:
  while (!sub_23F070C08(&v26, &v23))
  {
    v9 = sub_23F070F64(&v26);
    v30 = 0uLL;
    v31 = 0;
    sub_23F06FFE4(v9, &v30);
    v10 = sub_23F2EE88C(&v28, v6, &v30);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
      v11 = *v26.__r_.__value_.__l.__data_;
      if (v11 != 2)
      {
LABEL_16:
        if (v11 == 1)
        {
          size = v26.__r_.__value_.__l.__size_;
          v13 = *(v26.__r_.__value_.__l.__size_ + 8);
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
              v14 = *(size + 16);
              v15 = *v14 == size;
              size = v14;
            }

            while (!v15);
          }

          v26.__r_.__value_.__l.__size_ = v14;
        }

        else
        {
          ++v27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v11 = *v26.__r_.__value_.__l.__data_;
      if (v11 != 2)
      {
        goto LABEL_16;
      }
    }

    v26.__r_.__value_.__r.__words[2] += 16;
LABEL_26:
    v6 = v10 + 3;
  }

  v16 = *a2;
  if (*a2)
  {
    v17 = a2[1];
    v18 = *a2;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *a2;
    }

    a2[1] = v16;
    operator delete(v18);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *&v28;
  *a2 = v28;
  a2[2] = v29;
  return result;
}

void sub_23F2EE7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EE81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v22)
    {
LABEL_8:
      __cxa_free_exception(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (v22)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void **sub_23F2EE88C(void ***a1, void **a2, __int128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * (v7 - *a1) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v22 = a2 - v16;
    v23 = 8 * ((a2 - v16) >> 3);
    if (!(0xAAAAAAAAAAAAAAABLL * ((a2 - v16) >> 3)))
    {
      if (v22 < 1)
      {
        operator new();
      }

      v23 -= 24 * ((1 - 0x5555555555555555 * (v22 >> 3)) >> 1);
    }

    *v23 = *a3;
    *(v23 + 16) = *(a3 + 2);
    *(a3 + 8) = 0uLL;
    *a3 = 0;
    memcpy((v23 + 24), a2, a1[1] - a2);
    v24 = *a1;
    v25 = (v23 + 24 + a1[1] - v4);
    a1[1] = v4;
    v26 = v4 - v24;
    v27 = (v23 - (v4 - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    a1[1] = v25;
    a1[2] = 0;
    if (v28)
    {
      operator delete(v28);
    }

    return v23;
  }

  else if (a2 == v7)
  {
    v21 = *a3;
    v7[2] = *(a3 + 2);
    *v7 = v21;
    *(a3 + 8) = 0uLL;
    *a3 = 0;
    a1[1] = v7 + 3;
  }

  else
  {
    v8 = v7 - 3;
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = v7 + 3;
      v10 = *v8;
      v7[2] = *(v7 - 1);
      *v7 = v10;
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
      *v8 = 0;
    }

    a1[1] = v9;
    if (v7 != a2 + 3)
    {
      v11 = 0;
      v12 = (a2 - v7 + 24);
      do
      {
        v14 = &v11[v7];
        v15 = &v11[v7 - 24];
        if (v11[v7 - 1] < 0)
        {
          operator delete(*v15);
        }

        v11 -= 24;
        v13 = *(v14 - 3);
        *(v15 + 16) = *(v14 - 4);
        *v15 = v13;
        *(v14 - 25) = 0;
        *(v14 - 48) = 0;
      }

      while (v12 != v11);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v20 = *a3;
    v4[2] = *(a3 + 2);
    *v4 = v20;
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  return v4;
}

void sub_23F2EEB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

double sub_23F2EEB70(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_23F06D864(a1);
    sub_23EF3F240(&v13, v12);
    sub_23F06C3EC("type must be array, but is ", &v13, &v15);
    sub_23F06D6C8(302, &v15, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v17 = 0uLL;
  v18 = 0;
  v5 = **(a1 + 1);
  v4 = *(*(a1 + 1) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v15.__r_.__value_.__l.__data_ = a1;
  v16 = 0x8000000000000000;
  v15.__r_.__value_.__r.__words[2] = v5;
  *&v13.__r_.__value_.__l.__data_ = a1;
  v13.__r_.__value_.__r.__words[2] = v4;
  v14 = 0x8000000000000000;
  while (!sub_23F0711B0(&v15, &v13))
  {
    v7 = sub_23F0712BC(&v15);
    v19 = 0;
    sub_23F070408(v7, &v19);
    v6 = sub_23F2EDD70(&v17, v6, &v19) + 8;
    v8 = *v15.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v15.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      v15.__r_.__value_.__l.__size_ += 40;
    }

    else
    {
      ++v16;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v9;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  return result;
}

void sub_23F2EEDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EEE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

double sub_23F2EEE3C(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_23F06D864(a1);
    sub_23EF3F240(&v13, v12);
    sub_23F06C3EC("type must be array, but is ", &v13, &v15);
    sub_23F06D6C8(302, &v15, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v17 = 0uLL;
  v18 = 0;
  v5 = **(a1 + 1);
  v4 = *(*(a1 + 1) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v15.__r_.__value_.__l.__data_ = a1;
  v16 = 0x8000000000000000;
  v15.__r_.__value_.__r.__words[2] = v5;
  *&v13.__r_.__value_.__l.__data_ = a1;
  v13.__r_.__value_.__r.__words[2] = v4;
  v14 = 0x8000000000000000;
  while (!sub_23F0711B0(&v15, &v13))
  {
    v7 = sub_23F0712BC(&v15);
    v19 = 0;
    sub_23F0702B4(v7, &v19);
    v6 = sub_23F2EE290(&v17, v6, &v19) + 8;
    v8 = *v15.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v15.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      v15.__r_.__value_.__l.__size_ += 40;
    }

    else
    {
      ++v16;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v9;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  return result;
}

void sub_23F2EF080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EF0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

double sub_23F2EF108(unsigned __int8 *a1, void ***a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v19 = sub_23F06D864(a1);
    sub_23EF3F240(&v20, v19);
    sub_23F06C3EC("type must be array, but is ", &v20, &v23);
    sub_23F06D6C8(302, &v23, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v26 = 0;
  v25 = 0uLL;
  v4 = *(*(a1 + 1) + 8) - **(a1 + 1);
  if (v4)
  {
    if ((v4 >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  v7 = 0;
  *&v23.__r_.__value_.__l.__data_ = a1;
  v23.__r_.__value_.__r.__words[2] = 0;
  v24 = 0x8000000000000000;
  v8 = *a1;
  if (*a1)
  {
    if (v8 == 2)
    {
      v9 = *(a1 + 1);
      v23.__r_.__value_.__r.__words[2] = *v9;
      v20 = a1;
      v21 = 0;
      *(&v22 + 1) = 0x8000000000000000;
      *&v22 = v9[1];
      goto LABEL_13;
    }

    if (v8 == 1)
    {
      v5 = *(a1 + 1);
      v23.__r_.__value_.__l.__size_ = *v5;
      v22 = xmmword_23F3147D0;
      v6 = v5[1];
      v20 = a1;
      v21 = v6;
      goto LABEL_13;
    }

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v20 = a1;
  v21 = 0;
  *&v22 = 0;
  *(&v22 + 1) = 1;
LABEL_13:
  while (!sub_23F0711B0(&v23, &v20))
  {
    v10 = sub_23F0712BC(&v23);
    v27 = 0uLL;
    v28 = 0;
    sub_23F0707E4(v10, &v27);
    v11 = sub_23F2EE88C(&v25, v7, &v27);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
      v12 = *v23.__r_.__value_.__l.__data_;
      if (v12 != 2)
      {
LABEL_16:
        if (v12 == 1)
        {
          v23.__r_.__value_.__l.__size_ += 40;
        }

        else
        {
          ++v24;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = *v23.__r_.__value_.__l.__data_;
      if (v12 != 2)
      {
        goto LABEL_16;
      }
    }

    v23.__r_.__value_.__r.__words[2] += 16;
LABEL_21:
    v7 = v11 + 3;
  }

  v13 = *a2;
  if (*a2)
  {
    v14 = a2[1];
    v15 = *a2;
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *a2;
    }

    a2[1] = v13;
    operator delete(v15);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *&v25;
  *a2 = v25;
  a2[2] = v26;
  return result;
}

void sub_23F2EF400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EF440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v22)
    {
LABEL_8:
      __cxa_free_exception(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (v22)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void sub_23F2EF578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EFAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EFBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void ***sub_23F2EFBE8(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_23F06D864(a1);
    sub_23EF3F240(&v8, v7);
    sub_23F06C3EC("cannot use push_back() with ", &v8, &v9);
    sub_23F06D6C8(308, &v9, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 < *(v3 + 16))
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    result = (v4 + 16);
    *(v3 + 8) = v4 + 16;
  }

  else
  {
    result = sub_23F063D40(v3, a2);
    *(v3 + 8) = result;
  }

  return result;
}

void sub_23F2EFD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void sub_23F2EFE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EFF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F0038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F0120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F0208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F02F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F03D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F04C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F05A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void ***sub_23F2F05C4(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_23F06D864(a1);
    sub_23EF3F240(&v8, v7);
    sub_23F06C3EC("cannot use push_back() with ", &v8, &v9);
    sub_23F06D6C8(308, &v9, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 < *(v3 + 16))
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    result = (v4 + 16);
    *(v3 + 8) = v4 + 16;
  }

  else
  {
    result = sub_23F065DA8(v3, a2);
    *(v3 + 8) = result;
  }

  return result;
}

void sub_23F2F0710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void sub_23F2F084C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F092C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = 0;
  sub_23F302A54(&a9, v9);
  _Unwind_Resume(a1);
}

float sub_23F2F0960(void **a1)
{
  v1 = *a1;
  if ((v1 - 5) > 2)
  {
    if (v1 == 3)
    {
      memset(&__str, 0, sizeof(__str));
      sub_23F06FFE4(a1, &__str);
      result = std::stof(&__str, 0);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v3 = result;
        operator delete(__str.__r_.__value_.__l.__data_);
        return v3;
      }
    }

    else
    {
      return NAN;
    }
  }

  else
  {
    __str.__r_.__value_.__r.__words[0] = 0;
    sub_23F06FD5C(a1, &__str);
    return *&__str.__r_.__value_.__l.__data_;
  }

  return result;
}

void sub_23F2F0A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2F0A3C(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v16 = sub_23F06D864(a1);
    sub_23EF3F240(&v17, v16);
    sub_23F06C3EC("type must be array, but is ", &v17, &v19);
    sub_23F06D6C8(302, &v19, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v21 = 0uLL;
  v22 = 0;
  v5 = **(a1 + 1);
  v4 = *(*(a1 + 1) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v19.__r_.__value_.__l.__data_ = a1;
  v20 = 0x8000000000000000;
  v19.__r_.__value_.__r.__words[2] = v5;
  *&v17.__r_.__value_.__l.__data_ = a1;
  v17.__r_.__value_.__r.__words[2] = v4;
  v18 = 0x8000000000000000;
  while (!sub_23F070C08(&v19, &v17))
  {
    v7 = sub_23F070F64(&v19);
    v23 = 0;
    sub_23F06FD5C(v7, &v23);
    v6 = sub_23F2F0D2C(&v21, v6, &v23) + 8;
    v8 = *v19.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v19.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      size = v19.__r_.__value_.__l.__size_;
      v10 = *(v19.__r_.__value_.__l.__size_ + 8);
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
          v11 = *(size + 16);
          v12 = *v11 == size;
          size = v11;
        }

        while (!v12);
      }

      v19.__r_.__value_.__l.__size_ = v11;
    }

    else
    {
      ++v20;
    }
  }

  v13 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v13;
    operator delete(v13);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v21;
  *a2 = v21;
  *(a2 + 16) = v22;
  return result;
}

void sub_23F2F0CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F0CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

char *sub_23F2F0D2C(uint64_t a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 3) + 1;
    if (v10 >> 61)
    {
      sub_23EF62578();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = __src - v9;
    v14 = (__src - v9) >> 3;
    v15 = (8 * v14);
    if (!v14)
    {
      if (v13 < 1)
      {
        v16 = v13 >> 2;
        if (v9 == __src)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      v15 = (v15 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v15 = *a3;
    v18 = *(a1 + 8) - __src;
    memcpy(v15 + 1, __src, v18);
    *(a1 + 8) = v4;
    v19 = &v4[-*a1];
    v20 = v15 - v19;
    memcpy(v15 - v19, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v15 + v18 + 8;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }

    return v15;
  }

  else
  {
    if (__src != v6)
    {
      v8 = __src + 8;
      if (v6 < 8)
      {
        *(a1 + 8) = v6;
        if (v6 == v8)
        {
LABEL_21:
          *v4 = *a3;
          return v4;
        }
      }

      else
      {
        *v6 = *(v6 - 1);
        *(a1 + 8) = v6 + 8;
        if (v6 == v8)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 8, __src, v6 - v8);
      goto LABEL_21;
    }

    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  return v4;
}

void sub_23F2F0F44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_23F2F0F5C(void **a1)
{
  v1 = *a1;
  if ((v1 - 5) > 2)
  {
    if (v1 == 3)
    {
      memset(&__str, 0, sizeof(__str));
      sub_23F0707E4(a1, &__str);
      result = std::stof(&__str, 0);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v3 = result;
        operator delete(__str.__r_.__value_.__l.__data_);
        return v3;
      }
    }

    else
    {
      return NAN;
    }
  }

  else
  {
    __str.__r_.__value_.__r.__words[0] = 0;
    sub_23F07055C(a1, &__str);
    return *&__str.__r_.__value_.__l.__data_;
  }

  return result;
}

void sub_23F2F1018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2F1038(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_23F06D864(a1);
    sub_23EF3F240(&v13, v12);
    sub_23F06C3EC("type must be array, but is ", &v13, &v15);
    sub_23F06D6C8(302, &v15, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v17 = 0uLL;
  v18 = 0;
  v5 = **(a1 + 1);
  v4 = *(*(a1 + 1) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v15.__r_.__value_.__l.__data_ = a1;
  v16 = 0x8000000000000000;
  v15.__r_.__value_.__r.__words[2] = v5;
  *&v13.__r_.__value_.__l.__data_ = a1;
  v13.__r_.__value_.__r.__words[2] = v4;
  v14 = 0x8000000000000000;
  while (!sub_23F0711B0(&v15, &v13))
  {
    v7 = sub_23F0712BC(&v15);
    v19 = 0;
    sub_23F07055C(v7, &v19);
    v6 = sub_23F2F0D2C(&v17, v6, &v19) + 8;
    v8 = *v15.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v15.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      v15.__r_.__value_.__l.__size_ += 40;
    }

    else
    {
      ++v16;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v9;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  return result;
}

void sub_23F2F127C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F12CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

void sub_23F2F1304(int a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  v5 = 0;
  v8 = v4;
  v9 = "Invalid ArithmeticType value '";
  v10 = v4;
  v11 = "Invalid ArithmeticType value '";
  v12 = "Invalid ArithmeticType value '";
  v6.__r_.__value_.__r.__words[0] = &v8;
  sub_23F084C60(&v6);
  std::to_string(&v6, a1);
  v8 = v4;
  v9 = &v6;
  v10 = v4;
  v11 = &v6;
  v12 = &v6;
  if (v5 == -1)
  {
    sub_23EF41D6C();
  }

  v7 = &v8;
  (off_28518D838[v5])(&v7, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  v8 = v4;
  v9 = "'";
  v10 = v4;
  v11 = "'";
  v12 = "'";
  if (v5 == -1)
  {
    sub_23EF41D6C();
  }

  v6.__r_.__value_.__r.__words[0] = &v8;
  (*(&off_28518D880 + v5))(&v6, v4);
  if (v5 == -1)
  {
    sub_23EF41D6C();
  }

  v8 = &v6;
  (off_28518D868[v5])(&v3, &v8, v4);
  if (v5 != -1)
  {
    (off_28518D850[v5])(&v8, v4);
  }

  std::logic_error::logic_error(exception, &v3);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_278C744A8, MEMORY[0x277D82610]);
}

void sub_23F2F14C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void *sub_23F2F1524(void *a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 > 5)
  {
    if (*a2 <= 7u)
    {
      if (v2 == 6)
      {
        v3 = "i16";
        v4 = 3;
        return sub_23EF2F9B0(a1, v3, v4);
      }

      if (v2 == 7)
      {
        v3 = "i32";
        v4 = 3;
        return sub_23EF2F9B0(a1, v3, v4);
      }
    }

    else
    {
      switch(v2)
      {
        case 8u:
          v3 = "i64";
          v4 = 3;
          return sub_23EF2F9B0(a1, v3, v4);
        case 0xBu:
          v3 = "f32";
          v4 = 3;
          return sub_23EF2F9B0(a1, v3, v4);
        case 0xCu:
          v3 = "f64";
          v4 = 3;
          return sub_23EF2F9B0(a1, v3, v4);
      }
    }

    goto LABEL_24;
  }

  if (*a2 > 1u)
  {
    switch(v2)
    {
      case 2u:
        v3 = "u32";
        v4 = 3;
        return sub_23EF2F9B0(a1, v3, v4);
      case 3u:
        v3 = "u64";
        v4 = 3;
        return sub_23EF2F9B0(a1, v3, v4);
      case 5u:
        v3 = "i8";
        v4 = 2;
        return sub_23EF2F9B0(a1, v3, v4);
    }

LABEL_24:
    v3 = "unknown arithmetic type";
    v4 = 23;
    return sub_23EF2F9B0(a1, v3, v4);
  }

  if (*a2)
  {
    v3 = "u16";
    v4 = 3;
  }

  else
  {
    v3 = "u8";
    v4 = 2;
  }

  return sub_23EF2F9B0(a1, v3, v4);
}

uint64_t *sub_23F2F163C(uint64_t *a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_27E396028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396028))
  {
    sub_23F2F18F0();
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_23F04A2C0(a1, &__p);
  v4 = qword_27E396038;
  if (!qword_27E396038)
  {
    goto LABEL_41;
  }

  if (v26 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v26 >= 0)
  {
    v6 = HIBYTE(v26);
  }

  else
  {
    v6 = v25;
  }

  v7 = &qword_27E396038;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_27E396038)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v20 = std::string::append(&v22, ", expected [u|i|f][{size}]", 0x1AuLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v23);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278C744A8, MEMORY[0x277D82610]);
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 56);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_23F2F1878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_8:
      if (a27 < 0)
      {
        operator delete(a22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

void sub_23F2F18F0()
{
  v5 = *MEMORY[0x277D85DE8];
  qword_27E396038 = 0;
  v3 = 0x807060503020100;
  v4 = 3083;
  qword_27E396040 = 0;
  qword_27E396030 = &qword_27E396038;
  v1 = 0;
  sub_23EF848B8(&v2, v0, &v3);
}

void sub_23F2F1C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2F1CA0(uint64_t a1)
{
  v4 = 0;
  if (*a1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F1D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void sub_23F2F1D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = 14;
  strcpy(v4, "Value of type ");
  v5 = 1;
  sub_23EF848B8(&v3, v4, a2);
}

void sub_23F2F1EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2F1EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2F1EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2F1EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2F1F04(uint64_t a1)
{
  v4 = 1;
  if (*a1 != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F1FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F1FF4(uint64_t a1)
{
  v4 = 2;
  if (*a1 != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F20AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F20E4(uint64_t a1)
{
  v4 = 3;
  if (*a1 != 3)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F219C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F21D4(uint64_t a1)
{
  v4 = 5;
  if (*a1 != 5)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F228C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F22C4(uint64_t a1)
{
  v4 = 6;
  if (*a1 != 6)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F237C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F23B4(uint64_t a1)
{
  v4 = 7;
  if (*a1 != 7)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F246C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F24A4(uint64_t a1)
{
  v4 = 8;
  if (*a1 != 8)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F255C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F2594(uint64_t a1)
{
  v4 = 11;
  if (*a1 != 11)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F264C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F2684(uint64_t a1)
{
  v4 = 12;
  if (*a1 != 12)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88(&v3, &v4, a1);
  }

  return *(a1 + 8);
}

void sub_23F2F273C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F2774(_BYTE *a1, _BYTE *a2)
{
  v3 = *a1;
  if (v3 > 5)
  {
    if (*a1 <= 7u)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_73;
        }

        sub_23F2F23B4(a1);
        v5 = *sub_23F2F23B4(a1);
        v6 = *a2;
        if (v6 > 5)
        {
          if (*a2 > 7u)
          {
            if (v6 != 8)
            {
LABEL_85:
              if (v6 != 11)
              {
                if (v6 != 12)
                {
                  goto LABEL_74;
                }

                sub_23F2F2684(a2);
                v32 = *sub_23F2F2684(a2);
                v33 = v5;
                goto LABEL_115;
              }

              sub_23F2F2594(a2);
              v37 = *sub_23F2F2594(a2);
              v38 = v5;
LABEL_200:
              if (v37 > v38)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return v37 < v38;
              }
            }

LABEL_121:
            sub_23F2F24A4(a2);
            v35 = sub_23F2F24A4(a2);
            if (*v35 > v5)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return *v35 < v5;
            }
          }

          if (v6 != 6)
          {
            if (v6 != 7)
            {
              goto LABEL_74;
            }

            sub_23F2F23B4(a2);
            v16 = *sub_23F2F23B4(a2);
            goto LABEL_160;
          }

          sub_23F2F22C4(a2);
          v13 = *sub_23F2F22C4(a2);
        }

        else if (*a2 <= 1u)
        {
          if (*a2)
          {
            sub_23F2F1F04(a2);
            v13 = *sub_23F2F1F04(a2);
          }

          else
          {
            sub_23F2F1CA0(a2);
            v13 = *sub_23F2F1CA0(a2);
          }
        }

        else
        {
          if (v6 == 2)
          {
LABEL_163:
            sub_23F2F1FF4(a2);
            v39 = sub_23F2F1FF4(a2);
LABEL_164:
            v11 = *v39;
LABEL_165:
            if (v5 < v11)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v11 < v5;
            }
          }

          if (v6 == 3)
          {
            goto LABEL_80;
          }

          if (v6 != 5)
          {
            goto LABEL_74;
          }

          sub_23F2F21D4(a2);
          v13 = *sub_23F2F21D4(a2);
        }

        if (v5 < v13)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return v5 > v13;
        }
      }

      sub_23F2F22C4(a1);
      v5 = *sub_23F2F22C4(a1);
      v6 = *a2;
      if (v6 > 5)
      {
        goto LABEL_44;
      }

      if (*a2 <= 1u)
      {
        goto LABEL_118;
      }

      goto LABEL_38;
    }

    if (v3 == 8)
    {
      sub_23F2F24A4(a1);
      v22 = *sub_23F2F24A4(a1);
      v6 = *a2;
      if (v6 > 5)
      {
        if (*a2 > 7u)
        {
          if (v6 == 8)
          {
            sub_23F2F24A4(a2);
            v46 = *sub_23F2F24A4(a2);
            if (v22 < v46)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v46 < v22;
            }
          }

          if (v6 != 11)
          {
            if (v6 != 12)
            {
              goto LABEL_74;
            }

            sub_23F2F2684(a2);
            v32 = *sub_23F2F2684(a2);
            v33 = v22;
            goto LABEL_115;
          }

          sub_23F2F2594(a2);
          v37 = *sub_23F2F2594(a2);
          v38 = v22;
          goto LABEL_200;
        }

        if (v6 == 6)
        {
          sub_23F2F22C4(a2);
          v23 = *sub_23F2F22C4(a2);
        }

        else
        {
          if (v6 != 7)
          {
            goto LABEL_74;
          }

          sub_23F2F23B4(a2);
          v23 = *sub_23F2F23B4(a2);
        }
      }

      else if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_23F2F1F04(a2);
          v23 = *sub_23F2F1F04(a2);
        }

        else
        {
          sub_23F2F1CA0(a2);
          v23 = *sub_23F2F1CA0(a2);
        }
      }

      else
      {
        switch(v6)
        {
          case 2u:
            sub_23F2F1FF4(a2);
            v23 = *sub_23F2F1FF4(a2);
            break;
          case 3u:
LABEL_168:
            sub_23F2F20E4(a2);
            v43 = sub_23F2F20E4(a2);
            goto LABEL_196;
          case 5u:
            sub_23F2F21D4(a2);
            v23 = *sub_23F2F21D4(a2);
            break;
          default:
            goto LABEL_74;
        }
      }

      v44 = v22 < v23;
      v45 = v22 > v23;
      if (v44)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v45;
      }
    }

    if (v3 != 11)
    {
      if (v3 != 12)
      {
        goto LABEL_73;
      }

      sub_23F2F2684(a1);
      v8 = *sub_23F2F2684(a1);
      v6 = *a2;
      if (v6 > 5)
      {
        if (*a2 <= 7u)
        {
          if (v6 == 6)
          {
            sub_23F2F22C4(a2);
            v49.i16[0] = *sub_23F2F22C4(a2);
            v42 = vmovl_s16(v49).i32[0];
          }

          else
          {
            if (v6 != 7)
            {
              goto LABEL_74;
            }

            sub_23F2F23B4(a2);
            v42 = *sub_23F2F23B4(a2);
          }

          v9 = v42;
        }

        else
        {
          switch(v6)
          {
            case 8u:
              sub_23F2F24A4(a2);
              v9 = *sub_23F2F24A4(a2);
              break;
            case 0xBu:
              sub_23F2F2594(a2);
              v9 = *sub_23F2F2594(a2);
              break;
            case 0xCu:
              sub_23F2F2684(a2);
              v34 = *sub_23F2F2684(a2);
              if (v8 < v34)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return v34 < v8;
              }

            default:
              goto LABEL_74;
          }
        }
      }

      else
      {
        if (*a2 <= 1u)
        {
          if (*a2)
          {
            sub_23F2F1F04(a2);
            LOWORD(v40) = *sub_23F2F1F04(a2);
          }

          else
          {
            sub_23F2F1CA0(a2);
            LOBYTE(v40) = *sub_23F2F1CA0(a2);
          }
        }

        else
        {
          switch(v6)
          {
            case 2u:
              sub_23F2F1FF4(a2);
              LODWORD(v40) = *sub_23F2F1FF4(a2);
              break;
            case 3u:
              sub_23F2F20E4(a2);
              v40 = *sub_23F2F20E4(a2);
              break;
            case 5u:
              sub_23F2F21D4(a2);
              v9 = *sub_23F2F21D4(a2);
              goto LABEL_215;
            default:
              goto LABEL_74;
          }
        }

        v9 = v40;
      }

LABEL_215:
      if (v8 < v9)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v8 > v9;
      }
    }

    sub_23F2F2594(a1);
    v27 = *sub_23F2F2594(a1);
    v6 = *a2;
    if (v6 > 5)
    {
      if (*a2 <= 7u)
      {
        if (v6 == 6)
        {
          sub_23F2F22C4(a2);
          v50.i16[0] = *sub_23F2F22C4(a2);
          v29 = vmovl_s16(v50).i32[0];
        }

        else
        {
          if (v6 != 7)
          {
            goto LABEL_74;
          }

          sub_23F2F23B4(a2);
          v29 = *sub_23F2F23B4(a2);
        }
      }

      else
      {
        if (v6 != 8)
        {
          if (v6 == 11)
          {
            sub_23F2F2594(a2);
            v51 = *sub_23F2F2594(a2);
            if (v27 < v51)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v51 < v27;
            }
          }

          if (v6 != 12)
          {
            goto LABEL_74;
          }

          sub_23F2F2684(a2);
          v32 = *sub_23F2F2684(a2);
          v33 = v27;
LABEL_115:
          if (v32 > v33)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return v32 < v33;
          }
        }

        sub_23F2F24A4(a2);
        v29 = *sub_23F2F24A4(a2);
      }
    }

    else
    {
      if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_23F2F1F04(a2);
          LOWORD(v41) = *sub_23F2F1F04(a2);
        }

        else
        {
          sub_23F2F1CA0(a2);
          LOBYTE(v41) = *sub_23F2F1CA0(a2);
        }
      }

      else
      {
        if (v6 != 2)
        {
          if (v6 == 3)
          {
            sub_23F2F20E4(a2);
            v29 = *sub_23F2F20E4(a2);
          }

          else
          {
            if (v6 != 5)
            {
              goto LABEL_74;
            }

            sub_23F2F21D4(a2);
            v28.i8[0] = *sub_23F2F21D4(a2);
            v29 = vmovl_s16(*&vmovl_s8(v28)).i32[0];
          }

          goto LABEL_219;
        }

        sub_23F2F1FF4(a2);
        v41 = *sub_23F2F1FF4(a2);
      }

      v29 = v41;
    }

LABEL_219:
    if (v27 < v29)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v27 > v29;
    }
  }

  if (*a1 > 1u)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 == 5)
        {
          sub_23F2F21D4(a1);
          v5 = *sub_23F2F21D4(a1);
          v6 = *a2;
          if (v6 <= 5)
          {
            if (*a2 <= 1u)
            {
LABEL_118:
              if (v6)
              {
                sub_23F2F1F04(a2);
                v16 = *sub_23F2F1F04(a2);
              }

              else
              {
                sub_23F2F1CA0(a2);
                v16 = *sub_23F2F1CA0(a2);
              }

              goto LABEL_160;
            }

            goto LABEL_38;
          }

LABEL_44:
          if (v6 > 7)
          {
            if (v6 == 8)
            {
              sub_23F2F24A4(a2);
              v17 = sub_23F2F24A4(a2);
              if (*v17 > v5)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return *v17 < v5;
              }
            }

            goto LABEL_85;
          }

          goto LABEL_75;
        }

LABEL_73:
        v6 = *a1;
        goto LABEL_74;
      }

      sub_23F2F20E4(a1);
      v22 = *sub_23F2F20E4(a1);
      v6 = *a2;
      if (v6 > 5)
      {
        if (*a2 <= 7u)
        {
          if (v6 == 6)
          {
            sub_23F2F22C4(a2);
            v25 = *sub_23F2F22C4(a2);
          }

          else
          {
            if (v6 != 7)
            {
              goto LABEL_74;
            }

            sub_23F2F23B4(a2);
            v25 = *sub_23F2F23B4(a2);
          }

          goto LABEL_191;
        }

        if (v6 != 8)
        {
          if (v6 != 11)
          {
            if (v6 != 12)
            {
              goto LABEL_74;
            }

            sub_23F2F2684(a2);
            v32 = *sub_23F2F2684(a2);
            v33 = v22;
            goto LABEL_115;
          }

          sub_23F2F2594(a2);
          v37 = *sub_23F2F2594(a2);
          v38 = v22;
          goto LABEL_200;
        }

        sub_23F2F24A4(a2);
        v43 = sub_23F2F24A4(a2);
LABEL_196:
        if (v22 < *v43)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return *v43 < v22;
        }
      }

      if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_23F2F1F04(a2);
          v25 = *sub_23F2F1F04(a2);
        }

        else
        {
          sub_23F2F1CA0(a2);
          v25 = *sub_23F2F1CA0(a2);
        }
      }

      else
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            if (v6 != 5)
            {
              goto LABEL_74;
            }

            sub_23F2F21D4(a2);
            v25 = *sub_23F2F21D4(a2);
            goto LABEL_191;
          }

          goto LABEL_168;
        }

        sub_23F2F1FF4(a2);
        v25 = *sub_23F2F1FF4(a2);
      }

LABEL_191:
      v47 = v22 >= v25;
      v48 = v22 > v25;
      if (v47)
      {
        return v48;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    sub_23F2F1FF4(a1);
    v5 = *sub_23F2F1FF4(a1);
    v6 = *a2;
    if (v6 <= 5)
    {
      if (*a2 > 1u)
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            if (v6 != 5)
            {
              goto LABEL_74;
            }

            sub_23F2F21D4(a2);
            v20 = *sub_23F2F21D4(a2);
            goto LABEL_177;
          }

LABEL_80:
          sub_23F2F20E4(a2);
          v31 = sub_23F2F20E4(a2);
          if (*v31 > v5)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return *v31 < v5;
          }
        }

        goto LABEL_163;
      }

      if (*a2)
      {
        sub_23F2F1F04(a2);
        v20 = *sub_23F2F1F04(a2);
      }

      else
      {
        sub_23F2F1CA0(a2);
        v20 = *sub_23F2F1CA0(a2);
      }

LABEL_177:
      if (v5 < v20)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v5 > v20;
      }
    }

    if (*a2 <= 7u)
    {
      if (v6 != 6)
      {
        if (v6 != 7)
        {
          goto LABEL_74;
        }

        sub_23F2F23B4(a2);
        v39 = sub_23F2F23B4(a2);
        goto LABEL_164;
      }

      sub_23F2F22C4(a2);
      v20 = *sub_23F2F22C4(a2);
      goto LABEL_177;
    }

    goto LABEL_89;
  }

  if (*a1)
  {
    sub_23F2F1F04(a1);
    v5 = *sub_23F2F1F04(a1);
    v6 = *a2;
    if (v6 <= 5)
    {
      if (*a2 <= 1u)
      {
        if (*a2)
        {
LABEL_23:
          sub_23F2F1F04(a2);
          v11 = *sub_23F2F1F04(a2);
          goto LABEL_165;
        }

LABEL_35:
        sub_23F2F1CA0(a2);
        v11 = *sub_23F2F1CA0(a2);
        goto LABEL_165;
      }

      goto LABEL_38;
    }

LABEL_42:
    if (v6 <= 7)
    {
LABEL_75:
      if (v6 != 6)
      {
        if (v6 != 7)
        {
          goto LABEL_74;
        }

        sub_23F2F23B4(a2);
        v30 = sub_23F2F23B4(a2);
        if (*v30 > v5)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return *v30 < v5;
        }
      }

      sub_23F2F22C4(a2);
      v16 = *sub_23F2F22C4(a2);
LABEL_160:
      if (v5 < v16)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v16 < v5;
      }
    }

LABEL_89:
    if (v6 != 8)
    {
      if (v6 != 11)
      {
        if (v6 != 12)
        {
          goto LABEL_74;
        }

        sub_23F2F2684(a2);
        v32 = *sub_23F2F2684(a2);
        v33 = v5;
        goto LABEL_115;
      }

      sub_23F2F2594(a2);
      v37 = *sub_23F2F2594(a2);
      v38 = v5;
      goto LABEL_200;
    }

    goto LABEL_121;
  }

  sub_23F2F1CA0(a1);
  v5 = *sub_23F2F1CA0(a1);
  v6 = *a2;
  if (v6 > 5)
  {
    goto LABEL_42;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

LABEL_38:
  if (v6 != 2)
  {
    if (v6 != 3)
    {
      if (v6 == 5)
      {
        sub_23F2F21D4(a2);
        v16 = *sub_23F2F21D4(a2);
        goto LABEL_160;
      }

LABEL_74:
      sub_23F2F1304(v6);
    }

    goto LABEL_80;
  }

  sub_23F2F1FF4(a2);
  v36 = sub_23F2F1FF4(a2);
  if (*v36 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *v36 < v5;
  }
}

void *sub_23F2F34DC(void *a1, std::string::value_type *a2)
{
  v4 = sub_23EF2F9B0(a1, "{", 1);
  v18.__r_.__value_.__s.__data_[0] = *a2;
  v5 = sub_23F2F1524(v4, &v18);
  sub_23EF2F9B0(v5, ",", 1);
  v6 = *a2;
  if (v6 > 5)
  {
    if (*a2 <= 7u)
    {
      if (v6 == 6)
      {
        v13 = sub_23F2F22C4(a2);
        std::to_string(&v18, *v13);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v18;
        }

        else
        {
          v8 = v18.__r_.__value_.__r.__words[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        goto LABEL_62;
      }

      if (v6 == 7)
      {
        v11 = sub_23F2F23B4(a2);
        std::to_string(&v18, *v11);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v18;
        }

        else
        {
          v8 = v18.__r_.__value_.__r.__words[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        goto LABEL_62;
      }
    }

    else
    {
      switch(v6)
      {
        case 8u:
          v15 = sub_23F2F24A4(a2);
          std::to_string(&v18, *v15);
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v8 = &v18;
          }

          else
          {
            v8 = v18.__r_.__value_.__r.__words[0];
          }

          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v18.__r_.__value_.__l.__size_;
          }

          goto LABEL_62;
        case 0xBu:
          LODWORD(v19) = *sub_23F2F2594(a2);
          v18.__r_.__value_.__r.__words[0] = a1;
          sub_23EF821A4(&v20, &v18, &v19);
          return sub_23EF2F9B0(a1, "}", 1);
        case 0xCu:
          v19 = *sub_23F2F2684(a2);
          v18.__r_.__value_.__r.__words[0] = a1;
          sub_23F2C8228(&v20, &v18, &v19);
          return sub_23EF2F9B0(a1, "}", 1);
      }
    }

    goto LABEL_65;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v10 = sub_23F2F1F04(a2);
      std::to_string(&v18, *v10);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v18;
      }

      else
      {
        v8 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v12 = sub_23F2F1CA0(a2);
      std::to_string(&v18, *v12);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v18;
      }

      else
      {
        v8 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }
    }

    goto LABEL_62;
  }

  if (v6 == 2)
  {
    v14 = sub_23F2F1FF4(a2);
    std::to_string(&v18, *v14);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v18;
    }

    else
    {
      v8 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    goto LABEL_62;
  }

  if (v6 == 3)
  {
    v16 = sub_23F2F20E4(a2);
    std::to_string(&v18, *v16);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v18;
    }

    else
    {
      v8 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    goto LABEL_62;
  }

  if (v6 != 5)
  {
LABEL_65:
    sub_23F2F1304(v6);
  }

  v7 = sub_23F2F21D4(a2);
  std::to_string(&v18, *v7);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v18;
  }

  else
  {
    v8 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

LABEL_62:
  sub_23EF2F9B0(a1, v8, size);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return sub_23EF2F9B0(a1, "}", 1);
}

void sub_23F2F37F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3834(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28518D898[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23F2F39F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3A50(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F2F3C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F2F3CAC(uint64_t a1, char *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v9[0] = *(a1 + 32);
    sub_23EF2F9B0(v4, v9, 1);
  }

  v5 = *(a1 + 24);
  v10 = 0;
  std::to_string(&v11, *a2);
  __p = v11;
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v11.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  sub_23EF2F9B0(v5, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ++*(a1 + 40);
}

void sub_23F2F3D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3D94(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v9[0] = *(a1 + 32);
    sub_23EF2F9B0(v4, v9, 1);
  }

  v5 = *(a1 + 24);
  v10 = 0;
  std::to_string(&v11, *a2);
  __p = v11;
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v11.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  sub_23EF2F9B0(v5, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ++*(a1 + 40);
}

void sub_23F2F3E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3E7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    LOBYTE(__p[0]) = *(a1 + 32);
    v4 = a2;
    sub_23EF2F9B0(v3, __p, 1);
    a2 = v4;
  }

  v10 = 5;
  v5 = *(a1 + 24);
  sub_23F2F3F50("{:.{}}", a2, &v10, __p);
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  sub_23EF2F9B0(v5, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  ++*(a1 + 40);
}

void sub_23F2F3F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3F50(char *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = strlen(a1);
  v9 = *a3;
  v14[3] = 0;
  v14[4] = 111;
  v14[0] = a2;
  v14[1] = sub_23F2F7780;
  v14[2] = v9;
  v15 = v19;
  *__len = xmmword_23F344780;
  v17 = sub_23F2ACDFC;
  v18 = 0;
  __p = v19;
  v13[0] = 2;
  v13[1] = v14;
  v13[2] = 111;
  sub_23F2ACEA0(&v15, a1, v8, v13);
  v10 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v11 = __p;
  if (__len[1] >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = __len[1];
  if (!v10)
  {
    *a4 = 0;
    v12 = __p;
    if (__p == v19)
    {
      return;
    }

    goto LABEL_5;
  }

  memmove(a4, v11, v10);
  *(a4 + v10) = 0;
  v12 = __p;
  if (__p != v19)
  {
LABEL_5:
    operator delete(v12);
  }
}

void sub_23F2F40D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (__p != v57)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F40F0(uint64_t a1, int *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    LOBYTE(__p[0]) = *(a1 + 32);
    v4 = a2;
    sub_23EF2F9B0(v3, __p, 1);
    a2 = v4;
  }

  v10 = 9;
  v5 = *(a1 + 24);
  sub_23F2F41C4("{:.{}}", a2, &v10, __p);
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  sub_23EF2F9B0(v5, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  ++*(a1 + 40);
}

void sub_23F2F41A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F41C4(char *a1@<X0>, int *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = strlen(a1);
  v14 = *a2;
  v9 = *a3;
  v16 = 0;
  v17 = 105;
  v15 = v9;
  v18 = v22;
  *__len = xmmword_23F344780;
  v20 = sub_23F2ACDFC;
  v21 = 0;
  __p = v22;
  v13[0] = 2;
  v13[1] = &v14;
  v13[2] = 105;
  sub_23F2ACEA0(&v18, a1, v8, v13);
  v10 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v11 = __p;
  if (__len[1] >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = __len[1];
  if (!v10)
  {
    *a4 = 0;
    v12 = __p;
    if (__p == v22)
    {
      return;
    }

    goto LABEL_5;
  }

  memmove(a4, v11, v10);
  *(a4 + v10) = 0;
  v12 = __p;
  if (__p != v22)
  {
LABEL_5:
    operator delete(v12);
  }
}

void sub_23F2F433C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (__p != v57)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F435C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    LOBYTE(__p[0]) = *(a1 + 32);
    v4 = a2;
    sub_23EF2F9B0(v3, __p, 1);
    a2 = v4;
  }

  v10 = 17;
  v5 = *(a1 + 24);
  sub_23F2F4430("{:.{}}", a2, &v10, __p);
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  sub_23EF2F9B0(v5, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  ++*(a1 + 40);
}

void sub_23F2F4414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F4430(char *a1@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = strlen(a1);
  v9 = *a2;
  v10 = *a3;
  v15[3] = 0;
  v15[4] = 106;
  v14[2] = 106;
  v15[0] = v9;
  v15[2] = v10;
  v16 = v20;
  *__len = xmmword_23F344780;
  v18 = sub_23F2ACDFC;
  v19 = 0;
  __p = v20;
  v14[0] = 2;
  v14[1] = v15;
  sub_23F2ACEA0(&v16, a1, v8, v14);
  v11 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v12 = __p;
  if (__len[1] >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = __len[1];
  if (!v11)
  {
    *a4 = 0;
    v13 = __p;
    if (__p == v20)
    {
      return;
    }

    goto LABEL_5;
  }

  memmove(a4, v12, v11);
  *(a4 + v11) = 0;
  v13 = __p;
  if (__p != v20)
  {
LABEL_5:
    operator delete(v13);
  }
}

void sub_23F2F45A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (__p != v57)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F45C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v4, &__p, 1);
  }

  v5 = *(a1 + 24);
  __p.__r_.__value_.__s.__data_[0] = 34;
  v6 = sub_23EF2F9B0(v5, &__p, 1);
  if (*(a2 + 23) < 0)
  {
    sub_23EF34EA4(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  sub_23F301470(v10, &__p, "", 1, "", 2uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v10[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = v10[1];
  }

  v9 = sub_23EF2F9B0(v6, v7, v8);
  __p.__r_.__value_.__s.__data_[0] = 34;
  sub_23EF2F9B0(v9, &__p, 1);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  ++*(a1 + 40);
}

void sub_23F2F46EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2F471C(uint64_t result, unsigned __int16 **a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(result + 40);
    v6 = 2 * v2;
    do
    {
      if (v5)
      {
        v8 = *(v3 + 24);
        v9 = *(v3 + 32);
        sub_23EF2F9B0(v8, &v9, 1);
      }

      v7 = *v4++;
      result = MEMORY[0x245CAC940](*(v3 + 24), v7);
      v5 = *(v3 + 40) + 1;
      *(v3 + 40) = v5;
      v6 -= 2;
    }

    while (v6);
  }

  return result;
}

void sub_23F2F47A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v4, &__p, 1);
  }

  v5 = *(a2 + 8);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v6 = *a2;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, v6, v5);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  v7 = *(a1 + 24);
  __p.__r_.__value_.__s.__data_[0] = 34;
  v8 = sub_23EF2F9B0(v7, &__p, 1);
  v9 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  sub_23F301470(v13, &__p, "", 1, "", 2uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v14 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = v13[1];
  }

  v12 = sub_23EF2F9B0(v8, v10, v11);
  __p.__r_.__value_.__s.__data_[0] = 34;
  sub_23EF2F9B0(v12, &__p, 1);
  if (v14 < 0)
  {
    operator delete(v13[0]);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  if (v9 < 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  ++*(a1 + 40);
}

void sub_23F2F4968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F49B8(uint64_t a1, _BYTE *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &__p);
    if ((v23 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v14 = strtol(p_p, 0, 10);
    v15 = 127;
    if (v14 < 127)
    {
      v15 = v14;
    }

    if (v15 <= -128)
    {
      LOBYTE(v15) = 0x80;
    }

    *a2 = v15;
    if (!v14)
    {
      v16 = (v23 & 0x80u) == 0 ? &__p : __p;
      v17 = (v23 & 0x80u) == 0 ? v23 : v22;
      if (v17)
      {
        v18 = MEMORY[0x277D85DE0];
        while (1)
        {
          v19 = *v16;
          if (!((v19 & 0x80000000) != 0 ? __maskrune(v19, 0x500uLL) : *(v18 + 4 * v19 + 60) & 0x500))
          {
            break;
          }

          v16 = (v16 + 1);
          if (!--v17)
          {
            goto LABEL_35;
          }
        }

        *(a1 + 130) = 1;
      }
    }

LABEL_35:
    if (v23 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(__p) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = __p;
    sub_23F08C378(v5, &__p);
    v7 = v23;
    if ((v23 & 0x80u) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p;
    }

    if ((v23 & 0x80u) != 0)
    {
      v7 = v22;
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8++;
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((v23 & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(__p);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F4BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F4C14(uint64_t a1, _BYTE *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &__p);
    if ((v23 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v14 = strtol(p_p, 0, 10);
    v15 = 255;
    if (v14 < 255)
    {
      v15 = v14;
    }

    *a2 = v15 & ~(v15 >> 63);
    if (v14 <= 0)
    {
      v16 = (v23 & 0x80u) == 0 ? &__p : __p;
      v17 = (v23 & 0x80u) == 0 ? v23 : v22;
      if (v17)
      {
        v18 = MEMORY[0x277D85DE0];
        while (1)
        {
          v19 = *v16;
          if (!((v19 & 0x80000000) != 0 ? __maskrune(v19, 0x500uLL) : *(v18 + 4 * v19 + 60) & 0x500))
          {
            break;
          }

          v16 = (v16 + 1);
          if (!--v17)
          {
            goto LABEL_33;
          }
        }

        *(a1 + 130) = 1;
      }
    }

LABEL_33:
    if (v23 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(__p) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = __p;
    sub_23F08C378(v5, &__p);
    v7 = v23;
    if ((v23 & 0x80u) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p;
    }

    if ((v23 & 0x80u) != 0)
    {
      v7 = v22;
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8++;
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((v23 & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(__p);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F4E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F4E70(uint64_t a1, _WORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v20);
    sub_23EF32310(v14, &v20, 24);
    MEMORY[0x245CAC820](v14, a2);
    if ((*(&v17[0].__locale_ + *(v14[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v14[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v15 = v13;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v19);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(v14[0]) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = LOBYTE(v14[0]);
    sub_23F08C378(v5, v14);
    v7 = HIBYTE(v15);
    if (v15 >= 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if (v15 < 0)
    {
      v7 = v14[1];
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(v14[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F5184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F51B0(uint64_t a1, _WORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v20);
    sub_23EF32310(v14, &v20, 24);
    MEMORY[0x245CAC830](v14, a2);
    if ((*(&v17[0].__locale_ + *(v14[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v14[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v15 = v13;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v19);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(v14[0]) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = LOBYTE(v14[0]);
    sub_23F08C378(v5, v14);
    v7 = HIBYTE(v15);
    if (v15 >= 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if (v15 < 0)
    {
      v7 = v14[1];
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(v14[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F54C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F54F0(uint64_t a1, _DWORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v20);
    sub_23EF32310(v14, &v20, 24);
    MEMORY[0x245CAC800](v14, a2);
    if ((*(&v17[0].__locale_ + *(v14[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v14[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v15 = v13;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v19);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(v14[0]) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = LOBYTE(v14[0]);
    sub_23F08C378(v5, v14);
    v7 = HIBYTE(v15);
    if (v15 >= 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if (v15 < 0)
    {
      v7 = v14[1];
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(v14[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F5804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F5830(uint64_t a1, _DWORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v20);
    sub_23EF32310(v14, &v20, 24);
    MEMORY[0x245CAC810](v14, a2);
    if ((*(&v17[0].__locale_ + *(v14[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v14[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v15 = v13;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v19);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(v14[0]) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = LOBYTE(v14[0]);
    sub_23F08C378(v5, v14);
    v7 = HIBYTE(v15);
    if (v15 >= 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if (v15 < 0)
    {
      v7 = v14[1];
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(v14[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F5B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F5B70(uint64_t a1, void *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v20);
    sub_23EF32310(v14, &v20, 24);
    MEMORY[0x245CAC840](v14, a2);
    if ((*(&v17[0].__locale_ + *(v14[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v14[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v15 = v13;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v19);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(v14[0]) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = LOBYTE(v14[0]);
    sub_23F08C378(v5, v14);
    v7 = HIBYTE(v15);
    if (v15 >= 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if (v15 < 0)
    {
      v7 = v14[1];
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(v14[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F5E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F5EB0(uint64_t a1, void *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v20);
    sub_23EF32310(v14, &v20, 24);
    MEMORY[0x245CAC850](v14, a2);
    if ((*(&v17[0].__locale_ + *(v14[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v14[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v15 = v13;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v19);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(v14[0]) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = LOBYTE(v14[0]);
    sub_23F08C378(v5, v14);
    v7 = HIBYTE(v15);
    if (v15 >= 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if (v15 < 0)
    {
      v7 = v14[1];
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(v14[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F61C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F61F0(uint64_t a1, _WORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v25);
    sub_23EF32310(v19, &v25, 24);
    v27 = 0.0;
    v13 = MEMORY[0x245CAC7E0](v19, &v27);
    if ((*(v13 + *(*v13 - 24) + 32) & 5) == 0)
    {
      _S0 = v27;
      __asm { FCVT            H0, S0 }

      *a2 = LOWORD(_S0);
    }

    if ((*(&v22[0].__locale_ + *(v19[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v19[0] = *MEMORY[0x277D82818];
    v18 = *(MEMORY[0x277D82818] + 72);
    *(v19 + *(v19[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v20 = v18;
    v21 = MEMORY[0x277D82878] + 16;
    if (v23 < 0)
    {
      operator delete(v22[7].__locale_);
    }

    v21 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v22);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v24);
    if (v26 < 0)
    {
      operator delete(v25);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(v19[0]) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = LOBYTE(v19[0]);
    sub_23F08C378(v5, v19);
    v7 = HIBYTE(v20);
    if (v20 >= 0)
    {
      v8 = v19;
    }

    else
    {
      v8 = v19[0];
    }

    if (v20 < 0)
    {
      v7 = v19[1];
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(v19[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F6538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF327C8(va);
  if (*(v3 - 41) < 0)
  {
    operator delete(*(v3 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F6564(uint64_t a1, _DWORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v20);
    sub_23EF32310(v14, &v20, 24);
    MEMORY[0x245CAC7F0](v14, a2);
    if ((*(&v17[0].__locale_ + *(v14[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v14[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v15 = v13;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v19);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(v14[0]) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = LOBYTE(v14[0]);
    sub_23F08C378(v5, v14);
    v7 = HIBYTE(v15);
    if (v15 >= 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if (v15 < 0)
    {
      v7 = v14[1];
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(v14[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F6878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F68A4(uint64_t a1, void *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v20);
    sub_23EF32310(v14, &v20, 24);
    MEMORY[0x245CAC7E0](v14, a2);
    if ((*(&v17[0].__locale_ + *(v14[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v14[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v15 = v13;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v19);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(v14[0]) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = LOBYTE(v14[0]);
    sub_23F08C378(v5, v14);
    v7 = HIBYTE(v15);
    if (v15 >= 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if (v15 < 0)
    {
      v7 = v14[1];
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        v8 = (v8 + 1);
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(v14[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F6BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F6BE4(uint64_t a1, _BYTE *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    v38 = a2;
    sub_23F2F7390(a1, &__p);
    v13 = HIBYTE(v41);
    if (v41 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v41 >= 0)
    {
      v15 = HIBYTE(v41);
    }

    else
    {
      v15 = v40;
    }

    v43 = 0;
    v44 = 0;
    __dst = 0;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    if (v15 < 0x17)
    {
      if (v15)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v15 | 7) == 0x17)
      {
        v16 = 24;
      }

      else
      {
        v16 = v15 | 7;
      }

      sub_23EF430F4(&__dst, v16);
      do
      {
LABEL_44:
        while (1)
        {
          v17 = __tolower(*p_p);
          v18 = HIBYTE(v44);
          if (SHIBYTE(v44) < 0)
          {
            break;
          }

          if (HIBYTE(v44) == 22)
          {
            goto LABEL_49;
          }

          HIBYTE(v44) = (HIBYTE(v44) + 1) & 0x7F;
          *(&__dst + v18) = v17;
          ++p_p;
          if (!--v15)
          {
            goto LABEL_51;
          }
        }

        v19 = (v44 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v43 == v19)
        {
          if ((v44 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23EF2F8F4();
          }

LABEL_49:
          operator new();
        }

        v20 = v43++;
        v21 = __dst + v20;
        *v21 = v17;
        v21[1] = 0;
        ++p_p;
        --v15;
      }

      while (v15);
LABEL_51:
      v13 = HIBYTE(v41);
    }

    if (v13 < 0)
    {
      operator delete(__p);
    }

    v22 = SHIBYTE(v44);
    if ((SHIBYTE(v44) & 0x8000000000000000) != 0)
    {
      v22 = v43;
      if (!v43)
      {
        goto LABEL_91;
      }

      if (v43 == 1)
      {
        p_dst = __dst;
        if (*__dst != 48)
        {
          __p = 0;
          v40 = 0;
          v22 = 1;
          v41 = 0;
          goto LABEL_71;
        }

        goto LABEL_91;
      }

      p_dst = __dst;
      v40 = 0;
      v41 = 0;
      __p = 0;
      if (v43 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_23EF2F8F4();
      }
    }

    else
    {
      if (!HIBYTE(v44) || HIBYTE(v44) == 1 && __dst == 48)
      {
        goto LABEL_91;
      }

      __p = 0;
      v40 = 0;
      p_dst = &__dst;
      v41 = 0;
    }

    if (v22 >= 0x17)
    {
      if ((v22 | 7) == 0x17)
      {
        v24 = 24;
      }

      else
      {
        v24 = v22 | 7;
      }

      sub_23EF430F4(&__p, v24);
    }

    do
    {
LABEL_71:
      while (1)
      {
        v25 = __tolower(*p_dst);
        v26 = HIBYTE(v41);
        if (SHIBYTE(v41) < 0)
        {
          break;
        }

        if (HIBYTE(v41) == 22)
        {
          goto LABEL_76;
        }

        HIBYTE(v41) = (HIBYTE(v41) + 1) & 0x7F;
        *(&__p + v26) = v25;
        ++p_dst;
        if (!--v22)
        {
          goto LABEL_78;
        }
      }

      v27 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v40 == v27)
      {
        if ((v41 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

LABEL_76:
        operator new();
      }

      v28 = v40++;
      v29 = __p + v28;
      *v29 = v25;
      v29[1] = 0;
      ++p_dst;
      --v22;
    }

    while (v22);
LABEL_78:
    if (SHIBYTE(v41) < 0)
    {
      if (v40 != 5)
      {
        operator delete(__p);
        *a2 = 1;
        if ((SHIBYTE(v44) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_92;
      }

      v34 = bswap64(*__p | (*(__p + 4) << 32));
      v31 = v34 >= 0x66616C7365000000;
      v35 = v34 > 0x66616C7365000000;
      v36 = !v31;
      v37 = v35 - v36;
      operator delete(__p);
      if (v37)
      {
        goto LABEL_84;
      }
    }

    else if (SHIBYTE(v41) != 5 || ((v30 = bswap64(__p | (BYTE4(__p) << 32)), v31 = v30 >= 0x66616C7365000000, v32 = v30 > 0x66616C7365000000, v31) ? (v33 = 0) : (v33 = 1), v32 != v33))
    {
LABEL_84:
      *v38 = 1;
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_92:
      operator delete(__dst);
      goto LABEL_26;
    }

LABEL_91:
    *v38 = 0;
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_92;
  }

  *a2 = 0;
  if (std::istream::peek() != -1)
  {
    LOBYTE(__dst) = 0;
    std::istream::read();
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
    }

    v6 = __dst;
    sub_23F08C378(v5, &__dst);
    v7 = HIBYTE(v44);
    if (v44 >= 0)
    {
      v8 = &__dst;
    }

    else
    {
      v8 = __dst;
    }

    if (v44 < 0)
    {
      v7 = v43;
    }

    if (v7)
    {
      v9 = v7 - 1;
      do
      {
        v10 = *v8++;
        v11 = v10 == v6;
      }

      while (v10 != v6 && v9-- != 0);
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v11;
        goto LABEL_24;
      }
    }

    operator delete(__dst);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F7208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23F2F7268(uint64_t a1, unsigned __int8 a2)
{
  v3 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v3 = *v3;
  }

  v4 = a2;
  sub_23F08C378(v3, &v19);
  v5 = v21;
  if ((v21 & 0x80u) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19;
  }

  if ((v21 & 0x80u) != 0)
  {
    v5 = v20;
  }

  if (!v5)
  {
    v9 = 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(v19);
    if (v9)
    {
      return 1;
    }

    goto LABEL_21;
  }

  v7 = v5 - 1;
  do
  {
    v8 = *v6;
    v6 = (v6 + 1);
    v9 = v8 == v4;
  }

  while (v8 != v4 && v7-- != 0);
  if (v21 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (v9)
  {
    return 1;
  }

LABEL_21:
  v13 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v13 = *v13;
  }

  sub_23F08C378(v13, &v19);
  v14 = v21;
  if ((v21 & 0x80u) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19;
  }

  if ((v21 & 0x80u) != 0)
  {
    v14 = v20;
  }

  if (v14)
  {
    v16 = v14 - 1;
    do
    {
      v17 = *v15;
      v15 = (v15 + 1);
      v11 = v17 == v4;
    }

    while (v17 != v4 && v16-- != 0);
    if ((v21 & 0x80000000) == 0)
    {
      return v11;
    }
  }

  else
  {
    v11 = 0;
    if ((v21 & 0x80000000) == 0)
    {
      return v11;
    }
  }

  operator delete(v19);
  return v11;
}

void sub_23F2F7390(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 136);
  if (*(a1 + 159) < 0 && (v5 = *(a1 + 152), (v5 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0x1F))
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_23EF430F4((a1 + 136), 0x27uLL);
    if ((*(a1 + 159) & 0x80) == 0)
    {
LABEL_4:
      *(a1 + 159) = 0;
      v6 = v4;
      goto LABEL_7;
    }
  }

  v6 = *(a1 + 136);
  *(a1 + 144) = 0;
LABEL_7:
  v6->__r_.__value_.__s.__data_[0] = 0;
  LOBYTE(v14[0]) = 0;
  std::istream::read();
  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    while (!sub_23F2F7268(a1, 0))
    {
      std::string::push_back(v4, 0);
      LOBYTE(v14[0]) = 0;
      std::istream::read();
      if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    sub_23F08C378(v7, v14);
    v8 = v15;
    if ((v15 & 0x80u) == 0)
    {
      v9 = v14;
    }

    else
    {
      v9 = v14[0];
    }

    if ((v15 & 0x80u) != 0)
    {
      v8 = v14[1];
    }

    if (v8)
    {
      v10 = (v8 - 1);
      do
      {
        v11 = *v9;
        v9 = (v9 + 1);
        v12 = v11 == 0;
        if (v11)
        {
          v13 = v10 == 0;
        }

        else
        {
          v13 = 1;
        }

        --v10;
      }

      while (!v13);
      if ((v15 & 0x80000000) == 0)
      {
LABEL_29:
        *(a1 + 131) = v12;
        if (*(a1 + 159) < 0)
        {
          goto LABEL_30;
        }

LABEL_13:
        *a2 = *&v4->__r_.__value_.__l.__data_;
        *(a2 + 16) = *(&v4->__r_.__value_.__l + 2);
        return;
      }
    }

    else
    {
      v12 = 0;
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    operator delete(v14[0]);
    *(a1 + 131) = v12;
    if (*(a1 + 159) < 0)
    {
      goto LABEL_30;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_30:
  sub_23EF34EA4(a2, *(a1 + 136), *(a1 + 144));
}

void sub_23F2F75D0(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  sub_23F2F7390(a1, &__src);
  v4 = __len;
  if ((__len & 0x8000000000000000) != 0)
  {
    v6 = v8;
    if (v8 == *(a2 + 8))
    {
      p_src = __src;
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_14:
    operator new();
  }

  if (*(a2 + 8) != __len)
  {
    goto LABEL_14;
  }

  p_src = &__src;
  v6 = __len;
  if (__len)
  {
LABEL_7:
    memmove(*a2, p_src, v6);
    v4 = __len;
  }

LABEL_8:
  if (v4 < 0)
  {
    operator delete(__src);
  }

  ++*(a1 + 104);
}

void sub_23F2F7724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2F7780(unsigned __int8 **a1, uint64_t *a2, __int16 *a3)
{
  v17 = 0;
  v18 = -1;
  v19 = 32;
  v20 = 0;
  v21 = 0;
  v6 = sub_23F2ADDD4(&v17, a1, 319);
  if (BYTE1(v17) - 13 >= 6)
  {
    if (BYTE1(v17) > 0xCu || ((1 << SBYTE1(v17)) & 0x1801) == 0)
    {
      sub_23F2AE878("a floating-point");
    }
  }

  else if ((SWORD1(v17) & 0x80000000) == 0 && v18 == -1)
  {
    v18 = 6;
  }

  *a1 = v6;
  _H0 = *a3;
  __asm { FCVT            S8, H0 }

  v13 = sub_23F2AF2AC(&v17, a2);
  v14.n128_u32[0] = _S8;
  result = sub_23F2B5CC0(a2, v13, v15, v14);
  *a2 = result;
  return result;
}

uint64_t sub_23F2F787C(uint64_t result, char **a2)
{
  v2 = *(result + 24);
  if (*(v2 + 40) == 1)
  {
    v8 = v2 + 16;
    v3 = a2[1];
    if (v3)
    {
      v4 = *a2;
      do
      {
        result = sub_23F2FC63C(&v8, v4++);
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v5 = a2[1];
    if (v5)
    {
      v6 = *a2;
      do
      {
        while (1)
        {
          v7 = *v6;
          if ((v7 & 0x80000000) == 0)
          {
            break;
          }

          v9 = -52;
          v10 = v7;
          result = std::ostream::write();
          ++v6;
          if (!--v5)
          {
            return result;
          }
        }

        v11 = *v6;
        result = std::ostream::write();
        ++v6;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_23F2F7948(uint64_t result, unsigned __int16 **a2)
{
  v2 = *(result + 24);
  if (*(v2 + 40) == 1)
  {
    v10 = v2 + 16;
    v3 = a2[1];
    if (v3)
    {
      v4 = *a2;
      v5 = 2 * v3;
      do
      {
        result = sub_23F2FCB5C(&v10, v4++);
        v5 -= 2;
      }

      while (v5);
    }
  }

  else
  {
    v6 = a2[1];
    if (v6)
    {
      v7 = *a2;
      v8 = 2 * v6;
      do
      {
        v9 = *v7;
        if (v9 <= 0x7F)
        {
          v15 = *v7;
        }

        else if (v9 > 0xFF)
        {
          v11 = -51;
          v12 = __rev16(v9);
        }

        else
        {
          v13 = -52;
          v14 = v9;
        }

        result = std::ostream::write();
        ++v7;
        v8 -= 2;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_23F2F7A44(uint64_t result, unsigned int **a2)
{
  v2 = *(result + 24);
  if (*(v2 + 40) == 1)
  {
    v10 = v2 + 16;
    v3 = a2[1];
    if (v3)
    {
      v4 = *a2;
      v5 = 4 * v3;
      do
      {
        result = sub_23F2FE06C(v11, &v10, v4++);
        v5 -= 4;
      }

      while (v5);
    }
  }

  else
  {
    v6 = a2[1];
    if (v6)
    {
      v7 = *a2;
      v8 = 4 * v6;
      do
      {
        v9 = *v7++;
        v11[1] = -54;
        v12 = bswap32(v9);
        result = std::ostream::write();
        v8 -= 4;
      }

      while (v8);
    }
  }

  return result;
}

void sub_23F2F7AF4(void *a1, _BYTE *a2)
{
  sub_23F2F9118(a1, &v10);
  v13 = v10;
  v14 = v11;
  *a2 = sub_23F2FE90C(&v13);
  v3 = v12;
  v12 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7BA4(void *a1, _BYTE *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 2 || v13 >= 0x100)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7CA0(void *a1, _WORD *a2)
{
  sub_23F2F9118(a1, &v10);
  v13 = v10;
  v14 = v11;
  *a2 = sub_23F2FE97C(&v13);
  v3 = v12;
  v12 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7D50(void *a1, _WORD *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 2 || v13 >= 0x10000)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7E4C(void *a1, _DWORD *a2)
{
  sub_23F2F9118(a1, &v10);
  v13 = v10;
  v14 = v11;
  *a2 = sub_23F2FE9F0(&v13);
  v3 = v12;
  v12 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7EFC(void *a1, _DWORD *a2)
{
  sub_23F2F9118(a1, &v13);
  if (v13 != 2 || HIDWORD(v14) != 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v12 = std::bad_cast::bad_cast(exception);
    v12->__vftable = &unk_28518DA90;
    __cxa_throw(v12, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v14;
  v4 = v15;
  v15 = 0;
  if (v4)
  {
    for (i = v4[4]; ; i -= 16)
    {
      v6 = v4[6];
      if (i == v6)
      {
        break;
      }

      v8 = *(i - 2);
      v7 = *(i - 1);
      v8(v7);
    }

    free(v6);
    v9 = v4[3];
    if (v9)
    {
      do
      {
        v10 = *v9;
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    free(v4);
  }
}

void sub_23F2F7FF8(void *a1, void *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 3 && (v12 != 2 || v13 < 0))
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F80F8(void *a1, void *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  v3 = v14;
  *a2 = v13;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F81EC(void *a1, float *a2)
{
  sub_23F2F9118(a1, &v13);
  if (v13 == 2)
  {
    *a2 = v14;
    v4 = v15;
    v15 = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v13 == 3)
  {
    *a2 = v14;
    v4 = v15;
    v15 = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v13 != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v12 = std::bad_cast::bad_cast(exception);
    v12->__vftable = &unk_28518DA90;
    __cxa_throw(v12, &unk_28518D9B0, std::exception::~exception);
  }

  v3 = *&v14;
  *a2 = v3;
  v4 = v15;
  v15 = 0;
  if (v4)
  {
LABEL_9:
    for (i = v4[4]; ; i -= 16)
    {
      v6 = v4[6];
      if (i == v6)
      {
        break;
      }

      v8 = *(i - 2);
      v7 = *(i - 1);
      v8(v7);
    }

    free(v6);
    v9 = v4[3];
    if (v9)
    {
      do
      {
        v10 = *v9;
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    free(v4);
  }
}

void sub_23F2F8334(void *a1, double *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 == 2)
  {
    *a2 = v13;
    v3 = v14;
    v14 = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v12 == 3)
  {
    *a2 = v13;
    v3 = v14;
    v14 = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v12 != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
LABEL_9:
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F8478(void *a1, _BYTE *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F856C(void *a1, void ***a2)
{
  sub_23F2F9118(a1, &v13);
  if (v13 != 8 && v13 != 5)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v12 = std::bad_cast::bad_cast(exception);
    v12->__vftable = &unk_28518DA90;
    __cxa_throw(v12, &unk_28518D9B0, std::exception::~exception);
  }

  sub_23F2FEA60(a2, *v15, __len);
  v4 = v16;
  v16 = 0;
  if (v4)
  {
    for (i = v4[4]; ; i -= 16)
    {
      v6 = v4[6];
      if (i == v6)
      {
        break;
      }

      v8 = *(i - 2);
      v7 = *(i - 1);
      v8(v7);
    }

    free(v6);
    v9 = v4[3];
    if (v9)
    {
      do
      {
        v10 = *v9;
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    free(v4);
  }
}

char *sub_23F2F866C(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  v5 = *a1;
  if ((v4 - *a1) >= 9)
  {
    result = a1[1];
  }

  else
  {
    if (v4)
    {
      v6 = 2 * v4;
    }

    else
    {
      v6 = 0x2000;
    }

    v7 = v5 + 9;
    while (v6 < v7)
    {
      v8 = v6 <= 0;
      v6 *= 2;
      if (v8)
      {
        v6 = v7;
        break;
      }
    }

    result = malloc_type_realloc(a1[1], v6, 0xFC6EF249uLL);
    if (!result)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v12, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    a1[1] = result;
    a1[2] = v6;
    v5 = *a1;
  }

  v10 = &result[v5];
  *v10 = -49;
  *(v10 + 1) = bswap64(a2);
  *a1 += 9;
  return result;
}

void sub_23F2F874C(void *a1, uint64_t a2)
{
  sub_23F2F9118(a1, &v13);
  if (v13 != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v12 = std::bad_cast::bad_cast(exception);
    v12->__vftable = &unk_28518DA90;
    __cxa_throw(v12, &unk_28518D9B0, std::exception::~exception);
  }

  v3 = v14;
  v4 = v16;
  *(a2 + 8) = v15;
  *a2 = v3;
  v16 = 0;
  if (v4)
  {
    for (i = v4[4]; ; i -= 16)
    {
      v6 = v4[6];
      if (i == v6)
      {
        break;
      }

      v8 = *(i - 2);
      v7 = *(i - 1);
      v8(v7);
    }

    free(v6);
    v9 = v4[3];
    if (v9)
    {
      do
      {
        v10 = *v9;
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    free(v4);
  }
}

std::bad_cast *sub_23F2F8844(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = &unk_28518DA90;
  return result;
}

char *sub_23F2F887C(uint64_t a1)
{
  if (*(a1 + 40))
  {
LABEL_5:
    if ((*(a1 + 72) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = *(a1 + 16);
    v8 = *(a1 + 88);
    v7 = *(a1 + 96);
    if (v8 < v7)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v2 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = v2;
  if (*(a1 + 40) == 1)
  {
    free(*(a1 + 24));
    *(a1 + 24) = v3;
    *(a1 + 32) = 0x2000;
    *(a1 + 16) = 0;
    goto LABEL_5;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0x2000;
  *(a1 + 40) = 1;
  if (*(a1 + 72))
  {
    goto LABEL_11;
  }

LABEL_6:
  v4 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_28:
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v21, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v5 = v4;
  if (*(a1 + 72) == 1)
  {
    free(*(a1 + 56));
    *(a1 + 56) = v5;
    *(a1 + 64) = 0x2000;
    *(a1 + 48) = 0;
    v6 = *(a1 + 16);
    v8 = *(a1 + 88);
    v7 = *(a1 + 96);
    if (v8 >= v7)
    {
      goto LABEL_14;
    }

LABEL_12:
    *v8 = v6;
    v9 = v8 + 8;
    goto LABEL_25;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = v4;
  *(a1 + 64) = 0x2000;
  *(a1 + 72) = 1;
  v6 = *(a1 + 16);
  v8 = *(a1 + 88);
  v7 = *(a1 + 96);
  if (v8 < v7)
  {
    goto LABEL_12;
  }

LABEL_14:
  v10 = *(a1 + 80);
  v11 = v8 - v10;
  v12 = (v8 - v10) >> 3;
  v13 = v12 + 1;
  if ((v12 + 1) >> 61)
  {
    sub_23EF3AE74();
  }

  v14 = v7 - v10;
  if (v14 >> 2 > v13)
  {
    v13 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (!(v15 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v16 = (v8 - v10) >> 3;
  v17 = (8 * v12);
  v18 = (8 * v12 - 8 * v16);
  *v17 = v6;
  v9 = v17 + 1;
  memcpy(v18, v10, v11);
  *(a1 + 80) = v18;
  *(a1 + 88) = v9;
  *(a1 + 96) = 0;
  if (v10)
  {
    operator delete(v10);
  }

LABEL_25:
  *(a1 + 88) = v9;

  return sub_23F2F866C((a1 + 16), 0);
}

void *sub_23F2F8A98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  LODWORD(__n) = 0;
  __src = 0;
  sub_23F2F874C(v3, &__n);
  v4 = __n;
  if (*(a2 + 8) != __n)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v9 = sub_23F2F8844(exception);
    __cxa_throw(v9, &unk_28518D9B0, std::exception::~exception);
  }

  v5 = *a2;
  v6 = __src;

  return memcpy(v5, v6, v4);
}

void sub_23F2F8B28(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2F8B60(void *a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    free(a1);
  }
}

void sub_23F2F8B78(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  if (v3 == v4)
  {
    v5 = atomic_load(*(a1 + 56));
    if (v5 == 1 && *(a1 + 232) == 1)
    {
      v6 = *(a1 + 64) + *(a1 + 72) - 4;
      v3 = 4;
      *(a1 + 64) = 4;
      *(a1 + 72) = v6;
      *(a1 + 80) = 4;
      if (v6 >= a2)
      {
        return;
      }

      goto LABEL_9;
    }

    v4 = *(a1 + 80);
    v3 = *(a1 + 64);
  }

  if (v4 == 4)
  {
    v6 = *(a1 + 72);
LABEL_9:
    v7 = v3 + v6;
    v8 = v3 + a2;
    while (1)
    {
      v7 *= 2;
      if (v7 >= v8)
      {
        break;
      }

      if (v7 <= 0)
      {
        v7 = v8;
        break;
      }
    }

    v9 = malloc_type_realloc(*(a1 + 56), v7, 0x100004077774924uLL);
    if (v9)
    {
      *(a1 + 56) = v9;
      *(a1 + 72) = v7 - *(a1 + 64);
      return;
    }

LABEL_32:
    exception = __cxa_allocate_exception(8uLL);
    v27 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v27, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v10 = *(a1 + 96);
  v11 = v3 - v4;
  v12 = a2 + v3 - v4 + 4;
  while (v10 < v12)
  {
    v13 = v10 <= 0;
    v10 *= 2;
    if (v13)
    {
      v10 = v12;
      break;
    }
  }

  v14 = malloc_type_malloc(v10, 0x100004077774924uLL);
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = v14;
  *v14 = 1;
  memcpy(v14 + 1, (*(a1 + 56) + *(a1 + 80)), v11);
  if (*(a1 + 232) == 1)
  {
    v16 = *(a1 + 56);
    v17 = **(a1 + 104);
    v18 = v17[4];
    if (v18 == v17[5])
    {
      v19 = v17[6];
      v21 = v18 - v19;
      v20 = v18 == v19;
      v22 = (v18 - v19) >> 3;
      if (v20)
      {
        v23 = 4;
      }

      else
      {
        v23 = v22;
      }

      v24 = malloc_type_realloc(v19, 16 * v23, 0x80040803F642BuLL);
      if (!v24)
      {
        v28 = __cxa_allocate_exception(8uLL);
        v29 = std::bad_alloc::bad_alloc(v28);
        __cxa_throw(v29, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      v17[5] = &v24[16 * v23];
      v17[6] = v24;
      v18 = &v24[v21];
    }

    *v18 = sub_23F2F8B60;
    *(v18 + 1) = v16;
    v17[4] = v18 + 16;
    *(a1 + 232) = 0;
  }

  else
  {
    v25 = *(a1 + 56);
    if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
    {
      free(v25);
    }
  }

  *(a1 + 56) = v15;
  *(a1 + 64) = v11 + 4;
  *(a1 + 72) = v10 - (v11 + 4);
  *(a1 + 80) = 4;
}

void *sub_23F2F8E1C(void *result)
{
  v5 = "RefillBuffer";
  v4 = &unk_23F3091D6;
  if (*(result + *(*result - 24) + 32))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_23F2F8F18(&__msg, &v4, &v5);
    *&__ec.__val_ = 1;
    __ec.__cat_ = std::iostream_category();
    std::ios_base::failure::failure(exception, &__msg, &__ec);
    __cxa_throw(exception, MEMORY[0x277D82738], MEMORY[0x277D826B0]);
  }

  return result;
}

void sub_23F2F8EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t sub_23F2F8F18(uint64_t a1, const char **a2, const char *a3)
{
  v6 = 0;
  if (*a2)
  {
    sub_23F2947C4(v5, a2);
  }

  else
  {
    v7 = v5;
    v8 = "nullptr";
    v9 = v5;
    v10 = "nullptr";
    v11 = "nullptr";
    v12 = &v7;
    sub_23EF6D5F0(&v12);
  }

  v7 = v5;
  v8 = "Input stream not in good state, in ";
  v9 = v5;
  v10 = "Input stream not in good state, in ";
  v11 = "Input stream not in good state, in ";
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v7;
  (*(&off_28518DAF0 + v6))(&v12, v5);
  if (*a3)
  {
    v7 = v5;
    v8 = a3;
    v9 = v5;
    v10 = a3;
    v11 = a3;
    if (v6 != -1)
    {
      v12 = &v7;
      (off_28518DAA8[v6])(&v12, v5);
      goto LABEL_10;
    }

LABEL_15:
    sub_23EF41D6C();
  }

  v7 = v5;
  v8 = "nullptr";
  v9 = v5;
  v10 = "nullptr";
  v11 = "nullptr";
  if (v6 == -1)
  {
    goto LABEL_15;
  }

  v12 = &v7;
  (*(&off_28518DAD8 + v6))(&v12, v5);
LABEL_10:
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v7 = &v12;
  result = (off_28518DB08[v6])(&v7, v5);
  if (v6 != -1)
  {
    return (off_28518DAC0[v6])(&v7, v5);
  }

  return result;
}

void sub_23F2F9118(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = a1[11];
  v5 = a1[9];
  v6 = a1[12] - v4 + v5;
  v7 = a1[8];
  v8 = (v7 + v4);
  a1[1] = v7;
  a1[2] = v7 + v4;
  if (v4 == v5)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v7 + v5);
    v25 = *(a1 + 8);
    while (2)
    {
      if (v25)
      {
        v8 = a1[2];
        v23 = v8;
        if ((v22 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v33 = *v8;
      v34 = *v8;
      if ((v33 & 0x8000000000000000) == 0)
      {
        v35 = *(a1[27] - 8);
        *v35 = 2;
        *(v35 + 8) = v34;
        v29 = a1[2] + 1;
        a1[2] = v29;
        v36 = a1[5];
        v37 = a1[6];
        if (v36 != v37)
        {
          v38 = a1[27];
          do
          {
            while (1)
            {
              v41 = v37 - 2;
              v42 = *(v37 - 2);
              if (v42)
              {
                break;
              }

              v43 = *--v38;
              *v38 = v43 + 24;
              v44 = *(v37 - 1) - 1;
              *(v37 - 1) = v44;
              if (v44)
              {
                goto LABEL_329;
              }

LABEL_31:
              a1[6] = v41;
              a1[27] = v38;
              v37 -= 2;
              if (v36 == v41)
              {
                goto LABEL_482;
              }
            }

            if (v42 == 2)
            {
              v39 = *--v38;
              *v38 = v39 + 24;
              v40 = *(v37 - 1) - 1;
              *(v37 - 1) = v40;
              if (v40)
              {
                goto LABEL_463;
              }

              goto LABEL_31;
            }

            if (v42 == 1)
            {
              goto LABEL_462;
            }
          }

          while (v36 != v37);
        }

LABEL_482:
        v9 = 1;
        v341 = v29 - a1[1];
        a1[11] = v341;
        v342 = v341 > v4;
        v11 = (v341 - v4);
        if (v342)
        {
          goto LABEL_484;
        }

        goto LABEL_485;
      }

      if (v33 >= 0xFFFFFFE0)
      {
        v45 = *(a1[27] - 8);
        *v45 = 3;
        *(v45 + 8) = v33;
        v29 = a1[2] + 1;
        a1[2] = v29;
        v46 = a1[5];
        v47 = a1[6];
        if (v46 == v47)
        {
          goto LABEL_482;
        }

        v38 = a1[27];
        while (1)
        {
          while (1)
          {
            v41 = v47 - 2;
            v50 = *(v47 - 2);
            if (v50)
            {
              break;
            }

            v51 = *--v38;
            *v38 = v51 + 24;
            v52 = *(v47 - 1) - 1;
            *(v47 - 1) = v52;
            if (v52)
            {
              goto LABEL_329;
            }

LABEL_43:
            a1[6] = v41;
            a1[27] = v38;
            v47 -= 2;
            if (v46 == v41)
            {
              goto LABEL_482;
            }
          }

          if (v50 == 2)
          {
            v48 = *--v38;
            *v38 = v48 + 24;
            v49 = *(v47 - 1) - 1;
            *(v47 - 1) = v49;
            if (v49)
            {
              goto LABEL_463;
            }

            goto LABEL_43;
          }

          if (v50 == 1)
          {
            goto LABEL_462;
          }

          if (v46 == v47)
          {
            goto LABEL_482;
          }
        }
      }

      if (v34 < 0xC4)
      {
        if ((v34 & 0xE0) == 0xA0)
        {
          v59 = v34 & 0x1F;
          a1[3] = v59;
          if (v59)
          {
            v25 = 32;
            *(a1 + 8) = 32;
            goto LABEL_21;
          }

          sub_23F2FB294((a1 + 15), v23, 0);
          v29 = a1[2] + 1;
          a1[2] = v29;
          v294 = a1[5];
          v295 = a1[6];
          if (v294 == v295)
          {
            goto LABEL_482;
          }

          v38 = a1[27];
          while (1)
          {
            while (1)
            {
              v41 = v295 - 2;
              v298 = *(v295 - 2);
              if (v298)
              {
                break;
              }

              v299 = *--v38;
              *v38 = v299 + 24;
              v300 = *(v295 - 1) - 1;
              *(v295 - 1) = v300;
              if (v300)
              {
                goto LABEL_329;
              }

LABEL_407:
              a1[6] = v41;
              a1[27] = v38;
              v295 -= 2;
              if (v294 == v41)
              {
                goto LABEL_482;
              }
            }

            if (v298 == 2)
            {
              v296 = *--v38;
              *v38 = v296 + 24;
              v297 = *(v295 - 1) - 1;
              *(v295 - 1) = v297;
              if (v297)
              {
                goto LABEL_463;
              }

              goto LABEL_407;
            }

            if (v298 == 1)
            {
              goto LABEL_462;
            }

            if (v294 == v295)
            {
              goto LABEL_482;
            }
          }
        }

        if ((v33 & 0xFFFFFFF0) == 0xFFFFFF90)
        {
          a1[2] = v8 + 1;
          v250 = v34 & 0xF;
          if ((v34 & 0xF) != 0)
          {
            LODWORD(v381) = 0;
            HIDWORD(v381) = v34 & 0xF;
            sub_23F2FBBD8((a1 + 5), &v381);
            sub_23F2FB838(a1 + 15, v250);
            goto LABEL_329;
          }

          sub_23F2FB838(a1 + 15, 0);
          v38 = (a1[27] - 8);
          a1[27] = v38;
          v309 = a1[5];
          v310 = a1[6];
          if (v309 == v310)
          {
            goto LABEL_481;
          }

          while (1)
          {
            while (1)
            {
              v41 = v310 - 2;
              v313 = *(v310 - 2);
              if (v313)
              {
                break;
              }

              v314 = *--v38;
              *v38 = v314 + 24;
              v315 = *(v310 - 1) - 1;
              *(v310 - 1) = v315;
              if (v315)
              {
                goto LABEL_329;
              }

LABEL_432:
              a1[6] = v41;
              a1[27] = v38;
              v310 -= 2;
              if (v309 == v41)
              {
                goto LABEL_481;
              }
            }

            if (v313 == 2)
            {
              v311 = *--v38;
              *v38 = v311 + 24;
              v312 = *(v310 - 1) - 1;
              *(v310 - 1) = v312;
              if (v312)
              {
                goto LABEL_463;
              }

              goto LABEL_432;
            }

            if (v313 == 1)
            {
              goto LABEL_462;
            }

            if (v309 == v310)
            {
              goto LABEL_481;
            }
          }
        }

        if (v34 <= 0x8F)
        {
          a1[2] = v8 + 1;
          v251 = v33 & 0xF;
          if ((v33 & 0xF) != 0)
          {
            LODWORD(v381) = 1;
            HIDWORD(v381) = v33 & 0xF;
            sub_23F2FBBD8((a1 + 5), &v381);
            sub_23F2FBCF0(a1 + 15, v251);
            goto LABEL_329;
          }

          sub_23F2FBCF0(a1 + 15, 0);
          v38 = (a1[27] - 8);
          a1[27] = v38;
          v316 = a1[5];
          v317 = a1[6];
          if (v316 == v317)
          {
LABEL_481:
            v29 = a1[2];
            goto LABEL_482;
          }

          while (1)
          {
            while (1)
            {
              v41 = v317 - 2;
              v320 = *(v317 - 2);
              if (v320)
              {
                break;
              }

              v321 = *--v38;
              *v38 = v321 + 24;
              v322 = *(v317 - 1) - 1;
              *(v317 - 1) = v322;
              if (v322)
              {
                goto LABEL_329;
              }

LABEL_443:
              a1[6] = v41;
              a1[27] = v38;
              v317 -= 2;
              if (v316 == v41)
              {
                goto LABEL_481;
              }
            }

            if (v320 == 2)
            {
              v318 = *--v38;
              *v38 = v318 + 24;
              v319 = *(v317 - 1) - 1;
              *(v317 - 1) = v319;
              if (v319)
              {
                goto LABEL_463;
              }

              goto LABEL_443;
            }

            if (v320 == 1)
            {
              goto LABEL_462;
            }

            if (v316 == v317)
            {
              goto LABEL_481;
            }
          }
        }

        if (v34 != 192)
        {
          if (v34 != 195)
          {
            if (v34 != 194)
            {
LABEL_524:
              a1[11] = &v8[-a1[1]];
              sub_23F2FB430();
            }

            v301 = *(a1[27] - 8);
            *v301 = 1;
            *(v301 + 8) = 0;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v302 = a1[5];
            v303 = a1[6];
            if (v302 == v303)
            {
              goto LABEL_482;
            }

            v38 = a1[27];
            while (1)
            {
              while (1)
              {
                v41 = v303 - 2;
                v306 = *(v303 - 2);
                if (v306)
                {
                  break;
                }

                v307 = *--v38;
                *v38 = v307 + 24;
                v308 = *(v303 - 1) - 1;
                *(v303 - 1) = v308;
                if (v308)
                {
                  goto LABEL_329;
                }

LABEL_421:
                a1[6] = v41;
                a1[27] = v38;
                v303 -= 2;
                if (v302 == v41)
                {
                  goto LABEL_482;
                }
              }

              if (v306 == 2)
              {
                v304 = *--v38;
                *v38 = v304 + 24;
                v305 = *(v303 - 1) - 1;
                *(v303 - 1) = v305;
                if (v305)
                {
                  goto LABEL_463;
                }

                goto LABEL_421;
              }

              if (v306 == 1)
              {
                goto LABEL_462;
              }

              if (v302 == v303)
              {
                goto LABEL_482;
              }
            }
          }

          v323 = *(a1[27] - 8);
          *v323 = 1;
          *(v323 + 8) = 1;
          v29 = a1[2] + 1;
          a1[2] = v29;
          v324 = a1[5];
          v325 = a1[6];
          if (v324 == v325)
          {
            goto LABEL_482;
          }

          v38 = a1[27];
          while (1)
          {
            v41 = v325 - 2;
            v328 = *(v325 - 2);
            if (!v328)
            {
              break;
            }

            if (v328 == 2)
            {
              v326 = *--v38;
              *v38 = v326 + 24;
              v327 = *(v325 - 1) - 1;
              *(v325 - 1) = v327;
              if (v327)
              {
LABEL_463:
                v25 = 0;
                v22 = 0;
                *v41 = 1;
                goto LABEL_464;
              }

LABEL_454:
              a1[6] = v41;
              a1[27] = v38;
              v325 -= 2;
              if (v324 == v41)
              {
                goto LABEL_482;
              }
            }

            else
            {
              if (v328 == 1)
              {
LABEL_462:
                v25 = 0;
                v22 = 0;
                *(v38 - 1) += 24;
                *v41 = 2;
                goto LABEL_464;
              }

              if (v324 == v325)
              {
                goto LABEL_482;
              }
            }
          }

          v329 = *--v38;
          *v38 = v329 + 24;
          v330 = *(v325 - 1) - 1;
          *(v325 - 1) = v330;
          if (v330)
          {
            goto LABEL_329;
          }

          goto LABEL_454;
        }

        v331 = a1[27];
        **(v331 - 1) = 0;
        v29 = (v8 + 1);
        a1[2] = v8 + 1;
        v332 = a1[5];
        v333 = a1[6];
        if (v332 == v333)
        {
          goto LABEL_482;
        }

        while (1)
        {
          v336 = v333 - 2;
          v337 = *(v333 - 2);
          if (!v337)
          {
            break;
          }

          if (v337 == 2)
          {
            v334 = *--v331;
            *v331 = v334 + 24;
            v335 = *(v333 - 1) - 1;
            *(v333 - 1) = v335;
            if (v335)
            {
              v25 = 0;
              v22 = 0;
              *v336 = 1;
              goto LABEL_464;
            }

LABEL_469:
            a1[6] = v336;
            a1[27] = v331;
            v333 -= 2;
            if (v332 == v336)
            {
              goto LABEL_482;
            }
          }

          else
          {
            if (v337 == 1)
            {
              v25 = 0;
              v22 = 0;
              *(v331 - 1) += 24;
              *v336 = 2;
              goto LABEL_464;
            }

            if (v332 == v333)
            {
              goto LABEL_482;
            }
          }
        }

        v338 = *--v331;
        *v331 = v338 + 24;
        v339 = *(v333 - 1) - 1;
        *(v333 - 1) = v339;
        if (v339)
        {
          goto LABEL_329;
        }

        goto LABEL_469;
      }

      a1[3] = dword_23F349108[(v34 - 196)];
      v25 = *v8 & 0x1F;
      *(a1 + 8) = v25;
LABEL_21:
      v23 = v8 + 1;
      a1[2] = v8 + 1;
LABEL_22:
      v26 = a1[3];
      if (v24 - v23 >= v26)
      {
        v27 = &v23[v26];
        v8 = &v23[v26 - 1];
        a1[2] = v8;
        switch(v25)
        {
          case 4:
            v28 = *v23;
            a1[3] = v28;
            if (v28)
            {
              goto LABEL_173;
            }

            sub_23F2FB624((a1 + 15), v23, 0);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v30 = a1[5];
            v31 = a1[6];
            if (v30 == v31)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v31 - 2;
              v56 = *(v31 - 2);
              if (v56)
              {
                if (v56 != 2)
                {
                  if (v56 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v30 == v31)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v53 = *--v32;
                *v32 = v53 + 24;
                v54 = *(v31 - 1) - 1;
                *(v31 - 1) = v54;
                if (v54)
                {
                  goto LABEL_403;
                }

LABEL_54:
                a1[6] = v55;
                a1[27] = v32;
                v31 -= 2;
                if (v30 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v57 = *--v32;
            *v32 = v57 + 24;
            v58 = *(v31 - 1) - 1;
            *(v31 - 1) = v58;
            if (!v58)
            {
              goto LABEL_54;
            }

            goto LABEL_329;
          case 5:
            v140 = *v23;
            v141 = __rev16(v140);
            a1[3] = v141;
            if (v140)
            {
              goto LABEL_173;
            }

            sub_23F2FB624((a1 + 15), v23, v141);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v273 = a1[5];
            v274 = a1[6];
            if (v273 == v274)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              while (2)
              {
                v55 = v274 - 2;
                v277 = *(v274 - 2);
                if (v277)
                {
                  if (v277 != 2)
                  {
                    if (v277 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v273 == v274)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v275 = *--v32;
                  *v32 = v275 + 24;
                  v276 = *(v274 - 1) - 1;
                  *(v274 - 1) = v276;
                  if (v276)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v278 = *--v32;
                  *v32 = v278 + 24;
                  v279 = *(v274 - 1) - 1;
                  *(v274 - 1) = v279;
                  if (v279)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v55;
              a1[27] = v32;
              v274 -= 2;
              if (v273 == v55)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 6:
            v112 = *v23;
            v113 = bswap32(*v23);
            a1[3] = v113;
            if (v112)
            {
LABEL_173:
              v22 = 1;
              v25 = 33;
              goto LABEL_464;
            }

            sub_23F2FB624((a1 + 15), v23, v113);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v114 = a1[5];
            v115 = a1[6];
            if (v114 == v115)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (1)
            {
              while (1)
              {
                v55 = v115 - 2;
                v118 = *(v115 - 2);
                if (v118)
                {
                  break;
                }

                v119 = *--v32;
                *v32 = v119 + 24;
                v120 = *(v115 - 1) - 1;
                *(v115 - 1) = v120;
                if (v120)
                {
                  goto LABEL_329;
                }

LABEL_138:
                a1[6] = v55;
                a1[27] = v32;
                v115 -= 2;
                if (v114 == v55)
                {
                  goto LABEL_482;
                }
              }

              if (v118 == 2)
              {
                v116 = *--v32;
                *v32 = v116 + 24;
                v117 = *(v115 - 1) - 1;
                *(v115 - 1) = v117;
                if (v117)
                {
                  goto LABEL_403;
                }

                goto LABEL_138;
              }

              if (v118 == 1)
              {
                goto LABEL_402;
              }

              if (v114 == v115)
              {
                goto LABEL_482;
              }
            }

          case 7:
            v89 = *v23;
            goto LABEL_197;
          case 8:
            v89 = bswap32(*v23) >> 16;
            goto LABEL_197;
          case 9:
            v89 = bswap32(*v23);
LABEL_197:
            a1[3] = v89 + 1;
            v22 = 1;
            v25 = 34;
            goto LABEL_464;
          case 10:
            v176 = COERCE_FLOAT(bswap32(*v23));
            v177 = *(a1[27] - 8);
            *v177 = 4;
            *(v177 + 8) = v176;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v178 = a1[5];
            v179 = a1[6];
            if (v178 == v179)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v179 - 2;
              v182 = *(v179 - 2);
              if (v182)
              {
                if (v182 != 2)
                {
                  if (v182 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v178 == v179)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v180 = *--v32;
                *v32 = v180 + 24;
                v181 = *(v179 - 1) - 1;
                *(v179 - 1) = v181;
                if (v181)
                {
                  goto LABEL_403;
                }

LABEL_227:
                a1[6] = v55;
                a1[27] = v32;
                v179 -= 2;
                if (v178 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v183 = *--v32;
            *v32 = v183 + 24;
            v184 = *(v179 - 1) - 1;
            *(v179 - 1) = v184;
            if (!v184)
            {
              goto LABEL_227;
            }

            goto LABEL_329;
          case 11:
            v131 = bswap64(*v23);
            v132 = *(a1[27] - 8);
            *v132 = 4;
            *(v132 + 8) = v131;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v133 = a1[5];
            v134 = a1[6];
            if (v133 == v134)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v134 - 2;
              v137 = *(v134 - 2);
              if (v137)
              {
                if (v137 != 2)
                {
                  if (v137 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v133 == v134)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v135 = *--v32;
                *v32 = v135 + 24;
                v136 = *(v134 - 1) - 1;
                *(v134 - 1) = v136;
                if (v136)
                {
                  goto LABEL_403;
                }

LABEL_164:
                a1[6] = v55;
                a1[27] = v32;
                v134 -= 2;
                if (v133 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v138 = *--v32;
            *v32 = v138 + 24;
            v139 = *(v134 - 1) - 1;
            *(v134 - 1) = v139;
            if (!v139)
            {
              goto LABEL_164;
            }

            goto LABEL_329;
          case 12:
            v201 = *v23;
            v202 = *(a1[27] - 8);
            *v202 = 2;
            *(v202 + 8) = v201;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v203 = a1[5];
            v204 = a1[6];
            if (v203 == v204)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v204 - 2;
              v207 = *(v204 - 2);
              if (v207)
              {
                if (v207 != 2)
                {
                  if (v207 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v203 == v204)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v205 = *--v32;
                *v32 = v205 + 24;
                v206 = *(v204 - 1) - 1;
                *(v204 - 1) = v206;
                if (v206)
                {
                  goto LABEL_403;
                }

LABEL_260:
                a1[6] = v55;
                a1[27] = v32;
                v204 -= 2;
                if (v203 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v208 = *--v32;
            *v32 = v208 + 24;
            v209 = *(v204 - 1) - 1;
            *(v204 - 1) = v209;
            if (!v209)
            {
              goto LABEL_260;
            }

            goto LABEL_329;
          case 13:
            v100 = bswap32(*v23);
            v101 = *(a1[27] - 8);
            *v101 = 2;
            *(v101 + 8) = HIWORD(v100);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v102 = a1[5];
            v103 = a1[6];
            if (v102 == v103)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v103 - 2;
              v106 = *(v103 - 2);
              if (v106)
              {
                if (v106 != 2)
                {
                  if (v106 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v102 == v103)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v104 = *--v32;
                *v32 = v104 + 24;
                v105 = *(v103 - 1) - 1;
                *(v103 - 1) = v105;
                if (v105)
                {
                  goto LABEL_403;
                }

LABEL_121:
                a1[6] = v55;
                a1[27] = v32;
                v103 -= 2;
                if (v102 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v107 = *--v32;
            *v32 = v107 + 24;
            v108 = *(v103 - 1) - 1;
            *(v103 - 1) = v108;
            if (!v108)
            {
              goto LABEL_121;
            }

            goto LABEL_329;
          case 14:
            v192 = bswap32(*v23);
            v193 = *(a1[27] - 8);
            *v193 = 2;
            *(v193 + 8) = v192;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v194 = a1[5];
            v195 = a1[6];
            if (v194 == v195)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v195 - 2;
              v198 = *(v195 - 2);
              if (v198)
              {
                if (v198 != 2)
                {
                  if (v198 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v194 == v195)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v196 = *--v32;
                *v32 = v196 + 24;
                v197 = *(v195 - 1) - 1;
                *(v195 - 1) = v197;
                if (v197)
                {
                  goto LABEL_403;
                }

LABEL_249:
                a1[6] = v55;
                a1[27] = v32;
                v195 -= 2;
                if (v194 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v199 = *--v32;
            *v32 = v199 + 24;
            v200 = *(v195 - 1) - 1;
            *(v195 - 1) = v200;
            if (!v200)
            {
              goto LABEL_249;
            }

            goto LABEL_329;
          case 15:
            v80 = bswap64(*v23);
            v81 = *(a1[27] - 8);
            *v81 = 2;
            *(v81 + 8) = v80;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v82 = a1[5];
            v83 = a1[6];
            if (v82 == v83)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v83 - 2;
              v86 = *(v83 - 2);
              if (v86)
              {
                if (v86 != 2)
                {
                  if (v86 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v82 == v83)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v84 = *--v32;
                *v32 = v84 + 24;
                v85 = *(v83 - 1) - 1;
                *(v83 - 1) = v85;
                if (v85)
                {
                  goto LABEL_403;
                }

LABEL_95:
                a1[6] = v55;
                a1[27] = v32;
                v83 -= 2;
                if (v82 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v87 = *--v32;
            *v32 = v87 + 24;
            v88 = *(v83 - 1) - 1;
            *(v83 - 1) = v88;
            if (!v88)
            {
              goto LABEL_95;
            }

            goto LABEL_329;
          case 16:
            v90 = *v23;
            v91 = *(a1[27] - 8);
            if (v90 >= 0)
            {
              v92 = 2;
            }

            else
            {
              v92 = 3;
            }

            *v91 = v92;
            *(v91 + 8) = v90;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v93 = a1[5];
            v94 = a1[6];
            if (v93 == v94)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v94 - 2;
              v97 = *(v94 - 2);
              if (v97)
              {
                if (v97 != 2)
                {
                  if (v97 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v93 == v94)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v95 = *--v32;
                *v32 = v95 + 24;
                v96 = *(v94 - 1) - 1;
                *(v94 - 1) = v96;
                if (v96)
                {
                  goto LABEL_403;
                }

LABEL_110:
                a1[6] = v55;
                a1[27] = v32;
                v94 -= 2;
                if (v93 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v98 = *--v32;
            *v32 = v98 + 24;
            v99 = *(v94 - 1) - 1;
            *(v94 - 1) = v99;
            if (!v99)
            {
              goto LABEL_110;
            }

            goto LABEL_329;
          case 17:
            v164 = bswap32(*v23);
            v165 = v164 >> 16;
            v166 = SHIWORD(v164);
            v167 = *(a1[27] - 8);
            if (v165 >= 0)
            {
              v168 = 2;
            }

            else
            {
              v168 = 3;
            }

            *v167 = v168;
            *(v167 + 8) = v166;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v169 = a1[5];
            v170 = a1[6];
            if (v169 == v170)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v170 - 2;
              v173 = *(v170 - 2);
              if (v173)
              {
                if (v173 != 2)
                {
                  if (v173 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v169 == v170)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v171 = *--v32;
                *v32 = v171 + 24;
                v172 = *(v170 - 1) - 1;
                *(v170 - 1) = v172;
                if (v172)
                {
                  goto LABEL_403;
                }

LABEL_216:
                a1[6] = v55;
                a1[27] = v32;
                v170 -= 2;
                if (v169 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v174 = *--v32;
            *v32 = v174 + 24;
            v175 = *(v170 - 1) - 1;
            *(v170 - 1) = v175;
            if (!v175)
            {
              goto LABEL_216;
            }

            goto LABEL_329;
          case 18:
            v69 = bswap32(*v23);
            v70 = v69;
            v71 = *(a1[27] - 8);
            if (v69 >= 0)
            {
              v72 = 2;
            }

            else
            {
              v72 = 3;
            }

            *v71 = v72;
            *(v71 + 8) = v70;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v73 = a1[5];
            v74 = a1[6];
            if (v73 == v74)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v74 - 2;
              v77 = *(v74 - 2);
              if (v77)
              {
                if (v77 != 2)
                {
                  if (v77 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v73 == v74)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v75 = *--v32;
                *v32 = v75 + 24;
                v76 = *(v74 - 1) - 1;
                *(v74 - 1) = v76;
                if (v76)
                {
                  goto LABEL_403;
                }

LABEL_84:
                a1[6] = v55;
                a1[27] = v32;
                v74 -= 2;
                if (v73 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v78 = *--v32;
            *v32 = v78 + 24;
            v79 = *(v74 - 1) - 1;
            *(v74 - 1) = v79;
            if (!v79)
            {
              goto LABEL_84;
            }

            goto LABEL_329;
          case 19:
            v121 = bswap64(*v23);
            v122 = *(a1[27] - 8);
            if (v121 >= 0)
            {
              v123 = 2;
            }

            else
            {
              v123 = 3;
            }

            *v122 = v123;
            *(v122 + 8) = v121;
            v29 = a1[2] + 1;
            a1[2] = v29;
            v124 = a1[5];
            v125 = a1[6];
            if (v124 == v125)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v125 - 2;
              v128 = *(v125 - 2);
              if (v128)
              {
                if (v128 != 2)
                {
                  if (v128 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v124 == v125)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v126 = *--v32;
                *v32 = v126 + 24;
                v127 = *(v125 - 1) - 1;
                *(v125 - 1) = v127;
                if (v127)
                {
                  goto LABEL_403;
                }

LABEL_152:
                a1[6] = v55;
                a1[27] = v32;
                v125 -= 2;
                if (v124 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v129 = *--v32;
            *v32 = v129 + 24;
            v130 = *(v125 - 1) - 1;
            *(v125 - 1) = v130;
            if (!v130)
            {
              goto LABEL_152;
            }

            goto LABEL_329;
          case 20:
            sub_23F2FB484((a1 + 15), v23, 2u);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v62 = a1[5];
            v63 = a1[6];
            if (v62 == v63)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v63 - 2;
              v66 = *(v63 - 2);
              if (v66)
              {
                if (v66 != 2)
                {
                  if (v66 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v62 == v63)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v64 = *--v32;
                *v32 = v64 + 24;
                v65 = *(v63 - 1) - 1;
                *(v63 - 1) = v65;
                if (v65)
                {
                  goto LABEL_403;
                }

LABEL_70:
                a1[6] = v55;
                a1[27] = v32;
                v63 -= 2;
                if (v62 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v67 = *--v32;
            *v32 = v67 + 24;
            v68 = *(v63 - 1) - 1;
            *(v63 - 1) = v68;
            if (!v68)
            {
              goto LABEL_70;
            }

            goto LABEL_329;
          case 21:
            sub_23F2FB484((a1 + 15), v23, 3u);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v142 = a1[5];
            v143 = a1[6];
            if (v142 == v143)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v143 - 2;
              v146 = *(v143 - 2);
              if (v146)
              {
                if (v146 != 2)
                {
                  if (v146 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v142 == v143)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v144 = *--v32;
                *v32 = v144 + 24;
                v145 = *(v143 - 1) - 1;
                *(v143 - 1) = v145;
                if (v145)
                {
                  goto LABEL_403;
                }

LABEL_177:
                a1[6] = v55;
                a1[27] = v32;
                v143 -= 2;
                if (v142 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v147 = *--v32;
            *v32 = v147 + 24;
            v148 = *(v143 - 1) - 1;
            *(v143 - 1) = v148;
            if (!v148)
            {
              goto LABEL_177;
            }

            goto LABEL_329;
          case 22:
            sub_23F2FB484((a1 + 15), v23, 5u);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v185 = a1[5];
            v186 = a1[6];
            if (v185 == v186)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v186 - 2;
              v189 = *(v186 - 2);
              if (v189)
              {
                if (v189 != 2)
                {
                  if (v189 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v185 == v186)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v187 = *--v32;
                *v32 = v187 + 24;
                v188 = *(v186 - 1) - 1;
                *(v186 - 1) = v188;
                if (v188)
                {
                  goto LABEL_403;
                }

LABEL_238:
                a1[6] = v55;
                a1[27] = v32;
                v186 -= 2;
                if (v185 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v190 = *--v32;
            *v32 = v190 + 24;
            v191 = *(v186 - 1) - 1;
            *(v186 - 1) = v191;
            if (!v191)
            {
              goto LABEL_238;
            }

            goto LABEL_329;
          case 23:
            sub_23F2FB484((a1 + 15), v23, 9u);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v226 = a1[5];
            v227 = a1[6];
            if (v226 == v227)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              while (2)
              {
                v55 = v227 - 2;
                v230 = *(v227 - 2);
                if (v230)
                {
                  if (v230 != 2)
                  {
                    if (v230 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v226 == v227)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v228 = *--v32;
                  *v32 = v228 + 24;
                  v229 = *(v227 - 1) - 1;
                  *(v227 - 1) = v229;
                  if (v229)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v231 = *--v32;
                  *v32 = v231 + 24;
                  v232 = *(v227 - 1) - 1;
                  *(v227 - 1) = v232;
                  if (v232)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v55;
              a1[27] = v32;
              v227 -= 2;
              if (v226 == v55)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 24:
            sub_23F2FB484((a1 + 15), v23, 0x11u);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v149 = a1[5];
            v150 = a1[6];
            if (v149 == v150)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v150 - 2;
              v153 = *(v150 - 2);
              if (v153)
              {
                if (v153 != 2)
                {
                  if (v153 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v149 == v150)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v151 = *--v32;
                *v32 = v151 + 24;
                v152 = *(v150 - 1) - 1;
                *(v150 - 1) = v152;
                if (v152)
                {
                  goto LABEL_403;
                }

LABEL_188:
                a1[6] = v55;
                a1[27] = v32;
                v150 -= 2;
                if (v149 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v154 = *--v32;
            *v32 = v154 + 24;
            v155 = *(v150 - 1) - 1;
            *(v150 - 1) = v155;
            if (!v155)
            {
              goto LABEL_188;
            }

            goto LABEL_329;
          case 25:
            v156 = *v23;
            a1[3] = v156;
            if (v156)
            {
              goto LABEL_303;
            }

            sub_23F2FB294((a1 + 15), v23, 0);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v157 = a1[5];
            v158 = a1[6];
            if (v157 == v158)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              v55 = v158 - 2;
              v161 = *(v158 - 2);
              if (v161)
              {
                if (v161 != 2)
                {
                  if (v161 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v157 == v158)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v159 = *--v32;
                *v32 = v159 + 24;
                v160 = *(v158 - 1) - 1;
                *(v158 - 1) = v160;
                if (v160)
                {
                  goto LABEL_403;
                }

LABEL_202:
                a1[6] = v55;
                a1[27] = v32;
                v158 -= 2;
                if (v157 == v55)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v162 = *--v32;
            *v32 = v162 + 24;
            v163 = *(v158 - 1) - 1;
            *(v158 - 1) = v163;
            if (!v163)
            {
              goto LABEL_202;
            }

            goto LABEL_329;
          case 26:
            v217 = *v23;
            v218 = __rev16(v217);
            a1[3] = v218;
            if (v217)
            {
              goto LABEL_303;
            }

            sub_23F2FB294((a1 + 15), v23, v218);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v219 = a1[5];
            v220 = a1[6];
            if (v219 == v220)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              while (2)
              {
                v55 = v220 - 2;
                v223 = *(v220 - 2);
                if (v223)
                {
                  if (v223 != 2)
                  {
                    if (v223 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v219 == v220)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v221 = *--v32;
                  *v32 = v221 + 24;
                  v222 = *(v220 - 1) - 1;
                  *(v220 - 1) = v222;
                  if (v222)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v224 = *--v32;
                  *v32 = v224 + 24;
                  v225 = *(v220 - 1) - 1;
                  *(v220 - 1) = v225;
                  if (v225)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v55;
              a1[27] = v32;
              v220 -= 2;
              if (v219 == v55)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 27:
            v233 = *v23;
            v234 = bswap32(*v23);
            a1[3] = v234;
            if (v233)
            {
LABEL_303:
              v22 = 1;
              v25 = 32;
              goto LABEL_464;
            }

            sub_23F2FB294((a1 + 15), v23, v234);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v280 = a1[5];
            v281 = a1[6];
            if (v280 == v281)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (1)
            {
              while (1)
              {
                v55 = v281 - 2;
                v284 = *(v281 - 2);
                if (v284)
                {
                  break;
                }

                v285 = *--v32;
                *v32 = v285 + 24;
                v286 = *(v281 - 1) - 1;
                *(v281 - 1) = v286;
                if (v286)
                {
                  goto LABEL_329;
                }

LABEL_383:
                a1[6] = v55;
                a1[27] = v32;
                v281 -= 2;
                if (v280 == v55)
                {
                  goto LABEL_482;
                }
              }

              if (v284 == 2)
              {
                v282 = *--v32;
                *v32 = v282 + 24;
                v283 = *(v281 - 1) - 1;
                *(v281 - 1) = v283;
                if (v283)
                {
                  goto LABEL_403;
                }

                goto LABEL_383;
              }

              if (v284 == 1)
              {
                goto LABEL_402;
              }

              if (v280 == v281)
              {
                goto LABEL_482;
              }
            }

          case 28:
            v111 = *v23;
            a1[2] = v27;
            if (v111)
            {
              v110 = __rev16(v111);
              LODWORD(v381) = 0;
              HIDWORD(v381) = v110;
              sub_23F2FBBD8((a1 + 5), &v381);
              goto LABEL_133;
            }

            sub_23F2FB838(a1 + 15, 0);
            v32 = (a1[27] - 8);
            a1[27] = v32;
            v266 = a1[5];
            v267 = a1[6];
            if (v266 == v267)
            {
              goto LABEL_481;
            }

            while (1)
            {
              while (1)
              {
                v55 = v267 - 2;
                v270 = *(v267 - 2);
                if (v270)
                {
                  break;
                }

                v271 = *--v32;
                *v32 = v271 + 24;
                v272 = *(v267 - 1) - 1;
                *(v267 - 1) = v272;
                if (v272)
                {
                  goto LABEL_329;
                }

LABEL_361:
                a1[6] = v55;
                a1[27] = v32;
                v267 -= 2;
                if (v266 == v55)
                {
                  goto LABEL_481;
                }
              }

              if (v270 == 2)
              {
                v268 = *--v32;
                *v32 = v268 + 24;
                v269 = *(v267 - 1) - 1;
                *(v267 - 1) = v269;
                if (v269)
                {
                  goto LABEL_403;
                }

                goto LABEL_361;
              }

              if (v270 == 1)
              {
                goto LABEL_402;
              }

              if (v266 == v267)
              {
                goto LABEL_481;
              }
            }

          case 29:
            v109 = *v23;
            a1[2] = v27;
            if (v109)
            {
              v110 = bswap32(v109);
              LODWORD(v381) = 0;
              HIDWORD(v381) = v110;
              sub_23F2FBBD8((a1 + 5), &v381);
LABEL_133:
              sub_23F2FB838(a1 + 15, v110);
LABEL_329:
              v25 = 0;
              v22 = 0;
              goto LABEL_464;
            }

            sub_23F2FB838(a1 + 15, 0);
            v32 = (a1[27] - 8);
            a1[27] = v32;
            v259 = a1[5];
            v260 = a1[6];
            if (v259 == v260)
            {
              goto LABEL_481;
            }

            while (1)
            {
              while (1)
              {
                v55 = v260 - 2;
                v263 = *(v260 - 2);
                if (v263)
                {
                  break;
                }

                v264 = *--v32;
                *v32 = v264 + 24;
                v265 = *(v260 - 1) - 1;
                *(v260 - 1) = v265;
                if (v265)
                {
                  goto LABEL_329;
                }

LABEL_350:
                a1[6] = v55;
                a1[27] = v32;
                v260 -= 2;
                if (v259 == v55)
                {
                  goto LABEL_481;
                }
              }

              if (v263 == 2)
              {
                v261 = *--v32;
                *v32 = v261 + 24;
                v262 = *(v260 - 1) - 1;
                *(v260 - 1) = v262;
                if (v262)
                {
                  goto LABEL_403;
                }

                goto LABEL_350;
              }

              if (v263 == 1)
              {
                goto LABEL_402;
              }

              if (v259 == v260)
              {
                goto LABEL_481;
              }
            }

          case 30:
            v249 = *v23;
            a1[2] = v27;
            if (v249)
            {
              v61 = __rev16(v249);
              LODWORD(v381) = 1;
              HIDWORD(v381) = v61;
              sub_23F2FBBD8((a1 + 5), &v381);
              goto LABEL_328;
            }

            sub_23F2FBCF0(a1 + 15, 0);
            v32 = (a1[27] - 8);
            a1[27] = v32;
            v287 = a1[5];
            v288 = a1[6];
            if (v287 == v288)
            {
              goto LABEL_481;
            }

            while (1)
            {
              while (1)
              {
                v55 = v288 - 2;
                v291 = *(v288 - 2);
                if (v291)
                {
                  break;
                }

                v292 = *--v32;
                *v32 = v292 + 24;
                v293 = *(v288 - 1) - 1;
                *(v288 - 1) = v293;
                if (v293)
                {
                  goto LABEL_329;
                }

LABEL_394:
                a1[6] = v55;
                a1[27] = v32;
                v288 -= 2;
                if (v287 == v55)
                {
                  goto LABEL_481;
                }
              }

              if (v291 == 2)
              {
                v289 = *--v32;
                *v32 = v289 + 24;
                v290 = *(v288 - 1) - 1;
                *(v288 - 1) = v290;
                if (v290)
                {
                  goto LABEL_403;
                }

                goto LABEL_394;
              }

              if (v291 == 1)
              {
                goto LABEL_402;
              }

              if (v287 == v288)
              {
                goto LABEL_481;
              }
            }

          case 31:
            v60 = *v23;
            a1[2] = v27;
            if (v60)
            {
              v61 = bswap32(v60);
              LODWORD(v381) = 1;
              HIDWORD(v381) = v61;
              sub_23F2FBBD8((a1 + 5), &v381);
LABEL_328:
              sub_23F2FBCF0(a1 + 15, v61);
              goto LABEL_329;
            }

            sub_23F2FBCF0(a1 + 15, 0);
            v32 = (a1[27] - 8);
            a1[27] = v32;
            v252 = a1[5];
            v253 = a1[6];
            if (v252 == v253)
            {
              goto LABEL_481;
            }

            break;
          case 32:
            sub_23F2FB294((a1 + 15), v23, v26);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v235 = a1[5];
            v236 = a1[6];
            if (v235 == v236)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              while (2)
              {
                v55 = v236 - 2;
                v239 = *(v236 - 2);
                if (v239)
                {
                  if (v239 != 2)
                  {
                    if (v239 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v235 == v236)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v237 = *--v32;
                  *v32 = v237 + 24;
                  v238 = *(v236 - 1) - 1;
                  *(v236 - 1) = v238;
                  if (v238)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v240 = *--v32;
                  *v32 = v240 + 24;
                  v241 = *(v236 - 1) - 1;
                  *(v236 - 1) = v241;
                  if (v241)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v55;
              a1[27] = v32;
              v236 -= 2;
              if (v235 == v55)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 33:
            sub_23F2FB624((a1 + 15), v23, v26);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v242 = a1[5];
            v243 = a1[6];
            if (v242 == v243)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              while (2)
              {
                v55 = v243 - 2;
                v246 = *(v243 - 2);
                if (v246)
                {
                  if (v246 != 2)
                  {
                    if (v246 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v242 == v243)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v244 = *--v32;
                  *v32 = v244 + 24;
                  v245 = *(v243 - 1) - 1;
                  *(v243 - 1) = v245;
                  if (v245)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v247 = *--v32;
                  *v32 = v247 + 24;
                  v248 = *(v243 - 1) - 1;
                  *(v243 - 1) = v248;
                  if (v248)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v55;
              a1[27] = v32;
              v243 -= 2;
              if (v242 == v55)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 34:
            sub_23F2FB484((a1 + 15), v23, v26);
            v29 = a1[2] + 1;
            a1[2] = v29;
            v210 = a1[5];
            v211 = a1[6];
            if (v210 == v211)
            {
              goto LABEL_482;
            }

            v32 = a1[27];
            while (2)
            {
              while (2)
              {
                v55 = v211 - 2;
                v214 = *(v211 - 2);
                if (!v214)
                {
                  v215 = *--v32;
                  *v32 = v215 + 24;
                  v216 = *(v211 - 1) - 1;
                  *(v211 - 1) = v216;
                  if (v216)
                  {
                    goto LABEL_329;
                  }

LABEL_271:
                  a1[6] = v55;
                  a1[27] = v32;
                  v211 -= 2;
                  if (v210 == v55)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                break;
              }

              if (v214 == 2)
              {
                v212 = *--v32;
                *v32 = v212 + 24;
                v213 = *(v211 - 1) - 1;
                *(v211 - 1) = v213;
                if (v213)
                {
LABEL_403:
                  v25 = 0;
                  v22 = 0;
                  *v55 = 1;
                  goto LABEL_464;
                }

                goto LABEL_271;
              }

              if (v214 != 1)
              {
                if (v210 == v211)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

LABEL_402:
            v25 = 0;
            v22 = 0;
            *(v32 - 1) += 24;
            *v55 = 2;
LABEL_464:
            *(a1 + 8) = v25;
            v8 = a1[2];
            if (v8 == v24)
            {
              v9 = 0;
              v10 = a1[1];
              a1[11] = &v24[-v10];
              v11 = &v24[-v10 - v4];
              if (&v24[-v10] > v4)
              {
                goto LABEL_484;
              }

              goto LABEL_485;
            }

            continue;
          default:
            goto LABEL_524;
        }

        while (1)
        {
          while (1)
          {
            v55 = v253 - 2;
            v256 = *(v253 - 2);
            if (v256)
            {
              break;
            }

            v257 = *--v32;
            *v32 = v257 + 24;
            v258 = *(v253 - 1) - 1;
            *(v253 - 1) = v258;
            if (v258)
            {
              goto LABEL_329;
            }

LABEL_339:
            a1[6] = v55;
            a1[27] = v32;
            v253 -= 2;
            if (v252 == v55)
            {
              goto LABEL_481;
            }
          }

          if (v256 == 2)
          {
            v254 = *--v32;
            *v32 = v254 + 24;
            v255 = *(v253 - 1) - 1;
            *(v253 - 1) = v255;
            if (v255)
            {
              goto LABEL_403;
            }

            goto LABEL_339;
          }

          if (v256 == 1)
          {
            goto LABEL_402;
          }

          if (v252 == v253)
          {
            goto LABEL_481;
          }
        }
      }

      break;
    }

    v9 = 0;
    v340 = a1[1];
    a1[11] = &v23[-v340];
    v11 = &v23[-v340 - v4];
    if (&v23[-v340] > v4)
    {
LABEL_484:
      a1[12] += v11;
    }

LABEL_485:
    if (v9)
    {
      break;
    }

    do
    {
LABEL_5:
      v12 = *(a2 + 24);
      *(a2 + 24) = 0;
      if (v12)
      {
        for (i = v12[4]; ; i -= 16)
        {
          v14 = v12[6];
          if (i == v14)
          {
            break;
          }

          v16 = *(i - 2);
          v15 = *(i - 1);
          v16(v15);
        }

        free(v14);
        v17 = v12[3];
        if (v17)
        {
          do
          {
            v18 = *v17;
            free(v17);
            v17 = v18;
          }

          while (v18);
        }

        free(v12);
      }

      *a2 = 0;
      sub_23F2F8E1C(*a1);
      if (a1[33] >= 0x400uLL)
      {
        v19 = 1024;
      }

      else
      {
        v19 = a1[33];
      }

      if (a1[10] < v19)
      {
        sub_23F2F8B78((a1 + 1), v19);
      }

      std::istream::read();
      v20 = *(*a1 + 8);
      v5 = a1[9] + v20;
      v21 = a1[10] - v20;
      a1[9] = v5;
      a1[10] = v21;
      v4 = a1[11];
      v6 = a1[12] + v5 - v4;
      v7 = a1[8];
      v8 = (v7 + v4);
      a1[1] = v7;
      a1[2] = v7 + v4;
    }

    while (v4 == v5);
  }

  v343 = a1[31];
  v344 = v343[6];
  if (v344)
  {
    if (*(a1 + 240) == 1)
    {
      v345 = a1[8];
      v346 = v343[4];
      v347 = v345;
      if (v346 == v343[5])
      {
        v349 = v346 - v344;
        v348 = v346 == v344;
        v350 = (v346 - v344) >> 3;
        if (v348)
        {
          v351 = 4;
        }

        else
        {
          v351 = v350;
        }

        v352 = malloc_type_realloc(v344, 16 * v351, 0x80040803F642BuLL);
        if (!v352)
        {
          exception = __cxa_allocate_exception(8uLL);
          v380 = std::bad_alloc::bad_alloc(exception);
          __cxa_throw(v380, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
        }

        v343[5] = &v352[16 * v351];
        v343[6] = v352;
        v346 = &v352[v349];
        v347 = a1[8];
      }

      *v346 = sub_23F2F8B60;
      *(v346 + 1) = v345;
      v343[4] = v346 + 16;
      *(a1 + 240) = 0;
      atomic_fetch_add(v347, 1u);
    }

    v353 = malloc_type_malloc(0x38uLL, 0x1A8CE395uLL);
    v354 = v353;
    if (!v353)
    {
      v375 = __cxa_allocate_exception(8uLL);
      v376 = std::bad_alloc::bad_alloc(v375);
      __cxa_throw(v376, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    *v353 = 0x2000;
    v355 = malloc_type_malloc(0x2008uLL, 0x2004093837F09uLL);
    if (!v355)
    {
      v377 = __cxa_allocate_exception(8uLL);
      v378 = std::bad_alloc::bad_alloc(v377);
      __cxa_throw(v378, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v354[3] = v355;
    v354[1] = 0x2000;
    *v355 = 0;
    v354[2] = v355 + 1;
    v354[4] = 0;
    v354[5] = 0;
    v354[6] = 0;
    v356 = a1[31];
    a1[29] = v354;
    a1[31] = v354;
    a1[32] = v354;
    v357 = *(a2 + 24);
    *(a2 + 24) = v356;
    if (v357)
    {
      for (j = v357[4]; ; j -= 16)
      {
        v359 = v357[6];
        if (j == v359)
        {
          break;
        }

        v361 = *(j - 2);
        v360 = *(j - 1);
        v361(v360);
      }

      free(v359);
      v362 = v357[3];
      if (v362)
      {
        do
        {
          v363 = *v362;
          free(v362);
          v362 = v363;
        }

        while (v363);
      }

      free(v357);
    }
  }

  *a2 = *(a1 + 23);
  v364 = a1[26];
  *(a2 + 16) = a1[25];
  *(a1 + 8) = 0;
  a1[3] = 0;
  a1[6] = a1[5];
  v365 = a1[27];
  v366 = v365 - v364;
  v367 = (v365 - v364) >> 3;
  if (v365 == v364)
  {
    v368 = a1[28];
    if (1 - v367 <= (v368 - v365) >> 3)
    {
      if (v366 != 8)
      {
        *v365 = 0;
        v365 += 8;
      }

      a1[27] = v365;
    }

    else
    {
      v369 = v367 + 1;
      if ((v367 + 1) >> 61)
      {
        sub_23EF3AE74();
      }

      v370 = v368 - v364;
      if (v370 >> 2 > v369)
      {
        v369 = v370 >> 2;
      }

      if (v370 >= 0x7FFFFFFFFFFFFFF8)
      {
        v371 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v371 = v369;
      }

      if (v371)
      {
        if (!(v371 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      v372 = v367;
      v373 = (8 * v367);
      v374 = &v373[-v372];
      *v373 = 0;
      memcpy(v374, v364, v366);
      a1[26] = v374;
      a1[27] = v373 + 1;
      a1[28] = 0;
      if (v364)
      {
        operator delete(v364);
      }
    }

    v364 = a1[26];
  }

  else if (v367 >= 2)
  {
    a1[27] = v364 + 8;
  }

  *(a1 + 46) = 0;
  *v364 = a1 + 23;
  a1[12] = 0;
  a1[35] += a1[11] + v6 - a1[9];
}

void sub_23F2FB138(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (!v2)
  {
    JUMPOUT(0x23F2FAF38);
  }

  JUMPOUT(0x23F2FAEF8);
}

uint64_t sub_23F2FB218(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    v2 = result;
    for (i = v1[4]; ; i -= 16)
    {
      v4 = v1[6];
      if (i == v4)
      {
        break;
      }

      v6 = *(i - 2);
      v5 = *(i - 1);
      v6(v5);
    }

    free(v4);
    v7 = v1[3];
    if (v7)
    {
      do
      {
        v8 = *v7;
        free(v7);
        v7 = v8;
      }

      while (v8);
    }

    free(v1);
    return v2;
  }

  return result;
}

void *sub_23F2FB294(uint64_t a1, const void *a2, unsigned int a3)
{
  v3 = a3;
  if (*(a1 + 32) < a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FB7C0(exception);
    __cxa_throw(exception, &unk_28518DB50, std::runtime_error::~runtime_error);
  }

  v7 = *(*(a1 + 96) - 8);
  *v7 = 5;
  if (*a1 && (result = (*a1)(5, a3, *(a1 + 8)), result))
  {
    *(v7 + 16) = a2;
    *(a1 + 120) = 1;
  }

  else
  {
    v9 = *(a1 + 112);
    v11 = v9[1];
    v10 = v9[2];
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = &v12[v3 - v10];
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (v14)
    {
      v9[1] = v15;
      v9[2] = &v12[v3];
    }

    else
    {
      v16 = v3 + 7;
      v17 = *v9;
      while (v17 < v16)
      {
        v18 = v17 <= 0;
        v17 *= 2;
        if (v18)
        {
          v17 = v3 + 7;
          break;
        }
      }

      v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      if (!v19)
      {
        v21 = __cxa_allocate_exception(8uLL);
        v22 = std::bad_alloc::bad_alloc(v21);
        __cxa_throw(v22, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      *v19 = v9[3];
      v9[1] = v17 - v16;
      v9[2] = v19 + v16 + 8;
      v9[3] = v19;
      v12 = ((v19 + 1) & 0xFFFFFFFFFFFFFFF8);
    }

    result = memcpy(v12, a2, v3);
    *(v7 + 16) = v12;
  }

  *(v7 + 8) = a3;
  return result;
}

void sub_23F2FB430()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23F2FC014(exception);
  __cxa_throw(exception, &unk_28518DC50, std::runtime_error::~runtime_error);
}

void *sub_23F2FB484(uint64_t a1, const void *a2, unsigned int a3)
{
  v3 = a3;
  if (*(a1 + 48) < a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FC08C(exception);
    __cxa_throw(exception, &unk_28518DC90, std::runtime_error::~runtime_error);
  }

  v7 = *(*(a1 + 96) - 8);
  *v7 = 9;
  if (*a1 && (result = (*a1)(9, a3, *(a1 + 8)), result))
  {
    *(v7 + 16) = a2;
    *(a1 + 120) = 1;
  }

  else
  {
    v9 = *(a1 + 112);
    v11 = v9[1];
    v10 = v9[2];
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = &v12[v3 - v10];
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (v14)
    {
      v9[1] = v15;
      v9[2] = &v12[v3];
    }

    else
    {
      v16 = v3 + 7;
      v17 = *v9;
      while (v17 < v16)
      {
        v18 = v17 <= 0;
        v17 *= 2;
        if (v18)
        {
          v17 = v3 + 7;
          break;
        }
      }

      v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      if (!v19)
      {
        v21 = __cxa_allocate_exception(8uLL);
        v22 = std::bad_alloc::bad_alloc(v21);
        __cxa_throw(v22, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      *v19 = v9[3];
      v9[1] = v17 - v16;
      v9[2] = v19 + v16 + 8;
      v9[3] = v19;
      v12 = ((v19 + 1) & 0xFFFFFFFFFFFFFFF8);
    }

    result = memcpy(v12, a2, v3);
    *(v7 + 16) = v12;
  }

  *(v7 + 8) = a3 - 1;
  return result;
}

void *sub_23F2FB624(uint64_t a1, const void *a2, unsigned int a3)
{
  v3 = a3;
  if (*(a1 + 40) < a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FC104(exception);
    __cxa_throw(exception, &unk_28518DCD0, std::runtime_error::~runtime_error);
  }

  v7 = *(*(a1 + 96) - 8);
  *v7 = 8;
  if (*a1 && (result = (*a1)(8, a3, *(a1 + 8)), result))
  {
    *(v7 + 16) = a2;
    *(a1 + 120) = 1;
  }

  else
  {
    v9 = *(a1 + 112);
    v11 = v9[1];
    v10 = v9[2];
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = &v12[v3 - v10];
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (v14)
    {
      v9[1] = v15;
      v9[2] = &v12[v3];
    }

    else
    {
      v16 = v3 + 7;
      v17 = *v9;
      while (v17 < v16)
      {
        v18 = v17 <= 0;
        v17 *= 2;
        if (v18)
        {
          v17 = v3 + 7;
          break;
        }
      }

      v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      if (!v19)
      {
        v21 = __cxa_allocate_exception(8uLL);
        v22 = std::bad_alloc::bad_alloc(v21);
        __cxa_throw(v22, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      *v19 = v9[3];
      v9[1] = v17 - v16;
      v9[2] = v19 + v16 + 8;
      v9[3] = v19;
      v12 = ((v19 + 1) & 0xFFFFFFFFFFFFFFF8);
    }

    result = memcpy(v12, a2, v3);
    *(v7 + 16) = v12;
  }

  *(v7 + 8) = a3;
  return result;
}

std::runtime_error *sub_23F2FB7C0(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "str size overflow");
  result->__vftable = &unk_28518DB78;
  return result;
}

void sub_23F2FB800(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2FB838(void *a1, unsigned int a2)
{
  if (a1[2] < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FBAE8(exception);
    __cxa_throw(exception, &unk_28518DB90, std::runtime_error::~runtime_error);
  }

  v3 = a1[12];
  if (a1[7] < ((v3 - a1[11]) >> 3))
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    sub_23F2FBB28(v30);
    __cxa_throw(v30, &unk_28518DBA8, std::runtime_error::~runtime_error);
  }

  v4 = *(v3 - 8);
  *v4 = 6;
  *(v4 + 8) = a2;
  if (!a2)
  {
    v9 = 0;
    *(v4 + 16) = 0;
    v18 = a1[12];
    v17 = a1[13];
    if (v18 >= v17)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v5 = a1[14];
  v6 = 24 * a2;
  v8 = v5[1];
  v7 = v5[2];
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 - v7 + v6;
  v11 = v8 >= v10;
  v12 = v8 - v10;
  if (v11)
  {
    v5[1] = v12;
    v5[2] = v9 + v6;
    *(v4 + 16) = v9;
    v18 = a1[12];
    v17 = a1[13];
    if (v18 >= v17)
    {
      goto LABEL_17;
    }

LABEL_14:
    *v18 = v9;
    v19 = v18 + 1;
LABEL_15:
    a1[12] = v19;
    return;
  }

  v13 = v6 | 7;
  v14 = *v5;
  while (v14 < v13)
  {
    v15 = v14 <= 0;
    v14 *= 2;
    if (v15)
    {
      v14 = v6 | 7;
      break;
    }
  }

  v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
  if (!v16)
  {
    v31 = __cxa_allocate_exception(8uLL);
    v32 = std::bad_alloc::bad_alloc(v31);
    __cxa_throw(v32, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  *v16 = v5[3];
  v5[1] = v14 - v13;
  v5[2] = v16 + v13 + 8;
  v5[3] = v16;
  v9 = (v16 + 1) & 0xFFFFFFFFFFFFFFF8;
  *(v4 + 16) = v9;
  v18 = a1[12];
  v17 = a1[13];
  if (v18 < v17)
  {
    goto LABEL_14;
  }

LABEL_17:
  v20 = a1[11];
  v21 = v18 - v20;
  v22 = (v18 - v20) >> 3;
  v23 = v22 + 1;
  if ((v22 + 1) >> 61)
  {
    sub_23EF3AE74();
  }

  v24 = v17 - v20;
  if (v24 >> 2 > v23)
  {
    v23 = v24 >> 2;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF8)
  {
    v25 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (!(v25 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v26 = v22;
  v27 = (8 * v22);
  v28 = &v27[-v26];
  *v27 = v9;
  v19 = v27 + 1;
  memcpy(v28, v20, v21);
  a1[11] = v28;
  a1[12] = v19;
  a1[13] = 0;
  if (!v20)
  {
    goto LABEL_15;
  }

  operator delete(v20);
  a1[12] = v19;
}

std::runtime_error *sub_23F2FBAE8(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "array size overflow");
  result->__vftable = &unk_28518DBD0;
  return result;
}

std::runtime_error *sub_23F2FBB28(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "depth size overflow");
  result->__vftable = &unk_28518DBF8;
  return result;
}

void sub_23F2FBB68(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2FBBA0(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2FBBD8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_23EF3AE74();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_23F2FBCF0(void *a1, unsigned int a2)
{
  if (a1[3] < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FBF9C(exception);
    __cxa_throw(exception, &unk_28518DC10, std::runtime_error::~runtime_error);
  }

  v3 = a1[12];
  if (a1[7] < ((v3 - a1[11]) >> 3))
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    sub_23F2FBB28(v30);
    __cxa_throw(v30, &unk_28518DBA8, std::runtime_error::~runtime_error);
  }

  v4 = *(v3 - 8);
  *v4 = 7;
  *(v4 + 8) = a2;
  if (!a2)
  {
    v9 = 0;
    *(v4 + 16) = 0;
    v18 = a1[12];
    v17 = a1[13];
    if (v18 >= v17)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v5 = a1[14];
  v6 = 48 * a2;
  v8 = v5[1];
  v7 = v5[2];
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 - v7 + v6;
  v11 = v8 >= v10;
  v12 = v8 - v10;
  if (v11)
  {
    v5[1] = v12;
    v5[2] = v9 + v6;
    *(v4 + 16) = v9;
    v18 = a1[12];
    v17 = a1[13];
    if (v18 >= v17)
    {
      goto LABEL_17;
    }

LABEL_14:
    *v18 = v9;
    v19 = v18 + 1;
LABEL_15:
    a1[12] = v19;
    return;
  }

  v13 = v6 | 7;
  v14 = *v5;
  while (v14 < v13)
  {
    v15 = v14 <= 0;
    v14 *= 2;
    if (v15)
    {
      v14 = v6 | 7;
      break;
    }
  }

  v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
  if (!v16)
  {
    v31 = __cxa_allocate_exception(8uLL);
    v32 = std::bad_alloc::bad_alloc(v31);
    __cxa_throw(v32, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  *v16 = v5[3];
  v5[1] = v14 - v13;
  v5[2] = v16 + v13 + 8;
  v5[3] = v16;
  v9 = (v16 + 1) & 0xFFFFFFFFFFFFFFF8;
  *(v4 + 16) = v9;
  v18 = a1[12];
  v17 = a1[13];
  if (v18 < v17)
  {
    goto LABEL_14;
  }

LABEL_17:
  v20 = a1[11];
  v21 = v18 - v20;
  v22 = (v18 - v20) >> 3;
  v23 = v22 + 1;
  if ((v22 + 1) >> 61)
  {
    sub_23EF3AE74();
  }

  v24 = v17 - v20;
  if (v24 >> 2 > v23)
  {
    v23 = v24 >> 2;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF8)
  {
    v25 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (!(v25 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v26 = (v18 - v20) >> 3;
  v27 = (8 * v22);
  v28 = (8 * v22 - 8 * v26);
  *v27 = v9;
  v19 = v27 + 1;
  memcpy(v28, v20, v21);
  a1[11] = v28;
  a1[12] = v19;
  a1[13] = 0;
  if (!v20)
  {
    goto LABEL_15;
  }

  operator delete(v20);
  a1[12] = v19;
}

std::runtime_error *sub_23F2FBF9C(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "map size overflow");
  result->__vftable = &unk_28518DC38;
  return result;
}

void sub_23F2FBFDC(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

std::runtime_error *sub_23F2FC014(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "parse error");
  result->__vftable = &unk_28518DC78;
  return result;
}

void sub_23F2FC054(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

std::runtime_error *sub_23F2FC08C(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "ext size overflow");
  result->__vftable = &unk_28518DCB8;
  return result;
}

void sub_23F2FC0CC(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

std::runtime_error *sub_23F2FC104(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "bin size overflow");
  result->__vftable = &unk_28518DCF8;
  return result;
}

void sub_23F2FC144(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t **sub_23F2FC17C(uint64_t **a1, unsigned int *a2)
{
  v4 = *a2;
  if (*a2 > 0xFF)
  {
    if (HIWORD(v4))
    {
      v5 = *a1;
      v19 = (*a1)[2];
      v20 = **a1;
      if ((v19 - v20) >= 5)
      {
        v23 = v5[1];
      }

      else
      {
        if (v19)
        {
          v21 = 2 * v19;
        }

        else
        {
          v21 = 0x2000;
        }

        v22 = v20 + 5;
        while (v21 < v22)
        {
          v10 = v21 <= 0;
          v21 *= 2;
          if (v10)
          {
            v21 = v22;
            break;
          }
        }

        v23 = malloc_type_realloc(v5[1], v21, 0xFC6EF249uLL);
        if (!v23)
        {
          goto LABEL_55;
        }

        v5[1] = v23;
        v5[2] = v21;
        v20 = *v5;
      }

      v25 = &v23[v20];
      *v25 = -58;
      *(v25 + 1) = bswap32(v4);
      v18 = 5;
    }

    else
    {
      v5 = *a1;
      v12 = (*a1)[2];
      v13 = **a1;
      if ((v12 - v13) >= 3)
      {
        v16 = v5[1];
      }

      else
      {
        if (v12)
        {
          v14 = 2 * v12;
        }

        else
        {
          v14 = 0x2000;
        }

        v15 = v13 + 3;
        while (v14 < v15)
        {
          v10 = v14 <= 0;
          v14 *= 2;
          if (v10)
          {
            v14 = v15;
            break;
          }
        }

        v16 = malloc_type_realloc(v5[1], v14, 0xFC6EF249uLL);
        if (!v16)
        {
          goto LABEL_55;
        }

        v5[1] = v16;
        v5[2] = v14;
        v13 = *v5;
      }

      v24 = &v16[v13];
      *v24 = -59;
      *(v24 + 1) = bswap32(v4) >> 16;
      v18 = 3;
    }
  }

  else
  {
    v5 = *a1;
    v6 = (*a1)[2];
    v7 = **a1;
    if ((v6 - v7) >= 2)
    {
      v11 = v5[1];
    }

    else
    {
      if (v6)
      {
        v8 = 2 * v6;
      }

      else
      {
        v8 = 0x2000;
      }

      v9 = v7 + 2;
      while (v8 < v9)
      {
        v10 = v8 <= 0;
        v8 *= 2;
        if (v10)
        {
          v8 = v9;
          break;
        }
      }

      v11 = malloc_type_realloc(v5[1], v8, 0xFC6EF249uLL);
      if (!v11)
      {
        goto LABEL_55;
      }

      v5[1] = v11;
      v5[2] = v8;
      v7 = *v5;
    }

    v17 = &v11[v7];
    *v17 = -60;
    v17[1] = v4;
    v18 = 2;
  }

  *v5 += v18;
  v26 = *(a2 + 1);
  v27 = *a2;
  v28 = *a1;
  v29 = (*a1)[2];
  v30 = **a1;
  if (v29 - v30 >= v27)
  {
    v33 = v28[1];
    goto LABEL_54;
  }

  if (v29)
  {
    v31 = 2 * v29;
  }

  else
  {
    v31 = 0x2000;
  }

  v32 = v30 + v27;
  while (v31 < v32)
  {
    v10 = v31 <= 0;
    v31 *= 2;
    if (v10)
    {
      v31 = v32;
      break;
    }
  }

  v33 = malloc_type_realloc(v28[1], v31, 0xFC6EF249uLL);
  if (!v33)
  {
LABEL_55:
    exception = __cxa_allocate_exception(8uLL);
    v36 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v36, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v28[1] = v33;
  v28[2] = v31;
  v30 = *v28;
LABEL_54:
  memcpy(&v33[v30], v26, v27);
  *v28 += v27;
  return a1;
}

char *sub_23F2FC4E8(uint64_t **a1, char *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (v2 > -33)
  {
    if (v4 == v5)
    {
      if (v4)
      {
        v10 = 2 * v4;
      }

      else
      {
        v10 = 0x2000;
      }

      while (v10 < v4 + 1)
      {
        v8 = v10 <= 0;
        v10 *= 2;
        if (v8)
        {
          v10 = v4 + 1;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v10, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_28;
      }

      v3[1] = result;
      v3[2] = v10;
      v5 = *v3;
    }

    else
    {
      result = v3[1];
    }

    v12 = &result[v5];
    v13 = 1;
    goto LABEL_27;
  }

  if ((v4 - v5) >= 2)
  {
    result = v3[1];
    goto LABEL_24;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  v7 = v5 + 2;
  while (v6 < v7)
  {
    v8 = v6 <= 0;
    v6 *= 2;
    if (v8)
    {
      v6 = v7;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_28:
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_24:
  v11 = &result[v5];
  *v11 = -48;
  v12 = v11 + 1;
  v13 = 2;
LABEL_27:
  *v12 = v2;
  *v3 += v13;
  return result;
}

char *sub_23F2FC63C(uint64_t **a1, char *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (v2 < 0)
  {
    if ((v4 - v5) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v9 = 2 * v4;
      }

      else
      {
        v9 = 0x2000;
      }

      v10 = v5 + 2;
      while (v9 < v10)
      {
        v7 = v9 <= 0;
        v9 *= 2;
        if (v7)
        {
          v9 = v10;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v9, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_28;
      }

      v3[1] = result;
      v3[2] = v9;
      v5 = *v3;
    }

    v13 = &result[v5];
    *v13 = -52;
    v11 = v13 + 1;
    v12 = 2;
    goto LABEL_27;
  }

  if (v4 != v5)
  {
    result = v3[1];
    goto LABEL_24;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  while (v6 < v4 + 1)
  {
    v7 = v6 <= 0;
    v6 *= 2;
    if (v7)
    {
      v6 = v4 + 1;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_28:
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_24:
  v11 = &result[v5];
  v12 = 1;
LABEL_27:
  *v11 = v2;
  *v3 += v12;
  return result;
}

_BYTE *sub_23F2FC78C(uint64_t **a1, unsigned int a2)
{
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (a2 <= -33)
  {
    v6 = v4 - v5;
    if (a2 <= 0xFFFFFF7F)
    {
      if (v6 >= 3)
      {
        result = v3[1];
        goto LABEL_49;
      }

      if (v4)
      {
        v7 = 2 * v4;
      }

      else
      {
        v7 = 0x2000;
      }

      v8 = v5 + 3;
      while (v7 < v8)
      {
        v9 = v7 <= 0;
        v7 *= 2;
        if (v9)
        {
          v7 = v8;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v7, 0xFC6EF249uLL);
      if (result)
      {
        v3[1] = result;
        v3[2] = v7;
        v5 = *v3;
LABEL_49:
        v17 = bswap32(a2) >> 16;
        v18 = &result[v5];
        v19 = -47;
LABEL_70:
        *v18 = v19;
        *(v18 + 1) = v17;
        v20 = 3;
        goto LABEL_71;
      }

LABEL_72:
      exception = __cxa_allocate_exception(8uLL);
      v26 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v26, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    if (v6 >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v12 = 2 * v4;
      }

      else
      {
        v12 = 0x2000;
      }

      v13 = v5 + 2;
      while (v12 < v13)
      {
        v9 = v12 <= 0;
        v12 *= 2;
        if (v9)
        {
          v12 = v13;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v12, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_72;
      }

      v3[1] = result;
      v3[2] = v12;
      v5 = *v3;
    }

    v21 = &result[v5];
    v22 = -48;
LABEL_67:
    *v21 = v22;
    v21[1] = a2;
    v20 = 2;
    goto LABEL_71;
  }

  if (a2 > 127)
  {
    v14 = v4 - v5;
    if (a2 > 0xFF)
    {
      if (v14 >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v4)
        {
          v23 = 2 * v4;
        }

        else
        {
          v23 = 0x2000;
        }

        v24 = v5 + 3;
        while (v23 < v24)
        {
          v9 = v23 <= 0;
          v23 *= 2;
          if (v9)
          {
            v23 = v24;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v23, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_72;
        }

        v3[1] = result;
        v3[2] = v23;
        v5 = *v3;
      }

      v17 = bswap32(a2) >> 16;
      v18 = &result[v5];
      v19 = -51;
      goto LABEL_70;
    }

    if (v14 >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v15 = 2 * v4;
      }

      else
      {
        v15 = 0x2000;
      }

      v16 = v5 + 2;
      while (v15 < v16)
      {
        v9 = v15 <= 0;
        v15 *= 2;
        if (v9)
        {
          v15 = v16;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v15, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_72;
      }

      v3[1] = result;
      v3[2] = v15;
      v5 = *v3;
    }

    v21 = &result[v5];
    v22 = -52;
    goto LABEL_67;
  }

  if (v4 == v5)
  {
    if (v4)
    {
      v11 = 2 * v4;
    }

    else
    {
      v11 = 0x2000;
    }

    while (v11 < v4 + 1)
    {
      v9 = v11 <= 0;
      v11 *= 2;
      if (v9)
      {
        v11 = v4 + 1;
        break;
      }
    }

    result = malloc_type_realloc(v3[1], v11, 0xFC6EF249uLL);
    if (!result)
    {
      goto LABEL_72;
    }

    v3[1] = result;
    v3[2] = v11;
    v5 = *v3;
  }

  else
  {
    result = v3[1];
  }

  result[v5] = a2;
  v20 = 1;
LABEL_71:
  *v3 += v20;
  return result;
}

_BYTE *sub_23F2FCB5C(uint64_t **a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (v2 > 0x7F)
  {
    v9 = v4 - v5;
    if (v2 <= 0xFF)
    {
      if (v9 >= 2)
      {
        result = v3[1];
      }

      else
      {
        if (v4)
        {
          v10 = 2 * v4;
        }

        else
        {
          v10 = 0x2000;
        }

        v11 = v5 + 2;
        while (v10 < v11)
        {
          v7 = v10 <= 0;
          v10 *= 2;
          if (v7)
          {
            v10 = v11;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v10, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_42;
        }

        v3[1] = result;
        v3[2] = v10;
        v5 = *v3;
      }

      v15 = &result[v5];
      *v15 = -52;
      v15[1] = v2;
      v12 = 2;
      goto LABEL_41;
    }

    if (v9 >= 3)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v13 = 2 * v4;
      }

      else
      {
        v13 = 0x2000;
      }

      v14 = v5 + 3;
      while (v13 < v14)
      {
        v7 = v13 <= 0;
        v13 *= 2;
        if (v7)
        {
          v13 = v14;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v13, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_42;
      }

      v3[1] = result;
      v3[2] = v13;
      v5 = *v3;
    }

    v16 = &result[v5];
    *v16 = -51;
    *(v16 + 1) = __rev16(v2);
    v12 = 3;
    goto LABEL_41;
  }

  if (v4 != v5)
  {
    result = v3[1];
    goto LABEL_25;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  while (v6 < v4 + 1)
  {
    v7 = v6 <= 0;
    v6 *= 2;
    if (v7)
    {
      v6 = v4 + 1;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_42:
    exception = __cxa_allocate_exception(8uLL);
    v18 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v18, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_25:
  result[v5] = v2;
  v12 = 1;
LABEL_41:
  *v3 += v12;
  return result;
}

_BYTE *sub_23F2FCD34(uint64_t **a1, unsigned int a2)
{
  if (a2 > -33)
  {
    if (a2 <= 127)
    {
      v3 = *a1;
      v10 = (*a1)[2];
      v11 = **a1;
      if (v10 == v11)
      {
        if (v10)
        {
          v12 = 2 * v10;
        }

        else
        {
          v12 = 0x2000;
        }

        while (v12 < v10 + 1)
        {
          v8 = v12 <= 0;
          v12 *= 2;
          if (v8)
          {
            v12 = v10 + 1;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v12, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_101;
        }

        v3[1] = result;
        v3[2] = v12;
        v11 = *v3;
      }

      else
      {
        result = v3[1];
      }

      result[v11] = a2;
      v24 = 1;
      goto LABEL_98;
    }

    if (a2 > 0xFF)
    {
      if (HIWORD(a2))
      {
        v3 = *a1;
        v38 = (*a1)[2];
        v39 = **a1;
        if ((v38 - v39) >= 5)
        {
          result = v3[1];
        }

        else
        {
          if (v38)
          {
            v40 = 2 * v38;
          }

          else
          {
            v40 = 0x2000;
          }

          v41 = v39 + 5;
          while (v40 < v41)
          {
            v8 = v40 <= 0;
            v40 *= 2;
            if (v8)
            {
              v40 = v41;
              break;
            }
          }

          result = malloc_type_realloc(v3[1], v40, 0xFC6EF249uLL);
          if (!result)
          {
            goto LABEL_101;
          }

          v3[1] = result;
          v3[2] = v40;
          v39 = *v3;
        }

        v21 = bswap32(a2);
        v22 = &result[v39];
        v23 = -50;
        goto LABEL_51;
      }

      v3 = *a1;
      v29 = (*a1)[2];
      v30 = **a1;
      if ((v29 - v30) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v29)
        {
          v31 = 2 * v29;
        }

        else
        {
          v31 = 0x2000;
        }

        v32 = v30 + 3;
        while (v31 < v32)
        {
          v8 = v31 <= 0;
          v31 *= 2;
          if (v8)
          {
            v31 = v32;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v31, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_101;
        }

        v3[1] = result;
        v3[2] = v31;
        v30 = *v3;
      }

      v33 = bswap32(a2) >> 16;
      v34 = &result[v30];
      v35 = -51;
LABEL_97:
      *v34 = v35;
      *(v34 + 1) = v33;
      v24 = 3;
      goto LABEL_98;
    }

    v3 = *a1;
    v17 = (*a1)[2];
    v18 = **a1;
    if ((v17 - v18) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v17)
      {
        v19 = 2 * v17;
      }

      else
      {
        v19 = 0x2000;
      }

      v20 = v18 + 2;
      while (v19 < v20)
      {
        v8 = v19 <= 0;
        v19 *= 2;
        if (v8)
        {
          v19 = v20;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v19, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_101;
      }

      v3[1] = result;
      v3[2] = v19;
      v18 = *v3;
    }

    v36 = &result[v18];
    v37 = -52;
LABEL_83:
    *v36 = v37;
    v36[1] = a2;
    v24 = 2;
    goto LABEL_98;
  }

  if (a2 > 0xFFFF7FFF)
  {
    if (a2 <= 0xFFFFFF7F)
    {
      v3 = *a1;
      v13 = (*a1)[2];
      v14 = **a1;
      if ((v13 - v14) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v13)
        {
          v15 = 2 * v13;
        }

        else
        {
          v15 = 0x2000;
        }

        v16 = v14 + 3;
        while (v15 < v16)
        {
          v8 = v15 <= 0;
          v15 *= 2;
          if (v8)
          {
            v15 = v16;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v15, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_101;
        }

        v3[1] = result;
        v3[2] = v15;
        v14 = *v3;
      }

      v33 = bswap32(a2) >> 16;
      v34 = &result[v14];
      v35 = -47;
      goto LABEL_97;
    }

    v3 = *a1;
    v25 = (*a1)[2];
    v26 = **a1;
    if ((v25 - v26) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v25)
      {
        v27 = 2 * v25;
      }

      else
      {
        v27 = 0x2000;
      }

      v28 = v26 + 2;
      while (v27 < v28)
      {
        v8 = v27 <= 0;
        v27 *= 2;
        if (v8)
        {
          v27 = v28;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v27, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_101;
      }

      v3[1] = result;
      v3[2] = v27;
      v26 = *v3;
    }

    v36 = &result[v26];
    v37 = -48;
    goto LABEL_83;
  }

  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if ((v4 - v5) >= 5)
  {
    result = v3[1];
    goto LABEL_50;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  v7 = v5 + 5;
  while (v6 < v7)
  {
    v8 = v6 <= 0;
    v6 *= 2;
    if (v8)
    {
      v6 = v7;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_101:
    exception = __cxa_allocate_exception(8uLL);
    v43 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v43, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_50:
  v21 = bswap32(a2);
  v22 = &result[v5];
  v23 = -46;
LABEL_51:
  *v22 = v23;
  *(v22 + 1) = v21;
  v24 = 5;
LABEL_98:
  *v3 += v24;
  return result;
}

_BYTE *sub_23F2FD25C(uint64_t **a1, unsigned int a2)
{
  if (a2 > 0xFF)
  {
    if (!HIWORD(a2))
    {
      v3 = *a1;
      v9 = (*a1)[2];
      v10 = **a1;
      if ((v9 - v10) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v9)
        {
          v11 = 2 * v9;
        }

        else
        {
          v11 = 0x2000;
        }

        v12 = v10 + 3;
        while (v11 < v12)
        {
          v7 = v11 <= 0;
          v11 *= 2;
          if (v7)
          {
            v11 = v12;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v11, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_56;
        }

        v3[1] = result;
        v3[2] = v11;
        v10 = *v3;
      }

      v20 = &result[v10];
      *v20 = -51;
      *(v20 + 1) = bswap32(a2) >> 16;
      v19 = 3;
      goto LABEL_55;
    }

    v3 = *a1;
    v15 = (*a1)[2];
    v16 = **a1;
    if ((v15 - v16) >= 5)
    {
      result = v3[1];
    }

    else
    {
      if (v15)
      {
        v17 = 2 * v15;
      }

      else
      {
        v17 = 0x2000;
      }

      v18 = v16 + 5;
      while (v17 < v18)
      {
        v7 = v17 <= 0;
        v17 *= 2;
        if (v7)
        {
          v17 = v18;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v17, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_56;
      }

      v3[1] = result;
      v3[2] = v17;
      v16 = *v3;
    }

    v22 = &result[v16];
    *v22 = -50;
    *(v22 + 1) = bswap32(a2);
    v19 = 5;
    goto LABEL_55;
  }

  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (a2 > 0x7F)
  {
    if ((v4 - v5) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v13 = 2 * v4;
      }

      else
      {
        v13 = 0x2000;
      }

      v14 = v5 + 2;
      while (v13 < v14)
      {
        v7 = v13 <= 0;
        v13 *= 2;
        if (v7)
        {
          v13 = v14;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v13, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_56;
      }

      v3[1] = result;
      v3[2] = v13;
      v5 = *v3;
    }

    v21 = &result[v5];
    *v21 = -52;
    v21[1] = a2;
    v19 = 2;
    goto LABEL_55;
  }

  if (v4 != v5)
  {
    result = v3[1];
    goto LABEL_48;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  while (v6 < v4 + 1)
  {
    v7 = v6 <= 0;
    v6 *= 2;
    if (v7)
    {
      v6 = v4 + 1;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_56:
    exception = __cxa_allocate_exception(8uLL);
    v24 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v24, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_48:
  result[v5] = a2;
  v19 = 1;
LABEL_55:
  *v3 += v19;
  return result;
}

_BYTE *sub_23F2FD5D0(uint64_t **a1, unint64_t a2)
{
  if (a2 <= -33)
  {
    if (a2 <= 0xFFFFFFFFFFFF7FFFLL)
    {
      if (a2 <= 0xFFFFFFFF7FFFFFFFLL)
      {
        v3 = *a1;
        v4 = (*a1)[2];
        v5 = **a1;
        if ((v4 - v5) >= 9)
        {
          result = v3[1];
          goto LABEL_88;
        }

        if (v4)
        {
          v6 = 2 * v4;
        }

        else
        {
          v6 = 0x2000;
        }

        v7 = v5 + 9;
        while (v6 < v7)
        {
          v8 = v6 <= 0;
          v6 *= 2;
          if (v8)
          {
            v6 = v7;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
        if (result)
        {
          v3[1] = result;
          v3[2] = v6;
          v5 = *v3;
LABEL_88:
          v34 = bswap64(a2);
          v35 = &result[v5];
          v36 = -45;
LABEL_128:
          *v35 = v36;
          *(v35 + 1) = v34;
          v25 = 9;
          goto LABEL_129;
        }

LABEL_130:
        exception = __cxa_allocate_exception(8uLL);
        v54 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v54, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      v3 = *a1;
      v21 = (*a1)[2];
      v22 = **a1;
      if ((v21 - v22) >= 5)
      {
        result = v3[1];
      }

      else
      {
        if (v21)
        {
          v23 = 2 * v21;
        }

        else
        {
          v23 = 0x2000;
        }

        v24 = v22 + 5;
        while (v23 < v24)
        {
          v8 = v23 <= 0;
          v23 *= 2;
          if (v8)
          {
            v23 = v24;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v23, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_130;
        }

        v3[1] = result;
        v3[2] = v23;
        v22 = *v3;
      }

      v44 = bswap32(a2);
      v45 = &result[v22];
      v46 = -46;
LABEL_122:
      *v45 = v46;
      *(v45 + 1) = v44;
      v25 = 5;
      goto LABEL_129;
    }

    if (a2 <= 0xFFFFFFFFFFFFFF7FLL)
    {
      v3 = *a1;
      v13 = (*a1)[2];
      v14 = **a1;
      if ((v13 - v14) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v13)
        {
          v15 = 2 * v13;
        }

        else
        {
          v15 = 0x2000;
        }

        v16 = v14 + 3;
        while (v15 < v16)
        {
          v8 = v15 <= 0;
          v15 *= 2;
          if (v8)
          {
            v15 = v16;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v15, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_130;
        }

        v3[1] = result;
        v3[2] = v15;
        v14 = *v3;
      }

      v37 = bswap32(a2) >> 16;
      v38 = &result[v14];
      v39 = -47;
LABEL_125:
      *v38 = v39;
      *(v38 + 1) = v37;
      v25 = 3;
      goto LABEL_129;
    }

    v3 = *a1;
    v26 = (*a1)[2];
    v27 = **a1;
    if ((v26 - v27) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v26)
      {
        v28 = 2 * v26;
      }

      else
      {
        v28 = 0x2000;
      }

      v29 = v27 + 2;
      while (v28 < v29)
      {
        v8 = v28 <= 0;
        v28 *= 2;
        if (v8)
        {
          v28 = v29;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v28, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_130;
      }

      v3[1] = result;
      v3[2] = v28;
      v27 = *v3;
    }

    v47 = &result[v27];
    v48 = -48;
LABEL_119:
    *v47 = v48;
    v47[1] = a2;
    v25 = 2;
    goto LABEL_129;
  }

  if (a2 > 127)
  {
    if (a2 >> 16)
    {
      if (HIDWORD(a2))
      {
        v3 = *a1;
        v49 = (*a1)[2];
        v50 = **a1;
        if ((v49 - v50) >= 9)
        {
          result = v3[1];
        }

        else
        {
          if (v49)
          {
            v51 = 2 * v49;
          }

          else
          {
            v51 = 0x2000;
          }

          v52 = v50 + 9;
          while (v51 < v52)
          {
            v8 = v51 <= 0;
            v51 *= 2;
            if (v8)
            {
              v51 = v52;
              break;
            }
          }

          result = malloc_type_realloc(v3[1], v51, 0xFC6EF249uLL);
          if (!result)
          {
            goto LABEL_130;
          }

          v3[1] = result;
          v3[2] = v51;
          v50 = *v3;
        }

        v34 = bswap64(a2);
        v35 = &result[v50];
        v36 = -49;
        goto LABEL_128;
      }

      v3 = *a1;
      v30 = (*a1)[2];
      v31 = **a1;
      if ((v30 - v31) >= 5)
      {
        result = v3[1];
      }

      else
      {
        if (v30)
        {
          v32 = 2 * v30;
        }

        else
        {
          v32 = 0x2000;
        }

        v33 = v31 + 5;
        while (v32 < v33)
        {
          v8 = v32 <= 0;
          v32 *= 2;
          if (v8)
          {
            v32 = v33;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v32, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_130;
        }

        v3[1] = result;
        v3[2] = v32;
        v31 = *v3;
      }

      v44 = bswap32(a2);
      v45 = &result[v31];
      v46 = -50;
      goto LABEL_122;
    }

    if (a2 > 0xFF)
    {
      v3 = *a1;
      v40 = (*a1)[2];
      v41 = **a1;
      if ((v40 - v41) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v40)
        {
          v42 = 2 * v40;
        }

        else
        {
          v42 = 0x2000;
        }

        v43 = v41 + 3;
        while (v42 < v43)
        {
          v8 = v42 <= 0;
          v42 *= 2;
          if (v8)
          {
            v42 = v43;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v42, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_130;
        }

        v3[1] = result;
        v3[2] = v42;
        v41 = *v3;
      }

      v37 = bswap32(a2) >> 16;
      v38 = &result[v41];
      v39 = -51;
      goto LABEL_125;
    }

    v3 = *a1;
    v17 = (*a1)[2];
    v18 = **a1;
    if ((v17 - v18) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v17)
      {
        v19 = 2 * v17;
      }

      else
      {
        v19 = 0x2000;
      }

      v20 = v18 + 2;
      while (v19 < v20)
      {
        v8 = v19 <= 0;
        v19 *= 2;
        if (v8)
        {
          v19 = v20;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v19, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_130;
      }

      v3[1] = result;
      v3[2] = v19;
      v18 = *v3;
    }

    v47 = &result[v18];
    v48 = -52;
    goto LABEL_119;
  }

  v3 = *a1;
  v10 = (*a1)[2];
  v11 = **a1;
  if (v10 == v11)
  {
    if (v10)
    {
      v12 = 2 * v10;
    }

    else
    {
      v12 = 0x2000;
    }

    while (v12 < v10 + 1)
    {
      v8 = v12 <= 0;
      v12 *= 2;
      if (v8)
      {
        v12 = v10 + 1;
        break;
      }
    }

    result = malloc_type_realloc(v3[1], v12, 0xFC6EF249uLL);
    if (!result)
    {
      goto LABEL_130;
    }

    v3[1] = result;
    v3[2] = v12;
    v11 = *v3;
  }

  else
  {
    result = v3[1];
  }

  result[v11] = a2;
  v25 = 1;
LABEL_129:
  *v3 += v25;
  return result;
}

_BYTE *sub_23F2FDC5C(uint64_t **a1, unint64_t a2)
{
  if (a2 > 0xFF)
  {
    if (!(a2 >> 16))
    {
      v3 = *a1;
      v9 = (*a1)[2];
      v10 = **a1;
      if ((v9 - v10) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v9)
        {
          v11 = 2 * v9;
        }

        else
        {
          v11 = 0x2000;
        }

        v12 = v10 + 3;
        while (v11 < v12)
        {
          v7 = v11 <= 0;
          v11 *= 2;
          if (v7)
          {
            v11 = v12;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v11, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_70;
        }

        v3[1] = result;
        v3[2] = v11;
        v10 = *v3;
      }

      v20 = &result[v10];
      *v20 = -51;
      *(v20 + 1) = bswap32(a2) >> 16;
      v19 = 3;
      goto LABEL_69;
    }

    if (!HIDWORD(a2))
    {
      v3 = *a1;
      v15 = (*a1)[2];
      v16 = **a1;
      if ((v15 - v16) >= 5)
      {
        result = v3[1];
      }

      else
      {
        if (v15)
        {
          v17 = 2 * v15;
        }

        else
        {
          v17 = 0x2000;
        }

        v18 = v16 + 5;
        while (v17 < v18)
        {
          v7 = v17 <= 0;
          v17 *= 2;
          if (v7)
          {
            v17 = v18;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v17, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_70;
        }

        v3[1] = result;
        v3[2] = v17;
        v16 = *v3;
      }

      v26 = &result[v16];
      *v26 = -50;
      *(v26 + 1) = bswap32(a2);
      v19 = 5;
      goto LABEL_69;
    }

    v3 = *a1;
    v22 = (*a1)[2];
    v23 = **a1;
    if ((v22 - v23) >= 9)
    {
      result = v3[1];
    }

    else
    {
      if (v22)
      {
        v24 = 2 * v22;
      }

      else
      {
        v24 = 0x2000;
      }

      v25 = v23 + 9;
      while (v24 < v25)
      {
        v7 = v24 <= 0;
        v24 *= 2;
        if (v7)
        {
          v24 = v25;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v24, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_70;
      }

      v3[1] = result;
      v3[2] = v24;
      v23 = *v3;
    }

    v27 = &result[v23];
    *v27 = -49;
    *(v27 + 1) = bswap64(a2);
    v19 = 9;
    goto LABEL_69;
  }

  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (a2 > 0x7F)
  {
    if ((v4 - v5) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v13 = 2 * v4;
      }

      else
      {
        v13 = 0x2000;
      }

      v14 = v5 + 2;
      while (v13 < v14)
      {
        v7 = v13 <= 0;
        v13 *= 2;
        if (v7)
        {
          v13 = v14;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v13, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_70;
      }

      v3[1] = result;
      v3[2] = v13;
      v5 = *v3;
    }

    v21 = &result[v5];
    *v21 = -52;
    v21[1] = a2;
    v19 = 2;
    goto LABEL_69;
  }

  if (v4 != v5)
  {
    result = v3[1];
    goto LABEL_49;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  while (v6 < v4 + 1)
  {
    v7 = v6 <= 0;
    v6 *= 2;
    if (v7)
    {
      v6 = v4 + 1;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_70:
    exception = __cxa_allocate_exception(8uLL);
    v29 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v29, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_49:
  result[v5] = a2;
  v19 = 1;
LABEL_69:
  *v3 += v19;
  return result;
}

uint64_t **sub_23F2FE06C(uint64_t a1, uint64_t **a2, unsigned int *a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = (*a2)[2];
  v7 = **a2;
  if ((v6 - v7) >= 5)
  {
    v11 = v5[1];
  }

  else
  {
    if (v6)
    {
      v8 = 2 * v6;
    }

    else
    {
      v8 = 0x2000;
    }

    v9 = v7 + 5;
    while (v8 < v9)
    {
      v10 = v8 <= 0;
      v8 *= 2;
      if (v10)
      {
        v8 = v9;
        break;
      }
    }

    v11 = malloc_type_realloc(v5[1], v8, 0xFC6EF249uLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v15 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v15, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v5[1] = v11;
    v5[2] = v8;
    v7 = *v5;
  }

  v12 = &v11[v7];
  *v12 = -54;
  *(v12 + 1) = bswap32(v4);
  *v5 += 5;
  return a2;
}

uint64_t **sub_23F2FE154(uint64_t a1, uint64_t **a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = (*a2)[2];
  v7 = **a2;
  if ((v6 - v7) >= 9)
  {
    v11 = v5[1];
  }

  else
  {
    if (v6)
    {
      v8 = 2 * v6;
    }

    else
    {
      v8 = 0x2000;
    }

    v9 = v7 + 9;
    while (v8 < v9)
    {
      v10 = v8 <= 0;
      v8 *= 2;
      if (v10)
      {
        v8 = v9;
        break;
      }
    }

    v11 = malloc_type_realloc(v5[1], v8, 0xFC6EF249uLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v15 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v15, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v5[1] = v11;
    v5[2] = v8;
    v7 = *v5;
  }

  v12 = &v11[v7];
  *v12 = -53;
  *(v12 + 1) = bswap64(v4);
  *v5 += 9;
  return a2;
}

uint64_t **sub_23F2FE23C(uint64_t **result, _BYTE *a2)
{
  v2 = *result;
  v3 = (*result)[2];
  v4 = **result;
  if (*a2 != 1)
  {
    if (v3 == v4)
    {
      if (v3)
      {
        v9 = 2 * v3;
      }

      else
      {
        v9 = 0x2000;
      }

      v10 = v3 + 1;
      while (v9 < v10)
      {
        v7 = v9 <= 0;
        v9 *= 2;
        if (v7)
        {
          v11 = result;
          v9 = v10;
          goto LABEL_26;
        }
      }

      v11 = result;
LABEL_26:
      v15 = malloc_type_realloc(v2[1], v9, 0xFC6EF249uLL);
      if (!v15)
      {
        goto LABEL_30;
      }

      v12 = v15;
      v2[1] = v15;
      v2[2] = v9;
      v4 = *v2;
      result = v11;
    }

    else
    {
      v12 = v2[1];
    }

    v13 = -62;
    goto LABEL_29;
  }

  if (v3 == v4)
  {
    if (v3)
    {
      v5 = 2 * v3;
    }

    else
    {
      v5 = 0x2000;
    }

    v6 = v3 + 1;
    while (v5 < v6)
    {
      v7 = v5 <= 0;
      v5 *= 2;
      if (v7)
      {
        v8 = result;
        v5 = v6;
        goto LABEL_23;
      }
    }

    v8 = result;
LABEL_23:
    v14 = malloc_type_realloc(v2[1], v5, 0xFC6EF249uLL);
    if (v14)
    {
      v12 = v14;
      v2[1] = v14;
      v2[2] = v5;
      v4 = *v2;
      result = v8;
      v13 = -61;
      goto LABEL_29;
    }

LABEL_30:
    exception = __cxa_allocate_exception(8uLL);
    v17 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v17, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v12 = v2[1];
  v13 = -61;
LABEL_29:
  v12[v4] = v13;
  ++*v2;
  return result;
}

uint64_t **sub_23F2FE3A8(uint64_t **a1, const void ***a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = *(a2 + 23);
  }

  else
  {
    v2 = a2[1];
  }

  if (HIDWORD(v2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FE74C(exception);
    __cxa_throw(exception, &unk_28518DD10, std::runtime_error::~runtime_error);
  }

  if (v2 > 0x1F)
  {
    if (v2 > 0xFF)
    {
      if (v2 >> 16)
      {
        v5 = *a1;
        v23 = (*a1)[2];
        v24 = **a1;
        if ((v23 - v24) >= 5)
        {
          v27 = v5[1];
        }

        else
        {
          if (v23)
          {
            v25 = 2 * v23;
          }

          else
          {
            v25 = 0x2000;
          }

          v26 = v24 + 5;
          while (v25 < v26)
          {
            v9 = v25 <= 0;
            v25 *= 2;
            if (v9)
            {
              v25 = v26;
              break;
            }
          }

          v27 = malloc_type_realloc(v5[1], v25, 0xFC6EF249uLL);
          if (!v27)
          {
            goto LABEL_76;
          }

          v5[1] = v27;
          v5[2] = v25;
          v24 = *v5;
        }

        v29 = &v27[v24];
        *v29 = -37;
        *(v29 + 1) = bswap32(v2);
        v16 = 5;
      }

      else
      {
        v5 = *a1;
        v17 = (*a1)[2];
        v18 = **a1;
        if ((v17 - v18) >= 3)
        {
          v21 = v5[1];
        }

        else
        {
          if (v17)
          {
            v19 = 2 * v17;
          }

          else
          {
            v19 = 0x2000;
          }

          v20 = v18 + 3;
          while (v19 < v20)
          {
            v9 = v19 <= 0;
            v19 *= 2;
            if (v9)
            {
              v19 = v20;
              break;
            }
          }

          v21 = malloc_type_realloc(v5[1], v19, 0xFC6EF249uLL);
          if (!v21)
          {
            goto LABEL_76;
          }

          v5[1] = v21;
          v5[2] = v19;
          v18 = *v5;
        }

        v28 = &v21[v18];
        *v28 = -38;
        *(v28 + 1) = bswap32(v2) >> 16;
        v16 = 3;
      }
    }

    else
    {
      v5 = *a1;
      v11 = (*a1)[2];
      v12 = **a1;
      if ((v11 - v12) >= 2)
      {
        v15 = v5[1];
      }

      else
      {
        if (v11)
        {
          v13 = 2 * v11;
        }

        else
        {
          v13 = 0x2000;
        }

        v14 = v12 + 2;
        while (v13 < v14)
        {
          v9 = v13 <= 0;
          v13 *= 2;
          if (v9)
          {
            v13 = v14;
            break;
          }
        }

        v15 = malloc_type_realloc(v5[1], v13, 0xFC6EF249uLL);
        if (!v15)
        {
          goto LABEL_76;
        }

        v5[1] = v15;
        v5[2] = v13;
        v12 = *v5;
      }

      v22 = &v15[v12];
      *v22 = -39;
      v22[1] = v2;
      v16 = 2;
    }
  }

  else
  {
    v5 = *a1;
    v6 = (*a1)[2];
    v7 = **a1;
    if (v6 == v7)
    {
      if (v6)
      {
        v8 = 2 * v6;
      }

      else
      {
        v8 = 0x2000;
      }

      while (v8 < v6 + 1)
      {
        v9 = v8 <= 0;
        v8 *= 2;
        if (v9)
        {
          v8 = v6 + 1;
          break;
        }
      }

      v10 = malloc_type_realloc(v5[1], v8, 0xFC6EF249uLL);
      if (!v10)
      {
        goto LABEL_76;
      }

      v5[1] = v10;
      v5[2] = v8;
      v7 = *v5;
    }

    else
    {
      v10 = v5[1];
    }

    v10[v7] = v2 | 0xA0;
    v16 = 1;
  }

  *v5 += v16;
  v30 = *(a2 + 23);
  v31 = *a2;
  v32 = *a1;
  v33 = (*a1)[2];
  v34 = **a1;
  if (v33 - v34 < v2)
  {
    if (v33)
    {
      v35 = 2 * v33;
    }

    else
    {
      v35 = 0x2000;
    }

    v36 = v34 + v2;
    while (v35 < v36)
    {
      v9 = v35 <= 0;
      v35 *= 2;
      if (v9)
      {
        v35 = v36;
        break;
      }
    }

    v37 = malloc_type_realloc(v32[1], v35, 0xFC6EF249uLL);
    if (v37)
    {
      v32[1] = v37;
      v32[2] = v35;
      v34 = *v32;
      goto LABEL_71;
    }

LABEL_76:
    v41 = __cxa_allocate_exception(8uLL);
    v42 = std::bad_alloc::bad_alloc(v41);
    __cxa_throw(v42, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v37 = v32[1];
LABEL_71:
  if (v30 >= 0)
  {
    v38 = a2;
  }

  else
  {
    v38 = v31;
  }

  memcpy(&v37[v34], v38, v2);
  *v32 += v2;
  return a1;
}

std::runtime_error *sub_23F2FE74C(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "container size overflow");
  result->__vftable = &unk_28518DD38;
  return result;
}

void sub_23F2FE78C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

void *sub_23F2FE7C4(void *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = *(a2 + 23);
  }

  else
  {
    v2 = a2[1];
  }

  if (HIDWORD(v2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FE74C(exception);
    __cxa_throw(exception, &unk_28518DD10, std::runtime_error::~runtime_error);
  }

  std::ostream::write();
  std::ostream::write();
  return a1;
}

uint64_t sub_23F2FE90C(uint64_t a1)
{
  if (*a1 == 3)
  {
    v1 = *(a1 + 8);
    if (v1 <= -129)
    {
      goto LABEL_4;
    }
  }

  else if (*a1 != 2 || (v1 = *(a1 + 8), v1 >= 0x80))
  {
LABEL_4:
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_23F2F8844(exception);
    __cxa_throw(v3, &unk_28518D9B0, std::exception::~exception);
  }

  return v1;
}

uint64_t sub_23F2FE97C(uint64_t a1)
{
  if (*a1 == 3)
  {
    v1 = *(a1 + 8);
    if (v1 <= -32769)
    {
      goto LABEL_4;
    }
  }

  else if (*a1 != 2 || (v1 = *(a1 + 8), v1 >= 0x8000))
  {
LABEL_4:
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_23F2F8844(exception);
    __cxa_throw(v3, &unk_28518D9B0, std::exception::~exception);
  }

  return v1;
}

int64_t sub_23F2FE9F0(uint64_t a1)
{
  if (*a1 == 3)
  {
    result = *(a1 + 8);
    if (result <= 0xFFFFFFFF7FFFFFFFLL)
    {
      goto LABEL_4;
    }
  }

  else if (*a1 != 2 || (result = *(a1 + 8), result >> 31))
  {
LABEL_4:
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_23F2F8844(exception);
    __cxa_throw(v3, &unk_28518D9B0, std::exception::~exception);
  }

  return result;
}

void ***sub_23F2FEA60(void ***__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_23EF2F8F4();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

void sub_23F2FEBFC(std::string *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = a3;
  v17 = a2;
  sub_23F2FED64("Failed to load sample ", a1, ". Minimum version required is ", &v17, " but current sample version is ", &v16, ".");
  if (SHIBYTE(v6) < 0)
  {
    sub_23EF34EA4(__p, v5[0], v5[1]);
  }

  else
  {
    *__p = *v5;
    v8 = v6;
  }

  v9 = 1;
  LOBYTE(v10) = 0;
  v14 = 0;
  v15 = 1;
  sub_23F06C908(a4, 5u, __p);
  if (v15 != 1)
  {
    goto LABEL_11;
  }

  if (v14 == 1)
  {
    if ((v13 & 0x80000000) == 0)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      operator delete(v10);
      if (v9 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    operator delete(v12);
    if (v11 < 0)
    {
      goto LABEL_14;
    }
  }

LABEL_8:
  if (v9 != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_11:
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_23F2FED38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2FED64(std::string *a1, std::string *a2, std::string *a3, unsigned int *a4, std::string *a5, unsigned int *a6, std::string *a7)
{
  v15 = 0;
  v18 = v14;
  v19 = a1;
  v20 = v14;
  v21 = a1;
  v22 = a1;
  v16.__r_.__value_.__r.__words[0] = &v18;
  sub_23F1CD63C(&v16);
  v18 = v14;
  v19 = a2;
  v20 = v14;
  v21 = a2;
  v22 = a2;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v16.__r_.__value_.__r.__words[0] = &v18;
  (off_28518DD68[v15])(&v16, v14);
  v18 = v14;
  v19 = a3;
  v20 = v14;
  v21 = a3;
  v22 = a3;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v16.__r_.__value_.__r.__words[0] = &v18;
  (*(&off_28518DD80 + v15))(&v16, v14);
  std::to_string(&v16, *a4);
  v18 = v14;
  v19 = &v16;
  v20 = v14;
  v21 = &v16;
  v22 = &v16;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v18;
  (off_28518DD98[v15])(&v17, v14);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v18 = v14;
  v19 = a5;
  v20 = v14;
  v21 = a5;
  v22 = a5;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v16.__r_.__value_.__r.__words[0] = &v18;
  (*(&off_28518DDB0 + v15))(&v16, v14);
  std::to_string(&v16, *a6);
  v18 = v14;
  v19 = &v16;
  v20 = v14;
  v21 = &v16;
  v22 = &v16;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v18;
  (off_28518DD98[v15])(&v17, v14);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v18 = v14;
  v19 = a7;
  v20 = v14;
  v21 = a7;
  v22 = a7;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v16.__r_.__value_.__r.__words[0] = &v18;
  (*(&off_28518DDC8 + v15))(&v16, v14);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v18 = &v16;
  result = (off_28518DDE0[v15])(&v18, v14);
  if (v15 != -1)
  {
    return (off_28518DD50[v15])(&v18, v14);
  }

  return result;
}

void sub_23F2FF110(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28518DD50[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23F2FF2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2FF32C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F2FF56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F2FF588(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 112) != 1)
  {
    v34[0] = (*(**(a1 + 8) + 16))(*(a1 + 8));
    LODWORD(v33.__r_.__value_.__l.__data_) = *a1;
    std::error_condition::message(&v21, a1);
    sub_23F3010A4(a2, v34, &v33, &v21);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v9 = v21.__r_.__value_.__r.__words[0];
    goto LABEL_41;
  }

  v33.__r_.__value_.__r.__words[0] = (*(**(a1 + 8) + 16))(*(a1 + 8));
  LODWORD(__dst) = *a1;
  std::error_condition::message(&v21, a1);
  sub_23F3010A4(v19, &v33.__r_.__value_.__l.__data_, &__dst, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v4 = v20;
  v5 = v19;
  if ((v20 & 0x80u) != 0)
  {
    v5 = v19[0];
    v4 = v19[1];
  }

  v34[0] = v5;
  v34[1] = v4;
  sub_23EF303E4(&v21);
  if (*(a1 + 40) == 1)
  {
    sub_23EF2F9B0(&v21.__r_.__value_.__r.__words[2], "detail", 6);
    sub_23EF2F9B0(&v21.__r_.__value_.__r.__words[2], ": ", 2);
    v6 = *(a1 + 39);
    if (v6 >= 0)
    {
      v7 = a1 + 16;
    }

    else
    {
      v7 = *(a1 + 16);
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 39);
    }

    else
    {
      v8 = *(a1 + 24);
    }

    sub_23EF2F9B0(&v21.__r_.__value_.__r.__words[2], v7, v8);
    if (*(a1 + 104))
    {
      sub_23EF2F9B0(&v21.__r_.__value_.__r.__words[2], ", ", 2);
      goto LABEL_18;
    }
  }

  else if (*(a1 + 104))
  {
LABEL_18:
    sub_23EF2F9B0(&v21.__r_.__value_.__r.__words[2], "location", 8);
    sub_23EF2F9B0(&v21.__r_.__value_.__r.__words[2], ": ", 2);
    operator new();
  }

  if ((v30 & 0x10) != 0)
  {
    v12 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v12 = v26;
    }

    v11 = &v25;
    goto LABEL_26;
  }

  if ((v30 & 8) != 0)
  {
    v11 = v24;
    v12 = v24[2];
LABEL_26:
    v13 = *v11;
    v10 = v12 - *v11;
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v18 = v12 - *v11;
    if (v10)
    {
      memmove(v17, v13, v10);
    }

    goto LABEL_32;
  }

  v10 = 0;
  v18 = 0;
LABEL_32:
  *(v17 + v10) = 0;
  v21.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v21.__r_.__value_.__r.__words + *(v21.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v21.__r_.__value_.__r.__words[2] = v14;
  v22 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](&v31);
  v15 = v18;
  v16 = v17;
  if ((v18 & 0x80u) != 0)
  {
    v16 = v17[0];
    v15 = v17[1];
  }

  v34[2] = v16;
  v34[3] = v15;
  sub_23EF45AA0(v34, &v35, "; ", 2uLL, a2);
  if (v18 < 0)
  {
    operator delete(v17[0]);
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    return;
  }

  v9 = v19[0];
LABEL_41:
  operator delete(v9);
}

void sub_23F2FFC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (*(v41 - 137) < 0)
  {
    operator delete(*(v41 - 160));
  }

  sub_23F081740(&a22, MEMORY[0x277D82818]);
  MEMORY[0x245CACBF0](&a41);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23F2FFD38(uint64_t a1, _OWORD *a2)
{
  sub_23F2FF588(a2, &v5);
  std::runtime_error::runtime_error(a1, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28518DE18;
  *(a1 + 16) = *a2;
  sub_23F300D34(a1 + 32, a2 + 1);
  return a1;
}

void sub_23F2FFDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2FFDF0(uint64_t a1)
{
  if (*(a1 + 128) != 1)
  {
    goto LABEL_10;
  }

  if (*(a1 + 120) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 119) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = a1;
    operator delete(*(a1 + 64));
    a1 = v4;
    if (*(v4 + 56) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v3 = a1;
  operator delete(*(a1 + 96));
  a1 = v3;
  if (*(v3 + 87) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 56) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(a1 + 55) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 32));
    a1 = v2;
  }

LABEL_10:

  std::runtime_error::~runtime_error(a1);
}

void sub_23F2FFEAC(std::runtime_error *this)
{
  if (LOBYTE(this[8].__vftable) != 1)
  {
    goto LABEL_10;
  }

  if (LOBYTE(this[7].__imp_.__imp_) == 1)
  {
    if ((SHIBYTE(this[7].__vftable) & 0x80000000) == 0)
    {
      if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(this[4].__vftable);
      if (LOBYTE(this[3].__imp_.__imp_) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    operator delete(this[6].__vftable);
    if (SHIBYTE(this[5].__vftable) < 0)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (LOBYTE(this[3].__imp_.__imp_) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

LABEL_10:
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x245CACD00);
}

void sub_23F2FFF60(uint64_t a1, uint64_t a2, const void **a3, int a4, const std::string::value_type *a5)
{
  v62 = *MEMORY[0x277D85DE8];
  if (*(a2 + 96))
  {
    if (*(a2 + 24) == 1)
    {
      v6 = *(a2 + 23);
      if ((v6 & 0x8000000000000000) != 0)
      {
        if (*(a2 + 8))
        {
LABEL_5:
          if (a4)
          {
            if ((v6 & 0x80000000) != 0)
            {
              v7 = *a2;
              v6 = *(a2 + 8);
            }

            else
            {
              v7 = a2;
            }

            v57 = v7;
            v58 = v6;
            v17 = *(a3 + 23);
            if (v17 >= 0)
            {
              v18 = a3;
            }

            else
            {
              v18 = *a3;
            }

            if (v17 < 0)
            {
              v17 = a3[1];
            }

            v59 = v18;
            v60 = v17;
            v19 = a5[23];
            v20 = a2;
            if ((v19 & 0x8000000000000000) != 0)
            {
              v27 = a5;
              a5 = *a5;
              v19 = *(v27 + 1);
            }

            sub_23EF45AA0(&v57, v61, a5, v19, &__p);
            *v61 = __p.__r_.__value_.__l.__size_;
            v28 = __p.__r_.__value_.__r.__words[0];
            *&v61[7] = *(&__p.__r_.__value_.__r.__words[1] + 7);
            v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            memset(&__p, 0, sizeof(__p));
            sub_23F30039C(&v38, (v20 + 32));
            v30 = *v61;
            *a1 = v28;
            *(a1 + 8) = v30;
            *(a1 + 15) = *&v61[7];
            *(a1 + 23) = v29;
            *(a1 + 24) = 1;
            *(a1 + 32) = 0;
            *(a1 + 88) = 0;
            if (v43 != 1)
            {
              goto LABEL_48;
            }

            v31 = v40;
            *(a1 + 48) = v39;
            *(a1 + 32) = v38;
            v38 = 0uLL;
            *(a1 + 56) = v31;
            *(a1 + 64) = v41;
            *(a1 + 80) = v42;
            v39 = 0;
            v41 = 0uLL;
            v42 = 0;
            goto LABEL_47;
          }

          v13 = *(a3 + 23);
          if (v13 >= 0)
          {
            v14 = a3;
          }

          else
          {
            v14 = *a3;
          }

          if (v13 < 0)
          {
            v13 = a3[1];
          }

          v57 = v14;
          v58 = v13;
          if ((v6 & 0x80000000) != 0)
          {
            v21 = *(a2 + 8);
            v59 = *a2;
            v60 = v21;
            v15 = a5[23];
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v59 = a2;
            v60 = v6;
            v15 = a5[23];
            if ((v15 & 0x8000000000000000) == 0)
            {
LABEL_31:
              v16 = a2;
LABEL_42:
              sub_23EF45AA0(&v57, v61, a5, v15, &__p);
              v56[0] = __p.__r_.__value_.__l.__size_;
              v23 = __p.__r_.__value_.__r.__words[0];
              *(v56 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
              v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              memset(&__p, 0, sizeof(__p));
              sub_23F30039C(&v32, (v16 + 32));
              v25 = v56[0];
              *a1 = v23;
              *(a1 + 8) = v25;
              *(a1 + 15) = *(v56 + 7);
              *(a1 + 23) = v24;
              *(a1 + 24) = 1;
              *(a1 + 32) = 0;
              *(a1 + 88) = 0;
              if (v37 != 1)
              {
LABEL_48:
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  return;
                }

                v12 = __p.__r_.__value_.__r.__words[0];
                goto LABEL_50;
              }

              v26 = v34;
              *(a1 + 48) = v33;
              *(a1 + 32) = v32;
              v32 = 0uLL;
              *(a1 + 56) = v26;
              *(a1 + 64) = v35;
              *(a1 + 80) = v36;
              v33 = 0;
              v35 = 0uLL;
              v36 = 0;
LABEL_47:
              *(a1 + 88) = 1;
              goto LABEL_48;
            }
          }

          v16 = a2;
          v22 = a5;
          a5 = *a5;
          v15 = *(v22 + 1);
          goto LABEL_42;
        }
      }

      else if (*(a2 + 23))
      {
        goto LABEL_5;
      }
    }

    if (*(a3 + 23) < 0)
    {
      v8 = a2;
      sub_23EF34EA4(&v51, *a3, a3[1]);
      a2 = v8;
    }

    else
    {
      v51 = *a3;
      v52 = a3[2];
    }

    v53 = 1;
    sub_23F30039C(&v45, (a2 + 32));
    *a1 = 0;
    *(a1 + 24) = 0;
    v9 = v53;
    if (v53 == 1)
    {
      *a1 = v51;
      *(a1 + 16) = v52;
      v52 = 0;
      v51 = 0uLL;
      *(a1 + 24) = 1;
      *(a1 + 32) = 0;
      v10 = a1 + 32;
      *(a1 + 88) = 0;
      if (v50 != 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(a1 + 32) = 0;
      v10 = a1 + 32;
      *(a1 + 88) = 0;
      if (v50 != 1)
      {
LABEL_18:
        if (!v9)
        {
          return;
        }

LABEL_22:
        if ((SHIBYTE(v52) & 0x80000000) == 0)
        {
          return;
        }

        v12 = v51;
LABEL_50:
        operator delete(v12);
        return;
      }
    }

    v11 = v47;
    *(v10 + 16) = v46;
    *v10 = v45;
    v45 = 0uLL;
    *(a1 + 56) = v11;
    *(a1 + 64) = v48;
    *(a1 + 80) = v49;
    v46 = 0;
    v48 = 0uLL;
    v49 = 0;
    *(a1 + 88) = 1;
    if (!v9)
    {
      return;
    }

    goto LABEL_22;
  }

  if (*(a3 + 23) < 0)
  {
    sub_23EF34EA4(&v54, *a3, a3[1]);
  }

  else
  {
    v54 = *a3;
    v55 = a3[2];
  }

  *a1 = v54;
  *(a1 + 16) = v55;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
}

void sub_23F30033C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (a31 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F30039C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_23EF34EA4(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = *(a2 + 3);
    if (*(a2 + 55) < 0)
    {
      sub_23EF34EA4((a1 + 32), *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_23F300444(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    sub_23EF577C4(v1);
    _Unwind_Resume(a1);
  }

  sub_23EF577C4(v1);
  _Unwind_Resume(a1);
}

void sub_23F30047C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E396050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396050))
  {
    qword_27E396048 = std::generic_category();
    __cxa_guard_release(&qword_27E396050);
  }

  if (*(a1 + 8) == qword_27E396048)
  {
    v2 = *a1;
    if (*a1 > 33)
    {
      if (v2 == 34)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_23F30085C(exception, a1);
        __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
      }

      if (v2 == 84)
      {
        v4 = __cxa_allocate_exception(0x10uLL);
        sub_23F300950(v4, a1);
        __cxa_throw(v4, off_278C744A0, MEMORY[0x277D82608]);
      }
    }

    else
    {
      if (v2 == 22)
      {
        v6 = __cxa_allocate_exception(0x10uLL);
        sub_23F300674(v6, a1);
        __cxa_throw(v6, off_278C744A8, MEMORY[0x277D82610]);
      }

      if (v2 == 33)
      {
        v3 = __cxa_allocate_exception(0x10uLL);
        sub_23F300768(v3, a1);
        __cxa_throw(v3, off_278C74488, MEMORY[0x277D825E8]);
      }
    }
  }

  v5 = __cxa_allocate_exception(0x88uLL);
  sub_23F2FFD38(v5, a1);
  __cxa_throw(v5, &unk_28518DE30, sub_23F2FFDF0);
}

void sub_23F300674(std::logic_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_23F3492E0;
  }

  if (*(v3 + 24) == 1)
  {
    sub_23F30130C(&v4, v3);
    std::logic_error::logic_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828F8] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::logic_error::logic_error(this, &unk_23F3091D6);
    this->__vftable = (MEMORY[0x277D828F8] + 16);
  }
}

void sub_23F30074C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F300768(std::logic_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_23F3492E0;
  }

  if (*(v3 + 24) == 1)
  {
    sub_23F30130C(&v4, v3);
    std::logic_error::logic_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828D8] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::logic_error::logic_error(this, &unk_23F3091D6);
    this->__vftable = (MEMORY[0x277D828D8] + 16);
  }
}

void sub_23F300840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F30085C(std::logic_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_23F3492E0;
  }

  if (*(v3 + 24) == 1)
  {
    sub_23F30130C(&v4, v3);
    std::logic_error::logic_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828E8] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::logic_error::logic_error(this, &unk_23F3091D6);
    this->__vftable = (MEMORY[0x277D828E8] + 16);
  }
}

void sub_23F300934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F300950(std::runtime_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_23F3492E0;
  }

  if (*(v3 + 24) == 1)
  {
    sub_23F30130C(&v4, v3);
    std::runtime_error::runtime_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828F0] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::runtime_error::runtime_error(this, &unk_23F3091D6);
    this->__vftable = (MEMORY[0x277D828F0] + 16);
  }
}

void sub_23F300A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F300A44(const void **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 1);
  sub_23F300D34(v20, a2 + 1);
  v19 = 0;
  LOBYTE(v18) = 0;
  sub_23F2FFF60(&__p, v20, a1, 0, &v18);
  v12 = v31;
  if (v31 == 1)
  {
    v13 = __p;
    v40[0] = v30;
    *(v40 + 7) = *(&v30 + 7);
    v7 = HIBYTE(v30);
    v30 = 0uLL;
    __p = 0;
    v14 = v37;
    if (v37 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = v32;
    v39[0] = v33;
    *(v39 + 7) = *(&v33 + 7);
    v9 = HIBYTE(v33);
    v32 = 0;
    v33 = 0uLL;
    v10 = v34;
    v8 = v35;
    v38[0] = v36;
    *(v38 + 7) = *(&v36 + 7);
    v11 = HIBYTE(v36);
    v35 = 0;
    v36 = 0uLL;
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = 0;
    *(a3 + 40) = 0;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = 0;
  v14 = v37;
  if (v37 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = 0;
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  if (v12)
  {
LABEL_7:
    v16 = v40[0];
    *(a3 + 16) = v13;
    *(a3 + 24) = v16;
    *(a3 + 31) = *(v40 + 7);
    *(a3 + 39) = v7;
    v40[0] = 0;
    *(v40 + 7) = 0;
    *(a3 + 40) = 1;
    v13 = 0;
    v7 = 0;
  }

LABEL_8:
  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  if (!v14)
  {
    *(a3 + 112) = 1;
    if (!v12 || (v7 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v17 = v39[0];
  *(a3 + 48) = v15;
  *(a3 + 56) = v17;
  *(a3 + 63) = *(v39 + 7);
  *(a3 + 71) = v9;
  v39[0] = 0;
  *(v39 + 7) = 0;
  *(a3 + 72) = v10;
  *(a3 + 80) = v8;
  *(a3 + 88) = v38[0];
  *(a3 + 95) = *(v38 + 7);
  *(a3 + 103) = v11;
  v38[0] = 0;
  *(v38 + 7) = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  if (v12 && v7 < 0)
  {
LABEL_14:
    operator delete(v13);
    if ((v37 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_32:
    operator delete(v32);
    if (v31 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  operator delete(v35);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_32;
  }

LABEL_17:
  if (v31 != 1)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

LABEL_20:
  if (v19 < 0)
  {
    operator delete(v18);
    if (v28 != 1)
    {
      return;
    }
  }

  else if (v28 != 1)
  {
    return;
  }

  if (v27 != 1)
  {
    goto LABEL_27;
  }

  if (v26 < 0)
  {
    operator delete(v25);
    if (v24 < 0)
    {
      goto LABEL_35;
    }

LABEL_27:
    if (v22 != 1)
    {
      return;
    }

    goto LABEL_28;
  }

  if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_35:
  operator delete(v23);
  if (v22 != 1)
  {
    return;
  }

LABEL_28:
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_23F300D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF57834(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F300D34(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        v4 = a2;
        sub_23EF34EA4(a1, *a2, *(a2 + 1));
        a2 = v4;
      }

      else
      {
        v3 = *a2;
        *(a1 + 16) = *(a2 + 2);
        *a1 = v3;
      }

      *(a1 + 24) = 1;
    }

    sub_23F30039C(a1 + 32, a2 + 2);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_23F300DD0(_Unwind_Exception *a1)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  sub_23EF57834(v1);
  _Unwind_Resume(a1);
}

void sub_23F300E04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v12 = 0;
  if (*(a1 + 96) == 1)
  {
    v5 = 0;
    if (*(a1 + 24) == 1)
    {
      *__p = *a1;
      v4 = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v5 = 1;
    }

    LOBYTE(v6[0]) = 0;
    v11 = 0;
    if (*(a1 + 88) == 1)
    {
      v2 = *(a1 + 56);
      v7 = *(a1 + 48);
      *v6 = *(a1 + 32);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v8 = v2;
      *v9 = *(a1 + 64);
      v10 = *(a1 + 80);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      v11 = 1;
    }

    v12 = 1;
  }

  sub_23F06C200(22, __p, a2);
  if (v12 == 1)
  {
    if (v11 != 1)
    {
      goto LABEL_11;
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
      if ((SHIBYTE(v7) & 0x80000000) == 0)
      {
LABEL_11:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    operator delete(v6[0]);
    if (v5 != 1)
    {
      return;
    }

LABEL_12:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23F300F54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v12 = 0;
  if (*(a1 + 96) == 1)
  {
    v5 = 0;
    if (*(a1 + 24) == 1)
    {
      *__p = *a1;
      v4 = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v5 = 1;
    }

    LOBYTE(v6[0]) = 0;
    v11 = 0;
    if (*(a1 + 88) == 1)
    {
      v2 = *(a1 + 56);
      v7 = *(a1 + 48);
      *v6 = *(a1 + 32);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v8 = v2;
      *v9 = *(a1 + 64);
      v10 = *(a1 + 80);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      v11 = 1;
    }

    v12 = 1;
  }

  sub_23F06C200(102, __p, a2);
  if (v12 == 1)
  {
    if (v11 != 1)
    {
      goto LABEL_11;
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
      if ((SHIBYTE(v7) & 0x80000000) == 0)
      {
LABEL_11:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    operator delete(v6[0]);
    if (v5 != 1)
    {
      return;
    }

LABEL_12:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_23F3010A4(uint64_t a1, const char **a2, int *a3, std::string *a4)
{
  v8 = 0;
  if (*a2)
  {
    sub_23F2947C4(v7, a2);
  }

  else
  {
    v11 = v7;
    v12 = "nullptr";
    v13 = v7;
    v14 = "nullptr";
    v15 = "nullptr";
    v9.__r_.__value_.__r.__words[0] = &v11;
    sub_23EF6D5F0(&v9);
  }

  v11 = v7;
  v12 = " error ";
  v13 = v7;
  v14 = " error ";
  v15 = " error ";
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  (*(&off_28518DE60 + v8))(&v9, v7);
  std::to_string(&v9, *a3);
  v11 = v7;
  v12 = &v9;
  v13 = v7;
  v14 = &v9;
  v15 = &v9;
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v10 = &v11;
  (off_28518DE78[v8])(&v10, v7);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v11 = v7;
  v12 = ": ";
  v13 = v7;
  v14 = ": ";
  v15 = ": ";
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  (*(&off_28518DE90 + v8))(&v9, v7);
  v11 = v7;
  v12 = a4;
  v13 = v7;
  v14 = a4;
  v15 = a4;
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  (off_28518DEA8[v8])(&v9, v7);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v11 = &v9;
  result = (off_28518DEC0[v8])(&v11, v7);
  if (v8 != -1)
  {
    return (off_28518DE48[v8])(&v11, v7);
  }

  return result;
}

uint64_t sub_23F30130C(uint64_t a1, __int128 *a2)
{
  v6 = 0;
  if (*(a2 + 24) == 1)
  {
    v6 = -1;
    if (*(a2 + 23) < 0)
    {
      sub_23EF34EA4(&v4, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      v5 = *(a2 + 2);
    }

    v2 = 1;
    v6 = 1;
  }

  else
  {
    v7[0] = &v4;
    v7[1] = "nullopt";
    v7[2] = &v4;
    v7[3] = "nullopt";
    v7[4] = "nullopt";
    v8 = v7;
    sub_23EF6D5F0(&v8);
    v2 = v6;
    if (v6 == -1)
    {
      sub_23EF41D6C();
    }
  }

  v7[0] = &v8;
  result = (off_28518DEC0[v2])(v7, &v4);
  if (v6 != -1)
  {
    return (off_28518DE48[v6])(v7, &v4);
  }

  return result;
}

void sub_23F301438(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x245CACD00);
}

__n128 sub_23F301470@<Q0>(uint64_t *__return_ptr a1@<X8>, std::string *__s@<X0>, char *a3@<X1>, int64_t a4@<X2>, const std::string::value_type *a5@<X3>, std::string::size_type a6@<X4>, uint64_t a7@<X5>, char a8@<W6>)
{
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    size = __s->__r_.__value_.__l.__size_;
    if (size)
    {
      v18 = a4 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_24;
    }

    v19 = (a8 & 1) != 0 ? a7 : -1;
    v37 = v19;
    v17 = __s->__r_.__value_.__r.__words[0];
    if (size < a4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(&__s->__r_.__value_.__s + 23))
    {
      v15 = a4 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_24;
    }

    v16 = (a8 & 1) != 0 ? a7 : -1;
    v37 = v16;
    v17 = __s;
    if (size < a4)
    {
      goto LABEL_24;
    }
  }

  v20 = v17 + size;
  v21 = *a3;
  v22 = v17;
  do
  {
    v23 = size - a4;
    if (v23 == -1)
    {
      break;
    }

    v24 = memchr(v22, v21, v23 + 1);
    if (!v24)
    {
      break;
    }

    v25 = v24;
    if (!memcmp(v24, a3, a4))
    {
      if (v37)
      {
        if (v25 != v20)
        {
          v27 = v25 - v17;
          if (v25 - v17 != -1)
          {
LABEL_28:
            std::string::replace(__s, v27, a4, a5, a6);
            v28 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
            if ((v28 & 0x8000000000000000) != 0)
            {
              v29 = __s->__r_.__value_.__r.__words[0];
              v28 = __s->__r_.__value_.__l.__size_;
            }

            else
            {
              v29 = __s;
            }

            v30 = v28 - (v27 + a6);
            if (v28 >= v27 + a6 && v30 >= a4)
            {
              --v37;
              v31 = v29 + v28;
              v32 = v29 + v27 + a6;
              v33 = *a3;
              while (1)
              {
                v34 = v30 - a4;
                if (v34 == -1)
                {
                  break;
                }

                v35 = memchr(v32, v33, v34 + 1);
                if (!v35)
                {
                  break;
                }

                v36 = v35;
                if (!memcmp(v35, a3, a4))
                {
                  if (v37)
                  {
                    if (v36 != v31)
                    {
                      v27 = v36 - v29;
                      if (v36 - v29 != -1)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  goto LABEL_24;
                }

                v32 = v36 + 1;
                v30 = v31 - (v36 + 1);
                if (v30 < a4)
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }

      break;
    }

    v22 = (v25 + 1);
    size = v20 - (v25 + 1);
  }

  while (size >= a4);
LABEL_24:
  result = *&__s->__r_.__value_.__l.__data_;
  *a1 = *&__s->__r_.__value_.__l.__data_;
  a1[2] = __s->__r_.__value_.__r.__words[2];
  __s->__r_.__value_.__l.__size_ = 0;
  __s->__r_.__value_.__r.__words[2] = 0;
  __s->__r_.__value_.__r.__words[0] = 0;
  return result;
}

uint64_t *sub_23F301658(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[3 * a3]; i += 3)
    {
      v4 = *i;
      v5 = i[1];
      v6 = (v5 + 2654435769 + ((*i + 2654435769) >> 2) + ((*i + 2654435769) << 6)) ^ (*i + 2654435769);
      v7 = a1[1];
      if (!*&v7)
      {
        goto LABEL_29;
      }

      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = (v5 + 2654435769 + ((*i + 2654435769) >> 2) + ((*i + 2654435769) << 6)) ^ (*i + 2654435769);
        if (v6 >= *&v7)
        {
          v9 = v6 % *&v7;
        }
      }

      else
      {
        v9 = v6 & (*&v7 - 1);
      }

      v10 = *(8 * v9);
      if (!v10 || (v11 = *v10) == 0)
      {
LABEL_29:
        operator new();
      }

      if (v8.u32[0] < 2uLL)
      {
        while (1)
        {
          v13 = v11[1];
          if (v13 == v6)
          {
            if (v11[2] == v4 && v11[3] == v5)
            {
              goto LABEL_30;
            }
          }

          else if ((v13 & (*&v7 - 1)) != v9)
          {
            goto LABEL_29;
          }

          v11 = *v11;
          if (!v11)
          {
            goto LABEL_29;
          }
        }
      }

      while (1)
      {
        v15 = v11[1];
        if (v15 == v6)
        {
          break;
        }

        if (v15 >= *&v7)
        {
          v15 %= *&v7;
        }

        if (v15 != v9)
        {
          goto LABEL_29;
        }

LABEL_24:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_29;
        }
      }

      if (v11[2] != v4 || v11[3] != v5)
      {
        goto LABEL_24;
      }

LABEL_30:
      ;
    }
  }

  return a1;
}

void sub_23F301BB0(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_23EF3CEC8(v1);
  _Unwind_Resume(a1);
}

double sub_23F301BE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E396060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396060))
  {
    v42 = vdupq_n_s64(1uLL);
    v43 = "seconds";
    v44 = xmmword_23F349340;
    v46 = xmmword_23F349350;
    v45 = "minutes";
    v47 = "hours";
    v48 = xmmword_23F349360;
    v50 = xmmword_23F349370;
    v49 = "days";
    v51 = "weeks";
    v52 = xmmword_23F349380;
    v54 = xmmword_23F349390;
    v53 = "months";
    v55 = "years";
    sub_23F301658(&qword_27E396090, v42.i64, 7);
    __cxa_guard_release(&qword_27E396060);
  }

  v6 = a2 + ((a1 + 2654435769) >> 2) + ((a1 + 2654435769) << 6);
  v7 = (v6 + 2654435769u) ^ (a1 + 2654435769);
  if (qword_27E396098)
  {
    v8 = vcnt_s8(qword_27E396098);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = (v6 + 2654435769u) ^ (a1 + 2654435769);
      if (v7 >= qword_27E396098)
      {
        v9 = v7 % qword_27E396098;
      }
    }

    else
    {
      v9 = (qword_27E396098 - 1) & v7;
    }

    v10 = *(qword_27E396090 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (v11)
      {
        if (v8.u32[0] < 2uLL)
        {
          while (1)
          {
            v15 = v11[1];
            if (v7 == v15)
            {
              if (v11[2] == a1 && v11[3] == a2)
              {
                goto LABEL_69;
              }
            }

            else if ((v15 & (qword_27E396098 - 1)) != v9)
            {
              goto LABEL_28;
            }

            v11 = *v11;
            if (!v11)
            {
              goto LABEL_28;
            }
          }
        }

        do
        {
          v13 = v11[1];
          if (v7 == v13)
          {
            if (v11[2] == a1 && v11[3] == a2)
            {
LABEL_69:
              v26 = v11[4];
              v27 = strlen(v26);
              if (v27 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_23EF2F8F4();
              }

              v29 = v27;
              if (v27 >= 0x17)
              {
                operator new();
              }

              *(a3 + 23) = v27;
              if (v27)
              {
                memmove(a3, v26, v27);
              }

              *(a3 + v29) = 0;
              return result;
            }
          }

          else
          {
            if (v13 >= qword_27E396098)
            {
              v13 %= qword_27E396098;
            }

            if (v13 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

LABEL_28:
  if ((atomic_load_explicit(&qword_27E396058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396058))
  {
    v42 = xmmword_23F3493A0;
    v43 = "atto";
    v44 = xmmword_23F3493B0;
    v46 = xmmword_23F3493C0;
    v45 = "femto";
    v47 = "pico";
    v48 = xmmword_23F3493D0;
    v50 = xmmword_23F3493E0;
    v49 = "nano";
    v51 = "micro";
    v52 = xmmword_23F3493F0;
    v54 = xmmword_23F349400;
    v53 = "milli";
    v55 = "centi";
    v56 = xmmword_23F349410;
    v58 = xmmword_23F349420;
    v57 = "deci";
    v59 = "deca";
    v60 = xmmword_23F349430;
    v62 = xmmword_23F349440;
    v61 = "hecto";
    v63 = "kilo";
    v64 = 1000000;
    v67 = xmmword_23F349450;
    v65 = 1;
    v66 = "mega";
    v68 = "giga";
    v69 = 1000000000000;
    v70 = 1;
    v71 = "tera";
    v72 = xmmword_23F349460;
    v73 = "peta";
    v74 = 1000000000000000000;
    v75 = 1;
    v76 = "exa";
    sub_23F301658(&qword_27E396068, v42.i64, 16);
    __cxa_guard_release(&qword_27E396058);
  }

  if (!qword_27E396070)
  {
    goto LABEL_55;
  }

  v16 = vcnt_s8(qword_27E396070);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v7;
    if (v7 >= qword_27E396070)
    {
      v17 = v7 % qword_27E396070;
    }
  }

  else
  {
    v17 = (qword_27E396070 - 1) & v7;
  }

  v18 = *(qword_27E396068 + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_55:
    v39 = 0;
    v42.i64[0] = v38;
    v42.i64[1] = "ratio<";
    v43 = v38;
    *&v44 = "ratio<";
    *(&v44 + 1) = "ratio<";
    v40.__r_.__value_.__r.__words[0] = &v42;
    sub_23F082054(&v40);
    std::to_string(&v40, a1);
    v42.i64[0] = v38;
    v42.i64[1] = &v40;
    v43 = v38;
    *&v44 = &v40;
    *(&v44 + 1) = &v40;
    if (v39 == -1)
    {
      sub_23EF41D6C();
    }

    v41 = &v42;
    (off_28518DF30[v39])(&v41, v38);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    v42.i64[0] = v38;
    v42.i64[1] = ",";
    v43 = v38;
    *&v44 = ",";
    *(&v44 + 1) = ",";
    if (v39 == -1)
    {
      sub_23EF41D6C();
    }

    v40.__r_.__value_.__r.__words[0] = &v42;
    (*(&off_28518DF48 + v39))(&v40, v38);
    std::to_string(&v40, a2);
    v42.i64[0] = v38;
    v42.i64[1] = &v40;
    v43 = v38;
    *&v44 = &v40;
    *(&v44 + 1) = &v40;
    if (v39 == -1)
    {
      sub_23EF41D6C();
    }

    v41 = &v42;
    (off_28518DF30[v39])(&v41, v38);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    v42.i64[0] = v38;
    v42.i64[1] = ">";
    v43 = v38;
    *&v44 = ">";
    *(&v44 + 1) = ">";
    if (v39 == -1)
    {
      sub_23EF41D6C();
    }

    v40.__r_.__value_.__r.__words[0] = &v42;
    (*(&off_28518DF48 + v39))(&v40, v38);
    if (v39 == -1)
    {
      sub_23EF41D6C();
    }

    v42.i64[0] = &v40;
    (*(&off_28518DF60 + v39))(&__dst, &v42, v38);
    if (v39 != -1)
    {
      (off_28518DF18[v39])(&v42, v38);
    }

    v24 = SHIBYTE(v37);
    if ((SHIBYTE(v37) & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_67;
  }

  if (v16.u32[0] < 2uLL)
  {
    while (1)
    {
      v23 = v19[1];
      if (v7 == v23)
      {
        if (v19[2] == a1 && v19[3] == a2)
        {
          goto LABEL_73;
        }
      }

      else if ((v23 & (qword_27E396070 - 1)) != v17)
      {
        goto LABEL_55;
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v21 = v19[1];
    if (v7 == v21)
    {
      break;
    }

    if (v21 >= qword_27E396070)
    {
      v21 %= qword_27E396070;
    }

    if (v21 != v17)
    {
      goto LABEL_55;
    }

LABEL_42:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_55;
    }
  }

  if (v19[2] != a1 || v19[3] != a2)
  {
    goto LABEL_42;
  }

LABEL_73:
  v30 = v19[4];
  v31 = strlen(v30);
  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  v32 = v31;
  if (v31 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v37) = v31;
  if (v31)
  {
    memmove(&__dst, v30, v31);
  }

  *(&__dst + v32) = 0;
  v24 = SHIBYTE(v37);
  if ((SHIBYTE(v37) & 0x8000000000000000) == 0)
  {
LABEL_67:
    if ((v24 - 16) < 7)
    {
      goto LABEL_85;
    }

    p_dst = &__dst;
    goto LABEL_87;
  }

LABEL_83:
  v24 = *(&__dst + 1);
  v33 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if ((v33 - *(&__dst + 1)) < 7)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v37 & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst + 1) + 7 - v33)
    {
      sub_23EF2F8F4();
    }

LABEL_85:
    operator new();
  }

  p_dst = __dst;
LABEL_87:
  v34 = (p_dst + v24);
  *(v34 + 3) = 1935961711;
  *v34 = 1868785011;
  v35 = v24 + 7;
  if (SHIBYTE(v37) < 0)
  {
    *(&__dst + 1) = v24 + 7;
  }

  else
  {
    HIBYTE(v37) = v35 & 0x7F;
  }

  *(p_dst + v35) = 0;
  result = *&__dst;
  *a3 = __dst;
  a3[2] = v37;
  return result;
}

void sub_23F302584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F302600(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  sub_23F3026FC(a1, &__dst, 24);
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_23F3026E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F3026FC(uint64_t a1, __int128 *a2, int a3)
{
  *(a1 + 176) = 0;
  v6 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v7 = a1 + 16;
  v8 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v9 = a1 + 24;
  v10 = MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 24);
  v12 = *(MEMORY[0x277D82818] + 16);
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v11;
  *(a1 + 8) = 0;
  v13 = (a1 + *(*a1 - 24));
  std::ios_base::init(v13, (a1 + 24));
  v14 = MEMORY[0x277D82890] + 24;
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  v15 = v10[5];
  v16 = v10[4];
  *(a1 + 16) = v16;
  *(v7 + *(v16 - 24)) = v15;
  v17 = v10[1];
  *a1 = v17;
  *(a1 + *(v17 - 24)) = v10[6];
  *a1 = v14;
  *(a1 + 128) = v6;
  v18 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v8;
  *(a1 + 24) = v18;
  MEMORY[0x245CACAF0](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  v19 = *a2;
  *(a1 + 104) = *(a2 + 2);
  *(a1 + 88) = v19;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a3;
  sub_23EF36F98(v9);
  return a1;
}

void sub_23F302A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 111) < 0)
  {
    operator delete(*(v10 + 88));
  }

  *(v10 + 24) = v11;
  std::locale::~locale((v10 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](a10);
  _Unwind_Resume(a1);
}

void sub_23F302A54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D82818];
    v4 = *MEMORY[0x277D82818];
    *a2 = *MEMORY[0x277D82818];
    v5 = *(v3 + 72);
    *(a2 + *(v4 - 24)) = *(v3 + 64);
    *(a2 + 16) = v5;
    *(a2 + 24) = MEMORY[0x277D82878] + 16;
    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    *(a2 + 24) = MEMORY[0x277D82868] + 16;
    std::locale::~locale((a2 + 32));
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](a2 + 128);

    JUMPOUT(0x245CACD00);
  }
}

void sub_23F302BD0(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, size_t __len@<X1>)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  sub_23F301470(a1, &__dst, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_23F302CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F302CF4(const void **a1@<X0>, __int128 *a2@<X1>, std::string *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v4 == v5)
  {
    if (*(a1 + 23) < 0)
    {
      v10 = *a1;
      v11 = a1[1];

      sub_23EF34EA4(a3, v10, v11);
    }

    else
    {
      *a3 = *a1;
    }
  }

  else
  {
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v6 < 0)
    {
      v6 = a1[1];
    }

    v13[0] = v7;
    v13[1] = v6;
    v13[2] = "<";
    v13[3] = 1;
    sub_23EF42BD0(v4, v5, ",", 1uLL, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v13[4] = p_p;
    v13[5] = size;
    v13[6] = ">";
    v13[7] = 1;
    sub_23EF45AA0(v13, &v14, 0, 0, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23F302E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F302E84(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  __p = 0;
  v29 = 0;
  v30 = 0;
  if (a2)
  {
    v3 = a2;
    v6 = 0;
    v26 = 0;
    v27 = 0;
    v7 = 1;
    while (1)
    {
      v9 = *a1;
      if ((v9 & 0x80000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x400) != 0)
      {
        v8 = (v7 & 1) == 0;
        v7 = 0;
        if (!v8)
        {
          v6 = 1;
        }

        goto LABEL_5;
      }

      if (v9 == 76)
      {
        if ((v6 & 1) == 0)
        {
          goto LABEL_30;
        }

        v11 = HIBYTE(v30);
        if (SHIBYTE(v30) < 0)
        {
          v23 = v29;
          v24 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v29 == v24)
          {
            if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
            {
LABEL_46:
              operator new();
            }

LABEL_75:
            sub_23EF2F8F4();
          }

          ++v29;
          *(__p + v23) = 76;
          if ((v27 & 0x100000000) == 0)
          {
LABEL_59:
            BYTE4(v27) = 1;
            goto LABEL_6;
          }
        }

        else
        {
          if (HIBYTE(v30) == 22)
          {
            goto LABEL_46;
          }

          HIBYTE(v30) = (HIBYTE(v30) + 1) & 0x7F;
          *(&__p + v11) = 76;
          if ((v27 & 0x100000000) == 0)
          {
            goto LABEL_59;
          }
        }

        if (v26)
        {
          if (v30 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v30 >= 0)
          {
            v22 = HIBYTE(v30);
          }

          else
          {
            v22 = v29;
          }

          goto LABEL_54;
        }

        BYTE4(v27) = 1;
        v26 = 1;
      }

      else
      {
        if (*a1 != 85)
        {
          if ((v9 & 0x80000000) != 0)
          {
            v16 = *a1;
            v17 = __maskrune(*a1, 0x500uLL);
            LOBYTE(v9) = v16;
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x500) != 0)
          {
LABEL_21:
            if (v6)
            {
              v12 = v9;
              if (v30 >= 0)
              {
                v13 = &__p;
              }

              else
              {
                v13 = __p;
              }

              if (v30 >= 0)
              {
                v14 = HIBYTE(v30);
              }

              else
              {
                v14 = v29;
              }

              std::string::append(a3, v13, v14);
              if (SHIBYTE(v30) < 0)
              {
                v29 = 0;
                v15 = __p;
              }

              else
              {
                HIBYTE(v30) = 0;
                v15 = &__p;
              }

              LOBYTE(v9) = v12;
              v27 = 0;
              v26 = 0;
              v6 = 0;
              v7 = 0;
              *v15 = 0;
            }

            else
            {
LABEL_30:
              v7 = 0;
            }

LABEL_5:
            std::string::push_back(a3, v9);
            goto LABEL_6;
          }

          if (v6)
          {
            if (SHIBYTE(v30) < 0)
            {
              v29 = 0;
              v18 = __p;
            }

            else
            {
              HIBYTE(v30) = 0;
              v18 = &__p;
            }

            v27 = 0;
            v26 = 0;
            v6 = 0;
            *v18 = 0;
          }

          v7 = 1;
          goto LABEL_5;
        }

        if ((v6 & 1) == 0)
        {
          goto LABEL_30;
        }

        v10 = HIBYTE(v30);
        if (SHIBYTE(v30) < 0)
        {
          v19 = v29;
          v20 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v29 == v20)
          {
            if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
            {
LABEL_37:
              operator new();
            }

            goto LABEL_75;
          }

          ++v29;
          *(__p + v19) = 85;
          if (v27)
          {
LABEL_38:
            if (v30 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v30 >= 0)
            {
              v22 = HIBYTE(v30);
            }

            else
            {
              v22 = v29;
            }

LABEL_54:
            std::string::append(a3, p_p, v22);
            if (SHIBYTE(v30) < 0)
            {
              v29 = 0;
              v25 = __p;
            }

            else
            {
              HIBYTE(v30) = 0;
              v25 = &__p;
            }

            v27 = 0;
            v26 = 0;
            v6 = 0;
            *v25 = 0;
            goto LABEL_6;
          }
        }

        else
        {
          if (HIBYTE(v30) == 22)
          {
            goto LABEL_37;
          }

          HIBYTE(v30) = (HIBYTE(v30) + 1) & 0x7F;
          *(&__p + v10) = 85;
          if (v27)
          {
            goto LABEL_38;
          }
        }

        LOBYTE(v27) = 1;
      }

LABEL_6:
      ++a1;
      if (!--v3)
      {
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }
  }
}

void sub_23F30336C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v17 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v17 + 23) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*v17);
  _Unwind_Resume(a1);
}

uint64_t sub_23F3033AC(const char *a1, uint64_t a2, const char *a3, std::string::size_type a4, const void *a5, std::string::size_type a6, void (*a7)(std::string *), ...)
{
  sub_23F3034A8(a1, a2, a3, a4, a5, a6, a7);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v11 = qword_27E396178, v12 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_8:
      qword_27E396190(*algn_27E396198, a3, a4, a5, a6);
      return 0;
    }
  }

  else
  {
    v11 = qword_27E396178;
    v12 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      return 1;
    }
  }

  do
  {
    v14 = *v11;
    v13 = *(v11 + 8);
    v11 += 16;
    v14(v13, a3, a4, a5, a6);
  }

  while (v11 != v12);
  if (byte_27E3961A0)
  {
    goto LABEL_8;
  }

  return 1;
}

void sub_23F3034A8(const char *a1, int a2, const char *a3, std::string::size_type a4, const void *a5, std::string::size_type a6, void (*a7)(std::string *), ...)
{
  if (byte_27E3961A0)
  {
    return;
  }

  if (a4)
  {
    v12 = "Assert";
  }

  else
  {
    v12 = "Abort";
  }

  if (a4)
  {
    v13 = 6;
  }

  else
  {
    v13 = 5;
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  memcpy(&__dst, v12, v13);
  *(&__dst | v13) = 0;
  size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
    v15 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v15 - __dst.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) >= __dst.__r_.__value_.__l.__size_ + 2 - v15)
      {
        goto LABEL_13;
      }

      goto LABEL_106;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 21) < 2)
    {
LABEL_13:
      operator new();
    }

    p_dst = &__dst;
  }

  *(&p_dst->__r_.__value_.__l.__data_ + size) = 8250;
  v21 = size + 2;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = size + 2;
    p_dst->__r_.__value_.__s.__data_[v21] = 0;
    v22 = strlen(a1);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_28:
      sub_23EF2F8F4();
    }
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v21 & 0x7F;
    p_dst->__r_.__value_.__s.__data_[v21] = 0;
    v22 = strlen(a1);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_28;
    }
  }

  v16 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memcpy(&__p, a1, v22);
    __p.__r_.__value_.__s.__data_[v16] = 0;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_17:
      p_p = &__p;
      if (v17 == 22)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

  v17 = __p.__r_.__value_.__l.__size_;
  v19 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v19 == __p.__r_.__value_.__l.__size_)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

LABEL_23:
    operator new();
  }

  p_p = __p.__r_.__value_.__r.__words[0];
LABEL_32:
  p_p->__r_.__value_.__s.__data_[v17] = 58;
  v23 = v17 + 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = v23;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = v23 & 0x7F;
  }

  p_p->__r_.__value_.__s.__data_[v23] = 0;
  v48 = __p;
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v46, a2);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v46;
  }

  else
  {
    v24 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v46.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v48, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v50 = v26->__r_.__value_.__r.__words[2];
  v49 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v50 >= 0)
  {
    v28 = &v49;
  }

  else
  {
    v28 = v49;
  }

  if (v50 >= 0)
  {
    v29 = HIBYTE(v50);
  }

  else
  {
    v29 = *(&v49 + 1);
  }

  std::string::append(&__dst, v28, v29);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_55;
    }
  }

  else if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_56:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!a4)
    {
      goto LABEL_69;
    }

LABEL_57:
    if (a4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    *(&v48.__r_.__value_.__s + 23) = a4;
    memmove(&v48, a3, a4);
    v48.__r_.__value_.__s.__data_[a4] = 0;
    v30 = std::string::insert(&v48, 0, " : ", 3uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v50 = v30->__r_.__value_.__r.__words[2];
    v49 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v50 >= 0)
    {
      v32 = &v49;
    }

    else
    {
      v32 = v49;
    }

    if (v50 >= 0)
    {
      v33 = HIBYTE(v50);
    }

    else
    {
      v33 = *(&v49 + 1);
    }

    std::string::append(&__dst, v32, v33);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    operator delete(v48.__r_.__value_.__l.__data_);
    if (!a6)
    {
      goto LABEL_88;
    }

    goto LABEL_70;
  }

LABEL_55:
  operator delete(v48.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  if (a4)
  {
    goto LABEL_57;
  }

LABEL_69:
  if (!a6)
  {
    goto LABEL_88;
  }

LABEL_70:
  if (a6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (a6 >= 0x17)
  {
    operator new();
  }

  *(&v48.__r_.__value_.__s + 23) = a6;
  memmove(&v48, a5, a6);
  v48.__r_.__value_.__s.__data_[a6] = 0;
  v34 = std::string::insert(&v48, 0, " : ", 3uLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v50 = v34->__r_.__value_.__r.__words[2];
  v49 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (v50 >= 0)
  {
    v36 = &v49;
  }

  else
  {
    v36 = v49;
  }

  if (v50 >= 0)
  {
    v37 = HIBYTE(v50);
  }

  else
  {
    v37 = *(&v49 + 1);
  }

  std::string::append(&__dst, v36, v37);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_88;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
LABEL_88:
  v38 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v39 = &__dst;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) == 22)
    {
LABEL_93:
      operator new();
    }

    goto LABEL_95;
  }

  v38 = __dst.__r_.__value_.__l.__size_;
  v40 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v40 == __dst.__r_.__value_.__l.__size_)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_93;
    }

LABEL_106:
    sub_23EF2F8F4();
  }

  v39 = __dst.__r_.__value_.__r.__words[0];
LABEL_95:
  v39->__r_.__value_.__s.__data_[v38] = 10;
  v41 = v38 + 1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v41;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v41 & 0x7F;
  }

  v39->__r_.__value_.__s.__data_[v41] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &__dst;
  }

  else
  {
    v42 = __dst.__r_.__value_.__r.__words[0];
  }

  a7(v42);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_23F303CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F303DA4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = strlen(a1);
  sub_23F2FEA60(&qword_27E3961B0, a1, v2);
  if (byte_27E3961C7 >= 0)
  {
    v3 = &qword_27E3961B0;
  }

  else
  {
    v3 = qword_27E3961B0;
  }

  qword_27E395728 = v3;
  if ((atomic_load_explicit(&qword_27E3960C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3960C0))
  {
    qword_27E3960B8 = os_log_create("cv3d", &unk_23F3091D6);
    __cxa_guard_release(&qword_27E3960C0);
  }

  v4 = qword_27E3960B8;
  if (os_log_type_enabled(qword_27E3960B8, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = a1;
    _os_log_impl(&dword_23EF2C000, v4, OS_LOG_TYPE_FAULT, "%s", &v6, 0xCu);
  }

  return fputs(a1, *MEMORY[0x277D85DF8]);
}

void sub_23F303ED8()
{
  if (__cxa_guard_acquire(byte_27E395890))
  {
    v0.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v1 = sub_23EF38CB8(v0.__d_.__rep_, &qword_27E395888);
    __cxa_guard_release(v1);
  }
}

void sub_23F303F10(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_23F303F3C()
{
  if (__cxa_guard_acquire(qword_27E395898))
  {
    qword_27E3958D0 = MEMORY[0x277D82678];
    qword_27E3958D8 = MEMORY[0x277D82670];
    __cxa_guard_release(qword_27E395898);
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7848]();
}

{
  return MEMORY[0x2821F7860]();
}

{
  return MEMORY[0x2821F7868]();
}

{
  return MEMORY[0x2821F7870]();
}

{
  return MEMORY[0x2821F7878]();
}

uint64_t std::ostream::~ostream()
{
  return MEMORY[0x2821F78C0]();
}

{
  return MEMORY[0x2821F78C8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, uint64_t __val)
{
  return MEMORY[0x2821F7F20](retstr, __val);
}

{
  return MEMORY[0x2821F7F30](retstr, __val);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}