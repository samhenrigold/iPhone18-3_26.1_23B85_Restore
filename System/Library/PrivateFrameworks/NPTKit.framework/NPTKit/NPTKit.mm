uint64_t sub_233423224(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_233423234(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_233423280()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2334232B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_233423304()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_233423354()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23342338C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2334233CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23342340C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_233423474()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2334234C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_233423514()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23342355C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_233423594()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2334235D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23342364C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_233423688(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2334236D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2334245F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233424EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233425724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  objc_sync_exit(v23);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v24 + 40));
  _Unwind_Resume(a1);
}

void sub_233425E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  _Unwind_Resume(a1);
}

void sub_2334276A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *indicatorToString(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return @"unknown";
  }

  else
  {
    return off_2789D3E38[a1];
  }
}

__CFString *wirelessAccessTechnologyToString(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_2789D3ED8[a1];
  }
}

__CFString *dataBearerTechnologyToString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2789D3F30[a1 - 1];
  }
}

__CFString *ctReasonToString(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789D3F60[a1 - 1];
  }
}

void sub_23342E7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23343195C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_233431AE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_2334346A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23343530C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AWDNetworkPerformanceMetricReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v177 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v177 & 0x7F) << v6;
      if ((v177 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 1684) |= 1u;
        while (1)
        {
          v177 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v177 & 0x7F) << v14;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_505:
            *(a1 + 8) = v20;
            goto LABEL_441;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_505;
      case 2u:
        v34 = PBReaderReadString();
        v35 = 16;
        goto LABEL_440;
      case 3u:
        v34 = PBReaderReadString();
        v35 = 24;
        goto LABEL_440;
      case 4u:
        v34 = PBReaderReadString();
        v35 = 32;
        goto LABEL_440;
      case 5u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 1684) |= 4u;
        while (1)
        {
          v177 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v177 & 0x7F) << v21;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_463;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_463:
        v176 = 1657;
        goto LABEL_516;
      case 6u:
        v34 = PBReaderReadString();
        v35 = 40;
        goto LABEL_440;
      case 7u:
        v34 = PBReaderReadString();
        v35 = 48;
        goto LABEL_440;
      case 8u:
        v34 = PBReaderReadString();
        v35 = 56;
        goto LABEL_440;
      case 9u:
        v34 = PBReaderReadString();
        v35 = 64;
        goto LABEL_440;
      case 0xBu:
        v34 = PBReaderReadString();
        v35 = 72;
        goto LABEL_440;
      case 0xCu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 1684) |= 8u;
        while (1)
        {
          v177 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v177 & 0x7F) << v28;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_465;
          }
        }

        v27 = (v30 != 0) & ~[a2 hasError];
LABEL_465:
        v176 = 1658;
        goto LABEL_516;
      case 0xDu:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 1684) |= 0x10u;
        while (1)
        {
          v177 = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v177 & 0x7F) << v150;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_509;
          }
        }

        v27 = (v152 != 0) & ~[a2 hasError];
LABEL_509:
        v176 = 1659;
        goto LABEL_516;
      case 0xEu:
        v163 = 0;
        v164 = 0;
        v165 = 0;
        *(a1 + 1684) |= 0x20u;
        while (1)
        {
          v177 = 0;
          v166 = [a2 position] + 1;
          if (v166 >= [a2 position] && (v167 = objc_msgSend(a2, "position") + 1, v167 <= objc_msgSend(a2, "length")))
          {
            v168 = [a2 data];
            [v168 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v165 |= (v177 & 0x7F) << v163;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v163 += 7;
          v12 = v164++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_513;
          }
        }

        v27 = (v165 != 0) & ~[a2 hasError];
LABEL_513:
        v176 = 1660;
        goto LABEL_516;
      case 0xFu:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        *(a1 + 1684) |= 0x40u;
        while (1)
        {
          v177 = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v177 & 0x7F) << v169;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v12 = v170++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_515;
          }
        }

        v27 = (v171 != 0) & ~[a2 hasError];
LABEL_515:
        v176 = 1661;
        goto LABEL_516;
      case 0x10u:
        v34 = PBReaderReadString();
        v35 = 80;
        goto LABEL_440;
      case 0x11u:
        v34 = PBReaderReadString();
        v35 = 88;
        goto LABEL_440;
      case 0x12u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 1684) |= 0x80u;
        while (1)
        {
          v177 = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v177 & 0x7F) << v102;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_489;
          }
        }

        v27 = (v104 != 0) & ~[a2 hasError];
LABEL_489:
        v176 = 1662;
        goto LABEL_516;
      case 0x13u:
        v34 = PBReaderReadString();
        v35 = 112;
        goto LABEL_440;
      case 0x14u:
        v34 = PBReaderReadString();
        v35 = 120;
        goto LABEL_440;
      case 0x15u:
        v34 = PBReaderReadString();
        v35 = 128;
        goto LABEL_440;
      case 0x16u:
        v34 = PBReaderReadString();
        v35 = 136;
        goto LABEL_440;
      case 0x17u:
        v34 = PBReaderReadString();
        v35 = 152;
        goto LABEL_440;
      case 0x18u:
        v34 = PBReaderReadString();
        v35 = 160;
        goto LABEL_440;
      case 0x19u:
        v34 = PBReaderReadString();
        v35 = 168;
        goto LABEL_440;
      case 0x1Au:
        v34 = PBReaderReadString();
        v35 = 176;
        goto LABEL_440;
      case 0x1Bu:
        v34 = PBReaderReadString();
        v35 = 184;
        goto LABEL_440;
      case 0x1Cu:
        v34 = PBReaderReadString();
        v35 = 192;
        goto LABEL_440;
      case 0x1Du:
        v34 = PBReaderReadString();
        v35 = 200;
        goto LABEL_440;
      case 0x1Eu:
        v34 = PBReaderReadString();
        v35 = 208;
        goto LABEL_440;
      case 0x1Fu:
        v34 = PBReaderReadString();
        v35 = 232;
        goto LABEL_440;
      case 0x20u:
        v34 = PBReaderReadString();
        v35 = 240;
        goto LABEL_440;
      case 0x21u:
        v34 = PBReaderReadString();
        v35 = 296;
        goto LABEL_440;
      case 0x22u:
        v34 = PBReaderReadString();
        v35 = 304;
        goto LABEL_440;
      case 0x23u:
        v34 = PBReaderReadString();
        v35 = 312;
        goto LABEL_440;
      case 0x24u:
        v34 = PBReaderReadString();
        v35 = 320;
        goto LABEL_440;
      case 0x25u:
        v34 = PBReaderReadString();
        v35 = 328;
        goto LABEL_440;
      case 0x26u:
        v34 = PBReaderReadString();
        v35 = 336;
        goto LABEL_440;
      case 0x27u:
        v34 = PBReaderReadString();
        v35 = 344;
        goto LABEL_440;
      case 0x28u:
        v34 = PBReaderReadString();
        v35 = 352;
        goto LABEL_440;
      case 0x29u:
        v34 = PBReaderReadString();
        v35 = 360;
        goto LABEL_440;
      case 0x2Au:
        v34 = PBReaderReadString();
        v35 = 368;
        goto LABEL_440;
      case 0x2Bu:
        v34 = PBReaderReadString();
        v35 = 376;
        goto LABEL_440;
      case 0x2Cu:
        v34 = PBReaderReadString();
        v35 = 384;
        goto LABEL_440;
      case 0x2Du:
        v34 = PBReaderReadString();
        v35 = 392;
        goto LABEL_440;
      case 0x2Eu:
        v34 = PBReaderReadString();
        v35 = 400;
        goto LABEL_440;
      case 0x2Fu:
        v34 = PBReaderReadString();
        v35 = 408;
        goto LABEL_440;
      case 0x30u:
        v34 = PBReaderReadString();
        v35 = 424;
        goto LABEL_440;
      case 0x31u:
        v34 = PBReaderReadString();
        v35 = 440;
        goto LABEL_440;
      case 0x32u:
        v34 = PBReaderReadString();
        v35 = 448;
        goto LABEL_440;
      case 0x33u:
        v34 = PBReaderReadString();
        v35 = 456;
        goto LABEL_440;
      case 0x34u:
        v34 = PBReaderReadString();
        v35 = 488;
        goto LABEL_440;
      case 0x35u:
        v34 = PBReaderReadString();
        v35 = 496;
        goto LABEL_440;
      case 0x36u:
        v34 = PBReaderReadString();
        v35 = 504;
        goto LABEL_440;
      case 0x37u:
        v34 = PBReaderReadString();
        v35 = 512;
        goto LABEL_440;
      case 0x38u:
        v34 = PBReaderReadString();
        v35 = 520;
        goto LABEL_440;
      case 0x39u:
        v34 = PBReaderReadString();
        v35 = 528;
        goto LABEL_440;
      case 0x3Au:
        v34 = PBReaderReadString();
        v35 = 536;
        goto LABEL_440;
      case 0x3Bu:
        v34 = PBReaderReadString();
        v35 = 552;
        goto LABEL_440;
      case 0x3Cu:
        v34 = PBReaderReadString();
        v35 = 568;
        goto LABEL_440;
      case 0x3Du:
        v34 = PBReaderReadString();
        v35 = 576;
        goto LABEL_440;
      case 0x3Eu:
        v34 = PBReaderReadString();
        v35 = 584;
        goto LABEL_440;
      case 0x3Fu:
        v34 = PBReaderReadString();
        v35 = 592;
        goto LABEL_440;
      case 0x40u:
        v34 = PBReaderReadString();
        v35 = 600;
        goto LABEL_440;
      case 0x41u:
        v34 = PBReaderReadString();
        v35 = 616;
        goto LABEL_440;
      case 0x42u:
        v34 = PBReaderReadString();
        v35 = 624;
        goto LABEL_440;
      case 0x43u:
        v34 = PBReaderReadString();
        v35 = 640;
        goto LABEL_440;
      case 0x44u:
        v34 = PBReaderReadString();
        v35 = 672;
        goto LABEL_440;
      case 0x45u:
        v34 = PBReaderReadString();
        v35 = 680;
        goto LABEL_440;
      case 0x46u:
        v34 = PBReaderReadString();
        v35 = 688;
        goto LABEL_440;
      case 0x47u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 1684) |= 0x200u;
        while (1)
        {
          v177 = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v177 & 0x7F) << v78;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_481;
          }
        }

        v27 = (v80 != 0) & ~[a2 hasError];
LABEL_481:
        v176 = 1664;
        goto LABEL_516;
      case 0x48u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 1684) |= 0x400u;
        while (1)
        {
          v177 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v177 & 0x7F) << v42;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_469;
          }
        }

        v27 = (v44 != 0) & ~[a2 hasError];
LABEL_469:
        v176 = 1665;
        goto LABEL_516;
      case 0x49u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 1684) |= 0x800u;
        while (1)
        {
          v177 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v177 & 0x7F) << v54;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_473;
          }
        }

        v27 = (v56 != 0) & ~[a2 hasError];
LABEL_473:
        v176 = 1666;
        goto LABEL_516;
      case 0x4Au:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 1684) |= 0x1000u;
        while (1)
        {
          v177 = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v177 & 0x7F) << v156;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_511;
          }
        }

        v27 = (v158 != 0) & ~[a2 hasError];
LABEL_511:
        v176 = 1667;
        goto LABEL_516;
      case 0x4Bu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 1684) |= 0x2000u;
        while (1)
        {
          v177 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v177 & 0x7F) << v36;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_467;
          }
        }

        v27 = (v38 != 0) & ~[a2 hasError];
LABEL_467:
        v176 = 1668;
        goto LABEL_516;
      case 0x4Cu:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 1684) |= 0x4000u;
        while (1)
        {
          v177 = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v177 & 0x7F) << v60;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_475;
          }
        }

        v27 = (v62 != 0) & ~[a2 hasError];
