id NSPrintF(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = NSPrintV(a1, &a9);

  return v9;
}

__CFString *NSPrintV(char *a1, uint64_t a2)
{
  v5 = 0;
  VASPrintF(&v5, a1, a2);
  v2 = v5;
  if (v5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    free(v2);
  }

  else
  {
    v3 = &stru_1F068B090;
  }

  return v3;
}

uint64_t PrintFCoreVAList(uint64_t (**a1)(unsigned __int8 *, int64_t, void), char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = 0;
  v360 = *MEMORY[0x1E69E9840];
  v347[1] = a3;
  v345 = 0u;
  v346 = 0u;
  v347[0] = a3;
  v6 = *a2;
  v344 = *MEMORY[0x1E695E4D0];
LABEL_2:
  while (2)
  {
    v7 = v3 + 1;
    v8 = v3;
    if (v6)
    {
      do
      {
        if (v6 == 37)
        {
          break;
        }

        v9 = *++v8;
        v6 = v9;
        ++v7;
      }

      while (v9);
    }

    v10 = v8 - v3;
    if (v8 != v3)
    {
      v11 = (*a1)(v3, v10, a1);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      v5 = (v5 + v10);
    }

    if (!v6)
    {
      return v5;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v345 = 0u;
    v346 = 0u;
    while (1)
    {
      v17 = *v7;
      if (v17 <= 0x2C)
      {
        break;
      }

      if (*v7 <= 0x3Eu)
      {
        if (v17 == 45)
        {
          v16 |= 1u;
        }

        else
        {
          if (v17 != 48)
          {
            goto LABEL_35;
          }

          v16 |= 4u;
        }

        goto LABEL_29;
      }

      if (v17 == 63)
      {
        v18 = v347[0];
        v347[0] += 8;
        v16 = v16 & 0xFFFFFFEF | (16 * (*v18 == 0));
        goto LABEL_29;
      }

      if (v17 != 126)
      {
        goto LABEL_35;
      }

      v13 = 1;
      BYTE11(v346) = 1;
LABEL_30:
      ++v7;
    }

    if (*v7 <= 0x26u)
    {
      if (v17 == 32)
      {
        v12 = 32;
        BYTE4(v345) = 32;
      }

      else
      {
        if (v17 != 35)
        {
          goto LABEL_35;
        }

        BYTE3(v345) = ++v14;
      }

      goto LABEL_30;
    }

    if (v17 == 39)
    {
      BYTE8(v346) = ++v15;
      goto LABEL_30;
    }

    if (v17 == 43)
    {
      v16 |= 2u;
LABEL_29:
      LOBYTE(v345) = v16;
      goto LABEL_30;
    }

    if (v17 != 42)
    {
LABEL_35:
      if (v17 - 48 > 9)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          v20 = 10 * v20 + v17 - 48;
          DWORD2(v345) = v20;
          v21 = *++v7;
          v17 = v21;
        }

        while (v21 - 48 < 0xA);
      }

      goto LABEL_40;
    }

    v19 = v347[0];
    v347[0] += 8;
    v20 = *v19;
    if ((*v19 & 0x80000000) != 0)
    {
      v20 = -v20;
      LOBYTE(v16) = v16 | 1;
      LOBYTE(v345) = v16;
    }

    DWORD2(v345) = v20;
    v17 = *++v7;
LABEL_40:
    if (v17 == 46)
    {
      v22 = (v7 + 1);
      v17 = v7[1];
      if (v17 == 42)
      {
        v23 = v347[0];
        v347[0] += 8;
        v24 = *v23;
        *&v346 = v24;
        LOBYTE(v17) = v7[2];
        v22 = (v7 + 2);
      }

      else if (v17 - 48 > 9)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0;
        do
        {
          v24 = (v17 & 0xF) + 10 * v24;
          *&v346 = v24;
          v25 = *++v22;
          LOBYTE(v17) = v25;
        }

        while ((v25 - 48) < 0xA);
      }

      LOBYTE(v16) = v16 | 8;
      LOBYTE(v345) = v16;
      v7 = v22;
      if (v16)
      {
LABEL_51:
        LOBYTE(v16) = v16 & 0xFB;
        LOBYTE(v345) = v16;
      }
    }

    else
    {
      v24 = 0;
      if (v16)
      {
        goto LABEL_51;
      }
    }

    v26 = 0;
    v27 = 0;
    while (2)
    {
      v28 = (((v17 - 104) >> 1) | ((v17 - 104) << 7));
      if (v28 <= 1)
      {
        if (((v17 - 104) >> 1) | ((v17 - 104) << 7))
        {
          goto LABEL_61;
        }

        BYTE1(v345) = ++v26;
        goto LABEL_58;
      }

      if (v28 == 2)
      {
        BYTE2(v345) = ++v27;
LABEL_58:
        v29 = *++v7;
        LOBYTE(v17) = v29;
        continue;
      }

      break;
    }

    if (v28 == 6 || v28 == 9)
    {
LABEL_61:
      if (!(v26 | v27))
      {
        v26 = 0;
        v27 = 1;
        BYTE2(v345) = 1;
        v30 = *++v7;
        LOBYTE(v17) = v30;
        goto LABEL_63;
      }

      return 0xFFFFFFFFLL;
    }

    v35 = 0xFFFFFFFFLL;
    if (v26 > 2 || v27 > 2)
    {
      return v35;
    }

    if (v26 && v27)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_63:
    v31 = v17;
    v32 = 10;
    v33 = "0123456789ABCDEF";
    switch(v17)
    {
      case '@':
        v98 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v99 = *v98;
        if (v99)
        {
          v100 = v99;
        }

        else
        {
          v100 = @"NULL";
        }

        if (!v15 || (v16 & 8) == 0)
        {
          goto LABEL_223;
        }

        if (v24 < 2)
        {
          *&v346 = 0;
          BYTE8(v346) = 0;
        }

        else
        {
          *&v346 = v24 - 2;
LABEL_223:
          if (v15 == 2)
          {
            v101 = 8738;
          }

          else
          {
            if (v15 != 1)
            {
              goto LABEL_408;
            }

            v101 = 10023;
          }

          *(&v346 + 9) = v101;
        }

LABEL_408:
        if (v14 == 1)
        {
          Data = CFPropertyListCreateData(0, v100, kCFPropertyListXMLFormat_v1_0, 0, 0);
          if (Data)
          {
            v162 = Data;
            BytePtr = CFDataGetBytePtr(Data);
            Length = CFDataGetLength(v162);
            v35 = PrintFWriteMultiLineText(a1, &v345, BytePtr, Length);
            CFRelease(v162);
            goto LABEL_708;
          }

          v173 = PrintFCore(a1, "<<PLIST NOT XML-ABLE>>");
          goto LABEL_685;
        }

        while (2)
        {
          v165 = BYTE3(v345);
          v166 = CFGetTypeID(v100);
          if (v166 == CFBooleanGetTypeID())
          {
            if (v344 == v100)
            {
              v199 = 4;
            }

            else
            {
              v199 = 5;
            }

            if (v344 == v100)
            {
              p_str = "true";
            }

            else
            {
              p_str = "false";
            }

            goto LABEL_683;
          }

          if (v166 == CFNumberGetTypeID())
          {
            if (CFNumberIsFloatType(v100))
            {
              *__format = 0;
              CFNumberGetValue(v100, kCFNumberDoubleType, __format);
              v203 = SNPrintF(&__str, 300, "%f");
            }

            else
            {
              *__format = 0;
              CFNumberGetValue(v100, kCFNumberSInt64Type, __format);
              v203 = SNPrintF(&__str, 300, "%lld");
            }

            v199 = v203;
            goto LABEL_682;
          }

          if (v166 != CFStringGetTypeID())
          {
            if (v166 == CFNullGetTypeID())
            {
              v211 = a1;
              p_str = "Null";
              v199 = 4;
              goto LABEL_684;
            }

            if (v166 == CFURLGetTypeID())
            {
              v100 = CFURLGetString(v100);
              v35 = 4294960596;
              if (!v100)
              {
                return v35;
              }

              continue;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              memset(__format, 0, sizeof(__format));
              [(__CFString *)v100 getUUIDBytes:__format];
              goto LABEL_649;
            }

            if (v166 == CFUUIDGetTypeID())
            {
              *__format = CFUUIDGetUUIDBytes(v100);
LABEL_649:
              if (BYTE11(v346))
              {
                v243 = SNPrintF(&__str, 300, "%~#U", __format);
              }

              else
              {
                v243 = SNPrintF(&__str, 300, "%#U", __format);
              }

              v244 = v346;
              if (v243 < v346)
              {
                v244 = v243;
              }

              if ((v345 & 8) != 0)
              {
                v245 = v244;
              }

              else
              {
                v245 = v243;
              }

              v199 = v245;
LABEL_682:
              p_str = &__str;
LABEL_683:
              v211 = a1;
LABEL_684:
              v173 = PrintFWriteText(v211, &v345, p_str, v199);
LABEL_685:
              v35 = v173;
              goto LABEL_708;
            }

            if (v166 != CFDataGetTypeID())
            {
              v359 = 0;
              *__format = a1;
              *&__format[8] = &v345;
              v358 = DWORD2(v345);
              v35 = PrintFWriteCFObjectLevel(__format, v100, 0);
              if ((v35 & 0x80000000) != 0 || v165 == 2 || v166 != CFArrayGetTypeID() && v166 != CFDictionaryGetTypeID() && v166 != CFSetGetTypeID())
              {
                goto LABEL_708;
              }

              v275 = (*a1)("\n", 1, a1);
              if (v275 <= 0)
              {
                v276 = 0;
              }

              else
              {
                v276 = v35;
              }

              goto LABEL_900;
            }

            v268 = CFDataGetBytePtr(v100);
            v269 = CFDataGetLength(v100);
            v270 = v269;
            v271 = v346;
            if ((v345 & 8) == 0)
            {
              v271 = v269;
            }

            v272 = 32;
            if (v271 < 0x20)
            {
              v272 = v271;
            }

            if (v165 == 2)
            {
              v271 = v272;
            }

            if (BYTE8(v346))
            {
              v273 = (v345 & 8) == 0;
            }

            else
            {
              v273 = 1;
            }

            if (v273)
            {
              v274 = v271;
            }

            else
            {
              v274 = v271 + 2;
            }

            if (v269 >= 0x21 && v274 > 0x20)
            {
              v35 = (*a1)("\n", 1, a1);
              if ((v35 & 0x80000000) != 0)
              {
                return v35;
              }

              v275 = PrintFWriteHex(a1, &v345, 0, v268, v270, v274, 0);
              if (v275 >= 0)
              {
                v276 = v35;
              }

              else
              {
                v276 = 0;
              }

LABEL_900:
              v35 = (v276 + v275);
              goto LABEL_708;
            }

            if (BYTE9(v346))
            {
              v35 = (*a1)(&v346 + 9, 1, a1);
              if ((v35 & 0x80000000) != 0)
              {
                return v35;
              }
            }

            else
            {
              LODWORD(v35) = 0;
            }

            if (v270 >= v274)
            {
              v310 = v274;
            }

            else
            {
              v310 = v270;
            }

            v11 = PrintFWriteHexByteStream(a1, 0, v268, v310);
            if ((v11 & 0x80000000) == 0)
            {
              v311 = v11 + v35;
              if (BYTE10(v346))
              {
                v275 = (*a1)(&v346 + 10, 1, a1);
                if (v275 >= 0)
                {
                  v276 = v311;
                }

                else
                {
                  v276 = 0;
                }

                goto LABEL_900;
              }

              v5 = (v311 + v5);
LABEL_808:
              v6 = v7[1];
              v3 = v7 + 1;
              goto LABEL_2;
            }

            return v11;
          }

          break;
        }

        v204 = CFStringGetLength(v100);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v204, 0x8000100u);
        v356.tv_sec = MaximumSizeForEncoding;
        if (!MaximumSizeForEncoding)
        {
          v211 = a1;
          p_str = "";
          v199 = 0;
          goto LABEL_684;
        }

        v206 = MaximumSizeForEncoding;
        v207 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
        if (v207)
        {
          v208 = v207;
          v348 = 0;
          v361.location = 0;
          v361.length = v204;
          CFStringGetBytes(v100, v361, 0x8000100u, 0x5Eu, 0, v207, v206, &v348);
          tv_sec = v348;
          if (BYTE11(v346))
          {
            v210 = __format;
            _PrintFObfuscateString(v208, v348, __format, &v356.tv_sec);
            tv_sec = v356.tv_sec;
            v348 = v356.tv_sec;
          }

          else
          {
            v210 = v208;
          }

          if ((v345 & 8) != 0 && tv_sec > v346)
          {
            tv_sec = v346;
            v348 = v346;
            if (v346 >= 1)
            {
              while ((v210[tv_sec] & 0xC0) == 0x80)
              {
                v348 = tv_sec - 1;
                v179 = tv_sec-- < 2;
                if (v179)
                {
                  tv_sec = 0;
                  break;
                }
              }
            }
          }

          v35 = PrintFWriteText(a1, &v345, v210, tv_sec);
          free(v208);
        }

        else
        {
          v35 = 4294960568;
        }

LABEL_708:
        if ((v35 & 0x80000000) == 0)
        {
          v5 = (v35 + v5);
          goto LABEL_808;
        }

        return v35;
      case 'C':
        v90 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v91 = *v90;
        if (v15)
        {
          __str = 39;
          v92 = 1;
        }

        else
        {
          v92 = 0;
        }

        v147 = HIBYTE(v91);
        v44 = &__str;
        v148 = &v353[v92 - 1];
        if (HIBYTE(v91))
        {
          v149 = 94;
        }

        else
        {
          v149 = 46;
        }

        if (v91 >> 24 < 32 || v147 == 127)
        {
          LOBYTE(v147) = v149;
        }

        *v148 = v147;
        v151 = BYTE2(v91);
        if (BYTE2(v91))
        {
          v152 = 94;
        }

        else
        {
          v152 = 46;
        }

        if (BYTE2(v91) - 127 < 0xFFFFFFA1)
        {
          v151 = v152;
        }

        v148[1] = v151;
        v153 = BYTE1(v91);
        if (v153)
        {
          v154 = 94;
        }

        else
        {
          v154 = 46;
        }

        if ((v153 - 127) < 0xFFFFFFA1)
        {
          LOBYTE(v153) = v154;
        }

        v148[2] = v153;
        if (v91)
        {
          v155 = 94;
        }

        else
        {
          v155 = 46;
        }

        if ((v91 - 32) >= 0x5F)
        {
          LOBYTE(v91) = v155;
        }

        v148[3] = v91;
        if (v15)
        {
          LODWORD(v35) = v92 + 5;
          v353[(v92 | 4) - 1] = 39;
          v31 = 67;
        }

        else
        {
          v31 = 67;
          LODWORD(v35) = v92 | 4;
        }

        goto LABEL_804;
      case 'E':
      case 'F':
      case 'G':
      case 'e':
      case 'f':
      case 'g':
        __format[0] = 37;
        if ((v16 & 2) != 0)
        {
          __format[1] = 43;
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }

        if (v14)
        {
          __format[v34++] = 35;
        }

        if ((v16 & 4) != 0)
        {
          __format[v34++] = 48;
        }

        v36 = v34 + 1;
        __format[v34] = 42;
        if ((v16 & 8) != 0)
        {
          __format[v36] = 46;
          v36 = v34 + 3;
          __format[v34 + 2] = 42;
        }

        v37 = &__format[v36];
        *v37 = v17;
        v37[1] = 0;
        if (v16)
        {
          v38 = -v20;
        }

        else
        {
          v38 = v20;
        }

        v39 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v40 = *v39;
        if ((v16 & 8) != 0)
        {
          v41 = snprintf(&__str, 0x12CuLL, __format, v40, v38, v24, *v39);
        }

        else
        {
          v41 = snprintf(&__str, 0x12CuLL, __format, v40, v38, *v39, v330);
        }

        v35 = v41;
        if ((v41 & 0x80000000) == 0)
        {
          goto LABEL_90;
        }

        return v35;
      case 'H':
        v79 = v347[0];
        v347[0] += 8;
        v80 = *v79;
        v347[0] = v79 + 16;
        v81 = *(v79 + 8);
        v347[0] = v79 + 24;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v82 = *(v79 + 16);
        if (!v80 && v81)
        {
          v35 = PrintFCore(a1, "<<NULL %zu/%zu>>", v81, v82);
          if ((v35 & 0x80000000) == 0)
          {
LABEL_394:
            v5 = (v35 + v5);
            goto LABEL_808;
          }

          return v35;
        }

        if (v81 == -1)
        {
          v81 = strlen(v80);
        }

        if (v24 <= 1)
        {
          if (!v24)
          {
            if (v81 >= v82)
            {
              v215 = v82;
            }

            else
            {
              v215 = v81;
            }

            v214 = PrintFWriteHexOneLine(a1, &v345, v80, v215);
            goto LABEL_707;
          }

          if (v24 != 1)
          {
            goto LABEL_564;
          }

          v167 = a1;
          v168 = v20;
        }

        else
        {
          if (v24 != 2)
          {
            if (v24 == 3)
            {
              if (v81 >= v82)
              {
                v137 = v82;
              }

              else
              {
                v137 = v81;
              }

              v138 = a1;
              v139 = 0;
              goto LABEL_559;
            }

            if (v24 == 4)
            {
              if (v81 >= v82)
              {
                v137 = v82;
              }

              else
              {
                v137 = v81;
              }

              v138 = a1;
              v139 = 1;
LABEL_559:
              v214 = PrintFWriteHexByteStream(v138, v139, v80, v137);
LABEL_707:
              v35 = v214;
              goto LABEL_708;
            }

LABEL_564:
            v214 = PrintFCore(a1, "<< BAD %%H PRECISION >>");
            goto LABEL_707;
          }

          if (!v81)
          {
            v214 = PrintFCore(a1, "(0 bytes)\n");
            goto LABEL_707;
          }

          if (v81 > 0x10)
          {
            v11 = PrintFCore(a1, "\n");
            if ((v11 & 0x80000000) != 0)
            {
              return v11;
            }

            v168 = DWORD2(v345);
            v167 = a1;
          }

          else
          {
            v167 = a1;
            v168 = 0;
          }
        }

        v214 = PrintFWriteHex(v167, &v345, v168, v80, v81, v82, 1);
        goto LABEL_707;
      case 'N':
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v356.tv_sec = 0;
        *&v356.tv_usec = 0;
        v348 = 0;
        gettimeofday(&v356, 0);
        v348 = v356.tv_sec;
        if (BYTE3(v345) == 2)
        {
          v77 = gmtime(&v348);
          strftime(__format, 0x18uLL, "%Y-%m-%d-%H:%M:%S", v77);
          v78 = SNPrintF(&__str, 300, "%s.%06u");
        }

        else
        {
          v134 = localtime(&v348);
          if (BYTE3(v345))
          {
            v135 = "%Y-%m-%d_%I-%M-%S";
          }

          else
          {
            v135 = "%Y-%m-%d %I:%M:%S";
          }

          strftime(__format, 0x18uLL, v135, v134);
          strftime(v355, 8uLL, "%p", v134);
          v136 = 32;
          if (BYTE3(v345))
          {
            v136 = 45;
          }

          v330 = v136;
          v331 = v355;
          v78 = SNPrintF(&__str, 300, "%s.%06u%c%s");
        }

        LODWORD(v35) = v78;
        v31 = 78;
        goto LABEL_90;
      case 'S':
        v66 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v67 = *v66;
        v68 = (v16 & 8) == 0;
        if (v67)
        {
          if (!v15 || (v16 & 8) == 0)
          {
LABEL_358:
            if (v68)
            {
LABEL_360:
              v146 = *v67;
              if (v146 == 255)
              {
                if (v67[1] == 254)
                {
                  v14 = 2;
                  goto LABEL_453;
                }
              }

              else if (v146 == 254 && v67[1] == 255)
              {
                v14 = 1;
LABEL_453:
                BYTE3(v345) = v14;
                v67 += 2;
                *&v346 = --v24;
                goto LABEL_455;
              }

LABEL_454:
              if (v14 - 1 >= 2)
              {
                if (v14)
                {
                  LODWORD(v35) = SNPrintF(&__str, 300, "<< ERROR: %%S with too many #'s (%d) >>", v14);
                  v15 = BYTE8(v346);
                  goto LABEL_493;
                }

                v183 = v24 > 0 || v68;
                if (v183 == 1)
                {
                  v35 = 0;
                  v184 = 300;
                  do
                  {
                    v185 = *&v67[2 * v35];
                    if (*&v67[2 * v35])
                    {
                      v186 = v184 < 1;
                    }

                    else
                    {
                      v186 = 1;
                    }

                    if (v186)
                    {
                      break;
                    }

                    if ((v185 - 32) >= 0x5F)
                    {
                      LOBYTE(v185) = 94;
                    }

                    v353[v35++ - 1] = v185;
                    v187 = v35 < v24 || v68;
                    --v184;
                  }

                  while (v187);
LABEL_493:
                  if (v15 == 2)
                  {
                    v188 = 8738;
                  }

                  else
                  {
                    if (v15 != 1)
                    {
LABEL_498:
                      v31 = 83;
                      goto LABEL_90;
                    }

                    v188 = 10023;
                  }

                  *(&v346 + 9) = v188;
                  goto LABEL_498;
                }

LABEL_491:
                LODWORD(v35) = 0;
                goto LABEL_493;
              }

LABEL_455:
              v176 = v24 > 0 || v68;
              if (v176 == 1)
              {
                v35 = 0;
                v177 = 300;
                v178 = 2 - v14;
                do
                {
                  if (*&v67[2 * v35])
                  {
                    v179 = v177 < 1;
                  }

                  else
                  {
                    v179 = 1;
                  }

                  if (v179)
                  {
                    break;
                  }

                  v180 = v67[v178];
                  if (v67[v178])
                  {
                    v181 = 94;
                  }

                  else
                  {
                    v181 = 46;
                  }

                  if ((v180 - 32) >= 0x5F)
                  {
                    LOBYTE(v180) = v181;
                  }

                  v353[v35++ - 1] = v180;
                  v182 = v35 < v24 || v68;
                  --v177;
                  v178 += 2;
                }

                while (v182);
                goto LABEL_493;
              }

              goto LABEL_491;
            }

LABEL_359:
            if (!v24)
            {
              goto LABEL_454;
            }

            goto LABEL_360;
          }

          v69 = v24 >= 2;
          v24 -= 2;
          if (v69)
          {
            v68 = 0;
            *&v346 = v24;
            goto LABEL_359;
          }
        }

        else
        {
          v31 = 83;
          LODWORD(v35) = 4;
          if ((v16 & 8) == 0 || v24)
          {
            goto LABEL_397;
          }

          if (!v15)
          {
            v68 = 0;
            v15 = 0;
            v24 = 0;
            goto LABEL_359;
          }
        }

        v68 = 0;
        v15 = 0;
        v24 = 0;
        *&v346 = 0;
        BYTE8(v346) = 0;
        goto LABEL_358;
      case 'U':
        v55 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        p_s = *v55;
        if (!*v55)
        {
          v31 = 85;
          goto LABEL_396;
        }

        if (v13)
        {
          if (gObfuscateOnce != -1)
          {
            dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
          }

          if (!v14)
          {
            *__format = vqtbl1q_s8(*p_s, xmmword_191FF9600);
            p_s = __format;
          }

          v57 = SipHash(gObfuscateKey, p_s, 16);
          __s.i16[0] = 187;
          __s.i8[2] = HIBYTE(v57);
          __s.i8[3] = BYTE2(v57);
          __s.i8[4] = BYTE1(v57);
          __s.i8[5] = v57;
          *(__s.i64 + 6) = 0xFBF31F0000800010;
          __s.i16[7] = -8320;
          if (!v14)
          {
            __s = vqtbl1q_s8(__s, xmmword_191FF9600);
          }

          p_s = &__s;
          v14 = BYTE3(v345);
        }

        if (v14)
        {
          v58 = p_s->u8[0];
          v59 = p_s->u8[1];
          v60 = p_s->u8[2];
          v61 = p_s->u8[3];
          v62 = p_s->u8[4];
          v63 = p_s->u8[5];
          v64 = p_s->u8[6];
          v65 = p_s->u8[7];
        }

        else
        {
          v58 = p_s->u8[3];
          v59 = p_s->u8[2];
          v60 = p_s->u8[1];
          v61 = p_s->u8[0];
          v62 = p_s->u8[5];
          v63 = p_s->u8[4];
          v64 = p_s->u8[7];
          v65 = p_s->u8[6];
        }

        v342 = p_s->u8[14];
        v343 = p_s->u8[15];
        v340 = p_s->u8[12];
        v341 = p_s->u8[13];
        v338 = p_s->u8[10];
        v339 = p_s->u8[11];
        v336 = p_s->u8[8];
        v337 = p_s->u8[9];
        v44 = &__str;
        LODWORD(v35) = SNPrintF(&__str, 300, "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", v58, v59, v60, v61, v62, v63, v64, v65, v336, v337, v338, v339, v340, v341, v342, v343);
        v31 = 85;
        goto LABEL_804;
      case 'V':
        v73 = v347[0];
        v347[0] += 8;
        v74 = *v73;
        v347[0] = v73 + 16;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v31 = 86;
        LODWORD(v35) = 4;
        if (!v74)
        {
          goto LABEL_397;
        }

        v75 = *(v73 + 8);
        if (!v75)
        {
          goto LABEL_397;
        }

        v76 = PrintFCoreVAList(a1, v74, *v75);
