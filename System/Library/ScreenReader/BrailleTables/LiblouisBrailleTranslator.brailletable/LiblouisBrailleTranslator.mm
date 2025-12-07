void sub_E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_EA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(*(*(a1 + 64) + 8) + 24);
  v8 = a3 - v7;
  if (a3 > v7)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = [v9 substringWithRange:{v7, v8}];
    [v11 appendString:v13];

    do
    {
      v20 = v7;
      [v12 appendBytes:&v20 length:8];
      ++v7;
    }

    while (a3 != v7);
  }

  v14 = CEMEmojiTokenCopyName();
  if ([v14 length])
  {
    v15 = [@":" stringByAppendingString:v14];
    v16 = [v15 stringByAppendingString:@":"];

    v17 = [v16 length];
    [*(a1 + 40) appendString:v16];
    if (v17)
    {
      v18 = a3;
      do
      {
        v20 = a3;
        [*(a1 + 48) appendBytes:&v20 length:8];
        v19 = 0;
        [*(a1 + 56) replaceBytesInRange:v18++ withBytes:1 length:{&v19, 2}];
        --v17;
      }

      while (v17);
    }

    v14 = v16;
  }

  *(*(*(a1 + 64) + 8) + 24) = a3 + a4;
}

id LBTLog(uint64_t a1)
{
  if (qword_28EC8 != -1)
  {
    sub_1C90C();
  }

  v2 = qword_28EC0;

  return v2;
}

void sub_1630(id a1)
{
  qword_28EC0 = os_log_create("com.apple.Accessibility", "BRLTranslation.liblouis");

  _objc_release_x1();
}

void sub_172C(uint64_t a1, uint64_t a2)
{
  if (a1 <= 29999)
  {
    if (!a1 || a1 == 10000)
    {
      v3 = LBTLog(a1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_1C990();
      }

      goto LABEL_15;
    }

    if (a1 != 20000)
    {
      return;
    }

LABEL_11:
    v3 = LBTLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = a2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
    }

LABEL_15:

    return;
  }

  if (a1 == 30000)
  {
    goto LABEL_11;
  }

  if (a1 == 40000 || a1 == 50000)
  {
    v3 = LBTLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1C920();
    }

    goto LABEL_15;
  }
}

void sub_2AB4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

double _lou_resetPassVariables()
{
  qword_28F90 = 0;
  result = 0.0;
  xmmword_28F70 = 0u;
  unk_28F80 = 0u;
  xmmword_28F50 = 0u;
  unk_28F60 = 0u;
  xmmword_28F30 = 0u;
  unk_28F40 = 0u;
  xmmword_28F10 = 0u;
  unk_28F20 = 0u;
  xmmword_28EF0 = 0u;
  unk_28F00 = 0u;
  xmmword_28ED0 = 0u;
  unk_28EE0 = 0u;
  return result;
}

uint64_t _lou_handlePassVariableTest(uint64_t a1, int *a2, _DWORD *a3)
{
  result = 0;
  v5 = *a2;
  v6 = (a1 + 2 * v5);
  v7 = *v6;
  if (v7 <= 0x3D)
  {
    if (v7 == 60)
    {
      if (*(&xmmword_28ED0 + v6[1]) < v6[2])
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v7 != 61)
    {
      return result;
    }

    if (*(&xmmword_28ED0 + v6[1]) != v6[2])
    {
LABEL_12:
      *a3 = 0;
      LODWORD(v5) = *a2;
    }
  }

  else
  {
    if (v7 != 62)
    {
      if (v7 == 130)
      {
        if (*(&xmmword_28ED0 + v6[1]) <= v6[2])
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v7 != 131)
        {
          return result;
        }

        if (*(&xmmword_28ED0 + v6[1]) >= v6[2])
        {
          goto LABEL_13;
        }
      }

      goto LABEL_12;
    }

    if (*(&xmmword_28ED0 + v6[1]) <= v6[2])
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  *a2 = v5 + 3;
  return 1;
}

uint64_t _lou_handlePassVariableAction(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = (a1 + 2 * v2);
  v4 = *v3;
  switch(v4)
  {
    case '+':
      v6 = v3[1];
      v8 = *(&xmmword_28ED0 + v6) + 1;
LABEL_9:
      *(&xmmword_28ED0 + v6) = v8;
      v5 = 2;
      goto LABEL_10;
    case '-':
      v6 = v3[1];
      v7 = *(&xmmword_28ED0 + v6);
      if (v7 <= 1)
      {
        v7 = 1;
      }

      v8 = v7 - 1;
      goto LABEL_9;
    case '=':
      *(&xmmword_28ED0 + v3[1]) = v3[2];
      v5 = 3;
LABEL_10:
      *a2 = v2 + v5;
      return 1;
  }

  return 0;
}

char *lou_setDataPath(const char *a1)
{
  _lou_logMessage(30000, "warning: lou_setDataPath is deprecated.");
  qword_29798 = 0;
  if (!a1 || strlen(a1) > 0x7FF)
  {
    return 0;
  }

  v2 = &byte_28F98;
  __strcpy_chk();
  qword_29798 = &byte_28F98;
  return v2;
}

uint64_t _lou_getALine(_DWORD *a1)
{
  a1[9] = 0;
  for (i = a1 + 13; ; *(i + v4) = v3)
  {
    do
    {
      v3 = sub_2DD0(a1);
    }

    while (v3 == 13);
    if (v3 == -1 || v3 == 10)
    {
      break;
    }

    v4 = a1[9];
    if (v4 >= 2047)
    {
      *(i + v4) = 0;
      a1[10] = 0;
LABEL_11:
      ++a1[6];
      return 1;
    }

    a1[9] = v4 + 1;
  }

  v5 = a1[9];
  *(i + v5) = 0;
  a1[10] = 0;
  if (v3 != -1)
  {
    goto LABEL_11;
  }

  result = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_2DD0(uint64_t a1)
{
  if (*(a1 + 28) == 3 && *(a1 + 32) == 2)
  {
    *(a1 + 32) = 3;
    return *(a1 + 48);
  }

  v2 = fgetc(*(a1 + 16));
  if (v2 == -1)
  {
    return v2;
  }

  v3 = (a1 + 44);
  while (1)
  {
    v4 = *(a1 + 32);
    if (v4 <= 1)
    {
      v3[v4] = v2;
      v4 = *(a1 + 32);
    }

    v5 = v4 + 1;
    *(a1 + 32) = v5;
    if (v5 == 2)
    {
      v2 = *v3;
      if (v2 == 255)
      {
        if (*(a1 + 48) != 254)
        {
          goto LABEL_29;
        }

        v6 = 2;
      }

      else
      {
        if (v2 != 254)
        {
          if (v2 <= 127 && *(a1 + 48) <= 127)
          {
            *(a1 + 28) = 3;
            return v2;
          }

LABEL_29:
          sub_545C(a1, "encoding is neither big-endian, little-endian nor ASCII 8.");
          return 0xFFFFFFFFLL;
        }

        if (*(a1 + 48) != 255)
        {
          goto LABEL_29;
        }

        v6 = 1;
      }

      *(a1 + 28) = v6;
      goto LABEL_20;
    }

    v7 = *(a1 + 28);
    if (v7 == 3)
    {
      return v2;
    }

    if (v7 == 2)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = fgetc(*(a1 + 16));
      v10 = v9 == -1;
      v11 = v9 | (v2 << 8);
      goto LABEL_23;
    }

LABEL_20:
    v2 = fgetc(*(a1 + 16));
    if (v2 == -1)
    {
      return v2;
    }
  }

  v8 = fgetc(*(a1 + 16));
  v10 = v8 == -1;
  v11 = v2 | (v8 << 8);
LABEL_23:
  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v11;
  }
}

uint64_t _lou_getDotsForChar(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x8000;
  }

  v4 = (a2 + 4 * _lou_charHash(a1) + 8);
  while (1)
  {
    v5 = *v4;
    if (!v5)
    {
      break;
    }

    v4 = (a2 + 8992 + 8 * v5);
    if (*(v4 + 2) == a1)
    {
      return *(v4 + 3);
    }
  }

  return 0x8000;
}

uint64_t _lou_getCharForDots(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (a2 + 4 * _lou_charHash(a1) + 4500);
  while (1)
  {
    v5 = *v4;
    if (!v5)
    {
      break;
    }

    v4 = (a2 + 8992 + 8 * v5);
    if (*(v4 + 2) == a1)
    {
      return *(v4 + 3);
    }
  }

  return 0;
}

uint64_t _lou_findOpcodeNumber(const char *a1)
{
  v2 = dword_297A0;
  v3 = strlen(a1);
  v4 = dword_297A0;
  while (v3 != word_297A4[v4] || strcasecmp(a1, off_24370[v4]))
  {
    if ((v4 + 1) <= 0x74)
    {
      v4 = (v4 + 1);
    }

    else
    {
      v4 = 0;
    }

    if (v4 == v2)
    {
      return 117;
    }
  }

  dword_297A0 = v4;
  return v4;
}

char *_lou_findOpcodeName(unsigned int a1)
{
  if (a1 < 0x75)
  {
    return off_24370[a1];
  }

  v1 = byte_2988E;
  __sprintf_chk(byte_2988E, 0, 0x800uLL, "%u", a1);
  return v1;
}

uint64_t _lou_extParseChars()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  memset(v11, 0, 510);
  LOBYTE(v3) = *v0;
  if (*v0)
  {
    v4 = 0;
    do
    {
      v11[v4] = v3;
      v5 = v4 + 1;
      if (v4 > 0x7FD)
      {
        break;
      }

      v3 = v0[++v4];
    }

    while (v3);
    v6 = v5;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  memset(v9, 0, 512);
  v11[v5] = 0;
  v10 = v6;
  if (!sub_32A4(0, v9, &v10))
  {
    return 0;
  }

  v7 = LOWORD(v9[0]);
  if (LOWORD(v9[0]))
  {
    memcpy(v2, v9 + 2, 2 * LOWORD(v9[0]));
  }

  return v7;
}

uint64_t sub_32A4(uint64_t a1, _WORD *a2, _WORD *a3)
{
  v3 = a2;
  v4 = *a3;
  if (*a3)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    LODWORD(v9) = 0;
    v10 = a3 + 1;
    v11 = a2 + 1;
    while (1)
    {
      v8 = v8;
      while (1)
      {
        v12 = v9;
        v13 = v9;
        v9 = v9 + 1;
        v14 = LOBYTE(v10[v13]);
        if (v14 >= 0x80)
        {
          break;
        }

        if (v14 == 92)
        {
          v14 = v10[v9];
          v15 = "\\Zhhhhhhhh (with a capital 'Z') is deprecated.";
          switch(v10[v9])
          {
            case 'X':
              sub_551C(a1, "\\Xhhhh (with a capital 'X') is deprecated.");
              v4 = *a3;
              goto LABEL_8;
            case 'Y':
              v15 = "\\Yhhhhh (with a capital 'Y') is deprecated.";
              goto LABEL_23;
            case 'Z':
LABEL_23:
              sub_551C(a1, v15);
              goto LABEL_24;
            case '[':
            case ']':
            case '^':
            case '_':
            case 'a':
            case 'b':
            case 'c':
            case 'd':
            case 'g':
            case 'h':
            case 'i':
            case 'j':
            case 'k':
            case 'l':
            case 'm':
            case 'o':
            case 'p':
            case 'q':
            case 'u':
              goto LABEL_67;
            case '\\':
              goto LABEL_25;
            case 'e':
              LOWORD(v14) = 27;
              goto LABEL_25;
            case 'f':
              LOWORD(v14) = 12;
              goto LABEL_25;
            case 'n':
              LOWORD(v14) = 10;
              goto LABEL_25;
            case 'r':
              LOWORD(v14) = 13;
              goto LABEL_25;
            case 's':
              LOWORD(v14) = 32;
              goto LABEL_25;
            case 't':
              LOWORD(v14) = 9;
              goto LABEL_25;
            case 'v':
              LOWORD(v14) = 11;
              goto LABEL_25;
            case 'w':
              LOWORD(v14) = -1;
              goto LABEL_25;
            case 'x':
LABEL_8:
              if (v4 - v9 < 5)
              {
                goto LABEL_25;
              }

              v16 = 0;
              v17 = &v10[v12 + 2];
              v18 = 16;
              while (2)
              {
                v20 = *v17++;
                v19 = v20;
                if ((v20 - 48) < 0xA)
                {
                  v21 = -48;
                  goto LABEL_16;
                }

                if ((v19 - 97) < 6)
                {
                  v21 = -87;
                  goto LABEL_16;
                }

                if ((v19 - 65) < 6)
                {
                  v21 = -55;
LABEL_16:
                  v18 -= 4;
                  v16 |= (v21 + v19) << v18;
                  if (!v18)
                  {
                    LOWORD(v14) = v16;
                    goto LABEL_36;
                  }

                  continue;
                }

                break;
              }

              sub_545C(a1, "invalid %d-digit hexadecimal number", 4);
              LOWORD(v14) = -1;
LABEL_36:
              LODWORD(v9) = v12 + 5;
              goto LABEL_25;
            case 'y':
            case 'z':
LABEL_24:
              sub_545C(a1, "liblouis has not been compiled for 32-bit Unicode");
              goto LABEL_25;
            default:
              if (v14 != 34)
              {
LABEL_67:
                sub_545C(a1, "invalid escape sequence '\\%c'", v10[v9]);
                result = 0;
                LOWORD(v8) = v7;
                goto LABEL_65;
              }

              LOWORD(v14) = 28;
LABEL_25:
              LODWORD(v9) = v9 + 1;
              break;
          }
        }

        if (v8 == 2047)
        {
          sub_545C(a1, "Token too long");
          result = 0;
          goto LABEL_65;
        }

        v22 = v8 + 1;
        v11[v8] = v14;
        v4 = *a3;
        ++v8;
        if (v9 >= v4)
        {
          LOWORD(v8) = v22;
          goto LABEL_64;
        }
      }

      v33 = v8;
      v23 = 7;
      while (dword_1DD20[--v23] > v14)
      {
        if (v23 <= 1)
        {
          v23 = 0;
          break;
        }
      }

      v24 = (255 - dword_1DD20[v23]) & v14;
      v32 = v3;
      v35 = a1;
      if (v23 < 1 || v12 >= 2046)
      {
        v27 = v8;
      }

      else
      {
        v34 = v9;
        v25 = v12 + 2;
        v26 = 1;
        v27 = v8;
        do
        {
          if (v9 >= *a3)
          {
            break;
          }

          if (v27 >= 2047)
          {
            goto LABEL_66;
          }

          v28 = v10[v9];
          if (v28 >= 0x80 && (v28 & 0x40) == 0)
          {
            LODWORD(v9) = v9 + 1;
            v24 = v28 & 0x3F | (v24 << 6);
          }

          else
          {
            sub_551C(v35, "invalid UTF-8. Assuming Latin-1.");
            v11[v27++] = v10[v34];
            LODWORD(v9) = v25;
          }

          if (v26 >= v23)
          {
            break;
          }

          ++v26;
        }

        while (v9 < 2047);
      }

      if (v27 > 2046)
      {
        break;
      }

      if (v24 >= 0xFFFF)
      {
        v30 = -1;
      }

      else
      {
        v30 = v24;
      }

      LODWORD(v8) = v27 + 1;
      v11[v27] = v30;
      v4 = *a3;
      v3 = v32;
      a1 = v35;
      v7 = v33;
      if (v9 >= v4)
      {
        goto LABEL_64;
      }
    }

LABEL_66:
    sub_545C(v35, "Token too long");
    result = 0;
    v3 = v32;
  }

  else
  {
    LOWORD(v8) = 0;
LABEL_64:
    result = 1;
  }

LABEL_65:
  *v3 = v8;
  return result;
}

uint64_t _lou_extParseDots()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  memset(v12, 0, 510);
  LOBYTE(v3) = *v0;
  if (*v0)
  {
    v4 = 0;
    do
    {
      v12[v4] = v3;
      v5 = v4 + 1;
      if (v4 > 0x7FD)
      {
        break;
      }

      v3 = v0[++v4];
    }

    while (v3);
    v6 = v5;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  memset(v10, 0, 512);
  v12[v5] = 0;
  v11 = v6;
  sub_3860(0, v10, &v11);
  if (dword_2A090)
  {
    v7 = 0;
    dword_2A090 = 0;
  }

  else
  {
    v7 = LOWORD(v10[0]);
    if (LOWORD(v10[0]))
    {
      memcpy(v2, v10 + 2, 2 * LOWORD(v10[0]));
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    *(v2 + v8) = 0;
  }

  return v7;
}

uint64_t sub_3860(uint64_t a1, _WORD *a2, _WORD *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    goto LABEL_26;
  }

  v5 = 0;
  v6 = 0;
  while (2)
  {
    v9 = a3[v5 + 1];
    v7 = 1;
    switch(v9)
    {
      case '0':
        if (!v5)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      case '1':
        goto LABEL_20;
      case '2':
        v7 = 2;
        goto LABEL_20;
      case '3':
        v7 = 4;
        goto LABEL_20;
      case '4':
        v7 = 8;
        goto LABEL_20;
      case '5':
        v7 = 16;
        goto LABEL_20;
      case '6':
        v7 = 32;
        goto LABEL_20;
      case '7':
        v7 = 64;
        goto LABEL_20;
      case '8':
        v7 = 128;
        goto LABEL_20;
      case '9':
        v7 = 256;
        goto LABEL_20;
      case 'A':
      case 'a':
        v7 = 512;
        goto LABEL_20;
      case 'B':
      case 'b':
        v7 = 1024;
        goto LABEL_20;
      case 'C':
      case 'c':
        v7 = 2048;
        goto LABEL_20;
      case 'D':
      case 'd':
        v7 = 4096;
        goto LABEL_20;
      case 'E':
      case 'e':
        v7 = 0x2000;
        goto LABEL_20;
      case 'F':
      case 'f':
        v7 = 0x4000;
LABEL_20:
        if (v5 && !v6)
        {
          goto LABEL_27;
        }

        if ((v7 & v6) == 0)
        {
          v6 |= v7;
LABEL_24:
          if (++v5 >= v4)
          {
            if (v5)
            {
              a2[1] = v6 | 0x8000;
              *a2 = 1;
              return 1;
            }

LABEL_26:
            sub_545C(a1, "missing cell specification.");
            return 0;
          }

          continue;
        }

        sub_545C(a1, "dot specified more than once.");
        return 0;
      default:
LABEL_27:
        _lou_showString(&v9, 1u, 0);
        sub_545C(a1, "invalid dot number %s.");
        return 0;
    }
  }
}

uint64_t lou_readCharFromFile(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    if (*a2 == 1)
    {
      *a2 = 0;
      qword_2A098 = result;
      dword_2A0B8 = 0;
      qword_2A0B0 = 0;
      qword_2A0A8 = fopen(result, "r");
      if (!qword_2A0A8)
      {
        _lou_logMessage(40000, "Cannot open file '%s'", qword_2A098);
LABEL_8:
        *a2 = 1;
        return 0xFFFFFFFFLL;
      }
    }

    else if (!qword_2A0A8)
    {
      goto LABEL_8;
    }

    result = sub_2DD0(&qword_2A098);
    if (result != -1)
    {
      return result;
    }

    fclose(qword_2A0A8);
    qword_2A0A8 = 0;
    goto LABEL_8;
  }

  return result;
}

char *_lou_getTablePath()
{
  v0 = getenv("LOUIS_TABLEPATH");
  if (v0)
  {
    v1 = &v6;
    if (*v0)
    {
      v2 = 0;
      v1 = &v7[__sprintf_chk(&v6, 0, 0x800uLL, ",%s", v0) - 1];
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 1;
    v1 = &v6;
  }

  if (qword_29798)
  {
    v3 = byte_28F98 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v1 += sprintf(v1, ",%s%c%s%c%s", qword_29798, 47, "liblouis", 47, "tables");
  }

  if (v2)
  {
    sprintf(v1, ",%s", "./tables");
  }

  if (v6)
  {
    v4 = v7;
  }

  else
  {
    v4 = ".";
  }

  return strdup(v4);
}

void **_lou_defaultTableResolver(const char *a1, const char *a2)
{
  TablePath = _lou_getTablePath();
  v5 = 0;
  for (i = a1; *i == 44; ++i)
  {
    ++v5;
LABEL_6:
    ;
  }

  if (*i)
  {
    goto LABEL_6;
  }

  v7 = malloc_type_calloc(v5 + 2, 8uLL, 0x10040436913F5uLL);
  v8 = v7;
  if (!v7)
  {
    _lou_outOfMemory();
  }

  v9 = strdup(a1);
  v10 = 0;
  v31 = v9;
  while (1)
  {
    for (j = v9 + 1; ; ++j)
    {
      v12 = *(j - 1);
      if (!*(j - 1) || v12 == 44)
      {
        break;
      }
    }

    *(j - 1) = 0;
    if (!v9 || !*v9)
    {
      break;
    }

    v32 = v10;
    v13 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!a2)
    {
      goto LABEL_29;
    }

    if (strlen(a2) > 0xFFF)
    {
      goto LABEL_57;
    }

    __strcpy_chk();
    LODWORD(v14) = strlen(v13);
    if ((v14 & 0x80000000) == 0)
    {
      v14 &= 0x7FFFFFFFu;
      while (1)
      {
        v15 = v13[v14];
        if (v15 == 47 || v15 == 92)
        {
          break;
        }

        if (v14-- <= 0)
        {
          LODWORD(v14) = -1;
          break;
        }
      }
    }

    v13[v14 + 1] = 0;
    v17 = strlen(v13);
    if (strlen(v9) + v17 > 0xFFF)
    {
      goto LABEL_57;
    }

    __strcat_chk();
    if (stat(v13, &unk_2B170) || (word_2B174 & 0x4000) != 0)
    {
LABEL_29:
      if (strlen(v9) > 0xFFF)
      {
        goto LABEL_57;
      }

      __strcpy_chk();
      if (stat(v13, &unk_2B170) || (word_2B174 & 0x4000) != 0)
      {
        if (*TablePath)
        {
          v27 = a2;
          v29 = v8;
          v30 = TablePath;
          v19 = strdup(TablePath);
          v28 = v19;
          while (1)
          {
            for (k = 0; ; ++k)
            {
              v21 = v19[k];
              if (!v19[k] || v21 == 44)
              {
                break;
              }
            }

            v19[k] = 0;
            v22 = k ? v19 : ".";
            v23 = strlen(v22);
            if (v23 + strlen(v9) - 4095 < 0xFFFFFFFFFFFFF000)
            {
              break;
            }

            __sprintf_chk(v13, 0, 0x1000uLL, "%s%c%s", v22, 47, v9);
            if (!stat(v13, &unk_2B170) && (word_2B174 & 0x4000) == 0)
            {
LABEL_50:
              _lou_logMessage(10000, "found table %s", v13);
              free(v28);
              v8 = v29;
              TablePath = v30;
              a2 = v27;
              goto LABEL_51;
            }

            if (!v21)
            {
              break;
            }

            v24 = strlen(v22);
            if (v24 + strlen(v9) - 4079 < 0xFFFFFFFFFFFFF000)
            {
              break;
            }

            __sprintf_chk(v13, 0, 0x1000uLL, "%s%c%s%c%s%c%s", v22, 47, "liblouis", 47, "tables", 47, v9);
            if (!stat(v13, &unk_2B170) && (word_2B174 & 0x4000) == 0)
            {
              goto LABEL_50;
            }

            v19 += k + 1;
          }

          free(v28);
          v8 = v29;
          TablePath = v30;
        }

LABEL_57:
        free(v13);
        LODWORD(v10) = v32;
        break;
      }

      _lou_logMessage(10000, "found table %s", v13);
LABEL_51:
      v18 = v32;
      v8[v32] = v13;
      if (!v13)
      {
        goto LABEL_59;
      }
    }

    else
    {
      _lou_logMessage(10000, "found table %s", v13);
      v18 = v10;
      v8[v10] = v13;
    }

    v10 = v18 + 1;
    if (!v12)
    {
      free(TablePath);
      free(v31);
      v8[v10] = 0;
      return v8;
    }

    if (!v18)
    {
      a2 = v9;
    }

    v9 = j;
  }

  v8[v10] = 0;
LABEL_59:
  _lou_logMessage(40000, "Cannot resolve table '%s'", v9);
  v25 = getenv("LOUIS_TABLEPATH");
  if (v25 && *v25)
  {
    _lou_logMessage(40000, "LOUIS_TABLEPATH=%s", v25);
  }

  free(TablePath);
  free(v31);
  sub_4148(v8);
  return 0;
}

void sub_4148(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = a1 + 1;
      do
      {
        free(v2);
        v4 = *v3++;
        v2 = v4;
      }

      while (v4);
    }

    free(a1);
  }
}

void *_lou_resolveTable(const char *a1, const char *a2)
{
  v2 = off_28D20(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = 2;
    do
    {
      v6 = v2[v4];
      --v5;
      ++v4;
    }

    while (v6);
    v7 = malloc_type_malloc((v4 * 8) & 0x7FFFFFFF8, 0x10040436913F5uLL);
    v7[v4 - 1] = 0;
    if (v5 != 1)
    {
      v8 = -v5;
      do
      {
        v7[v8] = strdup(v3[v8]);
        --v8;
      }

      while (v8 != -1);
    }
  }

  else
  {
    v7 = 0;
  }

  if (off_28D20 == _lou_defaultTableResolver)
  {
    sub_4148(v3);
  }

  return v7;
}

void *lou_getEmphClasses(char *a1)
{
  TranslationTable = _lou_getTranslationTable(a1);
  if (!TranslationTable)
  {
    return 0;
  }

  v2 = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  do
  {
    v3 = *(TranslationTable + 1232 + 8 * v2);
    if (!v3)
    {
      break;
    }

    *(v8 + v2++) = v3;
  }

  while (v2 != 10);
  *(v8 + v2) = 0;
  v4 = (8 * v2 + 8);
  v5 = malloc_type_malloc(v4, 0xCC7BF405uLL);
  v6 = v5;
  if (v5)
  {
    memcpy(v5, v8, v4);
  }

  return v6;
}