LABEL_475:
        v176 = 1669;
        goto LABEL_516;
      case 0x4Du:
        v34 = PBReaderReadString();
        v35 = 704;
        goto LABEL_440;
      case 0x4Eu:
        v34 = PBReaderReadString();
        v35 = 712;
        goto LABEL_440;
      case 0x4Fu:
        v34 = PBReaderReadString();
        v35 = 720;
        goto LABEL_440;
      case 0x50u:
        v34 = PBReaderReadString();
        v35 = 728;
        goto LABEL_440;
      case 0x51u:
        v34 = PBReaderReadString();
        v35 = 736;
        goto LABEL_440;
      case 0x52u:
        v34 = PBReaderReadString();
        v35 = 744;
        goto LABEL_440;
      case 0x53u:
        v34 = PBReaderReadString();
        v35 = 752;
        goto LABEL_440;
      case 0x54u:
        v34 = PBReaderReadString();
        v35 = 760;
        goto LABEL_440;
      case 0x55u:
        v34 = PBReaderReadString();
        v35 = 792;
        goto LABEL_440;
      case 0x56u:
        v34 = PBReaderReadString();
        v35 = 800;
        goto LABEL_440;
      case 0x57u:
        v34 = PBReaderReadString();
        v35 = 808;
        goto LABEL_440;
      case 0x58u:
        v34 = PBReaderReadString();
        v35 = 832;
        goto LABEL_440;
      case 0x59u:
        v34 = PBReaderReadString();
        v35 = 848;
        goto LABEL_440;
      case 0x5Au:
        v34 = PBReaderReadString();
        v35 = 856;
        goto LABEL_440;
      case 0x5Bu:
        v34 = PBReaderReadString();
        v35 = 872;
        goto LABEL_440;
      case 0x5Cu:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 1684) |= 0x8000u;
        while (1)
        {
          v177 = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            v149 = [a2 data];
            [v149 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v146 |= (v177 & 0x7F) << v144;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v12 = v145++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_507;
          }
        }

        v27 = (v146 != 0) & ~[a2 hasError];
LABEL_507:
        v176 = 1670;
        goto LABEL_516;
      case 0x5Du:
        v34 = PBReaderReadString();
        v35 = 880;
        goto LABEL_440;
      case 0x5Eu:
        v34 = PBReaderReadString();
        v35 = 888;
        goto LABEL_440;
      case 0x60u:
        v34 = PBReaderReadString();
        v35 = 968;
        goto LABEL_440;
      case 0x61u:
        v34 = PBReaderReadString();
        v35 = 976;
        goto LABEL_440;
      case 0x62u:
        v34 = PBReaderReadString();
        v35 = 984;
        goto LABEL_440;
      case 0x63u:
        v34 = PBReaderReadString();
        v35 = 1016;
        goto LABEL_440;
      case 0x64u:
        v34 = PBReaderReadString();
        v35 = 1024;
        goto LABEL_440;
      case 0x65u:
        v34 = PBReaderReadString();
        v35 = 1032;
        goto LABEL_440;
      case 0x66u:
        v34 = PBReaderReadString();
        v35 = 1040;
        goto LABEL_440;
      case 0x67u:
        v34 = PBReaderReadString();
        v35 = 1048;
        goto LABEL_440;
      case 0x68u:
        v34 = PBReaderReadString();
        v35 = 1056;
        goto LABEL_440;
      case 0x69u:
        v34 = PBReaderReadString();
        v35 = 1064;
        goto LABEL_440;
      case 0x6Au:
        v34 = PBReaderReadString();
        v35 = 1072;
        goto LABEL_440;
      case 0x6Bu:
        v34 = PBReaderReadString();
        v35 = 1080;
        goto LABEL_440;
      case 0x6Cu:
        v34 = PBReaderReadString();
        v35 = 1088;
        goto LABEL_440;
      case 0x6Du:
        v34 = PBReaderReadString();
        v35 = 1096;
        goto LABEL_440;
      case 0x6Eu:
        v34 = PBReaderReadString();
        v35 = 1104;
        goto LABEL_440;
      case 0x6Fu:
        v34 = PBReaderReadString();
        v35 = 1112;
        goto LABEL_440;
      case 0x70u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 1684) |= 0x10000u;
        while (1)
        {
          v177 = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v177 & 0x7F) << v90;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_485;
          }
        }

        v27 = (v92 != 0) & ~[a2 hasError];
LABEL_485:
        v176 = 1671;
        goto LABEL_516;
      case 0x71u:
        v34 = PBReaderReadString();
        v35 = 1120;
        goto LABEL_440;
      case 0x72u:
        v34 = PBReaderReadString();
        v35 = 1128;
        goto LABEL_440;
      case 0x73u:
        v34 = PBReaderReadString();
        v35 = 1136;
        goto LABEL_440;
      case 0x74u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 1684) |= 0x20000u;
        while (1)
        {
          v177 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v177 & 0x7F) << v84;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_483;
          }
        }

        v27 = (v86 != 0) & ~[a2 hasError];
LABEL_483:
        v176 = 1672;
        goto LABEL_516;
      case 0x75u:
        v34 = PBReaderReadString();
        v35 = 1144;
        goto LABEL_440;
      case 0x76u:
        v34 = PBReaderReadString();
        v35 = 1152;
        goto LABEL_440;
      case 0x77u:
        v34 = PBReaderReadString();
        v35 = 1160;
        goto LABEL_440;
      case 0x78u:
        v34 = PBReaderReadString();
        v35 = 1168;
        goto LABEL_440;
      case 0x79u:
        v34 = PBReaderReadString();
        v35 = 1176;
        goto LABEL_440;
      case 0x7Au:
        v34 = PBReaderReadString();
        v35 = 1184;
        goto LABEL_440;
      case 0x7Bu:
        v34 = PBReaderReadString();
        v35 = 1200;
        goto LABEL_440;
      case 0x7Cu:
        v34 = PBReaderReadString();
        v35 = 1208;
        goto LABEL_440;
      case 0x7Du:
        v34 = PBReaderReadString();
        v35 = 1224;
        goto LABEL_440;
      case 0x7Eu:
        v34 = PBReaderReadString();
        v35 = 1256;
        goto LABEL_440;
      case 0x7Fu:
        v34 = PBReaderReadString();
        v35 = 1264;
        goto LABEL_440;
      case 0x80u:
        v34 = PBReaderReadString();
        v35 = 1272;
        goto LABEL_440;
      case 0x81u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 1684) |= 0x40000u;
        while (1)
        {
          v177 = 0;
          v117 = [a2 position] + 1;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
          {
            v119 = [a2 data];
            [v119 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v116 |= (v177 & 0x7F) << v114;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v12 = v115++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_493;
          }
        }

        v27 = (v116 != 0) & ~[a2 hasError];
LABEL_493:
        v176 = 1673;
        goto LABEL_516;
      case 0x82u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 1684) |= 0x80000u;
        while (1)
        {
          v177 = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v177 & 0x7F) << v120;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_495;
          }
        }

        v27 = (v122 != 0) & ~[a2 hasError];
LABEL_495:
        v176 = 1674;
        goto LABEL_516;
      case 0x83u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 1684) |= 0x100000u;
        while (1)
        {
          v177 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v177 & 0x7F) << v72;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_479;
          }
        }

        v27 = (v74 != 0) & ~[a2 hasError];
LABEL_479:
        v176 = 1675;
        goto LABEL_516;
      case 0x84u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 1684) |= 0x200000u;
        while (1)
        {
          v177 = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v177 & 0x7F) << v126;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_497;
          }
        }

        v27 = (v128 != 0) & ~[a2 hasError];
LABEL_497:
        v176 = 1676;
        goto LABEL_516;
      case 0x85u:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 1684) |= 0x400000u;
        while (1)
        {
          v177 = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v134 |= (v177 & 0x7F) << v132;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v12 = v133++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_499;
          }
        }

        v27 = (v134 != 0) & ~[a2 hasError];
LABEL_499:
        v176 = 1677;
        goto LABEL_516;
      case 0x86u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(a1 + 1684) |= 0x800000u;
        while (1)
        {
          v177 = 0;
          v141 = [a2 position] + 1;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
          {
            v143 = [a2 data];
            [v143 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v140 |= (v177 & 0x7F) << v138;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v12 = v139++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_501;
          }
        }

        v27 = (v140 != 0) & ~[a2 hasError];
LABEL_501:
        v176 = 1678;
        goto LABEL_516;
      case 0x87u:
        v34 = PBReaderReadString();
        v35 = 1288;
        goto LABEL_440;
      case 0x88u:
        v34 = PBReaderReadString();
        v35 = 1296;
        goto LABEL_440;
      case 0x89u:
        v34 = PBReaderReadString();
        v35 = 1304;
        goto LABEL_440;
      case 0x8Au:
        v34 = PBReaderReadString();
        v35 = 1312;
        goto LABEL_440;
      case 0x8Bu:
        v34 = PBReaderReadString();
        v35 = 1320;
        goto LABEL_440;
      case 0x8Cu:
        v34 = PBReaderReadString();
        v35 = 1328;
        goto LABEL_440;
      case 0x8Du:
        v34 = PBReaderReadString();
        v35 = 1336;
        goto LABEL_440;
      case 0x8Eu:
        v34 = PBReaderReadString();
        v35 = 1344;
        goto LABEL_440;
      case 0x8Fu:
        v34 = PBReaderReadString();
        v35 = 1376;
        goto LABEL_440;
      case 0x90u:
        v34 = PBReaderReadString();
        v35 = 1384;
        goto LABEL_440;
      case 0x91u:
        v34 = PBReaderReadString();
        v35 = 1392;
        goto LABEL_440;
      case 0x92u:
        v34 = PBReaderReadString();
        v35 = 1416;
        goto LABEL_440;
      case 0x93u:
        v34 = PBReaderReadString();
        v35 = 1432;
        goto LABEL_440;
      case 0x94u:
        v34 = PBReaderReadString();
        v35 = 1440;
        goto LABEL_440;
      case 0x95u:
        v34 = PBReaderReadString();
        v35 = 1456;
        goto LABEL_440;
      case 0x96u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 1684) |= 0x1000000u;
        while (1)
        {
          v177 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v177 & 0x7F) << v48;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_471;
          }
        }

        v27 = (v50 != 0) & ~[a2 hasError];
LABEL_471:
        v176 = 1679;
        goto LABEL_516;
      case 0x97u:
        v34 = PBReaderReadString();
        v35 = 1472;
        goto LABEL_440;
      case 0x98u:
        v34 = PBReaderReadString();
        v35 = 1480;
        goto LABEL_440;
      case 0x99u:
        v34 = PBReaderReadString();
        v35 = 1488;
        goto LABEL_440;
      case 0x9Au:
        v34 = PBReaderReadString();
        v35 = 1496;
        goto LABEL_440;
      case 0x9Bu:
        v34 = PBReaderReadString();
        v35 = 1504;
        goto LABEL_440;
      case 0x9Cu:
        v34 = PBReaderReadString();
        v35 = 1512;
        goto LABEL_440;
      case 0x9Du:
        v34 = PBReaderReadString();
        v35 = 1520;
        goto LABEL_440;
      case 0x9Fu:
        v34 = PBReaderReadString();
        v35 = 1544;
        goto LABEL_440;
      case 0xA0u:
        v34 = PBReaderReadString();
        v35 = 1552;
        goto LABEL_440;
      case 0xA1u:
        v34 = PBReaderReadString();
        v35 = 1560;
        goto LABEL_440;
      case 0xA2u:
        v34 = PBReaderReadString();
        v35 = 1568;
        goto LABEL_440;
      case 0xA3u:
        v34 = PBReaderReadString();
        v35 = 1576;
        goto LABEL_440;
      case 0xA4u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 1684) |= 0x2000000u;
        while (1)
        {
          v177 = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v177 & 0x7F) << v66;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_477;
          }
        }

        v27 = (v68 != 0) & ~[a2 hasError];