LABEL_393:
        v35 = v76;
        if ((v76 & 0x80000000) == 0)
        {
          goto LABEL_394;
        }

        return v35;
      case 'X':
        goto LABEL_109;
      case 'a':
        v104 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v105 = *v104;
        if (!*v104)
        {
          v31 = 97;
          goto LABEL_396;
        }

        if (v14 == 2)
        {
          v169 = v105[1];
          if (v169 <= 0x11)
          {
            if (!v105[1])
            {
              v253 = SNPrintF(&__str, 300, "<< AF_UNSPEC >>", usedBufLen);
              goto LABEL_782;
            }

            if (v169 != 2)
            {
              goto LABEL_674;
            }

            v170 = (v105 + 4);
            if (v13)
            {
              _PrintFObfuscateIPv4(v170, __format);
              v170 = __format;
            }

            IPv4AddressToCString(bswap32(*v170), bswap32(*(v105 + 1)) >> 16, &__str);
LABEL_752:
            LODWORD(v35) = strlen(&__str);
            goto LABEL_783;
          }

          if (v169 != 18)
          {
            if (v169 != 30)
            {
LABEL_674:
              v253 = SNPrintF(&__str, 300, "<< ERROR: %%##a used with unknown family: %d >>");
              goto LABEL_782;
            }

            v172 = (v105 + 8);
            if (v13)
            {
              _PrintFObfuscateIPv6(v172, __format);
              v172 = __format;
            }

            v201 = *(v105 + 6);
            v202 = bswap32(*(v105 + 1)) >> 16;
            goto LABEL_751;
          }

          v254 = &v105[v105[5] + 8];
          if (v105[6] == 6)
          {
            if (v13)
            {
              _PrintFObfuscateHardwareAddress(&v105[v105[5] + 8], 6uLL, __format);
              v254 = __format;
            }

            v332 = v254[4];
            v333 = v254[5];
            v330 = v254[2];
            v331 = v254[3];
            v253 = SNPrintF(&__str, 300, "%02X:%02X:%02X:%02X:%02X:%02X", *v254);
          }

          else
          {
            v330 = v105[6];
            v253 = SNPrintF(&__str, 300, "<< AF_LINK %H >>", v254);
          }
        }

        else
        {
          if (v14 == 1)
          {
            if (v24 != 6)
            {
              if (v24 == 4)
              {
                if (v13)
                {
                  if (v105 == __format)
                  {
                    v282 = &__format[3];
                    v281 = &__format[1];
                    do
                    {
                      v283 = *(v281 - 1);
                      *(v281 - 1) = *v282;
                      *v282-- = v283;
                      v69 = v281++ >= v282;
                    }

                    while (!v69);
                  }

                  else
                  {
                    v106 = v105 + 4;
                    v107 = __format;
                    do
                    {
                      v108 = *--v106;
                      *v107++ = v108;
                    }

                    while (v106 > v105);
                  }

                  _PrintFObfuscateIPv4(__format, __format);
                  v212 = __format[2];
                  v213 = __format[3];
                }

                else
                {
                  v212 = v105[1];
                  v213 = *v105;
                }

                goto LABEL_775;
              }

              if (*v105 != 6)
              {
                if (*v105 != 4)
                {
                  v253 = SNPrintF(&__str, 300, "<< ERROR: %%#a used with unsupported type: %d >>");
                  goto LABEL_782;
                }

                v223 = (v105 + 4);
                if (v13)
                {
                  _PrintFObfuscateIPv4(v223, __format);
                  v223 = __format;
                }

                v212 = v223[2];
                v213 = v223[3];
                goto LABEL_775;
              }

              v172 = (v105 + 4);
              if (v13)
              {
                _PrintFObfuscateIPv6(v172, __format);
                v172 = __format;
              }

              goto LABEL_750;
            }

            if (v13)
            {
              if (v105 == __format)
              {
                v284 = &__format[1];
                v285 = &__format[5];
                do
                {
                  v286 = *(v284 - 1);
                  *(v284 - 1) = *v285;
                  *v285-- = v286;
                  v69 = v284++ >= v285;
                }

                while (!v69);
              }

              else
              {
                v220 = v105 + 6;
                v221 = __format;
                do
                {
                  v222 = *--v220;
                  *v221++ = v222;
                }

                while (v220 > v105);
              }

              _PrintFObfuscateHardwareAddress(__format, 6uLL, __format);
              v255 = __format[0];
              v256 = __format[2];
              v257 = __format[3];
              v258 = __format[4];
              v259 = __format[5];
            }

            else
            {
              v255 = v105[5];
              v256 = v105[3];
              v257 = v105[2];
              v258 = v105[1];
              v259 = *v105;
            }

            goto LABEL_781;
          }

          v171 = __ROR8__(v24 - 2, 1);
          if (v171 <= 1)
          {
            if (!v171)
            {
              v260 = v105[1];
              v330 = v260 >> 4;
              v331 = v260 & 0xF;
LABEL_776:
              v253 = SNPrintF(&__str, 300, "%u.%u.%u.%u");
              goto LABEL_782;
            }

            if (v171 != 1)
            {
LABEL_694:
              v253 = SNPrintF(&__str, 300, "%s");
              goto LABEL_782;
            }

            if (v13)
            {
              _PrintFObfuscateIPv4(v105, __format);
              v105 = __format;
            }

            v212 = v105[2];
            v213 = v105[3];
LABEL_775:
            v330 = v212;
            v331 = v213;
            goto LABEL_776;
          }

          if (v171 == 2)
          {
            if (v13)
            {
              _PrintFObfuscateHardwareAddress(v105, 6uLL, __format);
              v105 = __format;
            }

            v255 = *v105;
            v256 = v105[2];
            v257 = v105[3];
            v258 = v105[4];
            v259 = v105[5];
LABEL_781:
            v332 = v258;
            v333 = v259;
            v330 = v256;
            v331 = v257;
            v253 = SNPrintF(&__str, 300, "%02X:%02X:%02X:%02X:%02X:%02X", v255);
            goto LABEL_782;
          }

          if (v171 != 3)
          {
            if (v171 != 7)
            {
              goto LABEL_694;
            }

            if (v13)
            {
              _PrintFObfuscateIPv6(v105, __format);
              v105 = __format;
            }

            v172 = v105;
LABEL_750:
            v201 = 0;
            v202 = 0;
LABEL_751:
            IPv6AddressToCString(v172, v201, v202, 0xFFFFFFFF, &__str, 0);
            goto LABEL_752;
          }

          if (v13)
          {
            _PrintFObfuscateHardwareAddress(v105, 8uLL, __format);
            v105 = __format;
          }

          v334 = v105[6];
          v335 = v105[7];
          v332 = v105[4];
          v333 = v105[5];
          v330 = v105[2];
          v331 = v105[3];
          v253 = SNPrintF(&__str, 300, "%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X", *v105);
        }

LABEL_782:
        LODWORD(v35) = v253;
LABEL_783:
        v31 = 97;
LABEL_90:
        v44 = &__str;
        goto LABEL_804;
      case 'b':
        v32 = 2;
        goto LABEL_170;
      case 'c':
        v109 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v110 = *v109;
        if (v15)
        {
          __str = 39;
          if (v110)
          {
            v111 = 94;
          }

          else
          {
            v111 = 46;
          }

          if ((v110 - 32) >= 0x5F)
          {
            v112 = v111;
          }

          else
          {
            v112 = v110;
          }

          v353[0] = v112;
          v353[1] = 39;
          v31 = 99;
          LODWORD(v35) = 3;
        }

        else
        {
          __str = *v109;
          v31 = 99;
          LODWORD(v35) = 1;
        }

        goto LABEL_90;
      case 'd':
      case 'i':
        if (v27 == 1 || v27 == 2)
        {
          v42 = v347[0];
          v347[0] += 8;
          v43 = *v42;
        }

        else
        {
          v113 = v347[0];
          v347[0] += 8;
          v43 = *v113;
        }

        if (v26 == 1)
        {
          v43 = v43;
        }

        if (v26 == 2)
        {
          v72 = v43;
        }

        else
        {
          v72 = v43;
        }

        if ((v72 & 0x8000000000000000) != 0)
        {
          v72 = -v72;
          v32 = 10;
          v70 = 45;
          v12 = 45;
          goto LABEL_179;
        }

        v32 = 10;
        if ((v16 & 2) != 0)
        {
          v12 = 45;
          v70 = 43;
LABEL_179:
          BYTE4(v345) = v70;
        }

        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        if (v32 == 2 && v14 >= 2)
        {
          *__format = &__str;
          if ((v16 & 8) != 0)
          {
            if (v24 >= 0x41)
            {
              SNPrintF_Add(__format, v355, "ERROR: << precision must be 0-%d >>", 64);
LABEL_307:
              v44 = &__str;
              LODWORD(v35) = *__format - &__str;
              goto LABEL_804;
            }

            if (v24)
            {
LABEL_293:
              v124 = (v24 - 1);
              if (v14 == 2)
              {
                do
                {
                  if ((v72 >> v124))
                  {
                    v125 = "";
                    if (*__format != &__str)
                    {
                      v125 = " ";
                    }

                    SNPrintF_Add(__format, v355, "%s%d", v125, v124);
                  }

                  v179 = v124-- <= 0;
                }

                while (!v179);
              }

              else
              {
                for (i = 0; i != v24; ++i)
                {
                  if ((v72 >> v124))
                  {
                    v127 = "";
                    if (*__format != &__str)
                    {
                      v127 = " ";
                    }

                    SNPrintF_Add(__format, v355, "%s%d", v127, i);
                  }

                  LODWORD(v124) = v124 - 1;
                }
              }

              goto LABEL_307;
            }

            v24 = 1;
          }

          else if (v26 == 1)
          {
            v24 = 16;
          }

          else if (v26 == 2)
          {
            v24 = 8;
          }

          else if (((v27 - 1) & 0xFE) != 0)
          {
            v24 = 32;
          }

          else
          {
            v24 = 64;
          }

          *&v346 = v24;
          goto LABEL_293;
        }

        if ((v16 & 8) != 0)
        {
          goto LABEL_201;
        }

        if ((v16 & 4) != 0)
        {
          v88 = 2 * (v32 != 10);
          if (v32 == 8)
          {
            v88 = 1;
          }

          if (!v14)
          {
            v88 = 0;
          }

          if (v12)
          {
            ++v88;
          }

          v69 = v20 >= v88;
          v89 = v20 - v88;
          if (v69)
          {
            v24 = v89;
          }

          else
          {
            v24 = 0;
          }

          *&v346 = v24;
        }

        if (v24)
        {
LABEL_201:
          if (v24 < 0x12C)
          {
            goto LABEL_269;
          }

          v24 = 299;
        }

        else
        {
          v24 = 1;
        }

        *&v346 = v24;
LABEL_269:
        if (v15)
        {
          v118 = 0;
          v119 = -1;
          v120 = 1;
          for (j = v355; ; j = v44)
          {
            if (HIDWORD(v72))
            {
              v122 = v72 / v32;
              *(j - 1) = v33[v72 % v32];
              v44 = (j - 1);
              LODWORD(v35) = v118 + 1;
            }

            else
            {
              v122 = v72 / v32;
              *(j - 1) = v33[v72 % v32];
              v44 = (j - 1);
              LODWORD(v35) = v118 + 1;
              if (v32 > v72)
              {
                LODWORD(v24) = v346;
                goto LABEL_318;
              }
            }

            v72 = v122;
            if (!(v119 + 3 * (v120 / 3)))
            {
              *(j - 2) = 44;
              LODWORD(v35) = v118 + 2;
              v44 = (j - 2);
            }

            --v119;
            ++v120;
            v118 = v35;
          }
        }

        LODWORD(v35) = 0;
        if (v72)
        {
          v44 = v355;
          do
          {
            if (HIDWORD(v72))
            {
              v123 = v72 % v32;
            }

            else
            {
              v123 = v72 % v32;
            }

            if (HIDWORD(v72))
            {
              v72 /= v32;
            }

            else
            {
              v72 = v72 / v32;
            }

            v44[-1].i8[15] = v33[v123];
            v44 = (v44 - 1);
            LODWORD(v35) = v35 + 1;
          }

          while (v72);
        }

        else
        {
          v44 = v355;
        }

LABEL_318:
        if (v35 < v24)
        {
          do
          {
            v44[-1].i8[15] = 48;
            v44 = (v44 - 1);
            LODWORD(v35) = v35 + 1;
          }

          while (v35 < v346);
        }

        if (!BYTE3(v345))
        {
          goto LABEL_326;
        }

        if (v32 == 8)
        {
          v131 = 1;
          v132 = -1;
        }

        else
        {
          if (v32 == 10)
          {
            goto LABEL_326;
          }

          v44[-1].i8[15] = v31;
          v131 = 2;
          v132 = -2;
        }

        v44 = (v44 + v132);
        v44->i8[0] = 48;
        LODWORD(v35) = v131 + v35;
LABEL_326:
        if (BYTE4(v345))
        {
          v44[-1].i8[15] = BYTE4(v345);
          v44 = (v44 - 1);
          LODWORD(v35) = v35 + 1;
        }

        goto LABEL_804;
      case 'm':
        v93 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v94 = *v93;
        if (v14)
        {
          if ((v94 - 0x20000000) >> 24 > 0x5E || BYTE2(v94) - 32 > 0x5E || BYTE1(v94) - 32 > 0x5E || *v93 - 32 > 0x5E)
          {
            v95 = v14 == 2;
            v96 = "%d/0x%X ";
            v97 = "%-11d    0x%08X    '^^^^'    ";
          }

          else
          {
            v95 = v14 == 2;
            v96 = "%d/0x%X/'%C' ";
            v97 = "%-11d    0x%08X    '%C'    ";
          }

          if (v95)
          {
            v129 = v97;
          }

          else
          {
            v129 = v96;
          }

          v330 = v94;
          v130 = SNPrintF(&__str, 300, v129, v94);
        }

        else
        {
          v130 = 0;
        }

        DebugGetErrorStringEx(0, v94, &v353[v130 - 1], 300 - v130);
        v156 = strlen(&__str);
        v76 = PrintFWriteText(a1, &v345, &__str, v156);
        goto LABEL_393;
      case 'n':
        v102 = v347[0];
        v347[0] += 8;
        v103 = *v102;
        if (v26 == 2)
        {
          *v103 = v5;
          goto LABEL_808;
        }

        if (v26 == 1)
        {
          *v103 = v5;
          goto LABEL_808;
        }

        if (v27 == 2)
        {
          v128 = v5;
        }

        else
        {
          if (v27 != 1)
          {
            *v103 = v5;
            goto LABEL_808;
          }

          v128 = v5;
        }

        *v103 = v128;
        goto LABEL_808;
      case 'o':
        v32 = 8;
        goto LABEL_170;
      case 'p':
        v70 = 0;
        v12 = 0;
        v71 = v347[0];
        v347[0] += 8;
        v72 = *v71;
        v24 = 16;
        *&v346 = 16;
        LOBYTE(v16) = v16 | 8;
        LOBYTE(v345) = v16;
        v14 = 1;
        BYTE3(v345) = 1;
        v31 = 120;
        v32 = 16;
        goto LABEL_179;
      case 's':
        v46 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v44 = *v46;
        if (!*v46)
        {
          v31 = 115;
          LODWORD(v35) = 4;
          if ((v16 & 8) == 0 || v24)
          {
            goto LABEL_397;
          }
        }

        if (v13)
        {
          if ((v16 & 8) == 0)
          {
            v24 = strlen(*v46);
          }

          _PrintFObfuscateString(v44, v24, &__s, 0);
          v15 = BYTE8(v346);
          v44 = &__s;
        }

        if (v15 && (v345 & 8) != 0)
        {
          if (v346 < 2)
          {
            *&v346 = 0;
            BYTE8(v346) = 0;
          }

          else
          {
            *&v346 = v346 - 2;
          }
        }

        if (BYTE3(v345) > 1u)
        {
          if (BYTE3(v345) != 2)
          {
            if (BYTE3(v345) == 3)
            {
              v190 = v44->u8[0];
              if (v190 == 43 || v190 == 45)
              {
                LODWORD(v191) = v44 + strlen(v44->i8);
                goto LABEL_509;
              }

              v235 = &v44->i8[1];
              v236 = &v44->u8[1];
              v237 = v44->u8[0];
              v238 = v44;
              while (1)
              {
                if (v237 == 32)
                {
                  v238 = v236;
                }

                else if (!v237 || v237 == 58)
                {
                  v240 = v236 - 1;
                  if (v237 == 58)
                  {
                    v241 = *++v240;
                    v237 = v241;
                  }

                  if (v237 != 58)
                  {
                    while (1)
                    {
                      if (v190 == 32)
                      {
                        v44 = v235;
                      }

                      else if (!v190 || v190 == 40)
                      {
                        v191 = (v235 - 1);
                        goto LABEL_700;
                      }

                      v242 = v235->u8[0];
                      v235 = (v235 + 1);
                      v190 = v242;
                    }
                  }

                  v191 = (v240 + 1);
                  v44 = v238;
                  while (1)
                  {
LABEL_700:
                    v263 = v191->u8[0];
                    if (!v191->i8[0] || v263 == 32)
                    {
                      goto LABEL_764;
                    }

                    if (v263 == 40)
                    {
                      break;
                    }

                    v191 = (v191 + 1);
                  }

                  if (v191->i8[1] == 41)
                  {
                    v277 = &v191->u8[2];
                    v278 = v191->u8[2];
                    v279 = 3;
                    if (v278 != 39)
                    {
                      v279 = 0;
                    }

                    v191 = (v191 + v279);
                    if (v278 == 40)
                    {
                      v191 = v277;
                    }
                  }

LABEL_764:
                  if (v44 < v191 && v44->i8[0] == 42)
                  {
                    v44 = (v44 + 1);
                  }

LABEL_509:
                  LODWORD(v35) = v191 - v44;
                  goto LABEL_790;
                }

                v239 = *v236++;
                v237 = v239;
              }
            }

            goto LABEL_510;
          }

          *__format = &__str;
          v194 = v44->u8[0];
          if (v44->i8[0] || (*__format = v353, __str = 46, v194 = v44->u8[0], v44->i8[0]))
          {
            while (1)
            {
              if (v194 >= 0x40)
              {
                SNPrintF_Add(__format, v355, "<<INVALID DNS LABEL LENGTH %u>>");
                goto LABEL_659;
              }

              if (*__format + v194 >= v354)
              {
                break;
              }

              SNPrintF_Add(__format, v355, "%#s.", v44->i8);
              v195 = &v44->i8[v44->u8[0]];
              v196 = v195[1];
              v44 = (v195 + 1);
              v194 = v196;
              if (!v196)
              {
                goto LABEL_659;
              }
            }

            SNPrintF_Add(__format, v355, "<<DNS NAME TOO LONG>>");
          }

LABEL_659:
          v44 = &__str;
          LODWORD(v35) = *__format - &__str;
        }

        else
        {
          if (BYTE3(v345))
          {
            if (BYTE3(v345) == 1)
            {
              v189 = v44->i8[0];
              v44 = (v44 + 1);
              LODWORD(v35) = v189;
              goto LABEL_790;
            }

LABEL_510:
            v44 = &__str;
            LODWORD(v35) = SNPrintF(&__str, 300, "<< ERROR: %%s with too many #'s (%d) >>", SBYTE3(v345));
            goto LABEL_790;
          }

          if ((v345 & 8) != 0)
          {
            v216 = v346;
            if (v346 < 1)
            {
              goto LABEL_719;
            }

            v217 = 0;
            while (v44->i8[v217])
            {
              if ((v346 & 0x7FFFFFFF) == ++v217)
              {
                goto LABEL_713;
              }
            }

            v216 = v217;
LABEL_713:
            if (v216)
            {
              v264 = 0;
              v265 = v216;
              while (1)
              {
                v266 = v44->u8[v265 - 1];
                if ((v44->i8[v265 - 1] & 0x80000000) == 0)
                {
                  break;
                }

                ++v264;
                v267 = v265 - 1;
                if (v265 >= 2)
                {
                  --v265;
                  if ((v266 & 0xC0) == 0x80)
                  {
                    continue;
                  }
                }

                goto LABEL_785;
              }

              v267 = v265;
LABEL_785:
              v287 = v264 - 2;
              if ((((255 << (8 - v264)) | (1 << (7 - v264))) & v266) != ((255 << (8 - v264)) & 0xFE))
              {
                v264 = 0;
              }

              v288 = v264 + v267;
              if (v287 <= 4)
              {
                LODWORD(v35) = v288;
              }

              else
              {
                LODWORD(v35) = v267;
              }
            }

            else
            {
LABEL_719:
              LODWORD(v35) = 0;
            }
          }

          else
          {
            v192 = 0;
            do
            {
              LODWORD(v35) = v192;
            }

            while (v44->u8[v192++]);
          }
        }