uint64_t _lou_getTranslationTable(char *a1)
{
  v2 = 0;
  getTable(a1, 0, &v2, 0);
  result = v2;
  if (v2)
  {
    if (sub_4A14(v2))
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char **_lou_getTable(char *a1, const char *a2, uint64_t *a3, void *a4)
{
  v8 = 0;
  v9 = 0;
  getTable(a1, a2, &v9, &v8);
  result = v9;
  if (v9)
  {
    result = sub_4A14(v9);
    v7 = v9;
    if (!result)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *a4 = v8;
  return result;
}

void getTable(char *__s, const char *a2, void *a3, void *a4)
{
  if (__s && *__s)
  {
    if (!a2)
    {
LABEL_14:
      a4 = 0;
      if (!a3)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  else
  {
    a3 = 0;
    if (!a2)
    {
      goto LABEL_14;
    }
  }

  if (!*a2)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_15:
    v8 = 0;
LABEL_16:
    if (a4)
    {
      goto LABEL_17;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

LABEL_8:
  v8 = strlen(__s);
  *a3 = 0;
  v9 = qword_2B0D0;
  if (!qword_2B0D0)
  {
    goto LABEL_16;
  }

  v10 = 0;
  while (1)
  {
    v11 = v9;
    if (*(v9 + 16) == v8 && !memcmp((v9 + 20), __s, v8))
    {
      break;
    }

    v9 = *v11;
    v10 = v11;
    if (!*v11)
    {
      goto LABEL_16;
    }
  }

  if (v10)
  {
    *v10 = *v11;
    *v11 = qword_2B0D0;
    qword_2B0D0 = v11;
  }

  *a3 = v11[1];
  if (!a4)
  {
    goto LABEL_26;
  }

LABEL_17:
  v12 = strlen(a2);
  *a4 = 0;
  v13 = qword_2B0D8;
  if (qword_2B0D8)
  {
    v14 = 0;
    while (1)
    {
      v15 = v13;
      if (*(v13 + 16) == v12 && !memcmp((v13 + 20), a2, v12))
      {
        break;
      }

      v13 = *v15;
      v14 = v15;
      if (!*v15)
      {
        goto LABEL_27;
      }
    }

    if (v14)
    {
      *v14 = *v15;
      *v15 = qword_2B0D8;
      qword_2B0D8 = v15;
    }

    *a4 = v15[1];
    if (!a3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*a3)
  {
LABEL_29:
    if (!a4 || *a4)
    {
      return;
    }

    v41 = 0;
    v42 = 0;
    if (a3 && !*a3)
    {
      v16 = &v42;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_41;
  }

  v41 = 0;
  v42 = 0;
  v16 = &v42;
  if (!a4)
  {
LABEL_42:
    v17 = 0;
    if (__s)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_41:
  if (*a4)
  {
    goto LABEL_42;
  }

  v17 = &v41;
  if (__s)
  {
    goto LABEL_46;
  }

LABEL_45:
  if (v16)
  {
LABEL_107:
    _lou_logMessage(40000, "%s could not be compiled", __s);
    return;
  }

LABEL_46:
  if (!a2 && v17 || !(v16 | v17))
  {
    goto LABEL_107;
  }

  if (v16)
  {
    *v16 = 0;
  }

  if (v17)
  {
    *v17 = 0;
  }

  v40 = v17;
  dword_2BA00 = 0;
  dword_2B168 = 0;
  dword_2A090 = 0;
  if (!word_297A4[0])
  {
    for (i = 0; i != 117; ++i)
    {
      word_297A4[i] = strlen(off_24370[i]);
    }
  }

  if (v16)
  {
    v19 = *v16;
    v20 = v40;
    if (!*v16)
    {
      v21 = malloc_type_malloc(0xF710uLL, 0xF05C69C8uLL);
      *v16 = v21;
      if (!v21)
      {
        sub_545C(0, "Not enough memory");
        if (*v16)
        {
          free(*v16);
        }

        *v16 = 0;
        _lou_outOfMemory();
      }

      bzero(v21, 0xF710uLL);
      v19 = *v16;
      **v16 = 0x7B900000F710;
    }

    if (!v40)
    {
      v19[154] = 0;
      v19[1] = 0;
      v19[4] = 0;
      sub_52C0("space \\xffff 123456789abcdef LOU_ENDSEGMENT");
      goto LABEL_87;
    }
  }

  else
  {
    v20 = v40;
    if (!v40)
    {
      sub_52C0("space \\xffff 123456789abcdef LOU_ENDSEGMENT");
      goto LABEL_95;
    }
  }

  if (!*v20)
  {
    v22 = malloc_type_malloc(0x4650uLL, 0xBD577F7uLL);
    *v20 = v22;
    if (!v22)
    {
      sub_545C(0, "Not enough memory");
      if (*v20)
      {
        free(*v20);
      }

      *v20 = 0;
      _lou_outOfMemory();
    }

    bzero(v22, 0x4650uLL);
    **v20 = 0x233000004650;
  }

  if (v16)
  {
    v23 = *v16;
    v23[154] = 0;
    v23[1] = 0;
    v23[4] = 0;
    sub_52C0("space \\xffff 123456789abcdef LOU_ENDSEGMENT");
    if (!strcmp(__s, a2))
    {
      v24 = _lou_resolveTable(__s, 0);
      if (v24)
      {
        if (*v24)
        {
          v25 = 1;
          do
          {
            if (!sub_5A9C())
            {
              break;
            }
          }

          while (v24[v25++]);
        }

        goto LABEL_96;
      }

      goto LABEL_93;
    }
  }

  else
  {
    sub_52C0("space \\xffff 123456789abcdef LOU_ENDSEGMENT");
  }

  v24 = _lou_resolveTable(a2, 0);
  if (v24)
  {
    if (*v24)
    {
      v27 = 1;
      while (sub_5A9C())
      {
        if (!v24[v27++])
        {
          goto LABEL_86;
        }
      }

      goto LABEL_96;
    }

LABEL_86:
    sub_4148(v24);
    if (v16)
    {
LABEL_87:
      v24 = _lou_resolveTable(__s, 0);
      if (v24)
      {
        if (*v24)
        {
          v29 = 1;
          do
          {
            if (!sub_5A9C())
            {
              break;
            }
          }

          while (v24[v29++]);
        }

        goto LABEL_96;
      }

      goto LABEL_93;
    }

LABEL_95:
    v24 = 0;
    goto LABEL_96;
  }

LABEL_93:
  ++dword_2A090;
LABEL_96:
  sub_4148(v24);
  if (dword_2B168)
  {
    _lou_logMessage(30000, "%s: %d warnings issued", __s, dword_2B168);
  }

  if (dword_2A090)
  {
    _lou_logMessage(40000, "%d errors found.", dword_2A090);
    if (v16)
    {
      if (*v16)
      {
        sub_51B0(*v16);
      }

      *v16 = 0;
    }

    if (v20)
    {
      if (*v20)
      {
        free(*v20);
      }

      *v20 = 0;
    }

    goto LABEL_107;
  }

  if (v16)
  {
    v31 = 0;
    v32 = *v16;
    v33 = *v16 + 1992;
    do
    {
      if (!*(v33 + v31))
      {
        *(v33 + v31) = 4;
      }

      v31 += 36;
    }

    while (v31 != 108);
    if (!v32[233])
    {
      v32[233] = 1;
    }
  }

  if (v42)
  {
    v34 = malloc_type_malloc(v8 + 24, 0x894872ABuLL);
    v35 = v34;
    if (!v34)
    {
      _lou_outOfMemory();
    }

    *v34 = qword_2B0D0;
    v36 = v42;
    v34[1] = v42;
    *(v34 + 4) = v8;
    memcpy(v34 + 20, __s, v8);
    qword_2B0D0 = v35;
    *a3 = v36;
  }

  if (v41)
  {
    v37 = malloc_type_malloc(v12 + 24, 0xA1C879DDuLL);
    v38 = v37;
    if (!v37)
    {
      _lou_outOfMemory();
    }

    *v37 = qword_2B0D8;
    v39 = v41;
    v37[1] = v41;
    *(v37 + 4) = v12;
    memcpy(v37 + 20, a2, v12);
    qword_2B0D8 = v38;
    *a4 = v39;
  }
}

const char **sub_4A14(uint64_t a1)
{
  if (*(a1 + 924))
  {
    return (&dword_0 + 1);
  }

  v3 = 0;
  v4 = a1 + 13608;
  while (1)
  {
    v5 = *(v4 + 4 * v3);
    if (v5)
    {
      break;
    }

LABEL_7:
    if (++v3 == 1123)
    {
      v6 = 0;
      v7 = a1 + 31616;
      do
      {
        for (i = *(v4 + 4 * v6); i; i = *(v9 + 12))
        {
          v9 = v7 + 8 * i;
          if ((*(v9 + 24) & 2) != 0)
          {
            for (j = *(v9 + 20); j; j = *(v11 + 16))
            {
              v11 = v7 + 8 * j;
              if ((*(v11 + 44) & 0xFFFFFFFE) == 0x5A)
              {
                v12 = *(a1 + 3192);
                if (v12 <= 255)
                {
                  v13 = *(v11 + 54);
                  *(a1 + 3192) = v12 + 1;
                  *(a1 + 2680 + 2 * v12) = v13;
                }
              }
            }
          }
        }

        ++v6;
      }

      while (v6 != 1123);
      v14 = 0;
      v15 = a1 + 22632;
      do
      {
        v16 = (v15 + 4 * v14);
        v17 = *v16;
        if (v17)
        {
          do
          {
            while (1)
            {
              v18 = v7 + 8 * v17;
              if (*(v18 + 44) == 74)
              {
                v19 = _lou_stringHash((v18 + 54), 1, a1);
                if (v19 != v14)
                {
                  break;
                }
              }

              v17 = *(v18 + 16);
              v16 = (v18 + 16);
              if (!*(v18 + 16))
              {
                goto LABEL_32;
              }
            }

            v20 = (v15 + 4 * v19);
            v21 = *v20;
            if (v21)
            {
              v22 = v7 + 8 * v21;
              for (k = *(v22 + 50); *(v18 + 50) <= k && (*(v18 + 50) != k || *(v22 + 44) != 83); k = *(v22 + 50))
              {
                v21 = *(v22 + 16);
                v20 = (v22 + 16);
                if (!*(v22 + 16))
                {
                  break;
                }

                v22 = v7 + 8 * v21;
              }
            }

            v17 = *(v18 + 16);
            *(v18 + 16) = v21;
            *v20 = *v16;
            *v16 = v17;
          }

          while (v17);
        }

LABEL_32:
        ++v14;
      }

      while (v14 != 1123);
      result = (&dword_0 + 1);
      *(a1 + 924) = 1;
      return result;
    }
  }

  while (1)
  {
    result = sub_55DC(a1, v5, 0);
    if (!result)
    {
      return result;
    }

    v5 = *(result + 3);
    if (!v5)
    {
      goto LABEL_7;
    }
  }
}

uint64_t lou_getTable(char *a1)
{
  v3 = 0;
  v4 = 0;
  _lou_getTable(a1, a1, &v4, &v3);
  if (v3)
  {
    v1 = v4 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t _lou_getDisplayTable(const char *a1)
{
  v2 = 0;
  getTable(0, a1, 0, &v2);
  return v2;
}

BOOL lou_checkTable(char *a1)
{
  v3 = 0;
  v4 = 0;
  _lou_getTable(a1, a1, &v4, &v3);
  if (v4)
  {
    v1 = v3 == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t lou_getTypeformForEmphClass(char *a1, const char *a2)
{
  TranslationTable = _lou_getTranslationTable(a1);
  if (TranslationTable)
  {
    v4 = 0;
    v5 = TranslationTable + 1232;
    do
    {
      v6 = *(v5 + 8 * v4);
      if (!v6)
      {
        break;
      }

      if (!strcmp(a2, v6))
      {
        return (1 << v4);
      }

      ++v4;
    }

    while (v4 != 10);
  }

  LOWORD(v7) = 0;
  return v7;
}

void *_lou_allocMem(int a1, unsigned int a2, int a3, int a4)
{
  result = 0;
  if (a3 <= 1024)
  {
    v6 = 1024;
  }

  else
  {
    v6 = a3;
  }

  if (a4 <= 1024)
  {
    v7 = 1024;
  }

  else
  {
    v7 = a4;
  }

  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        if (v6 >= a4)
        {
          v13 = v6;
        }

        else
        {
          v13 = v7;
        }

        result = qword_2B150;
        if (v13 > dword_2B148)
        {
          if (qword_2B150)
          {
            free(qword_2B150);
          }

          result = malloc_type_malloc(4 * (v13 + 4), 0x100004052888210uLL);
          qword_2B150 = result;
          if (!result)
          {
            _lou_outOfMemory();
          }

          dword_2B148 = v13;
        }
      }

      else if (a1 == 7)
      {
        v9 = v6 >= a4 ? v6 : v7;
        result = qword_2B160;
        if (v9 > dword_2B158)
        {
          if (qword_2B160)
          {
            free(qword_2B160);
          }

          result = malloc_type_malloc(4 * (v9 + 4), 0x100004052888210uLL);
          qword_2B160 = result;
          if (!result)
          {
            _lou_outOfMemory();
          }

          dword_2B158 = v9;
        }
      }
    }

    else if (a1 == 4)
    {
      if (a2 >= 3)
      {
        _lou_logMessage(50000, "Index out of bounds: %d\n", a2);
        exit(3);
      }

      if (v7 > dword_2B110[a2])
      {
        v11 = qword_2B120[a2];
        if (v11)
        {
          free(v11);
        }

        v12 = malloc_type_malloc((2 * v7 + 8), 0x1000040BDFB0063uLL);
        qword_2B120[a2] = v12;
        if (!v12)
        {
          _lou_outOfMemory();
        }

        dword_2B110[a2] = v7;
      }

      return qword_2B120[a2];
    }

    else
    {
      if (v6 >= a4)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      result = qword_2B140;
      if (v8 > dword_2B138)
      {
        if (qword_2B140)
        {
          free(qword_2B140);
        }

        result = malloc_type_malloc(4 * (v8 + 4), 0x100004052888210uLL);
        qword_2B140 = result;
        if (!result)
        {
          _lou_outOfMemory();
        }

        dword_2B138 = v8;
      }
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (qword_2B0F8)
      {
        free(qword_2B0F8);
      }

      result = malloc_type_calloc((v6 + 4), 8uLL, 0x100004000313F17uLL);
      qword_2B0F8 = result;
      if (!result)
      {
        _lou_outOfMemory();
      }
    }

    else
    {
      result = qword_2B108;
      if (v7 > dword_2B100)
      {
        if (qword_2B108)
        {
          free(qword_2B108);
        }

        result = malloc_type_malloc((v7 + 4), 0xC05CB9BAuLL);
        qword_2B108 = result;
        if (!result)
        {
          _lou_outOfMemory();
        }

        dword_2B100 = v7;
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (qword_2B0F0)
      {
        free(qword_2B0F0);
      }

      result = malloc_type_calloc((v6 + 4), 4uLL, 0x100004052888210uLL);
      qword_2B0F0 = result;
      if (!result)
      {
        _lou_outOfMemory();
      }
    }
  }

  else
  {
    result = qword_2B0E8;
    if (v7 > dword_2B0E0)
    {
      if (qword_2B0E8)
      {
        free(qword_2B0E8);
      }

      result = malloc_type_malloc((2 * v7 + 8), 0x1000040BDFB0063uLL);
      qword_2B0E8 = result;
      if (!result)
      {
        _lou_outOfMemory();
      }

      dword_2B0E0 = v7;
    }
  }

  return result;
}

void lou_free()
{
  v0 = qword_2B0D0;
  if (qword_2B0D0)
  {
    do
    {
      sub_51B0(v0[1]);
      v1 = *v0;
      free(v0);
      v0 = v1;
    }

    while (v1);
    qword_2B0D0 = 0;
  }

  v2 = qword_2B0D8;
  if (qword_2B0D8)
  {
    do
    {
      free(v2[1]);
      v3 = *v2;
      free(v2);
      v2 = v3;
    }

    while (v3);
    qword_2B0D8 = 0;
  }

  if (qword_2B0E8)
  {
    free(qword_2B0E8);
  }

  qword_2B0E8 = 0;
  if (qword_2B0F0)
  {
    free(qword_2B0F0);
  }

  qword_2B0F0 = 0;
  if (qword_2B0F8)
  {
    free(qword_2B0F8);
  }

  qword_2B0F8 = 0;
  dword_2B0E0 = 0;
  if (qword_2B108)
  {
    free(qword_2B108);
  }

  v4 = 0;
  qword_2B108 = 0;
  dword_2B100 = 0;
  do
  {
    v5 = qword_2B120[v4];
    if (v5)
    {
      free(v5);
    }

    qword_2B120[v4] = 0;
    dword_2B110[v4++] = 0;
  }

  while (v4 != 3);
  if (qword_2B140)
  {
    free(qword_2B140);
  }

  qword_2B140 = 0;
  dword_2B138 = 0;
  if (qword_2B150)
  {
    free(qword_2B150);
  }

  qword_2B150 = 0;
  dword_2B148 = 0;
  if (qword_2B160)
  {
    free(qword_2B160);
  }

  qword_2B160 = 0;
  dword_2B158 = 0;
  word_297A4[0] = 0;
}

void sub_51B0(void **a1)
{
  for (i = 154; i != 164; ++i)
  {
    v3 = a1[i];
    if (!v3)
    {
      break;
    }

    free(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    v5 = a1 + 15;
    do
    {
      free(v4);
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  while (1)
  {
    v7 = a1[1];
    if (!v7)
    {
      break;
    }

    a1[1] = *v7;
    free(v7);
  }

  while (1)
  {
    v8 = a1[4];
    if (!v8)
    {
      break;
    }

    a1[4] = *v8;
    free(v8);
  }

  free(a1);
}

BOOL lou_compileString(char *a1, void **a2)
{
  v4 = 0;
  v5 = 0;
  getTable(a1, a1, &v5, &v4);
  return v5 && sub_52C0(a2) != 0;
}

void **sub_52C0(void **result)
{
  if (result)
  {
    v1 = __chkstk_darwin();
    v3 = v2;
    v4 = v1;
    bzero(v7, 0x1030uLL);
    v5 = 0;
    v6 = v4;
    v7[4] = 1;
    v7[8] = 0;
    do
    {
      if (!*(v4 + v5))
      {
        break;
      }

      *(&v7[11] + v5) = *(v4 + v5);
      ++v5;
    }

    while (v5 != 2047);
    *(&v7[11] + v5) = 0;
    v7[7] = v5;
    if (v3 && *v3 && *(*v3 + 924))
    {
      sub_545C(&v6, "Table is finalized");
      return 0;
    }

    else
    {
      return sub_5C70();
    }
  }

  return result;
}

void **_lou_compileTranslationRule(char *a1, void **a2)
{
  v4 = 0;
  getTable(a1, 0, &v4, 0);
  return sub_52C0(a2);
}

void **_lou_compileDisplayRule(const char *a1, void **a2)
{
  v4 = 0;
  getTable(0, a1, 0, &v4);
  return sub_52C0(a2);
}

void sub_545C(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(__str, 0x800uLL, __format, va);
  if (a1)
  {
    _lou_logMessage(40000, "%s:%d: error: %s");
  }

  else
  {
    _lou_logMessage(40000, "error: %s");
  }

  ++dword_2A090;
}

void sub_551C(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(__str, 0x800uLL, __format, va);
  if (a1)
  {
    _lou_logMessage(30000, "%s:%d: warning: %s");
  }

  else
  {
    _lou_logMessage(30000, "warning: %s");
  }

  ++dword_2B168;
}

const char **sub_55DC(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a1 + 31616;
  v4 = (a1 + 31616 + 8 * a2);
  v5 = *(v4 + 12);
  if (v5)
  {
    v8 = 0;
    if (a3 <= 7)
    {
      v9 = 7;
    }

    else
    {
      v9 = a3;
    }

    v10 = v9 - a3;
    v11 = a3 + 1;
    v12 = a1 + 31616 + 8 * a2;
    do
    {
      if (v5 == a2 || !v10)
      {
        if (*v4)
        {
          snprintf(qword_2B200, 0x800uLL, "%s:%d", *v4, *(v4 + 2));
        }

        else
        {
          strcpy(qword_2B200, "source unknown");
        }

        _lou_logMessage(40000, "%s: error: Character can not be (indirectly) based on itself.", qword_2B200);
        v4 = 0;
        ++dword_2A090;
        return v4;
      }

      v13 = v5;
      v14 = *(v12 + 32);
      v15 = sub_55DC(a1, v5, v11);
      if (!v15)
      {
        return 0;
      }

      v12 = v15;
      v16 = v4[4];
      if (((v15[4] | v15[3]) & v16) != 0)
      {
        v23 = (a1 + 8);
        while (1)
        {
          v23 = *v23;
          if (!v23)
          {
            break;
          }

          if (*(v23 + 1) == v16)
          {
            v24 = _lou_showString(v23 + 9, v23[8], 0);
            v25 = strdup(v24);
            goto LABEL_25;
          }
        }

        v25 = 0;
LABEL_25:
        if (*v4)
        {
          snprintf(qword_2B200, 0x800uLL, "%s:%d", *v4, *(v4 + 2));
        }

        else
        {
          strcpy(qword_2B200, "source unknown");
        }

        v26 = _lou_showString((v12 + 44), 1u, 0);
        v27 = "?";
        if (v25)
        {
          v27 = v25;
        }

        _lou_logMessage(40000, "%s: error: Base character %s can not have the %s attribute.", qword_2B200, v26, v27);
        ++dword_2A090;
        free(v25);
        return 0;
      }

      v8 |= v14;
      v5 = *(v15 + 12);
      --v10;
      ++v11;
    }

    while (v5);
    v17 = v3 + 8 * *(v15 + 4);
    v18 = *(v4 + 4);
    if (v18)
    {
      v19 = v3 + 8 * v18;
      v20 = *(v19 + 52);
      if (v20 != *(v17 + 52) || memcmp((v19 + 2 * *(v19 + 50) + 54), (v17 + 2 * *(v17 + 50) + 54), 2 * v20))
      {
        v21 = *(v19 + 44);
        if (v21 < 0x75)
        {
          v22 = off_24370[v21];
        }

        else
        {
          v22 = byte_2988E;
          __sprintf_chk(byte_2988E, 0, 0x800uLL, "%u", *(v19 + 44));
        }

        v28 = strdup(v22);
        if (*(v19 + 12) < *(v4 + 14))
        {
          v29 = *v4;
          v30 = *(v4 + 2);
          sub_5A04(*v4, *v19);
          _lou_logMessage(10000, "%s:%d: Character already defined (%s). The existing %s rule will take precedence over the new base rule.", v29, v30, qword_2B200, v28);
          free(v28);
          *(v4 + 12) = 0;
          v4[4] = 0;
          *v4 = *v19;
          v31 = *(v19 + 12);
          *(v4 + 2) = *(v19 + 8);
          *(v4 + 14) = v31;
          goto LABEL_48;
        }

        v41 = *(v19 + 8);
        v32 = *v19;
        sub_5A04(v32, *v4);
        _lou_logMessage(10000, "%s:%d: A base rule already exists for this character (%s). The existing base rule will take precedence over the new %s rule.", v32, v41, qword_2B200, v28);
        free(v28);
        *(v4 + 4) = 0;
      }
    }

    *(v4 + 12) = v13;
    v33 = v4[3] | v8;
    if ((v33 & 0x30) != 0)
    {
      v33 |= 2uLL;
    }

    v4[3] = v33;
    v4[4] = v8;
    if (*(v17 + 52) == 1)
    {
      v34 = v17 + 2 * *(v17 + 50);
      v35 = *(v34 + 54);
      v36 = *(a1 + 4 * _lou_charHash(*(v34 + 54)) + 18100);
      if (v36)
      {
        while (1)
        {
          v37 = v3 + 8 * v36;
          if (*(v37 + 44) == v35)
          {
            break;
          }

          v36 = *(v37 + 12);
          if (!v36)
          {
            goto LABEL_45;
          }
        }

        v38 = *(v37 + 24) | v4[4];
        *(v37 + 24) = v38;
        if ((v38 & 0x30) != 0)
        {
          *(v37 + 24) = v38 | 2;
        }
      }
    }

LABEL_45:
    v39 = *(v12 + 52);
    if (v39)
    {
      *(v4 + 13) = v39;
    }

    *(v12 + 52) = a2;
  }

LABEL_48:
  *(v4 + 15) = 1;
  return v4;
}

const char *sub_5A04(const char *result, char *__s2)
{
  if (__s2)
  {
    if (result && !strcmp(result, __s2))
    {
      return snprintf(qword_2B200, 0x800uLL, "line %d");
    }

    else
    {
      return snprintf(qword_2B200, 0x800uLL, "%s:%d");
    }
  }

  else
  {
    strcpy(qword_2B200, "source unknown");
  }

  return result;
}

BOOL sub_5A9C()
{
  v0 = __chkstk_darwin();
  v2 = v0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
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
  v26 = 0u;
  v41 = 0;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v10 = 0u;
  ++dword_2BA00;
  v9 = v0;
  if (v1)
  {
    v3 = (*v1 + 112);
    v4 = -1;
    do
    {
      v5 = *v3++;
      ++v4;
    }

    while (v5);
    if (v4 < 0x64)
    {
      v6 = strdup(v0);
      *(v3 - 1) = v6;
    }

    else
    {
      _lou_logMessage(30000, "Max number of source files (%i) reached", 100);
      v6 = 0;
    }

    v10[0] = v6;
  }

  DWORD2(v11) = 0;
  *&v11 = 0;
  v10[1] = fopen(v2, "rb");
  if (v10[1])
  {
    while (_lou_getALine(&v9))
    {
      if (!sub_5C70())
      {
        if (!dword_2A090)
        {
          sub_545C(&v9, "Rule could not be compiled");
        }

        break;
      }
    }

    fclose(v10[1]);
    sub_97BC(0);
    v7 = dword_2A090;
  }

  else
  {
    _lou_logMessage(40000, "Cannot open table '%s'", v2);
    v7 = ++dword_2A090;
  }

  return v7 == 0;
}

void **sub_5C70()
{
  v0 = __chkstk_darwin();
  v276 = v2;
  v277 = v1;
  v278 = 0;
  v279 = v3;
  v4 = v0;
  memset(v296, 0, 512);
  memset(v295, 0, 512);
  memset(v294, 0, 512);
  memset(v293, 0, 512);
  memset(v292, 0, 512);
  v5 = 1;
  memset(v291, 0, 512);
  v290 = 0;
  v289 = 0;
  while (2)
  {
    v6 = v5;
    if (!sub_9828(v4, v296, 0))
    {
      return (&dword_0 + 1);
    }

    v280 = v4;
    while (1)
    {
      v7 = 1;
      if (v296[1] == 35 || v296[1] == 60)
      {
        return v7;
      }

      v4 = v280;
      if (*(v280 + 24) == 1)
      {
        v8 = "ISO";
        v9 = 1;
        while (1)
        {
          v10 = *v8++;
          if (v296[v9] != v10)
          {
            break;
          }

          if (++v9 == 4)
          {
LABEL_41:
            if (v279)
            {
              sub_9994();
            }

            else
            {
                ;
              }
            }

            return (&dword_0 + 1);
          }
        }

        v11 = 0;
        while (v296[v11 + 1] == aUtf8[v11])
        {
          if (++v11 == 5)
          {
            goto LABEL_41;
          }
        }
      }

      v12 = sub_9FEC(v296);
      v13 = v12;
      if (v12 > 115)
      {
        break;
      }

      switch(v12)
      {
        case '6':
          if (v278)
          {
            v17 = "nofor";
LABEL_519:
            v274 = v17;
            v44 = "%s already specified.";
LABEL_520:
            v213 = v4;
LABEL_582:
            sub_545C(v213, v44, v274, v275);
            return 0;
          }

          v278 = 0x100000000;
LABEL_38:
          v16 = v280;
LABEL_34:
          if (!sub_9828(v16, v296, 0))
          {
            return (&dword_0 + 1);
          }

          break;
        case '7':
          if (HIDWORD(v278))
          {
            v17 = "noback";
            goto LABEL_519;
          }

          v278 = 1;
          goto LABEL_38;
        case '8':
        case '9':
        case ':':
        case ';':
        case '<':
          goto LABEL_23;
        case '=':
        case '>':
        case '?':
        case '@':
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'G':

          return sub_A1C4();
        case 'E':

          return sub_A490();
        case 'F':
          goto LABEL_55;
        case 'H':
          if (!v277)
          {
            return (&dword_0 + 1);
          }

          if (!sub_A95C() || !sub_AA14())
          {
            return 0;
          }

          if (LOWORD(v295[0]) == 1 && LOWORD(v294[0]) == 1)
          {
            sub_AAF0(v280, HIWORD(v295[0]), HIWORD(v294[0]), v277);
            return (&dword_0 + 1);
          }

          v44 = "Exactly one character and one cell are required.";
          goto LABEL_520;
        default:
          if (v12)
          {
            goto LABEL_23;
          }

          memset(v288, 0, 512);
          if (!sub_9828(v280, v296, "include file name") || !sub_32A4(v280, v288, v296))
          {
            return 0;
          }

          return sub_A06C(v280, v288);
      }
    }

    if (v12 != 117)
    {
      if (v12 == 116)
      {
        v44 = "Macro feature is disabled.";
        goto LABEL_520;
      }

LABEL_23:
      if (!v279)
      {
        return (&dword_0 + 1);
      }

      v14 = &v290;
      switch(v12)
      {
        case 1:
          sub_551C(v280, "The locale opcode is not implemented. Use the locale meta data instead.");
          return (&dword_0 + 1);
        case 2:
          LODWORD(v288[0]) = (*v279)[239];
          if (!sub_AC98())
          {
            return 0;
          }

          (*v279)[239] = v288[0];
          return (&dword_0 + 1);
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
          if ((v12 - 3) > 7)
          {
            v40 = v280;
            v20 = v279;
            if (!sub_9828(v280, v296, "attribute name"))
            {
              return 0;
            }

            v41 = *v279;
            if (!*(*v279 + 1))
            {
              if (!sub_B680())
              {
                return 0;
              }

              v41 = *v279;
            }

            v42 = sub_B7A4(v296, v41);
            if (!v42)
            {
              v42 = sub_B808(v280, &v296[1], v296[0], v41, 1);
              if (!v42)
              {
                return 0;
              }
            }

            v19 = v42[1];
            if (v19 > 0x100 || !v19 || v19 == 4)
            {
              v57 = *v279 + 398;
              v58 = -5;
              while (*v57 && *(v57 - 1) != v19)
              {
                v57 += 6;
                v59 = __CFADD__(v58++, 1);
                if (v59)
                {
                  v274 = (&dword_4 + 2);
                  v44 = "Max number of modes (%i) reached";
                  goto LABEL_467;
                }
              }

              v18 = v58 + 6;
            }

            else
            {
              if (v19 != 16)
              {
                v44 = "mode must be uppercase, digit, or a custom attribute name.";
                goto LABEL_467;
              }

              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
            v13 = v12 + 8;
            v19 = 16;
            v20 = v279;
          }

          v21 = *v20;
          v22 = &(*v20)[6 * v18];
          v23 = v18;
          if (!*(v22 + 1568))
          {
            *(v22 + 1552) = 0;
            *(v22 + 1560) = v19;
            *(v22 + 1568) = 1 << (v18 + 10);
            *(v22 + 1572) = v18 + 10;
          }

          v7 = 0;
          if (v13 <= 14)
          {
            if (v13 > 12)
            {
              if (v13 == 13)
              {
                LODWORD(v288[0]) = v21[9 * v18 + 587];
                if (!sub_AC98())
                {
                  return 0;
                }

                (*v20)[9 * v23 + 587] = v288[0];
              }

              else
              {
                LODWORD(v288[0]) = v21[9 * v18 + 583];
                if (!sub_AC98())
                {
                  return 0;
                }

                (*v279)[9 * v23 + 583] = v288[0];
              }
            }

            else
            {
              if (v13 != 11)
              {
                if (v13 != 12)
                {
                  return v7;
                }

                LODWORD(v288[0]) = v21[9 * v18 + 586];
                if (sub_AC98())
                {
                  (*v279)[9 * v23 + 586] = v288[0];
                  return (&dword_0 + 1);
                }

                return 0;
              }

              LODWORD(v288[0]) = v21[9 * v18 + 585];
              if (!sub_AC98())
              {
                return 0;
              }

              (*v20)[9 * v23 + 585] = v288[0];
            }

            return (&dword_0 + 1);
          }

          if (v13 <= 16)
          {
            if (v13 == 15)
            {
              LODWORD(v288[0]) = v21[9 * v18 + 584];
              if (!sub_AC98())
              {
                return 0;
              }

              (*v20)[9 * v23 + 584] = v288[0];
            }

            else
            {
              LODWORD(v288[0]) = v21[9 * v18 + 580];
              if (!sub_AC98())
              {
                return 0;
              }

              (*v279)[9 * v23 + 580] = v288[0];
            }

            return (&dword_0 + 1);
          }

          if (v13 != 17)
          {
            if (v13 == 18)
            {
              v7 = sub_BB78();
              (*v279)[9 * v23 + 588] = v7;
            }

            return v7;
          }

          LODWORD(v288[0]) = 0;
          v71 = v280;
          v72 = sub_B9C8();
          if (v72 == 2)
          {
            v214 = &(*v20)[9 * v23];
            if (*(v214 + 2324))
            {
              v44 = "Capital sign before last word already defined.";
              goto LABEL_587;
            }

            LODWORD(v288[0]) = *(v214 + 2328);
            if (sub_AC98())
            {
              (*v20)[9 * v23 + 582] = v288[0];
              return (&dword_0 + 1);
            }
          }

          else
          {
            if (v72 != 1)
            {
              v44 = "Invalid lastword indicator location.";
              goto LABEL_587;
            }

            v73 = &(*v20)[9 * v23];
            if (*(v73 + 2328))
            {
              v44 = "Capital sign after last word already defined.";
              goto LABEL_587;
            }

            LODWORD(v288[0]) = *(v73 + 2324);
            if (sub_AC98())
            {
              (*v20)[9 * v23 + 581] = v288[0];
              return (&dword_0 + 1);
            }
          }

          return 0;
        case 19:
          LODWORD(v288[0]) = (*v279)[240];
          if (!sub_AC98())
          {
            return 0;
          }

          (*v279)[240] = v288[0];
          return (&dword_0 + 1);
        case 20:
          v40 = v280;
          if (!sub_A95C())
          {
            return 0;
          }

          v139 = *v279;
          v140 = (*v279)[669];
          if ((v140 + LOWORD(v295[0])) > 64)
          {
            goto LABEL_301;
          }

          if (LOWORD(v295[0]))
          {
            v220 = 0;
            do
            {
              *(v139 + v140 + v220 + 1274) = *(v295 + v220 + 1);
              ++v220;
            }

            while (v220 < LOWORD(v295[0]));
            v139[669] = v140 + v220;
          }

          return (&dword_0 + 1);
        case 21:
          v40 = v280;
          if (!sub_A95C())
          {
            return 0;
          }

          v128 = *v279;
          v129 = (*v279)[798];
          if ((v129 + LOWORD(v295[0])) > 256)
          {
            v130 = 256;
            goto LABEL_314;
          }

          if (LOWORD(v295[0]))
          {
            v219 = 0;
            do
            {
              *(v128 + v129 + v219 + 1340) = *(v295 + v219 + 1);
              ++v219;
            }

            while (v219 < LOWORD(v295[0]));
            v128[798] = v129 + v219;
          }

          return (&dword_0 + 1);
        case 22:
          v40 = v280;
          if (!sub_A95C())
          {
            return 0;
          }

          v114 = *v279;
          v115 = (*v279)[831];
          if ((v115 + LOWORD(v295[0])) > 64)
          {
LABEL_301:
            v130 = 64;
            goto LABEL_314;
          }

          if (LOWORD(v295[0]))
          {
            v116 = 0;
            do
            {
              *(v114 + v115 + v116 + 1598) = *(v295 + v116 + 1);
              ++v116;
            }

            while (v116 < LOWORD(v295[0]));
            v114[831] = v115 + v116;
          }

          return (&dword_0 + 1);
        case 23:
          LODWORD(v288[0]) = (*v279)[241];
          if (!sub_AC98())
          {
            return 0;
          }

          (*v279)[241] = v288[0];
          return (&dword_0 + 1);
        case 24:
          LODWORD(v288[0]) = (*v279)[243];
          if (!sub_AC98())
          {
            return 0;
          }

          (*v279)[243] = v288[0];
          return (&dword_0 + 1);
        case 25:
          if (!sub_A95C())
          {
            return 0;
          }

          v163 = LOWORD(v295[0]);
          if (!LOWORD(v295[0]))
          {
            return (&dword_0 + 1);
          }

          v164 = 0;
          v165 = 0;
          v166 = *v279;
          while (1)
          {
            v167 = *(v295 + v164 + 1);
            v168 = v166[_lou_charHash(*(v295 + v164 + 1)) + 3402];
            if (!v168)
            {
              break;
            }

            while (1)
            {
              v169 = &v166[2 * v168 + 7904];
              if (*(v169 + 44) == v167)
              {
                break;
              }

              v168 = *(v169 + 12);
              if (!v168)
              {
                goto LABEL_474;
              }
            }

            *(v169 + 24) |= 0x800uLL;
            v166 = *v279;
            v7 = 1;
            (*v279)[237] = 1;
            v165 = ++v164 >= v163;
            if (v164 == v163)
            {
              return v7;
            }
          }

LABEL_474:
          v216 = _lou_showString(v295 + v164 + 1, 1u, 0);
          sub_545C(v280, "Numeric mode character undefined: %s", v216);
          return v165;
        case 26:
          if (!sub_A95C())
          {
            return 0;
          }

          v131 = LOWORD(v295[0]);
          if (!LOWORD(v295[0]))
          {
            return (&dword_0 + 1);
          }

          v132 = 0;
          v78 = 0;
          v133 = *v279;
          while (1)
          {
            v134 = *(v295 + v132 + 1);
            v135 = v133[_lou_charHash(*(v295 + v132 + 1)) + 3402];
            if (!v135)
            {
              break;
            }

            while (1)
            {
              v136 = &v133[2 * v135 + 7904];
              if (*(v136 + 44) == v134)
              {
                break;
              }

              v135 = *(v136 + 12);
              if (!v135)
              {
                goto LABEL_472;
              }
            }

            *(v136 + 24) |= 0x4000000uLL;
            v133 = *v279;
            v7 = 1;
            (*v279)[237] = 1;
            v78 = ++v132 >= v131;
            if (v132 == v131)
            {
              return v7;
            }
          }

LABEL_472:
          sub_545C(v280, "Midendnumeric mode character undefined");
          return v78;
        case 27:
          if (!sub_A95C())
          {
            return 0;
          }

          v157 = LOWORD(v295[0]);
          if (!LOWORD(v295[0]))
          {
            return (&dword_0 + 1);
          }

          v158 = 0;
          v78 = 0;
          v159 = *v279;
          while (1)
          {
            v160 = *(v295 + v158 + 1);
            v161 = v159[_lou_charHash(*(v295 + v158 + 1)) + 3402];
            if (!v161)
            {
              break;
            }

            while (1)
            {
              v162 = &v159[2 * v161 + 7904];
              if (*(v162 + 44) == v160)
              {
                break;
              }

              v161 = *(v162 + 12);
              if (!v161)
              {
                goto LABEL_473;
              }
            }

            *(v162 + 24) |= 0x1000uLL;
            v159 = *v279;
            v7 = 1;
            (*v279)[237] = 1;
            v78 = ++v158 >= v157;
            if (v158 == v157)
            {
              return v7;
            }
          }

LABEL_473:
          sub_545C(v280, "Numeric no contraction character undefined");
          return v78;
        case 28:
          if (!sub_A95C())
          {
            return 0;
          }

          v170 = LOWORD(v295[0]);
          if (!LOWORD(v295[0]))
          {
            return (&dword_0 + 1);
          }

          v171 = 0;
          v78 = 0;
          v172 = *v279;
          while (1)
          {
            v173 = *(v295 + v171 + 1);
            v174 = v172[_lou_charHash(*(v295 + v171 + 1)) + 3402];
            if (!v174)
            {
              break;
            }

            while (1)
            {
              v175 = &v172[2 * v174 + 7904];
              if (*(v175 + 44) == v173)
              {
                break;
              }

              v174 = *(v175 + 12);
              if (!v174)
              {
                goto LABEL_475;
              }
            }

            *(v175 + 24) |= 0x2000uLL;
            v172 = *v279;
            v7 = 1;
            (*v279)[236] = 1;
            v78 = ++v171 >= v170;
            if (v171 == v170)
            {
              return v7;
            }
          }

LABEL_475:
          sub_545C(v280, "Sequence delimiter character undefined");
          return v78;
        case 29:
          if (!sub_A95C())
          {
            return 0;
          }

          v176 = LOWORD(v295[0]);
          if (!LOWORD(v295[0]))
          {
            return (&dword_0 + 1);
          }

          v177 = 0;
          v78 = 0;
          while (1)
          {
            v178 = *(v295 + v177 + 1);
            v179 = *v279;
            v180 = v179[_lou_charHash(*(v295 + v177 + 1)) + 3402];
            if (!v180)
            {
              break;
            }

            while (1)
            {
              v181 = &v179[2 * v180 + 7904];
              if (*(v181 + 44) == v178)
              {
                break;
              }

              v180 = *(v181 + 12);
              if (!v180)
              {
                goto LABEL_476;
              }
            }

            *(v181 + 24) |= 0x4000uLL;
            ++v177;
            v7 = 1;
            v78 = v177 >= v176;
            if (v177 == v176)
            {
              return v7;
            }
          }

LABEL_476:
          v215 = "Sequence before character undefined";
          goto LABEL_477;
        case 30:
          if (!sub_A95C())
          {
            return 0;
          }

          v76 = LOWORD(v295[0]);
          if (!LOWORD(v295[0]))
          {
            return (&dword_0 + 1);
          }

          v77 = 0;
          v78 = 0;
          while (1)
          {
            v79 = *(v295 + v77 + 1);
            v80 = *v279;
            v81 = v80[_lou_charHash(*(v295 + v77 + 1)) + 3402];
            if (!v81)
            {
              break;
            }

            while (1)
            {
              v82 = &v80[2 * v81 + 7904];
              if (*(v82 + 44) == v79)
              {
                break;
              }

              v81 = *(v82 + 12);
              if (!v81)
              {
                goto LABEL_471;
              }
            }

            *(v82 + 24) |= 0x8000uLL;
            ++v77;
            v7 = 1;
            v78 = v77 >= v76;
            if (v77 == v76)
            {
              return v7;
            }
          }

LABEL_471:
          v215 = "Sequence after character undefined";
LABEL_477:
          v187 = v280;
          goto LABEL_479;
        case 31:
          v40 = v280;
          if (!sub_A95C())
          {
            return 0;
          }

          v125 = *v279;
          v126 = (*v279)[424];
          if (v126 + LOWORD(v295[0]) > 127)
          {
            goto LABEL_313;
          }

          if (LOWORD(v295[0]))
          {
            v127 = 0;
            do
            {
              *(v125 + v126 + v127 + 488) = *(v295 + v127 + 1);
              ++v127;
            }

            while (v127 < LOWORD(v295[0]));
            v126 += v127;
          }

          v125[424] = v126 + 1;
          *(v125 + v126 + 488) = 0;
          return (&dword_0 + 1);
        case 32:
          v40 = v280;
          if (!sub_A95C())
          {
            return 0;
          }

          if (LOWORD(v295[0]) <= 0x7Fu)
          {
            v221 = *v279;
            if (LOWORD(v295[0]))
            {
              v222 = 0;
              do
              {
                *(v221 + v222 + 850) = *(v295 + v222 + 1);
                ++v222;
                v223 = LOWORD(v295[0]);
              }

              while (v222 < LOWORD(v295[0]));
            }

            else
            {
              v223 = 0;
            }

            *(v221 + v223 + 850) = 0;
            v221[489] = LOWORD(v295[0]);
            return (&dword_0 + 1);
          }

LABEL_313:
          v130 = 128;
LABEL_314:
          v274 = v130;
          v44 = "More than %d characters";
          goto LABEL_467;
        case 33:
          v104 = v280;
          if (!sub_9828(v280, v291, "emphasis class"))
          {
            v44 = "emphclass must be followed by a valid class name.";
            goto LABEL_611;
          }

          v117 = v291[0];
          v118 = malloc_type_malloc(v291[0] + 1, 0x100004077774924uLL);
          v119 = v118;
          if (v117)
          {
            v120 = &v291[1];
            v121 = v117;
            v122 = v118;
            v123 = v279;
            do
            {
              v124 = *v120;
              v120 += 2;
              *v122++ = v124;
              --v121;
            }

            while (v121);
          }

          else
          {
            v123 = v279;
          }

          v227 = 0;
          v228 = 0;
          v118[v117] = 0;
          v229 = (*v123 + 308);
          while (2)
          {
            v230 = *(v229 + 8 * v228);
            if (v230)
            {
              if (strcmp(v119, v230))
              {
                ++v228;
                v227 += 6;
                if (v227 == 60)
                {
                  goto LABEL_515;
                }

                continue;
              }

              _lou_logMessage(10000, "Duplicate emphasis class: %s", v119);
              free(v119);
              return (&dword_0 + 1);
            }

            break;
          }

          if (v228 > 1)
          {
            if (v228 == 2)
            {
              if (strcmp(v119, "bold"))
              {
                _lou_logMessage(40000, "Third emphasis class must be bold but got %s");
                goto LABEL_516;
              }
            }

            else if (v228 == 10)
            {
LABEL_515:
              _lou_logMessage(40000, "Max number of emphasis classes (%i) reached");
LABEL_516:
              ++dword_2A090;
              v70 = v119;
              goto LABEL_169;
            }
          }

          else if (v228)
          {
            if (v228 == 1 && strcmp(v119, "underline"))
            {
              _lou_logMessage(40000, "Second emphasis class must be underline but got %s");
              goto LABEL_516;
            }
          }

          else if (strcmp(v119, "italic"))
          {
            _lou_logMessage(40000, "First emphasis class must be italic but got %s");
            goto LABEL_516;
          }

          *(v229 + 8 * v228) = v119;
          v255 = &(*v123)[v227];
          v7 = 1;
          *(v255 + 656) = 1 << v228;
          *(v255 + 165) = 0;
          v255[332] = 1 << v228;
          *(v255 + 666) = v228;
          return v7;
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 43:
        case 44:
          if (!sub_9828(v280, v296, "emphasis class") || !sub_32A4(v280, v291, v296))
          {
            return 0;
          }

          v32 = v291[0];
          v33 = malloc_type_malloc(v291[0] + 1, 0x100004077774924uLL);
          v34 = v33;
          if (v32)
          {
            v35 = &v291[1];
            v36 = v32;
            v37 = v33;
            v38 = v279;
            do
            {
              v39 = *v35;
              v35 += 2;
              *v37++ = v39;
              --v36;
            }

            while (v36);
          }

          else
          {
            v38 = v279;
          }

          v62 = 0;
          v33[v32] = 0;
          v63 = *v38;
          v64 = (*v38 + 308);
          v65 = 3328;
          v66 = 8468;
          while (1)
          {
            v67 = *(v64 + 8 * v62);
            if (!v67 || !strcmp(v34, v67))
            {
              break;
            }

            ++v62;
            v65 += 514;
            v66 += 514;
            if (v62 == 10)
            {
              goto LABEL_168;
            }
          }

          if (!*(v64 + 8 * v62))
          {
LABEL_168:
            _lou_logMessage(40000, "Emphasis class %s not declared", v34);
            ++dword_2A090;
            v70 = v34;
LABEL_169:
            free(v70);
            return 0;
          }

          v7 = 0;
          if (v13 <= 38)
          {
            if (v13 > 35)
            {
              if (v13 != 36)
              {
                if (v13 == 37)
                {
                  v235 = &v63[9 * v62 + 490];
                  if (v235[6] || *v235)
                  {
                    v69 = "Cannot define emphasis for both no context and word or phrase context, i.e. cannot have both begemph and begemphword or begemphphrase.";
                    goto LABEL_547;
                  }

                  LODWORD(v288[0]) = v63[9 * v62 + 493];
                  if (!sub_AC98())
                  {
                    goto LABEL_593;
                  }

                  (*v279)[9 * v62 + 493] = v288[0];
                }

                else
                {
                  v68 = &v63[9 * v62 + 490];
                  if (v68[7] || v68[1] || v68[2])
                  {
                    v69 = "Cannot define emphasis for both no context and word or phrase context, i.e. cannot have both endemph and endemphword or endemphphrase.";
LABEL_547:
                    v236 = v280;
LABEL_592:
                    sub_545C(v236, v69, v274);
                    goto LABEL_593;
                  }

                  LODWORD(v288[0]) = v63[9 * v62 + 494];
                  if (!sub_AC98())
                  {
                    goto LABEL_593;
                  }

                  (*v279)[9 * v62 + 494] = v288[0];
                }

                goto LABEL_338;
              }

              LODWORD(v288[0]) = v63[9 * v62 + 497];
              if (sub_AC98())
              {
                (*v38)[9 * v62 + 497] = v288[0];
                goto LABEL_338;
              }

LABEL_593:
              v7 = 0;
              goto LABEL_594;
            }

            if (v13 == 34)
            {
              LODWORD(v288[0]) = v63[9 * v62 + 495];
              if (!sub_AC98())
              {
                goto LABEL_593;
              }

              (*v38)[9 * v62 + 495] = v288[0];
            }

            else
            {
              if (v13 != 35)
              {
                goto LABEL_594;
              }

              LODWORD(v288[0]) = v63[9 * v62 + 496];
              if (!sub_AC98())
              {
                goto LABEL_593;
              }

              (*v279)[9 * v62 + 496] = v288[0];
            }

LABEL_338:
            v7 = 1;
LABEL_594:
            free(v34);
            return v7;
          }

          if (v13 <= 40)
          {
            if (v13 == 39)
            {
              LODWORD(v288[0]) = v63[9 * v62 + 490];
              if (!sub_AC98())
              {
                goto LABEL_593;
              }

              (*v38)[9 * v62 + 490] = v288[0];
              goto LABEL_338;
            }

            v203 = v280;
            v217 = sub_B9C8();
            if (v217 == 2)
            {
              v247 = (*v279 + 490);
              if (!*(v247 + 36 * v62 + 4))
              {
                LODWORD(v288[0]) = *(v247 + 36 * v62 + 8);
                if (!sub_AC98())
                {
                  goto LABEL_593;
                }

                (*v279)[9 * v62 + 492] = v288[0];
                goto LABEL_338;
              }

              v69 = "last word before already defined.";
            }

            else if (v217 == 1)
            {
              v218 = (*v279 + 490);
              if (!*(v218 + 36 * v62 + 8))
              {
                LODWORD(v288[0]) = *(v218 + 36 * v62 + 4);
                if (!sub_AC98())
                {
                  goto LABEL_593;
                }

                (*v279)[9 * v62 + 491] = v288[0];
                goto LABEL_338;
              }

              v69 = "last word after already defined.";
            }

            else
            {
              v69 = "Invalid lastword indicator location.";
            }
          }

          else
          {
            switch(v13)
            {
              case ')':
                v234 = sub_BB78();
                (*v38)[9 * v62 + 498] = v234;
                v7 = v234 != 0;
                goto LABEL_594;
              case '+':
                v203 = v280;
                if (!sub_A95C())
                {
                  goto LABEL_593;
                }

                v237 = 0;
                v238 = *v38 + 514 * v62 + 3328;
                do
                {
                  if (!*(*v38 + 2 * v237 + v65))
                  {
                    break;
                  }

                  ++v237;
                }

                while (v237 != 256);
                if (v237 + LOWORD(v295[0]) <= 0x100)
                {
                  if (LOWORD(v295[0]))
                  {
                    v248 = 0;
                    v249 = v237;
                    while (1)
                    {
                      v250 = *(v295 + v248 + 1);
                      v251 = *v279;
                      v252 = v251[_lou_charHash(*(v295 + v248 + 1)) + 3402];
                      if (!v252)
                      {
                        break;
                      }

                      while (1)
                      {
                        v253 = &v251[2 * v252 + 7904];
                        if (*(v253 + 44) == v250)
                        {
                          break;
                        }

                        v252 = *(v253 + 12);
                        if (!v252)
                        {
                          goto LABEL_613;
                        }
                      }

                      *(v238 + 2 * v249++) = v250;
                      ++v248;
                      v7 = 1;
                      if (v248 >= LOWORD(v295[0]))
                      {
                        goto LABEL_594;
                      }
                    }

LABEL_613:
                    v69 = "Emphasis mode character undefined";
                    goto LABEL_547;
                  }

                  goto LABEL_338;
                }

                break;
              case ',':
                v203 = v280;
                if (!sub_A95C())
                {
                  goto LABEL_593;
                }

                v204 = 0;
                v205 = *v279 + 514 * v62 + 8468;
                do
                {
                  if (!*(*v279 + 2 * v204 + v66))
                  {
                    break;
                  }

                  ++v204;
                }

                while (v204 != 256);
                if (v204 + LOWORD(v295[0]) <= 0x100)
                {
                  if (LOWORD(v295[0]))
                  {
                    v206 = 0;
                    v207 = v204;
                    while (1)
                    {
                      v208 = *(v295 + v206 + 1);
                      v209 = *v279;
                      v210 = v209[_lou_charHash(*(v295 + v206 + 1)) + 3402];
                      if (!v210)
                      {
                        break;
                      }

                      while (1)
                      {
                        v211 = &v209[2 * v210 + 7904];
                        if (*(v211 + 44) == v208)
                        {
                          break;
                        }

                        v210 = *(v211 + 12);
                        if (!v210)
                        {
                          goto LABEL_612;
                        }
                      }

                      *(v205 + 2 * v207++) = v208;
                      ++v206;
                      v7 = 1;
                      if (v206 >= LOWORD(v295[0]))
                      {
                        goto LABEL_594;
                      }
                    }

LABEL_612:
                    v69 = "Character undefined";
                    goto LABEL_547;
                  }

                  goto LABEL_338;
                }

                break;
              default:
                goto LABEL_594;
            }

            v274 = (&stru_B8 + 72);
            v69 = "More than %d characters";
          }

          v236 = v203;
          goto LABEL_592;
        case 42:
          if (!sub_A95C())
          {
            return 0;
          }

          v182 = LOWORD(v295[0]);
          if (!LOWORD(v295[0]))
          {
            return (&dword_0 + 1);
          }

          v183 = 0;
          v78 = 0;
          v184 = *v279;
          while (1)
          {
            v185 = *(v295 + v183 + 1);
            v186 = v184[_lou_charHash(*(v295 + v183 + 1)) + 3402];
            v187 = v280;
            if (!v186)
            {
              break;
            }

            while (1)
            {
              v188 = &v184[2 * v186 + 7904];
              if (*(v188 + 44) == v185)
              {
                break;
              }

              v186 = *(v188 + 12);
              if (!v186)
              {
                goto LABEL_478;
              }
            }

            *(v188 + 24) |= 0x200uLL;
            v184 = *v279;
            v7 = 1;
            (*v279)[238] = 1;
            v78 = ++v183 >= v182;
            if (v183 == v182)
            {
              return v7;
            }
          }

LABEL_478:
          v215 = "Capital mode character undefined";
LABEL_479:
          sub_545C(v187, v215);
          return v78;
        case 45:
          LODWORD(v288[0]) = (*v279)[634];
          if (!sub_AC98())
          {
            return 0;
          }

          (*v279)[634] = v288[0];
          return (&dword_0 + 1);
        case 46:
          LODWORD(v288[0]) = (*v279)[635];
          if (!sub_AC98())
          {
            return 0;
          }

          (*v279)[635] = v288[0];
          return (&dword_0 + 1);
        case 47:
          LODWORD(v288[0]) = (*v279)[242];
          if (!sub_AC98())
          {
            return 0;
          }

          (*v279)[242] = v288[0];
          return (&dword_0 + 1);
        case 48:
          LOWORD(v295[0]) = 0;
          v71 = v280;
          if (!sub_9828(v280, v296, "multiple braille indicators") || !sub_3860(v280, v293, v296))
          {
            return 0;
          }

          while (2)
          {
            if (!sub_9828(v280, v296, "multind opcodes"))
            {
              return sub_AEDC(v280, 48, v295, v293, v290, v289, 0, 0, SHIDWORD(v278), v278, v279);
            }

            v137 = sub_9FEC(v296);
            if (v137 == 117)
            {
              v274 = _lou_showString(&v296[1], v296[0], 0);
              v44 = "opcode %s not defined.";
            }

            else
            {
              if ((v137 - 3) < 0x2D)
              {
                v138 = LOWORD(v295[0]);
                ++LOWORD(v295[0]);
                *(v295 + v138 + 1) = v137;
                if (*(v280 + 40) >= *(v280 + 36))
                {
                  return sub_AEDC(v280, 48, v295, v293, v290, v289, 0, 0, SHIDWORD(v278), v278, v279);
                }

                continue;
              }

              v44 = "Not a braille indicator opcode.";
            }

            break;
          }

LABEL_587:
          v213 = v71;
          goto LABEL_582;
        case 49:
        case 50:
          v40 = v280;
          if (!sub_A95C())
          {
            return 0;
          }

          if (LOWORD(v295[0]) != 1)
          {
            v44 = "first operand must be 1 character";
            goto LABEL_467;
          }

          if (v278)
          {
            sub_551C(v280, "nofor and noback not allowed on comp6 rules");
          }

          if (sub_AA14())
          {
            return sub_AEDC(v280, v13, v295, v294, v290, v289, v288, 0, SHIDWORD(v278), v278, v279);
          }

          return 0;
        case 51:
          sub_551C(v280, "class is deprecated, use attribute instead");
          goto LABEL_248;
        case 52:
          goto LABEL_26;
        case 53:
          v14 = &v289;
LABEL_26:
          if (!*(*v279 + 1) && !sub_B680() || !sub_9828(v280, v296, "attribute name"))
          {
            return 0;
          }

          v15 = sub_B7A4(v296, *v279);
          if (!v15)
          {
            v44 = "attribute not defined";
            goto LABEL_581;
          }

          *v14 |= v15[1];
LABEL_33:
          v16 = v280;
          goto LABEL_34;
        case 56:
          v289 |= 0x2000000uLL;
          goto LABEL_33;
        case 57:
          v290 |= 0x2000000uLL;
          goto LABEL_33;
        case 58:
        case 59:
        case 60:

          return sub_D228();
        case 73:
          if (sub_A95C())
          {
            if (*(v280 + 40) >= *(v280 + 36) || (sub_AE24(), HIWORD(v294[0]) == 35))
            {
              v294[0] = 0;
            }

            else if (HIWORD(v294[0]) == 92 && LOWORD(v294[1]) == 35)
            {
              --LOWORD(v294[0]);
              __memmove_chk();
            }
          }

          if (LOWORD(v295[0]))
          {
            v189 = 1;
            do
            {
              sub_BCE0(v280, *(v295 + v189), v279, 0, (*v279)[230]);
              v59 = v189++ >= LOWORD(v295[0]);
            }

            while (!v59);
          }

          if (LOWORD(v294[0]))
          {
            v190 = 1;
            do
            {
              sub_BCE0(v280, *(v294 + v190), v279, 0, (*v279)[230]);
              v59 = v190++ >= LOWORD(v294[0]);
            }

            while (!v59);
          }

          return sub_AEDC(v280, 73, v295, v294, v290, v289, 0, 0, SHIDWORD(v278), v278, v279);
        case 74:
          goto LABEL_403;
        case 75:
          (*v279)[234] = 1;
          goto LABEL_403;
        case 76:
          v74 = *v279;
          if ((*v279)[233] > 1)
          {
            goto LABEL_403;
          }

          v75 = 2;
          goto LABEL_402;
        case 77:
          v74 = *v279;
          if ((*v279)[233] > 2)
          {
            goto LABEL_403;
          }

          v75 = 3;
          goto LABEL_402;
        case 78:
          v74 = *v279;
          if ((*v279)[233] > 3)
          {
            goto LABEL_403;
          }

          v75 = 4;
LABEL_402:
          v74[233] = v75;
LABEL_403:
          if (!v278)
          {
            v274 = "nofor";
            v275 = "noback";
            v44 = "%s or %s must be specified.";
            goto LABEL_581;
          }

          return sub_BDEC();
        case 79:
        case 80:
        case 83:
        case 90:
        case 91:
        case 92:
        case 93:
        case 94:
        case 95:
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
          goto LABEL_193;
        case 81:
          if (!sub_A95C())
          {
            return 0;
          }

          memset(v283, 0, 512);
          if (!sub_9828(v280, v283, "dots,dots operand"))
          {
            return 0;
          }

          v141 = LOWORD(v283[0]);
          if (LOWORD(v283[0]) < 2u)
          {
            return 0;
          }

          v142 = 0;
          v143 = LOWORD(v283[0]) - 1;
          v144 = 2 * LOWORD(v283[0]) + 0x1FFFFFFFCLL;
          v145 = 4;
          while (*(v283 + v142 + 1) != 44)
          {
            v7 = 0;
            ++v142;
            v144 -= 2;
            v145 += 2;
            if (v143 == v142)
            {
              return v7;
            }
          }

          LOWORD(v283[0]) = v142;
          v239 = v280;
          if (!sub_3860(v280, v294, v283))
          {
            return 0;
          }

          v240 = LOWORD(v294[0]);
          ++LOWORD(v294[0]);
          *(v294 + v240 + 1) = 44;
          if (v141 - 2 == v142 && *(v283 + v143 + 1) == 61)
          {
            v241 = LOWORD(v295[0]);
            v242 = v279;
            if (LOWORD(v295[0]))
            {
              v51 = 0;
              while (1)
              {
                v243 = *(v295 + v51 + 1);
                v244 = *v242;
                v245 = v244[_lou_charHash(*(v295 + v51 + 1)) + 3402];
                if (!v245)
                {
                  break;
                }

                while (1)
                {
                  v246 = &v244[2 * v245 + 7904];
                  if (*(v246 + 44) == v243)
                  {
                    break;
                  }

                  v245 = *(v246 + 12);
                  if (!v245)
                  {
                    goto LABEL_580;
                  }
                }

                if (!*(v246 + 16) && !*(v246 + 48))
                {
                  break;
                }

                ++v51;
                v242 = v279;
                v239 = v280;
                if (v51 == v241)
                {
                  return sub_AEDC(v239, 81, v295, v294, v290, v289, 0, 0, SHIDWORD(v278), v278, v242);
                }
              }

LABEL_580:
              v274 = _lou_showString(v295 + v51 + 1, 1u, 0);
              v44 = "Character %s is not defined";
LABEL_581:
              v213 = v280;
              goto LABEL_582;
            }
          }

          else
          {
            memset(v288 + 2, 0, 510);
            memset(v297, 0, 512);
            if (v142 + 1 >= v141)
            {
              v254 = 0;
            }

            else
            {
              v254 = ~v142 + v141;
              memcpy(v288 + 2, v283 + v145, (v144 & 0x1FFFFFFFELL) + 2);
            }

            LOWORD(v288[0]) = v254;
            v239 = v280;
            if (sub_3860(v280, v297, v288))
            {
              v256 = v297[0];
              v257 = LOWORD(v294[0]);
              if (v297[0])
              {
                v258 = &v297[1];
                do
                {
                  v259 = *v258++;
                  v260 = v257 + 1;
                  *(v294 + v257++ + 1) = v259;
                  --v256;
                }

                while (v256);
              }

              else
              {
                v260 = v294[0];
              }

              LOWORD(v294[0]) = v260;
              v239 = v280;
            }

            v242 = v279;
          }

          return sub_AEDC(v239, 81, v295, v294, v290, v289, 0, 0, SHIDWORD(v278), v278, v242);
        case 82:
          LODWORD(v288[0]) = 0;
          v295[0] = 6356993;
          if (!sub_AEDC(v280, 82, v295, 0, v290, v289, v288, 0, SHIDWORD(v278), v278, v279))
          {
            return 0;
          }

          (*v279)[232] = v288[0];
          return (&dword_0 + 1);
        case 84:
          v104 = v280;
          if (!sub_A95C())
          {
            return 0;
          }

          if (HIWORD(v295[0]) != 64)
          {
            v44 = "The operand must begin with an at sign (@)";
            goto LABEL_611;
          }

          v191 = v295[0];
          if (LOWORD(v295[0]) >= 2uLL)
          {
            memcpy(&v292[1], &v295[1], (2 * LOWORD(v295[0]) + 0x1FFFFFFFELL) & 0x1FFFFFFFELL);
          }

          v292[0] = v191 - 1;
          if (sub_3860(v280, v294, v292))
          {
            return sub_AEDC(v280, 84, v295, v294, v289, v290, 0, 0, SHIDWORD(v278), v278, v279);
          }

          return 0;
        case 85:
          v5 = 0;
          v4 = v280;
          if (v6)
          {
            continue;
          }

          v17 = "nocross";
          goto LABEL_519;
        case 86:
          (*v279)[235] = 1;
LABEL_193:
          v83 = v280;
          if (!sub_A95C() || !sub_AA14())
          {
            return 0;
          }

          if (LOWORD(v294[0]))
          {
            goto LABEL_196;
          }

          v85 = LOWORD(v295[0]);
          if (!LOWORD(v295[0]))
          {
            goto LABEL_196;
          }

          v51 = 0;
          while (1)
          {
            v86 = *(v295 + v51 + 1);
            v87 = *v279;
            v88 = v87[_lou_charHash(*(v295 + v51 + 1)) + 3402];
            if (!v88)
            {
              goto LABEL_580;
            }

            while (1)
            {
              v89 = &v87[2 * v88 + 7904];
              if (*(v89 + 44) == v86)
              {
                break;
              }

              v88 = *(v89 + 12);
              if (!v88)
              {
                goto LABEL_580;
              }
            }

            if (!*(v89 + 16) && !*(v89 + 48))
            {
              goto LABEL_580;
            }

            ++v51;
            v83 = v280;
            if (v51 == v85)
            {
LABEL_196:
              v284 = 0;
              v84 = sub_AEDC(v83, v13, v295, v294, v290, v289, 0, &v284, SHIDWORD(v278), v278, v279);
              v7 = v84 != 0;
              if (!((v84 == 0) | v6 & 1))
              {
                v7 = 1;
                *(v284 + 48) = 1;
              }

              return v7;
            }
          }

        case 87:
        case 88:
        case 89:
        case 96:
          if (!sub_A95C())
          {
            return 0;
          }

          v50 = LOWORD(v295[0]);
          if (!LOWORD(v295[0]))
          {
            return sub_AEDC(v280, v13, v295, 0, v290, v289, 0, 0, SHIDWORD(v278), v278, v279);
          }

          v51 = 0;
          while (1)
          {
            v52 = *(v295 + v51 + 1);
            v53 = *v279;
            v54 = v53[_lou_charHash(*(v295 + v51 + 1)) + 3402];
            if (!v54)
            {
              goto LABEL_580;
            }

            while (1)
            {
              v55 = &v53[2 * v54 + 7904];
              if (*(v55 + 44) == v52)
              {
                break;
              }

              v54 = *(v55 + 12);
              if (!v54)
              {
                goto LABEL_580;
              }
            }

            if (!*(v55 + 16) && !*(v55 + 48))
            {
              goto LABEL_580;
            }

            if (++v51 == v50)
            {
              return sub_AEDC(v280, v13, v295, 0, v290, v289, 0, 0, SHIDWORD(v278), v278, v279);
            }
          }

        case 109:
        case 110:
          v40 = v280;
          if (!sub_A95C() || !sub_AA14())
          {
            return 0;
          }

          if (LOWORD(v295[0]) == 1 && LOWORD(v294[0]))
          {
            return sub_AEDC(v280, v13, v295, v294, v290, v289, 0, 0, SHIDWORD(v278), v278, v279);
          }

          v44 = "One Unicode character and at least one cell are required.";
LABEL_467:
          v213 = v40;
          goto LABEL_582;
        case 112:
          v287 = 0;
          v286 = 0;
          memset(v288, 0, 512);
          memset(v297, 0, 512);
          v285 = 0;
          v146 = malloc_type_malloc(0xD890uLL, 0x1000040BDFB0063uLL);
          v34 = v146;
          if (!v146)
          {
            _lou_outOfMemory();
          }

          memset(v146, 255, 0xD890uLL);
          sub_AE24();
          sub_A95C();
          sub_AE24();
          sub_AA14();
          if (!sub_AEDC(v280, 112, v295, v294, v290, v289, &v286, &v287, 1, v278, v279))
          {
            goto LABEL_593;
          }

          v147 = LOWORD(v288[0]) == 1 && WORD1(v288[0]) == 45;
          v148 = v147 ? 0 : LOWORD(v288[0]);
          v149 = _lou_pattern_compile(v288 + 2, v148, v34 + 1, 13841, *v279, v280);
          if (!v149)
          {
            goto LABEL_593;
          }

          v150 = v149 + 1;
          *v34 = v149 + 1;
          _lou_pattern_reverse((v34 + 2));
          v151 = v297[0] == 1 && v297[1] == 45;
          v152 = v151 ? 0 : v297[0];
          v153 = _lou_pattern_compile(&v297[1], v152, &v34[2 * v150], 13841, *v279, v280);
          if (!v153)
          {
            goto LABEL_593;
          }

          v154 = v153 + v150;
          v155 = 2 * v154;
          sub_B58C(v280, &v285, 2 * v154, v279);
          v156 = (*v279 + 7904);
          v287 = v156 + 8 * v286;
          v101 = (v156 + 8 * v285);
          v102 = v34;
          v103 = v155;
          goto LABEL_337;
        case 113:
          v287 = 0;
          v286 = 0;
          memset(v288, 0, 512);
          memset(v297, 0, 512);
          v285 = 0;
          v90 = malloc_type_malloc(0xD890uLL, 0x1000040BDFB0063uLL);
          v34 = v90;
          if (!v90)
          {
            _lou_outOfMemory();
          }

          memset(v90, 255, 0xD890uLL);
          sub_AE24();
          sub_A95C();
          sub_AE24();
          sub_AA14();
          if (!sub_AEDC(v280, 113, v295, v294, 0, 0, &v286, &v287, SHIDWORD(v278), 1, v279))
          {
            goto LABEL_593;
          }

          v91 = LOWORD(v288[0]) == 1 && WORD1(v288[0]) == 45;
          v92 = v91 ? 0 : LOWORD(v288[0]);
          v93 = _lou_pattern_compile(v288 + 2, v92, v34 + 1, 13841, *v279, v280);
          if (!v93)
          {
            goto LABEL_593;
          }

          v94 = v93 + 1;
          *v34 = v93 + 1;
          _lou_pattern_reverse((v34 + 2));
          v95 = v297[0] == 1 && v297[1] == 45;
          v96 = v95 ? 0 : v297[0];
          v97 = _lou_pattern_compile(&v297[1], v96, &v34[2 * v94], 13841, *v279, v280);
          if (!v97)
          {
            goto LABEL_593;
          }

          v98 = v97 + v94;
          v99 = 2 * v98;
          sub_B58C(v280, &v285, 2 * v98, v279);
          v100 = (*v279 + 7904);
          v287 = v100 + 8 * v286;
          v101 = (v100 + 8 * v285);
          v102 = v34;
          v103 = v99;
LABEL_337:
          memcpy(v101, v102, v103);
          *(v287 + 40) = v285;
          goto LABEL_338;
        case 114:
LABEL_248:
          if (v278)
          {
            sub_551C(v280, "nofor and noback not allowed before class/attribute");
          }

          v111 = v279;
          if (v13 == 51)
          {
            v112 = *v279;
            if ((*v279)[26] != 1)
            {
              v113 = 2;
LABEL_454:
              v112[26] = v113;
              if (!sub_9828(v280, v296, "attribute name"))
              {
                v274 = "attribute name";
                v44 = "Expected %s";
                goto LABEL_464;
              }

              if (!*(*v279 + 1) && !sub_B680())
              {
                return 0;
              }

              v212 = v296[1] - 48;
              if (v212 >= 0xA)
              {
                v212 = -1;
              }

              if ((v212 & 0x80000000) != 0)
              {
                v224 = *v279;
                v225 = sub_B7A4(v296, *v279);
                if (!v225)
                {
                  v225 = sub_B808(v280, &v296[1], v296[0], v224, 1);
                  if (!v225)
                  {
                    return 0;
                  }
                }

                v226 = v225[1];
                if (v226 == 32 || v226 == 16)
                {
                  v226 |= 2uLL;
                }
              }

              else
              {
                if (v13 == 51)
                {
                  v44 = "Invalid class name: may not contain digits, use attribute instead of class";
                  goto LABEL_464;
                }

                if (v212 > 7 || v296[0] >= 2u)
                {
                  v44 = "Invalid attribute name: must be a digit between 0 and 7 or a word containing only letters";
                  goto LABEL_464;
                }

                v232 = *v279;
                v233 = (*v279 + 10);
                v226 = *(v233 + 8 * v212);
                if (!v226)
                {
                  v226 = *(v232 + 3);
                  if (v226 <= 0x800000)
                  {
                    *(v232 + 3) = 2 * v226;
                  }

                  else
                  {
                    v226 = 0;
                  }

                  *(v233 + 8 * v212) = v226;
                  v111 = v279;
                }
              }

              memset(v288, 0, 512);
              if (!sub_AE24())
              {
                return 0;
              }

              v261 = LOWORD(v288[0]);
              if (LOWORD(v288[0]))
              {
                v262 = 0;
                do
                {
                  v263 = sub_BCE0(v280, *(v288 + v262 + 1), v111, 0, *(*v111 + 920));
                  *(v263 + 24) |= v226;
                  v264 = *(v263 + 48);
                  if (v264)
                  {
                    v263 = *v111 + 8 * v264 + 31616;
                  }

                  v265 = *(v263 + 16);
                  if (v265)
                  {
                    v267 = (*v279 + 7904);
                    v268 = v267 + 8 * v265;
                    if (*(v268 + 52) == 1)
                    {
                      v269 = v268 + 2 * *(v268 + 50);
                      v270 = *(v269 + 54);
                      v266 = *v279;
                      v271 = v266[_lou_charHash(*(v269 + 54)) + 4525];
                      if (v271)
                      {
                        while (1)
                        {
                          v272 = v267 + 8 * v271;
                          if (*(v272 + 44) == v270)
                          {
                            break;
                          }

                          v271 = *(v272 + 12);
                          if (!v271)
                          {
                            goto LABEL_636;
                          }
                        }

                        *(v272 + 24) |= v226;
                      }
                    }
                  }

LABEL_636:
                  ++v262;
                  v111 = v279;
                }

                while (v262 != v261);
              }

              v273 = *v111;
LABEL_638:
              ++v273[230];
              return (&dword_0 + 1);
            }
          }

          else
          {
            v112 = *v279;
            if (v13 != 114 || v112[26] != 2)
            {
              v113 = 1;
              goto LABEL_454;
            }
          }

          v44 = "attribute and class rules must not be both present in a table";
LABEL_464:
          v213 = v280;
          goto LABEL_582;
        case 115:
          v104 = v280;
          if (v278)
          {
            sub_551C(v280, "nofor and noback not allowed before base");
          }

          if (sub_9828(v280, v296, "attribute name"))
          {
            v105 = *v279;
            if (!*(*v279 + 1))
            {
              if (!sub_B680())
              {
                return 0;
              }

              v105 = *v279;
            }

            v106 = sub_B7A4(v296, v105);
            if (!v106)
            {
              v106 = sub_B808(v280, &v296[1], v296[0], v105, 1);
              if (!v106)
              {
                return 0;
              }
            }

            v107 = v106;
            v108 = v106[1];
            if (v108 <= 0x10 && ((1 << v108) & 0x10011) != 0 || v108 > 0x100)
            {
              if (!sub_A95C())
              {
                return 0;
              }

              if (v296[0] == 1)
              {
                v282 = 0;
                sub_BCE0(v280, v296[1], v279, &v282, (*v279)[230]);
                if (!sub_A95C())
                {
                  return 0;
                }

                if (v296[0] == 1)
                {
                  v281 = 0;
                  sub_BCE0(v280, v296[1], v279, &v281, (*v279)[230]);
                  v109 = &(*v279)[2 * v282 + 7904];
                  v110 = (*v279)[2 * v282 + 7916];
                  if (v110)
                  {
                    if (v110 == v281 && *&(*v279)[2 * v282 + 7912] == v107[1])
                    {
                      _lou_logMessage(10000, "%s:%d: Duplicate base rule.");
                    }

                    else
                    {
                      sub_5A04(*(v280 + 8), *v109);
                      _lou_logMessage(10000, "%s:%d: A different base rule already exists for this character (%s). The existing rule will take precedence over the new one.");
                    }
                  }

                  else
                  {
                    (*v279)[2 * v282 + 7916] = v281;
                    *(v109 + 32) = v107[1];
                    *v109 = *(v280 + 8);
                    *(v109 + 8) = *(v280 + 24);
                    *(v109 + 56) = (*v279)[230];
                  }

                  v273 = *v279;
                  goto LABEL_638;
                }

                v44 = "Exactly one base character is required.";
              }

              else
              {
                v44 = "Exactly one character followed by one base character is required.";
              }
            }

            else
            {
              v44 = "base opcode must be followed by uppercase, digit, or a custom attribute name.";
            }
          }

          else
          {
            v44 = "base opcode must be followed by a valid attribute name.";
          }

LABEL_611:
          v213 = v104;
          goto LABEL_582;
        default:
          v44 = "unimplemented opcode.";
          goto LABEL_581;
      }
    }

    break;
  }

LABEL_55:
  if (!v276 || (v24 = *v276) == 0)
  {
LABEL_63:
    if (v13 == 70)
    {
      v44 = "The uplow opcode is deprecated.";
    }

    else
    {
      v274 = _lou_showString(&v296[1], v296[0], 0);
      v44 = "opcode %s not defined.";
    }

    goto LABEL_520;
  }

  while (1)
  {
    v25 = *v24;
    v26 = **v24;
    if (strlen(v26) == v296[0])
    {
      break;
    }

LABEL_62:
    v24 = *(v24 + 8);
    if (!v24)
    {
      goto LABEL_63;
    }
  }

  v27 = &v296[1];
  v28 = v296[0];
  if (v296[0])
  {
    do
    {
      v30 = *v26++;
      v29 = v30;
      v31 = *v27++;
      if (v31 != v29)
      {
        goto LABEL_62;
      }
    }

    while (--v28);
  }

  bzero(&v288[1], 0x1028uLL);
  v288[0] = *v280;
  DWORD2(v288[1]) = *(v280 + 24);
  *(&v288[2] + 4) = 0;
  *(&v288[1] + 12) = 0;
  v45 = malloc_type_malloc(4098 * *(v25 + 9), 0x1000040A7D9112DuLL);
  v46 = v45;
  v47 = *(v25 + 9);
  if (v47 < 1)
  {
    LODWORD(v48) = 0;
  }

  else
  {
    v48 = 0;
    v49 = v45;
    while (sub_9828(v280, v296, "macro argument"))
    {
      ++v48;
      memcpy(v49, v296, 0x1002uLL);
      v47 = *(v25 + 9);
      v49 += 4098;
      if (v48 >= v47)
      {
        goto LABEL_148;
      }
    }

    v47 = *(v25 + 9);
LABEL_148:
    v4 = v280;
  }

  if (v48 < v47)
  {
    v274 = v47;
    v44 = "Expected %d arguments";
    goto LABEL_520;
  }

  v60 = *(v25 + 8);
  if (v60 < 1)
  {
    v61 = (v25 + 2);
  }

  else
  {
    v61 = v25[3];
  }

  v192 = 0;
  v193 = 0;
  v194 = 0;
  for (i = *v61; ; i = *v202)
  {
    v196 = i - v194;
    if (i > v194)
    {
      v197 = 2 * v194;
      while (1)
      {
        v198 = *&v25[1][v197];
        if (v198 == 10)
        {
          if (!sub_5C70())
          {
            goto LABEL_522;
          }

          v192 = 0;
          *(&v288[2] + 4) = 0;
        }

        else
        {
          if (v192 >= 2048)
          {
            v274 = (&stru_7D8 + 40);
            v44 = "Line exceeds %d characters (post macro expansion)";
            goto LABEL_581;
          }

          DWORD1(v288[2]) = v192 + 1;
          *(&v288[3] + v192++ + 2) = v198;
        }

        v197 += 2;
        if (!--v196)
        {
          v60 = *(v25 + 8);
          v194 = i;
          break;
        }
      }
    }

    if (v193 >= v60)
    {
      break;
    }

    v199 = v25[3];
    v200 = &v46[4098 * *&v199[8 * v193 + 4] - 4098];
    v201 = *v200;
    memcpy(v297, v200 + 2, 0x1000uLL);
    if (v201)
    {
      memcpy(&v288[3] + 2 * v192 + 4, v297, 2 * v201);
      v192 += v201;
      DWORD1(v288[2]) = v192;
    }

    ++v193;
    v202 = &v199[8 * v193];
    if (v60 <= v193)
    {
      v202 = (v25 + 2);
    }
  }

  if (!sub_5C70())
  {
LABEL_522:
    v231 = _lou_showString(&v288[3] + 2, DWORD1(v288[2]), 0);
    _lou_logMessage(40000, "result of macro expansion was: %s", v231);
    return 0;
  }

  return (&dword_0 + 1);
}

void sub_97BC(void ***a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(*v2);
      free(v2[1]);
      free(v2[3]);
      free(v2);
    }

    sub_97BC(a1[1]);

    free(a1);
  }
}

uint64_t sub_9828(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v3 = a1 + 52;
  v5 = *(a1 + 36);
  v4 = *(a1 + 40);
  if (v4 < v5 && *(v3 + 2 * v4) <= 0x20u)
  {
    v6 = (a1 + 2 * v4 + 54);
    while (v5 - 1 != v4)
    {
      v7 = *v6++;
      ++v4;
      if (v7 > 0x20)
      {
        *(a1 + 40) = v4;
        goto LABEL_7;
      }
    }

    *(a1 + 40) = v4 + 1;
    *a2 = 0;
    goto LABEL_22;
  }

LABEL_7:
  *a2 = 0;
  if (v4 >= v5 || (v8 = a2 + 1, v9 = *(v3 + 2 * v4), v9 < 0x21))
  {
LABEL_22:
    if (a3)
    {
      sub_545C(a1, "%s not specified.");
    }

    return 0;
  }

  v10 = 0;
  v11 = v4;
  v12 = 2 * v4 + 54;
  do
  {
    if (v10 >= 0x800)
    {
      *(a1 + 40) = v11;
      sub_545C(a1, "more than %d characters (bytes)");
      return 0;
    }

    v13 = v10 + 1;
    *a2 = v10 + 1;
    v8[v10] = v9;
    if (v5 - 1 == v4)
    {
      *(a1 + 40) = v4 + 1;
      v8[v13] = 0;
      return 1;
    }

    ++v11;
    v9 = *(a1 + v12);
    v12 += 2;
    ++v4;
    ++v10;
  }

  while (v9 >= 0x21);
  *(a1 + 40) = v4;
  if (!v13)
  {
    goto LABEL_22;
  }

  v8[v13] = 0;
  v14 = __OFSUB__(v5, v4);
  v15 = v5 - v4;
  if (!((v15 < 0) ^ v14 | (v15 == 0)))
  {
    v16 = (a1 + 2 * v4 + 52);
    v17 = v4 + 1;
    do
    {
      v18 = *v16++;
      if (v18 > 0x20)
      {
        break;
      }

      *(a1 + 40) = v17++;
      --v15;
    }

    while (v15);
  }

  return 1;
}

void sub_9994()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  __src = v3;
  v4 = v0;
  sub_B58C(v0, 0, 250000, v1);
  v5 = malloc_type_malloc(0xFFF8uLL, 0x20040C05A361CuLL);
  v6 = v5;
  if (!v5)
  {
    _lou_outOfMemory();
  }

  v50 = v2;
  bzero(v5, 0xFFF8uLL);
  v56 = 1;
  v7 = malloc_type_malloc(0x10uLL, 0x10220409E769576uLL);
  v57 = v7;
  if (!v7)
  {
    _lou_outOfMemory();
  }

  LOWORD(v8) = 0;
  memset(v59, 0, 512);
  memset(v58, 0, 512);
  v51 = v4;
  *v7 = 0;
  *(v7 + 1) = 0xFFFF00000000;
  v55 = 0;
  do
  {
    if (__src[1] == 73)
    {
      if (!sub_9828(v4, v59, 0))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!sub_9828(v4, v58, 0))
      {
        goto LABEL_38;
      }

      sub_32A4(v4, v59, v58);
    }

    v9 = v59[0];
    if (v59[0] && v59[1] != 60 && v59[1] != 35 && v59[1] != 37)
    {
      v10 = 0;
      v60[0] = 48;
      v11 = &v59[1];
      do
      {
        v13 = *v11++;
        v12 = v13;
        if ((v13 - 48) > 9)
        {
          *(v58 + ++v10) = v12;
          LOBYTE(v12) = 48;
        }

        v60[v10] = v12;
        --v9;
      }

      while (v9);
      *(v58 + v10 + 1) = 0;
      LOWORD(v58[0]) = v10;
      v14 = v60;
      v60[v10 + 1] = 0;
      LODWORD(v15) = v10 + 3;
      do
      {
        v16 = *v14++;
        v15 = (v15 - 1);
      }

      while (v16 == 48);
      v17 = sub_D60C(v6, v58);
      v18 = v17;
      if (v17 == 0xFFFF)
      {
        v18 = sub_D6BC(&v56, v6, v58);
      }

      if (v15 >= 1)
      {
        v19 = v14 - 1;
        v20 = &v57[4 * v18];
        sub_B58C(v51, v20 + 2, v15, v50);
        memcpy(&(*v50)[2 * v20[2] + 7904], v19, v15);
      }

      if (v17 != 0xFFFF)
      {
        LOWORD(v8) = v18;
        goto LABEL_38;
      }

      v21 = v10;
      while (2)
      {
        v22 = v21 - 1;
        LOWORD(v58[0]) = v21 - 1;
        v23 = *(v58 + v21);
        v24 = sub_D60C(v6, v58);
        v8 = v24;
        if (v24 == 0xFFFF)
        {
          v8 = sub_D6BC(&v56, v6, v58);
        }

        v25 = &v57[4 * v8];
        v26 = *(v25 + 7);
        if (*(v25 + 7))
        {
          v27 = *v25;
          if (((v26 - 1) & v26) != 0)
          {
            v28 = *(v25 + 7);
            goto LABEL_35;
          }

          v27 = malloc_type_realloc(v27, 8 * v26, 0x100004052888210uLL);
        }

        else
        {
          v27 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
        }

        *v25 = v27;
        v28 = *(v25 + 7);
LABEL_35:
        *(v27 + 2 * v26) = v23;
        *(*v25 + 4 * v26 + 2) = v18;
        *(v25 + 7) = v28 + 1;
        LOWORD(v18) = v8;
        v21 = v22;
        if (v24 != 0xFFFF)
        {
          break;
        }

        continue;
      }
    }

LABEL_38:
    v4 = v51;
  }

  while (_lou_getALine(v51));
  v29 = 0;
  __srca = v57;
  do
  {
    v52 = v29;
    for (i = v6[v29]; i; i = *i)
    {
      v31 = i[1];
      v32 = *v31;
      if (*v31)
      {
        v33 = v31 + 4;
        v34 = v32 - 1;
        v35 = 1;
        v36 = *v31;
        v37 = 2 * v36 + 0x1FFFFFFFCLL;
        while (1)
        {
          if (v35 >= v32)
          {
            v38 = 0;
          }

          else
          {
            memcpy(v58 + 2, v33, (v37 & 0x1FFFFFFFELL) + 2);
            v38 = v34;
          }

          LOWORD(v58[0]) = v38;
          v39 = sub_D60C(v6, v58);
          if (v39 != 0xFFFF)
          {
            break;
          }

          --v34;
          ++v35;
          v37 -= 2;
          v33 += 2;
          if (!--v36)
          {
            LOWORD(v8) = -1;
            goto LABEL_50;
          }
        }

        LOWORD(v8) = v39;
      }

LABEL_50:
      v40 = *(i + 4);
      if (v40)
      {
        LOWORD(__srca[4 * v40 + 3]) = v8;
      }
    }

    v29 = v52 + 1;
  }

  while (v52 != 8190);
  for (j = 0; j != 0x1FFF; ++j)
  {
    v42 = v6[j];
    if (v42)
    {
      do
      {
        v43 = *v42;
        free(v42[1]);
        free(v42);
        v42 = v43;
      }

      while (v43);
    }
  }

  free(v6);
  v44 = v56;
  if (v56 >= 1)
  {
    v45 = v56;
    v46 = __srca;
    do
    {
      if (*(v46 + 7))
      {
        v47 = *v46;
        sub_B58C(v51, v46, 4 * *(v46 + 7), v50);
        memcpy(&(*v50)[2 * *v46 + 7904], v47, 4 * *(v46 + 7));
        free(v47);
      }

      else
      {
        *v46 = 0;
      }

      v46 += 4;
      --v45;
    }

    while (v45);
  }

  sub_B58C(v51, &v55, 16 * v44, v50);
  v48 = v55;
  v49 = *v50;
  v49[636] = v55;
  memcpy(&v49[2 * v48 + 7904], __srca, 16 * v44);
  free(__srca);
}

uint64_t sub_9FEC(unsigned __int16 *a1)
{
  v3 = *a1;
  v1 = a1 + 1;
  v2 = v3;
  v4 = dword_2BA04;
  while (v2 != word_297A4[v4])
  {
LABEL_8:
    if ((v4 + 1) <= 0x74)
    {
      v4 = (v4 + 1);
    }

    else
    {
      v4 = 0;
    }

    if (v4 == dword_2BA04)
    {
      return 117;
    }
  }

  if (v2)
  {
    v5 = off_24370[v4];
    v6 = v1;
    v7 = v2;
    do
    {
      v9 = *v5++;
      v8 = v9;
      v10 = *v6++;
      if (v10 != v8)
      {
        goto LABEL_8;
      }
    }

    while (--v7);
  }

  dword_2BA04 = v4;
  return v4;
}

void **sub_A06C(const char **a1, _WORD *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = 0;
    do
    {
      v8[v4] = a2[v4 + 1];
      ++v4;
    }

    while (v3 != v4);
    if (v3 >= 0x800)
    {
      sub_545C(a1, "Include statement too long: 'include %s'");
      return 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v8[v3] = 0;
  result = _lou_resolveTable(v8, *a1);
  if (result)
  {
    v6 = result;
    if (result[1])
    {
      sub_4148(result);
      sub_545C(a1, "Table list not supported in include statement: 'include %s'");
      return 0;
    }

    v7 = sub_5A9C();
    sub_4148(v6);
    if (!v7)
    {
      _lou_logMessage(40000, "%s:%d: Error in included file", *a1, *(a1 + 6));
      return 0;
    }

    return (&dword_0 + 1);
  }

  else
  {
    ++dword_2A090;
  }

  return result;
}

uint64_t sub_A1C4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  memset(v28, 0, 512);
  memset(v27, 0, 512);
  result = sub_A95C();
  if (!result)
  {
    return result;
  }

  result = sub_AA14();
  if (!result)
  {
    return result;
  }

  if (LOWORD(v28[0]) != 1)
  {
    sub_545C(v13, "Exactly one character is required.");
    return 0;
  }

  v15 = LOWORD(v27[0]);
  if (!LOWORD(v27[0]))
  {
    sub_545C(v13, "At least one cell is required.");
    return 0;
  }

  if (v4)
  {
    v25 = v8;
    v26 = v12;
    if ((v10 & 0x30) != 0)
    {
      v16 = v10 | 2;
    }

    else
    {
      v16 = v10;
    }

    v17 = sub_BCE0(v13, WORD1(v28[0]), v4, 0, *(*v4 + 920));
    v23 = v16;
    v24 = LOWORD(v27[0]);
    *(v17 + 24) |= v16;
    do
    {
      v18 = *(v27 + v15);
      v19 = *v4;
      v20 = *(v19 + 4 * _lou_charHash(*(v27 + v15)) + 18100);
      if (v20)
      {
        while (1)
        {
          v21 = (v19 + 31616 + 8 * v20);
          if (*(v21 + 22) == v18)
          {
            break;
          }

          v20 = *(v21 + 3);
          if (!v20)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        v21 = sub_D830(v13, v18, v4, *(*v4 + 920));
      }
    }

    while (v15-- > 1);
    LODWORD(v15) = v24;
    v8 = v25;
    v12 = v26;
    if (v24 != 1)
    {
      goto LABEL_21;
    }

    *(v21 + 3) |= v23;
  }

  if (v2 && v15 == 1)
  {
    sub_AAF0(v13, WORD1(v28[0]), WORD1(v27[0]), v2);
  }

LABEL_21:
  if (!v4)
  {
    return 1;
  }

  result = sub_AEDC(v13, v12, v28, v27, 0, 0, 0, 0, v8, v6, v4);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_A490()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  memset(v22, 0, 512);
  memset(v21, 0, 512);
  memset(v19, 0, 512);
  result = sub_9828(v0, v22, "name operand");
  if (result)
  {
    result = sub_A95C();
    if (result)
    {
      memset(v20, 0, 512);
      result = sub_9828(v9, v20, "dots operand");
      if (result)
      {
        if (v20[0])
        {
          v11 = 0;
          while (v20[v11 + 1] != 44)
          {
            if (v20[0] == ++v11)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          LODWORD(v11) = 0;
        }

        if (v11 == v20[0])
        {
LABEL_11:
          sub_545C(v9, "Dots operand must consist of two cells separated by a comma");
          return 0;
        }

        v20[v11 + 1] = 45;
        result = sub_3860(v9, v19, v20);
        if (result)
        {
          if (v21[0] != 2 || LOWORD(v19[0]) != 2)
          {
            sub_545C(v9, "two Unicode characters and two cells separated by a comma are needed.");
            return 0;
          }

          if (!v4 || (v18 = 0, v12 = sub_BCE0(v9, v21[1], v4, 0, (*v4)[230]), *(v12 + 24) |= 0x40uLL, v13 = sub_BCE0(v9, v21[2], v4, 0, (*v4)[230]), *(v13 + 24) |= 0x40uLL, v14 = sub_D830(v9, WORD1(v19[0]), v4, (*v4)[230]), *(v14 + 3) |= 0x40uLL, v15 = sub_D830(v9, WORD2(v19[0]), v4, (*v4)[230]), *(v15 + 3) |= 0x40uLL, result = sub_AEDC(v9, 69, v21, v19, 0, 0, &v18, 0, v8, v6, v4), result) && (result = sub_D950(v9, v22, v18, *v4), result))
          {
            if (v2)
            {
              sub_AAF0(v9, v21[1], WORD1(v19[0]), v2);
              sub_AAF0(v9, v21[2], WORD2(v19[0]), v2);
            }

            if (!v4)
            {
              return 1;
            }

            v16 = v21[2];
            v17 = WORD2(v19[0]);
            LOWORD(v19[0]) = 1;
            v21[0] = 1;
            result = sub_AEDC(v9, 64, v21, v19, 0, 0, 0, 0, v8, v6, v4);
            if (result)
            {
              v21[1] = v16;
              WORD1(v19[0]) = v17;
              result = sub_AEDC(v9, 64, v21, v19, 0, 0, 0, 0, v8, v6, v4);
              if (result)
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_A95C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  memset(v5, 0, 512);
  result = sub_9828(v0, v5, "Characters operand");
  if (result)
  {
    return sub_32A4(v3, v2, v5);
  }

  return result;
}

uint64_t sub_AA14()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  memset(v5, 0, 512);
  result = sub_9828(v0, v5, "Dots operand");
  if (result)
  {
    if (LOWORD(v5[0]) == 1 && WORD1(v5[0]) == 61)
    {
      *v2 = 0;
      return 1;
    }

    else
    {
      return sub_3860(v3, v2, v5);
    }
  }

  return result;
}

uint64_t sub_AAF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *a4;
  if (*a4)
  {
    v9 = &v8[_lou_charHash(a2) + 2];
    while (1)
    {
      v10 = *v9;
      if (!v10)
      {
        break;
      }

      v9 = &v8[2 * v10 + 2248];
      if (*(v9 + 2) == v6)
      {
        v11 = *a4;
        if (*a4)
        {
          goto LABEL_15;
        }

        goto LABEL_6;
      }
    }
  }

  v27 = 0;
  sub_DA48(a1, &v27, a4);
  v18 = &(*a4)[2 * v27];
  *(v18 + 8992) = 0;
  *(v18 + 8996) = v6;
  *(v18 + 8998) = v5;
  v19 = _lou_charHash(v6);
  v11 = *a4;
  v20 = (*a4 + 2);
  v21 = *(v20 + 4 * v19);
  if (v21)
  {
    v22 = v11 + 2248;
    do
    {
      v23 = 2 * v21;
      v21 = v22[2 * v21];
    }

    while (v21);
    v22[v23] = v27;
  }

  else
  {
    *(v20 + 4 * v19) = v27;
  }

LABEL_15:
  result = _lou_charHash(v5);
  v24 = &v11[result + 1125];
  while (1)
  {
    v25 = *v24;
    if (!v25)
    {
      break;
    }

    v24 = &v11[2 * v25 + 2248];
    if (*(v24 + 2) == v5)
    {
      return result;
    }
  }

LABEL_6:
  v26 = 0;
  sub_DA48(a1, &v26, a4);
  v12 = &(*a4)[2 * v26];
  *(v12 + 8992) = 0;
  *(v12 + 8996) = v5;
  *(v12 + 8998) = v6;
  result = _lou_charHash(v5);
  v14 = (*a4 + 1125);
  v15 = *(v14 + 4 * result);
  if (v15)
  {
    v16 = (*a4 + 2248);
    do
    {
      v17 = 8 * v15;
      v15 = *(v16 + 8 * v15);
    }

    while (v15);
    *(v16 + v17) = v26;
  }

  else
  {
    *(v14 + 4 * result) = v26;
  }

  return result;
}

uint64_t sub_AC98()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  memset(v15, 0, 512);
  memset(v14, 0, 512);
  result = sub_9828(v0, v15, v12);
  if (result)
  {
    result = sub_3860(v11, v14, v15);
    if (result)
    {
      return sub_AEDC(v11, v10, 0, v14, 0, 0, v8, 0, v6, v4, v2);
    }
  }

  return result;
}

uint64_t sub_AE24()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  memset(v5, 0, 512);
  result = sub_9828(v0, v5, "characters");
  if (result)
  {
    return sub_32A4(v3, v2, v5);
  }

  return result;
}

uint64_t sub_AEDC(uint64_t a1, int a2, unsigned __int16 *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t *a8, int a9, int a10, unsigned int **a11)
{
  if (a3)
  {
    v19 = 2 * *a3 + 60;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = 60;
  if (a4)
  {
LABEL_3:
    v19 += 2 * *a4;
  }

LABEL_4:
  v92 = 0;
  sub_B58C(a1, &v92, v19, a11);
  v20 = v92;
  v21 = &(*a11)[2 * v92 + 7904];
  if (a8)
  {
    *a8 = v21;
  }

  if (a7)
  {
    *a7 = v20;
  }

  *v21 = *(a1 + 8);
  v22 = *(a1 + 24);
  v23 = (*a11)[230];
  (*a11)[230] = v23 + 1;
  *(v21 + 8) = v22;
  *(v21 + 12) = v23;
  *(v21 + 44) = a2;
  *(v21 + 24) = a5;
  *(v21 + 32) = a6;
  *(v21 + 48) = 0;
  if (a3)
  {
    v24 = *a3;
    *(v21 + 50) = v24;
    memcpy((v21 + 54), a3 + 1, 2 * v24);
    if (a4)
    {
LABEL_10:
      v25 = *a4;
      *(v21 + 52) = v25;
      memcpy((v21 + 2 * v24 + 54), a4 + 1, 2 * v25);
      goto LABEL_15;
    }
  }

  else
  {
    v24 = 0;
    *(v21 + 50) = 0;
    if (a4)
    {
      goto LABEL_10;
    }
  }

  *(v21 + 52) = 0;
LABEL_15:
  if ((a2 - 58) >= 3)
  {
    if ((a2 - 74) > 4 || a2 == 74 && *(v21 + 50) > 0)
    {
      if (a10)
      {
LABEL_20:
        if (!a9)
        {
          v26 = *(v21 + 44);
          v27 = (v21 + 54);
          v28 = (v21 + 50);
          if (v26 != 74)
          {
            v27 += *(v21 + 50);
            v28 = (v21 + 52);
          }

          v29 = *v28;
          if (v29 == 1)
          {
            if (v26 != 58 && v26 != 79)
            {
              v30 = v92;
              v31 = sub_D830(a1, *v27, a11, *(v21 + 12));
              v32 = (*a11 + 7904);
              v33 = v32 + 8 * v30;
              v34 = *(v33 + 44) - 61;
              if (v34 <= 8)
              {
                *(v31 + 4) = v30;
              }

              do
              {
                v35 = v31;
                v36 = *(v31 + 5);
                if (!v36)
                {
                  break;
                }

                v31 = (v32 + 8 * v36);
                if (*(v33 + 50) > *(v31 + 25))
                {
                  break;
                }
              }

              while (*(v31 + 26) && (v34 < 9 || (*(v31 + 11) - 70) < 0xFFFFFFF7));
              *(v33 + 20) = v36;
              *(v35 + 5) = v30;
            }

            if (a8)
            {
              *a8 = &(*a11)[2 * v92 + 7904];
            }
          }

          else if (v29 >= 2)
          {
            v61 = v92;
            v62 = *a11;
            v63 = _lou_stringHash(v27, 0, 0);
            v64 = *(v21 + 44);
            if (v64 != 58)
            {
              v65 = &v62[v63 + 6781];
              v66 = *v65;
              if (v66)
              {
                v67 = *(v21 + 50) + v29;
                v68 = &v62[2 * v66 + 7904];
                for (i = *(v68 + 50) + *(v68 + 52); v67 <= i && (i != v67 || v64 == 83 || *(v68 + 44) != 83); i = *(v68 + 50) + *(v68 + 52))
                {
                  v66 = *(v68 + 20);
                  v65 = (v68 + 20);
                  if (!*(v68 + 20))
                  {
                    break;
                  }

                  v68 = &v62[2 * v66 + 7904];
                }
              }

              *(v21 + 20) = v66;
              *v65 = v61;
            }
          }
        }

        return 1;
      }

      v44 = *(v21 + 50);
      if (v44 != 1)
      {
        if (v44 >= 2)
        {
          v70 = v92;
          v71 = *a11;
          v72 = &v71[_lou_stringHash((v21 + 54), 0, 0) + 5658];
          v73 = *v72;
          if (v73)
          {
            v74 = &v71[2 * v73 + 7904];
            if (*(v21 + 50) <= *(v74 + 50))
            {
              v84 = *(v21 + 50);
              v85 = *(v74 + 50);
              do
              {
                if (v84 == v85 && *(v74 + 44) == 83 && *(v21 + 44) != 83)
                {
                  break;
                }

                v73 = *(v74 + 16);
                v72 = (v74 + 16);
                if (!*(v74 + 16))
                {
                  break;
                }

                v74 = &v71[2 * v73 + 7904];
                v85 = *(v74 + 50);
              }

              while (*(v74 + 50) >= v84);
            }
          }

          *(v21 + 16) = v73;
          *v72 = v70;
        }

        goto LABEL_20;
      }

      v45 = v92;
      v46 = *(v21 + 44);
      if ((v46 - 76) <= 2)
      {
        v47 = sub_D830(a1, *(v21 + 54), a11, *(v21 + 12));
        v48 = &(*a11)[2 * v45 + 7904];
        goto LABEL_46;
      }

      v76 = v46 - 49;
      v77 = sub_BCE0(a1, *(v21 + 54), a11, 0, *(v21 + 12));
      v47 = v77;
      if (v76 <= 1)
      {
        *(v77 + 40) = v45;
LABEL_84:
        v21 = &(*a11)[2 * v92 + 7904];
        if (a8)
        {
          *a8 = v21;
        }

        goto LABEL_20;
      }

      v78 = (*a11 + 7904);
      v48 = v78 + 8 * v45;
      v79 = *(v48 + 44);
      if (v79 - 61 > 8)
      {
LABEL_46:
        v51 = *(v47 + 5);
        v50 = v47 + 20;
        v49 = v51;
        if (v51)
        {
          v52 = (*a11 + 7904);
          for (j = v52 + 8 * v49; *(j + 50); j = v52 + 8 * v49)
          {
            if ((*(j + 44) - 61) <= 8 && (*(v48 + 44) - 61) > 8)
            {
              break;
            }

            v49 = *(j + 16);
            v50 = (j + 16);
            if (!*(j + 16))
            {
              break;
            }
          }
        }

        *(v48 + 16) = v49;
        *v50 = v45;
        goto LABEL_84;
      }

      v80 = *(v77 + 16);
      if (!v80)
      {
        *(v77 + 16) = v45;
        goto LABEL_46;
      }

      v81 = v78 + 8 * v80;
      v82 = *(v81 + 44);
      if (v82 <= 0x74)
      {
        v91 = strdup(off_24370[v82]);
      }

      else
      {
        __sprintf_chk(byte_2988E, 0, 0x800uLL, "%u", *(v81 + 44));
        v79 = *(v48 + 44);
        v91 = strdup(byte_2988E);
        if (v79 >= 0x75)
        {
          v89 = v79;
          v83 = byte_2988E;
          __sprintf_chk(byte_2988E, 0, 0x800uLL, "%u", v89);
LABEL_96:
          v86 = strdup(v83);
          v90 = *a1;
          v87 = *v81;
          v88 = *(a1 + 24);
          sub_5A04(*(a1 + 8), v87);
          _lou_logMessage(10000, "%s:%d: Character already defined (%s). The existing %s rule will take precedence over the new %s rule.", v90, v88, qword_2B200, v91, v86);
          free(v91);
          free(v86);
          goto LABEL_46;
        }
      }

      v83 = off_24370[v79];
      goto LABEL_96;
    }

    if (!a10)
    {
      v54 = *(v21 + 44) - 74;
      if (v54 > 4)
      {
        return 0;
      }

      v55 = v92;
      v56 = (*a11 + qword_1DD40[v54]);
      do
      {
        v57 = v56;
        v58 = *v56;
        if (!v58)
        {
          break;
        }

        v59 = &(*a11)[2 * v58 + 7904];
        v60 = *(v59 + 50);
        v56 = (v59 + 16);
      }

      while (*(v21 + 50) <= v60);
      *(v21 + 16) = v58;
      *v57 = v55;
      if (a9)
      {
        return 1;
      }

LABEL_38:
      v37 = *(v21 + 44) - 74;
      if (v37 <= 4)
      {
        v38 = v92;
        v39 = (*a11 + qword_1DD68[v37]);
        do
        {
          v40 = v39;
          v41 = *v39;
          if (!v41)
          {
            break;
          }

          v42 = &(*a11)[2 * v41 + 7904];
          v43 = *(v42 + 50);
          v39 = (v42 + 20);
        }

        while (*(v21 + 50) <= v43);
        *(v21 + 20) = v41;
        *v40 = v38;
        return 1;
      }

      return 0;
    }

    if (!a9)
    {
      goto LABEL_38;
    }
  }

  return 1;
}

void sub_B58C(uint64_t a1, _DWORD *a2, int a3, unsigned int **a4)
{
  v5 = (a3 + 7) & 0xFFFFFFF8;
  v6 = *a4;
  v7 = **a4;
  v8 = (*a4)[1] + v5;
  if (v8 > v7)
  {
    v11 = v8 + (v8 >> 3);
    v12 = malloc_type_realloc(*a4, v11, 0x7D1CEC41uLL);
    v6 = v12;
    if (!v12)
    {
      sub_545C(a1, "Not enough memory for translation table.");
      _lou_outOfMemory();
    }

    bzero(v12 + v7, v11 - v7);
    v13 = qword_2B0D0;
    if (qword_2B0D0)
    {
      do
      {
        if (v13[1] == *a4)
        {
          v13[1] = v6;
        }

        v13 = *v13;
      }

      while (v13);
    }

    *v6 = v11;
    *a4 = v6;
  }

  if (a2)
  {
    *a2 = (v6[1] + 0x7FFFF8478) >> 3;
    v6[1] += v5;
  }
}

void *sub_B680()
{
  v0 = __chkstk_darwin();
  v1 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = xmmword_1DD10;
  while (v1 != 9)
  {
    v2 = off_24718[v1];
    v3 = strlen(v2);
    if (v3 >= 1)
    {
      v4 = v3 & 0x7FFFFFFF;
      v5 = v9;
      do
      {
        v6 = *v2++;
        *v5++ = v6;
        --v4;
      }

      while (v4);
    }

    v7 = sub_B808(0, v9, v3, v0, 0);
    if (v7)
    {
      ++v1;
    }

    else
    {
      result = *(v0 + 8);
      if (!result)
      {
        return result;
      }

      do
      {
        *(v0 + 8) = *result;
        free(result);
        result = *(v0 + 8);
      }

      while (result);
    }

    if (!v7)
    {
      return 0;
    }
  }

  return (&dword_0 + 1);
}

uint64_t **sub_B7A4(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = *a1;
    do
    {
      if (v4 == *(v2 + 8) && !memcmp(a1 + 1, v2 + 18, 2 * v4))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

void *sub_B808(uint64_t a1, unsigned __int16 *a2, int a3, void *a4, int a5)
{
  if (a5)
  {
    if (a3 >= 1)
    {
      v9 = a3;
      v10 = a2;
      do
      {
        v11 = *v10++;
        if ((v11 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          sub_545C(a1, "Invalid attribute name: must be a digit between 0 and 7 or a word containing only letters");
        }

        --v9;
      }

      while (v9);
    }

    v12 = 0;
    while (1)
    {
      if (strlen(off_24768[v12]) == a3)
      {
        if (a3 < 1)
        {
          LODWORD(v13) = 0;
        }

        else
        {
          v13 = 0;
          while (off_24768[v12][v13] == a2[v13])
          {
            if (a3 == ++v13)
            {
              goto LABEL_23;
            }
          }
        }

        if (v13 == a3)
        {
          break;
        }
      }

      if (++v12 == 28)
      {
        goto LABEL_17;
      }
    }

LABEL_23:
    sub_545C(a1, "Attribute name is reserved: %s");
    return 0;
  }

LABEL_17:
  v14 = a4[2];
  if (v14)
  {
    v15 = 0x8000000;
    if (v14 != 256)
    {
      v15 = 2 * v14;
    }

    a4[2] = v15;
  }

  else
  {
    v14 = a4[3];
    if (v14 > 0x800000 || (a4[3] = 2 * v14, !v14))
    {
      sub_545C(a1, "character class table overflow.");
      return 0;
    }
  }

  v16 = malloc_type_malloc(2 * a3 + 22, 0x10200405AF6BDC9uLL);
  if (!v16)
  {
    _lou_outOfMemory();
  }

  v17 = v16;
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  *(v16 + 8) = a3;
  memcpy(v16 + 18, a2, 2 * a3);
  *v17 = a4[1];
  v17[1] = v14;
  a4[1] = v17;
  return v17;
}

uint64_t sub_B9C8()
{
  v0 = __chkstk_darwin();
  memset(v5, 0, 512);
  result = sub_9828(v0, v5, "last word before or after");
  if (result)
  {
    memset(v4, 0, 512);
    result = sub_32A4(v0, v4, v5);
    if (result)
    {
      v2 = 0;
      while (*(v4 + v2 + 1) == aBefore[v2])
      {
        if (++v2 == 6)
        {
          return 1;
        }
      }

      v3 = 0;
      while (*(v4 + v3 + 1) == aAfter[v3])
      {
        if (++v3 == 5)
        {
          return 2;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_BB78()
{
  v0 = __chkstk_darwin();
  memset(v6, 0, 512);
  result = sub_9828(v0, v6, "number");
  if (result)
  {
    v2 = WORD1(v6[0]);
    if (WORD1(v6[0]) - 48 > 9)
    {
      goto LABEL_7;
    }

    v3 = 0;
    v4 = v6 + 2;
    do
    {
      v3 = v2 + 10 * v3 - 48;
      v5 = *v4++;
      v2 = v5;
    }

    while ((v5 - 48) < 0xA);
    if (v3)
    {
      return v3;
    }

    else
    {
LABEL_7:
      sub_545C(v0, "a nonzero positive number is required");
      return 0;
    }
  }

  return result;
}

uint64_t sub_BC70(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  v6 = *(a2 + 4 * _lou_charHash(a1) + 13608);
  if (!v6)
  {
    return 0;
  }

  while (1)
  {
    result = a2 + 31616 + 8 * v6;
    if (*(result + 44) == v5)
    {
      break;
    }

    v6 = *(result + 12);
    if (!v6)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_BCE0(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, int a5)
{
  v8 = a2;
  v10 = sub_BC70(a2, *a3, a4);
  if (!v10)
  {
    v18 = 0;
    sub_B58C(a1, &v18, 64, a3);
    v11 = *a3 + 8 * v18;
    v10 = v11 + 31616;
    *(v11 + 31664) = 0u;
    *(v11 + 31648) = 0u;
    *(v11 + 31632) = 0u;
    *(v11 + 31616) = 0u;
    *(v11 + 31616) = *(a1 + 8);
    *(v11 + 31624) = *(a1 + 24);
    *(v11 + 31672) = a5;
    *(v11 + 31660) = v8;
    v12 = _lou_charHash(v8);
    v13 = *a3 + 13608;
    v14 = *(v13 + 4 * v12);
    if (!v14)
    {
      v16 = v18;
      *(v13 + 4 * v12) = v18;
      if (!a4)
      {
        return v10;
      }

      goto LABEL_5;
    }

    do
    {
      v15 = *a3 + 31616 + 8 * v14;
      v14 = *(v15 + 12);
    }

    while (v14);
    v16 = v18;
    *(v15 + 12) = v18;
    if (a4)
    {
LABEL_5:
      *a4 = v16;
    }
  }

  return v10;
}

uint64_t sub_BDEC()
{
  v0 = __chkstk_darwin();
  v5 = v0;
  word_2BA08 = 0;
  v148 = 0;
  v7 = *(v0 + 36);
  v6 = *(v0 + 40);
  if (v6 >= v7)
  {
    goto LABEL_8;
  }

  v8 = v2;
  v9 = v1;
  v10 = 0;
  memset(v150, 0, 510);
  v11 = 2 * v6 + 52;
  v12 = v7 - v6;
  v13 = 1;
  do
  {
    v14 = v13;
    v15 = v10++;
    v150[v15] = *(v0 + v11);
    ++v13;
    v11 += 2;
    --v12;
  }

  while (v12);
  v149 = v10;
  if (!v10)
  {
LABEL_8:
    sub_545C(v0, "Invalid multipass operands");
    return 0;
  }

  v16 = 0;
  while (v150[v16] >= 0x21u)
  {
    if (v14 == ++v16)
    {
      goto LABEL_8;
    }
  }

  v142 = v4;
  v140 = v3;
  memset(v147, 0, 512);
  v150[v16] = 1;
  sub_32A4(v0, v147, &v149);
  v18 = LOWORD(v147[0]);
  v138 = v8;
  if (LOWORD(v147[0]))
  {
    v19 = 0;
    while (*(v147 + v19 + 1) != 1)
    {
      if (LOWORD(v147[0]) == ++v19)
      {
        LODWORD(v19) = LOWORD(v147[0]);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = 0;
  v143 = 0;
  v21 = 0;
  *(v147 + v19 + 1) = 32;
  v141 = 0;
  v139 = v18 - 1;
  while (1)
  {
    v22 = v20;
    v23 = *(v147 + v20 + 1);
    if (v23 > 0x3F)
    {
      if (*(v147 + v20 + 1) > 0x5Fu)
      {
        if (*(v147 + v20 + 1) > 0x7Cu)
        {
          if (v23 == 125)
          {
            goto LABEL_90;
          }

          if (v23 != 126)
          {
            goto LABEL_323;
          }

          if (v21 >= 2048)
          {
            goto LABEL_311;
          }

          v31 = &word_2CA0A[v21];
          v24 = v21 + 1;
          v32 = 126;
        }

        else
        {
          if (v23 != 96)
          {
            if (v23 != 123)
            {
              goto LABEL_323;
            }

LABEL_90:
            v39 = v9;
            v40 = v20 + 1;
            v41 = *(v147 + v22 + 2);
            if ((v41 & 0xFFFFFFDF) - 65 > 0x19)
            {
              v42 = 0;
              v45 = v22 + 1;
            }

            else
            {
              v42 = 0;
              if (v22 + 2 > v18)
              {
                v43 = v22 + 2;
              }

              else
              {
                v43 = v18;
              }

              while (1)
              {
                v44 = v42++;
                v150[v44] = v41;
                v45 = v40 + 1;
                if (v40 + 1 >= v18)
                {
                  break;
                }

                v41 = *(v147 + v40++ + 2);
                if ((v41 & 0xFFFFFFDF) - 65 > 0x19)
                {
                  goto LABEL_134;
                }
              }

              v45 = v43;
            }

LABEL_134:
            v149 = v42;
            v146 = v45;
            v58 = *v142;
            v59 = sub_DE9C(&v149, *v142);
            if (v59)
            {
              v60 = v58 + 8 * v59 + 31616;
            }

            else
            {
              v60 = v141;
              if (!v141)
              {
                goto LABEL_318;
              }
            }

            if (*(v60 + 44) != 69)
            {
LABEL_318:
              _lou_showString(v150, v42, 0);
              sub_545C(v5, "%s is not a grouping name");
              return 0;
            }

            if (v21 >= 2048)
            {
              goto LABEL_311;
            }

            word_2CA0A[v21 + 1] = v23;
            if (v21 == 2047)
            {
              goto LABEL_311;
            }

            v141 = v60;
            v61 = &word_2CA0A[v21];
            v61[2] = HIWORD(v59);
            if (v21 > 2045)
            {
              goto LABEL_311;
            }

            v21 += 3;
            v61[3] = v59;
            v9 = v39;
            goto LABEL_214;
          }

          if (v21 >= 2048)
          {
            goto LABEL_311;
          }

          v31 = &word_2CA0A[v21];
          v24 = v21 + 1;
          v32 = 96;
        }
      }

      else
      {
        if (*(v147 + v20 + 1) <= 0x5Cu)
        {
          if (v23 == 64)
          {
            if (!sub_DB2C(v5, v9, 0, 0, v140))
            {
              return 0;
            }

            v146 = v22 + 1;
            if (v21 >= 2048)
            {
              goto LABEL_311;
            }

            word_2CA0A[v21 + 1] = 64;
            sub_DCD4();
            LODWORD(v30) = v149;
            if (!v149)
            {
              sub_545C(v5, "expected dot pattern after @ operand in test part");
              return 0;
            }

            goto LABEL_116;
          }

          if (v23 != 91)
          {
            goto LABEL_323;
          }

          if (v143)
          {
            sub_545C(v5, "nested replacement statements");
            return 0;
          }

          if (v21 >= 2048)
          {
            goto LABEL_311;
          }

          v24 = v21 + 1;
          word_2CA0A[v21 + 1] = 91;
          v146 = v20 + 1;
          v143 = 1;
          goto LABEL_129;
        }

        if (v23 != 93)
        {
          if (v23 != 95)
          {
            goto LABEL_323;
          }

          if (v21 >= 2048)
          {
            goto LABEL_311;
          }

          word_2CA0A[v21 + 1] = 95;
          v33 = v20 + 1;
          v146 = v20 + 1;
          if (v20 + 1 >= v18)
          {
            goto LABEL_194;
          }

          v34 = *(v147 + v33 + 1);
          if ((v34 - 48) > 9)
          {
            v146 = v20 + 1;
            goto LABEL_194;
          }

          v35 = 0;
          v36 = v139 - v33;
          v37 = v147 + v33 + 2;
          while (1)
          {
            v35 = v34 + 10 * v35 - 48;
            if (!v36)
            {
              break;
            }

            v38 = *v37++;
            LOWORD(v34) = v38;
            --v36;
            LODWORD(v33) = v33 + 1;
            if ((v38 - 48) > 9)
            {
              goto LABEL_193;
            }
          }

          LODWORD(v33) = v18;
LABEL_193:
          v146 = v33;
          if (!v35)
          {
LABEL_194:
            v35 = 1;
          }

          v148 = v35;
          if (v21 == 2047)
          {
            goto LABEL_311;
          }

          v82 = v21;
          v21 += 2;
          word_2CA0A[v82 + 2] = v35;
          goto LABEL_214;
        }

        if (!v143)
        {
          sub_545C(v5, "unexpected end of replacement");
          return 0;
        }

        if (v21 >= 2048)
        {
          goto LABEL_311;
        }

        v143 = 0;
        v31 = &word_2CA0A[v21];
        v24 = v21 + 1;
        v32 = 93;
      }

LABEL_128:
      v31[1] = v32;
      v146 = v22 + 1;
LABEL_129:
      v21 = v24;
      goto LABEL_214;
    }

    if (*(v147 + v20 + 1) <= 0x22u)
    {
      if (v23 == 32)
      {
        if (v21 >= 2048)
        {
          goto LABEL_311;
        }

        word_2CA0A[v21 + 1] = 32;
        if (v143)
        {
          sub_545C(v5, "expected end of replacement");
          return 0;
        }

        v143 = 0;
        ++v21;
        v146 = v20 + 1;
        goto LABEL_214;
      }

      if (v23 != 33)
      {
        if (v23 != 34)
        {
LABEL_323:
          sub_545C(v5, "incorrect operator '%c ' in test part");
          return 0;
        }

        if (!sub_DB2C(v5, v9, 1, 0, v140))
        {
          return 0;
        }

        v146 = v22 + 1;
        if (v21 >= 2048)
        {
          goto LABEL_311;
        }

        word_2CA0A[v21 + 1] = 34;
        sub_DC48(v147, &v146, &v149, v5);
        LODWORD(v30) = v149;
        if (!v149)
        {
          sub_545C(v5, "empty string in test part");
          return 0;
        }

LABEL_116:
        if (v21 < 2047)
        {
          word_2CA0A[v21 + 2] = v30;
          v54 = (2046 - v21);
          v30 = v30;
          v55 = &word_2CA0A[v21 + 3];
          v56 = v150;
          v21 += 2;
          while (v54)
          {
            v57 = *v56++;
            *v55++ = v57;
            ++v21;
            --v54;
            if (!--v30)
            {
              goto LABEL_214;
            }
          }
        }

        sub_545C(v5, "@ operand in test part of multipass operand too long");
        return 0;
      }

      if (v21 >= 2048)
      {
        goto LABEL_311;
      }

      v31 = &word_2CA0A[v21];
      v24 = v21 + 1;
      v32 = 33;
      goto LABEL_128;
    }

    if (*(v147 + v20 + 1) <= 0x24u)
    {
      break;
    }

    if (v23 != 37)
    {
      if (v23 != 47)
      {
        goto LABEL_323;
      }

      if (v21 >= 2048)
      {
        goto LABEL_311;
      }

      v31 = &word_2CA0A[v21];
      v24 = v21 + 1;
      v32 = 47;
      goto LABEL_128;
    }

    v137 = v9;
    v26 = v20 + 1;
    v49 = *(v147 + v26 + 1);
    if ((v49 & 0xFFFFFFDF) - 65 > 0x19)
    {
      v50 = 0;
    }

    else
    {
      v50 = 0;
      if (v22 + 2 > v18)
      {
        v51 = v22 + 2;
      }

      else
      {
        v51 = v18;
      }

      while (1)
      {
        v52 = v50++;
        v150[v52] = v49;
        v53 = v26 + 1;
        if (v26 + 1 >= v18)
        {
          break;
        }

        v49 = *(v147 + v26++ + 2);
        if ((v49 & 0xFFFFFFDF) - 65 > 0x19)
        {
          goto LABEL_151;
        }
      }

      v53 = v51;
LABEL_151:
      LODWORD(v26) = v53;
    }

    v149 = v50;
    v146 = v26;
    v63 = *v142;
    v64 = sub_B7A4(&v149, *v142);
    if (v64)
    {
      v25 = v64[1];
      v9 = v137;
      goto LABEL_154;
    }

    v72 = sub_DE9C(&v149, v63);
    if (v72)
    {
      v73 = v63 + 8 * v72 + 31616;
    }

    else
    {
      v73 = v141;
      if (!v141)
      {
        goto LABEL_329;
      }
    }

    if ((*(v73 + 44) - 58) > 2)
    {
LABEL_329:
      _lou_showString(v150, v50, 0);
      sub_545C(v5, "%s is neither a class name nor a swap name.");
      return 0;
    }

    if (v21 >= 2048)
    {
      goto LABEL_311;
    }

    word_2CA0A[v21 + 1] = 37;
    if (v21 == 2047)
    {
      goto LABEL_311;
    }

    v141 = v73;
    v81 = &word_2CA0A[v21];
    v81[2] = HIWORD(v72);
    if (v21 > 2045)
    {
      goto LABEL_311;
    }

    v66 = v21 + 3;
    v81[3] = v72;
    v9 = v137;
LABEL_160:
    v67 = *(v147 + v26 + 1);
    if (v67 == 46)
    {
      v146 = v26 + 1;
      if (v66 >= 2048)
      {
        goto LABEL_311;
      }

      word_2CA0A[v66 + 1] = 1;
      if (v66 == 2047)
      {
        goto LABEL_311;
      }

      v21 = v66 + 2;
      word_2CA0A[v66 + 2] = -1;
    }

    else
    {
      v148 = 0;
      if (v26 < v18)
      {
        if ((v67 - 48) > 9)
        {
          v146 = v26;
          v148 = 0;
        }

        else
        {
          v68 = 0;
          v69 = v139 - v26;
          v70 = v147 + v26 + 2;
          while (1)
          {
            v68 = v67 + 10 * v68 - 48;
            if (!v69)
            {
              break;
            }

            v71 = *v70++;
            LOWORD(v67) = v71;
            --v69;
            LODWORD(v26) = v26 + 1;
            if ((v71 - 48) > 9)
            {
              goto LABEL_202;
            }
          }

          LODWORD(v26) = v18;
LABEL_202:
          v146 = v26;
          v148 = v68;
          if (v68)
          {
            if (v66 >= 2048)
            {
              goto LABEL_311;
            }

            v83 = v66 + 1;
            word_2CA0A[v66 + 1] = v68;
            if (*(v147 + v26 + 1) == 45)
            {
              v84 = v26 + 1;
              if (v84 >= v18)
              {
                goto LABEL_331;
              }

              v85 = *(v147 + v84 + 1);
              if ((v85 - 48) > 9)
              {
                goto LABEL_331;
              }

              v68 = 0;
              v86 = v139 - v84;
              v87 = v147 + v84 + 2;
              while (1)
              {
                v68 = v85 + 10 * v68 - 48;
                if (!v86)
                {
                  break;
                }

                v88 = *v87++;
                LOWORD(v85) = v88;
                --v86;
                LODWORD(v84) = v84 + 1;
                if ((v88 - 48) > 9)
                {
                  goto LABEL_219;
                }
              }

              LODWORD(v84) = v18;
LABEL_219:
              v146 = v84;
              v148 = v68;
              if (!v68)
              {
LABEL_331:
                sub_545C(v5, "invalid range");
                return 0;
              }

              if (v66 == 2047)
              {
                goto LABEL_311;
              }

              v21 = v66 + 2;
              v89 = &word_2CA0A[v83];
            }

            else
            {
              if (v66 == 2047)
              {
                goto LABEL_311;
              }

              v21 = v66 + 2;
              v89 = &word_2CA0A[v83];
            }

            v89[1] = v68;
            goto LABEL_214;
          }
        }
      }

      if (v66 >= 2048)
      {
        goto LABEL_311;
      }

      word_2CA0A[v66 + 1] = 1;
      if (v66 == 2047)
      {
        goto LABEL_311;
      }

      v21 = v66 + 2;
      word_2CA0A[v66 + 2] = 1;
    }

LABEL_214:
    v20 = v146;
    if (v146 > v19)
    {
      if (v146 < v18)
      {
        v90 = v147 + v146 + 1;
        while (1)
        {
          v91 = *v90++;
          if (v91 > 0x20)
          {
            break;
          }

          if (v18 == ++v20)
          {
            goto LABEL_312;
          }
        }
      }

      if (v20 >= v18)
      {
LABEL_312:
        word_2CA0A[0] = v21;
        v145 = 0;
        v144 = 0;
        if (!sub_DF08(v5, v21, &v145, &v144))
        {
          return 0;
        }

        v131 = v145;
        if (v145)
        {
          v132 = v144;
          if (v144 < 1)
          {
            v132 = 0;
            v135 = &unk_2B000;
          }

          else
          {
            v133 = &word_2BA0A;
            v134 = v144;
            v135 = &unk_2B000;
            do
            {
              v136 = *v131++;
              *v133++ = v136;
              --v134;
            }

            while (v134);
          }

          v135[1284] = v132;
        }

        return sub_AEDC(v5, v9, &word_2BA08, word_2CA0A, 0, 0, 0, 0, v138, v140, v142);
      }

      while (2)
      {
        v92 = *(v147 + v20 + 1);
        if (v92 < 0x21)
        {
          goto LABEL_312;
        }

        if (v21 >= 2048)
        {
          sub_545C(v5, "Action part in multipass operand too long");
          return 0;
        }

        v93 = v20;
        if (*(v147 + v20 + 1) <= 0x3Au)
        {
          if (*(v147 + v20 + 1) <= 0x24u)
          {
            if (v92 != 34)
            {
              if (v92 != 35)
              {
                goto LABEL_333;
              }

              v146 = v20 + 1;
              if (!sub_DE08(v5, v147, &v146, &v148))
              {
                return 0;
              }

              v94 = v146;
              v95 = *(v147 + v146 + 1);
              if (v95 == 43 || v95 == 45)
              {
                ++v146;
                word_2CA0A[v21 + 1] = v95;
                if (v21 == 2047)
                {
                  goto LABEL_311;
                }

                v126 = v21;
                v21 += 2;
                word_2CA0A[v126 + 2] = v148;
              }

              else
              {
                if (v95 != 61)
                {
                  sub_545C(v5, "incorrect variable operator in action part");
                  return 0;
                }

                word_2CA0A[v21 + 1] = 61;
                if (v21 == 2047)
                {
                  goto LABEL_311;
                }

                v96 = 0;
                v97 = &word_2CA0A[v21];
                v97[2] = v148;
                v98 = v94 + 1;
                v146 = v98;
                v148 = 0;
                if (v98 < v18)
                {
                  v99 = *(v147 + v98 + 1);
                  if ((v99 - 48) > 9)
                  {
                    v96 = 0;
                  }

                  else
                  {
                    v96 = 0;
                    v100 = v139 - v98;
                    v101 = v147 + v98 + 2;
                    while (1)
                    {
                      v96 = v99 + 10 * v96 - 48;
                      if (!v100)
                      {
                        break;
                      }

                      v102 = *v101++;
                      LOWORD(v99) = v102;
                      --v100;
                      LODWORD(v98) = v98 + 1;
                      if ((v102 - 48) > 9)
                      {
                        goto LABEL_306;
                      }
                    }

                    LODWORD(v98) = v18;
                  }

LABEL_306:
                  v146 = v98;
                  v148 = v96;
                }

                if (v21 >= 2046)
                {
                  goto LABEL_311;
                }

                v21 += 3;
                v97[3] = v96;
              }

              goto LABEL_309;
            }

            if (!sub_DB2C(v5, v9, 1, 1, v140))
            {
              return 0;
            }

            v146 = v93 + 1;
            word_2CA0A[v21 + 1] = 34;
            sub_DC48(v147, &v146, &v149, v5);
            goto LABEL_278;
          }

          if (v92 == 37)
          {
            v112 = v20 + 1;
            v113 = *(v147 + v93 + 2);
            if ((v113 & 0xFFFFFFDF) - 65 > 0x19)
            {
              v114 = 0;
              v117 = v93 + 1;
            }

            else
            {
              v114 = 0;
              if (v93 + 2 > v18)
              {
                v115 = v93 + 2;
              }

              else
              {
                v115 = v18;
              }

              while (1)
              {
                v116 = v114++;
                v150[v116] = v113;
                v117 = v112 + 1;
                if (v112 + 1 >= v18)
                {
                  break;
                }

                v113 = *(v147 + v112++ + 2);
                if ((v113 & 0xFFFFFFDF) - 65 > 0x19)
                {
                  goto LABEL_297;
                }
              }

              v117 = v115;
            }

LABEL_297:
            v149 = v114;
            v146 = v117;
            v127 = *v142;
            v128 = sub_DE9C(&v149, *v142);
            if (v128)
            {
              v129 = v127 + 8 * v128 + 31616;
            }

            else
            {
              v129 = v141;
              if (!v141)
              {
                goto LABEL_332;
              }
            }

            if ((*(v129 + 44) - 58) > 2)
            {
LABEL_332:
              _lou_showString(v150, v114, 0);
              sub_545C(v5, "%s is not a swap name.");
              return 0;
            }

            word_2CA0A[v21 + 1] = 37;
            if (v21 == 2047)
            {
              goto LABEL_311;
            }

            v141 = v129;
            v130 = &word_2CA0A[v21];
            v130[2] = HIWORD(v128);
            if (v21 > 2045)
            {
              goto LABEL_311;
            }

            v21 += 3;
            v130[3] = v128;
            goto LABEL_309;
          }

          if (v92 != 42)
          {
            goto LABEL_333;
          }

          v103 = &word_2CA0A[v21];
          v104 = v21 + 1;
          v105 = 42;
        }

        else
        {
          if (*(v147 + v20 + 1) > 0x3Fu)
          {
            if (v92 != 64)
            {
              if (v92 != 123 && v92 != 125)
              {
LABEL_333:
                sub_545C(v5, "incorrect operator in action part");
                return 0;
              }

LABEL_259:
              v106 = v9;
              v107 = v20 + 1;
              v108 = *(v147 + v93 + 2);
              if ((v108 & 0xFFFFFFDF) - 65 > 0x19)
              {
                v42 = 0;
                v111 = v93 + 1;
              }

              else
              {
                v42 = 0;
                if (v93 + 2 > v18)
                {
                  v109 = v93 + 2;
                }

                else
                {
                  v109 = v18;
                }

                while (1)
                {
                  v110 = v42++;
                  v150[v110] = v108;
                  v111 = v107 + 1;
                  if (v107 + 1 >= v18)
                  {
                    break;
                  }

                  v108 = *(v147 + v107++ + 2);
                  if ((v108 & 0xFFFFFFDF) - 65 > 0x19)
                  {
                    goto LABEL_285;
                  }
                }

                v111 = v109;
              }

LABEL_285:
              v149 = v42;
              v146 = v111;
              v122 = *v142;
              v123 = sub_DE9C(&v149, *v142);
              if (v123)
              {
                v124 = v122 + 8 * v123 + 31616;
              }

              else
              {
                v124 = v141;
                if (!v141)
                {
                  goto LABEL_318;
                }
              }

              if (*(v124 + 44) != 69)
              {
                goto LABEL_318;
              }

              word_2CA0A[v21 + 1] = v92;
              if (v21 == 2047)
              {
                goto LABEL_311;
              }

              v141 = v124;
              v125 = &word_2CA0A[v21];
              v125[2] = HIWORD(v123);
              if (v21 > 2045)
              {
                goto LABEL_311;
              }

              v21 += 3;
              v125[3] = v123;
              v9 = v106;
LABEL_309:
              v20 = v146;
              if (v146 >= v18)
              {
                goto LABEL_312;
              }

              continue;
            }

            if (!sub_DB2C(v5, v9, 0, 1, v140))
            {
              return 0;
            }

            v146 = v93 + 1;
            sub_DCD4();
            word_2CA0A[v21 + 1] = 64;
            if (!v149)
            {
              sub_545C(v5, "expected dot pattern after @ operand in action part");
              return 0;
            }

LABEL_278:
            if (v21 == 2047)
            {
              goto LABEL_319;
            }

            v118 = v149;
            word_2CA0A[v21 + 2] = v149;
            if (v118)
            {
              v119 = v21 + 2;
              v120 = v150;
              while (v119 < 2048)
              {
                v121 = *v120++;
                v21 = v119 + 1;
                word_2CA0A[++v119] = v121;
                if (!--v118)
                {
                  goto LABEL_309;
                }
              }

LABEL_319:
              sub_545C(v5, "@ operand in action part of multipass operand too long");
              return 0;
            }

            v21 += 2;
            goto LABEL_309;
          }

          if (v92 == 59)
          {
            goto LABEL_259;
          }

          if (v92 != 63)
          {
            goto LABEL_333;
          }

          v103 = &word_2CA0A[v21];
          v104 = v21 + 1;
          v105 = 63;
        }

        break;
      }

      v103[1] = v105;
      v146 = v93 + 1;
      v21 = v104;
      goto LABEL_309;
    }
  }

  if (v23 == 35)
  {
    v146 = v20 + 1;
    if (!sub_DE08(v5, v147, &v146, &v148))
    {
      return 0;
    }

    v46 = v146;
    v47 = *(v147 + v146 + 1);
    switch(v47)
    {
      case '<':
        v62 = v146 + 1;
        if (*(v147 + v146 + 2) != 61)
        {
          if (v21 > 2047)
          {
            goto LABEL_311;
          }

          v48 = 60;
          goto LABEL_178;
        }

        if (v21 > 2047)
        {
          goto LABEL_311;
        }

        v48 = 130;
        break;
      case '>':
        v62 = v146 + 1;
        if (*(v147 + v146 + 2) != 61)
        {
          if (v21 > 2047)
          {
            goto LABEL_311;
          }

          v48 = 62;
          goto LABEL_178;
        }

        if (v21 > 2047)
        {
          goto LABEL_311;
        }

        v48 = 131;
        break;
      case '=':
        if (v21 > 2047)
        {
          goto LABEL_311;
        }

        v48 = 61;
        goto LABEL_178;
      default:
        sub_545C(v5, "incorrect comparison operator");
        return 0;
    }

    v46 = v62;
LABEL_178:
    word_2CA0A[v21 + 1] = v48;
    if (v21 >= 2047)
    {
      goto LABEL_311;
    }

    v74 = 0;
    v75 = &word_2CA0A[v21];
    v75[2] = v148;
    v76 = v46 + 1;
    v146 = v76;
    v148 = 0;
    if (v76 < v18)
    {
      v77 = *(v147 + v76 + 1);
      if ((v77 - 48) > 9)
      {
        v74 = 0;
      }

      else
      {
        v74 = 0;
        v78 = v139 - v76;
        v79 = v147 + v76 + 2;
        while (1)
        {
          v74 = v77 + 10 * v74 - 48;
          if (!v78)
          {
            break;
          }

          v80 = *v79++;
          LOWORD(v77) = v80;
          --v78;
          LODWORD(v76) = v76 + 1;
          if ((v80 - 48) > 9)
          {
            goto LABEL_198;
          }
        }

        LODWORD(v76) = v18;
      }

LABEL_198:
      v146 = v76;
      v148 = v74;
    }

    if (v21 == 2046)
    {
      goto LABEL_311;
    }

    v21 += 3;
    v75[3] = v74;
    goto LABEL_214;
  }

  v25 = 0;
  LODWORD(v26) = v22 + 1;
  v27 = v147 + v22 + 2;
  while (1)
  {
    v29 = *v27++;
    v28 = v29;
    if (v29 > 111)
    {
      break;
    }

    if (v28 <= 96)
    {
      switch(v28)
      {
        case 'D':
          v25 |= 0x100uLL;
          break;
        case 'S':
          v25 |= 0x80uLL;
          break;
        case 'U':
          v25 |= 0x10uLL;
          break;
        default:
          goto LABEL_97;
      }
    }

    else if (v28 > 107)
    {
      if (v28 == 108)
      {
        v25 |= 2uLL;
      }

      else
      {
        if (v28 != 109)
        {
          goto LABEL_97;
        }

        v25 |= 0x40uLL;
      }
    }

    else if (v28 == 97)
    {
      v25 = 0xFFFFFFFFLL;
    }

    else
    {
      if (v28 != 100)
      {
        goto LABEL_97;
      }

      v25 |= 4uLL;
    }

LABEL_61:
    LODWORD(v26) = v26 + 1;
  }

  if (v28 <= 118)
  {
    switch(v28)
    {
      case 'p':
        v25 |= 8uLL;
        break;
      case 's':
        v25 |= 1uLL;
        break;
      case 'u':
        v25 |= 0x20uLL;
        break;
      default:
        goto LABEL_97;
    }

    goto LABEL_61;
  }

  if (v28 <= 120)
  {
    if (v28 == 119)
    {
      v25 |= 0x8000000uLL;
    }

    else
    {
      v25 |= 0x10000000uLL;
    }

    goto LABEL_61;
  }

  if (v28 == 121)
  {
    v25 |= 0x20000000uLL;
    goto LABEL_61;
  }

  if (v28 == 122)
  {
    v25 |= 0x40000000uLL;
    goto LABEL_61;
  }

LABEL_97:
  v146 = v26;
  if (!v25)
  {
    sub_545C(v5, "missing attribute");
    return 0;
  }

LABEL_154:
  if (v21 < 2048)
  {
    word_2CA0A[v21 + 1] = 36;
    if (v21 != 2047)
    {
      v65 = &word_2CA0A[v21];
      v65[2] = HIWORD(v25);
      if (v21 < 2046)
      {
        v65[3] = WORD2(v25);
        if (v21 != 2045)
        {
          v65[4] = WORD1(v25);
          if (v21 < 2044)
          {
            v66 = v21 + 5;
            v65[5] = v25;
            goto LABEL_160;
          }
        }
      }
    }
  }

LABEL_311:
  sub_545C(v5, "multipass operand too long");
  return 0;
}

uint64_t sub_D228()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  memset(v16, 0, 512);
  memset(v15, 0, 512);
  memset(v14, 0, 512);
  v11 = 0;
  result = sub_9828(v0, v14, "name operand");
  if (result)
  {
    memset(v13, 0, 512);
    result = sub_9828(v9, v13, "matches operand");
    if (result)
    {
      memset(v12, 0, 512);
      result = sub_9828(v9, v12, "replacements operand");
      if (result)
      {
        if ((v8 & 0xFFFFFFFE) == 0x3A)
        {
          result = sub_32A4(v9, v16, v13);
          if (!result)
          {
            return result;
          }

          if (v8 == 58)
          {
            result = sub_32A4(v9, v15, v12);
            if (!result)
            {
              return result;
            }

            goto LABEL_11;
          }
        }

        else
        {
          result = sub_E0EC();
          if (!result)
          {
            return result;
          }
        }

        result = sub_E0EC();
        if (!result)
        {
          return result;
        }

LABEL_11:
        result = sub_AEDC(v9, v8, v16, v15, 0, 0, &v11, 0, v6, v4, v2);
        if (result)
        {
          return sub_D950(v9, v14, v11, *v2) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_D60C(uint64_t a1, _WORD *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = a2 + 1;
  v4 = *a2;
  do
  {
    v5 = *v3++;
    v2 = (v5 + 16 * v2) & 0xFFFFFFF ^ (16 * ((v5 + 16 * v2) >> 28));
    --v4;
  }

  while (v4);
  v6 = *(a1 + 8 * (v2 - 0x1FFF * (((268468229 * v2) >> 32) >> 9)));
  if (!v6)
  {
    return 0xFFFFLL;
  }

  while (1)
  {
    v7 = v6[1];
    if (*a2 == *v7)
    {
      break;
    }

LABEL_11:
    v6 = *v6;
    if (!v6)
    {
      return 0xFFFFLL;
    }
  }

  v8 = v7 + 1;
  v9 = a2 + 1;
  v10 = *a2;
  while (1)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v8++;
    if (v11 != v13)
    {
      break;
    }

    if (!--v10)
    {
      return *(v6 + 4);
    }
  }

  if (v10)
  {
    goto LABEL_11;
  }

  return *(v6 + 4);
}

uint64_t sub_D6BC(int *a1, uint64_t a2, _WORD *a3)
{
  v6 = *a3;
  if (*a3)
  {
    v7 = 0;
    v8 = a3 + 1;
    do
    {
      v9 = *v8++;
      v7 = (v9 + 16 * v7) & 0xFFFFFFF ^ (16 * ((v9 + 16 * v7) >> 28));
      --v6;
    }

    while (v6);
    v10 = v7 - 0x1FFF * (((268468229 * v7) >> 32) >> 9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *a1;
  v12 = malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
  v13 = v12;
  if (!v12)
  {
    _lou_outOfMemory();
  }

  *v12 = *(a2 + 8 * v10);
  v14 = malloc_type_malloc(2 * *a3 + 2, 0x1000040BDFB0063uLL);
  v13[1] = v14;
  if (!v14)
  {
    _lou_outOfMemory();
  }

  v15 = *a3;
  *v14 = v15;
  if (v15)
  {
    v16 = 1;
    do
    {
      v14[v16] = a3[v16];
    }

    while (v16++ < *a3);
  }

  *(v13 + 4) = v11;
  *(a2 + 8 * v10) = v13;
  v18 = *(a1 + 1);
  if ((*a1 & (*a1 - 1)) == 0)
  {
    v18 = malloc_type_realloc(v18, 32 * *a1, 0x10220409E769576uLL);
    *(a1 + 1) = v18;
  }

  if (!v18)
  {
    _lou_outOfMemory();
  }

  v19 = &v18[16 * *a1];
  *v19 = 0;
  *(v19 + 1) = 0xFFFF00000000;
  result = *a1;
  *a1 = result + 1;
  return result;
}

char *sub_D830(uint64_t a1, uint64_t a2, unsigned int **a3, unsigned int a4)
{
  v6 = a2;
  v18 = 0;
  v8 = *a3;
  v9 = v8[_lou_charHash(a2) + 4525];
  if (v9)
  {
    v10 = v8 + 7904;
    while (1)
    {
      v11 = &v10[2 * v9];
      if (*(v11 + 22) == v6)
      {
        break;
      }

      v9 = *(v11 + 3);
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    sub_B58C(a1, &v18, 64, a3);
    v12 = &(*a3)[2 * v18];
    v11 = (v12 + 7904);
    *(v12 + 1979) = 0u;
    *(v12 + 1978) = 0u;
    *(v12 + 1977) = 0u;
    *(v12 + 1976) = 0u;
    *(v12 + 3952) = *(a1 + 8);
    v12[7906] = *(a1 + 24);
    v12[7918] = a4;
    *(v12 + 15830) = v6;
    v13 = _lou_charHash(v6);
    v14 = (*a3 + 4525);
    v15 = *&v14[4 * v13];
    if (v15)
    {
      do
      {
        v16 = &(*a3)[2 * v15 + 7904];
        v15 = v16[3];
      }

      while (v15);
      v16[3] = v18;
    }

    else
    {
      *&v14[4 * v13] = v18;
    }
  }

  return v11;
}

uint64_t sub_D950(uint64_t a1, _WORD *a2, int a3, uint64_t a4)
{
  v8 = malloc_type_malloc(2 * *a2 + 14, 0x1020040EDED9539uLL);
  v9 = v8;
  if (!v8)
  {
    sub_545C(a1, "not enough memory");
    _lou_outOfMemory();
  }

  *v8 = 0;
  v8[1] = 0;
  if (*a2)
  {
    v10 = 0;
    while (1)
    {
      v11 = a2[v10 + 1];
      if ((v11 & 0xFFFFFFDF) - 65 > 0x19)
      {
        break;
      }

      *(v8 + v10++ + 7) = v11;
      v12 = *a2;
      if (v10 >= v12)
      {
        goto LABEL_9;
      }
    }

    sub_545C(a1, "a name may contain only letters");
    free(v9);
    return 0;
  }

  else
  {
    LOWORD(v12) = 0;
LABEL_9:
    *(v8 + 6) = v12;
    *(v8 + 2) = a3;
    *v8 = *(a4 + 32);
    *(a4 + 32) = v8;
    return 1;
  }
}

void sub_DA48(uint64_t a1, _DWORD *a2, unsigned int **a3)
{
  v4 = *a3;
  v5 = **a3;
  v6 = (*a3)[1] + 8;
  if (v6 > v5)
  {
    v9 = v6 + (v6 >> 3);
    v10 = malloc_type_realloc(*a3, v9, 0x2E063726uLL);
    v4 = v10;
    if (!v10)
    {
      sub_545C(a1, "Not enough memory for display table.");
      _lou_outOfMemory();
    }

    bzero(v10 + v5, v9 - v5);
    v11 = qword_2B0D8;
    if (qword_2B0D8)
    {
      do
      {
        if (v11[1] == *a3)
        {
          v11[1] = v4;
        }

        v11 = *v11;
      }

      while (v11);
    }

    *v4 = v9;
    *a3 = v4;
  }

  if (a2)
  {
    *a2 = (v4[1] + 0x7FFFFDCD8) >> 3;
    v4[1] += 8;
  }
}

uint64_t sub_DB2C(uint64_t a1, unsigned int a2, int a3, int a4, int a5)
{
  v5 = a2 == 75;
  if (a2 == 74)
  {
    v5 = (a4 != 0) ^ (a5 == 0);
  }

  if (v5 != (a3 == 0))
  {
    return 1;
  }

  if (a3)
  {
    v7 = "strings";
  }

  else
  {
    v7 = "dots";
  }

  if (a4)
  {
    v8 = "action";
  }

  else
  {
    v8 = "test";
  }

  if (a5)
  {
    v9 = "backward";
  }

  else
  {
    v9 = "forward";
  }

  if (a2 < 0x75)
  {
    v10 = off_24370[a2];
  }

  else
  {
    v10 = byte_2988E;
    __sprintf_chk(byte_2988E, 0, 0x800uLL, "%u", a2);
  }

  sub_545C(a1, "%s are not allowed in the %s part of a %s translation %s rule.", v7, v8, v9, v10);
  return 0;
}

void sub_DC48(unsigned __int16 *result, int *a2, unsigned __int16 *a3, uint64_t a4)
{
  *a3 = 0;
  v4 = *a2;
  if (v4 >= *result)
  {
LABEL_9:
    sub_545C(a4, "unterminated string");
    return;
  }

  v5 = 0;
  v6 = a3 + 1;
  v7 = v4 + 1;
  while (1)
  {
    v8 = result[v4 + 1];
    if (v8 != 28)
    {
      break;
    }

    LOWORD(v8) = 34;
LABEL_8:
    v9 = v5++;
    *a3 = v5;
    v6[v9] = v8;
    ++v4;
    *a2 = v7++;
    if (v4 >= *result)
    {
      goto LABEL_9;
    }
  }

  if (v8 != 34)
  {
    if (!result[v4 + 1])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6[v5] = 0;
  *a2 = v7;
}

uint64_t sub_DCD4()
{
  v0 = __chkstk_darwin();
  memset(v17, 0, 510);
  v4 = *v0;
  v5 = *v1;
  if (v4 <= v5)
  {
    v14 = 0;
  }

  else
  {
    v6 = 0;
    v7 = &v0[v5 + 1];
    v8 = v4 - v5;
    v9 = v5 + 1;
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      v12 = v11 - 48;
      v13 = v11 != 45 && v12 >= 0xA;
      if (v13 && (v10 | 0x20u) - 97 > 5)
      {
        break;
      }

      v14 = v6 + 1;
      *v1 = v9;
      *(v17 + v6) = v10;
      ++v9;
      ++v6;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }

    v14 = v6;
  }

LABEL_13:
  v16 = v14;
  return sub_3860(v3, v2, &v16);
}

uint64_t sub_DE08(uint64_t a1, unsigned __int16 *a2, int *a3, unsigned __int16 *a4)
{
  v6 = *a3;
  *a4 = 0;
  if (v6 >= *a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = v6 + 1;
  do
  {
    v9 = a2[v6 + 1];
    if ((v9 - 48) > 9)
    {
      break;
    }

    ++v6;
    *a3 = v8;
    v7 = v9 + 10 * v7 - 48;
    *a4 = v7;
    ++v8;
  }

  while (v6 < *a2);
  if (v7 < 0x32u)
  {
    return 1;
  }

  sub_545C(a1, "variable number out of range", v4, v5);
  return 0;
}

uint64_t sub_DE9C(char *__s1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = __s1 + 2;
  v4 = *__s1;
  while (v4 != *(v2 + 6) || memcmp(v3, v2 + 14, 2 * v4))
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 2);
}

uint64_t sub_DF08(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (a2 < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    while (1)
    {
      v6 = word_2CA0A[v4 + 1];
      v7 = 1;
      if (v6 <= 0x3E)
      {
        break;
      }

      if (word_2CA0A[v4 + 1] <= 0x5Cu)
      {
        if (v6 == 63 || v6 == 91)
        {
          goto LABEL_32;
        }

        if (v6 != 64)
        {
          goto LABEL_41;
        }

        goto LABEL_28;
      }

      v8 = v6 - 96;
      if (v6 - 96 <= 0x23)
      {
        if (((1 << v8) & 0x40000001) != 0)
        {
          goto LABEL_32;
        }

        if (((1 << v8) & 0xC00000000) != 0)
        {
LABEL_12:
          LODWORD(v7) = 3;
          goto LABEL_32;
        }

        if (((1 << v8) & 0x28000000) != 0)
        {
          return v7;
        }
      }

      if (v6 == 93)
      {
        goto LABEL_32;
      }

      if (v6 != 95)
      {
        goto LABEL_41;
      }

      v5 += word_2CA0A[v4 + 2];
      v4 += 2;
LABEL_36:
      v7 = 1;
      if (v4 >= a2)
      {
        return v7;
      }
    }

    if (word_2CA0A[v4 + 1] <= 0x2Cu)
    {
      break;
    }

    if (v6 - 60 < 3)
    {
      goto LABEL_12;
    }

    if (v6 != 45)
    {
      if (v6 == 59)
      {
        return v7;
      }

LABEL_41:
      sub_545C(a1, "unhandled test suboperand: \\x%02x", v6);
      return 0;
    }

LABEL_32:
    v4 += v7;
    if (v4 >= a2)
    {
      return 1;
    }
  }

  if (word_2CA0A[v4 + 1] > 0x23u)
  {
    if (v6 - 42 < 2)
    {
      goto LABEL_32;
    }

    if (v6 != 36)
    {
      if (v6 == 37)
      {
        return v7;
      }

      goto LABEL_41;
    }

    v9 = &word_2CA0A[v4];
    v10 = v9[6];
    v11 = v9[7];
    if (v10 != v11 || v5 < v11)
    {
      return 1;
    }

    v4 += 7;
    v5 -= v11;
    goto LABEL_36;
  }

  if (v6 == 33)
  {
    goto LABEL_32;
  }

  if (v6 == 32)
  {
    return v7;
  }

  if (v6 != 34)
  {
    goto LABEL_41;
  }

LABEL_28:
  v13 = word_2CA0A[v4 + 2];
  v14 = v4 + 2;
  if (v5 >= v13)
  {
    v4 = v14 + v13;
    v5 -= v13;
    goto LABEL_36;
  }

  *a3 = &word_2CA0A[v14 + 1 + v5];
  *a4 = v13 - v5;
  return 1;
}

uint64_t sub_E0EC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = 0;
  v7 = 0;
  memset(v24, 0, 510);
  memset(v22, 0, 512);
  *v1 = 0;
  v8 = v1 + 1;
  v23 = 0;
  v10 = v3 + 1;
  v9 = *v3;
  do
  {
    if (v6 == v9 || (v11 = v10[v6], v11 == 44))
    {
      result = sub_3860(v5, v22, &v23);
      if (!result)
      {
        return result;
      }

      v14 = LOWORD(v22[0]);
      v15 = LOWORD(v22[0]) + 1;
      v16 = *v2;
      v17 = v16 + 1;
      *v2 = v16 + 1;
      v8[v16] = v15;
      if (v14)
      {
        v18 = v22 + 1;
        do
        {
          v19 = *v18++;
          v20 = v17++;
          v8[v20] = v19;
          --v14;
        }

        while (v14);
        *v2 = v17;
      }

      v7 = 0;
      v23 = 0;
      v9 = *v4;
    }

    else
    {
      v12 = v7++;
      v23 = v7;
      v24[v12] = v11;
    }
  }

  while (v6++ < v9);
  return 1;
}

void _lou_logWidecharBuf(uint64_t a1, char *__s, unsigned __int16 *a3, unsigned int a4)
{
  v8 = 9 * a4;
  v9 = strlen(__s);
  v10 = malloc_type_malloc(v8 + v9 + 3, 0x9AB09958uLL);
  v11 = strlen(__s);
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      v10[v12] = __s[v12];
      ++v12;
      v11 = strlen(__s);
    }

    while (v12 < v11);
  }

  v13 = &v10[v11];
  if (a4 < 1)
  {
    *v13 = 8318;
    v18 = v13 + 2;
  }

  else
  {
    v14 = a4;
    v15 = a4;
    v16 = a3;
    do
    {
      v17 = *v16++;
      v13 += sprintf(v13, "0x%04X ", v17);
      --v15;
    }

    while (v15);
    *v13 = 8318;
    v18 = v13 + 2;
    do
    {
      v20 = *a3++;
      v19 = v20;
      if (v20 >= 0x100)
      {
        v19 = 32;
      }

      *v18++ = v19;
      --v14;
    }

    while (v14);
  }

  *v18 = 0;
  _lou_logMessage(a1, "%s", v10);

  free(v10);
}

void _lou_logMessage(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    if (dword_28D30 <= a1 && off_28D28 != 0)
    {
      v5 = vsnprintf(0, 0, __format, va);
      v6 = malloc_type_malloc(v5 + 1, 0x26575843uLL);
      if (v6)
      {
        v7 = v6;
        vsnprintf(v6, v5 + 1, __format, va);
        off_28D28(a1, v7);
        free(v7);
      }
    }
  }
}

uint64_t (*lou_registerLogCallback(uint64_t (*result)(uint64_t a1, const char *a2)))(uint64_t a1, const char *a2)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = sub_E500;
  }

  off_28D28 = v1;
  return result;
}

uint64_t sub_E500(uint64_t a1, const char *a2)
{
  v3 = qword_2DA10;
  if (!qword_2DA10)
  {
    v3 = fopen(&byte_2DA18, "a");
    qword_2DA10 = v3;
    if (!v3)
    {
      v3 = __stderrp;
      qword_2DA10 = __stderrp;
    }
  }

  fprintf(v3, "%s\n", a2);
  v4 = qword_2DA10;

  return fflush(v4);
}

unint64_t lou_logFile(char *__s)
{
  result = qword_2DA10;
  if (qword_2DA10)
  {
    result = fclose(qword_2DA10);
    qword_2DA10 = 0;
  }

  if (__s)
  {
    if (*__s)
    {
      result = strlen(__s);
      if (result <= 0xFF)
      {
        if (!byte_2DA18)
        {
          __strcpy_chk();
        }

        result = fopen(__s, "a");
        qword_2DA10 = result;
        if (!result && byte_2DA18)
        {
          result = fopen(&byte_2DA18, "a");
          qword_2DA10 = result;
        }

        if (!result)
        {
          result = fprintf(__stderrp, "Cannot open log file %s\n", __s);
          qword_2DA10 = __stderrp;
        }
      }
    }
  }

  return result;
}

const char *lou_logPrint(const char *result, ...)
{
  va_start(va, result);
  if (result)
  {
    v1 = result;
    v2 = qword_2DA10;
    if (!qword_2DA10)
    {
      v2 = fopen(&byte_2DA18, "a");
      qword_2DA10 = v2;
      if (!v2)
      {
        v2 = __stderrp;
        qword_2DA10 = __stderrp;
      }
    }

    vfprintf(v2, v1, va);
    fputc(10, qword_2DA10);
    return fflush(qword_2DA10);
  }

  return result;
}

uint64_t lou_logEnd()
{
  result = qword_2DA10;
  if (qword_2DA10)
  {
    v1 = qword_2DA10 == __stderrp;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    result = fclose(qword_2DA10);
  }

  qword_2DA10 = 0;
  return result;
}

unsigned int *_lou_backTranslate(char *a1, const char *a2, unsigned __int16 *a3, unsigned int *a4, _WORD *a5, int *a6, void *a7, void *a8, char *a9, uint64_t a10, int *a11, unsigned int a12, uint64_t a13, int *a14)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  v16 = a3;
  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!a5)
  {
    return result;
  }

  v17 = a6;
  if (!a6)
  {
    return result;
  }

  v257 = 0;
  v258 = 0;
  if (!a2)
  {
    a2 = a1;
  }

  _lou_getTable(a1, a2, &v258, &v257);
  if (!v258)
  {
    return 0;
  }

  if (!_lou_isValidMode(a12))
  {
    _lou_logMessage(40000, "Invalid mode parameter: %d", a12);
  }

  v20 = &unk_2D000;
  if (qword_2DB18)
  {
    if (*qword_2DB18 < 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = malloc_type_malloc(0x28uLL, 0x109004028638895uLL);
    *v21 = 3;
    v21[1] = &unk_2DB20;
    v21[2] = &unk_2DB38;
    v21[3] = sub_104A0;
    v21[4] = 0;
    qword_2DB18 = v21;
  }

  v22 = 0;
  do
  {
    sub_103B4(v22);
    v22 = (v22 + 1);
  }

  while (v22 < *qword_2DB18);
LABEL_18:
  v23 = *a4;
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    while (v16[v24])
    {
      if (v23 == ++v24)
      {
        v25 = *a4;
        goto LABEL_25;
      }
    }

    v25 = v24;
  }

LABEL_25:
  v26 = sub_1041C(v25, v19);
  v27 = v26;
  v28 = *(qword_2DB18 + 8);
  v29 = *(v28 + 8 * v26);
  if (v25)
  {
    v30 = v25;
    v31 = v25;
    v32 = *(v28 + 8 * v26);
    do
    {
      v34 = *v16++;
      v33 = v34;
      if ((a12 & 4) != 0)
      {
        DotsForChar = v33 | 0x8000;
      }

      else
      {
        DotsForChar = _lou_getDotsForChar(v33, v257);
      }

      *v32++ = DotsForChar;
      --v31;
    }

    while (v31);
    v20 = &unk_2D000;
  }

  else
  {
    v30 = 0;
  }

  v253[1] = 0;
  v256 = 0;
  v251 = 0;
  v252 = 0;
  v250 = 0;
  v29[v30] = _lou_getDotsForChar(32, v257);
  v253[0] = v27;
  v254 = v29;
  v255 = v25;
  v37 = sub_1041C(*v17, v36);
  v38 = *(*(v20[355] + 8) + 8 * v37);
  v39 = *v17;
  LODWORD(v250) = v37;
  v251 = v38;
  v252 = v39;
  if (a9 && v25)
  {
    memset(a9, 255, 4 * v30);
  }

  if (a11)
  {
    v40 = *a11;
  }

  else
  {
    v40 = -1;
  }

  v248 = 0;
  v249 = v40;
  v41 = *v17;
  if (a7)
  {
    memset(a7, 48, v41);
    v41 = *v17;
  }

  v42 = a4;
  if (a8)
  {
    memset(a8, 42, v41);
    v41 = *v17;
  }

  result = _lou_allocMem(5, 0, v25, v41);
  if (result)
  {
    v43 = result;
    if (v258[233] > 1 || v258[234])
    {
      result = _lou_allocMem(6, 0, v25, *v17);
      v215 = result;
      if (!result)
      {
        return result;
      }

      result = _lou_allocMem(7, 0, v25, *v17);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      v215 = 0;
    }

    v233 = 0;
    v229 = 0;
    if (a13 && a14)
    {
      v229 = *a14;
      v233 = a13;
    }

    __dst = result;
    v234 = 0;
    v219 = v258[234] == 0;
    v44 = v258[233];
    v240 = v43;
    v214 = v17;
    v227 = v43;
    while (1)
    {
      v45 = v258;
      v247 = v258;
      v232 = v44;
      if (!v44)
      {
        break;
      }

      if (v44 == 1)
      {
        v266 = 0;
        *&v267 = 0;
        DWORD2(v267) = 0;
        v265 = 0;
        _lou_resetPassVariables();
        translation_direction = 0;
        HIDWORD(v252) = 0;
        HIDWORD(v267) = 0;
        if (v25 < 1)
        {
          LODWORD(v169) = 0;
          goto LABEL_415;
        }

        v46 = 0;
        v228 = 0;
        v231 = v45 + 3402;
        v47 = v45 + 7904;
        v245 = v45 + 4525;
        v222 = 0;
        v223 = v45 + 6781;
        v224 = 117;
        while (1)
        {
          v262 = 0;
          v259 = 0;
          v260 = 0;
          v263 = 0;
          v264 = 0;
          v261 = 0;
          v48 = HIDWORD(v252);
          if (HIDWORD(v252))
          {
            v49 = v251[SHIDWORD(v252) - 1];
          }

          else
          {
            v49 = 32;
          }

          v50 = v231[_lou_charHash(v49)];
          if (v50)
          {
            while (1)
            {
              v51 = &v47[2 * v50];
              if (*(v51 + 22) == v49)
              {
                break;
              }

              v50 = v51[3];
              if (!v50)
              {
                goto LABEL_64;
              }
            }
          }

          else
          {
LABEL_64:
            v51 = &unk_28D38;
            word_28D64 = v49;
          }

          v52 = *(v51 + 3);
          if (HIDWORD(v266) == 2)
          {
            if ((v52 & 0x210) != 0)
            {
              goto LABEL_72;
            }

            v53 = 0;
          }

          else
          {
            if (HIDWORD(v266) != 1 || (v52 & 0x10) == 0)
            {
              goto LABEL_72;
            }

            v53 = 2;
          }

          HIDWORD(v266) = v53;
LABEL_72:
          v235 = DWORD1(v267);
          if (DWORD1(v267) == 2)
          {
            v235 = 2;
            if (v48 >= 1 && (v52 & 0x4000900) == 0)
            {
              v235 = 0;
              DWORD1(v267) = 0;
            }
          }

          v230 = v48;
          v54 = DWORD2(v267);
          v55 = v254;
          v241 = &v254[v46];
          v56 = *v241;
          v57 = v245[_lou_charHash(*v241)];
          if (v57)
          {
            while (1)
            {
              v58 = &v47[2 * v57];
              if (*(v58 + 22) == v56)
              {
                break;
              }

              v57 = v58[3];
              if (!v57)
              {
                goto LABEL_79;
              }
            }
          }

          else
          {
LABEL_79:
            v58 = &unk_28D78;
            word_28DA4 = v56;
          }

          if (sub_1172C(v45, &v262, &v259 + 1, &v264, &v265, v228))
          {
            goto LABEL_81;
          }

          v237 = v55;
          v238 = v25;
          v60 = 0;
          v61 = v25 - v46;
          v225 = v52 & 9;
          v62 = v225 == 0;
          v221 = v52 & 0xB;
          v243 = v52;
          v63 = (a12 >> 8) & 1;
          if (v52)
          {
            v64 = (a12 >> 8) & 1;
          }

          else
          {
            LOBYTE(v64) = 1;
          }

          v218 = v64;
          if (v54)
          {
            LOBYTE(v63) = 1;
          }

          if (v235)
          {
            v62 = 1;
          }

          v217 = v63 | v62;
          v216 = v251;
          do
          {
            if (v60)
            {
              if (v60 != 1)
              {
                v264 = &unk_2DB48;
                dword_2DB74 = 117;
                HIDWORD(v259) = 117;
                word_2DB7C = 1;
                v262 = 1;
                word_2DB7E = *v241;
                word_2DB7A = 0;
                break;
              }

              if (v61 <= 0)
              {
                goto LABEL_205;
              }

              v61 = 1;
              v65 = v58 + 5;
            }

            else
            {
              if (v61 < 2 || v235 && (*(v58 + 25) & 1) != 0)
              {
                goto LABEL_205;
              }

              v66 = *(v58 + 22);
              v67 = v241[1];
              v68 = v245[_lou_charHash(v241[1])];
              if (v68)
              {
                while (1)
                {
                  v69 = &v47[2 * v68];
                  if (*(v69 + 22) == v67)
                  {
                    break;
                  }

                  v68 = v69[3];
                  if (!v68)
                  {
                    goto LABEL_102;
                  }
                }
              }

              else
              {
LABEL_102:
                word_28DA4 = v67;
              }

              v65 = &v223[(v66 << 8) + v67 - 1123 * ((((v66 << 8) + v67) * 0x3A5BA3E76156DBuLL) >> 64)];
            }

            v70 = *v65;
            if (v70)
            {
              while (1)
              {
                v71 = &v47[2 * v70];
                v264 = v71;
                v72 = *(v71 + 44);
                HIDWORD(v259) = v72;
                v73 = (v71 + 54);
                v74 = (v71 + 50);
                if (v72 != 74)
                {
                  v73 += *(v71 + 50);
                  v74 = (v71 + 52);
                }

                v75 = *v74;
                v262 = v75;
                if (v75)
                {
                  v76 = v61 < v75;
                }

                else
                {
                  v76 = 1;
                }

                if (v76)
                {
                  goto LABEL_203;
                }

                if (v75 >= 1)
                {
                  break;
                }

LABEL_115:
                if (v46 + v75 >= v238)
                {
                  v82 = 32;
                }

                else
                {
                  v82 = *(v237 + 2 * (v46 + v75));
                }

                v83 = v245[_lou_charHash(v82)];
                if (v83)
                {
                  while (1)
                  {
                    v84 = &v47[2 * v83];
                    if (*(v84 + 22) == v82)
                    {
                      break;
                    }

                    v83 = v84[3];
                    if (!v83)
                    {
                      goto LABEL_121;
                    }
                  }
                }

                else
                {
LABEL_121:
                  v84 = &unk_28D78;
                  word_28DA4 = v82;
                }

                v85 = *(v71 + 24);
                v86 = v85 & 0xFFFFFFFFFDFFFFFFLL;
                v87 = v85 & v243;
                if (v86)
                {
                  v88 = v87 == 0;
                }

                else
                {
                  v88 = 0;
                }

                if (v88)
                {
                  goto LABEL_203;
                }

                v89 = *(v84 + 3);
                v90 = *(v71 + 32);
                v91 = v90 & 0xFFFFFFFFFDFFFFFFLL;
                v92 = v90 & v89;
                if (v91 && v92 == 0)
                {
                  goto LABEL_203;
                }

                v94 = v71;
                switch(v72)
                {
                  case 3:
                  case 4:
                  case 5:
                  case 6:
                  case 7:
                  case 23:
                  case 37:
                  case 38:
                  case 45:
                  case 46:
                  case 61:
                  case 62:
                  case 63:
                  case 64:
                  case 65:
                  case 66:
                  case 67:
                  case 68:
                  case 73:
                  case 79:
                  case 84:
                  case 90:
                  case 110:
                    goto LABEL_81;
                  case 8:
                  case 9:
                  case 10:
                  case 11:
                  case 12:
                  case 13:
                  case 14:
                  case 15:
                  case 16:
                  case 17:
                  case 18:
                  case 20:
                  case 21:
                  case 22:
                  case 25:
                  case 26:
                  case 27:
                  case 28:
                  case 29:
                  case 30:
                  case 31:
                  case 32:
                  case 33:
                  case 34:
                  case 35:
                  case 36:
                  case 39:
                  case 40:
                  case 41:
                  case 42:
                  case 43:
                  case 44:
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
                  case 69:
                  case 70:
                  case 72:
                  case 75:
                  case 76:
                  case 77:
                  case 78:
                  case 80:
                  case 81:
                  case 82:
                  case 85:
                  case 86:
                  case 87:
                  case 88:
                  case 89:
                  case 111:
                  case 112:
                    break;
                  case 19:
                  case 24:
                    if ((v243 & 2) != 0)
                    {
                      goto LABEL_203;
                    }

                    v94 = v71;
                    if ((v89 & 0x82) != 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 47:
                    v95 = 130;
                    goto LABEL_162;
                  case 48:
                    v265 = v75;
                    if (sub_1172C(v247, &v262, &v259 + 1, &v264, &v265, v71))
                    {
                      v228 = v71;
                      goto LABEL_81;
                    }

                    v94 = v264;
                    v228 = v71;
                    break;
                  case 71:
                    v94 = v71;
                    if (!v235)
                    {
                      break;
                    }

                    goto LABEL_81;
                  case 74:
                    v96 = sub_1062C(v247, v46, v253, 74, v71, &v263, &v259, &v260);
                    goto LABEL_192;
                  case 83:
                    if ((v243 & 0x100) != 0 && (v89 & 0x100) != 0)
                    {
                      v94 = v71;
                      if (*(v71 + 50) > 1)
                      {
                        break;
                      }
                    }

                    goto LABEL_81;
                  case 91:
                    if (v217)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_190;
                  case 92:
                    if ((v243 & 0x100) != 0)
                    {
                      goto LABEL_203;
                    }

                    if ((v243 & 2) != 0)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_195;
                  case 93:
                  case 94:
                    if (!v225)
                    {
                      goto LABEL_203;
                    }

                    if ((a12 & 0x100) != 0)
                    {
                      goto LABEL_81;
                    }

                    v94 = v71;
                    if ((v89 & 1) == 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 95:
                    if ((v218 & 1) != 0 || v224 == 94)
                    {
                      goto LABEL_203;
                    }

                    v94 = v71;
                    if (v89)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 96:
                    if (!v225)
                    {
                      goto LABEL_203;
                    }

LABEL_190:
                    if ((v89 & 1) == 0)
                    {
                      goto LABEL_191;
                    }

                    goto LABEL_81;
                  case 97:
                    v94 = v71;
                    if (!v225)
                    {
                      break;
                    }

                    goto LABEL_81;
                  case 98:
                    if (!v221)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_191;
                  case 99:
                    if (!v225)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_195;
                  case 100:
                    if (!v221)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_195;
                  case 101:
                    if ((v243 & 2) == 0)
                    {
                      goto LABEL_203;
                    }

LABEL_195:
                    v104 = sub_11850(v247, v46, a12, v253, v75);
                    v94 = v71;
                    if (!v104)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 102:
                    v94 = v71;
                    if ((v243 & 2) == 0)
                    {
                      break;
                    }

                    goto LABEL_81;
                  case 103:
                    if ((v243 & 2) == 0)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_191;
                  case 104:
                    v97 = v230;
                    if (!v230)
                    {
                      goto LABEL_81;
                    }

                    do
                    {
                      if (v97 < 1)
                      {
                        goto LABEL_81;
                      }

                      v98 = v216[--v97];
                      v99 = v231[_lou_charHash(v216[v97])];
                      if (v99)
                      {
                        while (1)
                        {
                          v100 = &v47[2 * v99];
                          if (*(v100 + 22) == v98)
                          {
                            break;
                          }

                          v99 = v100[3];
                          if (!v99)
                          {
                            goto LABEL_154;
                          }
                        }
                      }

                      else
                      {
LABEL_154:
                        v100 = &unk_28D38;
                        word_28D64 = v98;
                      }

                      v101 = *(v100 + 3);
                      if (v101)
                      {
                        v102 = 2;
                      }

                      else
                      {
                        v102 = (v101 & 0xC6) != 0;
                      }
                    }

                    while (!v102);
                    if (v102 != 2)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_81;
                  case 105:
LABEL_191:
                    v96 = sub_11850(v247, v46, a12, v253, v75);
                    goto LABEL_192;
                  case 106:
                    if (!v225)
                    {
                      goto LABEL_203;
                    }

                    v94 = v71;
                    if ((v89 & 0x180) != 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 107:
                    if ((v243 & 4) == 0)
                    {
                      goto LABEL_203;
                    }

                    v94 = v71;
                    if ((v89 & 0x100) != 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 108:
                    if (!v235)
                    {
                      goto LABEL_203;
                    }

                    v94 = v71;
                    if ((v89 & 0x100) == 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 109:
                    v95 = 260;
LABEL_162:
                    v94 = v71;
                    if ((v89 & v95) != 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 113:
                    v103 = &v47[2 * *(v71 + 40)];
                    if (!_lou_pattern_check(v237, v46 - 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v103 + 2, v247))
                    {
                      goto LABEL_203;
                    }

                    v96 = _lou_pattern_check(v237, v46 + *(v71 + 52), v238, 1, v103 + 2 * *v103, v247);
LABEL_192:
                    v94 = v71;
                    if (v96)
                    {
                      goto LABEL_81;
                    }

                    break;
                  default:
                    goto LABEL_203;
                }

LABEL_204:
                v70 = *(v94 + 5);
                if (!v70)
                {
                  goto LABEL_205;
                }
              }

              v77 = v241;
              v78 = v75;
              while (1)
              {
                v80 = *v77++;
                v79 = v80;
                v81 = *v73++;
                if (v79 != v81)
                {
                  break;
                }

                if (!--v78)
                {
                  goto LABEL_115;
                }
              }

LABEL_203:
              v94 = v71;
              goto LABEL_204;
            }

LABEL_205:
            ++v60;
          }

          while (v60 != 3);
LABEL_81:
          if (v233)
          {
            v59 = v234;
            v20 = &unk_2D000;
            v43 = v227;
            v45 = v247;
            if (v234 < v229)
            {
              *(v233 + 8 * v234) = v264;
              v59 = v234 + 1;
            }
          }

          else
          {
            v20 = &unk_2D000;
            v43 = v227;
            v59 = v234;
            v45 = v247;
          }

          v105 = HIDWORD(v259);
          v234 = v59;
          if (SHIDWORD(v259) > 45)
          {
            if (SHIDWORD(v259) > 73)
            {
              if (SHIDWORD(v259) <= 105)
              {
                if (HIDWORD(v259) != 74)
                {
                  if (HIDWORD(v259) != 90 || v224 != 90 || sub_1160C(v45, v46, v253, &v250, a8, v240, &v249, &v248, &v266))
                  {
                    goto LABEL_284;
                  }

                  goto LABEL_403;
                }

                LODWORD(v211) = 74;
                result = sub_10B90(v45, &v267 + 3, a12, v253, &v250, v240, &v249, &v248, &v266, v211, v264, v263, v259, v260, v261);
                if (!result)
                {
                  return result;
                }

                v114 = HIDWORD(v267);
              }

              else
              {
                if (HIDWORD(v259) == 106)
                {
                  v120 = 1;
                  goto LABEL_282;
                }

                if (HIDWORD(v259) == 108)
                {
                  DWORD1(v267) = 0;
                  goto LABEL_284;
                }

                if (HIDWORD(v259) != 117)
                {
                  goto LABEL_284;
                }

                if (!sub_1157C(*v241, a12, &v250, v46, v240))
                {
                  goto LABEL_403;
                }

                v114 = (v46 + 1);
                HIDWORD(v267) = v46 + 1;
              }

              v129 = HIDWORD(v222);
LABEL_305:
              if (sub_104B4(v45, v114, 1, v253, &v259 + 1, &v264, &v263, &v259, &v260))
              {
                v105 = HIDWORD(v259);
                if (HIDWORD(v259) == 74)
                {
                  LODWORD(v211) = 74;
                  sub_10B90(v45, &v267 + 3, a12, v253, &v250, v240, &v249, &v248, &v266, v211, v264, v263, v259, v260, v261);
                  v114 = HIDWORD(v267);
                }
              }

              else
              {
                v105 = 83;
                HIDWORD(v259) = 83;
              }

              goto LABEL_309;
            }

            if (SHIDWORD(v259) > 60)
            {
              if (HIDWORD(v259) == 61)
              {
                v266 = 0;
                *(&v267 + 4) = 0;
                goto LABEL_284;
              }

              if (HIDWORD(v259) != 71)
              {
                if (HIDWORD(v259) != 73)
                {
                  goto LABEL_284;
                }

                v108 = v262;
                v109 = v262 - 1;
                if (v262 >= 1)
                {
                  v110 = (v240 + 4 * v46);
                  v46 = (v46 + v262);
                  do
                  {
                    *v110++ = v230;
                    --v108;
                  }

                  while (v108);
                  v109 = -1;
                }

                v262 = v109;
                HIDWORD(v267) = v46;
                v111 = *(v264 + 25);
                if (v111 < 1)
                {
LABEL_231:
                  v114 = v46;
                  goto LABEL_291;
                }

                v112 = v264 + 27;
                while (1)
                {
                  v113 = *v112++;
                  if (!sub_11144(v113, v45, v46, a12, v253, &v250, v240, &v249, &v248, &v266))
                  {
                    goto LABEL_403;
                  }

                  if (!--v111)
                  {
                    goto LABEL_231;
                  }
                }
              }

              v120 = 2;
LABEL_282:
              DWORD1(v267) = v120;
              goto LABEL_284;
            }

            if (HIDWORD(v259) != 46)
            {
              if (HIDWORD(v259) != 47)
              {
                goto LABEL_284;
              }

              goto LABEL_251;
            }

LABEL_255:
            v117 = v262;
            v118 = v262 - 1;
            if (v262 >= 1)
            {
              v119 = (v240 + 4 * v46);
              v46 = (v46 + v262);
              do
              {
                *v119++ = v230;
                --v117;
              }

              while (v117);
              v118 = -1;
            }

            v262 = v118;
LABEL_260:
            HIDWORD(v267) = v46;
            v114 = v46;
            goto LABEL_321;
          }

          if (SHIDWORD(v259) > 22)
          {
            if (SHIDWORD(v259) > 36)
            {
              if ((HIDWORD(v259) - 37) >= 2)
              {
                if (HIDWORD(v259) != 45)
                {
                  goto LABEL_284;
                }

                DWORD1(v267) = 0;
              }

              goto LABEL_255;
            }

            if (HIDWORD(v259) == 23)
            {
              DWORD1(v267) = 1;
              HIDWORD(v266) = 0;
              v125 = v262;
              if (v262 >= 1)
              {
                v126 = (v240 + 4 * v46);
                v46 = (v46 + v262);
                do
                {
                  *v126++ = v230;
                  --v125;
                }

                while (v125);
              }

              goto LABEL_260;
            }

            if (HIDWORD(v259) != 24)
            {
              goto LABEL_284;
            }

LABEL_251:
            *(&v267 + 4) = 0x100000000;
            v115 = v262;
            if (v262 >= 1)
            {
              v116 = (v240 + 4 * v46);
              v46 = (v46 + v262);
              do
              {
                *v116++ = v230;
                --v115;
              }

              while (v115);
            }

            goto LABEL_260;
          }

          if (SHIDWORD(v259) > 5)
          {
            if (HIDWORD(v259) == 6)
            {
              *&v267 = 1;
              v123 = v262;
              if (v262 >= 1)
              {
                v124 = (v240 + 4 * v46);
                v46 = (v46 + v262);
                do
                {
                  *v124++ = v230;
                  --v123;
                }

                while (v123);
              }

              goto LABEL_260;
            }

            if (HIDWORD(v259) == 7)
            {
              *&v267 = 0;
              v132 = v262;
              if (v262 >= 1)
              {
                v133 = (v240 + 4 * v46);
                v46 = (v46 + v262);
                do
                {
                  *v133++ = v230;
                  --v132;
                }

                while (v132);
              }

              goto LABEL_260;
            }

            if (HIDWORD(v259) != 19)
            {
              goto LABEL_284;
            }

            goto LABEL_251;
          }

          switch(HIDWORD(v259))
          {
            case 3:
              v266 = 1;
              DWORD1(v267) = 0;
              v121 = v262;
              if (v262 >= 1)
              {
                v122 = (v240 + 4 * v46);
                v46 = (v46 + v262);
                do
                {
                  *v122++ = v230;
                  --v121;
                }

                while (v121);
              }

              goto LABEL_260;
            case 4:
              HIDWORD(v266) = 1;
              DWORD1(v267) = 0;
              v130 = v262;
              if (v262 >= 1)
              {
                v131 = (v240 + 4 * v46);
                v46 = (v46 + v262);
                do
                {
                  *v131++ = v230;
                  --v130;
                }

                while (v130);
              }

              goto LABEL_260;
            case 5:
              HIDWORD(v266) = 0;
              DWORD1(v267) = 0;
              v106 = v262;
              if (v262 >= 1)
              {
                v107 = (v240 + 4 * v46);
                v46 = (v46 + v262);
                do
                {
                  *v107++ = v230;
                  --v106;
                }

                while (v106);
              }

              goto LABEL_260;
          }

LABEL_284:
          if (!*(v264 + 25))
          {
            v127 = v262;
            v114 = (v262 + v46);
            v128 = v46;
            while (sub_11144(v254[v128], v45, v46, a12, v253, &v250, v240, &v249, &v248, &v266))
            {
              v46 = (v46 + 1);
              ++v128;
              if (!--v127)
              {
                goto LABEL_290;
              }
            }

LABEL_403:
            LODWORD(v114) = v46;
            goto LABEL_404;
          }

          if (!sub_11274(v264 + 27, *(v264 + 26), *(v264 + 25), v45, v46, v253, &v250, v240, &v249, &v248, &v266))
          {
            goto LABEL_403;
          }

          v114 = (v262 + v46);
LABEL_290:
          HIDWORD(v267) = v114;
LABEL_291:
          v129 = HIDWORD(v222);
          if ((v105 - 93) > 1)
          {
            goto LABEL_305;
          }

          if (!sub_1160C(v45, v114, v253, &v250, a8, v240, &v249, &v248, &v266))
          {
LABEL_404:
            LODWORD(v25) = v255;
            goto LABEL_405;
          }

LABEL_309:
          if (v114 >= 1)
          {
            v134 = sub_11690(v254[v114 - 1], v45) != 0;
            v135 = v105 != 94;
            v136 = !v135 || !v134;
            if (v135 && v134)
            {
              v129 = v114;
            }

            v137 = v222;
            if (!v136)
            {
              v137 = HIDWORD(v252);
            }

            v222 = __PAIR64__(v129, v137);
          }

          v138 = (v105 - 62) >= 0xA && (v105 - 83) >= 0x23;
          v139 = v224;
          if (!v138)
          {
            v139 = v105;
          }

          v224 = v139;
LABEL_321:
          v25 = v255;
          v46 = v114;
          if (v114 >= v255)
          {
LABEL_405:
            if (v222)
            {
              v17 = v214;
              if (v114 >= v25 || sub_11690(v254[v114], v45))
              {
                LODWORD(v169) = v114;
              }

              else
              {
                LODWORD(v169) = HIDWORD(v222);
                HIDWORD(v252) = v222;
              }
            }

            else
            {
              LODWORD(v169) = v114;
              v17 = v214;
            }

            v42 = a4;
LABEL_415:
            if (v169 < v25)
            {
              v182 = &v254[v169];
              while (1)
              {
                v183 = *v182++;
                if (!sub_11690(v183, v45))
                {
                  goto LABEL_426;
                }

                LODWORD(v169) = v169 + 1;
                if (v25 == v169)
                {
                  goto LABEL_425;
                }
              }
            }

            goto LABEL_427;
          }
        }
      }

      v266 = 0;
      v267 = 0uLL;
      HIDWORD(v252) = 0;
      _lou_resetPassVariables();
      if (v25 >= 1)
      {
        v175 = 0;
        v176 = 1;
        while (1)
        {
          v265 = 0;
          v263 = 0;
          v264 = 0;
          v262 = 0;
          v260 = 0;
          v261 = 0;
          if (v176 && sub_104B4(v45, v175, v232, v253, &v265, &v264, &v263, &v262, &v260))
          {
            v177 = v265;
            if ((v265 - 76) < 3)
            {
              if (v233)
              {
                v178 = v264;
                if (v234 < v229)
                {
                  *(v233 + 8 * v234++) = v264;
                }
              }

              else
              {
                v178 = v264;
              }

              LODWORD(v211) = v177;
              v179 = sub_10B90(v45, &v267 + 3, a12, v253, &v250, v240, &v249, &v248, &v266, v211, v178, v263, v262, v260, v261);
              v169 = HIDWORD(v267);
              if (!v179)
              {
                LODWORD(v25) = v255;
                goto LABEL_421;
              }

              goto LABEL_399;
            }

            if (v265 != 83)
            {
              goto LABEL_411;
            }
          }

          if (SHIDWORD(v252) >= v252)
          {
LABEL_411:
            LODWORD(v169) = v175;
            goto LABEL_421;
          }

          *(v240 + 4 * v175) = HIDWORD(v252);
          v169 = (v175 + 1);
          HIDWORD(v267) = v175 + 1;
          v180 = v254[v175];
          v181 = SHIDWORD(v252);
          ++HIDWORD(v252);
          v251[v181] = v180;
LABEL_399:
          v176 = v169 > v175;
          LODWORD(v25) = v255;
          v175 = v169;
          if (v169 >= v255)
          {
            goto LABEL_421;
          }
        }
      }

      LODWORD(v169) = 0;
LABEL_421:
      if (v169 < v25)
      {
        v184 = &v254[v169];
        while (1)
        {
          v185 = *v184++;
          if (!sub_11690(v185, v45))
          {
            break;
          }

          LODWORD(v169) = v169 + 1;
          if (v25 == v169)
          {
LABEL_425:
            LODWORD(v169) = v25;
            break;
          }
        }
      }

LABEL_426:
      v42 = a4;
LABEL_427:
      v25 = HIDWORD(v252);
      *(v240 + 4 * v169) = HIDWORD(v252);
      if (v240 != v43)
      {
        memcpy(__dst, v43, 4 * *v42 + 4);
        if ((*v42 & 0x80000000) != 0)
        {
          v188 = v232;
          goto LABEL_441;
        }

        v186 = 0;
        v187 = v255;
        v188 = v232;
        while (1)
        {
          v189 = __dst[v186];
          v190 = v240;
          if ((v189 & 0x80000000) == 0)
          {
            if (v189 >= v169)
            {
              if (v189 != v169 || (v190 = (v240 + 4 * v169), v169 < v187))
              {
                *v42 = v186;
                v43[v186] = v25;
                goto LABEL_441;
              }
            }

            else
            {
              v190 = (v240 + 4 * v189);
            }
          }

          v43[v186] = *v190;
          v76 = v186++ < *v42;
          if (!v76)
          {
            goto LABEL_441;
          }
        }
      }

      v240 = v215;
      v188 = v232;
      if (v169 < v255)
      {
        *v42 = v169;
        v240 = v215;
      }

LABEL_441:
      if (v188 <= v219)
      {
        v196 = a5;
        if (v25 >= 1)
        {
          v197 = v251;
          v198 = v25;
          do
          {
            v199 = *v197++;
            *v196++ = v199;
            --v198;
          }

          while (v198);
        }

        *v17 = v25;
        if (a10)
        {
          v200 = *v42;
          if (*v42 < 1)
          {
            v203 = -1;
            v202 = -1;
          }

          else
          {
            v201 = 0;
            v202 = -1;
            v203 = -1;
            do
            {
              v204 = v43[v201];
              if (v204 > v202)
              {
                v205 = v203 & ~(v203 >> 31);
                do
                {
                  if ((v202 & 0x80000000) == 0 && v202 < *v17)
                  {
                    *(a10 + 4 * v202) = v205;
                    v204 = v43[v201];
                  }

                  ++v202;
                }

                while (v202 < v204);
                v200 = *v42;
                v203 = v201;
              }

              ++v201;
            }

            while (v201 < v200);
            LODWORD(v25) = *v17;
          }

          v206 = v202 & ~(v202 >> 31);
          if (v206 < v25)
          {
            do
            {
              *(a10 + 4 * v206++) = v203;
            }

            while (*v17 > v206);
          }
        }

        if (a9 && *v42 >= 1)
        {
          v207 = 0;
          do
          {
            v208 = v43[v207];
            if (v208 < 0)
            {
              v208 = 0;
            }

            else if (v208 >= *v17)
            {
              v208 = *v17 - 1;
            }

            *&a9[4 * v207++] = v208;
          }

          while (v207 < *v42);
        }

        if (a11)
        {
          v209 = *a11;
          if (v209 != -1)
          {
            v210 = &a9[4 * v209];
            if (!a9)
            {
              v210 = &v249;
            }

            *a11 = *v210;
          }
        }

        if (a14)
        {
          *a14 = v234;
        }

        return (&dword_0 + 1);
      }

      v191 = v188 - 1;
      sub_103B4(v253[0]);
      v253[0] = v250;
      v254 = v251;
      v255 = v25;
      v193 = sub_1041C(*v17, v192);
      v44 = v191;
      v194 = *(*(v20[355] + 8) + 8 * v193);
      v195 = *v17;
      LODWORD(v250) = v193;
      v251 = v194;
      v252 = v195;
    }

    v266 = 0;
    *&v267 = 0;
    DWORD2(v267) = 0;
    if (!v258[234] || (HIDWORD(v267) = 0, HIDWORD(v252) = 0, _lou_resetPassVariables(), v25 < 1))
    {
      LODWORD(v169) = 0;
LABEL_402:
      v17 = v214;
      v42 = a4;
      v43 = v227;
      v20 = &unk_2D000;
      goto LABEL_427;
    }

    v140 = 0;
    v141 = v45 + 3402;
    v142 = v45 + 7904;
    v236 = v45 + 5658;
    v143 = 1;
LABEL_327:
    v265 = 0;
    v263 = 0;
    v264 = 0;
    v262 = 0;
    v260 = 0;
    v261 = 0;
    v246 = &v254[v140];
    v144 = *v246;
    v145 = v141[_lou_charHash(*v246)];
    v242 = v140;
    if (v145)
    {
      while (1)
      {
        v146 = &v142[2 * v145];
        if (*(v146 + 22) == v144)
        {
          break;
        }

        v145 = v146[3];
        if (!v145)
        {
          goto LABEL_330;
        }
      }

      v239 = &v142[2 * v145];
      if (!v143)
      {
        goto LABEL_334;
      }
    }

    else
    {
LABEL_330:
      word_28D64 = v144;
      v239 = &unk_28D38;
      if (!v143)
      {
        goto LABEL_334;
      }
    }

    if (sub_104B4(v247, v140, 0, v253, &v265, &v264, &v263, &v262, &v260))
    {
      goto LABEL_373;
    }

LABEL_334:
    v147 = 0;
    v244 = v25 - v140;
    while (1)
    {
      if (!v147)
      {
        if (v244 < 2)
        {
          goto LABEL_372;
        }

        v149 = sub_105E0(v247, v239);
        v150 = v246[1];
        v151 = v141[_lou_charHash(v246[1])];
        if (v151)
        {
          while (1)
          {
            v152 = &v142[2 * v151];
            if (*(v152 + 22) == v150)
            {
              break;
            }

            v151 = v152[3];
            if (!v151)
            {
              goto LABEL_345;
            }
          }
        }

        else
        {
LABEL_345:
          v152 = &unk_28D38;
          word_28D64 = v150;
        }

        v153 = sub_105E0(v247, v152);
        v148 = &v236[(v149 << 8) + v153 - 1123 * ((((v149 << 8) + v153) * 0x3A5BA3E76156DBuLL) >> 64)];
        goto LABEL_347;
      }

      if (v147 == 1)
      {
        break;
      }

      if (v147 == 2)
      {
        goto LABEL_375;
      }

LABEL_372:
      if (++v147 == 3)
      {
LABEL_373:
        if (v265 == 75)
        {
          if (v233)
          {
            v172 = v264;
            v173 = v247;
            if (v234 < v229)
            {
              *(v233 + 8 * v234++) = v264;
            }
          }

          else
          {
            v172 = v264;
            v173 = v247;
          }

          v168 = v242;
          LODWORD(v211) = 75;
          v174 = sub_10B90(v173, &v267 + 3, a12, v253, &v250, v240, &v249, &v248, &v266, v211, v172, v263, v262, v260, v261);
          v169 = HIDWORD(v267);
          if (!v174)
          {
            goto LABEL_402;
          }

          goto LABEL_383;
        }

        if (v265 != 83)
        {
          v168 = v242;
          v169 = v242;
          goto LABEL_383;
        }

LABEL_375:
        if (SHIDWORD(v252) >= v252)
        {
          LODWORD(v169) = v242;
          goto LABEL_402;
        }

        v168 = v242;
        *(v240 + 4 * v242) = HIDWORD(v252);
        v169 = (v242 + 1);
        HIDWORD(v267) = v242 + 1;
        v170 = *v246;
        v171 = SHIDWORD(v252);
        ++HIDWORD(v252);
        v251[v171] = v170;
LABEL_383:
        v143 = v169 > v168;
        LODWORD(v25) = v255;
        v140 = v169;
        if (v169 >= v255)
        {
          goto LABEL_402;
        }

        goto LABEL_327;
      }
    }

    if (v244 < 1)
    {
      goto LABEL_372;
    }

    v244 = 1;
    v148 = v239 + 5;
LABEL_347:
    v154 = *v148;
    if (!v154)
    {
      goto LABEL_372;
    }

    while (1)
    {
      v155 = &v142[2 * v154];
      v264 = v155;
      v156 = *(v155 + 44);
      v265 = v156;
      if (v147 != 1)
      {
        v157 = *(v155 + 50);
        if (v244 < v157 || v157 == 0)
        {
          goto LABEL_357;
        }

        if (v157 >= 1)
        {
          v159 = 0;
          v160 = v155 + 54;
          do
          {
            v161 = *(v160 + 2 * v159);
            v162 = v141[_lou_charHash(*(v160 + 2 * v159))];
            if (v162)
            {
              while (1)
              {
                v163 = &v142[2 * v162];
                if (*(v163 + 22) == v161)
                {
                  break;
                }

                v162 = v163[3];
                if (!v162)
                {
                  goto LABEL_364;
                }
              }
            }

            else
            {
LABEL_364:
              v163 = &unk_28D38;
              word_28D64 = v161;
            }

            v164 = sub_105E0(v247, v163);
            v165 = v246[v159];
            v166 = v141[_lou_charHash(v246[v159])];
            if (v166)
            {
              while (1)
              {
                v167 = &v142[2 * v166];
                if (*(v167 + 22) == v165)
                {
                  break;
                }

                v166 = v167[3];
                if (!v166)
                {
                  goto LABEL_368;
                }
              }
            }

            else
            {
LABEL_368:
              v167 = &unk_28D38;
              word_28D64 = v165;
            }

            if (v164 != sub_105E0(v247, v167))
            {
              goto LABEL_357;
            }
          }

          while (++v159 != v157);
        }
      }

      if (v156 == 75 && sub_1062C(v247, v242, v253, 75, v155, &v263, &v262, &v260))
      {
        goto LABEL_373;
      }

LABEL_357:
      v154 = *(v155 + 20);
      if (!v154)
      {
        goto LABEL_372;
      }
    }
  }

  return result;
}