LABEL_477:
        v176 = 1680;
        goto LABEL_516;
      case 0xA5u:
        v34 = PBReaderReadString();
        v35 = 1584;
        goto LABEL_440;
      case 0xA6u:
        v34 = PBReaderReadString();
        v35 = 1592;
        goto LABEL_440;
      case 0xA7u:
        v34 = PBReaderReadString();
        v35 = 1600;
        goto LABEL_440;
      case 0xA8u:
        v34 = PBReaderReadString();
        v35 = 1608;
        goto LABEL_440;
      case 0xA9u:
        v34 = PBReaderReadString();
        v35 = 1616;
        goto LABEL_440;
      case 0xAAu:
        v34 = PBReaderReadString();
        v35 = 1624;
        goto LABEL_440;
      case 0xABu:
        v34 = PBReaderReadString();
        v35 = 1632;
        goto LABEL_440;
      case 0xACu:
        v34 = PBReaderReadString();
        v35 = 1640;
        goto LABEL_440;
      case 0xADu:
        v34 = PBReaderReadString();
        v35 = 1648;
        goto LABEL_440;
      case 0xAEu:
        v34 = PBReaderReadString();
        v35 = 144;
        goto LABEL_440;
      case 0xAFu:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + 1684) |= 2u;
        while (1)
        {
          v177 = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v177 & 0x7F) << v108;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v12 = v109++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_491;
          }
        }

        v27 = (v110 != 0) & ~[a2 hasError];
LABEL_491:
        v176 = 1656;
        goto LABEL_516;
      case 0xB0u:
        v34 = PBReaderReadString();
        v35 = 952;
        goto LABEL_440;
      case 0xB1u:
        v34 = PBReaderReadString();
        v35 = 96;
        goto LABEL_440;
      case 0xB2u:
        v34 = PBReaderReadString();
        v35 = 104;
        goto LABEL_440;
      case 0xB3u:
        v34 = PBReaderReadString();
        v35 = 216;
        goto LABEL_440;
      case 0xB4u:
        v34 = PBReaderReadString();
        v35 = 224;
        goto LABEL_440;
      case 0xB5u:
        v34 = PBReaderReadString();
        v35 = 248;
        goto LABEL_440;
      case 0xB6u:
        v34 = PBReaderReadString();
        v35 = 256;
        goto LABEL_440;
      case 0xB7u:
        v34 = PBReaderReadString();
        v35 = 264;
        goto LABEL_440;
      case 0xB8u:
        v34 = PBReaderReadString();
        v35 = 272;
        goto LABEL_440;
      case 0xB9u:
        v34 = PBReaderReadString();
        v35 = 280;
        goto LABEL_440;
      case 0xBAu:
        v34 = PBReaderReadString();
        v35 = 288;
        goto LABEL_440;
      case 0xBBu:
        v34 = PBReaderReadString();
        v35 = 416;
        goto LABEL_440;
      case 0xBCu:
        v34 = PBReaderReadString();
        v35 = 432;
        goto LABEL_440;
      case 0xBDu:
        v34 = PBReaderReadString();
        v35 = 464;
        goto LABEL_440;
      case 0xBEu:
        v34 = PBReaderReadString();
        v35 = 544;
        goto LABEL_440;
      case 0xBFu:
        v34 = PBReaderReadString();
        v35 = 560;
        goto LABEL_440;
      case 0xC0u:
        v34 = PBReaderReadString();
        v35 = 864;
        goto LABEL_440;
      case 0xC1u:
        v34 = PBReaderReadString();
        v35 = 632;
        goto LABEL_440;
      case 0xC2u:
        v34 = PBReaderReadString();
        v35 = 896;
        goto LABEL_440;
      case 0xC3u:
        v34 = PBReaderReadString();
        v35 = 904;
        goto LABEL_440;
      case 0xC4u:
        v34 = PBReaderReadString();
        v35 = 1448;
        goto LABEL_440;
      case 0xC5u:
        v34 = PBReaderReadString();
        v35 = 1216;
        goto LABEL_440;
      case 0xC6u:
        v34 = PBReaderReadString();
        v35 = 648;
        goto LABEL_440;
      case 0xC7u:
        v34 = PBReaderReadString();
        v35 = 920;
        goto LABEL_440;
      case 0xC8u:
        v34 = PBReaderReadString();
        v35 = 912;
        goto LABEL_440;
      case 0xC9u:
        v34 = PBReaderReadString();
        v35 = 960;
        goto LABEL_440;
      case 0xCAu:
        v34 = PBReaderReadString();
        v35 = 944;
        goto LABEL_440;
      case 0xCBu:
        v34 = PBReaderReadString();
        v35 = 1464;
        goto LABEL_440;
      case 0xCCu:
        v34 = PBReaderReadString();
        v35 = 1232;
        goto LABEL_440;
      case 0xCDu:
        v34 = PBReaderReadString();
        v35 = 1248;
        goto LABEL_440;
      case 0xCEu:
        v34 = PBReaderReadString();
        v35 = 1240;
        goto LABEL_440;
      case 0xCFu:
        v34 = PBReaderReadString();
        v35 = 664;
        goto LABEL_440;
      case 0xD0u:
        v34 = PBReaderReadString();
        v35 = 656;
        goto LABEL_440;
      case 0xD1u:
        v34 = PBReaderReadString();
        v35 = 992;
        goto LABEL_440;
      case 0xD2u:
        v34 = PBReaderReadString();
        v35 = 1008;
        goto LABEL_440;
      case 0xD3u:
        v34 = PBReaderReadString();
        v35 = 1000;
        goto LABEL_440;
      case 0xD4u:
        v34 = PBReaderReadString();
        v35 = 936;
        goto LABEL_440;
      case 0xD5u:
        v34 = PBReaderReadString();
        v35 = 928;
        goto LABEL_440;
      case 0xD6u:
        v34 = PBReaderReadString();
        v35 = 472;
        goto LABEL_440;
      case 0xD7u:
        v34 = PBReaderReadString();
        v35 = 480;
        goto LABEL_440;
      case 0xD8u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 1684) |= 0x100u;
        break;
      case 0xD9u:
        v34 = PBReaderReadString();
        v35 = 840;
        goto LABEL_440;
      case 0xDAu:
        v34 = PBReaderReadString();
        v35 = 608;
        goto LABEL_440;
      case 0xDBu:
        v34 = PBReaderReadString();
        v35 = 696;
        goto LABEL_440;
      case 0xDCu:
        v34 = PBReaderReadString();
        v35 = 1424;
        goto LABEL_440;
      case 0xDDu:
        v34 = PBReaderReadString();
        v35 = 1192;
        goto LABEL_440;
      case 0xDEu:
        v34 = PBReaderReadString();
        v35 = 1280;
        goto LABEL_440;
      case 0xDFu:
        v34 = PBReaderReadString();
        v35 = 768;
        goto LABEL_440;
      case 0xE0u:
        v34 = PBReaderReadString();
        v35 = 776;
        goto LABEL_440;
      case 0xE1u:
        v34 = PBReaderReadString();
        v35 = 784;
        goto LABEL_440;
      case 0xE2u:
        v34 = PBReaderReadString();
        v35 = 816;
        goto LABEL_440;
      case 0xE3u:
        v34 = PBReaderReadString();
        v35 = 824;
        goto LABEL_440;
      case 0xE4u:
        v34 = PBReaderReadString();
        v35 = 1352;
        goto LABEL_440;
      case 0xE5u:
        v34 = PBReaderReadString();
        v35 = 1360;
        goto LABEL_440;
      case 0xE6u:
        v34 = PBReaderReadString();
        v35 = 1368;
        goto LABEL_440;
      case 0xE7u:
        v34 = PBReaderReadString();
        v35 = 1400;
        goto LABEL_440;
      case 0xE8u:
        v34 = PBReaderReadString();
        v35 = 1408;
        goto LABEL_440;
      case 0xE9u:
        v34 = PBReaderReadString();
        v35 = 1528;
        goto LABEL_440;
      case 0xEAu:
        v34 = PBReaderReadString();
        v35 = 1536;
LABEL_440:
        v162 = *(a1 + v35);
        *(a1 + v35) = v34;

        continue;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v177 = 0;
      v99 = [a2 position] + 1;
      if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
      {
        v101 = [a2 data];
        [v101 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v98 |= (v177 & 0x7F) << v96;
      if ((v177 & 0x80) == 0)
      {
        break;
      }

      v96 += 7;
      v12 = v97++ >= 9;
      if (v12)
      {
        LOBYTE(v27) = 0;
        goto LABEL_487;
      }
    }

    v27 = (v98 != 0) & ~[a2 hasError];
LABEL_487:
    v176 = 1663;
LABEL_516:
    *(a1 + v176) = v27;
LABEL_441:
    ;
  }

  return [a2 hasError] ^ 1;
}

void sub_2334520E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SocketReadCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v10 socket];
      if (a2 == 1 && v8 == a1)
      {
        [v10 readData];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t HostResolveCallback(void *a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v15 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v15 host];
      if (!a2 && v8 == a1)
      {
        v9 = [v15 timeoutTimer];
        if (v9)
        {
          v10 = v9;
          v11 = [v15 timeoutTimer];
          v12 = dispatch_source_testcancel(v11);

          if (!v12)
          {
            v13 = [v15 timeoutTimer];
            dispatch_source_cancel(v13);
          }
        }

        if (a3 && *a3)
        {
          [v15 didFailWithHostStreamError:{*a3, a3[1]}];
        }

        else
        {
          [v15 hostResolutionDone];
        }
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_23345669C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2334590DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23345A3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23345F268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_23345F930()
{
  type metadata accessor for NPTDRapportManager();
  swift_allocObject();
  result = sub_233460408();
  qword_27DE0D7E0 = result;
  return result;
}

uint64_t sub_23345F9A4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2334643FC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4, v5);
}

uint64_t sub_23345FA38(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_233465940, v9);
}

uint64_t sub_23345FAE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2334643C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_233423224(v3, v4);
  return sub_233423234(v8, v9);
}

uint64_t sub_23345FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *, void *))
{
  v11 = a2;
  v12 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_233465948;
  v10[1] = v8;

  a5(&v12, &v11, v10);
}

uint64_t NPTDRapportManager.requestHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_233423224(v1, *(v0 + 48));
  return v1;
}

uint64_t NPTDRapportManager.requestHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_233423234(v5, v6);
}

uint64_t sub_23345FD3C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2334643BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4, v5);
}

uint64_t sub_23345FDD0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2334643B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  *(v7 + 56) = v6;
  *(v7 + 64) = v5;
  sub_233423224(v3, v4);
  return sub_233423234(v8, v9);
}

uint64_t NPTDRapportManager.responseHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_233423224(v1, *(v0 + 64));
  return v1;
}

uint64_t NPTDRapportManager.responseHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_233423234(v5, v6);
}

uint64_t sub_23345FF80@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23346593C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4, v5);
}

uint64_t sub_233460014(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_233465988;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_233423224(v3, v4);
  return sub_233423234(v8, v9);
}

uint64_t NPTDRapportManager.deviceFoundHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_233423224(v1, *(v0 + 80));
  return v1;
}

uint64_t NPTDRapportManager.deviceFoundHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_233423234(v5, v6);
}

uint64_t sub_2334601C4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2334643B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4, v5);
}

uint64_t sub_233460258(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2334643A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 88);
  v9 = *(v7 + 96);
  *(v7 + 88) = v6;
  *(v7 + 96) = v5;
  sub_233423224(v3, v4);
  return sub_233423234(v8, v9);
}

uint64_t NPTDRapportManager.deviceLostHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  sub_233423224(v1, *(v0 + 96));
  return v1;
}

uint64_t NPTDRapportManager.deviceLostHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  v6 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return sub_233423234(v5, v6);
}