LABEL_790:
        if ((v345 & 8) != 0 && v35 > v346)
        {
          LODWORD(v35) = v346;
          if (v346 >= 1)
          {
            v35 = v346 & 0x7FFFFFFF;
            while ((v44->i8[v35] & 0xC0) == 0x80)
            {
              v179 = v35-- <= 1;
              if (v179)
              {
                LODWORD(v35) = 0;
                break;
              }
            }
          }
        }

        if (BYTE8(v346) == 2)
        {
          v289 = 8738;
        }

        else
        {
          if (BYTE8(v346) != 1)
          {
LABEL_803:
            v31 = 115;
            goto LABEL_804;
          }

          v289 = 10023;
        }

        *(&v346 + 9) = v289;
        goto LABEL_803;
      case 'u':
        goto LABEL_170;
      case 'v':
        v47 = v347[0];
        v347[0] += 8;
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_808;
        }

        v48 = *v47;
        v49 = HIWORD(*v47) & 0xF;
        *__format = &__str;
        SNPrintF_Add(__format, v355, "%u", HIBYTE(v48));
        SNPrintF_Add(__format, v355, ".%u", (v48 >> 20) & 0xF);
        if (v49)
        {
          SNPrintF_Add(__format, v355, ".%u", HIWORD(v48) & 0xF);
        }

        HIDWORD(v51) = BYTE1(v48) - 32;
        LODWORD(v51) = HIDWORD(v51);
        v50 = v51 >> 5;
        if (v50 > 1)
        {
          if (v50 == 2)
          {
            v133 = "b%u";
          }

          else
          {
            if (v50 != 3)
            {
LABEL_439:
              SNPrintF_Add(__format, v355, "<< ERROR: invalid NumVersion stage: 0x%02X >>");
              goto LABEL_443;
            }

            v133 = "f%u";
            if (!v48)
            {
              goto LABEL_443;
            }
          }

          SNPrintF_Add(__format, v355, v133, v48);
        }

        else
        {
          if (v50)
          {
            if (v50 == 1)
            {
              SNPrintF_Add(__format, v355, "a%u");
              goto LABEL_443;
            }

            goto LABEL_439;
          }

          SNPrintF_Add(__format, v355, "d%u");
        }

LABEL_443:
        v44 = &__str;
        LODWORD(v35) = *__format - &__str;
        v31 = 118;
        goto LABEL_804;
      case 'x':
        v33 = "0123456789abcdef";
LABEL_109:
        v32 = 16;
LABEL_170:
        if (v27 == 2 || v27 == 1)
        {
          v83 = v347[0];
          v347[0] += 8;
          v84 = *v83;
        }

        else
        {
          v85 = v347[0];
          v347[0] += 8;
          v84 = *v85;
        }

        v86 = v84;
        v87 = v84;
        if (v26 != 1)
        {
          v87 = v84;
        }

        v70 = 0;
        v12 = 0;
        if (v26 == 2)
        {
          v72 = v86;
        }

        else
        {
          v72 = v87;
        }

        goto LABEL_179;
      case '{':
        v52 = ++v7;
        while (1)
        {
          v31 = *v7;
          if (!*v7 || v31 == 125)
          {
            break;
          }

          ++v7;
        }

        if (strnicmpx(v52, v7 - v52, "asbd"))
        {
          if (strnicmpx(v52, v7 - v52, "cec"))
          {
            if (strnicmpx(v52, v7 - v52, "DateCF"))
            {
              if (strnicmpx(v52, v7 - v52, "dur"))
              {
                if (strnicmpx(v52, v7 - v52, "end"))
                {
                  if (!strnicmpx(v52, v7 - v52, "error"))
                  {
                    v218 = v347[0];
                    v347[0] += 8;
                    if ((v345 & 0x10) != 0)
                    {
                      goto LABEL_807;
                    }

                    v219 = PrintFWriteErrorObject(a1, *v218);
                    goto LABEL_805;
                  }

                  if (strnicmpx(v52, v7 - v52, "fill"))
                  {
                    if (strnicmpx(v52, v7 - v52, "flags"))
                    {
                      if (!strnicmpx(v52, v7 - v52, "mask"))
                      {
                        v280 = v347[0];
                        v347[0] += 8;
                        if ((v345 & 0x10) != 0)
                        {
                          goto LABEL_807;
                        }

                        if (*v280)
                        {
                          v219 = PrintFWriteMaskObject(a1, *v280);
                          goto LABEL_805;
                        }

LABEL_396:
                        LODWORD(v35) = 4;
LABEL_397:
                        v44 = "NULL";
                        goto LABEL_804;
                      }

                      if (strnicmpx(v52, v7 - v52, "pid"))
                      {
                        if (strnicmpx(v52, v7 - v52, "ptr"))
                        {
                          if (strnicmpx(v52, v7 - v52, "sline"))
                          {
                            if (strnicmpx(v52, v7 - v52, "text"))
                            {
                              if (strnicmpx(v52, v7 - v52, "tlv8"))
                              {
                                if (strnicmpx(v52, v7 - v52, "txt"))
                                {
                                  if (!strnicmpx(v52, v7 - v52, "xml"))
                                  {
                                    v318 = v347[0];
                                    v347[0] += 8;
                                    v319 = *v318;
                                    v347[0] = v318 + 16;
                                    if ((v345 & 0x10) != 0)
                                    {
                                      goto LABEL_807;
                                    }

                                    v35 = PrintFWriteXMLEscaped(a1, v319, *(v318 + 8));
                                    if ((v35 & 0x80000000) != 0)
                                    {
                                      return v35;
                                    }

                                    goto LABEL_917;
                                  }

                                  if (strnicmpx(v52, v7 - v52, "xpc"))
                                  {
                                    pthread_mutex_lock(&gPrintFUtilsLock);
                                    v54 = &gExtensionList;
                                    do
                                    {
                                      v54 = *v54;
                                      if (!v54)
                                      {
                                        pthread_mutex_unlock(&gPrintFUtilsLock);
                                        usedBufLena = v7 - v52;
                                        v329 = v52;
                                        v44 = &__str;
                                        LODWORD(v35) = SNPrintF(&__str, 300, "<<UNKNOWN PRINTF EXTENSION '%.*s'>>", usedBufLena, v329);
                                        goto LABEL_804;
                                      }
                                    }

                                    while (strnicmpx(v52, v7 - v52, v54 + 24));
                                    v35 = (v54[1])(a1, &v345, v347, v54[2]);
                                    pthread_mutex_unlock(&gPrintFUtilsLock);
                                    if ((v35 & 0x80000000) != 0)
                                    {
                                      return v35;
                                    }

LABEL_917:
                                    v5 = (v35 + v5);
                                    goto LABEL_807;
                                  }

                                  v320 = v347[0];
                                  v347[0] += 8;
                                  v321 = *v320;
                                  v322 = v321;
                                  if ((v345 & 0x10) != 0)
                                  {
                                    goto LABEL_923;
                                  }

                                  if (v321)
                                  {
                                    v323 = MEMORY[0x193B07900](v321);
                                    if (v323)
                                    {
                                      v324 = v323;
                                      v325 = strlen(v323);
                                      v35 = PrintFWriteMultiLineText(a1, &v345, v324, v325);
                                      free(v324);
                                      if ((v35 & 0x80000000) != 0)
                                      {

                                        return v35;
                                      }

                                      v5 = (v35 + v5);
LABEL_923:

                                      goto LABEL_807;
                                    }

                                    LODWORD(v35) = 17;
                                    v44 = "<<NULL XPC DESC>>";
                                  }

                                  else
                                  {
                                    LODWORD(v35) = 4;
                                    v44 = "NULL";
                                  }

                                  goto LABEL_804;
                                }

                                v316 = v347[0];
                                v347[0] += 8;
                                v317 = *v316;
                                v347[0] = v316 + 16;
                                if ((v345 & 0x10) != 0)
                                {
                                  goto LABEL_807;
                                }

                                v219 = PrintFWriteTXTRecord(a1, &v345, v317, *(v316 + 8));
                              }

                              else
                              {
                                v312 = v347[0];
                                v347[0] += 8;
                                v313 = *v312;
                                v347[0] = v312 + 16;
                                v314 = *(v312 + 8);
                                v347[0] = v312 + 24;
                                if ((v345 & 0x10) != 0)
                                {
                                  goto LABEL_807;
                                }

                                if (v313)
                                {
                                  v315 = v313;
                                }

                                else
                                {
                                  v315 = &unk_191FFB180;
                                }

                                v219 = PrintFWriteTLV8(a1, &v345, v315, v314, *(v312 + 16));
                              }
                            }

                            else
                            {
                              v307 = v347[0];
                              v347[0] += 8;
                              v308 = *v307;
                              v347[0] = v307 + 16;
                              if ((v345 & 0x10) != 0)
                              {
                                goto LABEL_807;
                              }

                              v309 = *(v307 + 8);
                              if (v309 == -1)
                              {
                                v309 = strlen(v308);
                              }

                              v219 = PrintFWriteMultiLineText(a1, &v345, v308, v309);
                            }
                          }

                          else
                          {
                            v298 = v347[0];
                            v347[0] += 8;
                            v299 = *v298;
                            v347[0] = v298 + 16;
                            if ((v345 & 0x10) != 0)
                            {
                              goto LABEL_807;
                            }

                            v300 = *(v298 + 8);
                            if (v300 == -1)
                            {
                              v300 = strlen(v299);
                            }

                            v219 = PrintFWriteSingleLineText(a1, v299, v300, SBYTE3(v345));
                          }

LABEL_805:
                          v35 = v219;
                          if ((v219 & 0x80000000) != 0)
                          {
                            return v35;
                          }

LABEL_806:
                          v5 = (v35 + v5);
                          goto LABEL_807;
                        }

                        v297 = v347[0];
                        v347[0] += 8;
                        if ((v345 & 0x10) == 0)
                        {
                          v5 = PrintFWriteObfuscatedPtr(a1, *v297) + v5;
                        }
                      }

                      else
                      {
                        v290 = v347[0];
                        v347[0] += 8;
                        if ((v345 & 0x10) == 0)
                        {
                          v291 = *v290;
                          __str = 0;
                          GetProcessNameByPID(v291, &__str, 0x12CuLL);
                          if (__str)
                          {
                            if (BYTE3(v345))
                            {
                              v292 = PrintFCore(a1, "%s:%lld");
                            }

                            else
                            {
                              v292 = PrintFCore(a1, "%s");
                            }
                          }

                          else
                          {
                            v292 = PrintFCore(a1, "%lld");
                          }

                          v35 = v292;
                          if ((v292 & 0x80000000) != 0)
                          {
                            return v35;
                          }

                          v5 = (v292 + v5);
                        }
                      }
                    }

                    else
                    {
                      if (BYTE2(v345) == 2 || BYTE2(v345) == 1)
                      {
                        v261 = v347[0];
                        v347[0] += 8;
                        v262 = *v261;
                      }

                      else
                      {
                        v293 = v347[0];
                        v347[0] += 8;
                        v262 = *v293;
                      }

                      if (BYTE1(v345) == 2)
                      {
                        v262 = v262;
                      }

                      else if (BYTE1(v345) == 1)
                      {
                        v262 = v262;
                      }

                      v294 = v347[0];
                      v347[0] += 8;
                      if ((v345 & 0x10) == 0)
                      {
                        v295 = *v294;
                        if (v295)
                        {
                          v296 = v295;
                        }

                        else
                        {
                          v296 = &unk_191FFB180;
                        }

                        v219 = PrintFWriteFlags(a1, SBYTE3(v345), v296, v262);
                        goto LABEL_805;
                      }
                    }
                  }

                  else
                  {
                    v246 = v347[0];
                    v347[0] += 8;
                    v247 = *v246;
                    v347[0] = v246 + 4;
                    if ((v345 & 0x10) == 0)
                    {
                      v248 = v246[2];
                      if (v248)
                      {
                        v249 = 0;
                        v250 = v248;
                        do
                        {
                          if (v250 >= 0x12C)
                          {
                            v251 = 300;
                          }

                          else
                          {
                            v251 = v250;
                          }

                          memset(&__str, v247, v251);
                          v252 = (*a1)(&__str, v251, a1);
                          v35 = v252;
                          if ((v252 & 0x80000000) != 0)
                          {
                            return v35;
                          }

                          v249 += v252;
                          v250 -= v251;
                        }

                        while (v250);
                        v5 = (v249 + v5);
                      }
                    }
                  }
                }

                else
                {
                  v35 = v5;
                  if ((v345 & 0x10) == 0)
                  {
                    return v35;
                  }
                }

LABEL_807:
                v6 = 0;
                v3 = v7;
                if (v31)
                {
                  goto LABEL_808;
                }

                continue;
              }

              if (BYTE2(v345) == 2 || BYTE2(v345) == 1)
              {
                v174 = v347[0];
                v347[0] += 8;
                v175 = *v174;
              }

              else
              {
                v233 = v347[0];
                v347[0] += 8;
                v175 = *v233;
              }

              if (BYTE1(v345) == 1)
              {
                v175 = v175;
              }

              if (BYTE1(v345) == 2)
              {
                v234 = v175;
              }

              else
              {
                v234 = v175;
              }

              if ((v345 & 0x10) != 0)
              {
                goto LABEL_807;
              }

              v44 = &__str;
              v45 = PrintFWriteTimeDuration(v234, SBYTE3(v345), &__str);
            }

            else
            {
              v157 = v347[0];
              v347[0] += 8;
              if ((v345 & 0x10) != 0)
              {
                goto LABEL_807;
              }

              v158 = *v157;
              v159 = *v157;
              LODWORD(v356.tv_sec) = 0;
              LODWORD(v348) = 0;
              *v355 = 0;
              v350 = 0;
              v349 = 0;
              SecondsToYMD_HMS(v159 + 0xEB1E31100, &v356, &v348, v355, &v350 + 1, &v350, &v349);
              v160 = modf(v158, __format);
              v333 = v349;
              v334 = (fabs(v160) * 1000.0);
              v331 = HIDWORD(v350);
              v332 = v350;
              v330 = *v355;
              v44 = &__str;
              v45 = SNPrintF(&__str, 300, "%04d-%02d-%02d-%02d:%02d:%02d.%03d", LODWORD(v356.tv_sec));
            }

LABEL_92:
            LODWORD(v35) = v45;
LABEL_804:
            v219 = PrintFWriteText(a1, &v345, v44->i8, v35);
            goto LABEL_805;
          }

          v140 = v347[0];
          v347[0] += 8;
          v141 = *v140;
          v347[0] = v140 + 2;
          if ((v345 & 0x10) != 0)
          {
            goto LABEL_807;
          }

          v142 = *(v140 + 2);
          if (v142 < 1)
          {
LABEL_886:
            v330 = 64;
            v219 = PrintFCore(a1, "<< MALFORMED CEC: %H >>", v53, v141);
            goto LABEL_805;
          }

          v143 = *v141;
          if (v142 == 1)
          {
            v144 = "<Poll>";
            v145 = "";
            goto LABEL_876;
          }

          v197 = v141 + 2;
          v198 = v141[1];
          if (v198 > 0x45)
          {
            switch(v141[1])
            {
              case 0x80u:
                if (v142 < 6)
                {
                  goto LABEL_886;
                }

                v145 = &v356;
                SNPrintF(&v356, 32, "%.2a -> %.2a", COERCE_DOUBLE(v141 + 2), COERCE_DOUBLE(v141 + 4));
                v144 = "<Routing Change>";
                break;
              case 0x81u:
              case 0x88u:
              case 0x89u:
              case 0x8Au:
              case 0x8Bu:
              case 0x91u:
              case 0x92u:
              case 0x93u:
              case 0x94u:
              case 0x95u:
              case 0x96u:
              case 0x97u:
              case 0x98u:
              case 0x99u:
              case 0x9Au:
              case 0x9Bu:
              case 0x9Cu:
                goto LABEL_849;
              case 0x82u:
                if (v142 < 4)
                {
                  goto LABEL_886;
                }

                v145 = &v356;
                SNPrintF(&v356, 32, "%.2a", COERCE_DOUBLE(v141 + 2));
                v144 = "<Active Source>";
                break;
              case 0x83u:
                v144 = "<Give Physical Address>";
                goto LABEL_875;
              case 0x84u:
                v144 = "<Report Physical Address>";
                goto LABEL_875;
              case 0x85u:
                v144 = "<Request Active Source>";
                goto LABEL_875;
              case 0x86u:
                if (v142 < 4)
                {
                  goto LABEL_886;
                }

                v145 = &v356;
                SNPrintF(&v356, 32, "%.2a", COERCE_DOUBLE(v141 + 2));
                v144 = "<Set Stream Path>";
                break;
              case 0x87u:
                if (v142 < 5)
                {
                  goto LABEL_886;
                }

                v145 = &v356;
                SNPrintF(&v356, 32, "%02X-%02X-%02X", v141[2], v141[3], v141[4]);
                v144 = "<Device Vendor ID>";
                break;
              case 0x8Cu:
                v144 = "<Give Device Vendor ID>";
                goto LABEL_875;
              case 0x8Du:
                v144 = "<Menu Request>";
                goto LABEL_875;
              case 0x8Eu:
                v144 = "<Menu Status>";
                goto LABEL_875;
              case 0x8Fu:
                v144 = "<Give Power Status>";
                goto LABEL_875;
              case 0x90u:
                v144 = "<Report Power Status>";
                goto LABEL_875;
              case 0x9Du:
                v144 = "<Inactive Source>";
                goto LABEL_875;
              case 0x9Eu:
                if (v142 < 3)
                {
                  goto LABEL_886;
                }

                if (*v197 - 4 >= 3)
                {
                  v145 = &v356;
                  SNPrintF(&v356, 32, "Other %H", v141 + 2, v142 - 2, v142 - 2);
                }

                else
                {
                  v145 = off_1E73A4D38[(*v197 - 4)];
                }

                v144 = "<CEC Version>";
                break;
              case 0x9Fu:
                v144 = "<Get CEC Version>";
                goto LABEL_875;
              case 0xA0u:
                v144 = "<Vendor Command with ID>";
                goto LABEL_875;
              default:
                if (v198 == 70)
                {
                  v144 = "<Get OSD Name>";
                  goto LABEL_875;
                }

                if (v198 != 71)
                {
                  goto LABEL_849;
                }

                v145 = &v356;
                SNPrintF(&v356, 32, "'%.*s'", v142 - 2, v141 + 2);
                v144 = "<Set OSD Name>";
                break;
            }

LABEL_876:
            v301 = "TV";
            if (v143 >= 0x10)
            {
              v302 = (v143 >> 4) - 1;
              v301 = "Broadcast";
              if (v302 <= 0xD)
              {
                v301 = off_1E73A4D50[v302];
              }
            }

            v303 = (v143 & 0xF) - 7;
            if ((v143 & 0xF) >= 7)
            {
              v305 = "Broadcast";
              if (v303 >= 8)
              {
                goto LABEL_884;
              }

              v304 = &off_1E73A4DF8[v303];
            }

            else
            {
              v304 = &off_1E73A4DC0[v143 & 0xF];
            }

            v305 = *v304;
LABEL_884:
            v306 = PrintFCore(a1, "%-9s -> %9s: %s %s", v301, v305, v144, v145);
            v53 = 42;
            if ((v306 & 0x80000000) == 0)
            {
              v5 = (v306 + v5);
              goto LABEL_807;
            }

            goto LABEL_886;
          }

          if (v141[1] > 0x31u)
          {
            if (v141[1] <= 0x43u)
            {
              if (v198 == 50)
              {
                v145 = &v356;
                SNPrintF(&v356, 32, "'%.*s'", v142 - 2, v141 + 2);
                v144 = "<Set Menu Language>";
                goto LABEL_876;
              }

              if (v198 != 54)
              {
                goto LABEL_849;
              }

              v144 = "<Standby>";
              goto LABEL_875;
            }

            if (v198 == 68)
            {
              v144 = "<User Control Pressed>";
              goto LABEL_875;
            }

            if (v198 == 69)
            {
              v144 = "<User Control Released>";
              goto LABEL_875;
            }
          }

          else
          {
            if (v141[1] <= 0xCu)
            {
              if (v141[1])
              {
                v144 = "<Image View On>";
                if (v198 != 4)
                {
                  goto LABEL_849;
                }
              }

              else
              {
                v144 = "<Feature Abort>";
              }

LABEL_875:
              v145 = &v356;
              SNPrintF(&v356, 32, "%H", v197, v142 - 2, v142 - 2, v331, v332, v333, v334, v335);
              goto LABEL_876;
            }

            if (v198 == 13)
            {
              v144 = "<Text View On>";
              goto LABEL_875;
            }

            if (v198 == 26)
            {
              v144 = "<Give Deck Status>";
              goto LABEL_875;
            }
          }

LABEL_849:
          v144 = __format;
          SNPrintF(__format, 32, "<<? 0x%02X>>", v141[1]);
          v197 = v141 + 2;
          goto LABEL_875;
        }

        v114 = v347[0];
        v347[0] += 8;
        if ((v345 & 0x10) != 0)
        {
          goto LABEL_807;
        }

        v115 = *v114;
        v116 = *(*v114 + 8);
        if (v116 <= 1634492770)
        {
          if (v116 != 1633772320)
          {
            v117 = "ELD,";
            if (v116 == 1633772389)
            {
              goto LABEL_586;
            }

            goto LABEL_450;
          }

          v117 = "AAC,";
        }

        else
        {
          switch(v116)
          {
            case 0x616C6163:
              v117 = "ALAC,";
              break;
            case 0x6C70636D:
              v117 = "PCM,";
              break;
            case 0x6F707573:
              v117 = "Opus,";
              break;
            default:
LABEL_450:
              v117 = __format;
              SNPrintF(__format, 32, "%C,", v116);
              break;
          }
        }

LABEL_586:
        v35 = PrintFCore(a1, "%-5s %5u Hz", v117, *v115);
        if ((v35 & 0x80000000) != 0)
        {
          return v35;
        }

        if (*(v115 + 32))
        {
          v11 = PrintFCore(a1, ", %2u-bit");
        }

        else
        {
          if (*(v115 + 8) != 1634492771)
          {
            goto LABEL_593;
          }

          v11 = PrintFCore(a1, ", %s");
        }

        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        LODWORD(v35) = v11 + v35;
LABEL_593:
        v224 = *(v115 + 28);
        if (v224 == 1)
        {
          v225 = "Mono";
        }

        else if (v224 == 2)
        {
          v225 = "Stereo";
        }

        else
        {
          v225 = __format;
          SNPrintF(__format, 32, "%u ch", *(v115 + 28));
        }

        v11 = PrintFCore(a1, ", %s", v225);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        v226 = v11 + v35;
        if ((*(v115 + 12) & 0x20) != 0)
        {
          v227 = PrintFCore(a1, ", Non-interleaved");
          v35 = v227;
          if ((v227 & 0x80000000) != 0)
          {
            return v35;
          }

          v226 += v227;
        }

        if (*(v115 + 8) != 1819304813)
        {
          goto LABEL_614;
        }

        v228 = *(v115 + 12);
        if ((v228 & 2) != 0)
        {
          v229 = PrintFCore(a1, ", Swapped");
          v35 = v229;
          if ((v229 & 0x80000000) != 0)
          {
            return v35;
          }

          v226 += v229;
          v228 = *(v115 + 12);
        }

        if (v228)
        {
          v230 = PrintFCore(a1, ", Float");
        }

        else
        {
          if ((v228 & 4) == 0 || !*(v115 + 32) || (v228 & 0x1F80) == 0)
          {
LABEL_614:
            if (*(v115 + 20) <= 1u)
            {
              v5 = (v226 + v5);
              goto LABEL_807;
            }

            v231 = PrintFCore(a1, ", %u samples/packet", *(v115 + 20));
            if (v231 >= 0)
            {
              v232 = v226;
            }

            else
            {
              v232 = 0;
            }

            v35 = (v232 + v231);
            if (v232 + v231 < 0)
            {
              return v35;
            }

            goto LABEL_806;
          }

          v230 = PrintFCore(a1, ", %u.%u");
        }

        v35 = v230;
        if ((v230 & 0x80000000) != 0)
        {
          return v35;
        }

        v226 += v230;
        goto LABEL_614;
      default:
        v44 = &__str;
        v45 = SNPrintF(&__str, 300, "<<UNKNOWN FORMAT CONVERSION CODE '%%%c'>>");
        goto LABEL_92;
    }
  }
}