uint64_t sub_233460408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v2 = &aBlock - v1;
  v3 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_233470DF4())
  {
    sub_2334655B8(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  v5 = [objc_allocWithZone(MEMORY[0x277D44158]) init];
  *(v0 + 16) = v5;
  [v5 setControlFlags_];
  v6 = *(v0 + 16);
  v7 = sub_233470C24();
  [v6 setServiceType_];

  v8 = *(v0 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v31 = sub_2334654E4;
  v32 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_233469D74;
  v30 = &block_descriptor_87;
  v10 = _Block_copy(&aBlock);
  v11 = v8;

  [v11 setDeviceFoundHandler_];
  _Block_release(v10);

  v12 = *(v0 + 16);
  v13 = swift_allocObject();
  swift_weakInit();
  v31 = sub_2334654EC;
  v32 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_233469D74;
  v30 = &block_descriptor_91;
  v14 = _Block_copy(&aBlock);
  v15 = v12;

  [v15 setDeviceLostHandler_];
  _Block_release(v14);

  v16 = *(v0 + 16);
  v17 = swift_allocObject();
  swift_weakInit();
  v31 = sub_2334654F4;
  v32 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_233460E08;
  v30 = &block_descriptor_95;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  [v19 setDeviceChangedHandler_];
  _Block_release(v18);

  v20 = *(v0 + 16);
  v21 = sub_233470C24();
  v22 = swift_allocObject();
  swift_weakInit();

  v31 = sub_2334654FC;
  v32 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_23346107C;
  v30 = &block_descriptor_99;
  v23 = _Block_copy(&aBlock);

  [v20 registerRequestID:v21 options:0 handler:v23];
  _Block_release(v23);

  v24 = sub_233470D04();
  (*(*(v24 - 8) + 56))(v2, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v0;

  sub_233461824(0, 0, v2, &unk_233476BF8, v25);

  return v0;
}

uint64_t sub_2334608FC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_27DE0D7F0 != -1)
    {
      swift_once();
    }

    v5 = sub_233470BE4();
    __swift_project_value_buffer(v5, qword_27DE0DAD0);
    v6 = a1;
    v7 = sub_233470BC4();
    v8 = sub_233470D64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_233421000, v7, v8, "Rapport client Found device %@", v9, 0xCu);
      sub_2334644B8(v10, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v10, -1, -1);
      MEMORY[0x23839F8C0](v9, -1, -1);
    }

    v12 = [*(v4 + 16) activeDevices];
    sub_2334658C8(0, &qword_27DE0D840, 0x277D44168);
    v13 = sub_233470C94();

    swift_beginAccess();
    *(v4 + 32) = v13;

    swift_beginAccess();
    v14 = *(v4 + 72);
    if (v14)
    {
      v15 = *(v4 + 80);

      v14(v6);
      sub_233423234(v14, v15);
    }
  }

  return result;
}

uint64_t sub_233460B1C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_27DE0D7F0 != -1)
    {
      swift_once();
    }

    v5 = sub_233470BE4();
    __swift_project_value_buffer(v5, qword_27DE0DAD0);
    v6 = a1;
    v7 = sub_233470BC4();
    v8 = sub_233470D64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_233421000, v7, v8, "Rapport client Lost device %@", v9, 0xCu);
      sub_2334644B8(v10, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v10, -1, -1);
      MEMORY[0x23839F8C0](v9, -1, -1);
    }

    v12 = [*(v4 + 16) activeDevices];
    sub_2334658C8(0, &qword_27DE0D840, 0x277D44168);
    v13 = sub_233470C94();

    swift_beginAccess();
    *(v4 + 32) = v13;

    swift_beginAccess();
    v14 = *(v4 + 88);
    if (v14)
    {
      v15 = *(v4 + 96);

      v14(v6);
      sub_233423234(v14, v15);
    }
  }

  return result;
}

uint64_t sub_233460D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [*(result + 16) activeDevices];
    sub_2334658C8(0, &qword_27DE0D840, 0x277D44168);
    v6 = sub_233470C94();

    swift_beginAccess();
    *(v4 + 32) = v6;
  }

  return result;
}

void sub_233460E08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_233460E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (qword_27DE0D7F0 != -1)
    {
      swift_once();
    }

    v11 = sub_233470BE4();
    __swift_project_value_buffer(v11, qword_27DE0DAD0);

    v12 = sub_233470BC4();
    v13 = sub_233470D64();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = sub_233470BF4();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_233421000, v12, v13, "Rapport received request %@", v14, 0xCu);
      sub_2334644B8(v15, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v15, -1, -1);
      MEMORY[0x23839F8C0](v14, -1, -1);
    }

    swift_beginAccess();
    v17 = *(v10 + 40);
    if (v17)
    {
      v18 = *(v10 + 48);

      v17(a1, a2, a3, a4);
      sub_233423234(v17, v18);
    }
  }

  return result;
}

uint64_t sub_23346107C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_233470C04();
  if (a3)
  {
    a3 = sub_233470C04();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_2334658C0, v9);
}

void sub_233461188(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_233470BF4();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_233470BF4();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_233470B94();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

uint64_t sub_233461290()
{
  v1 = *(v0[18] + 16);
  v0[2] = v0;
  v0[3] = sub_2334613A8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D800, &qword_233476AF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233461778;
  v0[13] = &block_descriptor_106;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2334613A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_2334615CC;
  }

  else
  {
    v2 = sub_2334614B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2334614B8()
{
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v1 = sub_233470BE4();
  __swift_project_value_buffer(v1, qword_27DE0DAD0);
  v2 = sub_233470BC4();
  v3 = sub_233470D34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_233421000, v2, v3, "Rapport client activated", v4, 2u);
    MEMORY[0x23839F8C0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2334615CC()
{
  swift_willThrow();
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_233470BE4();
  __swift_project_value_buffer(v2, qword_27DE0DAD0);
  v3 = v1;
  v4 = sub_233470BC4();
  v5 = sub_233470D34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_233421000, v4, v5, "Rapport client activated with error: %@", v8, 0xCu);
    sub_2334644B8(v9, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v9, -1, -1);
    MEMORY[0x23839F8C0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_233461778(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_233461824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_233464448(a3, v24 - v9);
  v11 = sub_233470D04();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2334644B8(v10, &qword_27DE0D810, &qword_233476B08);
  }

  else
  {
    sub_233470CF4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_233470CC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_233470C44() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2334644B8(a3, &qword_27DE0D810, &qword_233476B08);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2334644B8(a3, &qword_27DE0D810, &qword_233476B08);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void *NPTDRapportManager.fetchDevice(withName:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_233470DF4())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23839EB30](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 name];
      if (v11)
      {
        v12 = v11;
        v13 = a2;
        v14 = sub_233470C34();
        v16 = v15;

        if (v14 == a1 && v16 == v13)
        {

LABEL_20:

          return v9;
        }

        a2 = v13;
        v18 = sub_233470F04();

        if (v18)
        {
          goto LABEL_20;
        }
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_18:

  return 0;
}

uint64_t NPTDRapportManager.sendRequest(toDevice:device:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x2822009F8](sub_233461CD8, 0, 0);
}

uint64_t sub_233461CD8()
{
  v25 = v0;
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_233470BE4();
  v0[24] = __swift_project_value_buffer(v2, qword_27DE0DAD0);
  swift_retain_n();
  v3 = v1;
  v4 = sub_233470BC4();
  v5 = sub_233470D64();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[22];
  v7 = v0[23];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2048;
    swift_beginAccess();
    v11 = *(v7 + 32);
    if (v11 >> 62)
    {
      v12 = sub_233470DF4();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v0[22];

    *(v9 + 14) = v12;

    _os_log_impl(&dword_233421000, v4, v5, "Will send request to %@, device count %ld", v9, 0x16u);
    sub_2334644B8(v10, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v10, -1, -1);
    MEMORY[0x23839F8C0](v9, -1, -1);
  }

  else
  {
  }

  v0[25] = v8;
  v14 = v0[22];
  v15 = [objc_allocWithZone(MEMORY[0x277D44158]) init];
  v0[26] = v15;
  [v15 setDestinationDevice_];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v0[14] = sub_233463D98;
  v0[15] = v17;
  v18 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233462600;
  v0[13] = &block_descriptor;
  v19 = _Block_copy(v0 + 10);
  v20 = v15;

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  swift_beginAccess();
  v21 = v20;
  sub_233463DEC(&v24, v21);
  swift_endAccess();

  v0[2] = v0;
  v0[3] = sub_2334620B8;
  v22 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D800, &qword_233476AF8);
  v0[10] = v18;
  v0[11] = 1107296256;
  v0[12] = sub_233461778;
  v0[13] = &block_descriptor_10;
  v0[14] = v22;
  [v21 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2334620B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_233462450;
  }

  else
  {
    v2 = sub_2334621C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2334621C8()
{
  v1 = *(v0 + 176);
  v2 = sub_233470BC4();
  v3 = sub_233470D44();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v4;
    v8 = v5;
    _os_log_impl(&dword_233421000, v2, v3, "Activated send client to %@", v6, 0xCu);
    sub_2334644B8(v7, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v7, -1, -1);
    MEMORY[0x23839F8C0](v6, -1, -1);
  }

  v9 = *(v0 + 208);
  v10 = *(v0 + 176);

  v11 = sub_233470C24();
  v12 = sub_233470BF4();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v10;
  v14[4] = v9;
  *(v0 + 112) = sub_233464114;
  *(v0 + 120) = v14;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23346295C;
  *(v0 + 104) = &block_descriptor_17;
  v15 = _Block_copy((v0 + 80));
  v16 = v10;
  v17 = v9;

  [v17 sendRequestID:v11 request:v12 options:0 responseHandler:v15];

  _Block_release(v15);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_233462450()
{
  v1 = v0[27];
  v2 = v0[22];
  swift_willThrow();
  v3 = v2;
  v4 = v1;
  v5 = sub_233470BC4();
  v6 = sub_233470D44();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[27];
    v8 = v0[25];
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v8;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_233421000, v5, v6, "Activated send client to %@ with error %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
    swift_arrayDestroy();
    MEMORY[0x23839F8C0](v11, -1, -1);
    MEMORY[0x23839F8C0](v10, -1, -1);
  }

  v16 = v0[26];
  v15 = v0[27];

  [v16 invalidate];
  v17 = v0[1];

  return v17();
}

uint64_t sub_233462600(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_233462644(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if (qword_27DE0D7F0 != -1)
    {
      swift_once();
    }

    v13 = sub_233470BE4();
    __swift_project_value_buffer(v13, qword_27DE0DAD0);
    v14 = a5;
    v15 = sub_233470BC4();
    v16 = sub_233470D44();

    if (os_log_type_enabled(v15, v16))
    {
      v34 = a6;
      v17 = a1;
      v18 = a2;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v14;
      *v20 = v14;
      v21 = v14;
      _os_log_impl(&dword_233421000, v15, v16, "Received response from %@", v19, 0xCu);
      sub_2334644B8(v20, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v20, -1, -1);
      v22 = v19;
      a2 = v18;
      a1 = v17;
      a6 = v34;
      MEMORY[0x23839F8C0](v22, -1, -1);
    }

    if (a3)
    {
      v23 = v14;
      v24 = a3;
      v25 = sub_233470BC4();
      v26 = sub_233470D44();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412546;
        *(v27 + 4) = v23;
        *v28 = v23;
        *(v27 + 12) = 2112;
        v29 = v23;
        v30 = a3;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v31;
        v28[1] = v31;
        _os_log_impl(&dword_233421000, v25, v26, "Response from %@ contains error %@", v27, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
        swift_arrayDestroy();
        MEMORY[0x23839F8C0](v28, -1, -1);
        MEMORY[0x23839F8C0](v27, -1, -1);
      }

      else
      {
      }
    }

    swift_beginAccess();
    v32 = *(v12 + 56);
    if (v32)
    {
      v33 = *(v12 + 64);

      v32(a1, a2, a3);
      sub_233423234(v32, v33);
    }

    [a6 invalidate];
  }

  return result;
}

uint64_t sub_23346295C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_233470C04();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_233470C04();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t NPTDRapportManager.sendEvent(toDevice:device:)(uint64_t a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v7 = &v28[-v6];
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v8 = sub_233470BE4();
  __swift_project_value_buffer(v8, qword_27DE0DAD0);
  swift_retain_n();
  v9 = a2;

  v10 = sub_233470BC4();
  v11 = sub_233470D64();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2048;
    swift_beginAccess();
    v14 = *(v3 + 32);
    if (v14 >> 62)
    {
      v15 = sub_233470DF4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v9;

    *(v12 + 14) = v15;

    *(v12 + 22) = 2112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D818, &qword_233476B20);
    v17 = sub_233470BF4();
    *(v12 + 24) = v17;
    v13[1] = v17;
    _os_log_impl(&dword_233421000, v10, v11, "Will send event to %@, device count %ld, event %@", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
    swift_arrayDestroy();
    MEMORY[0x23839F8C0](v13, -1, -1);
    MEMORY[0x23839F8C0](v12, -1, -1);
  }

  else
  {
  }

  v18 = [objc_allocWithZone(MEMORY[0x277D44158]) init];
  [v18 setDestinationDevice_];
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  aBlock[4] = sub_23346595C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_233462600;
  aBlock[3] = &block_descriptor_24;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  [v22 setInvalidationHandler_];
  _Block_release(v21);
  swift_beginAccess();
  v23 = v22;
  sub_233463DEC(&v29, v23);
  swift_endAccess();

  v24 = sub_233470D04();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v9;
  v25[6] = a1;
  v26 = v9;

  sub_233461824(0, 0, v7, &unk_233476B18, v25);
}

void sub_233462E98(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v3 = sub_233465000(a2);
    swift_endAccess();
  }
}

uint64_t sub_233462F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2822009F8](sub_233462F4C, 0, 0);
}

uint64_t sub_233462F4C()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_233463060;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D800, &qword_233476AF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233461778;
  v0[13] = &block_descriptor_77;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_233463060()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_233463410;
  }

  else
  {
    v2 = sub_233463170;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233463170()
{
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_233470BE4();
  __swift_project_value_buffer(v2, qword_27DE0DAD0);
  v3 = v1;
  v4 = sub_233470BC4();
  v5 = sub_233470D44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_233421000, v4, v5, "Activated send client to %@", v7, 0xCu);
    sub_2334644B8(v8, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v8, -1, -1);
    MEMORY[0x23839F8C0](v7, -1, -1);
  }

  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[18];

  v13 = sub_233470C24();
  sub_233469DDC(v10);
  v14 = sub_233470BF4();

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v12;
  v0[14] = sub_233464688;
  v0[15] = v15;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23346387C;
  v0[13] = &block_descriptor_83;
  v16 = _Block_copy(v0 + 10);
  v17 = v11;
  v18 = v12;

  [v18 sendEventID:v13 event:v14 options:0 completion:v16];
  _Block_release(v16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_233463410()
{
  swift_willThrow();
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[19];
  v3 = sub_233470BE4();
  __swift_project_value_buffer(v3, qword_27DE0DAD0);
  v4 = v2;
  v5 = v1;
  v6 = sub_233470BC4();
  v7 = sub_233470D44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_233421000, v6, v7, "Activated send client to %@ with error %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
    swift_arrayDestroy();
    MEMORY[0x23839F8C0](v11, -1, -1);
    MEMORY[0x23839F8C0](v10, -1, -1);
  }

  v15 = v0[21];
  v16 = v0[18];

  [v16 invalidate];
  v17 = v0[1];

  return v17();
}

id sub_233463600(void *a1, void *a2, void *a3)
{
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v6 = sub_233470BE4();
  __swift_project_value_buffer(v6, qword_27DE0DAD0);
  v7 = a2;
  v8 = sub_233470BC4();
  v9 = sub_233470D44();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_233421000, v8, v9, "Event sent to %@", v10, 0xCu);
    sub_2334644B8(v11, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v11, -1, -1);
    MEMORY[0x23839F8C0](v10, -1, -1);
  }

  if (a1)
  {
    v13 = v7;
    v14 = a1;
    v15 = sub_233470BC4();
    v16 = sub_233470D44();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v13;
      *v18 = v13;
      *(v17 + 12) = 2112;
      v19 = v13;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      v18[1] = v21;
      _os_log_impl(&dword_233421000, v15, v16, "Event Response from %@ contains error %@", v17, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
      swift_arrayDestroy();
      MEMORY[0x23839F8C0](v18, -1, -1);
      MEMORY[0x23839F8C0](v17, -1, -1);
    }

    else
    {
    }
  }

  return [a3 invalidate];
}

void sub_23346387C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t NPTDRapportManager.deinit()
{

  sub_233423234(*(v0 + 40), *(v0 + 48));
  sub_233423234(*(v0 + 56), *(v0 + 64));
  sub_233423234(*(v0 + 72), *(v0 + 80));
  sub_233423234(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t NPTDRapportManager.__deallocating_deinit()
{
  NPTDRapportManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_233463970()
{
  if (qword_27DE0D7D8 != -1)
  {
    swift_once();
  }
}

BOOL sub_2334639E0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_233463A38(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_233463A84(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_233463B7C;

  return v6(a1);
}

uint64_t sub_233463B7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_233463C74(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_233463CAC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_233463CBC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_233463D30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_233463DCC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_233463DEC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_233470E04();

    if (v9)
    {

      sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_233470DF4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_233464690(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_233464880(v20 + 1);
    }

    v18 = v8;
    sub_233464AA8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
  v11 = sub_233470D94();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_233464B2C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_233470DA4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23346406C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_233464160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_233464228;

  return sub_233462F28(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_233464228()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void type metadata accessor for _NPTTestType()
{
  if (!qword_27DE0D820)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DE0D820);
    }
  }
}

uint64_t sub_233464404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

uint64_t sub_233464448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2334644B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_233464518(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233465950;

  return sub_233463A84(a1, v4);
}

uint64_t sub_2334645D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233464228;

  return sub_233463A84(a1, v4);
}

uint64_t sub_233464690(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
    v2 = sub_233470E84();
    v15 = v2;
    sub_233470DE4();
    if (sub_233470E14())
    {
      sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_233464880(v9 + 1);
        }

        v2 = v15;
        result = sub_233470D94();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_233470E14());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_233464880(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
  result = sub_233470E74();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_233470D94();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_233464AA8(uint64_t a1, uint64_t a2)
{
  sub_233470D94();
  result = sub_233470DD4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_233464B2C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_233464880(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_233464C9C();
      goto LABEL_12;
    }

    sub_233464DEC(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_233470D94();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_233470DA4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_233470F24();
  __break(1u);
}

id sub_233464C9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
  v2 = *v0;
  v3 = sub_233470E64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_233464DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
  result = sub_233470E74();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_233470D94();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_233465000(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_233470E24();

    if (v6)
    {
      v7 = sub_233465198(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
  v10 = sub_233470D94();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_233470DA4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_233464C9C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_233465300(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_233465198(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_233470DF4();
  v5 = swift_unknownObjectRetain();
  v6 = sub_233464690(v5, v4);
  v15 = v6;

  v7 = sub_233470D94();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_233470DA4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_233465300(v9);
  result = sub_233470DA4();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_233465300(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_233470DC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_233470D94();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_233465504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_233465950;

  return sub_233461270(a1, v4, v5, v6);
}

void sub_2334655B8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_233470DF4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
      v3 = sub_233470E94();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_233470DF4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x23839EB30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_233470D94();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_233470DA4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_233470D94();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_233470DA4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_2334658C8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

NPTKit::NPTDRequestType_optional __swiftcall NPTDRequestType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_233465A74()
{
  result = qword_27DE0D848;
  if (!qword_27DE0D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE0D848);
  }

  return result;
}

uint64_t sub_233465AC8()
{
  v1 = *v0;
  sub_233470F44();
  MEMORY[0x23839EBD0](v1);
  return sub_233470F64();
}

uint64_t sub_233465B3C(uint64_t a1)
{
  v2 = *v1;
  sub_233470F44();
  MEMORY[0x23839EBD0](v2);
  return sub_233470F64();
}

uint64_t getEnumTagSinglePayload for NPTDRemoteConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NPTDRemoteConstants(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NPTDRequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NPTDRequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_233465DF0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_233470C24();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  type metadata accessor for NetworkPerformanceTesterDClient();
  swift_allocObject();
  v3 = sub_2334698B4(v2);

  qword_27DE0D850 = v3;
}

uint64_t static NetworkPerformanceTesterDClient.shared.getter()
{
  if (qword_27DE0D7E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_233465F0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D870, &qword_233476E88);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_233476D10;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = a1;
  *(v2 + 40) = 0xEB00000000646574;
  sub_233470F34();
}

void sub_233465FA0(uint64_t a1)
{
  v1 = sub_233470B94();
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v2 = sub_233470BE4();
  __swift_project_value_buffer(v2, qword_27DE0DAE8);
  v19 = v1;
  oslog = sub_233470BC4();
  v3 = sub_233470D54();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315394;
    v6 = [v19 localizedDescription];
    v7 = sub_233470C34();
    v9 = v8;

    v10 = sub_23346E54C(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2080;
    v11 = [v19 localizedFailureReason];
    if (v11)
    {
      v12 = v11;
      v13 = sub_233470C34();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v17 = sub_23346E54C(v13, v15, &v20);

    *(v4 + 14) = v17;
    _os_log_impl(&dword_233421000, oslog, v3, "Error on remote object proxy: %s %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839F8C0](v5, -1, -1);
    MEMORY[0x23839F8C0](v4, -1, -1);

    v16 = v19;
  }

  else
  {

    v16 = oslog;
  }
}

void sub_2334661BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t NetworkPerformanceTesterDClient.testService(withArguments:)(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x2822009F8](sub_233466244, 0, 0);
}

uint64_t sub_233466244()
{
  v1 = *(v0[22] + 24);
  v2 = sub_233470C84();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_233466388;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D858, &qword_233476D48);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2334664E4;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [v1 testServiceWithArguments:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_233466388()
{

  return MEMORY[0x2822009F8](sub_233466468, 0, 0);
}

uint64_t sub_233466468()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);

  v4 = *(v0 + 8);

  return v4(v2, v1, v3);
}

uint64_t sub_2334664E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v5 = sub_233470C34();
  v6 = *(*(v4 + 64) + 40);
  *v6 = a2;
  v6[1] = v5;
  v6[2] = v7;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_233466700(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_233470C94();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_2334667D8;

  return NetworkPerformanceTesterDClient.testService(withArguments:)(v4);
}

uint64_t sub_2334667D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 24);
  v9 = *v3;

  v6 = sub_233470C24();
  (v5)[2](v5, a1, v6);

  _Block_release(v5);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPath:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_233466994, 0, 0);
}

uint64_t sub_233466994()
{
  v1 = *(v0[21] + 24);
  v2 = sub_233470C24();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_233466AD0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D860, &qword_233476D58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233466CBC;
  v0[13] = &block_descriptor_3;
  v0[14] = v3;
  [v1 getPrivilegedFileHandleForPath:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_233466AD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_233466C4C;
  }

  else
  {
    v2 = sub_233466BE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233466BE0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_233466C4C()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_233466CBC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_233466F20(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_233470C34();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_233466FF4;

  return NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPath:)(v4, v6);
}

uint64_t sub_233466FF4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = sub_233470B94();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](*(v5 + 24), a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_2334671D4()
{
  v1 = *(v0[19] + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2334672F4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D860, &qword_233476D58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233466CBC;
  v0[13] = &block_descriptor_7;
  v0[14] = v2;
  [v1 getPrivilegedFileHandleForPacketCaptureWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2334672F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_233467420;
  }

  else
  {
    v2 = sub_233467404;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233467420()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233467604(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2334676AC;

  return NetworkPerformanceTesterDClient.getPrivilegedFileHandleForPacketCapture()();
}

uint64_t sub_2334676AC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = sub_233470B94();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

void NetworkPerformanceTesterDClient.startLocalPerformanceTest(with:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_233467918;
  v7[3] = &block_descriptor_11;
  v6 = _Block_copy(v7);

  [v5 startLocalPerformanceTestWith:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_233467918(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    v3 = sub_233470C94();
  }

  v6 = a2;
  v5(a2, v3);
}

void sub_233467AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    v5 = sub_233470C84();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void NetworkPerformanceTesterDClient.stopLocalPerformanceTest(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_233467C30;
  v5[3] = &block_descriptor_14;
  v4 = _Block_copy(v5);

  [v3 stopLocalPerformanceTest_];
  _Block_release(v4);
}

void sub_233467C30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t NetworkPerformanceTesterDClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t static NetworkPerformanceTesterDClient.sharedInstance()()
{
  if (qword_27DE0D7E8 != -1)
  {
    swift_once();
  }
}

uint64_t NetworkPerformanceTesterDClient.testService(withArguments:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  v10 = sub_233470D04();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;

  sub_233461824(0, 0, v9, &unk_233476D78, v11);
}

uint64_t sub_233467FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  return MEMORY[0x2822009F8](sub_233467FC8, 0, 0);
}

uint64_t sub_233467FC8()
{
  v1 = *(v0[21] + 24);
  v2 = sub_233470C84();
  v0[25] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23346810C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D858, &qword_233476D48);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2334664E4;
  v0[13] = &block_descriptor_100;
  v0[14] = v3;
  [v1 testServiceWithArguments:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23346810C()
{

  return MEMORY[0x2822009F8](sub_2334681EC, 0, 0);
}

uint64_t sub_2334681EC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);

  v1(v2, v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_233468284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_233464228;

  return sub_233467FA4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPath:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v11 = &v15 - v10;
  v12 = sub_233470D04();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v5;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;

  sub_233461824(0, 0, v11, &unk_233476D88, v13);
}

uint64_t sub_23346849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_23346854C;

  return NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPath:)(a5, a6);
}

uint64_t sub_23346854C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_2334686FC;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_233468674;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_233468674()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2334686FC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23346878C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_233465950;

  return sub_23346849C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPacketCapture:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  v7 = sub_233470D04();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = a1;
  v8[6] = a2;

  sub_233461824(0, 0, v6, &unk_233476D98, v8);
}

uint64_t sub_23346898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x2822009F8](sub_2334689B0, 0, 0);
}

uint64_t sub_2334689B0()
{
  v1 = *(v0[19] + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_233468AD0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D860, &qword_233476D58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233466CBC;
  v0[13] = &block_descriptor_96;
  v0[14] = v2;
  [v1 getPrivilegedFileHandleForPacketCaptureWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_233468AD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_233468C68;
  }

  else
  {
    v2 = sub_233468BE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233468BE0()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v2;
  v1(v2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_233468C68()
{
  v1 = v0[22];
  v2 = v0[20];
  swift_willThrow();
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_233468D08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_233465950;

  return sub_23346898C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_233468E28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_233465950;

  return sub_233467604(v2, v3);
}

uint64_t sub_233468ED4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_233465950;

  return v6();
}

uint64_t sub_233468FBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_233465950;

  return sub_233468ED4(v2, v3, v4);
}

uint64_t sub_23346907C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_233464228;

  return v7();
}

uint64_t sub_233469164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_233465950;

  return sub_23346907C(a1, v4, v5, v6);
}

uint64_t sub_233469230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_233464448(a3, v22 - v9);
  v11 = sub_233470D04();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2334694EC(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_233470CF4();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_233470CC4();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_233470C44() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_2334694EC(a3);

    return v20;
  }

LABEL_8:
  sub_2334694EC(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_2334694EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233469554(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233465950;

  return sub_233463A84(a1, v4);
}

uint64_t sub_23346960C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233464228;

  return sub_233463A84(a1, v4);
}

uint64_t sub_2334696C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_233465950;

  return sub_233466F20(v2, v3, v4);
}

uint64_t objectdestroy_65Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2334697C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_233465950;

  return sub_233466700(v2, v3, v4);
}

uint64_t objectdestroy_44Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2334698B4(void *a1)
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_2334658C8(0, &qword_27DE0D868, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D870, &qword_233476E88);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_233476D20;
  v2 = sub_2334658C8(0, &qword_27DE0D878, off_2789D3938);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D880, &qword_233476E90);
  *(v1 + 32) = v2;
  v3 = sub_2334658C8(0, &qword_27DE0D888, 0x277CBEA60);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D890, &qword_233476E98);
  *(v1 + 64) = v3;
  v4 = sub_2334658C8(0, &qword_27DE0D898, 0x277CCA9B8);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8A0, &qword_233476EA0);
  *(v1 + 96) = v4;
  MEMORY[0x23839EA00](v1);
  result = sub_233470D24();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_233469D74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_233469DDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8D8, &qword_233476FB8);
    v2 = sub_233470EE4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23346406C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_233423688(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D818, &qword_233476B20);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_233423688(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_233423688(v31, v32);
    result = sub_233470E34();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_233423688(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_23346A0D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8E8, &qword_233476FC8);
    v2 = sub_233470EE4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D818, &qword_233476B20);
        swift_dynamicCast();
        sub_233423688(&v22, v24);
        sub_233423688(v24, v25);
        sub_233423688(v25, &v23);
        result = sub_23346EB38(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_233423688(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_233423688(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23346A32C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23346FCC4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4, v5);
}

uint64_t sub_23346A3C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23346FC90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_233423224(v3, v4);
  return sub_233423234(v8, v9);
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceDiscoveredHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_233423224(v1, *(v0 + 40));
  return v1;
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceDiscoveredHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_233423234(v5, v6);
}