uint64_t VASPrintF(void **a1, char *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v7 = PrintFCallBackAllocatedString;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = PrintFCoreVAList(&v7, a2, a3);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v7("", 1, &v7);
    if ((v5 & 0x80000000) == 0)
    {
      *a1 = v8;
      return v4;
    }

    v4 = v5;
  }

  if (v8)
  {
    free(v8);
  }

  return v4;
}

uint64_t PrintFWriteFlags(uint64_t (**a1)(void, void, void), char a2, const char *a3, uint64_t a4)
{
  v4 = a4;
  if (a2)
  {
    v7 = PrintFCore(a1, "0x%llX ", a4);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  v8 = PrintFCore(a1, "<");
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = v8 + v7;
  if (v4)
  {
    v10 = 0;
    do
    {
      if (((1 << v10) & v4) != 0)
      {
        v4 &= ~(1 << v10);
        for (i = a3; ; i += v12 + 2)
        {
          v12 = strlen(i + 1);
          if (!v12)
          {
            break;
          }

          if (v10 == *i)
          {
            v13 = PrintFCore(a1, " %s", i + 1);
            v7 = v13;
            if ((v13 & 0x80000000) != 0)
            {
              return v7;
            }

            v9 += v13;
            break;
          }
        }
      }

      if (v10 > 0x3E)
      {
        break;
      }

      ++v10;
    }

    while (v4);
  }

  v14 = PrintFCore(a1, " >");
  if (v14 >= 0)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  return (v15 + v14);
}

size_t PrintFCallBackAllocatedString(const void *a1, size_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a3 + 16);
  v7 = v6 + a2;
  if (v6 + a2 <= *(a3 + 24))
  {
    v9 = *(a3 + 8);
  }

  else
  {
    if (v7 >= 0x100)
    {
      v8 = (v7 + 1023) & 0xFFFFFC00;
    }

    else
    {
      v8 = 256;
    }

    v9 = malloc_type_realloc(*(a3 + 8), v8, 0x100004077774924uLL);
    if (!v9)
    {
      return 4294960568;
    }

    *(a3 + 8) = v9;
    *(a3 + 24) = v8;
    v6 = *(a3 + 16);
  }

  memcpy(&v9[v6], a1, v4);
  *(a3 + 16) += v4;
  return v4;
}

uint64_t PrintFWriteText(uint64_t (**a1)(const char *, uint64_t, void), uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = (a2 + 25);
  if (*(a2 + 25))
  {
    v9 = a4 + 1;
  }

  else
  {
    v9 = a4;
  }

  v10 = (a2 + 26);
  if (*(a2 + 26))
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v9;
  }

  if ((*a2 & 1) == 0 && v11 < *(a2 + 8))
  {
    v12 = 0;
    while (1)
    {
      v13 = (*a1)(" ", 1, a1);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      ++v12;
      v14 = *(a2 + 8) - 1;
      *(a2 + 8) = v14;
      if (v11 >= v14)
      {
        if (*v8)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }
  }

  v12 = 0;
  if (*(a2 + 25))
  {
LABEL_15:
    v13 = (*a1)(v8, 1, a1);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    ++v12;
  }

LABEL_17:
  v13 = (*a1)(a3, a4, a1);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = (v12 + a4);
  if (!*v10)
  {
    goto LABEL_21;
  }

  v13 = (*a1)(v10, 1, a1);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = (v15 + 1);
LABEL_21:
  if (v11 < *(a2 + 8))
  {
    while (1)
    {
      v13 = (*a1)(" ", 1, a1);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      v15 = (v15 + 1);
      if (++v11 >= *(a2 + 8))
      {
        return v15;
      }
    }

    return v13;
  }

  return v15;
}

uint64_t LogPrintV(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = a3;
  v59 = *MEMORY[0x1E69E9840];
  v54 = a5;
  memset(v56, 0, 512);
  __s = 0;
  v53 = 0;
  v9 = a3 & 0x4200000;
  if ((a3 & 0x4200000) != 0)
  {
    v53 = v54;
    VASPrintF(&__s, a4, v54);
  }

  LogUtils_EnsureInitialized();
  pthread_mutex_lock(&gLogUtilsLock);
  *&v56[0] = a1;
  DWORD2(v56[0]) = v6;
  BYTE12(v56[0]) = 0;
  v57 = 0;
  v58 = 0;
  if ((v6 & 0x80000) == 0)
  {
    v10 = *(a1 + 16);
    if ((v6 & 0x400000) == 0 && *(a1 + 88))
    {
      if (!*(a1 + 80))
      {
        *(a1 + 80) = *(a1 + 72) + mach_absolute_time();
      }

      if (mach_absolute_time() >= *(a1 + 80))
      {
        v11 = 0;
        *(a1 + 80) = 0;
        *(a1 + 92) = 0;
      }

      else
      {
        v11 = *(a1 + 92);
      }

      if (v11 >= *(a1 + 88))
      {
        pthread_mutex_unlock(&gLogUtilsLock);
        v28 = 0;
        v29 = __s;
        goto LABEL_79;
      }

      *(a1 + 92) = v11 + 1;
    }

    if (v10)
    {
      v12 = SNPrintF(v55, 64, "%N ");
      if (v12 >= 1)
      {
        _LogPrintFWrite(v56, v55, v12, 1);
      }
    }

    if ((v6 >> 14) & 0x40 | (v6 >> 17) & 0x80 | v10 & 0xFE)
    {
      v13 = CPrintF(_LogPrintFCallBack, v56, "[");
      v14 = v13 & ~(v13 >> 31);
      v15 = v14;
      if ((v10 & 4) != 0)
      {
        v30 = getprogname();
        v31 = CPrintF(_LogPrintFCallBack, v56, "%s", v30);
        v15 = (v31 & ~(v31 >> 31)) + v14;
        if ((v10 & 2) == 0)
        {
LABEL_19:
          if ((v10 & 8) == 0)
          {
LABEL_20:
            if ((v10 & 0x20) == 0)
            {
              if (!((v6 >> 14) & 0x40 | v10 & 0x40))
              {
                goto LABEL_22;
              }

              goto LABEL_47;
            }

            v35 = CPrintF(_LogPrintFCallBack, v56, "%s%.*s");
LABEL_46:
            v15 += v35 & ~(v35 >> 31);
            if (!((v6 >> 14) & 0x40 | v10 & 0x40))
            {
LABEL_22:
              if (!((v6 >> 17) & 0x80 | v10 & 0x80))
              {
                goto LABEL_23;
              }

              goto LABEL_50;
            }

LABEL_47:
            v36 = ",";
            if (v14 == v15)
            {
              v36 = "";
            }

            v37 = CPrintF(_LogPrintFCallBack, v56, "%s%s", v36, a2);
            v15 += v37 & ~(v37 >> 31);
            if (!((v6 >> 17) & 0x80 | v10 & 0x80))
            {
LABEL_23:
              if ((v10 & 0x10) == 0)
              {
LABEL_28:
                v18 = CPrintF(_LogPrintFCallBack, v56, "] ");
                v19 = (v18 & ~(v18 >> 31)) + v15;
                goto LABEL_30;
              }

LABEL_24:
              if (v14 == v15)
              {
                v16 = "";
              }

              else
              {
                v16 = "@";
              }

              _LULevelToString(v6, v55);
              v17 = CPrintF(_LogPrintFCallBack, v56, "%s%s", v16, v55);
              v15 += v17 & ~(v17 >> 31);
              goto LABEL_28;
            }

LABEL_50:
            v38 = pthread_self();
            label = v55;
            pthread_getname_np(v38, v55, 0x40uLL);
            if (!v55[0])
            {
              label = dispatch_queue_get_label(0);
            }

            v40 = "<<unnamed thread>>";
            if (label)
            {
              v40 = label;
            }

            v41 = ",";
            if (v14 == v15)
            {
              v41 = "";
            }

            v42 = CPrintF(_LogPrintFCallBack, v56, "%s%s", v41, v40);
            v15 += v42 & ~(v42 >> 31);
            if ((v10 & 0x10) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_24;
          }

LABEL_42:
          v35 = CPrintF(_LogPrintFCallBack, v56, "%s%s");
          goto LABEL_46;
        }
      }

      else if ((v10 & 2) == 0)
      {
        goto LABEL_19;
      }

      if (v14 == v15)
      {
        v32 = "";
      }

      else
      {
        v32 = ":";
      }

      v33 = getpid();
      v34 = CPrintF(_LogPrintFCallBack, v56, "%s%llu", v32, v33);
      v15 += v34 & ~(v34 >> 31);
      if ((v10 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_42;
    }
  }

  v19 = 0;
LABEL_30:
  v20 = VCPrintF(_LogPrintFCallBack, v56, a4, v54);
  v21 = v20 & ~(v20 >> 31);
  v58 = 1;
  v22 = _LogPrintFCallBack("", 0, v56);
  v23 = v19 + (v22 & ~(v22 >> 31));
  pthread_mutex_unlock(&gLogUtilsLock);
  if ((v6 & 0x10000) != 0 && gLogCategory_DebugServicesStackTrace <= 254 && (gLogCategory_DebugServicesStackTrace != -1 || _LogCategory_Initialize(&gLogCategory_DebugServicesStackTrace, 0xFEu)) && gLogCategory_DebugServicesLogging <= 90 && (gLogCategory_DebugServicesLogging != -1 || _LogCategory_Initialize(&gLogCategory_DebugServicesLogging, 0x5Au)))
  {
    LogPrintF(&gLogCategory_DebugServicesLogging, "OSStatus DebugStackTrace(LogLevel)", 90, "### stack tracing not supported on this platform\n", v24, v25, v26, v27, v51);
  }

  v28 = (v21 + v23);
  if ((v6 & 0x20000) != 0 && DebugIsDebuggerPresent())
  {
    __debugbreak();
  }

  v29 = __s;
  if (v9 && __s)
  {
    v43 = &__s[strlen(__s)];
    do
    {
      v44 = v43;
      if (v43 <= __s)
      {
        break;
      }

      --v43;
    }

    while (*(v44 - 1) == 10);
    *v44 = 0;
    if (ReportCriticalError_sInitOnce != -1)
    {
      dispatch_once(&ReportCriticalError_sInitOnce, &__block_literal_global_256);
    }

    v45 = CFStringCreateWithCString(0, v29, 0x8000100u);
    if (v45)
    {
      if ((v6 & 0x200000) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v45 = @"<< No memory for reason >>";
      CFRetain(@"<< No memory for reason >>");
      if ((v6 & 0x200000) == 0)
      {
LABEL_71:
        v46 = ReportCriticalError_sWriteStackShot_f;
        if (ReportCriticalError_sWriteStackShot_f)
        {
          v47 = getpid();
          v46(v45, 0, v47);
        }

        else
        {
          syslog(5, "### WriteStackShot() missing: %s");
        }

LABEL_78:
        CFRelease(v45);
        goto LABEL_79;
      }
    }

    v48 = ReportCriticalError_sSimulateCrash_f;
    if (ReportCriticalError_sSimulateCrash_f)
    {
      v49 = getpid();
      v48(v49, 0, v45);
    }

    else
    {
      syslog(5, "### SimulateCrash() missing: %s");
    }

    goto LABEL_78;
  }

LABEL_79:
  if (v29)
  {
    free(v29);
  }

  return v28;
}

void LogUtils_EnsureInitialized()
{
  if ((gLogCFInitialized & 1) == 0 && (gLogUtilsInitializing & 1) == 0)
  {
    pthread_mutex_lock(&gLogUtilsLock);
    gLogUtilsInitializing = 1;
    if ((gLogCFInitialized & 1) == 0)
    {
      gLogCFInitialized = 1;
      notify_register_dispatch("com.apple.managedconfiguration.defaultsdidchange", &gLogUtilsMCDefaultsChangedToken, MEMORY[0x1E69E96A0], &__block_literal_global_11503);
      _LogUtils_ReadCFPreferences(0);
    }

    gLogUtilsInitializing = 0;

    pthread_mutex_unlock(&gLogUtilsLock);
  }
}

uint64_t VCPrintF(uint64_t (*a1)(void, void, void), uint64_t (*a2)(void, void, void), unsigned __int8 *a3, uint64_t a4)
{
  v7[0] = PrintFCallBackUserCallBack;
  memset(&v7[1], 0, 24);
  v7[4] = a1;
  v7[5] = a2;
  v4 = PrintFCoreVAList(v7, a3, a4);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = (v7)[0]("", 0, v7);
    if (v5 >= 0)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return v4;
}

size_t _LogPrintFCallBack(void *__src, size_t __n, uint64_t a3)
{
  if (!__n && *(a3 + 2072))
  {
    v6 = *(a3 + 2064);
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_4:
    _LogPrintFWrite(a3, (a3 + 12), v6, 0);
    v6 = 0;
    *(a3 + 2064) = 0;
    goto LABEL_5;
  }

  v6 = *(a3 + 2064);
  if (v6 + __n >= 0x801 && v6)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (__n < 0x801)
  {
    if (__n)
    {
      memcpy((a3 + v6 + 12), __src, __n);
      *(a3 + 2064) += __n;
    }
  }

  else
  {
    _LogPrintFWrite(a3, __src, __n, 0);
  }

  return __n;
}

uint64_t strnicmpx(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    v4 = a2;
    while (1)
    {
      --v4;
      v6 = __tolower(*a1);
      result = __tolower(*a3);
      if (v6 < result)
      {
        return 0xFFFFFFFFLL;
      }

      if (v6 > result)
      {
        return 1;
      }

      if (!result)
      {
        return result;
      }

      ++a1;
      ++a3;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (*a3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

void _LogOutputOSLog_Writer(uint64_t a1, uint64_t a2, char *__s1, size_t __n)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v8 = *(a2 + 56);
  if (!v8)
  {
    OSLogHandle = _LogCategoryGetOSLogHandle(*a1, &v31);
    if (OSLogHandle)
    {
      v8 = OSLogHandle;
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }
  }

  if (*(a2 + 64))
  {
    v10 = *(a2 + 65);
    if (__n)
    {
LABEL_7:
      __n -= __s1[__n - 1] == 10;
    }
  }

  else
  {
    v26 = *(a1 + 8);
    if (v26 > 0xA)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 > 0x14)
    {
      v27 = 0;
    }

    if (v26 <= 0x59)
    {
      v28 = v27;
    }

    else
    {
      v28 = 16;
    }

    if (v26 <= 0x72)
    {
      v10 = v28;
    }

    else
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    if (__n)
    {
      goto LABEL_7;
    }
  }

  if (*(a2 + 67) || (v11 = *(a1 + 8), (v11 & 0x800000) != 0))
  {
    v20 = v31;
    v21 = os_log_type_enabled(v8, v10);
    if (v20)
    {
      if (!v21)
      {
        return;
      }

      *buf = 136446723;
      *v33 = v20;
      *&v33[8] = 1040;
      *&v33[10] = __n;
      *&v33[14] = 2081;
      *&v33[16] = __s1;
      v22 = "%{public}s: %{private}.*s";
      goto LABEL_19;
    }

    if (!v21)
    {
      return;
    }

    *buf = 68157955;
    *v33 = __n;
    *&v33[4] = 2081;
    *&v33[6] = __s1;
    v22 = "%{private}.*s";
    goto LABEL_35;
  }

  if (*(a2 + 66) || *(*a1 + 16) & 0x200 | v11 & 0x2000000)
  {
    v12 = strndup(__s1, __n);
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = v31;
    v15 = os_log_type_enabled(v8, v10);
    if (v14)
    {
      if (v15)
      {
        *buf = 136446466;
        *v33 = v14;
        *&v33[8] = 2082;
        *&v33[10] = v13;
        v16 = "%{public}s: %{public}s";
        v17 = v10;
        v18 = v8;
        v19 = 22;
LABEL_39:
        _os_log_impl(&dword_191EAF000, v18, v17, v16, buf, v19);
      }
    }

    else if (v15)
    {
      *buf = 136446210;
      *v33 = v13;
      v16 = "%{public}s";
      v17 = v10;
      v18 = v8;
      v19 = 12;
      goto LABEL_39;
    }

    free(v13);
    return;
  }

  v29 = v31;
  v30 = os_log_type_enabled(v8, v10);
  if (!v29)
  {
    if (!v30)
    {
      return;
    }

    *buf = 68157954;
    *v33 = __n;
    *&v33[4] = 2080;
    *&v33[6] = __s1;
    v22 = "%.*s";
LABEL_35:
    v23 = v10;
    v24 = v8;
    v25 = 18;
    goto LABEL_36;
  }

  if (v30)
  {
    *buf = 136446722;
    *v33 = v29;
    *&v33[8] = 1040;
    *&v33[10] = __n;
    *&v33[14] = 2080;
    *&v33[16] = __s1;
    v22 = "%{public}s: %.*s";
LABEL_19:
    v23 = v10;
    v24 = v8;
    v25 = 28;
LABEL_36:
    _os_log_impl(&dword_191EAF000, v24, v23, v22, buf, v25);
  }
}

uint64_t _LogPrintFWrite(uint64_t result, const void *a2, size_t a3, int a4)
{
  v6 = result;
  v7 = *result;
  if (!a4)
  {
    v12 = *(v7 + 56);
    if (v12)
    {
      v13 = *(v12 + 24);
      v14 = v13 != -1 && *(result + 8) < v13;
      if (!v14 && ((*(result + 8) & 0x800000) == 0 || *(v12 + 40) == 14))
      {
        result = (*(v12 + 32))(result);
        v7 = *v6;
      }
    }
  }

  v8 = *(v7 + 64);
  if (v8)
  {
    v9 = *(v8 + 24);
    v10 = v9 != -1 && *(v6 + 8) < v9;
    if (!v10 && ((*(v6 + 8) & 0x800000) == 0 || *(v8 + 40) == 14))
    {
      result = (*(v8 + 32))(v6);
    }
  }

  if ((*(v6 + 8) & 0x840000) == 0x40000)
  {
    result = open("/dev/console", 1, 0);
    if ((result & 0x80000000) == 0)
    {
      v11 = result;
      write(result, a2, a3);
      close(v11);

      return usleep(0xC8u);
    }
  }

  return result;
}

os_log_t _LogCategoryGetOSLogHandle(uint64_t a1, void *a2)
{
  if ((*(a1 + 18) & 2) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 104);
  if (!v4)
  {
    return 0;
  }

  v2 = *v4;
  if (*v4)
  {
    goto LABEL_14;
  }

  v6 = *(a1 + 96);
  if (!v6)
  {
    v6 = getprogname();
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    return 0;
  }

  v8 = strchr(v7, 45);
  if (!v8)
  {
    v2 = os_log_create(v6, v7);
    *v4 = v2;
    if (!a2)
    {
      return v2;
    }

    goto LABEL_15;
  }

  v9 = v8;
  v10 = v4[1];
  if (v10)
  {
    free(v10);
    v4[1] = 0;
  }

  v11 = strdup(v9 + 1);
  v4[1] = v11;
  if (!v11)
  {
    return 0;
  }

  v12 = strndup(v7, v9 - v7);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v2 = os_log_create(v6, v12);
  *v4 = v2;
  free(v13);
LABEL_14:
  if (a2)
  {
LABEL_15:
    *a2 = v4[1];
  }

  return v2;
}

char *__cdecl strndup(const char *__s1, size_t __n)
{
  v3 = 0;
  if (__n)
  {
    while (__s1[v3])
    {
      if (__n == ++v3)
      {
        v3 = __n;
        break;
      }
    }
  }

  v4 = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
  v5 = v4;
  if (v4)
  {
    memcpy(v4, __s1, v3);
    v5[v3] = 0;
  }

  return v5;
}

uint64_t PrintFWriteCFObjectLevel(uint64_t (***a1)(CFUUIDBytes *), const __CFArray *a2, uint64_t a3)
{
  while (1)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v69 = *MEMORY[0x1E69E9840];
    v6 = a1[1];
    v7 = *(v6 + 3);
    v64 = 0;
    v8 = CFGetTypeID(a2);
    if (v8 == CFArrayGetTypeID())
    {
      if (v7 == 2)
      {
        Count = CFArrayGetCount(v4);
        LODWORD(v10) = 0;
        if (Count > 0)
        {
          v11 = Count;
          v12 = "[ ";
LABEL_11:
          v14 = (**v5)(v12, 2);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }

          v15 = 0;
          v16 = v14 + v10;
          while (1)
          {
            ++*(v5 + 4);
            ValueAtIndex = CFArrayGetValueAtIndex(v4, v15);
            v10 = PrintFWriteCFObjectLevel(v5, ValueAtIndex, 1);
            --*(v5 + 4);
            if ((v10 & 0x80000000) != 0)
            {
              return v10;
            }

            if (++v15 >= v11)
            {
              if (v7 != 2)
              {
                v19 = &v62;
                v18 = 1;
                goto LABEL_21;
              }

              v18 = 0;
            }

            else
            {
              v62 = 44;
              if (v7 != 2)
              {
                v19 = &v63;
                v18 = 2;
LABEL_21:
                *v19 = 10;
                goto LABEL_22;
              }

              v63 = 32;
              v18 = 2;
            }

LABEL_22:
            v14 = (**v5)(&v62, v18);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v16 += v10 + v14;
            if (v11 == v15)
            {
              v20 = *v5;
              if (v7 == 2)
              {
                v21 = (*v20)(" ]", 2);
              }

              else
              {
                v29 = PrintFCore(v20, "%*s", 4 * *(v5 + 4), "");
                v10 = v29;
                if ((v29 & 0x80000000) != 0)
                {
                  return v10;
                }

                v16 += v29;
                v21 = (**v5)("]", 1);
              }

              if (v21 >= 0)
              {
                v28 = v16;
              }

              else
              {
                v28 = 0;
              }

              return (v28 + v21);
            }
          }
        }
      }

      else
      {
        v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v13 = CFArrayGetCount(v4);
        if (v13 >= 1)
        {
          v11 = v13;
          v12 = "[\n";
          goto LABEL_11;
        }
      }

      v21 = (**v5)("[]", 2);
LABEL_40:
      if (v21 >= 0)
      {
        v28 = v10;
      }

      else
      {
        v28 = 0;
      }

      return (v28 + v21);
    }

    if (v8 == CFBooleanGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }
      }

      if (*MEMORY[0x1E695E4D0] == v4)
      {
        v30 = 4;
      }

      else
      {
        v30 = 5;
      }

      if (*MEMORY[0x1E695E4D0] == v4)
      {
        v31 = "true";
      }

      else
      {
        v31 = "false";
      }

      v14 = (**v5)(v31, v30);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      return (v14 + v10);
    }

    if (v8 == CFDataGetTypeID())
    {
      break;
    }

    if (v8 == CFDateGetTypeID())
    {
      LODWORD(v10) = 0;
      *&context.byte0 = 0;
      LODWORD(usedBufLen) = 0;
      v61 = 0;
      v59 = 0;
      v60 = 0;
      if (v7 != 2)
      {
        v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }
      }

      CFDateGetComponents(v4, &context, &usedBufLen, &v61, &v60 + 1, &v60, &v59 + 1, &v59);
      v32 = PrintFCore(*v5, "%04d-%02d-%02d %02d:%02d:%02d.%03d", *&context.byte0, usedBufLen, v61, HIDWORD(v60), v60, HIDWORD(v59), v59 / 1000);
      goto LABEL_62;
    }

    if (v8 == CFDictionaryGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }
      }

      if (CFDictionaryGetCount(v4) < 1)
      {
        v21 = (**v5)("{}", 2);
        goto LABEL_40;
      }

      v68 = 0;
      if (v7 == 2)
      {
        v36 = "{ ";
      }

      else
      {
        v36 = "{\n";
      }

      v37 = (**v5)(v36, 2);
      v38 = v37;
      if ((v37 & 0x80000000) != 0)
      {
        return v37;
      }

      *&context.byte0 = *v5;
      *&context.byte8 = v6;
      v39 = *(v5 + 4) + 1;
      v67 = 0;
      LODWORD(v68) = 0;
      v66 = v39;
      CFDictionaryApplyFunction(v4, PrintFWriteCFObjectApplier, &context);
      if ((v68 & 0x80000000) != 0)
      {
        return v68;
      }

      v40 = v38 + v10 + v67;
      if (v7 != 2)
      {
        v41 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
        v10 = v41;
        if ((v41 & 0x80000000) != 0)
        {
          return v10;
        }

        v40 += v41;
      }

      v32 = (**v5)("}", 1);
      v33 = v32 + v40;
      goto LABEL_85;
    }

    if (v8 == CFNumberGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }
      }

      *&context.byte0 = 0;
      if (CFNumberIsFloatType(v4))
      {
        CFNumberGetValue(v4, kCFNumberDoubleType, &context);
        v21 = PrintFCore(*v5, "%f");
      }

      else
      {
        CFNumberGetValue(v4, kCFNumberSInt64Type, &context);
        v21 = PrintFCore(*v5, "%lld");
      }

      goto LABEL_40;
    }

    if (v8 == CFStringGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }
      }

      v14 = (**v5)("", 1);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      LODWORD(v10) = v14 + v10;
      Length = CFStringGetLength(v4);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v64 = MaximumSizeForEncoding;
      if (MaximumSizeForEncoding)
      {
        v45 = MaximumSizeForEncoding;
        v46 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
        if (!v46)
        {
          return 4294960568;
        }

        v47 = v46;
        usedBufLen = 0;
        v71.location = 0;
        v71.length = Length;
        CFStringGetBytes(v4, v71, 0x8000100u, 0x5Eu, 0, v46, v45, &usedBufLen);
        if (*(v6 + 27))
        {
          p_context = &context;
          _PrintFObfuscateString(v47, usedBufLen, &context, &v64);
          usedBufLen = v64;
        }

        else
        {
          p_context = v47;
        }

        v50 = (**v5)(p_context);
        free(v47);
        v10 = (v10 & ~(v50 >> 31)) + v50;
        if (v50 < 0)
        {
          return v10;
        }
      }

      v32 = (**v5)("", 1);