uint64_t sub_23346A570@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23346F354;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4, v5);
}

uint64_t sub_23346A604(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23346F31C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_233423224(v3, v4);
  return sub_233423234(v8, v9);
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceLostHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_233423224(v1, *(v0 + 56));
  return v1;
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceLostHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_233423234(v5, v6);
}

uint64_t sub_23346A7B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23346F2F4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4, v5);
}

uint64_t sub_23346A848(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23346F2CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_233423224(v3, v4);
  return sub_233423234(v8, v9);
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceDisconnected.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_233423224(v1, *(v0 + 72));
  return v1;
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceDisconnected.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_233423234(v5, v6);
}

uint64_t NetworkPerformanceTesterDRemoteClient.__allocating_init(remoteDevice:)(void *a1)
{
  swift_allocObject();
  v2 = sub_23346EE84(a1);

  return v2;
}

uint64_t NetworkPerformanceTesterDRemoteClient.init(remoteDevice:)(void *a1)
{
  v2 = sub_23346EE84(a1);

  return v2;
}

uint64_t sub_23346AA70(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_27DE0D7F8 != -1)
    {
      swift_once();
    }

    v5 = sub_233470BE4();
    __swift_project_value_buffer(v5, qword_27DE0DAE8);
    v6 = a1;
    v7 = sub_233470BC4();
    v8 = sub_233470D64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_233421000, v7, v8, "NetworkPerformanceTesterDRemoteClient lost device %@", v9, 0xCu);
      sub_2334644B8(v10, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v10, -1, -1);
      MEMORY[0x23839F8C0](v9, -1, -1);
    }

    swift_beginAccess();
    v12 = *(v4 + 48);
    if (v12)
    {
      v13 = *(v4 + 56);

      v12(v6);

      return sub_233423234(v12, v13);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23346AC34(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_27DE0D7F8 != -1)
    {
      swift_once();
    }

    v3 = sub_233470BE4();
    __swift_project_value_buffer(v3, qword_27DE0DAE8);
    v4 = sub_233470BC4();
    v5 = sub_233470D54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_233421000, v4, v5, "NetworkPerformanceTesterDRemoteClient disconnected from remote", v6, 2u);
      MEMORY[0x23839F8C0](v6, -1, -1);
    }

    swift_beginAccess();
    v7 = *(v2 + 64);
    if (v7)
    {
      v8 = *(v2 + 72);

      v7(v9);

      return sub_233423234(v7, v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23346AD8C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_27DE0D7F8 != -1)
    {
      swift_once();
    }

    v5 = sub_233470BE4();
    __swift_project_value_buffer(v5, qword_27DE0DAE8);
    v6 = a1;
    v7 = sub_233470BC4();
    v8 = sub_233470D64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_233421000, v7, v8, "NetworkPerformanceTesterDRemoteClient found device %@", v9, 0xCu);
      sub_2334644B8(v10, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v10, -1, -1);
      MEMORY[0x23839F8C0](v9, -1, -1);
    }

    swift_beginAccess();
    v12 = *(v4 + 32);
    if (v12)
    {
      v13 = *(v4 + 40);

      v12(v6);

      return sub_233423234(v12, v13);
    }

    else
    {
    }
  }

  return result;
}

void sub_23346AF50()
{
  v1 = *(v0 + 24);
  v2 = sub_233470C24();
  v3 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_23346FC74;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_23346C488;
  v5[3] = &block_descriptor_80;
  v4 = _Block_copy(v5);

  [v1 registerEventID:v2 options:0 handler:v4];
  _Block_release(v4);
}