LABEL_62:
      v33 = v32 + v10;
LABEL_85:
      if (v32 >= 0)
      {
        return v33;
      }

      else
      {
        return v32;
      }
    }

    if (v8 == CFNullGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }
      }

      v32 = (**v5)("Null", 4);
      goto LABEL_62;
    }

    if (v8 != CFURLGetTypeID())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *&context.byte0 = 0;
        *&context.byte8 = 0;
        if (v7 == 2)
        {
          LODWORD(v10) = 0;
LABEL_127:
          [(__CFArray *)v4 getUUIDBytes:&context];
          v51 = *v5;
          if (*(v6 + 27))
          {
            v52 = "%~#U";
          }

          else
          {
            v52 = "%#U";
          }

LABEL_138:
          v14 = PrintFCore(v51, v52, &context);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }

          return (v14 + v10);
        }

        else
        {
          v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_127;
          }
        }

        return v10;
      }

      if (v8 == CFUUIDGetTypeID())
      {
        if (v7 == 2)
        {
          LODWORD(v10) = 0;
        }

        else
        {
          v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
          if ((v10 & 0x80000000) != 0)
          {
            return v10;
          }
        }

        context = CFUUIDGetUUIDBytes(v4);
        v51 = *v5;
        if (*(v6 + 27))
        {
          v52 = "%~#U";
        }

        else
        {
          v52 = "%#U";
        }

        goto LABEL_138;
      }

      if (v8 == CFSetGetTypeID())
      {
        v53 = [(__CFArray *)v4 allObjects];
        if (v53)
        {
          v10 = PrintFWriteCFObjectLevel(v5, v53, v3);
        }

        else
        {
          v10 = 4294960568;
        }

        return v10;
      }

      if (v7 == 2)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = PrintFCore(*v5, "%*s", 4 * *(v5 + 4), "");
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }
      }

      v54 = CFCopyDescription(v4);
      v55 = *v5;
      if (v54)
      {
        v56 = PrintFCore(v55, "%@", v54);
        CFRelease(v54);
        if (v56 >= 0)
        {
          v57 = v10;
        }

        else
        {
          v57 = 0;
        }

        return (v57 + v56);
      }

      v21 = PrintFCore(v55, "<<UNKNOWN CF OBJECT TYPE: %d>>");
      goto LABEL_40;
    }

    v49 = CFURLGetString(v4);
    if (!v49)
    {
      return 4294960596;
    }

    a2 = v49;
    a1 = v5;
    a3 = v3;
  }

  BytePtr = CFDataGetBytePtr(v4);
  v23 = CFDataGetLength(v4);
  v24 = v23;
  v25 = v23;
  if ((*v6 & 8) != 0)
  {
    v25 = *(v6 + 16);
  }

  if (v7 == 2)
  {
    if (v25 >= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v25;
    }

    if (v26 >= 0x40)
    {
      v27 = 64;
    }

    else
    {
      v27 = v26;
    }

    v10 = PrintFWriteHexByteStream(*v5, 0, BytePtr, v27);
    if ((v10 & 0x80000000) == 0 && v27 < v24)
    {
      v21 = (**v5)("...", 3);
      goto LABEL_40;
    }
  }

  else
  {
    v34 = *(v5 + 4);
    if (v3 || v23 >= 0x11)
    {
      if (v3)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = (**v5)("\n", 1);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }
      }

      v35 = v34 + 1;
    }

    else
    {
      v35 = 0;
      LODWORD(v10) = 0;
    }

    *(v5 + 4) = v35;
    v14 = PrintFWriteHex(*v5, v6, v35, BytePtr, v24, v25, 0);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v10 = (v14 + v10);
    *(v5 + 4) = v34;
  }

  return v10;
}

void NSAppendPrintV(CFMutableStringRef *a1, char *a2, uint64_t a3)
{
  if (!*a1)
  {
    *a1 = [MEMORY[0x1E696AD60] string];
  }

  cStr = 0;
  VASPrintF(&cStr, a2, a3);
  v6 = cStr;
  if (cStr)
  {
    CFStringAppendCString(*a1, cStr, 0x8000100u);

    free(v6);
  }
}

uint64_t VSNPrintF(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v11 = 0;
  v12 = 0;
  v7 = PrintFCallBackFixedString;
  v8 = a1;
  v5 = a2 - 1;
  if (!a2)
  {
    v5 = 0;
  }

  v9 = 0;
  v10 = v5;
  result = PrintFCoreVAList(&v7, a3, a4);
  if (a2)
  {
    *(v8 + v9) = 0;
  }

  return result;
}

size_t PrintFCallBackFixedString(_BYTE *__src, size_t __n, void *a3)
{
  v4 = __n;
  v5 = a3[2];
  v6 = a3[3] - v5;
  if (v6 >= __n)
  {
    if (!__n)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    while ((__src[v6] & 0xC0) == 0x80)
    {
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v4 = v6;
LABEL_9:
    memcpy((a3[1] + v5), __src, v4);
    v5 = a3[2];
    goto LABEL_10;
  }

LABEL_5:
  v4 = 0;
LABEL_10:
  a3[2] = v5 + v4;
  return v4;
}

unint64_t CFDictionaryGetInt64(const __CFDictionary *a1, const void *a2, int *a3)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, a2)) != 0)
  {

    return CFGetInt64(Value, a3);
  }

  else
  {
    if (a3)
    {
      *a3 = -6727;
    }

    return 0;
  }
}

uint64_t CFDictionaryGetInt64Ranged(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, a2)) != 0)
  {

    return CFGetInt64Ranged(Value, a3, a4, a5);
  }

  else
  {
    if (a5)
    {
      *a5 = -6727;
    }

    return 0;
  }
}

uint64_t CFGetInt64Ranged(const __CFString *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = 0;
  result = CFGetInt64(a1, &v9);
  v8 = v9;
  if (v9)
  {
LABEL_5:
    if (!a4)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result >= a2 && result <= a3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = -6710;
  if (!a4)
  {
    return result;
  }

LABEL_6:
  *a4 = v8;
  return result;
}

unint64_t CFGetInt64(const __CFString *a1, int *a2)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (!a1)
  {
    v7 = -6705;
    goto LABEL_39;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(a1))
    {
      valuePtr[0] = 0.0;
      CFNumberGetValue(a1, kCFNumberDoubleType, valuePtr);
      v5 = valuePtr[0];
      if (valuePtr[0] < -9.22337204e18)
      {
        v6 = 0x8000000000000000;
LABEL_26:
        v15 = v6;
        v7 = -6710;
        goto LABEL_39;
      }

      if (valuePtr[0] >= 9.22337204e18)
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_26;
      }

      goto LABEL_36;
    }

    CFNumberGetValue(a1, kCFNumberSInt64Type, &v15);
LABEL_38:
    v7 = 0;
    goto LABEL_39;
  }

  if (*MEMORY[0x1E695E4D0] == a1)
  {
    goto LABEL_22;
  }

  if (*MEMORY[0x1E695E4C0] == a1)
  {
LABEL_27:
    v15 = 0;
    goto LABEL_38;
  }

  if (v4 == CFStringGetTypeID())
  {
    if (CFStringGetCString(a1, valuePtr, 128, 0x600u))
    {
      if (strnicmpx(valuePtr, -1, "true") && strnicmpx(valuePtr, -1, "yes") && strnicmpx(valuePtr, -1, "y") && strnicmpx(valuePtr, -1, "on") && strnicmpx(valuePtr, -1, "1"))
      {
        if (strnicmpx(valuePtr, -1, "false") && strnicmpx(valuePtr, -1, "no") && strnicmpx(valuePtr, -1, "n") && strnicmpx(valuePtr, -1, "off") && strnicmpx(valuePtr, -1, "0"))
        {
          if (SNScanF(valuePtr, 0xFFFFFFFFFFFFFFFFLL, "%lli", &v15) != 1)
          {
            v7 = -6717;
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        goto LABEL_27;
      }

LABEL_22:
      v8 = 1;
LABEL_37:
      v15 = v8;
      goto LABEL_38;
    }

    goto LABEL_45;
  }

  if (v4 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    if (Length <= 8)
    {
      if (Length >= 1)
      {
        v11 = 0;
        v12 = &BytePtr[Length];
        do
        {
          v13 = *BytePtr++;
          v11 = v13 | (v11 << 8);
          v15 = v11;
        }

        while (BytePtr < v12);
      }

      goto LABEL_38;
    }

LABEL_45:
    v7 = -6743;
    goto LABEL_39;
  }

  if (v4 == CFDateGetTypeID())
  {
    v5 = MEMORY[0x193B04FE0](a1);
LABEL_36:
    v8 = v5;
    goto LABEL_37;
  }

  if (v4 == CFNullGetTypeID())
  {
    goto LABEL_38;
  }

  v7 = -6756;
LABEL_39:
  if (a2)
  {
    *a2 = v7;
  }

  return v15;
}

double CFDictionaryGetDouble(const __CFDictionary *a1, const void *a2, _DWORD *a3)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, a2)) != 0)
  {

    return CFGetDouble(Value, a3);
  }

  else
  {
    if (a3)
    {
      *a3 = -6727;
    }

    return 0.0;
  }
}

double CFGetDouble(const __CFString *a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  valuePtr = 0.0;
  v9 = 0;
  if (!a1)
  {
    v7 = -6705;
LABEL_31:
    v9 = v7;
    goto LABEL_24;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
    goto LABEL_23;
  }

  if (v4 == CFStringGetTypeID())
  {
    v8 = 0;
    if (CFStringGetCString(a1, buffer, 128, 0x600u))
    {
      if (!strnicmpx(buffer, -1, "true") || !strnicmpx(buffer, -1, "yes") || !strnicmpx(buffer, -1, "y") || !strnicmpx(buffer, -1, "on") || !strnicmpx(buffer, -1, "1"))
      {
        valuePtr = 1.0;
        goto LABEL_23;
      }

      if (!strnicmpx(buffer, -1, "false") || !strnicmpx(buffer, -1, "no") || !strnicmpx(buffer, -1, "n") || !strnicmpx(buffer, -1, "off") || !strnicmpx(buffer, -1, "0"))
      {
        valuePtr = 0.0;
        goto LABEL_23;
      }

      if (sscanf(buffer, "%lf", &valuePtr) == 1)
      {
LABEL_23:
        v9 = 0;
        goto LABEL_24;
      }

      if (SNScanF(buffer, 0xFFFFFFFFFFFFFFFFLL, "%lli", &v8) == 1)
      {
        v5 = v8;
LABEL_21:
        valuePtr = v5;
        goto LABEL_23;
      }

      v7 = -6717;
    }

    else
    {
      v7 = -6743;
    }

    goto LABEL_31;
  }

  if (v4 == CFDateGetTypeID())
  {
    v5 = MEMORY[0x193B04FE0](a1);
    goto LABEL_21;
  }

  valuePtr = CFGetInt64(a1, &v9);
LABEL_24:
  if (a2)
  {
    *a2 = v9;
  }

  return valuePtr;
}

__CFString *CUPrintNSDataAddress(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v10 = __ROR8__(v2, 1);
  if (v10 > 2)
  {
    switch(v10)
    {
      case 3:
        v50 = [v1 bytes];
        NSPrintF("%.6a", v25, v26, v27, v28, v29, v30, v31, v50);
        goto LABEL_16;
      case 4:
        v52 = [v1 bytes];
        NSPrintF("%.8a", v40, v41, v42, v43, v44, v45, v46, v52);
        goto LABEL_16;
      case 8:
        v49 = [v1 bytes];
        NSPrintF("%.16a", v18, v19, v20, v21, v22, v23, v24, v49);
        goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  if (v10 == 1)
  {
    v51 = [v1 bytes];
    NSPrintF("%.2a", v33, v34, v35, v36, v37, v38, v39, v51);
    goto LABEL_16;
  }

  if (v10 != 2)
  {
LABEL_11:
    if (v1)
    {
      NSPrintF("<< ERROR: Bad Address Size: %zu >>", v3, v4, v5, v6, v7, v8, v9, v2);
      goto LABEL_16;
    }

LABEL_13:
    v32 = @"NULL";
    goto LABEL_17;
  }

  v48 = [v1 bytes];
  NSPrintF("%.4a", v11, v12, v13, v14, v15, v16, v17, v48);
  v32 = LABEL_16:;
LABEL_17:

  return v32;
}

id CUPrintNSDataHex(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v5 = [v4 bytes];
  [v4 length];

  if (a3)
  {
    v13 = "%H";
  }

  else
  {
    v13 = "%.3H";
  }

  v14 = NSPrintF(v13, v6, v7, v8, v9, v10, v11, v12, v5);

  return v14;
}

uint64_t __CUXPCCreateCFObjectFromXPCObject_block_invoke_2(void *a1, const char *a2, void *a3)
{
  result = CUXPCCreateCFObjectFromXPCObject(a3);
  if (result)
  {
    v6 = result;
    v7 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v7)
    {
      *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = v7;
      v9 = a1[5];
      v8 = a1[6];
      v10 = *(a1[4] + 8);
      v11 = *(v10 + 24);
      *(v10 + 24) = v11 + 1;
      *(v9 + 8 * v8 + 8 * v11) = v6;
      return 1;
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

uint64_t CUXPCDecodeNSString(void *a1, const char *a2, void **a3, void *a4)
{
  v7 = a1;
  string = xpc_dictionary_get_string(v7, a2);
  if (string)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    v10 = *a3;
    *a3 = v9;
LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  v11 = xpc_dictionary_get_value(v7, a2);
  v10 = v11;
  if (!v11 || MEMORY[0x193B07A70](v11) == MEMORY[0x1E69E9F10])
  {
    goto LABEL_5;
  }

  if (a4)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-string type: '%s'", a2);
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

CFDictionaryRef CUXPCCreateCFObjectFromXPCObject(void *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x193B07A70]();
  if (v2 == MEMORY[0x1E69E9ED0])
  {
    v7 = MEMORY[0x1E695E738];
LABEL_18:
    v9 = CFRetain(*v7);
    goto LABEL_19;
  }

  if (v2 == MEMORY[0x1E69E9E58])
  {
    value = xpc_BOOL_get_value(v1);
    v7 = MEMORY[0x1E695E4D0];
    if (!value)
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_18;
  }

  if (v2 == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v1);
    v9 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
  }

  else if (v2 == MEMORY[0x1E69E9E70])
  {
    length = xpc_data_get_length(v1);
    if ((length & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    v14 = length;
    bytes_ptr = xpc_data_get_bytes_ptr(v1);
    v9 = CFDataCreate(0, bytes_ptr, v14);
  }

  else if (v2 == MEMORY[0x1E69E9EB0])
  {
    *&valuePtr = xpc_int64_get_value(v1);
    v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  }

  else if (v2 == MEMORY[0x1E69E9F18])
  {
    *&valuePtr = xpc_uint64_get_value(v1);
    v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  }

  else if (v2 == MEMORY[0x1E69E9E88])
  {
    *&valuePtr = xpc_double_get_value(v1);
    v9 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  }

  else if (v2 == MEMORY[0x1E69E9E78])
  {
    v16 = xpc_date_get_value(v1);
    v9 = CFDateCreate(0, v16 / 1000000000.0 - *MEMORY[0x1E695E468]);
  }

  else
  {
    if (v2 != MEMORY[0x1E69E9F20])
    {
      if (v2 != MEMORY[0x1E69E9E50])
      {
        if (v2 == MEMORY[0x1E69E9E80])
        {
          count = xpc_dictionary_get_count(v1);
          if (!(count >> 62))
          {
            v4 = count;
            v5 = 2 * count;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
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
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            valuePtr = 0u;
            v33 = 0u;
            if (count < 0x81)
            {
              p_valuePtr = &valuePtr;
LABEL_44:
              v28 = 0;
              v29 = &v28;
              v30 = 0x2020000000;
              v31 = 0;
              v26[0] = MEMORY[0x1E69E9820];
              v26[1] = 3221225472;
              v26[2] = __CUXPCCreateCFObjectFromXPCObject_block_invoke_2;
              v26[3] = &unk_1E73A4450;
              v26[4] = &v28;
              v26[5] = p_valuePtr;
              v26[6] = v4;
              xpc_dictionary_apply(v1, v26);
              if (v29[3] == v4)
              {
                v10 = CFDictionaryCreate(0, p_valuePtr, &p_valuePtr[v4], v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              }

              else
              {
                v10 = 0;
              }

              if (v4)
              {
                v25 = p_valuePtr;
                do
                {
                  if (*v25)
                  {
                    CFRelease(*v25);
                  }

                  ++v25;
                  --v5;
                }

                while (v5);
              }

              if (p_valuePtr == &valuePtr)
              {
                goto LABEL_56;
              }

              v24 = p_valuePtr;
LABEL_55:
              free(v24);
LABEL_56:
              _Block_object_dispose(&v28, 8);
              goto LABEL_20;
            }

            p_valuePtr = malloc_type_calloc(2 * count, 8uLL, 0xC0040B8AA526DuLL);
            if (p_valuePtr)
            {
              goto LABEL_44;
            }
          }
        }

        goto LABEL_46;
      }

      v17 = xpc_array_get_count(v1);
      if ((v17 & 0x8000000000000000) == 0)
      {
        v18 = v17;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
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
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        valuePtr = 0u;
        v33 = 0u;
        if (v17 < 0x101)
        {
          v19 = &valuePtr;
LABEL_33:
          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v31 = 0;
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = __CUXPCCreateCFObjectFromXPCObject_block_invoke;
          applier[3] = &unk_1E73A4428;
          applier[4] = &v28;
          applier[5] = v19;
          xpc_array_apply(v1, applier);
          v20 = v29;
          v21 = v29[3];
          if (v21 == v18)
          {
            v10 = CFArrayCreate(0, v19, v18, MEMORY[0x1E695E9C0]);
            v20 = v29;
            v21 = v29[3];
          }

          else
          {
            v10 = 0;
          }

          if (v21)
          {
            v22 = 0;
            do
            {
              v23 = v19[v22];
              if (v23)
              {
                CFRelease(v23);
                v20 = v29;
              }

              ++v22;
            }

            while (v22 < v20[3]);
          }

          if (v19 == &valuePtr)
          {
            goto LABEL_56;
          }

          v24 = v19;
          goto LABEL_55;
        }

        v19 = malloc_type_calloc(v17, 8uLL, 0xC0040B8AA526DuLL);
        if (v19)
        {
          goto LABEL_33;
        }
      }

LABEL_46:
      v10 = 0;
      goto LABEL_20;
    }

    v65 = *xpc_uuid_get_bytes(v1);
    v9 = CFUUIDCreateFromUUIDBytes(0, v65);
  }

LABEL_19:
  v10 = v9;
LABEL_20:

  return v10;
}

void sub_191EB6AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NSDecodeObjectIfPresent(void *a1, void *a2, uint64_t a3, void **a4)
{
  v11 = a1;
  v7 = a2;
  if ([v11 containsValueForKey:v7])
  {
    v8 = [v11 decodeObjectOfClass:a3 forKey:v7];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"bad type for key %@", v7}];
    }

    v9 = *a4;
    *a4 = v8;
    v10 = v8;
  }
}

uint64_t NSDecodeSInt64RangedIfPresent(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = [v9 containsValueForKey:v10];
  if (v11)
  {
    v12 = [v9 decodeInt64ForKey:v10];
    v13 = v12;
    if (v12 < a3 || v12 > a4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Key '%@', value (%lld) out-of-range (%lld - %lld)", v10, v12, a3, a4}];
    }

    *a5 = v13;
  }

  return v11;
}

id CUXPCDictionaryCreateReply(void *a1)
{
  v1 = a1;
  v2 = objc_getAssociatedObject(v1, &sCUXPCResponseHandlerKey);
  if (v2)
  {
    reply = xpc_dictionary_create(0, 0, 0);
    objc_setAssociatedObject(reply, &sCUXPCResponseHandlerKey, v2, 0x301);
  }

  else
  {
    reply = xpc_dictionary_create_reply(v1);
  }

  return reply;
}

uint64_t IsAppleInternalBuild()
{
  if (IsAppleInternalBuild_sOnce != -1)
  {
    dispatch_once(&IsAppleInternalBuild_sOnce, &__block_literal_global_116);
  }

  return IsAppleInternalBuild_sIsInternal;
}

uint64_t PrintFWriteObfuscatedPtr(uint64_t (**a1)(void, void, void), uint64_t a2)
{
  v7 = a2;
  if (gObfuscateOnce != -1)
  {
    dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = SipHash(gObfuscateKey, &v7, 8);
LABEL_6:
  v5 = PrintFCore(a1, "0x%04X", v4);
  return v5 & ~(v5 >> 31);
}

void PrintFWriteCFObjectApplier(const __CFArray *a1, void *a2, uint64_t (***a3)(const char *, uint64_t))
{
  if (*(a3 + 6))
  {
    v4 = 0;

    goto LABEL_4;
  }

  v7 = *(a3[1] + 3);
  v8 = PrintFWriteCFObjectLevel(a3, a1, 0);
  if (v8 < 0)
  {
    v4 = 0;
  }

  else
  {
    v9 = (**a3)(" : ", 3);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFSetGetTypeID())
      {
        v4 = [a2 allObjects];
        if (!v4)
        {
          goto LABEL_50;
        }

        a2 = v4;
        v10 = CFGetTypeID(v4);
        v31 = a2;
      }

      else
      {
        v31 = 0;
      }

      v11 = v9 + v8;
      if (v10 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(a2) >= 1)
        {
          if (v7 == 2)
          {
            v12 = a3;
            v13 = a2;
            v14 = 1;
            goto LABEL_19;
          }

          v8 = (**a3)("\n", 1);
          if ((v8 & 0x80000000) == 0)
          {
            v21 = a3;
            v22 = a2;
            v23 = 1;
LABEL_39:
            v27 = PrintFWriteCFObjectLevel(v21, v22, v23);
            if ((v27 & 0x80000000) == 0)
            {
              v11 += v8 + v27;
              v16 = ",\n";
              goto LABEL_41;
            }

            v8 = v27;
            goto LABEL_56;
          }

          goto LABEL_56;
        }

        v18 = **a3;
        v19 = "[],\n";
        v20 = "[], ";
      }

      else
      {
        if (v10 != CFDictionaryGetTypeID())
        {
          if (v10 == CFDataGetTypeID())
          {
            v17 = PrintFWriteCFObjectLevel(a3, a2, 0);
            v8 = v17;
            if (v17 < 0)
            {
              goto LABEL_56;
            }

            v11 += v17;
          }

          else
          {
            v24 = *(a3 + 4);
            *(a3 + 4) = 0;
            v25 = PrintFWriteCFObjectLevel(a3, a2, 0);
            v8 = v25;
            if (v25 < 0)
            {
              goto LABEL_56;
            }

            v11 += v25;
            *(a3 + 4) = v24;
          }

          v18 = **a3;
          if (v7 == 2)
          {
            v16 = ", ";
          }

          else
          {
            v16 = ",\n";
          }

          goto LABEL_42;
        }

        if (CFDictionaryGetCount(a2) >= 1)
        {
          if (v7 == 2)
          {
            v12 = a3;
            v13 = a2;
            v14 = 0;
LABEL_19:
            v15 = PrintFWriteCFObjectLevel(v12, v13, v14);
            v8 = v15;
            if ((v15 & 0x80000000) == 0)
            {
              v11 += v15;
              v16 = ", ";
LABEL_41:
              v18 = **a3;
LABEL_42:
              v26 = 2;
              goto LABEL_43;
            }

            goto LABEL_56;
          }

          v8 = (**a3)("\n", 1);
          if ((v8 & 0x80000000) == 0)
          {
            v21 = a3;
            v22 = a2;
            v23 = 0;
            goto LABEL_39;
          }

LABEL_56:
          v4 = v31;
          goto LABEL_49;
        }

        v18 = **a3;
        v19 = "{},\n";
        v20 = "{}, ";
      }

      if (v7 == 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = v19;
      }

      v26 = 4;
LABEL_43:
      v28 = v18(v16, v26);
      v8 = v28;
      if (v28 >= 0)
      {
        v29 = v11;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29 + v28;
      v4 = v31;
      if (v30 >= 1)
      {
        *(a3 + 5) += v30;
      }

      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v4 = 0;
    v8 = v9;
  }

LABEL_49:
  *(a3 + 6) = v8;
LABEL_50:

LABEL_4:
}

uint64_t CFDateGetComponents(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v16 = CFCalendarCopyCurrent();
  if (v16)
  {
    v17 = v16;
    v18 = CFTimeZoneCreateWithName(0, @"GMT", 0);
    if (v18)
    {
      v19 = v18;
      CFCalendarSetTimeZone(v17, v18);
      CFRelease(v19);
      v20 = MEMORY[0x193B04FE0](a1);
      if (CFCalendarDecomposeAbsoluteTime(v17, v20, "yMdHms", a2, a3, a4, a5, a6, a7))
      {
        if (a8)
        {
          *a8 = (modf(v20, &__y) * 1000000.0);
        }

        CFRelease(v17);
        return 0;
      }
    }

    CFRelease(v17);
  }

  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  return 4294960596;
}

uint64_t GestaltGetDeviceClass()
{
  if (GestaltGetDeviceClass_sOnce != -1)
  {
    dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
  }

  return GestaltGetDeviceClass_deviceClass;
}

const char *GetProcessNameByPID(int a1, char *a2, size_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return "";
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(a1, 3, 0, buffer, 136) == 136)
  {
    if (LOBYTE(v11[0]))
    {
      v6 = v11;
    }

    else
    {
      v6 = &v10;
    }

    goto LABEL_12;
  }

  *v15 = 0xE00000001;
  v16 = 1;
  v17 = a1;
  bzero(v13, 0x288uLL);
  v8 = 648;
  if (!sysctl(v15, 4u, v13, &v8, 0, 0) || *__error() && !*__error())
  {
    v6 = v14;
LABEL_12:
    strlcpy(a2, v6, a3);
    return a2;
  }

  *a2 = 0;
  return a2;
}

id CUXPCDecodeNSErrorIfNeeded(void *a1)
{
  v1 = a1;
  if (MEMORY[0x193B07A70]() == MEMORY[0x1E69E9E80])
  {
    v9 = 0;
    v10 = 0;
    CUXPCDecodeNSError(v1, "errO", "errC", "errD", "errM", "errO", &v10, &v9);
    v3 = v10;
    v4 = v9;
    v5 = v4;
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    if (v1 == MEMORY[0x1E69E9E18])
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294896154, "XPC connection interrupted");
    }

    else
    {
      v2 = *MEMORY[0x1E696A768];
      if (v1 == MEMORY[0x1E69E9E20])
      {
        NSErrorF_safe(v2, 4294896148, "XPC connection invalidated");
      }

      else
      {
        NSErrorF_safe(v2, 4294960540, "XPC unknown type");
      }
    }
    v7 = ;
  }

  return v7;
}

uint64_t CUXPCDecodeNSError(void *a1, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6, void *a7, void *a8)
{
  v14 = xpc_dictionary_get_value(a1, a2);
  v15 = v14;
  if (v14)
  {
    if (MEMORY[0x193B07A70](v14) == MEMORY[0x1E69E9E80])
    {
      v16 = _CUXPCDecodeNSError(v15, a3, a4, a5, a6, 1u, 0, a7, a8);
    }

    else if (a8)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-dictionary error object");
      *a8 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

uint64_t SipHash(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3 & 7;
  v4 = a1[1];
  v5 = *a1 ^ 0x736F6D6570736575;
  v6 = v4 ^ 0x646F72616E646F6DLL;
  v7 = *a1 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x7465646279746573;
  if ((a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = &a2[a3 & 0xFFFFFFFFFFFFFFF8];
    do
    {
      v10 = *a2;
      a2 += 8;
      v11 = v10 ^ v8;
      v12 = v6 + v5;
      v13 = v12 ^ __ROR8__(v6, 51);
      v14 = v11 + v7;
      v15 = __ROR8__(v11, 48);
      v16 = (v14 ^ v15) + __ROR8__(v12, 32);
      v17 = v16 ^ __ROR8__(v14 ^ v15, 43);
      v18 = v14 + v13;
      v19 = v18 ^ __ROR8__(v13, 47);
      v20 = v16 + v19;
      v21 = v20 ^ __ROR8__(v19, 51);
      v22 = v17 + __ROR8__(v18, 32);
      v23 = __ROR8__(v17, 48);
      v24 = (v22 ^ v23) + __ROR8__(v20, 32);
      v8 = v24 ^ __ROR8__(v22 ^ v23, 43);
      v25 = v22 + v21;
      v6 = v25 ^ __ROR8__(v21, 47);
      v7 = __ROR8__(v25, 32);
      v5 = v24 ^ v10;
    }

    while (a2 != v9);
    a2 = v9;
  }

  v26 = a3 << 56;
  if ((a3 & 7u) > 3uLL)
  {
    if ((a3 & 7u) > 5uLL)
    {
      if (v3 != 6)
      {
        v26 |= a2[6] << 48;
      }

      v26 |= a2[5] << 40;
    }

    else if (v3 == 4)
    {
      goto LABEL_18;
    }

    v26 |= a2[4] << 32;
LABEL_18:
    v26 |= a2[3] << 24;
LABEL_19:
    v26 |= a2[2] << 16;
    goto LABEL_20;
  }

  if ((a3 & 7u) <= 1uLL)
  {
    if ((a3 & 7) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v3 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v26 |= a2[1] << 8;
LABEL_21:
  v26 |= *a2;
LABEL_22:
  v27 = v26 ^ v8;
  v28 = v6 + v5;
  v29 = v28 ^ __ROR8__(v6, 51);
  v30 = v27 + v7;
  v31 = __ROR8__(v27, 48);
  v32 = (v30 ^ v31) + __ROR8__(v28, 32);
  v33 = v32 ^ __ROR8__(v30 ^ v31, 43);
  v34 = v30 + v29;
  v35 = v34 ^ __ROR8__(v29, 47);
  v36 = v32 + v35;
  v37 = v36 ^ __ROR8__(v35, 51);
  v38 = v33 + __ROR8__(v34, 32);
  v39 = __ROR8__(v33, 48);
  v40 = (v38 ^ v39) + __ROR8__(v36, 32);
  v41 = v40 ^ __ROR8__(v38 ^ v39, 43);
  v42 = v38 + v37;
  v43 = v42 ^ __ROR8__(v37, 47);
  v44 = (v40 ^ v26) + v43;
  v45 = v44 ^ __ROR8__(v43, 51);
  v46 = (__ROR8__(v42, 32) ^ 0xFFLL) + v41;
  v47 = __ROR8__(v41, 48);
  v48 = __ROR8__(v44, 32) + (v46 ^ v47);
  v49 = v48 ^ __ROR8__(v46 ^ v47, 43);
  v50 = v45 + v46;
  v51 = v50 ^ __ROR8__(v45, 47);
  v52 = v51 + v48;
  v53 = v52 ^ __ROR8__(v51, 51);
  v54 = __ROR8__(v50, 32) + v49;
  v55 = __ROR8__(v49, 48);
  v56 = __ROR8__(v52, 32) + (v54 ^ v55);
  v57 = v56 ^ __ROR8__(v54 ^ v55, 43);
  v58 = v53 + v54;
  v59 = v58 ^ __ROR8__(v53, 47);
  v60 = v59 + v56;
  v61 = v60 ^ __ROR8__(v59, 51);
  v62 = __ROR8__(v58, 32) + v57;
  v63 = __ROR8__(v57, 48);
  v64 = __ROR8__(v60, 32) + (v62 ^ v63);
  v65 = v64 ^ __ROR8__(v62 ^ v63, 43);
  v66 = v61 + v62;
  v67 = v66 ^ __ROR8__(v61, 47);
  v68 = (v67 + v64) ^ __ROR8__(v67, 51);
  v69 = __ROR8__(v66, 32) + v65;
  return __ROR8__(v69 ^ __ROR8__(v65, 48), 43) ^ __ROR8__(v68, 47) ^ __ROR8__(v68 + v69, 32) ^ (v68 + v69);
}

unint64_t _PrintFObfuscateString(unint64_t __s, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  v6 = __s;
  if (a2 == -1)
  {
    __s = strlen(__s);
  }

  else
  {
    v7 = a2;
    if (!a2)
    {
LABEL_15:
      *a3 = 0;
      if (!a4)
      {
        return __s;
      }

      v9 = 0;
      goto LABEL_17;
    }

    __s = 0;
    while (v6[__s])
    {
      if (a2 == ++__s)
      {
        goto LABEL_9;
      }
    }
  }

  v7 = __s;
  if (!__s)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (gObfuscateOnce != -1)
  {
    dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
  }

  __s = SipHash(gObfuscateKey, v6, v7);
  *a3 = 16962;
  for (i = 2; i != 8; ++i)
  {
    a3[i] = aAbcdefghijklmn[__s % 0x34];
    __s >>= 8;
  }

  a3[8] = 0;
  if (a4)
  {
    v9 = 8;
LABEL_17:
    *a4 = v9;
  }

  return __s;
}

uint64_t DataBuffer_Init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = a3;
  *(result + 48) = 0;
  *(result + 52) = 0;
  return result;
}

uint64_t DataBuffer_Append(uint64_t a1, char *__s, size_t a3)
{
  v3 = a3;
  if (a3 == -1)
  {
    v3 = strlen(__s);
  }

  __dst = 0;
  v6 = DataBuffer_Resize(a1, *(a1 + 32) + v3, &__dst);
  if (!v6)
  {
    memcpy(__dst, __s, v3);
  }

  return v6;
}

uint64_t DataBuffer_Detach(uint64_t a1, void *a2, size_t *a3)
{
  v6 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 24);
LABEL_9:
    result = 0;
    v11 = *(a1 + 8);
    *(a1 + 24) = *a1;
    *(a1 + 32) = 0;
    *(a1 + 40) = v11;
    *(a1 + 48) = 0;
    *(a1 + 52) = 0;
    *a2 = v7;
    *a3 = v6;
    return result;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 32);
  }

  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (v9)
  {
    v7 = v9;
    if (v6)
    {
      memcpy(v9, *(a1 + 24), v6);
    }

    goto LABEL_9;
  }

  return 4294960568;
}

void DataBuffer_Free(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(a1 + 8);
  *(a1 + 24) = *a1;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
}

uint64_t __DataBuffer_PrintFCallBack(char *__s, size_t a2, uint64_t a3)
{
  v3 = a2;
  LODWORD(result) = DataBuffer_Append(a3, __s, a2);
  if (result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

uint64_t DataBuffer_Resize(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  result = *(a1 + 52);
  if (!result)
  {
    v7 = *(a1 + 32);
    if (v7 >= a2)
    {
      *(a1 + 32) = a2;
      if (a3)
      {
        result = 0;
        v15 = *(a1 + 24);
        goto LABEL_24;
      }

      return 0;
    }

    if (*(a1 + 40) < a2)
    {
      if (*(a1 + 16) < a2)
      {
        result = 4294960545;
      }

      else
      {
        v8 = 4096;
        if (a2 >> 17)
        {
          v9 = (a2 + 0x1FFFF) & 0xFFFE0000;
        }

        else
        {
          v9 = (a2 + 0x3FFF) & 0x3C000;
        }

        if (a2 >= 0x1000)
        {
          v8 = v9;
        }

        if (a2 >= 0x100)
        {
          v10 = v8;
        }

        else
        {
          v10 = 256;
        }

        v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
        if (v11)
        {
          v12 = v11;
          v13 = *(a1 + 32);
          if (v13)
          {
            memcpy(v11, *(a1 + 24), v13);
          }

          if (*(a1 + 48))
          {
            v14 = *(a1 + 24);
            if (v14)
            {
              free(v14);
            }
          }

          *(a1 + 40) = v10;
          *(a1 + 24) = v12;
          *(a1 + 48) = 1;
          goto LABEL_20;
        }

        result = 4294960568;
      }

      *(a1 + 52) = result;
      return result;
    }

LABEL_20:
    *(a1 + 32) = a2;
    if (a3)
    {
      result = 0;
      v15 = *(a1 + 24) + v7;
LABEL_24:
      *a3 = v15;
      return result;
    }

    return 0;
  }

  return result;
}

BOOL _LogCategory_Initialize(uint64_t a1, unsigned __int8 a2)
{
  if (gLogUtilsInitializing)
  {
    return 0;
  }

  LogUtils_EnsureInitialized();
  pthread_mutex_lock(&gLogUtilsLock);
  if (*a1 == -1)
  {
    *a1 = *(a1 + 4);
    v5 = &gLogCategoryList;
    v6 = gLogCategoryList;
    if (gLogCategoryList)
    {
      while (strnicmpx(*(v6 + 24), -1, *(a1 + 24)) < 1)
      {
        v7 = *(v6 + 48);
        v5 = (v6 + 48);
        v6 = v7;
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      v7 = *v5;
    }

    else
    {
      v7 = 0;
    }

LABEL_10:
    *(a1 + 48) = v7;
    *v5 = a1;
    if ((*(a1 + 18) & 2) != 0)
    {
      *(a1 + 104) = malloc_type_calloc(1uLL, 0x10uLL, 0x90040C859B4A5uLL);
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      _LogControlLocked(v8, 0);
    }

    _LogCategory_ApplyActions(a1);
    v9 = a1 + 56;
    if (!*(a1 + 56))
    {
      _LogOutputCreate("console", (a1 + 56));
      if (*v9)
      {
        ++*(*v9 + 8);
      }

      _LogCategory_ApplyActions(a1);
    }
  }

  v10 = *a1;
  pthread_mutex_unlock(&gLogUtilsLock);
  return v10 <= a2;
}

uint64_t PrintFWriteHexByteStream(uint64_t (**a1)(_BYTE *, uint64_t, void), int a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = "0123456789ABCDEF";
  }

  else
  {
    v4 = "0123456789abcdef";
  }

  if (a4 < 1)
  {
    return 0;
  }

  v5 = a3;
  v7 = 0;
  v8 = 0;
  v9 = &a3[a4];
  do
  {
    if (v7 == 64)
    {
      v10 = (*a1)(v15, 64, a1);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v7 = 0;
      v8 = (v8 + 64);
    }

    v11 = &v15[v7];
    v12 = *v5++;
    *v11 = v4[v12 >> 4];
    v7 += 2;
    v11[1] = v4[v12 & 0xF];
  }

  while (v5 < v9);
  if (v7)
  {
    v13 = (*a1)(v15, v7, a1);
    if (v13 >= 0)
    {
      return (v8 + v7);
    }

    else
    {
      return v13;
    }
  }

  return v8;
}

uint64_t PrintFWriteHexOneLine(uint64_t (**a1)(const char *, uint64_t, void), uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  if (*(a2 + 3) == 2)
  {
    v8 = 1;
    v9 = (*a1)("|", 1, a1);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = v8 + v4;
      while (1)
      {
        v18 = *a3++;
        v17 = v18;
        if ((v18 - 127) < 0xFFFFFFA1)
        {
          v17 = 94;
        }

        v21 = v17;
        v9 = (*a1)(&v21, 1, a1);
        if ((v9 & 0x80000000) != 0)
        {
          break;
        }

        if (!--v4)
        {
          v19 = (*a1)("|", 1, a1);
          if (v19 >= 0)
          {
            return (v16 + 1);
          }

          else
          {
            return v19;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
    LODWORD(v11) = 0;
    while (1)
    {
      if (v10)
      {
        v22[0] = 32;
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = a3[v10];
      v14 = &v22[v12];
      *v14 = a0123456789abcd[v13 >> 4];
      v15 = v12 | 2;
      v14[1] = a0123456789abcd[v13 & 0xF];
      v9 = (*a1)(v22, v12 | 2, a1);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      v11 = (v11 + v15);
      if (v4 == ++v10)
      {
        if (*(a2 + 3) < 1)
        {
          return v11;
        }

        v9 = (*a1)(" |", 2, a1);
        if ((v9 & 0x80000000) == 0)
        {
          v8 = v11 + 2;
          goto LABEL_14;
        }

        return v9;
      }
    }
  }

  return v9;
}

uint64_t CUXPCGetNextClientID()
{
  if (CUXPCGetNextClientID_sOnce != -1)
  {
    dispatch_once(&CUXPCGetNextClientID_sOnce, &__block_literal_global_10515);
  }

  return atomic_fetch_add(&CUXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __CUXPCGetNextClientID_block_invoke()
{
  result = RandomBytes(&CUXPCGetNextClientID_sNext, 4uLL);
  CUXPCGetNextClientID_sNext = word_1EADEBB7A << 16;
  return result;
}

uint64_t RandomBytes(void *bytes, size_t count)
{
  while (1)
  {
    result = CCRandomGenerateBytes(bytes, count);
    if (!result)
    {
      break;
    }

    if (gLogCategory_RandomNumberUtils <= 60)
    {
      v9 = result;
      if (gLogCategory_RandomNumberUtils != -1 || _LogCategory_Initialize(&gLogCategory_RandomNumberUtils, 0x3Cu))
      {
        LogPrintF(&gLogCategory_RandomNumberUtils, "OSStatus RandomBytes(void *, size_t)", 60, "### CCRandomGenerateBytes failed: %#m\n", v5, v6, v7, v8, v9);
      }
    }

    sleep(1u);
  }

  return result;
}

uint64_t __IsAppleInternalBuild_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    result = os_variant_has_internal_content();
  }

  IsAppleInternalBuild_sIsInternal = result;
  return result;
}

uint64_t CUXPCDecodeUInt64RangedEx(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v10 = xpc_dictionary_get_value(a1, a2);
  v11 = v10;
  if (!v10)
  {
    v13 = 2;
    goto LABEL_14;
  }

  v12 = MEMORY[0x193B07A70](v10);
  if (v12 == MEMORY[0x1E69E9F18])
  {
    value = xpc_uint64_get_value(v11);
    goto LABEL_11;
  }

  if (v12 == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v11);
LABEL_11:
    if (value >= a3 && value <= a4)
    {
      *a5 = value;
      v13 = 6;
      goto LABEL_14;
    }

    if (!a6)
    {
      goto LABEL_7;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960586, "XPC out-of-range: '%s', %llu vs min %llu, max %llu");
    goto LABEL_6;
  }

  if (a6)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-uint64 type: '%s'");
    *a6 = LABEL_6:;
  }

LABEL_7:
  v13 = 5;
LABEL_14:

  return v13;
}

CFStringRef CFStringCreateV(int *a1, char *a2, uint64_t a3)
{
  cStr = 0;
  if ((VASPrintF(&cStr, a2, a3) & 0x80000000) != 0)
  {
    v5 = 0;
    v6 = -6700;
    if (!a1)
    {
      return v5;
    }

    goto LABEL_6;
  }

  v4 = cStr;
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  free(v4);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -6728;
  }

  if (a1)
  {
LABEL_6:
    *a1 = v6;
  }

  return v5;
}

uint64_t BonjourBrowser_Start(dispatch_queue_t *a1, const char *a2, const char *a3, const char *a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x1030040D16A4755uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = a1;
    v10[4] = a5;
    v12 = strdup(a2);
    v11[1] = v12;
    if (v12)
    {
      v13 = v12;
      if (a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = "";
      }

      v15 = strdup(v14);
      v11[2] = v15;
      if (v15)
      {
        if (!a4 || !*a4 || (v16 = strdup(a4), (v11[3] = v16) != 0))
        {
          CFRetain(a1);
          dispatch_async_f(a1[2], v11, _BonjourBrowser_Start);
          return 0;
        }
      }

      free(v13);
    }

    else
    {
      v15 = v11[2];
    }

    if (v15)
    {
      free(v15);
    }

    v18 = v11[3];
    if (v18)
    {
      free(v18);
    }

    free(v11);
  }

  return 4294960568;
}

void _BonjourBrowser_Start(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = *(*a1 + 136);
  if (v10)
  {
    free(v10);
  }

  *(v9 + 136) = a1[1];
  v11 = *(v9 + 144);
  if (v11)
  {
    free(v11);
  }

  *(v9 + 144) = a1[2];
  v12 = *(v9 + 152);
  if (v12)
  {
    free(v12);
  }

  v13 = a1[4];
  *(v9 + 152) = a1[3];
  *(v9 + 160) = v13;
  if (!*(v9 + 104))
  {
    CFRetain(v9);
    *(v9 + 104) = 1;
    *(v9 + 112) = mach_absolute_time();
  }

  _BonjourBrowser_EnsureStarted(v9, a2, a3, a4, a5, a6, a7, a8);
  free(a1);

  CFRelease(v9);
}

void _BonjourBrowser_EnsureStarted(DNSServiceRef *sdRef, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sdRef[20];
  if ((v9 & 0x80000000000000) != 0)
  {
    _BonjourBrowser_EnsureStoppedDNSSD(sdRef);
    goto LABEL_74;
  }

  sdRefa[0] = 0;
  v10 = sdRef + 3;
  if (!sdRef[3])
  {
    if (gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 30, "Creating shared connection to browse for %s\n", a5, a6, a7, a8, sdRef[17]);
    }

    Connection = DNSServiceCreateConnection(sdRef + 3);
    if (Connection)
    {
      goto LABEL_35;
    }

    DNSServiceSetDispatchQueue(sdRef[3], sdRef[2]);
  }

  if (!sdRef[5])
  {
    v20 = v9 | 0x2000000;
    if ((v9 & 0x1000000000000000) != 0)
    {
      v20 = v9 & 0xFDEFFFFF | 0x2000000;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v9;
    }

    v22 = sdRef[19];
    if (v22)
    {
      if (*v22 == 45 && *(v22 + 1) == 49 && !*(v22 + 2))
      {
        v23 = -1;
      }

      else
      {
        v23 = if_nametoindex(v22);
      }
    }

    else
    {
      v23 = 0;
    }

    sdRefa[0] = *v10;
    if (gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 30, "Starting browse for %s on if %s, flagsAlt 0x%X, flags %#ll{flags}", a5, a6, a7, a8, sdRef[17]);
    }

    Connection = DNSServiceBrowse(sdRefa, v21 | 0x4000, v23, sdRef[17], sdRef[18], _BonjourBrowser_BrowseHandler, sdRef);
    if (!Connection)
    {
      sdRef[5] = sdRefa[0];
      if ((v9 & 0x4000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_39:
      v25 = sdRef[6];
      if (v25)
      {
        if (gLogCategory_BonjourBrowser > 40)
        {
          goto LABEL_45;
        }

        if (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x28u))
        {
          LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 40, "Stopping detail browse for %s, if %s, flags 0x%X\n", a5, a6, a7, a8, sdRef[17]);
        }

        v25 = sdRef[6];
        if (v25)
        {
LABEL_45:
          DNSServiceRefDeallocate(v25);
          sdRef[6] = 0;
        }

        if ((v9 & 0x1000000000000000) != 0 && (v9 & 0x2000000000000000) != 0)
        {
          _BonjourBrowser_RemoveAWDLServices(sdRef);
        }
      }

      goto LABEL_49;
    }

LABEL_35:
    v24 = Connection;
    if (gLogCategory_BonjourBrowser <= 60 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 60, "### Start browse for %s on if %s, flags 0x%llX failed: %#m\n", a5, a6, a7, a8, sdRef[17]);
    }

    _BonjourBrowser_NANEnsureStopped(sdRef, 1, a3, a4, a5, a6, a7, a8);
    _BonjourBrowser_EnsureStoppedDNSSD(sdRef);
    goto LABEL_73;
  }

  if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  if ((v9 & 0x2000000000000000) == 0 || sdRef[6])
  {
LABEL_49:
    v26 = v9;
    goto LABEL_50;
  }

  v18 = sdRef[19];
  if (v18)
  {
    if (*v18 == 45 && *(v18 + 1) == 49 && !*(v18 + 2))
    {
      v19 = -1;
    }

    else
    {
      v19 = if_nametoindex(v18);
    }
  }

  else
  {
    v19 = 0;
  }

  v26 = v9 & 0xFDFFFFFF;
  sdRefa[0] = *v10;
  if (gLogCategory_BonjourBrowser <= 40 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x28u)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 40, "Starting detail browse for %s, if %s, flags 0x%X\n", a5, a6, a7, a8, sdRef[17]);
  }

  if (!DNSServiceBrowse(sdRefa, v9 & 0xFDFFBFFF | 0x4000, v19, sdRef[17], sdRef[18], _BonjourBrowser_IgnoredBrowseHandler, sdRef))
  {
    sdRef[6] = sdRefa[0];
  }