void sub_23346B05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_23;
  }

  if (!a2)
  {

    v96 = 0u;
    v97 = 0u;
    goto LABEL_22;
  }

  v6 = Strong;
  sub_233470E54();
  if (!*(a2 + 16) || (v7 = sub_23346EAF4(v95), (v8 & 1) == 0))
  {
    sub_23346F768(v95);
    v96 = 0u;
    v97 = 0u;
    goto LABEL_20;
  }

  sub_23346406C(*(a2 + 56) + 32 * v7, &v96);
  sub_23346F768(v95);
  if (!*(&v97 + 1))
  {
LABEL_20:

LABEL_22:
    sub_2334644B8(&v96, &qword_27DE0D920, &qword_233477000);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    goto LABEL_23;
  }

  v10 = v95[0];
  v9 = v95[1];
  sub_233470E54();
  if (*(a1 + 16))
  {
    v11 = sub_23346EAF4(v95);
    if (v12)
    {
      sub_23346406C(*(a1 + 56) + 32 * v11, &v96);
      sub_23346F768(v95);
      if (swift_dynamicCast())
      {
        if (qword_27DE0D7F8 != -1)
        {
          swift_once();
        }

        v13 = sub_233470BE4();
        __swift_project_value_buffer(v13, qword_27DE0DAE8);

        v14 = sub_233470BC4();
        v15 = sub_233470D64();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v95[0] = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_23346E54C(v10, v9, v95);
          _os_log_impl(&dword_233421000, v14, v15, "eventHandler triggered in NPTDRemoteClient for sender event from %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x23839F8C0](v17, -1, -1);
          MEMORY[0x23839F8C0](v16, -1, -1);
        }

        v18 = v6[2];
        if (v18 && (v19 = [v18 idsDeviceIdentifier]) != 0)
        {
          v20 = v19;
          v21 = sub_233470C34();
          v23 = v22;

          if (v21 == v10 && v23 == v9)
          {

            goto LABEL_37;
          }

          v34 = sub_233470F04();

          if (v34)
          {
LABEL_37:

            v35 = sub_233470BC4();
            v36 = sub_233470D64();

            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              *v37 = 138412290;
              v39 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
              v40 = sub_233470BF4();
              v41 = [v39 initWithDictionary_];

              *(v37 + 4) = v41;
              *v38 = v41;
              _os_log_impl(&dword_233421000, v35, v36, "eventHandler triggered in NPTDRemoteClient for event %@", v37, 0xCu);
              sub_2334644B8(v38, &qword_27DE0D808, &qword_233476B00);
              MEMORY[0x23839F8C0](v38, -1, -1);
              MEMORY[0x23839F8C0](v37, -1, -1);
            }

            NPTDRequestType.init(rawValue:)(0x5474736575716552);
            if (v94 <= 5u)
            {
              if (v94 != 4)
              {
                if (v94 == 5)
                {
                  *&v96 = 0x746C75736552;
                  *(&v96 + 1) = 0xE600000000000000;
                  sub_233470E54();
                  if (*(a1 + 16) && (v42 = sub_23346EAF4(v95), (v43 & 1) != 0))
                  {
                    sub_23346406C(*(a1 + 56) + 32 * v42, &v96);
                    sub_23346F768(v95);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D938, &unk_233477010);
                    if (swift_dynamicCast())
                    {
                      v44 = 0x5474736575716552;
                    }

                    else
                    {
                      v44 = 0;
                    }
                  }

                  else
                  {
                    sub_23346F768(v95);
                    v44 = 0;
                  }

                  sub_233470E54();
                  if (*(a1 + 16) && (v64 = sub_23346EAF4(v95), (v65 & 1) != 0))
                  {
                    sub_23346406C(*(a1 + 56) + 32 * v64, &v96);
                    sub_23346F768(v95);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D930, &qword_233477008);
                    if (swift_dynamicCast())
                    {
                      v91 = v44;
                      v66 = MEMORY[0x277D84F90];
                      v95[0] = MEMORY[0x277D84F90];
                      v67 = MEMORY[0x73726F727255];
                      if (MEMORY[0x73726F727255])
                      {
                        sub_2334658C8(0, &qword_27DE0D928, 0x277CCAAC8);
                        sub_2334658C8(0, &qword_27DE0D898, 0x277CCA9B8);
                        v68 = 0x73726F72726DLL;
                        do
                        {
                          v70 = *(v68 - 8);
                          v69 = *v68;
                          sub_23346F9DC(v70, *v68);
                          v71 = sub_233470D74();
                          if (v71)
                          {
                            v72 = v71;
                            MEMORY[0x23839E8F0]();
                            if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                            {
                              sub_233470CA4();
                            }

                            sub_233470CB4();
                            sub_23346FBA0(v70, v69);

                            v66 = v95[0];
                          }

                          else
                          {
                            sub_23346FBA0(v70, v69);
                          }

                          v68 += 16;
                          --v67;
                        }

                        while (v67);
                      }

                      v73 = v6;
                      v44 = v91;
                      v74 = v6[16];
                      if (!v74)
                      {
                        goto LABEL_110;
                      }

LABEL_88:
                      v75 = v73[17];
                      if (v66 >> 62)
                      {
                        v76 = sub_233470DF4();
                      }

                      else
                      {
                        v76 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      if (v76)
                      {
                        v76 = sub_23346C310(v66);
                      }

                      v74(v44, v76);

LABEL_93:

                      sub_233423234(v74, v75);
                      return;
                    }
                  }

                  else
                  {
                    sub_23346F768(v95);
                  }

                  v66 = MEMORY[0x277D84F90];
                  v95[0] = MEMORY[0x277D84F90];
                  v73 = v6;
                  v74 = v6[16];
                  if (!v74)
                  {
LABEL_110:

                    return;
                  }

                  goto LABEL_88;
                }

                goto LABEL_58;
              }

              sub_233470E54();
              if (*(a1 + 16))
              {
                v54 = sub_23346EAF4(v95);
                if (v55)
                {
                  sub_23346406C(*(a1 + 56) + 32 * v54, &v96);
                  sub_23346F768(v95);
                  if (swift_dynamicCast())
                  {
                    sub_2334658C8(0, &qword_27DE0D928, 0x277CCAAC8);
                    sub_2334658C8(0, &qword_27DE0D940, off_2789D38F8);
                    v56 = sub_233470D74();
                    v82 = v56;
                    if (v56)
                    {
                      sub_233470E54();
                      if (*(a1 + 16) && (v83 = sub_23346EAF4(v95), (v84 & 1) != 0))
                      {
                        sub_23346406C(*(a1 + 56) + 32 * v83, &v96);
                        sub_23346F768(v95);
                        if (swift_dynamicCast())
                        {
                          sub_2334658C8(0, &qword_27DE0D898, 0x277CCA9B8);
                          sub_23346F9DC(0x726F727245, 0xE500000000000000);
                          v85 = 0x726F727245;
                          v93 = 0xE500000000000000;
                          v90 = sub_233470D74();
                          sub_23346FBA0(0x726F727245, 0xE500000000000000);
                          v86 = v6[14];
                          if (!v86)
                          {
                            goto LABEL_123;
                          }

                          goto LABEL_118;
                        }
                      }

                      else
                      {
                        sub_23346F768(v95);
                      }

                      v90 = 0;
                      v85 = 0;
                      v93 = 0xF000000000000000;
                      v86 = v6[14];
                      if (!v86)
                      {
LABEL_123:
                        sub_23346FBA0(0x746C75736552, 0xE600000000000000);
                        sub_23346FC7C(v85, v93);

                        return;
                      }

LABEL_118:
                      v87 = v6[15];
                      sub_233423224(v86, v87);
                      v88 = v82;
                      v89 = v90;
                      v86(v82, v90);
                      sub_23346FBA0(0x746C75736552, 0xE600000000000000);
                      sub_23346FC7C(v85, v93);

                      sub_233423234(v86, v87);
                      return;
                    }

                    goto LABEL_101;
                  }

LABEL_73:

                  return;
                }
              }

LABEL_72:
              sub_23346F768(v95);
              goto LABEL_73;
            }

            if (v94 != 7)
            {
              if (v94 != 6)
              {
LABEL_58:
                v30 = sub_233470BC4();
                v52 = sub_233470D54();
                if (!os_log_type_enabled(v30, v52))
                {
                  goto LABEL_35;
                }

                v53 = swift_slowAlloc();
                *v53 = 134217984;
                *(v53 + 4) = 0x5474736575716552;
                _os_log_impl(&dword_233421000, v30, v52, "eventHandler dropping requestType %ld", v53, 0xCu);
                v33 = v53;
                goto LABEL_34;
              }

              sub_233470E54();
              if (!*(a1 + 16))
              {
                goto LABEL_72;
              }

              v45 = sub_23346EAF4(v95);
              if ((v46 & 1) == 0)
              {
                goto LABEL_72;
              }

              sub_23346406C(*(a1 + 56) + 32 * v45, &v96);
              sub_23346F768(v95);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_73;
              }

              sub_233470E54();
              if (*(a1 + 16) && (v47 = sub_23346EAF4(v95), (v48 & 1) != 0))
              {
                sub_23346406C(*(a1 + 56) + 32 * v47, &v96);
                sub_23346F768(v95);
                if (swift_dynamicCast())
                {
                  sub_2334658C8(0, &qword_27DE0D928, 0x277CCAAC8);
                  sub_2334658C8(0, &qword_27DE0D948, off_2789D3940);
                  v30 = sub_233470D74();
                  if (v30)
                  {
                    v49 = v6[10];
                    if (v49)
                    {
                      v50 = v6[11];
                      sub_233423224(v6[10], v50);
                      v51 = v30;
                      v49(v30, 1953719636);
                      sub_23346FBA0(0x746C75736552, 0xE600000000000000);

                      sub_233423234(v49, v50);
                      return;
                    }

                    sub_23346FBA0(0x746C75736552, 0xE600000000000000);
                    goto LABEL_35;
                  }
                }
              }

              else
              {
                sub_23346F768(v95);
              }

LABEL_101:
              sub_23346FBA0(0x746C75736552, 0xE600000000000000);
              goto LABEL_73;
            }

            sub_233470E54();
            if (!*(a1 + 16))
            {
              goto LABEL_72;
            }

            v57 = sub_23346EAF4(v95);
            if ((v58 & 1) == 0)
            {
              goto LABEL_72;
            }

            sub_23346406C(*(a1 + 56) + 32 * v57, &v96);
            sub_23346F768(v95);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_73;
            }

            sub_2334658C8(0, &qword_27DE0D928, 0x277CCAAC8);
            sub_2334658C8(0, &qword_27DE0D878, off_2789D3938);
            v92 = sub_233470D74();
            sub_233470E54();
            if (*(a1 + 16) && (v59 = sub_23346EAF4(v95), (v60 & 1) != 0))
            {
              sub_23346406C(*(a1 + 56) + 32 * v59, &v96);
              sub_23346F768(v95);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D930, &qword_233477008);
              if (swift_dynamicCast())
              {
                v61 = MEMORY[0x277D84F90];
                v95[0] = MEMORY[0x277D84F90];
                v62 = MEMORY[0x73726F727255];
                if (MEMORY[0x73726F727255])
                {
                  sub_2334658C8(0, &qword_27DE0D898, 0x277CCA9B8);
                  v63 = 0x73726F72726DLL;
                  do
                  {
                    v77 = *(v63 - 8);
                    v78 = *v63;
                    sub_23346F9DC(v77, *v63);
                    v79 = sub_233470D74();
                    if (v79)
                    {
                      v80 = v79;
                      MEMORY[0x23839E8F0]();
                      if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_233470CA4();
                      }

                      sub_233470CB4();
                      sub_23346FBA0(v77, v78);

                      v61 = v95[0];
                    }

                    else
                    {
                      sub_23346FBA0(v77, v78);
                    }

                    v63 += 16;
                    --v62;
                  }

                  while (v62);
                }

                v74 = v6[12];
                if (!v74)
                {
                  goto LABEL_120;
                }

                goto LABEL_104;
              }
            }

            else
            {
              sub_23346F768(v95);
            }

            v61 = MEMORY[0x277D84F90];
            v95[0] = MEMORY[0x277D84F90];
            v74 = v6[12];
            if (!v74)
            {
LABEL_120:

              sub_23346FBA0(0x746C75736552, 0xE600000000000000);

              return;
            }

LABEL_104:
            v75 = v6[13];
            if (v61 >> 62)
            {
              v81 = sub_233470DF4();
            }

            else
            {
              v81 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v81)
            {
              v81 = sub_23346C310(v61);
            }

            v74(v92, v81);

            sub_23346FBA0(0x746C75736552, 0xE600000000000000);

            goto LABEL_93;
          }
        }

        else
        {
        }

        v30 = sub_233470BC4();
        v31 = sub_233470D34();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_233421000, v30, v31, "Identifier received does not match remote device identifier for this object", v32, 2u);
          v33 = v32;
LABEL_34:
          MEMORY[0x23839F8C0](v33, -1, -1);
        }

LABEL_35:

        return;
      }

      goto LABEL_30;
    }
  }

  sub_23346F768(v95);

LABEL_23:
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v24 = sub_233470BE4();
  __swift_project_value_buffer(v24, qword_27DE0DAE8);

  v25 = sub_233470BC4();
  v26 = sub_233470D64();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = sub_233470BF4();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_233421000, v25, v26, "eventHandler dropping event %@", v27, 0xCu);
    sub_2334644B8(v28, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v28, -1, -1);
    MEMORY[0x23839F8C0](v27, -1, -1);
  }
}

void *sub_23346C310(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_233470DF4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_23346ED30(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = MEMORY[0x23839EB30](i, a1);
        v8 = *(v16 + 16);
        v7 = *(v16 + 24);
        if (v8 >= v7 >> 1)
        {
          v9 = v6;
          sub_23346ED30((v7 > 1), v8 + 1, 1);
          v6 = v9;
        }

        *(v16 + 16) = v8 + 1;
        *(v16 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *(v16 + 16);
        v12 = *(v16 + 24);
        v13 = *v10;
        if (v11 >= v12 >> 1)
        {
          v14 = v12 > 1;
          v15 = v13;
          sub_23346ED30(v14, v11 + 1, 1);
          v13 = v15;
        }

        *(v16 + 16) = v11 + 1;
        *(v16 + 8 * v11 + 32) = v13;
        ++v10;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23346C488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_233470C04();
  if (a3)
  {
    a3 = sub_233470C04();
  }

  v4(v5, a3);
}

uint64_t sub_23346C568()
{
  v1 = *(v0[18] + 24);
  v0[2] = v0;
  v0[3] = sub_23346C680;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D800, &qword_233476AF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233461778;
  v0[13] = &block_descriptor_1;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23346C680()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_23346C790;
  }

  else
  {
    v2 = sub_23346FCAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23346C790()
{
  swift_willThrow();
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_233470BE4();
  __swift_project_value_buffer(v2, qword_27DE0DAE8);
  v3 = v1;
  v4 = sub_233470BC4();
  v5 = sub_233470D54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_233421000, v4, v5, "NetworkPerformanceTesterDRemoteClient activated with error: %@", v7, 0xCu);
    sub_2334644B8(v8, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v8, -1, -1);
    MEMORY[0x23839F8C0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

void sub_23346C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v8 = sub_233470BE4();
  __swift_project_value_buffer(v8, qword_27DE0DAE8);
  swift_retain_n();

  v9 = sub_233470BC4();
  v10 = sub_233470D64();

  if (os_log_type_enabled(v9, v10))
  {
    v28 = a2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v11 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D818, &qword_233476B20);
    v14 = sub_233470C14();
    v16 = sub_23346E54C(v14, v15, aBlock);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = *(v4 + 16);
    v18 = *(v4 + 24);
    *(v11 + 14) = v17;
    *v12 = v17;
    *(v11 + 22) = 2048;
    v19 = v17;
    v20 = [v18 activeDevices];
    sub_2334658C8(0, &qword_27DE0D840, 0x277D44168);
    v21 = sub_233470C94();

    if (v21 >> 62)
    {
      v22 = sub_233470DF4();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 24) = v22;

    _os_log_impl(&dword_233421000, v9, v10, "Sending request %s to %@, device count %ld", v11, 0x20u);
    sub_2334644B8(v12, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23839F8C0](v13, -1, -1);
    MEMORY[0x23839F8C0](v11, -1, -1);

    a2 = v28;
  }

  else
  {
  }

  v23 = *(v4 + 24);
  v24 = sub_233470C24();
  sub_233469DDC(a1);
  v25 = sub_233470BF4();

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  aBlock[4] = sub_23346F6E8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23346295C;
  aBlock[3] = &block_descriptor_40;
  v27 = _Block_copy(aBlock);

  [v23 sendRequestID:v24 request:v25 options:0 responseHandler:v27];
  _Block_release(v27);
}

void sub_23346CCF0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void, void))
{
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v8 = sub_233470BE4();
  __swift_project_value_buffer(v8, qword_27DE0DAE8);

  v9 = sub_233470BC4();
  v10 = sub_233470D34();

  if (os_log_type_enabled(v9, v10))
  {
    v25 = a1;
    v26 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    if (!a2)
    {
      sub_23346F380(MEMORY[0x277D84F90]);
    }

    v13 = sub_233470C14();
    v15 = v14;

    v16 = sub_23346E54C(v13, v15, &v27);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_233421000, v9, v10, "Received response from %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23839F8C0](v12, -1, -1);
    MEMORY[0x23839F8C0](v11, -1, -1);

    a4 = v26;
    a1 = v25;
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_13:
    a4(a1, a2, 0);
    return;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_7:
  v17 = a3;
  v18 = sub_233470BC4();
  v19 = sub_233470D54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = a3;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_233421000, v18, v19, "Received response error: %@", v20, 0xCu);
    sub_2334644B8(v21, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v21, -1, -1);
    MEMORY[0x23839F8C0](v20, -1, -1);
  }

  v24 = a3;
  a4(0, 0, a3);
}

uint64_t NetworkPerformanceTesterDRemoteClient.startPerformanceTest(with:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_23346D034, 0, 0);
}

uint64_t sub_23346D034()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  v5[5] = v2;
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8B0, &qword_233476EE0);
  *v6 = v0;
  v6[1] = sub_23346D14C;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000029, 0x800000023347AE80, sub_23346F1DC, v5, v7);
}

uint64_t sub_23346D14C()
{

  return MEMORY[0x2822009F8](sub_23346D264, 0, 0);
}

uint64_t sub_23346D27C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a1;
  v45[2] = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D908, &qword_233476FE8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v38 - v12;
  v14 = objc_opt_self();
  v45[0] = 0;
  v15 = [v14 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v45];
  v16 = v45[0];
  if (v15)
  {
    v43 = sub_233470BB4();
    v42 = v17;

    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v40 = v11;
    v19 = a3[10];
    v20 = a3[11];
    a3[10] = a4;
    a3[11] = a5;
    sub_233423224(a4, a5);
    sub_233423234(v19, v20);
    v41 = *(v10 + 16);
    v41(v13, v44, v9);
    v21 = *(v10 + 80);
    v38 = (v21 + 24) & ~v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    v39 = *(v10 + 32);
    v39(v22 + ((v21 + 24) & ~v21), v13, v9);
    v23 = a3[12];
    v24 = a3[13];
    a3[12] = sub_23346F918;
    a3[13] = v22;

    sub_233423234(v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D910, &qword_233476FF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_233476EC0;
    *(inited + 32) = 0x5474736575716552;
    *(inited + 72) = MEMORY[0x277D83B88];
    strcpy((inited + 80), "Configuration");
    v26 = MEMORY[0x277CC9318];
    *(inited + 40) = 0xEB00000000657079;
    *(inited + 48) = 0;
    *(inited + 120) = v26;
    *(inited + 94) = -4864;
    v27 = v43;
    v28 = v42;
    *(inited + 96) = v43;
    *(inited + 104) = v28;
    sub_23346F9DC(v27, v28);
    v29 = sub_23346F4BC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D918, &qword_233476FF8);
    swift_arrayDestroy();
    v30 = v13;
    v31 = v9;
    v41(v13, v44, v9);
    v32 = v38;
    v33 = swift_allocObject();
    *(v33 + 16) = v18;
    v39(v33 + v32, v30, v31);

    sub_23346C930(v29, sub_23346FAF0, v33);
    sub_23346FBA0(v43, v42);
  }

  else
  {
    v35 = v16;
    v36 = sub_233470BA4();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D900, &qword_233476FE0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_233476D10;
    *(v37 + 32) = v36;
    v45[0] = 0;
    v45[1] = v37;
    return sub_233470CE4();
  }
}

uint64_t sub_23346D6DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;

    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D908, &qword_233476FE8);
    return sub_233470CE4();
  }

  return result;
}

uint64_t sub_23346D7A8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23346D87C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23346D87C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_23346D9A8;
  }

  else
  {
    v2 = sub_23346D990;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t NetworkPerformanceTesterDRemoteClient.startMetadataCollection(updateHandler:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23346D9E4, 0, 0);
}

uint64_t sub_23346D9E4()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8B8, &qword_233476EF8);
  *v4 = v0;
  v4[1] = sub_23346DAF4;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000027, 0x800000023347AED0, sub_23346F22C, v2, v5);
}

uint64_t sub_23346DAF4()
{

  return MEMORY[0x2822009F8](sub_23346FCA8, 0, 0);
}

uint64_t sub_23346DC0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v30 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8F8, &qword_233476FD8);
  v26 = v8;
  v9 = *(v8 - 8);
  v28 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = a2[14];
  v14 = a2[15];
  a2[14] = a3;
  a2[15] = a4;
  sub_233423234(v13, v14);
  v29 = *(v9 + 16);
  v29(v11, a1, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v27 = *(v9 + 32);
  v27(v16 + v15, v11, v8);
  v17 = a2[16];
  v18 = a2[17];
  a2[16] = sub_23346F7BC;
  a2[17] = v16;

  sub_233423234(v17, v18);
  v19 = sub_23346F5EC(&unk_2848BBBE8);
  sub_2334644B8(&unk_2848BBC08, &qword_27DE0D8C8, &unk_233476FA0);
  v20 = sub_23346A0D8(v19);

  v21 = v11;
  v22 = v26;
  v29(v11, v30, v26);
  v23 = swift_allocObject();
  *(v23 + 16) = v12;
  v27(v23 + v15, v21, v22);

  sub_23346C930(v20, sub_23346F7E4, v23);
}

uint64_t sub_23346DE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8F8, &qword_233476FD8);
    return sub_233470CE4();
  }

  return result;
}

void sub_23346DF48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a3)
  {
    swift_beginAccess();
    if ((*(a4 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D900, &qword_233476FE0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_233476D10;
      *(v11 + 32) = a3;
      v12 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      sub_233470CE4();
    }
  }
}

uint64_t sub_23346E044()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23346E118;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23346E118()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_23346FCC0;
  }

  else
  {
    v2 = sub_23346FCAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23346E22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8C0, &qword_233476F98);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v19 - v12;
  v14 = sub_23346F5EC(a3);
  sub_2334644B8(a4, &qword_27DE0D8C8, &unk_233476FA0);
  v15 = sub_23346A0D8(v14);

  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v13, v10);
  sub_23346C930(v15, a6, v17);
}

uint64_t sub_23346E3BC(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8C0, &qword_233476F98);
    return sub_233470CD4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8C0, &qword_233476F98);
    return sub_233470CE4();
  }
}

uint64_t NetworkPerformanceTesterDRemoteClient.deinit()
{
  sub_233423234(*(v0 + 32), *(v0 + 40));
  sub_233423234(*(v0 + 48), *(v0 + 56));
  sub_233423234(*(v0 + 64), *(v0 + 72));
  sub_233423234(*(v0 + 80), *(v0 + 88));
  sub_233423234(*(v0 + 96), *(v0 + 104));
  sub_233423234(*(v0 + 112), *(v0 + 120));
  sub_233423234(*(v0 + 128), *(v0 + 136));
  return v0;
}

uint64_t NetworkPerformanceTesterDRemoteClient.__deallocating_deinit()
{
  NetworkPerformanceTesterDRemoteClient.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_23346E4F0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_23346E54C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_23346E54C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23346E618(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23346406C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23346E618(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23346E724(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_233470EC4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_23346E724(uint64_t a1, unint64_t a2)
{
  v3 = sub_23346E770(a1, a2);
  sub_23346E8A0(&unk_2848BBB88);
  return v3;
}

void *sub_23346E770(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23346E98C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_233470EC4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_233470C64();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23346E98C(v10, 0);
        result = sub_233470EA4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23346E8A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23346EA00(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23346E98C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8D0, &qword_233476FB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23346EA00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8D0, &qword_233476FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_23346EAF4(uint64_t a1)
{
  v2 = sub_233470E34();

  return sub_23346EBB0(a1, v2);
}

unint64_t sub_23346EB38(uint64_t a1, uint64_t a2)
{
  sub_233470F44();
  sub_233470C54();
  v4 = sub_233470F64();

  return sub_23346EC78(a1, a2, v4);
}

unint64_t sub_23346EBB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23346F70C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23839EAC0](v9, a1);
      sub_23346F768(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23346EC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_233470F04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_23346ED30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23346ED50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23346ED50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D900, &qword_233476FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23346EE84(void *a1)
{
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = a1;
  v3 = objc_allocWithZone(MEMORY[0x277D44158]);
  v4 = a1;
  v5 = [v3 init];
  *(v1 + 24) = v5;
  [v5 setControlFlags_];
  [*(v1 + 24) setDestinationDevice_];
  v6 = *(v1 + 24);
  v7 = sub_233470C24();
  [v6 setServiceType_];

  v8 = *(v1 + 24);
  v9 = swift_allocObject();
  swift_weakInit();
  v25 = sub_23346FC5C;
  v26 = v9;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_233469D74;
  v24 = &block_descriptor_68;
  v10 = _Block_copy(&v21);
  v11 = v8;

  [v11 setDeviceLostHandler_];
  _Block_release(v10);

  v12 = *(v1 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v25 = sub_23346FC64;
  v26 = v13;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_233462600;
  v24 = &block_descriptor_72;
  v14 = _Block_copy(&v21);
  v15 = v12;

  [v15 setDisconnectHandler_];
  _Block_release(v14);

  v16 = *(v1 + 24);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v16;

  v25 = sub_23346FC6C;
  v26 = v17;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_233469D74;
  v24 = &block_descriptor_76;
  v19 = _Block_copy(&v21);

  [v18 setDeviceFoundHandler_];
  _Block_release(v19);

  sub_23346AF50();
  return v1;
}

uint64_t sub_23346F31C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_23346F380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8D8, &qword_233476FB8);
    v3 = sub_233470EE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23346FBF4(v4, v13, &qword_27DE0D8E0, &qword_233476FC0);
      result = sub_23346EAF4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_233423688(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23346F4BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8E8, &qword_233476FC8);
    v3 = sub_233470EE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23346FBF4(v4, &v13, &qword_27DE0D918, &qword_233476FF8);
      v5 = v13;
      v6 = v14;
      result = sub_23346EB38(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_233423688(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23346F5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8F0, &qword_233476FD0);
    v3 = sub_233470EE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23346EB38(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_33Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8C0, &qword_233476F98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23346F940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = *(v5 + 16);
  v10 = v5 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return a5(a1, a2, v9, v10);
}

uint64_t sub_23346F9DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroy_46Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23346FBA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23346FBF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23346FC7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23346FBA0(result, a2);
  }

  return result;
}

uint64_t sub_23346FCFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_233470BE4();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_233470BD4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}