LABEL_50:
  v27 = sdRef[4];
  if ((v9 & 0x400000000000000) != 0)
  {
    if (!v27)
    {
      if (gLogCategory_BonjourBrowser <= 40 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x28u)))
      {
        LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 40, "Starting AWDL browse for %s, flags 0x%llX\n", a5, a6, a7, a8, sdRef[17]);
      }

      LODWORD(a3) = *(sdRef + 32);
      if (a3 || (a3 = if_nametoindex("awdl0"), (*(sdRef + 32) = a3) != 0))
      {
        sdRefa[0] = sdRef[3];
        if (!DNSServiceBrowse(sdRefa, v26 | 0x4000, a3, sdRef[17], sdRef[18], _BonjourBrowser_BrowseHandler, sdRef))
        {
          v24 = 0;
          sdRef[4] = sdRefa[0];
          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

  if (!v27)
  {
    goto LABEL_72;
  }

  if (gLogCategory_BonjourBrowser <= 40 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x28u)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 40, "Stopping AWDL browse for %s, flags 0x%llX\n", a5, a6, a7, a8, sdRef[17]);
  }

  _BonjourBrowser_RemoveAWDLServices(sdRef);
  v28 = sdRef[4];
  if (!v28)
  {
LABEL_72:
    v24 = 0;
    goto LABEL_73;
  }

  DNSServiceRefDeallocate(v28);
  v24 = 0;
  sdRef[4] = 0;
LABEL_73:
  _BonjourBrowser_HandleError(sdRef, v24, a3, a4, a5, a6, a7, a8, v30);
LABEL_74:
  if ((*(sdRef + 167) & 2) != 0)
  {
    if (!sdRef[9])
    {
      if (gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEnsureStarted(BonjourBrowserRef)", 30, "NAN subscriber start: %s\n", v13, v14, v15, v16, sdRef[17]);
      }

      v29 = objc_alloc_init(CUNANSubscriber);
      sdRef[9] = v29;
      [(CUNANSubscriber *)v29 setChangeFlags:4294967291];
      [(CUNANSubscriber *)v29 setControlFlags:*(sdRef + 14)];
      [(CUNANSubscriber *)v29 setDispatchQueue:sdRef[2]];
      -[CUNANSubscriber setServiceType:](v29, "setServiceType:", [MEMORY[0x1E696AEC0] stringWithUTF8String:sdRef[17]]);
      if (sdRef[8])
      {
        [(CUNANSubscriber *)v29 setWfaDiscoveryMode:?];
      }

      sdRefa[0] = MEMORY[0x1E69E9820];
      sdRefa[1] = 3221225472;
      sdRefa[2] = ___BonjourBrowser_NANEnsureStarted_block_invoke;
      sdRefa[3] = &unk_1E73A2800;
      sdRefa[4] = v29;
      sdRefa[5] = sdRef;
      [(CUNANSubscriber *)v29 setEndpointFoundHandler:sdRefa];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = ___BonjourBrowser_NANEnsureStarted_block_invoke_2;
      v33[3] = &unk_1E73A2800;
      v33[4] = v29;
      v33[5] = sdRef;
      [(CUNANSubscriber *)v29 setEndpointLostHandler:v33];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = ___BonjourBrowser_NANEnsureStarted_block_invoke_3;
      v32[3] = &unk_1E73A2828;
      v32[4] = v29;
      v32[5] = sdRef;
      [(CUNANSubscriber *)v29 setEndpointChangedHandler:v32];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = ___BonjourBrowser_NANEnsureStarted_block_invoke_4;
      v31[3] = &unk_1E73A2850;
      v31[4] = v29;
      v31[5] = sdRef;
      [(CUNANSubscriber *)v29 activateWithCompletion:v31];
    }
  }

  else
  {
    _BonjourBrowser_NANEnsureStopped(sdRef, 0, v11, v12, v13, v14, v15, v16);
  }
}

void _LogUtils_ReadCFPreferences(int a1)
{
  if (gLogCFPrefsAppID)
  {
    v2 = gLogCFPrefsAppID;
  }

  else
  {
    v2 = *MEMORY[0x1E695E8A8];
  }

  CFPreferencesAppSynchronize(v2);
  v3 = CFPreferencesCopyAppValue(@"logconfig", v2);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID() && ((a1 & 4) != 0 || v4 != gLogCFLastControlPref && (!gLogCFLastControlPref || !CFEqual(v4, gLogCFLastControlPref))))
    {
      _LogControlLockedCF(v4, a1 | 2u);
      v6 = gLogCFLastControlPref;
      CFRetain(v4);
      gLogCFLastControlPref = v4;
      if (v6)
      {
        CFRelease(v6);
      }
    }

    CFRelease(v4);
  }
}

void _LogCategory_ApplyActions(uint64_t a1)
{
  v1 = gLogActionList;
  if (gLogActionList)
  {
    do
    {
      if (!strnicmpx(*(v1 + 16), -1, "level"))
      {
        v3 = LUStringToLevel(*(v1 + 24));
        if (v3 != -1)
        {
          v4 = gLogCategoryList;
          if (gLogCategoryList)
          {
            v5 = v3;
            do
            {
              if ((!a1 || v4 == a1) && _LogCategoryMatch(*(v4 + 16), *(v4 + 24), *(v1 + 8)))
              {
                *v4 = v5;
              }

              v4 = *(v4 + 48);
            }

            while (v4);
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
    v6 = gLogActionList;
    if (gLogActionList)
    {
      do
      {
        if (!strnicmpx(*(v6 + 16), -1, "flags"))
        {
          v7 = *(v6 + 24);
          v8 = 0;
          v9 = &v7[strlen(v7)];
LABEL_17:
          v10 = v7;
          while (v10 < v9)
          {
            if (*v10 == 59)
            {
              v11 = v10;
              v12 = 1;
            }

            else
            {
              v13 = v9 - 1 - v10;
              v11 = v10;
              while (v13)
              {
                v14 = *++v11;
                --v13;
                if (v14 == 59)
                {
                  goto LABEL_26;
                }
              }

              v11 = v9;
LABEL_26:
              v12 = v11 < v9;
            }

            v15 = v11 - v10;
            v7 = &v11[v12];
            if (!strnicmpx(v10, v11 - v10, "none"))
            {
              v8 = 0;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "time"))
            {
              v8 |= 1u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "pid"))
            {
              v8 |= 2u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "program"))
            {
              v8 |= 4u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "category"))
            {
              v8 |= 8u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "level"))
            {
              v8 |= 0x10u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "prefix"))
            {
              v8 |= 0x20u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "function"))
            {
              v8 |= 0x40u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "thread"))
            {
              v8 |= 0x80u;
              goto LABEL_17;
            }

            v16 = strnicmpx(v10, v15, "public");
            v10 = v7;
            if (!v16)
            {
              v8 |= 0x200u;
              goto LABEL_17;
            }
          }

          for (i = gLogCategoryList; i; i = *(i + 48))
          {
            if ((!a1 || i == a1) && _LogCategoryMatch(*(i + 16), *(i + 24), *(v6 + 8)))
            {
              if ((v8 & 0x20) != 0)
              {
                v18 = *(i + 24);
                v19 = strchr(v18, 95);
                if (!v19)
                {
                  LODWORD(v19) = v18 + strlen(v18);
                }

                *(i + 32) = v18;
                *(i + 40) = v19 - v18;
              }

              *(i + 16) = *(i + 16) & 0x70000 | v8;
            }
          }
        }

        v6 = *v6;
      }

      while (v6);
      v20 = gLogActionList;
      if (gLogActionList)
      {
        do
        {
          if (!strnicmpx(*(v20 + 16), -1, "rate"))
          {
            v21 = *(v20 + 24);
            v22 = strlen(v21);
            v23 = &v21[v22];
            if (v22 < 1)
            {
              v24 = 0;
              v26 = 0;
            }

            else
            {
              v24 = 0;
              do
              {
                v25 = *v21 - 48;
                if (v25 > 9)
                {
                  break;
                }

                v24 = v25 + 10 * v24;
                ++v21;
              }

              while (v21 < v23);
              v26 = v25 > 9;
            }

            v27 = &v21[v26];
            if (v27 >= v23)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              do
              {
                v29 = *v27;
                if ((v29 - 48) > 9)
                {
                  break;
                }

                v28 = v29 + 10 * v28 - 48;
                ++v27;
              }

              while (v27 < v23);
            }

            if (UpTicksPerSecond_sOnce != -1)
            {
              dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
            }

            v30 = gLogCategoryList;
            if (gLogCategoryList)
            {
              v31 = UpTicksPerSecond_sTicksPerSecond * v28 / 0x3E8uLL;
              do
              {
                if ((!a1 || v30 == a1) && _LogCategoryMatch(*(v30 + 16), *(v30 + 24), *(v20 + 8)))
                {
                  *(v30 + 72) = v31;
                  *(v30 + 88) = v24;
                }

                v30 = *(v30 + 48);
              }

              while (v30);
            }
          }

          v20 = *v20;
        }

        while (v20);
        v32 = gLogActionList;
        if (gLogActionList)
        {
          do
          {
            v33 = strnicmpx(*(v32 + 16), -1, "output");
            if (!v33 || !strnicmpx(*(v32 + 16), -1, "output2"))
            {
              v34 = gLogCategoryList;
              if (gLogCategoryList)
              {
                if (v33)
                {
                  v35 = 64;
                }

                else
                {
                  v35 = 56;
                }

                do
                {
                  if ((!a1 || v34 == a1) && _LogCategoryMatch(*(v34 + 16), *(v34 + 24), *(v32 + 8)))
                  {
                    v36 = *(v32 + 24);
                    if (!*v36)
                    {
                      v37 = 0;
LABEL_96:
                      v38 = *(v34 + v35);
                      if (v38 != v37)
                      {
                        if (v38)
                        {
                          --*(v38 + 8);
                        }

                        if (v37)
                        {
                          ++*(v37 + 2);
                        }

                        *(v34 + v35) = v37;
                      }

                      goto LABEL_102;
                    }

                    v45 = 0;
                    if (!_LogOutputCreate(v36, &v45))
                    {
                      v37 = v45;
                      goto LABEL_96;
                    }
                  }

LABEL_102:
                  v34 = *(v34 + 48);
                }

                while (v34);
              }
            }

            v32 = *v32;
          }

          while (v32);
          v39 = gLogActionList;
          if (gLogActionList)
          {
            while (strnicmpx(*(v39 + 16), -1, "o1l"))
            {
              if (!strnicmpx(*(v39 + 16), -1, "o2l"))
              {
                goto LABEL_109;
              }

              if (!strnicmpx(*(v39 + 16), -1, "output1Level"))
              {
                break;
              }

              if (!strnicmpx(*(v39 + 16), -1, "output2Level"))
              {
LABEL_109:
                v40 = 64;
                goto LABEL_111;
              }

LABEL_119:
              v39 = *v39;
              if (!v39)
              {
                goto LABEL_120;
              }
            }

            v40 = 56;
LABEL_111:
            v41 = LUStringToLevel(*(v39 + 24));
            v42 = gLogCategoryList;
            if (gLogCategoryList)
            {
              v43 = v41;
              do
              {
                if ((!a1 || v42 == a1) && _LogCategoryMatch(*(v42 + 16), *(v42 + 24), *(v39 + 8)))
                {
                  v44 = *(v42 + v40);
                  if (v44)
                  {
                    *(v44 + 24) = v43;
                  }
                }

                v42 = *(v42 + 48);
              }

              while (v42);
            }

            goto LABEL_119;
          }
        }
      }
    }
  }

LABEL_120:

  _LogOutputDeleteUnused();
}

void _LogOutputDeleteUnused()
{
  v0 = gLogOutputList;
  if (gLogOutputList)
  {
    v1 = &gLogOutputList;
    do
    {
      v2 = v1;
      v1 = v0;
      while (1)
      {
        v0 = *v1;
        if (*(v1 + 2))
        {
          break;
        }

        *v2 = v0;
        _LogOutputDelete(v1);
        v1 = *v2;
        if (!*v2)
        {
          return;
        }
      }
    }

    while (v0);
  }
}

uint64_t _LogOutputCreate(char *a1, uint64_t **a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = &gLogOutputList;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (!strnicmpx(v4[2], -1, a1))
    {
      v5 = 0;
      goto LABEL_146;
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x68uLL, 0x10B2040D471ABDAuLL);
  if (!v6)
  {
    return 4294960568;
  }

  v4 = v6;
  *(v6 + 2) = 0;
  v7 = strdup(a1);
  v4[2] = v7;
  if (!v7)
  {
LABEL_149:
    v5 = 4294960568;
    goto LABEL_139;
  }

  *(v4 + 6) = -1;
    ;
  }

  v9 = i - a1;
  if (i == a1)
  {
    v5 = 4294960540;
    goto LABEL_139;
  }

  if (*i)
  {
    v10 = (i + 1);
  }

  else
  {
    v10 = i;
  }

  if (strnicmpx(a1, i - a1, "callback"))
  {
    if (strnicmpx(a1, v9, "console"))
    {
      if (strnicmpx(a1, v9, "file"))
      {
        if (!strnicmpx(a1, v9, "oslog"))
        {
          v18 = _LogOutputOSLog_Setup(v4, v10);
          if (v18)
          {
LABEL_141:
            v5 = v18;
            goto LABEL_139;
          }

          goto LABEL_145;
        }

        if (strnicmpx(a1, v9, "syslog"))
        {
LABEL_20:
          v5 = 4294960591;
LABEL_139:
          _LogOutputDelete(v4);
          return v5;
        }

        goto LABEL_44;
      }

      v4[4] = _LogOutputFile_Writer;
      *(v4 + 10) = 2;
      v19 = v4[7];
      if (v19)
      {
        if (v19 != *MEMORY[0x1E69E9848] && v19 != *MEMORY[0x1E69E9858])
        {
          fclose(v19);
        }
      }

      v4[7] = 0;
      if (*v10 && strnicmpx(v10, -1, "stderr"))
      {
        if (strnicmpx(v10, -1, "stdout"))
        {
          v21 = *v10;
          if (*v10)
          {
            while (1)
            {
              v22 = v10;
              if (!v21)
              {
                break;
              }

              while (v21 != 61)
              {
                v23 = *++v22;
                v21 = v23;
                if (!v23)
                {
                  goto LABEL_138;
                }
              }

              v24 = v22 + 1;
              v25 = -1;
              for (j = 1; v22[j] && v22[j] != 59; ++j)
              {
                ++v25;
              }

              v27 = &v22[j];
              if (v22[j])
              {
                v28 = v27 + 1;
              }

              else
              {
                v28 = &v22[j];
              }

              if (strnicmpx(v10, v22 - v10, "path"))
              {
                if (strnicmpx(v10, v22 - v10, "roll"))
                {
                  if (!strnicmpx(v10, v22 - v10, "backup"))
                  {
                    if (j < 2)
                    {
                      v31 = 0;
                      v29 = 1;
                      v30 = v22 + 1;
                    }

                    else if (*v24 == 35)
                    {
                      v29 = 1;
                      v30 = v22 + 1;
                      v31 = 1;
                    }

                    else
                    {
                      v48 = 2;
                      while (1)
                      {
                        v49 = v48;
                        if (!v25)
                        {
                          break;
                        }

                        v50 = v22[v48++];
                        --v25;
                        if (v50 == 35)
                        {
                          v29 = v49;
                          v30 = &v22[v49];
                          goto LABEL_118;
                        }
                      }

                      v30 = &v22[v48];
                      v29 = j;
LABEL_118:
                      v31 = v29 < j;
                    }

                    if (v29 != j && *v30 != 35)
                    {
                      goto LABEL_20;
                    }

                    v51 = v29 - 1;
                    if (v29 == 1)
                    {
                      v52 = 0;
                    }

                    else
                    {
                      v53 = malloc_type_malloc(v29, 0x100004077774924uLL);
                      if (!v53)
                      {
                        goto LABEL_149;
                      }

                      v52 = v53;
                      memcpy(v53, v24, v51);
                      v52[v51] = 0;
                    }

                    v54 = v4[11];
                    if (v54)
                    {
                      free(v54);
                    }

                    v4[11] = v52;
                    v55 = &v30[v31];
                    if (&v30[v31] >= v27)
                    {
                      v56 = 0;
                    }

                    else
                    {
                      v56 = 0;
                      do
                      {
                        v57 = *v55;
                        if ((v57 - 48) > 9)
                        {
                          break;
                        }

                        v56 = v57 + 10 * v56 - 48;
                        ++v55;
                      }

                      while (v55 < v27);
                    }

                    if (v55 != v27)
                    {
                      goto LABEL_20;
                    }

                    *(v4 + 24) = v56;
                  }
                }

                else
                {
                  v38 = 0;
                  if (j >= 2)
                  {
                    while (1)
                    {
                      v39 = *v24;
                      v40 = v39;
                      if ((v39 - 48) > 9)
                      {
                        break;
                      }

                      v38 = v39 + 10 * v38 - 48;
                      if (++v24 >= v27)
                      {
                        goto LABEL_100;
                      }
                    }

                    v41 = v38 << 20;
                    if (v39 == 66)
                    {
                      v42 = v24 + 1;
                    }

                    else
                    {
                      v42 = v24;
                    }

                    v43 = v39 == 75;
                    if (v39 == 75)
                    {
                      v44 = v24 + 1;
                    }

                    else
                    {
                      v44 = v42;
                    }

                    if (v43)
                    {
                      v38 <<= 10;
                    }

                    if (v40 == 77)
                    {
                      ++v24;
                    }

                    else
                    {
                      v24 = v44;
                    }

                    if (v40 == 77)
                    {
                      v38 = v41;
                    }
                  }

LABEL_100:
                  if (v24 != v27 && *v24 != 35)
                  {
                    goto LABEL_20;
                  }

                  v4[9] = v38;
                  v45 = v24 >= v27 ? v24 : v24 + 1;
                  if (v45 >= v27)
                  {
                    v46 = 0;
                  }

                  else
                  {
                    v46 = 0;
                    do
                    {
                      v47 = *v45;
                      if ((v47 - 48) > 9)
                      {
                        break;
                      }

                      v46 = v47 + 10 * v46 - 48;
                      ++v45;
                    }

                    while (v45 < v27);
                  }

                  if (v45 != v27)
                  {
                    goto LABEL_20;
                  }

                  *(v4 + 20) = v46;
                }
              }

              else
              {
                if (j == 1)
                {
                  goto LABEL_153;
                }

                v32 = malloc_type_malloc(j, 0x100004077774924uLL);
                if (!v32)
                {
                  goto LABEL_149;
                }

                v33 = v32;
                memcpy(v32, v22 + 1, j - 1);
                v33[j - 1] = 0;
                v34 = v4[6];
                if (v34)
                {
                  free(v34);
                }

                v4[6] = v33;
                v35 = strrchr(v33, 47);
                if (v35)
                {
                  v36 = v35 - v33;
                  if ((v35 - v33) > 0x400)
                  {
LABEL_153:
                    v5 = 4294960592;
                    goto LABEL_139;
                  }

                  __memcpy_chk();
                  v62[v36] = 0;
                  mkpath(v62, 0x1F8u, 504);
                  v33 = v4[6];
                }

                v37 = fopen(v33, "a");
                v4[7] = v37;
                if (!v37)
                {
                  v5 = 4294960541;
                  goto LABEL_139;
                }

                fseeko(v37, 0, 2);
                v4[8] = ftello(v4[7]);
              }

              v21 = *v28;
              v10 = v28;
              if (!*v28)
              {
                goto LABEL_136;
              }
            }

LABEL_138:
            v5 = 4294960554;
            goto LABEL_139;
          }

LABEL_136:
          v58 = v4[7];
          if (!v58)
          {
            goto LABEL_20;
          }

          goto LABEL_144;
        }

        v59 = MEMORY[0x1E69E9858];
      }

      else
      {
        v59 = MEMORY[0x1E69E9848];
      }

      v58 = *v59;
      v4[7] = *v59;
LABEL_144:
      setvbuf(v58, 0, 2, 0);
      goto LABEL_145;
    }

    if (_LogOutputOSLog_Setup(v4, v10))
    {
LABEL_44:
      v18 = _LogOutputSysLog_Setup(v4, v10);
      if (v18)
      {
        goto LABEL_141;
      }
    }
  }

  else
  {
    v61 = 0;
    v4[6] = 0;
    v4[7] = 0;
    v11 = *v10;
    if (*v10)
    {
      do
      {
        v12 = v10;
        if (!v11)
        {
          goto LABEL_138;
        }

        while (v11 != 61)
        {
          v13 = *++v12;
          v11 = v13;
          if (!v13)
          {
            goto LABEL_138;
          }
        }

        v14 = v12 - v10;
          ;
        }

        v16 = k - (v12 + 1);
        if (*k)
        {
          v17 = k + 1;
        }

        else
        {
          v17 = k;
        }

        if (strnicmpx(v10, v14, "func"))
        {
          if (!strnicmpx(v10, v14, "arg"))
          {
            if (v16 > 0x3F)
            {
              goto LABEL_152;
            }

            __memcpy_chk();
            v62[v16] = 0;
            if (sscanf(v62, "%p", v4 + 7) != 1)
            {
              goto LABEL_138;
            }
          }
        }

        else
        {
          if (v16 > 0x3F)
          {
LABEL_152:
            v5 = 4294960553;
            goto LABEL_139;
          }

          __memcpy_chk();
          v62[v16] = 0;
          if (sscanf(v62, "%p", &v61) != 1)
          {
            goto LABEL_138;
          }

          v4[6] = v61;
        }

        v11 = *v17;
        v10 = v17;
      }

      while (*v17);
    }

    v4[4] = _LogOutputCallBack_Writer;
    *(v4 + 10) = 11;
  }

LABEL_145:
  v5 = 0;
  *v4 = gLogOutputList;
  gLogOutputList = v4;
LABEL_146:
  *a2 = v4;
  return v5;
}

uint64_t _LogOutputOSLog_Setup(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 32) = _LogOutputOSLog_Writer;
  *(a1 + 40) = 14;
  v4 = *(a1 + 48);
  if (v4)
  {
    free(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    *(a1 + 56) = 0;
  }

  *(a1 + 64) = 0;
  v6 = *(a1 + 72);
  if (v6)
  {
    free(v6);
    *(a1 + 72) = 0;
  }

  v7 = *a2;
  if (!*a2)
  {
    return 0;
  }

  do
  {
    v8 = a2;
    if (!v7)
    {
      return 4294960554;
    }

    while (v7 != 61)
    {
      v9 = *++v8;
      v7 = v9;
      if (!v9)
      {
        return 4294960554;
      }
    }

    v10 = v8 - a2;
    v11 = v8 + 1;
      ;
    }

    v13 = i - v11;
    if (*i)
    {
      v14 = i + 1;
    }

    else
    {
      v14 = i;
    }

    if (strnicmpx(a2, v10, "category"))
    {
      if (strnicmpx(a2, v10, "public"))
      {
        if (strnicmpx(a2, v10, "sensitive"))
        {
          if (strnicmpx(a2, v10, "subsystem"))
          {
            if (strnicmpx(a2, v10, "type"))
            {
              goto LABEL_57;
            }

            if (strnicmpx(v11, v13, "debug"))
            {
              if (strnicmpx(v11, v13, "default"))
              {
                if (strnicmpx(v11, v13, "error"))
                {
                  if (strnicmpx(v11, v13, "fault"))
                  {
                    if (strnicmpx(v11, v13, "info"))
                    {
                      goto LABEL_57;
                    }

                    v15 = 1;
                  }

                  else
                  {
                    v15 = 17;
                  }
                }

                else
                {
                  v15 = 16;
                }
              }

              else
              {
                v15 = 0;
              }
            }

            else
            {
              v15 = 2;
            }

            *(a1 + 64) = 1;
            *(a1 + 65) = v15;
          }

          else
          {
            v21 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL);
            if (!v21)
            {
              return 4294960568;
            }

            v22 = v21;
            memcpy(v21, v11, v13);
            v22[v13] = 0;
            v23 = *(a1 + 72);
            if (v23)
            {
              free(v23);
            }

            *(a1 + 72) = v22;
          }
        }

        else
        {
          v20 = !strnicmpx(v11, v13, "true") || !strnicmpx(v11, v13, "yes") || !strnicmpx(v11, v13, "y") || !strnicmpx(v11, v13, "on") || strnicmpx(v11, v13, "1") == 0;
          *(a1 + 67) = v20;
        }
      }

      else
      {
        v19 = !strnicmpx(v11, v13, "true") || !strnicmpx(v11, v13, "yes") || !strnicmpx(v11, v13, "y") || !strnicmpx(v11, v13, "on") || strnicmpx(v11, v13, "1") == 0;
        *(a1 + 66) = v19;
      }
    }

    else
    {
      v16 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL);
      if (!v16)
      {
        return 4294960568;
      }

      v17 = v16;
      memcpy(v16, v11, v13);
      v17[v13] = 0;
      v18 = *(a1 + 48);
      if (v18)
      {
        free(v18);
      }

      *(a1 + 48) = v17;
    }

LABEL_57:
    v7 = *v14;
    a2 = v14;
  }

  while (*v14);
  v24 = *(a1 + 72);
  if (v24)
  {
    v25 = *(a1 + 48);
    if (v25)
    {
      v26 = os_log_create(v24, v25);
      *(a1 + 56) = v26;
      if (!v26)
      {
        return 4294960568;
      }
    }
  }

  return 0;
}

void CUAppendV(id *a1, int *a2, char *a3, uint64_t a4)
{
  v12 = 0;
  VASPrintF(&v12, a3, a4);
  v6 = v12;
  if (!v12)
  {
    return;
  }

  if (*v12)
  {
    v7 = *a1;
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
      *a1 = v7;
    }

    v8 = *a2;
    v11 = v7;
    if ((*a2 & 1) == 0)
    {
      v8 |= 1u;
LABEL_20:
      CFStringAppendCString(*a1, v6, 0x8000100u);
      free(v6);
      *a2 = v8;

      return;
    }

    if ((v8 & 2) != 0)
    {
      if ((v8 & 8) != 0)
      {
        [v7 appendString:{@", "}];
      }

      goto LABEL_20;
    }

    if ((v8 & 4) != 0)
    {
      v10 = @": ";
    }

    else
    {
      if ((v8 & 8) == 0)
      {
LABEL_19:
        v8 |= 2u;
        goto LABEL_20;
      }

      v10 = @", ";
    }

    [v7 appendString:{v10, v7}];
    goto LABEL_19;
  }

  v9 = v12;

  free(v9);
}

uint64_t PrintFWriteErrorObject(uint64_t (**a1)(void, void, void), void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    LODWORD(v7) = 0;
    v24 = 0;
    v8 = *MEMORY[0x1E696AA08];
    while (1)
    {
      if (v6)
      {
        v9 = PrintFCore(a1, " -> ");
        if ((v9 & 0x80000000) != 0)
        {
          v7 = v9;
          v10 = v5;
          goto LABEL_34;
        }

        LODWORD(v7) = v9 + v7;
      }

      v10 = [v3 userInfo];

      v11 = [v10 objectForKeyedSubscript:@"cuErrorDesc"];

      if (v11)
      {
        v12 = PrintFCore(a1, "%@", v11);
        if ((v12 & 0x80000000) != 0)
        {
          v7 = v12;
          v4 = v11;
          goto LABEL_34;
        }

        v7 = (v12 + v7);
        v4 = v11;
      }

      else
      {
        v13 = CUErrorCFErrorToString(v3);
        if (v13)
        {
          v14 = PrintFCore(a1, "%s", v13);
          if ((v14 & 0x80000000) != 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v25[0] = 0;
          v15 = NSErrorToOSStatusEx(v3, &v24);
          if (v24)
          {
            DebugGetErrorStringEx(0, v15, v25, 128);
          }

          if (v25[0])
          {
            v14 = PrintFCore(a1, "%s", v25);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v16 = [v3 domain];
            v14 = PrintFCore(a1, "%@:%ld", v16, [v3 code]);

            if ((v14 & 0x80000000) != 0)
            {
LABEL_37:
              v4 = 0;
              v7 = v14;
              goto LABEL_34;
            }
          }
        }

        v7 = (v14 + v7);
        TypeID = CFStringGetTypeID();
        v4 = CFDictionaryGetTypedValue(v10, @"cuErrorMsg", TypeID, 0);
        if ([v4 length])
        {
          v18 = PrintFCore(a1, " '%@'", v4);
          v7 = (v7 & ~(v18 >> 31)) + v18;
          if (v18 < 0)
          {
            goto LABEL_34;
          }
        }
      }

      v19 = [v10 objectForKeyedSubscript:v8];

      if (!v19)
      {
        v3 = 0;
        goto LABEL_34;
      }

      v3 = v19;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      ++v6;
      v5 = v10;
      if (v6 == 4)
      {
        goto LABEL_34;
      }
    }

    v22 = PrintFCore(a1, "-> ?");
    if (v22 >= 0)
    {
      v23 = v7;
    }

    else
    {
      v23 = 0;
    }

    v7 = (v23 + v22);
LABEL_34:

    return v7;
  }

  else if (v3)
  {
    v20 = PrintFCore(a1, "<<non-error>>");

    return v20;
  }

  else
  {

    return PrintFCore(a1, "kNoErr");
  }
}

__CFError *CUErrorCFErrorToString(__CFError *result)
{
  if (result)
  {
    v1 = result;
    Domain = CFErrorGetDomain(result);
    Code = CFErrorGetCode(v1);

    return CUErrorDomainCodeToString(Domain, Code);
  }

  return result;
}

uint64_t CUErrorDomainCodeToString(const __CFString *a1, int a2)
{
  v11 = 0;
  v12 = 0;
  CFStringGetOrCopyCStringUTF8(a1, &v12, &v11, 0);
  v3 = v12;
  if (!v12)
  {
    return 0;
  }

  if (MEMORY[0x1EEE86640] && (v4 = CUErrorDomainTableGet(), (v5 = *v4) != 0))
  {
    while (1)
    {
      if (!strcasecmp(v5, v3))
      {
        v6 = *(v4 + 8);
        v7 = *(v6 + 8);
        if (v7)
        {
          v8 = 0;
          do
          {
            if (*v6 == a2)
            {
              v8 = v7;
            }

            v7 = *(v6 + 24);
            v6 += 16;
          }

          while (v7);
          if (v8)
          {
            break;
          }
        }
      }

      v9 = *(v4 + 16);
      v4 += 16;
      v5 = v9;
      if (!v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  if (v11)
  {
    free(v11);
  }

  return v8;
}

uint64_t CFStringGetOrCopyCStringUTF8(const __CFString *a1, const char **a2, UInt8 **a3, size_t *a4)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v9 = CStringPtr;
    if (!a4)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v10 = strlen(CStringPtr);
    v11 = 0;
    goto LABEL_7;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = MaximumSizeForEncoding;
  v14 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v14)
  {
    return 4294960568;
  }

  v11 = v14;
  v17.location = 0;
  v17.length = Length;
  if (CFStringGetBytes(a1, v17, 0x8000100u, 0, 0, v14, MaximumSizeForEncoding, &usedBufLen) != Length)
  {
    free(v11);
    return 4294960596;
  }

  v10 = usedBufLen;
  v11[usedBufLen] = 0;
  v9 = v11;
  if (a4)
  {
LABEL_7:
    *a4 = v10;
  }

LABEL_9:
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

void CUDispatchTimerSetEx(NSObject *a1, int a2, double a3, double a4, double a5)
{
  v8 = (a3 * 1000000000.0);
  v9 = dispatch_time((a2 != 0) << 63, v8);
  if (a5 <= -10.0)
  {
    v10 = v8 / 0xA;
  }

  else if (a5 <= -4.0)
  {
    v10 = v8 >> 2;
  }

  else
  {
    v10 = (a5 * 1000000000.0);
  }

  if (a4 < 0.0)
  {
    v11 = -1;
  }

  else
  {
    v11 = (a4 * 1000000000.0);
  }

  dispatch_source_set_timer(a1, v9, v11, v10);
}

const __CFDictionary *CFDictionaryGetTypedValue(const __CFDictionary *result, const void *a2, uint64_t a3, int *a4)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v6 = result;
      v7 = CFGetTypeID(result);
      v8 = v7 == a3;
      if (v7 == a3)
      {
        result = v6;
      }

      else
      {
        result = 0;
      }

      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = -6756;
      }
    }

    else
    {
      v9 = -6727;
    }
  }

  else
  {
    v9 = -6705;
  }

  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

id CUDescriptionWithLevel(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v3 descriptionWithLevel:a2];
    goto LABEL_10;
  }

  if (a2 > 0x14u)
  {
    if (a2 >= 0x32u && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = [v3 shortDescription];
      goto LABEL_10;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v11 = [v3 detailedDescription];
    goto LABEL_10;
  }

  v11 = NSPrintF("%@", v4, v5, v6, v7, v8, v9, v10, v3);
LABEL_10:
  v12 = v11;

  return v12;
}

void NSDecodeNSDictionaryOfClassesIfPresent(void *a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v8 = a1;
  v9 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if ([v8 containsValueForKey:v9])
  {
    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), a3, a4, 0}];
    v11 = [v8 decodeObjectOfClasses:v10 forKey:v9];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 raise:*MEMORY[0x1E695D940] format:{@"bad dictionary type for key %@, %@", v9, v14}];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __NSDecodeNSDictionaryOfClassesIfPresent_block_invoke;
    v19[3] = &unk_1E73A4728;
    v22 = a3;
    v15 = v9;
    v20 = v15;
    v21 = &v24;
    v23 = a4;
    [v11 enumerateKeysAndObjectsUsingBlock:v19];
    if (*(v25 + 24) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"bad element type for key %@", v15}];
    }

    v16 = *a5;
    *a5 = v11;
    v17 = v11;
  }

  _Block_object_dispose(&v24, 8);
}

void sub_191EBB3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NSDecodeNSArrayOfClassIfPresent(void *a1, void *a2, uint64_t a3, void **a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v25 = v6;
  if ([v6 containsValueForKey:v7])
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), a3, 0}];
    v9 = [v25 decodeObjectOfClasses:v8 forKey:v7];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v23 = v8;
    v11 = MEMORY[0x1E695D940];
    if ((isKindOfClass & 1) == 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 raise:*v11 format:{@"bad array type for key %@, class %@", v7, v14}];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = *v27;
      v18 = *v11;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x1E695DF30] raise:v18 format:{@"bad array element type for key %@ : %@", v7, v20}];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    v21 = *a4;
    *a4 = v15;
    v22 = v15;
  }
}

void NSDecodeStandardContainerIfPresent(void *a1, void *a2, uint64_t a3, void **a4)
{
  v19 = a1;
  v6 = a2;
  if ([v19 containsValueForKey:v6])
  {
    v18 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v18 setWithObjects:{v17, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v19 decodeObjectOfClasses:v13 forKey:v6];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"bad type for key %@ : %@", v6, v14}];
    }

    v15 = *a4;
    *a4 = v14;
    v16 = v14;
  }
}

char *IPv6AddressToCString(_BYTE *a1, unsigned int a2, int a3, unsigned int a4, char *a5, char a6)
{
  v8 = a3;
  v9 = a2;
  v52 = *MEMORY[0x1E69E9840];
  if (a3 > 0 || (v10 = a5, a3 == -2))
  {
    *a5 = 91;
    v10 = a5 + 1;
  }

  if (*a1 || a1[1] || a1[2] || a1[3])
  {
    v11 = 0;
    goto LABEL_9;
  }

  v11 = !a1[4] && !a1[5] && !a1[6] && !a1[7] && !a1[8] && !a1[9] && a1[10] == 255 && a1[11] == 255;
  if (a1[4] || a1[5] || a1[6] || a1[7] || a1[8] || a1[9] || a1[10] || a1[11])
  {
LABEL_9:
    v12 = 0;
    if (v11)
    {
      goto LABEL_93;
    }

LABEL_10:
    if (!v12)
    {
      v13 = 0;
      v14 = v51;
      while (1)
      {
        v15 = v13 | 1;
        v16 = a1[v13];
        if (v16 >= 0x10)
        {
          *v14 = a0123456789abcd[v16 >> 4];
          LODWORD(v16) = v16 & 0xF;
          v17 = 1;
        }

        else
        {
          if (!a1[v13])
          {
            v19 = 0;
            v21 = 0;
            v13 += 2;
            v20 = a1[v15];
            if (v20 < 0x10)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          v17 = 0;
        }

        v18 = a0123456789abcd[v16];
        v19 = v17 + 1;
        v14[v17] = v18;
        v13 += 2;
        v20 = a1[v15];
LABEL_17:
        v21 = v19 + 1;
        v14[v19] = a0123456789abcd[v20 >> 4];
LABEL_18:
        *&v14[v21] = a0123456789abcd[v20 & 0xF];
        v14 += 5;
        if (v13 >= 16)
        {
          v22 = 0;
          v23 = a1 + 15;
          for (i = 28; i != -4; i -= 4)
          {
            if (*(v23 - 1))
            {
              v22 = 0;
            }

            else if (*v23)
            {
              v22 = 0;
            }

            else
            {
              ++v22;
            }

            *&v50[i + 64] = v22;
            v23 -= 2;
          }

          v25 = 0;
          v26 = 1;
          v27 = -1;
          do
          {
            if (*&v50[4 * v25 + 64] > v26)
            {
              v26 = *&v50[4 * v25 + 64];
              v27 = v25;
            }

            ++v25;
          }

          while (v25 != 8);
          v28 = 0;
          while (1)
          {
            if (v28 == v27)
            {
              if (!v27)
              {
                *v10++ = 58;
              }

              *v10 = 58;
              v28 = v27 - 1 + *&v50[4 * v27 + 64];
            }

            else
            {
              v29 = v51[5 * v28];
              if (v29)
              {
                v30 = &v51[5 * v28 + 1];
                do
                {
                  *v10++ = v29;
                  v31 = *v30++;
                  v29 = v31;
                }

                while (v31);
              }

              if (v28 == 7)
              {
                goto LABEL_43;
              }

              *v10 = 58;
            }

            ++v10;
            v32 = v28++ < 7;
            if (!v32)
            {
              goto LABEL_43;
            }
          }
        }
      }
    }

LABEL_93:
    *v10 = 14906;
    v44 = v10 + 2;
    if (v11)
    {
      goto LABEL_94;
    }

LABEL_90:
    v10 = v44;
    goto LABEL_95;
  }

  if (!a1[12] && !a1[13] && !a1[14])
  {
    v12 = a1[15] > 1u;
    if (v11)
    {
      goto LABEL_93;
    }

    goto LABEL_10;
  }

  *v10 = 14906;
  v44 = v10 + 2;
  if (!v11)
  {
    goto LABEL_90;
  }

LABEL_94:
  v10[2] = 102;
  *(v10 + 3) = 979789414;
  v10 += 7;
LABEL_95:
  for (j = 12; ; ++j)
  {
    v46 = a1[j];
    v47 = v50;
    do
    {
      *v47++ = (v46 % 0xA) | 0x30;
      v32 = v46 > 9;
      v46 /= 0xAu;
    }

    while (v32);
    while (v47 > v50)
    {
      v48 = *--v47;
      *v10++ = v48;
    }

    if (j == 15)
    {
      break;
    }

    *v10++ = 46;
  }

LABEL_43:
  if (a2)
  {
    *v10 = 37;
    if (a6)
    {
      *(v10 + 1) = 13618;
      v10 += 3;
    }

    else
    {
      ++v10;
    }

    v33 = if_indextoname(a2, v50);
    if (v33 && (v34 = *v33) != 0)
    {
      v35 = (v33 + 1);
      do
      {
        *v10++ = v34;
        v36 = *v35++;
        v34 = v36;
      }

      while (v36);
    }

    else
    {
      v39 = v49;
      do
      {
        *v39++ = (v9 % 0xA) | 0x30;
        v32 = v9 > 9;
        v9 /= 0xAu;
      }

      while (v32);
      while (v39 > v49)
      {
        v40 = *--v39;
        *v10++ = v40;
      }
    }
  }

  if (v8 < 1)
  {
    if (v8 == -2)
    {
      *v10++ = 93;
    }
  }

  else
  {
    *v10 = 14941;
    v37 = v50;
    do
    {
      *v37++ = (v8 % 0xA) | 0x30;
      v32 = v8 > 9;
      v8 /= 0xAu;
    }

    while (v32);
    v10 += 2;
    while (v37 > v50)
    {
      v38 = *--v37;
      *v10++ = v38;
    }
  }

  if ((a4 & 0x80000000) == 0)
  {
    *v10 = 47;
    v41 = v50;
    do
    {
      *v41++ = (a4 % 0xA) | 0x30;
      v32 = a4 > 9;
      a4 /= 0xAu;
    }

    while (v32);
    ++v10;
    while (v41 > v50)
    {
      v42 = *--v41;
      *v10++ = v42;
    }
  }

  *v10 = 0;
  return a5;
}